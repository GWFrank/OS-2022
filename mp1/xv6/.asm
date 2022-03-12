
user/_mp_test2:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <f10>:
#include "user/user.h"
#include "user/threads.h"

#define NULL 0

void f10(void *arg) {
       0:	7179                	addi	sp,sp,-48
       2:	f406                	sd	ra,40(sp)
       4:	f022                	sd	s0,32(sp)
       6:	ec26                	sd	s1,24(sp)
       8:	e84a                	sd	s2,16(sp)
       a:	e44e                	sd	s3,8(sp)
       c:	e052                	sd	s4,0(sp)
       e:	1800                	addi	s0,sp,48
    int i = 713;
    
    while(1) {
        printf("thread 10: %d\n", i++);
      10:	2c900593          	li	a1,713
      14:	00001517          	auipc	a0,0x1
      18:	04c50513          	addi	a0,a0,76 # 1060 <thread_start_threading+0x3a>
      1c:	00001097          	auipc	ra,0x1
      20:	af6080e7          	jalr	-1290(ra) # b12 <printf>
      24:	2ca00493          	li	s1,714
      28:	00001a17          	auipc	s4,0x1
      2c:	038a0a13          	addi	s4,s4,56 # 1060 <thread_start_threading+0x3a>
        if (i == 717)
      30:	2cd00993          	li	s3,717
      34:	a011                	j	38 <f10+0x38>
        printf("thread 10: %d\n", i++);
      36:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
      38:	00001097          	auipc	ra,0x1
      3c:	fb6080e7          	jalr	-74(ra) # fee <thread_yield>
        printf("thread 10: %d\n", i++);
      40:	0014891b          	addiw	s2,s1,1
      44:	85a6                	mv	a1,s1
      46:	8552                	mv	a0,s4
      48:	00001097          	auipc	ra,0x1
      4c:	aca080e7          	jalr	-1334(ra) # b12 <printf>
        if (i == 717)
      50:	ff3913e3          	bne	s2,s3,36 <f10+0x36>
            thread_exit();
      54:	00001097          	auipc	ra,0x1
      58:	e12080e7          	jalr	-494(ra) # e66 <thread_exit>
      5c:	bfe9                	j	36 <f10+0x36>

000000000000005e <f9>:
    }
}

void f9(void *arg) {
      5e:	7179                	addi	sp,sp,-48
      60:	f406                	sd	ra,40(sp)
      62:	f022                	sd	s0,32(sp)
      64:	ec26                	sd	s1,24(sp)
      66:	e84a                	sd	s2,16(sp)
      68:	e44e                	sd	s3,8(sp)
      6a:	e052                	sd	s4,0(sp)
      6c:	1800                	addi	s0,sp,48
    int i = 962;
    
    while(1) {
        printf("thread 9: %d\n", i++);
      6e:	3c200593          	li	a1,962
      72:	00001517          	auipc	a0,0x1
      76:	ffe50513          	addi	a0,a0,-2 # 1070 <thread_start_threading+0x4a>
      7a:	00001097          	auipc	ra,0x1
      7e:	a98080e7          	jalr	-1384(ra) # b12 <printf>
      82:	3c300493          	li	s1,963
      86:	00001a17          	auipc	s4,0x1
      8a:	feaa0a13          	addi	s4,s4,-22 # 1070 <thread_start_threading+0x4a>
        if (i == 970)
      8e:	3ca00993          	li	s3,970
      92:	a011                	j	96 <f9+0x38>
        printf("thread 9: %d\n", i++);
      94:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
      96:	00001097          	auipc	ra,0x1
      9a:	f58080e7          	jalr	-168(ra) # fee <thread_yield>
        printf("thread 9: %d\n", i++);
      9e:	0014891b          	addiw	s2,s1,1
      a2:	85a6                	mv	a1,s1
      a4:	8552                	mv	a0,s4
      a6:	00001097          	auipc	ra,0x1
      aa:	a6c080e7          	jalr	-1428(ra) # b12 <printf>
        if (i == 970)
      ae:	ff3913e3          	bne	s2,s3,94 <f9+0x36>
            thread_exit();
      b2:	00001097          	auipc	ra,0x1
      b6:	db4080e7          	jalr	-588(ra) # e66 <thread_exit>
      ba:	bfe9                	j	94 <f9+0x36>

00000000000000bc <f8>:
    }
}

void f8(void *arg) {
      bc:	7179                	addi	sp,sp,-48
      be:	f406                	sd	ra,40(sp)
      c0:	f022                	sd	s0,32(sp)
      c2:	ec26                	sd	s1,24(sp)
      c4:	e84a                	sd	s2,16(sp)
      c6:	e44e                	sd	s3,8(sp)
      c8:	e052                	sd	s4,0(sp)
      ca:	1800                	addi	s0,sp,48
    int i = 945;
    
    while(1) {
        printf("thread 8: %d\n", i++);
      cc:	3b100593          	li	a1,945
      d0:	00001517          	auipc	a0,0x1
      d4:	fb050513          	addi	a0,a0,-80 # 1080 <thread_start_threading+0x5a>
      d8:	00001097          	auipc	ra,0x1
      dc:	a3a080e7          	jalr	-1478(ra) # b12 <printf>
      e0:	3b200493          	li	s1,946
      e4:	00001a17          	auipc	s4,0x1
      e8:	f9ca0a13          	addi	s4,s4,-100 # 1080 <thread_start_threading+0x5a>
        if (i == 952)
      ec:	3b800993          	li	s3,952
      f0:	a011                	j	f4 <f8+0x38>
        printf("thread 8: %d\n", i++);
      f2:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
      f4:	00001097          	auipc	ra,0x1
      f8:	efa080e7          	jalr	-262(ra) # fee <thread_yield>
        printf("thread 8: %d\n", i++);
      fc:	0014891b          	addiw	s2,s1,1
     100:	85a6                	mv	a1,s1
     102:	8552                	mv	a0,s4
     104:	00001097          	auipc	ra,0x1
     108:	a0e080e7          	jalr	-1522(ra) # b12 <printf>
        if (i == 952)
     10c:	ff3913e3          	bne	s2,s3,f2 <f8+0x36>
            thread_exit();
     110:	00001097          	auipc	ra,0x1
     114:	d56080e7          	jalr	-682(ra) # e66 <thread_exit>
     118:	bfe9                	j	f2 <f8+0x36>

000000000000011a <f7>:
    }
}

void f7(void *arg) {
     11a:	7179                	addi	sp,sp,-48
     11c:	f406                	sd	ra,40(sp)
     11e:	f022                	sd	s0,32(sp)
     120:	ec26                	sd	s1,24(sp)
     122:	e84a                	sd	s2,16(sp)
     124:	e44e                	sd	s3,8(sp)
     126:	e052                	sd	s4,0(sp)
     128:	1800                	addi	s0,sp,48
    int i = 984;
    
    while(1) {
        printf("thread 7: %d\n", i++);
     12a:	3d800593          	li	a1,984
     12e:	00001517          	auipc	a0,0x1
     132:	f6250513          	addi	a0,a0,-158 # 1090 <thread_start_threading+0x6a>
     136:	00001097          	auipc	ra,0x1
     13a:	9dc080e7          	jalr	-1572(ra) # b12 <printf>
     13e:	3d900493          	li	s1,985
     142:	00001a17          	auipc	s4,0x1
     146:	f4ea0a13          	addi	s4,s4,-178 # 1090 <thread_start_threading+0x6a>
        if (i == 989)
     14a:	3dd00993          	li	s3,989
     14e:	a011                	j	152 <f7+0x38>
        printf("thread 7: %d\n", i++);
     150:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     152:	00001097          	auipc	ra,0x1
     156:	e9c080e7          	jalr	-356(ra) # fee <thread_yield>
        printf("thread 7: %d\n", i++);
     15a:	0014891b          	addiw	s2,s1,1
     15e:	85a6                	mv	a1,s1
     160:	8552                	mv	a0,s4
     162:	00001097          	auipc	ra,0x1
     166:	9b0080e7          	jalr	-1616(ra) # b12 <printf>
        if (i == 989)
     16a:	ff3913e3          	bne	s2,s3,150 <f7+0x36>
            thread_exit();
     16e:	00001097          	auipc	ra,0x1
     172:	cf8080e7          	jalr	-776(ra) # e66 <thread_exit>
     176:	bfe9                	j	150 <f7+0x36>

0000000000000178 <f6>:
    }
}

void f6(void *arg) {
     178:	7179                	addi	sp,sp,-48
     17a:	f406                	sd	ra,40(sp)
     17c:	f022                	sd	s0,32(sp)
     17e:	ec26                	sd	s1,24(sp)
     180:	e84a                	sd	s2,16(sp)
     182:	e44e                	sd	s3,8(sp)
     184:	1800                	addi	s0,sp,48
    int i = 933;
     186:	3a500593          	li	a1,933
    
    while(1) {
        printf("thread 6: %d\n", i++);
     18a:	00001997          	auipc	s3,0x1
     18e:	f1698993          	addi	s3,s3,-234 # 10a0 <thread_start_threading+0x7a>
        if (i == 934)
     192:	3a600913          	li	s2,934
     196:	a811                	j	1aa <f6+0x32>
            thread_exit();
     198:	00001097          	auipc	ra,0x1
     19c:	cce080e7          	jalr	-818(ra) # e66 <thread_exit>
        thread_yield();
     1a0:	00001097          	auipc	ra,0x1
     1a4:	e4e080e7          	jalr	-434(ra) # fee <thread_yield>
        printf("thread 6: %d\n", i++);
     1a8:	85a6                	mv	a1,s1
     1aa:	0015849b          	addiw	s1,a1,1
     1ae:	854e                	mv	a0,s3
     1b0:	00001097          	auipc	ra,0x1
     1b4:	962080e7          	jalr	-1694(ra) # b12 <printf>
        if (i == 934)
     1b8:	ff2480e3          	beq	s1,s2,198 <f6+0x20>
     1bc:	b7d5                	j	1a0 <f6+0x28>

00000000000001be <f3>:
            thread_exit();
        thread_yield();
    }
}

void f3(void *arg) {
     1be:	7179                	addi	sp,sp,-48
     1c0:	f406                	sd	ra,40(sp)
     1c2:	f022                	sd	s0,32(sp)
     1c4:	ec26                	sd	s1,24(sp)
     1c6:	e84a                	sd	s2,16(sp)
     1c8:	e44e                	sd	s3,8(sp)
     1ca:	1800                	addi	s0,sp,48
    int i = 829;
     1cc:	33d00593          	li	a1,829
    
    while(1) {
        printf("thread 3: %d\n", i++);
     1d0:	00001997          	auipc	s3,0x1
     1d4:	ee098993          	addi	s3,s3,-288 # 10b0 <thread_start_threading+0x8a>
        if (i == 830)
     1d8:	33e00913          	li	s2,830
     1dc:	a811                	j	1f0 <f3+0x32>
            thread_exit();
     1de:	00001097          	auipc	ra,0x1
     1e2:	c88080e7          	jalr	-888(ra) # e66 <thread_exit>
        thread_yield();
     1e6:	00001097          	auipc	ra,0x1
     1ea:	e08080e7          	jalr	-504(ra) # fee <thread_yield>
        printf("thread 3: %d\n", i++);
     1ee:	85a6                	mv	a1,s1
     1f0:	0015849b          	addiw	s1,a1,1
     1f4:	854e                	mv	a0,s3
     1f6:	00001097          	auipc	ra,0x1
     1fa:	91c080e7          	jalr	-1764(ra) # b12 <printf>
        if (i == 830)
     1fe:	ff2480e3          	beq	s1,s2,1de <f3+0x20>
     202:	b7d5                	j	1e6 <f3+0x28>

0000000000000204 <f5>:
void f5(void *arg) {
     204:	7179                	addi	sp,sp,-48
     206:	f406                	sd	ra,40(sp)
     208:	f022                	sd	s0,32(sp)
     20a:	ec26                	sd	s1,24(sp)
     20c:	e84a                	sd	s2,16(sp)
     20e:	e44e                	sd	s3,8(sp)
     210:	e052                	sd	s4,0(sp)
     212:	1800                	addi	s0,sp,48
    struct thread *t9 = thread_create(f9, NULL);
     214:	4581                	li	a1,0
     216:	00000517          	auipc	a0,0x0
     21a:	e4850513          	addi	a0,a0,-440 # 5e <f9>
     21e:	00001097          	auipc	ra,0x1
     222:	b0c080e7          	jalr	-1268(ra) # d2a <thread_create>
    thread_add_runqueue(t9);
     226:	00001097          	auipc	ra,0x1
     22a:	b68080e7          	jalr	-1176(ra) # d8e <thread_add_runqueue>
    struct thread *t10 = thread_create(f10, NULL);
     22e:	4581                	li	a1,0
     230:	00000517          	auipc	a0,0x0
     234:	dd050513          	addi	a0,a0,-560 # 0 <f10>
     238:	00001097          	auipc	ra,0x1
     23c:	af2080e7          	jalr	-1294(ra) # d2a <thread_create>
    thread_add_runqueue(t10);
     240:	00001097          	auipc	ra,0x1
     244:	b4e080e7          	jalr	-1202(ra) # d8e <thread_add_runqueue>
        printf("thread 5: %d\n", i++);
     248:	3e600593          	li	a1,998
     24c:	00001517          	auipc	a0,0x1
     250:	e7450513          	addi	a0,a0,-396 # 10c0 <thread_start_threading+0x9a>
     254:	00001097          	auipc	ra,0x1
     258:	8be080e7          	jalr	-1858(ra) # b12 <printf>
     25c:	3e700493          	li	s1,999
     260:	00001a17          	auipc	s4,0x1
     264:	e60a0a13          	addi	s4,s4,-416 # 10c0 <thread_start_threading+0x9a>
        if (i == 1004)
     268:	3ec00993          	li	s3,1004
     26c:	a011                	j	270 <f5+0x6c>
        printf("thread 5: %d\n", i++);
     26e:	84ca                	mv	s1,s2
        thread_yield();
     270:	00001097          	auipc	ra,0x1
     274:	d7e080e7          	jalr	-642(ra) # fee <thread_yield>
        printf("thread 5: %d\n", i++);
     278:	0014891b          	addiw	s2,s1,1
     27c:	85a6                	mv	a1,s1
     27e:	8552                	mv	a0,s4
     280:	00001097          	auipc	ra,0x1
     284:	892080e7          	jalr	-1902(ra) # b12 <printf>
        if (i == 1004)
     288:	ff3913e3          	bne	s2,s3,26e <f5+0x6a>
            thread_exit();
     28c:	00001097          	auipc	ra,0x1
     290:	bda080e7          	jalr	-1062(ra) # e66 <thread_exit>
     294:	bfe9                	j	26e <f5+0x6a>

0000000000000296 <f4>:
void f4(void *arg) {
     296:	7179                	addi	sp,sp,-48
     298:	f406                	sd	ra,40(sp)
     29a:	f022                	sd	s0,32(sp)
     29c:	ec26                	sd	s1,24(sp)
     29e:	e84a                	sd	s2,16(sp)
     2a0:	e44e                	sd	s3,8(sp)
     2a2:	e052                	sd	s4,0(sp)
     2a4:	1800                	addi	s0,sp,48
    struct thread *t7 = thread_create(f7, NULL);
     2a6:	4581                	li	a1,0
     2a8:	00000517          	auipc	a0,0x0
     2ac:	e7250513          	addi	a0,a0,-398 # 11a <f7>
     2b0:	00001097          	auipc	ra,0x1
     2b4:	a7a080e7          	jalr	-1414(ra) # d2a <thread_create>
    thread_add_runqueue(t7);
     2b8:	00001097          	auipc	ra,0x1
     2bc:	ad6080e7          	jalr	-1322(ra) # d8e <thread_add_runqueue>
    struct thread *t8 = thread_create(f8, NULL);
     2c0:	4581                	li	a1,0
     2c2:	00000517          	auipc	a0,0x0
     2c6:	dfa50513          	addi	a0,a0,-518 # bc <f8>
     2ca:	00001097          	auipc	ra,0x1
     2ce:	a60080e7          	jalr	-1440(ra) # d2a <thread_create>
    thread_add_runqueue(t8);
     2d2:	00001097          	auipc	ra,0x1
     2d6:	abc080e7          	jalr	-1348(ra) # d8e <thread_add_runqueue>
        printf("thread 4: %d\n", i++);
     2da:	3ac00593          	li	a1,940
     2de:	00001517          	auipc	a0,0x1
     2e2:	df250513          	addi	a0,a0,-526 # 10d0 <thread_start_threading+0xaa>
     2e6:	00001097          	auipc	ra,0x1
     2ea:	82c080e7          	jalr	-2004(ra) # b12 <printf>
     2ee:	3ad00493          	li	s1,941
     2f2:	00001a17          	auipc	s4,0x1
     2f6:	ddea0a13          	addi	s4,s4,-546 # 10d0 <thread_start_threading+0xaa>
        if (i == 942)
     2fa:	3ae00993          	li	s3,942
     2fe:	a011                	j	302 <f4+0x6c>
        printf("thread 4: %d\n", i++);
     300:	84ca                	mv	s1,s2
        thread_yield();
     302:	00001097          	auipc	ra,0x1
     306:	cec080e7          	jalr	-788(ra) # fee <thread_yield>
        printf("thread 4: %d\n", i++);
     30a:	0014891b          	addiw	s2,s1,1
     30e:	85a6                	mv	a1,s1
     310:	8552                	mv	a0,s4
     312:	00001097          	auipc	ra,0x1
     316:	800080e7          	jalr	-2048(ra) # b12 <printf>
        if (i == 942)
     31a:	ff3913e3          	bne	s2,s3,300 <f4+0x6a>
            thread_exit();
     31e:	00001097          	auipc	ra,0x1
     322:	b48080e7          	jalr	-1208(ra) # e66 <thread_exit>
     326:	bfe9                	j	300 <f4+0x6a>

0000000000000328 <f2>:
    }
}

void f2(void *arg) {
     328:	7179                	addi	sp,sp,-48
     32a:	f406                	sd	ra,40(sp)
     32c:	f022                	sd	s0,32(sp)
     32e:	ec26                	sd	s1,24(sp)
     330:	e84a                	sd	s2,16(sp)
     332:	e44e                	sd	s3,8(sp)
     334:	e052                	sd	s4,0(sp)
     336:	1800                	addi	s0,sp,48
    int i = 559;
    struct thread *t5 = thread_create(f5, NULL);
     338:	4581                	li	a1,0
     33a:	00000517          	auipc	a0,0x0
     33e:	eca50513          	addi	a0,a0,-310 # 204 <f5>
     342:	00001097          	auipc	ra,0x1
     346:	9e8080e7          	jalr	-1560(ra) # d2a <thread_create>
    thread_add_runqueue(t5);
     34a:	00001097          	auipc	ra,0x1
     34e:	a44080e7          	jalr	-1468(ra) # d8e <thread_add_runqueue>
    struct thread *t6 = thread_create(f6, NULL);
     352:	4581                	li	a1,0
     354:	00000517          	auipc	a0,0x0
     358:	e2450513          	addi	a0,a0,-476 # 178 <f6>
     35c:	00001097          	auipc	ra,0x1
     360:	9ce080e7          	jalr	-1586(ra) # d2a <thread_create>
    thread_add_runqueue(t6);
     364:	00001097          	auipc	ra,0x1
     368:	a2a080e7          	jalr	-1494(ra) # d8e <thread_add_runqueue>
    
    while(1) {
        printf("thread 2: %d\n", i++);
     36c:	22f00593          	li	a1,559
     370:	00001517          	auipc	a0,0x1
     374:	d7050513          	addi	a0,a0,-656 # 10e0 <thread_start_threading+0xba>
     378:	00000097          	auipc	ra,0x0
     37c:	79a080e7          	jalr	1946(ra) # b12 <printf>
     380:	23000493          	li	s1,560
     384:	00001a17          	auipc	s4,0x1
     388:	d5ca0a13          	addi	s4,s4,-676 # 10e0 <thread_start_threading+0xba>
        if (i == 566)
     38c:	23600993          	li	s3,566
     390:	a011                	j	394 <f2+0x6c>
        printf("thread 2: %d\n", i++);
     392:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     394:	00001097          	auipc	ra,0x1
     398:	c5a080e7          	jalr	-934(ra) # fee <thread_yield>
        printf("thread 2: %d\n", i++);
     39c:	0014891b          	addiw	s2,s1,1
     3a0:	85a6                	mv	a1,s1
     3a2:	8552                	mv	a0,s4
     3a4:	00000097          	auipc	ra,0x0
     3a8:	76e080e7          	jalr	1902(ra) # b12 <printf>
        if (i == 566)
     3ac:	ff3913e3          	bne	s2,s3,392 <f2+0x6a>
            thread_exit();
     3b0:	00001097          	auipc	ra,0x1
     3b4:	ab6080e7          	jalr	-1354(ra) # e66 <thread_exit>
     3b8:	bfe9                	j	392 <f2+0x6a>

00000000000003ba <f1>:
    }
}

void f1(void *arg) {
     3ba:	7179                	addi	sp,sp,-48
     3bc:	f406                	sd	ra,40(sp)
     3be:	f022                	sd	s0,32(sp)
     3c0:	ec26                	sd	s1,24(sp)
     3c2:	e84a                	sd	s2,16(sp)
     3c4:	e44e                	sd	s3,8(sp)
     3c6:	e052                	sd	s4,0(sp)
     3c8:	1800                	addi	s0,sp,48
    int i = 7;
    struct thread *t3 = thread_create(f3, NULL);
     3ca:	4581                	li	a1,0
     3cc:	00000517          	auipc	a0,0x0
     3d0:	df250513          	addi	a0,a0,-526 # 1be <f3>
     3d4:	00001097          	auipc	ra,0x1
     3d8:	956080e7          	jalr	-1706(ra) # d2a <thread_create>
    thread_add_runqueue(t3);
     3dc:	00001097          	auipc	ra,0x1
     3e0:	9b2080e7          	jalr	-1614(ra) # d8e <thread_add_runqueue>
    struct thread *t4 = thread_create(f4, NULL);
     3e4:	4581                	li	a1,0
     3e6:	00000517          	auipc	a0,0x0
     3ea:	eb050513          	addi	a0,a0,-336 # 296 <f4>
     3ee:	00001097          	auipc	ra,0x1
     3f2:	93c080e7          	jalr	-1732(ra) # d2a <thread_create>
    thread_add_runqueue(t4);
     3f6:	00001097          	auipc	ra,0x1
     3fa:	998080e7          	jalr	-1640(ra) # d8e <thread_add_runqueue>
    
    while(1) {
        printf("thread 1: %d\n", i++);
     3fe:	459d                	li	a1,7
     400:	00001517          	auipc	a0,0x1
     404:	cf050513          	addi	a0,a0,-784 # 10f0 <thread_start_threading+0xca>
     408:	00000097          	auipc	ra,0x0
     40c:	70a080e7          	jalr	1802(ra) # b12 <printf>
     410:	44a1                	li	s1,8
     412:	00001a17          	auipc	s4,0x1
     416:	cdea0a13          	addi	s4,s4,-802 # 10f0 <thread_start_threading+0xca>
        if (i == 11)
     41a:	49ad                	li	s3,11
     41c:	a011                	j	420 <f1+0x66>
        printf("thread 1: %d\n", i++);
     41e:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     420:	00001097          	auipc	ra,0x1
     424:	bce080e7          	jalr	-1074(ra) # fee <thread_yield>
        printf("thread 1: %d\n", i++);
     428:	0014891b          	addiw	s2,s1,1
     42c:	85a6                	mv	a1,s1
     42e:	8552                	mv	a0,s4
     430:	00000097          	auipc	ra,0x0
     434:	6e2080e7          	jalr	1762(ra) # b12 <printf>
        if (i == 11)
     438:	ff3913e3          	bne	s2,s3,41e <f1+0x64>
            thread_exit();
     43c:	00001097          	auipc	ra,0x1
     440:	a2a080e7          	jalr	-1494(ra) # e66 <thread_exit>
     444:	bfe9                	j	41e <f1+0x64>

0000000000000446 <f0>:
    }
}

void f0(void *arg) {
     446:	7179                	addi	sp,sp,-48
     448:	f406                	sd	ra,40(sp)
     44a:	f022                	sd	s0,32(sp)
     44c:	ec26                	sd	s1,24(sp)
     44e:	e84a                	sd	s2,16(sp)
     450:	e44e                	sd	s3,8(sp)
     452:	e052                	sd	s4,0(sp)
     454:	1800                	addi	s0,sp,48
    int i = 392;
    struct thread *t1 = thread_create(f1, NULL);
     456:	4581                	li	a1,0
     458:	00000517          	auipc	a0,0x0
     45c:	f6250513          	addi	a0,a0,-158 # 3ba <f1>
     460:	00001097          	auipc	ra,0x1
     464:	8ca080e7          	jalr	-1846(ra) # d2a <thread_create>
    thread_add_runqueue(t1);
     468:	00001097          	auipc	ra,0x1
     46c:	926080e7          	jalr	-1754(ra) # d8e <thread_add_runqueue>
    struct thread *t2 = thread_create(f2, NULL);
     470:	4581                	li	a1,0
     472:	00000517          	auipc	a0,0x0
     476:	eb650513          	addi	a0,a0,-330 # 328 <f2>
     47a:	00001097          	auipc	ra,0x1
     47e:	8b0080e7          	jalr	-1872(ra) # d2a <thread_create>
    thread_add_runqueue(t2);
     482:	00001097          	auipc	ra,0x1
     486:	90c080e7          	jalr	-1780(ra) # d8e <thread_add_runqueue>
    
    while(1) {
        printf("thread 0: %d\n", i++);
     48a:	18800593          	li	a1,392
     48e:	00001517          	auipc	a0,0x1
     492:	c7250513          	addi	a0,a0,-910 # 1100 <thread_start_threading+0xda>
     496:	00000097          	auipc	ra,0x0
     49a:	67c080e7          	jalr	1660(ra) # b12 <printf>
     49e:	18900493          	li	s1,393
     4a2:	00001a17          	auipc	s4,0x1
     4a6:	c5ea0a13          	addi	s4,s4,-930 # 1100 <thread_start_threading+0xda>
        if (i == 397)
     4aa:	18d00993          	li	s3,397
     4ae:	a011                	j	4b2 <f0+0x6c>
        printf("thread 0: %d\n", i++);
     4b0:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     4b2:	00001097          	auipc	ra,0x1
     4b6:	b3c080e7          	jalr	-1220(ra) # fee <thread_yield>
        printf("thread 0: %d\n", i++);
     4ba:	0014891b          	addiw	s2,s1,1
     4be:	85a6                	mv	a1,s1
     4c0:	8552                	mv	a0,s4
     4c2:	00000097          	auipc	ra,0x0
     4c6:	650080e7          	jalr	1616(ra) # b12 <printf>
        if (i == 397)
     4ca:	ff3913e3          	bne	s2,s3,4b0 <f0+0x6a>
            thread_exit();
     4ce:	00001097          	auipc	ra,0x1
     4d2:	998080e7          	jalr	-1640(ra) # e66 <thread_exit>
     4d6:	bfe9                	j	4b0 <f0+0x6a>

00000000000004d8 <main>:
    }
}

int main(int argc, char **argv) {
     4d8:	1141                	addi	sp,sp,-16
     4da:	e406                	sd	ra,8(sp)
     4dc:	e022                	sd	s0,0(sp)
     4de:	0800                	addi	s0,sp,16
    printf("mp_test2\n");
     4e0:	00001517          	auipc	a0,0x1
     4e4:	c3050513          	addi	a0,a0,-976 # 1110 <thread_start_threading+0xea>
     4e8:	00000097          	auipc	ra,0x0
     4ec:	62a080e7          	jalr	1578(ra) # b12 <printf>
    struct thread *t0 = thread_create(f0, NULL);
     4f0:	4581                	li	a1,0
     4f2:	00000517          	auipc	a0,0x0
     4f6:	f5450513          	addi	a0,a0,-172 # 446 <f0>
     4fa:	00001097          	auipc	ra,0x1
     4fe:	830080e7          	jalr	-2000(ra) # d2a <thread_create>
    thread_add_runqueue(t0);
     502:	00001097          	auipc	ra,0x1
     506:	88c080e7          	jalr	-1908(ra) # d8e <thread_add_runqueue>
    thread_start_threading();
     50a:	00001097          	auipc	ra,0x1
     50e:	b1c080e7          	jalr	-1252(ra) # 1026 <thread_start_threading>
    printf("\nexited\n");
     512:	00001517          	auipc	a0,0x1
     516:	c0e50513          	addi	a0,a0,-1010 # 1120 <thread_start_threading+0xfa>
     51a:	00000097          	auipc	ra,0x0
     51e:	5f8080e7          	jalr	1528(ra) # b12 <printf>
    exit(0);
     522:	4501                	li	a0,0
     524:	00000097          	auipc	ra,0x0
     528:	276080e7          	jalr	630(ra) # 79a <exit>

000000000000052c <strcpy>:
#include "kernel/fcntl.h"
#include "user/user.h"

char*
strcpy(char *s, const char *t)
{
     52c:	1141                	addi	sp,sp,-16
     52e:	e422                	sd	s0,8(sp)
     530:	0800                	addi	s0,sp,16
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     532:	87aa                	mv	a5,a0
     534:	0585                	addi	a1,a1,1
     536:	0785                	addi	a5,a5,1
     538:	fff5c703          	lbu	a4,-1(a1)
     53c:	fee78fa3          	sb	a4,-1(a5)
     540:	fb75                	bnez	a4,534 <strcpy+0x8>
    ;
  return os;
}
     542:	6422                	ld	s0,8(sp)
     544:	0141                	addi	sp,sp,16
     546:	8082                	ret

0000000000000548 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     548:	1141                	addi	sp,sp,-16
     54a:	e422                	sd	s0,8(sp)
     54c:	0800                	addi	s0,sp,16
  while(*p && *p == *q)
     54e:	00054783          	lbu	a5,0(a0)
     552:	cb91                	beqz	a5,566 <strcmp+0x1e>
     554:	0005c703          	lbu	a4,0(a1)
     558:	00f71763          	bne	a4,a5,566 <strcmp+0x1e>
    p++, q++;
     55c:	0505                	addi	a0,a0,1
     55e:	0585                	addi	a1,a1,1
  while(*p && *p == *q)
     560:	00054783          	lbu	a5,0(a0)
     564:	fbe5                	bnez	a5,554 <strcmp+0xc>
  return (uchar)*p - (uchar)*q;
     566:	0005c503          	lbu	a0,0(a1)
}
     56a:	40a7853b          	subw	a0,a5,a0
     56e:	6422                	ld	s0,8(sp)
     570:	0141                	addi	sp,sp,16
     572:	8082                	ret

0000000000000574 <strlen>:

uint
strlen(const char *s)
{
     574:	1141                	addi	sp,sp,-16
     576:	e422                	sd	s0,8(sp)
     578:	0800                	addi	s0,sp,16
  int n;

  for(n = 0; s[n]; n++)
     57a:	00054783          	lbu	a5,0(a0)
     57e:	cf91                	beqz	a5,59a <strlen+0x26>
     580:	0505                	addi	a0,a0,1
     582:	87aa                	mv	a5,a0
     584:	4685                	li	a3,1
     586:	9e89                	subw	a3,a3,a0
     588:	00f6853b          	addw	a0,a3,a5
     58c:	0785                	addi	a5,a5,1
     58e:	fff7c703          	lbu	a4,-1(a5)
     592:	fb7d                	bnez	a4,588 <strlen+0x14>
    ;
  return n;
}
     594:	6422                	ld	s0,8(sp)
     596:	0141                	addi	sp,sp,16
     598:	8082                	ret
  for(n = 0; s[n]; n++)
     59a:	4501                	li	a0,0
     59c:	bfe5                	j	594 <strlen+0x20>

000000000000059e <memset>:

void*
memset(void *dst, int c, uint n)
{
     59e:	1141                	addi	sp,sp,-16
     5a0:	e422                	sd	s0,8(sp)
     5a2:	0800                	addi	s0,sp,16
  char *cdst = (char *) dst;
  int i;
  for(i = 0; i < n; i++){
     5a4:	ca19                	beqz	a2,5ba <memset+0x1c>
     5a6:	87aa                	mv	a5,a0
     5a8:	1602                	slli	a2,a2,0x20
     5aa:	9201                	srli	a2,a2,0x20
     5ac:	00a60733          	add	a4,a2,a0
    cdst[i] = c;
     5b0:	00b78023          	sb	a1,0(a5)
  for(i = 0; i < n; i++){
     5b4:	0785                	addi	a5,a5,1
     5b6:	fee79de3          	bne	a5,a4,5b0 <memset+0x12>
  }
  return dst;
}
     5ba:	6422                	ld	s0,8(sp)
     5bc:	0141                	addi	sp,sp,16
     5be:	8082                	ret

00000000000005c0 <strchr>:

char*
strchr(const char *s, char c)
{
     5c0:	1141                	addi	sp,sp,-16
     5c2:	e422                	sd	s0,8(sp)
     5c4:	0800                	addi	s0,sp,16
  for(; *s; s++)
     5c6:	00054783          	lbu	a5,0(a0)
     5ca:	cb99                	beqz	a5,5e0 <strchr+0x20>
    if(*s == c)
     5cc:	00f58763          	beq	a1,a5,5da <strchr+0x1a>
  for(; *s; s++)
     5d0:	0505                	addi	a0,a0,1
     5d2:	00054783          	lbu	a5,0(a0)
     5d6:	fbfd                	bnez	a5,5cc <strchr+0xc>
      return (char*)s;
  return 0;
     5d8:	4501                	li	a0,0
}
     5da:	6422                	ld	s0,8(sp)
     5dc:	0141                	addi	sp,sp,16
     5de:	8082                	ret
  return 0;
     5e0:	4501                	li	a0,0
     5e2:	bfe5                	j	5da <strchr+0x1a>

00000000000005e4 <gets>:

char*
gets(char *buf, int max)
{
     5e4:	711d                	addi	sp,sp,-96
     5e6:	ec86                	sd	ra,88(sp)
     5e8:	e8a2                	sd	s0,80(sp)
     5ea:	e4a6                	sd	s1,72(sp)
     5ec:	e0ca                	sd	s2,64(sp)
     5ee:	fc4e                	sd	s3,56(sp)
     5f0:	f852                	sd	s4,48(sp)
     5f2:	f456                	sd	s5,40(sp)
     5f4:	f05a                	sd	s6,32(sp)
     5f6:	ec5e                	sd	s7,24(sp)
     5f8:	1080                	addi	s0,sp,96
     5fa:	8baa                	mv	s7,a0
     5fc:	8a2e                	mv	s4,a1
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     5fe:	892a                	mv	s2,a0
     600:	4481                	li	s1,0
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
     602:	4aa9                	li	s5,10
     604:	4b35                	li	s6,13
  for(i=0; i+1 < max; ){
     606:	89a6                	mv	s3,s1
     608:	2485                	addiw	s1,s1,1
     60a:	0344d863          	bge	s1,s4,63a <gets+0x56>
    cc = read(0, &c, 1);
     60e:	4605                	li	a2,1
     610:	faf40593          	addi	a1,s0,-81
     614:	4501                	li	a0,0
     616:	00000097          	auipc	ra,0x0
     61a:	19c080e7          	jalr	412(ra) # 7b2 <read>
    if(cc < 1)
     61e:	00a05e63          	blez	a0,63a <gets+0x56>
    buf[i++] = c;
     622:	faf44783          	lbu	a5,-81(s0)
     626:	00f90023          	sb	a5,0(s2)
    if(c == '\n' || c == '\r')
     62a:	01578763          	beq	a5,s5,638 <gets+0x54>
     62e:	0905                	addi	s2,s2,1
     630:	fd679be3          	bne	a5,s6,606 <gets+0x22>
  for(i=0; i+1 < max; ){
     634:	89a6                	mv	s3,s1
     636:	a011                	j	63a <gets+0x56>
     638:	89a6                	mv	s3,s1
      break;
  }
  buf[i] = '\0';
     63a:	99de                	add	s3,s3,s7
     63c:	00098023          	sb	zero,0(s3)
  return buf;
}
     640:	855e                	mv	a0,s7
     642:	60e6                	ld	ra,88(sp)
     644:	6446                	ld	s0,80(sp)
     646:	64a6                	ld	s1,72(sp)
     648:	6906                	ld	s2,64(sp)
     64a:	79e2                	ld	s3,56(sp)
     64c:	7a42                	ld	s4,48(sp)
     64e:	7aa2                	ld	s5,40(sp)
     650:	7b02                	ld	s6,32(sp)
     652:	6be2                	ld	s7,24(sp)
     654:	6125                	addi	sp,sp,96
     656:	8082                	ret

0000000000000658 <stat>:

int
stat(const char *n, struct stat *st)
{
     658:	1101                	addi	sp,sp,-32
     65a:	ec06                	sd	ra,24(sp)
     65c:	e822                	sd	s0,16(sp)
     65e:	e426                	sd	s1,8(sp)
     660:	e04a                	sd	s2,0(sp)
     662:	1000                	addi	s0,sp,32
     664:	892e                	mv	s2,a1
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     666:	4581                	li	a1,0
     668:	00000097          	auipc	ra,0x0
     66c:	172080e7          	jalr	370(ra) # 7da <open>
  if(fd < 0)
     670:	02054563          	bltz	a0,69a <stat+0x42>
     674:	84aa                	mv	s1,a0
    return -1;
  r = fstat(fd, st);
     676:	85ca                	mv	a1,s2
     678:	00000097          	auipc	ra,0x0
     67c:	17a080e7          	jalr	378(ra) # 7f2 <fstat>
     680:	892a                	mv	s2,a0
  close(fd);
     682:	8526                	mv	a0,s1
     684:	00000097          	auipc	ra,0x0
     688:	13e080e7          	jalr	318(ra) # 7c2 <close>
  return r;
}
     68c:	854a                	mv	a0,s2
     68e:	60e2                	ld	ra,24(sp)
     690:	6442                	ld	s0,16(sp)
     692:	64a2                	ld	s1,8(sp)
     694:	6902                	ld	s2,0(sp)
     696:	6105                	addi	sp,sp,32
     698:	8082                	ret
    return -1;
     69a:	597d                	li	s2,-1
     69c:	bfc5                	j	68c <stat+0x34>

000000000000069e <atoi>:

int
atoi(const char *s)
{
     69e:	1141                	addi	sp,sp,-16
     6a0:	e422                	sd	s0,8(sp)
     6a2:	0800                	addi	s0,sp,16
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     6a4:	00054603          	lbu	a2,0(a0)
     6a8:	fd06079b          	addiw	a5,a2,-48
     6ac:	0ff7f793          	andi	a5,a5,255
     6b0:	4725                	li	a4,9
     6b2:	02f76963          	bltu	a4,a5,6e4 <atoi+0x46>
     6b6:	86aa                	mv	a3,a0
  n = 0;
     6b8:	4501                	li	a0,0
  while('0' <= *s && *s <= '9')
     6ba:	45a5                	li	a1,9
    n = n*10 + *s++ - '0';
     6bc:	0685                	addi	a3,a3,1
     6be:	0025179b          	slliw	a5,a0,0x2
     6c2:	9fa9                	addw	a5,a5,a0
     6c4:	0017979b          	slliw	a5,a5,0x1
     6c8:	9fb1                	addw	a5,a5,a2
     6ca:	fd07851b          	addiw	a0,a5,-48
  while('0' <= *s && *s <= '9')
     6ce:	0006c603          	lbu	a2,0(a3)
     6d2:	fd06071b          	addiw	a4,a2,-48
     6d6:	0ff77713          	andi	a4,a4,255
     6da:	fee5f1e3          	bgeu	a1,a4,6bc <atoi+0x1e>
  return n;
}
     6de:	6422                	ld	s0,8(sp)
     6e0:	0141                	addi	sp,sp,16
     6e2:	8082                	ret
  n = 0;
     6e4:	4501                	li	a0,0
     6e6:	bfe5                	j	6de <atoi+0x40>

00000000000006e8 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     6e8:	1141                	addi	sp,sp,-16
     6ea:	e422                	sd	s0,8(sp)
     6ec:	0800                	addi	s0,sp,16
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  if (src > dst) {
     6ee:	02b57463          	bgeu	a0,a1,716 <memmove+0x2e>
    while(n-- > 0)
     6f2:	00c05f63          	blez	a2,710 <memmove+0x28>
     6f6:	1602                	slli	a2,a2,0x20
     6f8:	9201                	srli	a2,a2,0x20
     6fa:	00c507b3          	add	a5,a0,a2
  dst = vdst;
     6fe:	872a                	mv	a4,a0
      *dst++ = *src++;
     700:	0585                	addi	a1,a1,1
     702:	0705                	addi	a4,a4,1
     704:	fff5c683          	lbu	a3,-1(a1)
     708:	fed70fa3          	sb	a3,-1(a4)
    while(n-- > 0)
     70c:	fee79ae3          	bne	a5,a4,700 <memmove+0x18>
    src += n;
    while(n-- > 0)
      *--dst = *--src;
  }
  return vdst;
}
     710:	6422                	ld	s0,8(sp)
     712:	0141                	addi	sp,sp,16
     714:	8082                	ret
    dst += n;
     716:	00c50733          	add	a4,a0,a2
    src += n;
     71a:	95b2                	add	a1,a1,a2
    while(n-- > 0)
     71c:	fec05ae3          	blez	a2,710 <memmove+0x28>
     720:	fff6079b          	addiw	a5,a2,-1
     724:	1782                	slli	a5,a5,0x20
     726:	9381                	srli	a5,a5,0x20
     728:	fff7c793          	not	a5,a5
     72c:	97ba                	add	a5,a5,a4
      *--dst = *--src;
     72e:	15fd                	addi	a1,a1,-1
     730:	177d                	addi	a4,a4,-1
     732:	0005c683          	lbu	a3,0(a1)
     736:	00d70023          	sb	a3,0(a4)
    while(n-- > 0)
     73a:	fee79ae3          	bne	a5,a4,72e <memmove+0x46>
     73e:	bfc9                	j	710 <memmove+0x28>

0000000000000740 <memcmp>:

int
memcmp(const void *s1, const void *s2, uint n)
{
     740:	1141                	addi	sp,sp,-16
     742:	e422                	sd	s0,8(sp)
     744:	0800                	addi	s0,sp,16
  const char *p1 = s1, *p2 = s2;
  while (n-- > 0) {
     746:	ca05                	beqz	a2,776 <memcmp+0x36>
     748:	fff6069b          	addiw	a3,a2,-1
     74c:	1682                	slli	a3,a3,0x20
     74e:	9281                	srli	a3,a3,0x20
     750:	0685                	addi	a3,a3,1
     752:	96aa                	add	a3,a3,a0
    if (*p1 != *p2) {
     754:	00054783          	lbu	a5,0(a0)
     758:	0005c703          	lbu	a4,0(a1)
     75c:	00e79863          	bne	a5,a4,76c <memcmp+0x2c>
      return *p1 - *p2;
    }
    p1++;
     760:	0505                	addi	a0,a0,1
    p2++;
     762:	0585                	addi	a1,a1,1
  while (n-- > 0) {
     764:	fed518e3          	bne	a0,a3,754 <memcmp+0x14>
  }
  return 0;
     768:	4501                	li	a0,0
     76a:	a019                	j	770 <memcmp+0x30>
      return *p1 - *p2;
     76c:	40e7853b          	subw	a0,a5,a4
}
     770:	6422                	ld	s0,8(sp)
     772:	0141                	addi	sp,sp,16
     774:	8082                	ret
  return 0;
     776:	4501                	li	a0,0
     778:	bfe5                	j	770 <memcmp+0x30>

000000000000077a <memcpy>:

void *
memcpy(void *dst, const void *src, uint n)
{
     77a:	1141                	addi	sp,sp,-16
     77c:	e406                	sd	ra,8(sp)
     77e:	e022                	sd	s0,0(sp)
     780:	0800                	addi	s0,sp,16
  return memmove(dst, src, n);
     782:	00000097          	auipc	ra,0x0
     786:	f66080e7          	jalr	-154(ra) # 6e8 <memmove>
}
     78a:	60a2                	ld	ra,8(sp)
     78c:	6402                	ld	s0,0(sp)
     78e:	0141                	addi	sp,sp,16
     790:	8082                	ret

0000000000000792 <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
     792:	4885                	li	a7,1
 ecall
     794:	00000073          	ecall
 ret
     798:	8082                	ret

000000000000079a <exit>:
.global exit
exit:
 li a7, SYS_exit
     79a:	4889                	li	a7,2
 ecall
     79c:	00000073          	ecall
 ret
     7a0:	8082                	ret

00000000000007a2 <wait>:
.global wait
wait:
 li a7, SYS_wait
     7a2:	488d                	li	a7,3
 ecall
     7a4:	00000073          	ecall
 ret
     7a8:	8082                	ret

00000000000007aa <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
     7aa:	4891                	li	a7,4
 ecall
     7ac:	00000073          	ecall
 ret
     7b0:	8082                	ret

00000000000007b2 <read>:
.global read
read:
 li a7, SYS_read
     7b2:	4895                	li	a7,5
 ecall
     7b4:	00000073          	ecall
 ret
     7b8:	8082                	ret

00000000000007ba <write>:
.global write
write:
 li a7, SYS_write
     7ba:	48c1                	li	a7,16
 ecall
     7bc:	00000073          	ecall
 ret
     7c0:	8082                	ret

00000000000007c2 <close>:
.global close
close:
 li a7, SYS_close
     7c2:	48d5                	li	a7,21
 ecall
     7c4:	00000073          	ecall
 ret
     7c8:	8082                	ret

00000000000007ca <kill>:
.global kill
kill:
 li a7, SYS_kill
     7ca:	4899                	li	a7,6
 ecall
     7cc:	00000073          	ecall
 ret
     7d0:	8082                	ret

00000000000007d2 <exec>:
.global exec
exec:
 li a7, SYS_exec
     7d2:	489d                	li	a7,7
 ecall
     7d4:	00000073          	ecall
 ret
     7d8:	8082                	ret

00000000000007da <open>:
.global open
open:
 li a7, SYS_open
     7da:	48bd                	li	a7,15
 ecall
     7dc:	00000073          	ecall
 ret
     7e0:	8082                	ret

00000000000007e2 <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
     7e2:	48c5                	li	a7,17
 ecall
     7e4:	00000073          	ecall
 ret
     7e8:	8082                	ret

00000000000007ea <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
     7ea:	48c9                	li	a7,18
 ecall
     7ec:	00000073          	ecall
 ret
     7f0:	8082                	ret

00000000000007f2 <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
     7f2:	48a1                	li	a7,8
 ecall
     7f4:	00000073          	ecall
 ret
     7f8:	8082                	ret

00000000000007fa <link>:
.global link
link:
 li a7, SYS_link
     7fa:	48cd                	li	a7,19
 ecall
     7fc:	00000073          	ecall
 ret
     800:	8082                	ret

0000000000000802 <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
     802:	48d1                	li	a7,20
 ecall
     804:	00000073          	ecall
 ret
     808:	8082                	ret

000000000000080a <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
     80a:	48a5                	li	a7,9
 ecall
     80c:	00000073          	ecall
 ret
     810:	8082                	ret

0000000000000812 <dup>:
.global dup
dup:
 li a7, SYS_dup
     812:	48a9                	li	a7,10
 ecall
     814:	00000073          	ecall
 ret
     818:	8082                	ret

000000000000081a <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
     81a:	48ad                	li	a7,11
 ecall
     81c:	00000073          	ecall
 ret
     820:	8082                	ret

0000000000000822 <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
     822:	48b1                	li	a7,12
 ecall
     824:	00000073          	ecall
 ret
     828:	8082                	ret

000000000000082a <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
     82a:	48b5                	li	a7,13
 ecall
     82c:	00000073          	ecall
 ret
     830:	8082                	ret

0000000000000832 <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
     832:	48b9                	li	a7,14
 ecall
     834:	00000073          	ecall
 ret
     838:	8082                	ret

000000000000083a <putc>:

static char digits[] = "0123456789ABCDEF";

static void
putc(int fd, char c)
{
     83a:	1101                	addi	sp,sp,-32
     83c:	ec06                	sd	ra,24(sp)
     83e:	e822                	sd	s0,16(sp)
     840:	1000                	addi	s0,sp,32
     842:	feb407a3          	sb	a1,-17(s0)
  write(fd, &c, 1);
     846:	4605                	li	a2,1
     848:	fef40593          	addi	a1,s0,-17
     84c:	00000097          	auipc	ra,0x0
     850:	f6e080e7          	jalr	-146(ra) # 7ba <write>
}
     854:	60e2                	ld	ra,24(sp)
     856:	6442                	ld	s0,16(sp)
     858:	6105                	addi	sp,sp,32
     85a:	8082                	ret

000000000000085c <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
     85c:	7139                	addi	sp,sp,-64
     85e:	fc06                	sd	ra,56(sp)
     860:	f822                	sd	s0,48(sp)
     862:	f426                	sd	s1,40(sp)
     864:	f04a                	sd	s2,32(sp)
     866:	ec4e                	sd	s3,24(sp)
     868:	0080                	addi	s0,sp,64
     86a:	84aa                	mv	s1,a0
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     86c:	c299                	beqz	a3,872 <printint+0x16>
     86e:	0805c863          	bltz	a1,8fe <printint+0xa2>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     872:	2581                	sext.w	a1,a1
  neg = 0;
     874:	4881                	li	a7,0
     876:	fc040693          	addi	a3,s0,-64
  }

  i = 0;
     87a:	4701                	li	a4,0
  do{
    buf[i++] = digits[x % base];
     87c:	2601                	sext.w	a2,a2
     87e:	00001517          	auipc	a0,0x1
     882:	8ba50513          	addi	a0,a0,-1862 # 1138 <digits>
     886:	883a                	mv	a6,a4
     888:	2705                	addiw	a4,a4,1
     88a:	02c5f7bb          	remuw	a5,a1,a2
     88e:	1782                	slli	a5,a5,0x20
     890:	9381                	srli	a5,a5,0x20
     892:	97aa                	add	a5,a5,a0
     894:	0007c783          	lbu	a5,0(a5)
     898:	00f68023          	sb	a5,0(a3)
  }while((x /= base) != 0);
     89c:	0005879b          	sext.w	a5,a1
     8a0:	02c5d5bb          	divuw	a1,a1,a2
     8a4:	0685                	addi	a3,a3,1
     8a6:	fec7f0e3          	bgeu	a5,a2,886 <printint+0x2a>
  if(neg)
     8aa:	00088b63          	beqz	a7,8c0 <printint+0x64>
    buf[i++] = '-';
     8ae:	fd040793          	addi	a5,s0,-48
     8b2:	973e                	add	a4,a4,a5
     8b4:	02d00793          	li	a5,45
     8b8:	fef70823          	sb	a5,-16(a4)
     8bc:	0028071b          	addiw	a4,a6,2

  while(--i >= 0)
     8c0:	02e05863          	blez	a4,8f0 <printint+0x94>
     8c4:	fc040793          	addi	a5,s0,-64
     8c8:	00e78933          	add	s2,a5,a4
     8cc:	fff78993          	addi	s3,a5,-1
     8d0:	99ba                	add	s3,s3,a4
     8d2:	377d                	addiw	a4,a4,-1
     8d4:	1702                	slli	a4,a4,0x20
     8d6:	9301                	srli	a4,a4,0x20
     8d8:	40e989b3          	sub	s3,s3,a4
    putc(fd, buf[i]);
     8dc:	fff94583          	lbu	a1,-1(s2)
     8e0:	8526                	mv	a0,s1
     8e2:	00000097          	auipc	ra,0x0
     8e6:	f58080e7          	jalr	-168(ra) # 83a <putc>
  while(--i >= 0)
     8ea:	197d                	addi	s2,s2,-1
     8ec:	ff3918e3          	bne	s2,s3,8dc <printint+0x80>
}
     8f0:	70e2                	ld	ra,56(sp)
     8f2:	7442                	ld	s0,48(sp)
     8f4:	74a2                	ld	s1,40(sp)
     8f6:	7902                	ld	s2,32(sp)
     8f8:	69e2                	ld	s3,24(sp)
     8fa:	6121                	addi	sp,sp,64
     8fc:	8082                	ret
    x = -xx;
     8fe:	40b005bb          	negw	a1,a1
    neg = 1;
     902:	4885                	li	a7,1
    x = -xx;
     904:	bf8d                	j	876 <printint+0x1a>

0000000000000906 <vprintf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
vprintf(int fd, const char *fmt, va_list ap)
{
     906:	7119                	addi	sp,sp,-128
     908:	fc86                	sd	ra,120(sp)
     90a:	f8a2                	sd	s0,112(sp)
     90c:	f4a6                	sd	s1,104(sp)
     90e:	f0ca                	sd	s2,96(sp)
     910:	ecce                	sd	s3,88(sp)
     912:	e8d2                	sd	s4,80(sp)
     914:	e4d6                	sd	s5,72(sp)
     916:	e0da                	sd	s6,64(sp)
     918:	fc5e                	sd	s7,56(sp)
     91a:	f862                	sd	s8,48(sp)
     91c:	f466                	sd	s9,40(sp)
     91e:	f06a                	sd	s10,32(sp)
     920:	ec6e                	sd	s11,24(sp)
     922:	0100                	addi	s0,sp,128
  char *s;
  int c, i, state;

  state = 0;
  for(i = 0; fmt[i]; i++){
     924:	0005c903          	lbu	s2,0(a1)
     928:	18090f63          	beqz	s2,ac6 <vprintf+0x1c0>
     92c:	8aaa                	mv	s5,a0
     92e:	8b32                	mv	s6,a2
     930:	00158493          	addi	s1,a1,1
  state = 0;
     934:	4981                	li	s3,0
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     936:	02500a13          	li	s4,37
      if(c == 'd'){
     93a:	06400c13          	li	s8,100
        printint(fd, va_arg(ap, int), 10, 1);
      } else if(c == 'l') {
     93e:	06c00c93          	li	s9,108
        printint(fd, va_arg(ap, uint64), 10, 0);
      } else if(c == 'x') {
     942:	07800d13          	li	s10,120
        printint(fd, va_arg(ap, int), 16, 0);
      } else if(c == 'p') {
     946:	07000d93          	li	s11,112
    putc(fd, digits[x >> (sizeof(uint64) * 8 - 4)]);
     94a:	00000b97          	auipc	s7,0x0
     94e:	7eeb8b93          	addi	s7,s7,2030 # 1138 <digits>
     952:	a839                	j	970 <vprintf+0x6a>
        putc(fd, c);
     954:	85ca                	mv	a1,s2
     956:	8556                	mv	a0,s5
     958:	00000097          	auipc	ra,0x0
     95c:	ee2080e7          	jalr	-286(ra) # 83a <putc>
     960:	a019                	j	966 <vprintf+0x60>
    } else if(state == '%'){
     962:	01498f63          	beq	s3,s4,980 <vprintf+0x7a>
  for(i = 0; fmt[i]; i++){
     966:	0485                	addi	s1,s1,1
     968:	fff4c903          	lbu	s2,-1(s1)
     96c:	14090d63          	beqz	s2,ac6 <vprintf+0x1c0>
    c = fmt[i] & 0xff;
     970:	0009079b          	sext.w	a5,s2
    if(state == 0){
     974:	fe0997e3          	bnez	s3,962 <vprintf+0x5c>
      if(c == '%'){
     978:	fd479ee3          	bne	a5,s4,954 <vprintf+0x4e>
        state = '%';
     97c:	89be                	mv	s3,a5
     97e:	b7e5                	j	966 <vprintf+0x60>
      if(c == 'd'){
     980:	05878063          	beq	a5,s8,9c0 <vprintf+0xba>
      } else if(c == 'l') {
     984:	05978c63          	beq	a5,s9,9dc <vprintf+0xd6>
      } else if(c == 'x') {
     988:	07a78863          	beq	a5,s10,9f8 <vprintf+0xf2>
      } else if(c == 'p') {
     98c:	09b78463          	beq	a5,s11,a14 <vprintf+0x10e>
        printptr(fd, va_arg(ap, uint64));
      } else if(c == 's'){
     990:	07300713          	li	a4,115
     994:	0ce78663          	beq	a5,a4,a60 <vprintf+0x15a>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     998:	06300713          	li	a4,99
     99c:	0ee78e63          	beq	a5,a4,a98 <vprintf+0x192>
        putc(fd, va_arg(ap, uint));
      } else if(c == '%'){
     9a0:	11478863          	beq	a5,s4,ab0 <vprintf+0x1aa>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
     9a4:	85d2                	mv	a1,s4
     9a6:	8556                	mv	a0,s5
     9a8:	00000097          	auipc	ra,0x0
     9ac:	e92080e7          	jalr	-366(ra) # 83a <putc>
        putc(fd, c);
     9b0:	85ca                	mv	a1,s2
     9b2:	8556                	mv	a0,s5
     9b4:	00000097          	auipc	ra,0x0
     9b8:	e86080e7          	jalr	-378(ra) # 83a <putc>
      }
      state = 0;
     9bc:	4981                	li	s3,0
     9be:	b765                	j	966 <vprintf+0x60>
        printint(fd, va_arg(ap, int), 10, 1);
     9c0:	008b0913          	addi	s2,s6,8
     9c4:	4685                	li	a3,1
     9c6:	4629                	li	a2,10
     9c8:	000b2583          	lw	a1,0(s6)
     9cc:	8556                	mv	a0,s5
     9ce:	00000097          	auipc	ra,0x0
     9d2:	e8e080e7          	jalr	-370(ra) # 85c <printint>
     9d6:	8b4a                	mv	s6,s2
      state = 0;
     9d8:	4981                	li	s3,0
     9da:	b771                	j	966 <vprintf+0x60>
        printint(fd, va_arg(ap, uint64), 10, 0);
     9dc:	008b0913          	addi	s2,s6,8
     9e0:	4681                	li	a3,0
     9e2:	4629                	li	a2,10
     9e4:	000b2583          	lw	a1,0(s6)
     9e8:	8556                	mv	a0,s5
     9ea:	00000097          	auipc	ra,0x0
     9ee:	e72080e7          	jalr	-398(ra) # 85c <printint>
     9f2:	8b4a                	mv	s6,s2
      state = 0;
     9f4:	4981                	li	s3,0
     9f6:	bf85                	j	966 <vprintf+0x60>
        printint(fd, va_arg(ap, int), 16, 0);
     9f8:	008b0913          	addi	s2,s6,8
     9fc:	4681                	li	a3,0
     9fe:	4641                	li	a2,16
     a00:	000b2583          	lw	a1,0(s6)
     a04:	8556                	mv	a0,s5
     a06:	00000097          	auipc	ra,0x0
     a0a:	e56080e7          	jalr	-426(ra) # 85c <printint>
     a0e:	8b4a                	mv	s6,s2
      state = 0;
     a10:	4981                	li	s3,0
     a12:	bf91                	j	966 <vprintf+0x60>
        printptr(fd, va_arg(ap, uint64));
     a14:	008b0793          	addi	a5,s6,8
     a18:	f8f43423          	sd	a5,-120(s0)
     a1c:	000b3983          	ld	s3,0(s6)
  putc(fd, '0');
     a20:	03000593          	li	a1,48
     a24:	8556                	mv	a0,s5
     a26:	00000097          	auipc	ra,0x0
     a2a:	e14080e7          	jalr	-492(ra) # 83a <putc>
  putc(fd, 'x');
     a2e:	85ea                	mv	a1,s10
     a30:	8556                	mv	a0,s5
     a32:	00000097          	auipc	ra,0x0
     a36:	e08080e7          	jalr	-504(ra) # 83a <putc>
     a3a:	4941                	li	s2,16
    putc(fd, digits[x >> (sizeof(uint64) * 8 - 4)]);
     a3c:	03c9d793          	srli	a5,s3,0x3c
     a40:	97de                	add	a5,a5,s7
     a42:	0007c583          	lbu	a1,0(a5)
     a46:	8556                	mv	a0,s5
     a48:	00000097          	auipc	ra,0x0
     a4c:	df2080e7          	jalr	-526(ra) # 83a <putc>
  for (i = 0; i < (sizeof(uint64) * 2); i++, x <<= 4)
     a50:	0992                	slli	s3,s3,0x4
     a52:	397d                	addiw	s2,s2,-1
     a54:	fe0914e3          	bnez	s2,a3c <vprintf+0x136>
        printptr(fd, va_arg(ap, uint64));
     a58:	f8843b03          	ld	s6,-120(s0)
      state = 0;
     a5c:	4981                	li	s3,0
     a5e:	b721                	j	966 <vprintf+0x60>
        s = va_arg(ap, char*);
     a60:	008b0993          	addi	s3,s6,8
     a64:	000b3903          	ld	s2,0(s6)
        if(s == 0)
     a68:	02090163          	beqz	s2,a8a <vprintf+0x184>
        while(*s != 0){
     a6c:	00094583          	lbu	a1,0(s2)
     a70:	c9a1                	beqz	a1,ac0 <vprintf+0x1ba>
          putc(fd, *s);
     a72:	8556                	mv	a0,s5
     a74:	00000097          	auipc	ra,0x0
     a78:	dc6080e7          	jalr	-570(ra) # 83a <putc>
          s++;
     a7c:	0905                	addi	s2,s2,1
        while(*s != 0){
     a7e:	00094583          	lbu	a1,0(s2)
     a82:	f9e5                	bnez	a1,a72 <vprintf+0x16c>
        s = va_arg(ap, char*);
     a84:	8b4e                	mv	s6,s3
      state = 0;
     a86:	4981                	li	s3,0
     a88:	bdf9                	j	966 <vprintf+0x60>
          s = "(null)";
     a8a:	00000917          	auipc	s2,0x0
     a8e:	6a690913          	addi	s2,s2,1702 # 1130 <thread_start_threading+0x10a>
        while(*s != 0){
     a92:	02800593          	li	a1,40
     a96:	bff1                	j	a72 <vprintf+0x16c>
        putc(fd, va_arg(ap, uint));
     a98:	008b0913          	addi	s2,s6,8
     a9c:	000b4583          	lbu	a1,0(s6)
     aa0:	8556                	mv	a0,s5
     aa2:	00000097          	auipc	ra,0x0
     aa6:	d98080e7          	jalr	-616(ra) # 83a <putc>
     aaa:	8b4a                	mv	s6,s2
      state = 0;
     aac:	4981                	li	s3,0
     aae:	bd65                	j	966 <vprintf+0x60>
        putc(fd, c);
     ab0:	85d2                	mv	a1,s4
     ab2:	8556                	mv	a0,s5
     ab4:	00000097          	auipc	ra,0x0
     ab8:	d86080e7          	jalr	-634(ra) # 83a <putc>
      state = 0;
     abc:	4981                	li	s3,0
     abe:	b565                	j	966 <vprintf+0x60>
        s = va_arg(ap, char*);
     ac0:	8b4e                	mv	s6,s3
      state = 0;
     ac2:	4981                	li	s3,0
     ac4:	b54d                	j	966 <vprintf+0x60>
    }
  }
}
     ac6:	70e6                	ld	ra,120(sp)
     ac8:	7446                	ld	s0,112(sp)
     aca:	74a6                	ld	s1,104(sp)
     acc:	7906                	ld	s2,96(sp)
     ace:	69e6                	ld	s3,88(sp)
     ad0:	6a46                	ld	s4,80(sp)
     ad2:	6aa6                	ld	s5,72(sp)
     ad4:	6b06                	ld	s6,64(sp)
     ad6:	7be2                	ld	s7,56(sp)
     ad8:	7c42                	ld	s8,48(sp)
     ada:	7ca2                	ld	s9,40(sp)
     adc:	7d02                	ld	s10,32(sp)
     ade:	6de2                	ld	s11,24(sp)
     ae0:	6109                	addi	sp,sp,128
     ae2:	8082                	ret

0000000000000ae4 <fprintf>:

void
fprintf(int fd, const char *fmt, ...)
{
     ae4:	715d                	addi	sp,sp,-80
     ae6:	ec06                	sd	ra,24(sp)
     ae8:	e822                	sd	s0,16(sp)
     aea:	1000                	addi	s0,sp,32
     aec:	e010                	sd	a2,0(s0)
     aee:	e414                	sd	a3,8(s0)
     af0:	e818                	sd	a4,16(s0)
     af2:	ec1c                	sd	a5,24(s0)
     af4:	03043023          	sd	a6,32(s0)
     af8:	03143423          	sd	a7,40(s0)
  va_list ap;

  va_start(ap, fmt);
     afc:	fe843423          	sd	s0,-24(s0)
  vprintf(fd, fmt, ap);
     b00:	8622                	mv	a2,s0
     b02:	00000097          	auipc	ra,0x0
     b06:	e04080e7          	jalr	-508(ra) # 906 <vprintf>
}
     b0a:	60e2                	ld	ra,24(sp)
     b0c:	6442                	ld	s0,16(sp)
     b0e:	6161                	addi	sp,sp,80
     b10:	8082                	ret

0000000000000b12 <printf>:

void
printf(const char *fmt, ...)
{
     b12:	711d                	addi	sp,sp,-96
     b14:	ec06                	sd	ra,24(sp)
     b16:	e822                	sd	s0,16(sp)
     b18:	1000                	addi	s0,sp,32
     b1a:	e40c                	sd	a1,8(s0)
     b1c:	e810                	sd	a2,16(s0)
     b1e:	ec14                	sd	a3,24(s0)
     b20:	f018                	sd	a4,32(s0)
     b22:	f41c                	sd	a5,40(s0)
     b24:	03043823          	sd	a6,48(s0)
     b28:	03143c23          	sd	a7,56(s0)
  va_list ap;

  va_start(ap, fmt);
     b2c:	00840613          	addi	a2,s0,8
     b30:	fec43423          	sd	a2,-24(s0)
  vprintf(1, fmt, ap);
     b34:	85aa                	mv	a1,a0
     b36:	4505                	li	a0,1
     b38:	00000097          	auipc	ra,0x0
     b3c:	dce080e7          	jalr	-562(ra) # 906 <vprintf>
}
     b40:	60e2                	ld	ra,24(sp)
     b42:	6442                	ld	s0,16(sp)
     b44:	6125                	addi	sp,sp,96
     b46:	8082                	ret

0000000000000b48 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
     b48:	1141                	addi	sp,sp,-16
     b4a:	e422                	sd	s0,8(sp)
     b4c:	0800                	addi	s0,sp,16
  Header *bp, *p;

  bp = (Header*)ap - 1;
     b4e:	ff050693          	addi	a3,a0,-16
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     b52:	00000797          	auipc	a5,0x0
     b56:	5fe7b783          	ld	a5,1534(a5) # 1150 <freep>
     b5a:	a805                	j	b8a <free+0x42>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
     b5c:	4618                	lw	a4,8(a2)
     b5e:	9db9                	addw	a1,a1,a4
     b60:	feb52c23          	sw	a1,-8(a0)
    bp->s.ptr = p->s.ptr->s.ptr;
     b64:	6398                	ld	a4,0(a5)
     b66:	6318                	ld	a4,0(a4)
     b68:	fee53823          	sd	a4,-16(a0)
     b6c:	a091                	j	bb0 <free+0x68>
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
     b6e:	ff852703          	lw	a4,-8(a0)
     b72:	9e39                	addw	a2,a2,a4
     b74:	c790                	sw	a2,8(a5)
    p->s.ptr = bp->s.ptr;
     b76:	ff053703          	ld	a4,-16(a0)
     b7a:	e398                	sd	a4,0(a5)
     b7c:	a099                	j	bc2 <free+0x7a>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     b7e:	6398                	ld	a4,0(a5)
     b80:	00e7e463          	bltu	a5,a4,b88 <free+0x40>
     b84:	00e6ea63          	bltu	a3,a4,b98 <free+0x50>
{
     b88:	87ba                	mv	a5,a4
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     b8a:	fed7fae3          	bgeu	a5,a3,b7e <free+0x36>
     b8e:	6398                	ld	a4,0(a5)
     b90:	00e6e463          	bltu	a3,a4,b98 <free+0x50>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     b94:	fee7eae3          	bltu	a5,a4,b88 <free+0x40>
  if(bp + bp->s.size == p->s.ptr){
     b98:	ff852583          	lw	a1,-8(a0)
     b9c:	6390                	ld	a2,0(a5)
     b9e:	02059713          	slli	a4,a1,0x20
     ba2:	9301                	srli	a4,a4,0x20
     ba4:	0712                	slli	a4,a4,0x4
     ba6:	9736                	add	a4,a4,a3
     ba8:	fae60ae3          	beq	a2,a4,b5c <free+0x14>
    bp->s.ptr = p->s.ptr;
     bac:	fec53823          	sd	a2,-16(a0)
  if(p + p->s.size == bp){
     bb0:	4790                	lw	a2,8(a5)
     bb2:	02061713          	slli	a4,a2,0x20
     bb6:	9301                	srli	a4,a4,0x20
     bb8:	0712                	slli	a4,a4,0x4
     bba:	973e                	add	a4,a4,a5
     bbc:	fae689e3          	beq	a3,a4,b6e <free+0x26>
  } else
    p->s.ptr = bp;
     bc0:	e394                	sd	a3,0(a5)
  freep = p;
     bc2:	00000717          	auipc	a4,0x0
     bc6:	58f73723          	sd	a5,1422(a4) # 1150 <freep>
}
     bca:	6422                	ld	s0,8(sp)
     bcc:	0141                	addi	sp,sp,16
     bce:	8082                	ret

0000000000000bd0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
     bd0:	7139                	addi	sp,sp,-64
     bd2:	fc06                	sd	ra,56(sp)
     bd4:	f822                	sd	s0,48(sp)
     bd6:	f426                	sd	s1,40(sp)
     bd8:	f04a                	sd	s2,32(sp)
     bda:	ec4e                	sd	s3,24(sp)
     bdc:	e852                	sd	s4,16(sp)
     bde:	e456                	sd	s5,8(sp)
     be0:	e05a                	sd	s6,0(sp)
     be2:	0080                	addi	s0,sp,64
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
     be4:	02051493          	slli	s1,a0,0x20
     be8:	9081                	srli	s1,s1,0x20
     bea:	04bd                	addi	s1,s1,15
     bec:	8091                	srli	s1,s1,0x4
     bee:	0014899b          	addiw	s3,s1,1
     bf2:	0485                	addi	s1,s1,1
  if((prevp = freep) == 0){
     bf4:	00000517          	auipc	a0,0x0
     bf8:	55c53503          	ld	a0,1372(a0) # 1150 <freep>
     bfc:	c515                	beqz	a0,c28 <malloc+0x58>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
     bfe:	611c                	ld	a5,0(a0)
    if(p->s.size >= nunits){
     c00:	4798                	lw	a4,8(a5)
     c02:	02977f63          	bgeu	a4,s1,c40 <malloc+0x70>
     c06:	8a4e                	mv	s4,s3
     c08:	0009871b          	sext.w	a4,s3
     c0c:	6685                	lui	a3,0x1
     c0e:	00d77363          	bgeu	a4,a3,c14 <malloc+0x44>
     c12:	6a05                	lui	s4,0x1
     c14:	000a0b1b          	sext.w	s6,s4
  p = sbrk(nu * sizeof(Header));
     c18:	004a1a1b          	slliw	s4,s4,0x4
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
     c1c:	00000917          	auipc	s2,0x0
     c20:	53490913          	addi	s2,s2,1332 # 1150 <freep>
  if(p == (char*)-1)
     c24:	5afd                	li	s5,-1
     c26:	a88d                	j	c98 <malloc+0xc8>
    base.s.ptr = freep = prevp = &base;
     c28:	00000797          	auipc	a5,0x0
     c2c:	54078793          	addi	a5,a5,1344 # 1168 <base>
     c30:	00000717          	auipc	a4,0x0
     c34:	52f73023          	sd	a5,1312(a4) # 1150 <freep>
     c38:	e39c                	sd	a5,0(a5)
    base.s.size = 0;
     c3a:	0007a423          	sw	zero,8(a5)
    if(p->s.size >= nunits){
     c3e:	b7e1                	j	c06 <malloc+0x36>
      if(p->s.size == nunits)
     c40:	02e48b63          	beq	s1,a4,c76 <malloc+0xa6>
        p->s.size -= nunits;
     c44:	4137073b          	subw	a4,a4,s3
     c48:	c798                	sw	a4,8(a5)
        p += p->s.size;
     c4a:	1702                	slli	a4,a4,0x20
     c4c:	9301                	srli	a4,a4,0x20
     c4e:	0712                	slli	a4,a4,0x4
     c50:	97ba                	add	a5,a5,a4
        p->s.size = nunits;
     c52:	0137a423          	sw	s3,8(a5)
      freep = prevp;
     c56:	00000717          	auipc	a4,0x0
     c5a:	4ea73d23          	sd	a0,1274(a4) # 1150 <freep>
      return (void*)(p + 1);
     c5e:	01078513          	addi	a0,a5,16
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
     c62:	70e2                	ld	ra,56(sp)
     c64:	7442                	ld	s0,48(sp)
     c66:	74a2                	ld	s1,40(sp)
     c68:	7902                	ld	s2,32(sp)
     c6a:	69e2                	ld	s3,24(sp)
     c6c:	6a42                	ld	s4,16(sp)
     c6e:	6aa2                	ld	s5,8(sp)
     c70:	6b02                	ld	s6,0(sp)
     c72:	6121                	addi	sp,sp,64
     c74:	8082                	ret
        prevp->s.ptr = p->s.ptr;
     c76:	6398                	ld	a4,0(a5)
     c78:	e118                	sd	a4,0(a0)
     c7a:	bff1                	j	c56 <malloc+0x86>
  hp->s.size = nu;
     c7c:	01652423          	sw	s6,8(a0)
  free((void*)(hp + 1));
     c80:	0541                	addi	a0,a0,16
     c82:	00000097          	auipc	ra,0x0
     c86:	ec6080e7          	jalr	-314(ra) # b48 <free>
  return freep;
     c8a:	00093503          	ld	a0,0(s2)
      if((p = morecore(nunits)) == 0)
     c8e:	d971                	beqz	a0,c62 <malloc+0x92>
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
     c90:	611c                	ld	a5,0(a0)
    if(p->s.size >= nunits){
     c92:	4798                	lw	a4,8(a5)
     c94:	fa9776e3          	bgeu	a4,s1,c40 <malloc+0x70>
    if(p == freep)
     c98:	00093703          	ld	a4,0(s2)
     c9c:	853e                	mv	a0,a5
     c9e:	fef719e3          	bne	a4,a5,c90 <malloc+0xc0>
  p = sbrk(nu * sizeof(Header));
     ca2:	8552                	mv	a0,s4
     ca4:	00000097          	auipc	ra,0x0
     ca8:	b7e080e7          	jalr	-1154(ra) # 822 <sbrk>
  if(p == (char*)-1)
     cac:	fd5518e3          	bne	a0,s5,c7c <malloc+0xac>
        return 0;
     cb0:	4501                	li	a0,0
     cb2:	bf45                	j	c62 <malloc+0x92>

0000000000000cb4 <setjmp>:
     cb4:	e100                	sd	s0,0(a0)
     cb6:	e504                	sd	s1,8(a0)
     cb8:	01253823          	sd	s2,16(a0)
     cbc:	01353c23          	sd	s3,24(a0)
     cc0:	03453023          	sd	s4,32(a0)
     cc4:	03553423          	sd	s5,40(a0)
     cc8:	03653823          	sd	s6,48(a0)
     ccc:	03753c23          	sd	s7,56(a0)
     cd0:	05853023          	sd	s8,64(a0)
     cd4:	05953423          	sd	s9,72(a0)
     cd8:	05a53823          	sd	s10,80(a0)
     cdc:	05b53c23          	sd	s11,88(a0)
     ce0:	06153023          	sd	ra,96(a0)
     ce4:	06253423          	sd	sp,104(a0)
     ce8:	4501                	li	a0,0
     cea:	8082                	ret

0000000000000cec <longjmp>:
     cec:	6100                	ld	s0,0(a0)
     cee:	6504                	ld	s1,8(a0)
     cf0:	01053903          	ld	s2,16(a0)
     cf4:	01853983          	ld	s3,24(a0)
     cf8:	02053a03          	ld	s4,32(a0)
     cfc:	02853a83          	ld	s5,40(a0)
     d00:	03053b03          	ld	s6,48(a0)
     d04:	03853b83          	ld	s7,56(a0)
     d08:	04053c03          	ld	s8,64(a0)
     d0c:	04853c83          	ld	s9,72(a0)
     d10:	05053d03          	ld	s10,80(a0)
     d14:	05853d83          	ld	s11,88(a0)
     d18:	06053083          	ld	ra,96(a0)
     d1c:	06853103          	ld	sp,104(a0)
     d20:	c199                	beqz	a1,d26 <longjmp_1>
     d22:	852e                	mv	a0,a1
     d24:	8082                	ret

0000000000000d26 <longjmp_1>:
     d26:	4505                	li	a0,1
     d28:	8082                	ret

0000000000000d2a <thread_create>:
static int id = 1;
static jmp_buf env_st;
// static jmp_buf env_tmp;
// TODO: necessary declares, if any

struct thread *thread_create(void (*f)(void *), void *arg) {
     d2a:	7179                	addi	sp,sp,-48
     d2c:	f406                	sd	ra,40(sp)
     d2e:	f022                	sd	s0,32(sp)
     d30:	ec26                	sd	s1,24(sp)
     d32:	e84a                	sd	s2,16(sp)
     d34:	e44e                	sd	s3,8(sp)
     d36:	1800                	addi	s0,sp,48
     d38:	89aa                	mv	s3,a0
     d3a:	892e                	mv	s2,a1
    struct thread *t = (struct thread*) malloc(sizeof(struct thread));
     d3c:	0b000513          	li	a0,176
     d40:	00000097          	auipc	ra,0x0
     d44:	e90080e7          	jalr	-368(ra) # bd0 <malloc>
     d48:	84aa                	mv	s1,a0
    //unsigned long stack_p = 0;
    unsigned long new_stack_p;
    unsigned long new_stack;
    new_stack = (unsigned long) malloc(sizeof(unsigned long)*0x100);
     d4a:	6505                	lui	a0,0x1
     d4c:	80050513          	addi	a0,a0,-2048 # 800 <link+0x6>
     d50:	00000097          	auipc	ra,0x0
     d54:	e80080e7          	jalr	-384(ra) # bd0 <malloc>
    new_stack_p = new_stack +0x100*8-0x2*8;
    t->fp = f;
     d58:	0134b023          	sd	s3,0(s1)
    t->arg = arg;
     d5c:	0124b423          	sd	s2,8(s1)
    t->ID  = id;
     d60:	00000717          	auipc	a4,0x0
     d64:	3ec70713          	addi	a4,a4,1004 # 114c <id>
     d68:	431c                	lw	a5,0(a4)
     d6a:	08f4a823          	sw	a5,144(s1)
    t->buf_set = 0;
     d6e:	0804aa23          	sw	zero,148(s1)
    t->stack = (void*) new_stack;
     d72:	e888                	sd	a0,16(s1)
    new_stack_p = new_stack +0x100*8-0x2*8;
     d74:	7f050513          	addi	a0,a0,2032
    t->stack_p = (void*) new_stack_p;
     d78:	ec88                	sd	a0,24(s1)
    id++;
     d7a:	2785                	addiw	a5,a5,1
     d7c:	c31c                	sw	a5,0(a4)
    return t;
}
     d7e:	8526                	mv	a0,s1
     d80:	70a2                	ld	ra,40(sp)
     d82:	7402                	ld	s0,32(sp)
     d84:	64e2                	ld	s1,24(sp)
     d86:	6942                	ld	s2,16(sp)
     d88:	69a2                	ld	s3,8(sp)
     d8a:	6145                	addi	sp,sp,48
     d8c:	8082                	ret

0000000000000d8e <thread_add_runqueue>:

void thread_add_runqueue(struct thread *t) {
     d8e:	1101                	addi	sp,sp,-32
     d90:	ec06                	sd	ra,24(sp)
     d92:	e822                	sd	s0,16(sp)
     d94:	e426                	sd	s1,8(sp)
     d96:	1000                	addi	s0,sp,32
     d98:	84aa                	mv	s1,a0
    if (current_thread == NULL) { // to root
     d9a:	00000797          	auipc	a5,0x0
     d9e:	3c67b783          	ld	a5,966(a5) # 1160 <current_thread>
     da2:	c385                	beqz	a5,dc2 <thread_add_runqueue+0x34>
        t->right = NULL;
        t->parent = NULL;
        current_thread = t;
        root_thread = t;
    } else {
        if (current_thread->left == NULL) { // to left child
     da4:	6fd8                	ld	a4,152(a5)
     da6:	c329                	beqz	a4,de8 <thread_add_runqueue+0x5a>
            t->left = NULL;
            t->right = NULL;
            t->parent = current_thread;
            current_thread->left = t;
        } else if (current_thread->right == NULL) { // to right child
     da8:	73d8                	ld	a4,160(a5)
     daa:	c731                	beqz	a4,df6 <thread_add_runqueue+0x68>
            t->left = NULL;
            t->right = NULL;
            t->parent = current_thread;
            current_thread->right = t;
        } else {
            free(t->stack);
     dac:	6908                	ld	a0,16(a0)
     dae:	00000097          	auipc	ra,0x0
     db2:	d9a080e7          	jalr	-614(ra) # b48 <free>
            free(t);
     db6:	8526                	mv	a0,s1
     db8:	00000097          	auipc	ra,0x0
     dbc:	d90080e7          	jalr	-624(ra) # b48 <free>
        }
    }
}
     dc0:	a839                	j	dde <thread_add_runqueue+0x50>
        t->left = NULL;
     dc2:	08053c23          	sd	zero,152(a0)
        t->right = NULL;
     dc6:	0a053023          	sd	zero,160(a0)
        t->parent = NULL;
     dca:	0a053423          	sd	zero,168(a0)
        current_thread = t;
     dce:	00000797          	auipc	a5,0x0
     dd2:	38a7b923          	sd	a0,914(a5) # 1160 <current_thread>
        root_thread = t;
     dd6:	00000797          	auipc	a5,0x0
     dda:	38a7b123          	sd	a0,898(a5) # 1158 <root_thread>
}
     dde:	60e2                	ld	ra,24(sp)
     de0:	6442                	ld	s0,16(sp)
     de2:	64a2                	ld	s1,8(sp)
     de4:	6105                	addi	sp,sp,32
     de6:	8082                	ret
            t->left = NULL;
     de8:	08053c23          	sd	zero,152(a0)
            t->right = NULL;
     dec:	0a053023          	sd	zero,160(a0)
            t->parent = current_thread;
     df0:	f55c                	sd	a5,168(a0)
            current_thread->left = t;
     df2:	efc8                	sd	a0,152(a5)
     df4:	b7ed                	j	dde <thread_add_runqueue+0x50>
            t->left = NULL;
     df6:	08053c23          	sd	zero,152(a0)
            t->right = NULL;
     dfa:	0a053023          	sd	zero,160(a0)
            t->parent = current_thread;
     dfe:	f55c                	sd	a5,168(a0)
            current_thread->right = t;
     e00:	f3c8                	sd	a0,160(a5)
     e02:	bff1                	j	dde <thread_add_runqueue+0x50>

0000000000000e04 <schedule>:
        longjmp(current_thread->env, 1);
    }
}

// determine next value of current_thread
void schedule(void) {
     e04:	1141                	addi	sp,sp,-16
     e06:	e422                	sd	s0,8(sp)
     e08:	0800                	addi	s0,sp,16
    if (current_thread->left != NULL) {
     e0a:	00000797          	auipc	a5,0x0
     e0e:	3567b783          	ld	a5,854(a5) # 1160 <current_thread>
     e12:	6fd8                	ld	a4,152(a5)
     e14:	cb01                	beqz	a4,e24 <schedule+0x20>
        current_thread = current_thread->left;
     e16:	00000797          	auipc	a5,0x0
     e1a:	34e7b523          	sd	a4,842(a5) # 1160 <current_thread>
            } else { // backtrack one level
                current_thread = current_thread->parent;
            }
        }
    }
}
     e1e:	6422                	ld	s0,8(sp)
     e20:	0141                	addi	sp,sp,16
     e22:	8082                	ret
    } else if (current_thread->right != NULL) {
     e24:	73d8                	ld	a4,160(a5)
     e26:	c711                	beqz	a4,e32 <schedule+0x2e>
        current_thread = current_thread->right;
     e28:	00000797          	auipc	a5,0x0
     e2c:	32e7bc23          	sd	a4,824(a5) # 1160 <current_thread>
     e30:	b7fd                	j	e1e <schedule+0x1a>
            if (current_thread == root_thread)
     e32:	00000617          	auipc	a2,0x0
     e36:	32663603          	ld	a2,806(a2) # 1158 <root_thread>
     e3a:	00c79563          	bne	a5,a2,e44 <schedule+0x40>
     e3e:	b7c5                	j	e1e <schedule+0x1a>
     e40:	00c78e63          	beq	a5,a2,e5c <schedule+0x58>
            if (current_thread == current_thread->parent->left
     e44:	873e                	mv	a4,a5
     e46:	77dc                	ld	a5,168(a5)
     e48:	6fd4                	ld	a3,152(a5)
     e4a:	fee69be3          	bne	a3,a4,e40 <schedule+0x3c>
                  && current_thread->parent->right != NULL) { // right sibling exist
     e4e:	73d8                	ld	a4,160(a5)
     e50:	db65                	beqz	a4,e40 <schedule+0x3c>
                current_thread = current_thread->parent->right;
     e52:	00000797          	auipc	a5,0x0
     e56:	30e7b723          	sd	a4,782(a5) # 1160 <current_thread>
                break;
     e5a:	b7d1                	j	e1e <schedule+0x1a>
     e5c:	00000797          	auipc	a5,0x0
     e60:	30c7b223          	sd	a2,772(a5) # 1160 <current_thread>
}
     e64:	bf6d                	j	e1e <schedule+0x1a>

0000000000000e66 <thread_exit>:

void thread_exit(void) {
     e66:	1101                	addi	sp,sp,-32
     e68:	ec06                	sd	ra,24(sp)
     e6a:	e822                	sd	s0,16(sp)
     e6c:	e426                	sd	s1,8(sp)
     e6e:	e04a                	sd	s2,0(sp)
     e70:	1000                	addi	s0,sp,32
    struct thread* exiting = current_thread;
     e72:	00000497          	auipc	s1,0x0
     e76:	2ee4b483          	ld	s1,750(s1) # 1160 <current_thread>
    if (exiting == root_thread
     e7a:	00000917          	auipc	s2,0x0
     e7e:	2de93903          	ld	s2,734(s2) # 1158 <root_thread>
     e82:	06990c63          	beq	s2,s1,efa <thread_exit+0x94>
        current_thread = NULL;
        root_thread = NULL;
        longjmp(env_st, 1);
    } else {
        // update current_thread
        schedule();
     e86:	00000097          	auipc	ra,0x0
     e8a:	f7e080e7          	jalr	-130(ra) # e04 <schedule>
        // modify thread tree & free unused thread
        if (exiting->left == NULL 
     e8e:	6cd8                	ld	a4,152(s1)
     e90:	87a6                	mv	a5,s1
     e92:	c745                	beqz	a4,f3a <thread_exit+0xd4>
            free(exiting->stack);
            free(exiting);
        } else { // non-leaf
            // find right most leaf (last in preorder traversal) as replacement
            struct thread* next = exiting;
            while (next->right != NULL || next->left != NULL) {
     e94:	873e                	mv	a4,a5
     e96:	73dc                	ld	a5,160(a5)
     e98:	fff5                	bnez	a5,e94 <thread_exit+0x2e>
     e9a:	6f5c                	ld	a5,152(a4)
     e9c:	ffe5                	bnez	a5,e94 <thread_exit+0x2e>
                else
                    next = next->left;
            }
            // printf("existing: %d, replaced with %d\n", exiting->ID, next->ID);
            // cut next from its parent
            if (next == next->parent->left)
     e9e:	775c                	ld	a5,168(a4)
     ea0:	6fd4                	ld	a3,152(a5)
     ea2:	0ce68263          	beq	a3,a4,f66 <thread_exit+0x100>
                next->parent->left = NULL;
            else
                next->parent->right = NULL;
     ea6:	0a07b023          	sd	zero,160(a5)
            // cut exiting from its parent and connect next
            if (exiting->parent != NULL) {
     eaa:	74dc                	ld	a5,168(s1)
     eac:	c789                	beqz	a5,eb6 <thread_exit+0x50>
                if (exiting == exiting->parent->left)
     eae:	6fd4                	ld	a3,152(a5)
     eb0:	0a968e63          	beq	a3,s1,f6c <thread_exit+0x106>
                    exiting->parent->left = next;
                else
                    exiting->parent->right = next;
     eb4:	f3d8                	sd	a4,160(a5)
            }
            // cut exiting from its children and connect next
            if (exiting->left != NULL)
     eb6:	6cdc                	ld	a5,152(s1)
     eb8:	c391                	beqz	a5,ebc <thread_exit+0x56>
                exiting->left->parent = next;
     eba:	f7d8                	sd	a4,168(a5)
            if (exiting->right != NULL)
     ebc:	70dc                	ld	a5,160(s1)
     ebe:	c391                	beqz	a5,ec2 <thread_exit+0x5c>
                exiting->right->parent = next;
     ec0:	f7d8                	sd	a4,168(a5)
            // update next's info
            next->parent = exiting->parent;
     ec2:	74dc                	ld	a5,168(s1)
     ec4:	f75c                	sd	a5,168(a4)
            next->left = exiting->left;
     ec6:	6cdc                	ld	a5,152(s1)
     ec8:	ef5c                	sd	a5,152(a4)
            next->right = exiting->right;
     eca:	70dc                	ld	a5,160(s1)
     ecc:	f35c                	sd	a5,160(a4)
            // update root if needed
            if (exiting == root_thread)
     ece:	0a990163          	beq	s2,s1,f70 <thread_exit+0x10a>
                root_thread = next;
            free(exiting->stack);
     ed2:	6888                	ld	a0,16(s1)
     ed4:	00000097          	auipc	ra,0x0
     ed8:	c74080e7          	jalr	-908(ra) # b48 <free>
            free(exiting);
     edc:	8526                	mv	a0,s1
     ede:	00000097          	auipc	ra,0x0
     ee2:	c6a080e7          	jalr	-918(ra) # b48 <free>
        }
        // run current_thread
        dispatch();
     ee6:	00000097          	auipc	ra,0x0
     eea:	094080e7          	jalr	148(ra) # f7a <dispatch>
    }
}
     eee:	60e2                	ld	ra,24(sp)
     ef0:	6442                	ld	s0,16(sp)
     ef2:	64a2                	ld	s1,8(sp)
     ef4:	6902                	ld	s2,0(sp)
     ef6:	6105                	addi	sp,sp,32
     ef8:	8082                	ret
          && exiting->left == NULL
     efa:	6cdc                	ld	a5,152(s1)
     efc:	f7c9                	bnez	a5,e86 <thread_exit+0x20>
          && exiting->right == NULL) { // exiting last thread
     efe:	70dc                	ld	a5,160(s1)
     f00:	f3d9                	bnez	a5,e86 <thread_exit+0x20>
        free(exiting->stack);
     f02:	6888                	ld	a0,16(s1)
     f04:	00000097          	auipc	ra,0x0
     f08:	c44080e7          	jalr	-956(ra) # b48 <free>
        free(exiting);
     f0c:	8526                	mv	a0,s1
     f0e:	00000097          	auipc	ra,0x0
     f12:	c3a080e7          	jalr	-966(ra) # b48 <free>
        current_thread = NULL;
     f16:	00000797          	auipc	a5,0x0
     f1a:	2407b523          	sd	zero,586(a5) # 1160 <current_thread>
        root_thread = NULL;
     f1e:	00000797          	auipc	a5,0x0
     f22:	2207bd23          	sd	zero,570(a5) # 1158 <root_thread>
        longjmp(env_st, 1);
     f26:	4585                	li	a1,1
     f28:	00000517          	auipc	a0,0x0
     f2c:	25050513          	addi	a0,a0,592 # 1178 <env_st>
     f30:	00000097          	auipc	ra,0x0
     f34:	dbc080e7          	jalr	-580(ra) # cec <longjmp>
     f38:	bf5d                	j	eee <thread_exit+0x88>
              && exiting->right == NULL) { // leaf
     f3a:	70d8                	ld	a4,160(s1)
     f3c:	ff21                	bnez	a4,e94 <thread_exit+0x2e>
            if (exiting == exiting->parent->left)
     f3e:	74dc                	ld	a5,168(s1)
     f40:	6fd8                	ld	a4,152(a5)
     f42:	00970f63          	beq	a4,s1,f60 <thread_exit+0xfa>
                exiting->parent->right = NULL;
     f46:	0a07b023          	sd	zero,160(a5)
            free(exiting->stack);
     f4a:	6888                	ld	a0,16(s1)
     f4c:	00000097          	auipc	ra,0x0
     f50:	bfc080e7          	jalr	-1028(ra) # b48 <free>
            free(exiting);
     f54:	8526                	mv	a0,s1
     f56:	00000097          	auipc	ra,0x0
     f5a:	bf2080e7          	jalr	-1038(ra) # b48 <free>
     f5e:	b761                	j	ee6 <thread_exit+0x80>
                exiting->parent->left = NULL;
     f60:	0807bc23          	sd	zero,152(a5)
     f64:	b7dd                	j	f4a <thread_exit+0xe4>
                next->parent->left = NULL;
     f66:	0807bc23          	sd	zero,152(a5)
     f6a:	b781                	j	eaa <thread_exit+0x44>
                    exiting->parent->left = next;
     f6c:	efd8                	sd	a4,152(a5)
     f6e:	b7a1                	j	eb6 <thread_exit+0x50>
                root_thread = next;
     f70:	00000797          	auipc	a5,0x0
     f74:	1ee7b423          	sd	a4,488(a5) # 1158 <root_thread>
     f78:	bfa9                	j	ed2 <thread_exit+0x6c>

0000000000000f7a <dispatch>:
void dispatch(void) {
     f7a:	1141                	addi	sp,sp,-16
     f7c:	e406                	sd	ra,8(sp)
     f7e:	e022                	sd	s0,0(sp)
     f80:	0800                	addi	s0,sp,16
    if (current_thread->buf_set == 0) { // first run
     f82:	00000517          	auipc	a0,0x0
     f86:	1de53503          	ld	a0,478(a0) # 1160 <current_thread>
     f8a:	09452783          	lw	a5,148(a0)
     f8e:	eba1                	bnez	a5,fde <dispatch+0x64>
        if (setjmp(current_thread->env) == 0) { // hack the stack pointer
     f90:	02050513          	addi	a0,a0,32
     f94:	00000097          	auipc	ra,0x0
     f98:	d20080e7          	jalr	-736(ra) # cb4 <setjmp>
     f9c:	c105                	beqz	a0,fbc <dispatch+0x42>
            current_thread->fp(current_thread->arg);
     f9e:	00000797          	auipc	a5,0x0
     fa2:	1c27b783          	ld	a5,450(a5) # 1160 <current_thread>
     fa6:	6398                	ld	a4,0(a5)
     fa8:	6788                	ld	a0,8(a5)
     faa:	9702                	jalr	a4
            thread_exit(); // if the function returns
     fac:	00000097          	auipc	ra,0x0
     fb0:	eba080e7          	jalr	-326(ra) # e66 <thread_exit>
}
     fb4:	60a2                	ld	ra,8(sp)
     fb6:	6402                	ld	s0,0(sp)
     fb8:	0141                	addi	sp,sp,16
     fba:	8082                	ret
            current_thread->env->sp = (unsigned long) current_thread->stack_p;
     fbc:	00000517          	auipc	a0,0x0
     fc0:	1a453503          	ld	a0,420(a0) # 1160 <current_thread>
     fc4:	6d1c                	ld	a5,24(a0)
     fc6:	e55c                	sd	a5,136(a0)
            current_thread->buf_set = 1;
     fc8:	4785                	li	a5,1
     fca:	08f52a23          	sw	a5,148(a0)
            longjmp(current_thread->env, 1);
     fce:	4585                	li	a1,1
     fd0:	02050513          	addi	a0,a0,32
     fd4:	00000097          	auipc	ra,0x0
     fd8:	d18080e7          	jalr	-744(ra) # cec <longjmp>
     fdc:	bfe1                	j	fb4 <dispatch+0x3a>
        longjmp(current_thread->env, 1);
     fde:	4585                	li	a1,1
     fe0:	02050513          	addi	a0,a0,32
     fe4:	00000097          	auipc	ra,0x0
     fe8:	d08080e7          	jalr	-760(ra) # cec <longjmp>
}
     fec:	b7e1                	j	fb4 <dispatch+0x3a>

0000000000000fee <thread_yield>:
void thread_yield(void) {
     fee:	1141                	addi	sp,sp,-16
     ff0:	e406                	sd	ra,8(sp)
     ff2:	e022                	sd	s0,0(sp)
     ff4:	0800                	addi	s0,sp,16
    if (setjmp(current_thread->env) == 0) { // from working thread
     ff6:	00000517          	auipc	a0,0x0
     ffa:	16a53503          	ld	a0,362(a0) # 1160 <current_thread>
     ffe:	02050513          	addi	a0,a0,32
    1002:	00000097          	auipc	ra,0x0
    1006:	cb2080e7          	jalr	-846(ra) # cb4 <setjmp>
    100a:	c509                	beqz	a0,1014 <thread_yield+0x26>
}
    100c:	60a2                	ld	ra,8(sp)
    100e:	6402                	ld	s0,0(sp)
    1010:	0141                	addi	sp,sp,16
    1012:	8082                	ret
        schedule();
    1014:	00000097          	auipc	ra,0x0
    1018:	df0080e7          	jalr	-528(ra) # e04 <schedule>
        dispatch();
    101c:	00000097          	auipc	ra,0x0
    1020:	f5e080e7          	jalr	-162(ra) # f7a <dispatch>
    1024:	b7e5                	j	100c <thread_yield+0x1e>

0000000000001026 <thread_start_threading>:

void thread_start_threading(void) {
    1026:	1141                	addi	sp,sp,-16
    1028:	e406                	sd	ra,8(sp)
    102a:	e022                	sd	s0,0(sp)
    102c:	0800                	addi	s0,sp,16
    if(setjmp(env_st) == 0) {
    102e:	00000517          	auipc	a0,0x0
    1032:	14a50513          	addi	a0,a0,330 # 1178 <env_st>
    1036:	00000097          	auipc	ra,0x0
    103a:	c7e080e7          	jalr	-898(ra) # cb4 <setjmp>
    103e:	c509                	beqz	a0,1048 <thread_start_threading+0x22>
        schedule();
        dispatch();
    } else {
        return;
    }
}
    1040:	60a2                	ld	ra,8(sp)
    1042:	6402                	ld	s0,0(sp)
    1044:	0141                	addi	sp,sp,16
    1046:	8082                	ret
        schedule();
    1048:	00000097          	auipc	ra,0x0
    104c:	dbc080e7          	jalr	-580(ra) # e04 <schedule>
        dispatch();
    1050:	00000097          	auipc	ra,0x0
    1054:	f2a080e7          	jalr	-214(ra) # f7a <dispatch>
    1058:	b7e5                	j	1040 <thread_start_threading+0x1a>
