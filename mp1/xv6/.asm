
user/_mp_test3:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <f14>:
#include "user/user.h"
#include "user/threads.h"

#define NULL 0

void f14(void *arg) {
       0:	7179                	addi	sp,sp,-48
       2:	f406                	sd	ra,40(sp)
       4:	f022                	sd	s0,32(sp)
       6:	ec26                	sd	s1,24(sp)
       8:	e84a                	sd	s2,16(sp)
       a:	e44e                	sd	s3,8(sp)
       c:	e052                	sd	s4,0(sp)
       e:	1800                	addi	s0,sp,48
    int i = 285;
    
    while(1) {
        printf("thread 14: %d\n", i++);
      10:	11d00593          	li	a1,285
      14:	00001517          	auipc	a0,0x1
      18:	25450513          	addi	a0,a0,596 # 1268 <thread_start_threading+0x34>
      1c:	00001097          	auipc	ra,0x1
      20:	cd6080e7          	jalr	-810(ra) # cf2 <printf>
      24:	11e00493          	li	s1,286
      28:	00001a17          	auipc	s4,0x1
      2c:	240a0a13          	addi	s4,s4,576 # 1268 <thread_start_threading+0x34>
        if (i == 289)
      30:	12100993          	li	s3,289
      34:	a011                	j	38 <f14+0x38>
        printf("thread 14: %d\n", i++);
      36:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
      38:	00001097          	auipc	ra,0x1
      3c:	1c4080e7          	jalr	452(ra) # 11fc <thread_yield>
        printf("thread 14: %d\n", i++);
      40:	0014891b          	addiw	s2,s1,1
      44:	85a6                	mv	a1,s1
      46:	8552                	mv	a0,s4
      48:	00001097          	auipc	ra,0x1
      4c:	caa080e7          	jalr	-854(ra) # cf2 <printf>
        if (i == 289)
      50:	ff3913e3          	bne	s2,s3,36 <f14+0x36>
            thread_exit();
      54:	00001097          	auipc	ra,0x1
      58:	ff2080e7          	jalr	-14(ra) # 1046 <thread_exit>
      5c:	bfe9                	j	36 <f14+0x36>

000000000000005e <f13>:
    }
}

void f13(void *arg) {
      5e:	7179                	addi	sp,sp,-48
      60:	f406                	sd	ra,40(sp)
      62:	f022                	sd	s0,32(sp)
      64:	ec26                	sd	s1,24(sp)
      66:	e84a                	sd	s2,16(sp)
      68:	e44e                	sd	s3,8(sp)
      6a:	e052                	sd	s4,0(sp)
      6c:	1800                	addi	s0,sp,48
    int i = 813;
    
    while(1) {
        printf("thread 13: %d\n", i++);
      6e:	32d00593          	li	a1,813
      72:	00001517          	auipc	a0,0x1
      76:	20650513          	addi	a0,a0,518 # 1278 <thread_start_threading+0x44>
      7a:	00001097          	auipc	ra,0x1
      7e:	c78080e7          	jalr	-904(ra) # cf2 <printf>
      82:	32e00493          	li	s1,814
      86:	00001a17          	auipc	s4,0x1
      8a:	1f2a0a13          	addi	s4,s4,498 # 1278 <thread_start_threading+0x44>
        if (i == 816)
      8e:	33000993          	li	s3,816
      92:	a011                	j	96 <f13+0x38>
        printf("thread 13: %d\n", i++);
      94:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
      96:	00001097          	auipc	ra,0x1
      9a:	166080e7          	jalr	358(ra) # 11fc <thread_yield>
        printf("thread 13: %d\n", i++);
      9e:	0014891b          	addiw	s2,s1,1
      a2:	85a6                	mv	a1,s1
      a4:	8552                	mv	a0,s4
      a6:	00001097          	auipc	ra,0x1
      aa:	c4c080e7          	jalr	-948(ra) # cf2 <printf>
        if (i == 816)
      ae:	ff3913e3          	bne	s2,s3,94 <f13+0x36>
            thread_exit();
      b2:	00001097          	auipc	ra,0x1
      b6:	f94080e7          	jalr	-108(ra) # 1046 <thread_exit>
      ba:	bfe9                	j	94 <f13+0x36>

00000000000000bc <f12>:
    }
}

void f12(void *arg) {
      bc:	7179                	addi	sp,sp,-48
      be:	f406                	sd	ra,40(sp)
      c0:	f022                	sd	s0,32(sp)
      c2:	ec26                	sd	s1,24(sp)
      c4:	e84a                	sd	s2,16(sp)
      c6:	e44e                	sd	s3,8(sp)
      c8:	e052                	sd	s4,0(sp)
      ca:	1800                	addi	s0,sp,48
    int i = 341;
    
    while(1) {
        printf("thread 12: %d\n", i++);
      cc:	15500593          	li	a1,341
      d0:	00001517          	auipc	a0,0x1
      d4:	1b850513          	addi	a0,a0,440 # 1288 <thread_start_threading+0x54>
      d8:	00001097          	auipc	ra,0x1
      dc:	c1a080e7          	jalr	-998(ra) # cf2 <printf>
      e0:	15600493          	li	s1,342
      e4:	00001a17          	auipc	s4,0x1
      e8:	1a4a0a13          	addi	s4,s4,420 # 1288 <thread_start_threading+0x54>
        if (i == 350)
      ec:	15e00993          	li	s3,350
      f0:	a011                	j	f4 <f12+0x38>
        printf("thread 12: %d\n", i++);
      f2:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
      f4:	00001097          	auipc	ra,0x1
      f8:	108080e7          	jalr	264(ra) # 11fc <thread_yield>
        printf("thread 12: %d\n", i++);
      fc:	0014891b          	addiw	s2,s1,1
     100:	85a6                	mv	a1,s1
     102:	8552                	mv	a0,s4
     104:	00001097          	auipc	ra,0x1
     108:	bee080e7          	jalr	-1042(ra) # cf2 <printf>
        if (i == 350)
     10c:	ff3913e3          	bne	s2,s3,f2 <f12+0x36>
            thread_exit();
     110:	00001097          	auipc	ra,0x1
     114:	f36080e7          	jalr	-202(ra) # 1046 <thread_exit>
     118:	bfe9                	j	f2 <f12+0x36>

000000000000011a <f11>:
    }
}

void f11(void *arg) {
     11a:	7179                	addi	sp,sp,-48
     11c:	f406                	sd	ra,40(sp)
     11e:	f022                	sd	s0,32(sp)
     120:	ec26                	sd	s1,24(sp)
     122:	e84a                	sd	s2,16(sp)
     124:	e44e                	sd	s3,8(sp)
     126:	e052                	sd	s4,0(sp)
     128:	1800                	addi	s0,sp,48
    int i = 653;
    
    while(1) {
        printf("thread 11: %d\n", i++);
     12a:	28d00593          	li	a1,653
     12e:	00001517          	auipc	a0,0x1
     132:	16a50513          	addi	a0,a0,362 # 1298 <thread_start_threading+0x64>
     136:	00001097          	auipc	ra,0x1
     13a:	bbc080e7          	jalr	-1092(ra) # cf2 <printf>
     13e:	28e00493          	li	s1,654
     142:	00001a17          	auipc	s4,0x1
     146:	156a0a13          	addi	s4,s4,342 # 1298 <thread_start_threading+0x64>
        if (i == 658)
     14a:	29200993          	li	s3,658
     14e:	a011                	j	152 <f11+0x38>
        printf("thread 11: %d\n", i++);
     150:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     152:	00001097          	auipc	ra,0x1
     156:	0aa080e7          	jalr	170(ra) # 11fc <thread_yield>
        printf("thread 11: %d\n", i++);
     15a:	0014891b          	addiw	s2,s1,1
     15e:	85a6                	mv	a1,s1
     160:	8552                	mv	a0,s4
     162:	00001097          	auipc	ra,0x1
     166:	b90080e7          	jalr	-1136(ra) # cf2 <printf>
        if (i == 658)
     16a:	ff3913e3          	bne	s2,s3,150 <f11+0x36>
            thread_exit();
     16e:	00001097          	auipc	ra,0x1
     172:	ed8080e7          	jalr	-296(ra) # 1046 <thread_exit>
     176:	bfe9                	j	150 <f11+0x36>

0000000000000178 <f10>:
    }
}

void f10(void *arg) {
     178:	7179                	addi	sp,sp,-48
     17a:	f406                	sd	ra,40(sp)
     17c:	f022                	sd	s0,32(sp)
     17e:	ec26                	sd	s1,24(sp)
     180:	e84a                	sd	s2,16(sp)
     182:	e44e                	sd	s3,8(sp)
     184:	1800                	addi	s0,sp,48
    int i = 948;
     186:	3b400593          	li	a1,948
    
    while(1) {
        printf("thread 10: %d\n", i++);
     18a:	00001997          	auipc	s3,0x1
     18e:	11e98993          	addi	s3,s3,286 # 12a8 <thread_start_threading+0x74>
        if (i == 949)
     192:	3b500913          	li	s2,949
     196:	a811                	j	1aa <f10+0x32>
            thread_exit();
     198:	00001097          	auipc	ra,0x1
     19c:	eae080e7          	jalr	-338(ra) # 1046 <thread_exit>
        thread_yield();
     1a0:	00001097          	auipc	ra,0x1
     1a4:	05c080e7          	jalr	92(ra) # 11fc <thread_yield>
        printf("thread 10: %d\n", i++);
     1a8:	85a6                	mv	a1,s1
     1aa:	0015849b          	addiw	s1,a1,1
     1ae:	854e                	mv	a0,s3
     1b0:	00001097          	auipc	ra,0x1
     1b4:	b42080e7          	jalr	-1214(ra) # cf2 <printf>
        if (i == 949)
     1b8:	ff2480e3          	beq	s1,s2,198 <f10+0x20>
     1bc:	b7d5                	j	1a0 <f10+0x28>

00000000000001be <f9>:
    }
}

void f9(void *arg) {
     1be:	7179                	addi	sp,sp,-48
     1c0:	f406                	sd	ra,40(sp)
     1c2:	f022                	sd	s0,32(sp)
     1c4:	ec26                	sd	s1,24(sp)
     1c6:	e84a                	sd	s2,16(sp)
     1c8:	e44e                	sd	s3,8(sp)
     1ca:	e052                	sd	s4,0(sp)
     1cc:	1800                	addi	s0,sp,48
    int i = 550;
    
    while(1) {
        printf("thread 9: %d\n", i++);
     1ce:	22600593          	li	a1,550
     1d2:	00001517          	auipc	a0,0x1
     1d6:	0e650513          	addi	a0,a0,230 # 12b8 <thread_start_threading+0x84>
     1da:	00001097          	auipc	ra,0x1
     1de:	b18080e7          	jalr	-1256(ra) # cf2 <printf>
     1e2:	22700493          	li	s1,551
     1e6:	00001a17          	auipc	s4,0x1
     1ea:	0d2a0a13          	addi	s4,s4,210 # 12b8 <thread_start_threading+0x84>
        if (i == 559)
     1ee:	22f00993          	li	s3,559
     1f2:	a011                	j	1f6 <f9+0x38>
        printf("thread 9: %d\n", i++);
     1f4:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     1f6:	00001097          	auipc	ra,0x1
     1fa:	006080e7          	jalr	6(ra) # 11fc <thread_yield>
        printf("thread 9: %d\n", i++);
     1fe:	0014891b          	addiw	s2,s1,1
     202:	85a6                	mv	a1,s1
     204:	8552                	mv	a0,s4
     206:	00001097          	auipc	ra,0x1
     20a:	aec080e7          	jalr	-1300(ra) # cf2 <printf>
        if (i == 559)
     20e:	ff3913e3          	bne	s2,s3,1f4 <f9+0x36>
            thread_exit();
     212:	00001097          	auipc	ra,0x1
     216:	e34080e7          	jalr	-460(ra) # 1046 <thread_exit>
     21a:	bfe9                	j	1f4 <f9+0x36>

000000000000021c <f8>:
    }
}

void f8(void *arg) {
     21c:	7179                	addi	sp,sp,-48
     21e:	f406                	sd	ra,40(sp)
     220:	f022                	sd	s0,32(sp)
     222:	ec26                	sd	s1,24(sp)
     224:	e84a                	sd	s2,16(sp)
     226:	e44e                	sd	s3,8(sp)
     228:	1800                	addi	s0,sp,48
    int i = 697;
     22a:	2b900593          	li	a1,697
    
    while(1) {
        printf("thread 8: %d\n", i++);
     22e:	00001997          	auipc	s3,0x1
     232:	09a98993          	addi	s3,s3,154 # 12c8 <thread_start_threading+0x94>
        if (i == 698)
     236:	2ba00913          	li	s2,698
     23a:	a811                	j	24e <f8+0x32>
            thread_exit();
     23c:	00001097          	auipc	ra,0x1
     240:	e0a080e7          	jalr	-502(ra) # 1046 <thread_exit>
        thread_yield();
     244:	00001097          	auipc	ra,0x1
     248:	fb8080e7          	jalr	-72(ra) # 11fc <thread_yield>
        printf("thread 8: %d\n", i++);
     24c:	85a6                	mv	a1,s1
     24e:	0015849b          	addiw	s1,a1,1
     252:	854e                	mv	a0,s3
     254:	00001097          	auipc	ra,0x1
     258:	a9e080e7          	jalr	-1378(ra) # cf2 <printf>
        if (i == 698)
     25c:	ff2480e3          	beq	s1,s2,23c <f8+0x20>
     260:	b7d5                	j	244 <f8+0x28>

0000000000000262 <f7>:
    }
}

void f7(void *arg) {
     262:	7179                	addi	sp,sp,-48
     264:	f406                	sd	ra,40(sp)
     266:	f022                	sd	s0,32(sp)
     268:	ec26                	sd	s1,24(sp)
     26a:	e84a                	sd	s2,16(sp)
     26c:	e44e                	sd	s3,8(sp)
     26e:	e052                	sd	s4,0(sp)
     270:	1800                	addi	s0,sp,48
    int i = 372;
    
    while(1) {
        printf("thread 7: %d\n", i++);
     272:	17400593          	li	a1,372
     276:	00001517          	auipc	a0,0x1
     27a:	06250513          	addi	a0,a0,98 # 12d8 <thread_start_threading+0xa4>
     27e:	00001097          	auipc	ra,0x1
     282:	a74080e7          	jalr	-1420(ra) # cf2 <printf>
     286:	17500493          	li	s1,373
     28a:	00001a17          	auipc	s4,0x1
     28e:	04ea0a13          	addi	s4,s4,78 # 12d8 <thread_start_threading+0xa4>
        if (i == 381)
     292:	17d00993          	li	s3,381
     296:	a011                	j	29a <f7+0x38>
        printf("thread 7: %d\n", i++);
     298:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     29a:	00001097          	auipc	ra,0x1
     29e:	f62080e7          	jalr	-158(ra) # 11fc <thread_yield>
        printf("thread 7: %d\n", i++);
     2a2:	0014891b          	addiw	s2,s1,1
     2a6:	85a6                	mv	a1,s1
     2a8:	8552                	mv	a0,s4
     2aa:	00001097          	auipc	ra,0x1
     2ae:	a48080e7          	jalr	-1464(ra) # cf2 <printf>
        if (i == 381)
     2b2:	ff3913e3          	bne	s2,s3,298 <f7+0x36>
            thread_exit();
     2b6:	00001097          	auipc	ra,0x1
     2ba:	d90080e7          	jalr	-624(ra) # 1046 <thread_exit>
     2be:	bfe9                	j	298 <f7+0x36>

00000000000002c0 <f6>:
    }
}

void f6(void *arg) {
     2c0:	7179                	addi	sp,sp,-48
     2c2:	f406                	sd	ra,40(sp)
     2c4:	f022                	sd	s0,32(sp)
     2c6:	ec26                	sd	s1,24(sp)
     2c8:	e84a                	sd	s2,16(sp)
     2ca:	e44e                	sd	s3,8(sp)
     2cc:	e052                	sd	s4,0(sp)
     2ce:	1800                	addi	s0,sp,48
    int i = 186;
    struct thread *t13 = thread_create(f13, NULL);
     2d0:	4581                	li	a1,0
     2d2:	00000517          	auipc	a0,0x0
     2d6:	d8c50513          	addi	a0,a0,-628 # 5e <f13>
     2da:	00001097          	auipc	ra,0x1
     2de:	c30080e7          	jalr	-976(ra) # f0a <thread_create>
    thread_add_runqueue(t13);
     2e2:	00001097          	auipc	ra,0x1
     2e6:	c8c080e7          	jalr	-884(ra) # f6e <thread_add_runqueue>
    struct thread *t14 = thread_create(f14, NULL);
     2ea:	4581                	li	a1,0
     2ec:	00000517          	auipc	a0,0x0
     2f0:	d1450513          	addi	a0,a0,-748 # 0 <f14>
     2f4:	00001097          	auipc	ra,0x1
     2f8:	c16080e7          	jalr	-1002(ra) # f0a <thread_create>
    thread_add_runqueue(t14);
     2fc:	00001097          	auipc	ra,0x1
     300:	c72080e7          	jalr	-910(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 6: %d\n", i++);
     304:	0ba00593          	li	a1,186
     308:	00001517          	auipc	a0,0x1
     30c:	fe050513          	addi	a0,a0,-32 # 12e8 <thread_start_threading+0xb4>
     310:	00001097          	auipc	ra,0x1
     314:	9e2080e7          	jalr	-1566(ra) # cf2 <printf>
     318:	0bb00493          	li	s1,187
     31c:	00001a17          	auipc	s4,0x1
     320:	fcca0a13          	addi	s4,s4,-52 # 12e8 <thread_start_threading+0xb4>
        if (i == 191)
     324:	0bf00993          	li	s3,191
     328:	a011                	j	32c <f6+0x6c>
        printf("thread 6: %d\n", i++);
     32a:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     32c:	00001097          	auipc	ra,0x1
     330:	ed0080e7          	jalr	-304(ra) # 11fc <thread_yield>
        printf("thread 6: %d\n", i++);
     334:	0014891b          	addiw	s2,s1,1
     338:	85a6                	mv	a1,s1
     33a:	8552                	mv	a0,s4
     33c:	00001097          	auipc	ra,0x1
     340:	9b6080e7          	jalr	-1610(ra) # cf2 <printf>
        if (i == 191)
     344:	ff3913e3          	bne	s2,s3,32a <f6+0x6a>
            thread_exit();
     348:	00001097          	auipc	ra,0x1
     34c:	cfe080e7          	jalr	-770(ra) # 1046 <thread_exit>
     350:	bfe9                	j	32a <f6+0x6a>

0000000000000352 <f5>:
    }
}

void f5(void *arg) {
     352:	7179                	addi	sp,sp,-48
     354:	f406                	sd	ra,40(sp)
     356:	f022                	sd	s0,32(sp)
     358:	ec26                	sd	s1,24(sp)
     35a:	e84a                	sd	s2,16(sp)
     35c:	e44e                	sd	s3,8(sp)
     35e:	e052                	sd	s4,0(sp)
     360:	1800                	addi	s0,sp,48
    int i = 541;
    struct thread *t11 = thread_create(f11, NULL);
     362:	4581                	li	a1,0
     364:	00000517          	auipc	a0,0x0
     368:	db650513          	addi	a0,a0,-586 # 11a <f11>
     36c:	00001097          	auipc	ra,0x1
     370:	b9e080e7          	jalr	-1122(ra) # f0a <thread_create>
    thread_add_runqueue(t11);
     374:	00001097          	auipc	ra,0x1
     378:	bfa080e7          	jalr	-1030(ra) # f6e <thread_add_runqueue>
    struct thread *t12 = thread_create(f12, NULL);
     37c:	4581                	li	a1,0
     37e:	00000517          	auipc	a0,0x0
     382:	d3e50513          	addi	a0,a0,-706 # bc <f12>
     386:	00001097          	auipc	ra,0x1
     38a:	b84080e7          	jalr	-1148(ra) # f0a <thread_create>
    thread_add_runqueue(t12);
     38e:	00001097          	auipc	ra,0x1
     392:	be0080e7          	jalr	-1056(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 5: %d\n", i++);
     396:	21d00593          	li	a1,541
     39a:	00001517          	auipc	a0,0x1
     39e:	f5e50513          	addi	a0,a0,-162 # 12f8 <thread_start_threading+0xc4>
     3a2:	00001097          	auipc	ra,0x1
     3a6:	950080e7          	jalr	-1712(ra) # cf2 <printf>
     3aa:	21e00493          	li	s1,542
     3ae:	00001a17          	auipc	s4,0x1
     3b2:	f4aa0a13          	addi	s4,s4,-182 # 12f8 <thread_start_threading+0xc4>
        if (i == 550)
     3b6:	22600993          	li	s3,550
     3ba:	a011                	j	3be <f5+0x6c>
        printf("thread 5: %d\n", i++);
     3bc:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     3be:	00001097          	auipc	ra,0x1
     3c2:	e3e080e7          	jalr	-450(ra) # 11fc <thread_yield>
        printf("thread 5: %d\n", i++);
     3c6:	0014891b          	addiw	s2,s1,1
     3ca:	85a6                	mv	a1,s1
     3cc:	8552                	mv	a0,s4
     3ce:	00001097          	auipc	ra,0x1
     3d2:	924080e7          	jalr	-1756(ra) # cf2 <printf>
        if (i == 550)
     3d6:	ff3913e3          	bne	s2,s3,3bc <f5+0x6a>
            thread_exit();
     3da:	00001097          	auipc	ra,0x1
     3de:	c6c080e7          	jalr	-916(ra) # 1046 <thread_exit>
     3e2:	bfe9                	j	3bc <f5+0x6a>

00000000000003e4 <f4>:
    }
}

void f4(void *arg) {
     3e4:	7179                	addi	sp,sp,-48
     3e6:	f406                	sd	ra,40(sp)
     3e8:	f022                	sd	s0,32(sp)
     3ea:	ec26                	sd	s1,24(sp)
     3ec:	e84a                	sd	s2,16(sp)
     3ee:	e44e                	sd	s3,8(sp)
     3f0:	e052                	sd	s4,0(sp)
     3f2:	1800                	addi	s0,sp,48
    int i = 2;
    struct thread *t9 = thread_create(f9, NULL);
     3f4:	4581                	li	a1,0
     3f6:	00000517          	auipc	a0,0x0
     3fa:	dc850513          	addi	a0,a0,-568 # 1be <f9>
     3fe:	00001097          	auipc	ra,0x1
     402:	b0c080e7          	jalr	-1268(ra) # f0a <thread_create>
    thread_add_runqueue(t9);
     406:	00001097          	auipc	ra,0x1
     40a:	b68080e7          	jalr	-1176(ra) # f6e <thread_add_runqueue>
    struct thread *t10 = thread_create(f10, NULL);
     40e:	4581                	li	a1,0
     410:	00000517          	auipc	a0,0x0
     414:	d6850513          	addi	a0,a0,-664 # 178 <f10>
     418:	00001097          	auipc	ra,0x1
     41c:	af2080e7          	jalr	-1294(ra) # f0a <thread_create>
    thread_add_runqueue(t10);
     420:	00001097          	auipc	ra,0x1
     424:	b4e080e7          	jalr	-1202(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 4: %d\n", i++);
     428:	4589                	li	a1,2
     42a:	00001517          	auipc	a0,0x1
     42e:	ede50513          	addi	a0,a0,-290 # 1308 <thread_start_threading+0xd4>
     432:	00001097          	auipc	ra,0x1
     436:	8c0080e7          	jalr	-1856(ra) # cf2 <printf>
     43a:	448d                	li	s1,3
     43c:	00001a17          	auipc	s4,0x1
     440:	ecca0a13          	addi	s4,s4,-308 # 1308 <thread_start_threading+0xd4>
        if (i == 4)
     444:	4991                	li	s3,4
     446:	a011                	j	44a <f4+0x66>
        printf("thread 4: %d\n", i++);
     448:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     44a:	00001097          	auipc	ra,0x1
     44e:	db2080e7          	jalr	-590(ra) # 11fc <thread_yield>
        printf("thread 4: %d\n", i++);
     452:	0014891b          	addiw	s2,s1,1
     456:	85a6                	mv	a1,s1
     458:	8552                	mv	a0,s4
     45a:	00001097          	auipc	ra,0x1
     45e:	898080e7          	jalr	-1896(ra) # cf2 <printf>
        if (i == 4)
     462:	ff3913e3          	bne	s2,s3,448 <f4+0x64>
            thread_exit();
     466:	00001097          	auipc	ra,0x1
     46a:	be0080e7          	jalr	-1056(ra) # 1046 <thread_exit>
     46e:	bfe9                	j	448 <f4+0x64>

0000000000000470 <f3>:
    }
}

void f3(void *arg) {
     470:	7179                	addi	sp,sp,-48
     472:	f406                	sd	ra,40(sp)
     474:	f022                	sd	s0,32(sp)
     476:	ec26                	sd	s1,24(sp)
     478:	e84a                	sd	s2,16(sp)
     47a:	e44e                	sd	s3,8(sp)
     47c:	e052                	sd	s4,0(sp)
     47e:	1800                	addi	s0,sp,48
    int i = 989;
    struct thread *t7 = thread_create(f7, NULL);
     480:	4581                	li	a1,0
     482:	00000517          	auipc	a0,0x0
     486:	de050513          	addi	a0,a0,-544 # 262 <f7>
     48a:	00001097          	auipc	ra,0x1
     48e:	a80080e7          	jalr	-1408(ra) # f0a <thread_create>
    thread_add_runqueue(t7);
     492:	00001097          	auipc	ra,0x1
     496:	adc080e7          	jalr	-1316(ra) # f6e <thread_add_runqueue>
    struct thread *t8 = thread_create(f8, NULL);
     49a:	4581                	li	a1,0
     49c:	00000517          	auipc	a0,0x0
     4a0:	d8050513          	addi	a0,a0,-640 # 21c <f8>
     4a4:	00001097          	auipc	ra,0x1
     4a8:	a66080e7          	jalr	-1434(ra) # f0a <thread_create>
    thread_add_runqueue(t8);
     4ac:	00001097          	auipc	ra,0x1
     4b0:	ac2080e7          	jalr	-1342(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 3: %d\n", i++);
     4b4:	3dd00593          	li	a1,989
     4b8:	00001517          	auipc	a0,0x1
     4bc:	e6050513          	addi	a0,a0,-416 # 1318 <thread_start_threading+0xe4>
     4c0:	00001097          	auipc	ra,0x1
     4c4:	832080e7          	jalr	-1998(ra) # cf2 <printf>
     4c8:	3de00493          	li	s1,990
     4cc:	00001a17          	auipc	s4,0x1
     4d0:	e4ca0a13          	addi	s4,s4,-436 # 1318 <thread_start_threading+0xe4>
        if (i == 999)
     4d4:	3e700993          	li	s3,999
     4d8:	a011                	j	4dc <f3+0x6c>
        printf("thread 3: %d\n", i++);
     4da:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     4dc:	00001097          	auipc	ra,0x1
     4e0:	d20080e7          	jalr	-736(ra) # 11fc <thread_yield>
        printf("thread 3: %d\n", i++);
     4e4:	0014891b          	addiw	s2,s1,1
     4e8:	85a6                	mv	a1,s1
     4ea:	8552                	mv	a0,s4
     4ec:	00001097          	auipc	ra,0x1
     4f0:	806080e7          	jalr	-2042(ra) # cf2 <printf>
        if (i == 999)
     4f4:	ff3913e3          	bne	s2,s3,4da <f3+0x6a>
            thread_exit();
     4f8:	00001097          	auipc	ra,0x1
     4fc:	b4e080e7          	jalr	-1202(ra) # 1046 <thread_exit>
     500:	bfe9                	j	4da <f3+0x6a>

0000000000000502 <f2>:
    }
}

void f2(void *arg) {
     502:	7179                	addi	sp,sp,-48
     504:	f406                	sd	ra,40(sp)
     506:	f022                	sd	s0,32(sp)
     508:	ec26                	sd	s1,24(sp)
     50a:	e84a                	sd	s2,16(sp)
     50c:	e44e                	sd	s3,8(sp)
     50e:	e052                	sd	s4,0(sp)
     510:	1800                	addi	s0,sp,48
    int i = 987;
    struct thread *t5 = thread_create(f5, NULL);
     512:	4581                	li	a1,0
     514:	00000517          	auipc	a0,0x0
     518:	e3e50513          	addi	a0,a0,-450 # 352 <f5>
     51c:	00001097          	auipc	ra,0x1
     520:	9ee080e7          	jalr	-1554(ra) # f0a <thread_create>
    thread_add_runqueue(t5);
     524:	00001097          	auipc	ra,0x1
     528:	a4a080e7          	jalr	-1462(ra) # f6e <thread_add_runqueue>
    struct thread *t6 = thread_create(f6, NULL);
     52c:	4581                	li	a1,0
     52e:	00000517          	auipc	a0,0x0
     532:	d9250513          	addi	a0,a0,-622 # 2c0 <f6>
     536:	00001097          	auipc	ra,0x1
     53a:	9d4080e7          	jalr	-1580(ra) # f0a <thread_create>
    thread_add_runqueue(t6);
     53e:	00001097          	auipc	ra,0x1
     542:	a30080e7          	jalr	-1488(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 2: %d\n", i++);
     546:	3db00593          	li	a1,987
     54a:	00001517          	auipc	a0,0x1
     54e:	dde50513          	addi	a0,a0,-546 # 1328 <thread_start_threading+0xf4>
     552:	00000097          	auipc	ra,0x0
     556:	7a0080e7          	jalr	1952(ra) # cf2 <printf>
     55a:	3dc00493          	li	s1,988
     55e:	00001a17          	auipc	s4,0x1
     562:	dcaa0a13          	addi	s4,s4,-566 # 1328 <thread_start_threading+0xf4>
        if (i == 995)
     566:	3e300993          	li	s3,995
     56a:	a011                	j	56e <f2+0x6c>
        printf("thread 2: %d\n", i++);
     56c:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     56e:	00001097          	auipc	ra,0x1
     572:	c8e080e7          	jalr	-882(ra) # 11fc <thread_yield>
        printf("thread 2: %d\n", i++);
     576:	0014891b          	addiw	s2,s1,1
     57a:	85a6                	mv	a1,s1
     57c:	8552                	mv	a0,s4
     57e:	00000097          	auipc	ra,0x0
     582:	774080e7          	jalr	1908(ra) # cf2 <printf>
        if (i == 995)
     586:	ff3913e3          	bne	s2,s3,56c <f2+0x6a>
            thread_exit();
     58a:	00001097          	auipc	ra,0x1
     58e:	abc080e7          	jalr	-1348(ra) # 1046 <thread_exit>
     592:	bfe9                	j	56c <f2+0x6a>

0000000000000594 <f1>:
    }
}

void f1(void *arg) {
     594:	7179                	addi	sp,sp,-48
     596:	f406                	sd	ra,40(sp)
     598:	f022                	sd	s0,32(sp)
     59a:	ec26                	sd	s1,24(sp)
     59c:	e84a                	sd	s2,16(sp)
     59e:	e44e                	sd	s3,8(sp)
     5a0:	e052                	sd	s4,0(sp)
     5a2:	1800                	addi	s0,sp,48
    int i = 685;
    struct thread *t3 = thread_create(f3, NULL);
     5a4:	4581                	li	a1,0
     5a6:	00000517          	auipc	a0,0x0
     5aa:	eca50513          	addi	a0,a0,-310 # 470 <f3>
     5ae:	00001097          	auipc	ra,0x1
     5b2:	95c080e7          	jalr	-1700(ra) # f0a <thread_create>
    thread_add_runqueue(t3);
     5b6:	00001097          	auipc	ra,0x1
     5ba:	9b8080e7          	jalr	-1608(ra) # f6e <thread_add_runqueue>
    struct thread *t4 = thread_create(f4, NULL);
     5be:	4581                	li	a1,0
     5c0:	00000517          	auipc	a0,0x0
     5c4:	e2450513          	addi	a0,a0,-476 # 3e4 <f4>
     5c8:	00001097          	auipc	ra,0x1
     5cc:	942080e7          	jalr	-1726(ra) # f0a <thread_create>
    thread_add_runqueue(t4);
     5d0:	00001097          	auipc	ra,0x1
     5d4:	99e080e7          	jalr	-1634(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 1: %d\n", i++);
     5d8:	2ad00593          	li	a1,685
     5dc:	00001517          	auipc	a0,0x1
     5e0:	d5c50513          	addi	a0,a0,-676 # 1338 <thread_start_threading+0x104>
     5e4:	00000097          	auipc	ra,0x0
     5e8:	70e080e7          	jalr	1806(ra) # cf2 <printf>
     5ec:	2ae00493          	li	s1,686
     5f0:	00001a17          	auipc	s4,0x1
     5f4:	d48a0a13          	addi	s4,s4,-696 # 1338 <thread_start_threading+0x104>
        if (i == 694)
     5f8:	2b600993          	li	s3,694
     5fc:	a011                	j	600 <f1+0x6c>
        printf("thread 1: %d\n", i++);
     5fe:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     600:	00001097          	auipc	ra,0x1
     604:	bfc080e7          	jalr	-1028(ra) # 11fc <thread_yield>
        printf("thread 1: %d\n", i++);
     608:	0014891b          	addiw	s2,s1,1
     60c:	85a6                	mv	a1,s1
     60e:	8552                	mv	a0,s4
     610:	00000097          	auipc	ra,0x0
     614:	6e2080e7          	jalr	1762(ra) # cf2 <printf>
        if (i == 694)
     618:	ff3913e3          	bne	s2,s3,5fe <f1+0x6a>
            thread_exit();
     61c:	00001097          	auipc	ra,0x1
     620:	a2a080e7          	jalr	-1494(ra) # 1046 <thread_exit>
     624:	bfe9                	j	5fe <f1+0x6a>

0000000000000626 <f0>:
    }
}

void f0(void *arg) {
     626:	7179                	addi	sp,sp,-48
     628:	f406                	sd	ra,40(sp)
     62a:	f022                	sd	s0,32(sp)
     62c:	ec26                	sd	s1,24(sp)
     62e:	e84a                	sd	s2,16(sp)
     630:	e44e                	sd	s3,8(sp)
     632:	e052                	sd	s4,0(sp)
     634:	1800                	addi	s0,sp,48
    int i = 141;
    struct thread *t1 = thread_create(f1, NULL);
     636:	4581                	li	a1,0
     638:	00000517          	auipc	a0,0x0
     63c:	f5c50513          	addi	a0,a0,-164 # 594 <f1>
     640:	00001097          	auipc	ra,0x1
     644:	8ca080e7          	jalr	-1846(ra) # f0a <thread_create>
    thread_add_runqueue(t1);
     648:	00001097          	auipc	ra,0x1
     64c:	926080e7          	jalr	-1754(ra) # f6e <thread_add_runqueue>
    struct thread *t2 = thread_create(f2, NULL);
     650:	4581                	li	a1,0
     652:	00000517          	auipc	a0,0x0
     656:	eb050513          	addi	a0,a0,-336 # 502 <f2>
     65a:	00001097          	auipc	ra,0x1
     65e:	8b0080e7          	jalr	-1872(ra) # f0a <thread_create>
    thread_add_runqueue(t2);
     662:	00001097          	auipc	ra,0x1
     666:	90c080e7          	jalr	-1780(ra) # f6e <thread_add_runqueue>
    
    while(1) {
        printf("thread 0: %d\n", i++);
     66a:	08d00593          	li	a1,141
     66e:	00001517          	auipc	a0,0x1
     672:	cda50513          	addi	a0,a0,-806 # 1348 <thread_start_threading+0x114>
     676:	00000097          	auipc	ra,0x0
     67a:	67c080e7          	jalr	1660(ra) # cf2 <printf>
     67e:	08e00493          	li	s1,142
     682:	00001a17          	auipc	s4,0x1
     686:	cc6a0a13          	addi	s4,s4,-826 # 1348 <thread_start_threading+0x114>
        if (i == 146)
     68a:	09200993          	li	s3,146
     68e:	a011                	j	692 <f0+0x6c>
        printf("thread 0: %d\n", i++);
     690:	84ca                	mv	s1,s2
            thread_exit();
        thread_yield();
     692:	00001097          	auipc	ra,0x1
     696:	b6a080e7          	jalr	-1174(ra) # 11fc <thread_yield>
        printf("thread 0: %d\n", i++);
     69a:	0014891b          	addiw	s2,s1,1
     69e:	85a6                	mv	a1,s1
     6a0:	8552                	mv	a0,s4
     6a2:	00000097          	auipc	ra,0x0
     6a6:	650080e7          	jalr	1616(ra) # cf2 <printf>
        if (i == 146)
     6aa:	ff3913e3          	bne	s2,s3,690 <f0+0x6a>
            thread_exit();
     6ae:	00001097          	auipc	ra,0x1
     6b2:	998080e7          	jalr	-1640(ra) # 1046 <thread_exit>
     6b6:	bfe9                	j	690 <f0+0x6a>

00000000000006b8 <main>:
    }
}

int main(int argc, char **argv) {
     6b8:	1141                	addi	sp,sp,-16
     6ba:	e406                	sd	ra,8(sp)
     6bc:	e022                	sd	s0,0(sp)
     6be:	0800                	addi	s0,sp,16
    printf("mp_test3\n");
     6c0:	00001517          	auipc	a0,0x1
     6c4:	c9850513          	addi	a0,a0,-872 # 1358 <thread_start_threading+0x124>
     6c8:	00000097          	auipc	ra,0x0
     6cc:	62a080e7          	jalr	1578(ra) # cf2 <printf>
    struct thread *t0 = thread_create(f0, NULL);
     6d0:	4581                	li	a1,0
     6d2:	00000517          	auipc	a0,0x0
     6d6:	f5450513          	addi	a0,a0,-172 # 626 <f0>
     6da:	00001097          	auipc	ra,0x1
     6de:	830080e7          	jalr	-2000(ra) # f0a <thread_create>
    thread_add_runqueue(t0);
     6e2:	00001097          	auipc	ra,0x1
     6e6:	88c080e7          	jalr	-1908(ra) # f6e <thread_add_runqueue>
    thread_start_threading();
     6ea:	00001097          	auipc	ra,0x1
     6ee:	b4a080e7          	jalr	-1206(ra) # 1234 <thread_start_threading>
    printf("\nexited\n");
     6f2:	00001517          	auipc	a0,0x1
     6f6:	c7650513          	addi	a0,a0,-906 # 1368 <thread_start_threading+0x134>
     6fa:	00000097          	auipc	ra,0x0
     6fe:	5f8080e7          	jalr	1528(ra) # cf2 <printf>
    exit(0);
     702:	4501                	li	a0,0
     704:	00000097          	auipc	ra,0x0
     708:	276080e7          	jalr	630(ra) # 97a <exit>

000000000000070c <strcpy>:
#include "kernel/fcntl.h"
#include "user/user.h"

char*
strcpy(char *s, const char *t)
{
     70c:	1141                	addi	sp,sp,-16
     70e:	e422                	sd	s0,8(sp)
     710:	0800                	addi	s0,sp,16
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     712:	87aa                	mv	a5,a0
     714:	0585                	addi	a1,a1,1
     716:	0785                	addi	a5,a5,1
     718:	fff5c703          	lbu	a4,-1(a1)
     71c:	fee78fa3          	sb	a4,-1(a5)
     720:	fb75                	bnez	a4,714 <strcpy+0x8>
    ;
  return os;
}
     722:	6422                	ld	s0,8(sp)
     724:	0141                	addi	sp,sp,16
     726:	8082                	ret

0000000000000728 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     728:	1141                	addi	sp,sp,-16
     72a:	e422                	sd	s0,8(sp)
     72c:	0800                	addi	s0,sp,16
  while(*p && *p == *q)
     72e:	00054783          	lbu	a5,0(a0)
     732:	cb91                	beqz	a5,746 <strcmp+0x1e>
     734:	0005c703          	lbu	a4,0(a1)
     738:	00f71763          	bne	a4,a5,746 <strcmp+0x1e>
    p++, q++;
     73c:	0505                	addi	a0,a0,1
     73e:	0585                	addi	a1,a1,1
  while(*p && *p == *q)
     740:	00054783          	lbu	a5,0(a0)
     744:	fbe5                	bnez	a5,734 <strcmp+0xc>
  return (uchar)*p - (uchar)*q;
     746:	0005c503          	lbu	a0,0(a1)
}
     74a:	40a7853b          	subw	a0,a5,a0
     74e:	6422                	ld	s0,8(sp)
     750:	0141                	addi	sp,sp,16
     752:	8082                	ret

0000000000000754 <strlen>:

uint
strlen(const char *s)
{
     754:	1141                	addi	sp,sp,-16
     756:	e422                	sd	s0,8(sp)
     758:	0800                	addi	s0,sp,16
  int n;

  for(n = 0; s[n]; n++)
     75a:	00054783          	lbu	a5,0(a0)
     75e:	cf91                	beqz	a5,77a <strlen+0x26>
     760:	0505                	addi	a0,a0,1
     762:	87aa                	mv	a5,a0
     764:	4685                	li	a3,1
     766:	9e89                	subw	a3,a3,a0
     768:	00f6853b          	addw	a0,a3,a5
     76c:	0785                	addi	a5,a5,1
     76e:	fff7c703          	lbu	a4,-1(a5)
     772:	fb7d                	bnez	a4,768 <strlen+0x14>
    ;
  return n;
}
     774:	6422                	ld	s0,8(sp)
     776:	0141                	addi	sp,sp,16
     778:	8082                	ret
  for(n = 0; s[n]; n++)
     77a:	4501                	li	a0,0
     77c:	bfe5                	j	774 <strlen+0x20>

000000000000077e <memset>:

void*
memset(void *dst, int c, uint n)
{
     77e:	1141                	addi	sp,sp,-16
     780:	e422                	sd	s0,8(sp)
     782:	0800                	addi	s0,sp,16
  char *cdst = (char *) dst;
  int i;
  for(i = 0; i < n; i++){
     784:	ca19                	beqz	a2,79a <memset+0x1c>
     786:	87aa                	mv	a5,a0
     788:	1602                	slli	a2,a2,0x20
     78a:	9201                	srli	a2,a2,0x20
     78c:	00a60733          	add	a4,a2,a0
    cdst[i] = c;
     790:	00b78023          	sb	a1,0(a5)
  for(i = 0; i < n; i++){
     794:	0785                	addi	a5,a5,1
     796:	fee79de3          	bne	a5,a4,790 <memset+0x12>
  }
  return dst;
}
     79a:	6422                	ld	s0,8(sp)
     79c:	0141                	addi	sp,sp,16
     79e:	8082                	ret

00000000000007a0 <strchr>:

char*
strchr(const char *s, char c)
{
     7a0:	1141                	addi	sp,sp,-16
     7a2:	e422                	sd	s0,8(sp)
     7a4:	0800                	addi	s0,sp,16
  for(; *s; s++)
     7a6:	00054783          	lbu	a5,0(a0)
     7aa:	cb99                	beqz	a5,7c0 <strchr+0x20>
    if(*s == c)
     7ac:	00f58763          	beq	a1,a5,7ba <strchr+0x1a>
  for(; *s; s++)
     7b0:	0505                	addi	a0,a0,1
     7b2:	00054783          	lbu	a5,0(a0)
     7b6:	fbfd                	bnez	a5,7ac <strchr+0xc>
      return (char*)s;
  return 0;
     7b8:	4501                	li	a0,0
}
     7ba:	6422                	ld	s0,8(sp)
     7bc:	0141                	addi	sp,sp,16
     7be:	8082                	ret
  return 0;
     7c0:	4501                	li	a0,0
     7c2:	bfe5                	j	7ba <strchr+0x1a>

00000000000007c4 <gets>:

char*
gets(char *buf, int max)
{
     7c4:	711d                	addi	sp,sp,-96
     7c6:	ec86                	sd	ra,88(sp)
     7c8:	e8a2                	sd	s0,80(sp)
     7ca:	e4a6                	sd	s1,72(sp)
     7cc:	e0ca                	sd	s2,64(sp)
     7ce:	fc4e                	sd	s3,56(sp)
     7d0:	f852                	sd	s4,48(sp)
     7d2:	f456                	sd	s5,40(sp)
     7d4:	f05a                	sd	s6,32(sp)
     7d6:	ec5e                	sd	s7,24(sp)
     7d8:	1080                	addi	s0,sp,96
     7da:	8baa                	mv	s7,a0
     7dc:	8a2e                	mv	s4,a1
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     7de:	892a                	mv	s2,a0
     7e0:	4481                	li	s1,0
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
     7e2:	4aa9                	li	s5,10
     7e4:	4b35                	li	s6,13
  for(i=0; i+1 < max; ){
     7e6:	89a6                	mv	s3,s1
     7e8:	2485                	addiw	s1,s1,1
     7ea:	0344d863          	bge	s1,s4,81a <gets+0x56>
    cc = read(0, &c, 1);
     7ee:	4605                	li	a2,1
     7f0:	faf40593          	addi	a1,s0,-81
     7f4:	4501                	li	a0,0
     7f6:	00000097          	auipc	ra,0x0
     7fa:	19c080e7          	jalr	412(ra) # 992 <read>
    if(cc < 1)
     7fe:	00a05e63          	blez	a0,81a <gets+0x56>
    buf[i++] = c;
     802:	faf44783          	lbu	a5,-81(s0)
     806:	00f90023          	sb	a5,0(s2)
    if(c == '\n' || c == '\r')
     80a:	01578763          	beq	a5,s5,818 <gets+0x54>
     80e:	0905                	addi	s2,s2,1
     810:	fd679be3          	bne	a5,s6,7e6 <gets+0x22>
  for(i=0; i+1 < max; ){
     814:	89a6                	mv	s3,s1
     816:	a011                	j	81a <gets+0x56>
     818:	89a6                	mv	s3,s1
      break;
  }
  buf[i] = '\0';
     81a:	99de                	add	s3,s3,s7
     81c:	00098023          	sb	zero,0(s3)
  return buf;
}
     820:	855e                	mv	a0,s7
     822:	60e6                	ld	ra,88(sp)
     824:	6446                	ld	s0,80(sp)
     826:	64a6                	ld	s1,72(sp)
     828:	6906                	ld	s2,64(sp)
     82a:	79e2                	ld	s3,56(sp)
     82c:	7a42                	ld	s4,48(sp)
     82e:	7aa2                	ld	s5,40(sp)
     830:	7b02                	ld	s6,32(sp)
     832:	6be2                	ld	s7,24(sp)
     834:	6125                	addi	sp,sp,96
     836:	8082                	ret

0000000000000838 <stat>:

int
stat(const char *n, struct stat *st)
{
     838:	1101                	addi	sp,sp,-32
     83a:	ec06                	sd	ra,24(sp)
     83c:	e822                	sd	s0,16(sp)
     83e:	e426                	sd	s1,8(sp)
     840:	e04a                	sd	s2,0(sp)
     842:	1000                	addi	s0,sp,32
     844:	892e                	mv	s2,a1
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     846:	4581                	li	a1,0
     848:	00000097          	auipc	ra,0x0
     84c:	172080e7          	jalr	370(ra) # 9ba <open>
  if(fd < 0)
     850:	02054563          	bltz	a0,87a <stat+0x42>
     854:	84aa                	mv	s1,a0
    return -1;
  r = fstat(fd, st);
     856:	85ca                	mv	a1,s2
     858:	00000097          	auipc	ra,0x0
     85c:	17a080e7          	jalr	378(ra) # 9d2 <fstat>
     860:	892a                	mv	s2,a0
  close(fd);
     862:	8526                	mv	a0,s1
     864:	00000097          	auipc	ra,0x0
     868:	13e080e7          	jalr	318(ra) # 9a2 <close>
  return r;
}
     86c:	854a                	mv	a0,s2
     86e:	60e2                	ld	ra,24(sp)
     870:	6442                	ld	s0,16(sp)
     872:	64a2                	ld	s1,8(sp)
     874:	6902                	ld	s2,0(sp)
     876:	6105                	addi	sp,sp,32
     878:	8082                	ret
    return -1;
     87a:	597d                	li	s2,-1
     87c:	bfc5                	j	86c <stat+0x34>

000000000000087e <atoi>:

int
atoi(const char *s)
{
     87e:	1141                	addi	sp,sp,-16
     880:	e422                	sd	s0,8(sp)
     882:	0800                	addi	s0,sp,16
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     884:	00054603          	lbu	a2,0(a0)
     888:	fd06079b          	addiw	a5,a2,-48
     88c:	0ff7f793          	andi	a5,a5,255
     890:	4725                	li	a4,9
     892:	02f76963          	bltu	a4,a5,8c4 <atoi+0x46>
     896:	86aa                	mv	a3,a0
  n = 0;
     898:	4501                	li	a0,0
  while('0' <= *s && *s <= '9')
     89a:	45a5                	li	a1,9
    n = n*10 + *s++ - '0';
     89c:	0685                	addi	a3,a3,1
     89e:	0025179b          	slliw	a5,a0,0x2
     8a2:	9fa9                	addw	a5,a5,a0
     8a4:	0017979b          	slliw	a5,a5,0x1
     8a8:	9fb1                	addw	a5,a5,a2
     8aa:	fd07851b          	addiw	a0,a5,-48
  while('0' <= *s && *s <= '9')
     8ae:	0006c603          	lbu	a2,0(a3)
     8b2:	fd06071b          	addiw	a4,a2,-48
     8b6:	0ff77713          	andi	a4,a4,255
     8ba:	fee5f1e3          	bgeu	a1,a4,89c <atoi+0x1e>
  return n;
}
     8be:	6422                	ld	s0,8(sp)
     8c0:	0141                	addi	sp,sp,16
     8c2:	8082                	ret
  n = 0;
     8c4:	4501                	li	a0,0
     8c6:	bfe5                	j	8be <atoi+0x40>

00000000000008c8 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     8c8:	1141                	addi	sp,sp,-16
     8ca:	e422                	sd	s0,8(sp)
     8cc:	0800                	addi	s0,sp,16
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  if (src > dst) {
     8ce:	02b57463          	bgeu	a0,a1,8f6 <memmove+0x2e>
    while(n-- > 0)
     8d2:	00c05f63          	blez	a2,8f0 <memmove+0x28>
     8d6:	1602                	slli	a2,a2,0x20
     8d8:	9201                	srli	a2,a2,0x20
     8da:	00c507b3          	add	a5,a0,a2
  dst = vdst;
     8de:	872a                	mv	a4,a0
      *dst++ = *src++;
     8e0:	0585                	addi	a1,a1,1
     8e2:	0705                	addi	a4,a4,1
     8e4:	fff5c683          	lbu	a3,-1(a1)
     8e8:	fed70fa3          	sb	a3,-1(a4)
    while(n-- > 0)
     8ec:	fee79ae3          	bne	a5,a4,8e0 <memmove+0x18>
    src += n;
    while(n-- > 0)
      *--dst = *--src;
  }
  return vdst;
}
     8f0:	6422                	ld	s0,8(sp)
     8f2:	0141                	addi	sp,sp,16
     8f4:	8082                	ret
    dst += n;
     8f6:	00c50733          	add	a4,a0,a2
    src += n;
     8fa:	95b2                	add	a1,a1,a2
    while(n-- > 0)
     8fc:	fec05ae3          	blez	a2,8f0 <memmove+0x28>
     900:	fff6079b          	addiw	a5,a2,-1
     904:	1782                	slli	a5,a5,0x20
     906:	9381                	srli	a5,a5,0x20
     908:	fff7c793          	not	a5,a5
     90c:	97ba                	add	a5,a5,a4
      *--dst = *--src;
     90e:	15fd                	addi	a1,a1,-1
     910:	177d                	addi	a4,a4,-1
     912:	0005c683          	lbu	a3,0(a1)
     916:	00d70023          	sb	a3,0(a4)
    while(n-- > 0)
     91a:	fee79ae3          	bne	a5,a4,90e <memmove+0x46>
     91e:	bfc9                	j	8f0 <memmove+0x28>

0000000000000920 <memcmp>:

int
memcmp(const void *s1, const void *s2, uint n)
{
     920:	1141                	addi	sp,sp,-16
     922:	e422                	sd	s0,8(sp)
     924:	0800                	addi	s0,sp,16
  const char *p1 = s1, *p2 = s2;
  while (n-- > 0) {
     926:	ca05                	beqz	a2,956 <memcmp+0x36>
     928:	fff6069b          	addiw	a3,a2,-1
     92c:	1682                	slli	a3,a3,0x20
     92e:	9281                	srli	a3,a3,0x20
     930:	0685                	addi	a3,a3,1
     932:	96aa                	add	a3,a3,a0
    if (*p1 != *p2) {
     934:	00054783          	lbu	a5,0(a0)
     938:	0005c703          	lbu	a4,0(a1)
     93c:	00e79863          	bne	a5,a4,94c <memcmp+0x2c>
      return *p1 - *p2;
    }
    p1++;
     940:	0505                	addi	a0,a0,1
    p2++;
     942:	0585                	addi	a1,a1,1
  while (n-- > 0) {
     944:	fed518e3          	bne	a0,a3,934 <memcmp+0x14>
  }
  return 0;
     948:	4501                	li	a0,0
     94a:	a019                	j	950 <memcmp+0x30>
      return *p1 - *p2;
     94c:	40e7853b          	subw	a0,a5,a4
}
     950:	6422                	ld	s0,8(sp)
     952:	0141                	addi	sp,sp,16
     954:	8082                	ret
  return 0;
     956:	4501                	li	a0,0
     958:	bfe5                	j	950 <memcmp+0x30>

000000000000095a <memcpy>:

void *
memcpy(void *dst, const void *src, uint n)
{
     95a:	1141                	addi	sp,sp,-16
     95c:	e406                	sd	ra,8(sp)
     95e:	e022                	sd	s0,0(sp)
     960:	0800                	addi	s0,sp,16
  return memmove(dst, src, n);
     962:	00000097          	auipc	ra,0x0
     966:	f66080e7          	jalr	-154(ra) # 8c8 <memmove>
}
     96a:	60a2                	ld	ra,8(sp)
     96c:	6402                	ld	s0,0(sp)
     96e:	0141                	addi	sp,sp,16
     970:	8082                	ret

0000000000000972 <fork>:
# generated by usys.pl - do not edit
#include "kernel/syscall.h"
.global fork
fork:
 li a7, SYS_fork
     972:	4885                	li	a7,1
 ecall
     974:	00000073          	ecall
 ret
     978:	8082                	ret

000000000000097a <exit>:
.global exit
exit:
 li a7, SYS_exit
     97a:	4889                	li	a7,2
 ecall
     97c:	00000073          	ecall
 ret
     980:	8082                	ret

0000000000000982 <wait>:
.global wait
wait:
 li a7, SYS_wait
     982:	488d                	li	a7,3
 ecall
     984:	00000073          	ecall
 ret
     988:	8082                	ret

000000000000098a <pipe>:
.global pipe
pipe:
 li a7, SYS_pipe
     98a:	4891                	li	a7,4
 ecall
     98c:	00000073          	ecall
 ret
     990:	8082                	ret

0000000000000992 <read>:
.global read
read:
 li a7, SYS_read
     992:	4895                	li	a7,5
 ecall
     994:	00000073          	ecall
 ret
     998:	8082                	ret

000000000000099a <write>:
.global write
write:
 li a7, SYS_write
     99a:	48c1                	li	a7,16
 ecall
     99c:	00000073          	ecall
 ret
     9a0:	8082                	ret

00000000000009a2 <close>:
.global close
close:
 li a7, SYS_close
     9a2:	48d5                	li	a7,21
 ecall
     9a4:	00000073          	ecall
 ret
     9a8:	8082                	ret

00000000000009aa <kill>:
.global kill
kill:
 li a7, SYS_kill
     9aa:	4899                	li	a7,6
 ecall
     9ac:	00000073          	ecall
 ret
     9b0:	8082                	ret

00000000000009b2 <exec>:
.global exec
exec:
 li a7, SYS_exec
     9b2:	489d                	li	a7,7
 ecall
     9b4:	00000073          	ecall
 ret
     9b8:	8082                	ret

00000000000009ba <open>:
.global open
open:
 li a7, SYS_open
     9ba:	48bd                	li	a7,15
 ecall
     9bc:	00000073          	ecall
 ret
     9c0:	8082                	ret

00000000000009c2 <mknod>:
.global mknod
mknod:
 li a7, SYS_mknod
     9c2:	48c5                	li	a7,17
 ecall
     9c4:	00000073          	ecall
 ret
     9c8:	8082                	ret

00000000000009ca <unlink>:
.global unlink
unlink:
 li a7, SYS_unlink
     9ca:	48c9                	li	a7,18
 ecall
     9cc:	00000073          	ecall
 ret
     9d0:	8082                	ret

00000000000009d2 <fstat>:
.global fstat
fstat:
 li a7, SYS_fstat
     9d2:	48a1                	li	a7,8
 ecall
     9d4:	00000073          	ecall
 ret
     9d8:	8082                	ret

00000000000009da <link>:
.global link
link:
 li a7, SYS_link
     9da:	48cd                	li	a7,19
 ecall
     9dc:	00000073          	ecall
 ret
     9e0:	8082                	ret

00000000000009e2 <mkdir>:
.global mkdir
mkdir:
 li a7, SYS_mkdir
     9e2:	48d1                	li	a7,20
 ecall
     9e4:	00000073          	ecall
 ret
     9e8:	8082                	ret

00000000000009ea <chdir>:
.global chdir
chdir:
 li a7, SYS_chdir
     9ea:	48a5                	li	a7,9
 ecall
     9ec:	00000073          	ecall
 ret
     9f0:	8082                	ret

00000000000009f2 <dup>:
.global dup
dup:
 li a7, SYS_dup
     9f2:	48a9                	li	a7,10
 ecall
     9f4:	00000073          	ecall
 ret
     9f8:	8082                	ret

00000000000009fa <getpid>:
.global getpid
getpid:
 li a7, SYS_getpid
     9fa:	48ad                	li	a7,11
 ecall
     9fc:	00000073          	ecall
 ret
     a00:	8082                	ret

0000000000000a02 <sbrk>:
.global sbrk
sbrk:
 li a7, SYS_sbrk
     a02:	48b1                	li	a7,12
 ecall
     a04:	00000073          	ecall
 ret
     a08:	8082                	ret

0000000000000a0a <sleep>:
.global sleep
sleep:
 li a7, SYS_sleep
     a0a:	48b5                	li	a7,13
 ecall
     a0c:	00000073          	ecall
 ret
     a10:	8082                	ret

0000000000000a12 <uptime>:
.global uptime
uptime:
 li a7, SYS_uptime
     a12:	48b9                	li	a7,14
 ecall
     a14:	00000073          	ecall
 ret
     a18:	8082                	ret

0000000000000a1a <putc>:

static char digits[] = "0123456789ABCDEF";

static void
putc(int fd, char c)
{
     a1a:	1101                	addi	sp,sp,-32
     a1c:	ec06                	sd	ra,24(sp)
     a1e:	e822                	sd	s0,16(sp)
     a20:	1000                	addi	s0,sp,32
     a22:	feb407a3          	sb	a1,-17(s0)
  write(fd, &c, 1);
     a26:	4605                	li	a2,1
     a28:	fef40593          	addi	a1,s0,-17
     a2c:	00000097          	auipc	ra,0x0
     a30:	f6e080e7          	jalr	-146(ra) # 99a <write>
}
     a34:	60e2                	ld	ra,24(sp)
     a36:	6442                	ld	s0,16(sp)
     a38:	6105                	addi	sp,sp,32
     a3a:	8082                	ret

0000000000000a3c <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
     a3c:	7139                	addi	sp,sp,-64
     a3e:	fc06                	sd	ra,56(sp)
     a40:	f822                	sd	s0,48(sp)
     a42:	f426                	sd	s1,40(sp)
     a44:	f04a                	sd	s2,32(sp)
     a46:	ec4e                	sd	s3,24(sp)
     a48:	0080                	addi	s0,sp,64
     a4a:	84aa                	mv	s1,a0
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     a4c:	c299                	beqz	a3,a52 <printint+0x16>
     a4e:	0805c863          	bltz	a1,ade <printint+0xa2>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
     a52:	2581                	sext.w	a1,a1
  neg = 0;
     a54:	4881                	li	a7,0
     a56:	fc040693          	addi	a3,s0,-64
  }

  i = 0;
     a5a:	4701                	li	a4,0
  do{
    buf[i++] = digits[x % base];
     a5c:	2601                	sext.w	a2,a2
     a5e:	00001517          	auipc	a0,0x1
     a62:	92250513          	addi	a0,a0,-1758 # 1380 <digits>
     a66:	883a                	mv	a6,a4
     a68:	2705                	addiw	a4,a4,1
     a6a:	02c5f7bb          	remuw	a5,a1,a2
     a6e:	1782                	slli	a5,a5,0x20
     a70:	9381                	srli	a5,a5,0x20
     a72:	97aa                	add	a5,a5,a0
     a74:	0007c783          	lbu	a5,0(a5)
     a78:	00f68023          	sb	a5,0(a3)
  }while((x /= base) != 0);
     a7c:	0005879b          	sext.w	a5,a1
     a80:	02c5d5bb          	divuw	a1,a1,a2
     a84:	0685                	addi	a3,a3,1
     a86:	fec7f0e3          	bgeu	a5,a2,a66 <printint+0x2a>
  if(neg)
     a8a:	00088b63          	beqz	a7,aa0 <printint+0x64>
    buf[i++] = '-';
     a8e:	fd040793          	addi	a5,s0,-48
     a92:	973e                	add	a4,a4,a5
     a94:	02d00793          	li	a5,45
     a98:	fef70823          	sb	a5,-16(a4)
     a9c:	0028071b          	addiw	a4,a6,2

  while(--i >= 0)
     aa0:	02e05863          	blez	a4,ad0 <printint+0x94>
     aa4:	fc040793          	addi	a5,s0,-64
     aa8:	00e78933          	add	s2,a5,a4
     aac:	fff78993          	addi	s3,a5,-1
     ab0:	99ba                	add	s3,s3,a4
     ab2:	377d                	addiw	a4,a4,-1
     ab4:	1702                	slli	a4,a4,0x20
     ab6:	9301                	srli	a4,a4,0x20
     ab8:	40e989b3          	sub	s3,s3,a4
    putc(fd, buf[i]);
     abc:	fff94583          	lbu	a1,-1(s2)
     ac0:	8526                	mv	a0,s1
     ac2:	00000097          	auipc	ra,0x0
     ac6:	f58080e7          	jalr	-168(ra) # a1a <putc>
  while(--i >= 0)
     aca:	197d                	addi	s2,s2,-1
     acc:	ff3918e3          	bne	s2,s3,abc <printint+0x80>
}
     ad0:	70e2                	ld	ra,56(sp)
     ad2:	7442                	ld	s0,48(sp)
     ad4:	74a2                	ld	s1,40(sp)
     ad6:	7902                	ld	s2,32(sp)
     ad8:	69e2                	ld	s3,24(sp)
     ada:	6121                	addi	sp,sp,64
     adc:	8082                	ret
    x = -xx;
     ade:	40b005bb          	negw	a1,a1
    neg = 1;
     ae2:	4885                	li	a7,1
    x = -xx;
     ae4:	bf8d                	j	a56 <printint+0x1a>

0000000000000ae6 <vprintf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
vprintf(int fd, const char *fmt, va_list ap)
{
     ae6:	7119                	addi	sp,sp,-128
     ae8:	fc86                	sd	ra,120(sp)
     aea:	f8a2                	sd	s0,112(sp)
     aec:	f4a6                	sd	s1,104(sp)
     aee:	f0ca                	sd	s2,96(sp)
     af0:	ecce                	sd	s3,88(sp)
     af2:	e8d2                	sd	s4,80(sp)
     af4:	e4d6                	sd	s5,72(sp)
     af6:	e0da                	sd	s6,64(sp)
     af8:	fc5e                	sd	s7,56(sp)
     afa:	f862                	sd	s8,48(sp)
     afc:	f466                	sd	s9,40(sp)
     afe:	f06a                	sd	s10,32(sp)
     b00:	ec6e                	sd	s11,24(sp)
     b02:	0100                	addi	s0,sp,128
  char *s;
  int c, i, state;

  state = 0;
  for(i = 0; fmt[i]; i++){
     b04:	0005c903          	lbu	s2,0(a1)
     b08:	18090f63          	beqz	s2,ca6 <vprintf+0x1c0>
     b0c:	8aaa                	mv	s5,a0
     b0e:	8b32                	mv	s6,a2
     b10:	00158493          	addi	s1,a1,1
  state = 0;
     b14:	4981                	li	s3,0
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     b16:	02500a13          	li	s4,37
      if(c == 'd'){
     b1a:	06400c13          	li	s8,100
        printint(fd, va_arg(ap, int), 10, 1);
      } else if(c == 'l') {
     b1e:	06c00c93          	li	s9,108
        printint(fd, va_arg(ap, uint64), 10, 0);
      } else if(c == 'x') {
     b22:	07800d13          	li	s10,120
        printint(fd, va_arg(ap, int), 16, 0);
      } else if(c == 'p') {
     b26:	07000d93          	li	s11,112
    putc(fd, digits[x >> (sizeof(uint64) * 8 - 4)]);
     b2a:	00001b97          	auipc	s7,0x1
     b2e:	856b8b93          	addi	s7,s7,-1962 # 1380 <digits>
     b32:	a839                	j	b50 <vprintf+0x6a>
        putc(fd, c);
     b34:	85ca                	mv	a1,s2
     b36:	8556                	mv	a0,s5
     b38:	00000097          	auipc	ra,0x0
     b3c:	ee2080e7          	jalr	-286(ra) # a1a <putc>
     b40:	a019                	j	b46 <vprintf+0x60>
    } else if(state == '%'){
     b42:	01498f63          	beq	s3,s4,b60 <vprintf+0x7a>
  for(i = 0; fmt[i]; i++){
     b46:	0485                	addi	s1,s1,1
     b48:	fff4c903          	lbu	s2,-1(s1)
     b4c:	14090d63          	beqz	s2,ca6 <vprintf+0x1c0>
    c = fmt[i] & 0xff;
     b50:	0009079b          	sext.w	a5,s2
    if(state == 0){
     b54:	fe0997e3          	bnez	s3,b42 <vprintf+0x5c>
      if(c == '%'){
     b58:	fd479ee3          	bne	a5,s4,b34 <vprintf+0x4e>
        state = '%';
     b5c:	89be                	mv	s3,a5
     b5e:	b7e5                	j	b46 <vprintf+0x60>
      if(c == 'd'){
     b60:	05878063          	beq	a5,s8,ba0 <vprintf+0xba>
      } else if(c == 'l') {
     b64:	05978c63          	beq	a5,s9,bbc <vprintf+0xd6>
      } else if(c == 'x') {
     b68:	07a78863          	beq	a5,s10,bd8 <vprintf+0xf2>
      } else if(c == 'p') {
     b6c:	09b78463          	beq	a5,s11,bf4 <vprintf+0x10e>
        printptr(fd, va_arg(ap, uint64));
      } else if(c == 's'){
     b70:	07300713          	li	a4,115
     b74:	0ce78663          	beq	a5,a4,c40 <vprintf+0x15a>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     b78:	06300713          	li	a4,99
     b7c:	0ee78e63          	beq	a5,a4,c78 <vprintf+0x192>
        putc(fd, va_arg(ap, uint));
      } else if(c == '%'){
     b80:	11478863          	beq	a5,s4,c90 <vprintf+0x1aa>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
     b84:	85d2                	mv	a1,s4
     b86:	8556                	mv	a0,s5
     b88:	00000097          	auipc	ra,0x0
     b8c:	e92080e7          	jalr	-366(ra) # a1a <putc>
        putc(fd, c);
     b90:	85ca                	mv	a1,s2
     b92:	8556                	mv	a0,s5
     b94:	00000097          	auipc	ra,0x0
     b98:	e86080e7          	jalr	-378(ra) # a1a <putc>
      }
      state = 0;
     b9c:	4981                	li	s3,0
     b9e:	b765                	j	b46 <vprintf+0x60>
        printint(fd, va_arg(ap, int), 10, 1);
     ba0:	008b0913          	addi	s2,s6,8
     ba4:	4685                	li	a3,1
     ba6:	4629                	li	a2,10
     ba8:	000b2583          	lw	a1,0(s6)
     bac:	8556                	mv	a0,s5
     bae:	00000097          	auipc	ra,0x0
     bb2:	e8e080e7          	jalr	-370(ra) # a3c <printint>
     bb6:	8b4a                	mv	s6,s2
      state = 0;
     bb8:	4981                	li	s3,0
     bba:	b771                	j	b46 <vprintf+0x60>
        printint(fd, va_arg(ap, uint64), 10, 0);
     bbc:	008b0913          	addi	s2,s6,8
     bc0:	4681                	li	a3,0
     bc2:	4629                	li	a2,10
     bc4:	000b2583          	lw	a1,0(s6)
     bc8:	8556                	mv	a0,s5
     bca:	00000097          	auipc	ra,0x0
     bce:	e72080e7          	jalr	-398(ra) # a3c <printint>
     bd2:	8b4a                	mv	s6,s2
      state = 0;
     bd4:	4981                	li	s3,0
     bd6:	bf85                	j	b46 <vprintf+0x60>
        printint(fd, va_arg(ap, int), 16, 0);
     bd8:	008b0913          	addi	s2,s6,8
     bdc:	4681                	li	a3,0
     bde:	4641                	li	a2,16
     be0:	000b2583          	lw	a1,0(s6)
     be4:	8556                	mv	a0,s5
     be6:	00000097          	auipc	ra,0x0
     bea:	e56080e7          	jalr	-426(ra) # a3c <printint>
     bee:	8b4a                	mv	s6,s2
      state = 0;
     bf0:	4981                	li	s3,0
     bf2:	bf91                	j	b46 <vprintf+0x60>
        printptr(fd, va_arg(ap, uint64));
     bf4:	008b0793          	addi	a5,s6,8
     bf8:	f8f43423          	sd	a5,-120(s0)
     bfc:	000b3983          	ld	s3,0(s6)
  putc(fd, '0');
     c00:	03000593          	li	a1,48
     c04:	8556                	mv	a0,s5
     c06:	00000097          	auipc	ra,0x0
     c0a:	e14080e7          	jalr	-492(ra) # a1a <putc>
  putc(fd, 'x');
     c0e:	85ea                	mv	a1,s10
     c10:	8556                	mv	a0,s5
     c12:	00000097          	auipc	ra,0x0
     c16:	e08080e7          	jalr	-504(ra) # a1a <putc>
     c1a:	4941                	li	s2,16
    putc(fd, digits[x >> (sizeof(uint64) * 8 - 4)]);
     c1c:	03c9d793          	srli	a5,s3,0x3c
     c20:	97de                	add	a5,a5,s7
     c22:	0007c583          	lbu	a1,0(a5)
     c26:	8556                	mv	a0,s5
     c28:	00000097          	auipc	ra,0x0
     c2c:	df2080e7          	jalr	-526(ra) # a1a <putc>
  for (i = 0; i < (sizeof(uint64) * 2); i++, x <<= 4)
     c30:	0992                	slli	s3,s3,0x4
     c32:	397d                	addiw	s2,s2,-1
     c34:	fe0914e3          	bnez	s2,c1c <vprintf+0x136>
        printptr(fd, va_arg(ap, uint64));
     c38:	f8843b03          	ld	s6,-120(s0)
      state = 0;
     c3c:	4981                	li	s3,0
     c3e:	b721                	j	b46 <vprintf+0x60>
        s = va_arg(ap, char*);
     c40:	008b0993          	addi	s3,s6,8
     c44:	000b3903          	ld	s2,0(s6)
        if(s == 0)
     c48:	02090163          	beqz	s2,c6a <vprintf+0x184>
        while(*s != 0){
     c4c:	00094583          	lbu	a1,0(s2)
     c50:	c9a1                	beqz	a1,ca0 <vprintf+0x1ba>
          putc(fd, *s);
     c52:	8556                	mv	a0,s5
     c54:	00000097          	auipc	ra,0x0
     c58:	dc6080e7          	jalr	-570(ra) # a1a <putc>
          s++;
     c5c:	0905                	addi	s2,s2,1
        while(*s != 0){
     c5e:	00094583          	lbu	a1,0(s2)
     c62:	f9e5                	bnez	a1,c52 <vprintf+0x16c>
        s = va_arg(ap, char*);
     c64:	8b4e                	mv	s6,s3
      state = 0;
     c66:	4981                	li	s3,0
     c68:	bdf9                	j	b46 <vprintf+0x60>
          s = "(null)";
     c6a:	00000917          	auipc	s2,0x0
     c6e:	70e90913          	addi	s2,s2,1806 # 1378 <thread_start_threading+0x144>
        while(*s != 0){
     c72:	02800593          	li	a1,40
     c76:	bff1                	j	c52 <vprintf+0x16c>
        putc(fd, va_arg(ap, uint));
     c78:	008b0913          	addi	s2,s6,8
     c7c:	000b4583          	lbu	a1,0(s6)
     c80:	8556                	mv	a0,s5
     c82:	00000097          	auipc	ra,0x0
     c86:	d98080e7          	jalr	-616(ra) # a1a <putc>
     c8a:	8b4a                	mv	s6,s2
      state = 0;
     c8c:	4981                	li	s3,0
     c8e:	bd65                	j	b46 <vprintf+0x60>
        putc(fd, c);
     c90:	85d2                	mv	a1,s4
     c92:	8556                	mv	a0,s5
     c94:	00000097          	auipc	ra,0x0
     c98:	d86080e7          	jalr	-634(ra) # a1a <putc>
      state = 0;
     c9c:	4981                	li	s3,0
     c9e:	b565                	j	b46 <vprintf+0x60>
        s = va_arg(ap, char*);
     ca0:	8b4e                	mv	s6,s3
      state = 0;
     ca2:	4981                	li	s3,0
     ca4:	b54d                	j	b46 <vprintf+0x60>
    }
  }
}
     ca6:	70e6                	ld	ra,120(sp)
     ca8:	7446                	ld	s0,112(sp)
     caa:	74a6                	ld	s1,104(sp)
     cac:	7906                	ld	s2,96(sp)
     cae:	69e6                	ld	s3,88(sp)
     cb0:	6a46                	ld	s4,80(sp)
     cb2:	6aa6                	ld	s5,72(sp)
     cb4:	6b06                	ld	s6,64(sp)
     cb6:	7be2                	ld	s7,56(sp)
     cb8:	7c42                	ld	s8,48(sp)
     cba:	7ca2                	ld	s9,40(sp)
     cbc:	7d02                	ld	s10,32(sp)
     cbe:	6de2                	ld	s11,24(sp)
     cc0:	6109                	addi	sp,sp,128
     cc2:	8082                	ret

0000000000000cc4 <fprintf>:

void
fprintf(int fd, const char *fmt, ...)
{
     cc4:	715d                	addi	sp,sp,-80
     cc6:	ec06                	sd	ra,24(sp)
     cc8:	e822                	sd	s0,16(sp)
     cca:	1000                	addi	s0,sp,32
     ccc:	e010                	sd	a2,0(s0)
     cce:	e414                	sd	a3,8(s0)
     cd0:	e818                	sd	a4,16(s0)
     cd2:	ec1c                	sd	a5,24(s0)
     cd4:	03043023          	sd	a6,32(s0)
     cd8:	03143423          	sd	a7,40(s0)
  va_list ap;

  va_start(ap, fmt);
     cdc:	fe843423          	sd	s0,-24(s0)
  vprintf(fd, fmt, ap);
     ce0:	8622                	mv	a2,s0
     ce2:	00000097          	auipc	ra,0x0
     ce6:	e04080e7          	jalr	-508(ra) # ae6 <vprintf>
}
     cea:	60e2                	ld	ra,24(sp)
     cec:	6442                	ld	s0,16(sp)
     cee:	6161                	addi	sp,sp,80
     cf0:	8082                	ret

0000000000000cf2 <printf>:

void
printf(const char *fmt, ...)
{
     cf2:	711d                	addi	sp,sp,-96
     cf4:	ec06                	sd	ra,24(sp)
     cf6:	e822                	sd	s0,16(sp)
     cf8:	1000                	addi	s0,sp,32
     cfa:	e40c                	sd	a1,8(s0)
     cfc:	e810                	sd	a2,16(s0)
     cfe:	ec14                	sd	a3,24(s0)
     d00:	f018                	sd	a4,32(s0)
     d02:	f41c                	sd	a5,40(s0)
     d04:	03043823          	sd	a6,48(s0)
     d08:	03143c23          	sd	a7,56(s0)
  va_list ap;

  va_start(ap, fmt);
     d0c:	00840613          	addi	a2,s0,8
     d10:	fec43423          	sd	a2,-24(s0)
  vprintf(1, fmt, ap);
     d14:	85aa                	mv	a1,a0
     d16:	4505                	li	a0,1
     d18:	00000097          	auipc	ra,0x0
     d1c:	dce080e7          	jalr	-562(ra) # ae6 <vprintf>
}
     d20:	60e2                	ld	ra,24(sp)
     d22:	6442                	ld	s0,16(sp)
     d24:	6125                	addi	sp,sp,96
     d26:	8082                	ret

0000000000000d28 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
     d28:	1141                	addi	sp,sp,-16
     d2a:	e422                	sd	s0,8(sp)
     d2c:	0800                	addi	s0,sp,16
  Header *bp, *p;

  bp = (Header*)ap - 1;
     d2e:	ff050693          	addi	a3,a0,-16
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     d32:	00000797          	auipc	a5,0x0
     d36:	6667b783          	ld	a5,1638(a5) # 1398 <freep>
     d3a:	a805                	j	d6a <free+0x42>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
     d3c:	4618                	lw	a4,8(a2)
     d3e:	9db9                	addw	a1,a1,a4
     d40:	feb52c23          	sw	a1,-8(a0)
    bp->s.ptr = p->s.ptr->s.ptr;
     d44:	6398                	ld	a4,0(a5)
     d46:	6318                	ld	a4,0(a4)
     d48:	fee53823          	sd	a4,-16(a0)
     d4c:	a091                	j	d90 <free+0x68>
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
     d4e:	ff852703          	lw	a4,-8(a0)
     d52:	9e39                	addw	a2,a2,a4
     d54:	c790                	sw	a2,8(a5)
    p->s.ptr = bp->s.ptr;
     d56:	ff053703          	ld	a4,-16(a0)
     d5a:	e398                	sd	a4,0(a5)
     d5c:	a099                	j	da2 <free+0x7a>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     d5e:	6398                	ld	a4,0(a5)
     d60:	00e7e463          	bltu	a5,a4,d68 <free+0x40>
     d64:	00e6ea63          	bltu	a3,a4,d78 <free+0x50>
{
     d68:	87ba                	mv	a5,a4
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     d6a:	fed7fae3          	bgeu	a5,a3,d5e <free+0x36>
     d6e:	6398                	ld	a4,0(a5)
     d70:	00e6e463          	bltu	a3,a4,d78 <free+0x50>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     d74:	fee7eae3          	bltu	a5,a4,d68 <free+0x40>
  if(bp + bp->s.size == p->s.ptr){
     d78:	ff852583          	lw	a1,-8(a0)
     d7c:	6390                	ld	a2,0(a5)
     d7e:	02059713          	slli	a4,a1,0x20
     d82:	9301                	srli	a4,a4,0x20
     d84:	0712                	slli	a4,a4,0x4
     d86:	9736                	add	a4,a4,a3
     d88:	fae60ae3          	beq	a2,a4,d3c <free+0x14>
    bp->s.ptr = p->s.ptr;
     d8c:	fec53823          	sd	a2,-16(a0)
  if(p + p->s.size == bp){
     d90:	4790                	lw	a2,8(a5)
     d92:	02061713          	slli	a4,a2,0x20
     d96:	9301                	srli	a4,a4,0x20
     d98:	0712                	slli	a4,a4,0x4
     d9a:	973e                	add	a4,a4,a5
     d9c:	fae689e3          	beq	a3,a4,d4e <free+0x26>
  } else
    p->s.ptr = bp;
     da0:	e394                	sd	a3,0(a5)
  freep = p;
     da2:	00000717          	auipc	a4,0x0
     da6:	5ef73b23          	sd	a5,1526(a4) # 1398 <freep>
}
     daa:	6422                	ld	s0,8(sp)
     dac:	0141                	addi	sp,sp,16
     dae:	8082                	ret

0000000000000db0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
     db0:	7139                	addi	sp,sp,-64
     db2:	fc06                	sd	ra,56(sp)
     db4:	f822                	sd	s0,48(sp)
     db6:	f426                	sd	s1,40(sp)
     db8:	f04a                	sd	s2,32(sp)
     dba:	ec4e                	sd	s3,24(sp)
     dbc:	e852                	sd	s4,16(sp)
     dbe:	e456                	sd	s5,8(sp)
     dc0:	e05a                	sd	s6,0(sp)
     dc2:	0080                	addi	s0,sp,64
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
     dc4:	02051493          	slli	s1,a0,0x20
     dc8:	9081                	srli	s1,s1,0x20
     dca:	04bd                	addi	s1,s1,15
     dcc:	8091                	srli	s1,s1,0x4
     dce:	0014899b          	addiw	s3,s1,1
     dd2:	0485                	addi	s1,s1,1
  if((prevp = freep) == 0){
     dd4:	00000517          	auipc	a0,0x0
     dd8:	5c453503          	ld	a0,1476(a0) # 1398 <freep>
     ddc:	c515                	beqz	a0,e08 <malloc+0x58>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
     dde:	611c                	ld	a5,0(a0)
    if(p->s.size >= nunits){
     de0:	4798                	lw	a4,8(a5)
     de2:	02977f63          	bgeu	a4,s1,e20 <malloc+0x70>
     de6:	8a4e                	mv	s4,s3
     de8:	0009871b          	sext.w	a4,s3
     dec:	6685                	lui	a3,0x1
     dee:	00d77363          	bgeu	a4,a3,df4 <malloc+0x44>
     df2:	6a05                	lui	s4,0x1
     df4:	000a0b1b          	sext.w	s6,s4
  p = sbrk(nu * sizeof(Header));
     df8:	004a1a1b          	slliw	s4,s4,0x4
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
     dfc:	00000917          	auipc	s2,0x0
     e00:	59c90913          	addi	s2,s2,1436 # 1398 <freep>
  if(p == (char*)-1)
     e04:	5afd                	li	s5,-1
     e06:	a88d                	j	e78 <malloc+0xc8>
    base.s.ptr = freep = prevp = &base;
     e08:	00000797          	auipc	a5,0x0
     e0c:	5a878793          	addi	a5,a5,1448 # 13b0 <base>
     e10:	00000717          	auipc	a4,0x0
     e14:	58f73423          	sd	a5,1416(a4) # 1398 <freep>
     e18:	e39c                	sd	a5,0(a5)
    base.s.size = 0;
     e1a:	0007a423          	sw	zero,8(a5)
    if(p->s.size >= nunits){
     e1e:	b7e1                	j	de6 <malloc+0x36>
      if(p->s.size == nunits)
     e20:	02e48b63          	beq	s1,a4,e56 <malloc+0xa6>
        p->s.size -= nunits;
     e24:	4137073b          	subw	a4,a4,s3
     e28:	c798                	sw	a4,8(a5)
        p += p->s.size;
     e2a:	1702                	slli	a4,a4,0x20
     e2c:	9301                	srli	a4,a4,0x20
     e2e:	0712                	slli	a4,a4,0x4
     e30:	97ba                	add	a5,a5,a4
        p->s.size = nunits;
     e32:	0137a423          	sw	s3,8(a5)
      freep = prevp;
     e36:	00000717          	auipc	a4,0x0
     e3a:	56a73123          	sd	a0,1378(a4) # 1398 <freep>
      return (void*)(p + 1);
     e3e:	01078513          	addi	a0,a5,16
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
     e42:	70e2                	ld	ra,56(sp)
     e44:	7442                	ld	s0,48(sp)
     e46:	74a2                	ld	s1,40(sp)
     e48:	7902                	ld	s2,32(sp)
     e4a:	69e2                	ld	s3,24(sp)
     e4c:	6a42                	ld	s4,16(sp)
     e4e:	6aa2                	ld	s5,8(sp)
     e50:	6b02                	ld	s6,0(sp)
     e52:	6121                	addi	sp,sp,64
     e54:	8082                	ret
        prevp->s.ptr = p->s.ptr;
     e56:	6398                	ld	a4,0(a5)
     e58:	e118                	sd	a4,0(a0)
     e5a:	bff1                	j	e36 <malloc+0x86>
  hp->s.size = nu;
     e5c:	01652423          	sw	s6,8(a0)
  free((void*)(hp + 1));
     e60:	0541                	addi	a0,a0,16
     e62:	00000097          	auipc	ra,0x0
     e66:	ec6080e7          	jalr	-314(ra) # d28 <free>
  return freep;
     e6a:	00093503          	ld	a0,0(s2)
      if((p = morecore(nunits)) == 0)
     e6e:	d971                	beqz	a0,e42 <malloc+0x92>
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
     e70:	611c                	ld	a5,0(a0)
    if(p->s.size >= nunits){
     e72:	4798                	lw	a4,8(a5)
     e74:	fa9776e3          	bgeu	a4,s1,e20 <malloc+0x70>
    if(p == freep)
     e78:	00093703          	ld	a4,0(s2)
     e7c:	853e                	mv	a0,a5
     e7e:	fef719e3          	bne	a4,a5,e70 <malloc+0xc0>
  p = sbrk(nu * sizeof(Header));
     e82:	8552                	mv	a0,s4
     e84:	00000097          	auipc	ra,0x0
     e88:	b7e080e7          	jalr	-1154(ra) # a02 <sbrk>
  if(p == (char*)-1)
     e8c:	fd5518e3          	bne	a0,s5,e5c <malloc+0xac>
        return 0;
     e90:	4501                	li	a0,0
     e92:	bf45                	j	e42 <malloc+0x92>

0000000000000e94 <setjmp>:
     e94:	e100                	sd	s0,0(a0)
     e96:	e504                	sd	s1,8(a0)
     e98:	01253823          	sd	s2,16(a0)
     e9c:	01353c23          	sd	s3,24(a0)
     ea0:	03453023          	sd	s4,32(a0)
     ea4:	03553423          	sd	s5,40(a0)
     ea8:	03653823          	sd	s6,48(a0)
     eac:	03753c23          	sd	s7,56(a0)
     eb0:	05853023          	sd	s8,64(a0)
     eb4:	05953423          	sd	s9,72(a0)
     eb8:	05a53823          	sd	s10,80(a0)
     ebc:	05b53c23          	sd	s11,88(a0)
     ec0:	06153023          	sd	ra,96(a0)
     ec4:	06253423          	sd	sp,104(a0)
     ec8:	4501                	li	a0,0
     eca:	8082                	ret

0000000000000ecc <longjmp>:
     ecc:	6100                	ld	s0,0(a0)
     ece:	6504                	ld	s1,8(a0)
     ed0:	01053903          	ld	s2,16(a0)
     ed4:	01853983          	ld	s3,24(a0)
     ed8:	02053a03          	ld	s4,32(a0)
     edc:	02853a83          	ld	s5,40(a0)
     ee0:	03053b03          	ld	s6,48(a0)
     ee4:	03853b83          	ld	s7,56(a0)
     ee8:	04053c03          	ld	s8,64(a0)
     eec:	04853c83          	ld	s9,72(a0)
     ef0:	05053d03          	ld	s10,80(a0)
     ef4:	05853d83          	ld	s11,88(a0)
     ef8:	06053083          	ld	ra,96(a0)
     efc:	06853103          	ld	sp,104(a0)
     f00:	c199                	beqz	a1,f06 <longjmp_1>
     f02:	852e                	mv	a0,a1
     f04:	8082                	ret

0000000000000f06 <longjmp_1>:
     f06:	4505                	li	a0,1
     f08:	8082                	ret

0000000000000f0a <thread_create>:
static int id = 1;
static jmp_buf env_st;
// static jmp_buf env_tmp;
// TODO: necessary declares, if any

struct thread *thread_create(void (*f)(void *), void *arg) {
     f0a:	7179                	addi	sp,sp,-48
     f0c:	f406                	sd	ra,40(sp)
     f0e:	f022                	sd	s0,32(sp)
     f10:	ec26                	sd	s1,24(sp)
     f12:	e84a                	sd	s2,16(sp)
     f14:	e44e                	sd	s3,8(sp)
     f16:	1800                	addi	s0,sp,48
     f18:	89aa                	mv	s3,a0
     f1a:	892e                	mv	s2,a1
    struct thread *t = (struct thread*) malloc(sizeof(struct thread));
     f1c:	0b000513          	li	a0,176
     f20:	00000097          	auipc	ra,0x0
     f24:	e90080e7          	jalr	-368(ra) # db0 <malloc>
     f28:	84aa                	mv	s1,a0
    //unsigned long stack_p = 0;
    unsigned long new_stack_p;
    unsigned long new_stack;
    new_stack = (unsigned long) malloc(sizeof(unsigned long)*0x100);
     f2a:	6505                	lui	a0,0x1
     f2c:	80050513          	addi	a0,a0,-2048 # 800 <gets+0x3c>
     f30:	00000097          	auipc	ra,0x0
     f34:	e80080e7          	jalr	-384(ra) # db0 <malloc>
    new_stack_p = new_stack +0x100*8-0x2*8;
    t->fp = f;
     f38:	0134b023          	sd	s3,0(s1)
    t->arg = arg;
     f3c:	0124b423          	sd	s2,8(s1)
    t->ID  = id;
     f40:	00000717          	auipc	a4,0x0
     f44:	45470713          	addi	a4,a4,1108 # 1394 <id>
     f48:	431c                	lw	a5,0(a4)
     f4a:	08f4a823          	sw	a5,144(s1)
    t->buf_set = 0;
     f4e:	0804aa23          	sw	zero,148(s1)
    t->stack = (void*) new_stack;
     f52:	e888                	sd	a0,16(s1)
    new_stack_p = new_stack +0x100*8-0x2*8;
     f54:	7f050513          	addi	a0,a0,2032
    t->stack_p = (void*) new_stack_p;
     f58:	ec88                	sd	a0,24(s1)
    id++;
     f5a:	2785                	addiw	a5,a5,1
     f5c:	c31c                	sw	a5,0(a4)
    return t;
}
     f5e:	8526                	mv	a0,s1
     f60:	70a2                	ld	ra,40(sp)
     f62:	7402                	ld	s0,32(sp)
     f64:	64e2                	ld	s1,24(sp)
     f66:	6942                	ld	s2,16(sp)
     f68:	69a2                	ld	s3,8(sp)
     f6a:	6145                	addi	sp,sp,48
     f6c:	8082                	ret

0000000000000f6e <thread_add_runqueue>:

void thread_add_runqueue(struct thread *t) {
     f6e:	1101                	addi	sp,sp,-32
     f70:	ec06                	sd	ra,24(sp)
     f72:	e822                	sd	s0,16(sp)
     f74:	e426                	sd	s1,8(sp)
     f76:	1000                	addi	s0,sp,32
     f78:	84aa                	mv	s1,a0
    if (current_thread == NULL) { // to root
     f7a:	00000797          	auipc	a5,0x0
     f7e:	42e7b783          	ld	a5,1070(a5) # 13a8 <current_thread>
     f82:	c385                	beqz	a5,fa2 <thread_add_runqueue+0x34>
        t->right = NULL;
        t->parent = NULL;
        current_thread = t;
        root_thread = t;
    } else {
        if (current_thread->left == NULL) { // to left child
     f84:	6fd8                	ld	a4,152(a5)
     f86:	c329                	beqz	a4,fc8 <thread_add_runqueue+0x5a>
            t->left = NULL;
            t->right = NULL;
            t->parent = current_thread;
            current_thread->left = t;
        } else if (current_thread->right == NULL) { // to right child
     f88:	73d8                	ld	a4,160(a5)
     f8a:	c731                	beqz	a4,fd6 <thread_add_runqueue+0x68>
            t->left = NULL;
            t->right = NULL;
            t->parent = current_thread;
            current_thread->right = t;
        } else {
            free(t->stack);
     f8c:	6908                	ld	a0,16(a0)
     f8e:	00000097          	auipc	ra,0x0
     f92:	d9a080e7          	jalr	-614(ra) # d28 <free>
            free(t);
     f96:	8526                	mv	a0,s1
     f98:	00000097          	auipc	ra,0x0
     f9c:	d90080e7          	jalr	-624(ra) # d28 <free>
        }
    }
}
     fa0:	a839                	j	fbe <thread_add_runqueue+0x50>
        t->left = NULL;
     fa2:	08053c23          	sd	zero,152(a0)
        t->right = NULL;
     fa6:	0a053023          	sd	zero,160(a0)
        t->parent = NULL;
     faa:	0a053423          	sd	zero,168(a0)
        current_thread = t;
     fae:	00000797          	auipc	a5,0x0
     fb2:	3ea7bd23          	sd	a0,1018(a5) # 13a8 <current_thread>
        root_thread = t;
     fb6:	00000797          	auipc	a5,0x0
     fba:	3ea7b523          	sd	a0,1002(a5) # 13a0 <root_thread>
}
     fbe:	60e2                	ld	ra,24(sp)
     fc0:	6442                	ld	s0,16(sp)
     fc2:	64a2                	ld	s1,8(sp)
     fc4:	6105                	addi	sp,sp,32
     fc6:	8082                	ret
            t->left = NULL;
     fc8:	08053c23          	sd	zero,152(a0)
            t->right = NULL;
     fcc:	0a053023          	sd	zero,160(a0)
            t->parent = current_thread;
     fd0:	f55c                	sd	a5,168(a0)
            current_thread->left = t;
     fd2:	efc8                	sd	a0,152(a5)
     fd4:	b7ed                	j	fbe <thread_add_runqueue+0x50>
            t->left = NULL;
     fd6:	08053c23          	sd	zero,152(a0)
            t->right = NULL;
     fda:	0a053023          	sd	zero,160(a0)
            t->parent = current_thread;
     fde:	f55c                	sd	a5,168(a0)
            current_thread->right = t;
     fe0:	f3c8                	sd	a0,160(a5)
     fe2:	bff1                	j	fbe <thread_add_runqueue+0x50>

0000000000000fe4 <schedule>:
        longjmp(current_thread->env, 1);
    }
}

// determine next value of current_thread
void schedule(void) {
     fe4:	1141                	addi	sp,sp,-16
     fe6:	e422                	sd	s0,8(sp)
     fe8:	0800                	addi	s0,sp,16
    if (current_thread->left != NULL) {
     fea:	00000797          	auipc	a5,0x0
     fee:	3be7b783          	ld	a5,958(a5) # 13a8 <current_thread>
     ff2:	6fd8                	ld	a4,152(a5)
     ff4:	cb01                	beqz	a4,1004 <schedule+0x20>
        current_thread = current_thread->left;
     ff6:	00000797          	auipc	a5,0x0
     ffa:	3ae7b923          	sd	a4,946(a5) # 13a8 <current_thread>
            } else { // backtrack one level
                current_thread = current_thread->parent;
            }
        }
    }
}
     ffe:	6422                	ld	s0,8(sp)
    1000:	0141                	addi	sp,sp,16
    1002:	8082                	ret
    } else if (current_thread->right != NULL) {
    1004:	73d8                	ld	a4,160(a5)
    1006:	c711                	beqz	a4,1012 <schedule+0x2e>
        current_thread = current_thread->right;
    1008:	00000797          	auipc	a5,0x0
    100c:	3ae7b023          	sd	a4,928(a5) # 13a8 <current_thread>
    1010:	b7fd                	j	ffe <schedule+0x1a>
            if (current_thread == root_thread)
    1012:	00000617          	auipc	a2,0x0
    1016:	38e63603          	ld	a2,910(a2) # 13a0 <root_thread>
    101a:	00c79563          	bne	a5,a2,1024 <schedule+0x40>
    101e:	b7c5                	j	ffe <schedule+0x1a>
    1020:	00c78e63          	beq	a5,a2,103c <schedule+0x58>
            if (current_thread == current_thread->parent->left
    1024:	873e                	mv	a4,a5
    1026:	77dc                	ld	a5,168(a5)
    1028:	6fd4                	ld	a3,152(a5)
    102a:	fee69be3          	bne	a3,a4,1020 <schedule+0x3c>
                  && current_thread->parent->right != NULL) { // right sibling exist
    102e:	73d8                	ld	a4,160(a5)
    1030:	db65                	beqz	a4,1020 <schedule+0x3c>
                current_thread = current_thread->parent->right;
    1032:	00000797          	auipc	a5,0x0
    1036:	36e7bb23          	sd	a4,886(a5) # 13a8 <current_thread>
                break;
    103a:	b7d1                	j	ffe <schedule+0x1a>
    103c:	00000797          	auipc	a5,0x0
    1040:	36c7b623          	sd	a2,876(a5) # 13a8 <current_thread>
}
    1044:	bf6d                	j	ffe <schedule+0x1a>

0000000000001046 <thread_exit>:

void thread_exit(void) {
    1046:	1101                	addi	sp,sp,-32
    1048:	ec06                	sd	ra,24(sp)
    104a:	e822                	sd	s0,16(sp)
    104c:	e426                	sd	s1,8(sp)
    104e:	e04a                	sd	s2,0(sp)
    1050:	1000                	addi	s0,sp,32
    struct thread* exiting = current_thread;
    1052:	00000917          	auipc	s2,0x0
    1056:	35693903          	ld	s2,854(s2) # 13a8 <current_thread>
    if (exiting == root_thread
    105a:	00000717          	auipc	a4,0x0
    105e:	34673703          	ld	a4,838(a4) # 13a0 <root_thread>
    1062:	09270863          	beq	a4,s2,10f2 <thread_exit+0xac>
        root_thread = NULL;
        longjmp(env_st, 1);
    } else {
        
        // modify thread tree & free unused thread
        if (exiting->left == NULL 
    1066:	09893683          	ld	a3,152(s2)
    106a:	87ca                	mv	a5,s2
    106c:	c6f9                	beqz	a3,113a <thread_exit+0xf4>
            free(exiting->stack);
            free(exiting);
        } else { // non-leaf
            // find right most leaf (last in preorder traversal) as replacement
            struct thread* next = exiting;
            while (next->right != NULL || next->left != NULL) {
    106e:	84be                	mv	s1,a5
    1070:	73dc                	ld	a5,160(a5)
    1072:	fff5                	bnez	a5,106e <thread_exit+0x28>
    1074:	6cdc                	ld	a5,152(s1)
    1076:	ffe5                	bnez	a5,106e <thread_exit+0x28>
                else
                    next = next->left;
            }
            // printf("existing: %d, replaced with %d\n", exiting->ID, next->ID);
            // cut next from its parent
            if (next == next->parent->left)
    1078:	74dc                	ld	a5,168(s1)
    107a:	6fd4                	ld	a3,152(a5)
    107c:	0e968c63          	beq	a3,s1,1174 <thread_exit+0x12e>
                next->parent->left = NULL;
            else
                next->parent->right = NULL;
    1080:	0a07b023          	sd	zero,160(a5)
            // cut exiting from its parent and connect next
            if (exiting->parent != NULL) {
    1084:	0a893783          	ld	a5,168(s2)
    1088:	c789                	beqz	a5,1092 <thread_exit+0x4c>
                if (exiting == exiting->parent->left)
    108a:	6fd4                	ld	a3,152(a5)
    108c:	0f268763          	beq	a3,s2,117a <thread_exit+0x134>
                    exiting->parent->left = next;
                else
                    exiting->parent->right = next;
    1090:	f3c4                	sd	s1,160(a5)
            }
            // cut exiting from its children and connect next
            if (exiting->left != NULL)
    1092:	09893783          	ld	a5,152(s2)
    1096:	c391                	beqz	a5,109a <thread_exit+0x54>
                exiting->left->parent = next;
    1098:	f7c4                	sd	s1,168(a5)
            if (exiting->right != NULL)
    109a:	0a093783          	ld	a5,160(s2)
    109e:	c391                	beqz	a5,10a2 <thread_exit+0x5c>
                exiting->right->parent = next;
    10a0:	f7c4                	sd	s1,168(a5)
            // update next's info
            next->parent = exiting->parent;
    10a2:	0a893783          	ld	a5,168(s2)
    10a6:	f4dc                	sd	a5,168(s1)
            next->left = exiting->left;
    10a8:	09893783          	ld	a5,152(s2)
    10ac:	ecdc                	sd	a5,152(s1)
            next->right = exiting->right;
    10ae:	0a093783          	ld	a5,160(s2)
    10b2:	f0dc                	sd	a5,160(s1)
            // update root if needed
            if (exiting == root_thread)
    10b4:	0d270563          	beq	a4,s2,117e <thread_exit+0x138>
                root_thread = next;
            free(exiting->stack);
    10b8:	01093503          	ld	a0,16(s2)
    10bc:	00000097          	auipc	ra,0x0
    10c0:	c6c080e7          	jalr	-916(ra) # d28 <free>
            free(exiting);
    10c4:	854a                	mv	a0,s2
    10c6:	00000097          	auipc	ra,0x0
    10ca:	c62080e7          	jalr	-926(ra) # d28 <free>
            // update current_thread
            current_thread = next;
    10ce:	00000797          	auipc	a5,0x0
    10d2:	2c97bd23          	sd	s1,730(a5) # 13a8 <current_thread>
            schedule();
    10d6:	00000097          	auipc	ra,0x0
    10da:	f0e080e7          	jalr	-242(ra) # fe4 <schedule>
        }
        // run current_thread
        dispatch();
    10de:	00000097          	auipc	ra,0x0
    10e2:	0aa080e7          	jalr	170(ra) # 1188 <dispatch>
    }
}
    10e6:	60e2                	ld	ra,24(sp)
    10e8:	6442                	ld	s0,16(sp)
    10ea:	64a2                	ld	s1,8(sp)
    10ec:	6902                	ld	s2,0(sp)
    10ee:	6105                	addi	sp,sp,32
    10f0:	8082                	ret
          && exiting->left == NULL
    10f2:	09893683          	ld	a3,152(s2)
    10f6:	87ca                	mv	a5,s2
    10f8:	fabd                	bnez	a3,106e <thread_exit+0x28>
          && exiting->right == NULL) { // exiting last thread
    10fa:	0a093683          	ld	a3,160(s2)
    10fe:	faa5                	bnez	a3,106e <thread_exit+0x28>
        free(exiting->stack);
    1100:	01093503          	ld	a0,16(s2)
    1104:	00000097          	auipc	ra,0x0
    1108:	c24080e7          	jalr	-988(ra) # d28 <free>
        free(exiting);
    110c:	854a                	mv	a0,s2
    110e:	00000097          	auipc	ra,0x0
    1112:	c1a080e7          	jalr	-998(ra) # d28 <free>
        current_thread = NULL;
    1116:	00000797          	auipc	a5,0x0
    111a:	2807b923          	sd	zero,658(a5) # 13a8 <current_thread>
        root_thread = NULL;
    111e:	00000797          	auipc	a5,0x0
    1122:	2807b123          	sd	zero,642(a5) # 13a0 <root_thread>
        longjmp(env_st, 1);
    1126:	4585                	li	a1,1
    1128:	00000517          	auipc	a0,0x0
    112c:	29850513          	addi	a0,a0,664 # 13c0 <env_st>
    1130:	00000097          	auipc	ra,0x0
    1134:	d9c080e7          	jalr	-612(ra) # ecc <longjmp>
    1138:	b77d                	j	10e6 <thread_exit+0xa0>
              && exiting->right == NULL) { // leaf
    113a:	0a093683          	ld	a3,160(s2)
    113e:	fa85                	bnez	a3,106e <thread_exit+0x28>
            schedule();
    1140:	00000097          	auipc	ra,0x0
    1144:	ea4080e7          	jalr	-348(ra) # fe4 <schedule>
            if (exiting == exiting->parent->left)
    1148:	0a893783          	ld	a5,168(s2)
    114c:	6fd8                	ld	a4,152(a5)
    114e:	03270063          	beq	a4,s2,116e <thread_exit+0x128>
                exiting->parent->right = NULL;
    1152:	0a07b023          	sd	zero,160(a5)
            free(exiting->stack);
    1156:	01093503          	ld	a0,16(s2)
    115a:	00000097          	auipc	ra,0x0
    115e:	bce080e7          	jalr	-1074(ra) # d28 <free>
            free(exiting);
    1162:	854a                	mv	a0,s2
    1164:	00000097          	auipc	ra,0x0
    1168:	bc4080e7          	jalr	-1084(ra) # d28 <free>
    116c:	bf8d                	j	10de <thread_exit+0x98>
                exiting->parent->left = NULL;
    116e:	0807bc23          	sd	zero,152(a5)
    1172:	b7d5                	j	1156 <thread_exit+0x110>
                next->parent->left = NULL;
    1174:	0807bc23          	sd	zero,152(a5)
    1178:	b731                	j	1084 <thread_exit+0x3e>
                    exiting->parent->left = next;
    117a:	efc4                	sd	s1,152(a5)
    117c:	bf19                	j	1092 <thread_exit+0x4c>
                root_thread = next;
    117e:	00000797          	auipc	a5,0x0
    1182:	2297b123          	sd	s1,546(a5) # 13a0 <root_thread>
    1186:	bf0d                	j	10b8 <thread_exit+0x72>

0000000000001188 <dispatch>:
void dispatch(void) {
    1188:	1141                	addi	sp,sp,-16
    118a:	e406                	sd	ra,8(sp)
    118c:	e022                	sd	s0,0(sp)
    118e:	0800                	addi	s0,sp,16
    if (current_thread->buf_set == 0) { // first run
    1190:	00000517          	auipc	a0,0x0
    1194:	21853503          	ld	a0,536(a0) # 13a8 <current_thread>
    1198:	09452783          	lw	a5,148(a0)
    119c:	eba1                	bnez	a5,11ec <dispatch+0x64>
        if (setjmp(current_thread->env) == 0) { // hack the stack pointer
    119e:	02050513          	addi	a0,a0,32
    11a2:	00000097          	auipc	ra,0x0
    11a6:	cf2080e7          	jalr	-782(ra) # e94 <setjmp>
    11aa:	c105                	beqz	a0,11ca <dispatch+0x42>
            current_thread->fp(current_thread->arg);
    11ac:	00000797          	auipc	a5,0x0
    11b0:	1fc7b783          	ld	a5,508(a5) # 13a8 <current_thread>
    11b4:	6398                	ld	a4,0(a5)
    11b6:	6788                	ld	a0,8(a5)
    11b8:	9702                	jalr	a4
            thread_exit(); // if the function returns
    11ba:	00000097          	auipc	ra,0x0
    11be:	e8c080e7          	jalr	-372(ra) # 1046 <thread_exit>
}
    11c2:	60a2                	ld	ra,8(sp)
    11c4:	6402                	ld	s0,0(sp)
    11c6:	0141                	addi	sp,sp,16
    11c8:	8082                	ret
            current_thread->env->sp = (unsigned long) current_thread->stack_p;
    11ca:	00000517          	auipc	a0,0x0
    11ce:	1de53503          	ld	a0,478(a0) # 13a8 <current_thread>
    11d2:	6d1c                	ld	a5,24(a0)
    11d4:	e55c                	sd	a5,136(a0)
            current_thread->buf_set = 1;
    11d6:	4785                	li	a5,1
    11d8:	08f52a23          	sw	a5,148(a0)
            longjmp(current_thread->env, 1);
    11dc:	4585                	li	a1,1
    11de:	02050513          	addi	a0,a0,32
    11e2:	00000097          	auipc	ra,0x0
    11e6:	cea080e7          	jalr	-790(ra) # ecc <longjmp>
    11ea:	bfe1                	j	11c2 <dispatch+0x3a>
        longjmp(current_thread->env, 1);
    11ec:	4585                	li	a1,1
    11ee:	02050513          	addi	a0,a0,32
    11f2:	00000097          	auipc	ra,0x0
    11f6:	cda080e7          	jalr	-806(ra) # ecc <longjmp>
}
    11fa:	b7e1                	j	11c2 <dispatch+0x3a>

00000000000011fc <thread_yield>:
void thread_yield(void) {
    11fc:	1141                	addi	sp,sp,-16
    11fe:	e406                	sd	ra,8(sp)
    1200:	e022                	sd	s0,0(sp)
    1202:	0800                	addi	s0,sp,16
    if (setjmp(current_thread->env) == 0) { // from working thread
    1204:	00000517          	auipc	a0,0x0
    1208:	1a453503          	ld	a0,420(a0) # 13a8 <current_thread>
    120c:	02050513          	addi	a0,a0,32
    1210:	00000097          	auipc	ra,0x0
    1214:	c84080e7          	jalr	-892(ra) # e94 <setjmp>
    1218:	c509                	beqz	a0,1222 <thread_yield+0x26>
}
    121a:	60a2                	ld	ra,8(sp)
    121c:	6402                	ld	s0,0(sp)
    121e:	0141                	addi	sp,sp,16
    1220:	8082                	ret
        schedule();
    1222:	00000097          	auipc	ra,0x0
    1226:	dc2080e7          	jalr	-574(ra) # fe4 <schedule>
        dispatch();
    122a:	00000097          	auipc	ra,0x0
    122e:	f5e080e7          	jalr	-162(ra) # 1188 <dispatch>
    1232:	b7e5                	j	121a <thread_yield+0x1e>

0000000000001234 <thread_start_threading>:

void thread_start_threading(void) {
    1234:	1141                	addi	sp,sp,-16
    1236:	e406                	sd	ra,8(sp)
    1238:	e022                	sd	s0,0(sp)
    123a:	0800                	addi	s0,sp,16
    if(setjmp(env_st) == 0) {
    123c:	00000517          	auipc	a0,0x0
    1240:	18450513          	addi	a0,a0,388 # 13c0 <env_st>
    1244:	00000097          	auipc	ra,0x0
    1248:	c50080e7          	jalr	-944(ra) # e94 <setjmp>
    124c:	c509                	beqz	a0,1256 <thread_start_threading+0x22>
        schedule();
        dispatch();
    } else {
        return;
    }
}
    124e:	60a2                	ld	ra,8(sp)
    1250:	6402                	ld	s0,0(sp)
    1252:	0141                	addi	sp,sp,16
    1254:	8082                	ret
        schedule();
    1256:	00000097          	auipc	ra,0x0
    125a:	d8e080e7          	jalr	-626(ra) # fe4 <schedule>
        dispatch();
    125e:	00000097          	auipc	ra,0x0
    1262:	f2a080e7          	jalr	-214(ra) # 1188 <dispatch>
    1266:	b7e5                	j	124e <thread_start_threading+0x1a>
