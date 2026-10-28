        cpu 96c141
        maxmode on
        org 0200040h
start:
        ld (06fh),04eh
        ld xsp,06000h
        ld (087f0h),0aah
        ld (087e2h),000h
        ld (087f0h),055h
        ld (08002h),000h
        ld (08003h),000h
        ld (08004h),0a0h
        ld (08005h),098h
        ld (08030h),000h
        ld (08032h),000h
        ld (08033h),000h
        ld (08034h),000h
        ld (08035h),000h
        ldw (08282h),000fh
        ldw (08302h),0f00h
        ldw (0a010h),05555h
        ldw (0a012h),04001h
        ldw (0a014h),04001h
        ldw (0a016h),04001h
        ldw (0a018h),04001h
        ldw (0a01ah),04001h
        ldw (0a01ch),04001h
        ldw (0a01eh),04001h
        ldw (0a020h),05555h
        ldw (0a022h),05555h
        ldw (0a024h),05555h
        ldw (0a026h),05555h
        ldw (0a028h),05555h
        ldw (0a02ah),05555h
        ldw (0a02ch),05555h
        ldw (0a02eh),05555h
        ldw (0828ah),000f0h
        ldw (0830ah),00ff0h
        ld xix,09000h
        ld bc,32
p1r0: ldw (xix+),00001h
        djnz bc,p1r0
        ld xix,09040h
        ld bc,32
p1r1: ldw (xix+),00001h
        djnz bc,p1r1
        ld xix,09080h
        ld bc,32
p1r2: ldw (xix+),00201h
        djnz bc,p1r2
        ld xix,090c0h
        ld bc,32
p1r3: ldw (xix+),00201h
        djnz bc,p1r3
        ld xix,09100h
        ld bc,32
p1r4: ldw (xix+),00001h
        djnz bc,p1r4
        ld xix,09140h
        ld bc,32
p1r5: ldw (xix+),00001h
        djnz bc,p1r5
        ld xix,09180h
        ld bc,32
p1r6: ldw (xix+),00201h
        djnz bc,p1r6
        ld xix,091c0h
        ld bc,32
p1r7: ldw (xix+),00201h
        djnz bc,p1r7
        ld xix,09200h
        ld bc,32
p1r8: ldw (xix+),00001h
        djnz bc,p1r8
        ld xix,09240h
        ld bc,32
p1r9: ldw (xix+),00001h
        djnz bc,p1r9
        ld xix,09280h
        ld bc,32
p1r10: ldw (xix+),00201h
        djnz bc,p1r10
        ld xix,092c0h
        ld bc,32
p1r11: ldw (xix+),00201h
        djnz bc,p1r11
        ld xix,09300h
        ld bc,32
p1r12: ldw (xix+),00001h
        djnz bc,p1r12
        ld xix,09340h
        ld bc,32
p1r13: ldw (xix+),00001h
        djnz bc,p1r13
        ld xix,09380h
        ld bc,32
p1r14: ldw (xix+),00201h
        djnz bc,p1r14
        ld xix,093c0h
        ld bc,32
p1r15: ldw (xix+),00201h
        djnz bc,p1r15
        ld xix,09400h
        ld bc,32
p1r16: ldw (xix+),00001h
        djnz bc,p1r16
        ld xix,09440h
        ld bc,32
p1r17: ldw (xix+),00001h
        djnz bc,p1r17
        ld xix,09480h
        ld bc,32
p1r18: ldw (xix+),00201h
        djnz bc,p1r18
        ld xix,094c0h
        ld bc,32
p1r19: ldw (xix+),00201h
        djnz bc,p1r19
        ld xix,09500h
        ld bc,32
p1r20: ldw (xix+),00001h
        djnz bc,p1r20
        ld xix,09540h
        ld bc,32
p1r21: ldw (xix+),00001h
        djnz bc,p1r21
        ld xix,09580h
        ld bc,32
p1r22: ldw (xix+),00201h
        djnz bc,p1r22
        ld xix,095c0h
        ld bc,32
p1r23: ldw (xix+),00201h
        djnz bc,p1r23
        ld xix,09600h
        ld bc,32
p1r24: ldw (xix+),00001h
        djnz bc,p1r24
        ld xix,09640h
        ld bc,32
p1r25: ldw (xix+),00001h
        djnz bc,p1r25
        ld xix,09680h
        ld bc,32
p1r26: ldw (xix+),00201h
        djnz bc,p1r26
        ld xix,096c0h
        ld bc,32
p1r27: ldw (xix+),00201h
        djnz bc,p1r27
        ld xix,09700h
        ld bc,32
p1r28: ldw (xix+),00001h
        djnz bc,p1r28
        ld xix,09740h
        ld bc,32
p1r29: ldw (xix+),00001h
        djnz bc,p1r29
        ld xix,09780h
        ld bc,32
p1r30: ldw (xix+),00201h
        djnz bc,p1r30
        ld xix,097c0h
        ld bc,32
p1r31: ldw (xix+),00201h
        djnz bc,p1r31
        ld xix,09800h
        ld bc,32
p2r0: ldw (xix+),00002h
        djnz bc,p2r0
        ld xix,09840h
        ld bc,32
p2r1: ldw (xix+),00002h
        djnz bc,p2r1
        ld xix,09880h
        ld bc,32
p2r2: ldw (xix+),00002h
        djnz bc,p2r2
        ld xix,098c0h
        ld bc,32
p2r3: ldw (xix+),00002h
        djnz bc,p2r3
        ld xix,09900h
        ld bc,32
p2r4: ldw (xix+),00202h
        djnz bc,p2r4
        ld xix,09940h
        ld bc,32
p2r5: ldw (xix+),00202h
        djnz bc,p2r5
        ld xix,09980h
        ld bc,32
p2r6: ldw (xix+),00202h
        djnz bc,p2r6
        ld xix,099c0h
        ld bc,32
p2r7: ldw (xix+),00202h
        djnz bc,p2r7
        ld xix,09a00h
        ld bc,32
p2r8: ldw (xix+),00002h
        djnz bc,p2r8
        ld xix,09a40h
        ld bc,32
p2r9: ldw (xix+),00002h
        djnz bc,p2r9
        ld xix,09a80h
        ld bc,32
p2r10: ldw (xix+),00002h
        djnz bc,p2r10
        ld xix,09ac0h
        ld bc,32
p2r11: ldw (xix+),00002h
        djnz bc,p2r11
        ld xix,09b00h
        ld bc,32
p2r12: ldw (xix+),00202h
        djnz bc,p2r12
        ld xix,09b40h
        ld bc,32
p2r13: ldw (xix+),00202h
        djnz bc,p2r13
        ld xix,09b80h
        ld bc,32
p2r14: ldw (xix+),00202h
        djnz bc,p2r14
        ld xix,09bc0h
        ld bc,32
p2r15: ldw (xix+),00202h
        djnz bc,p2r15
        ld xix,09c00h
        ld bc,32
p2r16: ldw (xix+),00002h
        djnz bc,p2r16
        ld xix,09c40h
        ld bc,32
p2r17: ldw (xix+),00002h
        djnz bc,p2r17
        ld xix,09c80h
        ld bc,32
p2r18: ldw (xix+),00002h
        djnz bc,p2r18
        ld xix,09cc0h
        ld bc,32
p2r19: ldw (xix+),00002h
        djnz bc,p2r19
        ld xix,09d00h
        ld bc,32
p2r20: ldw (xix+),00202h
        djnz bc,p2r20
        ld xix,09d40h
        ld bc,32
p2r21: ldw (xix+),00202h
        djnz bc,p2r21
        ld xix,09d80h
        ld bc,32
p2r22: ldw (xix+),00202h
        djnz bc,p2r22
        ld xix,09dc0h
        ld bc,32
p2r23: ldw (xix+),00202h
        djnz bc,p2r23
        ld xix,09e00h
        ld bc,32
p2r24: ldw (xix+),00002h
        djnz bc,p2r24
        ld xix,09e40h
        ld bc,32
p2r25: ldw (xix+),00002h
        djnz bc,p2r25
        ld xix,09e80h
        ld bc,32
p2r26: ldw (xix+),00002h
        djnz bc,p2r26
        ld xix,09ec0h
        ld bc,32
p2r27: ldw (xix+),00002h
        djnz bc,p2r27
        ld xix,09f00h
        ld bc,32
p2r28: ldw (xix+),00202h
        djnz bc,p2r28
        ld xix,09f40h
        ld bc,32
p2r29: ldw (xix+),00202h
        djnz bc,p2r29
        ld xix,09f80h
        ld bc,32
p2r30: ldw (xix+),00202h
        djnz bc,p2r30
        ld xix,09fc0h
        ld bc,32
p2r31: ldw (xix+),00202h
        djnz bc,p2r31

; Poll V raster register; target 64, reset during 160. Actual timing must be observed.
wait_reset: ld a,(08009h)
        cp a,160
        jr nz,wait_reset
        ld (08033h),0
        ld (08035h),0
wait_split: ld a,(08009h)
        cp a,64
        jr nz,wait_split
        ld (08033h),8
        jr wait_reset
