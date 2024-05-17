
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438018f 	lu12i.w	$r15,114700(0x1c00c)
1c00000c:	038221ef 	ori	$r15,$r15,0x88
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
1c0000a0:	54743400 	bl	29748(0x7434) # 1c0074d4 <main>
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
1c001090:	549ac400 	bl	39620(0x9ac4) # 1c00ab54 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	549b0400 	bl	39684(0x9b04) # 1c00ab9c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	549b8800 	bl	39816(0x9b88) # 1c00ac28 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	549bbc00 	bl	39868(0x9bbc) # 1c00ac64 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5499d400 	bl	39380(0x99d4) # 1c00aa84 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	549d6000 	bl	40288(0x9d60) # 1c00ae18 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	549c7400 	bl	40052(0x9c74) # 1c00ad3c <INTC_Handler>
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
1c00144c:	1c00014c 	pcaddu12i	$r12,10(0xa)
1c001450:	02a8118c 	addi.w	$r12,$r12,-1532(0xa04)
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
1c001b14:	1400030d 	lu12i.w	$r13,24(0x18)
1c001b18:	039a81ad 	ori	$r13,$r13,0x6a0
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
1c001b4c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001b50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001b5c:	1403d08c 	lu12i.w	$r12,7812(0x1e84)
1c001b60:	03a0018c 	ori	$r12,$r12,0x800
1c001b64:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b68:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b6c:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b70:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001b74:	0280a00c 	addi.w	$r12,$r0,40(0x28)
1c001b78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b80:	0044898c 	srli.w	$r12,$r12,0x2
1c001b84:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b8c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b94:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001b98:	2900018d 	st.b	$r13,$r12,0
1c001b9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ba0:	0044a18d 	srli.w	$r13,$r12,0x8
1c001ba4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ba8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bac:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001bb0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bb4:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001bb8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001bbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bc0:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001bc4:	40001180 	beqz	$r12,16(0x10) # 1c001bd4 <soc_I2C_Init+0x8c>
1c001bc8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bcc:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001bd0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001bd4:	03400000 	andi	$r0,$r0,0x0
1c001bd8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001bdc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001be0:	4c000020 	jirl	$r0,$r1,0

1c001be4 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001be4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001be8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bf0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001bf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bf8:	40001580 	beqz	$r12,20(0x14) # 1c001c0c <soc_I2C_GenerateSTART+0x28>
1c001bfc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c00:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001c04:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c08:	50001000 	b	16(0x10) # 1c001c18 <soc_I2C_GenerateSTART+0x34>
1c001c0c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c10:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001c14:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c18:	03400000 	andi	$r0,$r0,0x0
1c001c1c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c24:	4c000020 	jirl	$r0,$r1,0

1c001c28 <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001c28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c34:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c3c:	40001580 	beqz	$r12,20(0x14) # 1c001c50 <soc_I2C_GenerateSTOP+0x28>
1c001c40:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c44:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001c48:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c4c:	50001000 	b	16(0x10) # 1c001c5c <soc_I2C_GenerateSTOP+0x34>
1c001c50:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c54:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001c58:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c5c:	03400000 	andi	$r0,$r0,0x0
1c001c60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c68:	4c000020 	jirl	$r0,$r1,0

1c001c6c <soc_I2C_SendData>:
soc_I2C_SendData():
1c001c6c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c70:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c74:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c7c:	0015008c 	move	$r12,$r4
1c001c80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c84:	54007800 	bl	120(0x78) # 1c001cfc <soc_I2C_Unlock>
1c001c88:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c8c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c90:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001c94:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c98:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001c9c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001ca0:	03400000 	andi	$r0,$r0,0x0
1c001ca4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ca8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001cac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cb0:	4c000020 	jirl	$r0,$r1,0

1c001cb4 <soc_I2C_wait>:
soc_I2C_wait():
1c001cb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cb8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001cbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001cc0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cc4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001cc8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001ccc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001cd0:	50001000 	b	16(0x10) # 1c001ce0 <soc_I2C_wait+0x2c>
1c001cd4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cd8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001cdc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001ce0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001ce4:	0340098c 	andi	$r12,$r12,0x2
1c001ce8:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001cd4 <soc_I2C_wait+0x20>
1c001cec:	03400000 	andi	$r0,$r0,0x0
1c001cf0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001cf4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cf8:	4c000020 	jirl	$r0,$r1,0

1c001cfc <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001cfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d08:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d0c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d18:	0340118c 	andi	$r12,$r12,0x4
1c001d1c:	40001180 	beqz	$r12,16(0x10) # 1c001d2c <soc_I2C_Unlock+0x30>
1c001d20:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d24:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001d28:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d2c:	03400000 	andi	$r0,$r0,0x0
1c001d30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d38:	4c000020 	jirl	$r0,$r1,0

1c001d3c <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001d3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d40:	29803076 	st.w	$r22,$r3,12(0xc)
1c001d44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d48:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d4c:	0380c18c 	ori	$r12,$r12,0x30
1c001d50:	29802180 	st.w	$r0,$r12,8(0x8)
1c001d54:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d58:	0380c18c 	ori	$r12,$r12,0x30
1c001d5c:	1400138d 	lu12i.w	$r13,156(0x9c)
1c001d60:	039001ad 	ori	$r13,$r13,0x400
1c001d64:	2980018d 	st.w	$r13,$r12,0
1c001d68:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d6c:	0380c18c 	ori	$r12,$r12,0x30
1c001d70:	1400006d 	lu12i.w	$r13,3(0x3)
1c001d74:	03ba01ad 	ori	$r13,$r13,0xe80
1c001d78:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001d7c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d80:	0380c18c 	ori	$r12,$r12,0x30
1c001d84:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001d88:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001d8c:	03400000 	andi	$r0,$r0,0x0
1c001d90:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001d94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d98:	4c000020 	jirl	$r0,$r1,0

1c001d9c <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001d9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001da0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001da4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001da8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001dac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001db0:	03b2000c 	ori	$r12,$r0,0xc80
1c001db4:	001c31ae 	mul.w	$r14,$r13,$r12
1c001db8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001dbc:	002031cd 	div.w	$r13,$r14,$r12
1c001dc0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001dc8 <pwm_steering_engine_set+0x2c>
1c001dc4:	002a0007 	break	0x7
1c001dc8:	1400006c 	lu12i.w	$r12,3(0x3)
1c001dcc:	03ba018c 	ori	$r12,$r12,0xe80
1c001dd0:	001031ad 	add.w	$r13,$r13,$r12
1c001dd4:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001dd8:	0380c18c 	ori	$r12,$r12,0x30
1c001ddc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001de0:	03400000 	andi	$r0,$r0,0x0
1c001de4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001de8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001dec:	4c000020 	jirl	$r0,$r1,0

1c001df0 <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001df0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001df4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001df8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001dfc:	0015008c 	move	$r12,$r4
1c001e00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e04:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e08:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001e0c:	03400dad 	andi	$r13,$r13,0x3
1c001e10:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e14:	2900018d 	st.b	$r13,$r12,0
1c001e18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e1c:	0044898c 	srli.w	$r12,$r12,0x2
1c001e20:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e24:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e28:	03400dad 	andi	$r13,$r13,0x3
1c001e2c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e30:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001e34:	03400000 	andi	$r0,$r0,0x0
1c001e38:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e40:	4c000020 	jirl	$r0,$r1,0

1c001e44 <soc_Spi_Init>:
soc_Spi_Init():
1c001e44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001e4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c001e50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e54:	0015008c 	move	$r12,$r4
1c001e58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e60:	00150184 	move	$r4,$r12
1c001e64:	57ff8fff 	bl	-116(0xfffff8c) # 1c001df0 <soc_Spi_FreqDiv>
1c001e68:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001e70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e74:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e78:	038141ad 	ori	$r13,$r13,0x50
1c001e7c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e80:	2900018d 	st.b	$r13,$r12,0
1c001e84:	03400000 	andi	$r0,$r0,0x0
1c001e88:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e8c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001e90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001e94:	0340118c 	andi	$r12,$r12,0x4
1c001e98:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001e88 <soc_Spi_Init+0x44>
1c001e9c:	03400000 	andi	$r0,$r0,0x0
1c001ea0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ea4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ea8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001eac:	0340058c 	andi	$r12,$r12,0x1
1c001eb0:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001ea0 <soc_Spi_Init+0x5c>
1c001eb4:	03400000 	andi	$r0,$r0,0x0
1c001eb8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ebc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ec0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ec4:	4c000020 	jirl	$r0,$r1,0

1c001ec8 <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001ec8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ecc:	29803076 	st.w	$r22,$r3,12(0xc)
1c001ed0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ed4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ed8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001edc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001ee0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ee4:	038009ad 	ori	$r13,$r13,0x2
1c001ee8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001eec:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001ef0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ef4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001ef8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001efc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f00:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001f04:	0014b5cd 	and	$r13,$r14,$r13
1c001f08:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f0c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f10:	03400000 	andi	$r0,$r0,0x0
1c001f14:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f1c:	4c000020 	jirl	$r0,$r1,0

1c001f20 <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c001f20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f24:	29803076 	st.w	$r22,$r3,12(0xc)
1c001f28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f2c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f30:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f34:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f38:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f3c:	038009ad 	ori	$r13,$r13,0x2
1c001f40:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f44:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f48:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f4c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f50:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f54:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f58:	038081ad 	ori	$r13,$r13,0x20
1c001f5c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f60:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f64:	03400000 	andi	$r0,$r0,0x0
1c001f68:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f70:	4c000020 	jirl	$r0,$r1,0

1c001f74 <my_recv_dat_int>:
my_recv_dat_int():
1c001f74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001f7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c001f80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f84:	0015008c 	move	$r12,$r4
1c001f88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001f8c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001f90:	2882218c 	ld.w	$r12,$r12,136(0x88)
1c001f94:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001f98:	2900018d 	st.b	$r13,$r12,0
1c001f9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001fa0:	00150185 	move	$r5,$r12
1c001fa4:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001fa8:	028ec084 	addi.w	$r4,$r4,944(0x3b0)
1c001fac:	54544c00 	bl	21580(0x544c) # 1c0073f8 <Buffer_write>
1c001fb0:	03400000 	andi	$r0,$r0,0x0
1c001fb4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001fb8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001fbc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fc0:	4c000020 	jirl	$r0,$r1,0

1c001fc4 <my_strstr>:
my_strstr():
1c001fc4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001fc8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001fcc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001fd0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001fd4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001fd8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fe0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001fe4:	2800018c 	ld.b	$r12,$r12,0
1c001fe8:	44008580 	bnez	$r12,132(0x84) # 1c00206c <my_strstr+0xa8>
1c001fec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ff0:	50008c00 	b	140(0x8c) # 1c00207c <my_strstr+0xb8>
1c001ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ff8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ffc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002000:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002004:	50001c00 	b	28(0x1c) # 1c002020 <my_strstr+0x5c>
1c002008:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00200c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002010:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002014:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002018:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00201c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002020:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002024:	2800018c 	ld.b	$r12,$r12,0
1c002028:	40002580 	beqz	$r12,36(0x24) # 1c00204c <my_strstr+0x88>
1c00202c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002030:	2800018c 	ld.b	$r12,$r12,0
1c002034:	40001980 	beqz	$r12,24(0x18) # 1c00204c <my_strstr+0x88>
1c002038:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00203c:	2800018d 	ld.b	$r13,$r12,0
1c002040:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002044:	2800018c 	ld.b	$r12,$r12,0
1c002048:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c002008 <my_strstr+0x44>
1c00204c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002050:	2800018c 	ld.b	$r12,$r12,0
1c002054:	44000d80 	bnez	$r12,12(0xc) # 1c002060 <my_strstr+0x9c>
1c002058:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00205c:	50002000 	b	32(0x20) # 1c00207c <my_strstr+0xb8>
1c002060:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002064:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002068:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00206c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002070:	2800018c 	ld.b	$r12,$r12,0
1c002074:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c001ff4 <my_strstr+0x30>
1c002078:	0015000c 	move	$r12,$r0
1c00207c:	00150184 	move	$r4,$r12
1c002080:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002084:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002088:	4c000020 	jirl	$r0,$r1,0

1c00208c <MYUSART_SendData>:
MYUSART_SendData():
1c00208c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002090:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002094:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002098:	0015008c 	move	$r12,$r4
1c00209c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0020a0:	03400000 	andi	$r0,$r0,0x0
1c0020a4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020a8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0020ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020b0:	0340818c 	andi	$r12,$r12,0x20
1c0020b4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0020a4 <MYUSART_SendData+0x18>
1c0020b8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020c0:	2900018d 	st.b	$r13,$r12,0
1c0020c4:	03400000 	andi	$r0,$r0,0x0
1c0020c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0020cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020d0:	4c000020 	jirl	$r0,$r1,0

1c0020d4 <SendHead>:
SendHead():
1c0020d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0020dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0020e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020e4:	02864006 	addi.w	$r6,$r0,400(0x190)
1c0020e8:	00150005 	move	$r5,$r0
1c0020ec:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c0020f0:	28bc8084 	ld.w	$r4,$r4,-224(0xf20)
1c0020f4:	57f667ff 	bl	-2460(0xffff664) # 1c001758 <memset>
1c0020f8:	0283bc04 	addi.w	$r4,$r0,239(0xef)
1c0020fc:	57ff93ff 	bl	-112(0xfffff90) # 1c00208c <MYUSART_SendData>
1c002100:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002104:	57ff8bff 	bl	-120(0xfffff88) # 1c00208c <MYUSART_SendData>
1c002108:	03400000 	andi	$r0,$r0,0x0
1c00210c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002110:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002114:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002118:	4c000020 	jirl	$r0,$r1,0

1c00211c <SendAddr>:
SendAddr():
1c00211c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002120:	29803061 	st.w	$r1,$r3,12(0xc)
1c002124:	29802076 	st.w	$r22,$r3,8(0x8)
1c002128:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00212c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002130:	02bbc18c 	addi.w	$r12,$r12,-272(0xef0)
1c002134:	2880018c 	ld.w	$r12,$r12,0
1c002138:	0044e18c 	srli.w	$r12,$r12,0x18
1c00213c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002140:	00150184 	move	$r4,$r12
1c002144:	57ff4bff 	bl	-184(0xfffff48) # 1c00208c <MYUSART_SendData>
1c002148:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00214c:	02bb518c 	addi.w	$r12,$r12,-300(0xed4)
1c002150:	2880018c 	ld.w	$r12,$r12,0
1c002154:	0044c18c 	srli.w	$r12,$r12,0x10
1c002158:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00215c:	00150184 	move	$r4,$r12
1c002160:	57ff2fff 	bl	-212(0xfffff2c) # 1c00208c <MYUSART_SendData>
1c002164:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002168:	02bae18c 	addi.w	$r12,$r12,-328(0xeb8)
1c00216c:	2880018c 	ld.w	$r12,$r12,0
1c002170:	0044a18c 	srli.w	$r12,$r12,0x8
1c002174:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002178:	00150184 	move	$r4,$r12
1c00217c:	57ff13ff 	bl	-240(0xfffff10) # 1c00208c <MYUSART_SendData>
1c002180:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002184:	02ba718c 	addi.w	$r12,$r12,-356(0xe9c)
1c002188:	2880018c 	ld.w	$r12,$r12,0
1c00218c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002190:	00150184 	move	$r4,$r12
1c002194:	57fefbff 	bl	-264(0xffffef8) # 1c00208c <MYUSART_SendData>
1c002198:	03400000 	andi	$r0,$r0,0x0
1c00219c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021a8:	4c000020 	jirl	$r0,$r1,0

1c0021ac <SendFlag>:
SendFlag():
1c0021ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021bc:	0015008c 	move	$r12,$r4
1c0021c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021c4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0021c8:	00150184 	move	$r4,$r12
1c0021cc:	57fec3ff 	bl	-320(0xffffec0) # 1c00208c <MYUSART_SendData>
1c0021d0:	03400000 	andi	$r0,$r0,0x0
1c0021d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0021d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0021dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0021e0:	4c000020 	jirl	$r0,$r1,0

1c0021e4 <SendLength>:
SendLength():
1c0021e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0048a18c 	srai.w	$r12,$r12,0x8
1c002200:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002204:	00150184 	move	$r4,$r12
1c002208:	57fe87ff 	bl	-380(0xffffe84) # 1c00208c <MYUSART_SendData>
1c00220c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002210:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002214:	00150184 	move	$r4,$r12
1c002218:	57fe77ff 	bl	-396(0xffffe74) # 1c00208c <MYUSART_SendData>
1c00221c:	03400000 	andi	$r0,$r0,0x0
1c002220:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002224:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002228:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00222c:	4c000020 	jirl	$r0,$r1,0

1c002230 <Sendcmd>:
Sendcmd():
1c002230:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002234:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002238:	29806076 	st.w	$r22,$r3,24(0x18)
1c00223c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002240:	0015008c 	move	$r12,$r4
1c002244:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002248:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00224c:	00150184 	move	$r4,$r12
1c002250:	57fe3fff 	bl	-452(0xffffe3c) # 1c00208c <MYUSART_SendData>
1c002254:	03400000 	andi	$r0,$r0,0x0
1c002258:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00225c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002260:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002264:	4c000020 	jirl	$r0,$r1,0

1c002268 <SendCheck>:
SendCheck():
1c002268:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00226c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002270:	29806076 	st.w	$r22,$r3,24(0x18)
1c002274:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002278:	0015008c 	move	$r12,$r4
1c00227c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002280:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c002284:	0044a18c 	srli.w	$r12,$r12,0x8
1c002288:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00228c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002290:	00150184 	move	$r4,$r12
1c002294:	57fdfbff 	bl	-520(0xffffdf8) # 1c00208c <MYUSART_SendData>
1c002298:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00229c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022a0:	00150184 	move	$r4,$r12
1c0022a4:	57fdebff 	bl	-536(0xffffde8) # 1c00208c <MYUSART_SendData>
1c0022a8:	03400000 	andi	$r0,$r0,0x0
1c0022ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0022b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0022b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022b8:	4c000020 	jirl	$r0,$r1,0

1c0022bc <AS608_Check>:
AS608_Check():
1c0022bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0022c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0022c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022cc:	1400004c 	lu12i.w	$r12,2(0x2)
1c0022d0:	039c418c 	ori	$r12,$r12,0x710
1c0022d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022d8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0022dc:	28b4d18c 	ld.w	$r12,$r12,-716(0xd34)
1c0022e0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0022e4:	2900258d 	st.b	$r13,$r12,9(0x9)
1c0022e8:	57fdefff 	bl	-532(0xffffdec) # 1c0020d4 <SendHead>
1c0022ec:	57fe33ff 	bl	-464(0xffffe30) # 1c00211c <SendAddr>
1c0022f0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0022f4:	50002c00 	b	44(0x2c) # 1c002320 <AS608_Check+0x64>
1c0022f8:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0022fc:	02b4a1ad 	addi.w	$r13,$r13,-728(0xd28)
1c002300:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002304:	001031ac 	add.w	$r12,$r13,$r12
1c002308:	2a00018c 	ld.bu	$r12,$r12,0
1c00230c:	00150184 	move	$r4,$r12
1c002310:	57fd7fff 	bl	-644(0xffffd7c) # 1c00208c <MYUSART_SendData>
1c002314:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002318:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00231c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002320:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002324:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002328:	67ffd18d 	bge	$r12,$r13,-48(0x3ffd0) # 1c0022f8 <AS608_Check+0x3c>
1c00232c:	03400000 	andi	$r0,$r0,0x0
1c002330:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002334:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002338:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00233c:	0340058c 	andi	$r12,$r12,0x1
1c002340:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002330 <AS608_Check+0x74>
1c002344:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002348:	5000a800 	b	168(0xa8) # 1c0023f0 <AS608_Check+0x134>
1c00234c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002350:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002354:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	44002980 	bnez	$r12,40(0x28) # 1c002384 <AS608_Check+0xc8>
1c002360:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002364:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002368:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00236c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002370:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c002374:	001535cd 	or	$r13,$r14,$r13
1c002378:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00237c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002380:	50001800 	b	24(0x18) # 1c002398 <AS608_Check+0xdc>
1c002384:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002388:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00238c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002390:	0340058c 	andi	$r12,$r12,0x1
1c002394:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c00234c <AS608_Check+0x90>
1c002398:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00239c:	44001d80 	bnez	$r12,28(0x1c) # 1c0023b8 <AS608_Check+0xfc>
1c0023a0:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0023a4:	28b1b1ad 	ld.w	$r13,$r13,-916(0xc6c)
1c0023a8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023ac:	001031ac 	add.w	$r12,$r13,$r12
1c0023b0:	29000180 	st.b	$r0,$r12,0
1c0023b4:	50002400 	b	36(0x24) # 1c0023d8 <AS608_Check+0x11c>
1c0023b8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0023c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0023c4:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0023c8:	28b121ce 	ld.w	$r14,$r14,-952(0xc48)
1c0023cc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023d0:	001031cc 	add.w	$r12,$r14,$r12
1c0023d4:	2900018d 	st.b	$r13,$r12,0
1c0023d8:	140000ec 	lu12i.w	$r12,7(0x7)
1c0023dc:	0394c18c 	ori	$r12,$r12,0x530
1c0023e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023e4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0023f0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0023f4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0023f8:	6fff8d8d 	bgeu	$r12,$r13,-116(0x3ff8c) # 1c002384 <AS608_Check+0xc8>
1c0023fc:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002400:	28b0418c 	ld.w	$r12,$r12,-1008(0xc10)
1c002404:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002408:	44000d80 	bnez	$r12,12(0xc) # 1c002414 <AS608_Check+0x158>
1c00240c:	0015000c 	move	$r12,$r0
1c002410:	50000800 	b	8(0x8) # 1c002418 <AS608_Check+0x15c>
1c002414:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002418:	00150184 	move	$r4,$r12
1c00241c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002420:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002424:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002428:	4c000020 	jirl	$r0,$r1,0

1c00242c <as608_init>:
as608_init():
1c00242c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002430:	29803061 	st.w	$r1,$r3,12(0xc)
1c002434:	29802076 	st.w	$r22,$r3,8(0x8)
1c002438:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00243c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002440:	5413f000 	bl	5104(0x13f0) # 1c003830 <uart_set_rx_th>
1c002444:	57fe7bff 	bl	-392(0xffffe78) # 1c0022bc <AS608_Check>
1c002448:	0015008c 	move	$r12,$r4
1c00244c:	00150184 	move	$r4,$r12
1c002450:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002454:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002458:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00245c:	4c000020 	jirl	$r0,$r1,0

1c002460 <JudgeStr>:
JudgeStr():
1c002460:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c002464:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002468:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00246c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002470:	0015008c 	move	$r12,$r4
1c002474:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c002478:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c00247c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002480:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c002484:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c002488:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00248c:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c002490:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002494:	02ae318c 	addi.w	$r12,$r12,-1140(0xb8c)
1c002498:	2880018c 	ld.w	$r12,$r12,0
1c00249c:	0044e18c 	srli.w	$r12,$r12,0x18
1c0024a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024a4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0024a8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024ac:	02add18c 	addi.w	$r12,$r12,-1164(0xb74)
1c0024b0:	2880018c 	ld.w	$r12,$r12,0
1c0024b4:	0044c18c 	srli.w	$r12,$r12,0x10
1c0024b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024bc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0024c0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024c4:	02ad718c 	addi.w	$r12,$r12,-1188(0xb5c)
1c0024c8:	2880018c 	ld.w	$r12,$r12,0
1c0024cc:	0044a18c 	srli.w	$r12,$r12,0x8
1c0024d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024d4:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c0024d8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024dc:	02ad118c 	addi.w	$r12,$r12,-1212(0xb44)
1c0024e0:	2880018c 	ld.w	$r12,$r12,0
1c0024e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024e8:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c0024ec:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0024f0:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c0024f4:	293f8ec0 	st.b	$r0,$r22,-29(0xfe3)
1c0024f8:	03400000 	andi	$r0,$r0,0x0
1c0024fc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002500:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002504:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002508:	0340058c 	andi	$r12,$r12,0x1
1c00250c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0024fc <JudgeStr+0x9c>
1c002510:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002514:	5000c000 	b	192(0xc0) # 1c0025d4 <JudgeStr+0x174>
1c002518:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00251c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002520:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002524:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002528:	44002980 	bnez	$r12,40(0x28) # 1c002550 <JudgeStr+0xf0>
1c00252c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002530:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002534:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002538:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00253c:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c002540:	001535cd 	or	$r13,$r14,$r13
1c002544:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002548:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00254c:	50001800 	b	24(0x18) # 1c002564 <JudgeStr+0x104>
1c002550:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002554:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002558:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00255c:	0340058c 	andi	$r12,$r12,0x1
1c002560:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002518 <JudgeStr+0xb8>
1c002564:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002568:	44001d80 	bnez	$r12,28(0x1c) # 1c002584 <JudgeStr+0x124>
1c00256c:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002570:	28aa81ad 	ld.w	$r13,$r13,-1376(0xaa0)
1c002574:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002578:	001031ac 	add.w	$r12,$r13,$r12
1c00257c:	29000180 	st.b	$r0,$r12,0
1c002580:	50002400 	b	36(0x24) # 1c0025a4 <JudgeStr+0x144>
1c002584:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002588:	2a00018c 	ld.bu	$r12,$r12,0
1c00258c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002590:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c002594:	28a9f1ce 	ld.w	$r14,$r14,-1412(0xa7c)
1c002598:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00259c:	001031cc 	add.w	$r12,$r14,$r12
1c0025a0:	2900018d 	st.b	$r13,$r12,0
1c0025a4:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0025a8:	28a9a1ad 	ld.w	$r13,$r13,-1432(0xa68)
1c0025ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025b0:	001031ac 	add.w	$r12,$r13,$r12
1c0025b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0025b8:	00150184 	move	$r4,$r12
1c0025bc:	54122c00 	bl	4652(0x122c) # 1c0037e8 <uart_write>
1c0025c0:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c0025c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0025d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0025d4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0025d8:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c0025dc:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c002550 <JudgeStr+0xf0>
1c0025e0:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c0025e4:	00150185 	move	$r5,$r12
1c0025e8:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c0025ec:	28a89084 	ld.w	$r4,$r4,-1500(0xa24)
1c0025f0:	57f9d7ff 	bl	-1580(0xffff9d4) # 1c001fc4 <my_strstr>
1c0025f4:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0025f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0025fc:	40000d80 	beqz	$r12,12(0xc) # 1c002608 <JudgeStr+0x1a8>
1c002600:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002604:	50000800 	b	8(0x8) # 1c00260c <JudgeStr+0x1ac>
1c002608:	0015000c 	move	$r12,$r0
1c00260c:	00150184 	move	$r4,$r12
1c002610:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002614:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002618:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00261c:	4c000020 	jirl	$r0,$r1,0

1c002620 <PS_GetImage>:
PS_GetImage():
1c002620:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002624:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002628:	29806076 	st.w	$r22,$r3,24(0x18)
1c00262c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002630:	57faa7ff 	bl	-1372(0xffffaa4) # 1c0020d4 <SendHead>
1c002634:	57faebff 	bl	-1304(0xffffae8) # 1c00211c <SendAddr>
1c002638:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00263c:	57fb73ff 	bl	-1168(0xffffb70) # 1c0021ac <SendFlag>
1c002640:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002644:	57fba3ff 	bl	-1120(0xffffba0) # 1c0021e4 <SendLength>
1c002648:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00264c:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c002230 <Sendcmd>
1c002650:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002654:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002658:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00265c:	00150184 	move	$r4,$r12
1c002660:	57fc0bff 	bl	-1016(0xffffc08) # 1c002268 <SendCheck>
1c002664:	1400004c 	lu12i.w	$r12,2(0x2)
1c002668:	039c4184 	ori	$r4,$r12,0x710
1c00266c:	57fdf7ff 	bl	-524(0xffffdf4) # 1c002460 <JudgeStr>
1c002670:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002674:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002678:	40001580 	beqz	$r12,20(0x14) # 1c00268c <PS_GetImage+0x6c>
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002684:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002688:	50000c00 	b	12(0xc) # 1c002694 <PS_GetImage+0x74>
1c00268c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002690:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002694:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002698:	00150184 	move	$r4,$r12
1c00269c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026a8:	4c000020 	jirl	$r0,$r1,0

1c0026ac <PS_GenChar>:
PS_GenChar():
1c0026ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026bc:	0015008c 	move	$r12,$r4
1c0026c0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0026c4:	57fa13ff 	bl	-1520(0xffffa10) # 1c0020d4 <SendHead>
1c0026c8:	57fa57ff 	bl	-1452(0xffffa54) # 1c00211c <SendAddr>
1c0026cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0026d0:	57fadfff 	bl	-1316(0xffffadc) # 1c0021ac <SendFlag>
1c0026d4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0026d8:	57fb0fff 	bl	-1268(0xffffb0c) # 1c0021e4 <SendLength>
1c0026dc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0026e0:	57fb53ff 	bl	-1200(0xffffb50) # 1c002230 <Sendcmd>
1c0026e4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0026e8:	00150184 	move	$r4,$r12
1c0026ec:	57f9a3ff 	bl	-1632(0xffff9a0) # 1c00208c <MYUSART_SendData>
1c0026f0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0026f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0026f8:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0026fc:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002700:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002704:	00150184 	move	$r4,$r12
1c002708:	57fb63ff 	bl	-1184(0xffffb60) # 1c002268 <SendCheck>
1c00270c:	1400004c 	lu12i.w	$r12,2(0x2)
1c002710:	039c4184 	ori	$r4,$r12,0x710
1c002714:	57fd4fff 	bl	-692(0xffffd4c) # 1c002460 <JudgeStr>
1c002718:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00271c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002720:	40001580 	beqz	$r12,20(0x14) # 1c002734 <PS_GenChar+0x88>
1c002724:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002728:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00272c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002730:	50000c00 	b	12(0xc) # 1c00273c <PS_GenChar+0x90>
1c002734:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002738:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00273c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002740:	00150184 	move	$r4,$r12
1c002744:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002748:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00274c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002750:	4c000020 	jirl	$r0,$r1,0

1c002754 <PS_Match>:
PS_Match():
1c002754:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002758:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00275c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002760:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002764:	57f973ff 	bl	-1680(0xffff970) # 1c0020d4 <SendHead>
1c002768:	57f9b7ff 	bl	-1612(0xffff9b4) # 1c00211c <SendAddr>
1c00276c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002770:	57fa3fff 	bl	-1476(0xffffa3c) # 1c0021ac <SendFlag>
1c002774:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002778:	57fa6fff 	bl	-1428(0xffffa6c) # 1c0021e4 <SendLength>
1c00277c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002780:	57fab3ff 	bl	-1360(0xffffab0) # 1c002230 <Sendcmd>
1c002784:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002788:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00278c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002790:	00150184 	move	$r4,$r12
1c002794:	57fad7ff 	bl	-1324(0xffffad4) # 1c002268 <SendCheck>
1c002798:	1400004c 	lu12i.w	$r12,2(0x2)
1c00279c:	039c4184 	ori	$r4,$r12,0x710
1c0027a0:	57fcc3ff 	bl	-832(0xffffcc0) # 1c002460 <JudgeStr>
1c0027a4:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0027a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027ac:	40001580 	beqz	$r12,20(0x14) # 1c0027c0 <PS_Match+0x6c>
1c0027b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027b4:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0027b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027bc:	50000c00 	b	12(0xc) # 1c0027c8 <PS_Match+0x74>
1c0027c0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0027c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0027cc:	00150184 	move	$r4,$r12
1c0027d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0027d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0027d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027dc:	4c000020 	jirl	$r0,$r1,0

1c0027e0 <PS_RegModel>:
PS_RegModel():
1c0027e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0027e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0027ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027f0:	57f8e7ff 	bl	-1820(0xffff8e4) # 1c0020d4 <SendHead>
1c0027f4:	57f92bff 	bl	-1752(0xffff928) # 1c00211c <SendAddr>
1c0027f8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0027fc:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c0021ac <SendFlag>
1c002800:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002804:	57f9e3ff 	bl	-1568(0xffff9e0) # 1c0021e4 <SendLength>
1c002808:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00280c:	57fa27ff 	bl	-1500(0xffffa24) # 1c002230 <Sendcmd>
1c002810:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002814:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002818:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00281c:	00150184 	move	$r4,$r12
1c002820:	57fa4bff 	bl	-1464(0xffffa48) # 1c002268 <SendCheck>
1c002824:	1400004c 	lu12i.w	$r12,2(0x2)
1c002828:	039c4184 	ori	$r4,$r12,0x710
1c00282c:	57fc37ff 	bl	-972(0xffffc34) # 1c002460 <JudgeStr>
1c002830:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002834:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002838:	40001580 	beqz	$r12,20(0x14) # 1c00284c <PS_RegModel+0x6c>
1c00283c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002840:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002844:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002848:	50000c00 	b	12(0xc) # 1c002854 <PS_RegModel+0x74>
1c00284c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002850:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002854:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002858:	00150184 	move	$r4,$r12
1c00285c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002860:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002864:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002868:	4c000020 	jirl	$r0,$r1,0

1c00286c <PS_StoreChar>:
PS_StoreChar():
1c00286c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002870:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002874:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002878:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00287c:	0015008c 	move	$r12,$r4
1c002880:	001500ad 	move	$r13,$r5
1c002884:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002888:	001501ac 	move	$r12,$r13
1c00288c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002890:	57f847ff 	bl	-1980(0xffff844) # 1c0020d4 <SendHead>
1c002894:	57f88bff 	bl	-1912(0xffff888) # 1c00211c <SendAddr>
1c002898:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00289c:	57f913ff 	bl	-1776(0xffff910) # 1c0021ac <SendFlag>
1c0028a0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028a4:	57f943ff 	bl	-1728(0xffff940) # 1c0021e4 <SendLength>
1c0028a8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028ac:	57f987ff 	bl	-1660(0xffff984) # 1c002230 <Sendcmd>
1c0028b0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0028b4:	00150184 	move	$r4,$r12
1c0028b8:	57f7d7ff 	bl	-2092(0xffff7d4) # 1c00208c <MYUSART_SendData>
1c0028bc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028c0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028c4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028cc:	00150184 	move	$r4,$r12
1c0028d0:	57f7bfff 	bl	-2116(0xffff7bc) # 1c00208c <MYUSART_SendData>
1c0028d4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028dc:	00150184 	move	$r4,$r12
1c0028e0:	57f7afff 	bl	-2132(0xffff7ac) # 1c00208c <MYUSART_SendData>
1c0028e4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0028e8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0028ec:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028f0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002900:	001031ac 	add.w	$r12,$r13,$r12
1c002904:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002908:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00290c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002910:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002914:	001031ac 	add.w	$r12,$r13,$r12
1c002918:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00291c:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002920:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002924:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002928:	00150184 	move	$r4,$r12
1c00292c:	57f93fff 	bl	-1732(0xffff93c) # 1c002268 <SendCheck>
1c002930:	1400004c 	lu12i.w	$r12,2(0x2)
1c002934:	039c4184 	ori	$r4,$r12,0x710
1c002938:	57fb2bff 	bl	-1240(0xffffb28) # 1c002460 <JudgeStr>
1c00293c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002940:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002944:	40001580 	beqz	$r12,20(0x14) # 1c002958 <PS_StoreChar+0xec>
1c002948:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00294c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002950:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002954:	50000c00 	b	12(0xc) # 1c002960 <PS_StoreChar+0xf4>
1c002958:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00295c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002960:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002964:	00150184 	move	$r4,$r12
1c002968:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00296c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002970:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002974:	4c000020 	jirl	$r0,$r1,0

1c002978 <PS_Empty>:
PS_Empty():
1c002978:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00297c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002980:	29806076 	st.w	$r22,$r3,24(0x18)
1c002984:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002988:	57f74fff 	bl	-2228(0xffff74c) # 1c0020d4 <SendHead>
1c00298c:	57f793ff 	bl	-2160(0xffff790) # 1c00211c <SendAddr>
1c002990:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002994:	57f81bff 	bl	-2024(0xffff818) # 1c0021ac <SendFlag>
1c002998:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00299c:	57f84bff 	bl	-1976(0xffff848) # 1c0021e4 <SendLength>
1c0029a0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0029a4:	57f88fff 	bl	-1908(0xffff88c) # 1c002230 <Sendcmd>
1c0029a8:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0029ac:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0029b0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0029b4:	00150184 	move	$r4,$r12
1c0029b8:	57f8b3ff 	bl	-1872(0xffff8b0) # 1c002268 <SendCheck>
1c0029bc:	1400004c 	lu12i.w	$r12,2(0x2)
1c0029c0:	039c4184 	ori	$r4,$r12,0x710
1c0029c4:	57fa9fff 	bl	-1380(0xffffa9c) # 1c002460 <JudgeStr>
1c0029c8:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0029cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029d0:	40001580 	beqz	$r12,20(0x14) # 1c0029e4 <PS_Empty+0x6c>
1c0029d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029d8:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0029dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029e0:	50000c00 	b	12(0xc) # 1c0029ec <PS_Empty+0x74>
1c0029e4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0029e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0029f0:	00150184 	move	$r4,$r12
1c0029f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0029f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0029fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a00:	4c000020 	jirl	$r0,$r1,0

1c002a04 <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c002a04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a08:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a0c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a14:	0015008c 	move	$r12,$r4
1c002a18:	001500ae 	move	$r14,$r5
1c002a1c:	001500cd 	move	$r13,$r6
1c002a20:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c002a24:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a28:	001501cc 	move	$r12,$r14
1c002a2c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002a30:	001501ac 	move	$r12,$r13
1c002a34:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002a38:	57f69fff 	bl	-2404(0xffff69c) # 1c0020d4 <SendHead>
1c002a3c:	57f6e3ff 	bl	-2336(0xffff6e0) # 1c00211c <SendAddr>
1c002a40:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a44:	57f76bff 	bl	-2200(0xffff768) # 1c0021ac <SendFlag>
1c002a48:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002a4c:	57f79bff 	bl	-2152(0xffff798) # 1c0021e4 <SendLength>
1c002a50:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c002a54:	57f7dfff 	bl	-2084(0xffff7dc) # 1c002230 <Sendcmd>
1c002a58:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002a5c:	00150184 	move	$r4,$r12
1c002a60:	57f62fff 	bl	-2516(0xffff62c) # 1c00208c <MYUSART_SendData>
1c002a64:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002a68:	0044a18c 	srli.w	$r12,$r12,0x8
1c002a6c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002a70:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a74:	00150184 	move	$r4,$r12
1c002a78:	57f617ff 	bl	-2540(0xffff614) # 1c00208c <MYUSART_SendData>
1c002a7c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002a80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a84:	00150184 	move	$r4,$r12
1c002a88:	57f607ff 	bl	-2556(0xffff604) # 1c00208c <MYUSART_SendData>
1c002a8c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002a90:	0044a18c 	srli.w	$r12,$r12,0x8
1c002a94:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002a98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a9c:	00150184 	move	$r4,$r12
1c002aa0:	57f5efff 	bl	-2580(0xffff5ec) # 1c00208c <MYUSART_SendData>
1c002aa4:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002aa8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002aac:	00150184 	move	$r4,$r12
1c002ab0:	57f5dfff 	bl	-2596(0xffff5dc) # 1c00208c <MYUSART_SendData>
1c002ab4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002ab8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002abc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002ac0:	0044a18c 	srli.w	$r12,$r12,0x8
1c002ac4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ac8:	001031ac 	add.w	$r12,$r13,$r12
1c002acc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002ad0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002ad4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ad8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002adc:	001031ac 	add.w	$r12,$r13,$r12
1c002ae0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002ae4:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002ae8:	0044a18c 	srli.w	$r12,$r12,0x8
1c002aec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002af0:	001031ac 	add.w	$r12,$r13,$r12
1c002af4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002af8:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002afc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b00:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b04:	001031ac 	add.w	$r12,$r13,$r12
1c002b08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b0c:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c002b10:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002b14:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002b18:	00150184 	move	$r4,$r12
1c002b1c:	57f74fff 	bl	-2228(0xffff74c) # 1c002268 <SendCheck>
1c002b20:	1400004c 	lu12i.w	$r12,2(0x2)
1c002b24:	039c4184 	ori	$r4,$r12,0x710
1c002b28:	57f93bff 	bl	-1736(0xffff938) # 1c002460 <JudgeStr>
1c002b2c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002b30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b34:	40008580 	beqz	$r12,132(0x84) # 1c002bb8 <PS_HighSpeedSearch+0x1b4>
1c002b38:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b3c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002b40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b48:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c002b4c:	2a00018c 	ld.bu	$r12,$r12,0
1c002b50:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b54:	0040a18c 	slli.w	$r12,$r12,0x8
1c002b58:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b60:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c002b64:	2a00018c 	ld.bu	$r12,$r12,0
1c002b68:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b6c:	001031ac 	add.w	$r12,$r13,$r12
1c002b70:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b74:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002b78:	2940018d 	st.h	$r13,$r12,0
1c002b7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b80:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c002b84:	2a00018c 	ld.bu	$r12,$r12,0
1c002b88:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b8c:	0040a18c 	slli.w	$r12,$r12,0x8
1c002b90:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b98:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002b9c:	2a00018c 	ld.bu	$r12,$r12,0
1c002ba0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ba4:	001031ac 	add.w	$r12,$r13,$r12
1c002ba8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bac:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002bb0:	2940098d 	st.h	$r13,$r12,2(0x2)
1c002bb4:	50000c00 	b	12(0xc) # 1c002bc0 <PS_HighSpeedSearch+0x1bc>
1c002bb8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002bbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002bc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002bc4:	00150184 	move	$r4,$r12
1c002bc8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002bcc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002bd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bd4:	4c000020 	jirl	$r0,$r1,0

1c002bd8 <ShowErrMessage>:
ShowErrMessage():
1c002bd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002bdc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002be0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002be4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002be8:	0015008c 	move	$r12,$r4
1c002bec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002bf0:	542c9c00 	bl	11420(0x2c9c) # 1c00588c <OLED_CLS>
1c002bf4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002bf8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002bfc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c00:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002c04:	542fd800 	bl	12248(0x2fd8) # 1c005bdc <OLED_ShowCN_STR>
1c002c08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c0c:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002c10:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c14:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c18:	542fc400 	bl	12228(0x2fc4) # 1c005bdc <OLED_ShowCN_STR>
1c002c1c:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c002c20:	03bead8c 	ori	$r12,$r12,0xfab
1c002c24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c28:	50008400 	b	132(0x84) # 1c002cac <ShowErrMessage+0xd4>
1c002c2c:	03400000 	andi	$r0,$r0,0x0
1c002c30:	03400000 	andi	$r0,$r0,0x0
1c002c34:	03400000 	andi	$r0,$r0,0x0
1c002c38:	03400000 	andi	$r0,$r0,0x0
1c002c3c:	03400000 	andi	$r0,$r0,0x0
1c002c40:	03400000 	andi	$r0,$r0,0x0
1c002c44:	03400000 	andi	$r0,$r0,0x0
1c002c48:	03400000 	andi	$r0,$r0,0x0
1c002c4c:	03400000 	andi	$r0,$r0,0x0
1c002c50:	03400000 	andi	$r0,$r0,0x0
1c002c54:	03400000 	andi	$r0,$r0,0x0
1c002c58:	03400000 	andi	$r0,$r0,0x0
1c002c5c:	03400000 	andi	$r0,$r0,0x0
1c002c60:	03400000 	andi	$r0,$r0,0x0
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	03400000 	andi	$r0,$r0,0x0
1c002c70:	03400000 	andi	$r0,$r0,0x0
1c002c74:	03400000 	andi	$r0,$r0,0x0
1c002c78:	03400000 	andi	$r0,$r0,0x0
1c002c7c:	03400000 	andi	$r0,$r0,0x0
1c002c80:	03400000 	andi	$r0,$r0,0x0
1c002c84:	03400000 	andi	$r0,$r0,0x0
1c002c88:	03400000 	andi	$r0,$r0,0x0
1c002c8c:	03400000 	andi	$r0,$r0,0x0
1c002c90:	03400000 	andi	$r0,$r0,0x0
1c002c94:	03400000 	andi	$r0,$r0,0x0
1c002c98:	03400000 	andi	$r0,$r0,0x0
1c002c9c:	03400000 	andi	$r0,$r0,0x0
1c002ca0:	03400000 	andi	$r0,$r0,0x0
1c002ca4:	03400000 	andi	$r0,$r0,0x0
1c002ca8:	03400000 	andi	$r0,$r0,0x0
1c002cac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cb0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cb4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002cb8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002c2c <ShowErrMessage+0x54>
1c002cbc:	542bd000 	bl	11216(0x2bd0) # 1c00588c <OLED_CLS>
1c002cc0:	02801407 	addi.w	$r7,$r0,5(0x5)
1c002cc4:	02812006 	addi.w	$r6,$r0,72(0x48)
1c002cc8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ccc:	02806404 	addi.w	$r4,$r0,25(0x19)
1c002cd0:	542f0c00 	bl	12044(0x2f0c) # 1c005bdc <OLED_ShowCN_STR>
1c002cd4:	542bb800 	bl	11192(0x2bb8) # 1c00588c <OLED_CLS>
1c002cd8:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002cdc:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002ce0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ce4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002ce8:	542ef400 	bl	12020(0x2ef4) # 1c005bdc <OLED_ShowCN_STR>
1c002cec:	03400000 	andi	$r0,$r0,0x0
1c002cf0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cf4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cf8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002cfc:	4c000020 	jirl	$r0,$r1,0

1c002d00 <Add_FR>:
Add_FR():
1c002d00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d04:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d08:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d0c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d10:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002d14:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002d18:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002d1c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002d20:	680515ac 	bltu	$r13,$r12,1300(0x514) # 1c003234 <Add_FR+0x534>
1c002d24:	0040898d 	slli.w	$r13,$r12,0x2
1c002d28:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c002d2c:	0291218c 	addi.w	$r12,$r12,1096(0x448)
1c002d30:	001031ac 	add.w	$r12,$r13,$r12
1c002d34:	2880018c 	ld.w	$r12,$r12,0
1c002d38:	4c000180 	jirl	$r0,$r12,0
1c002d3c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d44:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002d48:	542b4400 	bl	11076(0x2b44) # 1c00588c <OLED_CLS>
1c002d4c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002d50:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002d54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d58:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d5c:	542e8000 	bl	11904(0x2e80) # 1c005bdc <OLED_ShowCN_STR>
1c002d60:	57f8c3ff 	bl	-1856(0xffff8c0) # 1c002620 <PS_GetImage>
1c002d64:	0015008c 	move	$r12,$r4
1c002d68:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002d6c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d70:	44006980 	bnez	$r12,104(0x68) # 1c002dd8 <Add_FR+0xd8>
1c002d74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002d78:	57f937ff 	bl	-1740(0xffff934) # 1c0026ac <PS_GenChar>
1c002d7c:	0015008c 	move	$r12,$r4
1c002d80:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002d84:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d88:	44004180 	bnez	$r12,64(0x40) # 1c002dc8 <Add_FR+0xc8>
1c002d8c:	542b0000 	bl	11008(0x2b00) # 1c00588c <OLED_CLS>
1c002d90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d94:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002d98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d9c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002da0:	542e3c00 	bl	11836(0x2e3c) # 1c005bdc <OLED_ShowCN_STR>
1c002da4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002da8:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002dac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002db0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002db4:	542e2800 	bl	11816(0x2e28) # 1c005bdc <OLED_ShowCN_STR>
1c002db8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002dbc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002dc0:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002dc4:	50047000 	b	1136(0x470) # 1c003234 <Add_FR+0x534>
1c002dc8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002dcc:	00150184 	move	$r4,$r12
1c002dd0:	57fe0bff 	bl	-504(0xffffe08) # 1c002bd8 <ShowErrMessage>
1c002dd4:	50046000 	b	1120(0x460) # 1c003234 <Add_FR+0x534>
1c002dd8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002ddc:	00150184 	move	$r4,$r12
1c002de0:	57fdfbff 	bl	-520(0xffffdf8) # 1c002bd8 <ShowErrMessage>
1c002de4:	50045000 	b	1104(0x450) # 1c003234 <Add_FR+0x534>
1c002de8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002df0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002df4:	542a9800 	bl	10904(0x2a98) # 1c00588c <OLED_CLS>
1c002df8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002dfc:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e00:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e04:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e08:	542dd400 	bl	11732(0x2dd4) # 1c005bdc <OLED_ShowCN_STR>
1c002e0c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e10:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e14:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e18:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e1c:	542dc000 	bl	11712(0x2dc0) # 1c005bdc <OLED_ShowCN_STR>
1c002e20:	57f803ff 	bl	-2048(0xffff800) # 1c002620 <PS_GetImage>
1c002e24:	0015008c 	move	$r12,$r4
1c002e28:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002e2c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e30:	44006980 	bnez	$r12,104(0x68) # 1c002e98 <Add_FR+0x198>
1c002e34:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002e38:	57f877ff 	bl	-1932(0xffff874) # 1c0026ac <PS_GenChar>
1c002e3c:	0015008c 	move	$r12,$r4
1c002e40:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002e44:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e48:	44004180 	bnez	$r12,64(0x40) # 1c002e88 <Add_FR+0x188>
1c002e4c:	542a4000 	bl	10816(0x2a40) # 1c00588c <OLED_CLS>
1c002e50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e54:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e58:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e5c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e60:	542d7c00 	bl	11644(0x2d7c) # 1c005bdc <OLED_ShowCN_STR>
1c002e64:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e68:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e70:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e74:	542d6800 	bl	11624(0x2d68) # 1c005bdc <OLED_ShowCN_STR>
1c002e78:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002e7c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002e80:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e84:	5003b000 	b	944(0x3b0) # 1c003234 <Add_FR+0x534>
1c002e88:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e8c:	00150184 	move	$r4,$r12
1c002e90:	57fd4bff 	bl	-696(0xffffd48) # 1c002bd8 <ShowErrMessage>
1c002e94:	5003a000 	b	928(0x3a0) # 1c003234 <Add_FR+0x534>
1c002e98:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e9c:	00150184 	move	$r4,$r12
1c002ea0:	57fd3bff 	bl	-712(0xffffd38) # 1c002bd8 <ShowErrMessage>
1c002ea4:	50039000 	b	912(0x390) # 1c003234 <Add_FR+0x534>
1c002ea8:	5429e400 	bl	10724(0x29e4) # 1c00588c <OLED_CLS>
1c002eac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002eb0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002eb4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002eb8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002ebc:	542d2000 	bl	11552(0x2d20) # 1c005bdc <OLED_ShowCN_STR>
1c002ec0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002ec4:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002ec8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ecc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002ed0:	542d0c00 	bl	11532(0x2d0c) # 1c005bdc <OLED_ShowCN_STR>
1c002ed4:	57f883ff 	bl	-1920(0xffff880) # 1c002754 <PS_Match>
1c002ed8:	0015008c 	move	$r12,$r4
1c002edc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002ee0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002ee4:	44006980 	bnez	$r12,104(0x68) # 1c002f4c <Add_FR+0x24c>
1c002ee8:	5429a400 	bl	10660(0x29a4) # 1c00588c <OLED_CLS>
1c002eec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ef0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002ef4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ef8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002efc:	542ce000 	bl	11488(0x2ce0) # 1c005bdc <OLED_ShowCN_STR>
1c002f00:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f04:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002f08:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f0c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002f10:	542ccc00 	bl	11468(0x2ccc) # 1c005bdc <OLED_ShowCN_STR>
1c002f14:	54297800 	bl	10616(0x2978) # 1c00588c <OLED_CLS>
1c002f18:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f1c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f20:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f24:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f28:	542cb400 	bl	11444(0x2cb4) # 1c005bdc <OLED_ShowCN_STR>
1c002f2c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f30:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002f34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f38:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f3c:	542ca000 	bl	11424(0x2ca0) # 1c005bdc <OLED_ShowCN_STR>
1c002f40:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f44:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002f48:	5002ec00 	b	748(0x2ec) # 1c003234 <Add_FR+0x534>
1c002f4c:	54294000 	bl	10560(0x2940) # 1c00588c <OLED_CLS>
1c002f50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f54:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f58:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f5c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f60:	542c7c00 	bl	11388(0x2c7c) # 1c005bdc <OLED_ShowCN_STR>
1c002f64:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f68:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002f6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f70:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f74:	542c6800 	bl	11368(0x2c68) # 1c005bdc <OLED_ShowCN_STR>
1c002f78:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f7c:	00150184 	move	$r4,$r12
1c002f80:	57fc5bff 	bl	-936(0xffffc58) # 1c002bd8 <ShowErrMessage>
1c002f84:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002f88:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002f8c:	5002a800 	b	680(0x2a8) # 1c003234 <Add_FR+0x534>
1c002f90:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002f94:	03bfc98c 	ori	$r12,$r12,0xff2
1c002f98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f9c:	50008400 	b	132(0x84) # 1c003020 <Add_FR+0x320>
1c002fa0:	03400000 	andi	$r0,$r0,0x0
1c002fa4:	03400000 	andi	$r0,$r0,0x0
1c002fa8:	03400000 	andi	$r0,$r0,0x0
1c002fac:	03400000 	andi	$r0,$r0,0x0
1c002fb0:	03400000 	andi	$r0,$r0,0x0
1c002fb4:	03400000 	andi	$r0,$r0,0x0
1c002fb8:	03400000 	andi	$r0,$r0,0x0
1c002fbc:	03400000 	andi	$r0,$r0,0x0
1c002fc0:	03400000 	andi	$r0,$r0,0x0
1c002fc4:	03400000 	andi	$r0,$r0,0x0
1c002fc8:	03400000 	andi	$r0,$r0,0x0
1c002fcc:	03400000 	andi	$r0,$r0,0x0
1c002fd0:	03400000 	andi	$r0,$r0,0x0
1c002fd4:	03400000 	andi	$r0,$r0,0x0
1c002fd8:	03400000 	andi	$r0,$r0,0x0
1c002fdc:	03400000 	andi	$r0,$r0,0x0
1c002fe0:	03400000 	andi	$r0,$r0,0x0
1c002fe4:	03400000 	andi	$r0,$r0,0x0
1c002fe8:	03400000 	andi	$r0,$r0,0x0
1c002fec:	03400000 	andi	$r0,$r0,0x0
1c002ff0:	03400000 	andi	$r0,$r0,0x0
1c002ff4:	03400000 	andi	$r0,$r0,0x0
1c002ff8:	03400000 	andi	$r0,$r0,0x0
1c002ffc:	03400000 	andi	$r0,$r0,0x0
1c003000:	03400000 	andi	$r0,$r0,0x0
1c003004:	03400000 	andi	$r0,$r0,0x0
1c003008:	03400000 	andi	$r0,$r0,0x0
1c00300c:	03400000 	andi	$r0,$r0,0x0
1c003010:	03400000 	andi	$r0,$r0,0x0
1c003014:	03400000 	andi	$r0,$r0,0x0
1c003018:	03400000 	andi	$r0,$r0,0x0
1c00301c:	03400000 	andi	$r0,$r0,0x0
1c003020:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003024:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003028:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00302c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002fa0 <Add_FR+0x2a0>
1c003030:	57f7b3ff 	bl	-2128(0xffff7b0) # 1c0027e0 <PS_RegModel>
1c003034:	0015008c 	move	$r12,$r4
1c003038:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00303c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003040:	44001180 	bnez	$r12,16(0x10) # 1c003050 <Add_FR+0x350>
1c003044:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c003048:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00304c:	5001e800 	b	488(0x1e8) # 1c003234 <Add_FR+0x534>
1c003050:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c003054:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003058:	00150184 	move	$r4,$r12
1c00305c:	57fb7fff 	bl	-1156(0xffffb7c) # 1c002bd8 <ShowErrMessage>
1c003060:	5001d400 	b	468(0x1d4) # 1c003234 <Add_FR+0x534>
1c003064:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003068:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00306c:	50009000 	b	144(0x90) # 1c0030fc <Add_FR+0x3fc>
1c003070:	54089800 	bl	2200(0x898) # 1c003908 <MatrixKey>
1c003074:	0015008c 	move	$r12,$r4
1c003078:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00307c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003080:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003084:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0030a0 <Add_FR+0x3a0>
1c003088:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00308c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003090:	40001180 	beqz	$r12,16(0x10) # 1c0030a0 <Add_FR+0x3a0>
1c003094:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003098:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00309c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0030a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0030a4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0030a8:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0030c8 <Add_FR+0x3c8>
1c0030ac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0030b0:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0030b4:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c0030b8:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c0030c8 <Add_FR+0x3c8>
1c0030bc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0030c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030c4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0030c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0030cc:	1c000106 	pcaddu12i	$r6,8(0x8)
1c0030d0:	028280c6 	addi.w	$r6,$r6,160(0xa0)
1c0030d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0030d8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0030dc:	5427dc00 	bl	10204(0x27dc) # 1c0058b8 <OLED_ShowStr>
1c0030e0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0030e4:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0030e8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0030ec:	00150186 	move	$r6,$r12
1c0030f0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0030f4:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c0030f8:	542e2c00 	bl	11820(0x2e2c) # 1c005f24 <OLED_ShowNum>
1c0030fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003100:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003104:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c003070 <Add_FR+0x370>
1c003108:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00310c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003110:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003114:	00150185 	move	$r5,$r12
1c003118:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00311c:	57f753ff 	bl	-2224(0xffff750) # 1c00286c <PS_StoreChar>
1c003120:	0015008c 	move	$r12,$r4
1c003124:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003128:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00312c:	4400f580 	bnez	$r12,244(0xf4) # 1c003220 <Add_FR+0x520>
1c003130:	54275c00 	bl	10076(0x275c) # 1c00588c <OLED_CLS>
1c003134:	02801807 	addi.w	$r7,$r0,6(0x6)
1c003138:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c00313c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003140:	02802804 	addi.w	$r4,$r0,10(0xa)
1c003144:	542a9800 	bl	10904(0x2a98) # 1c005bdc <OLED_ShowCN_STR>
1c003148:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00314c:	1c000106 	pcaddu12i	$r6,8(0x8)
1c003150:	028080c6 	addi.w	$r6,$r6,32(0x20)
1c003154:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003158:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00315c:	54275c00 	bl	10076(0x275c) # 1c0058b8 <OLED_ShowStr>
1c003160:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003164:	02804008 	addi.w	$r8,$r0,16(0x10)
1c003168:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00316c:	00150186 	move	$r6,$r12
1c003170:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003174:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c003178:	542dac00 	bl	11692(0x2dac) # 1c005f24 <OLED_ShowNum>
1c00317c:	14002aac 	lu12i.w	$r12,341(0x155)
1c003180:	03bf598c 	ori	$r12,$r12,0xfd6
1c003184:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003188:	50008400 	b	132(0x84) # 1c00320c <Add_FR+0x50c>
1c00318c:	03400000 	andi	$r0,$r0,0x0
1c003190:	03400000 	andi	$r0,$r0,0x0
1c003194:	03400000 	andi	$r0,$r0,0x0
1c003198:	03400000 	andi	$r0,$r0,0x0
1c00319c:	03400000 	andi	$r0,$r0,0x0
1c0031a0:	03400000 	andi	$r0,$r0,0x0
1c0031a4:	03400000 	andi	$r0,$r0,0x0
1c0031a8:	03400000 	andi	$r0,$r0,0x0
1c0031ac:	03400000 	andi	$r0,$r0,0x0
1c0031b0:	03400000 	andi	$r0,$r0,0x0
1c0031b4:	03400000 	andi	$r0,$r0,0x0
1c0031b8:	03400000 	andi	$r0,$r0,0x0
1c0031bc:	03400000 	andi	$r0,$r0,0x0
1c0031c0:	03400000 	andi	$r0,$r0,0x0
1c0031c4:	03400000 	andi	$r0,$r0,0x0
1c0031c8:	03400000 	andi	$r0,$r0,0x0
1c0031cc:	03400000 	andi	$r0,$r0,0x0
1c0031d0:	03400000 	andi	$r0,$r0,0x0
1c0031d4:	03400000 	andi	$r0,$r0,0x0
1c0031d8:	03400000 	andi	$r0,$r0,0x0
1c0031dc:	03400000 	andi	$r0,$r0,0x0
1c0031e0:	03400000 	andi	$r0,$r0,0x0
1c0031e4:	03400000 	andi	$r0,$r0,0x0
1c0031e8:	03400000 	andi	$r0,$r0,0x0
1c0031ec:	03400000 	andi	$r0,$r0,0x0
1c0031f0:	03400000 	andi	$r0,$r0,0x0
1c0031f4:	03400000 	andi	$r0,$r0,0x0
1c0031f8:	03400000 	andi	$r0,$r0,0x0
1c0031fc:	03400000 	andi	$r0,$r0,0x0
1c003200:	03400000 	andi	$r0,$r0,0x0
1c003204:	03400000 	andi	$r0,$r0,0x0
1c003208:	03400000 	andi	$r0,$r0,0x0
1c00320c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003210:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003214:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003218:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00318c <Add_FR+0x48c>
1c00321c:	5000cc00 	b	204(0xcc) # 1c0032e8 <Add_FR+0x5e8>
1c003220:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c003224:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003228:	00150184 	move	$r4,$r12
1c00322c:	57f9afff 	bl	-1620(0xffff9ac) # 1c002bd8 <ShowErrMessage>
1c003230:	03400000 	andi	$r0,$r0,0x0
1c003234:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003238:	03bfc98c 	ori	$r12,$r12,0xff2
1c00323c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003240:	50008400 	b	132(0x84) # 1c0032c4 <Add_FR+0x5c4>
1c003244:	03400000 	andi	$r0,$r0,0x0
1c003248:	03400000 	andi	$r0,$r0,0x0
1c00324c:	03400000 	andi	$r0,$r0,0x0
1c003250:	03400000 	andi	$r0,$r0,0x0
1c003254:	03400000 	andi	$r0,$r0,0x0
1c003258:	03400000 	andi	$r0,$r0,0x0
1c00325c:	03400000 	andi	$r0,$r0,0x0
1c003260:	03400000 	andi	$r0,$r0,0x0
1c003264:	03400000 	andi	$r0,$r0,0x0
1c003268:	03400000 	andi	$r0,$r0,0x0
1c00326c:	03400000 	andi	$r0,$r0,0x0
1c003270:	03400000 	andi	$r0,$r0,0x0
1c003274:	03400000 	andi	$r0,$r0,0x0
1c003278:	03400000 	andi	$r0,$r0,0x0
1c00327c:	03400000 	andi	$r0,$r0,0x0
1c003280:	03400000 	andi	$r0,$r0,0x0
1c003284:	03400000 	andi	$r0,$r0,0x0
1c003288:	03400000 	andi	$r0,$r0,0x0
1c00328c:	03400000 	andi	$r0,$r0,0x0
1c003290:	03400000 	andi	$r0,$r0,0x0
1c003294:	03400000 	andi	$r0,$r0,0x0
1c003298:	03400000 	andi	$r0,$r0,0x0
1c00329c:	03400000 	andi	$r0,$r0,0x0
1c0032a0:	03400000 	andi	$r0,$r0,0x0
1c0032a4:	03400000 	andi	$r0,$r0,0x0
1c0032a8:	03400000 	andi	$r0,$r0,0x0
1c0032ac:	03400000 	andi	$r0,$r0,0x0
1c0032b0:	03400000 	andi	$r0,$r0,0x0
1c0032b4:	03400000 	andi	$r0,$r0,0x0
1c0032b8:	03400000 	andi	$r0,$r0,0x0
1c0032bc:	03400000 	andi	$r0,$r0,0x0
1c0032c0:	03400000 	andi	$r0,$r0,0x0
1c0032c4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0032c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032cc:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0032d0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003244 <Add_FR+0x544>
1c0032d4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0032d8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0032dc:	580009ac 	beq	$r13,$r12,8(0x8) # 1c0032e4 <Add_FR+0x5e4>
1c0032e0:	53fa3bff 	b	-1480(0xffffa38) # 1c002d18 <Add_FR+0x18>
1c0032e4:	03400000 	andi	$r0,$r0,0x0
1c0032e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0032ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0032f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032f4:	4c000020 	jirl	$r0,$r1,0

1c0032f8 <press_FR>:
press_FR():
1c0032f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0032fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003300:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003304:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003308:	54258400 	bl	9604(0x2584) # 1c00588c <OLED_CLS>
1c00330c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003310:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003314:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003318:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00331c:	5428c000 	bl	10432(0x28c0) # 1c005bdc <OLED_ShowCN_STR>
1c003320:	57f303ff 	bl	-3328(0xffff300) # 1c002620 <PS_GetImage>
1c003324:	0015008c 	move	$r12,$r4
1c003328:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00332c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c003330:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003320 <press_FR+0x28>
1c003334:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003338:	57f377ff 	bl	-3212(0xffff374) # 1c0026ac <PS_GenChar>
1c00333c:	0015008c 	move	$r12,$r4
1c003340:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c003344:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c003348:	44024580 	bnez	$r12,580(0x244) # 1c00358c <press_FR+0x294>
1c00334c:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c003350:	00150187 	move	$r7,$r12
1c003354:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c003358:	00150005 	move	$r5,$r0
1c00335c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003360:	57f6a7ff 	bl	-2396(0xffff6a4) # 1c002a04 <PS_HighSpeedSearch>
1c003364:	0015008c 	move	$r12,$r4
1c003368:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00336c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c003370:	44016d80 	bnez	$r12,364(0x16c) # 1c0034dc <press_FR+0x1e4>
1c003374:	54251800 	bl	9496(0x2518) # 1c00588c <OLED_CLS>
1c003378:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00337c:	54507000 	bl	20592(0x5070) # 1c0083ec <interface_display>
1c003380:	54038400 	bl	900(0x384) # 1c003704 <SG90_Open>
1c003384:	541fe000 	bl	8160(0x1fe0) # 1c005364 <Buzzer_one>
1c003388:	1400472c 	lu12i.w	$r12,569(0x239)
1c00338c:	03bee58c 	ori	$r12,$r12,0xfb9
1c003390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003394:	50008400 	b	132(0x84) # 1c003418 <press_FR+0x120>
1c003398:	03400000 	andi	$r0,$r0,0x0
1c00339c:	03400000 	andi	$r0,$r0,0x0
1c0033a0:	03400000 	andi	$r0,$r0,0x0
1c0033a4:	03400000 	andi	$r0,$r0,0x0
1c0033a8:	03400000 	andi	$r0,$r0,0x0
1c0033ac:	03400000 	andi	$r0,$r0,0x0
1c0033b0:	03400000 	andi	$r0,$r0,0x0
1c0033b4:	03400000 	andi	$r0,$r0,0x0
1c0033b8:	03400000 	andi	$r0,$r0,0x0
1c0033bc:	03400000 	andi	$r0,$r0,0x0
1c0033c0:	03400000 	andi	$r0,$r0,0x0
1c0033c4:	03400000 	andi	$r0,$r0,0x0
1c0033c8:	03400000 	andi	$r0,$r0,0x0
1c0033cc:	03400000 	andi	$r0,$r0,0x0
1c0033d0:	03400000 	andi	$r0,$r0,0x0
1c0033d4:	03400000 	andi	$r0,$r0,0x0
1c0033d8:	03400000 	andi	$r0,$r0,0x0
1c0033dc:	03400000 	andi	$r0,$r0,0x0
1c0033e0:	03400000 	andi	$r0,$r0,0x0
1c0033e4:	03400000 	andi	$r0,$r0,0x0
1c0033e8:	03400000 	andi	$r0,$r0,0x0
1c0033ec:	03400000 	andi	$r0,$r0,0x0
1c0033f0:	03400000 	andi	$r0,$r0,0x0
1c0033f4:	03400000 	andi	$r0,$r0,0x0
1c0033f8:	03400000 	andi	$r0,$r0,0x0
1c0033fc:	03400000 	andi	$r0,$r0,0x0
1c003400:	03400000 	andi	$r0,$r0,0x0
1c003404:	03400000 	andi	$r0,$r0,0x0
1c003408:	03400000 	andi	$r0,$r0,0x0
1c00340c:	03400000 	andi	$r0,$r0,0x0
1c003410:	03400000 	andi	$r0,$r0,0x0
1c003414:	03400000 	andi	$r0,$r0,0x0
1c003418:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00341c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003420:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003424:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003398 <press_FR+0xa0>
1c003428:	541f3c00 	bl	7996(0x1f3c) # 1c005364 <Buzzer_one>
1c00342c:	54030400 	bl	772(0x304) # 1c003730 <SG90_Close>
1c003430:	02802404 	addi.w	$r4,$r0,9(0x9)
1c003434:	544fb800 	bl	20408(0x4fb8) # 1c0083ec <interface_display>
1c003438:	1400472c 	lu12i.w	$r12,569(0x239)
1c00343c:	03bee58c 	ori	$r12,$r12,0xfb9
1c003440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003444:	50008400 	b	132(0x84) # 1c0034c8 <press_FR+0x1d0>
1c003448:	03400000 	andi	$r0,$r0,0x0
1c00344c:	03400000 	andi	$r0,$r0,0x0
1c003450:	03400000 	andi	$r0,$r0,0x0
1c003454:	03400000 	andi	$r0,$r0,0x0
1c003458:	03400000 	andi	$r0,$r0,0x0
1c00345c:	03400000 	andi	$r0,$r0,0x0
1c003460:	03400000 	andi	$r0,$r0,0x0
1c003464:	03400000 	andi	$r0,$r0,0x0
1c003468:	03400000 	andi	$r0,$r0,0x0
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	03400000 	andi	$r0,$r0,0x0
1c003474:	03400000 	andi	$r0,$r0,0x0
1c003478:	03400000 	andi	$r0,$r0,0x0
1c00347c:	03400000 	andi	$r0,$r0,0x0
1c003480:	03400000 	andi	$r0,$r0,0x0
1c003484:	03400000 	andi	$r0,$r0,0x0
1c003488:	03400000 	andi	$r0,$r0,0x0
1c00348c:	03400000 	andi	$r0,$r0,0x0
1c003490:	03400000 	andi	$r0,$r0,0x0
1c003494:	03400000 	andi	$r0,$r0,0x0
1c003498:	03400000 	andi	$r0,$r0,0x0
1c00349c:	03400000 	andi	$r0,$r0,0x0
1c0034a0:	03400000 	andi	$r0,$r0,0x0
1c0034a4:	03400000 	andi	$r0,$r0,0x0
1c0034a8:	03400000 	andi	$r0,$r0,0x0
1c0034ac:	03400000 	andi	$r0,$r0,0x0
1c0034b0:	03400000 	andi	$r0,$r0,0x0
1c0034b4:	03400000 	andi	$r0,$r0,0x0
1c0034b8:	03400000 	andi	$r0,$r0,0x0
1c0034bc:	03400000 	andi	$r0,$r0,0x0
1c0034c0:	03400000 	andi	$r0,$r0,0x0
1c0034c4:	03400000 	andi	$r0,$r0,0x0
1c0034c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0034cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034d0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0034d4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003448 <press_FR+0x150>
1c0034d8:	5000d000 	b	208(0xd0) # 1c0035a8 <press_FR+0x2b0>
1c0034dc:	5423b000 	bl	9136(0x23b0) # 1c00588c <OLED_CLS>
1c0034e0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0034e4:	544f0800 	bl	20232(0x4f08) # 1c0083ec <interface_display>
1c0034e8:	541c4800 	bl	7240(0x1c48) # 1c005130 <Buzzer>
1c0034ec:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0034f0:	03bf918c 	ori	$r12,$r12,0xfe4
1c0034f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0034f8:	50008400 	b	132(0x84) # 1c00357c <press_FR+0x284>
1c0034fc:	03400000 	andi	$r0,$r0,0x0
1c003500:	03400000 	andi	$r0,$r0,0x0
1c003504:	03400000 	andi	$r0,$r0,0x0
1c003508:	03400000 	andi	$r0,$r0,0x0
1c00350c:	03400000 	andi	$r0,$r0,0x0
1c003510:	03400000 	andi	$r0,$r0,0x0
1c003514:	03400000 	andi	$r0,$r0,0x0
1c003518:	03400000 	andi	$r0,$r0,0x0
1c00351c:	03400000 	andi	$r0,$r0,0x0
1c003520:	03400000 	andi	$r0,$r0,0x0
1c003524:	03400000 	andi	$r0,$r0,0x0
1c003528:	03400000 	andi	$r0,$r0,0x0
1c00352c:	03400000 	andi	$r0,$r0,0x0
1c003530:	03400000 	andi	$r0,$r0,0x0
1c003534:	03400000 	andi	$r0,$r0,0x0
1c003538:	03400000 	andi	$r0,$r0,0x0
1c00353c:	03400000 	andi	$r0,$r0,0x0
1c003540:	03400000 	andi	$r0,$r0,0x0
1c003544:	03400000 	andi	$r0,$r0,0x0
1c003548:	03400000 	andi	$r0,$r0,0x0
1c00354c:	03400000 	andi	$r0,$r0,0x0
1c003550:	03400000 	andi	$r0,$r0,0x0
1c003554:	03400000 	andi	$r0,$r0,0x0
1c003558:	03400000 	andi	$r0,$r0,0x0
1c00355c:	03400000 	andi	$r0,$r0,0x0
1c003560:	03400000 	andi	$r0,$r0,0x0
1c003564:	03400000 	andi	$r0,$r0,0x0
1c003568:	03400000 	andi	$r0,$r0,0x0
1c00356c:	03400000 	andi	$r0,$r0,0x0
1c003570:	03400000 	andi	$r0,$r0,0x0
1c003574:	03400000 	andi	$r0,$r0,0x0
1c003578:	03400000 	andi	$r0,$r0,0x0
1c00357c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003580:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003584:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003588:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0034fc <press_FR+0x204>
1c00358c:	54230000 	bl	8960(0x2300) # 1c00588c <OLED_CLS>
1c003590:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003594:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003598:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00359c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0035a0:	54263c00 	bl	9788(0x263c) # 1c005bdc <OLED_ShowCN_STR>
1c0035a4:	53fd7fff 	b	-644(0xffffd7c) # 1c003320 <press_FR+0x28>
1c0035a8:	03400000 	andi	$r0,$r0,0x0
1c0035ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035b8:	4c000020 	jirl	$r0,$r1,0

1c0035bc <Del_FR_Lib>:
Del_FR_Lib():
1c0035bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035cc:	57f3afff 	bl	-3156(0xffff3ac) # 1c002978 <PS_Empty>
1c0035d0:	0015008c 	move	$r12,$r4
1c0035d4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0035d8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0035dc:	44000d80 	bnez	$r12,12(0xc) # 1c0035e8 <Del_FR_Lib+0x2c>
1c0035e0:	541b5000 	bl	6992(0x1b50) # 1c005130 <Buzzer>
1c0035e4:	50001000 	b	16(0x10) # 1c0035f4 <Del_FR_Lib+0x38>
1c0035e8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0035ec:	00150184 	move	$r4,$r12
1c0035f0:	57f5ebff 	bl	-2584(0xffff5e8) # 1c002bd8 <ShowErrMessage>
1c0035f4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0035f8:	03bf918c 	ori	$r12,$r12,0xfe4
1c0035fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003600:	50008400 	b	132(0x84) # 1c003684 <Del_FR_Lib+0xc8>
1c003604:	03400000 	andi	$r0,$r0,0x0
1c003608:	03400000 	andi	$r0,$r0,0x0
1c00360c:	03400000 	andi	$r0,$r0,0x0
1c003610:	03400000 	andi	$r0,$r0,0x0
1c003614:	03400000 	andi	$r0,$r0,0x0
1c003618:	03400000 	andi	$r0,$r0,0x0
1c00361c:	03400000 	andi	$r0,$r0,0x0
1c003620:	03400000 	andi	$r0,$r0,0x0
1c003624:	03400000 	andi	$r0,$r0,0x0
1c003628:	03400000 	andi	$r0,$r0,0x0
1c00362c:	03400000 	andi	$r0,$r0,0x0
1c003630:	03400000 	andi	$r0,$r0,0x0
1c003634:	03400000 	andi	$r0,$r0,0x0
1c003638:	03400000 	andi	$r0,$r0,0x0
1c00363c:	03400000 	andi	$r0,$r0,0x0
1c003640:	03400000 	andi	$r0,$r0,0x0
1c003644:	03400000 	andi	$r0,$r0,0x0
1c003648:	03400000 	andi	$r0,$r0,0x0
1c00364c:	03400000 	andi	$r0,$r0,0x0
1c003650:	03400000 	andi	$r0,$r0,0x0
1c003654:	03400000 	andi	$r0,$r0,0x0
1c003658:	03400000 	andi	$r0,$r0,0x0
1c00365c:	03400000 	andi	$r0,$r0,0x0
1c003660:	03400000 	andi	$r0,$r0,0x0
1c003664:	03400000 	andi	$r0,$r0,0x0
1c003668:	03400000 	andi	$r0,$r0,0x0
1c00366c:	03400000 	andi	$r0,$r0,0x0
1c003670:	03400000 	andi	$r0,$r0,0x0
1c003674:	03400000 	andi	$r0,$r0,0x0
1c003678:	03400000 	andi	$r0,$r0,0x0
1c00367c:	03400000 	andi	$r0,$r0,0x0
1c003680:	03400000 	andi	$r0,$r0,0x0
1c003684:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003688:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00368c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003690:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003604 <Del_FR_Lib+0x48>
1c003694:	03400000 	andi	$r0,$r0,0x0
1c003698:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00369c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036a4:	4c000020 	jirl	$r0,$r1,0

1c0036a8 <SG90_GetAngle>:
SG90_GetAngle():
1c0036a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0036b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0036b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0036bc:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0036c0:	57e6dfff 	bl	-6436(0xfffe6dc) # 1c001d9c <pwm_steering_engine_set>
1c0036c4:	03400000 	andi	$r0,$r0,0x0
1c0036c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0036cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0036d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036d4:	4c000020 	jirl	$r0,$r1,0

1c0036d8 <SG90_Init>:
SG90_Init():
1c0036d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0036e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0036e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036e8:	00150004 	move	$r4,$r0
1c0036ec:	57ffbfff 	bl	-68(0xfffffbc) # 1c0036a8 <SG90_GetAngle>
1c0036f0:	03400000 	andi	$r0,$r0,0x0
1c0036f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0036f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0036fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003700:	4c000020 	jirl	$r0,$r1,0

1c003704 <SG90_Open>:
SG90_Open():
1c003704:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003708:	29803061 	st.w	$r1,$r3,12(0xc)
1c00370c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003710:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003714:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c003718:	57ff93ff 	bl	-112(0xfffff90) # 1c0036a8 <SG90_GetAngle>
1c00371c:	03400000 	andi	$r0,$r0,0x0
1c003720:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003724:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003728:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00372c:	4c000020 	jirl	$r0,$r1,0

1c003730 <SG90_Close>:
SG90_Close():
1c003730:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003734:	29803061 	st.w	$r1,$r3,12(0xc)
1c003738:	29802076 	st.w	$r22,$r3,8(0x8)
1c00373c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003740:	00150004 	move	$r4,$r0
1c003744:	57ff67ff 	bl	-156(0xfffff64) # 1c0036a8 <SG90_GetAngle>
1c003748:	03400000 	andi	$r0,$r0,0x0
1c00374c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003750:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003754:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003758:	4c000020 	jirl	$r0,$r1,0

1c00375c <hw_uart_init>:
hw_uart_init():
1c00375c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003760:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003764:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003768:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00376c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003770:	02a3018c 	addi.w	$r12,$r12,-1856(0x8c0)
1c003774:	2880018e 	ld.w	$r14,$r12,0
1c003778:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00377c:	002135cc 	div.wu	$r12,$r14,$r13
1c003780:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003788 <hw_uart_init+0x2c>
1c003784:	002a0007 	break	0x7
1c003788:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00378c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003790:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003794:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c003798:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00379c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037a0:	0044a18d 	srli.w	$r13,$r12,0x8
1c0037a4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0037a8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0037ac:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0037b0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0037b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037b8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0037bc:	2900018d 	st.b	$r13,$r12,0
1c0037c0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0037c4:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c0037c8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0037cc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0037d0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0037d4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0037d8:	03400000 	andi	$r0,$r0,0x0
1c0037dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037e4:	4c000020 	jirl	$r0,$r1,0

1c0037e8 <uart_write>:
uart_write():
1c0037e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0037f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037f4:	0015008c 	move	$r12,$r4
1c0037f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0037fc:	03400000 	andi	$r0,$r0,0x0
1c003800:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003804:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c003808:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00380c:	0340818c 	andi	$r12,$r12,0x20
1c003810:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c003800 <uart_write+0x18>
1c003814:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003818:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00381c:	2900018d 	st.b	$r13,$r12,0
1c003820:	03400000 	andi	$r0,$r0,0x0
1c003824:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003828:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00382c:	4c000020 	jirl	$r0,$r1,0

1c003830 <uart_set_rx_th>:
uart_set_rx_th():
1c003830:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003834:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003838:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00383c:	0015008c 	move	$r12,$r4
1c003840:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003844:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003848:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00384c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003858 <uart_set_rx_th+0x28>
1c003850:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003854:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003858:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00385c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003860:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003864:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003868:	0340fdad 	andi	$r13,$r13,0x3f
1c00386c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003870:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003874:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003878:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00387c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003880:	00005d8d 	ext.w.b	$r13,$r12
1c003884:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003888:	0040998c 	slli.w	$r12,$r12,0x6
1c00388c:	00005d8c 	ext.w.b	$r12,$r12
1c003890:	001531ac 	or	$r12,$r13,$r12
1c003894:	00005d8d 	ext.w.b	$r13,$r12
1c003898:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00389c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0038a0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0038a4:	03400000 	andi	$r0,$r0,0x0
1c0038a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0038ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038b0:	4c000020 	jirl	$r0,$r1,0

1c0038b4 <clkey>:
clkey():
1c0038b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0038c8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0038cc:	57e05fff 	bl	-8100(0xfffe05c) # 1c001928 <gpio_write>
1c0038d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0038d4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0038d8:	57e053ff 	bl	-8112(0xfffe050) # 1c001928 <gpio_write>
1c0038dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0038e0:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0038e4:	57e047ff 	bl	-8124(0xfffe044) # 1c001928 <gpio_write>
1c0038e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0038ec:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0038f0:	57e03bff 	bl	-8136(0xfffe038) # 1c001928 <gpio_write>
1c0038f4:	03400000 	andi	$r0,$r0,0x0
1c0038f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003900:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003904:	4c000020 	jirl	$r0,$r1,0

1c003908 <MatrixKey>:
MatrixKey():
1c003908:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c00390c:	29827061 	st.w	$r1,$r3,156(0x9c)
1c003910:	29826076 	st.w	$r22,$r3,152(0x98)
1c003914:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c003918:	57ff9fff 	bl	-100(0xfffff9c) # 1c0038b4 <clkey>
1c00391c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003920:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003924:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003928:	50008400 	b	132(0x84) # 1c0039ac <MatrixKey+0xa4>
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	03400000 	andi	$r0,$r0,0x0
1c003934:	03400000 	andi	$r0,$r0,0x0
1c003938:	03400000 	andi	$r0,$r0,0x0
1c00393c:	03400000 	andi	$r0,$r0,0x0
1c003940:	03400000 	andi	$r0,$r0,0x0
1c003944:	03400000 	andi	$r0,$r0,0x0
1c003948:	03400000 	andi	$r0,$r0,0x0
1c00394c:	03400000 	andi	$r0,$r0,0x0
1c003950:	03400000 	andi	$r0,$r0,0x0
1c003954:	03400000 	andi	$r0,$r0,0x0
1c003958:	03400000 	andi	$r0,$r0,0x0
1c00395c:	03400000 	andi	$r0,$r0,0x0
1c003960:	03400000 	andi	$r0,$r0,0x0
1c003964:	03400000 	andi	$r0,$r0,0x0
1c003968:	03400000 	andi	$r0,$r0,0x0
1c00396c:	03400000 	andi	$r0,$r0,0x0
1c003970:	03400000 	andi	$r0,$r0,0x0
1c003974:	03400000 	andi	$r0,$r0,0x0
1c003978:	03400000 	andi	$r0,$r0,0x0
1c00397c:	03400000 	andi	$r0,$r0,0x0
1c003980:	03400000 	andi	$r0,$r0,0x0
1c003984:	03400000 	andi	$r0,$r0,0x0
1c003988:	03400000 	andi	$r0,$r0,0x0
1c00398c:	03400000 	andi	$r0,$r0,0x0
1c003990:	03400000 	andi	$r0,$r0,0x0
1c003994:	03400000 	andi	$r0,$r0,0x0
1c003998:	03400000 	andi	$r0,$r0,0x0
1c00399c:	03400000 	andi	$r0,$r0,0x0
1c0039a0:	03400000 	andi	$r0,$r0,0x0
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	03400000 	andi	$r0,$r0,0x0
1c0039ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039b4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0039b8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00392c <MatrixKey+0x24>
1c0039bc:	00150005 	move	$r5,$r0
1c0039c0:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0039c4:	57df67ff 	bl	-8348(0xfffdf64) # 1c001928 <gpio_write>
1c0039c8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0039cc:	57e057ff 	bl	-8108(0xfffe054) # 1c001a20 <gpio_read>
1c0039d0:	0015008c 	move	$r12,$r4
1c0039d4:	44016180 	bnez	$r12,352(0x160) # 1c003b34 <MatrixKey+0x22c>
1c0039d8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0039dc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0039e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0039e4:	50008400 	b	132(0x84) # 1c003a68 <MatrixKey+0x160>
1c0039e8:	03400000 	andi	$r0,$r0,0x0
1c0039ec:	03400000 	andi	$r0,$r0,0x0
1c0039f0:	03400000 	andi	$r0,$r0,0x0
1c0039f4:	03400000 	andi	$r0,$r0,0x0
1c0039f8:	03400000 	andi	$r0,$r0,0x0
1c0039fc:	03400000 	andi	$r0,$r0,0x0
1c003a00:	03400000 	andi	$r0,$r0,0x0
1c003a04:	03400000 	andi	$r0,$r0,0x0
1c003a08:	03400000 	andi	$r0,$r0,0x0
1c003a0c:	03400000 	andi	$r0,$r0,0x0
1c003a10:	03400000 	andi	$r0,$r0,0x0
1c003a14:	03400000 	andi	$r0,$r0,0x0
1c003a18:	03400000 	andi	$r0,$r0,0x0
1c003a1c:	03400000 	andi	$r0,$r0,0x0
1c003a20:	03400000 	andi	$r0,$r0,0x0
1c003a24:	03400000 	andi	$r0,$r0,0x0
1c003a28:	03400000 	andi	$r0,$r0,0x0
1c003a2c:	03400000 	andi	$r0,$r0,0x0
1c003a30:	03400000 	andi	$r0,$r0,0x0
1c003a34:	03400000 	andi	$r0,$r0,0x0
1c003a38:	03400000 	andi	$r0,$r0,0x0
1c003a3c:	03400000 	andi	$r0,$r0,0x0
1c003a40:	03400000 	andi	$r0,$r0,0x0
1c003a44:	03400000 	andi	$r0,$r0,0x0
1c003a48:	03400000 	andi	$r0,$r0,0x0
1c003a4c:	03400000 	andi	$r0,$r0,0x0
1c003a50:	03400000 	andi	$r0,$r0,0x0
1c003a54:	03400000 	andi	$r0,$r0,0x0
1c003a58:	03400000 	andi	$r0,$r0,0x0
1c003a5c:	03400000 	andi	$r0,$r0,0x0
1c003a60:	03400000 	andi	$r0,$r0,0x0
1c003a64:	03400000 	andi	$r0,$r0,0x0
1c003a68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a6c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a70:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003a74:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0039e8 <MatrixKey+0xe0>
1c003a78:	03400000 	andi	$r0,$r0,0x0
1c003a7c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003a80:	57dfa3ff 	bl	-8288(0xfffdfa0) # 1c001a20 <gpio_read>
1c003a84:	0015008c 	move	$r12,$r4
1c003a88:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003a7c <MatrixKey+0x174>
1c003a8c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a90:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a94:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003a98:	50008400 	b	132(0x84) # 1c003b1c <MatrixKey+0x214>
1c003a9c:	03400000 	andi	$r0,$r0,0x0
1c003aa0:	03400000 	andi	$r0,$r0,0x0
1c003aa4:	03400000 	andi	$r0,$r0,0x0
1c003aa8:	03400000 	andi	$r0,$r0,0x0
1c003aac:	03400000 	andi	$r0,$r0,0x0
1c003ab0:	03400000 	andi	$r0,$r0,0x0
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	03400000 	andi	$r0,$r0,0x0
1c003abc:	03400000 	andi	$r0,$r0,0x0
1c003ac0:	03400000 	andi	$r0,$r0,0x0
1c003ac4:	03400000 	andi	$r0,$r0,0x0
1c003ac8:	03400000 	andi	$r0,$r0,0x0
1c003acc:	03400000 	andi	$r0,$r0,0x0
1c003ad0:	03400000 	andi	$r0,$r0,0x0
1c003ad4:	03400000 	andi	$r0,$r0,0x0
1c003ad8:	03400000 	andi	$r0,$r0,0x0
1c003adc:	03400000 	andi	$r0,$r0,0x0
1c003ae0:	03400000 	andi	$r0,$r0,0x0
1c003ae4:	03400000 	andi	$r0,$r0,0x0
1c003ae8:	03400000 	andi	$r0,$r0,0x0
1c003aec:	03400000 	andi	$r0,$r0,0x0
1c003af0:	03400000 	andi	$r0,$r0,0x0
1c003af4:	03400000 	andi	$r0,$r0,0x0
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	03400000 	andi	$r0,$r0,0x0
1c003b00:	03400000 	andi	$r0,$r0,0x0
1c003b04:	03400000 	andi	$r0,$r0,0x0
1c003b08:	03400000 	andi	$r0,$r0,0x0
1c003b0c:	03400000 	andi	$r0,$r0,0x0
1c003b10:	03400000 	andi	$r0,$r0,0x0
1c003b14:	03400000 	andi	$r0,$r0,0x0
1c003b18:	03400000 	andi	$r0,$r0,0x0
1c003b1c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003b20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b24:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003b28:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003a9c <MatrixKey+0x194>
1c003b2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003b30:	50158c00 	b	5516(0x158c) # 1c0050bc <MatrixKey+0x17b4>
1c003b34:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003b38:	57deebff 	bl	-8472(0xfffdee8) # 1c001a20 <gpio_read>
1c003b3c:	0015008c 	move	$r12,$r4
1c003b40:	44016180 	bnez	$r12,352(0x160) # 1c003ca0 <MatrixKey+0x398>
1c003b44:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b48:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b4c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003b50:	50008400 	b	132(0x84) # 1c003bd4 <MatrixKey+0x2cc>
1c003b54:	03400000 	andi	$r0,$r0,0x0
1c003b58:	03400000 	andi	$r0,$r0,0x0
1c003b5c:	03400000 	andi	$r0,$r0,0x0
1c003b60:	03400000 	andi	$r0,$r0,0x0
1c003b64:	03400000 	andi	$r0,$r0,0x0
1c003b68:	03400000 	andi	$r0,$r0,0x0
1c003b6c:	03400000 	andi	$r0,$r0,0x0
1c003b70:	03400000 	andi	$r0,$r0,0x0
1c003b74:	03400000 	andi	$r0,$r0,0x0
1c003b78:	03400000 	andi	$r0,$r0,0x0
1c003b7c:	03400000 	andi	$r0,$r0,0x0
1c003b80:	03400000 	andi	$r0,$r0,0x0
1c003b84:	03400000 	andi	$r0,$r0,0x0
1c003b88:	03400000 	andi	$r0,$r0,0x0
1c003b8c:	03400000 	andi	$r0,$r0,0x0
1c003b90:	03400000 	andi	$r0,$r0,0x0
1c003b94:	03400000 	andi	$r0,$r0,0x0
1c003b98:	03400000 	andi	$r0,$r0,0x0
1c003b9c:	03400000 	andi	$r0,$r0,0x0
1c003ba0:	03400000 	andi	$r0,$r0,0x0
1c003ba4:	03400000 	andi	$r0,$r0,0x0
1c003ba8:	03400000 	andi	$r0,$r0,0x0
1c003bac:	03400000 	andi	$r0,$r0,0x0
1c003bb0:	03400000 	andi	$r0,$r0,0x0
1c003bb4:	03400000 	andi	$r0,$r0,0x0
1c003bb8:	03400000 	andi	$r0,$r0,0x0
1c003bbc:	03400000 	andi	$r0,$r0,0x0
1c003bc0:	03400000 	andi	$r0,$r0,0x0
1c003bc4:	03400000 	andi	$r0,$r0,0x0
1c003bc8:	03400000 	andi	$r0,$r0,0x0
1c003bcc:	03400000 	andi	$r0,$r0,0x0
1c003bd0:	03400000 	andi	$r0,$r0,0x0
1c003bd4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003bd8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bdc:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003be0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003b54 <MatrixKey+0x24c>
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003bec:	57de37ff 	bl	-8652(0xfffde34) # 1c001a20 <gpio_read>
1c003bf0:	0015008c 	move	$r12,$r4
1c003bf4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003be8 <MatrixKey+0x2e0>
1c003bf8:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bfc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c00:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003c04:	50008400 	b	132(0x84) # 1c003c88 <MatrixKey+0x380>
1c003c08:	03400000 	andi	$r0,$r0,0x0
1c003c0c:	03400000 	andi	$r0,$r0,0x0
1c003c10:	03400000 	andi	$r0,$r0,0x0
1c003c14:	03400000 	andi	$r0,$r0,0x0
1c003c18:	03400000 	andi	$r0,$r0,0x0
1c003c1c:	03400000 	andi	$r0,$r0,0x0
1c003c20:	03400000 	andi	$r0,$r0,0x0
1c003c24:	03400000 	andi	$r0,$r0,0x0
1c003c28:	03400000 	andi	$r0,$r0,0x0
1c003c2c:	03400000 	andi	$r0,$r0,0x0
1c003c30:	03400000 	andi	$r0,$r0,0x0
1c003c34:	03400000 	andi	$r0,$r0,0x0
1c003c38:	03400000 	andi	$r0,$r0,0x0
1c003c3c:	03400000 	andi	$r0,$r0,0x0
1c003c40:	03400000 	andi	$r0,$r0,0x0
1c003c44:	03400000 	andi	$r0,$r0,0x0
1c003c48:	03400000 	andi	$r0,$r0,0x0
1c003c4c:	03400000 	andi	$r0,$r0,0x0
1c003c50:	03400000 	andi	$r0,$r0,0x0
1c003c54:	03400000 	andi	$r0,$r0,0x0
1c003c58:	03400000 	andi	$r0,$r0,0x0
1c003c5c:	03400000 	andi	$r0,$r0,0x0
1c003c60:	03400000 	andi	$r0,$r0,0x0
1c003c64:	03400000 	andi	$r0,$r0,0x0
1c003c68:	03400000 	andi	$r0,$r0,0x0
1c003c6c:	03400000 	andi	$r0,$r0,0x0
1c003c70:	03400000 	andi	$r0,$r0,0x0
1c003c74:	03400000 	andi	$r0,$r0,0x0
1c003c78:	03400000 	andi	$r0,$r0,0x0
1c003c7c:	03400000 	andi	$r0,$r0,0x0
1c003c80:	03400000 	andi	$r0,$r0,0x0
1c003c84:	03400000 	andi	$r0,$r0,0x0
1c003c88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003c8c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c90:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003c94:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003c08 <MatrixKey+0x300>
1c003c98:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003c9c:	50142000 	b	5152(0x1420) # 1c0050bc <MatrixKey+0x17b4>
1c003ca0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003ca4:	57dd7fff 	bl	-8836(0xfffdd7c) # 1c001a20 <gpio_read>
1c003ca8:	0015008c 	move	$r12,$r4
1c003cac:	44016180 	bnez	$r12,352(0x160) # 1c003e0c <MatrixKey+0x504>
1c003cb0:	1400008c 	lu12i.w	$r12,4(0x4)
1c003cb4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003cb8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003cbc:	50008400 	b	132(0x84) # 1c003d40 <MatrixKey+0x438>
1c003cc0:	03400000 	andi	$r0,$r0,0x0
1c003cc4:	03400000 	andi	$r0,$r0,0x0
1c003cc8:	03400000 	andi	$r0,$r0,0x0
1c003ccc:	03400000 	andi	$r0,$r0,0x0
1c003cd0:	03400000 	andi	$r0,$r0,0x0
1c003cd4:	03400000 	andi	$r0,$r0,0x0
1c003cd8:	03400000 	andi	$r0,$r0,0x0
1c003cdc:	03400000 	andi	$r0,$r0,0x0
1c003ce0:	03400000 	andi	$r0,$r0,0x0
1c003ce4:	03400000 	andi	$r0,$r0,0x0
1c003ce8:	03400000 	andi	$r0,$r0,0x0
1c003cec:	03400000 	andi	$r0,$r0,0x0
1c003cf0:	03400000 	andi	$r0,$r0,0x0
1c003cf4:	03400000 	andi	$r0,$r0,0x0
1c003cf8:	03400000 	andi	$r0,$r0,0x0
1c003cfc:	03400000 	andi	$r0,$r0,0x0
1c003d00:	03400000 	andi	$r0,$r0,0x0
1c003d04:	03400000 	andi	$r0,$r0,0x0
1c003d08:	03400000 	andi	$r0,$r0,0x0
1c003d0c:	03400000 	andi	$r0,$r0,0x0
1c003d10:	03400000 	andi	$r0,$r0,0x0
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	03400000 	andi	$r0,$r0,0x0
1c003d1c:	03400000 	andi	$r0,$r0,0x0
1c003d20:	03400000 	andi	$r0,$r0,0x0
1c003d24:	03400000 	andi	$r0,$r0,0x0
1c003d28:	03400000 	andi	$r0,$r0,0x0
1c003d2c:	03400000 	andi	$r0,$r0,0x0
1c003d30:	03400000 	andi	$r0,$r0,0x0
1c003d34:	03400000 	andi	$r0,$r0,0x0
1c003d38:	03400000 	andi	$r0,$r0,0x0
1c003d3c:	03400000 	andi	$r0,$r0,0x0
1c003d40:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003d44:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d48:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003d4c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003cc0 <MatrixKey+0x3b8>
1c003d50:	03400000 	andi	$r0,$r0,0x0
1c003d54:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003d58:	57dccbff 	bl	-9016(0xfffdcc8) # 1c001a20 <gpio_read>
1c003d5c:	0015008c 	move	$r12,$r4
1c003d60:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003d54 <MatrixKey+0x44c>
1c003d64:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d68:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d6c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003d70:	50008400 	b	132(0x84) # 1c003df4 <MatrixKey+0x4ec>
1c003d74:	03400000 	andi	$r0,$r0,0x0
1c003d78:	03400000 	andi	$r0,$r0,0x0
1c003d7c:	03400000 	andi	$r0,$r0,0x0
1c003d80:	03400000 	andi	$r0,$r0,0x0
1c003d84:	03400000 	andi	$r0,$r0,0x0
1c003d88:	03400000 	andi	$r0,$r0,0x0
1c003d8c:	03400000 	andi	$r0,$r0,0x0
1c003d90:	03400000 	andi	$r0,$r0,0x0
1c003d94:	03400000 	andi	$r0,$r0,0x0
1c003d98:	03400000 	andi	$r0,$r0,0x0
1c003d9c:	03400000 	andi	$r0,$r0,0x0
1c003da0:	03400000 	andi	$r0,$r0,0x0
1c003da4:	03400000 	andi	$r0,$r0,0x0
1c003da8:	03400000 	andi	$r0,$r0,0x0
1c003dac:	03400000 	andi	$r0,$r0,0x0
1c003db0:	03400000 	andi	$r0,$r0,0x0
1c003db4:	03400000 	andi	$r0,$r0,0x0
1c003db8:	03400000 	andi	$r0,$r0,0x0
1c003dbc:	03400000 	andi	$r0,$r0,0x0
1c003dc0:	03400000 	andi	$r0,$r0,0x0
1c003dc4:	03400000 	andi	$r0,$r0,0x0
1c003dc8:	03400000 	andi	$r0,$r0,0x0
1c003dcc:	03400000 	andi	$r0,$r0,0x0
1c003dd0:	03400000 	andi	$r0,$r0,0x0
1c003dd4:	03400000 	andi	$r0,$r0,0x0
1c003dd8:	03400000 	andi	$r0,$r0,0x0
1c003ddc:	03400000 	andi	$r0,$r0,0x0
1c003de0:	03400000 	andi	$r0,$r0,0x0
1c003de4:	03400000 	andi	$r0,$r0,0x0
1c003de8:	03400000 	andi	$r0,$r0,0x0
1c003dec:	03400000 	andi	$r0,$r0,0x0
1c003df0:	03400000 	andi	$r0,$r0,0x0
1c003df4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003df8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003dfc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003e00:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003d74 <MatrixKey+0x46c>
1c003e04:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c003e08:	5012b400 	b	4788(0x12b4) # 1c0050bc <MatrixKey+0x17b4>
1c003e0c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003e10:	57dc13ff 	bl	-9200(0xfffdc10) # 1c001a20 <gpio_read>
1c003e14:	0015008c 	move	$r12,$r4
1c003e18:	44016180 	bnez	$r12,352(0x160) # 1c003f78 <MatrixKey+0x670>
1c003e1c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e20:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e24:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c003e28:	50008400 	b	132(0x84) # 1c003eac <MatrixKey+0x5a4>
1c003e2c:	03400000 	andi	$r0,$r0,0x0
1c003e30:	03400000 	andi	$r0,$r0,0x0
1c003e34:	03400000 	andi	$r0,$r0,0x0
1c003e38:	03400000 	andi	$r0,$r0,0x0
1c003e3c:	03400000 	andi	$r0,$r0,0x0
1c003e40:	03400000 	andi	$r0,$r0,0x0
1c003e44:	03400000 	andi	$r0,$r0,0x0
1c003e48:	03400000 	andi	$r0,$r0,0x0
1c003e4c:	03400000 	andi	$r0,$r0,0x0
1c003e50:	03400000 	andi	$r0,$r0,0x0
1c003e54:	03400000 	andi	$r0,$r0,0x0
1c003e58:	03400000 	andi	$r0,$r0,0x0
1c003e5c:	03400000 	andi	$r0,$r0,0x0
1c003e60:	03400000 	andi	$r0,$r0,0x0
1c003e64:	03400000 	andi	$r0,$r0,0x0
1c003e68:	03400000 	andi	$r0,$r0,0x0
1c003e6c:	03400000 	andi	$r0,$r0,0x0
1c003e70:	03400000 	andi	$r0,$r0,0x0
1c003e74:	03400000 	andi	$r0,$r0,0x0
1c003e78:	03400000 	andi	$r0,$r0,0x0
1c003e7c:	03400000 	andi	$r0,$r0,0x0
1c003e80:	03400000 	andi	$r0,$r0,0x0
1c003e84:	03400000 	andi	$r0,$r0,0x0
1c003e88:	03400000 	andi	$r0,$r0,0x0
1c003e8c:	03400000 	andi	$r0,$r0,0x0
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	03400000 	andi	$r0,$r0,0x0
1c003e98:	03400000 	andi	$r0,$r0,0x0
1c003e9c:	03400000 	andi	$r0,$r0,0x0
1c003ea0:	03400000 	andi	$r0,$r0,0x0
1c003ea4:	03400000 	andi	$r0,$r0,0x0
1c003ea8:	03400000 	andi	$r0,$r0,0x0
1c003eac:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c003eb0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003eb4:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c003eb8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003e2c <MatrixKey+0x524>
1c003ebc:	03400000 	andi	$r0,$r0,0x0
1c003ec0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003ec4:	57db5fff 	bl	-9380(0xfffdb5c) # 1c001a20 <gpio_read>
1c003ec8:	0015008c 	move	$r12,$r4
1c003ecc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003ec0 <MatrixKey+0x5b8>
1c003ed0:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ed4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ed8:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003edc:	50008400 	b	132(0x84) # 1c003f60 <MatrixKey+0x658>
1c003ee0:	03400000 	andi	$r0,$r0,0x0
1c003ee4:	03400000 	andi	$r0,$r0,0x0
1c003ee8:	03400000 	andi	$r0,$r0,0x0
1c003eec:	03400000 	andi	$r0,$r0,0x0
1c003ef0:	03400000 	andi	$r0,$r0,0x0
1c003ef4:	03400000 	andi	$r0,$r0,0x0
1c003ef8:	03400000 	andi	$r0,$r0,0x0
1c003efc:	03400000 	andi	$r0,$r0,0x0
1c003f00:	03400000 	andi	$r0,$r0,0x0
1c003f04:	03400000 	andi	$r0,$r0,0x0
1c003f08:	03400000 	andi	$r0,$r0,0x0
1c003f0c:	03400000 	andi	$r0,$r0,0x0
1c003f10:	03400000 	andi	$r0,$r0,0x0
1c003f14:	03400000 	andi	$r0,$r0,0x0
1c003f18:	03400000 	andi	$r0,$r0,0x0
1c003f1c:	03400000 	andi	$r0,$r0,0x0
1c003f20:	03400000 	andi	$r0,$r0,0x0
1c003f24:	03400000 	andi	$r0,$r0,0x0
1c003f28:	03400000 	andi	$r0,$r0,0x0
1c003f2c:	03400000 	andi	$r0,$r0,0x0
1c003f30:	03400000 	andi	$r0,$r0,0x0
1c003f34:	03400000 	andi	$r0,$r0,0x0
1c003f38:	03400000 	andi	$r0,$r0,0x0
1c003f3c:	03400000 	andi	$r0,$r0,0x0
1c003f40:	03400000 	andi	$r0,$r0,0x0
1c003f44:	03400000 	andi	$r0,$r0,0x0
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	03400000 	andi	$r0,$r0,0x0
1c003f50:	03400000 	andi	$r0,$r0,0x0
1c003f54:	03400000 	andi	$r0,$r0,0x0
1c003f58:	03400000 	andi	$r0,$r0,0x0
1c003f5c:	03400000 	andi	$r0,$r0,0x0
1c003f60:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c003f64:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f68:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c003f6c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003ee0 <MatrixKey+0x5d8>
1c003f70:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003f74:	50114800 	b	4424(0x1148) # 1c0050bc <MatrixKey+0x17b4>
1c003f78:	57f93fff 	bl	-1732(0xffff93c) # 1c0038b4 <clkey>
1c003f7c:	00150005 	move	$r5,$r0
1c003f80:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003f84:	57d9a7ff 	bl	-9820(0xfffd9a4) # 1c001928 <gpio_write>
1c003f88:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003f8c:	57da97ff 	bl	-9580(0xfffda94) # 1c001a20 <gpio_read>
1c003f90:	0015008c 	move	$r12,$r4
1c003f94:	44016180 	bnez	$r12,352(0x160) # 1c0040f4 <MatrixKey+0x7ec>
1c003f98:	1400008c 	lu12i.w	$r12,4(0x4)
1c003f9c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003fa0:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c003fa4:	50008400 	b	132(0x84) # 1c004028 <MatrixKey+0x720>
1c003fa8:	03400000 	andi	$r0,$r0,0x0
1c003fac:	03400000 	andi	$r0,$r0,0x0
1c003fb0:	03400000 	andi	$r0,$r0,0x0
1c003fb4:	03400000 	andi	$r0,$r0,0x0
1c003fb8:	03400000 	andi	$r0,$r0,0x0
1c003fbc:	03400000 	andi	$r0,$r0,0x0
1c003fc0:	03400000 	andi	$r0,$r0,0x0
1c003fc4:	03400000 	andi	$r0,$r0,0x0
1c003fc8:	03400000 	andi	$r0,$r0,0x0
1c003fcc:	03400000 	andi	$r0,$r0,0x0
1c003fd0:	03400000 	andi	$r0,$r0,0x0
1c003fd4:	03400000 	andi	$r0,$r0,0x0
1c003fd8:	03400000 	andi	$r0,$r0,0x0
1c003fdc:	03400000 	andi	$r0,$r0,0x0
1c003fe0:	03400000 	andi	$r0,$r0,0x0
1c003fe4:	03400000 	andi	$r0,$r0,0x0
1c003fe8:	03400000 	andi	$r0,$r0,0x0
1c003fec:	03400000 	andi	$r0,$r0,0x0
1c003ff0:	03400000 	andi	$r0,$r0,0x0
1c003ff4:	03400000 	andi	$r0,$r0,0x0
1c003ff8:	03400000 	andi	$r0,$r0,0x0
1c003ffc:	03400000 	andi	$r0,$r0,0x0
1c004000:	03400000 	andi	$r0,$r0,0x0
1c004004:	03400000 	andi	$r0,$r0,0x0
1c004008:	03400000 	andi	$r0,$r0,0x0
1c00400c:	03400000 	andi	$r0,$r0,0x0
1c004010:	03400000 	andi	$r0,$r0,0x0
1c004014:	03400000 	andi	$r0,$r0,0x0
1c004018:	03400000 	andi	$r0,$r0,0x0
1c00401c:	03400000 	andi	$r0,$r0,0x0
1c004020:	03400000 	andi	$r0,$r0,0x0
1c004024:	03400000 	andi	$r0,$r0,0x0
1c004028:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00402c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004030:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c004034:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003fa8 <MatrixKey+0x6a0>
1c004038:	03400000 	andi	$r0,$r0,0x0
1c00403c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004040:	57d9e3ff 	bl	-9760(0xfffd9e0) # 1c001a20 <gpio_read>
1c004044:	0015008c 	move	$r12,$r4
1c004048:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00403c <MatrixKey+0x734>
1c00404c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004050:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004054:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c004058:	50008400 	b	132(0x84) # 1c0040dc <MatrixKey+0x7d4>
1c00405c:	03400000 	andi	$r0,$r0,0x0
1c004060:	03400000 	andi	$r0,$r0,0x0
1c004064:	03400000 	andi	$r0,$r0,0x0
1c004068:	03400000 	andi	$r0,$r0,0x0
1c00406c:	03400000 	andi	$r0,$r0,0x0
1c004070:	03400000 	andi	$r0,$r0,0x0
1c004074:	03400000 	andi	$r0,$r0,0x0
1c004078:	03400000 	andi	$r0,$r0,0x0
1c00407c:	03400000 	andi	$r0,$r0,0x0
1c004080:	03400000 	andi	$r0,$r0,0x0
1c004084:	03400000 	andi	$r0,$r0,0x0
1c004088:	03400000 	andi	$r0,$r0,0x0
1c00408c:	03400000 	andi	$r0,$r0,0x0
1c004090:	03400000 	andi	$r0,$r0,0x0
1c004094:	03400000 	andi	$r0,$r0,0x0
1c004098:	03400000 	andi	$r0,$r0,0x0
1c00409c:	03400000 	andi	$r0,$r0,0x0
1c0040a0:	03400000 	andi	$r0,$r0,0x0
1c0040a4:	03400000 	andi	$r0,$r0,0x0
1c0040a8:	03400000 	andi	$r0,$r0,0x0
1c0040ac:	03400000 	andi	$r0,$r0,0x0
1c0040b0:	03400000 	andi	$r0,$r0,0x0
1c0040b4:	03400000 	andi	$r0,$r0,0x0
1c0040b8:	03400000 	andi	$r0,$r0,0x0
1c0040bc:	03400000 	andi	$r0,$r0,0x0
1c0040c0:	03400000 	andi	$r0,$r0,0x0
1c0040c4:	03400000 	andi	$r0,$r0,0x0
1c0040c8:	03400000 	andi	$r0,$r0,0x0
1c0040cc:	03400000 	andi	$r0,$r0,0x0
1c0040d0:	03400000 	andi	$r0,$r0,0x0
1c0040d4:	03400000 	andi	$r0,$r0,0x0
1c0040d8:	03400000 	andi	$r0,$r0,0x0
1c0040dc:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c0040e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0040e4:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c0040e8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00405c <MatrixKey+0x754>
1c0040ec:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0040f0:	500fcc00 	b	4044(0xfcc) # 1c0050bc <MatrixKey+0x17b4>
1c0040f4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0040f8:	57d92bff 	bl	-9944(0xfffd928) # 1c001a20 <gpio_read>
1c0040fc:	0015008c 	move	$r12,$r4
1c004100:	44016180 	bnez	$r12,352(0x160) # 1c004260 <MatrixKey+0x958>
1c004104:	1400008c 	lu12i.w	$r12,4(0x4)
1c004108:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00410c:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c004110:	50008400 	b	132(0x84) # 1c004194 <MatrixKey+0x88c>
1c004114:	03400000 	andi	$r0,$r0,0x0
1c004118:	03400000 	andi	$r0,$r0,0x0
1c00411c:	03400000 	andi	$r0,$r0,0x0
1c004120:	03400000 	andi	$r0,$r0,0x0
1c004124:	03400000 	andi	$r0,$r0,0x0
1c004128:	03400000 	andi	$r0,$r0,0x0
1c00412c:	03400000 	andi	$r0,$r0,0x0
1c004130:	03400000 	andi	$r0,$r0,0x0
1c004134:	03400000 	andi	$r0,$r0,0x0
1c004138:	03400000 	andi	$r0,$r0,0x0
1c00413c:	03400000 	andi	$r0,$r0,0x0
1c004140:	03400000 	andi	$r0,$r0,0x0
1c004144:	03400000 	andi	$r0,$r0,0x0
1c004148:	03400000 	andi	$r0,$r0,0x0
1c00414c:	03400000 	andi	$r0,$r0,0x0
1c004150:	03400000 	andi	$r0,$r0,0x0
1c004154:	03400000 	andi	$r0,$r0,0x0
1c004158:	03400000 	andi	$r0,$r0,0x0
1c00415c:	03400000 	andi	$r0,$r0,0x0
1c004160:	03400000 	andi	$r0,$r0,0x0
1c004164:	03400000 	andi	$r0,$r0,0x0
1c004168:	03400000 	andi	$r0,$r0,0x0
1c00416c:	03400000 	andi	$r0,$r0,0x0
1c004170:	03400000 	andi	$r0,$r0,0x0
1c004174:	03400000 	andi	$r0,$r0,0x0
1c004178:	03400000 	andi	$r0,$r0,0x0
1c00417c:	03400000 	andi	$r0,$r0,0x0
1c004180:	03400000 	andi	$r0,$r0,0x0
1c004184:	03400000 	andi	$r0,$r0,0x0
1c004188:	03400000 	andi	$r0,$r0,0x0
1c00418c:	03400000 	andi	$r0,$r0,0x0
1c004190:	03400000 	andi	$r0,$r0,0x0
1c004194:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c004198:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00419c:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c0041a0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004114 <MatrixKey+0x80c>
1c0041a4:	03400000 	andi	$r0,$r0,0x0
1c0041a8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0041ac:	57d877ff 	bl	-10124(0xfffd874) # 1c001a20 <gpio_read>
1c0041b0:	0015008c 	move	$r12,$r4
1c0041b4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0041a8 <MatrixKey+0x8a0>
1c0041b8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0041bc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0041c0:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c0041c4:	50008400 	b	132(0x84) # 1c004248 <MatrixKey+0x940>
1c0041c8:	03400000 	andi	$r0,$r0,0x0
1c0041cc:	03400000 	andi	$r0,$r0,0x0
1c0041d0:	03400000 	andi	$r0,$r0,0x0
1c0041d4:	03400000 	andi	$r0,$r0,0x0
1c0041d8:	03400000 	andi	$r0,$r0,0x0
1c0041dc:	03400000 	andi	$r0,$r0,0x0
1c0041e0:	03400000 	andi	$r0,$r0,0x0
1c0041e4:	03400000 	andi	$r0,$r0,0x0
1c0041e8:	03400000 	andi	$r0,$r0,0x0
1c0041ec:	03400000 	andi	$r0,$r0,0x0
1c0041f0:	03400000 	andi	$r0,$r0,0x0
1c0041f4:	03400000 	andi	$r0,$r0,0x0
1c0041f8:	03400000 	andi	$r0,$r0,0x0
1c0041fc:	03400000 	andi	$r0,$r0,0x0
1c004200:	03400000 	andi	$r0,$r0,0x0
1c004204:	03400000 	andi	$r0,$r0,0x0
1c004208:	03400000 	andi	$r0,$r0,0x0
1c00420c:	03400000 	andi	$r0,$r0,0x0
1c004210:	03400000 	andi	$r0,$r0,0x0
1c004214:	03400000 	andi	$r0,$r0,0x0
1c004218:	03400000 	andi	$r0,$r0,0x0
1c00421c:	03400000 	andi	$r0,$r0,0x0
1c004220:	03400000 	andi	$r0,$r0,0x0
1c004224:	03400000 	andi	$r0,$r0,0x0
1c004228:	03400000 	andi	$r0,$r0,0x0
1c00422c:	03400000 	andi	$r0,$r0,0x0
1c004230:	03400000 	andi	$r0,$r0,0x0
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	03400000 	andi	$r0,$r0,0x0
1c00423c:	03400000 	andi	$r0,$r0,0x0
1c004240:	03400000 	andi	$r0,$r0,0x0
1c004244:	03400000 	andi	$r0,$r0,0x0
1c004248:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c00424c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004250:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c004254:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0041c8 <MatrixKey+0x8c0>
1c004258:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c00425c:	500e6000 	b	3680(0xe60) # 1c0050bc <MatrixKey+0x17b4>
1c004260:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004264:	57d7bfff 	bl	-10308(0xfffd7bc) # 1c001a20 <gpio_read>
1c004268:	0015008c 	move	$r12,$r4
1c00426c:	44016180 	bnez	$r12,352(0x160) # 1c0043cc <MatrixKey+0xac4>
1c004270:	1400008c 	lu12i.w	$r12,4(0x4)
1c004274:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004278:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c00427c:	50008400 	b	132(0x84) # 1c004300 <MatrixKey+0x9f8>
1c004280:	03400000 	andi	$r0,$r0,0x0
1c004284:	03400000 	andi	$r0,$r0,0x0
1c004288:	03400000 	andi	$r0,$r0,0x0
1c00428c:	03400000 	andi	$r0,$r0,0x0
1c004290:	03400000 	andi	$r0,$r0,0x0
1c004294:	03400000 	andi	$r0,$r0,0x0
1c004298:	03400000 	andi	$r0,$r0,0x0
1c00429c:	03400000 	andi	$r0,$r0,0x0
1c0042a0:	03400000 	andi	$r0,$r0,0x0
1c0042a4:	03400000 	andi	$r0,$r0,0x0
1c0042a8:	03400000 	andi	$r0,$r0,0x0
1c0042ac:	03400000 	andi	$r0,$r0,0x0
1c0042b0:	03400000 	andi	$r0,$r0,0x0
1c0042b4:	03400000 	andi	$r0,$r0,0x0
1c0042b8:	03400000 	andi	$r0,$r0,0x0
1c0042bc:	03400000 	andi	$r0,$r0,0x0
1c0042c0:	03400000 	andi	$r0,$r0,0x0
1c0042c4:	03400000 	andi	$r0,$r0,0x0
1c0042c8:	03400000 	andi	$r0,$r0,0x0
1c0042cc:	03400000 	andi	$r0,$r0,0x0
1c0042d0:	03400000 	andi	$r0,$r0,0x0
1c0042d4:	03400000 	andi	$r0,$r0,0x0
1c0042d8:	03400000 	andi	$r0,$r0,0x0
1c0042dc:	03400000 	andi	$r0,$r0,0x0
1c0042e0:	03400000 	andi	$r0,$r0,0x0
1c0042e4:	03400000 	andi	$r0,$r0,0x0
1c0042e8:	03400000 	andi	$r0,$r0,0x0
1c0042ec:	03400000 	andi	$r0,$r0,0x0
1c0042f0:	03400000 	andi	$r0,$r0,0x0
1c0042f4:	03400000 	andi	$r0,$r0,0x0
1c0042f8:	03400000 	andi	$r0,$r0,0x0
1c0042fc:	03400000 	andi	$r0,$r0,0x0
1c004300:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c004304:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004308:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c00430c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004280 <MatrixKey+0x978>
1c004310:	03400000 	andi	$r0,$r0,0x0
1c004314:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004318:	57d70bff 	bl	-10488(0xfffd708) # 1c001a20 <gpio_read>
1c00431c:	0015008c 	move	$r12,$r4
1c004320:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004314 <MatrixKey+0xa0c>
1c004324:	1400008c 	lu12i.w	$r12,4(0x4)
1c004328:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00432c:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c004330:	50008400 	b	132(0x84) # 1c0043b4 <MatrixKey+0xaac>
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	03400000 	andi	$r0,$r0,0x0
1c00433c:	03400000 	andi	$r0,$r0,0x0
1c004340:	03400000 	andi	$r0,$r0,0x0
1c004344:	03400000 	andi	$r0,$r0,0x0
1c004348:	03400000 	andi	$r0,$r0,0x0
1c00434c:	03400000 	andi	$r0,$r0,0x0
1c004350:	03400000 	andi	$r0,$r0,0x0
1c004354:	03400000 	andi	$r0,$r0,0x0
1c004358:	03400000 	andi	$r0,$r0,0x0
1c00435c:	03400000 	andi	$r0,$r0,0x0
1c004360:	03400000 	andi	$r0,$r0,0x0
1c004364:	03400000 	andi	$r0,$r0,0x0
1c004368:	03400000 	andi	$r0,$r0,0x0
1c00436c:	03400000 	andi	$r0,$r0,0x0
1c004370:	03400000 	andi	$r0,$r0,0x0
1c004374:	03400000 	andi	$r0,$r0,0x0
1c004378:	03400000 	andi	$r0,$r0,0x0
1c00437c:	03400000 	andi	$r0,$r0,0x0
1c004380:	03400000 	andi	$r0,$r0,0x0
1c004384:	03400000 	andi	$r0,$r0,0x0
1c004388:	03400000 	andi	$r0,$r0,0x0
1c00438c:	03400000 	andi	$r0,$r0,0x0
1c004390:	03400000 	andi	$r0,$r0,0x0
1c004394:	03400000 	andi	$r0,$r0,0x0
1c004398:	03400000 	andi	$r0,$r0,0x0
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	03400000 	andi	$r0,$r0,0x0
1c0043a4:	03400000 	andi	$r0,$r0,0x0
1c0043a8:	03400000 	andi	$r0,$r0,0x0
1c0043ac:	03400000 	andi	$r0,$r0,0x0
1c0043b0:	03400000 	andi	$r0,$r0,0x0
1c0043b4:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c0043b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0043bc:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c0043c0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004334 <MatrixKey+0xa2c>
1c0043c4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0043c8:	500cf400 	b	3316(0xcf4) # 1c0050bc <MatrixKey+0x17b4>
1c0043cc:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0043d0:	57d653ff 	bl	-10672(0xfffd650) # 1c001a20 <gpio_read>
1c0043d4:	0015008c 	move	$r12,$r4
1c0043d8:	44016180 	bnez	$r12,352(0x160) # 1c004538 <MatrixKey+0xc30>
1c0043dc:	1400008c 	lu12i.w	$r12,4(0x4)
1c0043e0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0043e4:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c0043e8:	50008400 	b	132(0x84) # 1c00446c <MatrixKey+0xb64>
1c0043ec:	03400000 	andi	$r0,$r0,0x0
1c0043f0:	03400000 	andi	$r0,$r0,0x0
1c0043f4:	03400000 	andi	$r0,$r0,0x0
1c0043f8:	03400000 	andi	$r0,$r0,0x0
1c0043fc:	03400000 	andi	$r0,$r0,0x0
1c004400:	03400000 	andi	$r0,$r0,0x0
1c004404:	03400000 	andi	$r0,$r0,0x0
1c004408:	03400000 	andi	$r0,$r0,0x0
1c00440c:	03400000 	andi	$r0,$r0,0x0
1c004410:	03400000 	andi	$r0,$r0,0x0
1c004414:	03400000 	andi	$r0,$r0,0x0
1c004418:	03400000 	andi	$r0,$r0,0x0
1c00441c:	03400000 	andi	$r0,$r0,0x0
1c004420:	03400000 	andi	$r0,$r0,0x0
1c004424:	03400000 	andi	$r0,$r0,0x0
1c004428:	03400000 	andi	$r0,$r0,0x0
1c00442c:	03400000 	andi	$r0,$r0,0x0
1c004430:	03400000 	andi	$r0,$r0,0x0
1c004434:	03400000 	andi	$r0,$r0,0x0
1c004438:	03400000 	andi	$r0,$r0,0x0
1c00443c:	03400000 	andi	$r0,$r0,0x0
1c004440:	03400000 	andi	$r0,$r0,0x0
1c004444:	03400000 	andi	$r0,$r0,0x0
1c004448:	03400000 	andi	$r0,$r0,0x0
1c00444c:	03400000 	andi	$r0,$r0,0x0
1c004450:	03400000 	andi	$r0,$r0,0x0
1c004454:	03400000 	andi	$r0,$r0,0x0
1c004458:	03400000 	andi	$r0,$r0,0x0
1c00445c:	03400000 	andi	$r0,$r0,0x0
1c004460:	03400000 	andi	$r0,$r0,0x0
1c004464:	03400000 	andi	$r0,$r0,0x0
1c004468:	03400000 	andi	$r0,$r0,0x0
1c00446c:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c004470:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004474:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c004478:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0043ec <MatrixKey+0xae4>
1c00447c:	03400000 	andi	$r0,$r0,0x0
1c004480:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004484:	57d59fff 	bl	-10852(0xfffd59c) # 1c001a20 <gpio_read>
1c004488:	0015008c 	move	$r12,$r4
1c00448c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004480 <MatrixKey+0xb78>
1c004490:	1400008c 	lu12i.w	$r12,4(0x4)
1c004494:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004498:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c00449c:	50008400 	b	132(0x84) # 1c004520 <MatrixKey+0xc18>
1c0044a0:	03400000 	andi	$r0,$r0,0x0
1c0044a4:	03400000 	andi	$r0,$r0,0x0
1c0044a8:	03400000 	andi	$r0,$r0,0x0
1c0044ac:	03400000 	andi	$r0,$r0,0x0
1c0044b0:	03400000 	andi	$r0,$r0,0x0
1c0044b4:	03400000 	andi	$r0,$r0,0x0
1c0044b8:	03400000 	andi	$r0,$r0,0x0
1c0044bc:	03400000 	andi	$r0,$r0,0x0
1c0044c0:	03400000 	andi	$r0,$r0,0x0
1c0044c4:	03400000 	andi	$r0,$r0,0x0
1c0044c8:	03400000 	andi	$r0,$r0,0x0
1c0044cc:	03400000 	andi	$r0,$r0,0x0
1c0044d0:	03400000 	andi	$r0,$r0,0x0
1c0044d4:	03400000 	andi	$r0,$r0,0x0
1c0044d8:	03400000 	andi	$r0,$r0,0x0
1c0044dc:	03400000 	andi	$r0,$r0,0x0
1c0044e0:	03400000 	andi	$r0,$r0,0x0
1c0044e4:	03400000 	andi	$r0,$r0,0x0
1c0044e8:	03400000 	andi	$r0,$r0,0x0
1c0044ec:	03400000 	andi	$r0,$r0,0x0
1c0044f0:	03400000 	andi	$r0,$r0,0x0
1c0044f4:	03400000 	andi	$r0,$r0,0x0
1c0044f8:	03400000 	andi	$r0,$r0,0x0
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	03400000 	andi	$r0,$r0,0x0
1c004504:	03400000 	andi	$r0,$r0,0x0
1c004508:	03400000 	andi	$r0,$r0,0x0
1c00450c:	03400000 	andi	$r0,$r0,0x0
1c004510:	03400000 	andi	$r0,$r0,0x0
1c004514:	03400000 	andi	$r0,$r0,0x0
1c004518:	03400000 	andi	$r0,$r0,0x0
1c00451c:	03400000 	andi	$r0,$r0,0x0
1c004520:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c004524:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004528:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c00452c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0044a0 <MatrixKey+0xb98>
1c004530:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c004534:	500b8800 	b	2952(0xb88) # 1c0050bc <MatrixKey+0x17b4>
1c004538:	57f37fff 	bl	-3204(0xffff37c) # 1c0038b4 <clkey>
1c00453c:	00150005 	move	$r5,$r0
1c004540:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004544:	57d3e7ff 	bl	-11292(0xfffd3e4) # 1c001928 <gpio_write>
1c004548:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00454c:	57d4d7ff 	bl	-11052(0xfffd4d4) # 1c001a20 <gpio_read>
1c004550:	0015008c 	move	$r12,$r4
1c004554:	44016180 	bnez	$r12,352(0x160) # 1c0046b4 <MatrixKey+0xdac>
1c004558:	1400008c 	lu12i.w	$r12,4(0x4)
1c00455c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004560:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c004564:	50008400 	b	132(0x84) # 1c0045e8 <MatrixKey+0xce0>
1c004568:	03400000 	andi	$r0,$r0,0x0
1c00456c:	03400000 	andi	$r0,$r0,0x0
1c004570:	03400000 	andi	$r0,$r0,0x0
1c004574:	03400000 	andi	$r0,$r0,0x0
1c004578:	03400000 	andi	$r0,$r0,0x0
1c00457c:	03400000 	andi	$r0,$r0,0x0
1c004580:	03400000 	andi	$r0,$r0,0x0
1c004584:	03400000 	andi	$r0,$r0,0x0
1c004588:	03400000 	andi	$r0,$r0,0x0
1c00458c:	03400000 	andi	$r0,$r0,0x0
1c004590:	03400000 	andi	$r0,$r0,0x0
1c004594:	03400000 	andi	$r0,$r0,0x0
1c004598:	03400000 	andi	$r0,$r0,0x0
1c00459c:	03400000 	andi	$r0,$r0,0x0
1c0045a0:	03400000 	andi	$r0,$r0,0x0
1c0045a4:	03400000 	andi	$r0,$r0,0x0
1c0045a8:	03400000 	andi	$r0,$r0,0x0
1c0045ac:	03400000 	andi	$r0,$r0,0x0
1c0045b0:	03400000 	andi	$r0,$r0,0x0
1c0045b4:	03400000 	andi	$r0,$r0,0x0
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	03400000 	andi	$r0,$r0,0x0
1c0045c0:	03400000 	andi	$r0,$r0,0x0
1c0045c4:	03400000 	andi	$r0,$r0,0x0
1c0045c8:	03400000 	andi	$r0,$r0,0x0
1c0045cc:	03400000 	andi	$r0,$r0,0x0
1c0045d0:	03400000 	andi	$r0,$r0,0x0
1c0045d4:	03400000 	andi	$r0,$r0,0x0
1c0045d8:	03400000 	andi	$r0,$r0,0x0
1c0045dc:	03400000 	andi	$r0,$r0,0x0
1c0045e0:	03400000 	andi	$r0,$r0,0x0
1c0045e4:	03400000 	andi	$r0,$r0,0x0
1c0045e8:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c0045ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0045f0:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c0045f4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004568 <MatrixKey+0xc60>
1c0045f8:	03400000 	andi	$r0,$r0,0x0
1c0045fc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004600:	57d423ff 	bl	-11232(0xfffd420) # 1c001a20 <gpio_read>
1c004604:	0015008c 	move	$r12,$r4
1c004608:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0045fc <MatrixKey+0xcf4>
1c00460c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004610:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004614:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c004618:	50008400 	b	132(0x84) # 1c00469c <MatrixKey+0xd94>
1c00461c:	03400000 	andi	$r0,$r0,0x0
1c004620:	03400000 	andi	$r0,$r0,0x0
1c004624:	03400000 	andi	$r0,$r0,0x0
1c004628:	03400000 	andi	$r0,$r0,0x0
1c00462c:	03400000 	andi	$r0,$r0,0x0
1c004630:	03400000 	andi	$r0,$r0,0x0
1c004634:	03400000 	andi	$r0,$r0,0x0
1c004638:	03400000 	andi	$r0,$r0,0x0
1c00463c:	03400000 	andi	$r0,$r0,0x0
1c004640:	03400000 	andi	$r0,$r0,0x0
1c004644:	03400000 	andi	$r0,$r0,0x0
1c004648:	03400000 	andi	$r0,$r0,0x0
1c00464c:	03400000 	andi	$r0,$r0,0x0
1c004650:	03400000 	andi	$r0,$r0,0x0
1c004654:	03400000 	andi	$r0,$r0,0x0
1c004658:	03400000 	andi	$r0,$r0,0x0
1c00465c:	03400000 	andi	$r0,$r0,0x0
1c004660:	03400000 	andi	$r0,$r0,0x0
1c004664:	03400000 	andi	$r0,$r0,0x0
1c004668:	03400000 	andi	$r0,$r0,0x0
1c00466c:	03400000 	andi	$r0,$r0,0x0
1c004670:	03400000 	andi	$r0,$r0,0x0
1c004674:	03400000 	andi	$r0,$r0,0x0
1c004678:	03400000 	andi	$r0,$r0,0x0
1c00467c:	03400000 	andi	$r0,$r0,0x0
1c004680:	03400000 	andi	$r0,$r0,0x0
1c004684:	03400000 	andi	$r0,$r0,0x0
1c004688:	03400000 	andi	$r0,$r0,0x0
1c00468c:	03400000 	andi	$r0,$r0,0x0
1c004690:	03400000 	andi	$r0,$r0,0x0
1c004694:	03400000 	andi	$r0,$r0,0x0
1c004698:	03400000 	andi	$r0,$r0,0x0
1c00469c:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c0046a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046a4:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c0046a8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00461c <MatrixKey+0xd14>
1c0046ac:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0046b0:	500a0c00 	b	2572(0xa0c) # 1c0050bc <MatrixKey+0x17b4>
1c0046b4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0046b8:	57d36bff 	bl	-11416(0xfffd368) # 1c001a20 <gpio_read>
1c0046bc:	0015008c 	move	$r12,$r4
1c0046c0:	44016180 	bnez	$r12,352(0x160) # 1c004820 <MatrixKey+0xf18>
1c0046c4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0046c8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0046cc:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c0046d0:	50008400 	b	132(0x84) # 1c004754 <MatrixKey+0xe4c>
1c0046d4:	03400000 	andi	$r0,$r0,0x0
1c0046d8:	03400000 	andi	$r0,$r0,0x0
1c0046dc:	03400000 	andi	$r0,$r0,0x0
1c0046e0:	03400000 	andi	$r0,$r0,0x0
1c0046e4:	03400000 	andi	$r0,$r0,0x0
1c0046e8:	03400000 	andi	$r0,$r0,0x0
1c0046ec:	03400000 	andi	$r0,$r0,0x0
1c0046f0:	03400000 	andi	$r0,$r0,0x0
1c0046f4:	03400000 	andi	$r0,$r0,0x0
1c0046f8:	03400000 	andi	$r0,$r0,0x0
1c0046fc:	03400000 	andi	$r0,$r0,0x0
1c004700:	03400000 	andi	$r0,$r0,0x0
1c004704:	03400000 	andi	$r0,$r0,0x0
1c004708:	03400000 	andi	$r0,$r0,0x0
1c00470c:	03400000 	andi	$r0,$r0,0x0
1c004710:	03400000 	andi	$r0,$r0,0x0
1c004714:	03400000 	andi	$r0,$r0,0x0
1c004718:	03400000 	andi	$r0,$r0,0x0
1c00471c:	03400000 	andi	$r0,$r0,0x0
1c004720:	03400000 	andi	$r0,$r0,0x0
1c004724:	03400000 	andi	$r0,$r0,0x0
1c004728:	03400000 	andi	$r0,$r0,0x0
1c00472c:	03400000 	andi	$r0,$r0,0x0
1c004730:	03400000 	andi	$r0,$r0,0x0
1c004734:	03400000 	andi	$r0,$r0,0x0
1c004738:	03400000 	andi	$r0,$r0,0x0
1c00473c:	03400000 	andi	$r0,$r0,0x0
1c004740:	03400000 	andi	$r0,$r0,0x0
1c004744:	03400000 	andi	$r0,$r0,0x0
1c004748:	03400000 	andi	$r0,$r0,0x0
1c00474c:	03400000 	andi	$r0,$r0,0x0
1c004750:	03400000 	andi	$r0,$r0,0x0
1c004754:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c004758:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00475c:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c004760:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0046d4 <MatrixKey+0xdcc>
1c004764:	03400000 	andi	$r0,$r0,0x0
1c004768:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00476c:	57d2b7ff 	bl	-11596(0xfffd2b4) # 1c001a20 <gpio_read>
1c004770:	0015008c 	move	$r12,$r4
1c004774:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004768 <MatrixKey+0xe60>
1c004778:	1400008c 	lu12i.w	$r12,4(0x4)
1c00477c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004780:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c004784:	50008400 	b	132(0x84) # 1c004808 <MatrixKey+0xf00>
1c004788:	03400000 	andi	$r0,$r0,0x0
1c00478c:	03400000 	andi	$r0,$r0,0x0
1c004790:	03400000 	andi	$r0,$r0,0x0
1c004794:	03400000 	andi	$r0,$r0,0x0
1c004798:	03400000 	andi	$r0,$r0,0x0
1c00479c:	03400000 	andi	$r0,$r0,0x0
1c0047a0:	03400000 	andi	$r0,$r0,0x0
1c0047a4:	03400000 	andi	$r0,$r0,0x0
1c0047a8:	03400000 	andi	$r0,$r0,0x0
1c0047ac:	03400000 	andi	$r0,$r0,0x0
1c0047b0:	03400000 	andi	$r0,$r0,0x0
1c0047b4:	03400000 	andi	$r0,$r0,0x0
1c0047b8:	03400000 	andi	$r0,$r0,0x0
1c0047bc:	03400000 	andi	$r0,$r0,0x0
1c0047c0:	03400000 	andi	$r0,$r0,0x0
1c0047c4:	03400000 	andi	$r0,$r0,0x0
1c0047c8:	03400000 	andi	$r0,$r0,0x0
1c0047cc:	03400000 	andi	$r0,$r0,0x0
1c0047d0:	03400000 	andi	$r0,$r0,0x0
1c0047d4:	03400000 	andi	$r0,$r0,0x0
1c0047d8:	03400000 	andi	$r0,$r0,0x0
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	03400000 	andi	$r0,$r0,0x0
1c0047e4:	03400000 	andi	$r0,$r0,0x0
1c0047e8:	03400000 	andi	$r0,$r0,0x0
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	03400000 	andi	$r0,$r0,0x0
1c0047f4:	03400000 	andi	$r0,$r0,0x0
1c0047f8:	03400000 	andi	$r0,$r0,0x0
1c0047fc:	03400000 	andi	$r0,$r0,0x0
1c004800:	03400000 	andi	$r0,$r0,0x0
1c004804:	03400000 	andi	$r0,$r0,0x0
1c004808:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c00480c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004810:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c004814:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004788 <MatrixKey+0xe80>
1c004818:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00481c:	5008a000 	b	2208(0x8a0) # 1c0050bc <MatrixKey+0x17b4>
1c004820:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004824:	57d1ffff 	bl	-11780(0xfffd1fc) # 1c001a20 <gpio_read>
1c004828:	0015008c 	move	$r12,$r4
1c00482c:	44016180 	bnez	$r12,352(0x160) # 1c00498c <MatrixKey+0x1084>
1c004830:	1400008c 	lu12i.w	$r12,4(0x4)
1c004834:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004838:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c00483c:	50008400 	b	132(0x84) # 1c0048c0 <MatrixKey+0xfb8>
1c004840:	03400000 	andi	$r0,$r0,0x0
1c004844:	03400000 	andi	$r0,$r0,0x0
1c004848:	03400000 	andi	$r0,$r0,0x0
1c00484c:	03400000 	andi	$r0,$r0,0x0
1c004850:	03400000 	andi	$r0,$r0,0x0
1c004854:	03400000 	andi	$r0,$r0,0x0
1c004858:	03400000 	andi	$r0,$r0,0x0
1c00485c:	03400000 	andi	$r0,$r0,0x0
1c004860:	03400000 	andi	$r0,$r0,0x0
1c004864:	03400000 	andi	$r0,$r0,0x0
1c004868:	03400000 	andi	$r0,$r0,0x0
1c00486c:	03400000 	andi	$r0,$r0,0x0
1c004870:	03400000 	andi	$r0,$r0,0x0
1c004874:	03400000 	andi	$r0,$r0,0x0
1c004878:	03400000 	andi	$r0,$r0,0x0
1c00487c:	03400000 	andi	$r0,$r0,0x0
1c004880:	03400000 	andi	$r0,$r0,0x0
1c004884:	03400000 	andi	$r0,$r0,0x0
1c004888:	03400000 	andi	$r0,$r0,0x0
1c00488c:	03400000 	andi	$r0,$r0,0x0
1c004890:	03400000 	andi	$r0,$r0,0x0
1c004894:	03400000 	andi	$r0,$r0,0x0
1c004898:	03400000 	andi	$r0,$r0,0x0
1c00489c:	03400000 	andi	$r0,$r0,0x0
1c0048a0:	03400000 	andi	$r0,$r0,0x0
1c0048a4:	03400000 	andi	$r0,$r0,0x0
1c0048a8:	03400000 	andi	$r0,$r0,0x0
1c0048ac:	03400000 	andi	$r0,$r0,0x0
1c0048b0:	03400000 	andi	$r0,$r0,0x0
1c0048b4:	03400000 	andi	$r0,$r0,0x0
1c0048b8:	03400000 	andi	$r0,$r0,0x0
1c0048bc:	03400000 	andi	$r0,$r0,0x0
1c0048c0:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0048c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0048c8:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c0048cc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004840 <MatrixKey+0xf38>
1c0048d0:	03400000 	andi	$r0,$r0,0x0
1c0048d4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0048d8:	57d14bff 	bl	-11960(0xfffd148) # 1c001a20 <gpio_read>
1c0048dc:	0015008c 	move	$r12,$r4
1c0048e0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0048d4 <MatrixKey+0xfcc>
1c0048e4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0048e8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0048ec:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c0048f0:	50008400 	b	132(0x84) # 1c004974 <MatrixKey+0x106c>
1c0048f4:	03400000 	andi	$r0,$r0,0x0
1c0048f8:	03400000 	andi	$r0,$r0,0x0
1c0048fc:	03400000 	andi	$r0,$r0,0x0
1c004900:	03400000 	andi	$r0,$r0,0x0
1c004904:	03400000 	andi	$r0,$r0,0x0
1c004908:	03400000 	andi	$r0,$r0,0x0
1c00490c:	03400000 	andi	$r0,$r0,0x0
1c004910:	03400000 	andi	$r0,$r0,0x0
1c004914:	03400000 	andi	$r0,$r0,0x0
1c004918:	03400000 	andi	$r0,$r0,0x0
1c00491c:	03400000 	andi	$r0,$r0,0x0
1c004920:	03400000 	andi	$r0,$r0,0x0
1c004924:	03400000 	andi	$r0,$r0,0x0
1c004928:	03400000 	andi	$r0,$r0,0x0
1c00492c:	03400000 	andi	$r0,$r0,0x0
1c004930:	03400000 	andi	$r0,$r0,0x0
1c004934:	03400000 	andi	$r0,$r0,0x0
1c004938:	03400000 	andi	$r0,$r0,0x0
1c00493c:	03400000 	andi	$r0,$r0,0x0
1c004940:	03400000 	andi	$r0,$r0,0x0
1c004944:	03400000 	andi	$r0,$r0,0x0
1c004948:	03400000 	andi	$r0,$r0,0x0
1c00494c:	03400000 	andi	$r0,$r0,0x0
1c004950:	03400000 	andi	$r0,$r0,0x0
1c004954:	03400000 	andi	$r0,$r0,0x0
1c004958:	03400000 	andi	$r0,$r0,0x0
1c00495c:	03400000 	andi	$r0,$r0,0x0
1c004960:	03400000 	andi	$r0,$r0,0x0
1c004964:	03400000 	andi	$r0,$r0,0x0
1c004968:	03400000 	andi	$r0,$r0,0x0
1c00496c:	03400000 	andi	$r0,$r0,0x0
1c004970:	03400000 	andi	$r0,$r0,0x0
1c004974:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c004978:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00497c:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c004980:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0048f4 <MatrixKey+0xfec>
1c004984:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004988:	50073400 	b	1844(0x734) # 1c0050bc <MatrixKey+0x17b4>
1c00498c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004990:	57d093ff 	bl	-12144(0xfffd090) # 1c001a20 <gpio_read>
1c004994:	0015008c 	move	$r12,$r4
1c004998:	44016180 	bnez	$r12,352(0x160) # 1c004af8 <MatrixKey+0x11f0>
1c00499c:	1400008c 	lu12i.w	$r12,4(0x4)
1c0049a0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0049a4:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c0049a8:	50008400 	b	132(0x84) # 1c004a2c <MatrixKey+0x1124>
1c0049ac:	03400000 	andi	$r0,$r0,0x0
1c0049b0:	03400000 	andi	$r0,$r0,0x0
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	03400000 	andi	$r0,$r0,0x0
1c0049bc:	03400000 	andi	$r0,$r0,0x0
1c0049c0:	03400000 	andi	$r0,$r0,0x0
1c0049c4:	03400000 	andi	$r0,$r0,0x0
1c0049c8:	03400000 	andi	$r0,$r0,0x0
1c0049cc:	03400000 	andi	$r0,$r0,0x0
1c0049d0:	03400000 	andi	$r0,$r0,0x0
1c0049d4:	03400000 	andi	$r0,$r0,0x0
1c0049d8:	03400000 	andi	$r0,$r0,0x0
1c0049dc:	03400000 	andi	$r0,$r0,0x0
1c0049e0:	03400000 	andi	$r0,$r0,0x0
1c0049e4:	03400000 	andi	$r0,$r0,0x0
1c0049e8:	03400000 	andi	$r0,$r0,0x0
1c0049ec:	03400000 	andi	$r0,$r0,0x0
1c0049f0:	03400000 	andi	$r0,$r0,0x0
1c0049f4:	03400000 	andi	$r0,$r0,0x0
1c0049f8:	03400000 	andi	$r0,$r0,0x0
1c0049fc:	03400000 	andi	$r0,$r0,0x0
1c004a00:	03400000 	andi	$r0,$r0,0x0
1c004a04:	03400000 	andi	$r0,$r0,0x0
1c004a08:	03400000 	andi	$r0,$r0,0x0
1c004a0c:	03400000 	andi	$r0,$r0,0x0
1c004a10:	03400000 	andi	$r0,$r0,0x0
1c004a14:	03400000 	andi	$r0,$r0,0x0
1c004a18:	03400000 	andi	$r0,$r0,0x0
1c004a1c:	03400000 	andi	$r0,$r0,0x0
1c004a20:	03400000 	andi	$r0,$r0,0x0
1c004a24:	03400000 	andi	$r0,$r0,0x0
1c004a28:	03400000 	andi	$r0,$r0,0x0
1c004a2c:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c004a30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004a34:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c004a38:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0049ac <MatrixKey+0x10a4>
1c004a3c:	03400000 	andi	$r0,$r0,0x0
1c004a40:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004a44:	57cfdfff 	bl	-12324(0xfffcfdc) # 1c001a20 <gpio_read>
1c004a48:	0015008c 	move	$r12,$r4
1c004a4c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004a40 <MatrixKey+0x1138>
1c004a50:	1400008c 	lu12i.w	$r12,4(0x4)
1c004a54:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004a58:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c004a5c:	50008400 	b	132(0x84) # 1c004ae0 <MatrixKey+0x11d8>
1c004a60:	03400000 	andi	$r0,$r0,0x0
1c004a64:	03400000 	andi	$r0,$r0,0x0
1c004a68:	03400000 	andi	$r0,$r0,0x0
1c004a6c:	03400000 	andi	$r0,$r0,0x0
1c004a70:	03400000 	andi	$r0,$r0,0x0
1c004a74:	03400000 	andi	$r0,$r0,0x0
1c004a78:	03400000 	andi	$r0,$r0,0x0
1c004a7c:	03400000 	andi	$r0,$r0,0x0
1c004a80:	03400000 	andi	$r0,$r0,0x0
1c004a84:	03400000 	andi	$r0,$r0,0x0
1c004a88:	03400000 	andi	$r0,$r0,0x0
1c004a8c:	03400000 	andi	$r0,$r0,0x0
1c004a90:	03400000 	andi	$r0,$r0,0x0
1c004a94:	03400000 	andi	$r0,$r0,0x0
1c004a98:	03400000 	andi	$r0,$r0,0x0
1c004a9c:	03400000 	andi	$r0,$r0,0x0
1c004aa0:	03400000 	andi	$r0,$r0,0x0
1c004aa4:	03400000 	andi	$r0,$r0,0x0
1c004aa8:	03400000 	andi	$r0,$r0,0x0
1c004aac:	03400000 	andi	$r0,$r0,0x0
1c004ab0:	03400000 	andi	$r0,$r0,0x0
1c004ab4:	03400000 	andi	$r0,$r0,0x0
1c004ab8:	03400000 	andi	$r0,$r0,0x0
1c004abc:	03400000 	andi	$r0,$r0,0x0
1c004ac0:	03400000 	andi	$r0,$r0,0x0
1c004ac4:	03400000 	andi	$r0,$r0,0x0
1c004ac8:	03400000 	andi	$r0,$r0,0x0
1c004acc:	03400000 	andi	$r0,$r0,0x0
1c004ad0:	03400000 	andi	$r0,$r0,0x0
1c004ad4:	03400000 	andi	$r0,$r0,0x0
1c004ad8:	03400000 	andi	$r0,$r0,0x0
1c004adc:	03400000 	andi	$r0,$r0,0x0
1c004ae0:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c004ae4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004ae8:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c004aec:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004a60 <MatrixKey+0x1158>
1c004af0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004af4:	5005c800 	b	1480(0x5c8) # 1c0050bc <MatrixKey+0x17b4>
1c004af8:	57edbfff 	bl	-4676(0xfffedbc) # 1c0038b4 <clkey>
1c004afc:	00150005 	move	$r5,$r0
1c004b00:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004b04:	57ce27ff 	bl	-12764(0xfffce24) # 1c001928 <gpio_write>
1c004b08:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004b0c:	57cf17ff 	bl	-12524(0xfffcf14) # 1c001a20 <gpio_read>
1c004b10:	0015008c 	move	$r12,$r4
1c004b14:	44016180 	bnez	$r12,352(0x160) # 1c004c74 <MatrixKey+0x136c>
1c004b18:	1400008c 	lu12i.w	$r12,4(0x4)
1c004b1c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004b20:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c004b24:	50008400 	b	132(0x84) # 1c004ba8 <MatrixKey+0x12a0>
1c004b28:	03400000 	andi	$r0,$r0,0x0
1c004b2c:	03400000 	andi	$r0,$r0,0x0
1c004b30:	03400000 	andi	$r0,$r0,0x0
1c004b34:	03400000 	andi	$r0,$r0,0x0
1c004b38:	03400000 	andi	$r0,$r0,0x0
1c004b3c:	03400000 	andi	$r0,$r0,0x0
1c004b40:	03400000 	andi	$r0,$r0,0x0
1c004b44:	03400000 	andi	$r0,$r0,0x0
1c004b48:	03400000 	andi	$r0,$r0,0x0
1c004b4c:	03400000 	andi	$r0,$r0,0x0
1c004b50:	03400000 	andi	$r0,$r0,0x0
1c004b54:	03400000 	andi	$r0,$r0,0x0
1c004b58:	03400000 	andi	$r0,$r0,0x0
1c004b5c:	03400000 	andi	$r0,$r0,0x0
1c004b60:	03400000 	andi	$r0,$r0,0x0
1c004b64:	03400000 	andi	$r0,$r0,0x0
1c004b68:	03400000 	andi	$r0,$r0,0x0
1c004b6c:	03400000 	andi	$r0,$r0,0x0
1c004b70:	03400000 	andi	$r0,$r0,0x0
1c004b74:	03400000 	andi	$r0,$r0,0x0
1c004b78:	03400000 	andi	$r0,$r0,0x0
1c004b7c:	03400000 	andi	$r0,$r0,0x0
1c004b80:	03400000 	andi	$r0,$r0,0x0
1c004b84:	03400000 	andi	$r0,$r0,0x0
1c004b88:	03400000 	andi	$r0,$r0,0x0
1c004b8c:	03400000 	andi	$r0,$r0,0x0
1c004b90:	03400000 	andi	$r0,$r0,0x0
1c004b94:	03400000 	andi	$r0,$r0,0x0
1c004b98:	03400000 	andi	$r0,$r0,0x0
1c004b9c:	03400000 	andi	$r0,$r0,0x0
1c004ba0:	03400000 	andi	$r0,$r0,0x0
1c004ba4:	03400000 	andi	$r0,$r0,0x0
1c004ba8:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c004bac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004bb0:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c004bb4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004b28 <MatrixKey+0x1220>
1c004bb8:	03400000 	andi	$r0,$r0,0x0
1c004bbc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004bc0:	57ce63ff 	bl	-12704(0xfffce60) # 1c001a20 <gpio_read>
1c004bc4:	0015008c 	move	$r12,$r4
1c004bc8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004bbc <MatrixKey+0x12b4>
1c004bcc:	1400008c 	lu12i.w	$r12,4(0x4)
1c004bd0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004bd4:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c004bd8:	50008400 	b	132(0x84) # 1c004c5c <MatrixKey+0x1354>
1c004bdc:	03400000 	andi	$r0,$r0,0x0
1c004be0:	03400000 	andi	$r0,$r0,0x0
1c004be4:	03400000 	andi	$r0,$r0,0x0
1c004be8:	03400000 	andi	$r0,$r0,0x0
1c004bec:	03400000 	andi	$r0,$r0,0x0
1c004bf0:	03400000 	andi	$r0,$r0,0x0
1c004bf4:	03400000 	andi	$r0,$r0,0x0
1c004bf8:	03400000 	andi	$r0,$r0,0x0
1c004bfc:	03400000 	andi	$r0,$r0,0x0
1c004c00:	03400000 	andi	$r0,$r0,0x0
1c004c04:	03400000 	andi	$r0,$r0,0x0
1c004c08:	03400000 	andi	$r0,$r0,0x0
1c004c0c:	03400000 	andi	$r0,$r0,0x0
1c004c10:	03400000 	andi	$r0,$r0,0x0
1c004c14:	03400000 	andi	$r0,$r0,0x0
1c004c18:	03400000 	andi	$r0,$r0,0x0
1c004c1c:	03400000 	andi	$r0,$r0,0x0
1c004c20:	03400000 	andi	$r0,$r0,0x0
1c004c24:	03400000 	andi	$r0,$r0,0x0
1c004c28:	03400000 	andi	$r0,$r0,0x0
1c004c2c:	03400000 	andi	$r0,$r0,0x0
1c004c30:	03400000 	andi	$r0,$r0,0x0
1c004c34:	03400000 	andi	$r0,$r0,0x0
1c004c38:	03400000 	andi	$r0,$r0,0x0
1c004c3c:	03400000 	andi	$r0,$r0,0x0
1c004c40:	03400000 	andi	$r0,$r0,0x0
1c004c44:	03400000 	andi	$r0,$r0,0x0
1c004c48:	03400000 	andi	$r0,$r0,0x0
1c004c4c:	03400000 	andi	$r0,$r0,0x0
1c004c50:	03400000 	andi	$r0,$r0,0x0
1c004c54:	03400000 	andi	$r0,$r0,0x0
1c004c58:	03400000 	andi	$r0,$r0,0x0
1c004c5c:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c004c60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004c64:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c004c68:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004bdc <MatrixKey+0x12d4>
1c004c6c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c004c70:	50044c00 	b	1100(0x44c) # 1c0050bc <MatrixKey+0x17b4>
1c004c74:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004c78:	57cdabff 	bl	-12888(0xfffcda8) # 1c001a20 <gpio_read>
1c004c7c:	0015008c 	move	$r12,$r4
1c004c80:	44016180 	bnez	$r12,352(0x160) # 1c004de0 <MatrixKey+0x14d8>
1c004c84:	1400008c 	lu12i.w	$r12,4(0x4)
1c004c88:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004c8c:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c004c90:	50008400 	b	132(0x84) # 1c004d14 <MatrixKey+0x140c>
1c004c94:	03400000 	andi	$r0,$r0,0x0
1c004c98:	03400000 	andi	$r0,$r0,0x0
1c004c9c:	03400000 	andi	$r0,$r0,0x0
1c004ca0:	03400000 	andi	$r0,$r0,0x0
1c004ca4:	03400000 	andi	$r0,$r0,0x0
1c004ca8:	03400000 	andi	$r0,$r0,0x0
1c004cac:	03400000 	andi	$r0,$r0,0x0
1c004cb0:	03400000 	andi	$r0,$r0,0x0
1c004cb4:	03400000 	andi	$r0,$r0,0x0
1c004cb8:	03400000 	andi	$r0,$r0,0x0
1c004cbc:	03400000 	andi	$r0,$r0,0x0
1c004cc0:	03400000 	andi	$r0,$r0,0x0
1c004cc4:	03400000 	andi	$r0,$r0,0x0
1c004cc8:	03400000 	andi	$r0,$r0,0x0
1c004ccc:	03400000 	andi	$r0,$r0,0x0
1c004cd0:	03400000 	andi	$r0,$r0,0x0
1c004cd4:	03400000 	andi	$r0,$r0,0x0
1c004cd8:	03400000 	andi	$r0,$r0,0x0
1c004cdc:	03400000 	andi	$r0,$r0,0x0
1c004ce0:	03400000 	andi	$r0,$r0,0x0
1c004ce4:	03400000 	andi	$r0,$r0,0x0
1c004ce8:	03400000 	andi	$r0,$r0,0x0
1c004cec:	03400000 	andi	$r0,$r0,0x0
1c004cf0:	03400000 	andi	$r0,$r0,0x0
1c004cf4:	03400000 	andi	$r0,$r0,0x0
1c004cf8:	03400000 	andi	$r0,$r0,0x0
1c004cfc:	03400000 	andi	$r0,$r0,0x0
1c004d00:	03400000 	andi	$r0,$r0,0x0
1c004d04:	03400000 	andi	$r0,$r0,0x0
1c004d08:	03400000 	andi	$r0,$r0,0x0
1c004d0c:	03400000 	andi	$r0,$r0,0x0
1c004d10:	03400000 	andi	$r0,$r0,0x0
1c004d14:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c004d18:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004d1c:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c004d20:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004c94 <MatrixKey+0x138c>
1c004d24:	03400000 	andi	$r0,$r0,0x0
1c004d28:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004d2c:	57ccf7ff 	bl	-13068(0xfffccf4) # 1c001a20 <gpio_read>
1c004d30:	0015008c 	move	$r12,$r4
1c004d34:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004d28 <MatrixKey+0x1420>
1c004d38:	1400008c 	lu12i.w	$r12,4(0x4)
1c004d3c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004d40:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c004d44:	50008400 	b	132(0x84) # 1c004dc8 <MatrixKey+0x14c0>
1c004d48:	03400000 	andi	$r0,$r0,0x0
1c004d4c:	03400000 	andi	$r0,$r0,0x0
1c004d50:	03400000 	andi	$r0,$r0,0x0
1c004d54:	03400000 	andi	$r0,$r0,0x0
1c004d58:	03400000 	andi	$r0,$r0,0x0
1c004d5c:	03400000 	andi	$r0,$r0,0x0
1c004d60:	03400000 	andi	$r0,$r0,0x0
1c004d64:	03400000 	andi	$r0,$r0,0x0
1c004d68:	03400000 	andi	$r0,$r0,0x0
1c004d6c:	03400000 	andi	$r0,$r0,0x0
1c004d70:	03400000 	andi	$r0,$r0,0x0
1c004d74:	03400000 	andi	$r0,$r0,0x0
1c004d78:	03400000 	andi	$r0,$r0,0x0
1c004d7c:	03400000 	andi	$r0,$r0,0x0
1c004d80:	03400000 	andi	$r0,$r0,0x0
1c004d84:	03400000 	andi	$r0,$r0,0x0
1c004d88:	03400000 	andi	$r0,$r0,0x0
1c004d8c:	03400000 	andi	$r0,$r0,0x0
1c004d90:	03400000 	andi	$r0,$r0,0x0
1c004d94:	03400000 	andi	$r0,$r0,0x0
1c004d98:	03400000 	andi	$r0,$r0,0x0
1c004d9c:	03400000 	andi	$r0,$r0,0x0
1c004da0:	03400000 	andi	$r0,$r0,0x0
1c004da4:	03400000 	andi	$r0,$r0,0x0
1c004da8:	03400000 	andi	$r0,$r0,0x0
1c004dac:	03400000 	andi	$r0,$r0,0x0
1c004db0:	03400000 	andi	$r0,$r0,0x0
1c004db4:	03400000 	andi	$r0,$r0,0x0
1c004db8:	03400000 	andi	$r0,$r0,0x0
1c004dbc:	03400000 	andi	$r0,$r0,0x0
1c004dc0:	03400000 	andi	$r0,$r0,0x0
1c004dc4:	03400000 	andi	$r0,$r0,0x0
1c004dc8:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c004dcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004dd0:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c004dd4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004d48 <MatrixKey+0x1440>
1c004dd8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004ddc:	5002e000 	b	736(0x2e0) # 1c0050bc <MatrixKey+0x17b4>
1c004de0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004de4:	57cc3fff 	bl	-13252(0xfffcc3c) # 1c001a20 <gpio_read>
1c004de8:	0015008c 	move	$r12,$r4
1c004dec:	44016180 	bnez	$r12,352(0x160) # 1c004f4c <MatrixKey+0x1644>
1c004df0:	1400008c 	lu12i.w	$r12,4(0x4)
1c004df4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004df8:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c004dfc:	50008400 	b	132(0x84) # 1c004e80 <MatrixKey+0x1578>
1c004e00:	03400000 	andi	$r0,$r0,0x0
1c004e04:	03400000 	andi	$r0,$r0,0x0
1c004e08:	03400000 	andi	$r0,$r0,0x0
1c004e0c:	03400000 	andi	$r0,$r0,0x0
1c004e10:	03400000 	andi	$r0,$r0,0x0
1c004e14:	03400000 	andi	$r0,$r0,0x0
1c004e18:	03400000 	andi	$r0,$r0,0x0
1c004e1c:	03400000 	andi	$r0,$r0,0x0
1c004e20:	03400000 	andi	$r0,$r0,0x0
1c004e24:	03400000 	andi	$r0,$r0,0x0
1c004e28:	03400000 	andi	$r0,$r0,0x0
1c004e2c:	03400000 	andi	$r0,$r0,0x0
1c004e30:	03400000 	andi	$r0,$r0,0x0
1c004e34:	03400000 	andi	$r0,$r0,0x0
1c004e38:	03400000 	andi	$r0,$r0,0x0
1c004e3c:	03400000 	andi	$r0,$r0,0x0
1c004e40:	03400000 	andi	$r0,$r0,0x0
1c004e44:	03400000 	andi	$r0,$r0,0x0
1c004e48:	03400000 	andi	$r0,$r0,0x0
1c004e4c:	03400000 	andi	$r0,$r0,0x0
1c004e50:	03400000 	andi	$r0,$r0,0x0
1c004e54:	03400000 	andi	$r0,$r0,0x0
1c004e58:	03400000 	andi	$r0,$r0,0x0
1c004e5c:	03400000 	andi	$r0,$r0,0x0
1c004e60:	03400000 	andi	$r0,$r0,0x0
1c004e64:	03400000 	andi	$r0,$r0,0x0
1c004e68:	03400000 	andi	$r0,$r0,0x0
1c004e6c:	03400000 	andi	$r0,$r0,0x0
1c004e70:	03400000 	andi	$r0,$r0,0x0
1c004e74:	03400000 	andi	$r0,$r0,0x0
1c004e78:	03400000 	andi	$r0,$r0,0x0
1c004e7c:	03400000 	andi	$r0,$r0,0x0
1c004e80:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c004e84:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e88:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c004e8c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004e00 <MatrixKey+0x14f8>
1c004e90:	03400000 	andi	$r0,$r0,0x0
1c004e94:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004e98:	57cb8bff 	bl	-13432(0xfffcb88) # 1c001a20 <gpio_read>
1c004e9c:	0015008c 	move	$r12,$r4
1c004ea0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004e94 <MatrixKey+0x158c>
1c004ea4:	1400008c 	lu12i.w	$r12,4(0x4)
1c004ea8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004eac:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c004eb0:	50008400 	b	132(0x84) # 1c004f34 <MatrixKey+0x162c>
1c004eb4:	03400000 	andi	$r0,$r0,0x0
1c004eb8:	03400000 	andi	$r0,$r0,0x0
1c004ebc:	03400000 	andi	$r0,$r0,0x0
1c004ec0:	03400000 	andi	$r0,$r0,0x0
1c004ec4:	03400000 	andi	$r0,$r0,0x0
1c004ec8:	03400000 	andi	$r0,$r0,0x0
1c004ecc:	03400000 	andi	$r0,$r0,0x0
1c004ed0:	03400000 	andi	$r0,$r0,0x0
1c004ed4:	03400000 	andi	$r0,$r0,0x0
1c004ed8:	03400000 	andi	$r0,$r0,0x0
1c004edc:	03400000 	andi	$r0,$r0,0x0
1c004ee0:	03400000 	andi	$r0,$r0,0x0
1c004ee4:	03400000 	andi	$r0,$r0,0x0
1c004ee8:	03400000 	andi	$r0,$r0,0x0
1c004eec:	03400000 	andi	$r0,$r0,0x0
1c004ef0:	03400000 	andi	$r0,$r0,0x0
1c004ef4:	03400000 	andi	$r0,$r0,0x0
1c004ef8:	03400000 	andi	$r0,$r0,0x0
1c004efc:	03400000 	andi	$r0,$r0,0x0
1c004f00:	03400000 	andi	$r0,$r0,0x0
1c004f04:	03400000 	andi	$r0,$r0,0x0
1c004f08:	03400000 	andi	$r0,$r0,0x0
1c004f0c:	03400000 	andi	$r0,$r0,0x0
1c004f10:	03400000 	andi	$r0,$r0,0x0
1c004f14:	03400000 	andi	$r0,$r0,0x0
1c004f18:	03400000 	andi	$r0,$r0,0x0
1c004f1c:	03400000 	andi	$r0,$r0,0x0
1c004f20:	03400000 	andi	$r0,$r0,0x0
1c004f24:	03400000 	andi	$r0,$r0,0x0
1c004f28:	03400000 	andi	$r0,$r0,0x0
1c004f2c:	03400000 	andi	$r0,$r0,0x0
1c004f30:	03400000 	andi	$r0,$r0,0x0
1c004f34:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c004f38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f3c:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c004f40:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004eb4 <MatrixKey+0x15ac>
1c004f44:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c004f48:	50017400 	b	372(0x174) # 1c0050bc <MatrixKey+0x17b4>
1c004f4c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004f50:	57cad3ff 	bl	-13616(0xfffcad0) # 1c001a20 <gpio_read>
1c004f54:	0015008c 	move	$r12,$r4
1c004f58:	44016180 	bnez	$r12,352(0x160) # 1c0050b8 <MatrixKey+0x17b0>
1c004f5c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004f60:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004f64:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c004f68:	50008400 	b	132(0x84) # 1c004fec <MatrixKey+0x16e4>
1c004f6c:	03400000 	andi	$r0,$r0,0x0
1c004f70:	03400000 	andi	$r0,$r0,0x0
1c004f74:	03400000 	andi	$r0,$r0,0x0
1c004f78:	03400000 	andi	$r0,$r0,0x0
1c004f7c:	03400000 	andi	$r0,$r0,0x0
1c004f80:	03400000 	andi	$r0,$r0,0x0
1c004f84:	03400000 	andi	$r0,$r0,0x0
1c004f88:	03400000 	andi	$r0,$r0,0x0
1c004f8c:	03400000 	andi	$r0,$r0,0x0
1c004f90:	03400000 	andi	$r0,$r0,0x0
1c004f94:	03400000 	andi	$r0,$r0,0x0
1c004f98:	03400000 	andi	$r0,$r0,0x0
1c004f9c:	03400000 	andi	$r0,$r0,0x0
1c004fa0:	03400000 	andi	$r0,$r0,0x0
1c004fa4:	03400000 	andi	$r0,$r0,0x0
1c004fa8:	03400000 	andi	$r0,$r0,0x0
1c004fac:	03400000 	andi	$r0,$r0,0x0
1c004fb0:	03400000 	andi	$r0,$r0,0x0
1c004fb4:	03400000 	andi	$r0,$r0,0x0
1c004fb8:	03400000 	andi	$r0,$r0,0x0
1c004fbc:	03400000 	andi	$r0,$r0,0x0
1c004fc0:	03400000 	andi	$r0,$r0,0x0
1c004fc4:	03400000 	andi	$r0,$r0,0x0
1c004fc8:	03400000 	andi	$r0,$r0,0x0
1c004fcc:	03400000 	andi	$r0,$r0,0x0
1c004fd0:	03400000 	andi	$r0,$r0,0x0
1c004fd4:	03400000 	andi	$r0,$r0,0x0
1c004fd8:	03400000 	andi	$r0,$r0,0x0
1c004fdc:	03400000 	andi	$r0,$r0,0x0
1c004fe0:	03400000 	andi	$r0,$r0,0x0
1c004fe4:	03400000 	andi	$r0,$r0,0x0
1c004fe8:	03400000 	andi	$r0,$r0,0x0
1c004fec:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c004ff0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004ff4:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c004ff8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004f6c <MatrixKey+0x1664>
1c004ffc:	03400000 	andi	$r0,$r0,0x0
1c005000:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005004:	57ca1fff 	bl	-13796(0xfffca1c) # 1c001a20 <gpio_read>
1c005008:	0015008c 	move	$r12,$r4
1c00500c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c005000 <MatrixKey+0x16f8>
1c005010:	1400008c 	lu12i.w	$r12,4(0x4)
1c005014:	03a3d98c 	ori	$r12,$r12,0x8f6
1c005018:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c00501c:	50008400 	b	132(0x84) # 1c0050a0 <MatrixKey+0x1798>
1c005020:	03400000 	andi	$r0,$r0,0x0
1c005024:	03400000 	andi	$r0,$r0,0x0
1c005028:	03400000 	andi	$r0,$r0,0x0
1c00502c:	03400000 	andi	$r0,$r0,0x0
1c005030:	03400000 	andi	$r0,$r0,0x0
1c005034:	03400000 	andi	$r0,$r0,0x0
1c005038:	03400000 	andi	$r0,$r0,0x0
1c00503c:	03400000 	andi	$r0,$r0,0x0
1c005040:	03400000 	andi	$r0,$r0,0x0
1c005044:	03400000 	andi	$r0,$r0,0x0
1c005048:	03400000 	andi	$r0,$r0,0x0
1c00504c:	03400000 	andi	$r0,$r0,0x0
1c005050:	03400000 	andi	$r0,$r0,0x0
1c005054:	03400000 	andi	$r0,$r0,0x0
1c005058:	03400000 	andi	$r0,$r0,0x0
1c00505c:	03400000 	andi	$r0,$r0,0x0
1c005060:	03400000 	andi	$r0,$r0,0x0
1c005064:	03400000 	andi	$r0,$r0,0x0
1c005068:	03400000 	andi	$r0,$r0,0x0
1c00506c:	03400000 	andi	$r0,$r0,0x0
1c005070:	03400000 	andi	$r0,$r0,0x0
1c005074:	03400000 	andi	$r0,$r0,0x0
1c005078:	03400000 	andi	$r0,$r0,0x0
1c00507c:	03400000 	andi	$r0,$r0,0x0
1c005080:	03400000 	andi	$r0,$r0,0x0
1c005084:	03400000 	andi	$r0,$r0,0x0
1c005088:	03400000 	andi	$r0,$r0,0x0
1c00508c:	03400000 	andi	$r0,$r0,0x0
1c005090:	03400000 	andi	$r0,$r0,0x0
1c005094:	03400000 	andi	$r0,$r0,0x0
1c005098:	03400000 	andi	$r0,$r0,0x0
1c00509c:	03400000 	andi	$r0,$r0,0x0
1c0050a0:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c0050a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0050a8:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c0050ac:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005020 <MatrixKey+0x1718>
1c0050b0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0050b4:	50000800 	b	8(0x8) # 1c0050bc <MatrixKey+0x17b4>
1c0050b8:	0015000c 	move	$r12,$r0
1c0050bc:	00150184 	move	$r4,$r12
1c0050c0:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c0050c4:	28826076 	ld.w	$r22,$r3,152(0x98)
1c0050c8:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c0050cc:	4c000020 	jirl	$r0,$r1,0

1c0050d0 <LEDgree_ON>:
LEDgree_ON():
1c0050d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050e0:	00150005 	move	$r5,$r0
1c0050e4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050e8:	57c843ff 	bl	-14272(0xfffc840) # 1c001928 <gpio_write>
1c0050ec:	03400000 	andi	$r0,$r0,0x0
1c0050f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050fc:	4c000020 	jirl	$r0,$r1,0

1c005100 <LEDgree_OFF>:
LEDgree_OFF():
1c005100:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005104:	29803061 	st.w	$r1,$r3,12(0xc)
1c005108:	29802076 	st.w	$r22,$r3,8(0x8)
1c00510c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005110:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005114:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005118:	57c813ff 	bl	-14320(0xfffc810) # 1c001928 <gpio_write>
1c00511c:	03400000 	andi	$r0,$r0,0x0
1c005120:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005124:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005128:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00512c:	4c000020 	jirl	$r0,$r1,0

1c005130 <Buzzer>:
Buzzer():
1c005130:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005134:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005138:	29806076 	st.w	$r22,$r3,24(0x18)
1c00513c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005140:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005144:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005148:	57c7e3ff 	bl	-14368(0xfffc7e0) # 1c001928 <gpio_write>
1c00514c:	1400016c 	lu12i.w	$r12,11(0xb)
1c005150:	0399958c 	ori	$r12,$r12,0x665
1c005154:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005158:	50008400 	b	132(0x84) # 1c0051dc <Buzzer+0xac>
1c00515c:	03400000 	andi	$r0,$r0,0x0
1c005160:	03400000 	andi	$r0,$r0,0x0
1c005164:	03400000 	andi	$r0,$r0,0x0
1c005168:	03400000 	andi	$r0,$r0,0x0
1c00516c:	03400000 	andi	$r0,$r0,0x0
1c005170:	03400000 	andi	$r0,$r0,0x0
1c005174:	03400000 	andi	$r0,$r0,0x0
1c005178:	03400000 	andi	$r0,$r0,0x0
1c00517c:	03400000 	andi	$r0,$r0,0x0
1c005180:	03400000 	andi	$r0,$r0,0x0
1c005184:	03400000 	andi	$r0,$r0,0x0
1c005188:	03400000 	andi	$r0,$r0,0x0
1c00518c:	03400000 	andi	$r0,$r0,0x0
1c005190:	03400000 	andi	$r0,$r0,0x0
1c005194:	03400000 	andi	$r0,$r0,0x0
1c005198:	03400000 	andi	$r0,$r0,0x0
1c00519c:	03400000 	andi	$r0,$r0,0x0
1c0051a0:	03400000 	andi	$r0,$r0,0x0
1c0051a4:	03400000 	andi	$r0,$r0,0x0
1c0051a8:	03400000 	andi	$r0,$r0,0x0
1c0051ac:	03400000 	andi	$r0,$r0,0x0
1c0051b0:	03400000 	andi	$r0,$r0,0x0
1c0051b4:	03400000 	andi	$r0,$r0,0x0
1c0051b8:	03400000 	andi	$r0,$r0,0x0
1c0051bc:	03400000 	andi	$r0,$r0,0x0
1c0051c0:	03400000 	andi	$r0,$r0,0x0
1c0051c4:	03400000 	andi	$r0,$r0,0x0
1c0051c8:	03400000 	andi	$r0,$r0,0x0
1c0051cc:	03400000 	andi	$r0,$r0,0x0
1c0051d0:	03400000 	andi	$r0,$r0,0x0
1c0051d4:	03400000 	andi	$r0,$r0,0x0
1c0051d8:	03400000 	andi	$r0,$r0,0x0
1c0051dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0051e4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0051e8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00515c <Buzzer+0x2c>
1c0051ec:	00150005 	move	$r5,$r0
1c0051f0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0051f4:	57c737ff 	bl	-14540(0xfffc734) # 1c001928 <gpio_write>
1c0051f8:	1400016c 	lu12i.w	$r12,11(0xb)
1c0051fc:	0399958c 	ori	$r12,$r12,0x665
1c005200:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005204:	50008400 	b	132(0x84) # 1c005288 <Buzzer+0x158>
1c005208:	03400000 	andi	$r0,$r0,0x0
1c00520c:	03400000 	andi	$r0,$r0,0x0
1c005210:	03400000 	andi	$r0,$r0,0x0
1c005214:	03400000 	andi	$r0,$r0,0x0
1c005218:	03400000 	andi	$r0,$r0,0x0
1c00521c:	03400000 	andi	$r0,$r0,0x0
1c005220:	03400000 	andi	$r0,$r0,0x0
1c005224:	03400000 	andi	$r0,$r0,0x0
1c005228:	03400000 	andi	$r0,$r0,0x0
1c00522c:	03400000 	andi	$r0,$r0,0x0
1c005230:	03400000 	andi	$r0,$r0,0x0
1c005234:	03400000 	andi	$r0,$r0,0x0
1c005238:	03400000 	andi	$r0,$r0,0x0
1c00523c:	03400000 	andi	$r0,$r0,0x0
1c005240:	03400000 	andi	$r0,$r0,0x0
1c005244:	03400000 	andi	$r0,$r0,0x0
1c005248:	03400000 	andi	$r0,$r0,0x0
1c00524c:	03400000 	andi	$r0,$r0,0x0
1c005250:	03400000 	andi	$r0,$r0,0x0
1c005254:	03400000 	andi	$r0,$r0,0x0
1c005258:	03400000 	andi	$r0,$r0,0x0
1c00525c:	03400000 	andi	$r0,$r0,0x0
1c005260:	03400000 	andi	$r0,$r0,0x0
1c005264:	03400000 	andi	$r0,$r0,0x0
1c005268:	03400000 	andi	$r0,$r0,0x0
1c00526c:	03400000 	andi	$r0,$r0,0x0
1c005270:	03400000 	andi	$r0,$r0,0x0
1c005274:	03400000 	andi	$r0,$r0,0x0
1c005278:	03400000 	andi	$r0,$r0,0x0
1c00527c:	03400000 	andi	$r0,$r0,0x0
1c005280:	03400000 	andi	$r0,$r0,0x0
1c005284:	03400000 	andi	$r0,$r0,0x0
1c005288:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00528c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005290:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c005294:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005208 <Buzzer+0xd8>
1c005298:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00529c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0052a0:	57c68bff 	bl	-14712(0xfffc688) # 1c001928 <gpio_write>
1c0052a4:	1400016c 	lu12i.w	$r12,11(0xb)
1c0052a8:	0399958c 	ori	$r12,$r12,0x665
1c0052ac:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0052b0:	50008400 	b	132(0x84) # 1c005334 <Buzzer+0x204>
1c0052b4:	03400000 	andi	$r0,$r0,0x0
1c0052b8:	03400000 	andi	$r0,$r0,0x0
1c0052bc:	03400000 	andi	$r0,$r0,0x0
1c0052c0:	03400000 	andi	$r0,$r0,0x0
1c0052c4:	03400000 	andi	$r0,$r0,0x0
1c0052c8:	03400000 	andi	$r0,$r0,0x0
1c0052cc:	03400000 	andi	$r0,$r0,0x0
1c0052d0:	03400000 	andi	$r0,$r0,0x0
1c0052d4:	03400000 	andi	$r0,$r0,0x0
1c0052d8:	03400000 	andi	$r0,$r0,0x0
1c0052dc:	03400000 	andi	$r0,$r0,0x0
1c0052e0:	03400000 	andi	$r0,$r0,0x0
1c0052e4:	03400000 	andi	$r0,$r0,0x0
1c0052e8:	03400000 	andi	$r0,$r0,0x0
1c0052ec:	03400000 	andi	$r0,$r0,0x0
1c0052f0:	03400000 	andi	$r0,$r0,0x0
1c0052f4:	03400000 	andi	$r0,$r0,0x0
1c0052f8:	03400000 	andi	$r0,$r0,0x0
1c0052fc:	03400000 	andi	$r0,$r0,0x0
1c005300:	03400000 	andi	$r0,$r0,0x0
1c005304:	03400000 	andi	$r0,$r0,0x0
1c005308:	03400000 	andi	$r0,$r0,0x0
1c00530c:	03400000 	andi	$r0,$r0,0x0
1c005310:	03400000 	andi	$r0,$r0,0x0
1c005314:	03400000 	andi	$r0,$r0,0x0
1c005318:	03400000 	andi	$r0,$r0,0x0
1c00531c:	03400000 	andi	$r0,$r0,0x0
1c005320:	03400000 	andi	$r0,$r0,0x0
1c005324:	03400000 	andi	$r0,$r0,0x0
1c005328:	03400000 	andi	$r0,$r0,0x0
1c00532c:	03400000 	andi	$r0,$r0,0x0
1c005330:	03400000 	andi	$r0,$r0,0x0
1c005334:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005338:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00533c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c005340:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0052b4 <Buzzer+0x184>
1c005344:	00150005 	move	$r5,$r0
1c005348:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00534c:	57c5dfff 	bl	-14884(0xfffc5dc) # 1c001928 <gpio_write>
1c005350:	03400000 	andi	$r0,$r0,0x0
1c005354:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005358:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00535c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005360:	4c000020 	jirl	$r0,$r1,0

1c005364 <Buzzer_one>:
Buzzer_one():
1c005364:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005368:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00536c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005370:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005374:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005378:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00537c:	57c5afff 	bl	-14932(0xfffc5ac) # 1c001928 <gpio_write>
1c005380:	1400088c 	lu12i.w	$r12,68(0x44)
1c005384:	0399798c 	ori	$r12,$r12,0x65e
1c005388:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00538c:	50008400 	b	132(0x84) # 1c005410 <Buzzer_one+0xac>
1c005390:	03400000 	andi	$r0,$r0,0x0
1c005394:	03400000 	andi	$r0,$r0,0x0
1c005398:	03400000 	andi	$r0,$r0,0x0
1c00539c:	03400000 	andi	$r0,$r0,0x0
1c0053a0:	03400000 	andi	$r0,$r0,0x0
1c0053a4:	03400000 	andi	$r0,$r0,0x0
1c0053a8:	03400000 	andi	$r0,$r0,0x0
1c0053ac:	03400000 	andi	$r0,$r0,0x0
1c0053b0:	03400000 	andi	$r0,$r0,0x0
1c0053b4:	03400000 	andi	$r0,$r0,0x0
1c0053b8:	03400000 	andi	$r0,$r0,0x0
1c0053bc:	03400000 	andi	$r0,$r0,0x0
1c0053c0:	03400000 	andi	$r0,$r0,0x0
1c0053c4:	03400000 	andi	$r0,$r0,0x0
1c0053c8:	03400000 	andi	$r0,$r0,0x0
1c0053cc:	03400000 	andi	$r0,$r0,0x0
1c0053d0:	03400000 	andi	$r0,$r0,0x0
1c0053d4:	03400000 	andi	$r0,$r0,0x0
1c0053d8:	03400000 	andi	$r0,$r0,0x0
1c0053dc:	03400000 	andi	$r0,$r0,0x0
1c0053e0:	03400000 	andi	$r0,$r0,0x0
1c0053e4:	03400000 	andi	$r0,$r0,0x0
1c0053e8:	03400000 	andi	$r0,$r0,0x0
1c0053ec:	03400000 	andi	$r0,$r0,0x0
1c0053f0:	03400000 	andi	$r0,$r0,0x0
1c0053f4:	03400000 	andi	$r0,$r0,0x0
1c0053f8:	03400000 	andi	$r0,$r0,0x0
1c0053fc:	03400000 	andi	$r0,$r0,0x0
1c005400:	03400000 	andi	$r0,$r0,0x0
1c005404:	03400000 	andi	$r0,$r0,0x0
1c005408:	03400000 	andi	$r0,$r0,0x0
1c00540c:	03400000 	andi	$r0,$r0,0x0
1c005410:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005414:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005418:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00541c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005390 <Buzzer_one+0x2c>
1c005420:	00150005 	move	$r5,$r0
1c005424:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005428:	57c503ff 	bl	-15104(0xfffc500) # 1c001928 <gpio_write>
1c00542c:	03400000 	andi	$r0,$r0,0x0
1c005430:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005434:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005438:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00543c:	4c000020 	jirl	$r0,$r1,0

1c005440 <TIM_GetITStatus>:
TIM_GetITStatus():
1c005440:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005444:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005448:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00544c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005450:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005454:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c005458:	2880018d 	ld.w	$r13,$r12,0
1c00545c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005460:	0014b1ac 	and	$r12,$r13,$r12
1c005464:	40001180 	beqz	$r12,16(0x10) # 1c005474 <TIM_GetITStatus+0x34>
1c005468:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00546c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005470:	50000800 	b	8(0x8) # 1c005478 <TIM_GetITStatus+0x38>
1c005474:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00547c:	00150184 	move	$r4,$r12
1c005480:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005484:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005488:	4c000020 	jirl	$r0,$r1,0

1c00548c <TIM_ClearIT>:
TIM_ClearIT():
1c00548c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005490:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005494:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005498:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00549c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0054a0:	2880018e 	ld.w	$r14,$r12,0
1c0054a4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0054a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0054ac:	001535cd 	or	$r13,$r14,$r13
1c0054b0:	2980018d 	st.w	$r13,$r12,0
1c0054b4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0054b8:	03800d8c 	ori	$r12,$r12,0x3
1c0054bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0054c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0054c4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0054c8:	03800d8c 	ori	$r12,$r12,0x3
1c0054cc:	038005ad 	ori	$r13,$r13,0x1
1c0054d0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0054d4:	2900018d 	st.b	$r13,$r12,0
1c0054d8:	03400000 	andi	$r0,$r0,0x0
1c0054dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0054e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054e4:	4c000020 	jirl	$r0,$r1,0

1c0054e8 <WriteCmd>:
WriteCmd():
1c0054e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054f8:	0015008c 	move	$r12,$r4
1c0054fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005500:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005504:	57c6e3ff 	bl	-14624(0xfffc6e0) # 1c001be4 <soc_I2C_GenerateSTART>
1c005508:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00550c:	57c763ff 	bl	-14496(0xfffc760) # 1c001c6c <soc_I2C_SendData>
1c005510:	57c7a7ff 	bl	-14428(0xfffc7a4) # 1c001cb4 <soc_I2C_wait>
1c005514:	00150004 	move	$r4,$r0
1c005518:	57c757ff 	bl	-14508(0xfffc754) # 1c001c6c <soc_I2C_SendData>
1c00551c:	57c79bff 	bl	-14440(0xfffc798) # 1c001cb4 <soc_I2C_wait>
1c005520:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005524:	00150184 	move	$r4,$r12
1c005528:	57c747ff 	bl	-14524(0xfffc744) # 1c001c6c <soc_I2C_SendData>
1c00552c:	57c78bff 	bl	-14456(0xfffc788) # 1c001cb4 <soc_I2C_wait>
1c005530:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005534:	57c6f7ff 	bl	-14604(0xfffc6f4) # 1c001c28 <soc_I2C_GenerateSTOP>
1c005538:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00553c:	57c593ff 	bl	-14960(0xfffc590) # 1c001acc <soc_I2C_delay>
1c005540:	03400000 	andi	$r0,$r0,0x0
1c005544:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005548:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00554c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005550:	4c000020 	jirl	$r0,$r1,0

1c005554 <WriteDat>:
WriteDat():
1c005554:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005558:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00555c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005560:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005564:	0015008c 	move	$r12,$r4
1c005568:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00556c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005570:	57c677ff 	bl	-14732(0xfffc674) # 1c001be4 <soc_I2C_GenerateSTART>
1c005574:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005578:	57c6f7ff 	bl	-14604(0xfffc6f4) # 1c001c6c <soc_I2C_SendData>
1c00557c:	57c73bff 	bl	-14536(0xfffc738) # 1c001cb4 <soc_I2C_wait>
1c005580:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005584:	57c6ebff 	bl	-14616(0xfffc6e8) # 1c001c6c <soc_I2C_SendData>
1c005588:	57c72fff 	bl	-14548(0xfffc72c) # 1c001cb4 <soc_I2C_wait>
1c00558c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005590:	00150184 	move	$r4,$r12
1c005594:	57c6dbff 	bl	-14632(0xfffc6d8) # 1c001c6c <soc_I2C_SendData>
1c005598:	57c71fff 	bl	-14564(0xfffc71c) # 1c001cb4 <soc_I2C_wait>
1c00559c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055a0:	57c68bff 	bl	-14712(0xfffc688) # 1c001c28 <soc_I2C_GenerateSTOP>
1c0055a4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055a8:	57c527ff 	bl	-15068(0xfffc524) # 1c001acc <soc_I2C_delay>
1c0055ac:	03400000 	andi	$r0,$r0,0x0
1c0055b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0055b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055bc:	4c000020 	jirl	$r0,$r1,0

1c0055c0 <OLED_Init>:
OLED_Init():
1c0055c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055d0:	140016cc 	lu12i.w	$r12,182(0xb6)
1c0055d4:	0399418c 	ori	$r12,$r12,0x650
1c0055d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0055dc:	50008400 	b	132(0x84) # 1c005660 <OLED_Init+0xa0>
1c0055e0:	03400000 	andi	$r0,$r0,0x0
1c0055e4:	03400000 	andi	$r0,$r0,0x0
1c0055e8:	03400000 	andi	$r0,$r0,0x0
1c0055ec:	03400000 	andi	$r0,$r0,0x0
1c0055f0:	03400000 	andi	$r0,$r0,0x0
1c0055f4:	03400000 	andi	$r0,$r0,0x0
1c0055f8:	03400000 	andi	$r0,$r0,0x0
1c0055fc:	03400000 	andi	$r0,$r0,0x0
1c005600:	03400000 	andi	$r0,$r0,0x0
1c005604:	03400000 	andi	$r0,$r0,0x0
1c005608:	03400000 	andi	$r0,$r0,0x0
1c00560c:	03400000 	andi	$r0,$r0,0x0
1c005610:	03400000 	andi	$r0,$r0,0x0
1c005614:	03400000 	andi	$r0,$r0,0x0
1c005618:	03400000 	andi	$r0,$r0,0x0
1c00561c:	03400000 	andi	$r0,$r0,0x0
1c005620:	03400000 	andi	$r0,$r0,0x0
1c005624:	03400000 	andi	$r0,$r0,0x0
1c005628:	03400000 	andi	$r0,$r0,0x0
1c00562c:	03400000 	andi	$r0,$r0,0x0
1c005630:	03400000 	andi	$r0,$r0,0x0
1c005634:	03400000 	andi	$r0,$r0,0x0
1c005638:	03400000 	andi	$r0,$r0,0x0
1c00563c:	03400000 	andi	$r0,$r0,0x0
1c005640:	03400000 	andi	$r0,$r0,0x0
1c005644:	03400000 	andi	$r0,$r0,0x0
1c005648:	03400000 	andi	$r0,$r0,0x0
1c00564c:	03400000 	andi	$r0,$r0,0x0
1c005650:	03400000 	andi	$r0,$r0,0x0
1c005654:	03400000 	andi	$r0,$r0,0x0
1c005658:	03400000 	andi	$r0,$r0,0x0
1c00565c:	03400000 	andi	$r0,$r0,0x0
1c005660:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005664:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005668:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00566c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0055e0 <OLED_Init+0x20>
1c005670:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005674:	57fe77ff 	bl	-396(0xffffe74) # 1c0054e8 <WriteCmd>
1c005678:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00567c:	57fe6fff 	bl	-404(0xffffe6c) # 1c0054e8 <WriteCmd>
1c005680:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005684:	57fe67ff 	bl	-412(0xffffe64) # 1c0054e8 <WriteCmd>
1c005688:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c00568c:	57fe5fff 	bl	-420(0xffffe5c) # 1c0054e8 <WriteCmd>
1c005690:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c005694:	57fe57ff 	bl	-428(0xffffe54) # 1c0054e8 <WriteCmd>
1c005698:	00150004 	move	$r4,$r0
1c00569c:	57fe4fff 	bl	-436(0xffffe4c) # 1c0054e8 <WriteCmd>
1c0056a0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0056a4:	57fe47ff 	bl	-444(0xffffe44) # 1c0054e8 <WriteCmd>
1c0056a8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0056ac:	57fe3fff 	bl	-452(0xffffe3c) # 1c0054e8 <WriteCmd>
1c0056b0:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0056b4:	57fe37ff 	bl	-460(0xffffe34) # 1c0054e8 <WriteCmd>
1c0056b8:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0056bc:	57fe2fff 	bl	-468(0xffffe2c) # 1c0054e8 <WriteCmd>
1c0056c0:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0056c4:	57fe27ff 	bl	-476(0xffffe24) # 1c0054e8 <WriteCmd>
1c0056c8:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0056cc:	57fe1fff 	bl	-484(0xffffe1c) # 1c0054e8 <WriteCmd>
1c0056d0:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0056d4:	57fe17ff 	bl	-492(0xffffe14) # 1c0054e8 <WriteCmd>
1c0056d8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0056dc:	57fe0fff 	bl	-500(0xffffe0c) # 1c0054e8 <WriteCmd>
1c0056e0:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0056e4:	57fe07ff 	bl	-508(0xffffe04) # 1c0054e8 <WriteCmd>
1c0056e8:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0056ec:	57fdffff 	bl	-516(0xffffdfc) # 1c0054e8 <WriteCmd>
1c0056f0:	00150004 	move	$r4,$r0
1c0056f4:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0054e8 <WriteCmd>
1c0056f8:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c0056fc:	57fdefff 	bl	-532(0xffffdec) # 1c0054e8 <WriteCmd>
1c005700:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c005704:	57fde7ff 	bl	-540(0xffffde4) # 1c0054e8 <WriteCmd>
1c005708:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c00570c:	57fddfff 	bl	-548(0xffffddc) # 1c0054e8 <WriteCmd>
1c005710:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005714:	57fdd7ff 	bl	-556(0xffffdd4) # 1c0054e8 <WriteCmd>
1c005718:	02836804 	addi.w	$r4,$r0,218(0xda)
1c00571c:	57fdcfff 	bl	-564(0xffffdcc) # 1c0054e8 <WriteCmd>
1c005720:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005724:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0054e8 <WriteCmd>
1c005728:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c00572c:	57fdbfff 	bl	-580(0xffffdbc) # 1c0054e8 <WriteCmd>
1c005730:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005734:	57fdb7ff 	bl	-588(0xffffdb4) # 1c0054e8 <WriteCmd>
1c005738:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c00573c:	57fdafff 	bl	-596(0xffffdac) # 1c0054e8 <WriteCmd>
1c005740:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005744:	57fda7ff 	bl	-604(0xffffda4) # 1c0054e8 <WriteCmd>
1c005748:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c00574c:	57fd9fff 	bl	-612(0xffffd9c) # 1c0054e8 <WriteCmd>
1c005750:	03400000 	andi	$r0,$r0,0x0
1c005754:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005758:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00575c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005760:	4c000020 	jirl	$r0,$r1,0

1c005764 <OLED_SetPos>:
OLED_SetPos():
1c005764:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005768:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00576c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005770:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005774:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005778:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00577c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005784:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005788:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00578c:	00150184 	move	$r4,$r12
1c005790:	57fd5bff 	bl	-680(0xffffd58) # 1c0054e8 <WriteCmd>
1c005794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005798:	0044918c 	srli.w	$r12,$r12,0x4
1c00579c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057a0:	03403d8c 	andi	$r12,$r12,0xf
1c0057a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057a8:	0380418c 	ori	$r12,$r12,0x10
1c0057ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057b0:	00150184 	move	$r4,$r12
1c0057b4:	57fd37ff 	bl	-716(0xffffd34) # 1c0054e8 <WriteCmd>
1c0057b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057c0:	0340398c 	andi	$r12,$r12,0xe
1c0057c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057c8:	0380058c 	ori	$r12,$r12,0x1
1c0057cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057d0:	00150184 	move	$r4,$r12
1c0057d4:	57fd17ff 	bl	-748(0xffffd14) # 1c0054e8 <WriteCmd>
1c0057d8:	03400000 	andi	$r0,$r0,0x0
1c0057dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0057e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0057e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0057e8:	4c000020 	jirl	$r0,$r1,0

1c0057ec <OLED_Fill>:
OLED_Fill():
1c0057ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0057f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0057f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0057f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0057fc:	0015008c 	move	$r12,$r4
1c005800:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005804:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005808:	50006400 	b	100(0x64) # 1c00586c <OLED_Fill+0x80>
1c00580c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005810:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005814:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005818:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00581c:	00150184 	move	$r4,$r12
1c005820:	57fccbff 	bl	-824(0xffffcc8) # 1c0054e8 <WriteCmd>
1c005824:	00150004 	move	$r4,$r0
1c005828:	57fcc3ff 	bl	-832(0xffffcc0) # 1c0054e8 <WriteCmd>
1c00582c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005830:	57fcbbff 	bl	-840(0xffffcb8) # 1c0054e8 <WriteCmd>
1c005834:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005838:	50001c00 	b	28(0x1c) # 1c005854 <OLED_Fill+0x68>
1c00583c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005840:	00150184 	move	$r4,$r12
1c005844:	57fd13ff 	bl	-752(0xffffd10) # 1c005554 <WriteDat>
1c005848:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00584c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005850:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005854:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005858:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c00585c:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c00583c <OLED_Fill+0x50>
1c005860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005864:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005868:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00586c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005870:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005874:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c00580c <OLED_Fill+0x20>
1c005878:	03400000 	andi	$r0,$r0,0x0
1c00587c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005880:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005888:	4c000020 	jirl	$r0,$r1,0

1c00588c <OLED_CLS>:
OLED_CLS():
1c00588c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005890:	29803061 	st.w	$r1,$r3,12(0xc)
1c005894:	29802076 	st.w	$r22,$r3,8(0x8)
1c005898:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00589c:	00150004 	move	$r4,$r0
1c0058a0:	57ff4fff 	bl	-180(0xfffff4c) # 1c0057ec <OLED_Fill>
1c0058a4:	03400000 	andi	$r0,$r0,0x0
1c0058a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0058ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0058b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0058b4:	4c000020 	jirl	$r0,$r1,0

1c0058b8 <OLED_ShowStr>:
OLED_ShowStr():
1c0058b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0058bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0058c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0058c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0058c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0058cc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0058d0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0058d4:	001500ec 	move	$r12,$r7
1c0058d8:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c0058dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0058e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0058e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0058e8:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0058ec:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0058f0:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c0059a4 <OLED_ShowStr+0xec>
1c0058f4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0058f8:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c005abc <OLED_ShowStr+0x204>
1c0058fc:	5001d800 	b	472(0x1d8) # 1c005ad4 <OLED_ShowStr+0x21c>
1c005900:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005904:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005908:	001031ac 	add.w	$r12,$r13,$r12
1c00590c:	2a00018c 	ld.bu	$r12,$r12,0
1c005910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005914:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005918:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00591c:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c005920:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005934 <OLED_ShowStr+0x7c>
1c005924:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005928:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00592c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005930:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005934:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005938:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00593c:	57fe2bff 	bl	-472(0xffffe28) # 1c005764 <OLED_SetPos>
1c005940:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005944:	50003c00 	b	60(0x3c) # 1c005980 <OLED_ShowStr+0xc8>
1c005948:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c00594c:	02a0f1ad 	addi.w	$r13,$r13,-1988(0x83c)
1c005950:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c005954:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005958:	001c31cc 	mul.w	$r12,$r14,$r12
1c00595c:	001031ad 	add.w	$r13,$r13,$r12
1c005960:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005964:	001031ac 	add.w	$r12,$r13,$r12
1c005968:	2a00018c 	ld.bu	$r12,$r12,0
1c00596c:	00150184 	move	$r4,$r12
1c005970:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c005554 <WriteDat>
1c005974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005978:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00597c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005980:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005984:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005988:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005948 <OLED_ShowStr+0x90>
1c00598c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005990:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005994:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005998:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00599c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0059a4:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0059a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0059ac:	001031ac 	add.w	$r12,$r13,$r12
1c0059b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0059b4:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c005900 <OLED_ShowStr+0x48>
1c0059b8:	50011c00 	b	284(0x11c) # 1c005ad4 <OLED_ShowStr+0x21c>
1c0059bc:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0059c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0059c4:	001031ac 	add.w	$r12,$r13,$r12
1c0059c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059cc:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0059d0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0059d4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0059d8:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c0059dc:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0059f0 <OLED_ShowStr+0x138>
1c0059e0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0059e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059ec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0059f0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0059f4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0059f8:	57fd6fff 	bl	-660(0xffffd6c) # 1c005764 <OLED_SetPos>
1c0059fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a00:	50003800 	b	56(0x38) # 1c005a38 <OLED_ShowStr+0x180>
1c005a04:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005a08:	0040918d 	slli.w	$r13,$r12,0x4
1c005a0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a10:	001031ac 	add.w	$r12,$r13,$r12
1c005a14:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c005a18:	02a661ad 	addi.w	$r13,$r13,-1640(0x998)
1c005a1c:	001031ac 	add.w	$r12,$r13,$r12
1c005a20:	2a00018c 	ld.bu	$r12,$r12,0
1c005a24:	00150184 	move	$r4,$r12
1c005a28:	57fb2fff 	bl	-1236(0xffffb2c) # 1c005554 <WriteDat>
1c005a2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a38:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a3c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005a40:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005a04 <OLED_ShowStr+0x14c>
1c005a44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a4c:	00150185 	move	$r5,$r12
1c005a50:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005a54:	57fd13ff 	bl	-752(0xffffd10) # 1c005764 <OLED_SetPos>
1c005a58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a5c:	50003c00 	b	60(0x3c) # 1c005a98 <OLED_ShowStr+0x1e0>
1c005a60:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005a64:	0040918d 	slli.w	$r13,$r12,0x4
1c005a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a6c:	001031ac 	add.w	$r12,$r13,$r12
1c005a70:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005a74:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c005a78:	02a4e1ad 	addi.w	$r13,$r13,-1736(0x938)
1c005a7c:	001031ac 	add.w	$r12,$r13,$r12
1c005a80:	2a00018c 	ld.bu	$r12,$r12,0
1c005a84:	00150184 	move	$r4,$r12
1c005a88:	57facfff 	bl	-1332(0xffffacc) # 1c005554 <WriteDat>
1c005a8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a98:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a9c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005aa0:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005a60 <OLED_ShowStr+0x1a8>
1c005aa4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005aa8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005aac:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005ab0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ab4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ab8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005abc:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005ac0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ac4:	001031ac 	add.w	$r12,$r13,$r12
1c005ac8:	2a00018c 	ld.bu	$r12,$r12,0
1c005acc:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c0059bc <OLED_ShowStr+0x104>
1c005ad0:	03400000 	andi	$r0,$r0,0x0
1c005ad4:	03400000 	andi	$r0,$r0,0x0
1c005ad8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005adc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ae0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005ae4:	4c000020 	jirl	$r0,$r1,0

1c005ae8 <OLED_ShowCN>:
OLED_ShowCN():
1c005ae8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005aec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005af0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005af4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005af8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005afc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005b00:	001500cc 	move	$r12,$r6
1c005b04:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005b08:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b0c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b10:	0040958c 	slli.w	$r12,$r12,0x5
1c005b14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b18:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005b1c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005b20:	57fc47ff 	bl	-956(0xffffc44) # 1c005764 <OLED_SetPos>
1c005b24:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b28:	50003800 	b	56(0x38) # 1c005b60 <OLED_ShowCN+0x78>
1c005b2c:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005b30:	029411ad 	addi.w	$r13,$r13,1284(0x504)
1c005b34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b38:	001031ac 	add.w	$r12,$r13,$r12
1c005b3c:	2a00018c 	ld.bu	$r12,$r12,0
1c005b40:	00150184 	move	$r4,$r12
1c005b44:	57fa13ff 	bl	-1520(0xffffa10) # 1c005554 <WriteDat>
1c005b48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005b58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b5c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005b60:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005b64:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005b68:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005b2c <OLED_ShowCN+0x44>
1c005b6c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b74:	00150185 	move	$r5,$r12
1c005b78:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005b7c:	57fbebff 	bl	-1048(0xffffbe8) # 1c005764 <OLED_SetPos>
1c005b80:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b84:	50003800 	b	56(0x38) # 1c005bbc <OLED_ShowCN+0xd4>
1c005b88:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005b8c:	0292a1ad 	addi.w	$r13,$r13,1192(0x4a8)
1c005b90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b94:	001031ac 	add.w	$r12,$r13,$r12
1c005b98:	2a00018c 	ld.bu	$r12,$r12,0
1c005b9c:	00150184 	move	$r4,$r12
1c005ba0:	57f9b7ff 	bl	-1612(0xffff9b4) # 1c005554 <WriteDat>
1c005ba4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ba8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005bb0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005bb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bb8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005bbc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005bc0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005bc4:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005b88 <OLED_ShowCN+0xa0>
1c005bc8:	03400000 	andi	$r0,$r0,0x0
1c005bcc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005bd0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005bd4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bd8:	4c000020 	jirl	$r0,$r1,0

1c005bdc <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c005bdc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005be0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005be4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005be8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005bec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005bf0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005bf4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005bf8:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005bfc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c00:	50004800 	b	72(0x48) # 1c005c48 <OLED_ShowCN_STR+0x6c>
1c005c04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c08:	0040918d 	slli.w	$r13,$r12,0x4
1c005c0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c10:	001031ae 	add.w	$r14,$r13,$r12
1c005c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005c1c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005c20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c24:	001031ac 	add.w	$r12,$r13,$r12
1c005c28:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c2c:	00150186 	move	$r6,$r12
1c005c30:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005c34:	001501c4 	move	$r4,$r14
1c005c38:	57feb3ff 	bl	-336(0xffffeb0) # 1c005ae8 <OLED_ShowCN>
1c005c3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005c48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005c4c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005c50:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c005c04 <OLED_ShowCN_STR+0x28>
1c005c54:	03400000 	andi	$r0,$r0,0x0
1c005c58:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c5c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c60:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c64:	4c000020 	jirl	$r0,$r1,0

1c005c68 <OLED_DrawBMP>:
OLED_DrawBMP():
1c005c68:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005c6c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005c70:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005c74:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005c78:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c7c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005c80:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005c84:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005c88:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c005c8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c90:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005c94:	03401d8c 	andi	$r12,$r12,0x7
1c005c98:	44001580 	bnez	$r12,20(0x14) # 1c005cac <OLED_DrawBMP+0x44>
1c005c9c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005ca0:	00448d8c 	srli.w	$r12,$r12,0x3
1c005ca4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005ca8:	50001400 	b	20(0x14) # 1c005cbc <OLED_DrawBMP+0x54>
1c005cac:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005cb0:	00448d8c 	srli.w	$r12,$r12,0x3
1c005cb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cb8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005cbc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005cc0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005cc4:	50006000 	b	96(0x60) # 1c005d24 <OLED_DrawBMP+0xbc>
1c005cc8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c005ccc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005cd0:	57fa97ff 	bl	-1388(0xffffa94) # 1c005764 <OLED_SetPos>
1c005cd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005cd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005cdc:	50003000 	b	48(0x30) # 1c005d0c <OLED_DrawBMP+0xa4>
1c005ce0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ce4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005ce8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005cec:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c005cf0:	001031ac 	add.w	$r12,$r13,$r12
1c005cf4:	2a00018c 	ld.bu	$r12,$r12,0
1c005cf8:	00150184 	move	$r4,$r12
1c005cfc:	57f85bff 	bl	-1960(0xffff858) # 1c005554 <WriteDat>
1c005d00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005d04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005d0c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005d10:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005d14:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c005ce0 <OLED_DrawBMP+0x78>
1c005d18:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005d1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d24:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005d28:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005d2c:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c005cc8 <OLED_DrawBMP+0x60>
1c005d30:	03400000 	andi	$r0,$r0,0x0
1c005d34:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005d38:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005d3c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005d40:	4c000020 	jirl	$r0,$r1,0

1c005d44 <OLED_ShowChar>:
OLED_ShowChar():
1c005d44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005d48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005d4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d54:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d58:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d5c:	001500cc 	move	$r12,$r6
1c005d60:	001500ed 	move	$r13,$r7
1c005d64:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005d68:	001501ac 	move	$r12,$r13
1c005d6c:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c005d70:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005d74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d78:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005d7c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005d80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005d84:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005d88:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c005d8c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005da0 <OLED_ShowChar+0x5c>
1c005d90:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005d94:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d98:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005d9c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005da0:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c005da4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005da8:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c005e64 <OLED_ShowChar+0x120>
1c005dac:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005db0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005db4:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c005764 <OLED_SetPos>
1c005db8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005dbc:	50003800 	b	56(0x38) # 1c005df4 <OLED_ShowChar+0xb0>
1c005dc0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005dc4:	0040918d 	slli.w	$r13,$r12,0x4
1c005dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005dcc:	001031ac 	add.w	$r12,$r13,$r12
1c005dd0:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005dd4:	029771ad 	addi.w	$r13,$r13,1500(0x5dc)
1c005dd8:	001031ac 	add.w	$r12,$r13,$r12
1c005ddc:	2a00018c 	ld.bu	$r12,$r12,0
1c005de0:	00150184 	move	$r4,$r12
1c005de4:	57f773ff 	bl	-2192(0xffff770) # 1c005554 <WriteDat>
1c005de8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005df0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005df4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005df8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005dfc:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005dc0 <OLED_ShowChar+0x7c>
1c005e00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e08:	00150185 	move	$r5,$r12
1c005e0c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005e10:	57f957ff 	bl	-1708(0xffff954) # 1c005764 <OLED_SetPos>
1c005e14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e18:	50003c00 	b	60(0x3c) # 1c005e54 <OLED_ShowChar+0x110>
1c005e1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e20:	0040918d 	slli.w	$r13,$r12,0x4
1c005e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e28:	001031ac 	add.w	$r12,$r13,$r12
1c005e2c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005e30:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005e34:	0295f1ad 	addi.w	$r13,$r13,1404(0x57c)
1c005e38:	001031ac 	add.w	$r12,$r13,$r12
1c005e3c:	2a00018c 	ld.bu	$r12,$r12,0
1c005e40:	00150184 	move	$r4,$r12
1c005e44:	57f713ff 	bl	-2288(0xffff710) # 1c005554 <WriteDat>
1c005e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e58:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005e5c:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005e1c <OLED_ShowChar+0xd8>
1c005e60:	50005c00 	b	92(0x5c) # 1c005ebc <OLED_ShowChar+0x178>
1c005e64:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005e68:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005e6c:	57f8fbff 	bl	-1800(0xffff8f8) # 1c005764 <OLED_SetPos>
1c005e70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e74:	50003c00 	b	60(0x3c) # 1c005eb0 <OLED_ShowChar+0x16c>
1c005e78:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005e7c:	028c31ad 	addi.w	$r13,$r13,780(0x30c)
1c005e80:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c005e84:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005e88:	001c31cc 	mul.w	$r12,$r14,$r12
1c005e8c:	001031ad 	add.w	$r13,$r13,$r12
1c005e90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e94:	001031ac 	add.w	$r12,$r13,$r12
1c005e98:	2a00018c 	ld.bu	$r12,$r12,0
1c005e9c:	00150184 	move	$r4,$r12
1c005ea0:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c005554 <WriteDat>
1c005ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ea8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005eac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005eb0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005eb4:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005eb8:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005e78 <OLED_ShowChar+0x134>
1c005ebc:	03400000 	andi	$r0,$r0,0x0
1c005ec0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ec4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ec8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005ecc:	4c000020 	jirl	$r0,$r1,0

1c005ed0 <oled_pow>:
oled_pow():
1c005ed0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ed4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005ed8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005edc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ee0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005ee4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ee8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005eec:	50001400 	b	20(0x14) # 1c005f00 <oled_pow+0x30>
1c005ef0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ef4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ef8:	001c31ac 	mul.w	$r12,$r13,$r12
1c005efc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f00:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005f08:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c005f0c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005ef0 <oled_pow+0x20>
1c005f10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f14:	00150184 	move	$r4,$r12
1c005f18:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005f1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f20:	4c000020 	jirl	$r0,$r1,0

1c005f24 <OLED_ShowNum>:
OLED_ShowNum():
1c005f24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f3c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005f40:	001500ec 	move	$r12,$r7
1c005f44:	0015010d 	move	$r13,$r8
1c005f48:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c005f4c:	001501ac 	move	$r12,$r13
1c005f50:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c005f54:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005f58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005f5c:	50010400 	b	260(0x104) # 1c006060 <OLED_ShowNum+0x13c>
1c005f60:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c005f64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f68:	001131ac 	sub.w	$r12,$r13,$r12
1c005f6c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005f70:	00150185 	move	$r5,$r12
1c005f74:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005f78:	57ff5bff 	bl	-168(0xfffff58) # 1c005ed0 <oled_pow>
1c005f7c:	0015008d 	move	$r13,$r4
1c005f80:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005f84:	0021358e 	div.wu	$r14,$r12,$r13
1c005f88:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005f90 <OLED_ShowNum+0x6c>
1c005f8c:	002a0007 	break	0x7
1c005f90:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005f94:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c005f98:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005fa0 <OLED_ShowNum+0x7c>
1c005f9c:	002a0007 	break	0x7
1c005fa0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005fa4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005fa8:	44006580 	bnez	$r12,100(0x64) # 1c00600c <OLED_ShowNum+0xe8>
1c005fac:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c005fb0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005fb4:	0015018d 	move	$r13,$r12
1c005fb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fbc:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c00600c <OLED_ShowNum+0xe8>
1c005fc0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005fc4:	44004180 	bnez	$r12,64(0x40) # 1c006004 <OLED_ShowNum+0xe0>
1c005fc8:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c005fcc:	0044858c 	srli.w	$r12,$r12,0x1
1c005fd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005fd4:	0015018d 	move	$r13,$r12
1c005fd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fdc:	001c31ad 	mul.w	$r13,$r13,$r12
1c005fe0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005fe4:	001031ac 	add.w	$r12,$r13,$r12
1c005fe8:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c005fec:	001501a7 	move	$r7,$r13
1c005ff0:	02808006 	addi.w	$r6,$r0,32(0x20)
1c005ff4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005ff8:	00150184 	move	$r4,$r12
1c005ffc:	57fd4bff 	bl	-696(0xffffd48) # 1c005d44 <OLED_ShowChar>
1c006000:	50005400 	b	84(0x54) # 1c006054 <OLED_ShowNum+0x130>
1c006004:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006008:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00600c:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c006010:	0044858c 	srli.w	$r12,$r12,0x1
1c006014:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006018:	0015018d 	move	$r13,$r12
1c00601c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006020:	001c31ad 	mul.w	$r13,$r13,$r12
1c006024:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006028:	001031ad 	add.w	$r13,$r13,$r12
1c00602c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006030:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006034:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c006038:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00603c:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c006040:	001501c7 	move	$r7,$r14
1c006044:	00150186 	move	$r6,$r12
1c006048:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00604c:	001501a4 	move	$r4,$r13
1c006050:	57fcf7ff 	bl	-780(0xffffcf4) # 1c005d44 <OLED_ShowChar>
1c006054:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006058:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00605c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006060:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c006064:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006068:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c005f60 <OLED_ShowNum+0x3c>
1c00606c:	03400000 	andi	$r0,$r0,0x0
1c006070:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006074:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006078:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00607c:	4c000020 	jirl	$r0,$r1,0

1c006080 <my_GPIO_Init>:
my_GPIO_Init():
1c006080:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006084:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006088:	29806076 	st.w	$r22,$r3,24(0x18)
1c00608c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006090:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006094:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006098:	57b79bff 	bl	-18536(0xfffb798) # 1c001830 <gpio_init>
1c00609c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060a0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0060a4:	57b78fff 	bl	-18548(0xfffb78c) # 1c001830 <gpio_init>
1c0060a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060ac:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0060b0:	57b783ff 	bl	-18560(0xfffb780) # 1c001830 <gpio_init>
1c0060b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060b8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0060bc:	57b777ff 	bl	-18572(0xfffb774) # 1c001830 <gpio_init>
1c0060c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060c4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0060c8:	57b76bff 	bl	-18584(0xfffb768) # 1c001830 <gpio_init>
1c0060cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060d0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0060d4:	57b75fff 	bl	-18596(0xfffb75c) # 1c001830 <gpio_init>
1c0060d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060dc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0060e0:	57b753ff 	bl	-18608(0xfffb750) # 1c001830 <gpio_init>
1c0060e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060e8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0060ec:	57b747ff 	bl	-18620(0xfffb744) # 1c001830 <gpio_init>
1c0060f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060f4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0060f8:	57b73bff 	bl	-18632(0xfffb738) # 1c001830 <gpio_init>
1c0060fc:	00150005 	move	$r5,$r0
1c006100:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006104:	57b72fff 	bl	-18644(0xfffb72c) # 1c001830 <gpio_init>
1c006108:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00610c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006110:	57b723ff 	bl	-18656(0xfffb720) # 1c001830 <gpio_init>
1c006114:	00150005 	move	$r5,$r0
1c006118:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00611c:	57b717ff 	bl	-18668(0xfffb714) # 1c001830 <gpio_init>
1c006120:	00150005 	move	$r5,$r0
1c006124:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006128:	57b70bff 	bl	-18680(0xfffb708) # 1c001830 <gpio_init>
1c00612c:	00150005 	move	$r5,$r0
1c006130:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006134:	57b6ffff 	bl	-18692(0xfffb6fc) # 1c001830 <gpio_init>
1c006138:	00150005 	move	$r5,$r0
1c00613c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006140:	57b6f3ff 	bl	-18704(0xfffb6f0) # 1c001830 <gpio_init>
1c006144:	14000e2c 	lu12i.w	$r12,113(0x71)
1c006148:	03bfc98c 	ori	$r12,$r12,0xff2
1c00614c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006150:	50008400 	b	132(0x84) # 1c0061d4 <my_GPIO_Init+0x154>
1c006154:	03400000 	andi	$r0,$r0,0x0
1c006158:	03400000 	andi	$r0,$r0,0x0
1c00615c:	03400000 	andi	$r0,$r0,0x0
1c006160:	03400000 	andi	$r0,$r0,0x0
1c006164:	03400000 	andi	$r0,$r0,0x0
1c006168:	03400000 	andi	$r0,$r0,0x0
1c00616c:	03400000 	andi	$r0,$r0,0x0
1c006170:	03400000 	andi	$r0,$r0,0x0
1c006174:	03400000 	andi	$r0,$r0,0x0
1c006178:	03400000 	andi	$r0,$r0,0x0
1c00617c:	03400000 	andi	$r0,$r0,0x0
1c006180:	03400000 	andi	$r0,$r0,0x0
1c006184:	03400000 	andi	$r0,$r0,0x0
1c006188:	03400000 	andi	$r0,$r0,0x0
1c00618c:	03400000 	andi	$r0,$r0,0x0
1c006190:	03400000 	andi	$r0,$r0,0x0
1c006194:	03400000 	andi	$r0,$r0,0x0
1c006198:	03400000 	andi	$r0,$r0,0x0
1c00619c:	03400000 	andi	$r0,$r0,0x0
1c0061a0:	03400000 	andi	$r0,$r0,0x0
1c0061a4:	03400000 	andi	$r0,$r0,0x0
1c0061a8:	03400000 	andi	$r0,$r0,0x0
1c0061ac:	03400000 	andi	$r0,$r0,0x0
1c0061b0:	03400000 	andi	$r0,$r0,0x0
1c0061b4:	03400000 	andi	$r0,$r0,0x0
1c0061b8:	03400000 	andi	$r0,$r0,0x0
1c0061bc:	03400000 	andi	$r0,$r0,0x0
1c0061c0:	03400000 	andi	$r0,$r0,0x0
1c0061c4:	03400000 	andi	$r0,$r0,0x0
1c0061c8:	03400000 	andi	$r0,$r0,0x0
1c0061cc:	03400000 	andi	$r0,$r0,0x0
1c0061d0:	03400000 	andi	$r0,$r0,0x0
1c0061d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0061d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0061dc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0061e0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006154 <my_GPIO_Init+0xd4>
1c0061e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0061e8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0061ec:	57b73fff 	bl	-18628(0xfffb73c) # 1c001928 <gpio_write>
1c0061f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0061f4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0061f8:	57b733ff 	bl	-18640(0xfffb730) # 1c001928 <gpio_write>
1c0061fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006200:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006204:	57b727ff 	bl	-18652(0xfffb724) # 1c001928 <gpio_write>
1c006208:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00620c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006210:	57b71bff 	bl	-18664(0xfffb718) # 1c001928 <gpio_write>
1c006214:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006218:	02809804 	addi.w	$r4,$r0,38(0x26)
1c00621c:	57b70fff 	bl	-18676(0xfffb70c) # 1c001928 <gpio_write>
1c006220:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006224:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006228:	57b703ff 	bl	-18688(0xfffb700) # 1c001928 <gpio_write>
1c00622c:	00150005 	move	$r5,$r0
1c006230:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006234:	57b6f7ff 	bl	-18700(0xfffb6f4) # 1c001928 <gpio_write>
1c006238:	03400000 	andi	$r0,$r0,0x0
1c00623c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006240:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006244:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006248:	4c000020 	jirl	$r0,$r1,0

1c00624c <my_I2C_Init>:
my_I2C_Init():
1c00624c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006250:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006254:	29806076 	st.w	$r22,$r3,24(0x18)
1c006258:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00625c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c006260:	00150184 	move	$r4,$r12
1c006264:	57b89fff 	bl	-18276(0xfffb89c) # 1c001b00 <soc_I2C_StructInit>
1c006268:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00626c:	00150184 	move	$r4,$r12
1c006270:	57b8dbff 	bl	-18216(0xfffb8d8) # 1c001b48 <soc_I2C_Init>
1c006274:	1400016c 	lu12i.w	$r12,11(0xb)
1c006278:	0399958c 	ori	$r12,$r12,0x665
1c00627c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006280:	50008400 	b	132(0x84) # 1c006304 <my_I2C_Init+0xb8>
1c006284:	03400000 	andi	$r0,$r0,0x0
1c006288:	03400000 	andi	$r0,$r0,0x0
1c00628c:	03400000 	andi	$r0,$r0,0x0
1c006290:	03400000 	andi	$r0,$r0,0x0
1c006294:	03400000 	andi	$r0,$r0,0x0
1c006298:	03400000 	andi	$r0,$r0,0x0
1c00629c:	03400000 	andi	$r0,$r0,0x0
1c0062a0:	03400000 	andi	$r0,$r0,0x0
1c0062a4:	03400000 	andi	$r0,$r0,0x0
1c0062a8:	03400000 	andi	$r0,$r0,0x0
1c0062ac:	03400000 	andi	$r0,$r0,0x0
1c0062b0:	03400000 	andi	$r0,$r0,0x0
1c0062b4:	03400000 	andi	$r0,$r0,0x0
1c0062b8:	03400000 	andi	$r0,$r0,0x0
1c0062bc:	03400000 	andi	$r0,$r0,0x0
1c0062c0:	03400000 	andi	$r0,$r0,0x0
1c0062c4:	03400000 	andi	$r0,$r0,0x0
1c0062c8:	03400000 	andi	$r0,$r0,0x0
1c0062cc:	03400000 	andi	$r0,$r0,0x0
1c0062d0:	03400000 	andi	$r0,$r0,0x0
1c0062d4:	03400000 	andi	$r0,$r0,0x0
1c0062d8:	03400000 	andi	$r0,$r0,0x0
1c0062dc:	03400000 	andi	$r0,$r0,0x0
1c0062e0:	03400000 	andi	$r0,$r0,0x0
1c0062e4:	03400000 	andi	$r0,$r0,0x0
1c0062e8:	03400000 	andi	$r0,$r0,0x0
1c0062ec:	03400000 	andi	$r0,$r0,0x0
1c0062f0:	03400000 	andi	$r0,$r0,0x0
1c0062f4:	03400000 	andi	$r0,$r0,0x0
1c0062f8:	03400000 	andi	$r0,$r0,0x0
1c0062fc:	03400000 	andi	$r0,$r0,0x0
1c006300:	03400000 	andi	$r0,$r0,0x0
1c006304:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006308:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00630c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006310:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006284 <my_I2C_Init+0x38>
1c006314:	03400000 	andi	$r0,$r0,0x0
1c006318:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00631c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006320:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006324:	4c000020 	jirl	$r0,$r1,0

1c006328 <my_PWM_Init>:
my_PWM_Init():
1c006328:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00632c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006330:	29806076 	st.w	$r22,$r3,24(0x18)
1c006334:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006338:	57ba07ff 	bl	-17916(0xfffba04) # 1c001d3c <pwm_steering_engine_init>
1c00633c:	1400016c 	lu12i.w	$r12,11(0xb)
1c006340:	0399958c 	ori	$r12,$r12,0x665
1c006344:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006348:	50008400 	b	132(0x84) # 1c0063cc <my_PWM_Init+0xa4>
1c00634c:	03400000 	andi	$r0,$r0,0x0
1c006350:	03400000 	andi	$r0,$r0,0x0
1c006354:	03400000 	andi	$r0,$r0,0x0
1c006358:	03400000 	andi	$r0,$r0,0x0
1c00635c:	03400000 	andi	$r0,$r0,0x0
1c006360:	03400000 	andi	$r0,$r0,0x0
1c006364:	03400000 	andi	$r0,$r0,0x0
1c006368:	03400000 	andi	$r0,$r0,0x0
1c00636c:	03400000 	andi	$r0,$r0,0x0
1c006370:	03400000 	andi	$r0,$r0,0x0
1c006374:	03400000 	andi	$r0,$r0,0x0
1c006378:	03400000 	andi	$r0,$r0,0x0
1c00637c:	03400000 	andi	$r0,$r0,0x0
1c006380:	03400000 	andi	$r0,$r0,0x0
1c006384:	03400000 	andi	$r0,$r0,0x0
1c006388:	03400000 	andi	$r0,$r0,0x0
1c00638c:	03400000 	andi	$r0,$r0,0x0
1c006390:	03400000 	andi	$r0,$r0,0x0
1c006394:	03400000 	andi	$r0,$r0,0x0
1c006398:	03400000 	andi	$r0,$r0,0x0
1c00639c:	03400000 	andi	$r0,$r0,0x0
1c0063a0:	03400000 	andi	$r0,$r0,0x0
1c0063a4:	03400000 	andi	$r0,$r0,0x0
1c0063a8:	03400000 	andi	$r0,$r0,0x0
1c0063ac:	03400000 	andi	$r0,$r0,0x0
1c0063b0:	03400000 	andi	$r0,$r0,0x0
1c0063b4:	03400000 	andi	$r0,$r0,0x0
1c0063b8:	03400000 	andi	$r0,$r0,0x0
1c0063bc:	03400000 	andi	$r0,$r0,0x0
1c0063c0:	03400000 	andi	$r0,$r0,0x0
1c0063c4:	03400000 	andi	$r0,$r0,0x0
1c0063c8:	03400000 	andi	$r0,$r0,0x0
1c0063cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063d0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0063d4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0063d8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00634c <my_PWM_Init+0x24>
1c0063dc:	03400000 	andi	$r0,$r0,0x0
1c0063e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0063e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0063e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0063ec:	4c000020 	jirl	$r0,$r1,0

1c0063f0 <my_SPI_Init>:
my_SPI_Init():
1c0063f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0063f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0063f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0063fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006400:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006404:	57ba43ff 	bl	-17856(0xfffba40) # 1c001e44 <soc_Spi_Init>
1c006408:	03400000 	andi	$r0,$r0,0x0
1c00640c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006410:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006414:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006418:	4c000020 	jirl	$r0,$r1,0

1c00641c <Init_main>:
Init_main():
1c00641c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006420:	29803061 	st.w	$r1,$r3,12(0xc)
1c006424:	29802076 	st.w	$r22,$r3,8(0x8)
1c006428:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00642c:	57d2afff 	bl	-11604(0xfffd2ac) # 1c0036d8 <SG90_Init>
1c006430:	57f193ff 	bl	-3696(0xffff190) # 1c0055c0 <OLED_Init>
1c006434:	57f45bff 	bl	-2984(0xffff458) # 1c00588c <OLED_CLS>
1c006438:	54001c00 	bl	28(0x1c) # 1c006454 <RC522_Init>
1c00643c:	57bff3ff 	bl	-16400(0xfffbff0) # 1c00242c <as608_init>
1c006440:	03400000 	andi	$r0,$r0,0x0
1c006444:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006448:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00644c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006450:	4c000020 	jirl	$r0,$r1,0

1c006454 <RC522_Init>:
RC522_Init():
1c006454:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006458:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00645c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006460:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006464:	1400016c 	lu12i.w	$r12,11(0xb)
1c006468:	0399958c 	ori	$r12,$r12,0x665
1c00646c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006470:	50008400 	b	132(0x84) # 1c0064f4 <RC522_Init+0xa0>
1c006474:	03400000 	andi	$r0,$r0,0x0
1c006478:	03400000 	andi	$r0,$r0,0x0
1c00647c:	03400000 	andi	$r0,$r0,0x0
1c006480:	03400000 	andi	$r0,$r0,0x0
1c006484:	03400000 	andi	$r0,$r0,0x0
1c006488:	03400000 	andi	$r0,$r0,0x0
1c00648c:	03400000 	andi	$r0,$r0,0x0
1c006490:	03400000 	andi	$r0,$r0,0x0
1c006494:	03400000 	andi	$r0,$r0,0x0
1c006498:	03400000 	andi	$r0,$r0,0x0
1c00649c:	03400000 	andi	$r0,$r0,0x0
1c0064a0:	03400000 	andi	$r0,$r0,0x0
1c0064a4:	03400000 	andi	$r0,$r0,0x0
1c0064a8:	03400000 	andi	$r0,$r0,0x0
1c0064ac:	03400000 	andi	$r0,$r0,0x0
1c0064b0:	03400000 	andi	$r0,$r0,0x0
1c0064b4:	03400000 	andi	$r0,$r0,0x0
1c0064b8:	03400000 	andi	$r0,$r0,0x0
1c0064bc:	03400000 	andi	$r0,$r0,0x0
1c0064c0:	03400000 	andi	$r0,$r0,0x0
1c0064c4:	03400000 	andi	$r0,$r0,0x0
1c0064c8:	03400000 	andi	$r0,$r0,0x0
1c0064cc:	03400000 	andi	$r0,$r0,0x0
1c0064d0:	03400000 	andi	$r0,$r0,0x0
1c0064d4:	03400000 	andi	$r0,$r0,0x0
1c0064d8:	03400000 	andi	$r0,$r0,0x0
1c0064dc:	03400000 	andi	$r0,$r0,0x0
1c0064e0:	03400000 	andi	$r0,$r0,0x0
1c0064e4:	03400000 	andi	$r0,$r0,0x0
1c0064e8:	03400000 	andi	$r0,$r0,0x0
1c0064ec:	03400000 	andi	$r0,$r0,0x0
1c0064f0:	03400000 	andi	$r0,$r0,0x0
1c0064f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0064fc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006500:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006474 <RC522_Init+0x20>
1c006504:	5405fc00 	bl	1532(0x5fc) # 1c006b00 <PcdReset>
1c006508:	1400004c 	lu12i.w	$r12,2(0x2)
1c00650c:	0391ed8c 	ori	$r12,$r12,0x47b
1c006510:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006514:	50008400 	b	132(0x84) # 1c006598 <RC522_Init+0x144>
1c006518:	03400000 	andi	$r0,$r0,0x0
1c00651c:	03400000 	andi	$r0,$r0,0x0
1c006520:	03400000 	andi	$r0,$r0,0x0
1c006524:	03400000 	andi	$r0,$r0,0x0
1c006528:	03400000 	andi	$r0,$r0,0x0
1c00652c:	03400000 	andi	$r0,$r0,0x0
1c006530:	03400000 	andi	$r0,$r0,0x0
1c006534:	03400000 	andi	$r0,$r0,0x0
1c006538:	03400000 	andi	$r0,$r0,0x0
1c00653c:	03400000 	andi	$r0,$r0,0x0
1c006540:	03400000 	andi	$r0,$r0,0x0
1c006544:	03400000 	andi	$r0,$r0,0x0
1c006548:	03400000 	andi	$r0,$r0,0x0
1c00654c:	03400000 	andi	$r0,$r0,0x0
1c006550:	03400000 	andi	$r0,$r0,0x0
1c006554:	03400000 	andi	$r0,$r0,0x0
1c006558:	03400000 	andi	$r0,$r0,0x0
1c00655c:	03400000 	andi	$r0,$r0,0x0
1c006560:	03400000 	andi	$r0,$r0,0x0
1c006564:	03400000 	andi	$r0,$r0,0x0
1c006568:	03400000 	andi	$r0,$r0,0x0
1c00656c:	03400000 	andi	$r0,$r0,0x0
1c006570:	03400000 	andi	$r0,$r0,0x0
1c006574:	03400000 	andi	$r0,$r0,0x0
1c006578:	03400000 	andi	$r0,$r0,0x0
1c00657c:	03400000 	andi	$r0,$r0,0x0
1c006580:	03400000 	andi	$r0,$r0,0x0
1c006584:	03400000 	andi	$r0,$r0,0x0
1c006588:	03400000 	andi	$r0,$r0,0x0
1c00658c:	03400000 	andi	$r0,$r0,0x0
1c006590:	03400000 	andi	$r0,$r0,0x0
1c006594:	03400000 	andi	$r0,$r0,0x0
1c006598:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00659c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0065a0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0065a4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006518 <RC522_Init+0xc4>
1c0065a8:	54055800 	bl	1368(0x558) # 1c006b00 <PcdReset>
1c0065ac:	1400004c 	lu12i.w	$r12,2(0x2)
1c0065b0:	0391ed8c 	ori	$r12,$r12,0x47b
1c0065b4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0065b8:	50008400 	b	132(0x84) # 1c00663c <RC522_Init+0x1e8>
1c0065bc:	03400000 	andi	$r0,$r0,0x0
1c0065c0:	03400000 	andi	$r0,$r0,0x0
1c0065c4:	03400000 	andi	$r0,$r0,0x0
1c0065c8:	03400000 	andi	$r0,$r0,0x0
1c0065cc:	03400000 	andi	$r0,$r0,0x0
1c0065d0:	03400000 	andi	$r0,$r0,0x0
1c0065d4:	03400000 	andi	$r0,$r0,0x0
1c0065d8:	03400000 	andi	$r0,$r0,0x0
1c0065dc:	03400000 	andi	$r0,$r0,0x0
1c0065e0:	03400000 	andi	$r0,$r0,0x0
1c0065e4:	03400000 	andi	$r0,$r0,0x0
1c0065e8:	03400000 	andi	$r0,$r0,0x0
1c0065ec:	03400000 	andi	$r0,$r0,0x0
1c0065f0:	03400000 	andi	$r0,$r0,0x0
1c0065f4:	03400000 	andi	$r0,$r0,0x0
1c0065f8:	03400000 	andi	$r0,$r0,0x0
1c0065fc:	03400000 	andi	$r0,$r0,0x0
1c006600:	03400000 	andi	$r0,$r0,0x0
1c006604:	03400000 	andi	$r0,$r0,0x0
1c006608:	03400000 	andi	$r0,$r0,0x0
1c00660c:	03400000 	andi	$r0,$r0,0x0
1c006610:	03400000 	andi	$r0,$r0,0x0
1c006614:	03400000 	andi	$r0,$r0,0x0
1c006618:	03400000 	andi	$r0,$r0,0x0
1c00661c:	03400000 	andi	$r0,$r0,0x0
1c006620:	03400000 	andi	$r0,$r0,0x0
1c006624:	03400000 	andi	$r0,$r0,0x0
1c006628:	03400000 	andi	$r0,$r0,0x0
1c00662c:	03400000 	andi	$r0,$r0,0x0
1c006630:	03400000 	andi	$r0,$r0,0x0
1c006634:	03400000 	andi	$r0,$r0,0x0
1c006638:	03400000 	andi	$r0,$r0,0x0
1c00663c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006640:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006644:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c006648:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0065bc <RC522_Init+0x168>
1c00664c:	54082c00 	bl	2092(0x82c) # 1c006e78 <PcdAntennaOff>
1c006650:	1400004c 	lu12i.w	$r12,2(0x2)
1c006654:	0391ed8c 	ori	$r12,$r12,0x47b
1c006658:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00665c:	50008400 	b	132(0x84) # 1c0066e0 <RC522_Init+0x28c>
1c006660:	03400000 	andi	$r0,$r0,0x0
1c006664:	03400000 	andi	$r0,$r0,0x0
1c006668:	03400000 	andi	$r0,$r0,0x0
1c00666c:	03400000 	andi	$r0,$r0,0x0
1c006670:	03400000 	andi	$r0,$r0,0x0
1c006674:	03400000 	andi	$r0,$r0,0x0
1c006678:	03400000 	andi	$r0,$r0,0x0
1c00667c:	03400000 	andi	$r0,$r0,0x0
1c006680:	03400000 	andi	$r0,$r0,0x0
1c006684:	03400000 	andi	$r0,$r0,0x0
1c006688:	03400000 	andi	$r0,$r0,0x0
1c00668c:	03400000 	andi	$r0,$r0,0x0
1c006690:	03400000 	andi	$r0,$r0,0x0
1c006694:	03400000 	andi	$r0,$r0,0x0
1c006698:	03400000 	andi	$r0,$r0,0x0
1c00669c:	03400000 	andi	$r0,$r0,0x0
1c0066a0:	03400000 	andi	$r0,$r0,0x0
1c0066a4:	03400000 	andi	$r0,$r0,0x0
1c0066a8:	03400000 	andi	$r0,$r0,0x0
1c0066ac:	03400000 	andi	$r0,$r0,0x0
1c0066b0:	03400000 	andi	$r0,$r0,0x0
1c0066b4:	03400000 	andi	$r0,$r0,0x0
1c0066b8:	03400000 	andi	$r0,$r0,0x0
1c0066bc:	03400000 	andi	$r0,$r0,0x0
1c0066c0:	03400000 	andi	$r0,$r0,0x0
1c0066c4:	03400000 	andi	$r0,$r0,0x0
1c0066c8:	03400000 	andi	$r0,$r0,0x0
1c0066cc:	03400000 	andi	$r0,$r0,0x0
1c0066d0:	03400000 	andi	$r0,$r0,0x0
1c0066d4:	03400000 	andi	$r0,$r0,0x0
1c0066d8:	03400000 	andi	$r0,$r0,0x0
1c0066dc:	03400000 	andi	$r0,$r0,0x0
1c0066e0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0066e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0066e8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0066ec:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006660 <RC522_Init+0x20c>
1c0066f0:	54068400 	bl	1668(0x684) # 1c006d74 <PcdAntennaOn>
1c0066f4:	03400000 	andi	$r0,$r0,0x0
1c0066f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0066fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006700:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006704:	4c000020 	jirl	$r0,$r1,0

1c006708 <ReadRawRC>:
ReadRawRC():
1c006708:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00670c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006710:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006714:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006718:	0015008c 	move	$r12,$r4
1c00671c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006720:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c006724:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006728:	0040858c 	slli.w	$r12,$r12,0x1
1c00672c:	00005d8c 	ext.w.b	$r12,$r12
1c006730:	0341f98c 	andi	$r12,$r12,0x7e
1c006734:	00005d8d 	ext.w.b	$r13,$r12
1c006738:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00673c:	001531ac 	or	$r12,$r13,$r12
1c006740:	00005d8c 	ext.w.b	$r12,$r12
1c006744:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c006748:	57b783ff 	bl	-18560(0xfffb780) # 1c001ec8 <soc_Spi_Cs_Down>
1c00674c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006750:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c006754:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006758:	03400000 	andi	$r0,$r0,0x0
1c00675c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006760:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006764:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006768:	0340118c 	andi	$r12,$r12,0x4
1c00676c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00675c <ReadRawRC+0x54>
1c006770:	03400000 	andi	$r0,$r0,0x0
1c006774:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006778:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00677c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006780:	0340058c 	andi	$r12,$r12,0x1
1c006784:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c006774 <ReadRawRC+0x6c>
1c006788:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00678c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006790:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006794:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006798:	29000980 	st.b	$r0,$r12,2(0x2)
1c00679c:	03400000 	andi	$r0,$r0,0x0
1c0067a0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067a4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0067a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0067ac:	0340118c 	andi	$r12,$r12,0x4
1c0067b0:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0067a0 <ReadRawRC+0x98>
1c0067b4:	03400000 	andi	$r0,$r0,0x0
1c0067b8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067bc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0067c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0067c4:	0340058c 	andi	$r12,$r12,0x1
1c0067c8:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0067b8 <ReadRawRC+0xb0>
1c0067cc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067d0:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0067d4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0067d8:	57b74bff 	bl	-18616(0xfffb748) # 1c001f20 <soc_Spi_Cs_Up>
1c0067dc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0067e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0067e4:	50008400 	b	132(0x84) # 1c006868 <ReadRawRC+0x160>
1c0067e8:	03400000 	andi	$r0,$r0,0x0
1c0067ec:	03400000 	andi	$r0,$r0,0x0
1c0067f0:	03400000 	andi	$r0,$r0,0x0
1c0067f4:	03400000 	andi	$r0,$r0,0x0
1c0067f8:	03400000 	andi	$r0,$r0,0x0
1c0067fc:	03400000 	andi	$r0,$r0,0x0
1c006800:	03400000 	andi	$r0,$r0,0x0
1c006804:	03400000 	andi	$r0,$r0,0x0
1c006808:	03400000 	andi	$r0,$r0,0x0
1c00680c:	03400000 	andi	$r0,$r0,0x0
1c006810:	03400000 	andi	$r0,$r0,0x0
1c006814:	03400000 	andi	$r0,$r0,0x0
1c006818:	03400000 	andi	$r0,$r0,0x0
1c00681c:	03400000 	andi	$r0,$r0,0x0
1c006820:	03400000 	andi	$r0,$r0,0x0
1c006824:	03400000 	andi	$r0,$r0,0x0
1c006828:	03400000 	andi	$r0,$r0,0x0
1c00682c:	03400000 	andi	$r0,$r0,0x0
1c006830:	03400000 	andi	$r0,$r0,0x0
1c006834:	03400000 	andi	$r0,$r0,0x0
1c006838:	03400000 	andi	$r0,$r0,0x0
1c00683c:	03400000 	andi	$r0,$r0,0x0
1c006840:	03400000 	andi	$r0,$r0,0x0
1c006844:	03400000 	andi	$r0,$r0,0x0
1c006848:	03400000 	andi	$r0,$r0,0x0
1c00684c:	03400000 	andi	$r0,$r0,0x0
1c006850:	03400000 	andi	$r0,$r0,0x0
1c006854:	03400000 	andi	$r0,$r0,0x0
1c006858:	03400000 	andi	$r0,$r0,0x0
1c00685c:	03400000 	andi	$r0,$r0,0x0
1c006860:	03400000 	andi	$r0,$r0,0x0
1c006864:	03400000 	andi	$r0,$r0,0x0
1c006868:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00686c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006870:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006874:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0067e8 <ReadRawRC+0xe0>
1c006878:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00687c:	00150184 	move	$r4,$r12
1c006880:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006884:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006888:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00688c:	4c000020 	jirl	$r0,$r1,0

1c006890 <WriteRawRC>:
WriteRawRC():
1c006890:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006894:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006898:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00689c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0068a0:	0015008c 	move	$r12,$r4
1c0068a4:	001500ad 	move	$r13,$r5
1c0068a8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0068ac:	001501ac 	move	$r12,$r13
1c0068b0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0068b4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0068b8:	0040858c 	slli.w	$r12,$r12,0x1
1c0068bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0068c0:	0341f98c 	andi	$r12,$r12,0x7e
1c0068c4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0068c8:	57b603ff 	bl	-18944(0xfffb600) # 1c001ec8 <soc_Spi_Cs_Down>
1c0068cc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0068d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0068d4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0068d8:	03400000 	andi	$r0,$r0,0x0
1c0068dc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0068e0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0068e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0068e8:	0340118c 	andi	$r12,$r12,0x4
1c0068ec:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0068dc <WriteRawRC+0x4c>
1c0068f0:	03400000 	andi	$r0,$r0,0x0
1c0068f4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0068f8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0068fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006900:	0340058c 	andi	$r12,$r12,0x1
1c006904:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0068f4 <WriteRawRC+0x64>
1c006908:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00690c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006910:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c006914:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006918:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c00691c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006920:	03400000 	andi	$r0,$r0,0x0
1c006924:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006928:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00692c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006930:	0340118c 	andi	$r12,$r12,0x4
1c006934:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c006924 <WriteRawRC+0x94>
1c006938:	03400000 	andi	$r0,$r0,0x0
1c00693c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006940:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006944:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006948:	0340058c 	andi	$r12,$r12,0x1
1c00694c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c00693c <WriteRawRC+0xac>
1c006950:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006954:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006958:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00695c:	57b5c7ff 	bl	-19004(0xfffb5c4) # 1c001f20 <soc_Spi_Cs_Up>
1c006960:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006964:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006968:	50008400 	b	132(0x84) # 1c0069ec <WriteRawRC+0x15c>
1c00696c:	03400000 	andi	$r0,$r0,0x0
1c006970:	03400000 	andi	$r0,$r0,0x0
1c006974:	03400000 	andi	$r0,$r0,0x0
1c006978:	03400000 	andi	$r0,$r0,0x0
1c00697c:	03400000 	andi	$r0,$r0,0x0
1c006980:	03400000 	andi	$r0,$r0,0x0
1c006984:	03400000 	andi	$r0,$r0,0x0
1c006988:	03400000 	andi	$r0,$r0,0x0
1c00698c:	03400000 	andi	$r0,$r0,0x0
1c006990:	03400000 	andi	$r0,$r0,0x0
1c006994:	03400000 	andi	$r0,$r0,0x0
1c006998:	03400000 	andi	$r0,$r0,0x0
1c00699c:	03400000 	andi	$r0,$r0,0x0
1c0069a0:	03400000 	andi	$r0,$r0,0x0
1c0069a4:	03400000 	andi	$r0,$r0,0x0
1c0069a8:	03400000 	andi	$r0,$r0,0x0
1c0069ac:	03400000 	andi	$r0,$r0,0x0
1c0069b0:	03400000 	andi	$r0,$r0,0x0
1c0069b4:	03400000 	andi	$r0,$r0,0x0
1c0069b8:	03400000 	andi	$r0,$r0,0x0
1c0069bc:	03400000 	andi	$r0,$r0,0x0
1c0069c0:	03400000 	andi	$r0,$r0,0x0
1c0069c4:	03400000 	andi	$r0,$r0,0x0
1c0069c8:	03400000 	andi	$r0,$r0,0x0
1c0069cc:	03400000 	andi	$r0,$r0,0x0
1c0069d0:	03400000 	andi	$r0,$r0,0x0
1c0069d4:	03400000 	andi	$r0,$r0,0x0
1c0069d8:	03400000 	andi	$r0,$r0,0x0
1c0069dc:	03400000 	andi	$r0,$r0,0x0
1c0069e0:	03400000 	andi	$r0,$r0,0x0
1c0069e4:	03400000 	andi	$r0,$r0,0x0
1c0069e8:	03400000 	andi	$r0,$r0,0x0
1c0069ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0069f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0069f4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0069f8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00696c <WriteRawRC+0xdc>
1c0069fc:	03400000 	andi	$r0,$r0,0x0
1c006a00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a0c:	4c000020 	jirl	$r0,$r1,0

1c006a10 <SetBitMask>:
SetBitMask():
1c006a10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a14:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006a18:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006a1c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006a20:	0015008c 	move	$r12,$r4
1c006a24:	001500ad 	move	$r13,$r5
1c006a28:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006a2c:	001501ac 	move	$r12,$r13
1c006a30:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006a34:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006a38:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006a3c:	00150184 	move	$r4,$r12
1c006a40:	57fccbff 	bl	-824(0xffffcc8) # 1c006708 <ReadRawRC>
1c006a44:	0015008c 	move	$r12,$r4
1c006a48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006a4c:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c006a50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006a54:	001531ac 	or	$r12,$r13,$r12
1c006a58:	00005d8c 	ext.w.b	$r12,$r12
1c006a5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006a60:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006a64:	001501a5 	move	$r5,$r13
1c006a68:	00150184 	move	$r4,$r12
1c006a6c:	57fe27ff 	bl	-476(0xffffe24) # 1c006890 <WriteRawRC>
1c006a70:	03400000 	andi	$r0,$r0,0x0
1c006a74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a80:	4c000020 	jirl	$r0,$r1,0

1c006a84 <ClearBitMask>:
ClearBitMask():
1c006a84:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a88:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006a8c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006a90:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006a94:	0015008c 	move	$r12,$r4
1c006a98:	001500ad 	move	$r13,$r5
1c006a9c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006aa0:	001501ac 	move	$r12,$r13
1c006aa4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006aa8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006aac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006ab0:	00150184 	move	$r4,$r12
1c006ab4:	57fc57ff 	bl	-940(0xffffc54) # 1c006708 <ReadRawRC>
1c006ab8:	0015008c 	move	$r12,$r4
1c006abc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006ac0:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c006ac4:	0014300c 	nor	$r12,$r0,$r12
1c006ac8:	00005d8d 	ext.w.b	$r13,$r12
1c006acc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006ad0:	0014b1ac 	and	$r12,$r13,$r12
1c006ad4:	00005d8c 	ext.w.b	$r12,$r12
1c006ad8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006adc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006ae0:	001501a5 	move	$r5,$r13
1c006ae4:	00150184 	move	$r4,$r12
1c006ae8:	57fdabff 	bl	-600(0xffffda8) # 1c006890 <WriteRawRC>
1c006aec:	03400000 	andi	$r0,$r0,0x0
1c006af0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006af4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006af8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006afc:	4c000020 	jirl	$r0,$r1,0

1c006b00 <PcdReset>:
PcdReset():
1c006b00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b08:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b14:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006b18:	57ae13ff 	bl	-20976(0xfffae10) # 1c001928 <gpio_write>
1c006b1c:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006b20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b24:	50008400 	b	132(0x84) # 1c006ba8 <PcdReset+0xa8>
1c006b28:	03400000 	andi	$r0,$r0,0x0
1c006b2c:	03400000 	andi	$r0,$r0,0x0
1c006b30:	03400000 	andi	$r0,$r0,0x0
1c006b34:	03400000 	andi	$r0,$r0,0x0
1c006b38:	03400000 	andi	$r0,$r0,0x0
1c006b3c:	03400000 	andi	$r0,$r0,0x0
1c006b40:	03400000 	andi	$r0,$r0,0x0
1c006b44:	03400000 	andi	$r0,$r0,0x0
1c006b48:	03400000 	andi	$r0,$r0,0x0
1c006b4c:	03400000 	andi	$r0,$r0,0x0
1c006b50:	03400000 	andi	$r0,$r0,0x0
1c006b54:	03400000 	andi	$r0,$r0,0x0
1c006b58:	03400000 	andi	$r0,$r0,0x0
1c006b5c:	03400000 	andi	$r0,$r0,0x0
1c006b60:	03400000 	andi	$r0,$r0,0x0
1c006b64:	03400000 	andi	$r0,$r0,0x0
1c006b68:	03400000 	andi	$r0,$r0,0x0
1c006b6c:	03400000 	andi	$r0,$r0,0x0
1c006b70:	03400000 	andi	$r0,$r0,0x0
1c006b74:	03400000 	andi	$r0,$r0,0x0
1c006b78:	03400000 	andi	$r0,$r0,0x0
1c006b7c:	03400000 	andi	$r0,$r0,0x0
1c006b80:	03400000 	andi	$r0,$r0,0x0
1c006b84:	03400000 	andi	$r0,$r0,0x0
1c006b88:	03400000 	andi	$r0,$r0,0x0
1c006b8c:	03400000 	andi	$r0,$r0,0x0
1c006b90:	03400000 	andi	$r0,$r0,0x0
1c006b94:	03400000 	andi	$r0,$r0,0x0
1c006b98:	03400000 	andi	$r0,$r0,0x0
1c006b9c:	03400000 	andi	$r0,$r0,0x0
1c006ba0:	03400000 	andi	$r0,$r0,0x0
1c006ba4:	03400000 	andi	$r0,$r0,0x0
1c006ba8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006bb0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006bb4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006b28 <PcdReset+0x28>
1c006bb8:	00150005 	move	$r5,$r0
1c006bbc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006bc0:	57ad6bff 	bl	-21144(0xfffad68) # 1c001928 <gpio_write>
1c006bc4:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006bc8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006bcc:	50008400 	b	132(0x84) # 1c006c50 <PcdReset+0x150>
1c006bd0:	03400000 	andi	$r0,$r0,0x0
1c006bd4:	03400000 	andi	$r0,$r0,0x0
1c006bd8:	03400000 	andi	$r0,$r0,0x0
1c006bdc:	03400000 	andi	$r0,$r0,0x0
1c006be0:	03400000 	andi	$r0,$r0,0x0
1c006be4:	03400000 	andi	$r0,$r0,0x0
1c006be8:	03400000 	andi	$r0,$r0,0x0
1c006bec:	03400000 	andi	$r0,$r0,0x0
1c006bf0:	03400000 	andi	$r0,$r0,0x0
1c006bf4:	03400000 	andi	$r0,$r0,0x0
1c006bf8:	03400000 	andi	$r0,$r0,0x0
1c006bfc:	03400000 	andi	$r0,$r0,0x0
1c006c00:	03400000 	andi	$r0,$r0,0x0
1c006c04:	03400000 	andi	$r0,$r0,0x0
1c006c08:	03400000 	andi	$r0,$r0,0x0
1c006c0c:	03400000 	andi	$r0,$r0,0x0
1c006c10:	03400000 	andi	$r0,$r0,0x0
1c006c14:	03400000 	andi	$r0,$r0,0x0
1c006c18:	03400000 	andi	$r0,$r0,0x0
1c006c1c:	03400000 	andi	$r0,$r0,0x0
1c006c20:	03400000 	andi	$r0,$r0,0x0
1c006c24:	03400000 	andi	$r0,$r0,0x0
1c006c28:	03400000 	andi	$r0,$r0,0x0
1c006c2c:	03400000 	andi	$r0,$r0,0x0
1c006c30:	03400000 	andi	$r0,$r0,0x0
1c006c34:	03400000 	andi	$r0,$r0,0x0
1c006c38:	03400000 	andi	$r0,$r0,0x0
1c006c3c:	03400000 	andi	$r0,$r0,0x0
1c006c40:	03400000 	andi	$r0,$r0,0x0
1c006c44:	03400000 	andi	$r0,$r0,0x0
1c006c48:	03400000 	andi	$r0,$r0,0x0
1c006c4c:	03400000 	andi	$r0,$r0,0x0
1c006c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006c58:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006c5c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006bd0 <PcdReset+0xd0>
1c006c60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c64:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006c68:	57acc3ff 	bl	-21312(0xfffacc0) # 1c001928 <gpio_write>
1c006c6c:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c006c70:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006c74:	57fc1fff 	bl	-996(0xffffc1c) # 1c006890 <WriteRawRC>
1c006c78:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006c7c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006c80:	50008400 	b	132(0x84) # 1c006d04 <PcdReset+0x204>
1c006c84:	03400000 	andi	$r0,$r0,0x0
1c006c88:	03400000 	andi	$r0,$r0,0x0
1c006c8c:	03400000 	andi	$r0,$r0,0x0
1c006c90:	03400000 	andi	$r0,$r0,0x0
1c006c94:	03400000 	andi	$r0,$r0,0x0
1c006c98:	03400000 	andi	$r0,$r0,0x0
1c006c9c:	03400000 	andi	$r0,$r0,0x0
1c006ca0:	03400000 	andi	$r0,$r0,0x0
1c006ca4:	03400000 	andi	$r0,$r0,0x0
1c006ca8:	03400000 	andi	$r0,$r0,0x0
1c006cac:	03400000 	andi	$r0,$r0,0x0
1c006cb0:	03400000 	andi	$r0,$r0,0x0
1c006cb4:	03400000 	andi	$r0,$r0,0x0
1c006cb8:	03400000 	andi	$r0,$r0,0x0
1c006cbc:	03400000 	andi	$r0,$r0,0x0
1c006cc0:	03400000 	andi	$r0,$r0,0x0
1c006cc4:	03400000 	andi	$r0,$r0,0x0
1c006cc8:	03400000 	andi	$r0,$r0,0x0
1c006ccc:	03400000 	andi	$r0,$r0,0x0
1c006cd0:	03400000 	andi	$r0,$r0,0x0
1c006cd4:	03400000 	andi	$r0,$r0,0x0
1c006cd8:	03400000 	andi	$r0,$r0,0x0
1c006cdc:	03400000 	andi	$r0,$r0,0x0
1c006ce0:	03400000 	andi	$r0,$r0,0x0
1c006ce4:	03400000 	andi	$r0,$r0,0x0
1c006ce8:	03400000 	andi	$r0,$r0,0x0
1c006cec:	03400000 	andi	$r0,$r0,0x0
1c006cf0:	03400000 	andi	$r0,$r0,0x0
1c006cf4:	03400000 	andi	$r0,$r0,0x0
1c006cf8:	03400000 	andi	$r0,$r0,0x0
1c006cfc:	03400000 	andi	$r0,$r0,0x0
1c006d00:	03400000 	andi	$r0,$r0,0x0
1c006d04:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006d08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006d0c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c006d10:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006c84 <PcdReset+0x184>
1c006d14:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c006d18:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006d1c:	57fb77ff 	bl	-1164(0xffffb74) # 1c006890 <WriteRawRC>
1c006d20:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c006d24:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c006d28:	57fb6bff 	bl	-1176(0xffffb68) # 1c006890 <WriteRawRC>
1c006d2c:	00150005 	move	$r5,$r0
1c006d30:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c006d34:	57fb5fff 	bl	-1188(0xffffb5c) # 1c006890 <WriteRawRC>
1c006d38:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c006d3c:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c006d40:	57fb53ff 	bl	-1200(0xffffb50) # 1c006890 <WriteRawRC>
1c006d44:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c006d48:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c006d4c:	57fb47ff 	bl	-1212(0xffffb44) # 1c006890 <WriteRawRC>
1c006d50:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006d54:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006d58:	57fb3bff 	bl	-1224(0xffffb38) # 1c006890 <WriteRawRC>
1c006d5c:	0015000c 	move	$r12,$r0
1c006d60:	00150184 	move	$r4,$r12
1c006d64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006d68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006d6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006d70:	4c000020 	jirl	$r0,$r1,0

1c006d74 <PcdAntennaOn>:
PcdAntennaOn():
1c006d74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006d78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006d7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006d80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006d84:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006d88:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006d8c:	57fb07ff 	bl	-1276(0xffffb04) # 1c006890 <WriteRawRC>
1c006d90:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c006d94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006d98:	50008400 	b	132(0x84) # 1c006e1c <PcdAntennaOn+0xa8>
1c006d9c:	03400000 	andi	$r0,$r0,0x0
1c006da0:	03400000 	andi	$r0,$r0,0x0
1c006da4:	03400000 	andi	$r0,$r0,0x0
1c006da8:	03400000 	andi	$r0,$r0,0x0
1c006dac:	03400000 	andi	$r0,$r0,0x0
1c006db0:	03400000 	andi	$r0,$r0,0x0
1c006db4:	03400000 	andi	$r0,$r0,0x0
1c006db8:	03400000 	andi	$r0,$r0,0x0
1c006dbc:	03400000 	andi	$r0,$r0,0x0
1c006dc0:	03400000 	andi	$r0,$r0,0x0
1c006dc4:	03400000 	andi	$r0,$r0,0x0
1c006dc8:	03400000 	andi	$r0,$r0,0x0
1c006dcc:	03400000 	andi	$r0,$r0,0x0
1c006dd0:	03400000 	andi	$r0,$r0,0x0
1c006dd4:	03400000 	andi	$r0,$r0,0x0
1c006dd8:	03400000 	andi	$r0,$r0,0x0
1c006ddc:	03400000 	andi	$r0,$r0,0x0
1c006de0:	03400000 	andi	$r0,$r0,0x0
1c006de4:	03400000 	andi	$r0,$r0,0x0
1c006de8:	03400000 	andi	$r0,$r0,0x0
1c006dec:	03400000 	andi	$r0,$r0,0x0
1c006df0:	03400000 	andi	$r0,$r0,0x0
1c006df4:	03400000 	andi	$r0,$r0,0x0
1c006df8:	03400000 	andi	$r0,$r0,0x0
1c006dfc:	03400000 	andi	$r0,$r0,0x0
1c006e00:	03400000 	andi	$r0,$r0,0x0
1c006e04:	03400000 	andi	$r0,$r0,0x0
1c006e08:	03400000 	andi	$r0,$r0,0x0
1c006e0c:	03400000 	andi	$r0,$r0,0x0
1c006e10:	03400000 	andi	$r0,$r0,0x0
1c006e14:	03400000 	andi	$r0,$r0,0x0
1c006e18:	03400000 	andi	$r0,$r0,0x0
1c006e1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006e24:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006e28:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006d9c <PcdAntennaOn+0x28>
1c006e2c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006e30:	57f8dbff 	bl	-1832(0xffff8d8) # 1c006708 <ReadRawRC>
1c006e34:	0015008c 	move	$r12,$r4
1c006e38:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006e3c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006e40:	03400d8c 	andi	$r12,$r12,0x3
1c006e44:	44001180 	bnez	$r12,16(0x10) # 1c006e54 <PcdAntennaOn+0xe0>
1c006e48:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006e4c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006e50:	57fbc3ff 	bl	-1088(0xffffbc0) # 1c006a10 <SetBitMask>
1c006e54:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006e58:	57f8b3ff 	bl	-1872(0xffff8b0) # 1c006708 <ReadRawRC>
1c006e5c:	0015008c 	move	$r12,$r4
1c006e60:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006e64:	03400000 	andi	$r0,$r0,0x0
1c006e68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006e6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006e70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006e74:	4c000020 	jirl	$r0,$r1,0

1c006e78 <PcdAntennaOff>:
PcdAntennaOff():
1c006e78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006e80:	29802076 	st.w	$r22,$r3,8(0x8)
1c006e84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e88:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006e8c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006e90:	57fbf7ff 	bl	-1036(0xffffbf4) # 1c006a84 <ClearBitMask>
1c006e94:	03400000 	andi	$r0,$r0,0x0
1c006e98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006e9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ea0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ea4:	4c000020 	jirl	$r0,$r1,0

1c006ea8 <PcdComMF522>:
PcdComMF522():
1c006ea8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006eac:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006eb0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006eb4:	29809077 	st.w	$r23,$r3,36(0x24)
1c006eb8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006ebc:	0015008c 	move	$r12,$r4
1c006ec0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006ec4:	001500cd 	move	$r13,$r6
1c006ec8:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c006ecc:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c006ed0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006ed4:	001501ac 	move	$r12,$r13
1c006ed8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006edc:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c006ee0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006ee4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006ee8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c006eec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006ef0:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c006ef4:	5800218d 	beq	$r12,$r13,32(0x20) # 1c006f14 <PcdComMF522+0x6c>
1c006ef8:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006efc:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c006f28 <PcdComMF522+0x80>
1c006f00:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c006f04:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006f08:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006f0c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006f10:	50001c00 	b	28(0x1c) # 1c006f2c <PcdComMF522+0x84>
1c006f14:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c006f18:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006f1c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c006f20:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006f24:	50000800 	b	8(0x8) # 1c006f2c <PcdComMF522+0x84>
1c006f28:	03400000 	andi	$r0,$r0,0x0
1c006f2c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006f30:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c006f34:	001531ac 	or	$r12,$r13,$r12
1c006f38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006f3c:	00150185 	move	$r5,$r12
1c006f40:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006f44:	57f94fff 	bl	-1716(0xffff94c) # 1c006890 <WriteRawRC>
1c006f48:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006f4c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006f50:	57fb37ff 	bl	-1228(0xffffb34) # 1c006a84 <ClearBitMask>
1c006f54:	00150005 	move	$r5,$r0
1c006f58:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006f5c:	57f937ff 	bl	-1740(0xffff934) # 1c006890 <WriteRawRC>
1c006f60:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006f64:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006f68:	57faabff 	bl	-1368(0xffffaa8) # 1c006a10 <SetBitMask>
1c006f6c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006f70:	50002c00 	b	44(0x2c) # 1c006f9c <PcdComMF522+0xf4>
1c006f74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006f78:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006f7c:	001031ac 	add.w	$r12,$r13,$r12
1c006f80:	2a00018c 	ld.bu	$r12,$r12,0
1c006f84:	00150185 	move	$r5,$r12
1c006f88:	02802404 	addi.w	$r4,$r0,9(0x9)
1c006f8c:	57f907ff 	bl	-1788(0xffff904) # 1c006890 <WriteRawRC>
1c006f90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006f94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006f9c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c006fa0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006fa4:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c006f74 <PcdComMF522+0xcc>
1c006fa8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006fac:	00150185 	move	$r5,$r12
1c006fb0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006fb4:	57f8dfff 	bl	-1828(0xffff8dc) # 1c006890 <WriteRawRC>
1c006fb8:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c006fbc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006fc0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006fd0 <PcdComMF522+0x128>
1c006fc4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006fc8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006fcc:	57fa47ff 	bl	-1468(0xffffa44) # 1c006a10 <SetBitMask>
1c006fd0:	1400026c 	lu12i.w	$r12,19(0x13)
1c006fd4:	03a2018c 	ori	$r12,$r12,0x880
1c006fd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006fdc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006fe0:	57f72bff 	bl	-2264(0xffff728) # 1c006708 <ReadRawRC>
1c006fe4:	0015008c 	move	$r12,$r4
1c006fe8:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c006fec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ff0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006ff4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006ff8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ffc:	40002580 	beqz	$r12,36(0x24) # 1c007020 <PcdComMF522+0x178>
1c007000:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007004:	0340058c 	andi	$r12,$r12,0x1
1c007008:	44001980 	bnez	$r12,24(0x18) # 1c007020 <PcdComMF522+0x178>
1c00700c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c007010:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c007014:	0014b1ac 	and	$r12,$r13,$r12
1c007018:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00701c:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c006fdc <PcdComMF522+0x134>
1c007020:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007024:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007028:	57fa5fff 	bl	-1444(0xffffa5c) # 1c006a84 <ClearBitMask>
1c00702c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007030:	40011180 	beqz	$r12,272(0x110) # 1c007140 <PcdComMF522+0x298>
1c007034:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007038:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c006708 <ReadRawRC>
1c00703c:	0015008c 	move	$r12,$r4
1c007040:	03406d8c 	andi	$r12,$r12,0x1b
1c007044:	4400f580 	bnez	$r12,244(0xf4) # 1c007138 <PcdComMF522+0x290>
1c007048:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00704c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c007050:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007054:	0014b1ac 	and	$r12,$r13,$r12
1c007058:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00705c:	0340058c 	andi	$r12,$r12,0x1
1c007060:	40000d80 	beqz	$r12,12(0xc) # 1c00706c <PcdComMF522+0x1c4>
1c007064:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c007068:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00706c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c007070:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007074:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c007140 <PcdComMF522+0x298>
1c007078:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00707c:	57f68fff 	bl	-2420(0xffff68c) # 1c006708 <ReadRawRC>
1c007080:	0015008c 	move	$r12,$r4
1c007084:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c007088:	02803004 	addi.w	$r4,$r0,12(0xc)
1c00708c:	57f67fff 	bl	-2436(0xffff67c) # 1c006708 <ReadRawRC>
1c007090:	0015008c 	move	$r12,$r4
1c007094:	03401d8c 	andi	$r12,$r12,0x7
1c007098:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c00709c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0070a0:	40002580 	beqz	$r12,36(0x24) # 1c0070c4 <PcdComMF522+0x21c>
1c0070a4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0070a8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0070ac:	00408d8d 	slli.w	$r13,$r12,0x3
1c0070b0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0070b4:	001031ad 	add.w	$r13,$r13,$r12
1c0070b8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0070bc:	2980018d 	st.w	$r13,$r12,0
1c0070c0:	50001400 	b	20(0x14) # 1c0070d4 <PcdComMF522+0x22c>
1c0070c4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0070c8:	00408d8d 	slli.w	$r13,$r12,0x3
1c0070cc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0070d0:	2980018d 	st.w	$r13,$r12,0
1c0070d4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0070d8:	44000d80 	bnez	$r12,12(0xc) # 1c0070e4 <PcdComMF522+0x23c>
1c0070dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0070e0:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0070e4:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0070e8:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0070ec:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0070f8 <PcdComMF522+0x250>
1c0070f0:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0070f4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0070f8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0070fc:	50002c00 	b	44(0x2c) # 1c007128 <PcdComMF522+0x280>
1c007100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007104:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c007108:	001031b7 	add.w	$r23,$r13,$r12
1c00710c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007110:	57f5fbff 	bl	-2568(0xffff5f8) # 1c006708 <ReadRawRC>
1c007114:	0015008c 	move	$r12,$r4
1c007118:	290002ec 	st.b	$r12,$r23,0
1c00711c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007120:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007124:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007128:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c00712c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c007130:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c007100 <PcdComMF522+0x258>
1c007134:	50000c00 	b	12(0xc) # 1c007140 <PcdComMF522+0x298>
1c007138:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c00713c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007140:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007144:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007148:	57f8cbff 	bl	-1848(0xffff8c8) # 1c006a10 <SetBitMask>
1c00714c:	00150005 	move	$r5,$r0
1c007150:	02800404 	addi.w	$r4,$r0,1(0x1)
1c007154:	57f73fff 	bl	-2244(0xffff73c) # 1c006890 <WriteRawRC>
1c007158:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00715c:	00150184 	move	$r4,$r12
1c007160:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007164:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007168:	28809077 	ld.w	$r23,$r3,36(0x24)
1c00716c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007170:	4c000020 	jirl	$r0,$r1,0

1c007174 <PcdRequest>:
PcdRequest():
1c007174:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c007178:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00717c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c007180:	02810076 	addi.w	$r22,$r3,64(0x40)
1c007184:	0015008c 	move	$r12,$r4
1c007188:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c00718c:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c007190:	02802005 	addi.w	$r5,$r0,8(0x8)
1c007194:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007198:	57f8efff 	bl	-1812(0xffff8ec) # 1c006a84 <ClearBitMask>
1c00719c:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c0071a0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0071a4:	57f6efff 	bl	-2324(0xffff6ec) # 1c006890 <WriteRawRC>
1c0071a8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0071ac:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0071b0:	57f863ff 	bl	-1952(0xffff860) # 1c006a10 <SetBitMask>
1c0071b4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0071b8:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c0071bc:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0071c0:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0071c4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0071c8:	001501c8 	move	$r8,$r14
1c0071cc:	001501a7 	move	$r7,$r13
1c0071d0:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0071d4:	00150185 	move	$r5,$r12
1c0071d8:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0071dc:	57fccfff 	bl	-820(0xffffccc) # 1c006ea8 <PcdComMF522>
1c0071e0:	0015008c 	move	$r12,$r4
1c0071e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0071e8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0071ec:	44003180 	bnez	$r12,48(0x30) # 1c00721c <PcdRequest+0xa8>
1c0071f0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0071f4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0071f8:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c00721c <PcdRequest+0xa8>
1c0071fc:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c007200:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007204:	2900018d 	st.b	$r13,$r12,0
1c007208:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00720c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007210:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c007214:	2900018d 	st.b	$r13,$r12,0
1c007218:	50000c00 	b	12(0xc) # 1c007224 <PcdRequest+0xb0>
1c00721c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c007220:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007224:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007228:	00150184 	move	$r4,$r12
1c00722c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c007230:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c007234:	02810063 	addi.w	$r3,$r3,64(0x40)
1c007238:	4c000020 	jirl	$r0,$r1,0

1c00723c <PcdAnticoll>:
PcdAnticoll():
1c00723c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c007240:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c007244:	2980e076 	st.w	$r22,$r3,56(0x38)
1c007248:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00724c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c007250:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c007254:	02802005 	addi.w	$r5,$r0,8(0x8)
1c007258:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00725c:	57f82bff 	bl	-2008(0xffff828) # 1c006a84 <ClearBitMask>
1c007260:	00150005 	move	$r5,$r0
1c007264:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007268:	57f62bff 	bl	-2520(0xffff628) # 1c006890 <WriteRawRC>
1c00726c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007270:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007274:	57f813ff 	bl	-2032(0xffff810) # 1c006a84 <ClearBitMask>
1c007278:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c00727c:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c007280:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c007284:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c007288:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c00728c:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c007290:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c007294:	001501c8 	move	$r8,$r14
1c007298:	001501a7 	move	$r7,$r13
1c00729c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0072a0:	00150185 	move	$r5,$r12
1c0072a4:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0072a8:	57fc03ff 	bl	-1024(0xffffc00) # 1c006ea8 <PcdComMF522>
1c0072ac:	0015008c 	move	$r12,$r4
1c0072b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0072b4:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0072b8:	44008180 	bnez	$r12,128(0x80) # 1c007338 <PcdAnticoll+0xfc>
1c0072bc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0072c0:	50004c00 	b	76(0x4c) # 1c00730c <PcdAnticoll+0xd0>
1c0072c4:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c0072c8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0072cc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0072d0:	001031ac 	add.w	$r12,$r13,$r12
1c0072d4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0072d8:	001039ad 	add.w	$r13,$r13,$r14
1c0072dc:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c0072e0:	2900018d 	st.b	$r13,$r12,0
1c0072e4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0072e8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0072ec:	001031ac 	add.w	$r12,$r13,$r12
1c0072f0:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c0072f4:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0072f8:	0015b1ac 	xor	$r12,$r13,$r12
1c0072fc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c007300:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007308:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00730c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c007310:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007314:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0072c4 <PcdAnticoll+0x88>
1c007318:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00731c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007320:	001031ac 	add.w	$r12,$r13,$r12
1c007324:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c007328:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c00732c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c007338 <PcdAnticoll+0xfc>
1c007330:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c007334:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007338:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00733c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007340:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c006a10 <SetBitMask>
1c007344:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007348:	00150184 	move	$r4,$r12
1c00734c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c007350:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c007354:	02810063 	addi.w	$r3,$r3,64(0x40)
1c007358:	4c000020 	jirl	$r0,$r1,0

1c00735c <Return_Card>:
Return_Card():
1c00735c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007360:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007364:	29806076 	st.w	$r22,$r3,24(0x18)
1c007368:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00736c:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c007370:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c007374:	28b250a5 	ld.w	$r5,$r5,-876(0xc94)
1c007378:	02814804 	addi.w	$r4,$r0,82(0x52)
1c00737c:	57fdfbff 	bl	-520(0xffffdf8) # 1c007174 <PcdRequest>
1c007380:	0015008c 	move	$r12,$r4
1c007384:	44005d80 	bnez	$r12,92(0x5c) # 1c0073e0 <Return_Card+0x84>
1c007388:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c00738c:	28b22084 	ld.w	$r4,$r4,-888(0xc88)
1c007390:	57feafff 	bl	-340(0xffffeac) # 1c00723c <PcdAnticoll>
1c007394:	0015008c 	move	$r12,$r4
1c007398:	44004980 	bnez	$r12,72(0x48) # 1c0073e0 <Return_Card+0x84>
1c00739c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073a0:	28b1d18c 	ld.w	$r12,$r12,-908(0xc74)
1c0073a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0073a8:	0044918c 	srli.w	$r12,$r12,0x4
1c0073ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0073b0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0073b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0073b8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0073bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0073c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073c4:	28b1418c 	ld.w	$r12,$r12,-944(0xc50)
1c0073c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0073cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0073d0:	03403d8c 	andi	$r12,$r12,0xf
1c0073d4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0073d8:	001031ac 	add.w	$r12,$r13,$r12
1c0073dc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0073e0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0073e4:	00150184 	move	$r4,$r12
1c0073e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0073ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0073f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0073f4:	4c000020 	jirl	$r0,$r1,0

1c0073f8 <Buffer_write>:
Buffer_write():
1c0073f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0073fc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007400:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007404:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c007408:	001500ac 	move	$r12,$r5
1c00740c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c007410:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007414:	2880018c 	ld.w	$r12,$r12,0
1c007418:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00741c:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c007420:	0010358c 	add.w	$r12,$r12,$r13
1c007424:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c007428:	2900018d 	st.b	$r13,$r12,0
1c00742c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007430:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c007434:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00743c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c007440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007444:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c007448:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00744c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007450:	60000dac 	blt	$r13,$r12,12(0xc) # 1c00745c <Buffer_write+0x64>
1c007454:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007458:	29803180 	st.w	$r0,$r12,12(0xc)
1c00745c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007460:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c007464:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007468:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00746c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c007470:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007474:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c007478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00747c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007480:	6400458d 	bge	$r12,$r13,68(0x44) # 1c0074c4 <Buffer_write+0xcc>
1c007484:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007488:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00748c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007490:	2980418d 	st.w	$r13,$r12,16(0x10)
1c007494:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007498:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c00749c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0074a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074a4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0074a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074ac:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c0074b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074b4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0074b8:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0074c4 <Buffer_write+0xcc>
1c0074bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074c0:	29802180 	st.w	$r0,$r12,8(0x8)
1c0074c4:	03400000 	andi	$r0,$r0,0x0
1c0074c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0074cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0074d0:	4c000020 	jirl	$r0,$r1,0

1c0074d4 <main>:
main():
1c0074d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0074d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0074dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0074e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0074e4:	57eb9fff 	bl	-5220(0xfffeb9c) # 1c006080 <my_GPIO_Init>
1c0074e8:	57ee43ff 	bl	-4544(0xfffee40) # 1c006328 <my_PWM_Init>
1c0074ec:	57ed63ff 	bl	-4768(0xfffed60) # 1c00624c <my_I2C_Init>
1c0074f0:	57ef03ff 	bl	-4352(0xfffef00) # 1c0063f0 <my_SPI_Init>
1c0074f4:	140001cc 	lu12i.w	$r12,14(0xe)
1c0074f8:	03840184 	ori	$r4,$r12,0x100
1c0074fc:	57c263ff 	bl	-15776(0xfffc260) # 1c00375c <hw_uart_init>
1c007500:	14000e2c 	lu12i.w	$r12,113(0x71)
1c007504:	03bfc98c 	ori	$r12,$r12,0xff2
1c007508:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00750c:	50008400 	b	132(0x84) # 1c007590 <main+0xbc>
1c007510:	03400000 	andi	$r0,$r0,0x0
1c007514:	03400000 	andi	$r0,$r0,0x0
1c007518:	03400000 	andi	$r0,$r0,0x0
1c00751c:	03400000 	andi	$r0,$r0,0x0
1c007520:	03400000 	andi	$r0,$r0,0x0
1c007524:	03400000 	andi	$r0,$r0,0x0
1c007528:	03400000 	andi	$r0,$r0,0x0
1c00752c:	03400000 	andi	$r0,$r0,0x0
1c007530:	03400000 	andi	$r0,$r0,0x0
1c007534:	03400000 	andi	$r0,$r0,0x0
1c007538:	03400000 	andi	$r0,$r0,0x0
1c00753c:	03400000 	andi	$r0,$r0,0x0
1c007540:	03400000 	andi	$r0,$r0,0x0
1c007544:	03400000 	andi	$r0,$r0,0x0
1c007548:	03400000 	andi	$r0,$r0,0x0
1c00754c:	03400000 	andi	$r0,$r0,0x0
1c007550:	03400000 	andi	$r0,$r0,0x0
1c007554:	03400000 	andi	$r0,$r0,0x0
1c007558:	03400000 	andi	$r0,$r0,0x0
1c00755c:	03400000 	andi	$r0,$r0,0x0
1c007560:	03400000 	andi	$r0,$r0,0x0
1c007564:	03400000 	andi	$r0,$r0,0x0
1c007568:	03400000 	andi	$r0,$r0,0x0
1c00756c:	03400000 	andi	$r0,$r0,0x0
1c007570:	03400000 	andi	$r0,$r0,0x0
1c007574:	03400000 	andi	$r0,$r0,0x0
1c007578:	03400000 	andi	$r0,$r0,0x0
1c00757c:	03400000 	andi	$r0,$r0,0x0
1c007580:	03400000 	andi	$r0,$r0,0x0
1c007584:	03400000 	andi	$r0,$r0,0x0
1c007588:	03400000 	andi	$r0,$r0,0x0
1c00758c:	03400000 	andi	$r0,$r0,0x0
1c007590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007594:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007598:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00759c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c007510 <main+0x3c>
1c0075a0:	57ee7fff 	bl	-4484(0xfffee7c) # 1c00641c <Init_main>
1c0075a4:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0075a8:	03bfc98c 	ori	$r12,$r12,0xff2
1c0075ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0075b0:	50008400 	b	132(0x84) # 1c007634 <main+0x160>
1c0075b4:	03400000 	andi	$r0,$r0,0x0
1c0075b8:	03400000 	andi	$r0,$r0,0x0
1c0075bc:	03400000 	andi	$r0,$r0,0x0
1c0075c0:	03400000 	andi	$r0,$r0,0x0
1c0075c4:	03400000 	andi	$r0,$r0,0x0
1c0075c8:	03400000 	andi	$r0,$r0,0x0
1c0075cc:	03400000 	andi	$r0,$r0,0x0
1c0075d0:	03400000 	andi	$r0,$r0,0x0
1c0075d4:	03400000 	andi	$r0,$r0,0x0
1c0075d8:	03400000 	andi	$r0,$r0,0x0
1c0075dc:	03400000 	andi	$r0,$r0,0x0
1c0075e0:	03400000 	andi	$r0,$r0,0x0
1c0075e4:	03400000 	andi	$r0,$r0,0x0
1c0075e8:	03400000 	andi	$r0,$r0,0x0
1c0075ec:	03400000 	andi	$r0,$r0,0x0
1c0075f0:	03400000 	andi	$r0,$r0,0x0
1c0075f4:	03400000 	andi	$r0,$r0,0x0
1c0075f8:	03400000 	andi	$r0,$r0,0x0
1c0075fc:	03400000 	andi	$r0,$r0,0x0
1c007600:	03400000 	andi	$r0,$r0,0x0
1c007604:	03400000 	andi	$r0,$r0,0x0
1c007608:	03400000 	andi	$r0,$r0,0x0
1c00760c:	03400000 	andi	$r0,$r0,0x0
1c007610:	03400000 	andi	$r0,$r0,0x0
1c007614:	03400000 	andi	$r0,$r0,0x0
1c007618:	03400000 	andi	$r0,$r0,0x0
1c00761c:	03400000 	andi	$r0,$r0,0x0
1c007620:	03400000 	andi	$r0,$r0,0x0
1c007624:	03400000 	andi	$r0,$r0,0x0
1c007628:	03400000 	andi	$r0,$r0,0x0
1c00762c:	03400000 	andi	$r0,$r0,0x0
1c007630:	03400000 	andi	$r0,$r0,0x0
1c007634:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007638:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00763c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007640:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0075b4 <main+0xe0>
1c007644:	02809804 	addi.w	$r4,$r0,38(0x26)
1c007648:	57a3dbff 	bl	-23592(0xfffa3d8) # 1c001a20 <gpio_read>
1c00764c:	0015008d 	move	$r13,$r4
1c007650:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007654:	5c0cadac 	bne	$r13,$r12,3244(0xcac) # 1c008300 <main+0xe2c>
1c007658:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00765c:	02b4498c 	addi.w	$r12,$r12,-750(0xd12)
1c007660:	29000180 	st.b	$r0,$r12,0
1c007664:	57da6fff 	bl	-9620(0xfffda6c) # 1c0050d0 <LEDgree_ON>
1c007668:	57c2a3ff 	bl	-15712(0xfffc2a0) # 1c003908 <MatrixKey>
1c00766c:	0015008c 	move	$r12,$r4
1c007670:	0015018d 	move	$r13,$r12
1c007674:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007678:	02b3d58c 	addi.w	$r12,$r12,-779(0xcf5)
1c00767c:	2900018d 	st.b	$r13,$r12,0
1c007680:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007684:	0290658c 	addi.w	$r12,$r12,1049(0x419)
1c007688:	2a00018c 	ld.bu	$r12,$r12,0
1c00768c:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c007690:	680cbdac 	bltu	$r13,$r12,3260(0xcbc) # 1c00834c <main+0xe78>
1c007694:	0040898d 	slli.w	$r13,$r12,0x2
1c007698:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c00769c:	0291a18c 	addi.w	$r12,$r12,1128(0x468)
1c0076a0:	001031ac 	add.w	$r12,$r13,$r12
1c0076a4:	2880018c 	ld.w	$r12,$r12,0
1c0076a8:	4c000180 	jirl	$r0,$r12,0
1c0076ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076b0:	028fb18c 	addi.w	$r12,$r12,1004(0x3ec)
1c0076b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0076b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0076bc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0076d4 <main+0x200>
1c0076c0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0076c4:	540d2800 	bl	3368(0xd28) # 1c0083ec <interface_display>
1c0076c8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076cc:	028f418c 	addi.w	$r12,$r12,976(0x3d0)
1c0076d0:	29000180 	st.b	$r0,$r12,0
1c0076d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076d8:	02b2558c 	addi.w	$r12,$r12,-875(0xc95)
1c0076dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0076e0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0076e4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00770c <main+0x238>
1c0076e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076ec:	028ec58c 	addi.w	$r12,$r12,945(0x3b1)
1c0076f0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0076f4:	2900018d 	st.b	$r13,$r12,0
1c0076f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076fc:	028e818c 	addi.w	$r12,$r12,928(0x3a0)
1c007700:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007704:	2900018d 	st.b	$r13,$r12,0
1c007708:	500c4c00 	b	3148(0xc4c) # 1c008354 <main+0xe80>
1c00770c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007710:	02b1758c 	addi.w	$r12,$r12,-931(0xc5d)
1c007714:	2a00018d 	ld.bu	$r13,$r12,0
1c007718:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00771c:	5c0c39ac 	bne	$r13,$r12,3128(0xc38) # 1c008354 <main+0xe80>
1c007720:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007724:	028de58c 	addi.w	$r12,$r12,889(0x379)
1c007728:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00772c:	2900018d 	st.b	$r13,$r12,0
1c007730:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007734:	028da18c 	addi.w	$r12,$r12,872(0x368)
1c007738:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00773c:	2900018d 	st.b	$r13,$r12,0
1c007740:	500c1400 	b	3092(0xc14) # 1c008354 <main+0xe80>
1c007744:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007748:	028d518c 	addi.w	$r12,$r12,852(0x354)
1c00774c:	2a00018d 	ld.bu	$r13,$r12,0
1c007750:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c007754:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00776c <main+0x298>
1c007758:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00775c:	540c9000 	bl	3216(0xc90) # 1c0083ec <interface_display>
1c007760:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007764:	028ce18c 	addi.w	$r12,$r12,824(0x338)
1c007768:	29000180 	st.b	$r0,$r12,0
1c00776c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007770:	02aff58c 	addi.w	$r12,$r12,-1027(0xbfd)
1c007774:	2a00018d 	ld.bu	$r13,$r12,0
1c007778:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00777c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0077a4 <main+0x2d0>
1c007780:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007784:	028c658c 	addi.w	$r12,$r12,793(0x319)
1c007788:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00778c:	2900018d 	st.b	$r13,$r12,0
1c007790:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007794:	028c218c 	addi.w	$r12,$r12,776(0x308)
1c007798:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00779c:	2900018d 	st.b	$r13,$r12,0
1c0077a0:	500bbc00 	b	3004(0xbbc) # 1c00835c <main+0xe88>
1c0077a4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077a8:	02af158c 	addi.w	$r12,$r12,-1083(0xbc5)
1c0077ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0077b0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0077b4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0077dc <main+0x308>
1c0077b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077bc:	028b858c 	addi.w	$r12,$r12,737(0x2e1)
1c0077c0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0077c4:	2900018d 	st.b	$r13,$r12,0
1c0077c8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077cc:	028b418c 	addi.w	$r12,$r12,720(0x2d0)
1c0077d0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0077d4:	2900018d 	st.b	$r13,$r12,0
1c0077d8:	500b8400 	b	2948(0xb84) # 1c00835c <main+0xe88>
1c0077dc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077e0:	02ae358c 	addi.w	$r12,$r12,-1139(0xb8d)
1c0077e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0077e8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0077ec:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007814 <main+0x340>
1c0077f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077f4:	028aa58c 	addi.w	$r12,$r12,681(0x2a9)
1c0077f8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0077fc:	2900018d 	st.b	$r13,$r12,0
1c007800:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007804:	028a618c 	addi.w	$r12,$r12,664(0x298)
1c007808:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00780c:	2900018d 	st.b	$r13,$r12,0
1c007810:	500b4c00 	b	2892(0xb4c) # 1c00835c <main+0xe88>
1c007814:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007818:	02ad558c 	addi.w	$r12,$r12,-1195(0xb55)
1c00781c:	2a00018d 	ld.bu	$r13,$r12,0
1c007820:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007824:	5c0b39ac 	bne	$r13,$r12,2872(0xb38) # 1c00835c <main+0xe88>
1c007828:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00782c:	0289c58c 	addi.w	$r12,$r12,625(0x271)
1c007830:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007834:	2900018d 	st.b	$r13,$r12,0
1c007838:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00783c:	0289818c 	addi.w	$r12,$r12,608(0x260)
1c007840:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007844:	2900018d 	st.b	$r13,$r12,0
1c007848:	500b1400 	b	2836(0xb14) # 1c00835c <main+0xe88>
1c00784c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007850:	0289318c 	addi.w	$r12,$r12,588(0x24c)
1c007854:	2a00018d 	ld.bu	$r13,$r12,0
1c007858:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00785c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007874 <main+0x3a0>
1c007860:	02801004 	addi.w	$r4,$r0,4(0x4)
1c007864:	540b8800 	bl	2952(0xb88) # 1c0083ec <interface_display>
1c007868:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00786c:	0288c18c 	addi.w	$r12,$r12,560(0x230)
1c007870:	29000180 	st.b	$r0,$r12,0
1c007874:	54176c00 	bl	5996(0x176c) # 1c008fe0 <Read_ID>
1c007878:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00787c:	02abc58c 	addi.w	$r12,$r12,-1295(0xaf1)
1c007880:	2a00018d 	ld.bu	$r13,$r12,0
1c007884:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007888:	5c0addac 	bne	$r13,$r12,2780(0xadc) # 1c008364 <main+0xe90>
1c00788c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007890:	0288358c 	addi.w	$r12,$r12,525(0x20d)
1c007894:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007898:	2900018d 	st.b	$r13,$r12,0
1c00789c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078a0:	0287f18c 	addi.w	$r12,$r12,508(0x1fc)
1c0078a4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0078a8:	2900018d 	st.b	$r13,$r12,0
1c0078ac:	500ab800 	b	2744(0xab8) # 1c008364 <main+0xe90>
1c0078b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078b4:	0287a18c 	addi.w	$r12,$r12,488(0x1e8)
1c0078b8:	2a00018d 	ld.bu	$r13,$r12,0
1c0078bc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0078c0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0078d8 <main+0x404>
1c0078c4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0078c8:	540b2400 	bl	2852(0xb24) # 1c0083ec <interface_display>
1c0078cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078d0:	0287318c 	addi.w	$r12,$r12,460(0x1cc)
1c0078d4:	29000180 	st.b	$r0,$r12,0
1c0078d8:	5419ac00 	bl	6572(0x19ac) # 1c009284 <Key_main>
1c0078dc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078e0:	02aa358c 	addi.w	$r12,$r12,-1395(0xa8d)
1c0078e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0078e8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0078ec:	5c0a81ac 	bne	$r13,$r12,2688(0xa80) # 1c00836c <main+0xe98>
1c0078f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078f4:	0286a58c 	addi.w	$r12,$r12,425(0x1a9)
1c0078f8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0078fc:	2900018d 	st.b	$r13,$r12,0
1c007900:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007904:	0286618c 	addi.w	$r12,$r12,408(0x198)
1c007908:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00790c:	2900018d 	st.b	$r13,$r12,0
1c007910:	500a5c00 	b	2652(0xa5c) # 1c00836c <main+0xe98>
1c007914:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007918:	0286118c 	addi.w	$r12,$r12,388(0x184)
1c00791c:	2a00018d 	ld.bu	$r13,$r12,0
1c007920:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c007924:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00793c <main+0x468>
1c007928:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00792c:	540ac000 	bl	2752(0xac0) # 1c0083ec <interface_display>
1c007930:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007934:	0285a18c 	addi.w	$r12,$r12,360(0x168)
1c007938:	29000180 	st.b	$r0,$r12,0
1c00793c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007940:	02a8b58c 	addi.w	$r12,$r12,-1491(0xa2d)
1c007944:	2a00018d 	ld.bu	$r13,$r12,0
1c007948:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00794c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007974 <main+0x4a0>
1c007950:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007954:	0285258c 	addi.w	$r12,$r12,329(0x149)
1c007958:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00795c:	2900018d 	st.b	$r13,$r12,0
1c007960:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007964:	0284e18c 	addi.w	$r12,$r12,312(0x138)
1c007968:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00796c:	2900018d 	st.b	$r13,$r12,0
1c007970:	500a0400 	b	2564(0xa04) # 1c008374 <main+0xea0>
1c007974:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007978:	02a7d58c 	addi.w	$r12,$r12,-1547(0x9f5)
1c00797c:	2a00018d 	ld.bu	$r13,$r12,0
1c007980:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007984:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0079ac <main+0x4d8>
1c007988:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00798c:	0284458c 	addi.w	$r12,$r12,273(0x111)
1c007990:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007994:	2900018d 	st.b	$r13,$r12,0
1c007998:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00799c:	0284018c 	addi.w	$r12,$r12,256(0x100)
1c0079a0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0079a4:	2900018d 	st.b	$r13,$r12,0
1c0079a8:	5009cc00 	b	2508(0x9cc) # 1c008374 <main+0xea0>
1c0079ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079b0:	02a6f58c 	addi.w	$r12,$r12,-1603(0x9bd)
1c0079b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0079b8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0079bc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0079e4 <main+0x510>
1c0079c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079c4:	0283658c 	addi.w	$r12,$r12,217(0xd9)
1c0079c8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0079cc:	2900018d 	st.b	$r13,$r12,0
1c0079d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079d4:	0283218c 	addi.w	$r12,$r12,200(0xc8)
1c0079d8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0079dc:	2900018d 	st.b	$r13,$r12,0
1c0079e0:	50099400 	b	2452(0x994) # 1c008374 <main+0xea0>
1c0079e4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079e8:	02a6158c 	addi.w	$r12,$r12,-1659(0x985)
1c0079ec:	2a00018d 	ld.bu	$r13,$r12,0
1c0079f0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0079f4:	5c0981ac 	bne	$r13,$r12,2432(0x980) # 1c008374 <main+0xea0>
1c0079f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079fc:	0282858c 	addi.w	$r12,$r12,161(0xa1)
1c007a00:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007a04:	2900018d 	st.b	$r13,$r12,0
1c007a08:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a0c:	0282418c 	addi.w	$r12,$r12,144(0x90)
1c007a10:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007a14:	2900018d 	st.b	$r13,$r12,0
1c007a18:	50095c00 	b	2396(0x95c) # 1c008374 <main+0xea0>
1c007a1c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a20:	0281f18c 	addi.w	$r12,$r12,124(0x7c)
1c007a24:	2a00018d 	ld.bu	$r13,$r12,0
1c007a28:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c007a2c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007a44 <main+0x570>
1c007a30:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007a34:	5409b800 	bl	2488(0x9b8) # 1c0083ec <interface_display>
1c007a38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a3c:	0281818c 	addi.w	$r12,$r12,96(0x60)
1c007a40:	29000180 	st.b	$r0,$r12,0
1c007a44:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a48:	02a4958c 	addi.w	$r12,$r12,-1755(0x925)
1c007a4c:	2a00018d 	ld.bu	$r13,$r12,0
1c007a50:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007a54:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007a7c <main+0x5a8>
1c007a58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a5c:	0281058c 	addi.w	$r12,$r12,65(0x41)
1c007a60:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c007a64:	2900018d 	st.b	$r13,$r12,0
1c007a68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a6c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c007a70:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c007a74:	2900018d 	st.b	$r13,$r12,0
1c007a78:	50090400 	b	2308(0x904) # 1c00837c <main+0xea8>
1c007a7c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a80:	02a3b58c 	addi.w	$r12,$r12,-1811(0x8ed)
1c007a84:	2a00018d 	ld.bu	$r13,$r12,0
1c007a88:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007a8c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007ab4 <main+0x5e0>
1c007a90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a94:	0280258c 	addi.w	$r12,$r12,9(0x9)
1c007a98:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007a9c:	2900018d 	st.b	$r13,$r12,0
1c007aa0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007aa4:	02bfe18c 	addi.w	$r12,$r12,-8(0xff8)
1c007aa8:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007aac:	2900018d 	st.b	$r13,$r12,0
1c007ab0:	5008cc00 	b	2252(0x8cc) # 1c00837c <main+0xea8>
1c007ab4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ab8:	02a2d58c 	addi.w	$r12,$r12,-1867(0x8b5)
1c007abc:	2a00018d 	ld.bu	$r13,$r12,0
1c007ac0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007ac4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007aec <main+0x618>
1c007ac8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007acc:	02bf458c 	addi.w	$r12,$r12,-47(0xfd1)
1c007ad0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007ad4:	2900018d 	st.b	$r13,$r12,0
1c007ad8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007adc:	02bf018c 	addi.w	$r12,$r12,-64(0xfc0)
1c007ae0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007ae4:	2900018d 	st.b	$r13,$r12,0
1c007ae8:	50089400 	b	2196(0x894) # 1c00837c <main+0xea8>
1c007aec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007af0:	02a1f58c 	addi.w	$r12,$r12,-1923(0x87d)
1c007af4:	2a00018d 	ld.bu	$r13,$r12,0
1c007af8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007afc:	5c0881ac 	bne	$r13,$r12,2176(0x880) # 1c00837c <main+0xea8>
1c007b00:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b04:	02be658c 	addi.w	$r12,$r12,-103(0xf99)
1c007b08:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b0c:	2900018d 	st.b	$r13,$r12,0
1c007b10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b14:	02be218c 	addi.w	$r12,$r12,-120(0xf88)
1c007b18:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b1c:	2900018d 	st.b	$r13,$r12,0
1c007b20:	50085c00 	b	2140(0x85c) # 1c00837c <main+0xea8>
1c007b24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b28:	02bdd18c 	addi.w	$r12,$r12,-140(0xf74)
1c007b2c:	2a00018d 	ld.bu	$r13,$r12,0
1c007b30:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c007b34:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007b4c <main+0x678>
1c007b38:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c007b3c:	5408b000 	bl	2224(0x8b0) # 1c0083ec <interface_display>
1c007b40:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b44:	02bd618c 	addi.w	$r12,$r12,-168(0xf58)
1c007b48:	29000180 	st.b	$r0,$r12,0
1c007b4c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b50:	02a0758c 	addi.w	$r12,$r12,-2019(0x81d)
1c007b54:	2a00018d 	ld.bu	$r13,$r12,0
1c007b58:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007b5c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007b84 <main+0x6b0>
1c007b60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b64:	02bce58c 	addi.w	$r12,$r12,-199(0xf39)
1c007b68:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007b6c:	2900018d 	st.b	$r13,$r12,0
1c007b70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b74:	02bca18c 	addi.w	$r12,$r12,-216(0xf28)
1c007b78:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007b7c:	2900018d 	st.b	$r13,$r12,0
1c007b80:	50080400 	b	2052(0x804) # 1c008384 <main+0xeb0>
1c007b84:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007b88:	029f958c 	addi.w	$r12,$r12,2021(0x7e5)
1c007b8c:	2a00018d 	ld.bu	$r13,$r12,0
1c007b90:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007b94:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007bbc <main+0x6e8>
1c007b98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b9c:	02bc058c 	addi.w	$r12,$r12,-255(0xf01)
1c007ba0:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c007ba4:	2900018d 	st.b	$r13,$r12,0
1c007ba8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bac:	02bbc18c 	addi.w	$r12,$r12,-272(0xef0)
1c007bb0:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c007bb4:	2900018d 	st.b	$r13,$r12,0
1c007bb8:	5007cc00 	b	1996(0x7cc) # 1c008384 <main+0xeb0>
1c007bbc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007bc0:	029eb58c 	addi.w	$r12,$r12,1965(0x7ad)
1c007bc4:	2a00018d 	ld.bu	$r13,$r12,0
1c007bc8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007bcc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007bf4 <main+0x720>
1c007bd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bd4:	02bb258c 	addi.w	$r12,$r12,-311(0xec9)
1c007bd8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007bdc:	2900018d 	st.b	$r13,$r12,0
1c007be0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007be4:	02bae18c 	addi.w	$r12,$r12,-328(0xeb8)
1c007be8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007bec:	2900018d 	st.b	$r13,$r12,0
1c007bf0:	50079400 	b	1940(0x794) # 1c008384 <main+0xeb0>
1c007bf4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007bf8:	029dd58c 	addi.w	$r12,$r12,1909(0x775)
1c007bfc:	2a00018d 	ld.bu	$r13,$r12,0
1c007c00:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007c04:	5c0781ac 	bne	$r13,$r12,1920(0x780) # 1c008384 <main+0xeb0>
1c007c08:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c0c:	02ba458c 	addi.w	$r12,$r12,-367(0xe91)
1c007c10:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c14:	2900018d 	st.b	$r13,$r12,0
1c007c18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c1c:	02ba018c 	addi.w	$r12,$r12,-384(0xe80)
1c007c20:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c24:	2900018d 	st.b	$r13,$r12,0
1c007c28:	50075c00 	b	1884(0x75c) # 1c008384 <main+0xeb0>
1c007c2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c30:	02b9b18c 	addi.w	$r12,$r12,-404(0xe6c)
1c007c34:	2a00018d 	ld.bu	$r13,$r12,0
1c007c38:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c007c3c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007c54 <main+0x780>
1c007c40:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c007c44:	5407a800 	bl	1960(0x7a8) # 1c0083ec <interface_display>
1c007c48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c4c:	02b9418c 	addi.w	$r12,$r12,-432(0xe50)
1c007c50:	29000180 	st.b	$r0,$r12,0
1c007c54:	541be400 	bl	7140(0x1be4) # 1c009838 <Key>
1c007c58:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c5c:	029c458c 	addi.w	$r12,$r12,1809(0x711)
1c007c60:	2a00018d 	ld.bu	$r13,$r12,0
1c007c64:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007c68:	5c0725ac 	bne	$r13,$r12,1828(0x724) # 1c00838c <main+0xeb8>
1c007c6c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c70:	02b8b58c 	addi.w	$r12,$r12,-467(0xe2d)
1c007c74:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007c78:	2900018d 	st.b	$r13,$r12,0
1c007c7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c80:	02b8718c 	addi.w	$r12,$r12,-484(0xe1c)
1c007c84:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007c88:	2900018d 	st.b	$r13,$r12,0
1c007c8c:	50070000 	b	1792(0x700) # 1c00838c <main+0xeb8>
1c007c90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c94:	02b8218c 	addi.w	$r12,$r12,-504(0xe08)
1c007c98:	2a00018d 	ld.bu	$r13,$r12,0
1c007c9c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c007ca0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007cb8 <main+0x7e4>
1c007ca4:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007ca8:	54074400 	bl	1860(0x744) # 1c0083ec <interface_display>
1c007cac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cb0:	02b7b18c 	addi.w	$r12,$r12,-532(0xdec)
1c007cb4:	29000180 	st.b	$r0,$r12,0
1c007cb8:	540fe400 	bl	4068(0xfe4) # 1c008c9c <Write_ID>
1c007cbc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007cc0:	029ab58c 	addi.w	$r12,$r12,1709(0x6ad)
1c007cc4:	2a00018d 	ld.bu	$r13,$r12,0
1c007cc8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007ccc:	5c06c9ac 	bne	$r13,$r12,1736(0x6c8) # 1c008394 <main+0xec0>
1c007cd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cd4:	02b7258c 	addi.w	$r12,$r12,-567(0xdc9)
1c007cd8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007cdc:	2900018d 	st.b	$r13,$r12,0
1c007ce0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ce4:	02b6e18c 	addi.w	$r12,$r12,-584(0xdb8)
1c007ce8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007cec:	2900018d 	st.b	$r13,$r12,0
1c007cf0:	5006a400 	b	1700(0x6a4) # 1c008394 <main+0xec0>
1c007cf4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cf8:	02b6918c 	addi.w	$r12,$r12,-604(0xda4)
1c007cfc:	2a00018d 	ld.bu	$r13,$r12,0
1c007d00:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007d04:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007d1c <main+0x848>
1c007d08:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007d0c:	5406e000 	bl	1760(0x6e0) # 1c0083ec <interface_display>
1c007d10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d14:	02b6218c 	addi.w	$r12,$r12,-632(0xd88)
1c007d18:	29000180 	st.b	$r0,$r12,0
1c007d1c:	541f9000 	bl	8080(0x1f90) # 1c009cac <Add_Key>
1c007d20:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d24:	0299258c 	addi.w	$r12,$r12,1609(0x649)
1c007d28:	2a00018d 	ld.bu	$r13,$r12,0
1c007d2c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007d30:	5c066dac 	bne	$r13,$r12,1644(0x66c) # 1c00839c <main+0xec8>
1c007d34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d38:	02b5958c 	addi.w	$r12,$r12,-667(0xd65)
1c007d3c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007d40:	2900018d 	st.b	$r13,$r12,0
1c007d44:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d48:	02b5518c 	addi.w	$r12,$r12,-684(0xd54)
1c007d4c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007d50:	2900018d 	st.b	$r13,$r12,0
1c007d54:	50064800 	b	1608(0x648) # 1c00839c <main+0xec8>
1c007d58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d5c:	02b5018c 	addi.w	$r12,$r12,-704(0xd40)
1c007d60:	2a00018d 	ld.bu	$r13,$r12,0
1c007d64:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007d68:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007d80 <main+0x8ac>
1c007d6c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c007d70:	54067c00 	bl	1660(0x67c) # 1c0083ec <interface_display>
1c007d74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d78:	02b4918c 	addi.w	$r12,$r12,-732(0xd24)
1c007d7c:	29000180 	st.b	$r0,$r12,0
1c007d80:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d84:	0297a58c 	addi.w	$r12,$r12,1513(0x5e9)
1c007d88:	2a00018d 	ld.bu	$r13,$r12,0
1c007d8c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007d90:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007db8 <main+0x8e4>
1c007d94:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d98:	02b4158c 	addi.w	$r12,$r12,-763(0xd05)
1c007d9c:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c007da0:	2900018d 	st.b	$r13,$r12,0
1c007da4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007da8:	02b3d18c 	addi.w	$r12,$r12,-780(0xcf4)
1c007dac:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c007db0:	2900018d 	st.b	$r13,$r12,0
1c007db4:	5005f000 	b	1520(0x5f0) # 1c0083a4 <main+0xed0>
1c007db8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007dbc:	0296c58c 	addi.w	$r12,$r12,1457(0x5b1)
1c007dc0:	2a00018d 	ld.bu	$r13,$r12,0
1c007dc4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007dc8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007df0 <main+0x91c>
1c007dcc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007dd0:	02b3358c 	addi.w	$r12,$r12,-819(0xccd)
1c007dd4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007dd8:	2900018d 	st.b	$r13,$r12,0
1c007ddc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007de0:	02b2f18c 	addi.w	$r12,$r12,-836(0xcbc)
1c007de4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007de8:	2900018d 	st.b	$r13,$r12,0
1c007dec:	5005b800 	b	1464(0x5b8) # 1c0083a4 <main+0xed0>
1c007df0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007df4:	0295e58c 	addi.w	$r12,$r12,1401(0x579)
1c007df8:	2a00018d 	ld.bu	$r13,$r12,0
1c007dfc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007e00:	5c05a5ac 	bne	$r13,$r12,1444(0x5a4) # 1c0083a4 <main+0xed0>
1c007e04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e08:	02b2558c 	addi.w	$r12,$r12,-875(0xc95)
1c007e0c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e10:	2900018d 	st.b	$r13,$r12,0
1c007e14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e18:	02b2118c 	addi.w	$r12,$r12,-892(0xc84)
1c007e1c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e20:	2900018d 	st.b	$r13,$r12,0
1c007e24:	50058000 	b	1408(0x580) # 1c0083a4 <main+0xed0>
1c007e28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e2c:	02b1c18c 	addi.w	$r12,$r12,-912(0xc70)
1c007e30:	2a00018d 	ld.bu	$r13,$r12,0
1c007e34:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007e38:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c007e54 <main+0x980>
1c007e3c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007e40:	5405ac00 	bl	1452(0x5ac) # 1c0083ec <interface_display>
1c007e44:	5421ac00 	bl	8620(0x21ac) # 1c009ff0 <Delete_key>
1c007e48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e4c:	02b1418c 	addi.w	$r12,$r12,-944(0xc50)
1c007e50:	29000180 	st.b	$r0,$r12,0
1c007e54:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e58:	0294558c 	addi.w	$r12,$r12,1301(0x515)
1c007e5c:	2a00018d 	ld.bu	$r13,$r12,0
1c007e60:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007e64:	5c0549ac 	bne	$r13,$r12,1352(0x548) # 1c0083ac <main+0xed8>
1c007e68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e6c:	02b0c58c 	addi.w	$r12,$r12,-975(0xc31)
1c007e70:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e74:	2900018d 	st.b	$r13,$r12,0
1c007e78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e7c:	02b0818c 	addi.w	$r12,$r12,-992(0xc20)
1c007e80:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e84:	2900018d 	st.b	$r13,$r12,0
1c007e88:	50052400 	b	1316(0x524) # 1c0083ac <main+0xed8>
1c007e8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e90:	02b0318c 	addi.w	$r12,$r12,-1012(0xc0c)
1c007e94:	2a00018d 	ld.bu	$r13,$r12,0
1c007e98:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007e9c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007eb4 <main+0x9e0>
1c007ea0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c007ea4:	54054800 	bl	1352(0x548) # 1c0083ec <interface_display>
1c007ea8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007eac:	02afc18c 	addi.w	$r12,$r12,-1040(0xbf0)
1c007eb0:	29000180 	st.b	$r0,$r12,0
1c007eb4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007eb8:	0292d58c 	addi.w	$r12,$r12,1205(0x4b5)
1c007ebc:	2a00018d 	ld.bu	$r13,$r12,0
1c007ec0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007ec4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007eec <main+0xa18>
1c007ec8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ecc:	02af458c 	addi.w	$r12,$r12,-1071(0xbd1)
1c007ed0:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c007ed4:	2900018d 	st.b	$r13,$r12,0
1c007ed8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007edc:	02af018c 	addi.w	$r12,$r12,-1088(0xbc0)
1c007ee0:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c007ee4:	2900018d 	st.b	$r13,$r12,0
1c007ee8:	5004cc00 	b	1228(0x4cc) # 1c0083b4 <main+0xee0>
1c007eec:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007ef0:	0291f58c 	addi.w	$r12,$r12,1149(0x47d)
1c007ef4:	2a00018d 	ld.bu	$r13,$r12,0
1c007ef8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007efc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007f24 <main+0xa50>
1c007f00:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f04:	02ae658c 	addi.w	$r12,$r12,-1127(0xb99)
1c007f08:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f0c:	2900018d 	st.b	$r13,$r12,0
1c007f10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f14:	02ae218c 	addi.w	$r12,$r12,-1144(0xb88)
1c007f18:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f1c:	2900018d 	st.b	$r13,$r12,0
1c007f20:	50049400 	b	1172(0x494) # 1c0083b4 <main+0xee0>
1c007f24:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007f28:	0291158c 	addi.w	$r12,$r12,1093(0x445)
1c007f2c:	2a00018d 	ld.bu	$r13,$r12,0
1c007f30:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007f34:	5c0481ac 	bne	$r13,$r12,1152(0x480) # 1c0083b4 <main+0xee0>
1c007f38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f3c:	02ad858c 	addi.w	$r12,$r12,-1183(0xb61)
1c007f40:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f44:	2900018d 	st.b	$r13,$r12,0
1c007f48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f4c:	02ad418c 	addi.w	$r12,$r12,-1200(0xb50)
1c007f50:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f54:	2900018d 	st.b	$r13,$r12,0
1c007f58:	50045c00 	b	1116(0x45c) # 1c0083b4 <main+0xee0>
1c007f5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f60:	02acf18c 	addi.w	$r12,$r12,-1220(0xb3c)
1c007f64:	2a00018d 	ld.bu	$r13,$r12,0
1c007f68:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007f6c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c007f88 <main+0xab4>
1c007f70:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007f74:	54047800 	bl	1144(0x478) # 1c0083ec <interface_display>
1c007f78:	540f4800 	bl	3912(0xf48) # 1c008ec0 <Delate_ID>
1c007f7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f80:	02ac718c 	addi.w	$r12,$r12,-1252(0xb1c)
1c007f84:	29000180 	st.b	$r0,$r12,0
1c007f88:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007f8c:	028f858c 	addi.w	$r12,$r12,993(0x3e1)
1c007f90:	2a00018d 	ld.bu	$r13,$r12,0
1c007f94:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007f98:	5c0425ac 	bne	$r13,$r12,1060(0x424) # 1c0083bc <main+0xee8>
1c007f9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fa0:	02abf58c 	addi.w	$r12,$r12,-1283(0xafd)
1c007fa4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007fa8:	2900018d 	st.b	$r13,$r12,0
1c007fac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fb0:	02abb18c 	addi.w	$r12,$r12,-1300(0xaec)
1c007fb4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007fb8:	2900018d 	st.b	$r13,$r12,0
1c007fbc:	50040000 	b	1024(0x400) # 1c0083bc <main+0xee8>
1c007fc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fc4:	02ab618c 	addi.w	$r12,$r12,-1320(0xad8)
1c007fc8:	2a00018d 	ld.bu	$r13,$r12,0
1c007fcc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007fd0:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c007ffc <main+0xb28>
1c007fd4:	02804804 	addi.w	$r4,$r0,18(0x12)
1c007fd8:	54041400 	bl	1044(0x414) # 1c0083ec <interface_display>
1c007fdc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fe0:	02aaf58c 	addi.w	$r12,$r12,-1347(0xabd)
1c007fe4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007fe8:	2900018d 	st.b	$r13,$r12,0
1c007fec:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ff0:	02aab18c 	addi.w	$r12,$r12,-1364(0xaac)
1c007ff4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007ff8:	2900018d 	st.b	$r13,$r12,0
1c007ffc:	57b2ffff 	bl	-19716(0xfffb2fc) # 1c0032f8 <press_FR>
1c008000:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008004:	028da58c 	addi.w	$r12,$r12,873(0x369)
1c008008:	2a00018d 	ld.bu	$r13,$r12,0
1c00800c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008010:	5c03b5ac 	bne	$r13,$r12,948(0x3b4) # 1c0083c4 <main+0xef0>
1c008014:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008018:	02aa158c 	addi.w	$r12,$r12,-1403(0xa85)
1c00801c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c008020:	2900018d 	st.b	$r13,$r12,0
1c008024:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008028:	02a9d18c 	addi.w	$r12,$r12,-1420(0xa74)
1c00802c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c008030:	2900018d 	st.b	$r13,$r12,0
1c008034:	50039000 	b	912(0x390) # 1c0083c4 <main+0xef0>
1c008038:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00803c:	02a9818c 	addi.w	$r12,$r12,-1440(0xa60)
1c008040:	2a00018d 	ld.bu	$r13,$r12,0
1c008044:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008048:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c008060 <main+0xb8c>
1c00804c:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c008050:	54039c00 	bl	924(0x39c) # 1c0083ec <interface_display>
1c008054:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008058:	02a9118c 	addi.w	$r12,$r12,-1468(0xa44)
1c00805c:	29000180 	st.b	$r0,$r12,0
1c008060:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008064:	028c258c 	addi.w	$r12,$r12,777(0x309)
1c008068:	2a00018d 	ld.bu	$r13,$r12,0
1c00806c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c008070:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008098 <main+0xbc4>
1c008074:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008078:	02a8958c 	addi.w	$r12,$r12,-1499(0xa25)
1c00807c:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c008080:	2900018d 	st.b	$r13,$r12,0
1c008084:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008088:	02a8518c 	addi.w	$r12,$r12,-1516(0xa14)
1c00808c:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c008090:	2900018d 	st.b	$r13,$r12,0
1c008094:	50033800 	b	824(0x338) # 1c0083cc <main+0xef8>
1c008098:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00809c:	028b458c 	addi.w	$r12,$r12,721(0x2d1)
1c0080a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0080a4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0080a8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0080d0 <main+0xbfc>
1c0080ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080b0:	02a7b58c 	addi.w	$r12,$r12,-1555(0x9ed)
1c0080b4:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0080b8:	2900018d 	st.b	$r13,$r12,0
1c0080bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080c0:	02a7718c 	addi.w	$r12,$r12,-1572(0x9dc)
1c0080c4:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0080c8:	2900018d 	st.b	$r13,$r12,0
1c0080cc:	50030000 	b	768(0x300) # 1c0083cc <main+0xef8>
1c0080d0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0080d4:	028a658c 	addi.w	$r12,$r12,665(0x299)
1c0080d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0080dc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0080e0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008108 <main+0xc34>
1c0080e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080e8:	02a6d58c 	addi.w	$r12,$r12,-1611(0x9b5)
1c0080ec:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0080f0:	2900018d 	st.b	$r13,$r12,0
1c0080f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080f8:	02a6918c 	addi.w	$r12,$r12,-1628(0x9a4)
1c0080fc:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008100:	2900018d 	st.b	$r13,$r12,0
1c008104:	5002c800 	b	712(0x2c8) # 1c0083cc <main+0xef8>
1c008108:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00810c:	0289858c 	addi.w	$r12,$r12,609(0x261)
1c008110:	2a00018d 	ld.bu	$r13,$r12,0
1c008114:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008118:	5c02b5ac 	bne	$r13,$r12,692(0x2b4) # 1c0083cc <main+0xef8>
1c00811c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008120:	02a5f58c 	addi.w	$r12,$r12,-1667(0x97d)
1c008124:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008128:	2900018d 	st.b	$r13,$r12,0
1c00812c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008130:	02a5b18c 	addi.w	$r12,$r12,-1684(0x96c)
1c008134:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008138:	2900018d 	st.b	$r13,$r12,0
1c00813c:	50029000 	b	656(0x290) # 1c0083cc <main+0xef8>
1c008140:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008144:	02a5618c 	addi.w	$r12,$r12,-1704(0x958)
1c008148:	2a00018d 	ld.bu	$r13,$r12,0
1c00814c:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c008150:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c00817c <main+0xca8>
1c008154:	02805404 	addi.w	$r4,$r0,21(0x15)
1c008158:	54029400 	bl	660(0x294) # 1c0083ec <interface_display>
1c00815c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008160:	02a4f58c 	addi.w	$r12,$r12,-1731(0x93d)
1c008164:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008168:	2900018d 	st.b	$r13,$r12,0
1c00816c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008170:	02a4b18c 	addi.w	$r12,$r12,-1748(0x92c)
1c008174:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008178:	2900018d 	st.b	$r13,$r12,0
1c00817c:	57ab87ff 	bl	-21628(0xfffab84) # 1c002d00 <Add_FR>
1c008180:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008184:	0287a58c 	addi.w	$r12,$r12,489(0x1e9)
1c008188:	2a00018d 	ld.bu	$r13,$r12,0
1c00818c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008190:	5c0245ac 	bne	$r13,$r12,580(0x244) # 1c0083d4 <main+0xf00>
1c008194:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008198:	02a4158c 	addi.w	$r12,$r12,-1787(0x905)
1c00819c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081a0:	2900018d 	st.b	$r13,$r12,0
1c0081a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081a8:	02a3d18c 	addi.w	$r12,$r12,-1804(0x8f4)
1c0081ac:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081b0:	2900018d 	st.b	$r13,$r12,0
1c0081b4:	50022000 	b	544(0x220) # 1c0083d4 <main+0xf00>
1c0081b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081bc:	02a3818c 	addi.w	$r12,$r12,-1824(0x8e0)
1c0081c0:	2a00018d 	ld.bu	$r13,$r12,0
1c0081c4:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0081c8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0081e0 <main+0xd0c>
1c0081cc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0081d0:	54021c00 	bl	540(0x21c) # 1c0083ec <interface_display>
1c0081d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081d8:	02a3118c 	addi.w	$r12,$r12,-1852(0x8c4)
1c0081dc:	29000180 	st.b	$r0,$r12,0
1c0081e0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0081e4:	0286258c 	addi.w	$r12,$r12,393(0x189)
1c0081e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0081ec:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0081f0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008218 <main+0xd44>
1c0081f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081f8:	02a2958c 	addi.w	$r12,$r12,-1883(0x8a5)
1c0081fc:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c008200:	2900018d 	st.b	$r13,$r12,0
1c008204:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008208:	02a2518c 	addi.w	$r12,$r12,-1900(0x894)
1c00820c:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c008210:	2900018d 	st.b	$r13,$r12,0
1c008214:	5001c800 	b	456(0x1c8) # 1c0083dc <main+0xf08>
1c008218:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00821c:	0285458c 	addi.w	$r12,$r12,337(0x151)
1c008220:	2a00018d 	ld.bu	$r13,$r12,0
1c008224:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c008228:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008250 <main+0xd7c>
1c00822c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008230:	02a1b58c 	addi.w	$r12,$r12,-1939(0x86d)
1c008234:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008238:	2900018d 	st.b	$r13,$r12,0
1c00823c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008240:	02a1718c 	addi.w	$r12,$r12,-1956(0x85c)
1c008244:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008248:	2900018d 	st.b	$r13,$r12,0
1c00824c:	50019000 	b	400(0x190) # 1c0083dc <main+0xf08>
1c008250:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008254:	0284658c 	addi.w	$r12,$r12,281(0x119)
1c008258:	2a00018d 	ld.bu	$r13,$r12,0
1c00825c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008260:	5c017dac 	bne	$r13,$r12,380(0x17c) # 1c0083dc <main+0xf08>
1c008264:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008268:	02a0d58c 	addi.w	$r12,$r12,-1995(0x835)
1c00826c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008270:	2900018d 	st.b	$r13,$r12,0
1c008274:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008278:	02a0918c 	addi.w	$r12,$r12,-2012(0x824)
1c00827c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008280:	2900018d 	st.b	$r13,$r12,0
1c008284:	50015800 	b	344(0x158) # 1c0083dc <main+0xf08>
1c008288:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00828c:	02a0418c 	addi.w	$r12,$r12,-2032(0x810)
1c008290:	2a00018d 	ld.bu	$r13,$r12,0
1c008294:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c008298:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c0082c8 <main+0xdf4>
1c00829c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0082a0:	54014c00 	bl	332(0x14c) # 1c0083ec <interface_display>
1c0082a4:	57b31bff 	bl	-19688(0xfffb318) # 1c0035bc <Del_FR_Lib>
1c0082a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082ac:	029fc58c 	addi.w	$r12,$r12,2033(0x7f1)
1c0082b0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082b4:	2900018d 	st.b	$r13,$r12,0
1c0082b8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082bc:	029f818c 	addi.w	$r12,$r12,2016(0x7e0)
1c0082c0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082c4:	2900018d 	st.b	$r13,$r12,0
1c0082c8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0082cc:	0282858c 	addi.w	$r12,$r12,161(0xa1)
1c0082d0:	2a00018d 	ld.bu	$r13,$r12,0
1c0082d4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0082d8:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c0083e4 <main+0xf10>
1c0082dc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082e0:	029ef58c 	addi.w	$r12,$r12,1981(0x7bd)
1c0082e4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082e8:	2900018d 	st.b	$r13,$r12,0
1c0082ec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082f0:	029eb18c 	addi.w	$r12,$r12,1964(0x7ac)
1c0082f4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082f8:	2900018d 	st.b	$r13,$r12,0
1c0082fc:	5000e800 	b	232(0xe8) # 1c0083e4 <main+0xf10>
1c008300:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008304:	0281a98c 	addi.w	$r12,$r12,106(0x6a)
1c008308:	2a00018c 	ld.bu	$r12,$r12,0
1c00830c:	44001980 	bnez	$r12,24(0x18) # 1c008324 <main+0xe50>
1c008310:	57d57fff 	bl	-10884(0xfffd57c) # 1c00588c <OLED_CLS>
1c008314:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008318:	0281598c 	addi.w	$r12,$r12,86(0x56)
1c00831c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008320:	2900018d 	st.b	$r13,$r12,0
1c008324:	57cddfff 	bl	-12836(0xfffcddc) # 1c005100 <LEDgree_OFF>
1c008328:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00832c:	029dc58c 	addi.w	$r12,$r12,1905(0x771)
1c008330:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008334:	2900018d 	st.b	$r13,$r12,0
1c008338:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00833c:	029d818c 	addi.w	$r12,$r12,1888(0x760)
1c008340:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008344:	2900018d 	st.b	$r13,$r12,0
1c008348:	53f2ffff 	b	-3332(0xffff2fc) # 1c007644 <main+0x170>
1c00834c:	03400000 	andi	$r0,$r0,0x0
1c008350:	53f2f7ff 	b	-3340(0xffff2f4) # 1c007644 <main+0x170>
1c008354:	03400000 	andi	$r0,$r0,0x0
1c008358:	53f2efff 	b	-3348(0xffff2ec) # 1c007644 <main+0x170>
1c00835c:	03400000 	andi	$r0,$r0,0x0
1c008360:	53f2e7ff 	b	-3356(0xffff2e4) # 1c007644 <main+0x170>
1c008364:	03400000 	andi	$r0,$r0,0x0
1c008368:	53f2dfff 	b	-3364(0xffff2dc) # 1c007644 <main+0x170>
1c00836c:	03400000 	andi	$r0,$r0,0x0
1c008370:	53f2d7ff 	b	-3372(0xffff2d4) # 1c007644 <main+0x170>
1c008374:	03400000 	andi	$r0,$r0,0x0
1c008378:	53f2cfff 	b	-3380(0xffff2cc) # 1c007644 <main+0x170>
1c00837c:	03400000 	andi	$r0,$r0,0x0
1c008380:	53f2c7ff 	b	-3388(0xffff2c4) # 1c007644 <main+0x170>
1c008384:	03400000 	andi	$r0,$r0,0x0
1c008388:	53f2bfff 	b	-3396(0xffff2bc) # 1c007644 <main+0x170>
1c00838c:	03400000 	andi	$r0,$r0,0x0
1c008390:	53f2b7ff 	b	-3404(0xffff2b4) # 1c007644 <main+0x170>
1c008394:	03400000 	andi	$r0,$r0,0x0
1c008398:	53f2afff 	b	-3412(0xffff2ac) # 1c007644 <main+0x170>
1c00839c:	03400000 	andi	$r0,$r0,0x0
1c0083a0:	53f2a7ff 	b	-3420(0xffff2a4) # 1c007644 <main+0x170>
1c0083a4:	03400000 	andi	$r0,$r0,0x0
1c0083a8:	53f29fff 	b	-3428(0xffff29c) # 1c007644 <main+0x170>
1c0083ac:	03400000 	andi	$r0,$r0,0x0
1c0083b0:	53f297ff 	b	-3436(0xffff294) # 1c007644 <main+0x170>
1c0083b4:	03400000 	andi	$r0,$r0,0x0
1c0083b8:	53f28fff 	b	-3444(0xffff28c) # 1c007644 <main+0x170>
1c0083bc:	03400000 	andi	$r0,$r0,0x0
1c0083c0:	53f287ff 	b	-3452(0xffff284) # 1c007644 <main+0x170>
1c0083c4:	03400000 	andi	$r0,$r0,0x0
1c0083c8:	53f27fff 	b	-3460(0xffff27c) # 1c007644 <main+0x170>
1c0083cc:	03400000 	andi	$r0,$r0,0x0
1c0083d0:	53f277ff 	b	-3468(0xffff274) # 1c007644 <main+0x170>
1c0083d4:	03400000 	andi	$r0,$r0,0x0
1c0083d8:	53f26fff 	b	-3476(0xffff26c) # 1c007644 <main+0x170>
1c0083dc:	03400000 	andi	$r0,$r0,0x0
1c0083e0:	53f267ff 	b	-3484(0xffff264) # 1c007644 <main+0x170>
1c0083e4:	03400000 	andi	$r0,$r0,0x0
1c0083e8:	53f25fff 	b	-3492(0xffff25c) # 1c007644 <main+0x170>

1c0083ec <interface_display>:
interface_display():
1c0083ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0083f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0083f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0083f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0083fc:	0015008c 	move	$r12,$r4
1c008400:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c008404:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c008408:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c00840c:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c008c88 <interface_display+0x89c>
1c008410:	0040898d 	slli.w	$r13,$r12,0x2
1c008414:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c008418:	029d418c 	addi.w	$r12,$r12,1872(0x750)
1c00841c:	001031ac 	add.w	$r12,$r13,$r12
1c008420:	2880018c 	ld.w	$r12,$r12,0
1c008424:	4c000180 	jirl	$r0,$r12,0
1c008428:	57d467ff 	bl	-11164(0xfffd464) # 1c00588c <OLED_CLS>
1c00842c:	1c000068 	pcaddu12i	$r8,3(0x3)
1c008430:	0295c108 	addi.w	$r8,$r8,1392(0x570)
1c008434:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008438:	02814006 	addi.w	$r6,$r0,80(0x50)
1c00843c:	00150005 	move	$r5,$r0
1c008440:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c008444:	57d827ff 	bl	-10204(0xfffd824) # 1c005c68 <OLED_DrawBMP>
1c008448:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c00844c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008450:	00150004 	move	$r4,$r0
1c008454:	57d697ff 	bl	-10604(0xfffd694) # 1c005ae8 <OLED_ShowCN>
1c008458:	02802006 	addi.w	$r6,$r0,8(0x8)
1c00845c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008460:	02804004 	addi.w	$r4,$r0,16(0x10)
1c008464:	57d687ff 	bl	-10620(0xfffd684) # 1c005ae8 <OLED_ShowCN>
1c008468:	02803406 	addi.w	$r6,$r0,13(0xd)
1c00846c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008470:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c008474:	57d677ff 	bl	-10636(0xfffd674) # 1c005ae8 <OLED_ShowCN>
1c008478:	02803806 	addi.w	$r6,$r0,14(0xe)
1c00847c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008480:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c008484:	57d667ff 	bl	-10652(0xfffd664) # 1c005ae8 <OLED_ShowCN>
1c008488:	50080000 	b	2048(0x800) # 1c008c88 <interface_display+0x89c>
1c00848c:	57d403ff 	bl	-11264(0xfffd400) # 1c00588c <OLED_CLS>
1c008490:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c008494:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c008498:	00150005 	move	$r5,$r0
1c00849c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0084a0:	57d73fff 	bl	-10436(0xfffd73c) # 1c005bdc <OLED_ShowCN_STR>
1c0084a4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0084a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0084ac:	029aa0c6 	addi.w	$r6,$r6,1704(0x6a8)
1c0084b0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0084b4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0084b8:	57d403ff 	bl	-11264(0xfffd400) # 1c0058b8 <OLED_ShowStr>
1c0084bc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0084c0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0084c4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0084c8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0084cc:	57d713ff 	bl	-10480(0xfffd710) # 1c005bdc <OLED_ShowCN_STR>
1c0084d0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0084d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0084d8:	029a00c6 	addi.w	$r6,$r6,1664(0x680)
1c0084dc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0084e0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0084e4:	57d3d7ff 	bl	-11308(0xfffd3d4) # 1c0058b8 <OLED_ShowStr>
1c0084e8:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0084ec:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0084f0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0084f4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0084f8:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c005bdc <OLED_ShowCN_STR>
1c0084fc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008500:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008504:	029960c6 	addi.w	$r6,$r6,1624(0x658)
1c008508:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00850c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008510:	57d3abff 	bl	-11352(0xfffd3a8) # 1c0058b8 <OLED_ShowStr>
1c008514:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008518:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c00851c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008520:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008524:	57d6bbff 	bl	-10568(0xfffd6b8) # 1c005bdc <OLED_ShowCN_STR>
1c008528:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00852c:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c008530:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008534:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008538:	57d6a7ff 	bl	-10588(0xfffd6a4) # 1c005bdc <OLED_ShowCN_STR>
1c00853c:	50074c00 	b	1868(0x74c) # 1c008c88 <interface_display+0x89c>
1c008540:	57d34fff 	bl	-11444(0xfffd34c) # 1c00588c <OLED_CLS>
1c008544:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008548:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00854c:	00150005 	move	$r5,$r0
1c008550:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008554:	57d68bff 	bl	-10616(0xfffd688) # 1c005bdc <OLED_ShowCN_STR>
1c008558:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00855c:	02803406 	addi.w	$r6,$r0,13(0xd)
1c008560:	00150005 	move	$r5,$r0
1c008564:	02811804 	addi.w	$r4,$r0,70(0x46)
1c008568:	57d677ff 	bl	-10636(0xfffd674) # 1c005bdc <OLED_ShowCN_STR>
1c00856c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008570:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008574:	029780c6 	addi.w	$r6,$r6,1504(0x5e0)
1c008578:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00857c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008580:	57d33bff 	bl	-11464(0xfffd338) # 1c0058b8 <OLED_ShowStr>
1c008584:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008588:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00858c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008590:	57d55bff 	bl	-10920(0xfffd558) # 1c005ae8 <OLED_ShowCN>
1c008594:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008598:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00859c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0085a0:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0085a4:	57d63bff 	bl	-10696(0xfffd638) # 1c005bdc <OLED_ShowCN_STR>
1c0085a8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0085b0:	0296a0c6 	addi.w	$r6,$r6,1448(0x5a8)
1c0085b4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0085b8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0085bc:	57d2ffff 	bl	-11524(0xfffd2fc) # 1c0058b8 <OLED_ShowStr>
1c0085c0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085c4:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0085c8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0085cc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0085d0:	57d60fff 	bl	-10740(0xfffd60c) # 1c005bdc <OLED_ShowCN_STR>
1c0085d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085d8:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0085dc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0085e0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0085e4:	57d5fbff 	bl	-10760(0xfffd5f8) # 1c005bdc <OLED_ShowCN_STR>
1c0085e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085ec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0085f0:	0295b0c6 	addi.w	$r6,$r6,1388(0x56c)
1c0085f4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0085f8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0085fc:	57d2bfff 	bl	-11588(0xfffd2bc) # 1c0058b8 <OLED_ShowStr>
1c008600:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008604:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008608:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00860c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008610:	57d5cfff 	bl	-10804(0xfffd5cc) # 1c005bdc <OLED_ShowCN_STR>
1c008614:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008618:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00861c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008620:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008624:	57d5bbff 	bl	-10824(0xfffd5b8) # 1c005bdc <OLED_ShowCN_STR>
1c008628:	50066000 	b	1632(0x660) # 1c008c88 <interface_display+0x89c>
1c00862c:	57d263ff 	bl	-11680(0xfffd260) # 1c00588c <OLED_CLS>
1c008630:	02805806 	addi.w	$r6,$r0,22(0x16)
1c008634:	00150005 	move	$r5,$r0
1c008638:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00863c:	57d4afff 	bl	-11092(0xfffd4ac) # 1c005ae8 <OLED_ShowCN>
1c008640:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008644:	02808406 	addi.w	$r6,$r0,33(0x21)
1c008648:	00150005 	move	$r5,$r0
1c00864c:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c008650:	57d58fff 	bl	-10868(0xfffd58c) # 1c005bdc <OLED_ShowCN_STR>
1c008654:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008658:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00865c:	00150005 	move	$r5,$r0
1c008660:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c008664:	57d57bff 	bl	-10888(0xfffd578) # 1c005bdc <OLED_ShowCN_STR>
1c008668:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00866c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c008670:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008674:	00150004 	move	$r4,$r0
1c008678:	57d567ff 	bl	-10908(0xfffd564) # 1c005bdc <OLED_ShowCN_STR>
1c00867c:	50060c00 	b	1548(0x60c) # 1c008c88 <interface_display+0x89c>
1c008680:	57d20fff 	bl	-11764(0xfffd20c) # 1c00588c <OLED_CLS>
1c008684:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008688:	02805806 	addi.w	$r6,$r0,22(0x16)
1c00868c:	00150005 	move	$r5,$r0
1c008690:	02805004 	addi.w	$r4,$r0,20(0x14)
1c008694:	57d54bff 	bl	-10936(0xfffd548) # 1c005bdc <OLED_ShowCN_STR>
1c008698:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00869c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c0086a0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0086a4:	00150004 	move	$r4,$r0
1c0086a8:	57d537ff 	bl	-10956(0xfffd534) # 1c005bdc <OLED_ShowCN_STR>
1c0086ac:	5005dc00 	b	1500(0x5dc) # 1c008c88 <interface_display+0x89c>
1c0086b0:	57d1dfff 	bl	-11812(0xfffd1dc) # 1c00588c <OLED_CLS>
1c0086b4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0086b8:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c0086bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0086c0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0086c4:	57d51bff 	bl	-10984(0xfffd518) # 1c005bdc <OLED_ShowCN_STR>
1c0086c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0086cc:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c0086d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0086d4:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c0086d8:	57d507ff 	bl	-11004(0xfffd504) # 1c005bdc <OLED_ShowCN_STR>
1c0086dc:	5005ac00 	b	1452(0x5ac) # 1c008c88 <interface_display+0x89c>
1c0086e0:	57d1afff 	bl	-11860(0xfffd1ac) # 1c00588c <OLED_CLS>
1c0086e4:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0086e8:	02805806 	addi.w	$r6,$r0,22(0x16)
1c0086ec:	00150005 	move	$r5,$r0
1c0086f0:	00150004 	move	$r4,$r0
1c0086f4:	57d4ebff 	bl	-11032(0xfffd4e8) # 1c005bdc <OLED_ShowCN_STR>
1c0086f8:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0086fc:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008700:	00150005 	move	$r5,$r0
1c008704:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c008708:	57d4d7ff 	bl	-11052(0xfffd4d4) # 1c005bdc <OLED_ShowCN_STR>
1c00870c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008710:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008714:	00150005 	move	$r5,$r0
1c008718:	02818004 	addi.w	$r4,$r0,96(0x60)
1c00871c:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c005bdc <OLED_ShowCN_STR>
1c008720:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008724:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c008728:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00872c:	00150004 	move	$r4,$r0
1c008730:	57d4afff 	bl	-11092(0xfffd4ac) # 1c005bdc <OLED_ShowCN_STR>
1c008734:	50055400 	b	1364(0x554) # 1c008c88 <interface_display+0x89c>
1c008738:	57d157ff 	bl	-11948(0xfffd154) # 1c00588c <OLED_CLS>
1c00873c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c008740:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c008744:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008748:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00874c:	57d493ff 	bl	-11120(0xfffd490) # 1c005bdc <OLED_ShowCN_STR>
1c008750:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c008754:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008758:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c00875c:	57d38fff 	bl	-11380(0xfffd38c) # 1c005ae8 <OLED_ShowCN>
1c008760:	02808006 	addi.w	$r6,$r0,32(0x20)
1c008764:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008768:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c00876c:	57d37fff 	bl	-11396(0xfffd37c) # 1c005ae8 <OLED_ShowCN>
1c008770:	50051800 	b	1304(0x518) # 1c008c88 <interface_display+0x89c>
1c008774:	57d11bff 	bl	-12008(0xfffd118) # 1c00588c <OLED_CLS>
1c008778:	02801007 	addi.w	$r7,$r0,4(0x4)
1c00877c:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c008780:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008784:	02808004 	addi.w	$r4,$r0,32(0x20)
1c008788:	57d457ff 	bl	-11180(0xfffd454) # 1c005bdc <OLED_ShowCN_STR>
1c00878c:	5004fc00 	b	1276(0x4fc) # 1c008c88 <interface_display+0x89c>
1c008790:	57d0ffff 	bl	-12036(0xfffd0fc) # 1c00588c <OLED_CLS>
1c008794:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008798:	00150005 	move	$r5,$r0
1c00879c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0087a0:	57d34bff 	bl	-11448(0xfffd348) # 1c005ae8 <OLED_ShowCN>
1c0087a4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087a8:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0087ac:	00150005 	move	$r5,$r0
1c0087b0:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0087b4:	57d42bff 	bl	-11224(0xfffd428) # 1c005bdc <OLED_ShowCN_STR>
1c0087b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0087c0:	028e50c6 	addi.w	$r6,$r6,916(0x394)
1c0087c4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087c8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0087cc:	57d0efff 	bl	-12052(0xfffd0ec) # 1c0058b8 <OLED_ShowStr>
1c0087d0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087d4:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0087d8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087dc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0087e0:	57d3ffff 	bl	-11268(0xfffd3fc) # 1c005bdc <OLED_ShowCN_STR>
1c0087e4:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0087e8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087ec:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0087f0:	57d2fbff 	bl	-11528(0xfffd2f8) # 1c005ae8 <OLED_ShowCN>
1c0087f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0087fc:	028d70c6 	addi.w	$r6,$r6,860(0x35c)
1c008800:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008804:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008808:	57d0b3ff 	bl	-12112(0xfffd0b0) # 1c0058b8 <OLED_ShowStr>
1c00880c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008810:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008814:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008818:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00881c:	57d3c3ff 	bl	-11328(0xfffd3c0) # 1c005bdc <OLED_ShowCN_STR>
1c008820:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008824:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008828:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00882c:	57d2bfff 	bl	-11588(0xfffd2bc) # 1c005ae8 <OLED_ShowCN>
1c008830:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008834:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008838:	02816004 	addi.w	$r4,$r0,88(0x58)
1c00883c:	57d2afff 	bl	-11604(0xfffd2ac) # 1c005ae8 <OLED_ShowCN>
1c008840:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008844:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008848:	028c50c6 	addi.w	$r6,$r6,788(0x314)
1c00884c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008850:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008854:	57d067ff 	bl	-12188(0xfffd064) # 1c0058b8 <OLED_ShowStr>
1c008858:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00885c:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008860:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008864:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008868:	57d377ff 	bl	-11404(0xfffd374) # 1c005bdc <OLED_ShowCN_STR>
1c00886c:	50041c00 	b	1052(0x41c) # 1c008c88 <interface_display+0x89c>
1c008870:	57d01fff 	bl	-12260(0xfffd01c) # 1c00588c <OLED_CLS>
1c008874:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008878:	02802406 	addi.w	$r6,$r0,9(0x9)
1c00887c:	00150005 	move	$r5,$r0
1c008880:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008884:	57d35bff 	bl	-11432(0xfffd358) # 1c005bdc <OLED_ShowCN_STR>
1c008888:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00888c:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008890:	00150005 	move	$r5,$r0
1c008894:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008898:	57d347ff 	bl	-11452(0xfffd344) # 1c005bdc <OLED_ShowCN_STR>
1c00889c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088a0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0088a4:	028ac0c6 	addi.w	$r6,$r6,688(0x2b0)
1c0088a8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0088ac:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0088b0:	57d00bff 	bl	-12280(0xfffd008) # 1c0058b8 <OLED_ShowStr>
1c0088b4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088b8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0088bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0088c0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0088c4:	57d31bff 	bl	-11496(0xfffd318) # 1c005bdc <OLED_ShowCN_STR>
1c0088c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088cc:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0088d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0088d4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0088d8:	57d307ff 	bl	-11516(0xfffd304) # 1c005bdc <OLED_ShowCN_STR>
1c0088dc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0088e4:	0289d0c6 	addi.w	$r6,$r6,628(0x274)
1c0088e8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0088ec:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0088f0:	57cfcbff 	bl	-12344(0xfffcfc8) # 1c0058b8 <OLED_ShowStr>
1c0088f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088f8:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0088fc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008900:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008904:	57d2dbff 	bl	-11560(0xfffd2d8) # 1c005bdc <OLED_ShowCN_STR>
1c008908:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00890c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008910:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008914:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008918:	57d2c7ff 	bl	-11580(0xfffd2c4) # 1c005bdc <OLED_ShowCN_STR>
1c00891c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008920:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008924:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c008928:	57d1c3ff 	bl	-11840(0xfffd1c0) # 1c005ae8 <OLED_ShowCN>
1c00892c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008930:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008934:	0288a0c6 	addi.w	$r6,$r6,552(0x228)
1c008938:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00893c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008940:	57cf7bff 	bl	-12424(0xfffcf78) # 1c0058b8 <OLED_ShowStr>
1c008944:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008948:	02809806 	addi.w	$r6,$r0,38(0x26)
1c00894c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008950:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008954:	57d28bff 	bl	-11640(0xfffd288) # 1c005bdc <OLED_ShowCN_STR>
1c008958:	50033000 	b	816(0x330) # 1c008c88 <interface_display+0x89c>
1c00895c:	57cf33ff 	bl	-12496(0xfffcf30) # 1c00588c <OLED_CLS>
1c008960:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008964:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008968:	00150005 	move	$r5,$r0
1c00896c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008970:	57d26fff 	bl	-11668(0xfffd26c) # 1c005bdc <OLED_ShowCN_STR>
1c008974:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008978:	00150005 	move	$r5,$r0
1c00897c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008980:	57d16bff 	bl	-11928(0xfffd168) # 1c005ae8 <OLED_ShowCN>
1c008984:	50030400 	b	772(0x304) # 1c008c88 <interface_display+0x89c>
1c008988:	57cf07ff 	bl	-12540(0xfffcf04) # 1c00588c <OLED_CLS>
1c00898c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008990:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008994:	00150005 	move	$r5,$r0
1c008998:	02809004 	addi.w	$r4,$r0,36(0x24)
1c00899c:	57d243ff 	bl	-11712(0xfffd240) # 1c005bdc <OLED_ShowCN_STR>
1c0089a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089a4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0089a8:	00150005 	move	$r5,$r0
1c0089ac:	02811004 	addi.w	$r4,$r0,68(0x44)
1c0089b0:	57d22fff 	bl	-11732(0xfffd22c) # 1c005bdc <OLED_ShowCN_STR>
1c0089b4:	5002d400 	b	724(0x2d4) # 1c008c88 <interface_display+0x89c>
1c0089b8:	57ced7ff 	bl	-12588(0xfffced4) # 1c00588c <OLED_CLS>
1c0089bc:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c0089c0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089c4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0089c8:	57d123ff 	bl	-12000(0xfffd120) # 1c005ae8 <OLED_ShowCN>
1c0089cc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089d0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0089d4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089d8:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0089dc:	57d203ff 	bl	-11776(0xfffd200) # 1c005bdc <OLED_ShowCN_STR>
1c0089e0:	5002a800 	b	680(0x2a8) # 1c008c88 <interface_display+0x89c>
1c0089e4:	57ceabff 	bl	-12632(0xfffcea8) # 1c00588c <OLED_CLS>
1c0089e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089ec:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0089f0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089f4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0089f8:	57d1e7ff 	bl	-11804(0xfffd1e4) # 1c005bdc <OLED_ShowCN_STR>
1c0089fc:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c008a00:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a04:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c008a08:	57d0e3ff 	bl	-12064(0xfffd0e0) # 1c005ae8 <OLED_ShowCN>
1c008a0c:	02808006 	addi.w	$r6,$r0,32(0x20)
1c008a10:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a14:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c008a18:	57d0d3ff 	bl	-12080(0xfffd0d0) # 1c005ae8 <OLED_ShowCN>
1c008a1c:	50026c00 	b	620(0x26c) # 1c008c88 <interface_display+0x89c>
1c008a20:	57ce6fff 	bl	-12692(0xfffce6c) # 1c00588c <OLED_CLS>
1c008a24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a28:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008a2c:	00150005 	move	$r5,$r0
1c008a30:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c008a34:	57d1abff 	bl	-11864(0xfffd1a8) # 1c005bdc <OLED_ShowCN_STR>
1c008a38:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008a3c:	00150005 	move	$r5,$r0
1c008a40:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c008a44:	57d0a7ff 	bl	-12124(0xfffd0a4) # 1c005ae8 <OLED_ShowCN>
1c008a48:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008a4c:	00150005 	move	$r5,$r0
1c008a50:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c008a54:	57d097ff 	bl	-12140(0xfffd094) # 1c005ae8 <OLED_ShowCN>
1c008a58:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008a5c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008a60:	00150004 	move	$r4,$r0
1c008a64:	57d087ff 	bl	-12156(0xfffd084) # 1c005ae8 <OLED_ShowCN>
1c008a68:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008a6c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008a70:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008a74:	57d077ff 	bl	-12172(0xfffd074) # 1c005ae8 <OLED_ShowCN>
1c008a78:	50021000 	b	528(0x210) # 1c008c88 <interface_display+0x89c>
1c008a7c:	57ce13ff 	bl	-12784(0xfffce10) # 1c00588c <OLED_CLS>
1c008a80:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a84:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008a88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a8c:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008a90:	57d14fff 	bl	-11956(0xfffd14c) # 1c005bdc <OLED_ShowCN_STR>
1c008a94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a98:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008a9c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008aa0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008aa4:	57d13bff 	bl	-11976(0xfffd138) # 1c005bdc <OLED_ShowCN_STR>
1c008aa8:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008aac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008ab0:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008ab4:	57d037ff 	bl	-12236(0xfffd034) # 1c005ae8 <OLED_ShowCN>
1c008ab8:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008abc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008ac0:	00150004 	move	$r4,$r0
1c008ac4:	57d027ff 	bl	-12252(0xfffd024) # 1c005ae8 <OLED_ShowCN>
1c008ac8:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008acc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008ad0:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008ad4:	57d017ff 	bl	-12268(0xfffd014) # 1c005ae8 <OLED_ShowCN>
1c008ad8:	5001b000 	b	432(0x1b0) # 1c008c88 <interface_display+0x89c>
1c008adc:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c00588c <OLED_CLS>
1c008ae0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008ae4:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008ae8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008aec:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008af0:	57d0efff 	bl	-12052(0xfffd0ec) # 1c005bdc <OLED_ShowCN_STR>
1c008af4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008af8:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c008afc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b00:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008b04:	57d0dbff 	bl	-12072(0xfffd0d8) # 1c005bdc <OLED_ShowCN_STR>
1c008b08:	50018000 	b	384(0x180) # 1c008c88 <interface_display+0x89c>
1c008b0c:	57cd83ff 	bl	-12928(0xfffcd80) # 1c00588c <OLED_CLS>
1c008b10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b14:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008b18:	00150005 	move	$r5,$r0
1c008b1c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008b20:	57d0bfff 	bl	-12100(0xfffd0bc) # 1c005bdc <OLED_ShowCN_STR>
1c008b24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b28:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008b2c:	00150005 	move	$r5,$r0
1c008b30:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008b34:	57d0abff 	bl	-12120(0xfffd0a8) # 1c005bdc <OLED_ShowCN_STR>
1c008b38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b3c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008b40:	028050c6 	addi.w	$r6,$r6,20(0x14)
1c008b44:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b48:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008b4c:	57cd6fff 	bl	-12948(0xfffcd6c) # 1c0058b8 <OLED_ShowStr>
1c008b50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b54:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008b58:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b5c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008b60:	57d07fff 	bl	-12164(0xfffd07c) # 1c005bdc <OLED_ShowCN_STR>
1c008b64:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b68:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008b6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b70:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008b74:	57d06bff 	bl	-12184(0xfffd068) # 1c005bdc <OLED_ShowCN_STR>
1c008b78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b7c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008b80:	02bf60c6 	addi.w	$r6,$r6,-40(0xfd8)
1c008b84:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008b88:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008b8c:	57cd2fff 	bl	-13012(0xfffcd2c) # 1c0058b8 <OLED_ShowStr>
1c008b90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b94:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008b98:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008b9c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008ba0:	57d03fff 	bl	-12228(0xfffd03c) # 1c005bdc <OLED_ShowCN_STR>
1c008ba4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008ba8:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008bac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008bb0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008bb4:	57d02bff 	bl	-12248(0xfffd028) # 1c005bdc <OLED_ShowCN_STR>
1c008bb8:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008bbc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008bc0:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c008bc4:	57cf27ff 	bl	-12508(0xfffcf24) # 1c005ae8 <OLED_ShowCN>
1c008bc8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bcc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008bd0:	02be30c6 	addi.w	$r6,$r6,-116(0xf8c)
1c008bd4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008bd8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008bdc:	57ccdfff 	bl	-13092(0xfffccdc) # 1c0058b8 <OLED_ShowStr>
1c008be0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008be4:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008be8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008bec:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008bf0:	57cfefff 	bl	-12308(0xfffcfec) # 1c005bdc <OLED_ShowCN_STR>
1c008bf4:	50009400 	b	148(0x94) # 1c008c88 <interface_display+0x89c>
1c008bf8:	57cc97ff 	bl	-13164(0xfffcc94) # 1c00588c <OLED_CLS>
1c008bfc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c00:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008c04:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c08:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008c0c:	57cfd3ff 	bl	-12336(0xfffcfd0) # 1c005bdc <OLED_ShowCN_STR>
1c008c10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c14:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008c18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c1c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008c20:	57cfbfff 	bl	-12356(0xfffcfbc) # 1c005bdc <OLED_ShowCN_STR>
1c008c24:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008c28:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c2c:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008c30:	57cebbff 	bl	-12616(0xfffceb8) # 1c005ae8 <OLED_ShowCN>
1c008c34:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008c38:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008c3c:	00150004 	move	$r4,$r0
1c008c40:	57ceabff 	bl	-12632(0xfffcea8) # 1c005ae8 <OLED_ShowCN>
1c008c44:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008c48:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008c4c:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008c50:	57ce9bff 	bl	-12648(0xfffce98) # 1c005ae8 <OLED_ShowCN>
1c008c54:	50003400 	b	52(0x34) # 1c008c88 <interface_display+0x89c>
1c008c58:	57cc37ff 	bl	-13260(0xfffcc34) # 1c00588c <OLED_CLS>
1c008c5c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c60:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008c64:	00150005 	move	$r5,$r0
1c008c68:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008c6c:	57cf73ff 	bl	-12432(0xfffcf70) # 1c005bdc <OLED_ShowCN_STR>
1c008c70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c74:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008c78:	00150005 	move	$r5,$r0
1c008c7c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008c80:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c005bdc <OLED_ShowCN_STR>
1c008c84:	03400000 	andi	$r0,$r0,0x0
1c008c88:	03400000 	andi	$r0,$r0,0x0
1c008c8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008c90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008c94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008c98:	4c000020 	jirl	$r0,$r1,0

1c008c9c <Write_ID>:
Write_ID():
1c008c9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008ca0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008ca4:	29806076 	st.w	$r22,$r3,24(0x18)
1c008ca8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008cac:	57e6b3ff 	bl	-6480(0xfffe6b0) # 1c00735c <Return_Card>
1c008cb0:	0015008c 	move	$r12,$r4
1c008cb4:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c008cb8:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008cbc:	4001f180 	beqz	$r12,496(0x1f0) # 1c008eac <Write_ID+0x210>
1c008cc0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008cc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008cc8:	50004400 	b	68(0x44) # 1c008d0c <Write_ID+0x70>
1c008ccc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008cd0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008cd4:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008cd8:	02b6c1ad 	addi.w	$r13,$r13,-592(0xdb0)
1c008cdc:	0040898c 	slli.w	$r12,$r12,0x2
1c008ce0:	001031ac 	add.w	$r12,$r13,$r12
1c008ce4:	2880018d 	ld.w	$r13,$r12,0
1c008ce8:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c008cec:	02b671ce 	addi.w	$r14,$r14,-612(0xd9c)
1c008cf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008cf4:	0040898c 	slli.w	$r12,$r12,0x2
1c008cf8:	001031cc 	add.w	$r12,$r14,$r12
1c008cfc:	2980018d 	st.w	$r13,$r12,0
1c008d00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d04:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008d08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d10:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c008ccc <Write_ID+0x30>
1c008d14:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c008d18:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008d1c:	02b5b18c 	addi.w	$r12,$r12,-660(0xd6c)
1c008d20:	2980018d 	st.w	$r13,$r12,0
1c008d24:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008d28:	02804008 	addi.w	$r8,$r0,16(0x10)
1c008d2c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008d30:	00150186 	move	$r6,$r12
1c008d34:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008d38:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c008d3c:	57d1ebff 	bl	-11800(0xfffd1e8) # 1c005f24 <OLED_ShowNum>
1c008d40:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c008d44:	03bf918c 	ori	$r12,$r12,0xfe4
1c008d48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008d4c:	50008400 	b	132(0x84) # 1c008dd0 <Write_ID+0x134>
1c008d50:	03400000 	andi	$r0,$r0,0x0
1c008d54:	03400000 	andi	$r0,$r0,0x0
1c008d58:	03400000 	andi	$r0,$r0,0x0
1c008d5c:	03400000 	andi	$r0,$r0,0x0
1c008d60:	03400000 	andi	$r0,$r0,0x0
1c008d64:	03400000 	andi	$r0,$r0,0x0
1c008d68:	03400000 	andi	$r0,$r0,0x0
1c008d6c:	03400000 	andi	$r0,$r0,0x0
1c008d70:	03400000 	andi	$r0,$r0,0x0
1c008d74:	03400000 	andi	$r0,$r0,0x0
1c008d78:	03400000 	andi	$r0,$r0,0x0
1c008d7c:	03400000 	andi	$r0,$r0,0x0
1c008d80:	03400000 	andi	$r0,$r0,0x0
1c008d84:	03400000 	andi	$r0,$r0,0x0
1c008d88:	03400000 	andi	$r0,$r0,0x0
1c008d8c:	03400000 	andi	$r0,$r0,0x0
1c008d90:	03400000 	andi	$r0,$r0,0x0
1c008d94:	03400000 	andi	$r0,$r0,0x0
1c008d98:	03400000 	andi	$r0,$r0,0x0
1c008d9c:	03400000 	andi	$r0,$r0,0x0
1c008da0:	03400000 	andi	$r0,$r0,0x0
1c008da4:	03400000 	andi	$r0,$r0,0x0
1c008da8:	03400000 	andi	$r0,$r0,0x0
1c008dac:	03400000 	andi	$r0,$r0,0x0
1c008db0:	03400000 	andi	$r0,$r0,0x0
1c008db4:	03400000 	andi	$r0,$r0,0x0
1c008db8:	03400000 	andi	$r0,$r0,0x0
1c008dbc:	03400000 	andi	$r0,$r0,0x0
1c008dc0:	03400000 	andi	$r0,$r0,0x0
1c008dc4:	03400000 	andi	$r0,$r0,0x0
1c008dc8:	03400000 	andi	$r0,$r0,0x0
1c008dcc:	03400000 	andi	$r0,$r0,0x0
1c008dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c008dd4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008dd8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c008ddc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008d50 <Write_ID+0xb4>
1c008de0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c008de4:	57f60bff 	bl	-2552(0xffff608) # 1c0083ec <interface_display>
1c008de8:	57c34bff 	bl	-15544(0xfffc348) # 1c005130 <Buzzer>
1c008dec:	1400182c 	lu12i.w	$r12,193(0xc1)
1c008df0:	03b2d58c 	ori	$r12,$r12,0xcb5
1c008df4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008df8:	50008400 	b	132(0x84) # 1c008e7c <Write_ID+0x1e0>
1c008dfc:	03400000 	andi	$r0,$r0,0x0
1c008e00:	03400000 	andi	$r0,$r0,0x0
1c008e04:	03400000 	andi	$r0,$r0,0x0
1c008e08:	03400000 	andi	$r0,$r0,0x0
1c008e0c:	03400000 	andi	$r0,$r0,0x0
1c008e10:	03400000 	andi	$r0,$r0,0x0
1c008e14:	03400000 	andi	$r0,$r0,0x0
1c008e18:	03400000 	andi	$r0,$r0,0x0
1c008e1c:	03400000 	andi	$r0,$r0,0x0
1c008e20:	03400000 	andi	$r0,$r0,0x0
1c008e24:	03400000 	andi	$r0,$r0,0x0
1c008e28:	03400000 	andi	$r0,$r0,0x0
1c008e2c:	03400000 	andi	$r0,$r0,0x0
1c008e30:	03400000 	andi	$r0,$r0,0x0
1c008e34:	03400000 	andi	$r0,$r0,0x0
1c008e38:	03400000 	andi	$r0,$r0,0x0
1c008e3c:	03400000 	andi	$r0,$r0,0x0
1c008e40:	03400000 	andi	$r0,$r0,0x0
1c008e44:	03400000 	andi	$r0,$r0,0x0
1c008e48:	03400000 	andi	$r0,$r0,0x0
1c008e4c:	03400000 	andi	$r0,$r0,0x0
1c008e50:	03400000 	andi	$r0,$r0,0x0
1c008e54:	03400000 	andi	$r0,$r0,0x0
1c008e58:	03400000 	andi	$r0,$r0,0x0
1c008e5c:	03400000 	andi	$r0,$r0,0x0
1c008e60:	03400000 	andi	$r0,$r0,0x0
1c008e64:	03400000 	andi	$r0,$r0,0x0
1c008e68:	03400000 	andi	$r0,$r0,0x0
1c008e6c:	03400000 	andi	$r0,$r0,0x0
1c008e70:	03400000 	andi	$r0,$r0,0x0
1c008e74:	03400000 	andi	$r0,$r0,0x0
1c008e78:	03400000 	andi	$r0,$r0,0x0
1c008e7c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008e80:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008e84:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c008e88:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008dfc <Write_ID+0x160>
1c008e8c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008e90:	02b0358c 	addi.w	$r12,$r12,-1011(0xc0d)
1c008e94:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008e98:	2900018d 	st.b	$r13,$r12,0
1c008e9c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008ea0:	02aff18c 	addi.w	$r12,$r12,-1028(0xbfc)
1c008ea4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008ea8:	2900018d 	st.b	$r13,$r12,0
1c008eac:	03400000 	andi	$r0,$r0,0x0
1c008eb0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008eb4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008eb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008ebc:	4c000020 	jirl	$r0,$r1,0

1c008ec0 <Delate_ID>:
Delate_ID():
1c008ec0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008ec4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008ec8:	29806076 	st.w	$r22,$r3,24(0x18)
1c008ecc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008ed0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008ed4:	50002800 	b	40(0x28) # 1c008efc <Delate_ID+0x3c>
1c008ed8:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008edc:	02aeb1ad 	addi.w	$r13,$r13,-1108(0xbac)
1c008ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008ee4:	0040898c 	slli.w	$r12,$r12,0x2
1c008ee8:	001031ac 	add.w	$r12,$r13,$r12
1c008eec:	29800180 	st.w	$r0,$r12,0
1c008ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008ef4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008ef8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008efc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008f00:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008f04:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c008ed8 <Delate_ID+0x18>
1c008f08:	57c22bff 	bl	-15832(0xfffc228) # 1c005130 <Buzzer>
1c008f0c:	1400182c 	lu12i.w	$r12,193(0xc1)
1c008f10:	03b2d58c 	ori	$r12,$r12,0xcb5
1c008f14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008f18:	50008400 	b	132(0x84) # 1c008f9c <Delate_ID+0xdc>
1c008f1c:	03400000 	andi	$r0,$r0,0x0
1c008f20:	03400000 	andi	$r0,$r0,0x0
1c008f24:	03400000 	andi	$r0,$r0,0x0
1c008f28:	03400000 	andi	$r0,$r0,0x0
1c008f2c:	03400000 	andi	$r0,$r0,0x0
1c008f30:	03400000 	andi	$r0,$r0,0x0
1c008f34:	03400000 	andi	$r0,$r0,0x0
1c008f38:	03400000 	andi	$r0,$r0,0x0
1c008f3c:	03400000 	andi	$r0,$r0,0x0
1c008f40:	03400000 	andi	$r0,$r0,0x0
1c008f44:	03400000 	andi	$r0,$r0,0x0
1c008f48:	03400000 	andi	$r0,$r0,0x0
1c008f4c:	03400000 	andi	$r0,$r0,0x0
1c008f50:	03400000 	andi	$r0,$r0,0x0
1c008f54:	03400000 	andi	$r0,$r0,0x0
1c008f58:	03400000 	andi	$r0,$r0,0x0
1c008f5c:	03400000 	andi	$r0,$r0,0x0
1c008f60:	03400000 	andi	$r0,$r0,0x0
1c008f64:	03400000 	andi	$r0,$r0,0x0
1c008f68:	03400000 	andi	$r0,$r0,0x0
1c008f6c:	03400000 	andi	$r0,$r0,0x0
1c008f70:	03400000 	andi	$r0,$r0,0x0
1c008f74:	03400000 	andi	$r0,$r0,0x0
1c008f78:	03400000 	andi	$r0,$r0,0x0
1c008f7c:	03400000 	andi	$r0,$r0,0x0
1c008f80:	03400000 	andi	$r0,$r0,0x0
1c008f84:	03400000 	andi	$r0,$r0,0x0
1c008f88:	03400000 	andi	$r0,$r0,0x0
1c008f8c:	03400000 	andi	$r0,$r0,0x0
1c008f90:	03400000 	andi	$r0,$r0,0x0
1c008f94:	03400000 	andi	$r0,$r0,0x0
1c008f98:	03400000 	andi	$r0,$r0,0x0
1c008f9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c008fa0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008fa4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c008fa8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008f1c <Delate_ID+0x5c>
1c008fac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008fb0:	02abb58c 	addi.w	$r12,$r12,-1299(0xaed)
1c008fb4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008fb8:	2900018d 	st.b	$r13,$r12,0
1c008fbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008fc0:	02ab718c 	addi.w	$r12,$r12,-1316(0xadc)
1c008fc4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008fc8:	2900018d 	st.b	$r13,$r12,0
1c008fcc:	03400000 	andi	$r0,$r0,0x0
1c008fd0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008fd4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008fd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008fdc:	4c000020 	jirl	$r0,$r1,0

1c008fe0 <Read_ID>:
Read_ID():
1c008fe0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c008fe4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c008fe8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c008fec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c008ff0:	57e36fff 	bl	-7316(0xfffe36c) # 1c00735c <Return_Card>
1c008ff4:	0015008c 	move	$r12,$r4
1c008ff8:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c008ffc:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c009000:	40027180 	beqz	$r12,624(0x270) # 1c009270 <Read_ID+0x290>
1c009004:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c009008:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00900c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009010:	6802618d 	bltu	$r12,$r13,608(0x260) # 1c009270 <Read_ID+0x290>
1c009014:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c009018:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c00901c:	02a9b1ce 	addi.w	$r14,$r14,-1428(0xa6c)
1c009020:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009024:	0040898c 	slli.w	$r12,$r12,0x2
1c009028:	001031cc 	add.w	$r12,$r14,$r12
1c00902c:	2880018c 	ld.w	$r12,$r12,0
1c009030:	5c0189ac 	bne	$r13,$r12,392(0x188) # 1c0091b8 <Read_ID+0x1d8>
1c009034:	02802004 	addi.w	$r4,$r0,8(0x8)
1c009038:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c0083ec <interface_display>
1c00903c:	57a6cbff 	bl	-22840(0xfffa6c8) # 1c003704 <SG90_Open>
1c009040:	57c327ff 	bl	-15580(0xfffc324) # 1c005364 <Buzzer_one>
1c009044:	1400472c 	lu12i.w	$r12,569(0x239)
1c009048:	03bee58c 	ori	$r12,$r12,0xfb9
1c00904c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009050:	50008400 	b	132(0x84) # 1c0090d4 <Read_ID+0xf4>
1c009054:	03400000 	andi	$r0,$r0,0x0
1c009058:	03400000 	andi	$r0,$r0,0x0
1c00905c:	03400000 	andi	$r0,$r0,0x0
1c009060:	03400000 	andi	$r0,$r0,0x0
1c009064:	03400000 	andi	$r0,$r0,0x0
1c009068:	03400000 	andi	$r0,$r0,0x0
1c00906c:	03400000 	andi	$r0,$r0,0x0
1c009070:	03400000 	andi	$r0,$r0,0x0
1c009074:	03400000 	andi	$r0,$r0,0x0
1c009078:	03400000 	andi	$r0,$r0,0x0
1c00907c:	03400000 	andi	$r0,$r0,0x0
1c009080:	03400000 	andi	$r0,$r0,0x0
1c009084:	03400000 	andi	$r0,$r0,0x0
1c009088:	03400000 	andi	$r0,$r0,0x0
1c00908c:	03400000 	andi	$r0,$r0,0x0
1c009090:	03400000 	andi	$r0,$r0,0x0
1c009094:	03400000 	andi	$r0,$r0,0x0
1c009098:	03400000 	andi	$r0,$r0,0x0
1c00909c:	03400000 	andi	$r0,$r0,0x0
1c0090a0:	03400000 	andi	$r0,$r0,0x0
1c0090a4:	03400000 	andi	$r0,$r0,0x0
1c0090a8:	03400000 	andi	$r0,$r0,0x0
1c0090ac:	03400000 	andi	$r0,$r0,0x0
1c0090b0:	03400000 	andi	$r0,$r0,0x0
1c0090b4:	03400000 	andi	$r0,$r0,0x0
1c0090b8:	03400000 	andi	$r0,$r0,0x0
1c0090bc:	03400000 	andi	$r0,$r0,0x0
1c0090c0:	03400000 	andi	$r0,$r0,0x0
1c0090c4:	03400000 	andi	$r0,$r0,0x0
1c0090c8:	03400000 	andi	$r0,$r0,0x0
1c0090cc:	03400000 	andi	$r0,$r0,0x0
1c0090d0:	03400000 	andi	$r0,$r0,0x0
1c0090d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0090d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0090dc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0090e0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009054 <Read_ID+0x74>
1c0090e4:	57c283ff 	bl	-15744(0xfffc280) # 1c005364 <Buzzer_one>
1c0090e8:	57a64bff 	bl	-22968(0xfffa648) # 1c003730 <SG90_Close>
1c0090ec:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0090f0:	57f2ffff 	bl	-3332(0xffff2fc) # 1c0083ec <interface_display>
1c0090f4:	1400472c 	lu12i.w	$r12,569(0x239)
1c0090f8:	03bee58c 	ori	$r12,$r12,0xfb9
1c0090fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009100:	50008400 	b	132(0x84) # 1c009184 <Read_ID+0x1a4>
1c009104:	03400000 	andi	$r0,$r0,0x0
1c009108:	03400000 	andi	$r0,$r0,0x0
1c00910c:	03400000 	andi	$r0,$r0,0x0
1c009110:	03400000 	andi	$r0,$r0,0x0
1c009114:	03400000 	andi	$r0,$r0,0x0
1c009118:	03400000 	andi	$r0,$r0,0x0
1c00911c:	03400000 	andi	$r0,$r0,0x0
1c009120:	03400000 	andi	$r0,$r0,0x0
1c009124:	03400000 	andi	$r0,$r0,0x0
1c009128:	03400000 	andi	$r0,$r0,0x0
1c00912c:	03400000 	andi	$r0,$r0,0x0
1c009130:	03400000 	andi	$r0,$r0,0x0
1c009134:	03400000 	andi	$r0,$r0,0x0
1c009138:	03400000 	andi	$r0,$r0,0x0
1c00913c:	03400000 	andi	$r0,$r0,0x0
1c009140:	03400000 	andi	$r0,$r0,0x0
1c009144:	03400000 	andi	$r0,$r0,0x0
1c009148:	03400000 	andi	$r0,$r0,0x0
1c00914c:	03400000 	andi	$r0,$r0,0x0
1c009150:	03400000 	andi	$r0,$r0,0x0
1c009154:	03400000 	andi	$r0,$r0,0x0
1c009158:	03400000 	andi	$r0,$r0,0x0
1c00915c:	03400000 	andi	$r0,$r0,0x0
1c009160:	03400000 	andi	$r0,$r0,0x0
1c009164:	03400000 	andi	$r0,$r0,0x0
1c009168:	03400000 	andi	$r0,$r0,0x0
1c00916c:	03400000 	andi	$r0,$r0,0x0
1c009170:	03400000 	andi	$r0,$r0,0x0
1c009174:	03400000 	andi	$r0,$r0,0x0
1c009178:	03400000 	andi	$r0,$r0,0x0
1c00917c:	03400000 	andi	$r0,$r0,0x0
1c009180:	03400000 	andi	$r0,$r0,0x0
1c009184:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009188:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00918c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c009190:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009104 <Read_ID+0x124>
1c009194:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009198:	02a4118c 	addi.w	$r12,$r12,-1788(0x904)
1c00919c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0091a0:	2900018d 	st.b	$r13,$r12,0
1c0091a4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0091a8:	02a3d58c 	addi.w	$r12,$r12,-1803(0x8f5)
1c0091ac:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0091b0:	2900018d 	st.b	$r13,$r12,0
1c0091b4:	5000bc00 	b	188(0xbc) # 1c009270 <Read_ID+0x290>
1c0091b8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0091bc:	57f233ff 	bl	-3536(0xffff230) # 1c0083ec <interface_display>
1c0091c0:	57bf73ff 	bl	-16528(0xfffbf70) # 1c005130 <Buzzer>
1c0091c4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0091c8:	03bf918c 	ori	$r12,$r12,0xfe4
1c0091cc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0091d0:	50008400 	b	132(0x84) # 1c009254 <Read_ID+0x274>
1c0091d4:	03400000 	andi	$r0,$r0,0x0
1c0091d8:	03400000 	andi	$r0,$r0,0x0
1c0091dc:	03400000 	andi	$r0,$r0,0x0
1c0091e0:	03400000 	andi	$r0,$r0,0x0
1c0091e4:	03400000 	andi	$r0,$r0,0x0
1c0091e8:	03400000 	andi	$r0,$r0,0x0
1c0091ec:	03400000 	andi	$r0,$r0,0x0
1c0091f0:	03400000 	andi	$r0,$r0,0x0
1c0091f4:	03400000 	andi	$r0,$r0,0x0
1c0091f8:	03400000 	andi	$r0,$r0,0x0
1c0091fc:	03400000 	andi	$r0,$r0,0x0
1c009200:	03400000 	andi	$r0,$r0,0x0
1c009204:	03400000 	andi	$r0,$r0,0x0
1c009208:	03400000 	andi	$r0,$r0,0x0
1c00920c:	03400000 	andi	$r0,$r0,0x0
1c009210:	03400000 	andi	$r0,$r0,0x0
1c009214:	03400000 	andi	$r0,$r0,0x0
1c009218:	03400000 	andi	$r0,$r0,0x0
1c00921c:	03400000 	andi	$r0,$r0,0x0
1c009220:	03400000 	andi	$r0,$r0,0x0
1c009224:	03400000 	andi	$r0,$r0,0x0
1c009228:	03400000 	andi	$r0,$r0,0x0
1c00922c:	03400000 	andi	$r0,$r0,0x0
1c009230:	03400000 	andi	$r0,$r0,0x0
1c009234:	03400000 	andi	$r0,$r0,0x0
1c009238:	03400000 	andi	$r0,$r0,0x0
1c00923c:	03400000 	andi	$r0,$r0,0x0
1c009240:	03400000 	andi	$r0,$r0,0x0
1c009244:	03400000 	andi	$r0,$r0,0x0
1c009248:	03400000 	andi	$r0,$r0,0x0
1c00924c:	03400000 	andi	$r0,$r0,0x0
1c009250:	03400000 	andi	$r0,$r0,0x0
1c009254:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009258:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00925c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009260:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0091d4 <Read_ID+0x1f4>
1c009264:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009268:	57f187ff 	bl	-3708(0xffff184) # 1c0083ec <interface_display>
1c00926c:	03400000 	andi	$r0,$r0,0x0
1c009270:	03400000 	andi	$r0,$r0,0x0
1c009274:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009278:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00927c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009280:	4c000020 	jirl	$r0,$r1,0

1c009284 <Key_main>:
Key_main():
1c009284:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c009288:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00928c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c009290:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009294:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c009298:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00929c:	0283458c 	addi.w	$r12,$r12,209(0xd1)
1c0092a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0092a4:	40058180 	beqz	$r12,1408(0x580) # 1c009824 <Key_main+0x5a0>
1c0092a8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0092ac:	0283058c 	addi.w	$r12,$r12,193(0xc1)
1c0092b0:	2a00018d 	ld.bu	$r13,$r12,0
1c0092b4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0092b8:	6802218d 	bltu	$r12,$r13,544(0x220) # 1c0094d8 <Key_main+0x254>
1c0092bc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092c0:	28b5318c 	ld.w	$r12,$r12,-692(0xd4c)
1c0092c4:	2880018d 	ld.w	$r13,$r12,0
1c0092c8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0092cc:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c00934c <Key_main+0xc8>
1c0092d0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092d4:	28b5218c 	ld.w	$r12,$r12,-696(0xd48)
1c0092d8:	2880018d 	ld.w	$r13,$r12,0
1c0092dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0092e0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0092e4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092e8:	28b4d18c 	ld.w	$r12,$r12,-716(0xd34)
1c0092ec:	2980018d 	st.w	$r13,$r12,0
1c0092f0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0092f4:	0281e58c 	addi.w	$r12,$r12,121(0x79)
1c0092f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0092fc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009300:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009304:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00930c <Key_main+0x88>
1c009308:	002a0007 	break	0x7
1c00930c:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c009310:	0015018d 	move	$r13,$r12
1c009314:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009318:	28b4118c 	ld.w	$r12,$r12,-764(0xd04)
1c00931c:	2880018c 	ld.w	$r12,$r12,0
1c009320:	001031ad 	add.w	$r13,$r13,$r12
1c009324:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009328:	28b3d18c 	ld.w	$r12,$r12,-780(0xcf4)
1c00932c:	2980018d 	st.w	$r13,$r12,0
1c009330:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009334:	28b3618c 	ld.w	$r12,$r12,-808(0xcd8)
1c009338:	2880018c 	ld.w	$r12,$r12,0
1c00933c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c009340:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009344:	28b3218c 	ld.w	$r12,$r12,-824(0xcc8)
1c009348:	2980018d 	st.w	$r13,$r12,0
1c00934c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009350:	28b3318c 	ld.w	$r12,$r12,-820(0xccc)
1c009354:	2880018c 	ld.w	$r12,$r12,0
1c009358:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00935c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009360:	28b2b18c 	ld.w	$r12,$r12,-852(0xcac)
1c009364:	2880018c 	ld.w	$r12,$r12,0
1c009368:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00936c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009370:	50006400 	b	100(0x64) # 1c0093d4 <Key_main+0x150>
1c009374:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c009378:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00937c:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c009380:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009388 <Key_main+0x104>
1c009384:	002a0007 	break	0x7
1c009388:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00938c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c009390:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009394:	002135cc 	div.wu	$r12,$r14,$r13
1c009398:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0093a0 <Key_main+0x11c>
1c00939c:	002a0007 	break	0x7
1c0093a0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0093a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0093a8:	00408d8c 	slli.w	$r12,$r12,0x3
1c0093ac:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0093b0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0093b4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0093b8:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c0093bc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0093c0:	00150184 	move	$r4,$r12
1c0093c4:	57cb63ff 	bl	-13472(0xfffcb60) # 1c005f24 <OLED_ShowNum>
1c0093c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0093cc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0093d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0093d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0093d8:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c009374 <Key_main+0xf0>
1c0093dc:	140002cc 	lu12i.w	$r12,22(0x16)
1c0093e0:	03b3298c 	ori	$r12,$r12,0xcca
1c0093e4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0093e8:	50008400 	b	132(0x84) # 1c00946c <Key_main+0x1e8>
1c0093ec:	03400000 	andi	$r0,$r0,0x0
1c0093f0:	03400000 	andi	$r0,$r0,0x0
1c0093f4:	03400000 	andi	$r0,$r0,0x0
1c0093f8:	03400000 	andi	$r0,$r0,0x0
1c0093fc:	03400000 	andi	$r0,$r0,0x0
1c009400:	03400000 	andi	$r0,$r0,0x0
1c009404:	03400000 	andi	$r0,$r0,0x0
1c009408:	03400000 	andi	$r0,$r0,0x0
1c00940c:	03400000 	andi	$r0,$r0,0x0
1c009410:	03400000 	andi	$r0,$r0,0x0
1c009414:	03400000 	andi	$r0,$r0,0x0
1c009418:	03400000 	andi	$r0,$r0,0x0
1c00941c:	03400000 	andi	$r0,$r0,0x0
1c009420:	03400000 	andi	$r0,$r0,0x0
1c009424:	03400000 	andi	$r0,$r0,0x0
1c009428:	03400000 	andi	$r0,$r0,0x0
1c00942c:	03400000 	andi	$r0,$r0,0x0
1c009430:	03400000 	andi	$r0,$r0,0x0
1c009434:	03400000 	andi	$r0,$r0,0x0
1c009438:	03400000 	andi	$r0,$r0,0x0
1c00943c:	03400000 	andi	$r0,$r0,0x0
1c009440:	03400000 	andi	$r0,$r0,0x0
1c009444:	03400000 	andi	$r0,$r0,0x0
1c009448:	03400000 	andi	$r0,$r0,0x0
1c00944c:	03400000 	andi	$r0,$r0,0x0
1c009450:	03400000 	andi	$r0,$r0,0x0
1c009454:	03400000 	andi	$r0,$r0,0x0
1c009458:	03400000 	andi	$r0,$r0,0x0
1c00945c:	03400000 	andi	$r0,$r0,0x0
1c009460:	03400000 	andi	$r0,$r0,0x0
1c009464:	03400000 	andi	$r0,$r0,0x0
1c009468:	03400000 	andi	$r0,$r0,0x0
1c00946c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c009470:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009474:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009478:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0093ec <Key_main+0x168>
1c00947c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009480:	50004400 	b	68(0x44) # 1c0094c4 <Key_main+0x240>
1c009484:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009488:	28ae118c 	ld.w	$r12,$r12,-1148(0xb84)
1c00948c:	2880018d 	ld.w	$r13,$r12,0
1c009490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009494:	001131ac 	sub.w	$r12,$r13,$r12
1c009498:	00408d8c 	slli.w	$r12,$r12,0x3
1c00949c:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c0094a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0094a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0094a8:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c0094ac:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0094b0:	00150184 	move	$r4,$r12
1c0094b4:	57c407ff 	bl	-15356(0xfffc404) # 1c0058b8 <OLED_ShowStr>
1c0094b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0094c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0094c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0094c8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094cc:	28ad018c 	ld.w	$r12,$r12,-1216(0xb40)
1c0094d0:	2880018c 	ld.w	$r12,$r12,0
1c0094d4:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c009484 <Key_main+0x200>
1c0094d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0094dc:	50004400 	b	68(0x44) # 1c009520 <Key_main+0x29c>
1c0094e0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c0094e4:	029641ad 	addi.w	$r13,$r13,1424(0x590)
1c0094e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094ec:	0040898c 	slli.w	$r12,$r12,0x2
1c0094f0:	001031ac 	add.w	$r12,$r13,$r12
1c0094f4:	2880018d 	ld.w	$r13,$r12,0
1c0094f8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094fc:	28ac818c 	ld.w	$r12,$r12,-1248(0xb20)
1c009500:	2880018c 	ld.w	$r12,$r12,0
1c009504:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c009514 <Key_main+0x290>
1c009508:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00950c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009510:	50001c00 	b	28(0x1c) # 1c00952c <Key_main+0x2a8>
1c009514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009518:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00951c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009520:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009524:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009528:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c0094e0 <Key_main+0x25c>
1c00952c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009530:	02b8f58c 	addi.w	$r12,$r12,-451(0xe3d)
1c009534:	2a00018d 	ld.bu	$r13,$r12,0
1c009538:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00953c:	5c0279ac 	bne	$r13,$r12,632(0x278) # 1c0097b4 <Key_main+0x530>
1c009540:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009544:	4001a180 	beqz	$r12,416(0x1a0) # 1c0096e4 <Key_main+0x460>
1c009548:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00954c:	57eea3ff 	bl	-4448(0xfffeea0) # 1c0083ec <interface_display>
1c009550:	57a1b7ff 	bl	-24140(0xfffa1b4) # 1c003704 <SG90_Open>
1c009554:	57be13ff 	bl	-16880(0xfffbe10) # 1c005364 <Buzzer_one>
1c009558:	1400472c 	lu12i.w	$r12,569(0x239)
1c00955c:	03bee58c 	ori	$r12,$r12,0xfb9
1c009560:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c009564:	50008400 	b	132(0x84) # 1c0095e8 <Key_main+0x364>
1c009568:	03400000 	andi	$r0,$r0,0x0
1c00956c:	03400000 	andi	$r0,$r0,0x0
1c009570:	03400000 	andi	$r0,$r0,0x0
1c009574:	03400000 	andi	$r0,$r0,0x0
1c009578:	03400000 	andi	$r0,$r0,0x0
1c00957c:	03400000 	andi	$r0,$r0,0x0
1c009580:	03400000 	andi	$r0,$r0,0x0
1c009584:	03400000 	andi	$r0,$r0,0x0
1c009588:	03400000 	andi	$r0,$r0,0x0
1c00958c:	03400000 	andi	$r0,$r0,0x0
1c009590:	03400000 	andi	$r0,$r0,0x0
1c009594:	03400000 	andi	$r0,$r0,0x0
1c009598:	03400000 	andi	$r0,$r0,0x0
1c00959c:	03400000 	andi	$r0,$r0,0x0
1c0095a0:	03400000 	andi	$r0,$r0,0x0
1c0095a4:	03400000 	andi	$r0,$r0,0x0
1c0095a8:	03400000 	andi	$r0,$r0,0x0
1c0095ac:	03400000 	andi	$r0,$r0,0x0
1c0095b0:	03400000 	andi	$r0,$r0,0x0
1c0095b4:	03400000 	andi	$r0,$r0,0x0
1c0095b8:	03400000 	andi	$r0,$r0,0x0
1c0095bc:	03400000 	andi	$r0,$r0,0x0
1c0095c0:	03400000 	andi	$r0,$r0,0x0
1c0095c4:	03400000 	andi	$r0,$r0,0x0
1c0095c8:	03400000 	andi	$r0,$r0,0x0
1c0095cc:	03400000 	andi	$r0,$r0,0x0
1c0095d0:	03400000 	andi	$r0,$r0,0x0
1c0095d4:	03400000 	andi	$r0,$r0,0x0
1c0095d8:	03400000 	andi	$r0,$r0,0x0
1c0095dc:	03400000 	andi	$r0,$r0,0x0
1c0095e0:	03400000 	andi	$r0,$r0,0x0
1c0095e4:	03400000 	andi	$r0,$r0,0x0
1c0095e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0095ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0095f0:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0095f4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009568 <Key_main+0x2e4>
1c0095f8:	57bd6fff 	bl	-17044(0xfffbd6c) # 1c005364 <Buzzer_one>
1c0095fc:	57a137ff 	bl	-24268(0xfffa134) # 1c003730 <SG90_Close>
1c009600:	02802404 	addi.w	$r4,$r0,9(0x9)
1c009604:	57edebff 	bl	-4632(0xfffede8) # 1c0083ec <interface_display>
1c009608:	1400472c 	lu12i.w	$r12,569(0x239)
1c00960c:	03bee58c 	ori	$r12,$r12,0xfb9
1c009610:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c009614:	50008400 	b	132(0x84) # 1c009698 <Key_main+0x414>
1c009618:	03400000 	andi	$r0,$r0,0x0
1c00961c:	03400000 	andi	$r0,$r0,0x0
1c009620:	03400000 	andi	$r0,$r0,0x0
1c009624:	03400000 	andi	$r0,$r0,0x0
1c009628:	03400000 	andi	$r0,$r0,0x0
1c00962c:	03400000 	andi	$r0,$r0,0x0
1c009630:	03400000 	andi	$r0,$r0,0x0
1c009634:	03400000 	andi	$r0,$r0,0x0
1c009638:	03400000 	andi	$r0,$r0,0x0
1c00963c:	03400000 	andi	$r0,$r0,0x0
1c009640:	03400000 	andi	$r0,$r0,0x0
1c009644:	03400000 	andi	$r0,$r0,0x0
1c009648:	03400000 	andi	$r0,$r0,0x0
1c00964c:	03400000 	andi	$r0,$r0,0x0
1c009650:	03400000 	andi	$r0,$r0,0x0
1c009654:	03400000 	andi	$r0,$r0,0x0
1c009658:	03400000 	andi	$r0,$r0,0x0
1c00965c:	03400000 	andi	$r0,$r0,0x0
1c009660:	03400000 	andi	$r0,$r0,0x0
1c009664:	03400000 	andi	$r0,$r0,0x0
1c009668:	03400000 	andi	$r0,$r0,0x0
1c00966c:	03400000 	andi	$r0,$r0,0x0
1c009670:	03400000 	andi	$r0,$r0,0x0
1c009674:	03400000 	andi	$r0,$r0,0x0
1c009678:	03400000 	andi	$r0,$r0,0x0
1c00967c:	03400000 	andi	$r0,$r0,0x0
1c009680:	03400000 	andi	$r0,$r0,0x0
1c009684:	03400000 	andi	$r0,$r0,0x0
1c009688:	03400000 	andi	$r0,$r0,0x0
1c00968c:	03400000 	andi	$r0,$r0,0x0
1c009690:	03400000 	andi	$r0,$r0,0x0
1c009694:	03400000 	andi	$r0,$r0,0x0
1c009698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00969c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0096a0:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c0096a4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009618 <Key_main+0x394>
1c0096a8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0096ac:	028fc18c 	addi.w	$r12,$r12,1008(0x3f0)
1c0096b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0096b4:	2900018d 	st.b	$r13,$r12,0
1c0096b8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0096bc:	028f858c 	addi.w	$r12,$r12,993(0x3e1)
1c0096c0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0096c4:	2900018d 	st.b	$r13,$r12,0
1c0096c8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0096cc:	28a5418c 	ld.w	$r12,$r12,-1712(0x950)
1c0096d0:	29800180 	st.w	$r0,$r12,0
1c0096d4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0096d8:	28a4d18c 	ld.w	$r12,$r12,-1740(0x934)
1c0096dc:	29800180 	st.w	$r0,$r12,0
1c0096e0:	5000d400 	b	212(0xd4) # 1c0097b4 <Key_main+0x530>
1c0096e4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0096e8:	57ed07ff 	bl	-4860(0xfffed04) # 1c0083ec <interface_display>
1c0096ec:	57ba47ff 	bl	-17852(0xfffba44) # 1c005130 <Buzzer>
1c0096f0:	57a043ff 	bl	-24512(0xfffa040) # 1c003730 <SG90_Close>
1c0096f4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0096f8:	03bf918c 	ori	$r12,$r12,0xfe4
1c0096fc:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c009700:	50008400 	b	132(0x84) # 1c009784 <Key_main+0x500>
1c009704:	03400000 	andi	$r0,$r0,0x0
1c009708:	03400000 	andi	$r0,$r0,0x0
1c00970c:	03400000 	andi	$r0,$r0,0x0
1c009710:	03400000 	andi	$r0,$r0,0x0
1c009714:	03400000 	andi	$r0,$r0,0x0
1c009718:	03400000 	andi	$r0,$r0,0x0
1c00971c:	03400000 	andi	$r0,$r0,0x0
1c009720:	03400000 	andi	$r0,$r0,0x0
1c009724:	03400000 	andi	$r0,$r0,0x0
1c009728:	03400000 	andi	$r0,$r0,0x0
1c00972c:	03400000 	andi	$r0,$r0,0x0
1c009730:	03400000 	andi	$r0,$r0,0x0
1c009734:	03400000 	andi	$r0,$r0,0x0
1c009738:	03400000 	andi	$r0,$r0,0x0
1c00973c:	03400000 	andi	$r0,$r0,0x0
1c009740:	03400000 	andi	$r0,$r0,0x0
1c009744:	03400000 	andi	$r0,$r0,0x0
1c009748:	03400000 	andi	$r0,$r0,0x0
1c00974c:	03400000 	andi	$r0,$r0,0x0
1c009750:	03400000 	andi	$r0,$r0,0x0
1c009754:	03400000 	andi	$r0,$r0,0x0
1c009758:	03400000 	andi	$r0,$r0,0x0
1c00975c:	03400000 	andi	$r0,$r0,0x0
1c009760:	03400000 	andi	$r0,$r0,0x0
1c009764:	03400000 	andi	$r0,$r0,0x0
1c009768:	03400000 	andi	$r0,$r0,0x0
1c00976c:	03400000 	andi	$r0,$r0,0x0
1c009770:	03400000 	andi	$r0,$r0,0x0
1c009774:	03400000 	andi	$r0,$r0,0x0
1c009778:	03400000 	andi	$r0,$r0,0x0
1c00977c:	03400000 	andi	$r0,$r0,0x0
1c009780:	03400000 	andi	$r0,$r0,0x0
1c009784:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c009788:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00978c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c009790:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009704 <Key_main+0x480>
1c009794:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009798:	28a2118c 	ld.w	$r12,$r12,-1916(0x884)
1c00979c:	29800180 	st.w	$r0,$r12,0
1c0097a0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0097a4:	28a1a18c 	ld.w	$r12,$r12,-1944(0x868)
1c0097a8:	29800180 	st.w	$r0,$r12,0
1c0097ac:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0097b0:	57ec3fff 	bl	-5060(0xfffec3c) # 1c0083ec <interface_display>
1c0097b4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0097b8:	02aed58c 	addi.w	$r12,$r12,-1099(0xbb5)
1c0097bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0097c0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0097c4:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009824 <Key_main+0x5a0>
1c0097c8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0097cc:	28a1418c 	ld.w	$r12,$r12,-1968(0x850)
1c0097d0:	29800180 	st.w	$r0,$r12,0
1c0097d4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0097d8:	28a0d18c 	ld.w	$r12,$r12,-1996(0x834)
1c0097dc:	29800180 	st.w	$r0,$r12,0
1c0097e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0097e4:	50003400 	b	52(0x34) # 1c009818 <Key_main+0x594>
1c0097e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0097ec:	00408d8c 	slli.w	$r12,$r12,0x3
1c0097f0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0097f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0097f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0097fc:	028da0c6 	addi.w	$r6,$r6,872(0x368)
1c009800:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009804:	00150184 	move	$r4,$r12
1c009808:	57c0b3ff 	bl	-16208(0xfffc0b0) # 1c0058b8 <OLED_ShowStr>
1c00980c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009810:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009814:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009818:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00981c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009820:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0097e8 <Key_main+0x564>
1c009824:	03400000 	andi	$r0,$r0,0x0
1c009828:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00982c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c009830:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009834:	4c000020 	jirl	$r0,$r1,0

1c009838 <Key>:
Key():
1c009838:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00983c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c009840:	2980a076 	st.w	$r22,$r3,40(0x28)
1c009844:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009848:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00984c:	02ac858c 	addi.w	$r12,$r12,-1247(0xb21)
1c009850:	2a00018c 	ld.bu	$r12,$r12,0
1c009854:	40044580 	beqz	$r12,1092(0x444) # 1c009c98 <Key+0x460>
1c009858:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00985c:	02ac458c 	addi.w	$r12,$r12,-1263(0xb11)
1c009860:	2a00018d 	ld.bu	$r13,$r12,0
1c009864:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009868:	6801cd8d 	bltu	$r12,$r13,460(0x1cc) # 1c009a34 <Key+0x1fc>
1c00986c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009870:	289e718c 	ld.w	$r12,$r12,1948(0x79c)
1c009874:	2880018d 	ld.w	$r13,$r12,0
1c009878:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00987c:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c0098fc <Key+0xc4>
1c009880:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009884:	289e618c 	ld.w	$r12,$r12,1944(0x798)
1c009888:	2880018d 	ld.w	$r13,$r12,0
1c00988c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009890:	001c31ad 	mul.w	$r13,$r13,$r12
1c009894:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009898:	289e118c 	ld.w	$r12,$r12,1924(0x784)
1c00989c:	2980018d 	st.w	$r13,$r12,0
1c0098a0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098a4:	02ab258c 	addi.w	$r12,$r12,-1335(0xac9)
1c0098a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0098ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0098b0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0098b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0098bc <Key+0x84>
1c0098b8:	002a0007 	break	0x7
1c0098bc:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0098c0:	0015018d 	move	$r13,$r12
1c0098c4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098c8:	289d518c 	ld.w	$r12,$r12,1876(0x754)
1c0098cc:	2880018c 	ld.w	$r12,$r12,0
1c0098d0:	001031ad 	add.w	$r13,$r13,$r12
1c0098d4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098d8:	289d118c 	ld.w	$r12,$r12,1860(0x744)
1c0098dc:	2980018d 	st.w	$r13,$r12,0
1c0098e0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098e4:	289ca18c 	ld.w	$r12,$r12,1832(0x728)
1c0098e8:	2880018c 	ld.w	$r12,$r12,0
1c0098ec:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0098f0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098f4:	289c618c 	ld.w	$r12,$r12,1816(0x718)
1c0098f8:	2980018d 	st.w	$r13,$r12,0
1c0098fc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009900:	289c718c 	ld.w	$r12,$r12,1820(0x71c)
1c009904:	2880018c 	ld.w	$r12,$r12,0
1c009908:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00990c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009910:	289bf18c 	ld.w	$r12,$r12,1788(0x6fc)
1c009914:	2880018c 	ld.w	$r12,$r12,0
1c009918:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00991c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009920:	50006c00 	b	108(0x6c) # 1c00998c <Key+0x154>
1c009924:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009928:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00992c:	0020b5cc 	mod.w	$r12,$r14,$r13
1c009930:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009938 <Key+0x100>
1c009934:	002a0007 	break	0x7
1c009938:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c00993c:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009940:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009944:	002035cc 	div.w	$r12,$r14,$r13
1c009948:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009950 <Key+0x118>
1c00994c:	002a0007 	break	0x7
1c009950:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009958:	00408d8c 	slli.w	$r12,$r12,0x3
1c00995c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009960:	0015018d 	move	$r13,$r12
1c009964:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c009968:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00996c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009970:	00150186 	move	$r6,$r12
1c009974:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009978:	001501a4 	move	$r4,$r13
1c00997c:	57c5abff 	bl	-14936(0xfffc5a8) # 1c005f24 <OLED_ShowNum>
1c009980:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009984:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009988:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00998c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009990:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c009924 <Key+0xec>
1c009994:	140005ac 	lu12i.w	$r12,45(0x2d)
1c009998:	03a6518c 	ori	$r12,$r12,0x994
1c00999c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0099a0:	50008400 	b	132(0x84) # 1c009a24 <Key+0x1ec>
1c0099a4:	03400000 	andi	$r0,$r0,0x0
1c0099a8:	03400000 	andi	$r0,$r0,0x0
1c0099ac:	03400000 	andi	$r0,$r0,0x0
1c0099b0:	03400000 	andi	$r0,$r0,0x0
1c0099b4:	03400000 	andi	$r0,$r0,0x0
1c0099b8:	03400000 	andi	$r0,$r0,0x0
1c0099bc:	03400000 	andi	$r0,$r0,0x0
1c0099c0:	03400000 	andi	$r0,$r0,0x0
1c0099c4:	03400000 	andi	$r0,$r0,0x0
1c0099c8:	03400000 	andi	$r0,$r0,0x0
1c0099cc:	03400000 	andi	$r0,$r0,0x0
1c0099d0:	03400000 	andi	$r0,$r0,0x0
1c0099d4:	03400000 	andi	$r0,$r0,0x0
1c0099d8:	03400000 	andi	$r0,$r0,0x0
1c0099dc:	03400000 	andi	$r0,$r0,0x0
1c0099e0:	03400000 	andi	$r0,$r0,0x0
1c0099e4:	03400000 	andi	$r0,$r0,0x0
1c0099e8:	03400000 	andi	$r0,$r0,0x0
1c0099ec:	03400000 	andi	$r0,$r0,0x0
1c0099f0:	03400000 	andi	$r0,$r0,0x0
1c0099f4:	03400000 	andi	$r0,$r0,0x0
1c0099f8:	03400000 	andi	$r0,$r0,0x0
1c0099fc:	03400000 	andi	$r0,$r0,0x0
1c009a00:	03400000 	andi	$r0,$r0,0x0
1c009a04:	03400000 	andi	$r0,$r0,0x0
1c009a08:	03400000 	andi	$r0,$r0,0x0
1c009a0c:	03400000 	andi	$r0,$r0,0x0
1c009a10:	03400000 	andi	$r0,$r0,0x0
1c009a14:	03400000 	andi	$r0,$r0,0x0
1c009a18:	03400000 	andi	$r0,$r0,0x0
1c009a1c:	03400000 	andi	$r0,$r0,0x0
1c009a20:	03400000 	andi	$r0,$r0,0x0
1c009a24:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009a28:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009a2c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009a30:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0099a4 <Key+0x16c>
1c009a34:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009a38:	02a4d58c 	addi.w	$r12,$r12,-1739(0x935)
1c009a3c:	2a00018d 	ld.bu	$r13,$r12,0
1c009a40:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009a44:	5c01e5ac 	bne	$r13,$r12,484(0x1e4) # 1c009c28 <Key+0x3f0>
1c009a48:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009a4c:	2897418c 	ld.w	$r12,$r12,1488(0x5d0)
1c009a50:	2880018d 	ld.w	$r13,$r12,0
1c009a54:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c009a58:	5c00e9ac 	bne	$r13,$r12,232(0xe8) # 1c009b40 <Key+0x308>
1c009a5c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c009a60:	57e98fff 	bl	-5748(0xfffe98c) # 1c0083ec <interface_display>
1c009a64:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009a68:	0280d58c 	addi.w	$r12,$r12,53(0x35)
1c009a6c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c009a70:	2900018d 	st.b	$r13,$r12,0
1c009a74:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009a78:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c009a7c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c009a80:	2900018d 	st.b	$r13,$r12,0
1c009a84:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009a88:	03bf918c 	ori	$r12,$r12,0xfe4
1c009a8c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c009a90:	50008400 	b	132(0x84) # 1c009b14 <Key+0x2dc>
1c009a94:	03400000 	andi	$r0,$r0,0x0
1c009a98:	03400000 	andi	$r0,$r0,0x0
1c009a9c:	03400000 	andi	$r0,$r0,0x0
1c009aa0:	03400000 	andi	$r0,$r0,0x0
1c009aa4:	03400000 	andi	$r0,$r0,0x0
1c009aa8:	03400000 	andi	$r0,$r0,0x0
1c009aac:	03400000 	andi	$r0,$r0,0x0
1c009ab0:	03400000 	andi	$r0,$r0,0x0
1c009ab4:	03400000 	andi	$r0,$r0,0x0
1c009ab8:	03400000 	andi	$r0,$r0,0x0
1c009abc:	03400000 	andi	$r0,$r0,0x0
1c009ac0:	03400000 	andi	$r0,$r0,0x0
1c009ac4:	03400000 	andi	$r0,$r0,0x0
1c009ac8:	03400000 	andi	$r0,$r0,0x0
1c009acc:	03400000 	andi	$r0,$r0,0x0
1c009ad0:	03400000 	andi	$r0,$r0,0x0
1c009ad4:	03400000 	andi	$r0,$r0,0x0
1c009ad8:	03400000 	andi	$r0,$r0,0x0
1c009adc:	03400000 	andi	$r0,$r0,0x0
1c009ae0:	03400000 	andi	$r0,$r0,0x0
1c009ae4:	03400000 	andi	$r0,$r0,0x0
1c009ae8:	03400000 	andi	$r0,$r0,0x0
1c009aec:	03400000 	andi	$r0,$r0,0x0
1c009af0:	03400000 	andi	$r0,$r0,0x0
1c009af4:	03400000 	andi	$r0,$r0,0x0
1c009af8:	03400000 	andi	$r0,$r0,0x0
1c009afc:	03400000 	andi	$r0,$r0,0x0
1c009b00:	03400000 	andi	$r0,$r0,0x0
1c009b04:	03400000 	andi	$r0,$r0,0x0
1c009b08:	03400000 	andi	$r0,$r0,0x0
1c009b0c:	03400000 	andi	$r0,$r0,0x0
1c009b10:	03400000 	andi	$r0,$r0,0x0
1c009b14:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c009b18:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009b1c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009b20:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009a94 <Key+0x25c>
1c009b24:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b28:	2893d18c 	ld.w	$r12,$r12,1268(0x4f4)
1c009b2c:	29800180 	st.w	$r0,$r12,0
1c009b30:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b34:	2893618c 	ld.w	$r12,$r12,1240(0x4d8)
1c009b38:	29800180 	st.w	$r0,$r12,0
1c009b3c:	5000ec00 	b	236(0xec) # 1c009c28 <Key+0x3f0>
1c009b40:	57bd4fff 	bl	-17076(0xfffbd4c) # 1c00588c <OLED_CLS>
1c009b44:	02801804 	addi.w	$r4,$r0,6(0x6)
1c009b48:	57e8a7ff 	bl	-5980(0xfffe8a4) # 1c0083ec <interface_display>
1c009b4c:	57b5e7ff 	bl	-18972(0xfffb5e4) # 1c005130 <Buzzer>
1c009b50:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009b54:	03bf918c 	ori	$r12,$r12,0xfe4
1c009b58:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c009b5c:	50008400 	b	132(0x84) # 1c009be0 <Key+0x3a8>
1c009b60:	03400000 	andi	$r0,$r0,0x0
1c009b64:	03400000 	andi	$r0,$r0,0x0
1c009b68:	03400000 	andi	$r0,$r0,0x0
1c009b6c:	03400000 	andi	$r0,$r0,0x0
1c009b70:	03400000 	andi	$r0,$r0,0x0
1c009b74:	03400000 	andi	$r0,$r0,0x0
1c009b78:	03400000 	andi	$r0,$r0,0x0
1c009b7c:	03400000 	andi	$r0,$r0,0x0
1c009b80:	03400000 	andi	$r0,$r0,0x0
1c009b84:	03400000 	andi	$r0,$r0,0x0
1c009b88:	03400000 	andi	$r0,$r0,0x0
1c009b8c:	03400000 	andi	$r0,$r0,0x0
1c009b90:	03400000 	andi	$r0,$r0,0x0
1c009b94:	03400000 	andi	$r0,$r0,0x0
1c009b98:	03400000 	andi	$r0,$r0,0x0
1c009b9c:	03400000 	andi	$r0,$r0,0x0
1c009ba0:	03400000 	andi	$r0,$r0,0x0
1c009ba4:	03400000 	andi	$r0,$r0,0x0
1c009ba8:	03400000 	andi	$r0,$r0,0x0
1c009bac:	03400000 	andi	$r0,$r0,0x0
1c009bb0:	03400000 	andi	$r0,$r0,0x0
1c009bb4:	03400000 	andi	$r0,$r0,0x0
1c009bb8:	03400000 	andi	$r0,$r0,0x0
1c009bbc:	03400000 	andi	$r0,$r0,0x0
1c009bc0:	03400000 	andi	$r0,$r0,0x0
1c009bc4:	03400000 	andi	$r0,$r0,0x0
1c009bc8:	03400000 	andi	$r0,$r0,0x0
1c009bcc:	03400000 	andi	$r0,$r0,0x0
1c009bd0:	03400000 	andi	$r0,$r0,0x0
1c009bd4:	03400000 	andi	$r0,$r0,0x0
1c009bd8:	03400000 	andi	$r0,$r0,0x0
1c009bdc:	03400000 	andi	$r0,$r0,0x0
1c009be0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009be4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009be8:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c009bec:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009b60 <Key+0x328>
1c009bf0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009bf4:	02baa58c 	addi.w	$r12,$r12,-343(0xea9)
1c009bf8:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009bfc:	2900018d 	st.b	$r13,$r12,0
1c009c00:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009c04:	02ba618c 	addi.w	$r12,$r12,-360(0xe98)
1c009c08:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009c0c:	2900018d 	st.b	$r13,$r12,0
1c009c10:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c14:	2890218c 	ld.w	$r12,$r12,1032(0x408)
1c009c18:	29800180 	st.w	$r0,$r12,0
1c009c1c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c20:	288fb18c 	ld.w	$r12,$r12,1004(0x3ec)
1c009c24:	29800180 	st.w	$r0,$r12,0
1c009c28:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009c2c:	029d058c 	addi.w	$r12,$r12,1857(0x741)
1c009c30:	2a00018d 	ld.bu	$r13,$r12,0
1c009c34:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c009c38:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009c98 <Key+0x460>
1c009c3c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c40:	288f718c 	ld.w	$r12,$r12,988(0x3dc)
1c009c44:	29800180 	st.w	$r0,$r12,0
1c009c48:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c4c:	288f018c 	ld.w	$r12,$r12,960(0x3c0)
1c009c50:	29800180 	st.w	$r0,$r12,0
1c009c54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009c58:	50003400 	b	52(0x34) # 1c009c8c <Key+0x454>
1c009c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009c60:	00408d8c 	slli.w	$r12,$r12,0x3
1c009c64:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009c68:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009c6c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009c70:	02bbd0c6 	addi.w	$r6,$r6,-268(0xef4)
1c009c74:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009c78:	00150184 	move	$r4,$r12
1c009c7c:	57bc3fff 	bl	-17348(0xfffbc3c) # 1c0058b8 <OLED_ShowStr>
1c009c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009c84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009c88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009c8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009c90:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009c94:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009c5c <Key+0x424>
1c009c98:	03400000 	andi	$r0,$r0,0x0
1c009c9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009ca0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c009ca4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009ca8:	4c000020 	jirl	$r0,$r1,0

1c009cac <Add_Key>:
Add_Key():
1c009cac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009cb0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c009cb4:	29806076 	st.w	$r22,$r3,24(0x18)
1c009cb8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009cbc:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009cc0:	029ab58c 	addi.w	$r12,$r12,1709(0x6ad)
1c009cc4:	2a00018c 	ld.bu	$r12,$r12,0
1c009cc8:	40031580 	beqz	$r12,788(0x314) # 1c009fdc <Add_Key+0x330>
1c009ccc:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009cd0:	029a758c 	addi.w	$r12,$r12,1693(0x69d)
1c009cd4:	2a00018d 	ld.bu	$r13,$r12,0
1c009cd8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009cdc:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c009e08 <Add_Key+0x15c>
1c009ce0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009ce4:	288ca18c 	ld.w	$r12,$r12,808(0x328)
1c009ce8:	2880018d 	ld.w	$r13,$r12,0
1c009cec:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009cf0:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c009d70 <Add_Key+0xc4>
1c009cf4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cf8:	288c918c 	ld.w	$r12,$r12,804(0x324)
1c009cfc:	2880018d 	ld.w	$r13,$r12,0
1c009d00:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009d04:	001c31ad 	mul.w	$r13,$r13,$r12
1c009d08:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d0c:	288c418c 	ld.w	$r12,$r12,784(0x310)
1c009d10:	2980018d 	st.w	$r13,$r12,0
1c009d14:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009d18:	0299558c 	addi.w	$r12,$r12,1621(0x655)
1c009d1c:	2a00018d 	ld.bu	$r13,$r12,0
1c009d20:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009d24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009d28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009d30 <Add_Key+0x84>
1c009d2c:	002a0007 	break	0x7
1c009d30:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c009d34:	0015018d 	move	$r13,$r12
1c009d38:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d3c:	288b818c 	ld.w	$r12,$r12,736(0x2e0)
1c009d40:	2880018c 	ld.w	$r12,$r12,0
1c009d44:	001031ad 	add.w	$r13,$r13,$r12
1c009d48:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d4c:	288b418c 	ld.w	$r12,$r12,720(0x2d0)
1c009d50:	2980018d 	st.w	$r13,$r12,0
1c009d54:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d58:	288ad18c 	ld.w	$r12,$r12,692(0x2b4)
1c009d5c:	2880018c 	ld.w	$r12,$r12,0
1c009d60:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c009d64:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d68:	288a918c 	ld.w	$r12,$r12,676(0x2a4)
1c009d6c:	2980018d 	st.w	$r13,$r12,0
1c009d70:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d74:	288aa18c 	ld.w	$r12,$r12,680(0x2a8)
1c009d78:	2880018c 	ld.w	$r12,$r12,0
1c009d7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009d80:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d84:	288a218c 	ld.w	$r12,$r12,648(0x288)
1c009d88:	2880018c 	ld.w	$r12,$r12,0
1c009d8c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009d90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009d94:	50006c00 	b	108(0x6c) # 1c009e00 <Add_Key+0x154>
1c009d98:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009d9c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009da0:	0020b5cc 	mod.w	$r12,$r14,$r13
1c009da4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009dac <Add_Key+0x100>
1c009da8:	002a0007 	break	0x7
1c009dac:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c009db0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009db4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009db8:	002035cc 	div.w	$r12,$r14,$r13
1c009dbc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009dc4 <Add_Key+0x118>
1c009dc0:	002a0007 	break	0x7
1c009dc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009dcc:	00408d8c 	slli.w	$r12,$r12,0x3
1c009dd0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009dd4:	0015018d 	move	$r13,$r12
1c009dd8:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c009ddc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009de0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009de4:	00150186 	move	$r6,$r12
1c009de8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009dec:	001501a4 	move	$r4,$r13
1c009df0:	57c137ff 	bl	-16076(0xfffc134) # 1c005f24 <OLED_ShowNum>
1c009df4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009df8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009dfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009e00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e04:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c009d98 <Add_Key+0xec>
1c009e08:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009e0c:	0295858c 	addi.w	$r12,$r12,1377(0x561)
1c009e10:	2a00018d 	ld.bu	$r13,$r12,0
1c009e14:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009e18:	5c0155ac 	bne	$r13,$r12,340(0x154) # 1c009f6c <Add_Key+0x2c0>
1c009e1c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009e20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009e24:	50004400 	b	68(0x44) # 1c009e68 <Add_Key+0x1bc>
1c009e28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e2c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009e30:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c009e34:	02b101ad 	addi.w	$r13,$r13,-960(0xc40)
1c009e38:	0040898c 	slli.w	$r12,$r12,0x2
1c009e3c:	001031ac 	add.w	$r12,$r13,$r12
1c009e40:	2880018d 	ld.w	$r13,$r12,0
1c009e44:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c009e48:	02b0b1ce 	addi.w	$r14,$r14,-980(0xc2c)
1c009e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e50:	0040898c 	slli.w	$r12,$r12,0x2
1c009e54:	001031cc 	add.w	$r12,$r14,$r12
1c009e58:	2980018d 	st.w	$r13,$r12,0
1c009e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e60:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009e64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e6c:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c009e28 <Add_Key+0x17c>
1c009e70:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e74:	2886a18c 	ld.w	$r12,$r12,424(0x1a8)
1c009e78:	2880018d 	ld.w	$r13,$r12,0
1c009e7c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009e80:	02afd18c 	addi.w	$r12,$r12,-1036(0xbf4)
1c009e84:	2980018d 	st.w	$r13,$r12,0
1c009e88:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e8c:	2886418c 	ld.w	$r12,$r12,400(0x190)
1c009e90:	29800180 	st.w	$r0,$r12,0
1c009e94:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e98:	2885d18c 	ld.w	$r12,$r12,372(0x174)
1c009e9c:	29800180 	st.w	$r0,$r12,0
1c009ea0:	57b293ff 	bl	-19824(0xfffb290) # 1c005130 <Buzzer>
1c009ea4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c009ea8:	57e547ff 	bl	-6844(0xfffe544) # 1c0083ec <interface_display>
1c009eac:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009eb0:	03bf918c 	ori	$r12,$r12,0xfe4
1c009eb4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009eb8:	50008400 	b	132(0x84) # 1c009f3c <Add_Key+0x290>
1c009ebc:	03400000 	andi	$r0,$r0,0x0
1c009ec0:	03400000 	andi	$r0,$r0,0x0
1c009ec4:	03400000 	andi	$r0,$r0,0x0
1c009ec8:	03400000 	andi	$r0,$r0,0x0
1c009ecc:	03400000 	andi	$r0,$r0,0x0
1c009ed0:	03400000 	andi	$r0,$r0,0x0
1c009ed4:	03400000 	andi	$r0,$r0,0x0
1c009ed8:	03400000 	andi	$r0,$r0,0x0
1c009edc:	03400000 	andi	$r0,$r0,0x0
1c009ee0:	03400000 	andi	$r0,$r0,0x0
1c009ee4:	03400000 	andi	$r0,$r0,0x0
1c009ee8:	03400000 	andi	$r0,$r0,0x0
1c009eec:	03400000 	andi	$r0,$r0,0x0
1c009ef0:	03400000 	andi	$r0,$r0,0x0
1c009ef4:	03400000 	andi	$r0,$r0,0x0
1c009ef8:	03400000 	andi	$r0,$r0,0x0
1c009efc:	03400000 	andi	$r0,$r0,0x0
1c009f00:	03400000 	andi	$r0,$r0,0x0
1c009f04:	03400000 	andi	$r0,$r0,0x0
1c009f08:	03400000 	andi	$r0,$r0,0x0
1c009f0c:	03400000 	andi	$r0,$r0,0x0
1c009f10:	03400000 	andi	$r0,$r0,0x0
1c009f14:	03400000 	andi	$r0,$r0,0x0
1c009f18:	03400000 	andi	$r0,$r0,0x0
1c009f1c:	03400000 	andi	$r0,$r0,0x0
1c009f20:	03400000 	andi	$r0,$r0,0x0
1c009f24:	03400000 	andi	$r0,$r0,0x0
1c009f28:	03400000 	andi	$r0,$r0,0x0
1c009f2c:	03400000 	andi	$r0,$r0,0x0
1c009f30:	03400000 	andi	$r0,$r0,0x0
1c009f34:	03400000 	andi	$r0,$r0,0x0
1c009f38:	03400000 	andi	$r0,$r0,0x0
1c009f3c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009f40:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009f44:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009f48:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009ebc <Add_Key+0x210>
1c009f4c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009f50:	02ad358c 	addi.w	$r12,$r12,-1203(0xb4d)
1c009f54:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c009f58:	2900018d 	st.b	$r13,$r12,0
1c009f5c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009f60:	02acf18c 	addi.w	$r12,$r12,-1220(0xb3c)
1c009f64:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c009f68:	2900018d 	st.b	$r13,$r12,0
1c009f6c:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009f70:	028ff58c 	addi.w	$r12,$r12,1021(0x3fd)
1c009f74:	2a00018d 	ld.bu	$r13,$r12,0
1c009f78:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c009f7c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009fdc <Add_Key+0x330>
1c009f80:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f84:	2882618c 	ld.w	$r12,$r12,152(0x98)
1c009f88:	29800180 	st.w	$r0,$r12,0
1c009f8c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f90:	2881f18c 	ld.w	$r12,$r12,124(0x7c)
1c009f94:	29800180 	st.w	$r0,$r12,0
1c009f98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009f9c:	50003400 	b	52(0x34) # 1c009fd0 <Add_Key+0x324>
1c009fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009fa4:	00408d8c 	slli.w	$r12,$r12,0x3
1c009fa8:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009fac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009fb0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009fb4:	02aec0c6 	addi.w	$r6,$r6,-1104(0xbb0)
1c009fb8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009fbc:	00150184 	move	$r4,$r12
1c009fc0:	57b8fbff 	bl	-18184(0xfffb8f8) # 1c0058b8 <OLED_ShowStr>
1c009fc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009fc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009fcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009fd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009fd4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009fd8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009fa0 <Add_Key+0x2f4>
1c009fdc:	03400000 	andi	$r0,$r0,0x0
1c009fe0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c009fe4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c009fe8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c009fec:	4c000020 	jirl	$r0,$r1,0

1c009ff0 <Delete_key>:
Delete_key():
1c009ff0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009ff4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c009ff8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009ffc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00a000:	50002800 	b	40(0x28) # 1c00a028 <Delete_key+0x38>
1c00a004:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c00a008:	02a9b1ad 	addi.w	$r13,$r13,-1428(0xa6c)
1c00a00c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a010:	0040898c 	slli.w	$r12,$r12,0x2
1c00a014:	001031ac 	add.w	$r12,$r13,$r12
1c00a018:	29800180 	st.w	$r0,$r12,0
1c00a01c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a020:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00a024:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a028:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00a02c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00a030:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c00a004 <Delete_key+0x14>
1c00a034:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00a038:	03bf918c 	ori	$r12,$r12,0xfe4
1c00a03c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00a040:	50008400 	b	132(0x84) # 1c00a0c4 <Delete_key+0xd4>
1c00a044:	03400000 	andi	$r0,$r0,0x0
1c00a048:	03400000 	andi	$r0,$r0,0x0
1c00a04c:	03400000 	andi	$r0,$r0,0x0
1c00a050:	03400000 	andi	$r0,$r0,0x0
1c00a054:	03400000 	andi	$r0,$r0,0x0
1c00a058:	03400000 	andi	$r0,$r0,0x0
1c00a05c:	03400000 	andi	$r0,$r0,0x0
1c00a060:	03400000 	andi	$r0,$r0,0x0
1c00a064:	03400000 	andi	$r0,$r0,0x0
1c00a068:	03400000 	andi	$r0,$r0,0x0
1c00a06c:	03400000 	andi	$r0,$r0,0x0
1c00a070:	03400000 	andi	$r0,$r0,0x0
1c00a074:	03400000 	andi	$r0,$r0,0x0
1c00a078:	03400000 	andi	$r0,$r0,0x0
1c00a07c:	03400000 	andi	$r0,$r0,0x0
1c00a080:	03400000 	andi	$r0,$r0,0x0
1c00a084:	03400000 	andi	$r0,$r0,0x0
1c00a088:	03400000 	andi	$r0,$r0,0x0
1c00a08c:	03400000 	andi	$r0,$r0,0x0
1c00a090:	03400000 	andi	$r0,$r0,0x0
1c00a094:	03400000 	andi	$r0,$r0,0x0
1c00a098:	03400000 	andi	$r0,$r0,0x0
1c00a09c:	03400000 	andi	$r0,$r0,0x0
1c00a0a0:	03400000 	andi	$r0,$r0,0x0
1c00a0a4:	03400000 	andi	$r0,$r0,0x0
1c00a0a8:	03400000 	andi	$r0,$r0,0x0
1c00a0ac:	03400000 	andi	$r0,$r0,0x0
1c00a0b0:	03400000 	andi	$r0,$r0,0x0
1c00a0b4:	03400000 	andi	$r0,$r0,0x0
1c00a0b8:	03400000 	andi	$r0,$r0,0x0
1c00a0bc:	03400000 	andi	$r0,$r0,0x0
1c00a0c0:	03400000 	andi	$r0,$r0,0x0
1c00a0c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00a0c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00a0cc:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00a0d0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00a044 <Delete_key+0x54>
1c00a0d4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a0d8:	02a7158c 	addi.w	$r12,$r12,-1595(0x9c5)
1c00a0dc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a0e0:	2900018d 	st.b	$r13,$r12,0
1c00a0e4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a0e8:	02a6d18c 	addi.w	$r12,$r12,-1612(0x9b4)
1c00a0ec:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a0f0:	2900018d 	st.b	$r13,$r12,0
1c00a0f4:	03400000 	andi	$r0,$r0,0x0
1c00a0f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00a0fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a100:	4c000020 	jirl	$r0,$r1,0

1c00a104 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c00a104:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a108:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a10c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a110:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a114:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a118:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c00a11c:	02805005 	addi.w	$r5,$r0,20(0x14)
1c00a120:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a124:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c00a128:	57728fff 	bl	-36212(0xfff728c) # 1c0013b4 <myprintf>
1c00a12c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00a130:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a134:	03808184 	ori	$r4,$r12,0x20
1c00a138:	577037ff 	bl	-36812(0xfff7034) # 1c00116c <EXTI_ClearITPendingBit>
1c00a13c:	03400000 	andi	$r0,$r0,0x0
1c00a140:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a144:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a148:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a14c:	4c000020 	jirl	$r0,$r1,0

1c00a150 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c00a150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a154:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a158:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a15c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a160:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a164:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c00a168:	02806405 	addi.w	$r5,$r0,25(0x19)
1c00a16c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a170:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c00a174:	577243ff 	bl	-36288(0xfff7240) # 1c0013b4 <myprintf>
1c00a178:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00a17c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a180:	03808184 	ori	$r4,$r12,0x20
1c00a184:	576febff 	bl	-36888(0xfff6fe8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a188:	03400000 	andi	$r0,$r0,0x0
1c00a18c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a190:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a194:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a198:	4c000020 	jirl	$r0,$r1,0

1c00a19c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00a19c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a1a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a1a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a1a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a1ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a1b0:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c00a1b4:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c00a1b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a1bc:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c00a1c0:	5771f7ff 	bl	-36364(0xfff71f4) # 1c0013b4 <myprintf>
1c00a1c4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00a1c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a1cc:	03808184 	ori	$r4,$r12,0x20
1c00a1d0:	576f9fff 	bl	-36964(0xfff6f9c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a1d4:	03400000 	andi	$r0,$r0,0x0
1c00a1d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a1dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a1e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a1e4:	4c000020 	jirl	$r0,$r1,0

1c00a1e8 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00a1e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a1ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a1f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a1f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a1f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a1fc:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c00a200:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c00a204:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a208:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c00a20c:	5771abff 	bl	-36440(0xfff71a8) # 1c0013b4 <myprintf>
1c00a210:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00a214:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a218:	03808184 	ori	$r4,$r12,0x20
1c00a21c:	576f53ff 	bl	-37040(0xfff6f50) # 1c00116c <EXTI_ClearITPendingBit>
1c00a220:	03400000 	andi	$r0,$r0,0x0
1c00a224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a22c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a230:	4c000020 	jirl	$r0,$r1,0

1c00a234 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00a234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a23c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a244:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a248:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c00a24c:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c00a250:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a254:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c00a258:	57715fff 	bl	-36516(0xfff715c) # 1c0013b4 <myprintf>
1c00a25c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00a260:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a264:	03808184 	ori	$r4,$r12,0x20
1c00a268:	576f07ff 	bl	-37116(0xfff6f04) # 1c00116c <EXTI_ClearITPendingBit>
1c00a26c:	03400000 	andi	$r0,$r0,0x0
1c00a270:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a274:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a278:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a27c:	4c000020 	jirl	$r0,$r1,0

1c00a280 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00a280:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a284:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a288:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a28c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a290:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a294:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c00a298:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c00a29c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a2a0:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c00a2a4:	577113ff 	bl	-36592(0xfff7110) # 1c0013b4 <myprintf>
1c00a2a8:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00a2ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2b0:	03808184 	ori	$r4,$r12,0x20
1c00a2b4:	576ebbff 	bl	-37192(0xfff6eb8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a2b8:	03400000 	andi	$r0,$r0,0x0
1c00a2bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a2c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a2c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a2c8:	4c000020 	jirl	$r0,$r1,0

1c00a2cc <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00a2cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a2d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a2d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a2d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a2dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a2e0:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c00a2e4:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c00a2e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a2ec:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c00a2f0:	5770c7ff 	bl	-36668(0xfff70c4) # 1c0013b4 <myprintf>
1c00a2f4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00a2f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2fc:	03808184 	ori	$r4,$r12,0x20
1c00a300:	576e6fff 	bl	-37268(0xfff6e6c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a304:	03400000 	andi	$r0,$r0,0x0
1c00a308:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a30c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a310:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a314:	4c000020 	jirl	$r0,$r1,0

1c00a318 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00a318:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a31c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a320:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a324:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a328:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a32c:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c00a330:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c00a334:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a338:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c00a33c:	57707bff 	bl	-36744(0xfff7078) # 1c0013b4 <myprintf>
1c00a340:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00a344:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a348:	03808184 	ori	$r4,$r12,0x20
1c00a34c:	576e23ff 	bl	-37344(0xfff6e20) # 1c00116c <EXTI_ClearITPendingBit>
1c00a350:	03400000 	andi	$r0,$r0,0x0
1c00a354:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a358:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a35c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a360:	4c000020 	jirl	$r0,$r1,0

1c00a364 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00a364:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a368:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a36c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a370:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a374:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a378:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c00a37c:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c00a380:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a384:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c00a388:	57702fff 	bl	-36820(0xfff702c) # 1c0013b4 <myprintf>
1c00a38c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00a390:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a394:	03808184 	ori	$r4,$r12,0x20
1c00a398:	576dd7ff 	bl	-37420(0xfff6dd4) # 1c00116c <EXTI_ClearITPendingBit>
1c00a39c:	03400000 	andi	$r0,$r0,0x0
1c00a3a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a3a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a3a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a3ac:	4c000020 	jirl	$r0,$r1,0

1c00a3b0 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00a3b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a3b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a3b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a3bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a3c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a3c4:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c00a3c8:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c00a3cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a3d0:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c00a3d4:	576fe3ff 	bl	-36896(0xfff6fe0) # 1c0013b4 <myprintf>
1c00a3d8:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00a3dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a3e0:	03808184 	ori	$r4,$r12,0x20
1c00a3e4:	576d8bff 	bl	-37496(0xfff6d88) # 1c00116c <EXTI_ClearITPendingBit>
1c00a3e8:	03400000 	andi	$r0,$r0,0x0
1c00a3ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a3f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a3f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a3f8:	4c000020 	jirl	$r0,$r1,0

1c00a3fc <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00a3fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a400:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a404:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a408:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a40c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a410:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c00a414:	02812405 	addi.w	$r5,$r0,73(0x49)
1c00a418:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a41c:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c00a420:	576f97ff 	bl	-36972(0xfff6f94) # 1c0013b4 <myprintf>
1c00a424:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c00a428:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a42c:	03808184 	ori	$r4,$r12,0x20
1c00a430:	576d3fff 	bl	-37572(0xfff6d3c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a434:	03400000 	andi	$r0,$r0,0x0
1c00a438:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a43c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a440:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a444:	4c000020 	jirl	$r0,$r1,0

1c00a448 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c00a448:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a44c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a450:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a454:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a458:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a45c:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c00a460:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c00a464:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a468:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c00a46c:	576f4bff 	bl	-37048(0xfff6f48) # 1c0013b4 <myprintf>
1c00a470:	03a00005 	ori	$r5,$r0,0x800
1c00a474:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a478:	03808184 	ori	$r4,$r12,0x20
1c00a47c:	576cf3ff 	bl	-37648(0xfff6cf0) # 1c00116c <EXTI_ClearITPendingBit>
1c00a480:	03400000 	andi	$r0,$r0,0x0
1c00a484:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a488:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a48c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a490:	4c000020 	jirl	$r0,$r1,0

1c00a494 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00a494:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a498:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a49c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a4a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a4a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a4a8:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c00a4ac:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00a4b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a4b4:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c00a4b8:	576effff 	bl	-37124(0xfff6efc) # 1c0013b4 <myprintf>
1c00a4bc:	14000025 	lu12i.w	$r5,1(0x1)
1c00a4c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a4c4:	03808184 	ori	$r4,$r12,0x20
1c00a4c8:	576ca7ff 	bl	-37724(0xfff6ca4) # 1c00116c <EXTI_ClearITPendingBit>
1c00a4cc:	03400000 	andi	$r0,$r0,0x0
1c00a4d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a4d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a4d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a4dc:	4c000020 	jirl	$r0,$r1,0

1c00a4e0 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00a4e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a4e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a4e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a4ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a4f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a4f4:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c00a4f8:	02816405 	addi.w	$r5,$r0,89(0x59)
1c00a4fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a500:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c00a504:	576eb3ff 	bl	-37200(0xfff6eb0) # 1c0013b4 <myprintf>
1c00a508:	14000045 	lu12i.w	$r5,2(0x2)
1c00a50c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a510:	03808184 	ori	$r4,$r12,0x20
1c00a514:	576c5bff 	bl	-37800(0xfff6c58) # 1c00116c <EXTI_ClearITPendingBit>
1c00a518:	03400000 	andi	$r0,$r0,0x0
1c00a51c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a520:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a524:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a528:	4c000020 	jirl	$r0,$r1,0

1c00a52c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00a52c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a530:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a534:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a538:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a53c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a540:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c00a544:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c00a548:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a54c:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c00a550:	576e67ff 	bl	-37276(0xfff6e64) # 1c0013b4 <myprintf>
1c00a554:	14000085 	lu12i.w	$r5,4(0x4)
1c00a558:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a55c:	03808184 	ori	$r4,$r12,0x20
1c00a560:	576c0fff 	bl	-37876(0xfff6c0c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a564:	03400000 	andi	$r0,$r0,0x0
1c00a568:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a56c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a570:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a574:	4c000020 	jirl	$r0,$r1,0

1c00a578 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c00a578:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a57c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a580:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a584:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a588:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a58c:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c00a590:	02819405 	addi.w	$r5,$r0,101(0x65)
1c00a594:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a598:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c00a59c:	576e1bff 	bl	-37352(0xfff6e18) # 1c0013b4 <myprintf>
1c00a5a0:	14000105 	lu12i.w	$r5,8(0x8)
1c00a5a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a5a8:	03808184 	ori	$r4,$r12,0x20
1c00a5ac:	576bc3ff 	bl	-37952(0xfff6bc0) # 1c00116c <EXTI_ClearITPendingBit>
1c00a5b0:	03400000 	andi	$r0,$r0,0x0
1c00a5b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a5b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a5bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a5c0:	4c000020 	jirl	$r0,$r1,0

1c00a5c4 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00a5c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a5c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a5cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a5d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a5d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a5d8:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c00a5dc:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c00a5e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a5e4:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c00a5e8:	576dcfff 	bl	-37428(0xfff6dcc) # 1c0013b4 <myprintf>
1c00a5ec:	14000205 	lu12i.w	$r5,16(0x10)
1c00a5f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a5f4:	03808184 	ori	$r4,$r12,0x20
1c00a5f8:	576b77ff 	bl	-38028(0xfff6b74) # 1c00116c <EXTI_ClearITPendingBit>
1c00a5fc:	03400000 	andi	$r0,$r0,0x0
1c00a600:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a604:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a608:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a60c:	4c000020 	jirl	$r0,$r1,0

1c00a610 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00a610:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a614:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a618:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a61c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a620:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a624:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c00a628:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c00a62c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a630:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c00a634:	576d83ff 	bl	-37504(0xfff6d80) # 1c0013b4 <myprintf>
1c00a638:	14000405 	lu12i.w	$r5,32(0x20)
1c00a63c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a640:	03808184 	ori	$r4,$r12,0x20
1c00a644:	576b2bff 	bl	-38104(0xfff6b28) # 1c00116c <EXTI_ClearITPendingBit>
1c00a648:	03400000 	andi	$r0,$r0,0x0
1c00a64c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a650:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a654:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a658:	4c000020 	jirl	$r0,$r1,0

1c00a65c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00a65c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a660:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a664:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a668:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a66c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a670:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c00a674:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c00a678:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a67c:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c00a680:	576d37ff 	bl	-37580(0xfff6d34) # 1c0013b4 <myprintf>
1c00a684:	14000805 	lu12i.w	$r5,64(0x40)
1c00a688:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a68c:	03808184 	ori	$r4,$r12,0x20
1c00a690:	576adfff 	bl	-38180(0xfff6adc) # 1c00116c <EXTI_ClearITPendingBit>
1c00a694:	03400000 	andi	$r0,$r0,0x0
1c00a698:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a69c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a6a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a6a4:	4c000020 	jirl	$r0,$r1,0

1c00a6a8 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c00a6a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a6ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a6b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a6b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a6b8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a6bc:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c00a6c0:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c00a6c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a6c8:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c00a6cc:	576cebff 	bl	-37656(0xfff6ce8) # 1c0013b4 <myprintf>
1c00a6d0:	14001005 	lu12i.w	$r5,128(0x80)
1c00a6d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a6d8:	03808184 	ori	$r4,$r12,0x20
1c00a6dc:	576a93ff 	bl	-38256(0xfff6a90) # 1c00116c <EXTI_ClearITPendingBit>
1c00a6e0:	03400000 	andi	$r0,$r0,0x0
1c00a6e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a6e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a6ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a6f0:	4c000020 	jirl	$r0,$r1,0

1c00a6f4 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00a6f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a6f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a6fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a700:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a704:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a708:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c00a70c:	02821005 	addi.w	$r5,$r0,132(0x84)
1c00a710:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a714:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c00a718:	576c9fff 	bl	-37732(0xfff6c9c) # 1c0013b4 <myprintf>
1c00a71c:	14002005 	lu12i.w	$r5,256(0x100)
1c00a720:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a724:	03808184 	ori	$r4,$r12,0x20
1c00a728:	576a47ff 	bl	-38332(0xfff6a44) # 1c00116c <EXTI_ClearITPendingBit>
1c00a72c:	03400000 	andi	$r0,$r0,0x0
1c00a730:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a734:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a738:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a73c:	4c000020 	jirl	$r0,$r1,0

1c00a740 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00a740:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a744:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a748:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a74c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a750:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a754:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c00a758:	02822405 	addi.w	$r5,$r0,137(0x89)
1c00a75c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a760:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c00a764:	576c53ff 	bl	-37808(0xfff6c50) # 1c0013b4 <myprintf>
1c00a768:	14004005 	lu12i.w	$r5,512(0x200)
1c00a76c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a770:	03808184 	ori	$r4,$r12,0x20
1c00a774:	5769fbff 	bl	-38408(0xfff69f8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a778:	03400000 	andi	$r0,$r0,0x0
1c00a77c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a780:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a784:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a788:	4c000020 	jirl	$r0,$r1,0

1c00a78c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00a78c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a790:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a794:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a798:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a79c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a7a0:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c00a7a4:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c00a7a8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a7ac:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c00a7b0:	576c07ff 	bl	-37884(0xfff6c04) # 1c0013b4 <myprintf>
1c00a7b4:	14008005 	lu12i.w	$r5,1024(0x400)
1c00a7b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a7bc:	03808184 	ori	$r4,$r12,0x20
1c00a7c0:	5769afff 	bl	-38484(0xfff69ac) # 1c00116c <EXTI_ClearITPendingBit>
1c00a7c4:	03400000 	andi	$r0,$r0,0x0
1c00a7c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a7cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a7d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a7d4:	4c000020 	jirl	$r0,$r1,0

1c00a7d8 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00a7d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a7dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a7e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a7e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a7e8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a7ec:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c00a7f0:	02825005 	addi.w	$r5,$r0,148(0x94)
1c00a7f4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a7f8:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c00a7fc:	576bbbff 	bl	-37960(0xfff6bb8) # 1c0013b4 <myprintf>
1c00a800:	14010005 	lu12i.w	$r5,2048(0x800)
1c00a804:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a808:	03808184 	ori	$r4,$r12,0x20
1c00a80c:	576963ff 	bl	-38560(0xfff6960) # 1c00116c <EXTI_ClearITPendingBit>
1c00a810:	03400000 	andi	$r0,$r0,0x0
1c00a814:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a818:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a81c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a820:	4c000020 	jirl	$r0,$r1,0

1c00a824 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00a824:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a828:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a82c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a830:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a834:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a838:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c00a83c:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c00a840:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a844:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c00a848:	576b6fff 	bl	-38036(0xfff6b6c) # 1c0013b4 <myprintf>
1c00a84c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00a850:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a854:	03808184 	ori	$r4,$r12,0x20
1c00a858:	576917ff 	bl	-38636(0xfff6914) # 1c00116c <EXTI_ClearITPendingBit>
1c00a85c:	03400000 	andi	$r0,$r0,0x0
1c00a860:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a864:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a868:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a86c:	4c000020 	jirl	$r0,$r1,0

1c00a870 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c00a870:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a874:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a878:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a87c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a880:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a884:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c00a888:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c00a88c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a890:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c00a894:	576b23ff 	bl	-38112(0xfff6b20) # 1c0013b4 <myprintf>
1c00a898:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00a89c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a8a0:	03808184 	ori	$r4,$r12,0x20
1c00a8a4:	5768cbff 	bl	-38712(0xfff68c8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a8a8:	03400000 	andi	$r0,$r0,0x0
1c00a8ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a8b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a8b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a8b8:	4c000020 	jirl	$r0,$r1,0

1c00a8bc <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00a8bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a8c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a8c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a8c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a8cc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a8d0:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c00a8d4:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c00a8d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a8dc:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c00a8e0:	576ad7ff 	bl	-38188(0xfff6ad4) # 1c0013b4 <myprintf>
1c00a8e4:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00a8e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a8ec:	03808184 	ori	$r4,$r12,0x20
1c00a8f0:	57687fff 	bl	-38788(0xfff687c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a8f4:	03400000 	andi	$r0,$r0,0x0
1c00a8f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a8fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a900:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a904:	4c000020 	jirl	$r0,$r1,0

1c00a908 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c00a908:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a90c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a910:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a914:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a918:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a91c:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c00a920:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c00a924:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a928:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c00a92c:	576a8bff 	bl	-38264(0xfff6a88) # 1c0013b4 <myprintf>
1c00a930:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00a934:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a938:	03808184 	ori	$r4,$r12,0x20
1c00a93c:	576833ff 	bl	-38864(0xfff6830) # 1c00116c <EXTI_ClearITPendingBit>
1c00a940:	03400000 	andi	$r0,$r0,0x0
1c00a944:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a948:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a94c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a950:	4c000020 	jirl	$r0,$r1,0

1c00a954 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00a954:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a958:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a95c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a960:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a964:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a968:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c00a96c:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c00a970:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a974:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c00a978:	576a3fff 	bl	-38340(0xfff6a3c) # 1c0013b4 <myprintf>
1c00a97c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00a980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a984:	03808184 	ori	$r4,$r12,0x20
1c00a988:	5767e7ff 	bl	-38940(0xfff67e4) # 1c00116c <EXTI_ClearITPendingBit>
1c00a98c:	03400000 	andi	$r0,$r0,0x0
1c00a990:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a994:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a998:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a99c:	4c000020 	jirl	$r0,$r1,0

1c00a9a0 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00a9a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a9a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a9a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a9ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a9b0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a9b4:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c00a9b8:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c00a9bc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a9c0:	02880084 	addi.w	$r4,$r4,512(0x200)
1c00a9c4:	5769f3ff 	bl	-38416(0xfff69f0) # 1c0013b4 <myprintf>
1c00a9c8:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00a9cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a9d0:	03808184 	ori	$r4,$r12,0x20
1c00a9d4:	57679bff 	bl	-39016(0xfff6798) # 1c00116c <EXTI_ClearITPendingBit>
1c00a9d8:	03400000 	andi	$r0,$r0,0x0
1c00a9dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a9e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a9e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a9e8:	4c000020 	jirl	$r0,$r1,0

1c00a9ec <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00a9ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a9f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a9f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a9f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a9fc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aa00:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c00aa04:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c00aa08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aa0c:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c00aa10:	5769a7ff 	bl	-38492(0xfff69a4) # 1c0013b4 <myprintf>
1c00aa14:	14800005 	lu12i.w	$r5,262144(0x40000)
1c00aa18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa1c:	03808184 	ori	$r4,$r12,0x20
1c00aa20:	57674fff 	bl	-39092(0xfff674c) # 1c00116c <EXTI_ClearITPendingBit>
1c00aa24:	03400000 	andi	$r0,$r0,0x0
1c00aa28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aa2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aa30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aa34:	4c000020 	jirl	$r0,$r1,0

1c00aa38 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c00aa38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00aa3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00aa40:	29802076 	st.w	$r22,$r3,8(0x8)
1c00aa44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00aa48:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aa4c:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c00aa50:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c00aa54:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aa58:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c00aa5c:	57695bff 	bl	-38568(0xfff6958) # 1c0013b4 <myprintf>
1c00aa60:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00aa64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa68:	03808184 	ori	$r4,$r12,0x20
1c00aa6c:	576703ff 	bl	-39168(0xfff6700) # 1c00116c <EXTI_ClearITPendingBit>
1c00aa70:	03400000 	andi	$r0,$r0,0x0
1c00aa74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aa78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aa7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aa80:	4c000020 	jirl	$r0,$r1,0

1c00aa84 <ext_handler>:
ext_handler():
1c00aa84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00aa88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00aa8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00aa90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00aa94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa98:	0380f18c 	ori	$r12,$r12,0x3c
1c00aa9c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00aaa0:	2980018d 	st.w	$r13,$r12,0
1c00aaa4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aaa8:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c00aaac:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c00aab0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aab4:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c00aab8:	5768ffff 	bl	-38660(0xfff68fc) # 1c0013b4 <myprintf>
1c00aabc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aac0:	0380818c 	ori	$r12,$r12,0x20
1c00aac4:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00aac8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00aacc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aad0:	0380818c 	ori	$r12,$r12,0x20
1c00aad4:	2880018c 	ld.w	$r12,$r12,0
1c00aad8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00aadc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00aae0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00aae4:	0014b1ac 	and	$r12,$r13,$r12
1c00aae8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00aaec:	03400000 	andi	$r0,$r0,0x0
1c00aaf0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00aaf4:	50004000 	b	64(0x40) # 1c00ab34 <ext_handler+0xb0>
1c00aaf8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00aafc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ab00:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00ab04:	0340058c 	andi	$r12,$r12,0x1
1c00ab08:	40002180 	beqz	$r12,32(0x20) # 1c00ab28 <ext_handler+0xa4>
1c00ab0c:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00ab10:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c00ab14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ab18:	0040898c 	slli.w	$r12,$r12,0x2
1c00ab1c:	001031ac 	add.w	$r12,$r13,$r12
1c00ab20:	2880018c 	ld.w	$r12,$r12,0
1c00ab24:	4c000181 	jirl	$r1,$r12,0
1c00ab28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ab2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00ab30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ab34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00ab38:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00ab3c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00aaf8 <ext_handler+0x74>
1c00ab40:	03400000 	andi	$r0,$r0,0x0
1c00ab44:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ab48:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ab4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ab50:	4c000020 	jirl	$r0,$r1,0

1c00ab54 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00ab54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ab58:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ab5c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ab60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ab64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ab68:	0380f18c 	ori	$r12,$r12,0x3c
1c00ab6c:	1400020d 	lu12i.w	$r13,16(0x10)
1c00ab70:	2980018d 	st.w	$r13,$r12,0
1c00ab74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ab78:	0380118c 	ori	$r12,$r12,0x4
1c00ab7c:	2880018c 	ld.w	$r12,$r12,0
1c00ab80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ab84:	576c83ff 	bl	-37760(0xfff6c80) # 1c001804 <WDG_DogFeed>
1c00ab88:	03400000 	andi	$r0,$r0,0x0
1c00ab8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ab90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ab94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ab98:	4c000020 	jirl	$r0,$r1,0

1c00ab9c <TOUCH>:
TOUCH():
1c00ab9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00aba0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00aba4:	29806076 	st.w	$r22,$r3,24(0x18)
1c00aba8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00abac:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00abb0:	0380118c 	ori	$r12,$r12,0x4
1c00abb4:	2880018c 	ld.w	$r12,$r12,0
1c00abb8:	0044c18c 	srli.w	$r12,$r12,0x10
1c00abbc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00abc0:	037ffd8c 	andi	$r12,$r12,0xfff
1c00abc4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00abc8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00abcc:	0380118c 	ori	$r12,$r12,0x4
1c00abd0:	2880018c 	ld.w	$r12,$r12,0
1c00abd4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00abd8:	03403d8c 	andi	$r12,$r12,0xf
1c00abdc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00abe0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00abe4:	0380f18c 	ori	$r12,$r12,0x3c
1c00abe8:	1400040d 	lu12i.w	$r13,32(0x20)
1c00abec:	2980018d 	st.w	$r13,$r12,0
1c00abf0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00abf4:	0380118c 	ori	$r12,$r12,0x4
1c00abf8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00abfc:	2980018d 	st.w	$r13,$r12,0
1c00ac00:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00ac04:	00150185 	move	$r5,$r12
1c00ac08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ac0c:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c00ac10:	5767a7ff 	bl	-39004(0xfff67a4) # 1c0013b4 <myprintf>
1c00ac14:	03400000 	andi	$r0,$r0,0x0
1c00ac18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ac1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ac20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ac24:	4c000020 	jirl	$r0,$r1,0

1c00ac28 <UART2_INT>:
UART2_INT():
1c00ac28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ac2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00ac30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ac34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac38:	0380f18c 	ori	$r12,$r12,0x3c
1c00ac3c:	1400080d 	lu12i.w	$r13,64(0x40)
1c00ac40:	2980018d 	st.w	$r13,$r12,0
1c00ac44:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00ac48:	0380098c 	ori	$r12,$r12,0x2
1c00ac4c:	2a00018c 	ld.bu	$r12,$r12,0
1c00ac50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00ac54:	03400000 	andi	$r0,$r0,0x0
1c00ac58:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00ac5c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ac60:	4c000020 	jirl	$r0,$r1,0

1c00ac64 <BAT_FAIL>:
BAT_FAIL():
1c00ac64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ac68:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ac6c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ac70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ac74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac78:	0380118c 	ori	$r12,$r12,0x4
1c00ac7c:	2880018c 	ld.w	$r12,$r12,0
1c00ac80:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00ac84:	03407d8c 	andi	$r12,$r12,0x1f
1c00ac88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ac8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac90:	0380118c 	ori	$r12,$r12,0x4
1c00ac94:	2880018e 	ld.w	$r14,$r12,0
1c00ac98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac9c:	0380f18c 	ori	$r12,$r12,0x3c
1c00aca0:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00aca4:	0014b5cd 	and	$r13,$r14,$r13
1c00aca8:	2980018d 	st.w	$r13,$r12,0
1c00acac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00acb0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00acb4:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00ad24 <BAT_FAIL+0xc0>
1c00acb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00acbc:	0040898d 	slli.w	$r13,$r12,0x2
1c00acc0:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c00acc4:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c00acc8:	001031ac 	add.w	$r12,$r13,$r12
1c00accc:	2880018c 	ld.w	$r12,$r12,0
1c00acd0:	4c000180 	jirl	$r0,$r12,0
1c00acd4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00acd8:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c00acdc:	5766dbff 	bl	-39208(0xfff66d8) # 1c0013b4 <myprintf>
1c00ace0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ace4:	0380118c 	ori	$r12,$r12,0x4
1c00ace8:	29800180 	st.w	$r0,$r12,0
1c00acec:	50003c00 	b	60(0x3c) # 1c00ad28 <BAT_FAIL+0xc4>
1c00acf0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00acf4:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c00acf8:	5766bfff 	bl	-39236(0xfff66bc) # 1c0013b4 <myprintf>
1c00acfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ad00:	0380118c 	ori	$r12,$r12,0x4
1c00ad04:	2880018e 	ld.w	$r14,$r12,0
1c00ad08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ad0c:	0380118c 	ori	$r12,$r12,0x4
1c00ad10:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00ad14:	03bffdad 	ori	$r13,$r13,0xfff
1c00ad18:	0014b5cd 	and	$r13,$r14,$r13
1c00ad1c:	2980018d 	st.w	$r13,$r12,0
1c00ad20:	50000800 	b	8(0x8) # 1c00ad28 <BAT_FAIL+0xc4>
1c00ad24:	03400000 	andi	$r0,$r0,0x0
1c00ad28:	03400000 	andi	$r0,$r0,0x0
1c00ad2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ad30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ad34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ad38:	4c000020 	jirl	$r0,$r1,0

1c00ad3c <INTC_Handler>:
INTC_Handler():
1c00ad3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ad40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ad44:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ad48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ad4c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00ad50:	0380158c 	ori	$r12,$r12,0x5
1c00ad54:	2a00018c 	ld.bu	$r12,$r12,0
1c00ad58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00ad5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ad60:	0340058c 	andi	$r12,$r12,0x1
1c00ad64:	40002980 	beqz	$r12,40(0x28) # 1c00ad8c <INTC_Handler+0x50>
1c00ad68:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00ad6c:	57a6d7ff 	bl	-22828(0xfffa6d4) # 1c005440 <TIM_GetITStatus>
1c00ad70:	0015008c 	move	$r12,$r4
1c00ad74:	40001980 	beqz	$r12,24(0x18) # 1c00ad8c <INTC_Handler+0x50>
1c00ad78:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00ad7c:	57a713ff 	bl	-22768(0xfffa710) # 1c00548c <TIM_ClearIT>
1c00ad80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ad84:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c00ad88:	57662fff 	bl	-39380(0xfff662c) # 1c0013b4 <myprintf>
1c00ad8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ad90:	0340118c 	andi	$r12,$r12,0x4
1c00ad94:	40002d80 	beqz	$r12,44(0x2c) # 1c00adc0 <INTC_Handler+0x84>
1c00ad98:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00ad9c:	2880018c 	ld.w	$r12,$r12,0
1c00ada0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00ada4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00ada8:	00150184 	move	$r4,$r12
1c00adac:	5771cbff 	bl	-36408(0xfff71c8) # 1c001f74 <my_recv_dat_int>
1c00adb0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00adb4:	03800d8c 	ori	$r12,$r12,0x3
1c00adb8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00adbc:	2900018d 	st.b	$r13,$r12,0
1c00adc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00adc4:	0340218c 	andi	$r12,$r12,0x8
1c00adc8:	40002d80 	beqz	$r12,44(0x2c) # 1c00adf4 <INTC_Handler+0xb8>
1c00adcc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00add0:	2880018c 	ld.w	$r12,$r12,0
1c00add4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00add8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00addc:	00150184 	move	$r4,$r12
1c00ade0:	577197ff 	bl	-36460(0xfff7194) # 1c001f74 <my_recv_dat_int>
1c00ade4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00ade8:	03800d8c 	ori	$r12,$r12,0x3
1c00adec:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00adf0:	2900018d 	st.b	$r13,$r12,0
1c00adf4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00adf8:	03800d8c 	ori	$r12,$r12,0x3
1c00adfc:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00ae00:	2900018d 	st.b	$r13,$r12,0
1c00ae04:	03400000 	andi	$r0,$r0,0x0
1c00ae08:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ae0c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ae10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ae14:	4c000020 	jirl	$r0,$r1,0

1c00ae18 <TIMER_HANDLER>:
TIMER_HANDLER():
1c00ae18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00ae1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00ae20:	29802076 	st.w	$r22,$r3,8(0x8)
1c00ae24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00ae28:	576323ff 	bl	-40160(0xfff6320) # 1c001148 <Set_Timer_clear>
1c00ae2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ae30:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c00ae34:	576583ff 	bl	-39552(0xfff6580) # 1c0013b4 <myprintf>
1c00ae38:	5762f3ff 	bl	-40208(0xfff62f0) # 1c001128 <Set_Timer_stop>
1c00ae3c:	03400000 	andi	$r0,$r0,0x0
1c00ae40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00ae44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00ae48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00ae4c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c00ae50 <F6x8-0x334>:
1c00ae50:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c00ae54:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae58:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae5c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae60:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae64:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae68:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae6c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae70:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae74:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae78:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00ae7c:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c00ae80:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae84:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae88:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae8c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae90:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae94:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae98:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00ae9c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00aea0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00aea4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aea8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aeac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aeb0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aeb4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aeb8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aebc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aec0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aec4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aec8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aecc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aed0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aed4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aed8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aedc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aee0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aee4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aee8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aeec:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aef0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aef4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aef8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aefc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af00:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af04:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af08:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af0c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af10:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af14:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af18:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af1c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af20:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af24:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af28:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af2c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af30:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af34:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af38:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af3c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af40:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af44:	1c001564 	pcaddu12i	$r4,171(0xab)
1c00af48:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c00af4c:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c00af50:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af54:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af58:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af5c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af60:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af64:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af68:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af6c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af70:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af74:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af78:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c00af7c:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00af80:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af84:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af88:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c00af8c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af90:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c00af94:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af98:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af9c:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00afa0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00afa4:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c00afa8:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c00afac:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00afb0:	00000000 	0x00000000
1c00afb4:	befdca20 	0xbefdca20
1c00afb8:	bdfcb0dd 	0xbdfcb0dd
1c00afbc:	b4d5cad3 	0xb4d5cad3
1c00afc0:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00afc4:	00000000 	0x00000000
1c00afc8:	d0b8abb4 	0xd0b8abb4
1c00afcc:	cfc9f7c6 	0xcfc9f7c6
1c00afd0:	d0d3bbc3 	0xd0d3bbc3
1c00afd4:	b8d6d6ca 	0xb8d6d6ca
1c00afd8:	00000000 	0x00000000
1c00afdc:	ebc8bcc2 	0xebc8bcc2
1c00afe0:	c6ceb8d6 	0xc6ceb8d6
1c00afe4:	f1cfbccd 	0xf1cfbccd
1c00afe8:	dcb0a7ca 	0xdcb0a7ca
1c00afec:	00000000 	0x00000000
1c00aff0:	ceb8d620 	0xceb8d620
1c00aff4:	b8abccc6 	0xb8abccc6
1c00aff8:	ccf2bbc9 	0xccf2bbc9
1c00affc:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c00b000:	00000000 	0x00000000
1c00b004:	ceb8d620 	0xceb8d620
1c00b008:	caabccc6 	0xcaabccc6
1c00b00c:	ccf2bbaa 	0xccf2bbaa
1c00b010:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c00b014:	00000000 	0x00000000
1c00b018:	b8d62020 	0xb8d62020
1c00b01c:	bccdc6ce 	0xbccdc6ce
1c00b020:	abccf1cf 	0xabccf1cf
1c00b024:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c00b028:	00000000 	0x00000000
1c00b02c:	ceb8d620 	0xceb8d620
1c00b030:	d5d8ccc6 	0xd5d8ccc6
1c00b034:	cce3b5f7 	0xcce3b5f7
1c00b038:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c00b03c:	00000000 	0x00000000
1c00b040:	b8d62020 	0xb8d62020
1c00b044:	bbb2c6ce 	0xbbb2c6ce
1c00b048:	e4c5a5c6 	0xe4c5a5c6
1c00b04c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b050:	00000000 	0x00000000
1c00b054:	d3bbc320 	0xd3bbc320
1c00b058:	cbd1cbd0 	0xcbd1cbd0
1c00b05c:	d6bdb5f7 	0xd6bdb5f7
1c00b060:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c00b064:	00000000 	0x00000000
1c00b068:	cc202020 	0xcc202020
1c00b06c:	baf7d5d8 	0xbaf7d5d8
1c00b070:	caa2b2cf 	0xcaa2b2cf
1c00b074:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00b078:	00000000 	0x00000000
1c00b07c:	b7d6d8b5 	0xb7d6d8b5
1c00b080:	c5baf2d0 	0xc5baf2d0
1c00b084:	f6b3acb3 	0xf6b3acb3
1c00b088:	a7ceb6b7 	0xa7ceb6b7
1c00b08c:	00000000 	0x00000000
1c00b090:	bec92020 	0xbec92020
1c00b094:	a3c4fdb3 	0xa3c4fdb3
1c00b098:	a7cae5b0 	0xa7cae5b0
1c00b09c:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c00b0a0:	00000000 	0x00000000
1c00b0a4:	bfe5c720 	0xbfe5c720
1c00b0a8:	ceb8d6d5 	0xceb8d6d5
1c00b0ac:	cae2bfc6 	0xcae2bfc6
1c00b0b0:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00b0b4:	00000000 	0x00000000
1c00b0b8:	e5b3babb 	0xe5b3babb
1c00b0bc:	dac4f8c7 	0xdac4f8c7
1c00b0c0:	d0d3dece 	0xd0d3dece
1c00b0c4:	bccda7d0 	0xbccda7d0
1c00b0c8:	00000000 	0x00000000
1c00b0cc:	d0c1b620 	0xd0c1b620
1c00b0d0:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1fd14 <_start-0x2e02ec>
1c00b0d4:	f6b34853 	0xf6b34853
1c00b0d8:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c00b0dc:	00000000 	0x00000000
1c00b0e0:	ce202020 	0xce202020
1c00b0e4:	d2a8b6b4 	0xd2a8b6b4
1c00b0e8:	ceedb4e5 	0xceedb4e5
1c00b0ec:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c00b0f0:	00000000 	0x00000000
1c00b0f4:	dece2020 	0xdece2020
1c00b0f8:	c4bca7d0 	0xc4bca7d0
1c00b0fc:	f7c6e6b4 	0xf7c6e6b4
1c00b100:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c00b104:	00000000 	0x00000000
1c00b108:	b4c4bc20 	0xb4c4bc20
1c00b10c:	c4f7c6e6 	0xc4f7c6e6
1c00b110:	b4ddc8da 	0xb4ddc8da
1c00b114:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b118:	00000000 	0x00000000
1c00b11c:	cac7bc20 	0xcac7bc20
1c00b120:	d2beb1c2 	0xd2beb1c2
1c00b124:	b4ebc2b3 	0xb4ebc2b3
1c00b128:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b12c:	00000000 	0x00000000
1c00b130:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b134:	c6ceb8d6 	0xc6ceb8d6
1c00b138:	fac2e2bf 	0xfac2e2bf
1c00b13c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b140:	00000000 	0x00000000
1c00b144:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b148:	b7d6d8b5 	0xb7d6d8b5
1c00b14c:	f3ceedb4 	0xf3ceedb4
1c00b150:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b154:	00000000 	0x00000000
1c00b158:	bbb5b720 	0xbbb5b720
1c00b15c:	c8b7c8d8 	0xc8b7c8d8
1c00b160:	d3ebc2cf 	0xd3ebc2cf
1c00b164:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c00b168:	00000000 	0x00000000
1c00b16c:	003a4449 	0x003a4449
1c00b170:	1c002d3c 	pcaddu12i	$r28,361(0x169)
1c00b174:	1c002de8 	pcaddu12i	$r8,367(0x16f)
1c00b178:	1c002ea8 	pcaddu12i	$r8,373(0x175)
1c00b17c:	1c002f90 	pcaddu12i	$r16,380(0x17c)
1c00b180:	1c003064 	pcaddu12i	$r4,387(0x183)

1c00b184 <F6x8>:
	...
1c00b18c:	00002f00 	ctz.d	$r0,$r24
1c00b190:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c00b194:	14000007 	lu12i.w	$r7,0
1c00b198:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c00b19c:	7f2a2400 	0x7f2a2400
1c00b1a0:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfeb1b0 <_start-0x14e50>
1c00b1a4:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c00b1a8:	55493600 	bl	-134133452(0x8014934) # 1401fadc <_start-0x7fe0524>
1c00b1ac:	00005022 	bitrev.w	$r2,$r1
1c00b1b0:	00000305 	0x00000305
1c00b1b4:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c00b1b8:	00000041 	0x00000041
1c00b1bc:	001c2241 	mul.w	$r1,$r18,$r8
1c00b1c0:	3e081400 	0x3e081400
1c00b1c4:	08001408 	0x08001408
1c00b1c8:	08083e08 	0x08083e08
1c00b1cc:	a0000000 	0xa0000000
1c00b1d0:	08000060 	0x08000060
1c00b1d4:	08080808 	0x08080808
1c00b1d8:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c0111d8 <_sidata+0x5150>
1c00b1dc:	20000000 	ll.w	$r0,$r0,0
1c00b1e0:	02040810 	slti	$r16,$r0,258(0x102)
1c00b1e4:	49513e00 	0x49513e00
1c00b1e8:	00003e45 	revb.d	$r5,$r18
1c00b1ec:	00407f42 	0x00407f42
1c00b1f0:	51614200 	b	-134127296(0x8016140) # 14021330 <_start-0x7fdecd0>
1c00b1f4:	21004649 	sc.w	$r9,$r18,68(0x44)
1c00b1f8:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c00b1fc:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c00b200:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c00b204:	39454545 	0x39454545
1c00b208:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01fc44 <_sidata+0x13bbc>
1c00b20c:	01003049 	0x01003049
1c00b210:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c00b214:	49493600 	0x49493600
1c00b218:	06003649 	cacop	0x9,$r18,13(0xd)
1c00b21c:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c00b220:	36360000 	0x36360000
1c00b224:	00000000 	0x00000000
1c00b228:	00003656 	revb.4h	$r22,$r18
1c00b22c:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c00b230:	14000041 	lu12i.w	$r1,2(0x2)
1c00b234:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c00b238:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c00b23c:	02000814 	slti	$r20,$r0,2(0x2)
1c00b240:	06095101 	cacop	0x1,$r8,596(0x254)
1c00b244:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01fb74 <_sidata+0x13aec>
1c00b248:	7c003e51 	0x7c003e51
1c00b24c:	7c121112 	0x7c121112
1c00b250:	49497f00 	0x49497f00
1c00b254:	3e003649 	0x3e003649
1c00b258:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c00b25c:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01f3d8 <_sidata+0x13350>
1c00b260:	7f001c22 	0x7f001c22
1c00b264:	41494949 	beqz	$r10,2443592(0x254948) # 1c25fbac <_sidata+0x253b24>
1c00b268:	09097f00 	0x09097f00
1c00b26c:	3e000109 	0x3e000109
1c00b270:	7a494941 	0x7a494941
1c00b274:	08087f00 	0x08087f00
1c00b278:	00007f08 	0x00007f08
1c00b27c:	00417f41 	slli.d	$r1,$r26,0x1f
1c00b280:	41402000 	beqz	$r0,81952(0x14020) # 1c01f2a0 <_sidata+0x13218>
1c00b284:	7f00013f 	0x7f00013f
1c00b288:	41221408 	beqz	$r0,2171412(0x212214) # 1c21d49c <_sidata+0x211414>
1c00b28c:	40407f00 	beqz	$r24,16508(0x407c) # 1c00f308 <_sidata+0x3280>
1c00b290:	7f004040 	0x7f004040
1c00b294:	7f020c02 	0x7f020c02
1c00b298:	08047f00 	0x08047f00
1c00b29c:	3e007f10 	0x3e007f10
1c00b2a0:	3e414141 	0x3e414141
1c00b2a4:	09097f00 	0x09097f00
1c00b2a8:	3e000609 	0x3e000609
1c00b2ac:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfed3fc <_start-0x12c04>
1c00b2b0:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c00b2b4:	46004629 	bnez	$r17,2490436(0x260044) # 1c26b2f8 <_sidata+0x25f270>
1c00b2b8:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c00b2bc:	7f010100 	0x7f010100
1c00b2c0:	3f000101 	0x3f000101
1c00b2c4:	3f404040 	0x3f404040
1c00b2c8:	40201f00 	beqz	$r24,8220(0x201c) # 1c00d2e4 <_sidata+0x125c>
1c00b2cc:	3f001f20 	0x3f001f20
1c00b2d0:	3f403840 	0x3f403840
1c00b2d4:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c00b2d8:	07006314 	0x07006314
1c00b2dc:	07087008 	0x07087008
1c00b2e0:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c020440 <_sidata+0x143b8>
1c00b2e4:	00004345 	revh.2w	$r5,$r26
1c00b2e8:	0041417f 	slli.d	$r31,$r11,0x10
1c00b2ec:	552a5500 	bl	67185236(0x4012a54) # 2001dd40 <_sidata+0x4011cb8>
1c00b2f0:	0000552a 	bitrev.d	$r10,$r9
1c00b2f4:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c00b2f8:	01020400 	0x01020400
1c00b2fc:	40000402 	beqz	$r0,524292(0x80004) # 1c08b300 <_sidata+0x7f278>
1c00b300:	40404040 	beqz	$r2,16448(0x4040) # 1c00f340 <_sidata+0x32b8>
1c00b304:	02010000 	slti	$r0,$r0,64(0x40)
1c00b308:	20000004 	ll.w	$r4,$r0,0
1c00b30c:	78545454 	0x78545454
1c00b310:	44487f00 	bnez	$r24,18556(0x487c) # 1c00fb8c <_sidata+0x3b04>
1c00b314:	38003844 	ldx.b	$r4,$r2,$r14
1c00b318:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c00b31c:	44443800 	bnez	$r0,17464(0x4438) # 1c00f754 <_sidata+0x36cc>
1c00b320:	38007f48 	ldx.b	$r8,$r26,$r31
1c00b324:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c00b328:	097e0800 	0x097e0800
1c00b32c:	18000201 	pcaddi	$r1,16(0x10)
1c00b330:	7ca4a4a4 	0x7ca4a4a4
1c00b334:	04087f00 	csrxchg	$r0,$r24,0x21f
1c00b338:	00007804 	0x00007804
1c00b33c:	00407d44 	0x00407d44
1c00b340:	84804000 	0x84804000
1c00b344:	7f00007d 	0x7f00007d
1c00b348:	00442810 	0x00442810
1c00b34c:	7f410000 	0x7f410000
1c00b350:	7c000040 	0x7c000040
1c00b354:	78041804 	0x78041804
1c00b358:	04087c00 	csrrd	$r0,0x21f
1c00b35c:	38007804 	ldx.b	$r4,$r0,$r30
1c00b360:	38444444 	vstx	$vr4,$r2,$r17
1c00b364:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c00b368:	18001824 	pcaddi	$r4,193(0xc1)
1c00b36c:	fc182424 	0xfc182424
1c00b370:	04087c00 	csrrd	$r0,0x21f
1c00b374:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c10b37c <_sidata+0xff2f4>
1c00b378:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c00b37c:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00f280 <_sidata+0x31f8>
1c00b380:	3c002040 	0x3c002040
1c00b384:	7c204040 	0x7c204040
1c00b388:	40201c00 	beqz	$r0,8220(0x201c) # 1c00d3a4 <_sidata+0x131c>
1c00b38c:	3c001c20 	0x3c001c20
1c00b390:	3c403040 	0x3c403040
1c00b394:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c00b398:	1c004428 	pcaddu12i	$r8,545(0x221)
1c00b39c:	7ca0a0a0 	0x7ca0a0a0
1c00b3a0:	54644400 	bl	25668(0x6444) # 1c0117e4 <_sidata+0x575c>
1c00b3a4:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c00b3a8:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c00b3ac <F8X16>:
	...
1c00b3bc:	f8000000 	0xf8000000
1c00b3c0:	00000000 	0x00000000
1c00b3c4:	33000000 	0x33000000
1c00b3c8:	00000030 	0x00000030
1c00b3cc:	060c1000 	cacop	0x0,$r0,772(0x304)
1c00b3d0:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c00b3dc:	4078c040 	beqz	$r2,30912(0x78c0) # 1c012c9c <_sidata+0x6c14>
1c00b3e0:	004078c0 	0x004078c0
1c00b3e4:	04043f04 	csrxchg	$r4,$r24,0x10f
1c00b3e8:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c00b3ec:	fc887000 	0xfc887000
1c00b3f0:	00003008 	revb.2h	$r8,$r0
1c00b3f4:	ff201800 	0xff201800
1c00b3f8:	00001e21 	ctz.w	$r1,$r17
1c00b3fc:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c00b400:	000018e0 	cto.w	$r0,$r7
1c00b404:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c00b408:	001e211e 	mulh.d	$r30,$r8,$r8
1c00b40c:	8808f000 	0x8808f000
1c00b410:	00000070 	0x00000070
1c00b414:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c00b418:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c00b41c:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c00b42c:	e0000000 	0xe0000000
1c00b430:	00020418 	0x00020418
1c00b434:	07000000 	0x07000000
1c00b438:	00402018 	0x00402018
1c00b43c:	18040200 	pcaddi	$r0,8208(0x2010)
1c00b440:	000000e0 	0x000000e0
1c00b444:	18204000 	pcaddi	$r0,66048(0x10200)
1c00b448:	00000007 	0x00000007
1c00b44c:	f0804040 	0xf0804040
1c00b450:	00404080 	0x00404080
1c00b454:	0f010202 	0x0f010202
1c00b458:	00020201 	0x00020201
1c00b45c:	f0000000 	0xf0000000
1c00b460:	00000000 	0x00000000
1c00b464:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c00b468:	00010101 	0x00010101
	...
1c00b474:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c00b484:	01010100 	fadd.d	$f0,$f8,$f0
1c00b488:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c00b494:	00303000 	0x00303000
	...
1c00b4a0:	04186080 	csrxchg	$r0,$r4,0x618
1c00b4a4:	06186000 	cacop	0x0,$r0,1560(0x618)
1c00b4a8:	00000001 	0x00000001
1c00b4ac:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00b4b0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b4b4:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c00b4b8:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b4bc:	f8101000 	0xf8101000
1c00b4c0:	00000000 	0x00000000
1c00b4c4:	3f202000 	0x3f202000
1c00b4c8:	00002020 	clo.d	$r0,$r1
1c00b4cc:	08087000 	0x08087000
1c00b4d0:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00b4d4:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00b4d8:	00302122 	0x00302122
1c00b4dc:	88083000 	0x88083000
1c00b4e0:	00304888 	0x00304888
1c00b4e4:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00b4e8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b4ec:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c00b4f0:	0000f810 	0x0000f810
1c00b4f4:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c00b4f8:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c00b4fc:	8808f800 	0x8808f800
1c00b500:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c00b504:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c00b508:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b50c:	8810e000 	0x8810e000
1c00b510:	00001888 	cto.w	$r8,$r4
1c00b514:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00b518:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b51c:	08083800 	0x08083800
1c00b520:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b524:	3f000000 	0x3f000000
1c00b528:	00000000 	0x00000000
1c00b52c:	08887000 	0x08887000
1c00b530:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00b534:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00b538:	001c2221 	mul.w	$r1,$r17,$r8
1c00b53c:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00b540:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b544:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c00b548:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c00b54c:	c0000000 	0xc0000000
1c00b550:	000000c0 	0x000000c0
1c00b554:	30000000 	0x30000000
1c00b558:	00000030 	0x00000030
1c00b55c:	80000000 	0x80000000
1c00b560:	00000000 	0x00000000
1c00b564:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c013564 <_sidata+0x74dc>
1c00b568:	00000000 	0x00000000
1c00b56c:	40800000 	beqz	$r0,32768(0x8000) # 1c01356c <_sidata+0x74e4>
1c00b570:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00b574:	04020100 	csrxchg	$r0,$r8,0x80
1c00b578:	00201008 	div.w	$r8,$r0,$r4
1c00b57c:	40404040 	beqz	$r2,16448(0x4040) # 1c00f5bc <_sidata+0x3534>
1c00b580:	00404040 	0x00404040
1c00b584:	04040404 	csrrd	$r4,0x101
1c00b588:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c00b58c:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00b590:	00008040 	0x00008040
1c00b594:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c00b598:	00010204 	0x00010204
1c00b59c:	08487000 	0x08487000
1c00b5a0:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00b5a4:	30000000 	0x30000000
1c00b5a8:	00000136 	0x00000136
1c00b5ac:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00b5b0:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00b5b4:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c00b5b8:	000b1423 	0x000b1423
1c00b5bc:	38c00000 	0x38c00000
1c00b5c0:	000000e0 	0x000000e0
1c00b5c4:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c00b5c8:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00b5cc:	8888f808 	0x8888f808
1c00b5d0:	00007088 	0x00007088
1c00b5d4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b5d8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b5dc:	080830c0 	0x080830c0
1c00b5e0:	00380808 	0x00380808
1c00b5e4:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00b5e8:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00b5ec:	0808f808 	0x0808f808
1c00b5f0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b5f4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b5f8:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b5fc:	8888f808 	0x8888f808
1c00b600:	001008e8 	add.w	$r8,$r7,$r2
1c00b604:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b608:	00182023 	sra.w	$r3,$r1,$r8
1c00b60c:	8888f808 	0x8888f808
1c00b610:	001008e8 	add.w	$r8,$r7,$r2
1c00b614:	00203f20 	div.w	$r0,$r25,$r15
1c00b618:	00000003 	0x00000003
1c00b61c:	080830c0 	0x080830c0
1c00b620:	00003808 	revb.2w	$r8,$r0
1c00b624:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00b628:	00021e22 	0x00021e22
1c00b62c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b630:	08f80800 	0x08f80800
1c00b634:	01213f20 	0x01213f20
1c00b638:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c00b63c:	f8080800 	0xf8080800
1c00b640:	00000808 	0x00000808
1c00b644:	3f202000 	0x3f202000
1c00b648:	00002020 	clo.d	$r0,$r1
1c00b64c:	08080000 	0x08080000
1c00b650:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00b654:	808080c0 	0x808080c0
1c00b658:	0000007f 	0x0000007f
1c00b65c:	c088f808 	0xc088f808
1c00b660:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00b664:	01203f20 	0x01203f20
1c00b668:	00203826 	div.w	$r6,$r1,$r14
1c00b66c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b670:	00000000 	0x00000000
1c00b674:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b678:	00302020 	0x00302020
1c00b67c:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00b680:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00b684:	3f003f20 	0x3f003f20
1c00b688:	00203f00 	div.w	$r0,$r24,$r15
1c00b68c:	c030f808 	0xc030f808
1c00b690:	08f80800 	0x08f80800
1c00b694:	00203f20 	div.w	$r0,$r25,$r15
1c00b698:	003f1807 	0x003f1807
1c00b69c:	080810e0 	0x080810e0
1c00b6a0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b6a4:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c00b6a8:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b6ac:	0808f808 	0x0808f808
1c00b6b0:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00b6b4:	01213f20 	0x01213f20
1c00b6b8:	00000101 	0x00000101
1c00b6bc:	080810e0 	0x080810e0
1c00b6c0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b6c4:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c00b6c8:	004f5038 	0x004f5038
1c00b6cc:	8888f808 	0x8888f808
1c00b6d0:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00b6d4:	00203f20 	div.w	$r0,$r25,$r15
1c00b6d8:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00b6dc:	08887000 	0x08887000
1c00b6e0:	00380808 	0x00380808
1c00b6e4:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c00b6e8:	001c2221 	mul.w	$r1,$r17,$r8
1c00b6ec:	f8080818 	0xf8080818
1c00b6f0:	00180808 	sra.w	$r8,$r0,$r2
1c00b6f4:	3f200000 	0x3f200000
1c00b6f8:	00000020 	0x00000020
1c00b6fc:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b700:	08f80800 	0x08f80800
1c00b704:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b708:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00b70c:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00b710:	0838c800 	0x0838c800
1c00b714:	38070000 	0x38070000
1c00b718:	0000010e 	0x0000010e
1c00b71c:	f80008f8 	0xf80008f8
1c00b720:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c00b724:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c00b728:	00033c07 	0x00033c07
1c00b72c:	80681808 	0x80681808
1c00b730:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00b734:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c00b738:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c00b73c:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c00b740:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b744:	3f200000 	0x3f200000
1c00b748:	00000020 	0x00000020
1c00b74c:	08080810 	0x08080810
1c00b750:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b754:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c00b758:	00182020 	sra.w	$r0,$r1,$r8
1c00b75c:	fe000000 	0xfe000000
1c00b760:	00020202 	0x00020202
1c00b764:	7f000000 	0x7f000000
1c00b768:	00404040 	0x00404040
1c00b76c:	c0300c00 	0xc0300c00
1c00b770:	00000000 	0x00000000
1c00b774:	01000000 	0x01000000
1c00b778:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c00b77c:	02020200 	slti	$r0,$r16,128(0x80)
1c00b780:	000000fe 	0x000000fe
1c00b784:	40404000 	beqz	$r0,16448(0x4040) # 1c00f7c4 <_sidata+0x373c>
1c00b788:	0000007f 	0x0000007f
1c00b78c:	02040000 	slti	$r0,$r0,256(0x100)
1c00b790:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c00b7a4:	80808080 	0x80808080
1c00b7a8:	80808080 	0x80808080
1c00b7ac:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c00b7bc:	80800000 	0x80800000
1c00b7c0:	00008080 	0x00008080
1c00b7c4:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c00b7c8:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c00b7cc:	8000f808 	0x8000f808
1c00b7d0:	00000080 	0x00000080
1c00b7d4:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00b7d8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b7dc:	80000000 	0x80000000
1c00b7e0:	00008080 	0x00008080
1c00b7e4:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b7e8:	00112020 	sub.w	$r0,$r1,$r8
1c00b7ec:	80000000 	0x80000000
1c00b7f0:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c00b7f4:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b7f8:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b7fc:	80800000 	0x80800000
1c00b800:	00008080 	0x00008080
1c00b804:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c00b808:	00132222 	maskeqz	$r2,$r17,$r8
1c00b80c:	f0808000 	0xf0808000
1c00b810:	18888888 	pcaddi	$r8,279620(0x44444)
1c00b814:	3f202000 	0x3f202000
1c00b818:	00002020 	clo.d	$r0,$r1
1c00b81c:	80800000 	0x80800000
1c00b820:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b824:	94946b00 	0x94946b00
1c00b828:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c00b82c:	8000f808 	0x8000f808
1c00b830:	00008080 	0x00008080
1c00b834:	00213f20 	div.wu	$r0,$r25,$r15
1c00b838:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00b83c:	98988000 	0x98988000
1c00b840:	00000000 	0x00000000
1c00b844:	3f202000 	0x3f202000
1c00b848:	00002020 	clo.d	$r0,$r1
1c00b84c:	80000000 	0x80000000
1c00b850:	00009898 	0x00009898
1c00b854:	8080c000 	0x8080c000
1c00b858:	00007f80 	0x00007f80
1c00b85c:	0000f808 	0x0000f808
1c00b860:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b864:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c00b868:	0020302d 	div.w	$r13,$r1,$r12
1c00b86c:	f8080800 	0xf8080800
1c00b870:	00000000 	0x00000000
1c00b874:	3f202000 	0x3f202000
1c00b878:	00002020 	clo.d	$r0,$r1
1c00b87c:	80808080 	0x80808080
1c00b880:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b884:	00203f20 	div.w	$r0,$r25,$r15
1c00b888:	3f00203f 	0x3f00203f
1c00b88c:	80008080 	0x80008080
1c00b890:	00008080 	0x00008080
1c00b894:	00213f20 	div.wu	$r0,$r25,$r15
1c00b898:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00b89c:	80800000 	0x80800000
1c00b8a0:	00008080 	0x00008080
1c00b8a4:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b8a8:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00b8ac:	80008080 	0x80008080
1c00b8b0:	00000080 	0x00000080
1c00b8b4:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c00b8b8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b8bc:	80000000 	0x80000000
1c00b8c0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8c4:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b8c8:	80ffa020 	0x80ffa020
1c00b8cc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8d0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8d4:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00b8d8:	00010020 	asrtle.d	$r1,$r0
1c00b8dc:	80800000 	0x80800000
1c00b8e0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8e4:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00b8e8:	00192424 	srl.d	$r4,$r1,$r9
1c00b8ec:	e0808000 	0xe0808000
1c00b8f0:	00008080 	0x00008080
1c00b8f4:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00b8f8:	00002020 	clo.d	$r0,$r1
1c00b8fc:	00008080 	0x00008080
1c00b900:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b904:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b908:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b90c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b910:	80808000 	0x80808000
1c00b914:	300e0100 	0x300e0100
1c00b918:	00010608 	0x00010608
1c00b91c:	80008080 	0x80008080
1c00b920:	80808000 	0x80808000
1c00b924:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c00b928:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c00b92c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b930:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b934:	2e312000 	0x2e312000
1c00b938:	0020310e 	div.w	$r14,$r8,$r12
1c00b93c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b940:	80808000 	0x80808000
1c00b944:	708e8180 	0x708e8180
1c00b948:	00010618 	0x00010618
1c00b94c:	80808000 	0x80808000
1c00b950:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b954:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00b958:	00302122 	0x00302122
1c00b95c:	00000000 	0x00000000
1c00b960:	02027c80 	slti	$r0,$r4,159(0x9f)
1c00b964:	00000000 	0x00000000
1c00b968:	40403f00 	beqz	$r24,16444(0x403c) # 1c00f9a4 <_sidata+0x391c>
1c00b96c:	00000000 	0x00000000
1c00b970:	000000ff 	0x000000ff
1c00b974:	00000000 	0x00000000
1c00b978:	000000ff 	0x000000ff
1c00b97c:	7c020200 	0x7c020200
1c00b980:	00000080 	0x00000080
1c00b984:	3f404000 	0x3f404000
1c00b988:	00000000 	0x00000000
1c00b98c:	01010600 	fadd.d	$f0,$f16,$f1
1c00b990:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c00b99c <gImage_cc>:
	...
1c00b9e8:	c0c08080 	0xc0c08080
1c00b9ec:	80c0c0c0 	0x80c0c0c0
1c00b9f0:	00000080 	0x00000080
	...
1c00ba18:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c00ba1c:	01000101 	0x01000101
1c00ba20:	ff070301 	0xff070301
1c00ba24:	0000f0fe 	0x0000f0fe
	...
1c00ba44:	fe000000 	0xfe000000
1c00ba48:	ffffffff 	0xffffffff
1c00ba4c:	0f9fffff 	0x0f9fffff
1c00ba50:	ff9f0f0f 	0xff9f0f0f
1c00ba54:	ffffffff 	0xffffffff
1c00ba58:	0000feff 	0x0000feff
	...
1c00ba78:	3f1f0700 	0x3f1f0700
1c00ba7c:	ffff7f7f 	0xffff7f7f
1c00ba80:	f8f8ffff 	0xf8f8ffff
1c00ba84:	7fffffff 	0x7fffffff
1c00ba88:	071f3f7f 	0x071f3f7f
	...
1c00bb00:	1c00834c 	pcaddu12i	$r12,1050(0x41a)
1c00bb04:	1c0076ac 	pcaddu12i	$r12,949(0x3b5)
1c00bb08:	1c007744 	pcaddu12i	$r4,954(0x3ba)
1c00bb0c:	1c00784c 	pcaddu12i	$r12,962(0x3c2)
1c00bb10:	1c0078b0 	pcaddu12i	$r16,965(0x3c5)
1c00bb14:	1c007914 	pcaddu12i	$r20,968(0x3c8)
1c00bb18:	1c007a1c 	pcaddu12i	$r28,976(0x3d0)
1c00bb1c:	1c007b24 	pcaddu12i	$r4,985(0x3d9)
1c00bb20:	1c007c2c 	pcaddu12i	$r12,993(0x3e1)
1c00bb24:	1c007c90 	pcaddu12i	$r16,996(0x3e4)
1c00bb28:	1c007cf4 	pcaddu12i	$r20,999(0x3e7)
1c00bb2c:	1c007d58 	pcaddu12i	$r24,1002(0x3ea)
1c00bb30:	1c007e28 	pcaddu12i	$r8,1009(0x3f1)
1c00bb34:	1c007e8c 	pcaddu12i	$r12,1012(0x3f4)
1c00bb38:	1c007f5c 	pcaddu12i	$r28,1018(0x3fa)
1c00bb3c:	1c007fc0 	pcaddu12i	$r0,1022(0x3fe)
1c00bb40:	1c008038 	pcaddu12i	$r24,1025(0x401)
1c00bb44:	1c008140 	pcaddu12i	$r0,1034(0x40a)
1c00bb48:	1c0081b8 	pcaddu12i	$r24,1037(0x40d)
1c00bb4c:	1c008288 	pcaddu12i	$r8,1044(0x414)
1c00bb50:	00002e31 	ctz.d	$r17,$r17
1c00bb54:	00002e32 	ctz.d	$r18,$r17
1c00bb58:	00002e33 	ctz.d	$r19,$r17
1c00bb5c:	0000002a 	0x0000002a
1c00bb60:	00000020 	0x00000020
1c00bb64:	1c008c88 	pcaddu12i	$r8,1124(0x464)
1c00bb68:	1c008428 	pcaddu12i	$r8,1057(0x421)
1c00bb6c:	1c00848c 	pcaddu12i	$r12,1060(0x424)
1c00bb70:	1c008540 	pcaddu12i	$r0,1066(0x42a)
1c00bb74:	1c00862c 	pcaddu12i	$r12,1073(0x431)
1c00bb78:	1c008680 	pcaddu12i	$r0,1076(0x434)
1c00bb7c:	1c0086b0 	pcaddu12i	$r16,1077(0x435)
1c00bb80:	1c0086e0 	pcaddu12i	$r0,1079(0x437)
1c00bb84:	1c008738 	pcaddu12i	$r24,1081(0x439)
1c00bb88:	1c008774 	pcaddu12i	$r20,1083(0x43b)
1c00bb8c:	1c008790 	pcaddu12i	$r16,1084(0x43c)
1c00bb90:	1c008870 	pcaddu12i	$r16,1091(0x443)
1c00bb94:	1c00895c 	pcaddu12i	$r28,1098(0x44a)
1c00bb98:	1c008988 	pcaddu12i	$r8,1100(0x44c)
1c00bb9c:	1c0089b8 	pcaddu12i	$r24,1101(0x44d)
1c00bba0:	1c0089e4 	pcaddu12i	$r4,1103(0x44f)
1c00bba4:	1c008a20 	pcaddu12i	$r0,1105(0x451)
1c00bba8:	1c008a7c 	pcaddu12i	$r28,1107(0x453)
1c00bbac:	1c008adc 	pcaddu12i	$r28,1110(0x456)
1c00bbb0:	1c008b0c 	pcaddu12i	$r12,1112(0x458)
1c00bbb4:	1c008bf8 	pcaddu12i	$r24,1119(0x45f)
1c00bbb8:	1c008c58 	pcaddu12i	$r24,1122(0x462)
1c00bbbc:	3c200a0d 	0x3c200a0d
1c00bbc0:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c0227e0 <_sidata+0x16758>
1c00bbc4:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c00bbc8:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfedc2c <_start-0x123d4>
1c00bbcc:	3a636e75 	0x3a636e75
1c00bbd0:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00bbd4:	0a0d3e20 	0x0a0d3e20
1c00bbd8:	00000000 	0x00000000
1c00bbdc:	2e2e2e0a 	0x2e2e2e0a
1c00bbe0:	2e2e2e2e 	0x2e2e2e2e
1c00bbe4:	2e2e2e2e 	0x2e2e2e2e
1c00bbe8:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c00bbec:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c1a1b40 <_sidata+0x195ab8>
1c00bbf0:	2e2e544e 	0x2e2e544e
1c00bbf4:	2e2e2e2e 	0x2e2e2e2e
1c00bbf8:	2e2e2e2e 	0x2e2e2e2e
1c00bbfc:	2e2e2e2e 	0x2e2e2e2e
1c00bc00:	00000d0a 	0x00000d0a
1c00bc04:	2d2d2d0a 	0x2d2d2d0a
1c00bc08:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c003174 <Add_FR+0x474>
1c00bc0c:	746e4968 	0x746e4968
1c00bc10:	79654b3a 	0x79654b3a
1c00bc14:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bff1d7c <_start-0xe284>
1c00bc18:	3a6c656e 	0x3a6c656e
1c00bc1c:	78257830 	0x78257830
1c00bc20:	0000000a 	0x0000000a
1c00bc24:	2e2e2e0a 	0x2e2e2e0a
1c00bc28:	2e2e2e2e 	0x2e2e2e2e
1c00bc2c:	2e2e2e2e 	0x2e2e2e2e
1c00bc30:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39fe5c <_sidata+0x393dd4>
1c00bc34:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd20290 <_start-0x2dfd70>
1c00bc38:	2e2e4c49 	0x2e2e4c49
1c00bc3c:	2e2e2e2e 	0x2e2e2e2e
1c00bc40:	2e2e2e2e 	0x2e2e2e2e
1c00bc44:	2e2e2e2e 	0x2e2e2e2e
1c00bc48:	00000d0a 	0x00000d0a
1c00bc4c:	2e2e2e0a 	0x2e2e2e0a
1c00bc50:	2e2e2e2e 	0x2e2e2e2e
1c00bc54:	2e2e2e2e 	0x2e2e2e2e
1c00bc58:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38fd84 <_sidata+0x383cfc>
1c00bc5c:	2e2e2e43 	0x2e2e2e43
1c00bc60:	2e2e2e2e 	0x2e2e2e2e
1c00bc64:	2e2e2e2e 	0x2e2e2e2e
1c00bc68:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00bc6c:	0000000d 	0x0000000d
1c00bc70:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c022ed4 <_sidata+0x16e4c>
1c00bc74:	72656870 	0x72656870
1c00bc78:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c00bc7c:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c0229e4 <_sidata+0x1695c>
1c00bc80:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c011fa0 <_sidata+0x5f18>
1c00bc84:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00bc88:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c0230f4 <_sidata+0x1706c>
1c00bc8c:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00bc90:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c00bc94:	00000000 	0x00000000
1c00bc98:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c022f04 <_sidata+0x16e7c>
1c00bc9c:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c0225f0 <_sidata+0x16568>
1c00bca0:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffdd10 <_start-0x22f0>
1c00bca4:	7261656c 	0x7261656c
1c00bca8:	746e6920 	0x746e6920
1c00bcac:	75727265 	0x75727265
1c00bcb0:	2e2e7470 	0x2e2e7470
1c00bcb4:	0000000a 	0x0000000a

1c00bcb8 <Ext_IrqHandle>:
1c00bcb8:	1c00a104 	pcaddu12i	$r4,1288(0x508)
1c00bcbc:	1c00a150 	pcaddu12i	$r16,1290(0x50a)
1c00bcc0:	1c00a19c 	pcaddu12i	$r28,1292(0x50c)
1c00bcc4:	1c00a1e8 	pcaddu12i	$r8,1295(0x50f)
1c00bcc8:	1c00a234 	pcaddu12i	$r20,1297(0x511)
1c00bccc:	1c00a280 	pcaddu12i	$r0,1300(0x514)
1c00bcd0:	1c00a2cc 	pcaddu12i	$r12,1302(0x516)
1c00bcd4:	1c00a318 	pcaddu12i	$r24,1304(0x518)
1c00bcd8:	1c00a364 	pcaddu12i	$r4,1307(0x51b)
1c00bcdc:	1c00a3b0 	pcaddu12i	$r16,1309(0x51d)
1c00bce0:	1c00a3fc 	pcaddu12i	$r28,1311(0x51f)
1c00bce4:	1c00a448 	pcaddu12i	$r8,1314(0x522)
1c00bce8:	1c00a494 	pcaddu12i	$r20,1316(0x524)
1c00bcec:	1c00a4e0 	pcaddu12i	$r0,1319(0x527)
1c00bcf0:	1c00a52c 	pcaddu12i	$r12,1321(0x529)
1c00bcf4:	1c00a578 	pcaddu12i	$r24,1323(0x52b)
1c00bcf8:	1c00a5c4 	pcaddu12i	$r4,1326(0x52e)
1c00bcfc:	1c00a610 	pcaddu12i	$r16,1328(0x530)
1c00bd00:	1c00a65c 	pcaddu12i	$r28,1330(0x532)
1c00bd04:	1c00a6a8 	pcaddu12i	$r8,1333(0x535)
1c00bd08:	1c00a6f4 	pcaddu12i	$r20,1335(0x537)
1c00bd0c:	1c00a740 	pcaddu12i	$r0,1338(0x53a)
1c00bd10:	1c00a78c 	pcaddu12i	$r12,1340(0x53c)
1c00bd14:	1c00a7d8 	pcaddu12i	$r24,1342(0x53e)
1c00bd18:	1c00a824 	pcaddu12i	$r4,1345(0x541)
1c00bd1c:	1c00a870 	pcaddu12i	$r16,1347(0x543)
1c00bd20:	1c00a8bc 	pcaddu12i	$r28,1349(0x545)
1c00bd24:	1c00a908 	pcaddu12i	$r8,1352(0x548)
1c00bd28:	1c00a954 	pcaddu12i	$r20,1354(0x54a)
1c00bd2c:	1c00a9a0 	pcaddu12i	$r0,1357(0x54d)
1c00bd30:	1c00a9ec 	pcaddu12i	$r12,1359(0x54f)
1c00bd34:	1c00aa38 	pcaddu12i	$r24,1361(0x551)
1c00bd38:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd3c:	1c00acd4 	pcaddu12i	$r20,1382(0x566)
1c00bd40:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd44:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd48:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd4c:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd50:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd54:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd58:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd5c:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd60:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd64:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd68:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd6c:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd70:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd74:	1c00ad24 	pcaddu12i	$r4,1385(0x569)
1c00bd78:	1c00acf0 	pcaddu12i	$r16,1383(0x567)

1c00bd7c <__FUNCTION__.1751>:
1c00bd7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0231f4 <_sidata+0x1716c>
1c00bd80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022de4 <_sidata+0x16d5c>
1c00bd84:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffede4 <_start-0x121c>
1c00bd88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002ef8 <Add_FR+0x1f8>
1c00bd8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012bec <_sidata+0x6b64>
1c00bd90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bd94 <__FUNCTION__.1755>:
1c00bd94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02320c <_sidata+0x17184>
1c00bd98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022dfc <_sidata+0x16d74>
1c00bd9c:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffeefc <_start-0x1104>
1c00bda0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f10 <Add_FR+0x210>
1c00bda4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c04 <_sidata+0x6b7c>
1c00bda8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bdac <__FUNCTION__.1759>:
1c00bdac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023224 <_sidata+0x1719c>
1c00bdb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e14 <_sidata+0x16d8c>
1c00bdb4:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bfff014 <_start-0xfec>
1c00bdb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f28 <Add_FR+0x228>
1c00bdbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c1c <_sidata+0x6b94>
1c00bdc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bdc4 <__FUNCTION__.1763>:
1c00bdc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02323c <_sidata+0x171b4>
1c00bdc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e2c <_sidata+0x16da4>
1c00bdcc:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bfff12c <_start-0xed4>
1c00bdd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f40 <Add_FR+0x240>
1c00bdd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c34 <_sidata+0x6bac>
1c00bdd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bddc <__FUNCTION__.1767>:
1c00bddc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023254 <_sidata+0x171cc>
1c00bde0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e44 <_sidata+0x16dbc>
1c00bde4:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bfff244 <_start-0xdbc>
1c00bde8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f58 <Add_FR+0x258>
1c00bdec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c4c <_sidata+0x6bc4>
1c00bdf0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bdf4 <__FUNCTION__.1771>:
1c00bdf4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02326c <_sidata+0x171e4>
1c00bdf8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e5c <_sidata+0x16dd4>
1c00bdfc:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bfff35c <_start-0xca4>
1c00be00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f70 <Add_FR+0x270>
1c00be04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c64 <_sidata+0x6bdc>
1c00be08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be0c <__FUNCTION__.1775>:
1c00be0c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023284 <_sidata+0x171fc>
1c00be10:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e74 <_sidata+0x16dec>
1c00be14:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bfff474 <_start-0xb8c>
1c00be18:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f88 <Add_FR+0x288>
1c00be1c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c7c <_sidata+0x6bf4>
1c00be20:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be24 <__FUNCTION__.1779>:
1c00be24:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02329c <_sidata+0x17214>
1c00be28:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e8c <_sidata+0x16e04>
1c00be2c:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bfff58c <_start-0xa74>
1c00be30:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fa0 <Add_FR+0x2a0>
1c00be34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c94 <_sidata+0x6c0c>
1c00be38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be3c <__FUNCTION__.1783>:
1c00be3c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232b4 <_sidata+0x1722c>
1c00be40:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ea4 <_sidata+0x16e1c>
1c00be44:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffeea4 <_start-0x115c>
1c00be48:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fb8 <Add_FR+0x2b8>
1c00be4c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cac <_sidata+0x6c24>
1c00be50:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be54 <__FUNCTION__.1787>:
1c00be54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232cc <_sidata+0x17244>
1c00be58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ebc <_sidata+0x16e34>
1c00be5c:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffefbc <_start-0x1044>
1c00be60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fd0 <Add_FR+0x2d0>
1c00be64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cc4 <_sidata+0x6c3c>
1c00be68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be6c <__FUNCTION__.1791>:
1c00be6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232e4 <_sidata+0x1725c>
1c00be70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ed4 <_sidata+0x16e4c>
1c00be74:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bfff0d4 <_start-0xf2c>
1c00be78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fe8 <Add_FR+0x2e8>
1c00be7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cdc <_sidata+0x6c54>
1c00be80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be84 <__FUNCTION__.1795>:
1c00be84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232fc <_sidata+0x17274>
1c00be88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022eec <_sidata+0x16e64>
1c00be8c:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bfff1ec <_start-0xe14>
1c00be90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003000 <Add_FR+0x300>
1c00be94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cf4 <_sidata+0x6c6c>
1c00be98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be9c <__FUNCTION__.1799>:
1c00be9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023314 <_sidata+0x1728c>
1c00bea0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f04 <_sidata+0x16e7c>
1c00bea4:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bfff304 <_start-0xcfc>
1c00bea8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003018 <Add_FR+0x318>
1c00beac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d0c <_sidata+0x6c84>
1c00beb0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00beb4 <__FUNCTION__.1803>:
1c00beb4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02332c <_sidata+0x172a4>
1c00beb8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f1c <_sidata+0x16e94>
1c00bebc:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bfff41c <_start-0xbe4>
1c00bec0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003030 <Add_FR+0x330>
1c00bec4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d24 <_sidata+0x6c9c>
1c00bec8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00becc <__FUNCTION__.1807>:
1c00becc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023344 <_sidata+0x172bc>
1c00bed0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f34 <_sidata+0x16eac>
1c00bed4:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bfff534 <_start-0xacc>
1c00bed8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003048 <Add_FR+0x348>
1c00bedc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d3c <_sidata+0x6cb4>
1c00bee0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bee4 <__FUNCTION__.1811>:
1c00bee4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02335c <_sidata+0x172d4>
1c00bee8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f4c <_sidata+0x16ec4>
1c00beec:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bfff64c <_start-0x9b4>
1c00bef0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003060 <Add_FR+0x360>
1c00bef4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d54 <_sidata+0x6ccc>
1c00bef8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00befc <__FUNCTION__.1815>:
1c00befc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023374 <_sidata+0x172ec>
1c00bf00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f64 <_sidata+0x16edc>
1c00bf04:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffef64 <_start-0x109c>
1c00bf08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003078 <Add_FR+0x378>
1c00bf0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d6c <_sidata+0x6ce4>
1c00bf10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf14 <__FUNCTION__.1819>:
1c00bf14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02338c <_sidata+0x17304>
1c00bf18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f7c <_sidata+0x16ef4>
1c00bf1c:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bfff07c <_start-0xf84>
1c00bf20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003090 <Add_FR+0x390>
1c00bf24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d84 <_sidata+0x6cfc>
1c00bf28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf2c <__FUNCTION__.1823>:
1c00bf2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233a4 <_sidata+0x1731c>
1c00bf30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f94 <_sidata+0x16f0c>
1c00bf34:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bfff194 <_start-0xe6c>
1c00bf38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030a8 <Add_FR+0x3a8>
1c00bf3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d9c <_sidata+0x6d14>
1c00bf40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf44 <__FUNCTION__.1827>:
1c00bf44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233bc <_sidata+0x17334>
1c00bf48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fac <_sidata+0x16f24>
1c00bf4c:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bfff2ac <_start-0xd54>
1c00bf50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030c0 <Add_FR+0x3c0>
1c00bf54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012db4 <_sidata+0x6d2c>
1c00bf58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf5c <__FUNCTION__.1831>:
1c00bf5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233d4 <_sidata+0x1734c>
1c00bf60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fc4 <_sidata+0x16f3c>
1c00bf64:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bfff3c4 <_start-0xc3c>
1c00bf68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030d8 <Add_FR+0x3d8>
1c00bf6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dcc <_sidata+0x6d44>
1c00bf70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf74 <__FUNCTION__.1835>:
1c00bf74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233ec <_sidata+0x17364>
1c00bf78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fdc <_sidata+0x16f54>
1c00bf7c:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bfff4dc <_start-0xb24>
1c00bf80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030f0 <Add_FR+0x3f0>
1c00bf84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012de4 <_sidata+0x6d5c>
1c00bf88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf8c <__FUNCTION__.1839>:
1c00bf8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023404 <_sidata+0x1737c>
1c00bf90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ff4 <_sidata+0x16f6c>
1c00bf94:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bfff5f4 <_start-0xa0c>
1c00bf98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003108 <Add_FR+0x408>
1c00bf9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dfc <_sidata+0x6d74>
1c00bfa0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfa4 <__FUNCTION__.1843>:
1c00bfa4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02341c <_sidata+0x17394>
1c00bfa8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02300c <_sidata+0x16f84>
1c00bfac:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bfff70c <_start-0x8f4>
1c00bfb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003120 <Add_FR+0x420>
1c00bfb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e14 <_sidata+0x6d8c>
1c00bfb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfbc <__FUNCTION__.1847>:
1c00bfbc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023434 <_sidata+0x173ac>
1c00bfc0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023024 <_sidata+0x16f9c>
1c00bfc4:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bfff028 <_start-0xfd8>
1c00bfc8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003138 <Add_FR+0x438>
1c00bfcc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e2c <_sidata+0x6da4>
1c00bfd0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfd4 <__FUNCTION__.1851>:
1c00bfd4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02344c <_sidata+0x173c4>
1c00bfd8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02303c <_sidata+0x16fb4>
1c00bfdc:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bfff140 <_start-0xec0>
1c00bfe0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003150 <Add_FR+0x450>
1c00bfe4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e44 <_sidata+0x6dbc>
1c00bfe8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfec <__FUNCTION__.1855>:
1c00bfec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023464 <_sidata+0x173dc>
1c00bff0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023054 <_sidata+0x16fcc>
1c00bff4:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bfff258 <_start-0xda8>
1c00bff8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003168 <Add_FR+0x468>
1c00bffc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e5c <_sidata+0x6dd4>
1c00c000:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c004 <__FUNCTION__.1859>:
1c00c004:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02347c <_sidata+0x173f4>
1c00c008:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02306c <_sidata+0x16fe4>
1c00c00c:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bfff370 <_start-0xc90>
1c00c010:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003180 <Add_FR+0x480>
1c00c014:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e74 <_sidata+0x6dec>
1c00c018:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c01c <__FUNCTION__.1863>:
1c00c01c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023494 <_sidata+0x1740c>
1c00c020:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023084 <_sidata+0x16ffc>
1c00c024:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bfff488 <_start-0xb78>
1c00c028:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003198 <Add_FR+0x498>
1c00c02c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e8c <_sidata+0x6e04>
1c00c030:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c034 <__FUNCTION__.1867>:
1c00c034:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234ac <_sidata+0x17424>
1c00c038:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02309c <_sidata+0x17014>
1c00c03c:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bfff5a0 <_start-0xa60>
1c00c040:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031b0 <Add_FR+0x4b0>
1c00c044:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ea4 <_sidata+0x6e1c>
1c00c048:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c04c <__FUNCTION__.1871>:
1c00c04c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234c4 <_sidata+0x1743c>
1c00c050:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230b4 <_sidata+0x1702c>
1c00c054:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bfff6b8 <_start-0x948>
1c00c058:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031c8 <Add_FR+0x4c8>
1c00c05c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ebc <_sidata+0x6e34>
1c00c060:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c064 <__FUNCTION__.1875>:
1c00c064:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234dc <_sidata+0x17454>
1c00c068:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230cc <_sidata+0x17044>
1c00c06c:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bfff7d0 <_start-0x830>
1c00c070:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031e0 <Add_FR+0x4e0>
1c00c074:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ed4 <_sidata+0x6e4c>
1c00c078:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c07c <__FUNCTION__.1884>:
1c00c07c:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c0034f4 <press_FR+0x1fc>
1c00c080:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ee0 <_sidata+0x6e58>
1c00c084:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

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
8000102c:	01e84800 	0x01e84800

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
800010b4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb358 <_sidata+0x63fdf2d0>
800010b8:	81091121 	0x81091121
800010bc:	00000001 	0x00000001
800010c0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010c4:	7e82420b 	0x7e82420b
800010c8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010cc:	00004623 	revh.d	$r3,$r17
800010d0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbd00 <_sidata+0x63fefc78>
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
800011e4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3526c <_sidata+0x63c291e4>
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
80001218:	54547f54 	bl	-45067140(0xd50547c) # 7d506694 <_sidata+0x614fa60c>
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
800012f8:	54547f54 	bl	-45067140(0xd50547c) # 7d506774 <_sidata+0x614fa6ec>
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
80001328:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1424 <_sidata+0x63fe539c>
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
80001404:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09468 <_sidata+0x63bfd3e0>
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
80001468:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55594 <_sidata+0x63c4950c>
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
800014c4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054d4 <_sidata+0x63bf944c>
800014c8:	447f4444 	bnez	$r2,1081156(0x107f44) # 8010940c <_edata+0x107970>
800014cc:	00404444 	0x00404444
800014d0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4d0 <_sidata+0x63fe1448>
800014d4:	52525252 	b	-112569776(0x94a5250) # 794a6724 <_sidata+0x5d49a69c>
800014d8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6728 <_sidata+0x63fda6a0>
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
80001638:	52321e32 	b	-120966628(0x8ca321c) # 78ca4854 <_sidata+0x5cc987cc>
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
80001698:	54547f54 	bl	-45067140(0xd50547c) # 7d506b14 <_sidata+0x614faa8c>
8000169c:	00404454 	0x00404454
800016a0:	017e0404 	0x017e0404
800016a4:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
800016a8:	95551515 	0x95551515
800016ac:	0000007f 	0x0000007f
800016b0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe39ac <_sidata+0x63fd7924>
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
80001750:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc380 <_sidata+0x63ff02f8>
80001754:	f8080810 	0xf8080810
80001758:	f8080e09 	0xf8080e09
8000175c:	00000808 	0x00000808
80001760:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001764:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001768:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000176c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001770:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001774:	54544400 	bl	21572(0x5444) # 80006bb8 <_edata+0x511c>
80001778:	54547f54 	bl	-45067140(0xd50547c) # 7d506bf4 <_sidata+0x614fab6c>
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
80001850:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc480 <_sidata+0x63ff03f8>
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
800018e4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09948 <_sidata+0x63bfd8c0>
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
80001938:	54547f54 	bl	-45067140(0xd50547c) # 7d506db4 <_sidata+0x614fad2c>
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
800019f4:	54555654 	bl	-112175788(0x9505554) # 79506f48 <_sidata+0x5d4faec0>
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
