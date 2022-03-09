#include "kernel/types.h"

#include "kernel/fs.h"
#include "kernel/stat.h"
#include "user/user.h"
#include "kernel/fcntl.h"

#define NULL 0


void readPipe(int ret[2], int fd) {
    int flag=0;
    char buf;
    ret[0]=0; ret[1]=0;
    while (1) {
        int read_ret = read(fd, &buf, 1);
        if (read_ret > 0) {
            switch (buf) {
                case '\n':
                    return;
                case ' ':
                    flag=1;
                    break;
                default:
                    ret[flag] = ret[flag]*10 + (buf-'0');
                    break;
            }
        }        
    }
}

void writePipe(int dir_n, int file_n, int fd) {
    fprintf(fd, "%d %d\n", dir_n, file_n);
}

void printTreeLine(char *ent_name, char *tree_pre) {
    // line1
    printf("%s|\n", tree_pre);
    // line2
    printf("%s+-- %s\n", tree_pre, ent_name);
}

void preparePrefix(char *prefix, int level) {
    char *p = prefix+strlen(prefix);
    *p = '|';
    p++;
    if (level != 0) {
        for (int i=0; i<3; i++) {
            *p = ' ';
            p++;
        }
    }
    *p = '\0';
}

void traverse(char *path, int level, char *prefix_this, int ret[2]) {
    int fd;
    char buf[64], p_buf[64], *p; // p is at the end of parent path
    char prefix_nxt[64];
    struct dirent ent, p_ent;
    struct stat ent_st, p_ent_st;
    
    fd = open(path, O_RDONLY);
    strcpy(buf, path);
    p_buf[0] = '\0';
    p = buf+strlen(buf);
    *p = '/';
    p++;
    strcpy(prefix_nxt, prefix_this);
    preparePrefix(prefix_nxt, level+1);
    // printf("this level %d has prefix '%s'\n", level, prefix_this);

    while (read(fd, &ent, sizeof(ent)) == sizeof(ent)) {
        // read new entry
        if (ent.inum == 0)
            continue;
        if (strcmp(ent.name, ".")==0 || strcmp(ent.name, "..")==0) {
            continue;
        }
        memmove(p, ent.name, DIRSIZ);
        p[DIRSIZ] = 0;
        stat(buf, &ent_st);
        // process previous entry
        if (p_buf[0] != '\0') {
            printTreeLine(p_ent.name, prefix_this);
            stat(p_buf, &p_ent_st);
            if (p_ent_st.type == T_DIR) {
                ret[0]++;
                traverse(p_buf, level+1, prefix_nxt, ret);
            } else {
                ret[1]++;
            }
        }
        // copy entry
        strcpy(p_buf, buf);
        p_ent = ent;
    }
    // process last entry
    if (p_buf[0] != '\0') {
        prefix_nxt[4*level] = ' ';
        printTreeLine(p_ent.name, prefix_this);
        stat(p_buf, &p_ent_st);
        if (p_ent_st.type == T_DIR) {
                ret[0]++;
                traverse(p_buf, level+1, prefix_nxt, ret);
        } else {
            ret[1]++;
        }
    }
    close(fd);
}

void rootErr(int fd) {
    printf(" [error opening dir]\n");
    writePipe(0, 0, fd);
    close(fd);
    exit(0);
}

int main(int argc, char *argv[]) {
    // add your code!
    // printf("Hello, world\n");
    int cid, pfd[2];
    pipe(pfd);
    if ((cid = fork()) == 0) { // child
        char *root = argv[1];
        struct stat rst;
        int rfd, dir_n=0, file_n=0;
        close(pfd[0]);
        // check root    
        printf("%s", root);
        if ((rfd = open(root, O_RDONLY)) < 0) {
            rootErr(pfd[1]);
        }
        fstat(rfd, &rst);
        if (rst.type == T_FILE) {
            rootErr(pfd[1]);
        }
        printf("\n");
        close(rfd);
        // start traversing
        int ret[2] = {0, 0};
        char prefix[64] = "";
        traverse(root, 0, prefix, ret);
        dir_n = ret[0]; file_n = ret[1];

        writePipe(dir_n, file_n, pfd[1]);
        close(pfd[1]);
        exit(0);
    } else { // parent
        close(pfd[1]);
        int pipe_ret[2];
        readPipe(pipe_ret, pfd[0]);
        close(pfd[0]);
        printf("\n%d directories, %d files\n", pipe_ret[0], pipe_ret[1]);
        
        wait(NULL);
    }
    
    exit(0);
}
