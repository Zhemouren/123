
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438012f 	lu12i.w	$r15,114697(0x1c009)
1c00000c:	03bbd1ef 	ori	$r15,$r15,0xef4
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	03aa71ef 	ori	$r15,$r15,0xa9c
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038d51ad 	ori	$r13,$r13,0x354
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	545a3800 	bl	23096(0x5a38) # 1c005ad8 <main>
1c0000a4:	4c000020 	jirl	$r0,$r1,0

1c0000a8 <cpu_wait>:
cpu_wait():
1c0000a8:	06488000 	idle	0x0
1c0000ac:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	54793000 	bl	31024(0x7930) # 1c0089c0 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54797000 	bl	31088(0x7970) # 1c008a08 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5479f400 	bl	31220(0x79f4) # 1c008a94 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	547a2800 	bl	31272(0x7a28) # 1c008ad0 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54784000 	bl	30784(0x7840) # 1c0088f0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	547bcc00 	bl	31692(0x7bcc) # 1c008c84 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	547ae000 	bl	31456(0x7ae0) # 1c008ba8 <INTC_Handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <Set_Timer_stop>:
Set_Timer_stop():
1c001128:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00112c:	29803076 	st.w	$r22,$r3,12(0xc)
1c001130:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001134:	04010420 	csrwr	$r0,0x41
1c001138:	03400000 	andi	$r0,$r0,0x0
1c00113c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001140:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001144:	4c000020 	jirl	$r0,$r1,0

1c001148 <Set_Timer_clear>:
Set_Timer_clear():
1c001148:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00114c:	29803076 	st.w	$r22,$r3,12(0xc)
1c001150:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001154:	0380040c 	ori	$r12,$r0,0x1
1c001158:	0401102c 	csrwr	$r12,0x44
1c00115c:	03400000 	andi	$r0,$r0,0x0
1c001160:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001164:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001168:	4c000020 	jirl	$r0,$r1,0

1c00116c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c00116c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001170:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001174:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001178:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00117c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c001180:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001184:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c001188:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00118c:	001531ad 	or	$r13,$r13,$r12
1c001190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001194:	2980318d 	st.w	$r13,$r12,12(0xc)
1c001198:	03400000 	andi	$r0,$r0,0x0
1c00119c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0011a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0011a4:	4c000020 	jirl	$r0,$r1,0

1c0011a8 <myputchar>:
myputchar():
1c0011a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0011ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0011b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0011b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0011b8:	0015008c 	move	$r12,$r4
1c0011bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0011c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0011c4:	00150185 	move	$r5,$r12
1c0011c8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0011cc:	5405ec00 	bl	1516(0x5ec) # 1c0017b8 <UART_SendData>
1c0011d0:	03400000 	andi	$r0,$r0,0x0
1c0011d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0011d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0011dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <printbase>:
printbase():
1c0011e4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0011e8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0011ec:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0011f0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0011f4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0011f8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0011fc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001200:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001204:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001208:	40002580 	beqz	$r12,36(0x24) # 1c00122c <printbase+0x48>
1c00120c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001210:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c00122c <printbase+0x48>
1c001214:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001218:	0011300c 	sub.w	$r12,$r0,$r12
1c00121c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001220:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001224:	57ff87ff 	bl	-124(0xfffff84) # 1c0011a8 <myputchar>
1c001228:	50000c00 	b	12(0xc) # 1c001234 <printbase+0x50>
1c00122c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001230:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001234:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001238:	50005000 	b	80(0x50) # 1c001288 <printbase+0xa4>
1c00123c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001240:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001244:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001248:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001250 <printbase+0x6c>
1c00124c:	002a0007 	break	0x7
1c001250:	00005dcc 	ext.w.b	$r12,$r14
1c001254:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001258:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00125c:	001035cd 	add.w	$r13,$r14,$r13
1c001260:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001264:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001268:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c00126c:	002135cc 	div.wu	$r12,$r14,$r13
1c001270:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001278 <printbase+0x94>
1c001274:	002a0007 	break	0x7
1c001278:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00127c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001280:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001284:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001288:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00128c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c00123c <printbase+0x58>
1c001290:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001294:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001298:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00129c:	001231ad 	slt	$r13,$r13,$r12
1c0012a0:	0013b5ce 	masknez	$r14,$r14,$r13
1c0012a4:	0013358c 	maskeqz	$r12,$r12,$r13
1c0012a8:	001531cc 	or	$r12,$r14,$r12
1c0012ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0012b0:	50007400 	b	116(0x74) # 1c001324 <printbase+0x140>
1c0012b4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0012b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0012bc:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0012d8 <printbase+0xf4>
1c0012c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0012c4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0012c8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0012cc:	001031ac 	add.w	$r12,$r13,$r12
1c0012d0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0012d4:	50000800 	b	8(0x8) # 1c0012dc <printbase+0xf8>
1c0012d8:	0015000c 	move	$r12,$r0
1c0012dc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0012e0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0012e4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0012e8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001300 <printbase+0x11c>
1c0012ec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0012f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0012f4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0012f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0012fc:	50001400 	b	20(0x14) # 1c001310 <printbase+0x12c>
1c001300:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001304:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001308:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c00130c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001310:	00150184 	move	$r4,$r12
1c001314:	57fe97ff 	bl	-364(0xffffe94) # 1c0011a8 <myputchar>
1c001318:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00131c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001320:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001324:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001328:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0012b4 <printbase+0xd0>
1c00132c:	0015000c 	move	$r12,$r0
1c001330:	00150184 	move	$r4,$r12
1c001334:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001338:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c00133c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001340:	4c000020 	jirl	$r0,$r1,0

1c001344 <ls1x_puts>:
ls1x_puts():
1c001344:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001348:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00134c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001350:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001358:	50003000 	b	48(0x30) # 1c001388 <ls1x_puts+0x44>
1c00135c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001360:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001364:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001370 <ls1x_puts+0x2c>
1c001368:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00136c:	57fe3fff 	bl	-452(0xffffe3c) # 1c0011a8 <myputchar>
1c001370:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001374:	00150184 	move	$r4,$r12
1c001378:	57fe33ff 	bl	-464(0xffffe30) # 1c0011a8 <myputchar>
1c00137c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001384:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001388:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00138c:	2a00018c 	ld.bu	$r12,$r12,0
1c001390:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001394:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001398:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c00135c <ls1x_puts+0x18>
1c00139c:	0015000c 	move	$r12,$r0
1c0013a0:	00150184 	move	$r4,$r12
1c0013a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0013a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0013ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0013b0:	4c000020 	jirl	$r0,$r1,0

1c0013b4 <myprintf>:
myprintf():
1c0013b4:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0013b8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0013bc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0013c0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0013c4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0013c8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c0013cc:	298022c6 	st.w	$r6,$r22,8(0x8)
1c0013d0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c0013d4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c0013d8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c0013dc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c0013e0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c0013e4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c0013e8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c0013ec:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0013f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0013f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0013f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0013fc:	50033000 	b	816(0x330) # 1c00172c <myprintf+0x378>
1c001400:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001404:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001408:	001031ac 	add.w	$r12,$r13,$r12
1c00140c:	2a00018c 	ld.bu	$r12,$r12,0
1c001410:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001414:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001418:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c00141c:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001700 <myprintf+0x34c>
1c001420:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001424:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001428:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00142c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001430:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001434:	001031ac 	add.w	$r12,$r13,$r12
1c001438:	2800018c 	ld.b	$r12,$r12,0
1c00143c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001440:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001444:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c0016f0 <myprintf+0x33c>
1c001448:	0040898d 	slli.w	$r13,$r12,0x2
1c00144c:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c001450:	02a1c18c 	addi.w	$r12,$r12,-1936(0x870)
1c001454:	001031ac 	add.w	$r12,$r13,$r12
1c001458:	2880018c 	ld.w	$r12,$r12,0
1c00145c:	4c000180 	jirl	$r0,$r12,0
1c001460:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001464:	2880018c 	ld.w	$r12,$r12,0
1c001468:	00150184 	move	$r4,$r12
1c00146c:	57fedbff 	bl	-296(0xffffed8) # 1c001344 <ls1x_puts>
1c001470:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001474:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001478:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00147c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001480:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001484:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001488:	50029800 	b	664(0x298) # 1c001720 <myprintf+0x36c>
1c00148c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001490:	2880018c 	ld.w	$r12,$r12,0
1c001494:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001498:	00150184 	move	$r4,$r12
1c00149c:	57fd0fff 	bl	-756(0xffffd0c) # 1c0011a8 <myputchar>
1c0014a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014a4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0014a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0014ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0014b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014b8:	50026800 	b	616(0x268) # 1c001720 <myprintf+0x36c>
1c0014bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014c0:	2880018c 	ld.w	$r12,$r12,0
1c0014c4:	00150007 	move	$r7,$r0
1c0014c8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c0014cc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0014d0:	00150184 	move	$r4,$r12
1c0014d4:	57fd13ff 	bl	-752(0xffffd10) # 1c0011e4 <printbase>
1c0014d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0014e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0014e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0014e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f0:	50023000 	b	560(0x230) # 1c001720 <myprintf+0x36c>
1c0014f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001500:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001504:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001508:	00150184 	move	$r4,$r12
1c00150c:	57fcdbff 	bl	-808(0xffffcd8) # 1c0011e4 <printbase>
1c001510:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001514:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001518:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00151c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001520:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001524:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001528:	5001f800 	b	504(0x1f8) # 1c001720 <myprintf+0x36c>
1c00152c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001530:	2880018c 	ld.w	$r12,$r12,0
1c001534:	00150007 	move	$r7,$r0
1c001538:	02802006 	addi.w	$r6,$r0,8(0x8)
1c00153c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001540:	00150184 	move	$r4,$r12
1c001544:	57fca3ff 	bl	-864(0xffffca0) # 1c0011e4 <printbase>
1c001548:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00154c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001550:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001554:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001558:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00155c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001560:	5001c000 	b	448(0x1c0) # 1c001720 <myprintf+0x36c>
1c001564:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001568:	2880018c 	ld.w	$r12,$r12,0
1c00156c:	00150007 	move	$r7,$r0
1c001570:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001574:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001578:	00150184 	move	$r4,$r12
1c00157c:	57fc6bff 	bl	-920(0xffffc68) # 1c0011e4 <printbase>
1c001580:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001584:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001588:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00158c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001590:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001594:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001598:	50018800 	b	392(0x188) # 1c001720 <myprintf+0x36c>
1c00159c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015a0:	2880018c 	ld.w	$r12,$r12,0
1c0015a4:	00150007 	move	$r7,$r0
1c0015a8:	02804006 	addi.w	$r6,$r0,16(0x10)
1c0015ac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0015b0:	00150184 	move	$r4,$r12
1c0015b4:	57fc33ff 	bl	-976(0xffffc30) # 1c0011e4 <printbase>
1c0015b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015bc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0015c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0015c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015d0:	50015000 	b	336(0x150) # 1c001720 <myprintf+0x36c>
1c0015d4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0015d8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c0011a8 <myputchar>
1c0015dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015e8:	50013800 	b	312(0x138) # 1c001720 <myprintf+0x36c>
1c0015ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015f8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0015fc:	50003c00 	b	60(0x3c) # 1c001638 <myprintf+0x284>
1c001600:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001604:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001608:	001c31ad 	mul.w	$r13,$r13,$r12
1c00160c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001610:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001614:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001618:	001031cc 	add.w	$r12,$r14,$r12
1c00161c:	2800018c 	ld.b	$r12,$r12,0
1c001620:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001624:	001031ac 	add.w	$r12,$r13,$r12
1c001628:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00162c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001630:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001634:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001638:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00163c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001640:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001644:	001031ac 	add.w	$r12,$r13,$r12
1c001648:	2800018d 	ld.b	$r13,$r12,0
1c00164c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001650:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001428 <myprintf+0x74>
1c001654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001658:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00165c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001660:	001031ac 	add.w	$r12,$r13,$r12
1c001664:	2800018d 	ld.b	$r13,$r12,0
1c001668:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00166c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001600 <myprintf+0x24c>
1c001670:	53fdbbff 	b	-584(0xffffdb8) # 1c001428 <myprintf+0x74>
1c001674:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001678:	50003c00 	b	60(0x3c) # 1c0016b4 <myprintf+0x300>
1c00167c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001680:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001684:	001c31ad 	mul.w	$r13,$r13,$r12
1c001688:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00168c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001690:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001694:	001031cc 	add.w	$r12,$r14,$r12
1c001698:	2800018c 	ld.b	$r12,$r12,0
1c00169c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0016a0:	001031ac 	add.w	$r12,$r13,$r12
1c0016a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0016a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016bc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0016c0:	001031ac 	add.w	$r12,$r13,$r12
1c0016c4:	2800018d 	ld.b	$r13,$r12,0
1c0016c8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0016cc:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001428 <myprintf+0x74>
1c0016d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016d8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0016dc:	001031ac 	add.w	$r12,$r13,$r12
1c0016e0:	2800018d 	ld.b	$r13,$r12,0
1c0016e4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0016e8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00167c <myprintf+0x2c8>
1c0016ec:	53fd3fff 	b	-708(0xffffd3c) # 1c001428 <myprintf+0x74>
1c0016f0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0016f4:	57fab7ff 	bl	-1356(0xffffab4) # 1c0011a8 <myputchar>
1c0016f8:	03400000 	andi	$r0,$r0,0x0
1c0016fc:	50002400 	b	36(0x24) # 1c001720 <myprintf+0x36c>
1c001700:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001704:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001708:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001714 <myprintf+0x360>
1c00170c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001710:	57fa9bff 	bl	-1384(0xffffa98) # 1c0011a8 <myputchar>
1c001714:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001718:	00150184 	move	$r4,$r12
1c00171c:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0011a8 <myputchar>
1c001720:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001724:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001728:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00172c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001730:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001734:	001031ac 	add.w	$r12,$r13,$r12
1c001738:	2800018c 	ld.b	$r12,$r12,0
1c00173c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001400 <myprintf+0x4c>
1c001740:	0015000c 	move	$r12,$r0
1c001744:	00150184 	move	$r4,$r12
1c001748:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00174c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001750:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001754:	4c000020 	jirl	$r0,$r1,0

1c001758 <memset>:
memset():
1c001758:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00175c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001760:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001764:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001768:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00176c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c001770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001774:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001778:	50001c00 	b	28(0x1c) # 1c001794 <memset+0x3c>
1c00177c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001780:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001784:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001788:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00178c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001790:	2900018d 	st.b	$r13,$r12,0
1c001794:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c001798:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00179c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0017a0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00177c <memset+0x24>
1c0017a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017a8:	00150184 	move	$r4,$r12
1c0017ac:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0017b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0017b4:	4c000020 	jirl	$r0,$r1,0

1c0017b8 <UART_SendData>:
UART_SendData():
1c0017b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0017bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0017c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0017c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0017c8:	001500ac 	move	$r12,$r5
1c0017cc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0017d0:	03400000 	andi	$r0,$r0,0x0
1c0017d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017d8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0017dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0017e0:	0340818c 	andi	$r12,$r12,0x20
1c0017e4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0017d4 <UART_SendData+0x1c>
1c0017e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017ec:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0017f0:	2900018d 	st.b	$r13,$r12,0
1c0017f4:	03400000 	andi	$r0,$r0,0x0
1c0017f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0017fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001800:	4c000020 	jirl	$r0,$r1,0

1c001804 <WDG_DogFeed>:
WDG_DogFeed():
1c001804:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001808:	29803076 	st.w	$r22,$r3,12(0xc)
1c00180c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c001818:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00181c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c001820:	03400000 	andi	$r0,$r0,0x0
1c001824:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001828:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00182c:	4c000020 	jirl	$r0,$r1,0

1c001830 <gpio_init>:
gpio_init():
1c001830:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001834:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001838:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00183c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001840:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001844:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001848:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00184c:	6000698d 	blt	$r12,$r13,104(0x68) # 1c0018b4 <gpio_init+0x84>
1c001850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001854:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001858:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00185c:	44003180 	bnez	$r12,48(0x30) # 1c00188c <gpio_init+0x5c>
1c001860:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001864:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001868:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00186c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001870:	001731cc 	sll.w	$r12,$r14,$r12
1c001874:	0014300c 	nor	$r12,$r0,$r12
1c001878:	0015018e 	move	$r14,$r12
1c00187c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001880:	0014b9ad 	and	$r13,$r13,$r14
1c001884:	2981018d 	st.w	$r13,$r12,64(0x40)
1c001888:	50009000 	b	144(0x90) # 1c001918 <gpio_init+0xe8>
1c00188c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001890:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001894:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001898:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00189c:	001731cc 	sll.w	$r12,$r14,$r12
1c0018a0:	0015018e 	move	$r14,$r12
1c0018a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a8:	001539ad 	or	$r13,$r13,$r14
1c0018ac:	2981018d 	st.w	$r13,$r12,64(0x40)
1c0018b0:	50006800 	b	104(0x68) # 1c001918 <gpio_init+0xe8>
1c0018b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018b8:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0018bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0018c0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0018c4:	44003180 	bnez	$r12,48(0x30) # 1c0018f4 <gpio_init+0xc4>
1c0018c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018cc:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0018d0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0014300c 	nor	$r12,$r0,$r12
1c0018e0:	0015018e 	move	$r14,$r12
1c0018e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e8:	0014b9ad 	and	$r13,$r13,$r14
1c0018ec:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0018f0:	50002800 	b	40(0x28) # 1c001918 <gpio_init+0xe8>
1c0018f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f8:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0018fc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001900:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001904:	001731cc 	sll.w	$r12,$r14,$r12
1c001908:	0015018e 	move	$r14,$r12
1c00190c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001910:	001539ad 	or	$r13,$r13,$r14
1c001914:	2981418d 	st.w	$r13,$r12,80(0x50)
1c001918:	03400000 	andi	$r0,$r0,0x0
1c00191c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001920:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001924:	4c000020 	jirl	$r0,$r1,0

1c001928 <gpio_write>:
gpio_write():
1c001928:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00192c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001930:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001934:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001938:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00193c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001940:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001944:	6000698d 	blt	$r12,$r13,104(0x68) # 1c0019ac <gpio_write+0x84>
1c001948:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00194c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001950:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001954:	44003180 	bnez	$r12,48(0x30) # 1c001984 <gpio_write+0x5c>
1c001958:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00195c:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001960:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001968:	001731cc 	sll.w	$r12,$r14,$r12
1c00196c:	0014300c 	nor	$r12,$r0,$r12
1c001970:	0015018e 	move	$r14,$r12
1c001974:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001978:	0014b9ad 	and	$r13,$r13,$r14
1c00197c:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001980:	50009000 	b	144(0x90) # 1c001a10 <gpio_write+0xe8>
1c001984:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001988:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c00198c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001994:	001731cc 	sll.w	$r12,$r14,$r12
1c001998:	0015018e 	move	$r14,$r12
1c00199c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019a0:	001539ad 	or	$r13,$r13,$r14
1c0019a4:	2981118d 	st.w	$r13,$r12,68(0x44)
1c0019a8:	50006800 	b	104(0x68) # 1c001a10 <gpio_write+0xe8>
1c0019ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0019b0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0019b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0019bc:	44003180 	bnez	$r12,48(0x30) # 1c0019ec <gpio_write+0xc4>
1c0019c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019c4:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c0019c8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019d0:	001731cc 	sll.w	$r12,$r14,$r12
1c0019d4:	0014300c 	nor	$r12,$r0,$r12
1c0019d8:	0015018e 	move	$r14,$r12
1c0019dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019e0:	0014b9ad 	and	$r13,$r13,$r14
1c0019e4:	2981518d 	st.w	$r13,$r12,84(0x54)
1c0019e8:	50002800 	b	40(0x28) # 1c001a10 <gpio_write+0xe8>
1c0019ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019f0:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c0019f4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019fc:	001731cc 	sll.w	$r12,$r14,$r12
1c001a00:	0015018e 	move	$r14,$r12
1c001a04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a08:	001539ad 	or	$r13,$r13,$r14
1c001a0c:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001a10:	03400000 	andi	$r0,$r0,0x0
1c001a14:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001a18:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a1c:	4c000020 	jirl	$r0,$r1,0

1c001a20 <gpio_read>:
gpio_read():
1c001a20:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a24:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001a28:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a2c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a30:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001a34:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001a38:	6000458d 	blt	$r12,$r13,68(0x44) # 1c001a7c <gpio_read+0x5c>
1c001a3c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a48:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c001a4c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a54:	001735cd 	sll.w	$r13,$r14,$r13
1c001a58:	0014b58c 	and	$r12,$r12,$r13
1c001a5c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a60:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a64:	001735cd 	sll.w	$r13,$r14,$r13
1c001a68:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001a74 <gpio_read+0x54>
1c001a6c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a70:	50004c00 	b	76(0x4c) # 1c001abc <gpio_read+0x9c>
1c001a74:	0015000c 	move	$r12,$r0
1c001a78:	50004400 	b	68(0x44) # 1c001abc <gpio_read+0x9c>
1c001a7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a80:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001a84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a8c:	2881618c 	ld.w	$r12,$r12,88(0x58)
1c001a90:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a94:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a98:	001735cd 	sll.w	$r13,$r14,$r13
1c001a9c:	0014b58c 	and	$r12,$r12,$r13
1c001aa0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001aa4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001aa8:	001735cd 	sll.w	$r13,$r14,$r13
1c001aac:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001ab8 <gpio_read+0x98>
1c001ab0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <gpio_read+0x9c>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	00150184 	move	$r4,$r12
1c001ac0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001ac4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ac8:	4c000020 	jirl	$r0,$r1,0

1c001acc <soc_I2C_delay>:
soc_I2C_delay():
1c001acc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ad0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001ad4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ad8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001adc:	03400000 	andi	$r0,$r0,0x0
1c001ae0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001ae8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001aec:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c001ae0 <soc_I2C_delay+0x14>
1c001af0:	03400000 	andi	$r0,$r0,0x0
1c001af4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001af8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001afc:	4c000020 	jirl	$r0,$r1,0

1c001b00 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c001b00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001b04:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001b08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001b0c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001b10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b14:	1400060d 	lu12i.w	$r13,48(0x30)
1c001b18:	03b501ad 	ori	$r13,$r13,0xd40
1c001b1c:	2980018d 	st.w	$r13,$r12,0
1c001b20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b24:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b28:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b30:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001b34:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001b38:	03400000 	andi	$r0,$r0,0x0
1c001b3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001b40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001b44:	4c000020 	jirl	$r0,$r1,0

1c001b48 <soc_I2C_Init>:
soc_I2C_Init():
1c001b48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b4c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b50:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b54:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b58:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b5c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001b60:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001b64:	0388018c 	ori	$r12,$r12,0x200
1c001b68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b6c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b70:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b74:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001b78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b7c:	2880018d 	ld.w	$r13,$r12,0
1c001b80:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001b84:	002135cc 	div.wu	$r12,$r14,$r13
1c001b88:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001b90 <soc_I2C_Init+0x48>
1c001b8c:	002a0007 	break	0x7
1c001b90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b98:	0044898c 	srli.w	$r12,$r12,0x2
1c001b9c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ba0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ba4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ba8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001bac:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bb0:	2900018d 	st.b	$r13,$r12,0
1c001bb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bb8:	0044a18d 	srli.w	$r13,$r12,0x8
1c001bbc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bc0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bc4:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001bc8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bcc:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001bd0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001bd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd8:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001bdc:	40001180 	beqz	$r12,16(0x10) # 1c001bec <soc_I2C_Init+0xa4>
1c001be0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001be4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001be8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001bec:	5400e800 	bl	232(0xe8) # 1c001cd4 <soc_I2C_wait>
1c001bf0:	03400000 	andi	$r0,$r0,0x0
1c001bf4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001bf8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001bfc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c00:	4c000020 	jirl	$r0,$r1,0

1c001c04 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001c04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c08:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c10:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c18:	40001580 	beqz	$r12,20(0x14) # 1c001c2c <soc_I2C_GenerateSTART+0x28>
1c001c1c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c20:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001c24:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c28:	50001000 	b	16(0x10) # 1c001c38 <soc_I2C_GenerateSTART+0x34>
1c001c2c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c30:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001c34:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c38:	03400000 	andi	$r0,$r0,0x0
1c001c3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c44:	4c000020 	jirl	$r0,$r1,0

1c001c48 <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001c48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c4c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c5c:	40001580 	beqz	$r12,20(0x14) # 1c001c70 <soc_I2C_GenerateSTOP+0x28>
1c001c60:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c64:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001c68:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c6c:	50001000 	b	16(0x10) # 1c001c7c <soc_I2C_GenerateSTOP+0x34>
1c001c70:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c74:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001c78:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c7c:	03400000 	andi	$r0,$r0,0x0
1c001c80:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c88:	4c000020 	jirl	$r0,$r1,0

1c001c8c <soc_I2C_SendData>:
soc_I2C_SendData():
1c001c8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c94:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c9c:	0015008c 	move	$r12,$r4
1c001ca0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001ca4:	54007800 	bl	120(0x78) # 1c001d1c <soc_I2C_Unlock>
1c001ca8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001cb0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001cb4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cb8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001cbc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001cc0:	03400000 	andi	$r0,$r0,0x0
1c001cc4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001cc8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ccc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cd0:	4c000020 	jirl	$r0,$r1,0

1c001cd4 <soc_I2C_wait>:
soc_I2C_wait():
1c001cd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001cdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ce0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ce4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001ce8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001cec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001cf0:	50001000 	b	16(0x10) # 1c001d00 <soc_I2C_wait+0x2c>
1c001cf4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cf8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001cfc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d04:	0340098c 	andi	$r12,$r12,0x2
1c001d08:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001cf4 <soc_I2C_wait+0x20>
1c001d0c:	03400000 	andi	$r0,$r0,0x0
1c001d10:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d18:	4c000020 	jirl	$r0,$r1,0

1c001d1c <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001d1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d20:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d28:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d2c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d38:	0340118c 	andi	$r12,$r12,0x4
1c001d3c:	40001180 	beqz	$r12,16(0x10) # 1c001d4c <soc_I2C_Unlock+0x30>
1c001d40:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d44:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001d48:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d4c:	03400000 	andi	$r0,$r0,0x0
1c001d50:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d58:	4c000020 	jirl	$r0,$r1,0

1c001d5c <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001d5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d60:	29803076 	st.w	$r22,$r3,12(0xc)
1c001d64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d68:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d6c:	0380c18c 	ori	$r12,$r12,0x30
1c001d70:	29802180 	st.w	$r0,$r12,8(0x8)
1c001d74:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d78:	0380c18c 	ori	$r12,$r12,0x30
1c001d7c:	140004ed 	lu12i.w	$r13,39(0x27)
1c001d80:	038401ad 	ori	$r13,$r13,0x100
1c001d84:	2980018d 	st.w	$r13,$r12,0
1c001d88:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d8c:	0380c18c 	ori	$r12,$r12,0x30
1c001d90:	03be800d 	ori	$r13,$r0,0xfa0
1c001d94:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001d98:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d9c:	0380c18c 	ori	$r12,$r12,0x30
1c001da0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001da4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001da8:	03400000 	andi	$r0,$r0,0x0
1c001dac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001db0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001db4:	4c000020 	jirl	$r0,$r1,0

1c001db8 <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001db8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001dbc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001dc0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001dc4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001dc8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001dcc:	028c800c 	addi.w	$r12,$r0,800(0x320)
1c001dd0:	001c31ae 	mul.w	$r14,$r13,$r12
1c001dd4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001dd8:	002031cd 	div.w	$r13,$r14,$r12
1c001ddc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001de4 <pwm_steering_engine_set+0x2c>
1c001de0:	002a0007 	break	0x7
1c001de4:	03be800c 	ori	$r12,$r0,0xfa0
1c001de8:	001031ad 	add.w	$r13,$r13,$r12
1c001dec:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001df0:	0380c18c 	ori	$r12,$r12,0x30
1c001df4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001df8:	03400000 	andi	$r0,$r0,0x0
1c001dfc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e04:	4c000020 	jirl	$r0,$r1,0

1c001e08 <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001e08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e0c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001e10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e14:	0015008c 	move	$r12,$r4
1c001e18:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e1c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e20:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001e24:	03400dad 	andi	$r13,$r13,0x3
1c001e28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e2c:	2900018d 	st.b	$r13,$r12,0
1c001e30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e34:	0044898c 	srli.w	$r12,$r12,0x2
1c001e38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e3c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e40:	03400dad 	andi	$r13,$r13,0x3
1c001e44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e48:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001e4c:	03400000 	andi	$r0,$r0,0x0
1c001e50:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e58:	4c000020 	jirl	$r0,$r1,0

1c001e5c <soc_Spi_Init>:
soc_Spi_Init():
1c001e5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001e64:	29806076 	st.w	$r22,$r3,24(0x18)
1c001e68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e6c:	0015008c 	move	$r12,$r4
1c001e70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e74:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e78:	00150184 	move	$r4,$r12
1c001e7c:	57ff8fff 	bl	-116(0xfffff8c) # 1c001e08 <soc_Spi_FreqDiv>
1c001e80:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e84:	2a00018c 	ld.bu	$r12,$r12,0
1c001e88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e8c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e90:	038141ad 	ori	$r13,$r13,0x50
1c001e94:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e98:	2900018d 	st.b	$r13,$r12,0
1c001e9c:	03400000 	andi	$r0,$r0,0x0
1c001ea0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ea4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ea8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001eac:	0340118c 	andi	$r12,$r12,0x4
1c001eb0:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001ea0 <soc_Spi_Init+0x44>
1c001eb4:	03400000 	andi	$r0,$r0,0x0
1c001eb8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ebc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ec0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ec4:	0340058c 	andi	$r12,$r12,0x1
1c001ec8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001eb8 <soc_Spi_Init+0x5c>
1c001ecc:	03400000 	andi	$r0,$r0,0x0
1c001ed0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ed4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ed8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001edc:	4c000020 	jirl	$r0,$r1,0

1c001ee0 <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001ee0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ee4:	29803076 	st.w	$r22,$r3,12(0xc)
1c001ee8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001eec:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ef0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001ef4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001ef8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001efc:	038009ad 	ori	$r13,$r13,0x2
1c001f00:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f04:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f08:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f0c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f10:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001f14:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f18:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001f1c:	0014b5cd 	and	$r13,$r14,$r13
1c001f20:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f24:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f28:	03400000 	andi	$r0,$r0,0x0
1c001f2c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c001f38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f3c:	29803076 	st.w	$r22,$r3,12(0xc)
1c001f40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f44:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f48:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f4c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f50:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f54:	038009ad 	ori	$r13,$r13,0x2
1c001f58:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f5c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f60:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f64:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f68:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f6c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f70:	038081ad 	ori	$r13,$r13,0x20
1c001f74:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f78:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f7c:	03400000 	andi	$r0,$r0,0x0
1c001f80:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <my_recv_dat_int>:
my_recv_dat_int():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001f94:	29806076 	st.w	$r22,$r3,24(0x18)
1c001f98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f9c:	0015008c 	move	$r12,$r4
1c001fa0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fa4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001fa8:	2881c18c 	ld.w	$r12,$r12,112(0x70)
1c001fac:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001fb0:	2900018d 	st.b	$r13,$r12,0
1c001fb4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001fb8:	00150185 	move	$r5,$r12
1c001fbc:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001fc0:	028e6084 	addi.w	$r4,$r4,920(0x398)
1c001fc4:	543a3800 	bl	14904(0x3a38) # 1c0059fc <Buffer_write>
1c001fc8:	03400000 	andi	$r0,$r0,0x0
1c001fcc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001fd0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001fd4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fd8:	4c000020 	jirl	$r0,$r1,0

1c001fdc <my_strstr>:
my_strstr():
1c001fdc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001fe0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001fe4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001fe8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001fec:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001ff0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ff4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ff8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ffc:	2800018c 	ld.b	$r12,$r12,0
1c002000:	44008580 	bnez	$r12,132(0x84) # 1c002084 <my_strstr+0xa8>
1c002004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002008:	50008c00 	b	140(0x8c) # 1c002094 <my_strstr+0xb8>
1c00200c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002010:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002014:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002018:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00201c:	50001c00 	b	28(0x1c) # 1c002038 <my_strstr+0x5c>
1c002020:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002024:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002028:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00202c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002030:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002034:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002038:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00203c:	2800018c 	ld.b	$r12,$r12,0
1c002040:	40002580 	beqz	$r12,36(0x24) # 1c002064 <my_strstr+0x88>
1c002044:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002048:	2800018c 	ld.b	$r12,$r12,0
1c00204c:	40001980 	beqz	$r12,24(0x18) # 1c002064 <my_strstr+0x88>
1c002050:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002054:	2800018d 	ld.b	$r13,$r12,0
1c002058:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00205c:	2800018c 	ld.b	$r12,$r12,0
1c002060:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c002020 <my_strstr+0x44>
1c002064:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002068:	2800018c 	ld.b	$r12,$r12,0
1c00206c:	44000d80 	bnez	$r12,12(0xc) # 1c002078 <my_strstr+0x9c>
1c002070:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002074:	50002000 	b	32(0x20) # 1c002094 <my_strstr+0xb8>
1c002078:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00207c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002080:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002084:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002088:	2800018c 	ld.b	$r12,$r12,0
1c00208c:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c00200c <my_strstr+0x30>
1c002090:	0015000c 	move	$r12,$r0
1c002094:	00150184 	move	$r4,$r12
1c002098:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00209c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0020a0:	4c000020 	jirl	$r0,$r1,0

1c0020a4 <MYUSART_SendData>:
MYUSART_SendData():
1c0020a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0020ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020b0:	0015008c 	move	$r12,$r4
1c0020b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0020b8:	03400000 	andi	$r0,$r0,0x0
1c0020bc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020c0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0020c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020c8:	0340818c 	andi	$r12,$r12,0x20
1c0020cc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0020bc <MYUSART_SendData+0x18>
1c0020d0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020d4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020d8:	2900018d 	st.b	$r13,$r12,0
1c0020dc:	03400000 	andi	$r0,$r0,0x0
1c0020e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0020e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020e8:	4c000020 	jirl	$r0,$r1,0

1c0020ec <SendHead>:
SendHead():
1c0020ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0020f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0020f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020fc:	02864006 	addi.w	$r6,$r0,400(0x190)
1c002100:	00150005 	move	$r5,$r0
1c002104:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002108:	28bc2084 	ld.w	$r4,$r4,-248(0xf08)
1c00210c:	57f64fff 	bl	-2484(0xffff64c) # 1c001758 <memset>
1c002110:	0283bc04 	addi.w	$r4,$r0,239(0xef)
1c002114:	57ff93ff 	bl	-112(0xfffff90) # 1c0020a4 <MYUSART_SendData>
1c002118:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00211c:	57ff8bff 	bl	-120(0xfffff88) # 1c0020a4 <MYUSART_SendData>
1c002120:	03400000 	andi	$r0,$r0,0x0
1c002124:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002128:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00212c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002130:	4c000020 	jirl	$r0,$r1,0

1c002134 <SendAddr>:
SendAddr():
1c002134:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002138:	29803061 	st.w	$r1,$r3,12(0xc)
1c00213c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002140:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002144:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002148:	02bb618c 	addi.w	$r12,$r12,-296(0xed8)
1c00214c:	2880018c 	ld.w	$r12,$r12,0
1c002150:	0044e18c 	srli.w	$r12,$r12,0x18
1c002154:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002158:	00150184 	move	$r4,$r12
1c00215c:	57ff4bff 	bl	-184(0xfffff48) # 1c0020a4 <MYUSART_SendData>
1c002160:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002164:	02baf18c 	addi.w	$r12,$r12,-324(0xebc)
1c002168:	2880018c 	ld.w	$r12,$r12,0
1c00216c:	0044c18c 	srli.w	$r12,$r12,0x10
1c002170:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002174:	00150184 	move	$r4,$r12
1c002178:	57ff2fff 	bl	-212(0xfffff2c) # 1c0020a4 <MYUSART_SendData>
1c00217c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002180:	02ba818c 	addi.w	$r12,$r12,-352(0xea0)
1c002184:	2880018c 	ld.w	$r12,$r12,0
1c002188:	0044a18c 	srli.w	$r12,$r12,0x8
1c00218c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002190:	00150184 	move	$r4,$r12
1c002194:	57ff13ff 	bl	-240(0xfffff10) # 1c0020a4 <MYUSART_SendData>
1c002198:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00219c:	02ba118c 	addi.w	$r12,$r12,-380(0xe84)
1c0021a0:	2880018c 	ld.w	$r12,$r12,0
1c0021a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021a8:	00150184 	move	$r4,$r12
1c0021ac:	57fefbff 	bl	-264(0xffffef8) # 1c0020a4 <MYUSART_SendData>
1c0021b0:	03400000 	andi	$r0,$r0,0x0
1c0021b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021c0:	4c000020 	jirl	$r0,$r1,0

1c0021c4 <SendFlag>:
SendFlag():
1c0021c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021d4:	0015008c 	move	$r12,$r4
1c0021d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0021e0:	00150184 	move	$r4,$r12
1c0021e4:	57fec3ff 	bl	-320(0xffffec0) # 1c0020a4 <MYUSART_SendData>
1c0021e8:	03400000 	andi	$r0,$r0,0x0
1c0021ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0021f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0021f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0021f8:	4c000020 	jirl	$r0,$r1,0

1c0021fc <SendLength>:
SendLength():
1c0021fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002200:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002204:	29806076 	st.w	$r22,$r3,24(0x18)
1c002208:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00220c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002210:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002214:	0048a18c 	srai.w	$r12,$r12,0x8
1c002218:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00221c:	00150184 	move	$r4,$r12
1c002220:	57fe87ff 	bl	-380(0xffffe84) # 1c0020a4 <MYUSART_SendData>
1c002224:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002228:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00222c:	00150184 	move	$r4,$r12
1c002230:	57fe77ff 	bl	-396(0xffffe74) # 1c0020a4 <MYUSART_SendData>
1c002234:	03400000 	andi	$r0,$r0,0x0
1c002238:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00223c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002240:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002244:	4c000020 	jirl	$r0,$r1,0

1c002248 <Sendcmd>:
Sendcmd():
1c002248:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00224c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002250:	29806076 	st.w	$r22,$r3,24(0x18)
1c002254:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002258:	0015008c 	move	$r12,$r4
1c00225c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002260:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002264:	00150184 	move	$r4,$r12
1c002268:	57fe3fff 	bl	-452(0xffffe3c) # 1c0020a4 <MYUSART_SendData>
1c00226c:	03400000 	andi	$r0,$r0,0x0
1c002270:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002274:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002278:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00227c:	4c000020 	jirl	$r0,$r1,0

1c002280 <SendCheck>:
SendCheck():
1c002280:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002284:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002288:	29806076 	st.w	$r22,$r3,24(0x18)
1c00228c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002290:	0015008c 	move	$r12,$r4
1c002294:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002298:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00229c:	0044a18c 	srli.w	$r12,$r12,0x8
1c0022a0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0022a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022a8:	00150184 	move	$r4,$r12
1c0022ac:	57fdfbff 	bl	-520(0xffffdf8) # 1c0020a4 <MYUSART_SendData>
1c0022b0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0022b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022b8:	00150184 	move	$r4,$r12
1c0022bc:	57fdebff 	bl	-536(0xffffde8) # 1c0020a4 <MYUSART_SendData>
1c0022c0:	03400000 	andi	$r0,$r0,0x0
1c0022c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0022c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0022cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022d0:	4c000020 	jirl	$r0,$r1,0

1c0022d4 <AS608_Check>:
AS608_Check():
1c0022d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0022dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0022e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022e4:	1400004c 	lu12i.w	$r12,2(0x2)
1c0022e8:	039c418c 	ori	$r12,$r12,0x710
1c0022ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022f0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0022f4:	28b4718c 	ld.w	$r12,$r12,-740(0xd1c)
1c0022f8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0022fc:	2900258d 	st.b	$r13,$r12,9(0x9)
1c002300:	57fdefff 	bl	-532(0xffffdec) # 1c0020ec <SendHead>
1c002304:	57fe33ff 	bl	-464(0xffffe30) # 1c002134 <SendAddr>
1c002308:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00230c:	50002c00 	b	44(0x2c) # 1c002338 <AS608_Check+0x64>
1c002310:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002314:	02b441ad 	addi.w	$r13,$r13,-752(0xd10)
1c002318:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00231c:	001031ac 	add.w	$r12,$r13,$r12
1c002320:	2a00018c 	ld.bu	$r12,$r12,0
1c002324:	00150184 	move	$r4,$r12
1c002328:	57fd7fff 	bl	-644(0xffffd7c) # 1c0020a4 <MYUSART_SendData>
1c00232c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002330:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002334:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002338:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00233c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002340:	67ffd18d 	bge	$r12,$r13,-48(0x3ffd0) # 1c002310 <AS608_Check+0x3c>
1c002344:	03400000 	andi	$r0,$r0,0x0
1c002348:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00234c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002350:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002354:	0340058c 	andi	$r12,$r12,0x1
1c002358:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002348 <AS608_Check+0x74>
1c00235c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002360:	5000c400 	b	196(0xc4) # 1c002424 <AS608_Check+0x150>
1c002364:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002368:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00236c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002374:	44002980 	bnez	$r12,40(0x28) # 1c00239c <AS608_Check+0xc8>
1c002378:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00237c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002380:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002384:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002388:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c00238c:	001535cd 	or	$r13,$r14,$r13
1c002390:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002394:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002398:	50001800 	b	24(0x18) # 1c0023b0 <AS608_Check+0xdc>
1c00239c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023a0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023a8:	0340058c 	andi	$r12,$r12,0x1
1c0023ac:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002364 <AS608_Check+0x90>
1c0023b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b4:	44001d80 	bnez	$r12,28(0x1c) # 1c0023d0 <AS608_Check+0xfc>
1c0023b8:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0023bc:	28b151ad 	ld.w	$r13,$r13,-940(0xc54)
1c0023c0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023c4:	001031ac 	add.w	$r12,$r13,$r12
1c0023c8:	29000180 	st.b	$r0,$r12,0
1c0023cc:	50002400 	b	36(0x24) # 1c0023f0 <AS608_Check+0x11c>
1c0023d0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0023d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0023dc:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0023e0:	28b0c1ce 	ld.w	$r14,$r14,-976(0xc30)
1c0023e4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023e8:	001031cc 	add.w	$r12,$r14,$r12
1c0023ec:	2900018d 	st.b	$r13,$r12,0
1c0023f0:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0023f4:	28b071ad 	ld.w	$r13,$r13,-996(0xc1c)
1c0023f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2a00018c 	ld.bu	$r12,$r12,0
1c002404:	00150184 	move	$r4,$r12
1c002408:	54109400 	bl	4244(0x1094) # 1c00349c <uart_write>
1c00240c:	140000ec 	lu12i.w	$r12,7(0x7)
1c002410:	0394c18c 	ori	$r12,$r12,0x530
1c002414:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002418:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00241c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002420:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002424:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002428:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00242c:	6fff718d 	bgeu	$r12,$r13,-144(0x3ff70) # 1c00239c <AS608_Check+0xc8>
1c002430:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002434:	28af718c 	ld.w	$r12,$r12,-1060(0xbdc)
1c002438:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00243c:	44000d80 	bnez	$r12,12(0xc) # 1c002448 <AS608_Check+0x174>
1c002440:	0015000c 	move	$r12,$r0
1c002444:	50000800 	b	8(0x8) # 1c00244c <AS608_Check+0x178>
1c002448:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00244c:	00150184 	move	$r4,$r12
1c002450:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002454:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002458:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00245c:	4c000020 	jirl	$r0,$r1,0

1c002460 <as608_init>:
as608_init():
1c002460:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002464:	29803061 	st.w	$r1,$r3,12(0xc)
1c002468:	29802076 	st.w	$r22,$r3,8(0x8)
1c00246c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002470:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002474:	54107000 	bl	4208(0x1070) # 1c0034e4 <uart_set_rx_th>
1c002478:	57fe5fff 	bl	-420(0xffffe5c) # 1c0022d4 <AS608_Check>
1c00247c:	0015008c 	move	$r12,$r4
1c002480:	00150184 	move	$r4,$r12
1c002484:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002488:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00248c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002490:	4c000020 	jirl	$r0,$r1,0

1c002494 <JudgeStr>:
JudgeStr():
1c002494:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c002498:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00249c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0024a0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0024a4:	0015008c 	move	$r12,$r4
1c0024a8:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c0024ac:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c0024b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024b4:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c0024b8:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c0024bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0024c0:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0024c4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024c8:	02ad618c 	addi.w	$r12,$r12,-1192(0xb58)
1c0024cc:	2880018c 	ld.w	$r12,$r12,0
1c0024d0:	0044e18c 	srli.w	$r12,$r12,0x18
1c0024d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024d8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0024dc:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024e0:	02ad018c 	addi.w	$r12,$r12,-1216(0xb40)
1c0024e4:	2880018c 	ld.w	$r12,$r12,0
1c0024e8:	0044c18c 	srli.w	$r12,$r12,0x10
1c0024ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024f0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0024f4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024f8:	02aca18c 	addi.w	$r12,$r12,-1240(0xb28)
1c0024fc:	2880018c 	ld.w	$r12,$r12,0
1c002500:	0044a18c 	srli.w	$r12,$r12,0x8
1c002504:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002508:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c00250c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002510:	02ac418c 	addi.w	$r12,$r12,-1264(0xb10)
1c002514:	2880018c 	ld.w	$r12,$r12,0
1c002518:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00251c:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c002520:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002524:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c002528:	293f8ec0 	st.b	$r0,$r22,-29(0xfe3)
1c00252c:	03400000 	andi	$r0,$r0,0x0
1c002530:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002534:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002538:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00253c:	0340058c 	andi	$r12,$r12,0x1
1c002540:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002530 <JudgeStr+0x9c>
1c002544:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002548:	5000c000 	b	192(0xc0) # 1c002608 <JudgeStr+0x174>
1c00254c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002550:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002558:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00255c:	44002980 	bnez	$r12,40(0x28) # 1c002584 <JudgeStr+0xf0>
1c002560:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002564:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002568:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00256c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002570:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c002574:	001535cd 	or	$r13,$r14,$r13
1c002578:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00257c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002580:	50001800 	b	24(0x18) # 1c002598 <JudgeStr+0x104>
1c002584:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002588:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00258c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002590:	0340058c 	andi	$r12,$r12,0x1
1c002594:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c00254c <JudgeStr+0xb8>
1c002598:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00259c:	44001d80 	bnez	$r12,28(0x1c) # 1c0025b8 <JudgeStr+0x124>
1c0025a0:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0025a4:	28a9b1ad 	ld.w	$r13,$r13,-1428(0xa6c)
1c0025a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025ac:	001031ac 	add.w	$r12,$r13,$r12
1c0025b0:	29000180 	st.b	$r0,$r12,0
1c0025b4:	50002400 	b	36(0x24) # 1c0025d8 <JudgeStr+0x144>
1c0025b8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0025bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0025c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025c4:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0025c8:	28a921ce 	ld.w	$r14,$r14,-1464(0xa48)
1c0025cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025d0:	001031cc 	add.w	$r12,$r14,$r12
1c0025d4:	2900018d 	st.b	$r13,$r12,0
1c0025d8:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0025dc:	28a8d1ad 	ld.w	$r13,$r13,-1484(0xa34)
1c0025e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025e4:	001031ac 	add.w	$r12,$r13,$r12
1c0025e8:	2a00018c 	ld.bu	$r12,$r12,0
1c0025ec:	00150184 	move	$r4,$r12
1c0025f0:	540eac00 	bl	3756(0xeac) # 1c00349c <uart_write>
1c0025f4:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c0025f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002600:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002604:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002608:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00260c:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c002610:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c002584 <JudgeStr+0xf0>
1c002614:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c002618:	00150185 	move	$r5,$r12
1c00261c:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002620:	28a7c084 	ld.w	$r4,$r4,-1552(0x9f0)
1c002624:	57f9bbff 	bl	-1608(0xffff9b8) # 1c001fdc <my_strstr>
1c002628:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c00262c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002630:	40000d80 	beqz	$r12,12(0xc) # 1c00263c <JudgeStr+0x1a8>
1c002634:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002638:	50000800 	b	8(0x8) # 1c002640 <JudgeStr+0x1ac>
1c00263c:	0015000c 	move	$r12,$r0
1c002640:	00150184 	move	$r4,$r12
1c002644:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002648:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00264c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002650:	4c000020 	jirl	$r0,$r1,0

1c002654 <PS_GetImage>:
PS_GetImage():
1c002654:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002658:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00265c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002660:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002664:	57fa8bff 	bl	-1400(0xffffa88) # 1c0020ec <SendHead>
1c002668:	57facfff 	bl	-1332(0xffffacc) # 1c002134 <SendAddr>
1c00266c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002670:	57fb57ff 	bl	-1196(0xffffb54) # 1c0021c4 <SendFlag>
1c002674:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002678:	57fb87ff 	bl	-1148(0xffffb84) # 1c0021fc <SendLength>
1c00267c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002680:	57fbcbff 	bl	-1080(0xffffbc8) # 1c002248 <Sendcmd>
1c002684:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002688:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00268c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002690:	00150184 	move	$r4,$r12
1c002694:	57fbefff 	bl	-1044(0xffffbec) # 1c002280 <SendCheck>
1c002698:	1400004c 	lu12i.w	$r12,2(0x2)
1c00269c:	039c4184 	ori	$r4,$r12,0x710
1c0026a0:	57fdf7ff 	bl	-524(0xffffdf4) # 1c002494 <JudgeStr>
1c0026a4:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0026a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026ac:	40001580 	beqz	$r12,20(0x14) # 1c0026c0 <PS_GetImage+0x6c>
1c0026b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026b4:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0026b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026bc:	50000c00 	b	12(0xc) # 1c0026c8 <PS_GetImage+0x74>
1c0026c0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0026c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026cc:	00150184 	move	$r4,$r12
1c0026d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026dc:	4c000020 	jirl	$r0,$r1,0

1c0026e0 <PS_GenChar>:
PS_GenChar():
1c0026e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026f0:	0015008c 	move	$r12,$r4
1c0026f4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0026f8:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c0020ec <SendHead>
1c0026fc:	57fa3bff 	bl	-1480(0xffffa38) # 1c002134 <SendAddr>
1c002700:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002704:	57fac3ff 	bl	-1344(0xffffac0) # 1c0021c4 <SendFlag>
1c002708:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00270c:	57faf3ff 	bl	-1296(0xffffaf0) # 1c0021fc <SendLength>
1c002710:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002714:	57fb37ff 	bl	-1228(0xffffb34) # 1c002248 <Sendcmd>
1c002718:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00271c:	00150184 	move	$r4,$r12
1c002720:	57f987ff 	bl	-1660(0xffff984) # 1c0020a4 <MYUSART_SendData>
1c002724:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002728:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00272c:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c002730:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002734:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002738:	00150184 	move	$r4,$r12
1c00273c:	57fb47ff 	bl	-1212(0xffffb44) # 1c002280 <SendCheck>
1c002740:	1400004c 	lu12i.w	$r12,2(0x2)
1c002744:	039c4184 	ori	$r4,$r12,0x710
1c002748:	57fd4fff 	bl	-692(0xffffd4c) # 1c002494 <JudgeStr>
1c00274c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002750:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002754:	40001580 	beqz	$r12,20(0x14) # 1c002768 <PS_GenChar+0x88>
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002760:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002764:	50000c00 	b	12(0xc) # 1c002770 <PS_GenChar+0x90>
1c002768:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00276c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002770:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002774:	00150184 	move	$r4,$r12
1c002778:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00277c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002780:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002784:	4c000020 	jirl	$r0,$r1,0

1c002788 <PS_Match>:
PS_Match():
1c002788:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00278c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002790:	29806076 	st.w	$r22,$r3,24(0x18)
1c002794:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002798:	57f957ff 	bl	-1708(0xffff954) # 1c0020ec <SendHead>
1c00279c:	57f99bff 	bl	-1640(0xffff998) # 1c002134 <SendAddr>
1c0027a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0027a4:	57fa23ff 	bl	-1504(0xffffa20) # 1c0021c4 <SendFlag>
1c0027a8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027ac:	57fa53ff 	bl	-1456(0xffffa50) # 1c0021fc <SendLength>
1c0027b0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027b4:	57fa97ff 	bl	-1388(0xffffa94) # 1c002248 <Sendcmd>
1c0027b8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0027bc:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0027c0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0027c4:	00150184 	move	$r4,$r12
1c0027c8:	57fabbff 	bl	-1352(0xffffab8) # 1c002280 <SendCheck>
1c0027cc:	1400004c 	lu12i.w	$r12,2(0x2)
1c0027d0:	039c4184 	ori	$r4,$r12,0x710
1c0027d4:	57fcc3ff 	bl	-832(0xffffcc0) # 1c002494 <JudgeStr>
1c0027d8:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0027dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027e0:	40001580 	beqz	$r12,20(0x14) # 1c0027f4 <PS_Match+0x6c>
1c0027e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027e8:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0027ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027f0:	50000c00 	b	12(0xc) # 1c0027fc <PS_Match+0x74>
1c0027f4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0027f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002800:	00150184 	move	$r4,$r12
1c002804:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002808:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00280c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002810:	4c000020 	jirl	$r0,$r1,0

1c002814 <PS_RegModel>:
PS_RegModel():
1c002814:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002818:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00281c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002820:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002824:	57f8cbff 	bl	-1848(0xffff8c8) # 1c0020ec <SendHead>
1c002828:	57f90fff 	bl	-1780(0xffff90c) # 1c002134 <SendAddr>
1c00282c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002830:	57f997ff 	bl	-1644(0xffff994) # 1c0021c4 <SendFlag>
1c002834:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002838:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c0021fc <SendLength>
1c00283c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c002840:	57fa0bff 	bl	-1528(0xffffa08) # 1c002248 <Sendcmd>
1c002844:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002848:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00284c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002850:	00150184 	move	$r4,$r12
1c002854:	57fa2fff 	bl	-1492(0xffffa2c) # 1c002280 <SendCheck>
1c002858:	1400004c 	lu12i.w	$r12,2(0x2)
1c00285c:	039c4184 	ori	$r4,$r12,0x710
1c002860:	57fc37ff 	bl	-972(0xffffc34) # 1c002494 <JudgeStr>
1c002864:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002868:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00286c:	40001580 	beqz	$r12,20(0x14) # 1c002880 <PS_RegModel+0x6c>
1c002870:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002874:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002878:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00287c:	50000c00 	b	12(0xc) # 1c002888 <PS_RegModel+0x74>
1c002880:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002884:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002888:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00288c:	00150184 	move	$r4,$r12
1c002890:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002894:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002898:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00289c:	4c000020 	jirl	$r0,$r1,0

1c0028a0 <PS_StoreChar>:
PS_StoreChar():
1c0028a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028b0:	0015008c 	move	$r12,$r4
1c0028b4:	001500ad 	move	$r13,$r5
1c0028b8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0028bc:	001501ac 	move	$r12,$r13
1c0028c0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0028c4:	57f82bff 	bl	-2008(0xffff828) # 1c0020ec <SendHead>
1c0028c8:	57f86fff 	bl	-1940(0xffff86c) # 1c002134 <SendAddr>
1c0028cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0028d0:	57f8f7ff 	bl	-1804(0xffff8f4) # 1c0021c4 <SendFlag>
1c0028d4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028d8:	57f927ff 	bl	-1756(0xffff924) # 1c0021fc <SendLength>
1c0028dc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028e0:	57f96bff 	bl	-1688(0xffff968) # 1c002248 <Sendcmd>
1c0028e4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0028e8:	00150184 	move	$r4,$r12
1c0028ec:	57f7bbff 	bl	-2120(0xffff7b8) # 1c0020a4 <MYUSART_SendData>
1c0028f0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028f4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002900:	00150184 	move	$r4,$r12
1c002904:	57f7a3ff 	bl	-2144(0xffff7a0) # 1c0020a4 <MYUSART_SendData>
1c002908:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00290c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002910:	00150184 	move	$r4,$r12
1c002914:	57f793ff 	bl	-2160(0xffff790) # 1c0020a4 <MYUSART_SendData>
1c002918:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00291c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002920:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002924:	0044a18c 	srli.w	$r12,$r12,0x8
1c002928:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00292c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002930:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002934:	001031ac 	add.w	$r12,$r13,$r12
1c002938:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00293c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002940:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002944:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002948:	001031ac 	add.w	$r12,$r13,$r12
1c00294c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002950:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002954:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002958:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00295c:	00150184 	move	$r4,$r12
1c002960:	57f923ff 	bl	-1760(0xffff920) # 1c002280 <SendCheck>
1c002964:	1400004c 	lu12i.w	$r12,2(0x2)
1c002968:	039c4184 	ori	$r4,$r12,0x710
1c00296c:	57fb2bff 	bl	-1240(0xffffb28) # 1c002494 <JudgeStr>
1c002970:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002974:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002978:	40001580 	beqz	$r12,20(0x14) # 1c00298c <PS_StoreChar+0xec>
1c00297c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002980:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002984:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002988:	50000c00 	b	12(0xc) # 1c002994 <PS_StoreChar+0xf4>
1c00298c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002990:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002994:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002998:	00150184 	move	$r4,$r12
1c00299c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029a0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029a8:	4c000020 	jirl	$r0,$r1,0

1c0029ac <PS_Empty>:
PS_Empty():
1c0029ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029bc:	57f733ff 	bl	-2256(0xffff730) # 1c0020ec <SendHead>
1c0029c0:	57f777ff 	bl	-2188(0xffff774) # 1c002134 <SendAddr>
1c0029c4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0029c8:	57f7ffff 	bl	-2052(0xffff7fc) # 1c0021c4 <SendFlag>
1c0029cc:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0029d0:	57f82fff 	bl	-2004(0xffff82c) # 1c0021fc <SendLength>
1c0029d4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0029d8:	57f873ff 	bl	-1936(0xffff870) # 1c002248 <Sendcmd>
1c0029dc:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0029e0:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0029e4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0029e8:	00150184 	move	$r4,$r12
1c0029ec:	57f897ff 	bl	-1900(0xffff894) # 1c002280 <SendCheck>
1c0029f0:	1400004c 	lu12i.w	$r12,2(0x2)
1c0029f4:	039c4184 	ori	$r4,$r12,0x710
1c0029f8:	57fa9fff 	bl	-1380(0xffffa9c) # 1c002494 <JudgeStr>
1c0029fc:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002a00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a04:	40001580 	beqz	$r12,20(0x14) # 1c002a18 <PS_Empty+0x6c>
1c002a08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a0c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002a10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a14:	50000c00 	b	12(0xc) # 1c002a20 <PS_Empty+0x74>
1c002a18:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002a1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a20:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a24:	00150184 	move	$r4,$r12
1c002a28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a34:	4c000020 	jirl	$r0,$r1,0

1c002a38 <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c002a38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a48:	0015008c 	move	$r12,$r4
1c002a4c:	001500ae 	move	$r14,$r5
1c002a50:	001500cd 	move	$r13,$r6
1c002a54:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c002a58:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a5c:	001501cc 	move	$r12,$r14
1c002a60:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002a64:	001501ac 	move	$r12,$r13
1c002a68:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002a6c:	57f683ff 	bl	-2432(0xffff680) # 1c0020ec <SendHead>
1c002a70:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c002134 <SendAddr>
1c002a74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a78:	57f74fff 	bl	-2228(0xffff74c) # 1c0021c4 <SendFlag>
1c002a7c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002a80:	57f77fff 	bl	-2180(0xffff77c) # 1c0021fc <SendLength>
1c002a84:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c002a88:	57f7c3ff 	bl	-2112(0xffff7c0) # 1c002248 <Sendcmd>
1c002a8c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002a90:	00150184 	move	$r4,$r12
1c002a94:	57f613ff 	bl	-2544(0xffff610) # 1c0020a4 <MYUSART_SendData>
1c002a98:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002a9c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002aa0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002aa4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002aa8:	00150184 	move	$r4,$r12
1c002aac:	57f5fbff 	bl	-2568(0xffff5f8) # 1c0020a4 <MYUSART_SendData>
1c002ab0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002ab4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ab8:	00150184 	move	$r4,$r12
1c002abc:	57f5ebff 	bl	-2584(0xffff5e8) # 1c0020a4 <MYUSART_SendData>
1c002ac0:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002ac4:	0044a18c 	srli.w	$r12,$r12,0x8
1c002ac8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002acc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ad0:	00150184 	move	$r4,$r12
1c002ad4:	57f5d3ff 	bl	-2608(0xffff5d0) # 1c0020a4 <MYUSART_SendData>
1c002ad8:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ae0:	00150184 	move	$r4,$r12
1c002ae4:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c0020a4 <MYUSART_SendData>
1c002ae8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002aec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002af0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002af4:	0044a18c 	srli.w	$r12,$r12,0x8
1c002af8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002afc:	001031ac 	add.w	$r12,$r13,$r12
1c002b00:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b04:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002b08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b0c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b10:	001031ac 	add.w	$r12,$r13,$r12
1c002b14:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b18:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b1c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002b20:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b24:	001031ac 	add.w	$r12,$r13,$r12
1c002b28:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b2c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b38:	001031ac 	add.w	$r12,$r13,$r12
1c002b3c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b40:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c002b44:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002b48:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002b4c:	00150184 	move	$r4,$r12
1c002b50:	57f733ff 	bl	-2256(0xffff730) # 1c002280 <SendCheck>
1c002b54:	1400004c 	lu12i.w	$r12,2(0x2)
1c002b58:	039c4184 	ori	$r4,$r12,0x710
1c002b5c:	57f93bff 	bl	-1736(0xffff938) # 1c002494 <JudgeStr>
1c002b60:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002b64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b68:	40008580 	beqz	$r12,132(0x84) # 1c002bec <PS_HighSpeedSearch+0x1b4>
1c002b6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b70:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002b74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b7c:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c002b80:	2a00018c 	ld.bu	$r12,$r12,0
1c002b84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b88:	0040a18c 	slli.w	$r12,$r12,0x8
1c002b8c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b94:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c002b98:	2a00018c 	ld.bu	$r12,$r12,0
1c002b9c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ba0:	001031ac 	add.w	$r12,$r13,$r12
1c002ba4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002ba8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002bac:	2940018d 	st.h	$r13,$r12,0
1c002bb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bb4:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c002bb8:	2a00018c 	ld.bu	$r12,$r12,0
1c002bbc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bc0:	0040a18c 	slli.w	$r12,$r12,0x8
1c002bc4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bcc:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002bd0:	2a00018c 	ld.bu	$r12,$r12,0
1c002bd4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bd8:	001031ac 	add.w	$r12,$r13,$r12
1c002bdc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002be0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002be4:	2940098d 	st.h	$r13,$r12,2(0x2)
1c002be8:	50000c00 	b	12(0xc) # 1c002bf4 <PS_HighSpeedSearch+0x1bc>
1c002bec:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002bf0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002bf4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002bf8:	00150184 	move	$r4,$r12
1c002bfc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c00:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c08:	4c000020 	jirl	$r0,$r1,0

1c002c0c <ShowErrMessage>:
ShowErrMessage():
1c002c0c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c10:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c14:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c1c:	0015008c 	move	$r12,$r4
1c002c20:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002c24:	54181c00 	bl	6172(0x181c) # 1c004440 <OLED_CLS>
1c002c28:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c2c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c30:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c34:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002c38:	541b5800 	bl	7000(0x1b58) # 1c004790 <OLED_ShowCN_STR>
1c002c3c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c40:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002c44:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c48:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c4c:	541b4400 	bl	6980(0x1b44) # 1c004790 <OLED_ShowCN_STR>
1c002c50:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c002c54:	03bead8c 	ori	$r12,$r12,0xfab
1c002c58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c5c:	50001400 	b	20(0x14) # 1c002c70 <ShowErrMessage+0x64>
1c002c60:	03400000 	andi	$r0,$r0,0x0
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	03400000 	andi	$r0,$r0,0x0
1c002c70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c74:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c78:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c7c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c60 <ShowErrMessage+0x54>
1c002c80:	5417c000 	bl	6080(0x17c0) # 1c004440 <OLED_CLS>
1c002c84:	02801407 	addi.w	$r7,$r0,5(0x5)
1c002c88:	02812006 	addi.w	$r6,$r0,72(0x48)
1c002c8c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c90:	02806404 	addi.w	$r4,$r0,25(0x19)
1c002c94:	541afc00 	bl	6908(0x1afc) # 1c004790 <OLED_ShowCN_STR>
1c002c98:	5417a800 	bl	6056(0x17a8) # 1c004440 <OLED_CLS>
1c002c9c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002ca0:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002ca4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ca8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002cac:	541ae400 	bl	6884(0x1ae4) # 1c004790 <OLED_ShowCN_STR>
1c002cb0:	03400000 	andi	$r0,$r0,0x0
1c002cb4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cb8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cbc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002cc0:	4c000020 	jirl	$r0,$r1,0

1c002cc4 <Add_FR>:
Add_FR():
1c002cc4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cc8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ccc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cd0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cd4:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002cd8:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002cdc:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002ce0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002ce4:	680435ac 	bltu	$r13,$r12,1076(0x434) # 1c003118 <Add_FR+0x454>
1c002ce8:	0040898d 	slli.w	$r13,$r12,0x2
1c002cec:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c002cf0:	028bc18c 	addi.w	$r12,$r12,752(0x2f0)
1c002cf4:	001031ac 	add.w	$r12,$r13,$r12
1c002cf8:	2880018c 	ld.w	$r12,$r12,0
1c002cfc:	4c000180 	jirl	$r0,$r12,0
1c002d00:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002d04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d08:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002d0c:	54173400 	bl	5940(0x1734) # 1c004440 <OLED_CLS>
1c002d10:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002d14:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002d18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d1c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d20:	541a7000 	bl	6768(0x1a70) # 1c004790 <OLED_ShowCN_STR>
1c002d24:	57f933ff 	bl	-1744(0xffff930) # 1c002654 <PS_GetImage>
1c002d28:	0015008c 	move	$r12,$r4
1c002d2c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002d30:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d34:	44006980 	bnez	$r12,104(0x68) # 1c002d9c <Add_FR+0xd8>
1c002d38:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002d3c:	57f9a7ff 	bl	-1628(0xffff9a4) # 1c0026e0 <PS_GenChar>
1c002d40:	0015008c 	move	$r12,$r4
1c002d44:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002d48:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d4c:	44004180 	bnez	$r12,64(0x40) # 1c002d8c <Add_FR+0xc8>
1c002d50:	5416f000 	bl	5872(0x16f0) # 1c004440 <OLED_CLS>
1c002d54:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d58:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002d5c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d60:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002d64:	541a2c00 	bl	6700(0x1a2c) # 1c004790 <OLED_ShowCN_STR>
1c002d68:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002d6c:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002d70:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d74:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002d78:	541a1800 	bl	6680(0x1a18) # 1c004790 <OLED_ShowCN_STR>
1c002d7c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002d80:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d84:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002d88:	50039000 	b	912(0x390) # 1c003118 <Add_FR+0x454>
1c002d8c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d90:	00150184 	move	$r4,$r12
1c002d94:	57fe7bff 	bl	-392(0xffffe78) # 1c002c0c <ShowErrMessage>
1c002d98:	50038000 	b	896(0x380) # 1c003118 <Add_FR+0x454>
1c002d9c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002da0:	00150184 	move	$r4,$r12
1c002da4:	57fe6bff 	bl	-408(0xffffe68) # 1c002c0c <ShowErrMessage>
1c002da8:	50037000 	b	880(0x370) # 1c003118 <Add_FR+0x454>
1c002dac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002db0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002db4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002db8:	54168800 	bl	5768(0x1688) # 1c004440 <OLED_CLS>
1c002dbc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002dc0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002dc4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002dc8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002dcc:	5419c400 	bl	6596(0x19c4) # 1c004790 <OLED_ShowCN_STR>
1c002dd0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002dd4:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002dd8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ddc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002de0:	5419b000 	bl	6576(0x19b0) # 1c004790 <OLED_ShowCN_STR>
1c002de4:	57f873ff 	bl	-1936(0xffff870) # 1c002654 <PS_GetImage>
1c002de8:	0015008c 	move	$r12,$r4
1c002dec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002df0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002df4:	44006980 	bnez	$r12,104(0x68) # 1c002e5c <Add_FR+0x198>
1c002df8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002dfc:	57f8e7ff 	bl	-1820(0xffff8e4) # 1c0026e0 <PS_GenChar>
1c002e00:	0015008c 	move	$r12,$r4
1c002e04:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002e08:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e0c:	44004180 	bnez	$r12,64(0x40) # 1c002e4c <Add_FR+0x188>
1c002e10:	54163000 	bl	5680(0x1630) # 1c004440 <OLED_CLS>
1c002e14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e18:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e1c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e20:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e24:	54196c00 	bl	6508(0x196c) # 1c004790 <OLED_ShowCN_STR>
1c002e28:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e2c:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e30:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e34:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e38:	54195800 	bl	6488(0x1958) # 1c004790 <OLED_ShowCN_STR>
1c002e3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002e40:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002e44:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e48:	5002d000 	b	720(0x2d0) # 1c003118 <Add_FR+0x454>
1c002e4c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e50:	00150184 	move	$r4,$r12
1c002e54:	57fdbbff 	bl	-584(0xffffdb8) # 1c002c0c <ShowErrMessage>
1c002e58:	5002c000 	b	704(0x2c0) # 1c003118 <Add_FR+0x454>
1c002e5c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e60:	00150184 	move	$r4,$r12
1c002e64:	57fdabff 	bl	-600(0xffffda8) # 1c002c0c <ShowErrMessage>
1c002e68:	5002b000 	b	688(0x2b0) # 1c003118 <Add_FR+0x454>
1c002e6c:	5415d400 	bl	5588(0x15d4) # 1c004440 <OLED_CLS>
1c002e70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e74:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e78:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e7c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e80:	54191000 	bl	6416(0x1910) # 1c004790 <OLED_ShowCN_STR>
1c002e84:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e88:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e8c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e90:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e94:	5418fc00 	bl	6396(0x18fc) # 1c004790 <OLED_ShowCN_STR>
1c002e98:	57f8f3ff 	bl	-1808(0xffff8f0) # 1c002788 <PS_Match>
1c002e9c:	0015008c 	move	$r12,$r4
1c002ea0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002ea4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002ea8:	44006980 	bnez	$r12,104(0x68) # 1c002f10 <Add_FR+0x24c>
1c002eac:	54159400 	bl	5524(0x1594) # 1c004440 <OLED_CLS>
1c002eb0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002eb4:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002eb8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ebc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002ec0:	5418d000 	bl	6352(0x18d0) # 1c004790 <OLED_ShowCN_STR>
1c002ec4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002ec8:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002ecc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ed0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002ed4:	5418bc00 	bl	6332(0x18bc) # 1c004790 <OLED_ShowCN_STR>
1c002ed8:	54156800 	bl	5480(0x1568) # 1c004440 <OLED_CLS>
1c002edc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ee0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002ee4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ee8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002eec:	5418a400 	bl	6308(0x18a4) # 1c004790 <OLED_ShowCN_STR>
1c002ef0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ef4:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002ef8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002efc:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f00:	54189000 	bl	6288(0x1890) # 1c004790 <OLED_ShowCN_STR>
1c002f04:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f08:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002f0c:	50020c00 	b	524(0x20c) # 1c003118 <Add_FR+0x454>
1c002f10:	54153000 	bl	5424(0x1530) # 1c004440 <OLED_CLS>
1c002f14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f18:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f1c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f20:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f24:	54186c00 	bl	6252(0x186c) # 1c004790 <OLED_ShowCN_STR>
1c002f28:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f2c:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002f30:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f34:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f38:	54185800 	bl	6232(0x1858) # 1c004790 <OLED_ShowCN_STR>
1c002f3c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f40:	00150184 	move	$r4,$r12
1c002f44:	57fccbff 	bl	-824(0xffffcc8) # 1c002c0c <ShowErrMessage>
1c002f48:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002f4c:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002f50:	5001c800 	b	456(0x1c8) # 1c003118 <Add_FR+0x454>
1c002f54:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002f58:	03bfc98c 	ori	$r12,$r12,0xff2
1c002f5c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f60:	50001400 	b	20(0x14) # 1c002f74 <Add_FR+0x2b0>
1c002f64:	03400000 	andi	$r0,$r0,0x0
1c002f68:	03400000 	andi	$r0,$r0,0x0
1c002f6c:	03400000 	andi	$r0,$r0,0x0
1c002f70:	03400000 	andi	$r0,$r0,0x0
1c002f74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f7c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002f80:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002f64 <Add_FR+0x2a0>
1c002f84:	57f893ff 	bl	-1904(0xffff890) # 1c002814 <PS_RegModel>
1c002f88:	0015008c 	move	$r12,$r4
1c002f8c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002f90:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f94:	44001180 	bnez	$r12,16(0x10) # 1c002fa4 <Add_FR+0x2e0>
1c002f98:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002f9c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002fa0:	50017800 	b	376(0x178) # 1c003118 <Add_FR+0x454>
1c002fa4:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002fa8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002fac:	00150184 	move	$r4,$r12
1c002fb0:	57fc5fff 	bl	-932(0xffffc5c) # 1c002c0c <ShowErrMessage>
1c002fb4:	50016400 	b	356(0x164) # 1c003118 <Add_FR+0x454>
1c002fb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fbc:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002fc0:	50009000 	b	144(0x90) # 1c003050 <Add_FR+0x38c>
1c002fc4:	5405f800 	bl	1528(0x5f8) # 1c0035bc <MatrixKey>
1c002fc8:	0015008c 	move	$r12,$r4
1c002fcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002fd0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002fd4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c002fd8:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c002ff4 <Add_FR+0x330>
1c002fdc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002fe0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002fe4:	40001180 	beqz	$r12,16(0x10) # 1c002ff4 <Add_FR+0x330>
1c002fe8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002fec:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002ff0:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002ff4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002ff8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c002ffc:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00301c <Add_FR+0x358>
1c003000:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003004:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c003008:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c00300c:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c00301c <Add_FR+0x358>
1c003010:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003014:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003018:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00301c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003020:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c003024:	02bee0c6 	addi.w	$r6,$r6,-72(0xfb8)
1c003028:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00302c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003030:	54143c00 	bl	5180(0x143c) # 1c00446c <OLED_ShowStr>
1c003034:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003038:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00303c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c003040:	00150186 	move	$r6,$r12
1c003044:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003048:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c00304c:	541a8c00 	bl	6796(0x1a8c) # 1c004ad8 <OLED_ShowNum>
1c003050:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003054:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003058:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c002fc4 <Add_FR+0x300>
1c00305c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003060:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003064:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003068:	00150185 	move	$r5,$r12
1c00306c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c003070:	57f833ff 	bl	-2000(0xffff830) # 1c0028a0 <PS_StoreChar>
1c003074:	0015008c 	move	$r12,$r4
1c003078:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00307c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003080:	44008580 	bnez	$r12,132(0x84) # 1c003104 <Add_FR+0x440>
1c003084:	5413bc00 	bl	5052(0x13bc) # 1c004440 <OLED_CLS>
1c003088:	02801807 	addi.w	$r7,$r0,6(0x6)
1c00308c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c003090:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003094:	02802804 	addi.w	$r4,$r0,10(0xa)
1c003098:	5416f800 	bl	5880(0x16f8) # 1c004790 <OLED_ShowCN_STR>
1c00309c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0030a0:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0030a4:	02bce0c6 	addi.w	$r6,$r6,-200(0xf38)
1c0030a8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0030ac:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0030b0:	5413bc00 	bl	5052(0x13bc) # 1c00446c <OLED_ShowStr>
1c0030b4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0030b8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0030bc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0030c0:	00150186 	move	$r6,$r12
1c0030c4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0030c8:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c0030cc:	541a0c00 	bl	6668(0x1a0c) # 1c004ad8 <OLED_ShowNum>
1c0030d0:	14002aac 	lu12i.w	$r12,341(0x155)
1c0030d4:	03bf598c 	ori	$r12,$r12,0xfd6
1c0030d8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030dc:	50001400 	b	20(0x14) # 1c0030f0 <Add_FR+0x42c>
1c0030e0:	03400000 	andi	$r0,$r0,0x0
1c0030e4:	03400000 	andi	$r0,$r0,0x0
1c0030e8:	03400000 	andi	$r0,$r0,0x0
1c0030ec:	03400000 	andi	$r0,$r0,0x0
1c0030f0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0030f8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0030fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0030e0 <Add_FR+0x41c>
1c003100:	50005c00 	b	92(0x5c) # 1c00315c <Add_FR+0x498>
1c003104:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c003108:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00310c:	00150184 	move	$r4,$r12
1c003110:	57faffff 	bl	-1284(0xffffafc) # 1c002c0c <ShowErrMessage>
1c003114:	03400000 	andi	$r0,$r0,0x0
1c003118:	14000e2c 	lu12i.w	$r12,113(0x71)
1c00311c:	03bfc98c 	ori	$r12,$r12,0xff2
1c003120:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003124:	50001400 	b	20(0x14) # 1c003138 <Add_FR+0x474>
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	03400000 	andi	$r0,$r0,0x0
1c003130:	03400000 	andi	$r0,$r0,0x0
1c003134:	03400000 	andi	$r0,$r0,0x0
1c003138:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00313c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003140:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003144:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003128 <Add_FR+0x464>
1c003148:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00314c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003150:	580009ac 	beq	$r13,$r12,8(0x8) # 1c003158 <Add_FR+0x494>
1c003154:	53fb8bff 	b	-1144(0xffffb88) # 1c002cdc <Add_FR+0x18>
1c003158:	03400000 	andi	$r0,$r0,0x0
1c00315c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003160:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003164:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003168:	4c000020 	jirl	$r0,$r1,0

1c00316c <press_FR>:
press_FR():
1c00316c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003170:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003174:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003178:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00317c:	5412c400 	bl	4804(0x12c4) # 1c004440 <OLED_CLS>
1c003180:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003184:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003188:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00318c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003190:	54160000 	bl	5632(0x1600) # 1c004790 <OLED_ShowCN_STR>
1c003194:	57f4c3ff 	bl	-2880(0xffff4c0) # 1c002654 <PS_GetImage>
1c003198:	0015008c 	move	$r12,$r4
1c00319c:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0031a0:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0031a4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003194 <press_FR+0x28>
1c0031a8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0031ac:	57f537ff 	bl	-2764(0xffff534) # 1c0026e0 <PS_GenChar>
1c0031b0:	0015008c 	move	$r12,$r4
1c0031b4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0031b8:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0031bc:	4400f580 	bnez	$r12,244(0xf4) # 1c0032b0 <press_FR+0x144>
1c0031c0:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c0031c4:	00150187 	move	$r7,$r12
1c0031c8:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c0031cc:	00150005 	move	$r5,$r0
1c0031d0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0031d4:	57f867ff 	bl	-1948(0xffff864) # 1c002a38 <PS_HighSpeedSearch>
1c0031d8:	0015008c 	move	$r12,$r4
1c0031dc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0031e0:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0031e4:	44008d80 	bnez	$r12,140(0x8c) # 1c003270 <press_FR+0x104>
1c0031e8:	54125800 	bl	4696(0x1258) # 1c004440 <OLED_CLS>
1c0031ec:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0031f0:	5436f800 	bl	14072(0x36f8) # 1c0068e8 <interface_display>
1c0031f4:	5401c400 	bl	452(0x1c4) # 1c0033b8 <SG90_Open>
1c0031f8:	540e0000 	bl	3584(0xe00) # 1c003ff8 <Buzzer_one>
1c0031fc:	1400472c 	lu12i.w	$r12,569(0x239)
1c003200:	03bee58c 	ori	$r12,$r12,0xfb9
1c003204:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003208:	50001400 	b	20(0x14) # 1c00321c <press_FR+0xb0>
1c00320c:	03400000 	andi	$r0,$r0,0x0
1c003210:	03400000 	andi	$r0,$r0,0x0
1c003214:	03400000 	andi	$r0,$r0,0x0
1c003218:	03400000 	andi	$r0,$r0,0x0
1c00321c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003220:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003224:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003228:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00320c <press_FR+0xa0>
1c00322c:	540dcc00 	bl	3532(0xdcc) # 1c003ff8 <Buzzer_one>
1c003230:	5401b400 	bl	436(0x1b4) # 1c0033e4 <SG90_Close>
1c003234:	02802404 	addi.w	$r4,$r0,9(0x9)
1c003238:	5436b000 	bl	14000(0x36b0) # 1c0068e8 <interface_display>
1c00323c:	1400472c 	lu12i.w	$r12,569(0x239)
1c003240:	03bee58c 	ori	$r12,$r12,0xfb9
1c003244:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003248:	50001400 	b	20(0x14) # 1c00325c <press_FR+0xf0>
1c00324c:	03400000 	andi	$r0,$r0,0x0
1c003250:	03400000 	andi	$r0,$r0,0x0
1c003254:	03400000 	andi	$r0,$r0,0x0
1c003258:	03400000 	andi	$r0,$r0,0x0
1c00325c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003260:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003264:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003268:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00324c <press_FR+0xe0>
1c00326c:	50006000 	b	96(0x60) # 1c0032cc <press_FR+0x160>
1c003270:	5411d000 	bl	4560(0x11d0) # 1c004440 <OLED_CLS>
1c003274:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003278:	54367000 	bl	13936(0x3670) # 1c0068e8 <interface_display>
1c00327c:	540c9800 	bl	3224(0xc98) # 1c003f14 <Buzzer>
1c003280:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c003284:	03bf918c 	ori	$r12,$r12,0xfe4
1c003288:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00328c:	50001400 	b	20(0x14) # 1c0032a0 <press_FR+0x134>
1c003290:	03400000 	andi	$r0,$r0,0x0
1c003294:	03400000 	andi	$r0,$r0,0x0
1c003298:	03400000 	andi	$r0,$r0,0x0
1c00329c:	03400000 	andi	$r0,$r0,0x0
1c0032a0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0032a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032a8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0032ac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003290 <press_FR+0x124>
1c0032b0:	54119000 	bl	4496(0x1190) # 1c004440 <OLED_CLS>
1c0032b4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0032b8:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c0032bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0032c0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0032c4:	5414cc00 	bl	5324(0x14cc) # 1c004790 <OLED_ShowCN_STR>
1c0032c8:	53fecfff 	b	-308(0xffffecc) # 1c003194 <press_FR+0x28>
1c0032cc:	03400000 	andi	$r0,$r0,0x0
1c0032d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0032d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0032d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032dc:	4c000020 	jirl	$r0,$r1,0

1c0032e0 <Del_FR_Lib>:
Del_FR_Lib():
1c0032e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0032e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0032ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032f0:	57f6bfff 	bl	-2372(0xffff6bc) # 1c0029ac <PS_Empty>
1c0032f4:	0015008c 	move	$r12,$r4
1c0032f8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0032fc:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003300:	44000d80 	bnez	$r12,12(0xc) # 1c00330c <Del_FR_Lib+0x2c>
1c003304:	540c1000 	bl	3088(0xc10) # 1c003f14 <Buzzer>
1c003308:	50001000 	b	16(0x10) # 1c003318 <Del_FR_Lib+0x38>
1c00330c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003310:	00150184 	move	$r4,$r12
1c003314:	57f8fbff 	bl	-1800(0xffff8f8) # 1c002c0c <ShowErrMessage>
1c003318:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00331c:	03bf918c 	ori	$r12,$r12,0xfe4
1c003320:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003324:	50001400 	b	20(0x14) # 1c003338 <Del_FR_Lib+0x58>
1c003328:	03400000 	andi	$r0,$r0,0x0
1c00332c:	03400000 	andi	$r0,$r0,0x0
1c003330:	03400000 	andi	$r0,$r0,0x0
1c003334:	03400000 	andi	$r0,$r0,0x0
1c003338:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00333c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003340:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003344:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003328 <Del_FR_Lib+0x48>
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003350:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003354:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003358:	4c000020 	jirl	$r0,$r1,0

1c00335c <SG90_GetAngle>:
SG90_GetAngle():
1c00335c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003360:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003364:	29806076 	st.w	$r22,$r3,24(0x18)
1c003368:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00336c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003370:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003374:	57ea47ff 	bl	-5564(0xfffea44) # 1c001db8 <pwm_steering_engine_set>
1c003378:	03400000 	andi	$r0,$r0,0x0
1c00337c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003380:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003384:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003388:	4c000020 	jirl	$r0,$r1,0

1c00338c <SG90_Init>:
SG90_Init():
1c00338c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003390:	29803061 	st.w	$r1,$r3,12(0xc)
1c003394:	29802076 	st.w	$r22,$r3,8(0x8)
1c003398:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00339c:	00150004 	move	$r4,$r0
1c0033a0:	57ffbfff 	bl	-68(0xfffffbc) # 1c00335c <SG90_GetAngle>
1c0033a4:	03400000 	andi	$r0,$r0,0x0
1c0033a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033b4:	4c000020 	jirl	$r0,$r1,0

1c0033b8 <SG90_Open>:
SG90_Open():
1c0033b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033c8:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c0033cc:	57ff93ff 	bl	-112(0xfffff90) # 1c00335c <SG90_GetAngle>
1c0033d0:	03400000 	andi	$r0,$r0,0x0
1c0033d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033e0:	4c000020 	jirl	$r0,$r1,0

1c0033e4 <SG90_Close>:
SG90_Close():
1c0033e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033f4:	00150004 	move	$r4,$r0
1c0033f8:	57ff67ff 	bl	-156(0xfffff64) # 1c00335c <SG90_GetAngle>
1c0033fc:	03400000 	andi	$r0,$r0,0x0
1c003400:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003404:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003408:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00340c:	4c000020 	jirl	$r0,$r1,0

1c003410 <hw_uart_init>:
hw_uart_init():
1c003410:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003414:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003418:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00341c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003420:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003424:	02b0318c 	addi.w	$r12,$r12,-1012(0xc0c)
1c003428:	2880018e 	ld.w	$r14,$r12,0
1c00342c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003430:	002135cc 	div.wu	$r12,$r14,$r13
1c003434:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00343c <hw_uart_init+0x2c>
1c003438:	002a0007 	break	0x7
1c00343c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003440:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003444:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003448:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c00344c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003454:	0044a18d 	srli.w	$r13,$r12,0x8
1c003458:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00345c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003460:	2900058d 	st.b	$r13,$r12,1(0x1)
1c003464:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003468:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00346c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003470:	2900018d 	st.b	$r13,$r12,0
1c003474:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003478:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c00347c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003480:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003484:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c003488:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00348c:	03400000 	andi	$r0,$r0,0x0
1c003490:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003494:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003498:	4c000020 	jirl	$r0,$r1,0

1c00349c <uart_write>:
uart_write():
1c00349c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0034a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034a8:	0015008c 	move	$r12,$r4
1c0034ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0034b0:	03400000 	andi	$r0,$r0,0x0
1c0034b4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0034b8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0034bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0034c0:	0340818c 	andi	$r12,$r12,0x20
1c0034c4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0034b4 <uart_write+0x18>
1c0034c8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0034cc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0034d0:	2900018d 	st.b	$r13,$r12,0
1c0034d4:	03400000 	andi	$r0,$r0,0x0
1c0034d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0034dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034e0:	4c000020 	jirl	$r0,$r1,0

1c0034e4 <uart_set_rx_th>:
uart_set_rx_th():
1c0034e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0034ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034f0:	0015008c 	move	$r12,$r4
1c0034f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0034f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0034fc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003500:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c00350c <uart_set_rx_th+0x28>
1c003504:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003508:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00350c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003510:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003514:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003518:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00351c:	0340fdad 	andi	$r13,$r13,0x3f
1c003520:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003524:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003528:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00352c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003530:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003534:	00005d8d 	ext.w.b	$r13,$r12
1c003538:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00353c:	0040998c 	slli.w	$r12,$r12,0x6
1c003540:	00005d8c 	ext.w.b	$r12,$r12
1c003544:	001531ac 	or	$r12,$r13,$r12
1c003548:	00005d8d 	ext.w.b	$r13,$r12
1c00354c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003550:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003554:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003558:	03400000 	andi	$r0,$r0,0x0
1c00355c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003560:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003564:	4c000020 	jirl	$r0,$r1,0

1c003568 <clkey>:
clkey():
1c003568:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00356c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003570:	29802076 	st.w	$r22,$r3,8(0x8)
1c003574:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003578:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00357c:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003580:	57e3abff 	bl	-7256(0xfffe3a8) # 1c001928 <gpio_write>
1c003584:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003588:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00358c:	57e39fff 	bl	-7268(0xfffe39c) # 1c001928 <gpio_write>
1c003590:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003594:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003598:	57e393ff 	bl	-7280(0xfffe390) # 1c001928 <gpio_write>
1c00359c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0035a0:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0035a4:	57e387ff 	bl	-7292(0xfffe384) # 1c001928 <gpio_write>
1c0035a8:	03400000 	andi	$r0,$r0,0x0
1c0035ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0035b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035b8:	4c000020 	jirl	$r0,$r1,0

1c0035bc <MatrixKey>:
MatrixKey():
1c0035bc:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c0035c0:	29827061 	st.w	$r1,$r3,156(0x9c)
1c0035c4:	29826076 	st.w	$r22,$r3,152(0x98)
1c0035c8:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c0035cc:	57ff9fff 	bl	-100(0xfffff9c) # 1c003568 <clkey>
1c0035d0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0035d4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0035d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035dc:	50001400 	b	20(0x14) # 1c0035f0 <MatrixKey+0x34>
1c0035e0:	03400000 	andi	$r0,$r0,0x0
1c0035e4:	03400000 	andi	$r0,$r0,0x0
1c0035e8:	03400000 	andi	$r0,$r0,0x0
1c0035ec:	03400000 	andi	$r0,$r0,0x0
1c0035f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035f8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0035fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0035e0 <MatrixKey+0x24>
1c003600:	00150005 	move	$r5,$r0
1c003604:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003608:	57e323ff 	bl	-7392(0xfffe320) # 1c001928 <gpio_write>
1c00360c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003610:	57e413ff 	bl	-7152(0xfffe410) # 1c001a20 <gpio_read>
1c003614:	0015008c 	move	$r12,$r4
1c003618:	44008180 	bnez	$r12,128(0x80) # 1c003698 <MatrixKey+0xdc>
1c00361c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003620:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003624:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003628:	50001400 	b	20(0x14) # 1c00363c <MatrixKey+0x80>
1c00362c:	03400000 	andi	$r0,$r0,0x0
1c003630:	03400000 	andi	$r0,$r0,0x0
1c003634:	03400000 	andi	$r0,$r0,0x0
1c003638:	03400000 	andi	$r0,$r0,0x0
1c00363c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003640:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003644:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003648:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00362c <MatrixKey+0x70>
1c00364c:	03400000 	andi	$r0,$r0,0x0
1c003650:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003654:	57e3cfff 	bl	-7220(0xfffe3cc) # 1c001a20 <gpio_read>
1c003658:	0015008c 	move	$r12,$r4
1c00365c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003650 <MatrixKey+0x94>
1c003660:	1400008c 	lu12i.w	$r12,4(0x4)
1c003664:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003668:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00366c:	50001400 	b	20(0x14) # 1c003680 <MatrixKey+0xc4>
1c003670:	03400000 	andi	$r0,$r0,0x0
1c003674:	03400000 	andi	$r0,$r0,0x0
1c003678:	03400000 	andi	$r0,$r0,0x0
1c00367c:	03400000 	andi	$r0,$r0,0x0
1c003680:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003684:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003688:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c00368c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003670 <MatrixKey+0xb4>
1c003690:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003694:	50086c00 	b	2156(0x86c) # 1c003f00 <MatrixKey+0x944>
1c003698:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00369c:	57e387ff 	bl	-7292(0xfffe384) # 1c001a20 <gpio_read>
1c0036a0:	0015008c 	move	$r12,$r4
1c0036a4:	44008180 	bnez	$r12,128(0x80) # 1c003724 <MatrixKey+0x168>
1c0036a8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0036ac:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0036b0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0036b4:	50001400 	b	20(0x14) # 1c0036c8 <MatrixKey+0x10c>
1c0036b8:	03400000 	andi	$r0,$r0,0x0
1c0036bc:	03400000 	andi	$r0,$r0,0x0
1c0036c0:	03400000 	andi	$r0,$r0,0x0
1c0036c4:	03400000 	andi	$r0,$r0,0x0
1c0036c8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0036cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036d0:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0036d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036b8 <MatrixKey+0xfc>
1c0036d8:	03400000 	andi	$r0,$r0,0x0
1c0036dc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0036e0:	57e343ff 	bl	-7360(0xfffe340) # 1c001a20 <gpio_read>
1c0036e4:	0015008c 	move	$r12,$r4
1c0036e8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0036dc <MatrixKey+0x120>
1c0036ec:	1400008c 	lu12i.w	$r12,4(0x4)
1c0036f0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0036f4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0036f8:	50001400 	b	20(0x14) # 1c00370c <MatrixKey+0x150>
1c0036fc:	03400000 	andi	$r0,$r0,0x0
1c003700:	03400000 	andi	$r0,$r0,0x0
1c003704:	03400000 	andi	$r0,$r0,0x0
1c003708:	03400000 	andi	$r0,$r0,0x0
1c00370c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003710:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003714:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003718:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036fc <MatrixKey+0x140>
1c00371c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003720:	5007e000 	b	2016(0x7e0) # 1c003f00 <MatrixKey+0x944>
1c003724:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003728:	57e2fbff 	bl	-7432(0xfffe2f8) # 1c001a20 <gpio_read>
1c00372c:	0015008c 	move	$r12,$r4
1c003730:	44008180 	bnez	$r12,128(0x80) # 1c0037b0 <MatrixKey+0x1f4>
1c003734:	1400008c 	lu12i.w	$r12,4(0x4)
1c003738:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00373c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003740:	50001400 	b	20(0x14) # 1c003754 <MatrixKey+0x198>
1c003744:	03400000 	andi	$r0,$r0,0x0
1c003748:	03400000 	andi	$r0,$r0,0x0
1c00374c:	03400000 	andi	$r0,$r0,0x0
1c003750:	03400000 	andi	$r0,$r0,0x0
1c003754:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003758:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00375c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003760:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003744 <MatrixKey+0x188>
1c003764:	03400000 	andi	$r0,$r0,0x0
1c003768:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00376c:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c001a20 <gpio_read>
1c003770:	0015008c 	move	$r12,$r4
1c003774:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003768 <MatrixKey+0x1ac>
1c003778:	1400008c 	lu12i.w	$r12,4(0x4)
1c00377c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003780:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003784:	50001400 	b	20(0x14) # 1c003798 <MatrixKey+0x1dc>
1c003788:	03400000 	andi	$r0,$r0,0x0
1c00378c:	03400000 	andi	$r0,$r0,0x0
1c003790:	03400000 	andi	$r0,$r0,0x0
1c003794:	03400000 	andi	$r0,$r0,0x0
1c003798:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00379c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037a0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0037a4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003788 <MatrixKey+0x1cc>
1c0037a8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0037ac:	50075400 	b	1876(0x754) # 1c003f00 <MatrixKey+0x944>
1c0037b0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0037b4:	57e26fff 	bl	-7572(0xfffe26c) # 1c001a20 <gpio_read>
1c0037b8:	0015008c 	move	$r12,$r4
1c0037bc:	44008180 	bnez	$r12,128(0x80) # 1c00383c <MatrixKey+0x280>
1c0037c0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0037c4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0037c8:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0037cc:	50001400 	b	20(0x14) # 1c0037e0 <MatrixKey+0x224>
1c0037d0:	03400000 	andi	$r0,$r0,0x0
1c0037d4:	03400000 	andi	$r0,$r0,0x0
1c0037d8:	03400000 	andi	$r0,$r0,0x0
1c0037dc:	03400000 	andi	$r0,$r0,0x0
1c0037e0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0037e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037e8:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c0037ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037d0 <MatrixKey+0x214>
1c0037f0:	03400000 	andi	$r0,$r0,0x0
1c0037f4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0037f8:	57e22bff 	bl	-7640(0xfffe228) # 1c001a20 <gpio_read>
1c0037fc:	0015008c 	move	$r12,$r4
1c003800:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0037f4 <MatrixKey+0x238>
1c003804:	1400008c 	lu12i.w	$r12,4(0x4)
1c003808:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00380c:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003810:	50001400 	b	20(0x14) # 1c003824 <MatrixKey+0x268>
1c003814:	03400000 	andi	$r0,$r0,0x0
1c003818:	03400000 	andi	$r0,$r0,0x0
1c00381c:	03400000 	andi	$r0,$r0,0x0
1c003820:	03400000 	andi	$r0,$r0,0x0
1c003824:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c003828:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00382c:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c003830:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003814 <MatrixKey+0x258>
1c003834:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003838:	5006c800 	b	1736(0x6c8) # 1c003f00 <MatrixKey+0x944>
1c00383c:	57fd2fff 	bl	-724(0xffffd2c) # 1c003568 <clkey>
1c003840:	00150005 	move	$r5,$r0
1c003844:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003848:	57e0e3ff 	bl	-7968(0xfffe0e0) # 1c001928 <gpio_write>
1c00384c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003850:	57e1d3ff 	bl	-7728(0xfffe1d0) # 1c001a20 <gpio_read>
1c003854:	0015008c 	move	$r12,$r4
1c003858:	44008180 	bnez	$r12,128(0x80) # 1c0038d8 <MatrixKey+0x31c>
1c00385c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003860:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003864:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c003868:	50001400 	b	20(0x14) # 1c00387c <MatrixKey+0x2c0>
1c00386c:	03400000 	andi	$r0,$r0,0x0
1c003870:	03400000 	andi	$r0,$r0,0x0
1c003874:	03400000 	andi	$r0,$r0,0x0
1c003878:	03400000 	andi	$r0,$r0,0x0
1c00387c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c003880:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003884:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c003888:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00386c <MatrixKey+0x2b0>
1c00388c:	03400000 	andi	$r0,$r0,0x0
1c003890:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003894:	57e18fff 	bl	-7796(0xfffe18c) # 1c001a20 <gpio_read>
1c003898:	0015008c 	move	$r12,$r4
1c00389c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003890 <MatrixKey+0x2d4>
1c0038a0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0038a4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0038a8:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c0038ac:	50001400 	b	20(0x14) # 1c0038c0 <MatrixKey+0x304>
1c0038b0:	03400000 	andi	$r0,$r0,0x0
1c0038b4:	03400000 	andi	$r0,$r0,0x0
1c0038b8:	03400000 	andi	$r0,$r0,0x0
1c0038bc:	03400000 	andi	$r0,$r0,0x0
1c0038c0:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c0038c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0038c8:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c0038cc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038b0 <MatrixKey+0x2f4>
1c0038d0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0038d4:	50062c00 	b	1580(0x62c) # 1c003f00 <MatrixKey+0x944>
1c0038d8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0038dc:	57e147ff 	bl	-7868(0xfffe144) # 1c001a20 <gpio_read>
1c0038e0:	0015008c 	move	$r12,$r4
1c0038e4:	44008180 	bnez	$r12,128(0x80) # 1c003964 <MatrixKey+0x3a8>
1c0038e8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0038ec:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0038f0:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c0038f4:	50001400 	b	20(0x14) # 1c003908 <MatrixKey+0x34c>
1c0038f8:	03400000 	andi	$r0,$r0,0x0
1c0038fc:	03400000 	andi	$r0,$r0,0x0
1c003900:	03400000 	andi	$r0,$r0,0x0
1c003904:	03400000 	andi	$r0,$r0,0x0
1c003908:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c00390c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003910:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c003914:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038f8 <MatrixKey+0x33c>
1c003918:	03400000 	andi	$r0,$r0,0x0
1c00391c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003920:	57e103ff 	bl	-7936(0xfffe100) # 1c001a20 <gpio_read>
1c003924:	0015008c 	move	$r12,$r4
1c003928:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00391c <MatrixKey+0x360>
1c00392c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003930:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003934:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c003938:	50001400 	b	20(0x14) # 1c00394c <MatrixKey+0x390>
1c00393c:	03400000 	andi	$r0,$r0,0x0
1c003940:	03400000 	andi	$r0,$r0,0x0
1c003944:	03400000 	andi	$r0,$r0,0x0
1c003948:	03400000 	andi	$r0,$r0,0x0
1c00394c:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c003950:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003954:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c003958:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00393c <MatrixKey+0x380>
1c00395c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003960:	5005a000 	b	1440(0x5a0) # 1c003f00 <MatrixKey+0x944>
1c003964:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003968:	57e0bbff 	bl	-8008(0xfffe0b8) # 1c001a20 <gpio_read>
1c00396c:	0015008c 	move	$r12,$r4
1c003970:	44008180 	bnez	$r12,128(0x80) # 1c0039f0 <MatrixKey+0x434>
1c003974:	1400008c 	lu12i.w	$r12,4(0x4)
1c003978:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00397c:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c003980:	50001400 	b	20(0x14) # 1c003994 <MatrixKey+0x3d8>
1c003984:	03400000 	andi	$r0,$r0,0x0
1c003988:	03400000 	andi	$r0,$r0,0x0
1c00398c:	03400000 	andi	$r0,$r0,0x0
1c003990:	03400000 	andi	$r0,$r0,0x0
1c003994:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c003998:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00399c:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c0039a0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003984 <MatrixKey+0x3c8>
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0039ac:	57e077ff 	bl	-8076(0xfffe074) # 1c001a20 <gpio_read>
1c0039b0:	0015008c 	move	$r12,$r4
1c0039b4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0039a8 <MatrixKey+0x3ec>
1c0039b8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0039bc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0039c0:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c0039c4:	50001400 	b	20(0x14) # 1c0039d8 <MatrixKey+0x41c>
1c0039c8:	03400000 	andi	$r0,$r0,0x0
1c0039cc:	03400000 	andi	$r0,$r0,0x0
1c0039d0:	03400000 	andi	$r0,$r0,0x0
1c0039d4:	03400000 	andi	$r0,$r0,0x0
1c0039d8:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c0039dc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039e0:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c0039e4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0039c8 <MatrixKey+0x40c>
1c0039e8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0039ec:	50051400 	b	1300(0x514) # 1c003f00 <MatrixKey+0x944>
1c0039f0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0039f4:	57e02fff 	bl	-8148(0xfffe02c) # 1c001a20 <gpio_read>
1c0039f8:	0015008c 	move	$r12,$r4
1c0039fc:	44008180 	bnez	$r12,128(0x80) # 1c003a7c <MatrixKey+0x4c0>
1c003a00:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a04:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a08:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c003a0c:	50001400 	b	20(0x14) # 1c003a20 <MatrixKey+0x464>
1c003a10:	03400000 	andi	$r0,$r0,0x0
1c003a14:	03400000 	andi	$r0,$r0,0x0
1c003a18:	03400000 	andi	$r0,$r0,0x0
1c003a1c:	03400000 	andi	$r0,$r0,0x0
1c003a20:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c003a24:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a28:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c003a2c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a10 <MatrixKey+0x454>
1c003a30:	03400000 	andi	$r0,$r0,0x0
1c003a34:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003a38:	57dfebff 	bl	-8216(0xfffdfe8) # 1c001a20 <gpio_read>
1c003a3c:	0015008c 	move	$r12,$r4
1c003a40:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003a34 <MatrixKey+0x478>
1c003a44:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a48:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a4c:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c003a50:	50001400 	b	20(0x14) # 1c003a64 <MatrixKey+0x4a8>
1c003a54:	03400000 	andi	$r0,$r0,0x0
1c003a58:	03400000 	andi	$r0,$r0,0x0
1c003a5c:	03400000 	andi	$r0,$r0,0x0
1c003a60:	03400000 	andi	$r0,$r0,0x0
1c003a64:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c003a68:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a6c:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c003a70:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a54 <MatrixKey+0x498>
1c003a74:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003a78:	50048800 	b	1160(0x488) # 1c003f00 <MatrixKey+0x944>
1c003a7c:	57faefff 	bl	-1300(0xffffaec) # 1c003568 <clkey>
1c003a80:	00150005 	move	$r5,$r0
1c003a84:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003a88:	57dea3ff 	bl	-8544(0xfffdea0) # 1c001928 <gpio_write>
1c003a8c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003a90:	57df93ff 	bl	-8304(0xfffdf90) # 1c001a20 <gpio_read>
1c003a94:	0015008c 	move	$r12,$r4
1c003a98:	44008180 	bnez	$r12,128(0x80) # 1c003b18 <MatrixKey+0x55c>
1c003a9c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003aa0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003aa4:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c003aa8:	50001400 	b	20(0x14) # 1c003abc <MatrixKey+0x500>
1c003aac:	03400000 	andi	$r0,$r0,0x0
1c003ab0:	03400000 	andi	$r0,$r0,0x0
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	03400000 	andi	$r0,$r0,0x0
1c003abc:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c003ac0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ac4:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c003ac8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003aac <MatrixKey+0x4f0>
1c003acc:	03400000 	andi	$r0,$r0,0x0
1c003ad0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003ad4:	57df4fff 	bl	-8372(0xfffdf4c) # 1c001a20 <gpio_read>
1c003ad8:	0015008c 	move	$r12,$r4
1c003adc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003ad0 <MatrixKey+0x514>
1c003ae0:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ae4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ae8:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c003aec:	50001400 	b	20(0x14) # 1c003b00 <MatrixKey+0x544>
1c003af0:	03400000 	andi	$r0,$r0,0x0
1c003af4:	03400000 	andi	$r0,$r0,0x0
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	03400000 	andi	$r0,$r0,0x0
1c003b00:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c003b04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b08:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c003b0c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003af0 <MatrixKey+0x534>
1c003b10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003b14:	5003ec00 	b	1004(0x3ec) # 1c003f00 <MatrixKey+0x944>
1c003b18:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003b1c:	57df07ff 	bl	-8444(0xfffdf04) # 1c001a20 <gpio_read>
1c003b20:	0015008c 	move	$r12,$r4
1c003b24:	44008180 	bnez	$r12,128(0x80) # 1c003ba4 <MatrixKey+0x5e8>
1c003b28:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b2c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b30:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c003b34:	50001400 	b	20(0x14) # 1c003b48 <MatrixKey+0x58c>
1c003b38:	03400000 	andi	$r0,$r0,0x0
1c003b3c:	03400000 	andi	$r0,$r0,0x0
1c003b40:	03400000 	andi	$r0,$r0,0x0
1c003b44:	03400000 	andi	$r0,$r0,0x0
1c003b48:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c003b4c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b50:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c003b54:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b38 <MatrixKey+0x57c>
1c003b58:	03400000 	andi	$r0,$r0,0x0
1c003b5c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003b60:	57dec3ff 	bl	-8512(0xfffdec0) # 1c001a20 <gpio_read>
1c003b64:	0015008c 	move	$r12,$r4
1c003b68:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003b5c <MatrixKey+0x5a0>
1c003b6c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b70:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b74:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c003b78:	50001400 	b	20(0x14) # 1c003b8c <MatrixKey+0x5d0>
1c003b7c:	03400000 	andi	$r0,$r0,0x0
1c003b80:	03400000 	andi	$r0,$r0,0x0
1c003b84:	03400000 	andi	$r0,$r0,0x0
1c003b88:	03400000 	andi	$r0,$r0,0x0
1c003b8c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c003b90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b94:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c003b98:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b7c <MatrixKey+0x5c0>
1c003b9c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c003ba0:	50036000 	b	864(0x360) # 1c003f00 <MatrixKey+0x944>
1c003ba4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003ba8:	57de7bff 	bl	-8584(0xfffde78) # 1c001a20 <gpio_read>
1c003bac:	0015008c 	move	$r12,$r4
1c003bb0:	44008180 	bnez	$r12,128(0x80) # 1c003c30 <MatrixKey+0x674>
1c003bb4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bb8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003bbc:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c003bc0:	50001400 	b	20(0x14) # 1c003bd4 <MatrixKey+0x618>
1c003bc4:	03400000 	andi	$r0,$r0,0x0
1c003bc8:	03400000 	andi	$r0,$r0,0x0
1c003bcc:	03400000 	andi	$r0,$r0,0x0
1c003bd0:	03400000 	andi	$r0,$r0,0x0
1c003bd4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c003bd8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bdc:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c003be0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003bc4 <MatrixKey+0x608>
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003bec:	57de37ff 	bl	-8652(0xfffde34) # 1c001a20 <gpio_read>
1c003bf0:	0015008c 	move	$r12,$r4
1c003bf4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003be8 <MatrixKey+0x62c>
1c003bf8:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bfc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c00:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c003c04:	50001400 	b	20(0x14) # 1c003c18 <MatrixKey+0x65c>
1c003c08:	03400000 	andi	$r0,$r0,0x0
1c003c0c:	03400000 	andi	$r0,$r0,0x0
1c003c10:	03400000 	andi	$r0,$r0,0x0
1c003c14:	03400000 	andi	$r0,$r0,0x0
1c003c18:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c003c1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c20:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c003c24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003c08 <MatrixKey+0x64c>
1c003c28:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c2c:	5002d400 	b	724(0x2d4) # 1c003f00 <MatrixKey+0x944>
1c003c30:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003c34:	57ddefff 	bl	-8724(0xfffddec) # 1c001a20 <gpio_read>
1c003c38:	0015008c 	move	$r12,$r4
1c003c3c:	44008180 	bnez	$r12,128(0x80) # 1c003cbc <MatrixKey+0x700>
1c003c40:	1400008c 	lu12i.w	$r12,4(0x4)
1c003c44:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c48:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c003c4c:	50001400 	b	20(0x14) # 1c003c60 <MatrixKey+0x6a4>
1c003c50:	03400000 	andi	$r0,$r0,0x0
1c003c54:	03400000 	andi	$r0,$r0,0x0
1c003c58:	03400000 	andi	$r0,$r0,0x0
1c003c5c:	03400000 	andi	$r0,$r0,0x0
1c003c60:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c003c64:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c68:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c003c6c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003c50 <MatrixKey+0x694>
1c003c70:	03400000 	andi	$r0,$r0,0x0
1c003c74:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003c78:	57ddabff 	bl	-8792(0xfffdda8) # 1c001a20 <gpio_read>
1c003c7c:	0015008c 	move	$r12,$r4
1c003c80:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003c74 <MatrixKey+0x6b8>
1c003c84:	1400008c 	lu12i.w	$r12,4(0x4)
1c003c88:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c8c:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c003c90:	50001400 	b	20(0x14) # 1c003ca4 <MatrixKey+0x6e8>
1c003c94:	03400000 	andi	$r0,$r0,0x0
1c003c98:	03400000 	andi	$r0,$r0,0x0
1c003c9c:	03400000 	andi	$r0,$r0,0x0
1c003ca0:	03400000 	andi	$r0,$r0,0x0
1c003ca4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c003ca8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003cac:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c003cb0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003c94 <MatrixKey+0x6d8>
1c003cb4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003cb8:	50024800 	b	584(0x248) # 1c003f00 <MatrixKey+0x944>
1c003cbc:	57f8afff 	bl	-1876(0xffff8ac) # 1c003568 <clkey>
1c003cc0:	00150005 	move	$r5,$r0
1c003cc4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003cc8:	57dc63ff 	bl	-9120(0xfffdc60) # 1c001928 <gpio_write>
1c003ccc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003cd0:	57dd53ff 	bl	-8880(0xfffdd50) # 1c001a20 <gpio_read>
1c003cd4:	0015008c 	move	$r12,$r4
1c003cd8:	44008180 	bnez	$r12,128(0x80) # 1c003d58 <MatrixKey+0x79c>
1c003cdc:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ce0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ce4:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c003ce8:	50001400 	b	20(0x14) # 1c003cfc <MatrixKey+0x740>
1c003cec:	03400000 	andi	$r0,$r0,0x0
1c003cf0:	03400000 	andi	$r0,$r0,0x0
1c003cf4:	03400000 	andi	$r0,$r0,0x0
1c003cf8:	03400000 	andi	$r0,$r0,0x0
1c003cfc:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c003d00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d04:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c003d08:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003cec <MatrixKey+0x730>
1c003d0c:	03400000 	andi	$r0,$r0,0x0
1c003d10:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003d14:	57dd0fff 	bl	-8948(0xfffdd0c) # 1c001a20 <gpio_read>
1c003d18:	0015008c 	move	$r12,$r4
1c003d1c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003d10 <MatrixKey+0x754>
1c003d20:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d24:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d28:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c003d2c:	50001400 	b	20(0x14) # 1c003d40 <MatrixKey+0x784>
1c003d30:	03400000 	andi	$r0,$r0,0x0
1c003d34:	03400000 	andi	$r0,$r0,0x0
1c003d38:	03400000 	andi	$r0,$r0,0x0
1c003d3c:	03400000 	andi	$r0,$r0,0x0
1c003d40:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c003d44:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d48:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c003d4c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003d30 <MatrixKey+0x774>
1c003d50:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c003d54:	5001ac00 	b	428(0x1ac) # 1c003f00 <MatrixKey+0x944>
1c003d58:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003d5c:	57dcc7ff 	bl	-9020(0xfffdcc4) # 1c001a20 <gpio_read>
1c003d60:	0015008c 	move	$r12,$r4
1c003d64:	44008180 	bnez	$r12,128(0x80) # 1c003de4 <MatrixKey+0x828>
1c003d68:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d6c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d70:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c003d74:	50001400 	b	20(0x14) # 1c003d88 <MatrixKey+0x7cc>
1c003d78:	03400000 	andi	$r0,$r0,0x0
1c003d7c:	03400000 	andi	$r0,$r0,0x0
1c003d80:	03400000 	andi	$r0,$r0,0x0
1c003d84:	03400000 	andi	$r0,$r0,0x0
1c003d88:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c003d8c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d90:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c003d94:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003d78 <MatrixKey+0x7bc>
1c003d98:	03400000 	andi	$r0,$r0,0x0
1c003d9c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003da0:	57dc83ff 	bl	-9088(0xfffdc80) # 1c001a20 <gpio_read>
1c003da4:	0015008c 	move	$r12,$r4
1c003da8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003d9c <MatrixKey+0x7e0>
1c003dac:	1400008c 	lu12i.w	$r12,4(0x4)
1c003db0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003db4:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c003db8:	50001400 	b	20(0x14) # 1c003dcc <MatrixKey+0x810>
1c003dbc:	03400000 	andi	$r0,$r0,0x0
1c003dc0:	03400000 	andi	$r0,$r0,0x0
1c003dc4:	03400000 	andi	$r0,$r0,0x0
1c003dc8:	03400000 	andi	$r0,$r0,0x0
1c003dcc:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c003dd0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003dd4:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c003dd8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003dbc <MatrixKey+0x800>
1c003ddc:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c003de0:	50012000 	b	288(0x120) # 1c003f00 <MatrixKey+0x944>
1c003de4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003de8:	57dc3bff 	bl	-9160(0xfffdc38) # 1c001a20 <gpio_read>
1c003dec:	0015008c 	move	$r12,$r4
1c003df0:	44008180 	bnez	$r12,128(0x80) # 1c003e70 <MatrixKey+0x8b4>
1c003df4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003df8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003dfc:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c003e00:	50001400 	b	20(0x14) # 1c003e14 <MatrixKey+0x858>
1c003e04:	03400000 	andi	$r0,$r0,0x0
1c003e08:	03400000 	andi	$r0,$r0,0x0
1c003e0c:	03400000 	andi	$r0,$r0,0x0
1c003e10:	03400000 	andi	$r0,$r0,0x0
1c003e14:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c003e18:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003e1c:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c003e20:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003e04 <MatrixKey+0x848>
1c003e24:	03400000 	andi	$r0,$r0,0x0
1c003e28:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003e2c:	57dbf7ff 	bl	-9228(0xfffdbf4) # 1c001a20 <gpio_read>
1c003e30:	0015008c 	move	$r12,$r4
1c003e34:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003e28 <MatrixKey+0x86c>
1c003e38:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e3c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e40:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c003e44:	50001400 	b	20(0x14) # 1c003e58 <MatrixKey+0x89c>
1c003e48:	03400000 	andi	$r0,$r0,0x0
1c003e4c:	03400000 	andi	$r0,$r0,0x0
1c003e50:	03400000 	andi	$r0,$r0,0x0
1c003e54:	03400000 	andi	$r0,$r0,0x0
1c003e58:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c003e5c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003e60:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c003e64:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003e48 <MatrixKey+0x88c>
1c003e68:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c003e6c:	50009400 	b	148(0x94) # 1c003f00 <MatrixKey+0x944>
1c003e70:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003e74:	57dbafff 	bl	-9300(0xfffdbac) # 1c001a20 <gpio_read>
1c003e78:	0015008c 	move	$r12,$r4
1c003e7c:	44008180 	bnez	$r12,128(0x80) # 1c003efc <MatrixKey+0x940>
1c003e80:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e84:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e88:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c003e8c:	50001400 	b	20(0x14) # 1c003ea0 <MatrixKey+0x8e4>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	03400000 	andi	$r0,$r0,0x0
1c003e98:	03400000 	andi	$r0,$r0,0x0
1c003e9c:	03400000 	andi	$r0,$r0,0x0
1c003ea0:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c003ea4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ea8:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c003eac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003e90 <MatrixKey+0x8d4>
1c003eb0:	03400000 	andi	$r0,$r0,0x0
1c003eb4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003eb8:	57db6bff 	bl	-9368(0xfffdb68) # 1c001a20 <gpio_read>
1c003ebc:	0015008c 	move	$r12,$r4
1c003ec0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003eb4 <MatrixKey+0x8f8>
1c003ec4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ec8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ecc:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c003ed0:	50001400 	b	20(0x14) # 1c003ee4 <MatrixKey+0x928>
1c003ed4:	03400000 	andi	$r0,$r0,0x0
1c003ed8:	03400000 	andi	$r0,$r0,0x0
1c003edc:	03400000 	andi	$r0,$r0,0x0
1c003ee0:	03400000 	andi	$r0,$r0,0x0
1c003ee4:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c003ee8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003eec:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c003ef0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003ed4 <MatrixKey+0x918>
1c003ef4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003ef8:	50000800 	b	8(0x8) # 1c003f00 <MatrixKey+0x944>
1c003efc:	0015000c 	move	$r12,$r0
1c003f00:	00150184 	move	$r4,$r12
1c003f04:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c003f08:	28826076 	ld.w	$r22,$r3,152(0x98)
1c003f0c:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c003f10:	4c000020 	jirl	$r0,$r1,0

1c003f14 <Buzzer>:
Buzzer():
1c003f14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003f1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003f20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003f28:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003f2c:	57d9ffff 	bl	-9732(0xfffd9fc) # 1c001928 <gpio_write>
1c003f30:	1400016c 	lu12i.w	$r12,11(0xb)
1c003f34:	0399958c 	ori	$r12,$r12,0x665
1c003f38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f3c:	50001400 	b	20(0x14) # 1c003f50 <Buzzer+0x3c>
1c003f40:	03400000 	andi	$r0,$r0,0x0
1c003f44:	03400000 	andi	$r0,$r0,0x0
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	03400000 	andi	$r0,$r0,0x0
1c003f50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f58:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003f5c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003f40 <Buzzer+0x2c>
1c003f60:	00150005 	move	$r5,$r0
1c003f64:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003f68:	57d9c3ff 	bl	-9792(0xfffd9c0) # 1c001928 <gpio_write>
1c003f6c:	1400016c 	lu12i.w	$r12,11(0xb)
1c003f70:	0399958c 	ori	$r12,$r12,0x665
1c003f74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003f78:	50001400 	b	20(0x14) # 1c003f8c <Buzzer+0x78>
1c003f7c:	03400000 	andi	$r0,$r0,0x0
1c003f80:	03400000 	andi	$r0,$r0,0x0
1c003f84:	03400000 	andi	$r0,$r0,0x0
1c003f88:	03400000 	andi	$r0,$r0,0x0
1c003f8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003f90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f94:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003f98:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003f7c <Buzzer+0x68>
1c003f9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003fa0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003fa4:	57d987ff 	bl	-9852(0xfffd984) # 1c001928 <gpio_write>
1c003fa8:	1400016c 	lu12i.w	$r12,11(0xb)
1c003fac:	0399958c 	ori	$r12,$r12,0x665
1c003fb0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003fb4:	50001400 	b	20(0x14) # 1c003fc8 <Buzzer+0xb4>
1c003fb8:	03400000 	andi	$r0,$r0,0x0
1c003fbc:	03400000 	andi	$r0,$r0,0x0
1c003fc0:	03400000 	andi	$r0,$r0,0x0
1c003fc4:	03400000 	andi	$r0,$r0,0x0
1c003fc8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003fcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003fd0:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003fd4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003fb8 <Buzzer+0xa4>
1c003fd8:	00150005 	move	$r5,$r0
1c003fdc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003fe0:	57d94bff 	bl	-9912(0xfffd948) # 1c001928 <gpio_write>
1c003fe4:	03400000 	andi	$r0,$r0,0x0
1c003fe8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003fec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ff0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ff4:	4c000020 	jirl	$r0,$r1,0

1c003ff8 <Buzzer_one>:
Buzzer_one():
1c003ff8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ffc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004000:	29806076 	st.w	$r22,$r3,24(0x18)
1c004004:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004008:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00400c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004010:	57d91bff 	bl	-9960(0xfffd918) # 1c001928 <gpio_write>
1c004014:	1400088c 	lu12i.w	$r12,68(0x44)
1c004018:	0399798c 	ori	$r12,$r12,0x65e
1c00401c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004020:	50001400 	b	20(0x14) # 1c004034 <Buzzer_one+0x3c>
1c004024:	03400000 	andi	$r0,$r0,0x0
1c004028:	03400000 	andi	$r0,$r0,0x0
1c00402c:	03400000 	andi	$r0,$r0,0x0
1c004030:	03400000 	andi	$r0,$r0,0x0
1c004034:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004038:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00403c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004040:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004024 <Buzzer_one+0x2c>
1c004044:	00150005 	move	$r5,$r0
1c004048:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00404c:	57d8dfff 	bl	-10020(0xfffd8dc) # 1c001928 <gpio_write>
1c004050:	03400000 	andi	$r0,$r0,0x0
1c004054:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004058:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00405c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004060:	4c000020 	jirl	$r0,$r1,0

1c004064 <TIM_GetITStatus>:
TIM_GetITStatus():
1c004064:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004068:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00406c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004070:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004074:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004078:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00407c:	2880018d 	ld.w	$r13,$r12,0
1c004080:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004084:	0014b1ac 	and	$r12,$r13,$r12
1c004088:	40001180 	beqz	$r12,16(0x10) # 1c004098 <TIM_GetITStatus+0x34>
1c00408c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004090:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004094:	50000800 	b	8(0x8) # 1c00409c <TIM_GetITStatus+0x38>
1c004098:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00409c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040a0:	00150184 	move	$r4,$r12
1c0040a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0040a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0040ac:	4c000020 	jirl	$r0,$r1,0

1c0040b0 <TIM_ClearIT>:
TIM_ClearIT():
1c0040b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0040b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0040bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0040c0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040c4:	2880018e 	ld.w	$r14,$r12,0
1c0040c8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040d0:	001535cd 	or	$r13,$r14,$r13
1c0040d4:	2980018d 	st.w	$r13,$r12,0
1c0040d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040dc:	03800d8c 	ori	$r12,$r12,0x3
1c0040e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0040e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0040e8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040ec:	03800d8c 	ori	$r12,$r12,0x3
1c0040f0:	038005ad 	ori	$r13,$r13,0x1
1c0040f4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0040f8:	2900018d 	st.b	$r13,$r12,0
1c0040fc:	03400000 	andi	$r0,$r0,0x0
1c004100:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004104:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004108:	4c000020 	jirl	$r0,$r1,0

1c00410c <WriteCmd>:
WriteCmd():
1c00410c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004110:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004114:	29806076 	st.w	$r22,$r3,24(0x18)
1c004118:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00411c:	0015008c 	move	$r12,$r4
1c004120:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004124:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004128:	57dadfff 	bl	-9508(0xfffdadc) # 1c001c04 <soc_I2C_GenerateSTART>
1c00412c:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c004130:	57db5fff 	bl	-9380(0xfffdb5c) # 1c001c8c <soc_I2C_SendData>
1c004134:	57dba3ff 	bl	-9312(0xfffdba0) # 1c001cd4 <soc_I2C_wait>
1c004138:	00150004 	move	$r4,$r0
1c00413c:	57db53ff 	bl	-9392(0xfffdb50) # 1c001c8c <soc_I2C_SendData>
1c004140:	57db97ff 	bl	-9324(0xfffdb94) # 1c001cd4 <soc_I2C_wait>
1c004144:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004148:	00150184 	move	$r4,$r12
1c00414c:	57db43ff 	bl	-9408(0xfffdb40) # 1c001c8c <soc_I2C_SendData>
1c004150:	57db87ff 	bl	-9340(0xfffdb84) # 1c001cd4 <soc_I2C_wait>
1c004154:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004158:	57daf3ff 	bl	-9488(0xfffdaf0) # 1c001c48 <soc_I2C_GenerateSTOP>
1c00415c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004160:	57d96fff 	bl	-9876(0xfffd96c) # 1c001acc <soc_I2C_delay>
1c004164:	03400000 	andi	$r0,$r0,0x0
1c004168:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00416c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004170:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004174:	4c000020 	jirl	$r0,$r1,0

1c004178 <WriteDat>:
WriteDat():
1c004178:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00417c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004180:	29806076 	st.w	$r22,$r3,24(0x18)
1c004184:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004188:	0015008c 	move	$r12,$r4
1c00418c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004190:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004194:	57da73ff 	bl	-9616(0xfffda70) # 1c001c04 <soc_I2C_GenerateSTART>
1c004198:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00419c:	57daf3ff 	bl	-9488(0xfffdaf0) # 1c001c8c <soc_I2C_SendData>
1c0041a0:	57db37ff 	bl	-9420(0xfffdb34) # 1c001cd4 <soc_I2C_wait>
1c0041a4:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0041a8:	57dae7ff 	bl	-9500(0xfffdae4) # 1c001c8c <soc_I2C_SendData>
1c0041ac:	57db2bff 	bl	-9432(0xfffdb28) # 1c001cd4 <soc_I2C_wait>
1c0041b0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0041b4:	00150184 	move	$r4,$r12
1c0041b8:	57dad7ff 	bl	-9516(0xfffdad4) # 1c001c8c <soc_I2C_SendData>
1c0041bc:	57db1bff 	bl	-9448(0xfffdb18) # 1c001cd4 <soc_I2C_wait>
1c0041c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0041c4:	57da87ff 	bl	-9596(0xfffda84) # 1c001c48 <soc_I2C_GenerateSTOP>
1c0041c8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0041cc:	57d903ff 	bl	-9984(0xfffd900) # 1c001acc <soc_I2C_delay>
1c0041d0:	03400000 	andi	$r0,$r0,0x0
1c0041d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0041d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0041dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041e0:	4c000020 	jirl	$r0,$r1,0

1c0041e4 <OLED_Init>:
OLED_Init():
1c0041e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0041ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0041f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041f4:	140016cc 	lu12i.w	$r12,182(0xb6)
1c0041f8:	0399418c 	ori	$r12,$r12,0x650
1c0041fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004200:	50001400 	b	20(0x14) # 1c004214 <OLED_Init+0x30>
1c004204:	03400000 	andi	$r0,$r0,0x0
1c004208:	03400000 	andi	$r0,$r0,0x0
1c00420c:	03400000 	andi	$r0,$r0,0x0
1c004210:	03400000 	andi	$r0,$r0,0x0
1c004214:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004218:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00421c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004220:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004204 <OLED_Init+0x20>
1c004224:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c004228:	57fee7ff 	bl	-284(0xffffee4) # 1c00410c <WriteCmd>
1c00422c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004230:	57fedfff 	bl	-292(0xffffedc) # 1c00410c <WriteCmd>
1c004234:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004238:	57fed7ff 	bl	-300(0xffffed4) # 1c00410c <WriteCmd>
1c00423c:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c004240:	57fecfff 	bl	-308(0xffffecc) # 1c00410c <WriteCmd>
1c004244:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c004248:	57fec7ff 	bl	-316(0xffffec4) # 1c00410c <WriteCmd>
1c00424c:	00150004 	move	$r4,$r0
1c004250:	57febfff 	bl	-324(0xffffebc) # 1c00410c <WriteCmd>
1c004254:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004258:	57feb7ff 	bl	-332(0xffffeb4) # 1c00410c <WriteCmd>
1c00425c:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004260:	57feafff 	bl	-340(0xffffeac) # 1c00410c <WriteCmd>
1c004264:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004268:	57fea7ff 	bl	-348(0xffffea4) # 1c00410c <WriteCmd>
1c00426c:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c004270:	57fe9fff 	bl	-356(0xffffe9c) # 1c00410c <WriteCmd>
1c004274:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c004278:	57fe97ff 	bl	-364(0xffffe94) # 1c00410c <WriteCmd>
1c00427c:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004280:	57fe8fff 	bl	-372(0xffffe8c) # 1c00410c <WriteCmd>
1c004284:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c004288:	57fe87ff 	bl	-380(0xffffe84) # 1c00410c <WriteCmd>
1c00428c:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c004290:	57fe7fff 	bl	-388(0xffffe7c) # 1c00410c <WriteCmd>
1c004294:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c004298:	57fe77ff 	bl	-396(0xffffe74) # 1c00410c <WriteCmd>
1c00429c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0042a0:	57fe6fff 	bl	-404(0xffffe6c) # 1c00410c <WriteCmd>
1c0042a4:	00150004 	move	$r4,$r0
1c0042a8:	57fe67ff 	bl	-412(0xffffe64) # 1c00410c <WriteCmd>
1c0042ac:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c0042b0:	57fe5fff 	bl	-420(0xffffe5c) # 1c00410c <WriteCmd>
1c0042b4:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c0042b8:	57fe57ff 	bl	-428(0xffffe54) # 1c00410c <WriteCmd>
1c0042bc:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c0042c0:	57fe4fff 	bl	-436(0xffffe4c) # 1c00410c <WriteCmd>
1c0042c4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0042c8:	57fe47ff 	bl	-444(0xffffe44) # 1c00410c <WriteCmd>
1c0042cc:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0042d0:	57fe3fff 	bl	-452(0xffffe3c) # 1c00410c <WriteCmd>
1c0042d4:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0042d8:	57fe37ff 	bl	-460(0xffffe34) # 1c00410c <WriteCmd>
1c0042dc:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0042e0:	57fe2fff 	bl	-468(0xffffe2c) # 1c00410c <WriteCmd>
1c0042e4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0042e8:	57fe27ff 	bl	-476(0xffffe24) # 1c00410c <WriteCmd>
1c0042ec:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0042f0:	57fe1fff 	bl	-484(0xffffe1c) # 1c00410c <WriteCmd>
1c0042f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0042f8:	57fe17ff 	bl	-492(0xffffe14) # 1c00410c <WriteCmd>
1c0042fc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004300:	57fe0fff 	bl	-500(0xffffe0c) # 1c00410c <WriteCmd>
1c004304:	03400000 	andi	$r0,$r0,0x0
1c004308:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00430c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004310:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004314:	4c000020 	jirl	$r0,$r1,0

1c004318 <OLED_SetPos>:
OLED_SetPos():
1c004318:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00431c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004320:	29806076 	st.w	$r22,$r3,24(0x18)
1c004324:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004328:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00432c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c004330:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004334:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004338:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c00433c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004340:	00150184 	move	$r4,$r12
1c004344:	57fdcbff 	bl	-568(0xffffdc8) # 1c00410c <WriteCmd>
1c004348:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00434c:	0044918c 	srli.w	$r12,$r12,0x4
1c004350:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004354:	03403d8c 	andi	$r12,$r12,0xf
1c004358:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00435c:	0380418c 	ori	$r12,$r12,0x10
1c004360:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004364:	00150184 	move	$r4,$r12
1c004368:	57fda7ff 	bl	-604(0xffffda4) # 1c00410c <WriteCmd>
1c00436c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004370:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004374:	0340398c 	andi	$r12,$r12,0xe
1c004378:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00437c:	0380058c 	ori	$r12,$r12,0x1
1c004380:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004384:	00150184 	move	$r4,$r12
1c004388:	57fd87ff 	bl	-636(0xffffd84) # 1c00410c <WriteCmd>
1c00438c:	03400000 	andi	$r0,$r0,0x0
1c004390:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004394:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004398:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00439c:	4c000020 	jirl	$r0,$r1,0

1c0043a0 <OLED_Fill>:
OLED_Fill():
1c0043a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0043a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0043a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0043ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0043b0:	0015008c 	move	$r12,$r4
1c0043b4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0043b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0043bc:	50006400 	b	100(0x64) # 1c004420 <OLED_Fill+0x80>
1c0043c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043c8:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0043cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043d0:	00150184 	move	$r4,$r12
1c0043d4:	57fd3bff 	bl	-712(0xffffd38) # 1c00410c <WriteCmd>
1c0043d8:	00150004 	move	$r4,$r0
1c0043dc:	57fd33ff 	bl	-720(0xffffd30) # 1c00410c <WriteCmd>
1c0043e0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0043e4:	57fd2bff 	bl	-728(0xffffd28) # 1c00410c <WriteCmd>
1c0043e8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0043ec:	50001c00 	b	28(0x1c) # 1c004408 <OLED_Fill+0x68>
1c0043f0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0043f4:	00150184 	move	$r4,$r12
1c0043f8:	57fd83ff 	bl	-640(0xffffd80) # 1c004178 <WriteDat>
1c0043fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004400:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004404:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004408:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00440c:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c004410:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c0043f0 <OLED_Fill+0x50>
1c004414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00441c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004420:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004424:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004428:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c0043c0 <OLED_Fill+0x20>
1c00442c:	03400000 	andi	$r0,$r0,0x0
1c004430:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004434:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004438:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00443c:	4c000020 	jirl	$r0,$r1,0

1c004440 <OLED_CLS>:
OLED_CLS():
1c004440:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004444:	29803061 	st.w	$r1,$r3,12(0xc)
1c004448:	29802076 	st.w	$r22,$r3,8(0x8)
1c00444c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004450:	00150004 	move	$r4,$r0
1c004454:	57ff4fff 	bl	-180(0xfffff4c) # 1c0043a0 <OLED_Fill>
1c004458:	03400000 	andi	$r0,$r0,0x0
1c00445c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004460:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004464:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004468:	4c000020 	jirl	$r0,$r1,0

1c00446c <OLED_ShowStr>:
OLED_ShowStr():
1c00446c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004470:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004474:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004478:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00447c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004480:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004484:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004488:	001500ec 	move	$r12,$r7
1c00448c:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c004490:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c004494:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004498:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00449c:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0044a0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0044a4:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c004558 <OLED_ShowStr+0xec>
1c0044a8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0044ac:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c004670 <OLED_ShowStr+0x204>
1c0044b0:	5001d800 	b	472(0x1d8) # 1c004688 <OLED_ShowStr+0x21c>
1c0044b4:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0044b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0044bc:	001031ac 	add.w	$r12,$r13,$r12
1c0044c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0044c4:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0044c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0044cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0044d0:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c0044d4:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0044e8 <OLED_ShowStr+0x7c>
1c0044d8:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0044dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0044e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044e4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0044e8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0044ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0044f0:	57fe2bff 	bl	-472(0xffffe28) # 1c004318 <OLED_SetPos>
1c0044f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0044f8:	50003c00 	b	60(0x3c) # 1c004534 <OLED_ShowStr+0xc8>
1c0044fc:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004500:	02abd1ad 	addi.w	$r13,$r13,-1292(0xaf4)
1c004504:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c004508:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c00450c:	001c31cc 	mul.w	$r12,$r14,$r12
1c004510:	001031ad 	add.w	$r13,$r13,$r12
1c004514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004518:	001031ac 	add.w	$r12,$r13,$r12
1c00451c:	2a00018c 	ld.bu	$r12,$r12,0
1c004520:	00150184 	move	$r4,$r12
1c004524:	57fc57ff 	bl	-940(0xffffc54) # 1c004178 <WriteDat>
1c004528:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00452c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004530:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004538:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c00453c:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0044fc <OLED_ShowStr+0x90>
1c004540:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004544:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c004548:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00454c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004550:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004554:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004558:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00455c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004560:	001031ac 	add.w	$r12,$r13,$r12
1c004564:	2a00018c 	ld.bu	$r12,$r12,0
1c004568:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c0044b4 <OLED_ShowStr+0x48>
1c00456c:	50011c00 	b	284(0x11c) # 1c004688 <OLED_ShowStr+0x21c>
1c004570:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004574:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004578:	001031ac 	add.w	$r12,$r13,$r12
1c00457c:	2a00018c 	ld.bu	$r12,$r12,0
1c004580:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004584:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004588:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00458c:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c004590:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0045a4 <OLED_ShowStr+0x138>
1c004594:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004598:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00459c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045a0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0045a4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0045a8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0045ac:	57fd6fff 	bl	-660(0xffffd6c) # 1c004318 <OLED_SetPos>
1c0045b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0045b4:	50003800 	b	56(0x38) # 1c0045ec <OLED_ShowStr+0x180>
1c0045b8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0045bc:	0040918d 	slli.w	$r13,$r12,0x4
1c0045c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045c4:	001031ac 	add.w	$r12,$r13,$r12
1c0045c8:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0045cc:	02b141ad 	addi.w	$r13,$r13,-944(0xc50)
1c0045d0:	001031ac 	add.w	$r12,$r13,$r12
1c0045d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0045d8:	00150184 	move	$r4,$r12
1c0045dc:	57fb9fff 	bl	-1124(0xffffb9c) # 1c004178 <WriteDat>
1c0045e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0045f0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0045f4:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0045b8 <OLED_ShowStr+0x14c>
1c0045f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0045fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004600:	00150185 	move	$r5,$r12
1c004604:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004608:	57fd13ff 	bl	-752(0xffffd10) # 1c004318 <OLED_SetPos>
1c00460c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004610:	50003c00 	b	60(0x3c) # 1c00464c <OLED_ShowStr+0x1e0>
1c004614:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004618:	0040918d 	slli.w	$r13,$r12,0x4
1c00461c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004620:	001031ac 	add.w	$r12,$r13,$r12
1c004624:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004628:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c00462c:	02afc1ad 	addi.w	$r13,$r13,-1040(0xbf0)
1c004630:	001031ac 	add.w	$r12,$r13,$r12
1c004634:	2a00018c 	ld.bu	$r12,$r12,0
1c004638:	00150184 	move	$r4,$r12
1c00463c:	57fb3fff 	bl	-1220(0xffffb3c) # 1c004178 <WriteDat>
1c004640:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004644:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004648:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00464c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004650:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004654:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004614 <OLED_ShowStr+0x1a8>
1c004658:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00465c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004660:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004664:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004668:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00466c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004670:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004674:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004678:	001031ac 	add.w	$r12,$r13,$r12
1c00467c:	2a00018c 	ld.bu	$r12,$r12,0
1c004680:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c004570 <OLED_ShowStr+0x104>
1c004684:	03400000 	andi	$r0,$r0,0x0
1c004688:	03400000 	andi	$r0,$r0,0x0
1c00468c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004690:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004694:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004698:	4c000020 	jirl	$r0,$r1,0

1c00469c <OLED_ShowCN>:
OLED_ShowCN():
1c00469c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0046a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0046a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0046a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0046ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0046b0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0046b4:	001500cc 	move	$r12,$r6
1c0046b8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0046bc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0046c0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0046c4:	0040958c 	slli.w	$r12,$r12,0x5
1c0046c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0046cc:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0046d0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0046d4:	57fc47ff 	bl	-956(0xffffc44) # 1c004318 <OLED_SetPos>
1c0046d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0046dc:	50003800 	b	56(0x38) # 1c004714 <OLED_ShowCN+0x78>
1c0046e0:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c0046e4:	02a541ad 	addi.w	$r13,$r13,-1712(0x950)
1c0046e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0046ec:	001031ac 	add.w	$r12,$r13,$r12
1c0046f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0046f4:	00150184 	move	$r4,$r12
1c0046f8:	57fa83ff 	bl	-1408(0xffffa80) # 1c004178 <WriteDat>
1c0046fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004700:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004704:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004708:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00470c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004710:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004714:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004718:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00471c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0046e0 <OLED_ShowCN+0x44>
1c004720:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004724:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004728:	00150185 	move	$r5,$r12
1c00472c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004730:	57fbebff 	bl	-1048(0xffffbe8) # 1c004318 <OLED_SetPos>
1c004734:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004738:	50003800 	b	56(0x38) # 1c004770 <OLED_ShowCN+0xd4>
1c00473c:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004740:	02a3d1ad 	addi.w	$r13,$r13,-1804(0x8f4)
1c004744:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004748:	001031ac 	add.w	$r12,$r13,$r12
1c00474c:	2a00018c 	ld.bu	$r12,$r12,0
1c004750:	00150184 	move	$r4,$r12
1c004754:	57fa27ff 	bl	-1500(0xffffa24) # 1c004178 <WriteDat>
1c004758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00475c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004760:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004764:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004768:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00476c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004770:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004774:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004778:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c00473c <OLED_ShowCN+0xa0>
1c00477c:	03400000 	andi	$r0,$r0,0x0
1c004780:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004784:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004788:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00478c:	4c000020 	jirl	$r0,$r1,0

1c004790 <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c004790:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004794:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004798:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00479c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0047a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0047a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0047a8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0047ac:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0047b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0047b4:	50004800 	b	72(0x48) # 1c0047fc <OLED_ShowCN_STR+0x6c>
1c0047b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0047bc:	0040918d 	slli.w	$r13,$r12,0x4
1c0047c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0047c4:	001031ae 	add.w	$r14,$r13,$r12
1c0047c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0047cc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0047d0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0047d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0047d8:	001031ac 	add.w	$r12,$r13,$r12
1c0047dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0047e0:	00150186 	move	$r6,$r12
1c0047e4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0047e8:	001501c4 	move	$r4,$r14
1c0047ec:	57feb3ff 	bl	-336(0xffffeb0) # 1c00469c <OLED_ShowCN>
1c0047f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0047f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0047f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0047fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004800:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004804:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c0047b8 <OLED_ShowCN_STR+0x28>
1c004808:	03400000 	andi	$r0,$r0,0x0
1c00480c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004810:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004814:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004818:	4c000020 	jirl	$r0,$r1,0

1c00481c <OLED_DrawBMP>:
OLED_DrawBMP():
1c00481c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004820:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004824:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004828:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00482c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004830:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004834:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004838:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c00483c:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c004840:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004844:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004848:	03401d8c 	andi	$r12,$r12,0x7
1c00484c:	44001580 	bnez	$r12,20(0x14) # 1c004860 <OLED_DrawBMP+0x44>
1c004850:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004854:	00448d8c 	srli.w	$r12,$r12,0x3
1c004858:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00485c:	50001400 	b	20(0x14) # 1c004870 <OLED_DrawBMP+0x54>
1c004860:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004864:	00448d8c 	srli.w	$r12,$r12,0x3
1c004868:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00486c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004870:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004874:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004878:	50006000 	b	96(0x60) # 1c0048d8 <OLED_DrawBMP+0xbc>
1c00487c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c004880:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004884:	57fa97ff 	bl	-1388(0xffffa94) # 1c004318 <OLED_SetPos>
1c004888:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00488c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004890:	50003000 	b	48(0x30) # 1c0048c0 <OLED_DrawBMP+0xa4>
1c004894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004898:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00489c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0048a0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0048a4:	001031ac 	add.w	$r12,$r13,$r12
1c0048a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0048ac:	00150184 	move	$r4,$r12
1c0048b0:	57f8cbff 	bl	-1848(0xffff8c8) # 1c004178 <WriteDat>
1c0048b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0048b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048bc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0048c0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0048c4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0048c8:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c004894 <OLED_DrawBMP+0x78>
1c0048cc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0048d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048d4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0048d8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0048dc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0048e0:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c00487c <OLED_DrawBMP+0x60>
1c0048e4:	03400000 	andi	$r0,$r0,0x0
1c0048e8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0048ec:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0048f0:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0048f4:	4c000020 	jirl	$r0,$r1,0

1c0048f8 <OLED_ShowChar>:
OLED_ShowChar():
1c0048f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0048fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004900:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004904:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004908:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00490c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004910:	001500cc 	move	$r12,$r6
1c004914:	001500ed 	move	$r13,$r7
1c004918:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00491c:	001501ac 	move	$r12,$r13
1c004920:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c004924:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004928:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00492c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c004930:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004934:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004938:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00493c:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c004940:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004954 <OLED_ShowChar+0x5c>
1c004944:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004948:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00494c:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004950:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004954:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c004958:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00495c:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c004a18 <OLED_ShowChar+0x120>
1c004960:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004964:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004968:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c004318 <OLED_SetPos>
1c00496c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004970:	50003800 	b	56(0x38) # 1c0049a8 <OLED_ShowChar+0xb0>
1c004974:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004978:	0040918d 	slli.w	$r13,$r12,0x4
1c00497c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004980:	001031ac 	add.w	$r12,$r13,$r12
1c004984:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004988:	02a251ad 	addi.w	$r13,$r13,-1900(0x894)
1c00498c:	001031ac 	add.w	$r12,$r13,$r12
1c004990:	2a00018c 	ld.bu	$r12,$r12,0
1c004994:	00150184 	move	$r4,$r12
1c004998:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c004178 <WriteDat>
1c00499c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0049ac:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0049b0:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c004974 <OLED_ShowChar+0x7c>
1c0049b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0049b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049bc:	00150185 	move	$r5,$r12
1c0049c0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0049c4:	57f957ff 	bl	-1708(0xffff954) # 1c004318 <OLED_SetPos>
1c0049c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0049cc:	50003c00 	b	60(0x3c) # 1c004a08 <OLED_ShowChar+0x110>
1c0049d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0049d4:	0040918d 	slli.w	$r13,$r12,0x4
1c0049d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049dc:	001031ac 	add.w	$r12,$r13,$r12
1c0049e0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0049e4:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0049e8:	02a0d1ad 	addi.w	$r13,$r13,-1996(0x834)
1c0049ec:	001031ac 	add.w	$r12,$r13,$r12
1c0049f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0049f4:	00150184 	move	$r4,$r12
1c0049f8:	57f783ff 	bl	-2176(0xffff780) # 1c004178 <WriteDat>
1c0049fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a0c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004a10:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0049d0 <OLED_ShowChar+0xd8>
1c004a14:	50005c00 	b	92(0x5c) # 1c004a70 <OLED_ShowChar+0x178>
1c004a18:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004a1c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004a20:	57f8fbff 	bl	-1800(0xffff8f8) # 1c004318 <OLED_SetPos>
1c004a24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a28:	50003c00 	b	60(0x3c) # 1c004a64 <OLED_ShowChar+0x16c>
1c004a2c:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004a30:	029711ad 	addi.w	$r13,$r13,1476(0x5c4)
1c004a34:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c004a38:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004a3c:	001c31cc 	mul.w	$r12,$r14,$r12
1c004a40:	001031ad 	add.w	$r13,$r13,$r12
1c004a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a48:	001031ac 	add.w	$r12,$r13,$r12
1c004a4c:	2a00018c 	ld.bu	$r12,$r12,0
1c004a50:	00150184 	move	$r4,$r12
1c004a54:	57f727ff 	bl	-2268(0xffff724) # 1c004178 <WriteDat>
1c004a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a68:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004a6c:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004a2c <OLED_ShowChar+0x134>
1c004a70:	03400000 	andi	$r0,$r0,0x0
1c004a74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004a78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004a7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004a80:	4c000020 	jirl	$r0,$r1,0

1c004a84 <oled_pow>:
oled_pow():
1c004a84:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004a88:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004a8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004a90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004a94:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004a98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004a9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004aa0:	50001400 	b	20(0x14) # 1c004ab4 <oled_pow+0x30>
1c004aa4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004aa8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004aac:	001c31ac 	mul.w	$r12,$r13,$r12
1c004ab0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ab4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ab8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004abc:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c004ac0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004aa4 <oled_pow+0x20>
1c004ac4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ac8:	00150184 	move	$r4,$r12
1c004acc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004ad0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004ad4:	4c000020 	jirl	$r0,$r1,0

1c004ad8 <OLED_ShowNum>:
OLED_ShowNum():
1c004ad8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004adc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004ae0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004ae4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004ae8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004aec:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004af0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004af4:	001500ec 	move	$r12,$r7
1c004af8:	0015010d 	move	$r13,$r8
1c004afc:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c004b00:	001501ac 	move	$r12,$r13
1c004b04:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c004b08:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004b0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b10:	50010400 	b	260(0x104) # 1c004c14 <OLED_ShowNum+0x13c>
1c004b14:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c004b18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b1c:	001131ac 	sub.w	$r12,$r13,$r12
1c004b20:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004b24:	00150185 	move	$r5,$r12
1c004b28:	02802804 	addi.w	$r4,$r0,10(0xa)
1c004b2c:	57ff5bff 	bl	-168(0xfffff58) # 1c004a84 <oled_pow>
1c004b30:	0015008d 	move	$r13,$r4
1c004b34:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004b38:	0021358e 	div.wu	$r14,$r12,$r13
1c004b3c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004b44 <OLED_ShowNum+0x6c>
1c004b40:	002a0007 	break	0x7
1c004b44:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c004b48:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c004b4c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004b54 <OLED_ShowNum+0x7c>
1c004b50:	002a0007 	break	0x7
1c004b54:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004b5c:	44006580 	bnez	$r12,100(0x64) # 1c004bc0 <OLED_ShowNum+0xe8>
1c004b60:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c004b64:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004b68:	0015018d 	move	$r13,$r12
1c004b6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b70:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c004bc0 <OLED_ShowNum+0xe8>
1c004b74:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004b78:	44004180 	bnez	$r12,64(0x40) # 1c004bb8 <OLED_ShowNum+0xe0>
1c004b7c:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c004b80:	0044858c 	srli.w	$r12,$r12,0x1
1c004b84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b88:	0015018d 	move	$r13,$r12
1c004b8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b90:	001c31ad 	mul.w	$r13,$r13,$r12
1c004b94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004b98:	001031ac 	add.w	$r12,$r13,$r12
1c004b9c:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c004ba0:	001501a7 	move	$r7,$r13
1c004ba4:	02808006 	addi.w	$r6,$r0,32(0x20)
1c004ba8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004bac:	00150184 	move	$r4,$r12
1c004bb0:	57fd4bff 	bl	-696(0xffffd48) # 1c0048f8 <OLED_ShowChar>
1c004bb4:	50005400 	b	84(0x54) # 1c004c08 <OLED_ShowNum+0x130>
1c004bb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004bbc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004bc0:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c004bc4:	0044858c 	srli.w	$r12,$r12,0x1
1c004bc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bcc:	0015018d 	move	$r13,$r12
1c004bd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bd4:	001c31ad 	mul.w	$r13,$r13,$r12
1c004bd8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004bdc:	001031ad 	add.w	$r13,$r13,$r12
1c004be0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004be4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004be8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004bec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bf0:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c004bf4:	001501c7 	move	$r7,$r14
1c004bf8:	00150186 	move	$r6,$r12
1c004bfc:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004c00:	001501a4 	move	$r4,$r13
1c004c04:	57fcf7ff 	bl	-780(0xffffcf4) # 1c0048f8 <OLED_ShowChar>
1c004c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c14:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c004c18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c1c:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c004b14 <OLED_ShowNum+0x3c>
1c004c20:	03400000 	andi	$r0,$r0,0x0
1c004c24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c30:	4c000020 	jirl	$r0,$r1,0

1c004c34 <my_GPIO_Init>:
my_GPIO_Init():
1c004c34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c48:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004c4c:	57cbe7ff 	bl	-13340(0xfffcbe4) # 1c001830 <gpio_init>
1c004c50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c54:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004c58:	57cbdbff 	bl	-13352(0xfffcbd8) # 1c001830 <gpio_init>
1c004c5c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c60:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004c64:	57cbcfff 	bl	-13364(0xfffcbcc) # 1c001830 <gpio_init>
1c004c68:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c6c:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c004c70:	57cbc3ff 	bl	-13376(0xfffcbc0) # 1c001830 <gpio_init>
1c004c74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c78:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004c7c:	57cbb7ff 	bl	-13388(0xfffcbb4) # 1c001830 <gpio_init>
1c004c80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c84:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004c88:	57cbabff 	bl	-13400(0xfffcba8) # 1c001830 <gpio_init>
1c004c8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c90:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004c94:	57cb9fff 	bl	-13412(0xfffcb9c) # 1c001830 <gpio_init>
1c004c98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c9c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c004ca0:	57cb93ff 	bl	-13424(0xfffcb90) # 1c001830 <gpio_init>
1c004ca4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ca8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004cac:	57cb87ff 	bl	-13436(0xfffcb84) # 1c001830 <gpio_init>
1c004cb0:	00150005 	move	$r5,$r0
1c004cb4:	02809804 	addi.w	$r4,$r0,38(0x26)
1c004cb8:	57cb7bff 	bl	-13448(0xfffcb78) # 1c001830 <gpio_init>
1c004cbc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cc0:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004cc4:	57cb6fff 	bl	-13460(0xfffcb6c) # 1c001830 <gpio_init>
1c004cc8:	00150005 	move	$r5,$r0
1c004ccc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004cd0:	57cb63ff 	bl	-13472(0xfffcb60) # 1c001830 <gpio_init>
1c004cd4:	00150005 	move	$r5,$r0
1c004cd8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004cdc:	57cb57ff 	bl	-13484(0xfffcb54) # 1c001830 <gpio_init>
1c004ce0:	00150005 	move	$r5,$r0
1c004ce4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ce8:	57cb4bff 	bl	-13496(0xfffcb48) # 1c001830 <gpio_init>
1c004cec:	00150005 	move	$r5,$r0
1c004cf0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004cf4:	57cb3fff 	bl	-13508(0xfffcb3c) # 1c001830 <gpio_init>
1c004cf8:	14000e2c 	lu12i.w	$r12,113(0x71)
1c004cfc:	03bfc98c 	ori	$r12,$r12,0xff2
1c004d00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d04:	50001400 	b	20(0x14) # 1c004d18 <my_GPIO_Init+0xe4>
1c004d08:	03400000 	andi	$r0,$r0,0x0
1c004d0c:	03400000 	andi	$r0,$r0,0x0
1c004d10:	03400000 	andi	$r0,$r0,0x0
1c004d14:	03400000 	andi	$r0,$r0,0x0
1c004d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004d20:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004d24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004d08 <my_GPIO_Init+0xd4>
1c004d28:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d2c:	02809004 	addi.w	$r4,$r0,36(0x24)
1c004d30:	57cbfbff 	bl	-13320(0xfffcbf8) # 1c001928 <gpio_write>
1c004d34:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d38:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004d3c:	57cbefff 	bl	-13332(0xfffcbec) # 1c001928 <gpio_write>
1c004d40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d44:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d48:	57cbe3ff 	bl	-13344(0xfffcbe0) # 1c001928 <gpio_write>
1c004d4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d50:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004d54:	57cbd7ff 	bl	-13356(0xfffcbd4) # 1c001928 <gpio_write>
1c004d58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d5c:	02809804 	addi.w	$r4,$r0,38(0x26)
1c004d60:	57cbcbff 	bl	-13368(0xfffcbc8) # 1c001928 <gpio_write>
1c004d64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d68:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004d6c:	57cbbfff 	bl	-13380(0xfffcbbc) # 1c001928 <gpio_write>
1c004d70:	00150005 	move	$r5,$r0
1c004d74:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004d78:	57cbb3ff 	bl	-13392(0xfffcbb0) # 1c001928 <gpio_write>
1c004d7c:	03400000 	andi	$r0,$r0,0x0
1c004d80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d8c:	4c000020 	jirl	$r0,$r1,0

1c004d90 <my_I2C_Init>:
my_I2C_Init():
1c004d90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d98:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004da0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004da4:	00150184 	move	$r4,$r12
1c004da8:	57cd5bff 	bl	-12968(0xfffcd58) # 1c001b00 <soc_I2C_StructInit>
1c004dac:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004db0:	00150184 	move	$r4,$r12
1c004db4:	57cd97ff 	bl	-12908(0xfffcd94) # 1c001b48 <soc_I2C_Init>
1c004db8:	1400016c 	lu12i.w	$r12,11(0xb)
1c004dbc:	0399958c 	ori	$r12,$r12,0x665
1c004dc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004dc4:	50001400 	b	20(0x14) # 1c004dd8 <my_I2C_Init+0x48>
1c004dc8:	03400000 	andi	$r0,$r0,0x0
1c004dcc:	03400000 	andi	$r0,$r0,0x0
1c004dd0:	03400000 	andi	$r0,$r0,0x0
1c004dd4:	03400000 	andi	$r0,$r0,0x0
1c004dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ddc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004de0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004de4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004dc8 <my_I2C_Init+0x38>
1c004de8:	03400000 	andi	$r0,$r0,0x0
1c004dec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004df0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004df4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004df8:	4c000020 	jirl	$r0,$r1,0

1c004dfc <my_PWM_Init>:
my_PWM_Init():
1c004dfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e00:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004e04:	29806076 	st.w	$r22,$r3,24(0x18)
1c004e08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e0c:	57cf53ff 	bl	-12464(0xfffcf50) # 1c001d5c <pwm_steering_engine_init>
1c004e10:	1400016c 	lu12i.w	$r12,11(0xb)
1c004e14:	0399958c 	ori	$r12,$r12,0x665
1c004e18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e1c:	50001400 	b	20(0x14) # 1c004e30 <my_PWM_Init+0x34>
1c004e20:	03400000 	andi	$r0,$r0,0x0
1c004e24:	03400000 	andi	$r0,$r0,0x0
1c004e28:	03400000 	andi	$r0,$r0,0x0
1c004e2c:	03400000 	andi	$r0,$r0,0x0
1c004e30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e38:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004e3c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004e20 <my_PWM_Init+0x24>
1c004e40:	03400000 	andi	$r0,$r0,0x0
1c004e44:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e48:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e50:	4c000020 	jirl	$r0,$r1,0

1c004e54 <my_SPI_Init>:
my_SPI_Init():
1c004e54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e58:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e64:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004e68:	57cff7ff 	bl	-12300(0xfffcff4) # 1c001e5c <soc_Spi_Init>
1c004e6c:	03400000 	andi	$r0,$r0,0x0
1c004e70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e74:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e7c:	4c000020 	jirl	$r0,$r1,0

1c004e80 <Init_main>:
Init_main():
1c004e80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e84:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e88:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e90:	57e4ffff 	bl	-6916(0xfffe4fc) # 1c00338c <SG90_Init>
1c004e94:	57f353ff 	bl	-3248(0xffff350) # 1c0041e4 <OLED_Init>
1c004e98:	57f5abff 	bl	-2648(0xffff5a8) # 1c004440 <OLED_CLS>
1c004e9c:	54001c00 	bl	28(0x1c) # 1c004eb8 <RC522_Init>
1c004ea0:	57d5c3ff 	bl	-10816(0xfffd5c0) # 1c002460 <as608_init>
1c004ea4:	03400000 	andi	$r0,$r0,0x0
1c004ea8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004eac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004eb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004eb4:	4c000020 	jirl	$r0,$r1,0

1c004eb8 <RC522_Init>:
RC522_Init():
1c004eb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ebc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ec0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ec4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ec8:	1400016c 	lu12i.w	$r12,11(0xb)
1c004ecc:	0399958c 	ori	$r12,$r12,0x665
1c004ed0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ed4:	50001400 	b	20(0x14) # 1c004ee8 <RC522_Init+0x30>
1c004ed8:	03400000 	andi	$r0,$r0,0x0
1c004edc:	03400000 	andi	$r0,$r0,0x0
1c004ee0:	03400000 	andi	$r0,$r0,0x0
1c004ee4:	03400000 	andi	$r0,$r0,0x0
1c004ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004eec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004ef0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004ef4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004ed8 <RC522_Init+0x20>
1c004ef8:	5403cc00 	bl	972(0x3cc) # 1c0052c4 <PcdReset>
1c004efc:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f00:	0391ed8c 	ori	$r12,$r12,0x47b
1c004f04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004f08:	50001400 	b	20(0x14) # 1c004f1c <RC522_Init+0x64>
1c004f0c:	03400000 	andi	$r0,$r0,0x0
1c004f10:	03400000 	andi	$r0,$r0,0x0
1c004f14:	03400000 	andi	$r0,$r0,0x0
1c004f18:	03400000 	andi	$r0,$r0,0x0
1c004f1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004f20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f24:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c004f28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f0c <RC522_Init+0x54>
1c004f2c:	54039800 	bl	920(0x398) # 1c0052c4 <PcdReset>
1c004f30:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f34:	0391ed8c 	ori	$r12,$r12,0x47b
1c004f38:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004f3c:	50001400 	b	20(0x14) # 1c004f50 <RC522_Init+0x98>
1c004f40:	03400000 	andi	$r0,$r0,0x0
1c004f44:	03400000 	andi	$r0,$r0,0x0
1c004f48:	03400000 	andi	$r0,$r0,0x0
1c004f4c:	03400000 	andi	$r0,$r0,0x0
1c004f50:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004f54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f58:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c004f5c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f40 <RC522_Init+0x88>
1c004f60:	54051c00 	bl	1308(0x51c) # 1c00547c <PcdAntennaOff>
1c004f64:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f68:	0391ed8c 	ori	$r12,$r12,0x47b
1c004f6c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004f70:	50001400 	b	20(0x14) # 1c004f84 <RC522_Init+0xcc>
1c004f74:	03400000 	andi	$r0,$r0,0x0
1c004f78:	03400000 	andi	$r0,$r0,0x0
1c004f7c:	03400000 	andi	$r0,$r0,0x0
1c004f80:	03400000 	andi	$r0,$r0,0x0
1c004f84:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004f88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f8c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c004f90:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f74 <RC522_Init+0xbc>
1c004f94:	54045400 	bl	1108(0x454) # 1c0053e8 <PcdAntennaOn>
1c004f98:	03400000 	andi	$r0,$r0,0x0
1c004f9c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004fa0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004fa4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fa8:	4c000020 	jirl	$r0,$r1,0

1c004fac <ReadRawRC>:
ReadRawRC():
1c004fac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004fb0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004fb4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004fb8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004fbc:	0015008c 	move	$r12,$r4
1c004fc0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004fc4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c004fc8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004fcc:	0040858c 	slli.w	$r12,$r12,0x1
1c004fd0:	00005d8c 	ext.w.b	$r12,$r12
1c004fd4:	0341f98c 	andi	$r12,$r12,0x7e
1c004fd8:	00005d8d 	ext.w.b	$r13,$r12
1c004fdc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c004fe0:	001531ac 	or	$r12,$r13,$r12
1c004fe4:	00005d8c 	ext.w.b	$r12,$r12
1c004fe8:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004fec:	57cef7ff 	bl	-12556(0xfffcef4) # 1c001ee0 <soc_Spi_Cs_Down>
1c004ff0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004ff4:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004ff8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c004ffc:	03400000 	andi	$r0,$r0,0x0
1c005000:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005004:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005008:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00500c:	0340118c 	andi	$r12,$r12,0x4
1c005010:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c005000 <ReadRawRC+0x54>
1c005014:	03400000 	andi	$r0,$r0,0x0
1c005018:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00501c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005020:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005024:	0340058c 	andi	$r12,$r12,0x1
1c005028:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005018 <ReadRawRC+0x6c>
1c00502c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005030:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005034:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005038:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00503c:	29000980 	st.b	$r0,$r12,2(0x2)
1c005040:	03400000 	andi	$r0,$r0,0x0
1c005044:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005048:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00504c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005050:	0340118c 	andi	$r12,$r12,0x4
1c005054:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c005044 <ReadRawRC+0x98>
1c005058:	03400000 	andi	$r0,$r0,0x0
1c00505c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005060:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005064:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005068:	0340058c 	andi	$r12,$r12,0x1
1c00506c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c00505c <ReadRawRC+0xb0>
1c005070:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005074:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005078:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00507c:	57cebfff 	bl	-12612(0xfffcebc) # 1c001f38 <soc_Spi_Cs_Up>
1c005080:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005084:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005088:	50001400 	b	20(0x14) # 1c00509c <ReadRawRC+0xf0>
1c00508c:	03400000 	andi	$r0,$r0,0x0
1c005090:	03400000 	andi	$r0,$r0,0x0
1c005094:	03400000 	andi	$r0,$r0,0x0
1c005098:	03400000 	andi	$r0,$r0,0x0
1c00509c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0050a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0050a4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0050a8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00508c <ReadRawRC+0xe0>
1c0050ac:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0050b0:	00150184 	move	$r4,$r12
1c0050b4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0050b8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0050bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0050c0:	4c000020 	jirl	$r0,$r1,0

1c0050c4 <WriteRawRC>:
WriteRawRC():
1c0050c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0050c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0050cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0050d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0050d4:	0015008c 	move	$r12,$r4
1c0050d8:	001500ad 	move	$r13,$r5
1c0050dc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0050e0:	001501ac 	move	$r12,$r13
1c0050e4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0050e8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0050ec:	0040858c 	slli.w	$r12,$r12,0x1
1c0050f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0050f4:	0341f98c 	andi	$r12,$r12,0x7e
1c0050f8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0050fc:	57cde7ff 	bl	-12828(0xfffcde4) # 1c001ee0 <soc_Spi_Cs_Down>
1c005100:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005104:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005108:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00510c:	03400000 	andi	$r0,$r0,0x0
1c005110:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005114:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005118:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00511c:	0340118c 	andi	$r12,$r12,0x4
1c005120:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c005110 <WriteRawRC+0x4c>
1c005124:	03400000 	andi	$r0,$r0,0x0
1c005128:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00512c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005130:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005134:	0340058c 	andi	$r12,$r12,0x1
1c005138:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005128 <WriteRawRC+0x64>
1c00513c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005140:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005144:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c005148:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00514c:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c005150:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005154:	03400000 	andi	$r0,$r0,0x0
1c005158:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00515c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005160:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005164:	0340118c 	andi	$r12,$r12,0x4
1c005168:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c005158 <WriteRawRC+0x94>
1c00516c:	03400000 	andi	$r0,$r0,0x0
1c005170:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005174:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005178:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00517c:	0340058c 	andi	$r12,$r12,0x1
1c005180:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005170 <WriteRawRC+0xac>
1c005184:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005188:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00518c:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c005190:	57cdabff 	bl	-12888(0xfffcda8) # 1c001f38 <soc_Spi_Cs_Up>
1c005194:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005198:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00519c:	50001400 	b	20(0x14) # 1c0051b0 <WriteRawRC+0xec>
1c0051a0:	03400000 	andi	$r0,$r0,0x0
1c0051a4:	03400000 	andi	$r0,$r0,0x0
1c0051a8:	03400000 	andi	$r0,$r0,0x0
1c0051ac:	03400000 	andi	$r0,$r0,0x0
1c0051b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0051b8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0051bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0051a0 <WriteRawRC+0xdc>
1c0051c0:	03400000 	andi	$r0,$r0,0x0
1c0051c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0051c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0051cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0051d0:	4c000020 	jirl	$r0,$r1,0

1c0051d4 <SetBitMask>:
SetBitMask():
1c0051d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0051d8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0051dc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0051e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0051e4:	0015008c 	move	$r12,$r4
1c0051e8:	001500ad 	move	$r13,$r5
1c0051ec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0051f0:	001501ac 	move	$r12,$r13
1c0051f4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0051f8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0051fc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005200:	00150184 	move	$r4,$r12
1c005204:	57fdabff 	bl	-600(0xffffda8) # 1c004fac <ReadRawRC>
1c005208:	0015008c 	move	$r12,$r4
1c00520c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005210:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c005214:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005218:	001531ac 	or	$r12,$r13,$r12
1c00521c:	00005d8c 	ext.w.b	$r12,$r12
1c005220:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005224:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005228:	001501a5 	move	$r5,$r13
1c00522c:	00150184 	move	$r4,$r12
1c005230:	57fe97ff 	bl	-364(0xffffe94) # 1c0050c4 <WriteRawRC>
1c005234:	03400000 	andi	$r0,$r0,0x0
1c005238:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00523c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005240:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005244:	4c000020 	jirl	$r0,$r1,0

1c005248 <ClearBitMask>:
ClearBitMask():
1c005248:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00524c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005250:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005254:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005258:	0015008c 	move	$r12,$r4
1c00525c:	001500ad 	move	$r13,$r5
1c005260:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005264:	001501ac 	move	$r12,$r13
1c005268:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00526c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005270:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005274:	00150184 	move	$r4,$r12
1c005278:	57fd37ff 	bl	-716(0xffffd34) # 1c004fac <ReadRawRC>
1c00527c:	0015008c 	move	$r12,$r4
1c005280:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005284:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c005288:	0014300c 	nor	$r12,$r0,$r12
1c00528c:	00005d8d 	ext.w.b	$r13,$r12
1c005290:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005294:	0014b1ac 	and	$r12,$r13,$r12
1c005298:	00005d8c 	ext.w.b	$r12,$r12
1c00529c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0052a0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0052a4:	001501a5 	move	$r5,$r13
1c0052a8:	00150184 	move	$r4,$r12
1c0052ac:	57fe1bff 	bl	-488(0xffffe18) # 1c0050c4 <WriteRawRC>
1c0052b0:	03400000 	andi	$r0,$r0,0x0
1c0052b4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0052b8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0052bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0052c0:	4c000020 	jirl	$r0,$r1,0

1c0052c4 <PcdReset>:
PcdReset():
1c0052c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0052d8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0052dc:	57c64fff 	bl	-14772(0xfffc64c) # 1c001928 <gpio_write>
1c0052e0:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c0052e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0052e8:	50001400 	b	20(0x14) # 1c0052fc <PcdReset+0x38>
1c0052ec:	03400000 	andi	$r0,$r0,0x0
1c0052f0:	03400000 	andi	$r0,$r0,0x0
1c0052f4:	03400000 	andi	$r0,$r0,0x0
1c0052f8:	03400000 	andi	$r0,$r0,0x0
1c0052fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005300:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005304:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005308:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0052ec <PcdReset+0x28>
1c00530c:	00150005 	move	$r5,$r0
1c005310:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005314:	57c617ff 	bl	-14828(0xfffc614) # 1c001928 <gpio_write>
1c005318:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c00531c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005320:	50001400 	b	20(0x14) # 1c005334 <PcdReset+0x70>
1c005324:	03400000 	andi	$r0,$r0,0x0
1c005328:	03400000 	andi	$r0,$r0,0x0
1c00532c:	03400000 	andi	$r0,$r0,0x0
1c005330:	03400000 	andi	$r0,$r0,0x0
1c005334:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005338:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00533c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c005340:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005324 <PcdReset+0x60>
1c005344:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005348:	02809404 	addi.w	$r4,$r0,37(0x25)
1c00534c:	57c5dfff 	bl	-14884(0xfffc5dc) # 1c001928 <gpio_write>
1c005350:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c005354:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005358:	57fd6fff 	bl	-660(0xffffd6c) # 1c0050c4 <WriteRawRC>
1c00535c:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c005360:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005364:	50001400 	b	20(0x14) # 1c005378 <PcdReset+0xb4>
1c005368:	03400000 	andi	$r0,$r0,0x0
1c00536c:	03400000 	andi	$r0,$r0,0x0
1c005370:	03400000 	andi	$r0,$r0,0x0
1c005374:	03400000 	andi	$r0,$r0,0x0
1c005378:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00537c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005380:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c005384:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005368 <PcdReset+0xa4>
1c005388:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c00538c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005390:	57fd37ff 	bl	-716(0xffffd34) # 1c0050c4 <WriteRawRC>
1c005394:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c005398:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00539c:	57fd2bff 	bl	-728(0xffffd28) # 1c0050c4 <WriteRawRC>
1c0053a0:	00150005 	move	$r5,$r0
1c0053a4:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c0053a8:	57fd1fff 	bl	-740(0xffffd1c) # 1c0050c4 <WriteRawRC>
1c0053ac:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0053b0:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c0053b4:	57fd13ff 	bl	-752(0xffffd10) # 1c0050c4 <WriteRawRC>
1c0053b8:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c0053bc:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c0053c0:	57fd07ff 	bl	-764(0xffffd04) # 1c0050c4 <WriteRawRC>
1c0053c4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0053c8:	02805404 	addi.w	$r4,$r0,21(0x15)
1c0053cc:	57fcfbff 	bl	-776(0xffffcf8) # 1c0050c4 <WriteRawRC>
1c0053d0:	0015000c 	move	$r12,$r0
1c0053d4:	00150184 	move	$r4,$r12
1c0053d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053e4:	4c000020 	jirl	$r0,$r1,0

1c0053e8 <PcdAntennaOn>:
PcdAntennaOn():
1c0053e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053f8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0053fc:	02805404 	addi.w	$r4,$r0,21(0x15)
1c005400:	57fcc7ff 	bl	-828(0xffffcc4) # 1c0050c4 <WriteRawRC>
1c005404:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c005408:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00540c:	50001400 	b	20(0x14) # 1c005420 <PcdAntennaOn+0x38>
1c005410:	03400000 	andi	$r0,$r0,0x0
1c005414:	03400000 	andi	$r0,$r0,0x0
1c005418:	03400000 	andi	$r0,$r0,0x0
1c00541c:	03400000 	andi	$r0,$r0,0x0
1c005420:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005424:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005428:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00542c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005410 <PcdAntennaOn+0x28>
1c005430:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005434:	57fb7bff 	bl	-1160(0xffffb78) # 1c004fac <ReadRawRC>
1c005438:	0015008c 	move	$r12,$r4
1c00543c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005440:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005444:	03400d8c 	andi	$r12,$r12,0x3
1c005448:	44001180 	bnez	$r12,16(0x10) # 1c005458 <PcdAntennaOn+0x70>
1c00544c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005450:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005454:	57fd83ff 	bl	-640(0xffffd80) # 1c0051d4 <SetBitMask>
1c005458:	02805404 	addi.w	$r4,$r0,21(0x15)
1c00545c:	57fb53ff 	bl	-1200(0xffffb50) # 1c004fac <ReadRawRC>
1c005460:	0015008c 	move	$r12,$r4
1c005464:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005468:	03400000 	andi	$r0,$r0,0x0
1c00546c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005470:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005474:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005478:	4c000020 	jirl	$r0,$r1,0

1c00547c <PcdAntennaOff>:
PcdAntennaOff():
1c00547c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005480:	29803061 	st.w	$r1,$r3,12(0xc)
1c005484:	29802076 	st.w	$r22,$r3,8(0x8)
1c005488:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00548c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005490:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005494:	57fdb7ff 	bl	-588(0xffffdb4) # 1c005248 <ClearBitMask>
1c005498:	03400000 	andi	$r0,$r0,0x0
1c00549c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0054a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054a8:	4c000020 	jirl	$r0,$r1,0

1c0054ac <PcdComMF522>:
PcdComMF522():
1c0054ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0054b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0054b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0054b8:	29809077 	st.w	$r23,$r3,36(0x24)
1c0054bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054c0:	0015008c 	move	$r12,$r4
1c0054c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0054c8:	001500cd 	move	$r13,$r6
1c0054cc:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c0054d0:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c0054d4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0054d8:	001501ac 	move	$r12,$r13
1c0054dc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0054e0:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0054e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0054e8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0054ec:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0054f0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0054f4:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0054f8:	5800218d 	beq	$r12,$r13,32(0x20) # 1c005518 <PcdComMF522+0x6c>
1c0054fc:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c005500:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c00552c <PcdComMF522+0x80>
1c005504:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c005508:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00550c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005510:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005514:	50001c00 	b	28(0x1c) # 1c005530 <PcdComMF522+0x84>
1c005518:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c00551c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005520:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c005524:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005528:	50000800 	b	8(0x8) # 1c005530 <PcdComMF522+0x84>
1c00552c:	03400000 	andi	$r0,$r0,0x0
1c005530:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005534:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c005538:	001531ac 	or	$r12,$r13,$r12
1c00553c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005540:	00150185 	move	$r5,$r12
1c005544:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005548:	57fb7fff 	bl	-1156(0xffffb7c) # 1c0050c4 <WriteRawRC>
1c00554c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005550:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005554:	57fcf7ff 	bl	-780(0xffffcf4) # 1c005248 <ClearBitMask>
1c005558:	00150005 	move	$r5,$r0
1c00555c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005560:	57fb67ff 	bl	-1180(0xffffb64) # 1c0050c4 <WriteRawRC>
1c005564:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005568:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00556c:	57fc6bff 	bl	-920(0xffffc68) # 1c0051d4 <SetBitMask>
1c005570:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005574:	50002c00 	b	44(0x2c) # 1c0055a0 <PcdComMF522+0xf4>
1c005578:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00557c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005580:	001031ac 	add.w	$r12,$r13,$r12
1c005584:	2a00018c 	ld.bu	$r12,$r12,0
1c005588:	00150185 	move	$r5,$r12
1c00558c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c005590:	57fb37ff 	bl	-1228(0xffffb34) # 1c0050c4 <WriteRawRC>
1c005594:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005598:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00559c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0055a0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0055a4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0055a8:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c005578 <PcdComMF522+0xcc>
1c0055ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0055b0:	00150185 	move	$r5,$r12
1c0055b4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055b8:	57fb0fff 	bl	-1268(0xffffb0c) # 1c0050c4 <WriteRawRC>
1c0055bc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0055c0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0055c4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0055d4 <PcdComMF522+0x128>
1c0055c8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0055cc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0055d0:	57fc07ff 	bl	-1020(0xffffc04) # 1c0051d4 <SetBitMask>
1c0055d4:	1400026c 	lu12i.w	$r12,19(0x13)
1c0055d8:	03a2018c 	ori	$r12,$r12,0x880
1c0055dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0055e0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0055e4:	57f9cbff 	bl	-1592(0xffff9c8) # 1c004fac <ReadRawRC>
1c0055e8:	0015008c 	move	$r12,$r4
1c0055ec:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0055f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0055f4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0055f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0055fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005600:	40002580 	beqz	$r12,36(0x24) # 1c005624 <PcdComMF522+0x178>
1c005604:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005608:	0340058c 	andi	$r12,$r12,0x1
1c00560c:	44001980 	bnez	$r12,24(0x18) # 1c005624 <PcdComMF522+0x178>
1c005610:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005614:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005618:	0014b1ac 	and	$r12,$r13,$r12
1c00561c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005620:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c0055e0 <PcdComMF522+0x134>
1c005624:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005628:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00562c:	57fc1fff 	bl	-996(0xffffc1c) # 1c005248 <ClearBitMask>
1c005630:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005634:	40011180 	beqz	$r12,272(0x110) # 1c005744 <PcdComMF522+0x298>
1c005638:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00563c:	57f973ff 	bl	-1680(0xffff970) # 1c004fac <ReadRawRC>
1c005640:	0015008c 	move	$r12,$r4
1c005644:	03406d8c 	andi	$r12,$r12,0x1b
1c005648:	4400f580 	bnez	$r12,244(0xf4) # 1c00573c <PcdComMF522+0x290>
1c00564c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005650:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005654:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005658:	0014b1ac 	and	$r12,$r13,$r12
1c00565c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005660:	0340058c 	andi	$r12,$r12,0x1
1c005664:	40000d80 	beqz	$r12,12(0xc) # 1c005670 <PcdComMF522+0x1c4>
1c005668:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00566c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005670:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c005674:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005678:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c005744 <PcdComMF522+0x298>
1c00567c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005680:	57f92fff 	bl	-1748(0xffff92c) # 1c004fac <ReadRawRC>
1c005684:	0015008c 	move	$r12,$r4
1c005688:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00568c:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005690:	57f91fff 	bl	-1764(0xffff91c) # 1c004fac <ReadRawRC>
1c005694:	0015008c 	move	$r12,$r4
1c005698:	03401d8c 	andi	$r12,$r12,0x7
1c00569c:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0056a0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0056a4:	40002580 	beqz	$r12,36(0x24) # 1c0056c8 <PcdComMF522+0x21c>
1c0056a8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0056ac:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0056b0:	00408d8d 	slli.w	$r13,$r12,0x3
1c0056b4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0056b8:	001031ad 	add.w	$r13,$r13,$r12
1c0056bc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0056c0:	2980018d 	st.w	$r13,$r12,0
1c0056c4:	50001400 	b	20(0x14) # 1c0056d8 <PcdComMF522+0x22c>
1c0056c8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0056cc:	00408d8d 	slli.w	$r13,$r12,0x3
1c0056d0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0056d4:	2980018d 	st.w	$r13,$r12,0
1c0056d8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0056dc:	44000d80 	bnez	$r12,12(0xc) # 1c0056e8 <PcdComMF522+0x23c>
1c0056e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056e4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0056e8:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0056ec:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0056f0:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0056fc <PcdComMF522+0x250>
1c0056f4:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0056f8:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0056fc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005700:	50002c00 	b	44(0x2c) # 1c00572c <PcdComMF522+0x280>
1c005704:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005708:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00570c:	001031b7 	add.w	$r23,$r13,$r12
1c005710:	02802404 	addi.w	$r4,$r0,9(0x9)
1c005714:	57f89bff 	bl	-1896(0xffff898) # 1c004fac <ReadRawRC>
1c005718:	0015008c 	move	$r12,$r4
1c00571c:	290002ec 	st.b	$r12,$r23,0
1c005720:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005724:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005728:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00572c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005730:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005734:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c005704 <PcdComMF522+0x258>
1c005738:	50000c00 	b	12(0xc) # 1c005744 <PcdComMF522+0x298>
1c00573c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005740:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005744:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005748:	02803004 	addi.w	$r4,$r0,12(0xc)
1c00574c:	57fa8bff 	bl	-1400(0xffffa88) # 1c0051d4 <SetBitMask>
1c005750:	00150005 	move	$r5,$r0
1c005754:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005758:	57f96fff 	bl	-1684(0xffff96c) # 1c0050c4 <WriteRawRC>
1c00575c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005760:	00150184 	move	$r4,$r12
1c005764:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005768:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00576c:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005770:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005774:	4c000020 	jirl	$r0,$r1,0

1c005778 <PcdRequest>:
PcdRequest():
1c005778:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c00577c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005780:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005784:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005788:	0015008c 	move	$r12,$r4
1c00578c:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c005790:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c005794:	02802005 	addi.w	$r5,$r0,8(0x8)
1c005798:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00579c:	57faafff 	bl	-1364(0xffffaac) # 1c005248 <ClearBitMask>
1c0057a0:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c0057a4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0057a8:	57f91fff 	bl	-1764(0xffff91c) # 1c0050c4 <WriteRawRC>
1c0057ac:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0057b0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0057b4:	57fa23ff 	bl	-1504(0xffffa20) # 1c0051d4 <SetBitMask>
1c0057b8:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0057bc:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c0057c0:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0057c4:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0057c8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0057cc:	001501c8 	move	$r8,$r14
1c0057d0:	001501a7 	move	$r7,$r13
1c0057d4:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0057d8:	00150185 	move	$r5,$r12
1c0057dc:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0057e0:	57fccfff 	bl	-820(0xffffccc) # 1c0054ac <PcdComMF522>
1c0057e4:	0015008c 	move	$r12,$r4
1c0057e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057ec:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0057f0:	44003180 	bnez	$r12,48(0x30) # 1c005820 <PcdRequest+0xa8>
1c0057f4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0057f8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0057fc:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005820 <PcdRequest+0xa8>
1c005800:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c005804:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005808:	2900018d 	st.b	$r13,$r12,0
1c00580c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005810:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005814:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c005818:	2900018d 	st.b	$r13,$r12,0
1c00581c:	50000c00 	b	12(0xc) # 1c005828 <PcdRequest+0xb0>
1c005820:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005824:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005828:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00582c:	00150184 	move	$r4,$r12
1c005830:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005834:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005838:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00583c:	4c000020 	jirl	$r0,$r1,0

1c005840 <PcdAnticoll>:
PcdAnticoll():
1c005840:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005844:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005848:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00584c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005850:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c005854:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005858:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00585c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c005860:	57f9ebff 	bl	-1560(0xffff9e8) # 1c005248 <ClearBitMask>
1c005864:	00150005 	move	$r5,$r0
1c005868:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00586c:	57f85bff 	bl	-1960(0xffff858) # 1c0050c4 <WriteRawRC>
1c005870:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005874:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005878:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c005248 <ClearBitMask>
1c00587c:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c005880:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c005884:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005888:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c00588c:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c005890:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c005894:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c005898:	001501c8 	move	$r8,$r14
1c00589c:	001501a7 	move	$r7,$r13
1c0058a0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0058a4:	00150185 	move	$r5,$r12
1c0058a8:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0058ac:	57fc03ff 	bl	-1024(0xffffc00) # 1c0054ac <PcdComMF522>
1c0058b0:	0015008c 	move	$r12,$r4
1c0058b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058b8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0058bc:	44008180 	bnez	$r12,128(0x80) # 1c00593c <PcdAnticoll+0xfc>
1c0058c0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0058c4:	50004c00 	b	76(0x4c) # 1c005910 <PcdAnticoll+0xd0>
1c0058c8:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c0058cc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058d0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0058d4:	001031ac 	add.w	$r12,$r13,$r12
1c0058d8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0058dc:	001039ad 	add.w	$r13,$r13,$r14
1c0058e0:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c0058e4:	2900018d 	st.b	$r13,$r12,0
1c0058e8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058ec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0058f0:	001031ac 	add.w	$r12,$r13,$r12
1c0058f4:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c0058f8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0058fc:	0015b1ac 	xor	$r12,$r13,$r12
1c005900:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005904:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005908:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00590c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005910:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005914:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005918:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0058c8 <PcdAnticoll+0x88>
1c00591c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005920:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005924:	001031ac 	add.w	$r12,$r13,$r12
1c005928:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c00592c:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005930:	58000dac 	beq	$r13,$r12,12(0xc) # 1c00593c <PcdAnticoll+0xfc>
1c005934:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005938:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00593c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005940:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005944:	57f893ff 	bl	-1904(0xffff890) # 1c0051d4 <SetBitMask>
1c005948:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00594c:	00150184 	move	$r4,$r12
1c005950:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005954:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005958:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00595c:	4c000020 	jirl	$r0,$r1,0

1c005960 <Return_Card>:
Return_Card():
1c005960:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005964:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005968:	29806076 	st.w	$r22,$r3,24(0x18)
1c00596c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005970:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c005974:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005978:	289a40a5 	ld.w	$r5,$r5,1680(0x690)
1c00597c:	02814804 	addi.w	$r4,$r0,82(0x52)
1c005980:	57fdfbff 	bl	-520(0xffffdf8) # 1c005778 <PcdRequest>
1c005984:	0015008c 	move	$r12,$r4
1c005988:	44005d80 	bnez	$r12,92(0x5c) # 1c0059e4 <Return_Card+0x84>
1c00598c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005990:	289a1084 	ld.w	$r4,$r4,1668(0x684)
1c005994:	57feafff 	bl	-340(0xffffeac) # 1c005840 <PcdAnticoll>
1c005998:	0015008c 	move	$r12,$r4
1c00599c:	44004980 	bnez	$r12,72(0x48) # 1c0059e4 <Return_Card+0x84>
1c0059a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059a4:	2899c18c 	ld.w	$r12,$r12,1648(0x670)
1c0059a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059ac:	0044918c 	srli.w	$r12,$r12,0x4
1c0059b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059b8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0059bc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0059c0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059c8:	2899318c 	ld.w	$r12,$r12,1612(0x64c)
1c0059cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0059d0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0059d4:	03403d8c 	andi	$r12,$r12,0xf
1c0059d8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0059dc:	001031ac 	add.w	$r12,$r13,$r12
1c0059e0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0059e4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0059e8:	00150184 	move	$r4,$r12
1c0059ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0059f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0059f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0059f8:	4c000020 	jirl	$r0,$r1,0

1c0059fc <Buffer_write>:
Buffer_write():
1c0059fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005a04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005a0c:	001500ac 	move	$r12,$r5
1c005a10:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005a14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a18:	2880018c 	ld.w	$r12,$r12,0
1c005a1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a20:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c005a24:	0010358c 	add.w	$r12,$r12,$r13
1c005a28:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005a2c:	2900018d 	st.b	$r13,$r12,0
1c005a30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a34:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005a38:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a40:	2980318d 	st.w	$r13,$r12,12(0xc)
1c005a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a48:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c005a4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a50:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005a54:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005a60 <Buffer_write+0x64>
1c005a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a5c:	29803180 	st.w	$r0,$r12,12(0xc)
1c005a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a64:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c005a68:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a70:	2980418d 	st.w	$r13,$r12,16(0x10)
1c005a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a78:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c005a7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a80:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005a84:	6400458d 	bge	$r12,$r13,68(0x44) # 1c005ac8 <Buffer_write+0xcc>
1c005a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a8c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c005a90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a94:	2980418d 	st.w	$r13,$r12,16(0x10)
1c005a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a9c:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005aa0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005aa8:	2980218d 	st.w	$r13,$r12,8(0x8)
1c005aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ab0:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c005ab4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ab8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005abc:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005ac8 <Buffer_write+0xcc>
1c005ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ac4:	29802180 	st.w	$r0,$r12,8(0x8)
1c005ac8:	03400000 	andi	$r0,$r0,0x0
1c005acc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005ad0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005ad4:	4c000020 	jirl	$r0,$r1,0

1c005ad8 <main>:
main():
1c005ad8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005adc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005ae0:	29806076 	st.w	$r22,$r3,24(0x18)
1c005ae4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ae8:	57f14fff 	bl	-3764(0xffff14c) # 1c004c34 <my_GPIO_Init>
1c005aec:	57f313ff 	bl	-3312(0xffff310) # 1c004dfc <my_PWM_Init>
1c005af0:	57f2a3ff 	bl	-3424(0xffff2a0) # 1c004d90 <my_I2C_Init>
1c005af4:	57f363ff 	bl	-3232(0xffff360) # 1c004e54 <my_SPI_Init>
1c005af8:	140001cc 	lu12i.w	$r12,14(0xe)
1c005afc:	03840184 	ori	$r4,$r12,0x100
1c005b00:	57d913ff 	bl	-9968(0xfffd910) # 1c003410 <hw_uart_init>
1c005b04:	14000e2c 	lu12i.w	$r12,113(0x71)
1c005b08:	03bfc98c 	ori	$r12,$r12,0xff2
1c005b0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b10:	50001400 	b	20(0x14) # 1c005b24 <main+0x4c>
1c005b14:	03400000 	andi	$r0,$r0,0x0
1c005b18:	03400000 	andi	$r0,$r0,0x0
1c005b1c:	03400000 	andi	$r0,$r0,0x0
1c005b20:	03400000 	andi	$r0,$r0,0x0
1c005b24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b28:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005b2c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005b30:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005b14 <main+0x3c>
1c005b34:	57f34fff 	bl	-3252(0xffff34c) # 1c004e80 <Init_main>
1c005b38:	14000e2c 	lu12i.w	$r12,113(0x71)
1c005b3c:	03bfc98c 	ori	$r12,$r12,0xff2
1c005b40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b44:	50001400 	b	20(0x14) # 1c005b58 <main+0x80>
1c005b48:	03400000 	andi	$r0,$r0,0x0
1c005b4c:	03400000 	andi	$r0,$r0,0x0
1c005b50:	03400000 	andi	$r0,$r0,0x0
1c005b54:	03400000 	andi	$r0,$r0,0x0
1c005b58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b5c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005b60:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c005b64:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005b48 <main+0x70>
1c005b68:	02809804 	addi.w	$r4,$r0,38(0x26)
1c005b6c:	57beb7ff 	bl	-16716(0xfffbeb4) # 1c001a20 <gpio_read>
1c005b70:	0015008d 	move	$r13,$r4
1c005b74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b78:	5c0ca9ac 	bne	$r13,$r12,3240(0xca8) # 1c006820 <main+0xd48>
1c005b7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b80:	029fb98c 	addi.w	$r12,$r12,2030(0x7ee)
1c005b84:	29000180 	st.b	$r0,$r12,0
1c005b88:	57da37ff 	bl	-9676(0xfffda34) # 1c0035bc <MatrixKey>
1c005b8c:	0015008c 	move	$r12,$r4
1c005b90:	0015018d 	move	$r13,$r12
1c005b94:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b98:	029f558c 	addi.w	$r12,$r12,2005(0x7d5)
1c005b9c:	2900018d 	st.b	$r13,$r12,0
1c005ba0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ba4:	02bbe58c 	addi.w	$r12,$r12,-263(0xef9)
1c005ba8:	2a00018c 	ld.bu	$r12,$r12,0
1c005bac:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c005bb0:	680c99ac 	bltu	$r13,$r12,3224(0xc98) # 1c006848 <main+0xd70>
1c005bb4:	0040898d 	slli.w	$r13,$r12,0x2
1c005bb8:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c005bbc:	02b6d18c 	addi.w	$r12,$r12,-588(0xdb4)
1c005bc0:	001031ac 	add.w	$r12,$r13,$r12
1c005bc4:	2880018c 	ld.w	$r12,$r12,0
1c005bc8:	4c000180 	jirl	$r0,$r12,0
1c005bcc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bd0:	02bb318c 	addi.w	$r12,$r12,-308(0xecc)
1c005bd4:	2a00018d 	ld.bu	$r13,$r12,0
1c005bd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005bdc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005bf4 <main+0x11c>
1c005be0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005be4:	540d0400 	bl	3332(0xd04) # 1c0068e8 <interface_display>
1c005be8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bec:	02bac18c 	addi.w	$r12,$r12,-336(0xeb0)
1c005bf0:	29000180 	st.b	$r0,$r12,0
1c005bf4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005bf8:	029dd58c 	addi.w	$r12,$r12,1909(0x775)
1c005bfc:	2a00018d 	ld.bu	$r13,$r12,0
1c005c00:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005c04:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005c2c <main+0x154>
1c005c08:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c0c:	02ba458c 	addi.w	$r12,$r12,-367(0xe91)
1c005c10:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005c14:	2900018d 	st.b	$r13,$r12,0
1c005c18:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c1c:	02ba018c 	addi.w	$r12,$r12,-384(0xe80)
1c005c20:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005c24:	2900018d 	st.b	$r13,$r12,0
1c005c28:	500c2800 	b	3112(0xc28) # 1c006850 <main+0xd78>
1c005c2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c30:	029cf58c 	addi.w	$r12,$r12,1853(0x73d)
1c005c34:	2a00018d 	ld.bu	$r13,$r12,0
1c005c38:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005c3c:	5c0c15ac 	bne	$r13,$r12,3092(0xc14) # 1c006850 <main+0xd78>
1c005c40:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c44:	02b9658c 	addi.w	$r12,$r12,-423(0xe59)
1c005c48:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005c4c:	2900018d 	st.b	$r13,$r12,0
1c005c50:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c54:	02b9218c 	addi.w	$r12,$r12,-440(0xe48)
1c005c58:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005c5c:	2900018d 	st.b	$r13,$r12,0
1c005c60:	500bf000 	b	3056(0xbf0) # 1c006850 <main+0xd78>
1c005c64:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c68:	02b8d18c 	addi.w	$r12,$r12,-460(0xe34)
1c005c6c:	2a00018d 	ld.bu	$r13,$r12,0
1c005c70:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005c74:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005c8c <main+0x1b4>
1c005c78:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005c7c:	540c6c00 	bl	3180(0xc6c) # 1c0068e8 <interface_display>
1c005c80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c84:	02b8618c 	addi.w	$r12,$r12,-488(0xe18)
1c005c88:	29000180 	st.b	$r0,$r12,0
1c005c8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c90:	029b758c 	addi.w	$r12,$r12,1757(0x6dd)
1c005c94:	2a00018d 	ld.bu	$r13,$r12,0
1c005c98:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005c9c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005cc4 <main+0x1ec>
1c005ca0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ca4:	02b7e58c 	addi.w	$r12,$r12,-519(0xdf9)
1c005ca8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005cac:	2900018d 	st.b	$r13,$r12,0
1c005cb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cb4:	02b7a18c 	addi.w	$r12,$r12,-536(0xde8)
1c005cb8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005cbc:	2900018d 	st.b	$r13,$r12,0
1c005cc0:	500b9800 	b	2968(0xb98) # 1c006858 <main+0xd80>
1c005cc4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cc8:	029a958c 	addi.w	$r12,$r12,1701(0x6a5)
1c005ccc:	2a00018d 	ld.bu	$r13,$r12,0
1c005cd0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005cd4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005cfc <main+0x224>
1c005cd8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cdc:	02b7058c 	addi.w	$r12,$r12,-575(0xdc1)
1c005ce0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005ce4:	2900018d 	st.b	$r13,$r12,0
1c005ce8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cec:	02b6c18c 	addi.w	$r12,$r12,-592(0xdb0)
1c005cf0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005cf4:	2900018d 	st.b	$r13,$r12,0
1c005cf8:	500b6000 	b	2912(0xb60) # 1c006858 <main+0xd80>
1c005cfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d00:	0299b58c 	addi.w	$r12,$r12,1645(0x66d)
1c005d04:	2a00018d 	ld.bu	$r13,$r12,0
1c005d08:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005d0c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005d34 <main+0x25c>
1c005d10:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d14:	02b6258c 	addi.w	$r12,$r12,-631(0xd89)
1c005d18:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005d1c:	2900018d 	st.b	$r13,$r12,0
1c005d20:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d24:	02b5e18c 	addi.w	$r12,$r12,-648(0xd78)
1c005d28:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005d2c:	2900018d 	st.b	$r13,$r12,0
1c005d30:	500b2800 	b	2856(0xb28) # 1c006858 <main+0xd80>
1c005d34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d38:	0298d58c 	addi.w	$r12,$r12,1589(0x635)
1c005d3c:	2a00018d 	ld.bu	$r13,$r12,0
1c005d40:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005d44:	5c0b15ac 	bne	$r13,$r12,2836(0xb14) # 1c006858 <main+0xd80>
1c005d48:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d4c:	02b5458c 	addi.w	$r12,$r12,-687(0xd51)
1c005d50:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d54:	2900018d 	st.b	$r13,$r12,0
1c005d58:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d5c:	02b5018c 	addi.w	$r12,$r12,-704(0xd40)
1c005d60:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d64:	2900018d 	st.b	$r13,$r12,0
1c005d68:	500af000 	b	2800(0xaf0) # 1c006858 <main+0xd80>
1c005d6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d70:	02b4b18c 	addi.w	$r12,$r12,-724(0xd2c)
1c005d74:	2a00018d 	ld.bu	$r13,$r12,0
1c005d78:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005d7c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005d94 <main+0x2bc>
1c005d80:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005d84:	540b6400 	bl	2916(0xb64) # 1c0068e8 <interface_display>
1c005d88:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d8c:	02b4418c 	addi.w	$r12,$r12,-752(0xd10)
1c005d90:	29000180 	st.b	$r0,$r12,0
1c005d94:	5415f800 	bl	5624(0x15f8) # 1c00738c <Read_ID>
1c005d98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d9c:	0297458c 	addi.w	$r12,$r12,1489(0x5d1)
1c005da0:	2a00018d 	ld.bu	$r13,$r12,0
1c005da4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005da8:	5c0ab9ac 	bne	$r13,$r12,2744(0xab8) # 1c006860 <main+0xd88>
1c005dac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005db0:	02b3b58c 	addi.w	$r12,$r12,-787(0xced)
1c005db4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005db8:	2900018d 	st.b	$r13,$r12,0
1c005dbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dc0:	02b3718c 	addi.w	$r12,$r12,-804(0xcdc)
1c005dc4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005dc8:	2900018d 	st.b	$r13,$r12,0
1c005dcc:	500a9400 	b	2708(0xa94) # 1c006860 <main+0xd88>
1c005dd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dd4:	02b3218c 	addi.w	$r12,$r12,-824(0xcc8)
1c005dd8:	2a00018d 	ld.bu	$r13,$r12,0
1c005ddc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005de0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005df8 <main+0x320>
1c005de4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005de8:	540b0000 	bl	2816(0xb00) # 1c0068e8 <interface_display>
1c005dec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005df0:	02b2b18c 	addi.w	$r12,$r12,-852(0xcac)
1c005df4:	29000180 	st.b	$r0,$r12,0
1c005df8:	5416e800 	bl	5864(0x16e8) # 1c0074e0 <Key_main>
1c005dfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e00:	0295b58c 	addi.w	$r12,$r12,1389(0x56d)
1c005e04:	2a00018d 	ld.bu	$r13,$r12,0
1c005e08:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005e0c:	5c0a5dac 	bne	$r13,$r12,2652(0xa5c) # 1c006868 <main+0xd90>
1c005e10:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e14:	02b2258c 	addi.w	$r12,$r12,-887(0xc89)
1c005e18:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e1c:	2900018d 	st.b	$r13,$r12,0
1c005e20:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e24:	02b1e18c 	addi.w	$r12,$r12,-904(0xc78)
1c005e28:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e2c:	2900018d 	st.b	$r13,$r12,0
1c005e30:	500a3800 	b	2616(0xa38) # 1c006868 <main+0xd90>
1c005e34:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e38:	02b1918c 	addi.w	$r12,$r12,-924(0xc64)
1c005e3c:	2a00018d 	ld.bu	$r13,$r12,0
1c005e40:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005e44:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e5c <main+0x384>
1c005e48:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005e4c:	540a9c00 	bl	2716(0xa9c) # 1c0068e8 <interface_display>
1c005e50:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e54:	02b1218c 	addi.w	$r12,$r12,-952(0xc48)
1c005e58:	29000180 	st.b	$r0,$r12,0
1c005e5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e60:	0294358c 	addi.w	$r12,$r12,1293(0x50d)
1c005e64:	2a00018d 	ld.bu	$r13,$r12,0
1c005e68:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005e6c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005e94 <main+0x3bc>
1c005e70:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e74:	02b0a58c 	addi.w	$r12,$r12,-983(0xc29)
1c005e78:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005e7c:	2900018d 	st.b	$r13,$r12,0
1c005e80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e84:	02b0618c 	addi.w	$r12,$r12,-1000(0xc18)
1c005e88:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005e8c:	2900018d 	st.b	$r13,$r12,0
1c005e90:	5009e000 	b	2528(0x9e0) # 1c006870 <main+0xd98>
1c005e94:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e98:	0293558c 	addi.w	$r12,$r12,1237(0x4d5)
1c005e9c:	2a00018d 	ld.bu	$r13,$r12,0
1c005ea0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005ea4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005ecc <main+0x3f4>
1c005ea8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005eac:	02afc58c 	addi.w	$r12,$r12,-1039(0xbf1)
1c005eb0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005eb4:	2900018d 	st.b	$r13,$r12,0
1c005eb8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ebc:	02af818c 	addi.w	$r12,$r12,-1056(0xbe0)
1c005ec0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005ec4:	2900018d 	st.b	$r13,$r12,0
1c005ec8:	5009a800 	b	2472(0x9a8) # 1c006870 <main+0xd98>
1c005ecc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ed0:	0292758c 	addi.w	$r12,$r12,1181(0x49d)
1c005ed4:	2a00018d 	ld.bu	$r13,$r12,0
1c005ed8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005edc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005f04 <main+0x42c>
1c005ee0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ee4:	02aee58c 	addi.w	$r12,$r12,-1095(0xbb9)
1c005ee8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005eec:	2900018d 	st.b	$r13,$r12,0
1c005ef0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ef4:	02aea18c 	addi.w	$r12,$r12,-1112(0xba8)
1c005ef8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005efc:	2900018d 	st.b	$r13,$r12,0
1c005f00:	50097000 	b	2416(0x970) # 1c006870 <main+0xd98>
1c005f04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f08:	0291958c 	addi.w	$r12,$r12,1125(0x465)
1c005f0c:	2a00018d 	ld.bu	$r13,$r12,0
1c005f10:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005f14:	5c095dac 	bne	$r13,$r12,2396(0x95c) # 1c006870 <main+0xd98>
1c005f18:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f1c:	02ae058c 	addi.w	$r12,$r12,-1151(0xb81)
1c005f20:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f24:	2900018d 	st.b	$r13,$r12,0
1c005f28:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f2c:	02adc18c 	addi.w	$r12,$r12,-1168(0xb70)
1c005f30:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f34:	2900018d 	st.b	$r13,$r12,0
1c005f38:	50093800 	b	2360(0x938) # 1c006870 <main+0xd98>
1c005f3c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f40:	02ad718c 	addi.w	$r12,$r12,-1188(0xb5c)
1c005f44:	2a00018d 	ld.bu	$r13,$r12,0
1c005f48:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005f4c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005f64 <main+0x48c>
1c005f50:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005f54:	54099400 	bl	2452(0x994) # 1c0068e8 <interface_display>
1c005f58:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f5c:	02ad018c 	addi.w	$r12,$r12,-1216(0xb40)
1c005f60:	29000180 	st.b	$r0,$r12,0
1c005f64:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f68:	0290158c 	addi.w	$r12,$r12,1029(0x405)
1c005f6c:	2a00018d 	ld.bu	$r13,$r12,0
1c005f70:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005f74:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005f9c <main+0x4c4>
1c005f78:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f7c:	02ac858c 	addi.w	$r12,$r12,-1247(0xb21)
1c005f80:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c005f84:	2900018d 	st.b	$r13,$r12,0
1c005f88:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f8c:	02ac418c 	addi.w	$r12,$r12,-1264(0xb10)
1c005f90:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c005f94:	2900018d 	st.b	$r13,$r12,0
1c005f98:	5008e000 	b	2272(0x8e0) # 1c006878 <main+0xda0>
1c005f9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fa0:	028f358c 	addi.w	$r12,$r12,973(0x3cd)
1c005fa4:	2a00018d 	ld.bu	$r13,$r12,0
1c005fa8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005fac:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005fd4 <main+0x4fc>
1c005fb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fb4:	02aba58c 	addi.w	$r12,$r12,-1303(0xae9)
1c005fb8:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005fbc:	2900018d 	st.b	$r13,$r12,0
1c005fc0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fc4:	02ab618c 	addi.w	$r12,$r12,-1320(0xad8)
1c005fc8:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005fcc:	2900018d 	st.b	$r13,$r12,0
1c005fd0:	5008a800 	b	2216(0x8a8) # 1c006878 <main+0xda0>
1c005fd4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fd8:	028e558c 	addi.w	$r12,$r12,917(0x395)
1c005fdc:	2a00018d 	ld.bu	$r13,$r12,0
1c005fe0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005fe4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00600c <main+0x534>
1c005fe8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fec:	02aac58c 	addi.w	$r12,$r12,-1359(0xab1)
1c005ff0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005ff4:	2900018d 	st.b	$r13,$r12,0
1c005ff8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ffc:	02aa818c 	addi.w	$r12,$r12,-1376(0xaa0)
1c006000:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006004:	2900018d 	st.b	$r13,$r12,0
1c006008:	50087000 	b	2160(0x870) # 1c006878 <main+0xda0>
1c00600c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006010:	028d758c 	addi.w	$r12,$r12,861(0x35d)
1c006014:	2a00018d 	ld.bu	$r13,$r12,0
1c006018:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00601c:	5c085dac 	bne	$r13,$r12,2140(0x85c) # 1c006878 <main+0xda0>
1c006020:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006024:	02a9e58c 	addi.w	$r12,$r12,-1415(0xa79)
1c006028:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00602c:	2900018d 	st.b	$r13,$r12,0
1c006030:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006034:	02a9a18c 	addi.w	$r12,$r12,-1432(0xa68)
1c006038:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00603c:	2900018d 	st.b	$r13,$r12,0
1c006040:	50083800 	b	2104(0x838) # 1c006878 <main+0xda0>
1c006044:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006048:	02a9518c 	addi.w	$r12,$r12,-1452(0xa54)
1c00604c:	2a00018d 	ld.bu	$r13,$r12,0
1c006050:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006054:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00606c <main+0x594>
1c006058:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c00605c:	54088c00 	bl	2188(0x88c) # 1c0068e8 <interface_display>
1c006060:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006064:	02a8e18c 	addi.w	$r12,$r12,-1480(0xa38)
1c006068:	29000180 	st.b	$r0,$r12,0
1c00606c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006070:	028bf58c 	addi.w	$r12,$r12,765(0x2fd)
1c006074:	2a00018d 	ld.bu	$r13,$r12,0
1c006078:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00607c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0060a4 <main+0x5cc>
1c006080:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006084:	02a8658c 	addi.w	$r12,$r12,-1511(0xa19)
1c006088:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00608c:	2900018d 	st.b	$r13,$r12,0
1c006090:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006094:	02a8218c 	addi.w	$r12,$r12,-1528(0xa08)
1c006098:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00609c:	2900018d 	st.b	$r13,$r12,0
1c0060a0:	5007e000 	b	2016(0x7e0) # 1c006880 <main+0xda8>
1c0060a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060a8:	028b158c 	addi.w	$r12,$r12,709(0x2c5)
1c0060ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0060b0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0060b4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0060dc <main+0x604>
1c0060b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060bc:	02a7858c 	addi.w	$r12,$r12,-1567(0x9e1)
1c0060c0:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c0060c4:	2900018d 	st.b	$r13,$r12,0
1c0060c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060cc:	02a7418c 	addi.w	$r12,$r12,-1584(0x9d0)
1c0060d0:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c0060d4:	2900018d 	st.b	$r13,$r12,0
1c0060d8:	5007a800 	b	1960(0x7a8) # 1c006880 <main+0xda8>
1c0060dc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060e0:	028a358c 	addi.w	$r12,$r12,653(0x28d)
1c0060e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0060e8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0060ec:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006114 <main+0x63c>
1c0060f0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060f4:	02a6a58c 	addi.w	$r12,$r12,-1623(0x9a9)
1c0060f8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0060fc:	2900018d 	st.b	$r13,$r12,0
1c006100:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006104:	02a6618c 	addi.w	$r12,$r12,-1640(0x998)
1c006108:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00610c:	2900018d 	st.b	$r13,$r12,0
1c006110:	50077000 	b	1904(0x770) # 1c006880 <main+0xda8>
1c006114:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006118:	0289558c 	addi.w	$r12,$r12,597(0x255)
1c00611c:	2a00018d 	ld.bu	$r13,$r12,0
1c006120:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006124:	5c075dac 	bne	$r13,$r12,1884(0x75c) # 1c006880 <main+0xda8>
1c006128:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00612c:	02a5c58c 	addi.w	$r12,$r12,-1679(0x971)
1c006130:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006134:	2900018d 	st.b	$r13,$r12,0
1c006138:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00613c:	02a5818c 	addi.w	$r12,$r12,-1696(0x960)
1c006140:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006144:	2900018d 	st.b	$r13,$r12,0
1c006148:	50073800 	b	1848(0x738) # 1c006880 <main+0xda8>
1c00614c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006150:	02a5318c 	addi.w	$r12,$r12,-1716(0x94c)
1c006154:	2a00018d 	ld.bu	$r13,$r12,0
1c006158:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c00615c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006174 <main+0x69c>
1c006160:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c006164:	54078400 	bl	1924(0x784) # 1c0068e8 <interface_display>
1c006168:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00616c:	02a4c18c 	addi.w	$r12,$r12,-1744(0x930)
1c006170:	29000180 	st.b	$r0,$r12,0
1c006174:	54176000 	bl	5984(0x1760) # 1c0078d4 <Key>
1c006178:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00617c:	0287c58c 	addi.w	$r12,$r12,497(0x1f1)
1c006180:	2a00018d 	ld.bu	$r13,$r12,0
1c006184:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006188:	5c0701ac 	bne	$r13,$r12,1792(0x700) # 1c006888 <main+0xdb0>
1c00618c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006190:	02a4358c 	addi.w	$r12,$r12,-1779(0x90d)
1c006194:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006198:	2900018d 	st.b	$r13,$r12,0
1c00619c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061a0:	02a3f18c 	addi.w	$r12,$r12,-1796(0x8fc)
1c0061a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0061a8:	2900018d 	st.b	$r13,$r12,0
1c0061ac:	5006dc00 	b	1756(0x6dc) # 1c006888 <main+0xdb0>
1c0061b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061b4:	02a3a18c 	addi.w	$r12,$r12,-1816(0x8e8)
1c0061b8:	2a00018d 	ld.bu	$r13,$r12,0
1c0061bc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0061c0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0061d8 <main+0x700>
1c0061c4:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0061c8:	54072000 	bl	1824(0x720) # 1c0068e8 <interface_display>
1c0061cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061d0:	02a3318c 	addi.w	$r12,$r12,-1844(0x8cc)
1c0061d4:	29000180 	st.b	$r0,$r12,0
1c0061d8:	540fc000 	bl	4032(0xfc0) # 1c007198 <Write_ID>
1c0061dc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061e0:	0286358c 	addi.w	$r12,$r12,397(0x18d)
1c0061e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0061e8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0061ec:	5c06a5ac 	bne	$r13,$r12,1700(0x6a4) # 1c006890 <main+0xdb8>
1c0061f0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061f4:	02a2a58c 	addi.w	$r12,$r12,-1879(0x8a9)
1c0061f8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0061fc:	2900018d 	st.b	$r13,$r12,0
1c006200:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006204:	02a2618c 	addi.w	$r12,$r12,-1896(0x898)
1c006208:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00620c:	2900018d 	st.b	$r13,$r12,0
1c006210:	50068000 	b	1664(0x680) # 1c006890 <main+0xdb8>
1c006214:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006218:	02a2118c 	addi.w	$r12,$r12,-1916(0x884)
1c00621c:	2a00018d 	ld.bu	$r13,$r12,0
1c006220:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006224:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00623c <main+0x764>
1c006228:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00622c:	5406bc00 	bl	1724(0x6bc) # 1c0068e8 <interface_display>
1c006230:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006234:	02a1a18c 	addi.w	$r12,$r12,-1944(0x868)
1c006238:	29000180 	st.b	$r0,$r12,0
1c00623c:	5419bc00 	bl	6588(0x19bc) # 1c007bf8 <Add_Key>
1c006240:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006244:	0284a58c 	addi.w	$r12,$r12,297(0x129)
1c006248:	2a00018d 	ld.bu	$r13,$r12,0
1c00624c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006250:	5c0649ac 	bne	$r13,$r12,1608(0x648) # 1c006898 <main+0xdc0>
1c006254:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006258:	02a1158c 	addi.w	$r12,$r12,-1979(0x845)
1c00625c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006260:	2900018d 	st.b	$r13,$r12,0
1c006264:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006268:	02a0d18c 	addi.w	$r12,$r12,-1996(0x834)
1c00626c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006270:	2900018d 	st.b	$r13,$r12,0
1c006274:	50062400 	b	1572(0x624) # 1c006898 <main+0xdc0>
1c006278:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00627c:	02a0818c 	addi.w	$r12,$r12,-2016(0x820)
1c006280:	2a00018d 	ld.bu	$r13,$r12,0
1c006284:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c006288:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0062a0 <main+0x7c8>
1c00628c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006290:	54065800 	bl	1624(0x658) # 1c0068e8 <interface_display>
1c006294:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006298:	02a0118c 	addi.w	$r12,$r12,-2044(0x804)
1c00629c:	29000180 	st.b	$r0,$r12,0
1c0062a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062a4:	0283258c 	addi.w	$r12,$r12,201(0xc9)
1c0062a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0062ac:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0062b0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0062d8 <main+0x800>
1c0062b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062b8:	029f958c 	addi.w	$r12,$r12,2021(0x7e5)
1c0062bc:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0062c0:	2900018d 	st.b	$r13,$r12,0
1c0062c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062c8:	029f518c 	addi.w	$r12,$r12,2004(0x7d4)
1c0062cc:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0062d0:	2900018d 	st.b	$r13,$r12,0
1c0062d4:	5005cc00 	b	1484(0x5cc) # 1c0068a0 <main+0xdc8>
1c0062d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062dc:	0282458c 	addi.w	$r12,$r12,145(0x91)
1c0062e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0062e4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0062e8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006310 <main+0x838>
1c0062ec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062f0:	029eb58c 	addi.w	$r12,$r12,1965(0x7ad)
1c0062f4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0062f8:	2900018d 	st.b	$r13,$r12,0
1c0062fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006300:	029e718c 	addi.w	$r12,$r12,1948(0x79c)
1c006304:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006308:	2900018d 	st.b	$r13,$r12,0
1c00630c:	50059400 	b	1428(0x594) # 1c0068a0 <main+0xdc8>
1c006310:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006314:	0281658c 	addi.w	$r12,$r12,89(0x59)
1c006318:	2a00018d 	ld.bu	$r13,$r12,0
1c00631c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006320:	5c0581ac 	bne	$r13,$r12,1408(0x580) # 1c0068a0 <main+0xdc8>
1c006324:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006328:	029dd58c 	addi.w	$r12,$r12,1909(0x775)
1c00632c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006330:	2900018d 	st.b	$r13,$r12,0
1c006334:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006338:	029d918c 	addi.w	$r12,$r12,1892(0x764)
1c00633c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006340:	2900018d 	st.b	$r13,$r12,0
1c006344:	50055c00 	b	1372(0x55c) # 1c0068a0 <main+0xdc8>
1c006348:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00634c:	029d418c 	addi.w	$r12,$r12,1872(0x750)
1c006350:	2a00018d 	ld.bu	$r13,$r12,0
1c006354:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006358:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006374 <main+0x89c>
1c00635c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c006360:	54058800 	bl	1416(0x588) # 1c0068e8 <interface_display>
1c006364:	541b6800 	bl	7016(0x1b68) # 1c007ecc <Delete_key>
1c006368:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00636c:	029cc18c 	addi.w	$r12,$r12,1840(0x730)
1c006370:	29000180 	st.b	$r0,$r12,0
1c006374:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006378:	02bfd58c 	addi.w	$r12,$r12,-11(0xff5)
1c00637c:	2a00018d 	ld.bu	$r13,$r12,0
1c006380:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006384:	5c0525ac 	bne	$r13,$r12,1316(0x524) # 1c0068a8 <main+0xdd0>
1c006388:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00638c:	029c458c 	addi.w	$r12,$r12,1809(0x711)
1c006390:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006394:	2900018d 	st.b	$r13,$r12,0
1c006398:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00639c:	029c018c 	addi.w	$r12,$r12,1792(0x700)
1c0063a0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0063a4:	2900018d 	st.b	$r13,$r12,0
1c0063a8:	50050000 	b	1280(0x500) # 1c0068a8 <main+0xdd0>
1c0063ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063b0:	029bb18c 	addi.w	$r12,$r12,1772(0x6ec)
1c0063b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0063b8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0063bc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0063d4 <main+0x8fc>
1c0063c0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0063c4:	54052400 	bl	1316(0x524) # 1c0068e8 <interface_display>
1c0063c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063cc:	029b418c 	addi.w	$r12,$r12,1744(0x6d0)
1c0063d0:	29000180 	st.b	$r0,$r12,0
1c0063d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063d8:	02be558c 	addi.w	$r12,$r12,-107(0xf95)
1c0063dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0063e0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0063e4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00640c <main+0x934>
1c0063e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063ec:	029ac58c 	addi.w	$r12,$r12,1713(0x6b1)
1c0063f0:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c0063f4:	2900018d 	st.b	$r13,$r12,0
1c0063f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063fc:	029a818c 	addi.w	$r12,$r12,1696(0x6a0)
1c006400:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006404:	2900018d 	st.b	$r13,$r12,0
1c006408:	5004a800 	b	1192(0x4a8) # 1c0068b0 <main+0xdd8>
1c00640c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006410:	02bd758c 	addi.w	$r12,$r12,-163(0xf5d)
1c006414:	2a00018d 	ld.bu	$r13,$r12,0
1c006418:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00641c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006444 <main+0x96c>
1c006420:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006424:	0299e58c 	addi.w	$r12,$r12,1657(0x679)
1c006428:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00642c:	2900018d 	st.b	$r13,$r12,0
1c006430:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006434:	0299a18c 	addi.w	$r12,$r12,1640(0x668)
1c006438:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00643c:	2900018d 	st.b	$r13,$r12,0
1c006440:	50047000 	b	1136(0x470) # 1c0068b0 <main+0xdd8>
1c006444:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006448:	02bc958c 	addi.w	$r12,$r12,-219(0xf25)
1c00644c:	2a00018d 	ld.bu	$r13,$r12,0
1c006450:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006454:	5c045dac 	bne	$r13,$r12,1116(0x45c) # 1c0068b0 <main+0xdd8>
1c006458:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00645c:	0299058c 	addi.w	$r12,$r12,1601(0x641)
1c006460:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006464:	2900018d 	st.b	$r13,$r12,0
1c006468:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00646c:	0298c18c 	addi.w	$r12,$r12,1584(0x630)
1c006470:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006474:	2900018d 	st.b	$r13,$r12,0
1c006478:	50043800 	b	1080(0x438) # 1c0068b0 <main+0xdd8>
1c00647c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006480:	0298718c 	addi.w	$r12,$r12,1564(0x61c)
1c006484:	2a00018d 	ld.bu	$r13,$r12,0
1c006488:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00648c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0064a8 <main+0x9d0>
1c006490:	02803804 	addi.w	$r4,$r0,14(0xe)
1c006494:	54045400 	bl	1108(0x454) # 1c0068e8 <interface_display>
1c006498:	540e4400 	bl	3652(0xe44) # 1c0072dc <Delate_ID>
1c00649c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064a0:	0297f18c 	addi.w	$r12,$r12,1532(0x5fc)
1c0064a4:	29000180 	st.b	$r0,$r12,0
1c0064a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0064ac:	02bb058c 	addi.w	$r12,$r12,-319(0xec1)
1c0064b0:	2a00018d 	ld.bu	$r13,$r12,0
1c0064b4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0064b8:	5c0401ac 	bne	$r13,$r12,1024(0x400) # 1c0068b8 <main+0xde0>
1c0064bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064c0:	0297758c 	addi.w	$r12,$r12,1501(0x5dd)
1c0064c4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0064c8:	2900018d 	st.b	$r13,$r12,0
1c0064cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064d0:	0297318c 	addi.w	$r12,$r12,1484(0x5cc)
1c0064d4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0064d8:	2900018d 	st.b	$r13,$r12,0
1c0064dc:	5003dc00 	b	988(0x3dc) # 1c0068b8 <main+0xde0>
1c0064e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064e4:	0296e18c 	addi.w	$r12,$r12,1464(0x5b8)
1c0064e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0064ec:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0064f0:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c00651c <main+0xa44>
1c0064f4:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0064f8:	5403f000 	bl	1008(0x3f0) # 1c0068e8 <interface_display>
1c0064fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006500:	0296758c 	addi.w	$r12,$r12,1437(0x59d)
1c006504:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006508:	2900018d 	st.b	$r13,$r12,0
1c00650c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006510:	0296318c 	addi.w	$r12,$r12,1420(0x58c)
1c006514:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006518:	2900018d 	st.b	$r13,$r12,0
1c00651c:	57cc53ff 	bl	-13232(0xfffcc50) # 1c00316c <press_FR>
1c006520:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006524:	02b9258c 	addi.w	$r12,$r12,-439(0xe49)
1c006528:	2a00018d 	ld.bu	$r13,$r12,0
1c00652c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006530:	5c0391ac 	bne	$r13,$r12,912(0x390) # 1c0068c0 <main+0xde8>
1c006534:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006538:	0295958c 	addi.w	$r12,$r12,1381(0x565)
1c00653c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006540:	2900018d 	st.b	$r13,$r12,0
1c006544:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006548:	0295518c 	addi.w	$r12,$r12,1364(0x554)
1c00654c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006550:	2900018d 	st.b	$r13,$r12,0
1c006554:	50036c00 	b	876(0x36c) # 1c0068c0 <main+0xde8>
1c006558:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00655c:	0295018c 	addi.w	$r12,$r12,1344(0x540)
1c006560:	2a00018d 	ld.bu	$r13,$r12,0
1c006564:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006568:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006580 <main+0xaa8>
1c00656c:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c006570:	54037800 	bl	888(0x378) # 1c0068e8 <interface_display>
1c006574:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006578:	0294918c 	addi.w	$r12,$r12,1316(0x524)
1c00657c:	29000180 	st.b	$r0,$r12,0
1c006580:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006584:	02b7a58c 	addi.w	$r12,$r12,-535(0xde9)
1c006588:	2a00018d 	ld.bu	$r13,$r12,0
1c00658c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c006590:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0065b8 <main+0xae0>
1c006594:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006598:	0294158c 	addi.w	$r12,$r12,1285(0x505)
1c00659c:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0065a0:	2900018d 	st.b	$r13,$r12,0
1c0065a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065a8:	0293d18c 	addi.w	$r12,$r12,1268(0x4f4)
1c0065ac:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0065b0:	2900018d 	st.b	$r13,$r12,0
1c0065b4:	50031400 	b	788(0x314) # 1c0068c8 <main+0xdf0>
1c0065b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065bc:	02b6c58c 	addi.w	$r12,$r12,-591(0xdb1)
1c0065c0:	2a00018d 	ld.bu	$r13,$r12,0
1c0065c4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0065c8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0065f0 <main+0xb18>
1c0065cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065d0:	0293358c 	addi.w	$r12,$r12,1229(0x4cd)
1c0065d4:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0065d8:	2900018d 	st.b	$r13,$r12,0
1c0065dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065e0:	0292f18c 	addi.w	$r12,$r12,1212(0x4bc)
1c0065e4:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0065e8:	2900018d 	st.b	$r13,$r12,0
1c0065ec:	5002dc00 	b	732(0x2dc) # 1c0068c8 <main+0xdf0>
1c0065f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065f4:	02b5e58c 	addi.w	$r12,$r12,-647(0xd79)
1c0065f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0065fc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006600:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006628 <main+0xb50>
1c006604:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006608:	0292558c 	addi.w	$r12,$r12,1173(0x495)
1c00660c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006610:	2900018d 	st.b	$r13,$r12,0
1c006614:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006618:	0292118c 	addi.w	$r12,$r12,1156(0x484)
1c00661c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006620:	2900018d 	st.b	$r13,$r12,0
1c006624:	5002a400 	b	676(0x2a4) # 1c0068c8 <main+0xdf0>
1c006628:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00662c:	02b5058c 	addi.w	$r12,$r12,-703(0xd41)
1c006630:	2a00018d 	ld.bu	$r13,$r12,0
1c006634:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006638:	5c0291ac 	bne	$r13,$r12,656(0x290) # 1c0068c8 <main+0xdf0>
1c00663c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006640:	0291758c 	addi.w	$r12,$r12,1117(0x45d)
1c006644:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006648:	2900018d 	st.b	$r13,$r12,0
1c00664c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006650:	0291318c 	addi.w	$r12,$r12,1100(0x44c)
1c006654:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006658:	2900018d 	st.b	$r13,$r12,0
1c00665c:	50026c00 	b	620(0x26c) # 1c0068c8 <main+0xdf0>
1c006660:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006664:	0290e18c 	addi.w	$r12,$r12,1080(0x438)
1c006668:	2a00018d 	ld.bu	$r13,$r12,0
1c00666c:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c006670:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c00669c <main+0xbc4>
1c006674:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006678:	54027000 	bl	624(0x270) # 1c0068e8 <interface_display>
1c00667c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006680:	0290758c 	addi.w	$r12,$r12,1053(0x41d)
1c006684:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006688:	2900018d 	st.b	$r13,$r12,0
1c00668c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006690:	0290318c 	addi.w	$r12,$r12,1036(0x40c)
1c006694:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006698:	2900018d 	st.b	$r13,$r12,0
1c00669c:	57c62bff 	bl	-14808(0xfffc628) # 1c002cc4 <Add_FR>
1c0066a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0066a4:	02b3258c 	addi.w	$r12,$r12,-823(0xcc9)
1c0066a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0066ac:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0066b0:	5c0221ac 	bne	$r13,$r12,544(0x220) # 1c0068d0 <main+0xdf8>
1c0066b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066b8:	028f958c 	addi.w	$r12,$r12,997(0x3e5)
1c0066bc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0066c0:	2900018d 	st.b	$r13,$r12,0
1c0066c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066c8:	028f518c 	addi.w	$r12,$r12,980(0x3d4)
1c0066cc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0066d0:	2900018d 	st.b	$r13,$r12,0
1c0066d4:	5001fc00 	b	508(0x1fc) # 1c0068d0 <main+0xdf8>
1c0066d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066dc:	028f018c 	addi.w	$r12,$r12,960(0x3c0)
1c0066e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0066e4:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0066e8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006700 <main+0xc28>
1c0066ec:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0066f0:	5401f800 	bl	504(0x1f8) # 1c0068e8 <interface_display>
1c0066f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066f8:	028e918c 	addi.w	$r12,$r12,932(0x3a4)
1c0066fc:	29000180 	st.b	$r0,$r12,0
1c006700:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006704:	02b1a58c 	addi.w	$r12,$r12,-919(0xc69)
1c006708:	2a00018d 	ld.bu	$r13,$r12,0
1c00670c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006710:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006738 <main+0xc60>
1c006714:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006718:	028e158c 	addi.w	$r12,$r12,901(0x385)
1c00671c:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c006720:	2900018d 	st.b	$r13,$r12,0
1c006724:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006728:	028dd18c 	addi.w	$r12,$r12,884(0x374)
1c00672c:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c006730:	2900018d 	st.b	$r13,$r12,0
1c006734:	5001a400 	b	420(0x1a4) # 1c0068d8 <main+0xe00>
1c006738:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00673c:	02b0c58c 	addi.w	$r12,$r12,-975(0xc31)
1c006740:	2a00018d 	ld.bu	$r13,$r12,0
1c006744:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006748:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006770 <main+0xc98>
1c00674c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006750:	028d358c 	addi.w	$r12,$r12,845(0x34d)
1c006754:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006758:	2900018d 	st.b	$r13,$r12,0
1c00675c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006760:	028cf18c 	addi.w	$r12,$r12,828(0x33c)
1c006764:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006768:	2900018d 	st.b	$r13,$r12,0
1c00676c:	50016c00 	b	364(0x16c) # 1c0068d8 <main+0xe00>
1c006770:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006774:	02afe58c 	addi.w	$r12,$r12,-1031(0xbf9)
1c006778:	2a00018d 	ld.bu	$r13,$r12,0
1c00677c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006780:	5c0159ac 	bne	$r13,$r12,344(0x158) # 1c0068d8 <main+0xe00>
1c006784:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006788:	028c558c 	addi.w	$r12,$r12,789(0x315)
1c00678c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006790:	2900018d 	st.b	$r13,$r12,0
1c006794:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006798:	028c118c 	addi.w	$r12,$r12,772(0x304)
1c00679c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0067a0:	2900018d 	st.b	$r13,$r12,0
1c0067a4:	50013400 	b	308(0x134) # 1c0068d8 <main+0xe00>
1c0067a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067ac:	028bc18c 	addi.w	$r12,$r12,752(0x2f0)
1c0067b0:	2a00018d 	ld.bu	$r13,$r12,0
1c0067b4:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c0067b8:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c0067e8 <main+0xd10>
1c0067bc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0067c0:	54012800 	bl	296(0x128) # 1c0068e8 <interface_display>
1c0067c4:	57cb1fff 	bl	-13540(0xfffcb1c) # 1c0032e0 <Del_FR_Lib>
1c0067c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067cc:	028b458c 	addi.w	$r12,$r12,721(0x2d1)
1c0067d0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0067d4:	2900018d 	st.b	$r13,$r12,0
1c0067d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067dc:	028b018c 	addi.w	$r12,$r12,704(0x2c0)
1c0067e0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0067e4:	2900018d 	st.b	$r13,$r12,0
1c0067e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0067ec:	02ae058c 	addi.w	$r12,$r12,-1151(0xb81)
1c0067f0:	2a00018d 	ld.bu	$r13,$r12,0
1c0067f4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0067f8:	5c00e9ac 	bne	$r13,$r12,232(0xe8) # 1c0068e0 <main+0xe08>
1c0067fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006800:	028a758c 	addi.w	$r12,$r12,669(0x29d)
1c006804:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006808:	2900018d 	st.b	$r13,$r12,0
1c00680c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006810:	028a318c 	addi.w	$r12,$r12,652(0x28c)
1c006814:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006818:	2900018d 	st.b	$r13,$r12,0
1c00681c:	5000c400 	b	196(0xc4) # 1c0068e0 <main+0xe08>
1c006820:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006824:	02ad298c 	addi.w	$r12,$r12,-1206(0xb4a)
1c006828:	2a00018c 	ld.bu	$r12,$r12,0
1c00682c:	47f33d9f 	bnez	$r12,-3268(0x7ff33c) # 1c005b68 <main+0x90>
1c006830:	57dc13ff 	bl	-9200(0xfffdc10) # 1c004440 <OLED_CLS>
1c006834:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006838:	02acd98c 	addi.w	$r12,$r12,-1226(0xb36)
1c00683c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006840:	2900018d 	st.b	$r13,$r12,0
1c006844:	53f327ff 	b	-3292(0xffff324) # 1c005b68 <main+0x90>
1c006848:	03400000 	andi	$r0,$r0,0x0
1c00684c:	53f31fff 	b	-3300(0xffff31c) # 1c005b68 <main+0x90>
1c006850:	03400000 	andi	$r0,$r0,0x0
1c006854:	53f317ff 	b	-3308(0xffff314) # 1c005b68 <main+0x90>
1c006858:	03400000 	andi	$r0,$r0,0x0
1c00685c:	53f30fff 	b	-3316(0xffff30c) # 1c005b68 <main+0x90>
1c006860:	03400000 	andi	$r0,$r0,0x0
1c006864:	53f307ff 	b	-3324(0xffff304) # 1c005b68 <main+0x90>
1c006868:	03400000 	andi	$r0,$r0,0x0
1c00686c:	53f2ffff 	b	-3332(0xffff2fc) # 1c005b68 <main+0x90>
1c006870:	03400000 	andi	$r0,$r0,0x0
1c006874:	53f2f7ff 	b	-3340(0xffff2f4) # 1c005b68 <main+0x90>
1c006878:	03400000 	andi	$r0,$r0,0x0
1c00687c:	53f2efff 	b	-3348(0xffff2ec) # 1c005b68 <main+0x90>
1c006880:	03400000 	andi	$r0,$r0,0x0
1c006884:	53f2e7ff 	b	-3356(0xffff2e4) # 1c005b68 <main+0x90>
1c006888:	03400000 	andi	$r0,$r0,0x0
1c00688c:	53f2dfff 	b	-3364(0xffff2dc) # 1c005b68 <main+0x90>
1c006890:	03400000 	andi	$r0,$r0,0x0
1c006894:	53f2d7ff 	b	-3372(0xffff2d4) # 1c005b68 <main+0x90>
1c006898:	03400000 	andi	$r0,$r0,0x0
1c00689c:	53f2cfff 	b	-3380(0xffff2cc) # 1c005b68 <main+0x90>
1c0068a0:	03400000 	andi	$r0,$r0,0x0
1c0068a4:	53f2c7ff 	b	-3388(0xffff2c4) # 1c005b68 <main+0x90>
1c0068a8:	03400000 	andi	$r0,$r0,0x0
1c0068ac:	53f2bfff 	b	-3396(0xffff2bc) # 1c005b68 <main+0x90>
1c0068b0:	03400000 	andi	$r0,$r0,0x0
1c0068b4:	53f2b7ff 	b	-3404(0xffff2b4) # 1c005b68 <main+0x90>
1c0068b8:	03400000 	andi	$r0,$r0,0x0
1c0068bc:	53f2afff 	b	-3412(0xffff2ac) # 1c005b68 <main+0x90>
1c0068c0:	03400000 	andi	$r0,$r0,0x0
1c0068c4:	53f2a7ff 	b	-3420(0xffff2a4) # 1c005b68 <main+0x90>
1c0068c8:	03400000 	andi	$r0,$r0,0x0
1c0068cc:	53f29fff 	b	-3428(0xffff29c) # 1c005b68 <main+0x90>
1c0068d0:	03400000 	andi	$r0,$r0,0x0
1c0068d4:	53f297ff 	b	-3436(0xffff294) # 1c005b68 <main+0x90>
1c0068d8:	03400000 	andi	$r0,$r0,0x0
1c0068dc:	53f28fff 	b	-3444(0xffff28c) # 1c005b68 <main+0x90>
1c0068e0:	03400000 	andi	$r0,$r0,0x0
1c0068e4:	53f287ff 	b	-3452(0xffff284) # 1c005b68 <main+0x90>

1c0068e8 <interface_display>:
interface_display():
1c0068e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0068ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0068f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0068f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0068f8:	0015008c 	move	$r12,$r4
1c0068fc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006900:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006904:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c006908:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c007184 <interface_display+0x89c>
1c00690c:	0040898d 	slli.w	$r13,$r12,0x2
1c006910:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c006914:	0283018c 	addi.w	$r12,$r12,192(0xc0)
1c006918:	001031ac 	add.w	$r12,$r13,$r12
1c00691c:	2880018c 	ld.w	$r12,$r12,0
1c006920:	4c000180 	jirl	$r0,$r12,0
1c006924:	57db1fff 	bl	-9444(0xfffdb1c) # 1c004440 <OLED_CLS>
1c006928:	1c000068 	pcaddu12i	$r8,3(0x3)
1c00692c:	02bb8108 	addi.w	$r8,$r8,-288(0xee0)
1c006930:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006934:	02814006 	addi.w	$r6,$r0,80(0x50)
1c006938:	00150005 	move	$r5,$r0
1c00693c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006940:	57dedfff 	bl	-8484(0xfffdedc) # 1c00481c <OLED_DrawBMP>
1c006944:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c006948:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00694c:	00150004 	move	$r4,$r0
1c006950:	57dd4fff 	bl	-8884(0xfffdd4c) # 1c00469c <OLED_ShowCN>
1c006954:	02802006 	addi.w	$r6,$r0,8(0x8)
1c006958:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00695c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006960:	57dd3fff 	bl	-8900(0xfffdd3c) # 1c00469c <OLED_ShowCN>
1c006964:	02803406 	addi.w	$r6,$r0,13(0xd)
1c006968:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00696c:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c006970:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c00469c <OLED_ShowCN>
1c006974:	02803806 	addi.w	$r6,$r0,14(0xe)
1c006978:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00697c:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c006980:	57dd1fff 	bl	-8932(0xfffdd1c) # 1c00469c <OLED_ShowCN>
1c006984:	50080000 	b	2048(0x800) # 1c007184 <interface_display+0x89c>
1c006988:	57dabbff 	bl	-9544(0xfffdab8) # 1c004440 <OLED_CLS>
1c00698c:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c006990:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c006994:	00150005 	move	$r5,$r0
1c006998:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00699c:	57ddf7ff 	bl	-8716(0xfffddf4) # 1c004790 <OLED_ShowCN_STR>
1c0069a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0069a8:	028060c6 	addi.w	$r6,$r6,24(0x18)
1c0069ac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0069b0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0069b4:	57dabbff 	bl	-9544(0xfffdab8) # 1c00446c <OLED_ShowStr>
1c0069b8:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0069bc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0069c0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0069c4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0069c8:	57ddcbff 	bl	-8760(0xfffddc8) # 1c004790 <OLED_ShowCN_STR>
1c0069cc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069d0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0069d4:	02bfc0c6 	addi.w	$r6,$r6,-16(0xff0)
1c0069d8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069dc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0069e0:	57da8fff 	bl	-9588(0xfffda8c) # 1c00446c <OLED_ShowStr>
1c0069e4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0069e8:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0069ec:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069f0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0069f4:	57dd9fff 	bl	-8804(0xfffdd9c) # 1c004790 <OLED_ShowCN_STR>
1c0069f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006a00:	02bf20c6 	addi.w	$r6,$r6,-56(0xfc8)
1c006a04:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a08:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a0c:	57da63ff 	bl	-9632(0xfffda60) # 1c00446c <OLED_ShowStr>
1c006a10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a14:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006a18:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a1c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a20:	57dd73ff 	bl	-8848(0xfffdd70) # 1c004790 <OLED_ShowCN_STR>
1c006a24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a28:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c006a2c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a30:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006a34:	57dd5fff 	bl	-8868(0xfffdd5c) # 1c004790 <OLED_ShowCN_STR>
1c006a38:	50074c00 	b	1868(0x74c) # 1c007184 <interface_display+0x89c>
1c006a3c:	57da07ff 	bl	-9724(0xfffda04) # 1c004440 <OLED_CLS>
1c006a40:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006a44:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006a48:	00150005 	move	$r5,$r0
1c006a4c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a50:	57dd43ff 	bl	-8896(0xfffdd40) # 1c004790 <OLED_ShowCN_STR>
1c006a54:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a58:	02803406 	addi.w	$r6,$r0,13(0xd)
1c006a5c:	00150005 	move	$r5,$r0
1c006a60:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006a64:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c004790 <OLED_ShowCN_STR>
1c006a68:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a6c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006a70:	02bd40c6 	addi.w	$r6,$r6,-176(0xf50)
1c006a74:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a78:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a7c:	57d9f3ff 	bl	-9744(0xfffd9f0) # 1c00446c <OLED_ShowStr>
1c006a80:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006a84:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a88:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a8c:	57dc13ff 	bl	-9200(0xfffdc10) # 1c00469c <OLED_ShowCN>
1c006a90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a94:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006a98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a9c:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006aa0:	57dcf3ff 	bl	-8976(0xfffdcf0) # 1c004790 <OLED_ShowCN_STR>
1c006aa4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006aa8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006aac:	02bc60c6 	addi.w	$r6,$r6,-232(0xf18)
1c006ab0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ab4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006ab8:	57d9b7ff 	bl	-9804(0xfffd9b4) # 1c00446c <OLED_ShowStr>
1c006abc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ac0:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006ac4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ac8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006acc:	57dcc7ff 	bl	-9020(0xfffdcc4) # 1c004790 <OLED_ShowCN_STR>
1c006ad0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ad4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006ad8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006adc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006ae0:	57dcb3ff 	bl	-9040(0xfffdcb0) # 1c004790 <OLED_ShowCN_STR>
1c006ae4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ae8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006aec:	02bb70c6 	addi.w	$r6,$r6,-292(0xedc)
1c006af0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006af4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006af8:	57d977ff 	bl	-9868(0xfffd974) # 1c00446c <OLED_ShowStr>
1c006afc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b00:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006b04:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b08:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006b0c:	57dc87ff 	bl	-9084(0xfffdc84) # 1c004790 <OLED_ShowCN_STR>
1c006b10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b14:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006b18:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b1c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006b20:	57dc73ff 	bl	-9104(0xfffdc70) # 1c004790 <OLED_ShowCN_STR>
1c006b24:	50066000 	b	1632(0x660) # 1c007184 <interface_display+0x89c>
1c006b28:	57d91bff 	bl	-9960(0xfffd918) # 1c004440 <OLED_CLS>
1c006b2c:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006b30:	00150005 	move	$r5,$r0
1c006b34:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006b38:	57db67ff 	bl	-9372(0xfffdb64) # 1c00469c <OLED_ShowCN>
1c006b3c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b40:	02808406 	addi.w	$r6,$r0,33(0x21)
1c006b44:	00150005 	move	$r5,$r0
1c006b48:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c006b4c:	57dc47ff 	bl	-9148(0xfffdc44) # 1c004790 <OLED_ShowCN_STR>
1c006b50:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006b54:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006b58:	00150005 	move	$r5,$r0
1c006b5c:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c006b60:	57dc33ff 	bl	-9168(0xfffdc30) # 1c004790 <OLED_ShowCN_STR>
1c006b64:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b68:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006b6c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b70:	00150004 	move	$r4,$r0
1c006b74:	57dc1fff 	bl	-9188(0xfffdc1c) # 1c004790 <OLED_ShowCN_STR>
1c006b78:	50060c00 	b	1548(0x60c) # 1c007184 <interface_display+0x89c>
1c006b7c:	57d8c7ff 	bl	-10044(0xfffd8c4) # 1c004440 <OLED_CLS>
1c006b80:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006b84:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006b88:	00150005 	move	$r5,$r0
1c006b8c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006b90:	57dc03ff 	bl	-9216(0xfffdc00) # 1c004790 <OLED_ShowCN_STR>
1c006b94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b98:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006b9c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006ba0:	00150004 	move	$r4,$r0
1c006ba4:	57dbefff 	bl	-9236(0xfffdbec) # 1c004790 <OLED_ShowCN_STR>
1c006ba8:	5005dc00 	b	1500(0x5dc) # 1c007184 <interface_display+0x89c>
1c006bac:	57d897ff 	bl	-10092(0xfffd894) # 1c004440 <OLED_CLS>
1c006bb0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006bb4:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c006bb8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006bbc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006bc0:	57dbd3ff 	bl	-9264(0xfffdbd0) # 1c004790 <OLED_ShowCN_STR>
1c006bc4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006bc8:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c006bcc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006bd0:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c006bd4:	57dbbfff 	bl	-9284(0xfffdbbc) # 1c004790 <OLED_ShowCN_STR>
1c006bd8:	5005ac00 	b	1452(0x5ac) # 1c007184 <interface_display+0x89c>
1c006bdc:	57d867ff 	bl	-10140(0xfffd864) # 1c004440 <OLED_CLS>
1c006be0:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006be4:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006be8:	00150005 	move	$r5,$r0
1c006bec:	00150004 	move	$r4,$r0
1c006bf0:	57dba3ff 	bl	-9312(0xfffdba0) # 1c004790 <OLED_ShowCN_STR>
1c006bf4:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006bf8:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006bfc:	00150005 	move	$r5,$r0
1c006c00:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c006c04:	57db8fff 	bl	-9332(0xfffdb8c) # 1c004790 <OLED_ShowCN_STR>
1c006c08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c0c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006c10:	00150005 	move	$r5,$r0
1c006c14:	02818004 	addi.w	$r4,$r0,96(0x60)
1c006c18:	57db7bff 	bl	-9352(0xfffdb78) # 1c004790 <OLED_ShowCN_STR>
1c006c1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c20:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006c24:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006c28:	00150004 	move	$r4,$r0
1c006c2c:	57db67ff 	bl	-9372(0xfffdb64) # 1c004790 <OLED_ShowCN_STR>
1c006c30:	50055400 	b	1364(0x554) # 1c007184 <interface_display+0x89c>
1c006c34:	57d80fff 	bl	-10228(0xfffd80c) # 1c004440 <OLED_CLS>
1c006c38:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006c3c:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c006c40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c44:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006c48:	57db4bff 	bl	-9400(0xfffdb48) # 1c004790 <OLED_ShowCN_STR>
1c006c4c:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c006c50:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c54:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c006c58:	57da47ff 	bl	-9660(0xfffda44) # 1c00469c <OLED_ShowCN>
1c006c5c:	02808006 	addi.w	$r6,$r0,32(0x20)
1c006c60:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c64:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c006c68:	57da37ff 	bl	-9676(0xfffda34) # 1c00469c <OLED_ShowCN>
1c006c6c:	50051800 	b	1304(0x518) # 1c007184 <interface_display+0x89c>
1c006c70:	57d7d3ff 	bl	-10288(0xfffd7d0) # 1c004440 <OLED_CLS>
1c006c74:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006c78:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c006c7c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c80:	02808004 	addi.w	$r4,$r0,32(0x20)
1c006c84:	57db0fff 	bl	-9460(0xfffdb0c) # 1c004790 <OLED_ShowCN_STR>
1c006c88:	5004fc00 	b	1276(0x4fc) # 1c007184 <interface_display+0x89c>
1c006c8c:	57d7b7ff 	bl	-10316(0xfffd7b4) # 1c004440 <OLED_CLS>
1c006c90:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006c94:	00150005 	move	$r5,$r0
1c006c98:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006c9c:	57da03ff 	bl	-9728(0xfffda00) # 1c00469c <OLED_ShowCN>
1c006ca0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ca4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006ca8:	00150005 	move	$r5,$r0
1c006cac:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006cb0:	57dae3ff 	bl	-9504(0xfffdae0) # 1c004790 <OLED_ShowCN_STR>
1c006cb4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cb8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cbc:	02b410c6 	addi.w	$r6,$r6,-764(0xd04)
1c006cc0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006cc4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006cc8:	57d7a7ff 	bl	-10332(0xfffd7a4) # 1c00446c <OLED_ShowStr>
1c006ccc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cd0:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006cd4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006cd8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006cdc:	57dab7ff 	bl	-9548(0xfffdab4) # 1c004790 <OLED_ShowCN_STR>
1c006ce0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006ce4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ce8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006cec:	57d9b3ff 	bl	-9808(0xfffd9b0) # 1c00469c <OLED_ShowCN>
1c006cf0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cf4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cf8:	02b330c6 	addi.w	$r6,$r6,-820(0xccc)
1c006cfc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d00:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006d04:	57d76bff 	bl	-10392(0xfffd768) # 1c00446c <OLED_ShowStr>
1c006d08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d0c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006d10:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d14:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d18:	57da7bff 	bl	-9608(0xfffda78) # 1c004790 <OLED_ShowCN_STR>
1c006d1c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006d20:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d24:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006d28:	57d977ff 	bl	-9868(0xfffd974) # 1c00469c <OLED_ShowCN>
1c006d2c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006d30:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d34:	02816004 	addi.w	$r4,$r0,88(0x58)
1c006d38:	57d967ff 	bl	-9884(0xfffd964) # 1c00469c <OLED_ShowCN>
1c006d3c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d40:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006d44:	02b210c6 	addi.w	$r6,$r6,-892(0xc84)
1c006d48:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006d4c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006d50:	57d71fff 	bl	-10468(0xfffd71c) # 1c00446c <OLED_ShowStr>
1c006d54:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d58:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006d5c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006d60:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d64:	57da2fff 	bl	-9684(0xfffda2c) # 1c004790 <OLED_ShowCN_STR>
1c006d68:	50041c00 	b	1052(0x41c) # 1c007184 <interface_display+0x89c>
1c006d6c:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c004440 <OLED_CLS>
1c006d70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d74:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006d78:	00150005 	move	$r5,$r0
1c006d7c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d80:	57da13ff 	bl	-9712(0xfffda10) # 1c004790 <OLED_ShowCN_STR>
1c006d84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d88:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006d8c:	00150005 	move	$r5,$r0
1c006d90:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006d94:	57d9ffff 	bl	-9732(0xfffd9fc) # 1c004790 <OLED_ShowCN_STR>
1c006d98:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d9c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006da0:	02b080c6 	addi.w	$r6,$r6,-992(0xc20)
1c006da4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006da8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006dac:	57d6c3ff 	bl	-10560(0xfffd6c0) # 1c00446c <OLED_ShowStr>
1c006db0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006db4:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006db8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006dbc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006dc0:	57d9d3ff 	bl	-9776(0xfffd9d0) # 1c004790 <OLED_ShowCN_STR>
1c006dc4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006dc8:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006dcc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006dd0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006dd4:	57d9bfff 	bl	-9796(0xfffd9bc) # 1c004790 <OLED_ShowCN_STR>
1c006dd8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ddc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006de0:	02af90c6 	addi.w	$r6,$r6,-1052(0xbe4)
1c006de4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006de8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006dec:	57d683ff 	bl	-10624(0xfffd680) # 1c00446c <OLED_ShowStr>
1c006df0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006df4:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006df8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006dfc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006e00:	57d993ff 	bl	-9840(0xfffd990) # 1c004790 <OLED_ShowCN_STR>
1c006e04:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e08:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006e0c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006e10:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006e14:	57d97fff 	bl	-9860(0xfffd97c) # 1c004790 <OLED_ShowCN_STR>
1c006e18:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006e1c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006e20:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c006e24:	57d87bff 	bl	-10120(0xfffd878) # 1c00469c <OLED_ShowCN>
1c006e28:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e2c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006e30:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c006e34:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006e38:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006e3c:	57d633ff 	bl	-10704(0xfffd630) # 1c00446c <OLED_ShowStr>
1c006e40:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e44:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006e48:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006e4c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006e50:	57d943ff 	bl	-9920(0xfffd940) # 1c004790 <OLED_ShowCN_STR>
1c006e54:	50033000 	b	816(0x330) # 1c007184 <interface_display+0x89c>
1c006e58:	57d5ebff 	bl	-10776(0xfffd5e8) # 1c004440 <OLED_CLS>
1c006e5c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e60:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006e64:	00150005 	move	$r5,$r0
1c006e68:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006e6c:	57d927ff 	bl	-9948(0xfffd924) # 1c004790 <OLED_ShowCN_STR>
1c006e70:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006e74:	00150005 	move	$r5,$r0
1c006e78:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006e7c:	57d823ff 	bl	-10208(0xfffd820) # 1c00469c <OLED_ShowCN>
1c006e80:	50030400 	b	772(0x304) # 1c007184 <interface_display+0x89c>
1c006e84:	57d5bfff 	bl	-10820(0xfffd5bc) # 1c004440 <OLED_CLS>
1c006e88:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e8c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006e90:	00150005 	move	$r5,$r0
1c006e94:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006e98:	57d8fbff 	bl	-9992(0xfffd8f8) # 1c004790 <OLED_ShowCN_STR>
1c006e9c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ea0:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006ea4:	00150005 	move	$r5,$r0
1c006ea8:	02811004 	addi.w	$r4,$r0,68(0x44)
1c006eac:	57d8e7ff 	bl	-10012(0xfffd8e4) # 1c004790 <OLED_ShowCN_STR>
1c006eb0:	5002d400 	b	724(0x2d4) # 1c007184 <interface_display+0x89c>
1c006eb4:	57d58fff 	bl	-10868(0xfffd58c) # 1c004440 <OLED_CLS>
1c006eb8:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c006ebc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ec0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006ec4:	57d7dbff 	bl	-10280(0xfffd7d8) # 1c00469c <OLED_ShowCN>
1c006ec8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ecc:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006ed0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ed4:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006ed8:	57d8bbff 	bl	-10056(0xfffd8b8) # 1c004790 <OLED_ShowCN_STR>
1c006edc:	5002a800 	b	680(0x2a8) # 1c007184 <interface_display+0x89c>
1c006ee0:	57d563ff 	bl	-10912(0xfffd560) # 1c004440 <OLED_CLS>
1c006ee4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ee8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006eec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ef0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006ef4:	57d89fff 	bl	-10084(0xfffd89c) # 1c004790 <OLED_ShowCN_STR>
1c006ef8:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c006efc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f00:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006f04:	57d79bff 	bl	-10344(0xfffd798) # 1c00469c <OLED_ShowCN>
1c006f08:	02808006 	addi.w	$r6,$r0,32(0x20)
1c006f0c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f10:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c006f14:	57d78bff 	bl	-10360(0xfffd788) # 1c00469c <OLED_ShowCN>
1c006f18:	50026c00 	b	620(0x26c) # 1c007184 <interface_display+0x89c>
1c006f1c:	57d527ff 	bl	-10972(0xfffd524) # 1c004440 <OLED_CLS>
1c006f20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f24:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006f28:	00150005 	move	$r5,$r0
1c006f2c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006f30:	57d863ff 	bl	-10144(0xfffd860) # 1c004790 <OLED_ShowCN_STR>
1c006f34:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006f38:	00150005 	move	$r5,$r0
1c006f3c:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c006f40:	57d75fff 	bl	-10404(0xfffd75c) # 1c00469c <OLED_ShowCN>
1c006f44:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006f48:	00150005 	move	$r5,$r0
1c006f4c:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c006f50:	57d74fff 	bl	-10420(0xfffd74c) # 1c00469c <OLED_ShowCN>
1c006f54:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006f58:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006f5c:	00150004 	move	$r4,$r0
1c006f60:	57d73fff 	bl	-10436(0xfffd73c) # 1c00469c <OLED_ShowCN>
1c006f64:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006f68:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006f6c:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006f70:	57d72fff 	bl	-10452(0xfffd72c) # 1c00469c <OLED_ShowCN>
1c006f74:	50021000 	b	528(0x210) # 1c007184 <interface_display+0x89c>
1c006f78:	57d4cbff 	bl	-11064(0xfffd4c8) # 1c004440 <OLED_CLS>
1c006f7c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f80:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006f84:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f88:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006f8c:	57d807ff 	bl	-10236(0xfffd804) # 1c004790 <OLED_ShowCN_STR>
1c006f90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f94:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006f98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f9c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006fa0:	57d7f3ff 	bl	-10256(0xfffd7f0) # 1c004790 <OLED_ShowCN_STR>
1c006fa4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006fa8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006fac:	02816404 	addi.w	$r4,$r0,89(0x59)
1c006fb0:	57d6efff 	bl	-10516(0xfffd6ec) # 1c00469c <OLED_ShowCN>
1c006fb4:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006fb8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006fbc:	00150004 	move	$r4,$r0
1c006fc0:	57d6dfff 	bl	-10532(0xfffd6dc) # 1c00469c <OLED_ShowCN>
1c006fc4:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006fc8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006fcc:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006fd0:	57d6cfff 	bl	-10548(0xfffd6cc) # 1c00469c <OLED_ShowCN>
1c006fd4:	5001b000 	b	432(0x1b0) # 1c007184 <interface_display+0x89c>
1c006fd8:	57d46bff 	bl	-11160(0xfffd468) # 1c004440 <OLED_CLS>
1c006fdc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006fe0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006fe4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006fe8:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006fec:	57d7a7ff 	bl	-10332(0xfffd7a4) # 1c004790 <OLED_ShowCN_STR>
1c006ff0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ff4:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c006ff8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ffc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c007000:	57d793ff 	bl	-10352(0xfffd790) # 1c004790 <OLED_ShowCN_STR>
1c007004:	50018000 	b	384(0x180) # 1c007184 <interface_display+0x89c>
1c007008:	57d43bff 	bl	-11208(0xfffd438) # 1c004440 <OLED_CLS>
1c00700c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007010:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007014:	00150005 	move	$r5,$r0
1c007018:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00701c:	57d777ff 	bl	-10380(0xfffd774) # 1c004790 <OLED_ShowCN_STR>
1c007020:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007024:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007028:	00150005 	move	$r5,$r0
1c00702c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007030:	57d763ff 	bl	-10400(0xfffd760) # 1c004790 <OLED_ShowCN_STR>
1c007034:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007038:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00703c:	02a610c6 	addi.w	$r6,$r6,-1660(0x984)
1c007040:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007044:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007048:	57d427ff 	bl	-11228(0xfffd424) # 1c00446c <OLED_ShowStr>
1c00704c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007050:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007054:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007058:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00705c:	57d737ff 	bl	-10444(0xfffd734) # 1c004790 <OLED_ShowCN_STR>
1c007060:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007064:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007068:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00706c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007070:	57d723ff 	bl	-10464(0xfffd720) # 1c004790 <OLED_ShowCN_STR>
1c007074:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007078:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00707c:	02a520c6 	addi.w	$r6,$r6,-1720(0x948)
1c007080:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007084:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007088:	57d3e7ff 	bl	-11292(0xfffd3e4) # 1c00446c <OLED_ShowStr>
1c00708c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007090:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c007094:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007098:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00709c:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c004790 <OLED_ShowCN_STR>
1c0070a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070a4:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0070a8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0070ac:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0070b0:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c004790 <OLED_ShowCN_STR>
1c0070b4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0070b8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0070bc:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0070c0:	57d5dfff 	bl	-10788(0xfffd5dc) # 1c00469c <OLED_ShowCN>
1c0070c4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0070cc:	02a3f0c6 	addi.w	$r6,$r6,-1796(0x8fc)
1c0070d0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0070d4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0070d8:	57d397ff 	bl	-11372(0xfffd394) # 1c00446c <OLED_ShowStr>
1c0070dc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070e0:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0070e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0070e8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0070ec:	57d6a7ff 	bl	-10588(0xfffd6a4) # 1c004790 <OLED_ShowCN_STR>
1c0070f0:	50009400 	b	148(0x94) # 1c007184 <interface_display+0x89c>
1c0070f4:	57d34fff 	bl	-11444(0xfffd34c) # 1c004440 <OLED_CLS>
1c0070f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070fc:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c007100:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007104:	02806404 	addi.w	$r4,$r0,25(0x19)
1c007108:	57d68bff 	bl	-10616(0xfffd688) # 1c004790 <OLED_ShowCN_STR>
1c00710c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007110:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007114:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007118:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00711c:	57d677ff 	bl	-10636(0xfffd674) # 1c004790 <OLED_ShowCN_STR>
1c007120:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c007124:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007128:	02816404 	addi.w	$r4,$r0,89(0x59)
1c00712c:	57d573ff 	bl	-10896(0xfffd570) # 1c00469c <OLED_ShowCN>
1c007130:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c007134:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007138:	00150004 	move	$r4,$r0
1c00713c:	57d563ff 	bl	-10912(0xfffd560) # 1c00469c <OLED_ShowCN>
1c007140:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c007144:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007148:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c00714c:	57d553ff 	bl	-10928(0xfffd550) # 1c00469c <OLED_ShowCN>
1c007150:	50003400 	b	52(0x34) # 1c007184 <interface_display+0x89c>
1c007154:	57d2efff 	bl	-11540(0xfffd2ec) # 1c004440 <OLED_CLS>
1c007158:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00715c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007160:	00150005 	move	$r5,$r0
1c007164:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007168:	57d62bff 	bl	-10712(0xfffd628) # 1c004790 <OLED_ShowCN_STR>
1c00716c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007170:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007174:	00150005 	move	$r5,$r0
1c007178:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00717c:	57d617ff 	bl	-10732(0xfffd614) # 1c004790 <OLED_ShowCN_STR>
1c007180:	03400000 	andi	$r0,$r0,0x0
1c007184:	03400000 	andi	$r0,$r0,0x0
1c007188:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00718c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007190:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007194:	4c000020 	jirl	$r0,$r1,0

1c007198 <Write_ID>:
Write_ID():
1c007198:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00719c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0071a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0071a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0071a8:	57e7bbff 	bl	-6216(0xfffe7b8) # 1c005960 <Return_Card>
1c0071ac:	0015008c 	move	$r12,$r4
1c0071b0:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c0071b4:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c0071b8:	40011180 	beqz	$r12,272(0x110) # 1c0072c8 <Write_ID+0x130>
1c0071bc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0071c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0071c4:	50004400 	b	68(0x44) # 1c007208 <Write_ID+0x70>
1c0071c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0071cc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0071d0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0071d4:	02a2d1ad 	addi.w	$r13,$r13,-1868(0x8b4)
1c0071d8:	0040898c 	slli.w	$r12,$r12,0x2
1c0071dc:	001031ac 	add.w	$r12,$r13,$r12
1c0071e0:	2880018d 	ld.w	$r13,$r12,0
1c0071e4:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c0071e8:	02a281ce 	addi.w	$r14,$r14,-1888(0x8a0)
1c0071ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0071f0:	0040898c 	slli.w	$r12,$r12,0x2
1c0071f4:	001031cc 	add.w	$r12,$r14,$r12
1c0071f8:	2980018d 	st.w	$r13,$r12,0
1c0071fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007200:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007204:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007208:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00720c:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c0071c8 <Write_ID+0x30>
1c007210:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c007214:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007218:	02a1c18c 	addi.w	$r12,$r12,-1936(0x870)
1c00721c:	2980018d 	st.w	$r13,$r12,0
1c007220:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c007224:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007228:	02801407 	addi.w	$r7,$r0,5(0x5)
1c00722c:	00150186 	move	$r6,$r12
1c007230:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007234:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c007238:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c004ad8 <OLED_ShowNum>
1c00723c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007240:	03bf918c 	ori	$r12,$r12,0xfe4
1c007244:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007248:	50001400 	b	20(0x14) # 1c00725c <Write_ID+0xc4>
1c00724c:	03400000 	andi	$r0,$r0,0x0
1c007250:	03400000 	andi	$r0,$r0,0x0
1c007254:	03400000 	andi	$r0,$r0,0x0
1c007258:	03400000 	andi	$r0,$r0,0x0
1c00725c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007260:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007264:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007268:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00724c <Write_ID+0xb4>
1c00726c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007270:	57f67bff 	bl	-2440(0xffff678) # 1c0068e8 <interface_display>
1c007274:	57cca3ff 	bl	-13152(0xfffcca0) # 1c003f14 <Buzzer>
1c007278:	1400182c 	lu12i.w	$r12,193(0xc1)
1c00727c:	03b2d58c 	ori	$r12,$r12,0xcb5
1c007280:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007284:	50001400 	b	20(0x14) # 1c007298 <Write_ID+0x100>
1c007288:	03400000 	andi	$r0,$r0,0x0
1c00728c:	03400000 	andi	$r0,$r0,0x0
1c007290:	03400000 	andi	$r0,$r0,0x0
1c007294:	03400000 	andi	$r0,$r0,0x0
1c007298:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00729c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0072a0:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0072a4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007288 <Write_ID+0xf0>
1c0072a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072ac:	029fc58c 	addi.w	$r12,$r12,2033(0x7f1)
1c0072b0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0072b4:	2900018d 	st.b	$r13,$r12,0
1c0072b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072bc:	029f818c 	addi.w	$r12,$r12,2016(0x7e0)
1c0072c0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0072c4:	2900018d 	st.b	$r13,$r12,0
1c0072c8:	03400000 	andi	$r0,$r0,0x0
1c0072cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0072d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0072d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0072d8:	4c000020 	jirl	$r0,$r1,0

1c0072dc <Delate_ID>:
Delate_ID():
1c0072dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0072e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0072e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0072e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0072ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0072f0:	50002800 	b	40(0x28) # 1c007318 <Delate_ID+0x3c>
1c0072f4:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0072f8:	029e41ad 	addi.w	$r13,$r13,1936(0x790)
1c0072fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007300:	0040898c 	slli.w	$r12,$r12,0x2
1c007304:	001031ac 	add.w	$r12,$r13,$r12
1c007308:	29800180 	st.w	$r0,$r12,0
1c00730c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007310:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007314:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007318:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00731c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007320:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c0072f4 <Delate_ID+0x18>
1c007324:	57cbf3ff 	bl	-13328(0xfffcbf0) # 1c003f14 <Buzzer>
1c007328:	1400182c 	lu12i.w	$r12,193(0xc1)
1c00732c:	03b2d58c 	ori	$r12,$r12,0xcb5
1c007330:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007334:	50001400 	b	20(0x14) # 1c007348 <Delate_ID+0x6c>
1c007338:	03400000 	andi	$r0,$r0,0x0
1c00733c:	03400000 	andi	$r0,$r0,0x0
1c007340:	03400000 	andi	$r0,$r0,0x0
1c007344:	03400000 	andi	$r0,$r0,0x0
1c007348:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00734c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007350:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007354:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007338 <Delate_ID+0x5c>
1c007358:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00735c:	029d058c 	addi.w	$r12,$r12,1857(0x741)
1c007360:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007364:	2900018d 	st.b	$r13,$r12,0
1c007368:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00736c:	029cc18c 	addi.w	$r12,$r12,1840(0x730)
1c007370:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007374:	2900018d 	st.b	$r13,$r12,0
1c007378:	03400000 	andi	$r0,$r0,0x0
1c00737c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007380:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007384:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007388:	4c000020 	jirl	$r0,$r1,0

1c00738c <Read_ID>:
Read_ID():
1c00738c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007390:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c007394:	2980a076 	st.w	$r22,$r3,40(0x28)
1c007398:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00739c:	57e5c7ff 	bl	-6716(0xfffe5c4) # 1c005960 <Return_Card>
1c0073a0:	0015008c 	move	$r12,$r4
1c0073a4:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c0073a8:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c0073ac:	40012180 	beqz	$r12,288(0x120) # 1c0074cc <Read_ID+0x140>
1c0073b0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0073b4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0073b8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0073bc:	6801118d 	bltu	$r12,$r13,272(0x110) # 1c0074cc <Read_ID+0x140>
1c0073c0:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c0073c4:	1cc7ff4e 	pcaddu12i	$r14,409594(0x63ffa)
1c0073c8:	029b01ce 	addi.w	$r14,$r14,1728(0x6c0)
1c0073cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0073d0:	0040898c 	slli.w	$r12,$r12,0x2
1c0073d4:	001031cc 	add.w	$r12,$r14,$r12
1c0073d8:	2880018c 	ld.w	$r12,$r12,0
1c0073dc:	5c00a9ac 	bne	$r13,$r12,168(0xa8) # 1c007484 <Read_ID+0xf8>
1c0073e0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0073e4:	57f507ff 	bl	-2812(0xffff504) # 1c0068e8 <interface_display>
1c0073e8:	57bfd3ff 	bl	-16432(0xfffbfd0) # 1c0033b8 <SG90_Open>
1c0073ec:	57cc0fff 	bl	-13300(0xfffcc0c) # 1c003ff8 <Buzzer_one>
1c0073f0:	1400472c 	lu12i.w	$r12,569(0x239)
1c0073f4:	03bee58c 	ori	$r12,$r12,0xfb9
1c0073f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0073fc:	50001400 	b	20(0x14) # 1c007410 <Read_ID+0x84>
1c007400:	03400000 	andi	$r0,$r0,0x0
1c007404:	03400000 	andi	$r0,$r0,0x0
1c007408:	03400000 	andi	$r0,$r0,0x0
1c00740c:	03400000 	andi	$r0,$r0,0x0
1c007410:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007414:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007418:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00741c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007400 <Read_ID+0x74>
1c007420:	57cbdbff 	bl	-13352(0xfffcbd8) # 1c003ff8 <Buzzer_one>
1c007424:	57bfc3ff 	bl	-16448(0xfffbfc0) # 1c0033e4 <SG90_Close>
1c007428:	02802404 	addi.w	$r4,$r0,9(0x9)
1c00742c:	57f4bfff 	bl	-2884(0xffff4bc) # 1c0068e8 <interface_display>
1c007430:	1400472c 	lu12i.w	$r12,569(0x239)
1c007434:	03bee58c 	ori	$r12,$r12,0xfb9
1c007438:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00743c:	50001400 	b	20(0x14) # 1c007450 <Read_ID+0xc4>
1c007440:	03400000 	andi	$r0,$r0,0x0
1c007444:	03400000 	andi	$r0,$r0,0x0
1c007448:	03400000 	andi	$r0,$r0,0x0
1c00744c:	03400000 	andi	$r0,$r0,0x0
1c007450:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007454:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007458:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00745c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007440 <Read_ID+0xb4>
1c007460:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007464:	0298e18c 	addi.w	$r12,$r12,1592(0x638)
1c007468:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00746c:	2900018d 	st.b	$r13,$r12,0
1c007470:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007474:	0298a58c 	addi.w	$r12,$r12,1577(0x629)
1c007478:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00747c:	2900018d 	st.b	$r13,$r12,0
1c007480:	50004c00 	b	76(0x4c) # 1c0074cc <Read_ID+0x140>
1c007484:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007488:	57f463ff 	bl	-2976(0xffff460) # 1c0068e8 <interface_display>
1c00748c:	57ca8bff 	bl	-13688(0xfffca88) # 1c003f14 <Buzzer>
1c007490:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007494:	03bf918c 	ori	$r12,$r12,0xfe4
1c007498:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00749c:	50001400 	b	20(0x14) # 1c0074b0 <Read_ID+0x124>
1c0074a0:	03400000 	andi	$r0,$r0,0x0
1c0074a4:	03400000 	andi	$r0,$r0,0x0
1c0074a8:	03400000 	andi	$r0,$r0,0x0
1c0074ac:	03400000 	andi	$r0,$r0,0x0
1c0074b0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0074b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0074b8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0074bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0074a0 <Read_ID+0x114>
1c0074c0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0074c4:	57f427ff 	bl	-3036(0xffff424) # 1c0068e8 <interface_display>
1c0074c8:	03400000 	andi	$r0,$r0,0x0
1c0074cc:	03400000 	andi	$r0,$r0,0x0
1c0074d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0074d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0074d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0074dc:	4c000020 	jirl	$r0,$r1,0

1c0074e0 <Key_main>:
Key_main():
1c0074e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0074e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0074e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0074ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0074f0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0074f4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074f8:	02b9d58c 	addi.w	$r12,$r12,-395(0xe75)
1c0074fc:	2a00018c 	ld.bu	$r12,$r12,0
1c007500:	4003c180 	beqz	$r12,960(0x3c0) # 1c0078c0 <Key_main+0x3e0>
1c007504:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007508:	02b9958c 	addi.w	$r12,$r12,-411(0xe65)
1c00750c:	2a00018d 	ld.bu	$r13,$r12,0
1c007510:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007514:	6801b18d 	bltu	$r12,$r13,432(0x1b0) # 1c0076c4 <Key_main+0x1e4>
1c007518:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00751c:	28abc18c 	ld.w	$r12,$r12,-1296(0xaf0)
1c007520:	2880018d 	ld.w	$r13,$r12,0
1c007524:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007528:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c0075a8 <Key_main+0xc8>
1c00752c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007530:	28abb18c 	ld.w	$r12,$r12,-1300(0xaec)
1c007534:	2880018d 	ld.w	$r13,$r12,0
1c007538:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00753c:	001c31ad 	mul.w	$r13,$r13,$r12
1c007540:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007544:	28ab618c 	ld.w	$r12,$r12,-1320(0xad8)
1c007548:	2980018d 	st.w	$r13,$r12,0
1c00754c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007550:	02b8758c 	addi.w	$r12,$r12,-483(0xe1d)
1c007554:	2a00018d 	ld.bu	$r13,$r12,0
1c007558:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00755c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007560:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007568 <Key_main+0x88>
1c007564:	002a0007 	break	0x7
1c007568:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c00756c:	0015018d 	move	$r13,$r12
1c007570:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007574:	28aaa18c 	ld.w	$r12,$r12,-1368(0xaa8)
1c007578:	2880018c 	ld.w	$r12,$r12,0
1c00757c:	001031ad 	add.w	$r13,$r13,$r12
1c007580:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007584:	28aa618c 	ld.w	$r12,$r12,-1384(0xa98)
1c007588:	2980018d 	st.w	$r13,$r12,0
1c00758c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007590:	28a9f18c 	ld.w	$r12,$r12,-1412(0xa7c)
1c007594:	2880018c 	ld.w	$r12,$r12,0
1c007598:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00759c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075a0:	28a9b18c 	ld.w	$r12,$r12,-1428(0xa6c)
1c0075a4:	2980018d 	st.w	$r13,$r12,0
1c0075a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075ac:	28a9c18c 	ld.w	$r12,$r12,-1424(0xa70)
1c0075b0:	2880018c 	ld.w	$r12,$r12,0
1c0075b4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0075b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075bc:	28a9418c 	ld.w	$r12,$r12,-1456(0xa50)
1c0075c0:	2880018c 	ld.w	$r12,$r12,0
1c0075c4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0075c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0075cc:	50006400 	b	100(0x64) # 1c007630 <Key_main+0x150>
1c0075d0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0075d4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0075d8:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c0075dc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0075e4 <Key_main+0x104>
1c0075e0:	002a0007 	break	0x7
1c0075e4:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0075e8:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0075ec:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0075f0:	002135cc 	div.wu	$r12,$r14,$r13
1c0075f4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0075fc <Key_main+0x11c>
1c0075f8:	002a0007 	break	0x7
1c0075fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007600:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007604:	00408d8c 	slli.w	$r12,$r12,0x3
1c007608:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c00760c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007610:	02800407 	addi.w	$r7,$r0,1(0x1)
1c007614:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c007618:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00761c:	00150184 	move	$r4,$r12
1c007620:	57d4bbff 	bl	-11080(0xfffd4b8) # 1c004ad8 <OLED_ShowNum>
1c007624:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007628:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00762c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007630:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007634:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c0075d0 <Key_main+0xf0>
1c007638:	140002cc 	lu12i.w	$r12,22(0x16)
1c00763c:	03b3298c 	ori	$r12,$r12,0xcca
1c007640:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007644:	50001400 	b	20(0x14) # 1c007658 <Key_main+0x178>
1c007648:	03400000 	andi	$r0,$r0,0x0
1c00764c:	03400000 	andi	$r0,$r0,0x0
1c007650:	03400000 	andi	$r0,$r0,0x0
1c007654:	03400000 	andi	$r0,$r0,0x0
1c007658:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00765c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007660:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c007664:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007648 <Key_main+0x168>
1c007668:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00766c:	50004400 	b	68(0x44) # 1c0076b0 <Key_main+0x1d0>
1c007670:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007674:	28a6618c 	ld.w	$r12,$r12,-1640(0x998)
1c007678:	2880018d 	ld.w	$r13,$r12,0
1c00767c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007680:	001131ac 	sub.w	$r12,$r13,$r12
1c007684:	00408d8c 	slli.w	$r12,$r12,0x3
1c007688:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c00768c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007690:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007694:	028ce0c6 	addi.w	$r6,$r6,824(0x338)
1c007698:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00769c:	00150184 	move	$r4,$r12
1c0076a0:	57cdcfff 	bl	-12852(0xfffcdcc) # 1c00446c <OLED_ShowStr>
1c0076a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0076a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0076ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0076b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0076b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076b8:	28a5518c 	ld.w	$r12,$r12,-1708(0x954)
1c0076bc:	2880018c 	ld.w	$r12,$r12,0
1c0076c0:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c007670 <Key_main+0x190>
1c0076c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0076c8:	50004400 	b	68(0x44) # 1c00770c <Key_main+0x22c>
1c0076cc:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0076d0:	028e91ad 	addi.w	$r13,$r13,932(0x3a4)
1c0076d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0076d8:	0040898c 	slli.w	$r12,$r12,0x2
1c0076dc:	001031ac 	add.w	$r12,$r13,$r12
1c0076e0:	2880018d 	ld.w	$r13,$r12,0
1c0076e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076e8:	28a4d18c 	ld.w	$r12,$r12,-1740(0x934)
1c0076ec:	2880018c 	ld.w	$r12,$r12,0
1c0076f0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007700 <Key_main+0x220>
1c0076f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0076f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0076fc:	50001c00 	b	28(0x1c) # 1c007718 <Key_main+0x238>
1c007700:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007704:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007708:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00770c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007710:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007714:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c0076cc <Key_main+0x1ec>
1c007718:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00771c:	02b1458c 	addi.w	$r12,$r12,-943(0xc51)
1c007720:	2a00018d 	ld.bu	$r13,$r12,0
1c007724:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007728:	5c0129ac 	bne	$r13,$r12,296(0x128) # 1c007850 <Key_main+0x370>
1c00772c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007730:	4000c180 	beqz	$r12,192(0xc0) # 1c0077f0 <Key_main+0x310>
1c007734:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007738:	57f1b3ff 	bl	-3664(0xffff1b0) # 1c0068e8 <interface_display>
1c00773c:	57bc7fff 	bl	-17284(0xfffbc7c) # 1c0033b8 <SG90_Open>
1c007740:	57c8bbff 	bl	-14152(0xfffc8b8) # 1c003ff8 <Buzzer_one>
1c007744:	1400472c 	lu12i.w	$r12,569(0x239)
1c007748:	03bee58c 	ori	$r12,$r12,0xfb9
1c00774c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c007750:	50001400 	b	20(0x14) # 1c007764 <Key_main+0x284>
1c007754:	03400000 	andi	$r0,$r0,0x0
1c007758:	03400000 	andi	$r0,$r0,0x0
1c00775c:	03400000 	andi	$r0,$r0,0x0
1c007760:	03400000 	andi	$r0,$r0,0x0
1c007764:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007768:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00776c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c007770:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007754 <Key_main+0x274>
1c007774:	57c887ff 	bl	-14204(0xfffc884) # 1c003ff8 <Buzzer_one>
1c007778:	57bc6fff 	bl	-17300(0xfffbc6c) # 1c0033e4 <SG90_Close>
1c00777c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007780:	57f16bff 	bl	-3736(0xffff168) # 1c0068e8 <interface_display>
1c007784:	1400472c 	lu12i.w	$r12,569(0x239)
1c007788:	03bee58c 	ori	$r12,$r12,0xfb9
1c00778c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c007790:	50001400 	b	20(0x14) # 1c0077a4 <Key_main+0x2c4>
1c007794:	03400000 	andi	$r0,$r0,0x0
1c007798:	03400000 	andi	$r0,$r0,0x0
1c00779c:	03400000 	andi	$r0,$r0,0x0
1c0077a0:	03400000 	andi	$r0,$r0,0x0
1c0077a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0077a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0077ac:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c0077b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007794 <Key_main+0x2b4>
1c0077b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077b8:	028b918c 	addi.w	$r12,$r12,740(0x2e4)
1c0077bc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0077c0:	2900018d 	st.b	$r13,$r12,0
1c0077c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077c8:	028b558c 	addi.w	$r12,$r12,725(0x2d5)
1c0077cc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0077d0:	2900018d 	st.b	$r13,$r12,0
1c0077d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077d8:	28a1118c 	ld.w	$r12,$r12,-1980(0x844)
1c0077dc:	29800180 	st.w	$r0,$r12,0
1c0077e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077e4:	28a0a18c 	ld.w	$r12,$r12,-2008(0x828)
1c0077e8:	29800180 	st.w	$r0,$r12,0
1c0077ec:	50006400 	b	100(0x64) # 1c007850 <Key_main+0x370>
1c0077f0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0077f4:	57f0f7ff 	bl	-3852(0xffff0f4) # 1c0068e8 <interface_display>
1c0077f8:	57c71fff 	bl	-14564(0xfffc71c) # 1c003f14 <Buzzer>
1c0077fc:	57bbebff 	bl	-17432(0xfffbbe8) # 1c0033e4 <SG90_Close>
1c007800:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007804:	03bf918c 	ori	$r12,$r12,0xfe4
1c007808:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c00780c:	50001400 	b	20(0x14) # 1c007820 <Key_main+0x340>
1c007810:	03400000 	andi	$r0,$r0,0x0
1c007814:	03400000 	andi	$r0,$r0,0x0
1c007818:	03400000 	andi	$r0,$r0,0x0
1c00781c:	03400000 	andi	$r0,$r0,0x0
1c007820:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c007824:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007828:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00782c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007810 <Key_main+0x330>
1c007830:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007834:	289fa18c 	ld.w	$r12,$r12,2024(0x7e8)
1c007838:	29800180 	st.w	$r0,$r12,0
1c00783c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007840:	289f318c 	ld.w	$r12,$r12,1996(0x7cc)
1c007844:	29800180 	st.w	$r0,$r12,0
1c007848:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00784c:	57f09fff 	bl	-3940(0xffff09c) # 1c0068e8 <interface_display>
1c007850:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007854:	02ac658c 	addi.w	$r12,$r12,-1255(0xb19)
1c007858:	2a00018d 	ld.bu	$r13,$r12,0
1c00785c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007860:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0078c0 <Key_main+0x3e0>
1c007864:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007868:	289ed18c 	ld.w	$r12,$r12,1972(0x7b4)
1c00786c:	29800180 	st.w	$r0,$r12,0
1c007870:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007874:	289e618c 	ld.w	$r12,$r12,1944(0x798)
1c007878:	29800180 	st.w	$r0,$r12,0
1c00787c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007880:	50003400 	b	52(0x34) # 1c0078b4 <Key_main+0x3d4>
1c007884:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007888:	00408d8c 	slli.w	$r12,$r12,0x3
1c00788c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007890:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007894:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007898:	0284e0c6 	addi.w	$r6,$r6,312(0x138)
1c00789c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0078a0:	00150184 	move	$r4,$r12
1c0078a4:	57cbcbff 	bl	-13368(0xfffcbc8) # 1c00446c <OLED_ShowStr>
1c0078a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0078ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0078b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0078b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0078b8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0078bc:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007884 <Key_main+0x3a4>
1c0078c0:	03400000 	andi	$r0,$r0,0x0
1c0078c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0078c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0078cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0078d0:	4c000020 	jirl	$r0,$r1,0

1c0078d4 <Key>:
Key():
1c0078d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0078d8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0078dc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0078e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0078e4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078e8:	02aa158c 	addi.w	$r12,$r12,-1403(0xa85)
1c0078ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0078f0:	4002f580 	beqz	$r12,756(0x2f4) # 1c007be4 <Key+0x310>
1c0078f4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078f8:	02a9d58c 	addi.w	$r12,$r12,-1419(0xa75)
1c0078fc:	2a00018d 	ld.bu	$r13,$r12,0
1c007900:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007904:	68015d8d 	bltu	$r12,$r13,348(0x15c) # 1c007a60 <Key+0x18c>
1c007908:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00790c:	289c018c 	ld.w	$r12,$r12,1792(0x700)
1c007910:	2880018d 	ld.w	$r13,$r12,0
1c007914:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007918:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c007998 <Key+0xc4>
1c00791c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007920:	289bf18c 	ld.w	$r12,$r12,1788(0x6fc)
1c007924:	2880018d 	ld.w	$r13,$r12,0
1c007928:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00792c:	001c31ad 	mul.w	$r13,$r13,$r12
1c007930:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007934:	289ba18c 	ld.w	$r12,$r12,1768(0x6e8)
1c007938:	2980018d 	st.w	$r13,$r12,0
1c00793c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007940:	02a8b58c 	addi.w	$r12,$r12,-1491(0xa2d)
1c007944:	2a00018d 	ld.bu	$r13,$r12,0
1c007948:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00794c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007950:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007958 <Key+0x84>
1c007954:	002a0007 	break	0x7
1c007958:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c00795c:	0015018d 	move	$r13,$r12
1c007960:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007964:	289ae18c 	ld.w	$r12,$r12,1720(0x6b8)
1c007968:	2880018c 	ld.w	$r12,$r12,0
1c00796c:	001031ad 	add.w	$r13,$r13,$r12
1c007970:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007974:	289aa18c 	ld.w	$r12,$r12,1704(0x6a8)
1c007978:	2980018d 	st.w	$r13,$r12,0
1c00797c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007980:	289a318c 	ld.w	$r12,$r12,1676(0x68c)
1c007984:	2880018c 	ld.w	$r12,$r12,0
1c007988:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00798c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007990:	2899f18c 	ld.w	$r12,$r12,1660(0x67c)
1c007994:	2980018d 	st.w	$r13,$r12,0
1c007998:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00799c:	289a018c 	ld.w	$r12,$r12,1664(0x680)
1c0079a0:	2880018c 	ld.w	$r12,$r12,0
1c0079a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0079a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079ac:	2899818c 	ld.w	$r12,$r12,1632(0x660)
1c0079b0:	2880018c 	ld.w	$r12,$r12,0
1c0079b4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0079b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0079bc:	50006c00 	b	108(0x6c) # 1c007a28 <Key+0x154>
1c0079c0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0079c4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0079c8:	0020b5cc 	mod.w	$r12,$r14,$r13
1c0079cc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0079d4 <Key+0x100>
1c0079d0:	002a0007 	break	0x7
1c0079d4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0079d8:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0079dc:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0079e0:	002035cc 	div.w	$r12,$r14,$r13
1c0079e4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0079ec <Key+0x118>
1c0079e8:	002a0007 	break	0x7
1c0079ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0079f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079f4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0079f8:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0079fc:	0015018d 	move	$r13,$r12
1c007a00:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c007a04:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007a08:	02800407 	addi.w	$r7,$r0,1(0x1)
1c007a0c:	00150186 	move	$r6,$r12
1c007a10:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007a14:	001501a4 	move	$r4,$r13
1c007a18:	57d0c3ff 	bl	-12096(0xfffd0c0) # 1c004ad8 <OLED_ShowNum>
1c007a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a20:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007a24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a2c:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c0079c0 <Key+0xec>
1c007a30:	140005ac 	lu12i.w	$r12,45(0x2d)
1c007a34:	03a6518c 	ori	$r12,$r12,0x994
1c007a38:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007a3c:	50001400 	b	20(0x14) # 1c007a50 <Key+0x17c>
1c007a40:	03400000 	andi	$r0,$r0,0x0
1c007a44:	03400000 	andi	$r0,$r0,0x0
1c007a48:	03400000 	andi	$r0,$r0,0x0
1c007a4c:	03400000 	andi	$r0,$r0,0x0
1c007a50:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007a54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007a58:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007a5c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007a40 <Key+0x16c>
1c007a60:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a64:	02a4258c 	addi.w	$r12,$r12,-1783(0x909)
1c007a68:	2a00018d 	ld.bu	$r13,$r12,0
1c007a6c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007a70:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c007b74 <Key+0x2a0>
1c007a74:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a78:	2896918c 	ld.w	$r12,$r12,1444(0x5a4)
1c007a7c:	2880018d 	ld.w	$r13,$r12,0
1c007a80:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c007a84:	5c0079ac 	bne	$r13,$r12,120(0x78) # 1c007afc <Key+0x228>
1c007a88:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007a8c:	57ee5fff 	bl	-4516(0xfffee5c) # 1c0068e8 <interface_display>
1c007a90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a94:	0280258c 	addi.w	$r12,$r12,9(0x9)
1c007a98:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007a9c:	2900018d 	st.b	$r13,$r12,0
1c007aa0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007aa4:	02bfe18c 	addi.w	$r12,$r12,-8(0xff8)
1c007aa8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007aac:	2900018d 	st.b	$r13,$r12,0
1c007ab0:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007ab4:	03bf918c 	ori	$r12,$r12,0xfe4
1c007ab8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007abc:	50001400 	b	20(0x14) # 1c007ad0 <Key+0x1fc>
1c007ac0:	03400000 	andi	$r0,$r0,0x0
1c007ac4:	03400000 	andi	$r0,$r0,0x0
1c007ac8:	03400000 	andi	$r0,$r0,0x0
1c007acc:	03400000 	andi	$r0,$r0,0x0
1c007ad0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007ad4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007ad8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c007adc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007ac0 <Key+0x1ec>
1c007ae0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ae4:	2894e18c 	ld.w	$r12,$r12,1336(0x538)
1c007ae8:	29800180 	st.w	$r0,$r12,0
1c007aec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007af0:	2894718c 	ld.w	$r12,$r12,1308(0x51c)
1c007af4:	29800180 	st.w	$r0,$r12,0
1c007af8:	50007c00 	b	124(0x7c) # 1c007b74 <Key+0x2a0>
1c007afc:	57c947ff 	bl	-14012(0xfffc944) # 1c004440 <OLED_CLS>
1c007b00:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007b04:	57ede7ff 	bl	-4636(0xfffede4) # 1c0068e8 <interface_display>
1c007b08:	57c40fff 	bl	-15348(0xfffc40c) # 1c003f14 <Buzzer>
1c007b0c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007b10:	03bf918c 	ori	$r12,$r12,0xfe4
1c007b14:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c007b18:	50001400 	b	20(0x14) # 1c007b2c <Key+0x258>
1c007b1c:	03400000 	andi	$r0,$r0,0x0
1c007b20:	03400000 	andi	$r0,$r0,0x0
1c007b24:	03400000 	andi	$r0,$r0,0x0
1c007b28:	03400000 	andi	$r0,$r0,0x0
1c007b2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007b30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007b34:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c007b38:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007b1c <Key+0x248>
1c007b3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b40:	02bd758c 	addi.w	$r12,$r12,-163(0xf5d)
1c007b44:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007b48:	2900018d 	st.b	$r13,$r12,0
1c007b4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b50:	02bd318c 	addi.w	$r12,$r12,-180(0xf4c)
1c007b54:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007b58:	2900018d 	st.b	$r13,$r12,0
1c007b5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b60:	2892f18c 	ld.w	$r12,$r12,1212(0x4bc)
1c007b64:	29800180 	st.w	$r0,$r12,0
1c007b68:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b6c:	2892818c 	ld.w	$r12,$r12,1184(0x4a0)
1c007b70:	29800180 	st.w	$r0,$r12,0
1c007b74:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007b78:	029fd58c 	addi.w	$r12,$r12,2037(0x7f5)
1c007b7c:	2a00018d 	ld.bu	$r13,$r12,0
1c007b80:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007b84:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007be4 <Key+0x310>
1c007b88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b8c:	2892418c 	ld.w	$r12,$r12,1168(0x490)
1c007b90:	29800180 	st.w	$r0,$r12,0
1c007b94:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b98:	2891d18c 	ld.w	$r12,$r12,1140(0x474)
1c007b9c:	29800180 	st.w	$r0,$r12,0
1c007ba0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007ba4:	50003400 	b	52(0x34) # 1c007bd8 <Key+0x304>
1c007ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007bac:	00408d8c 	slli.w	$r12,$r12,0x3
1c007bb0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007bb4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007bb8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007bbc:	02b850c6 	addi.w	$r6,$r6,-492(0xe14)
1c007bc0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007bc4:	00150184 	move	$r4,$r12
1c007bc8:	57c8a7ff 	bl	-14172(0xfffc8a4) # 1c00446c <OLED_ShowStr>
1c007bcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007bd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007bd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007bd8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007bdc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007be0:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007ba8 <Key+0x2d4>
1c007be4:	03400000 	andi	$r0,$r0,0x0
1c007be8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007bec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007bf0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007bf4:	4c000020 	jirl	$r0,$r1,0

1c007bf8 <Add_Key>:
Add_Key():
1c007bf8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007bfc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007c00:	29806076 	st.w	$r22,$r3,24(0x18)
1c007c04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007c08:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c0c:	029d858c 	addi.w	$r12,$r12,1889(0x761)
1c007c10:	2a00018c 	ld.bu	$r12,$r12,0
1c007c14:	4002a580 	beqz	$r12,676(0x2a4) # 1c007eb8 <Add_Key+0x2c0>
1c007c18:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c1c:	029d458c 	addi.w	$r12,$r12,1873(0x751)
1c007c20:	2a00018d 	ld.bu	$r13,$r12,0
1c007c24:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c28:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c007d54 <Add_Key+0x15c>
1c007c2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c30:	288f718c 	ld.w	$r12,$r12,988(0x3dc)
1c007c34:	2880018d 	ld.w	$r13,$r12,0
1c007c38:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007c3c:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c007cbc <Add_Key+0xc4>
1c007c40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c44:	288f618c 	ld.w	$r12,$r12,984(0x3d8)
1c007c48:	2880018d 	ld.w	$r13,$r12,0
1c007c4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c50:	001c31ad 	mul.w	$r13,$r13,$r12
1c007c54:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c58:	288f118c 	ld.w	$r12,$r12,964(0x3c4)
1c007c5c:	2980018d 	st.w	$r13,$r12,0
1c007c60:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c64:	029c258c 	addi.w	$r12,$r12,1801(0x709)
1c007c68:	2a00018d 	ld.bu	$r13,$r12,0
1c007c6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c70:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007c74:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007c7c <Add_Key+0x84>
1c007c78:	002a0007 	break	0x7
1c007c7c:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c007c80:	0015018d 	move	$r13,$r12
1c007c84:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c88:	288e518c 	ld.w	$r12,$r12,916(0x394)
1c007c8c:	2880018c 	ld.w	$r12,$r12,0
1c007c90:	001031ad 	add.w	$r13,$r13,$r12
1c007c94:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c98:	288e118c 	ld.w	$r12,$r12,900(0x384)
1c007c9c:	2980018d 	st.w	$r13,$r12,0
1c007ca0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ca4:	288da18c 	ld.w	$r12,$r12,872(0x368)
1c007ca8:	2880018c 	ld.w	$r12,$r12,0
1c007cac:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007cb0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007cb4:	288d618c 	ld.w	$r12,$r12,856(0x358)
1c007cb8:	2980018d 	st.w	$r13,$r12,0
1c007cbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007cc0:	288d718c 	ld.w	$r12,$r12,860(0x35c)
1c007cc4:	2880018c 	ld.w	$r12,$r12,0
1c007cc8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007ccc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007cd0:	288cf18c 	ld.w	$r12,$r12,828(0x33c)
1c007cd4:	2880018c 	ld.w	$r12,$r12,0
1c007cd8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007cdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007ce0:	50006c00 	b	108(0x6c) # 1c007d4c <Add_Key+0x154>
1c007ce4:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007ce8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007cec:	0020b5cc 	mod.w	$r12,$r14,$r13
1c007cf0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007cf8 <Add_Key+0x100>
1c007cf4:	002a0007 	break	0x7
1c007cf8:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c007cfc:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007d00:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007d04:	002035cc 	div.w	$r12,$r14,$r13
1c007d08:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007d10 <Add_Key+0x118>
1c007d0c:	002a0007 	break	0x7
1c007d10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d18:	00408d8c 	slli.w	$r12,$r12,0x3
1c007d1c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007d20:	0015018d 	move	$r13,$r12
1c007d24:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c007d28:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007d2c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c007d30:	00150186 	move	$r6,$r12
1c007d34:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007d38:	001501a4 	move	$r4,$r13
1c007d3c:	57cd9fff 	bl	-12900(0xfffcd9c) # 1c004ad8 <OLED_ShowNum>
1c007d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d44:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007d48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d50:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007ce4 <Add_Key+0xec>
1c007d54:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d58:	0298558c 	addi.w	$r12,$r12,1557(0x615)
1c007d5c:	2a00018d 	ld.bu	$r13,$r12,0
1c007d60:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007d64:	5c00e5ac 	bne	$r13,$r12,228(0xe4) # 1c007e48 <Add_Key+0x250>
1c007d68:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007d6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007d70:	50004400 	b	68(0x44) # 1c007db4 <Add_Key+0x1bc>
1c007d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d78:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007d7c:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007d80:	02b3d1ad 	addi.w	$r13,$r13,-780(0xcf4)
1c007d84:	0040898c 	slli.w	$r12,$r12,0x2
1c007d88:	001031ac 	add.w	$r12,$r13,$r12
1c007d8c:	2880018d 	ld.w	$r13,$r12,0
1c007d90:	1cc7ff4e 	pcaddu12i	$r14,409594(0x63ffa)
1c007d94:	02b381ce 	addi.w	$r14,$r14,-800(0xce0)
1c007d98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d9c:	0040898c 	slli.w	$r12,$r12,0x2
1c007da0:	001031cc 	add.w	$r12,$r14,$r12
1c007da4:	2980018d 	st.w	$r13,$r12,0
1c007da8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007dac:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007db0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007db4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007db8:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c007d74 <Add_Key+0x17c>
1c007dbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007dc0:	2889718c 	ld.w	$r12,$r12,604(0x25c)
1c007dc4:	2880018d 	ld.w	$r13,$r12,0
1c007dc8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007dcc:	02b2a18c 	addi.w	$r12,$r12,-856(0xca8)
1c007dd0:	2980018d 	st.w	$r13,$r12,0
1c007dd4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007dd8:	2889118c 	ld.w	$r12,$r12,580(0x244)
1c007ddc:	29800180 	st.w	$r0,$r12,0
1c007de0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007de4:	2888a18c 	ld.w	$r12,$r12,552(0x228)
1c007de8:	29800180 	st.w	$r0,$r12,0
1c007dec:	57c12bff 	bl	-16088(0xfffc128) # 1c003f14 <Buzzer>
1c007df0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007df4:	57eaf7ff 	bl	-5388(0xfffeaf4) # 1c0068e8 <interface_display>
1c007df8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007dfc:	03bf918c 	ori	$r12,$r12,0xfe4
1c007e00:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007e04:	50001400 	b	20(0x14) # 1c007e18 <Add_Key+0x220>
1c007e08:	03400000 	andi	$r0,$r0,0x0
1c007e0c:	03400000 	andi	$r0,$r0,0x0
1c007e10:	03400000 	andi	$r0,$r0,0x0
1c007e14:	03400000 	andi	$r0,$r0,0x0
1c007e18:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007e1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007e20:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007e24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007e08 <Add_Key+0x210>
1c007e28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e2c:	02b1c58c 	addi.w	$r12,$r12,-911(0xc71)
1c007e30:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e34:	2900018d 	st.b	$r13,$r12,0
1c007e38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e3c:	02b1818c 	addi.w	$r12,$r12,-928(0xc60)
1c007e40:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e44:	2900018d 	st.b	$r13,$r12,0
1c007e48:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e4c:	0294858c 	addi.w	$r12,$r12,1313(0x521)
1c007e50:	2a00018d 	ld.bu	$r13,$r12,0
1c007e54:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007e58:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007eb8 <Add_Key+0x2c0>
1c007e5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e60:	2886f18c 	ld.w	$r12,$r12,444(0x1bc)
1c007e64:	29800180 	st.w	$r0,$r12,0
1c007e68:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e6c:	2886818c 	ld.w	$r12,$r12,416(0x1a0)
1c007e70:	29800180 	st.w	$r0,$r12,0
1c007e74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007e78:	50003400 	b	52(0x34) # 1c007eac <Add_Key+0x2b4>
1c007e7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007e80:	00408d8c 	slli.w	$r12,$r12,0x3
1c007e84:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007e88:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e8c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007e90:	02ad00c6 	addi.w	$r6,$r6,-1216(0xb40)
1c007e94:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007e98:	00150184 	move	$r4,$r12
1c007e9c:	57c5d3ff 	bl	-14896(0xfffc5d0) # 1c00446c <OLED_ShowStr>
1c007ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007ea8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007eac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007eb0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007eb4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007e7c <Add_Key+0x284>
1c007eb8:	03400000 	andi	$r0,$r0,0x0
1c007ebc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007ec0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007ec4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007ec8:	4c000020 	jirl	$r0,$r1,0

1c007ecc <Delete_key>:
Delete_key():
1c007ecc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007ed0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007ed4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007ed8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007edc:	50002800 	b	40(0x28) # 1c007f04 <Delete_key+0x38>
1c007ee0:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007ee4:	02ae41ad 	addi.w	$r13,$r13,-1136(0xb90)
1c007ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007eec:	0040898c 	slli.w	$r12,$r12,0x2
1c007ef0:	001031ac 	add.w	$r12,$r13,$r12
1c007ef4:	29800180 	st.w	$r0,$r12,0
1c007ef8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007efc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007f00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007f04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007f08:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007f0c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c007ee0 <Delete_key+0x14>
1c007f10:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007f14:	03bf918c 	ori	$r12,$r12,0xfe4
1c007f18:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007f1c:	50001400 	b	20(0x14) # 1c007f30 <Delete_key+0x64>
1c007f20:	03400000 	andi	$r0,$r0,0x0
1c007f24:	03400000 	andi	$r0,$r0,0x0
1c007f28:	03400000 	andi	$r0,$r0,0x0
1c007f2c:	03400000 	andi	$r0,$r0,0x0
1c007f30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007f34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007f38:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007f3c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007f20 <Delete_key+0x54>
1c007f40:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f44:	02ad658c 	addi.w	$r12,$r12,-1191(0xb59)
1c007f48:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007f4c:	2900018d 	st.b	$r13,$r12,0
1c007f50:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f54:	02ad218c 	addi.w	$r12,$r12,-1208(0xb48)
1c007f58:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007f5c:	2900018d 	st.b	$r13,$r12,0
1c007f60:	03400000 	andi	$r0,$r0,0x0
1c007f64:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007f68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007f6c:	4c000020 	jirl	$r0,$r1,0

1c007f70 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c007f70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f74:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f78:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007f80:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007f84:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c007f88:	02805005 	addi.w	$r5,$r0,20(0x14)
1c007f8c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007f90:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c007f94:	579423ff 	bl	-27616(0xfff9420) # 1c0013b4 <myprintf>
1c007f98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007f9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007fa0:	03808184 	ori	$r4,$r12,0x20
1c007fa4:	5791cbff 	bl	-28216(0xfff91c8) # 1c00116c <EXTI_ClearITPendingBit>
1c007fa8:	03400000 	andi	$r0,$r0,0x0
1c007fac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007fb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007fb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007fb8:	4c000020 	jirl	$r0,$r1,0

1c007fbc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c007fbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007fc0:	29803061 	st.w	$r1,$r3,12(0xc)
1c007fc4:	29802076 	st.w	$r22,$r3,8(0x8)
1c007fc8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007fcc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007fd0:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c007fd4:	02806405 	addi.w	$r5,$r0,25(0x19)
1c007fd8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007fdc:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c007fe0:	5793d7ff 	bl	-27692(0xfff93d4) # 1c0013b4 <myprintf>
1c007fe4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007fe8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007fec:	03808184 	ori	$r4,$r12,0x20
1c007ff0:	57917fff 	bl	-28292(0xfff917c) # 1c00116c <EXTI_ClearITPendingBit>
1c007ff4:	03400000 	andi	$r0,$r0,0x0
1c007ff8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007ffc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008000:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008004:	4c000020 	jirl	$r0,$r1,0

1c008008 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c008008:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00800c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008010:	29802076 	st.w	$r22,$r3,8(0x8)
1c008014:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008018:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00801c:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c008020:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c008024:	1c000044 	pcaddu12i	$r4,2(0x2)
1c008028:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c00802c:	57938bff 	bl	-27768(0xfff9388) # 1c0013b4 <myprintf>
1c008030:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008034:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008038:	03808184 	ori	$r4,$r12,0x20
1c00803c:	579133ff 	bl	-28368(0xfff9130) # 1c00116c <EXTI_ClearITPendingBit>
1c008040:	03400000 	andi	$r0,$r0,0x0
1c008044:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008048:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00804c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008050:	4c000020 	jirl	$r0,$r1,0

1c008054 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c008054:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008058:	29803061 	st.w	$r1,$r3,12(0xc)
1c00805c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008060:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008064:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008068:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c00806c:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c008070:	1c000044 	pcaddu12i	$r4,2(0x2)
1c008074:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c008078:	57933fff 	bl	-27844(0xfff933c) # 1c0013b4 <myprintf>
1c00807c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c008080:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008084:	03808184 	ori	$r4,$r12,0x20
1c008088:	5790e7ff 	bl	-28444(0xfff90e4) # 1c00116c <EXTI_ClearITPendingBit>
1c00808c:	03400000 	andi	$r0,$r0,0x0
1c008090:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008094:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008098:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00809c:	4c000020 	jirl	$r0,$r1,0

1c0080a0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0080a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0080a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0080a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0080ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0080b0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0080b4:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c0080b8:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0080bc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0080c0:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c0080c4:	5792f3ff 	bl	-27920(0xfff92f0) # 1c0013b4 <myprintf>
1c0080c8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0080cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0080d0:	03808184 	ori	$r4,$r12,0x20
1c0080d4:	57909bff 	bl	-28520(0xfff9098) # 1c00116c <EXTI_ClearITPendingBit>
1c0080d8:	03400000 	andi	$r0,$r0,0x0
1c0080dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0080e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0080e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0080e8:	4c000020 	jirl	$r0,$r1,0

1c0080ec <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0080ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0080f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0080f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0080f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0080fc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008100:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c008104:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c008108:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00810c:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c008110:	5792a7ff 	bl	-27996(0xfff92a4) # 1c0013b4 <myprintf>
1c008114:	02808005 	addi.w	$r5,$r0,32(0x20)
1c008118:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00811c:	03808184 	ori	$r4,$r12,0x20
1c008120:	57904fff 	bl	-28596(0xfff904c) # 1c00116c <EXTI_ClearITPendingBit>
1c008124:	03400000 	andi	$r0,$r0,0x0
1c008128:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00812c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008130:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008134:	4c000020 	jirl	$r0,$r1,0

1c008138 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c008138:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00813c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008140:	29802076 	st.w	$r22,$r3,8(0x8)
1c008144:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008148:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00814c:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c008150:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c008154:	1c000044 	pcaddu12i	$r4,2(0x2)
1c008158:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c00815c:	57925bff 	bl	-28072(0xfff9258) # 1c0013b4 <myprintf>
1c008160:	02810005 	addi.w	$r5,$r0,64(0x40)
1c008164:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008168:	03808184 	ori	$r4,$r12,0x20
1c00816c:	579003ff 	bl	-28672(0xfff9000) # 1c00116c <EXTI_ClearITPendingBit>
1c008170:	03400000 	andi	$r0,$r0,0x0
1c008174:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008178:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00817c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008180:	4c000020 	jirl	$r0,$r1,0

1c008184 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c008184:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008188:	29803061 	st.w	$r1,$r3,12(0xc)
1c00818c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008190:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008194:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008198:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c00819c:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c0081a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0081a4:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c0081a8:	57920fff 	bl	-28148(0xfff920c) # 1c0013b4 <myprintf>
1c0081ac:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0081b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0081b4:	03808184 	ori	$r4,$r12,0x20
1c0081b8:	578fb7ff 	bl	-28748(0xfff8fb4) # 1c00116c <EXTI_ClearITPendingBit>
1c0081bc:	03400000 	andi	$r0,$r0,0x0
1c0081c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0081c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0081c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0081cc:	4c000020 	jirl	$r0,$r1,0

1c0081d0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0081d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0081d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0081d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0081dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0081e0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0081e4:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c0081e8:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0081ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0081f0:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c0081f4:	5791c3ff 	bl	-28224(0xfff91c0) # 1c0013b4 <myprintf>
1c0081f8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0081fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008200:	03808184 	ori	$r4,$r12,0x20
1c008204:	578f6bff 	bl	-28824(0xfff8f68) # 1c00116c <EXTI_ClearITPendingBit>
1c008208:	03400000 	andi	$r0,$r0,0x0
1c00820c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008210:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008214:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008218:	4c000020 	jirl	$r0,$r1,0

1c00821c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00821c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008220:	29803061 	st.w	$r1,$r3,12(0xc)
1c008224:	29802076 	st.w	$r22,$r3,8(0x8)
1c008228:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00822c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008230:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c008234:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c008238:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00823c:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c008240:	579177ff 	bl	-28300(0xfff9174) # 1c0013b4 <myprintf>
1c008244:	02880005 	addi.w	$r5,$r0,512(0x200)
1c008248:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00824c:	03808184 	ori	$r4,$r12,0x20
1c008250:	578f1fff 	bl	-28900(0xfff8f1c) # 1c00116c <EXTI_ClearITPendingBit>
1c008254:	03400000 	andi	$r0,$r0,0x0
1c008258:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00825c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008260:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008264:	4c000020 	jirl	$r0,$r1,0

1c008268 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c008268:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00826c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008270:	29802076 	st.w	$r22,$r3,8(0x8)
1c008274:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008278:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00827c:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c008280:	02812405 	addi.w	$r5,$r0,73(0x49)
1c008284:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008288:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c00828c:	57912bff 	bl	-28376(0xfff9128) # 1c0013b4 <myprintf>
1c008290:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c008294:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008298:	03808184 	ori	$r4,$r12,0x20
1c00829c:	578ed3ff 	bl	-28976(0xfff8ed0) # 1c00116c <EXTI_ClearITPendingBit>
1c0082a0:	03400000 	andi	$r0,$r0,0x0
1c0082a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0082a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0082ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0082b0:	4c000020 	jirl	$r0,$r1,0

1c0082b4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0082b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0082b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0082bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0082c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0082c4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0082c8:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c0082cc:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c0082d0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0082d4:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c0082d8:	5790dfff 	bl	-28452(0xfff90dc) # 1c0013b4 <myprintf>
1c0082dc:	03a00005 	ori	$r5,$r0,0x800
1c0082e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0082e4:	03808184 	ori	$r4,$r12,0x20
1c0082e8:	578e87ff 	bl	-29052(0xfff8e84) # 1c00116c <EXTI_ClearITPendingBit>
1c0082ec:	03400000 	andi	$r0,$r0,0x0
1c0082f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0082f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0082f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0082fc:	4c000020 	jirl	$r0,$r1,0

1c008300 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c008300:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008304:	29803061 	st.w	$r1,$r3,12(0xc)
1c008308:	29802076 	st.w	$r22,$r3,8(0x8)
1c00830c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008310:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008314:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c008318:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00831c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008320:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c008324:	579093ff 	bl	-28528(0xfff9090) # 1c0013b4 <myprintf>
1c008328:	14000025 	lu12i.w	$r5,1(0x1)
1c00832c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008330:	03808184 	ori	$r4,$r12,0x20
1c008334:	578e3bff 	bl	-29128(0xfff8e38) # 1c00116c <EXTI_ClearITPendingBit>
1c008338:	03400000 	andi	$r0,$r0,0x0
1c00833c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008340:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008344:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008348:	4c000020 	jirl	$r0,$r1,0

1c00834c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00834c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008350:	29803061 	st.w	$r1,$r3,12(0xc)
1c008354:	29802076 	st.w	$r22,$r3,8(0x8)
1c008358:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00835c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008360:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c008364:	02816405 	addi.w	$r5,$r0,89(0x59)
1c008368:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00836c:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c008370:	579047ff 	bl	-28604(0xfff9044) # 1c0013b4 <myprintf>
1c008374:	14000045 	lu12i.w	$r5,2(0x2)
1c008378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00837c:	03808184 	ori	$r4,$r12,0x20
1c008380:	578defff 	bl	-29204(0xfff8dec) # 1c00116c <EXTI_ClearITPendingBit>
1c008384:	03400000 	andi	$r0,$r0,0x0
1c008388:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00838c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008390:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008394:	4c000020 	jirl	$r0,$r1,0

1c008398 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c008398:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00839c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0083a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0083a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0083a8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0083ac:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c0083b0:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c0083b4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0083b8:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c0083bc:	578ffbff 	bl	-28680(0xfff8ff8) # 1c0013b4 <myprintf>
1c0083c0:	14000085 	lu12i.w	$r5,4(0x4)
1c0083c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0083c8:	03808184 	ori	$r4,$r12,0x20
1c0083cc:	578da3ff 	bl	-29280(0xfff8da0) # 1c00116c <EXTI_ClearITPendingBit>
1c0083d0:	03400000 	andi	$r0,$r0,0x0
1c0083d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0083d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0083dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0083e0:	4c000020 	jirl	$r0,$r1,0

1c0083e4 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0083e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0083e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0083ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0083f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0083f4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0083f8:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c0083fc:	02819405 	addi.w	$r5,$r0,101(0x65)
1c008400:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008404:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c008408:	578fafff 	bl	-28756(0xfff8fac) # 1c0013b4 <myprintf>
1c00840c:	14000105 	lu12i.w	$r5,8(0x8)
1c008410:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008414:	03808184 	ori	$r4,$r12,0x20
1c008418:	578d57ff 	bl	-29356(0xfff8d54) # 1c00116c <EXTI_ClearITPendingBit>
1c00841c:	03400000 	andi	$r0,$r0,0x0
1c008420:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008424:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008428:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00842c:	4c000020 	jirl	$r0,$r1,0

1c008430 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c008430:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008434:	29803061 	st.w	$r1,$r3,12(0xc)
1c008438:	29802076 	st.w	$r22,$r3,8(0x8)
1c00843c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008440:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008444:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c008448:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c00844c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008450:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c008454:	578f63ff 	bl	-28832(0xfff8f60) # 1c0013b4 <myprintf>
1c008458:	14000205 	lu12i.w	$r5,16(0x10)
1c00845c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008460:	03808184 	ori	$r4,$r12,0x20
1c008464:	578d0bff 	bl	-29432(0xfff8d08) # 1c00116c <EXTI_ClearITPendingBit>
1c008468:	03400000 	andi	$r0,$r0,0x0
1c00846c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008470:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008474:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008478:	4c000020 	jirl	$r0,$r1,0

1c00847c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00847c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008480:	29803061 	st.w	$r1,$r3,12(0xc)
1c008484:	29802076 	st.w	$r22,$r3,8(0x8)
1c008488:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00848c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008490:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c008494:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c008498:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00849c:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c0084a0:	578f17ff 	bl	-28908(0xfff8f14) # 1c0013b4 <myprintf>
1c0084a4:	14000405 	lu12i.w	$r5,32(0x20)
1c0084a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0084ac:	03808184 	ori	$r4,$r12,0x20
1c0084b0:	578cbfff 	bl	-29508(0xfff8cbc) # 1c00116c <EXTI_ClearITPendingBit>
1c0084b4:	03400000 	andi	$r0,$r0,0x0
1c0084b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0084bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0084c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0084c4:	4c000020 	jirl	$r0,$r1,0

1c0084c8 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0084c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0084cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0084d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0084d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0084d8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0084dc:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c0084e0:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0084e4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0084e8:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c0084ec:	578ecbff 	bl	-28984(0xfff8ec8) # 1c0013b4 <myprintf>
1c0084f0:	14000805 	lu12i.w	$r5,64(0x40)
1c0084f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0084f8:	03808184 	ori	$r4,$r12,0x20
1c0084fc:	578c73ff 	bl	-29584(0xfff8c70) # 1c00116c <EXTI_ClearITPendingBit>
1c008500:	03400000 	andi	$r0,$r0,0x0
1c008504:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008508:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00850c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008510:	4c000020 	jirl	$r0,$r1,0

1c008514 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c008514:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008518:	29803061 	st.w	$r1,$r3,12(0xc)
1c00851c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008520:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008524:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008528:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c00852c:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c008530:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008534:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c008538:	578e7fff 	bl	-29060(0xfff8e7c) # 1c0013b4 <myprintf>
1c00853c:	14001005 	lu12i.w	$r5,128(0x80)
1c008540:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008544:	03808184 	ori	$r4,$r12,0x20
1c008548:	578c27ff 	bl	-29660(0xfff8c24) # 1c00116c <EXTI_ClearITPendingBit>
1c00854c:	03400000 	andi	$r0,$r0,0x0
1c008550:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008554:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008558:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00855c:	4c000020 	jirl	$r0,$r1,0

1c008560 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c008560:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008564:	29803061 	st.w	$r1,$r3,12(0xc)
1c008568:	29802076 	st.w	$r22,$r3,8(0x8)
1c00856c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008570:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008574:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c008578:	02821005 	addi.w	$r5,$r0,132(0x84)
1c00857c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008580:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c008584:	578e33ff 	bl	-29136(0xfff8e30) # 1c0013b4 <myprintf>
1c008588:	14002005 	lu12i.w	$r5,256(0x100)
1c00858c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008590:	03808184 	ori	$r4,$r12,0x20
1c008594:	578bdbff 	bl	-29736(0xfff8bd8) # 1c00116c <EXTI_ClearITPendingBit>
1c008598:	03400000 	andi	$r0,$r0,0x0
1c00859c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0085a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0085a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0085a8:	4c000020 	jirl	$r0,$r1,0

1c0085ac <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0085ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0085b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0085b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0085b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0085bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0085c0:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c0085c4:	02822405 	addi.w	$r5,$r0,137(0x89)
1c0085c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0085cc:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c0085d0:	578de7ff 	bl	-29212(0xfff8de4) # 1c0013b4 <myprintf>
1c0085d4:	14004005 	lu12i.w	$r5,512(0x200)
1c0085d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0085dc:	03808184 	ori	$r4,$r12,0x20
1c0085e0:	578b8fff 	bl	-29812(0xfff8b8c) # 1c00116c <EXTI_ClearITPendingBit>
1c0085e4:	03400000 	andi	$r0,$r0,0x0
1c0085e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0085ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0085f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0085f4:	4c000020 	jirl	$r0,$r1,0

1c0085f8 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0085f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0085fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c008600:	29802076 	st.w	$r22,$r3,8(0x8)
1c008604:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008608:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00860c:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c008610:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c008614:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008618:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c00861c:	578d9bff 	bl	-29288(0xfff8d98) # 1c0013b4 <myprintf>
1c008620:	14008005 	lu12i.w	$r5,1024(0x400)
1c008624:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008628:	03808184 	ori	$r4,$r12,0x20
1c00862c:	578b43ff 	bl	-29888(0xfff8b40) # 1c00116c <EXTI_ClearITPendingBit>
1c008630:	03400000 	andi	$r0,$r0,0x0
1c008634:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008638:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00863c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008640:	4c000020 	jirl	$r0,$r1,0

1c008644 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c008644:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008648:	29803061 	st.w	$r1,$r3,12(0xc)
1c00864c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008650:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008654:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008658:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c00865c:	02825005 	addi.w	$r5,$r0,148(0x94)
1c008660:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008664:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c008668:	578d4fff 	bl	-29364(0xfff8d4c) # 1c0013b4 <myprintf>
1c00866c:	14010005 	lu12i.w	$r5,2048(0x800)
1c008670:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008674:	03808184 	ori	$r4,$r12,0x20
1c008678:	578af7ff 	bl	-29964(0xfff8af4) # 1c00116c <EXTI_ClearITPendingBit>
1c00867c:	03400000 	andi	$r0,$r0,0x0
1c008680:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008684:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008688:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00868c:	4c000020 	jirl	$r0,$r1,0

1c008690 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c008690:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008694:	29803061 	st.w	$r1,$r3,12(0xc)
1c008698:	29802076 	st.w	$r22,$r3,8(0x8)
1c00869c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0086a0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0086a4:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c0086a8:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c0086ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0086b0:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c0086b4:	578d03ff 	bl	-29440(0xfff8d00) # 1c0013b4 <myprintf>
1c0086b8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0086bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0086c0:	03808184 	ori	$r4,$r12,0x20
1c0086c4:	578aabff 	bl	-30040(0xfff8aa8) # 1c00116c <EXTI_ClearITPendingBit>
1c0086c8:	03400000 	andi	$r0,$r0,0x0
1c0086cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0086d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0086d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0086d8:	4c000020 	jirl	$r0,$r1,0

1c0086dc <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0086dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0086e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0086e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0086e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0086ec:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0086f0:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c0086f4:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0086f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0086fc:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c008700:	578cb7ff 	bl	-29516(0xfff8cb4) # 1c0013b4 <myprintf>
1c008704:	14040005 	lu12i.w	$r5,8192(0x2000)
1c008708:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00870c:	03808184 	ori	$r4,$r12,0x20
1c008710:	578a5fff 	bl	-30116(0xfff8a5c) # 1c00116c <EXTI_ClearITPendingBit>
1c008714:	03400000 	andi	$r0,$r0,0x0
1c008718:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00871c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008720:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008724:	4c000020 	jirl	$r0,$r1,0

1c008728 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c008728:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00872c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008730:	29802076 	st.w	$r22,$r3,8(0x8)
1c008734:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008738:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00873c:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c008740:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c008744:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008748:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c00874c:	578c6bff 	bl	-29592(0xfff8c68) # 1c0013b4 <myprintf>
1c008750:	14080005 	lu12i.w	$r5,16384(0x4000)
1c008754:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008758:	03808184 	ori	$r4,$r12,0x20
1c00875c:	578a13ff 	bl	-30192(0xfff8a10) # 1c00116c <EXTI_ClearITPendingBit>
1c008760:	03400000 	andi	$r0,$r0,0x0
1c008764:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008768:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00876c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008770:	4c000020 	jirl	$r0,$r1,0

1c008774 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c008774:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008778:	29803061 	st.w	$r1,$r3,12(0xc)
1c00877c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008780:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008784:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008788:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c00878c:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c008790:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008794:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c008798:	578c1fff 	bl	-29668(0xfff8c1c) # 1c0013b4 <myprintf>
1c00879c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0087a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0087a4:	03808184 	ori	$r4,$r12,0x20
1c0087a8:	5789c7ff 	bl	-30268(0xfff89c4) # 1c00116c <EXTI_ClearITPendingBit>
1c0087ac:	03400000 	andi	$r0,$r0,0x0
1c0087b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0087b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0087b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0087bc:	4c000020 	jirl	$r0,$r1,0

1c0087c0 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0087c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0087c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0087c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0087cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0087d0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0087d4:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c0087d8:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c0087dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0087e0:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c0087e4:	578bd3ff 	bl	-29744(0xfff8bd0) # 1c0013b4 <myprintf>
1c0087e8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0087ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0087f0:	03808184 	ori	$r4,$r12,0x20
1c0087f4:	57897bff 	bl	-30344(0xfff8978) # 1c00116c <EXTI_ClearITPendingBit>
1c0087f8:	03400000 	andi	$r0,$r0,0x0
1c0087fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008800:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008804:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008808:	4c000020 	jirl	$r0,$r1,0

1c00880c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00880c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008810:	29803061 	st.w	$r1,$r3,12(0xc)
1c008814:	29802076 	st.w	$r22,$r3,8(0x8)
1c008818:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00881c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008820:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c008824:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c008828:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00882c:	02880084 	addi.w	$r4,$r4,512(0x200)
1c008830:	578b87ff 	bl	-29820(0xfff8b84) # 1c0013b4 <myprintf>
1c008834:	14400005 	lu12i.w	$r5,131072(0x20000)
1c008838:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00883c:	03808184 	ori	$r4,$r12,0x20
1c008840:	57892fff 	bl	-30420(0xfff892c) # 1c00116c <EXTI_ClearITPendingBit>
1c008844:	03400000 	andi	$r0,$r0,0x0
1c008848:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00884c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008850:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008854:	4c000020 	jirl	$r0,$r1,0

1c008858 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c008858:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00885c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008860:	29802076 	st.w	$r22,$r3,8(0x8)
1c008864:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008868:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00886c:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c008870:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c008874:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008878:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c00887c:	578b3bff 	bl	-29896(0xfff8b38) # 1c0013b4 <myprintf>
1c008880:	14800005 	lu12i.w	$r5,262144(0x40000)
1c008884:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008888:	03808184 	ori	$r4,$r12,0x20
1c00888c:	5788e3ff 	bl	-30496(0xfff88e0) # 1c00116c <EXTI_ClearITPendingBit>
1c008890:	03400000 	andi	$r0,$r0,0x0
1c008894:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008898:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00889c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0088a0:	4c000020 	jirl	$r0,$r1,0

1c0088a4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0088a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0088a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0088ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0088b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0088b4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0088b8:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c0088bc:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c0088c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0088c4:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c0088c8:	578aefff 	bl	-29972(0xfff8aec) # 1c0013b4 <myprintf>
1c0088cc:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0088d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0088d4:	03808184 	ori	$r4,$r12,0x20
1c0088d8:	578897ff 	bl	-30572(0xfff8894) # 1c00116c <EXTI_ClearITPendingBit>
1c0088dc:	03400000 	andi	$r0,$r0,0x0
1c0088e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0088e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0088e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0088ec:	4c000020 	jirl	$r0,$r1,0

1c0088f0 <ext_handler>:
ext_handler():
1c0088f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0088f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0088f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0088fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008900:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008904:	0380f18c 	ori	$r12,$r12,0x3c
1c008908:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00890c:	2980018d 	st.w	$r13,$r12,0
1c008910:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008914:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c008918:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c00891c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008920:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c008924:	578a93ff 	bl	-30064(0xfff8a90) # 1c0013b4 <myprintf>
1c008928:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00892c:	0380818c 	ori	$r12,$r12,0x20
1c008930:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c008934:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00893c:	0380818c 	ori	$r12,$r12,0x20
1c008940:	2880018c 	ld.w	$r12,$r12,0
1c008944:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008948:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00894c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008950:	0014b1ac 	and	$r12,$r13,$r12
1c008954:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008958:	03400000 	andi	$r0,$r0,0x0
1c00895c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008960:	50004000 	b	64(0x40) # 1c0089a0 <ext_handler+0xb0>
1c008964:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c008968:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00896c:	0017b1ac 	srl.w	$r12,$r13,$r12
1c008970:	0340058c 	andi	$r12,$r12,0x1
1c008974:	40002180 	beqz	$r12,32(0x20) # 1c008994 <ext_handler+0xa4>
1c008978:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00897c:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c008980:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008984:	0040898c 	slli.w	$r12,$r12,0x2
1c008988:	001031ac 	add.w	$r12,$r13,$r12
1c00898c:	2880018c 	ld.w	$r12,$r12,0
1c008990:	4c000181 	jirl	$r1,$r12,0
1c008994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008998:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00899c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0089a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0089a4:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0089a8:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c008964 <ext_handler+0x74>
1c0089ac:	03400000 	andi	$r0,$r0,0x0
1c0089b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0089b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0089b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0089bc:	4c000020 	jirl	$r0,$r1,0

1c0089c0 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0089c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0089c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0089c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0089cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0089d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0089d4:	0380f18c 	ori	$r12,$r12,0x3c
1c0089d8:	1400020d 	lu12i.w	$r13,16(0x10)
1c0089dc:	2980018d 	st.w	$r13,$r12,0
1c0089e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0089e4:	0380118c 	ori	$r12,$r12,0x4
1c0089e8:	2880018c 	ld.w	$r12,$r12,0
1c0089ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0089f0:	578e17ff 	bl	-29164(0xfff8e14) # 1c001804 <WDG_DogFeed>
1c0089f4:	03400000 	andi	$r0,$r0,0x0
1c0089f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0089fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008a00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008a04:	4c000020 	jirl	$r0,$r1,0

1c008a08 <TOUCH>:
TOUCH():
1c008a08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008a0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008a10:	29806076 	st.w	$r22,$r3,24(0x18)
1c008a14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008a18:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008a1c:	0380118c 	ori	$r12,$r12,0x4
1c008a20:	2880018c 	ld.w	$r12,$r12,0
1c008a24:	0044c18c 	srli.w	$r12,$r12,0x10
1c008a28:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c008a2c:	037ffd8c 	andi	$r12,$r12,0xfff
1c008a30:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c008a34:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008a38:	0380118c 	ori	$r12,$r12,0x4
1c008a3c:	2880018c 	ld.w	$r12,$r12,0
1c008a40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c008a44:	03403d8c 	andi	$r12,$r12,0xf
1c008a48:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c008a4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008a50:	0380f18c 	ori	$r12,$r12,0x3c
1c008a54:	1400040d 	lu12i.w	$r13,32(0x20)
1c008a58:	2980018d 	st.w	$r13,$r12,0
1c008a5c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008a60:	0380118c 	ori	$r12,$r12,0x4
1c008a64:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c008a68:	2980018d 	st.w	$r13,$r12,0
1c008a6c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c008a70:	00150185 	move	$r5,$r12
1c008a74:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008a78:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c008a7c:	57893bff 	bl	-30408(0xfff8938) # 1c0013b4 <myprintf>
1c008a80:	03400000 	andi	$r0,$r0,0x0
1c008a84:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008a88:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008a8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008a90:	4c000020 	jirl	$r0,$r1,0

1c008a94 <UART2_INT>:
UART2_INT():
1c008a94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008a98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c008a9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008aa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008aa4:	0380f18c 	ori	$r12,$r12,0x3c
1c008aa8:	1400080d 	lu12i.w	$r13,64(0x40)
1c008aac:	2980018d 	st.w	$r13,$r12,0
1c008ab0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c008ab4:	0380098c 	ori	$r12,$r12,0x2
1c008ab8:	2a00018c 	ld.bu	$r12,$r12,0
1c008abc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008ac0:	03400000 	andi	$r0,$r0,0x0
1c008ac4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c008ac8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008acc:	4c000020 	jirl	$r0,$r1,0

1c008ad0 <BAT_FAIL>:
BAT_FAIL():
1c008ad0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008ad4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008ad8:	29806076 	st.w	$r22,$r3,24(0x18)
1c008adc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008ae0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008ae4:	0380118c 	ori	$r12,$r12,0x4
1c008ae8:	2880018c 	ld.w	$r12,$r12,0
1c008aec:	0044cd8c 	srli.w	$r12,$r12,0x13
1c008af0:	03407d8c 	andi	$r12,$r12,0x1f
1c008af4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008af8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008afc:	0380118c 	ori	$r12,$r12,0x4
1c008b00:	2880018e 	ld.w	$r14,$r12,0
1c008b04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b08:	0380f18c 	ori	$r12,$r12,0x3c
1c008b0c:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c008b10:	0014b5cd 	and	$r13,$r14,$r13
1c008b14:	2980018d 	st.w	$r13,$r12,0
1c008b18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008b1c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008b20:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c008b90 <BAT_FAIL+0xc0>
1c008b24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008b28:	0040898d 	slli.w	$r13,$r12,0x2
1c008b2c:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c008b30:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c008b34:	001031ac 	add.w	$r12,$r13,$r12
1c008b38:	2880018c 	ld.w	$r12,$r12,0
1c008b3c:	4c000180 	jirl	$r0,$r12,0
1c008b40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008b44:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c008b48:	57886fff 	bl	-30612(0xfff886c) # 1c0013b4 <myprintf>
1c008b4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b50:	0380118c 	ori	$r12,$r12,0x4
1c008b54:	29800180 	st.w	$r0,$r12,0
1c008b58:	50003c00 	b	60(0x3c) # 1c008b94 <BAT_FAIL+0xc4>
1c008b5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008b60:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c008b64:	578853ff 	bl	-30640(0xfff8850) # 1c0013b4 <myprintf>
1c008b68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b6c:	0380118c 	ori	$r12,$r12,0x4
1c008b70:	2880018e 	ld.w	$r14,$r12,0
1c008b74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b78:	0380118c 	ori	$r12,$r12,0x4
1c008b7c:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c008b80:	03bffdad 	ori	$r13,$r13,0xfff
1c008b84:	0014b5cd 	and	$r13,$r14,$r13
1c008b88:	2980018d 	st.w	$r13,$r12,0
1c008b8c:	50000800 	b	8(0x8) # 1c008b94 <BAT_FAIL+0xc4>
1c008b90:	03400000 	andi	$r0,$r0,0x0
1c008b94:	03400000 	andi	$r0,$r0,0x0
1c008b98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008b9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008ba0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008ba4:	4c000020 	jirl	$r0,$r1,0

1c008ba8 <INTC_Handler>:
INTC_Handler():
1c008ba8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008bac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008bb0:	29806076 	st.w	$r22,$r3,24(0x18)
1c008bb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008bb8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008bbc:	0380158c 	ori	$r12,$r12,0x5
1c008bc0:	2a00018c 	ld.bu	$r12,$r12,0
1c008bc4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008bc8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008bcc:	0340058c 	andi	$r12,$r12,0x1
1c008bd0:	40002980 	beqz	$r12,40(0x28) # 1c008bf8 <INTC_Handler+0x50>
1c008bd4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008bd8:	57b48fff 	bl	-19316(0xfffb48c) # 1c004064 <TIM_GetITStatus>
1c008bdc:	0015008c 	move	$r12,$r4
1c008be0:	40001980 	beqz	$r12,24(0x18) # 1c008bf8 <INTC_Handler+0x50>
1c008be4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008be8:	57b4cbff 	bl	-19256(0xfffb4c8) # 1c0040b0 <TIM_ClearIT>
1c008bec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008bf0:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c008bf4:	5787c3ff 	bl	-30784(0xfff87c0) # 1c0013b4 <myprintf>
1c008bf8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008bfc:	0340118c 	andi	$r12,$r12,0x4
1c008c00:	40002d80 	beqz	$r12,44(0x2c) # 1c008c2c <INTC_Handler+0x84>
1c008c04:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c008c08:	2880018c 	ld.w	$r12,$r12,0
1c008c0c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c008c10:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c008c14:	00150184 	move	$r4,$r12
1c008c18:	579377ff 	bl	-27788(0xfff9374) # 1c001f8c <my_recv_dat_int>
1c008c1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008c20:	03800d8c 	ori	$r12,$r12,0x3
1c008c24:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c008c28:	2900018d 	st.b	$r13,$r12,0
1c008c2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008c30:	0340218c 	andi	$r12,$r12,0x8
1c008c34:	40002d80 	beqz	$r12,44(0x2c) # 1c008c60 <INTC_Handler+0xb8>
1c008c38:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c008c3c:	2880018c 	ld.w	$r12,$r12,0
1c008c40:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c008c44:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c008c48:	00150184 	move	$r4,$r12
1c008c4c:	579343ff 	bl	-27840(0xfff9340) # 1c001f8c <my_recv_dat_int>
1c008c50:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008c54:	03800d8c 	ori	$r12,$r12,0x3
1c008c58:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c008c5c:	2900018d 	st.b	$r13,$r12,0
1c008c60:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008c64:	03800d8c 	ori	$r12,$r12,0x3
1c008c68:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c008c6c:	2900018d 	st.b	$r13,$r12,0
1c008c70:	03400000 	andi	$r0,$r0,0x0
1c008c74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008c78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008c80:	4c000020 	jirl	$r0,$r1,0

1c008c84 <TIMER_HANDLER>:
TIMER_HANDLER():
1c008c84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008c88:	29803061 	st.w	$r1,$r3,12(0xc)
1c008c8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008c90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008c94:	5784b7ff 	bl	-31564(0xfff84b4) # 1c001148 <Set_Timer_clear>
1c008c98:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008c9c:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c008ca0:	578717ff 	bl	-30956(0xfff8714) # 1c0013b4 <myprintf>
1c008ca4:	578487ff 	bl	-31612(0xfff8484) # 1c001128 <Set_Timer_stop>
1c008ca8:	03400000 	andi	$r0,$r0,0x0
1c008cac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008cb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008cb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008cb8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c008cbc <F6x8-0x334>:
1c008cbc:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c008cc0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008cc4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008cc8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008ccc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008cd0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008cd4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008cd8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008cdc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008ce0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008ce4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008ce8:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c008cec:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008cf0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008cf4:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008cf8:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008cfc:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008d00:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008d04:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008d08:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008d0c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008d10:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d14:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d18:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d1c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d20:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d24:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d28:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d2c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d30:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d34:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d38:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d3c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d40:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d44:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d48:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d4c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d50:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d54:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d58:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d5c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d60:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d64:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d68:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d6c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d70:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d74:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d78:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d7c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d80:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d84:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d88:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d8c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d90:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d94:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d98:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008d9c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008da0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008da4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008da8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008db0:	1c001564 	pcaddu12i	$r4,171(0xab)
1c008db4:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c008db8:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c008dbc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dc0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dc4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dc8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dcc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dd0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dd4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dd8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008ddc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008de0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008de4:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c008de8:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c008dec:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008df0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008df4:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c008df8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008dfc:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c008e00:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008e04:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008e08:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c008e0c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e10:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c008e14:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c008e18:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e1c:	00000000 	0x00000000
1c008e20:	befdca20 	0xbefdca20
1c008e24:	bdfcb0dd 	0xbdfcb0dd
1c008e28:	b4d5cad3 	0xb4d5cad3
1c008e2c:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008e30:	00000000 	0x00000000
1c008e34:	d0b8abb4 	0xd0b8abb4
1c008e38:	cfc9f7c6 	0xcfc9f7c6
1c008e3c:	d0d3bbc3 	0xd0d3bbc3
1c008e40:	b8d6d6ca 	0xb8d6d6ca
1c008e44:	00000000 	0x00000000
1c008e48:	ebc8bcc2 	0xebc8bcc2
1c008e4c:	c6ceb8d6 	0xc6ceb8d6
1c008e50:	f1cfbccd 	0xf1cfbccd
1c008e54:	dcb0a7ca 	0xdcb0a7ca
1c008e58:	00000000 	0x00000000
1c008e5c:	ceb8d620 	0xceb8d620
1c008e60:	b8abccc6 	0xb8abccc6
1c008e64:	ccf2bbc9 	0xccf2bbc9
1c008e68:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c008e6c:	00000000 	0x00000000
1c008e70:	ceb8d620 	0xceb8d620
1c008e74:	caabccc6 	0xcaabccc6
1c008e78:	ccf2bbaa 	0xccf2bbaa
1c008e7c:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c008e80:	00000000 	0x00000000
1c008e84:	b8d62020 	0xb8d62020
1c008e88:	bccdc6ce 	0xbccdc6ce
1c008e8c:	abccf1cf 	0xabccf1cf
1c008e90:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c008e94:	00000000 	0x00000000
1c008e98:	ceb8d620 	0xceb8d620
1c008e9c:	d5d8ccc6 	0xd5d8ccc6
1c008ea0:	cce3b5f7 	0xcce3b5f7
1c008ea4:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c008ea8:	00000000 	0x00000000
1c008eac:	b8d62020 	0xb8d62020
1c008eb0:	bbb2c6ce 	0xbbb2c6ce
1c008eb4:	e4c5a5c6 	0xe4c5a5c6
1c008eb8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008ebc:	00000000 	0x00000000
1c008ec0:	d3bbc320 	0xd3bbc320
1c008ec4:	cbd1cbd0 	0xcbd1cbd0
1c008ec8:	d6bdb5f7 	0xd6bdb5f7
1c008ecc:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c008ed0:	00000000 	0x00000000
1c008ed4:	cc202020 	0xcc202020
1c008ed8:	baf7d5d8 	0xbaf7d5d8
1c008edc:	caa2b2cf 	0xcaa2b2cf
1c008ee0:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008ee4:	00000000 	0x00000000
1c008ee8:	b7d6d8b5 	0xb7d6d8b5
1c008eec:	c5baf2d0 	0xc5baf2d0
1c008ef0:	f6b3acb3 	0xf6b3acb3
1c008ef4:	a7ceb6b7 	0xa7ceb6b7
1c008ef8:	00000000 	0x00000000
1c008efc:	bec92020 	0xbec92020
1c008f00:	a3c4fdb3 	0xa3c4fdb3
1c008f04:	a7cae5b0 	0xa7cae5b0
1c008f08:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c008f0c:	00000000 	0x00000000
1c008f10:	bfe5c720 	0xbfe5c720
1c008f14:	ceb8d6d5 	0xceb8d6d5
1c008f18:	cae2bfc6 	0xcae2bfc6
1c008f1c:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008f20:	00000000 	0x00000000
1c008f24:	e5b3babb 	0xe5b3babb
1c008f28:	dac4f8c7 	0xdac4f8c7
1c008f2c:	d0d3dece 	0xd0d3dece
1c008f30:	bccda7d0 	0xbccda7d0
1c008f34:	00000000 	0x00000000
1c008f38:	d0c1b620 	0xd0c1b620
1c008f3c:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1db80 <_start-0x2e2480>
1c008f40:	f6b34853 	0xf6b34853
1c008f44:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c008f48:	00000000 	0x00000000
1c008f4c:	ce202020 	0xce202020
1c008f50:	d2a8b6b4 	0xd2a8b6b4
1c008f54:	ceedb4e5 	0xceedb4e5
1c008f58:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c008f5c:	00000000 	0x00000000
1c008f60:	dece2020 	0xdece2020
1c008f64:	c4bca7d0 	0xc4bca7d0
1c008f68:	f7c6e6b4 	0xf7c6e6b4
1c008f6c:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c008f70:	00000000 	0x00000000
1c008f74:	b4c4bc20 	0xb4c4bc20
1c008f78:	c4f7c6e6 	0xc4f7c6e6
1c008f7c:	b4ddc8da 	0xb4ddc8da
1c008f80:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008f84:	00000000 	0x00000000
1c008f88:	cac7bc20 	0xcac7bc20
1c008f8c:	d2beb1c2 	0xd2beb1c2
1c008f90:	b4ebc2b3 	0xb4ebc2b3
1c008f94:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008f98:	00000000 	0x00000000
1c008f9c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008fa0:	c6ceb8d6 	0xc6ceb8d6
1c008fa4:	fac2e2bf 	0xfac2e2bf
1c008fa8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008fac:	00000000 	0x00000000
1c008fb0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008fb4:	b7d6d8b5 	0xb7d6d8b5
1c008fb8:	f3ceedb4 	0xf3ceedb4
1c008fbc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008fc0:	00000000 	0x00000000
1c008fc4:	bbb5b720 	0xbbb5b720
1c008fc8:	c8b7c8d8 	0xc8b7c8d8
1c008fcc:	d3ebc2cf 	0xd3ebc2cf
1c008fd0:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c008fd4:	00000000 	0x00000000
1c008fd8:	003a4449 	0x003a4449
1c008fdc:	1c002d00 	pcaddu12i	$r0,360(0x168)
1c008fe0:	1c002dac 	pcaddu12i	$r12,365(0x16d)
1c008fe4:	1c002e6c 	pcaddu12i	$r12,371(0x173)
1c008fe8:	1c002f54 	pcaddu12i	$r20,378(0x17a)
1c008fec:	1c002fb8 	pcaddu12i	$r24,381(0x17d)

1c008ff0 <F6x8>:
	...
1c008ff8:	00002f00 	ctz.d	$r0,$r24
1c008ffc:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c009000:	14000007 	lu12i.w	$r7,0
1c009004:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c009008:	7f2a2400 	0x7f2a2400
1c00900c:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfe901c <_start-0x16fe4>
1c009010:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c009014:	55493600 	bl	-134133452(0x8014934) # 1401d948 <_start-0x7fe26b8>
1c009018:	00005022 	bitrev.w	$r2,$r1
1c00901c:	00000305 	0x00000305
1c009020:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c009024:	00000041 	0x00000041
1c009028:	001c2241 	mul.w	$r1,$r18,$r8
1c00902c:	3e081400 	0x3e081400
1c009030:	08001408 	0x08001408
1c009034:	08083e08 	0x08083e08
1c009038:	a0000000 	0xa0000000
1c00903c:	08000060 	0x08000060
1c009040:	08080808 	0x08080808
1c009044:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c00f044 <_sidata+0x5150>
1c009048:	20000000 	ll.w	$r0,$r0,0
1c00904c:	02040810 	slti	$r16,$r0,258(0x102)
1c009050:	49513e00 	0x49513e00
1c009054:	00003e45 	revb.d	$r5,$r18
1c009058:	00407f42 	0x00407f42
1c00905c:	51614200 	b	-134127296(0x8016140) # 1401f19c <_start-0x7fe0e64>
1c009060:	21004649 	sc.w	$r9,$r18,68(0x44)
1c009064:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c009068:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c00906c:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c009070:	39454545 	0x39454545
1c009074:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01dab0 <_sidata+0x13bbc>
1c009078:	01003049 	0x01003049
1c00907c:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c009080:	49493600 	0x49493600
1c009084:	06003649 	cacop	0x9,$r18,13(0xd)
1c009088:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c00908c:	36360000 	0x36360000
1c009090:	00000000 	0x00000000
1c009094:	00003656 	revb.4h	$r22,$r18
1c009098:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c00909c:	14000041 	lu12i.w	$r1,2(0x2)
1c0090a0:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c0090a4:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c0090a8:	02000814 	slti	$r20,$r0,2(0x2)
1c0090ac:	06095101 	cacop	0x1,$r8,596(0x254)
1c0090b0:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01d9e0 <_sidata+0x13aec>
1c0090b4:	7c003e51 	0x7c003e51
1c0090b8:	7c121112 	0x7c121112
1c0090bc:	49497f00 	0x49497f00
1c0090c0:	3e003649 	0x3e003649
1c0090c4:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c0090c8:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01d244 <_sidata+0x13350>
1c0090cc:	7f001c22 	0x7f001c22
1c0090d0:	41494949 	beqz	$r10,2443592(0x254948) # 1c25da18 <_sidata+0x253b24>
1c0090d4:	09097f00 	0x09097f00
1c0090d8:	3e000109 	0x3e000109
1c0090dc:	7a494941 	0x7a494941
1c0090e0:	08087f00 	0x08087f00
1c0090e4:	00007f08 	0x00007f08
1c0090e8:	00417f41 	slli.d	$r1,$r26,0x1f
1c0090ec:	41402000 	beqz	$r0,81952(0x14020) # 1c01d10c <_sidata+0x13218>
1c0090f0:	7f00013f 	0x7f00013f
1c0090f4:	41221408 	beqz	$r0,2171412(0x212214) # 1c21b308 <_sidata+0x211414>
1c0090f8:	40407f00 	beqz	$r24,16508(0x407c) # 1c00d174 <_sidata+0x3280>
1c0090fc:	7f004040 	0x7f004040
1c009100:	7f020c02 	0x7f020c02
1c009104:	08047f00 	0x08047f00
1c009108:	3e007f10 	0x3e007f10
1c00910c:	3e414141 	0x3e414141
1c009110:	09097f00 	0x09097f00
1c009114:	3e000609 	0x3e000609
1c009118:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfeb268 <_start-0x14d98>
1c00911c:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c009120:	46004629 	bnez	$r17,2490436(0x260044) # 1c269164 <_sidata+0x25f270>
1c009124:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c009128:	7f010100 	0x7f010100
1c00912c:	3f000101 	0x3f000101
1c009130:	3f404040 	0x3f404040
1c009134:	40201f00 	beqz	$r24,8220(0x201c) # 1c00b150 <_sidata+0x125c>
1c009138:	3f001f20 	0x3f001f20
1c00913c:	3f403840 	0x3f403840
1c009140:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c009144:	07006314 	0x07006314
1c009148:	07087008 	0x07087008
1c00914c:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c01e2ac <_sidata+0x143b8>
1c009150:	00004345 	revh.2w	$r5,$r26
1c009154:	0041417f 	slli.d	$r31,$r11,0x10
1c009158:	552a5500 	bl	67185236(0x4012a54) # 2001bbac <_sidata+0x4011cb8>
1c00915c:	0000552a 	bitrev.d	$r10,$r9
1c009160:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c009164:	01020400 	0x01020400
1c009168:	40000402 	beqz	$r0,524292(0x80004) # 1c08916c <_sidata+0x7f278>
1c00916c:	40404040 	beqz	$r2,16448(0x4040) # 1c00d1ac <_sidata+0x32b8>
1c009170:	02010000 	slti	$r0,$r0,64(0x40)
1c009174:	20000004 	ll.w	$r4,$r0,0
1c009178:	78545454 	0x78545454
1c00917c:	44487f00 	bnez	$r24,18556(0x487c) # 1c00d9f8 <_sidata+0x3b04>
1c009180:	38003844 	ldx.b	$r4,$r2,$r14
1c009184:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c009188:	44443800 	bnez	$r0,17464(0x4438) # 1c00d5c0 <_sidata+0x36cc>
1c00918c:	38007f48 	ldx.b	$r8,$r26,$r31
1c009190:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c009194:	097e0800 	0x097e0800
1c009198:	18000201 	pcaddi	$r1,16(0x10)
1c00919c:	7ca4a4a4 	0x7ca4a4a4
1c0091a0:	04087f00 	csrxchg	$r0,$r24,0x21f
1c0091a4:	00007804 	0x00007804
1c0091a8:	00407d44 	0x00407d44
1c0091ac:	84804000 	0x84804000
1c0091b0:	7f00007d 	0x7f00007d
1c0091b4:	00442810 	0x00442810
1c0091b8:	7f410000 	0x7f410000
1c0091bc:	7c000040 	0x7c000040
1c0091c0:	78041804 	0x78041804
1c0091c4:	04087c00 	csrrd	$r0,0x21f
1c0091c8:	38007804 	ldx.b	$r4,$r0,$r30
1c0091cc:	38444444 	vstx	$vr4,$r2,$r17
1c0091d0:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c0091d4:	18001824 	pcaddi	$r4,193(0xc1)
1c0091d8:	fc182424 	0xfc182424
1c0091dc:	04087c00 	csrrd	$r0,0x21f
1c0091e0:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c1091e8 <_sidata+0xff2f4>
1c0091e4:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c0091e8:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00d0ec <_sidata+0x31f8>
1c0091ec:	3c002040 	0x3c002040
1c0091f0:	7c204040 	0x7c204040
1c0091f4:	40201c00 	beqz	$r0,8220(0x201c) # 1c00b210 <_sidata+0x131c>
1c0091f8:	3c001c20 	0x3c001c20
1c0091fc:	3c403040 	0x3c403040
1c009200:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c009204:	1c004428 	pcaddu12i	$r8,545(0x221)
1c009208:	7ca0a0a0 	0x7ca0a0a0
1c00920c:	54644400 	bl	25668(0x6444) # 1c00f650 <_sidata+0x575c>
1c009210:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c009214:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c009218 <F8X16>:
	...
1c009228:	f8000000 	0xf8000000
1c00922c:	00000000 	0x00000000
1c009230:	33000000 	0x33000000
1c009234:	00000030 	0x00000030
1c009238:	060c1000 	cacop	0x0,$r0,772(0x304)
1c00923c:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c009248:	4078c040 	beqz	$r2,30912(0x78c0) # 1c010b08 <_sidata+0x6c14>
1c00924c:	004078c0 	0x004078c0
1c009250:	04043f04 	csrxchg	$r4,$r24,0x10f
1c009254:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c009258:	fc887000 	0xfc887000
1c00925c:	00003008 	revb.2h	$r8,$r0
1c009260:	ff201800 	0xff201800
1c009264:	00001e21 	ctz.w	$r1,$r17
1c009268:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c00926c:	000018e0 	cto.w	$r0,$r7
1c009270:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c009274:	001e211e 	mulh.d	$r30,$r8,$r8
1c009278:	8808f000 	0x8808f000
1c00927c:	00000070 	0x00000070
1c009280:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c009284:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c009288:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c009298:	e0000000 	0xe0000000
1c00929c:	00020418 	0x00020418
1c0092a0:	07000000 	0x07000000
1c0092a4:	00402018 	0x00402018
1c0092a8:	18040200 	pcaddi	$r0,8208(0x2010)
1c0092ac:	000000e0 	0x000000e0
1c0092b0:	18204000 	pcaddi	$r0,66048(0x10200)
1c0092b4:	00000007 	0x00000007
1c0092b8:	f0804040 	0xf0804040
1c0092bc:	00404080 	0x00404080
1c0092c0:	0f010202 	0x0f010202
1c0092c4:	00020201 	0x00020201
1c0092c8:	f0000000 	0xf0000000
1c0092cc:	00000000 	0x00000000
1c0092d0:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c0092d4:	00010101 	0x00010101
	...
1c0092e0:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c0092f0:	01010100 	fadd.d	$f0,$f8,$f0
1c0092f4:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c009300:	00303000 	0x00303000
	...
1c00930c:	04186080 	csrxchg	$r0,$r4,0x618
1c009310:	06186000 	cacop	0x0,$r0,1560(0x618)
1c009314:	00000001 	0x00000001
1c009318:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00931c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009320:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c009324:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c009328:	f8101000 	0xf8101000
1c00932c:	00000000 	0x00000000
1c009330:	3f202000 	0x3f202000
1c009334:	00002020 	clo.d	$r0,$r1
1c009338:	08087000 	0x08087000
1c00933c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c009340:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c009344:	00302122 	0x00302122
1c009348:	88083000 	0x88083000
1c00934c:	00304888 	0x00304888
1c009350:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c009354:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009358:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c00935c:	0000f810 	0x0000f810
1c009360:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c009364:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c009368:	8808f800 	0x8808f800
1c00936c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c009370:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c009374:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009378:	8810e000 	0x8810e000
1c00937c:	00001888 	cto.w	$r8,$r4
1c009380:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c009384:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009388:	08083800 	0x08083800
1c00938c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c009390:	3f000000 	0x3f000000
1c009394:	00000000 	0x00000000
1c009398:	08887000 	0x08887000
1c00939c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0093a0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0093a4:	001c2221 	mul.w	$r1,$r17,$r8
1c0093a8:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c0093ac:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0093b0:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c0093b4:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c0093b8:	c0000000 	0xc0000000
1c0093bc:	000000c0 	0x000000c0
1c0093c0:	30000000 	0x30000000
1c0093c4:	00000030 	0x00000030
1c0093c8:	80000000 	0x80000000
1c0093cc:	00000000 	0x00000000
1c0093d0:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c0113d0 <_sidata+0x74dc>
1c0093d4:	00000000 	0x00000000
1c0093d8:	40800000 	beqz	$r0,32768(0x8000) # 1c0113d8 <_sidata+0x74e4>
1c0093dc:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0093e0:	04020100 	csrxchg	$r0,$r8,0x80
1c0093e4:	00201008 	div.w	$r8,$r0,$r4
1c0093e8:	40404040 	beqz	$r2,16448(0x4040) # 1c00d428 <_sidata+0x3534>
1c0093ec:	00404040 	0x00404040
1c0093f0:	04040404 	csrrd	$r4,0x101
1c0093f4:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c0093f8:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c0093fc:	00008040 	0x00008040
1c009400:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c009404:	00010204 	0x00010204
1c009408:	08487000 	0x08487000
1c00940c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c009410:	30000000 	0x30000000
1c009414:	00000136 	0x00000136
1c009418:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00941c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c009420:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c009424:	000b1423 	0x000b1423
1c009428:	38c00000 	0x38c00000
1c00942c:	000000e0 	0x000000e0
1c009430:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c009434:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c009438:	8888f808 	0x8888f808
1c00943c:	00007088 	0x00007088
1c009440:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009444:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009448:	080830c0 	0x080830c0
1c00944c:	00380808 	0x00380808
1c009450:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c009454:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c009458:	0808f808 	0x0808f808
1c00945c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009460:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009464:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c009468:	8888f808 	0x8888f808
1c00946c:	001008e8 	add.w	$r8,$r7,$r2
1c009470:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009474:	00182023 	sra.w	$r3,$r1,$r8
1c009478:	8888f808 	0x8888f808
1c00947c:	001008e8 	add.w	$r8,$r7,$r2
1c009480:	00203f20 	div.w	$r0,$r25,$r15
1c009484:	00000003 	0x00000003
1c009488:	080830c0 	0x080830c0
1c00948c:	00003808 	revb.2w	$r8,$r0
1c009490:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c009494:	00021e22 	0x00021e22
1c009498:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00949c:	08f80800 	0x08f80800
1c0094a0:	01213f20 	0x01213f20
1c0094a4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c0094a8:	f8080800 	0xf8080800
1c0094ac:	00000808 	0x00000808
1c0094b0:	3f202000 	0x3f202000
1c0094b4:	00002020 	clo.d	$r0,$r1
1c0094b8:	08080000 	0x08080000
1c0094bc:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c0094c0:	808080c0 	0x808080c0
1c0094c4:	0000007f 	0x0000007f
1c0094c8:	c088f808 	0xc088f808
1c0094cc:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c0094d0:	01203f20 	0x01203f20
1c0094d4:	00203826 	div.w	$r6,$r1,$r14
1c0094d8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0094dc:	00000000 	0x00000000
1c0094e0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0094e4:	00302020 	0x00302020
1c0094e8:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c0094ec:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c0094f0:	3f003f20 	0x3f003f20
1c0094f4:	00203f00 	div.w	$r0,$r24,$r15
1c0094f8:	c030f808 	0xc030f808
1c0094fc:	08f80800 	0x08f80800
1c009500:	00203f20 	div.w	$r0,$r25,$r15
1c009504:	003f1807 	0x003f1807
1c009508:	080810e0 	0x080810e0
1c00950c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009510:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c009514:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c009518:	0808f808 	0x0808f808
1c00951c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c009520:	01213f20 	0x01213f20
1c009524:	00000101 	0x00000101
1c009528:	080810e0 	0x080810e0
1c00952c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009530:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c009534:	004f5038 	0x004f5038
1c009538:	8888f808 	0x8888f808
1c00953c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c009540:	00203f20 	div.w	$r0,$r25,$r15
1c009544:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c009548:	08887000 	0x08887000
1c00954c:	00380808 	0x00380808
1c009550:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c009554:	001c2221 	mul.w	$r1,$r17,$r8
1c009558:	f8080818 	0xf8080818
1c00955c:	00180808 	sra.w	$r8,$r0,$r2
1c009560:	3f200000 	0x3f200000
1c009564:	00000020 	0x00000020
1c009568:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00956c:	08f80800 	0x08f80800
1c009570:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c009574:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c009578:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00957c:	0838c800 	0x0838c800
1c009580:	38070000 	0x38070000
1c009584:	0000010e 	0x0000010e
1c009588:	f80008f8 	0xf80008f8
1c00958c:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c009590:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c009594:	00033c07 	0x00033c07
1c009598:	80681808 	0x80681808
1c00959c:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c0095a0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c0095a4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c0095a8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c0095ac:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0095b0:	3f200000 	0x3f200000
1c0095b4:	00000020 	0x00000020
1c0095b8:	08080810 	0x08080810
1c0095bc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0095c0:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c0095c4:	00182020 	sra.w	$r0,$r1,$r8
1c0095c8:	fe000000 	0xfe000000
1c0095cc:	00020202 	0x00020202
1c0095d0:	7f000000 	0x7f000000
1c0095d4:	00404040 	0x00404040
1c0095d8:	c0300c00 	0xc0300c00
1c0095dc:	00000000 	0x00000000
1c0095e0:	01000000 	0x01000000
1c0095e4:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c0095e8:	02020200 	slti	$r0,$r16,128(0x80)
1c0095ec:	000000fe 	0x000000fe
1c0095f0:	40404000 	beqz	$r0,16448(0x4040) # 1c00d630 <_sidata+0x373c>
1c0095f4:	0000007f 	0x0000007f
1c0095f8:	02040000 	slti	$r0,$r0,256(0x100)
1c0095fc:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c009610:	80808080 	0x80808080
1c009614:	80808080 	0x80808080
1c009618:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c009628:	80800000 	0x80800000
1c00962c:	00008080 	0x00008080
1c009630:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c009634:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c009638:	8000f808 	0x8000f808
1c00963c:	00000080 	0x00000080
1c009640:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c009644:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009648:	80000000 	0x80000000
1c00964c:	00008080 	0x00008080
1c009650:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c009654:	00112020 	sub.w	$r0,$r1,$r8
1c009658:	80000000 	0x80000000
1c00965c:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c009660:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c009664:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c009668:	80800000 	0x80800000
1c00966c:	00008080 	0x00008080
1c009670:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c009674:	00132222 	maskeqz	$r2,$r17,$r8
1c009678:	f0808000 	0xf0808000
1c00967c:	18888888 	pcaddi	$r8,279620(0x44444)
1c009680:	3f202000 	0x3f202000
1c009684:	00002020 	clo.d	$r0,$r1
1c009688:	80800000 	0x80800000
1c00968c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009690:	94946b00 	0x94946b00
1c009694:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c009698:	8000f808 	0x8000f808
1c00969c:	00008080 	0x00008080
1c0096a0:	00213f20 	div.wu	$r0,$r25,$r15
1c0096a4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0096a8:	98988000 	0x98988000
1c0096ac:	00000000 	0x00000000
1c0096b0:	3f202000 	0x3f202000
1c0096b4:	00002020 	clo.d	$r0,$r1
1c0096b8:	80000000 	0x80000000
1c0096bc:	00009898 	0x00009898
1c0096c0:	8080c000 	0x8080c000
1c0096c4:	00007f80 	0x00007f80
1c0096c8:	0000f808 	0x0000f808
1c0096cc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0096d0:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c0096d4:	0020302d 	div.w	$r13,$r1,$r12
1c0096d8:	f8080800 	0xf8080800
1c0096dc:	00000000 	0x00000000
1c0096e0:	3f202000 	0x3f202000
1c0096e4:	00002020 	clo.d	$r0,$r1
1c0096e8:	80808080 	0x80808080
1c0096ec:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0096f0:	00203f20 	div.w	$r0,$r25,$r15
1c0096f4:	3f00203f 	0x3f00203f
1c0096f8:	80008080 	0x80008080
1c0096fc:	00008080 	0x00008080
1c009700:	00213f20 	div.wu	$r0,$r25,$r15
1c009704:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c009708:	80800000 	0x80800000
1c00970c:	00008080 	0x00008080
1c009710:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c009714:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c009718:	80008080 	0x80008080
1c00971c:	00000080 	0x00000080
1c009720:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c009724:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009728:	80000000 	0x80000000
1c00972c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009730:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c009734:	80ffa020 	0x80ffa020
1c009738:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00973c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009740:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c009744:	00010020 	asrtle.d	$r1,$r0
1c009748:	80800000 	0x80800000
1c00974c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009750:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c009754:	00192424 	srl.d	$r4,$r1,$r9
1c009758:	e0808000 	0xe0808000
1c00975c:	00008080 	0x00008080
1c009760:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c009764:	00002020 	clo.d	$r0,$r1
1c009768:	00008080 	0x00008080
1c00976c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c009770:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c009774:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c009778:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00977c:	80808000 	0x80808000
1c009780:	300e0100 	0x300e0100
1c009784:	00010608 	0x00010608
1c009788:	80008080 	0x80008080
1c00978c:	80808000 	0x80808000
1c009790:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c009794:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c009798:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00979c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0097a0:	2e312000 	0x2e312000
1c0097a4:	0020310e 	div.w	$r14,$r8,$r12
1c0097a8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0097ac:	80808000 	0x80808000
1c0097b0:	708e8180 	0x708e8180
1c0097b4:	00010618 	0x00010618
1c0097b8:	80808000 	0x80808000
1c0097bc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0097c0:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c0097c4:	00302122 	0x00302122
1c0097c8:	00000000 	0x00000000
1c0097cc:	02027c80 	slti	$r0,$r4,159(0x9f)
1c0097d0:	00000000 	0x00000000
1c0097d4:	40403f00 	beqz	$r24,16444(0x403c) # 1c00d810 <_sidata+0x391c>
1c0097d8:	00000000 	0x00000000
1c0097dc:	000000ff 	0x000000ff
1c0097e0:	00000000 	0x00000000
1c0097e4:	000000ff 	0x000000ff
1c0097e8:	7c020200 	0x7c020200
1c0097ec:	00000080 	0x00000080
1c0097f0:	3f404000 	0x3f404000
1c0097f4:	00000000 	0x00000000
1c0097f8:	01010600 	fadd.d	$f0,$f16,$f1
1c0097fc:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c009808 <gImage_cc>:
	...
1c009854:	c0c08080 	0xc0c08080
1c009858:	80c0c0c0 	0x80c0c0c0
1c00985c:	00000080 	0x00000080
	...
1c009884:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c009888:	01000101 	0x01000101
1c00988c:	ff070301 	0xff070301
1c009890:	0000f0fe 	0x0000f0fe
	...
1c0098b0:	fe000000 	0xfe000000
1c0098b4:	ffffffff 	0xffffffff
1c0098b8:	0f9fffff 	0x0f9fffff
1c0098bc:	ff9f0f0f 	0xff9f0f0f
1c0098c0:	ffffffff 	0xffffffff
1c0098c4:	0000feff 	0x0000feff
	...
1c0098e4:	3f1f0700 	0x3f1f0700
1c0098e8:	ffff7f7f 	0xffff7f7f
1c0098ec:	f8f8ffff 	0xf8f8ffff
1c0098f0:	7fffffff 	0x7fffffff
1c0098f4:	071f3f7f 	0x071f3f7f
	...
1c00996c:	1c006848 	pcaddu12i	$r8,834(0x342)
1c009970:	1c005bcc 	pcaddu12i	$r12,734(0x2de)
1c009974:	1c005c64 	pcaddu12i	$r4,739(0x2e3)
1c009978:	1c005d6c 	pcaddu12i	$r12,747(0x2eb)
1c00997c:	1c005dd0 	pcaddu12i	$r16,750(0x2ee)
1c009980:	1c005e34 	pcaddu12i	$r20,753(0x2f1)
1c009984:	1c005f3c 	pcaddu12i	$r28,761(0x2f9)
1c009988:	1c006044 	pcaddu12i	$r4,770(0x302)
1c00998c:	1c00614c 	pcaddu12i	$r12,778(0x30a)
1c009990:	1c0061b0 	pcaddu12i	$r16,781(0x30d)
1c009994:	1c006214 	pcaddu12i	$r20,784(0x310)
1c009998:	1c006278 	pcaddu12i	$r24,787(0x313)
1c00999c:	1c006348 	pcaddu12i	$r8,794(0x31a)
1c0099a0:	1c0063ac 	pcaddu12i	$r12,797(0x31d)
1c0099a4:	1c00647c 	pcaddu12i	$r28,803(0x323)
1c0099a8:	1c0064e0 	pcaddu12i	$r0,807(0x327)
1c0099ac:	1c006558 	pcaddu12i	$r24,810(0x32a)
1c0099b0:	1c006660 	pcaddu12i	$r0,819(0x333)
1c0099b4:	1c0066d8 	pcaddu12i	$r24,822(0x336)
1c0099b8:	1c0067a8 	pcaddu12i	$r8,829(0x33d)
1c0099bc:	00002e31 	ctz.d	$r17,$r17
1c0099c0:	00002e32 	ctz.d	$r18,$r17
1c0099c4:	00002e33 	ctz.d	$r19,$r17
1c0099c8:	0000002a 	0x0000002a
1c0099cc:	00000020 	0x00000020
1c0099d0:	1c007184 	pcaddu12i	$r4,908(0x38c)
1c0099d4:	1c006924 	pcaddu12i	$r4,841(0x349)
1c0099d8:	1c006988 	pcaddu12i	$r8,844(0x34c)
1c0099dc:	1c006a3c 	pcaddu12i	$r28,849(0x351)
1c0099e0:	1c006b28 	pcaddu12i	$r8,857(0x359)
1c0099e4:	1c006b7c 	pcaddu12i	$r28,859(0x35b)
1c0099e8:	1c006bac 	pcaddu12i	$r12,861(0x35d)
1c0099ec:	1c006bdc 	pcaddu12i	$r28,862(0x35e)
1c0099f0:	1c006c34 	pcaddu12i	$r20,865(0x361)
1c0099f4:	1c006c70 	pcaddu12i	$r16,867(0x363)
1c0099f8:	1c006c8c 	pcaddu12i	$r12,868(0x364)
1c0099fc:	1c006d6c 	pcaddu12i	$r12,875(0x36b)
1c009a00:	1c006e58 	pcaddu12i	$r24,882(0x372)
1c009a04:	1c006e84 	pcaddu12i	$r4,884(0x374)
1c009a08:	1c006eb4 	pcaddu12i	$r20,885(0x375)
1c009a0c:	1c006ee0 	pcaddu12i	$r0,887(0x377)
1c009a10:	1c006f1c 	pcaddu12i	$r28,888(0x378)
1c009a14:	1c006f78 	pcaddu12i	$r24,891(0x37b)
1c009a18:	1c006fd8 	pcaddu12i	$r24,894(0x37e)
1c009a1c:	1c007008 	pcaddu12i	$r8,896(0x380)
1c009a20:	1c0070f4 	pcaddu12i	$r20,903(0x387)
1c009a24:	1c007154 	pcaddu12i	$r20,906(0x38a)
1c009a28:	3c200a0d 	0x3c200a0d
1c009a2c:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c02064c <_sidata+0x16758>
1c009a30:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c009a34:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeba98 <_start-0x14568>
1c009a38:	3a636e75 	0x3a636e75
1c009a3c:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c009a40:	0a0d3e20 	0x0a0d3e20
1c009a44:	00000000 	0x00000000
1c009a48:	2e2e2e0a 	0x2e2e2e0a
1c009a4c:	2e2e2e2e 	0x2e2e2e2e
1c009a50:	2e2e2e2e 	0x2e2e2e2e
1c009a54:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c009a58:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19f9ac <_sidata+0x195ab8>
1c009a5c:	2e2e544e 	0x2e2e544e
1c009a60:	2e2e2e2e 	0x2e2e2e2e
1c009a64:	2e2e2e2e 	0x2e2e2e2e
1c009a68:	2e2e2e2e 	0x2e2e2e2e
1c009a6c:	00000d0a 	0x00000d0a
1c009a70:	2d2d2d0a 	0x2d2d2d0a
1c009a74:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000fe0 <cpu_wait+0xf38>
1c009a78:	746e4968 	0x746e4968
1c009a7c:	79654b3a 	0x79654b3a
1c009a80:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfefbe8 <_start-0x10418>
1c009a84:	3a6c656e 	0x3a6c656e
1c009a88:	78257830 	0x78257830
1c009a8c:	0000000a 	0x0000000a
1c009a90:	2e2e2e0a 	0x2e2e2e0a
1c009a94:	2e2e2e2e 	0x2e2e2e2e
1c009a98:	2e2e2e2e 	0x2e2e2e2e
1c009a9c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39dcc8 <_sidata+0x393dd4>
1c009aa0:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1e0fc <_start-0x2e1f04>
1c009aa4:	2e2e4c49 	0x2e2e4c49
1c009aa8:	2e2e2e2e 	0x2e2e2e2e
1c009aac:	2e2e2e2e 	0x2e2e2e2e
1c009ab0:	2e2e2e2e 	0x2e2e2e2e
1c009ab4:	00000d0a 	0x00000d0a
1c009ab8:	2e2e2e0a 	0x2e2e2e0a
1c009abc:	2e2e2e2e 	0x2e2e2e2e
1c009ac0:	2e2e2e2e 	0x2e2e2e2e
1c009ac4:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38dbf0 <_sidata+0x383cfc>
1c009ac8:	2e2e2e43 	0x2e2e2e43
1c009acc:	2e2e2e2e 	0x2e2e2e2e
1c009ad0:	2e2e2e2e 	0x2e2e2e2e
1c009ad4:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c009ad8:	0000000d 	0x0000000d
1c009adc:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c020d40 <_sidata+0x16e4c>
1c009ae0:	72656870 	0x72656870
1c009ae4:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c009ae8:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c020850 <_sidata+0x1695c>
1c009aec:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00fe0c <_sidata+0x5f18>
1c009af0:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c009af4:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c020f60 <_sidata+0x1706c>
1c009af8:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c009afc:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c009b00:	00000000 	0x00000000
1c009b04:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c020d70 <_sidata+0x16e7c>
1c009b08:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c02045c <_sidata+0x16568>
1c009b0c:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffbb7c <_start-0x4484>
1c009b10:	7261656c 	0x7261656c
1c009b14:	746e6920 	0x746e6920
1c009b18:	75727265 	0x75727265
1c009b1c:	2e2e7470 	0x2e2e7470
1c009b20:	0000000a 	0x0000000a

1c009b24 <Ext_IrqHandle>:
1c009b24:	1c007f70 	pcaddu12i	$r16,1019(0x3fb)
1c009b28:	1c007fbc 	pcaddu12i	$r28,1021(0x3fd)
1c009b2c:	1c008008 	pcaddu12i	$r8,1024(0x400)
1c009b30:	1c008054 	pcaddu12i	$r20,1026(0x402)
1c009b34:	1c0080a0 	pcaddu12i	$r0,1029(0x405)
1c009b38:	1c0080ec 	pcaddu12i	$r12,1031(0x407)
1c009b3c:	1c008138 	pcaddu12i	$r24,1033(0x409)
1c009b40:	1c008184 	pcaddu12i	$r4,1036(0x40c)
1c009b44:	1c0081d0 	pcaddu12i	$r16,1038(0x40e)
1c009b48:	1c00821c 	pcaddu12i	$r28,1040(0x410)
1c009b4c:	1c008268 	pcaddu12i	$r8,1043(0x413)
1c009b50:	1c0082b4 	pcaddu12i	$r20,1045(0x415)
1c009b54:	1c008300 	pcaddu12i	$r0,1048(0x418)
1c009b58:	1c00834c 	pcaddu12i	$r12,1050(0x41a)
1c009b5c:	1c008398 	pcaddu12i	$r24,1052(0x41c)
1c009b60:	1c0083e4 	pcaddu12i	$r4,1055(0x41f)
1c009b64:	1c008430 	pcaddu12i	$r16,1057(0x421)
1c009b68:	1c00847c 	pcaddu12i	$r28,1059(0x423)
1c009b6c:	1c0084c8 	pcaddu12i	$r8,1062(0x426)
1c009b70:	1c008514 	pcaddu12i	$r20,1064(0x428)
1c009b74:	1c008560 	pcaddu12i	$r0,1067(0x42b)
1c009b78:	1c0085ac 	pcaddu12i	$r12,1069(0x42d)
1c009b7c:	1c0085f8 	pcaddu12i	$r24,1071(0x42f)
1c009b80:	1c008644 	pcaddu12i	$r4,1074(0x432)
1c009b84:	1c008690 	pcaddu12i	$r16,1076(0x434)
1c009b88:	1c0086dc 	pcaddu12i	$r28,1078(0x436)
1c009b8c:	1c008728 	pcaddu12i	$r8,1081(0x439)
1c009b90:	1c008774 	pcaddu12i	$r20,1083(0x43b)
1c009b94:	1c0087c0 	pcaddu12i	$r0,1086(0x43e)
1c009b98:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009b9c:	1c008858 	pcaddu12i	$r24,1090(0x442)
1c009ba0:	1c0088a4 	pcaddu12i	$r4,1093(0x445)
1c009ba4:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009ba8:	1c008b40 	pcaddu12i	$r0,1114(0x45a)
1c009bac:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bb0:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bb4:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bb8:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bbc:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bc0:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bc4:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bc8:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bcc:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bd0:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bd4:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bd8:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009bdc:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009be0:	1c008b90 	pcaddu12i	$r16,1116(0x45c)
1c009be4:	1c008b5c 	pcaddu12i	$r28,1114(0x45a)

1c009be8 <__FUNCTION__.1751>:
1c009be8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021060 <_sidata+0x1716c>
1c009bec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c50 <_sidata+0x16d5c>
1c009bf0:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffcc50 <_start-0x33b0>
1c009bf4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d64 <cpu_wait+0xcbc>
1c009bf8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a58 <_sidata+0x6b64>
1c009bfc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c00 <__FUNCTION__.1755>:
1c009c00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021078 <_sidata+0x17184>
1c009c04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c68 <_sidata+0x16d74>
1c009c08:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffcd68 <_start-0x3298>
1c009c0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d7c <cpu_wait+0xcd4>
1c009c10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a70 <_sidata+0x6b7c>
1c009c14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c18 <__FUNCTION__.1759>:
1c009c18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021090 <_sidata+0x1719c>
1c009c1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c80 <_sidata+0x16d8c>
1c009c20:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffce80 <_start-0x3180>
1c009c24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d94 <cpu_wait+0xcec>
1c009c28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a88 <_sidata+0x6b94>
1c009c2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c30 <__FUNCTION__.1763>:
1c009c30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210a8 <_sidata+0x171b4>
1c009c34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c98 <_sidata+0x16da4>
1c009c38:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffcf98 <_start-0x3068>
1c009c3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000dac <cpu_wait+0xd04>
1c009c40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010aa0 <_sidata+0x6bac>
1c009c44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c48 <__FUNCTION__.1767>:
1c009c48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210c0 <_sidata+0x171cc>
1c009c4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020cb0 <_sidata+0x16dbc>
1c009c50:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffd0b0 <_start-0x2f50>
1c009c54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000dc4 <cpu_wait+0xd1c>
1c009c58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ab8 <_sidata+0x6bc4>
1c009c5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c60 <__FUNCTION__.1771>:
1c009c60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210d8 <_sidata+0x171e4>
1c009c64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020cc8 <_sidata+0x16dd4>
1c009c68:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffd1c8 <_start-0x2e38>
1c009c6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ddc <cpu_wait+0xd34>
1c009c70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ad0 <_sidata+0x6bdc>
1c009c74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c78 <__FUNCTION__.1775>:
1c009c78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210f0 <_sidata+0x171fc>
1c009c7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ce0 <_sidata+0x16dec>
1c009c80:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffd2e0 <_start-0x2d20>
1c009c84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000df4 <cpu_wait+0xd4c>
1c009c88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ae8 <_sidata+0x6bf4>
1c009c8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c90 <__FUNCTION__.1779>:
1c009c90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021108 <_sidata+0x17214>
1c009c94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020cf8 <_sidata+0x16e04>
1c009c98:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffd3f8 <_start-0x2c08>
1c009c9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e0c <cpu_wait+0xd64>
1c009ca0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b00 <_sidata+0x6c0c>
1c009ca4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ca8 <__FUNCTION__.1783>:
1c009ca8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021120 <_sidata+0x1722c>
1c009cac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d10 <_sidata+0x16e1c>
1c009cb0:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffcd10 <_start-0x32f0>
1c009cb4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e24 <cpu_wait+0xd7c>
1c009cb8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b18 <_sidata+0x6c24>
1c009cbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cc0 <__FUNCTION__.1787>:
1c009cc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021138 <_sidata+0x17244>
1c009cc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d28 <_sidata+0x16e34>
1c009cc8:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffce28 <_start-0x31d8>
1c009ccc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e3c <cpu_wait+0xd94>
1c009cd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b30 <_sidata+0x6c3c>
1c009cd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cd8 <__FUNCTION__.1791>:
1c009cd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021150 <_sidata+0x1725c>
1c009cdc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d40 <_sidata+0x16e4c>
1c009ce0:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffcf40 <_start-0x30c0>
1c009ce4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e54 <cpu_wait+0xdac>
1c009ce8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b48 <_sidata+0x6c54>
1c009cec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cf0 <__FUNCTION__.1795>:
1c009cf0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021168 <_sidata+0x17274>
1c009cf4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d58 <_sidata+0x16e64>
1c009cf8:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffd058 <_start-0x2fa8>
1c009cfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e6c <cpu_wait+0xdc4>
1c009d00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b60 <_sidata+0x6c6c>
1c009d04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d08 <__FUNCTION__.1799>:
1c009d08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021180 <_sidata+0x1728c>
1c009d0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d70 <_sidata+0x16e7c>
1c009d10:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffd170 <_start-0x2e90>
1c009d14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e84 <cpu_wait+0xddc>
1c009d18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b78 <_sidata+0x6c84>
1c009d1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d20 <__FUNCTION__.1803>:
1c009d20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021198 <_sidata+0x172a4>
1c009d24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d88 <_sidata+0x16e94>
1c009d28:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffd288 <_start-0x2d78>
1c009d2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e9c <cpu_wait+0xdf4>
1c009d30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b90 <_sidata+0x6c9c>
1c009d34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d38 <__FUNCTION__.1807>:
1c009d38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211b0 <_sidata+0x172bc>
1c009d3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020da0 <_sidata+0x16eac>
1c009d40:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffd3a0 <_start-0x2c60>
1c009d44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000eb4 <cpu_wait+0xe0c>
1c009d48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ba8 <_sidata+0x6cb4>
1c009d4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d50 <__FUNCTION__.1811>:
1c009d50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211c8 <_sidata+0x172d4>
1c009d54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020db8 <_sidata+0x16ec4>
1c009d58:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffd4b8 <_start-0x2b48>
1c009d5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ecc <cpu_wait+0xe24>
1c009d60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bc0 <_sidata+0x6ccc>
1c009d64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d68 <__FUNCTION__.1815>:
1c009d68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211e0 <_sidata+0x172ec>
1c009d6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020dd0 <_sidata+0x16edc>
1c009d70:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffcdd0 <_start-0x3230>
1c009d74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ee4 <cpu_wait+0xe3c>
1c009d78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bd8 <_sidata+0x6ce4>
1c009d7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d80 <__FUNCTION__.1819>:
1c009d80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211f8 <_sidata+0x17304>
1c009d84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020de8 <_sidata+0x16ef4>
1c009d88:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffcee8 <_start-0x3118>
1c009d8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000efc <cpu_wait+0xe54>
1c009d90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bf0 <_sidata+0x6cfc>
1c009d94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d98 <__FUNCTION__.1823>:
1c009d98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021210 <_sidata+0x1731c>
1c009d9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e00 <_sidata+0x16f0c>
1c009da0:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffd000 <_start-0x3000>
1c009da4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f14 <cpu_wait+0xe6c>
1c009da8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c08 <_sidata+0x6d14>
1c009dac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009db0 <__FUNCTION__.1827>:
1c009db0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021228 <_sidata+0x17334>
1c009db4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e18 <_sidata+0x16f24>
1c009db8:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffd118 <_start-0x2ee8>
1c009dbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f2c <cpu_wait+0xe84>
1c009dc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c20 <_sidata+0x6d2c>
1c009dc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009dc8 <__FUNCTION__.1831>:
1c009dc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021240 <_sidata+0x1734c>
1c009dcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e30 <_sidata+0x16f3c>
1c009dd0:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffd230 <_start-0x2dd0>
1c009dd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f44 <cpu_wait+0xe9c>
1c009dd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c38 <_sidata+0x6d44>
1c009ddc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009de0 <__FUNCTION__.1835>:
1c009de0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021258 <_sidata+0x17364>
1c009de4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e48 <_sidata+0x16f54>
1c009de8:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffd348 <_start-0x2cb8>
1c009dec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f5c <cpu_wait+0xeb4>
1c009df0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c50 <_sidata+0x6d5c>
1c009df4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009df8 <__FUNCTION__.1839>:
1c009df8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021270 <_sidata+0x1737c>
1c009dfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e60 <_sidata+0x16f6c>
1c009e00:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffd460 <_start-0x2ba0>
1c009e04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f74 <cpu_wait+0xecc>
1c009e08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c68 <_sidata+0x6d74>
1c009e0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e10 <__FUNCTION__.1843>:
1c009e10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021288 <_sidata+0x17394>
1c009e14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e78 <_sidata+0x16f84>
1c009e18:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffd578 <_start-0x2a88>
1c009e1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f8c <cpu_wait+0xee4>
1c009e20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c80 <_sidata+0x6d8c>
1c009e24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e28 <__FUNCTION__.1847>:
1c009e28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212a0 <_sidata+0x173ac>
1c009e2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e90 <_sidata+0x16f9c>
1c009e30:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffce94 <_start-0x316c>
1c009e34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fa4 <cpu_wait+0xefc>
1c009e38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c98 <_sidata+0x6da4>
1c009e3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e40 <__FUNCTION__.1851>:
1c009e40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212b8 <_sidata+0x173c4>
1c009e44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ea8 <_sidata+0x16fb4>
1c009e48:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffcfac <_start-0x3054>
1c009e4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fbc <cpu_wait+0xf14>
1c009e50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010cb0 <_sidata+0x6dbc>
1c009e54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e58 <__FUNCTION__.1855>:
1c009e58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212d0 <_sidata+0x173dc>
1c009e5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ec0 <_sidata+0x16fcc>
1c009e60:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffd0c4 <_start-0x2f3c>
1c009e64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fd4 <cpu_wait+0xf2c>
1c009e68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010cc8 <_sidata+0x6dd4>
1c009e6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e70 <__FUNCTION__.1859>:
1c009e70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212e8 <_sidata+0x173f4>
1c009e74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ed8 <_sidata+0x16fe4>
1c009e78:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffd1dc <_start-0x2e24>
1c009e7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fec <cpu_wait+0xf44>
1c009e80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ce0 <_sidata+0x6dec>
1c009e84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e88 <__FUNCTION__.1863>:
1c009e88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021300 <_sidata+0x1740c>
1c009e8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ef0 <_sidata+0x16ffc>
1c009e90:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffd2f4 <_start-0x2d0c>
1c009e94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001004 <DEFAULT_INT_HANDLER+0x4>
1c009e98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010cf8 <_sidata+0x6e04>
1c009e9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ea0 <__FUNCTION__.1867>:
1c009ea0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021318 <_sidata+0x17424>
1c009ea4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020f08 <_sidata+0x17014>
1c009ea8:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffd40c <_start-0x2bf4>
1c009eac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00101c <DEFAULT_INT_HANDLER+0x1c>
1c009eb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010d10 <_sidata+0x6e1c>
1c009eb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009eb8 <__FUNCTION__.1871>:
1c009eb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021330 <_sidata+0x1743c>
1c009ebc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020f20 <_sidata+0x1702c>
1c009ec0:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffd524 <_start-0x2adc>
1c009ec4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001034 <DEFAULT_INT_HANDLER+0x34>
1c009ec8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010d28 <_sidata+0x6e34>
1c009ecc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ed0 <__FUNCTION__.1875>:
1c009ed0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021348 <_sidata+0x17454>
1c009ed4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020f38 <_sidata+0x17044>
1c009ed8:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffd63c <_start-0x29c4>
1c009edc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00104c <DEFAULT_INT_HANDLER+0x4c>
1c009ee0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010d40 <_sidata+0x6e4c>
1c009ee4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ee8 <__FUNCTION__.1884>:
1c009ee8:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c001360 <ls1x_puts+0x1c>
1c009eec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010d4c <_sidata+0x6e58>
1c009ef0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	8000032c 	0x8000032c
80001008:	8000034c 	0x8000034c
8000100c:	8000000c 	0x8000000c
80001010:	80000344 	0x80000344
80001014:	80000368 	0x80000368
80001018:	80000350 	0x80000350

8000101c <AS608Addr>:
8000101c:	ffffffff 	0xffffffff

80001020 <Get_Device_Code>:
80001020:	13070001 	addu16i.d	$r1,$r0,-15936(0xc1c0)
80001024:	00000000 	0x00000000
80001028:	00001b00 	cto.w	$r0,$r24

8000102c <SystemCoreClock>:
8000102c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001030 <F16x16>:
80001030:	32539410 	xvldrepl.h	$xr16,$r0,-1590(0x9ca)
80001034:	1052321e 	addu16i.d	$r30,$r16,5260(0x148c)
80001038:	42427e00 	beqz	$r16,148092(0x2427c) # 800252b4 <_edata+0x23818>
8000103c:	00007e42 	0x00007e42
80001040:	ff000000 	0xff000000
80001044:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025598c <_edata+0x253ef0>
80001048:	ff494949 	0xff494949
8000104c:	00000000 	0x00000000
80001050:	494acc08 	bceqz	$fcc0,2181836(0x214acc) # 80215b1c <_edata+0x214080>
80001054:	18cc4a48 	pcaddi	$r8,418386(0x66252)
80001058:	88887f00 	0x88887f00
8000105c:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001060:	1212ff00 	addu16i.d	$r0,$r24,-31553(0x84bf)
80001064:	007f9252 	bstrpick.w	$r18,$r18,0x1f,0x4
80001068:	88887e00 	0x88887e00
8000106c:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001070:	0601f800 	cacop	0x0,$r0,126(0x7e)
80001074:	02020000 	slti	$r0,$r0,128(0x80)
80001078:	02020202 	slti	$r2,$r16,128(0x80)
8000107c:	0000fe02 	0x0000fe02
80001080:	0000ff00 	0x0000ff00
80001084:	00000000 	0x00000000
80001088:	40000000 	beqz	$r0,0 # 80001088 <F16x16+0x58>
8000108c:	00007f80 	0x00007f80
80001090:	14244440 	lu12i.w	$r0,74274(0x12222)
80001094:	0024147f 	crc.w.b.w	$r31,$r3,$r5
80001098:	147f1424 	lu12i.w	$r4,260257(0x3f8a1)
8000109c:	00404424 	0x00404424
800010a0:	29498808 	st.h	$r8,$r0,610(0x262)
800010a4:	79894909 	0x79894909
800010a8:	29090909 	st.b	$r9,$r8,578(0x242)
800010ac:	00088849 	bytepick.w	$r9,$r2,$r2,0x1
800010b0:	32220000 	xvldrepl.w	$xr0,$r0,512(0x200)
800010b4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb358 <_sidata+0x63fe1464>
800010b8:	81091121 	0x81091121
800010bc:	00000001 	0x00000001
800010c0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010c4:	7e82420b 	0x7e82420b
800010c8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010cc:	00004623 	revh.d	$r3,$r17
800010d0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbd00 <_sidata+0x63ff1e0c>
800010d4:	c8880030 	0xc8880030
800010d8:	888e99a8 	0x888e99a8
800010dc:	0088c8a8 	bstrins.d	$r8,$r5,0x8,0x32
800010e0:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
800010e4:	30408012 	vldrepl.h	$vr18,$r0,64(0x40)
800010e8:	3f00000f 	0x3f00000f
800010ec:	00714040 	bstrins.w	$r0,$r2,0x11,0x10
800010f0:	40404040 	beqz	$r2,16448(0x4040) # 80005130 <_edata+0x3694>
800010f4:	44ff4040 	bnez	$r2,65344(0xff40) # 80011034 <_edata+0xf598>
800010f8:	44444444 	bnez	$r2,1066052(0x104444) # 8010553c <_edata+0x103aa0>
800010fc:	00404044 	0x00404044
80001100:	00000000 	0x00000000
80001104:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
80001108:	08040200 	0x08040200
8000110c:	00000010 	0x00000010
80001110:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001114:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001118:	d20e9222 	0xd20e9222
8000111c:	00001e22 	ctz.w	$r2,$r17
80001120:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001124:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001128:	ff09090a 	0xff09090a
8000112c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001130:	e72c1020 	0xe72c1020
80001134:	e2002424 	0xe2002424
80001138:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000113c:	0000e628 	0x0000e628
80001140:	7f010101 	0x7f010101
80001144:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
80001148:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
8000114c:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
80001150:	04448c10 	csrrd	$r16,0x1123
80001154:	a69504e4 	0xa69504e4
80001158:	84142444 	0x84142444
8000115c:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001160:	417a0202 	beqz	$r16,621056(0x97a00) # 80098b60 <_edata+0x970c4>
80001164:	7e424341 	0x7e424341
80001168:	43424242 	beqz	$r18,737856(0xb4240) # 800b53a8 <_edata+0xb390c>
8000116c:	000000f8 	0x000000f8
80001170:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f5f4 <_edata+0xdb58>
80001174:	0200c444 	slti	$r4,$r2,49(0x31)
80001178:	828282f2 	0x828282f2
8000117c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001180:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001184:	08003f10 	0x08003f10
80001188:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201990 <_edata+0x1ffef4>
8000118c:	003f4088 	0x003f4088
80001190:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001194:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001198:	d20e9222 	0xd20e9222
8000119c:	00001e22 	ctz.w	$r2,$r17
800011a0:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
800011a4:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
800011a8:	ff09090a 	0xff09090a
800011ac:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
800011b0:	e72c1020 	0xe72c1020
800011b4:	e2002424 	0xe2002424
800011b8:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
800011bc:	0000e628 	0x0000e628
800011c0:	7f010101 	0x7f010101
800011c4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800011c8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800011cc:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800011d0:	cc424040 	0xcc424040
800011d4:	9ea04000 	0x9ea04000
800011d8:	9e828282 	0x9e828282
800011dc:	002020a0 	div.w	$r0,$r5,$r8
800011e0:	3f000000 	0x3f000000
800011e4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3526c <_sidata+0x63c2b378>
800011e8:	4628102c 	bnez	$r1,3287056(0x322810) # 803239f8 <_edata+0x321f5c>
800011ec:	00808041 	bstrins.d	$r1,$r2,0x0,0x20
800011f0:	d5151700 	0xd5151700
800011f4:	7d555755 	0x7d555755
800011f8:	d5555755 	0xd5555755
800011fc:	00001715 	clz.w	$r21,$r24
80001200:	7f404040 	0x7f404040
80001204:	55555555 	bl	89478484(0x5555554) # 85556758 <_edata+0x5554cbc>
80001208:	7f555555 	0x7f555555
8000120c:	00404040 	0x00404040
80001210:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001214:	54544400 	bl	21572(0x5444) # 80006658 <_edata+0x4bbc>
80001218:	54547f54 	bl	-45067140(0xd50547c) # 7d506694 <_sidata+0x614fc7a0>
8000121c:	00404454 	0x00404454
80001220:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001224:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001228:	95551515 	0x95551515
8000122c:	0000007f 	0x0000007f
80001230:	cc424040 	0xcc424040
80001234:	c84e5000 	0xc84e5000
80001238:	48c87f48 	0x48c87f48
8000123c:	00004048 	revh.2w	$r8,$r2
80001240:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001244:	434c5020 	beqz	$r1,216144(0x34c50) # 80035e94 <_edata+0x343f8>
80001248:	504f4040 	b	16797504(0x1004f40) # 81006188 <_edata+0x10046ec>
8000124c:	00405c50 	0x00405c50
80001250:	10ff1010 	addu16i.d	$r16,$r0,16324(0x3fc4)
80001254:	4a868200 	0x4a868200
80001258:	4a52a252 	0x4a52a252
8000125c:	00808086 	bstrins.d	$r6,$r4,0x0,0x20
80001260:	017f8242 	0x017f8242
80001264:	12121000 	addu16i.d	$r0,$r0,-31612(0x8484)
80001268:	1212ff12 	addu16i.d	$r18,$r24,-31553(0x84bf)
8000126c:	00001012 	clo.w	$r18,$r0
80001270:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001274:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001278:	d20e9222 	0xd20e9222
8000127c:	00001e22 	ctz.w	$r2,$r17
80001280:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001284:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001288:	ff09090a 	0xff09090a
8000128c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001290:	e72c1020 	0xe72c1020
80001294:	e2002424 	0xe2002424
80001298:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000129c:	0000e628 	0x0000e628
800012a0:	7f010101 	0x7f010101
800012a4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800012a8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800012ac:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800012b0:	08080808 	0x08080808
800012b4:	8e89f808 	0x8e89f808
800012b8:	88888888 	0x88888888
800012bc:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800012c0:	20408000 	ll.w	$r0,$r0,16512(0x4080)
800012c4:	00000718 	0x00000718
800012c8:	3f408040 	0x3f408040
800012cc:	00000000 	0x00000000
800012d0:	90901010 	0x90901010
800012d4:	10909090 	addu16i.d	$r16,$r4,9252(0x2424)
800012d8:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
800012dc:	00101611 	add.w	$r17,$r16,$r5
800012e0:	20602000 	ll.w	$r0,$r0,24608(0x6020)
800012e4:	1010103f 	addu16i.d	$r31,$r1,1028(0x404)
800012e8:	100c0300 	addu16i.d	$r0,$r24,768(0x300)
800012ec:	00f84020 	bstrpick.d	$r0,$r1,0x38,0x10
800012f0:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
800012f4:	54544400 	bl	21572(0x5444) # 80006738 <_edata+0x4c9c>
800012f8:	54547f54 	bl	-45067140(0xd50547c) # 7d506774 <_sidata+0x614fc880>
800012fc:	00404454 	0x00404454
80001300:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001304:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001308:	95551515 	0x95551515
8000130c:	0000007f 	0x0000007f
80001310:	c81f6888 	0xc81f6888
80001314:	54c81008 	bl	2148368(0x20c810) # 8020db24 <_edata+0x20c088>
80001318:	9412d152 	0x9412d152
8000131c:	0010d008 	add.d	$r8,$r0,$r20
80001320:	ff091909 	0xff091909
80001324:	12ff0005 	addu16i.d	$r5,$r0,-16448(0xbfc0)
80001328:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1424 <_sidata+0x63fe7530>
8000132c:	00007f80 	0x00007f80
80001330:	00000000 	0x00000000
80001334:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
80001338:	000000e0 	0x000000e0
8000133c:	00000000 	0x00000000
80001340:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001344:	0000030c 	0x0000030c
80001348:	300c0300 	0x300c0300
8000134c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001350:	04448c10 	csrrd	$r16,0x1123
80001354:	a69504e4 	0xa69504e4
80001358:	84142444 	0x84142444
8000135c:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001360:	417a0202 	beqz	$r16,621056(0x97a00) # 80098d60 <_edata+0x972c4>
80001364:	7e424341 	0x7e424341
80001368:	43424242 	beqz	$r18,737856(0xb4240) # 800b55a8 <_edata+0xb3b0c>
8000136c:	000000f8 	0x000000f8
80001370:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f7f4 <_edata+0xdd58>
80001374:	0200c444 	slti	$r4,$r2,49(0x31)
80001378:	828282f2 	0x828282f2
8000137c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001380:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001384:	08003f10 	0x08003f10
80001388:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201b90 <_edata+0x2000f4>
8000138c:	003f4088 	0x003f4088
80001390:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001394:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001398:	d20e9222 	0xd20e9222
8000139c:	00001e22 	ctz.w	$r2,$r17
800013a0:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
800013a4:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
800013a8:	ff09090a 	0xff09090a
800013ac:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
800013b0:	e72c1020 	0xe72c1020
800013b4:	e2002424 	0xe2002424
800013b8:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
800013bc:	0000e628 	0x0000e628
800013c0:	7f010101 	0x7f010101
800013c4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800013c8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800013cc:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800013d0:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800013d4:	ff101010 	0xff101010
800013d8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800013dc:	00000010 	0x00000010
800013e0:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800013e4:	01030d11 	fsub.d	$f17,$f8,$f3
800013e8:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800013ec:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800013f0:	fa02fe00 	0xfa02fe00
800013f4:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800013f8:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800013fc:	001010f0 	add.w	$r16,$r7,$r4
80001400:	0f304780 	0x0f304780
80001404:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09468 <_sidata+0x63bff574>
80001408:	16081621 	lu32i.d	$r1,16561(0x40b1)
8000140c:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
80001410:	88f80000 	0x88f80000
80001414:	08888888 	0x08888888
80001418:	0908ff08 	0x0908ff08
8000141c:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001420:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001424:	801f2010 	0x801f2010
80001428:	18162140 	pcaddi	$r0,45322(0xb10a)
8000142c:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001430:	f8080808 	0xf8080808
80001434:	10080808 	addu16i.d	$r8,$r0,514(0x202)
80001438:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
8000143c:	0000f010 	0x0000f010
80001440:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001444:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
80001448:	8040010e 	0x8040010e
8000144c:	00003f40 	revb.d	$r0,$r26
80001450:	07f86080 	0x07f86080
80001454:	2424e404 	ldptr.w	$r4,$r0,9444(0x24e4)
80001458:	2424ff24 	ldptr.w	$r4,$r25,9468(0x24fc)
8000145c:	0004e424 	alsl.w	$r4,$r1,$r25,0x2
80001460:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
80001464:	29458180 	st.h	$r0,$r12,352(0x160)
80001468:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55594 <_sidata+0x63c4b6a0>
8000146c:	00808181 	bstrins.d	$r1,$r12,0x0,0x20
80001470:	22fe0000 	ll.d	$r0,$r0,-512(0xfe00)
80001474:	fe222222 	0xfe222222
80001478:	22222222 	ll.d	$r2,$r17,8736(0x2220)
8000147c:	000000fe 	0x000000fe
80001480:	021f6080 	slti	$r0,$r4,2008(0x7d8)
80001484:	7f020202 	0x7f020202
80001488:	82420202 	0x82420202
8000148c:	0000007f 	0x0000007f
80001490:	a2236488 	0xa2236488
80001494:	baa2aaa6 	0xbaa2aaa6
80001498:	26a2a3a4 	ldptr.d	$r4,$r29,-23904(0xa2a0)
8000149c:	0062a22a 	bstrpick.w	$r10,$r17,0x2,0x8
800014a0:	ff000000 	0xff000000
800014a4:	4a4a4a4a 	0x4a4a4a4a
800014a8:	f84b4a4a 	0xf84b4a4a
800014ac:	00000000 	0x00000000
800014b0:	fc848404 	0xfc848404
800014b4:	fe008484 	0xfe008484
800014b8:	92fe9292 	0x92fe9292
800014bc:	0000fe92 	0x0000fe92
800014c0:	1f206020 	pcaddu18i	$r0,-457983(0x90301)
800014c4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054d4 <_sidata+0x63bfb5e0>
800014c8:	447f4444 	bnez	$r2,1081156(0x107f44) # 8010940c <_edata+0x107970>
800014cc:	00404444 	0x00404444
800014d0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4d0 <_sidata+0x63fe35dc>
800014d4:	52525252 	b	-112569776(0x94a5250) # 794a6724 <_sidata+0x5d49c830>
800014d8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6728 <_sidata+0x63fdc834>
800014dc:	000000c0 	0x000000c0
800014e0:	408f8080 	beqz	$r4,36736(0x8f80) # 8000a460 <_edata+0x89c4>
800014e4:	0e102040 	0x0e102040
800014e8:	20201010 	ll.w	$r16,$r0,8208(0x2010)
800014ec:	0000804f 	0x0000804f
800014f0:	cc424040 	0xcc424040
800014f4:	49ff0000 	bceqz	$fcc0,130816(0x1ff00) # 800213f4 <_edata+0x1f958>
800014f8:	4949c949 	bcnez	$fcc2,2443720(0x2549c8) # 80255ec0 <_edata+0x254424>
800014fc:	0000807f 	0x0000807f
80001500:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001504:	485f4020 	bceqz	$fcc1,24384(0x5f40) # 80007444 <_edata+0x59a8>
80001508:	42414044 	beqz	$r2,1196352(0x124140) # 80125648 <_edata+0x123bac>
8000150c:	00405845 	0x00405845
80001510:	407c0000 	beqz	$r0,31744(0x7c00) # 80009110 <_edata+0x7674>
80001514:	ff404040 	0xff404040
80001518:	40404040 	beqz	$r2,16448(0x4040) # 80005558 <_edata+0x3abc>
8000151c:	000000fc 	0x000000fc
80001520:	40407c00 	beqz	$r0,16508(0x407c) # 8000559c <_edata+0x3b00>
80001524:	7f404040 	0x7f404040
80001528:	40404040 	beqz	$r2,16448(0x4040) # 80005568 <_edata+0x3acc>
8000152c:	0000fc40 	0x0000fc40
80001530:	cc424040 	0xcc424040
80001534:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001538:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
8000153c:	000062a3 	rdtimel.w	$r3,$r21
80001540:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001544:	50475820 	b	8406872(0x804758) # 80805c9c <_edata+0x804200>
80001548:	45424548 	bnez	$r10,2179652(0x214244) # 8021578c <_edata+0x213cf0>
8000154c:	00405048 	0x00405048
80001550:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001554:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
80001558:	0202f212 	slti	$r18,$r16,188(0xbc)
8000155c:	000000fe 	0x000000fe
80001560:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001564:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
80001568:	20202724 	ll.w	$r4,$r25,8228(0x2024)
8000156c:	0000007f 	0x0000007f
80001570:	84442404 	0x84442404
80001574:	30409c64 	vldrepl.h	$vr4,$r3,78(0x4e)
80001578:	0808c80f 	0x0808c80f
8000157c:	00001828 	cto.w	$r8,$r1
80001580:	01060810 	0x01060810
80001584:	18204c82 	pcaddi	$r2,66148(0x10264)
80001588:	18060106 	pcaddi	$r6,12296(0x3008)
8000158c:	00804020 	bstrins.d	$r0,$r1,0x0,0x10
80001590:	cc424040 	0xcc424040
80001594:	04fc0000 	csrrd	$r0,0x3f00
80001598:	04fc0002 	csrrd	$r2,0x3f00
8000159c:	0000fc04 	0x0000fc04
800015a0:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800015a4:	444f4020 	bnez	$r1,20288(0x4f40) # 800064e4 <_edata+0x4a48>
800015a8:	427f4042 	beqz	$r2,687936(0xa7f40) # 800a94e8 <_edata+0xa7a4c>
800015ac:	00404344 	0x00404344
800015b0:	44424040 	bnez	$r2,16960(0x4240) # 800057f0 <_edata+0x3d54>
800015b4:	7f40c058 	0x7f40c058
800015b8:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 80006678 <_edata+0x4bdc>
800015bc:	00404046 	0x00404046
800015c0:	20408080 	ll.w	$r0,$r4,16512(0x4080)
800015c4:	00000718 	0x00000718
800015c8:	40403f00 	beqz	$r24,16444(0x403c) # 80005604 <_edata+0x3b68>
800015cc:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
800015d0:	0000f800 	0x0000f800
800015d4:	182040ff 	pcaddi	$r31,66055(0x10207)
800015d8:	0868180f 	fmsub.d	$f15,$f0,$f6,$f16
800015dc:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800015e0:	00001f00 	ctz.w	$r0,$r24
800015e4:	7f0000ff 	0x7f0000ff
800015e8:	213f2121 	sc.w	$r1,$r9,16160(0x3f20)
800015ec:	00007f21 	0x00007f21
800015f0:	cc424040 	0xcc424040
800015f4:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
800015f8:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
800015fc:	000062a3 	rdtimel.w	$r3,$r21
80001600:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001604:	50475820 	b	8406872(0x804758) # 80805d5c <_edata+0x8042c0>
80001608:	45424548 	bnez	$r10,2179652(0x214244) # 8021584c <_edata+0x213db0>
8000160c:	00405048 	0x00405048
80001610:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001614:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
80001618:	0202f212 	slti	$r18,$r16,188(0xbc)
8000161c:	000000fe 	0x000000fe
80001620:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001624:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
80001628:	20202724 	ll.w	$r4,$r25,8228(0x2024)
8000162c:	0000007f 	0x0000007f
80001630:	8c026010 	0x8c026010
80001634:	52921000 	b	168464(0x29210) # 8002a844 <_edata+0x28da8>
80001638:	52321e32 	b	-120966628(0x8ca321c) # 78ca4854 <_sidata+0x5cc9a960>
8000163c:	00101292 	add.w	$r18,$r20,$r4
80001640:	017e0404 	0x017e0404
80001644:	40182100 	beqz	$r8,6176(0x1820) # 80002e64 <_edata+0x13c8>
80001648:	30087f80 	0x30087f80
8000164c:	00310904 	0x00310904
80001650:	ff101010 	0xff101010
80001654:	00f01010 	bstrpick.d	$r16,$r0,0x30,0x4
80001658:	0808f800 	0x0808f800
8000165c:	0000f808 	0x0000f808
80001660:	0f304080 	0x0f304080
80001664:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
80001668:	20207f00 	ll.w	$r0,$r24,8316(0x207c)
8000166c:	00007f20 	0x00007f20
80001670:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001674:	3d64a424 	0x3d64a424
80001678:	242424a6 	ldptr.w	$r6,$r5,9252(0x2424)
8000167c:	00042424 	alsl.w	$r4,$r1,$r9,0x1
80001680:	100f3040 	addu16i.d	$r0,$r2,972(0x3cc)
80001684:	12121213 	addu16i.d	$r19,$r16,-31612(0x8484)
80001688:	121212ff 	addu16i.d	$r31,$r23,-31612(0x8484)
8000168c:	00101012 	add.w	$r18,$r0,$r4
80001690:	8c026010 	0x8c026010
80001694:	54544400 	bl	21572(0x5444) # 80006ad8 <_edata+0x503c>
80001698:	54547f54 	bl	-45067140(0xd50547c) # 7d506b14 <_sidata+0x614fcc20>
8000169c:	00404454 	0x00404454
800016a0:	017e0404 	0x017e0404
800016a4:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
800016a8:	95551515 	0x95551515
800016ac:	0000007f 	0x0000007f
800016b0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe39ac <_sidata+0x63fd9ab8>
800016b4:	28102086 	ld.b	$r6,$r4,1032(0x408)
800016b8:	2824e324 	ld.b	$r4,$r25,-1736(0x938)
800016bc:	00202010 	div.w	$r16,$r0,$r8
800016c0:	0804ff00 	0x0804ff00
800016c4:	410d1127 	beqz	$r9,1903888(0x1d0d10) # 801d23d4 <_edata+0x1d0938>
800016c8:	05017f81 	0x05017f81
800016cc:	00003109 	revb.2h	$r9,$r8
800016d0:	82e20000 	0x82e20000
800016d4:	82828282 	0x82828282
800016d8:	fe828282 	0xfe828282
800016dc:	00000000 	0x00000000
800016e0:	403f0000 	beqz	$r0,16128(0x3f00) # 800055e0 <_edata+0x3b44>
800016e4:	40404040 	beqz	$r2,16448(0x4040) # 80005724 <_edata+0x3c88>
800016e8:	40404040 	beqz	$r2,16448(0x4040) # 80005728 <_edata+0x3c8c>
800016ec:	00007840 	0x00007840
800016f0:	7f000000 	0x7f000000
800016f4:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025603c <_edata+0x2545a0>
800016f8:	7f494949 	0x7f494949
800016fc:	00000000 	0x00000000
80001700:	1d214181 	pcaddu12i	$r1,-456180(0x90a0c)
80001704:	ff814121 	0xff814121
80001708:	89898989 	0x89898989
8000170c:	00818189 	bstrins.d	$r9,$r12,0x1,0x20
80001710:	82820200 	0x82820200
80001714:	fa122242 	0xfa122242
80001718:	42222206 	beqz	$r16,1712672(0x1a2220) # 801a3938 <_edata+0x1a1e9c>
8000171c:	00008242 	0x00008242
80001720:	fc000101 	0xfc000101
80001724:	45444444 	bnez	$r2,1131588(0x114444) # 80115b68 <_edata+0x1140cc>
80001728:	fc444444 	0xfc444444
8000172c:	00010000 	asrtle.d	$r0,$r0
80001730:	ff101010 	0xff101010
80001734:	3f009010 	0x3f009010
80001738:	44444848 	bnez	$r2,2114632(0x204448) # 80205b80 <_edata+0x2040e4>
8000173c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001740:	7f824404 	0x7f824404
80001744:	ff000001 	0xff000001
80001748:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256090 <_edata+0x2545f4>
8000174c:	0000ff49 	0x0000ff49
80001750:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc380 <_sidata+0x63ff248c>
80001754:	f8080810 	0xf8080810
80001758:	f8080e09 	0xf8080e09
8000175c:	00000808 	0x00000808
80001760:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001764:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001768:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000176c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001770:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001774:	54544400 	bl	21572(0x5444) # 80006bb8 <_edata+0x511c>
80001778:	54547f54 	bl	-45067140(0xd50547c) # 7d506bf4 <_sidata+0x614fcd00>
8000177c:	00404454 	0x00404454
80001780:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001784:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001788:	95551515 	0x95551515
8000178c:	0000007f 	0x0000007f
80001790:	ff101010 	0xff101010
80001794:	88982090 	0x88982090
80001798:	888ee988 	0x888ee988
8000179c:	0098a888 	bstrins.d	$r8,$r4,0x18,0x2a
800017a0:	7f814202 	0x7f814202
800017a4:	84800000 	0x84800000
800017a8:	2810284b 	ld.b	$r11,$r2,1034(0x40a)
800017ac:	00008047 	0x00008047
800017b0:	24240000 	ldptr.w	$r0,$r0,9216(0x2400)
800017b4:	fc242424 	0xfc242424
800017b8:	23222222 	sc.d	$r2,$r17,8736(0x2220)
800017bc:	00000022 	0x00000022
800017c0:	02020202 	slti	$r2,$r16,128(0x80)
800017c4:	7f824202 	0x7f824202
800017c8:	02020202 	slti	$r2,$r16,128(0x80)
800017cc:	00020202 	0x00020202
800017d0:	ff101010 	0xff101010
800017d4:	3f009010 	0x3f009010
800017d8:	44444848 	bnez	$r2,2114632(0x204448) # 80205c20 <_edata+0x204184>
800017dc:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
800017e0:	7f824404 	0x7f824404
800017e4:	ff000001 	0xff000001
800017e8:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256130 <_edata+0x254694>
800017ec:	0000ff49 	0x0000ff49
800017f0:	92828080 	0x92828080
800017f4:	92929292 	0x92929292
800017f8:	fe929292 	0xfe929292
800017fc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
80001800:	24224040 	ldptr.w	$r0,$r2,8768(0x2240)
80001804:	7f804810 	0x7f804810
80001808:	24180804 	ldptr.w	$r4,$r0,6152(0x1808)
8000180c:	00404022 	0x00404022
80001810:	00000000 	0x00000000
80001814:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
80001818:	000000e0 	0x000000e0
8000181c:	00000000 	0x00000000
80001820:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001824:	0000030c 	0x0000030c
80001828:	300c0300 	0x300c0300
8000182c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001830:	ff101010 	0xff101010
80001834:	3f009010 	0x3f009010
80001838:	44444848 	bnez	$r2,2114632(0x204448) # 80205c80 <_edata+0x2041e4>
8000183c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001840:	7f824404 	0x7f824404
80001844:	ff000001 	0xff000001
80001848:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256190 <_edata+0x2546f4>
8000184c:	0000ff49 	0x0000ff49
80001850:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc480 <_sidata+0x63ff258c>
80001854:	f8080810 	0xf8080810
80001858:	f8080e09 	0xf8080e09
8000185c:	00000808 	0x00000808
80001860:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001864:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001868:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000186c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001870:	88f80000 	0x88f80000
80001874:	08888888 	0x08888888
80001878:	0908ff08 	0x0908ff08
8000187c:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001880:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001884:	801f2010 	0x801f2010
80001888:	18162140 	pcaddi	$r0,45322(0xb10a)
8000188c:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001890:	f8080808 	0xf8080808
80001894:	10080808 	addu16i.d	$r8,$r0,514(0x202)
80001898:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
8000189c:	0000f010 	0x0000f010
800018a0:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
800018a4:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
800018a8:	8040010e 	0x8040010e
800018ac:	00003f40 	revb.d	$r0,$r26
800018b0:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800018b4:	ff101010 	0xff101010
800018b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800018bc:	00000010 	0x00000010
800018c0:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800018c4:	01030d11 	fsub.d	$f17,$f8,$f3
800018c8:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800018cc:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800018d0:	fa02fe00 	0xfa02fe00
800018d4:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800018d8:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800018dc:	001010f0 	add.w	$r16,$r7,$r4
800018e0:	0f304780 	0x0f304780
800018e4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09948 <_sidata+0x63bffa54>
800018e8:	16081621 	lu32i.d	$r1,16561(0x40b1)
800018ec:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
800018f0:	927e0000 	0x927e0000
800018f4:	92929292 	0x92929292
800018f8:	9e929292 	0x9e929292
800018fc:	0000e080 	0x0000e080
80001900:	28488808 	ld.h	$r8,$r0,546(0x222)
80001904:	0808081e 	0x0808081e
80001908:	08fe0808 	0x08fe0808
8000190c:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
80001910:	ea081820 	0xea081820
80001914:	afa8a8ac 	0xafa8a8ac
80001918:	eaaca8a8 	0xeaaca8a8
8000191c:	00182808 	sra.w	$r8,$r0,$r10
80001920:	023e0000 	slti	$r0,$r0,-128(0xf80)
80001924:	ff020202 	0xff020202
80001928:	22120202 	ll.d	$r2,$r16,4608(0x1200)
8000192c:	0000001e 	0x0000001e
80001930:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001934:	54544400 	bl	21572(0x5444) # 80006d78 <_edata+0x52dc>
80001938:	54547f54 	bl	-45067140(0xd50547c) # 7d506db4 <_sidata+0x614fcec0>
8000193c:	00404454 	0x00404454
80001940:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001944:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001948:	95551515 	0x95551515
8000194c:	0000007f 	0x0000007f
80001950:	fea42424 	0xfea42424
80001954:	e2002223 	0xe2002223
80001958:	203f202c 	ll.w	$r12,$r1,16160(0x3f20)
8000195c:	0000e628 	0x0000e628
80001960:	ff010608 	0xff010608
80001964:	ff000601 	0xff000601
80001968:	49090909 	bcnez	$fcc0,2427144(0x250908) # 80252270 <_edata+0x2507d4>
8000196c:	00007f89 	0x00007f89
80001970:	fc000000 	0xfc000000
80001974:	24242424 	ldptr.w	$r4,$r1,9252(0x2424)
80001978:	23222222 	sc.d	$r2,$r17,8736(0x2220)
8000197c:	00202022 	div.w	$r2,$r1,$r8
80001980:	07182040 	0x07182040
80001984:	4242fe00 	beqz	$r16,148220(0x242fc) # 80025c80 <_edata+0x241e4>
80001988:	42424242 	beqz	$r18,672320(0xa4240) # 800a5bc8 <_edata+0xa412c>
8000198c:	000000fe 	0x000000fe
80001990:	92f20202 	0x92f20202
80001994:	fe929292 	0xfe929292
80001998:	92929292 	0x92929292
8000199c:	000202f2 	0x000202f2
800019a0:	04ff0404 	csrrd	$r4,0x3fc1
800019a4:	07040404 	0x07040404
800019a8:	84440404 	0x84440404
800019ac:	0004047f 	alsl.w	$r31,$r3,$r1,0x1
800019b0:	cc424040 	0xcc424040
800019b4:	90909000 	0x90909000
800019b8:	10ff9090 	addu16i.d	$r16,$r4,16356(0x3fe4)
800019bc:	00101611 	add.w	$r17,$r16,$r5
800019c0:	3f000000 	0x3f000000
800019c4:	3f602810 	0x3f602810
800019c8:	0e011010 	0x0e011010
800019cc:	00f04030 	bstrpick.d	$r16,$r1,0x30,0x10
800019d0:	10f00000 	addu16i.d	$r0,$r0,15360(0x3c00)
800019d4:	ff101010 	0xff101010
800019d8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800019dc:	000000f0 	0x000000f0
800019e0:	040f0000 	csrrd	$r0,0x3c0
800019e4:	ff040404 	0xff040404
800019e8:	04040404 	csrrd	$r4,0x101
800019ec:	0000000f 	0x0000000f
800019f0:	fc000000 	0xfc000000
800019f4:	54555654 	bl	-112175788(0x9505554) # 79506f48 <_sidata+0x5d4fd054>
800019f8:	fc545454 	0xfc545454
800019fc:	00408000 	slli.w	$r0,$r0,0x0
80001a00:	23424240 	sc.d	$r0,$r18,16960(0x4240)
80001a04:	12122222 	addu16i.d	$r2,$r17,-31608(0x8488)
80001a08:	7f82460a 	0x7f82460a
80001a0c:	00000001 	0x00000001
80001a10:	f8608000 	0xf8608000
80001a14:	b0408007 	0xb0408007
80001a18:	8780808e 	0x8780808e
80001a1c:	00806098 	bstrins.d	$r24,$r4,0x0,0x18
80001a20:	ff000001 	0xff000001
80001a24:	30408000 	vldrepl.h	$vr0,$r0,64(0x40)
80001a28:	8040000f 	0x8040000f
80001a2c:	0000007f 	0x0000007f
80001a30:	8282fa02 	0x8282fa02
80001a34:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
80001a38:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
80001a3c:	00402050 	0x00402050
80001a40:	84481808 	0x84481808
80001a44:	44403f44 	bnez	$r26,1065020(0x10403c) # 80105a80 <_edata+0x103fe4>
80001a48:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 80006888 <_edata+0x4dec>
80001a4c:	00404758 	0x00404758
80001a50:	cc424040 	0xcc424040
80001a54:	c4040000 	0xc4040000
80001a58:	04fc0404 	csrrd	$r4,0x3f01
80001a5c:	00040404 	alsl.w	$r4,$r0,$r1,0x1
80001a60:	3f000000 	0x3f000000
80001a64:	7f404810 	0x7f404810
80001a68:	417f4040 	beqz	$r2,98112(0x17f40) # 800199a8 <_edata+0x17f0c>
80001a6c:	00404141 	0x00404141

80001a70 <passwordArray>:
80001a70:	000004d2 	0x000004d2
80001a74:	000004d2 	0x000004d2
80001a78:	000004d2 	0x000004d2
80001a7c:	000004d2 	0x000004d2
80001a80:	000004d2 	0x000004d2

80001a84 <IDArray>:
80001a84:	0000000d 	0x0000000d
	...

80001a98 <flag1>:
80001a98:	 	0x00000101

80001a99 <mode>:
80001a99:	Address 0x0000000080001a99 is out of bounds.


Disassembly of section .bss:

80000000 <AS608Para>:
	...

8000000c <USART0_RX_BUF>:
	...

8000019c <USART0_TX_BUF>:
	...

8000032c <Temp>:
_sbss():
8000032c:	00000000 	0x00000000

80000330 <RF_Buffer>:
	...

80000344 <UID>:
	...

8000034c <Count>:
8000034c:	00000000 	0x00000000

80000350 <Password>:
80000350:	00000000 	0x00000000

Disassembly of section .bss.g_recvBuff:

80000354 <g_recvBuff>:
	...

Disassembly of section .bss.USART0_RX_STA:

80000368 <USART0_RX_STA>:
	...

Disassembly of section .bss.KeyNum:

80000369 <KeyNum>:
	...

Disassembly of section .bss.flag:

8000036a <flag>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
