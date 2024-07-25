
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438016f 	lu12i.w	$r15,114699(0x1c00b)
1c00000c:	039be1ef 	ori	$r15,$r15,0x6f8
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
1c000030:	03aa41ef 	ori	$r15,$r15,0xa90
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
1c0000a0:	546a4c00 	bl	27212(0x6a4c) # 1c006aec <main>
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
1c001090:	54913400 	bl	37172(0x9134) # 1c00a1c4 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54917400 	bl	37236(0x9174) # 1c00a20c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5491f800 	bl	37368(0x91f8) # 1c00a298 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54922c00 	bl	37420(0x922c) # 1c00a2d4 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54904400 	bl	36932(0x9044) # 1c00a0f4 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5493d000 	bl	37840(0x93d0) # 1c00a488 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5492e400 	bl	37604(0x92e4) # 1c00a3ac <INTC_Handler>
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
1c00144c:	1c00012c 	pcaddu12i	$r12,9(0x9)
1c001450:	0281d18c 	addi.w	$r12,$r12,116(0x74)
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
1c001fac:	544a6400 	bl	19044(0x4a64) # 1c006a10 <Buffer_write>
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

1c0022bc <JudgeStr>:
JudgeStr():
1c0022bc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0022c0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0022c4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0022c8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0022cc:	0015008c 	move	$r12,$r4
1c0022d0:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c0022d4:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c0022d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022dc:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c0022e0:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c0022e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0022e8:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0022ec:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0022f0:	02b4c18c 	addi.w	$r12,$r12,-720(0xd30)
1c0022f4:	2880018c 	ld.w	$r12,$r12,0
1c0022f8:	0044e18c 	srli.w	$r12,$r12,0x18
1c0022fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002300:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002304:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002308:	02b4618c 	addi.w	$r12,$r12,-744(0xd18)
1c00230c:	2880018c 	ld.w	$r12,$r12,0
1c002310:	0044c18c 	srli.w	$r12,$r12,0x10
1c002314:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002318:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00231c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002320:	02b4018c 	addi.w	$r12,$r12,-768(0xd00)
1c002324:	2880018c 	ld.w	$r12,$r12,0
1c002328:	0044a18c 	srli.w	$r12,$r12,0x8
1c00232c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002330:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c002334:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002338:	02b3a18c 	addi.w	$r12,$r12,-792(0xce8)
1c00233c:	2880018c 	ld.w	$r12,$r12,0
1c002340:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002344:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c002348:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00234c:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c002350:	293f8ec0 	st.b	$r0,$r22,-29(0xfe3)
1c002354:	03400000 	andi	$r0,$r0,0x0
1c002358:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00235c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002360:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002364:	0340058c 	andi	$r12,$r12,0x1
1c002368:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002358 <JudgeStr+0x9c>
1c00236c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002370:	5000c000 	b	192(0xc0) # 1c002430 <JudgeStr+0x174>
1c002374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002378:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00237c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002380:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002384:	44002980 	bnez	$r12,40(0x28) # 1c0023ac <JudgeStr+0xf0>
1c002388:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00238c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002390:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002394:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002398:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c00239c:	001535cd 	or	$r13,$r14,$r13
1c0023a0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0023a4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0023a8:	50001800 	b	24(0x18) # 1c0023c0 <JudgeStr+0x104>
1c0023ac:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023b8:	0340058c 	andi	$r12,$r12,0x1
1c0023bc:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002374 <JudgeStr+0xb8>
1c0023c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023c4:	44001d80 	bnez	$r12,28(0x1c) # 1c0023e0 <JudgeStr+0x124>
1c0023c8:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0023cc:	28b111ad 	ld.w	$r13,$r13,-956(0xc44)
1c0023d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023d4:	001031ac 	add.w	$r12,$r13,$r12
1c0023d8:	29000180 	st.b	$r0,$r12,0
1c0023dc:	50002400 	b	36(0x24) # 1c002400 <JudgeStr+0x144>
1c0023e0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023e4:	2a00018c 	ld.bu	$r12,$r12,0
1c0023e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0023ec:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0023f0:	28b081ce 	ld.w	$r14,$r14,-992(0xc20)
1c0023f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023f8:	001031cc 	add.w	$r12,$r14,$r12
1c0023fc:	2900018d 	st.b	$r13,$r12,0
1c002400:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002404:	28b031ad 	ld.w	$r13,$r13,-1012(0xc0c)
1c002408:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00240c:	001031ac 	add.w	$r12,$r13,$r12
1c002410:	2a00018c 	ld.bu	$r12,$r12,0
1c002414:	00150184 	move	$r4,$r12
1c002418:	54128800 	bl	4744(0x1288) # 1c0036a0 <uart_write>
1c00241c:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c002420:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002424:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002430:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002434:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c002438:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c0023ac <JudgeStr+0xf0>
1c00243c:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c002440:	00150185 	move	$r5,$r12
1c002444:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002448:	28af2084 	ld.w	$r4,$r4,-1080(0xbc8)
1c00244c:	57fb7bff 	bl	-1160(0xffffb78) # 1c001fc4 <my_strstr>
1c002450:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c002454:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002458:	40000d80 	beqz	$r12,12(0xc) # 1c002464 <JudgeStr+0x1a8>
1c00245c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002460:	50000800 	b	8(0x8) # 1c002468 <JudgeStr+0x1ac>
1c002464:	0015000c 	move	$r12,$r0
1c002468:	00150184 	move	$r4,$r12
1c00246c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002470:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002474:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002478:	4c000020 	jirl	$r0,$r1,0

1c00247c <PS_GetImage>:
PS_GetImage():
1c00247c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002480:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002484:	29806076 	st.w	$r22,$r3,24(0x18)
1c002488:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00248c:	57fc4bff 	bl	-952(0xffffc48) # 1c0020d4 <SendHead>
1c002490:	57fc8fff 	bl	-884(0xffffc8c) # 1c00211c <SendAddr>
1c002494:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002498:	57fd17ff 	bl	-748(0xffffd14) # 1c0021ac <SendFlag>
1c00249c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0024a0:	57fd47ff 	bl	-700(0xffffd44) # 1c0021e4 <SendLength>
1c0024a4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0024a8:	57fd8bff 	bl	-632(0xffffd88) # 1c002230 <Sendcmd>
1c0024ac:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0024b0:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0024b4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0024b8:	00150184 	move	$r4,$r12
1c0024bc:	57fdafff 	bl	-596(0xffffdac) # 1c002268 <SendCheck>
1c0024c0:	1400004c 	lu12i.w	$r12,2(0x2)
1c0024c4:	039c4184 	ori	$r4,$r12,0x710
1c0024c8:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0022bc <JudgeStr>
1c0024cc:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0024d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024d4:	40001580 	beqz	$r12,20(0x14) # 1c0024e8 <PS_GetImage+0x6c>
1c0024d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024dc:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0024e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024e4:	50000c00 	b	12(0xc) # 1c0024f0 <PS_GetImage+0x74>
1c0024e8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0024ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024f4:	00150184 	move	$r4,$r12
1c0024f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0024fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002500:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002504:	4c000020 	jirl	$r0,$r1,0

1c002508 <PS_GenChar>:
PS_GenChar():
1c002508:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00250c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002510:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002514:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002518:	0015008c 	move	$r12,$r4
1c00251c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002520:	57fbb7ff 	bl	-1100(0xffffbb4) # 1c0020d4 <SendHead>
1c002524:	57fbfbff 	bl	-1032(0xffffbf8) # 1c00211c <SendAddr>
1c002528:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00252c:	57fc83ff 	bl	-896(0xffffc80) # 1c0021ac <SendFlag>
1c002530:	02801004 	addi.w	$r4,$r0,4(0x4)
1c002534:	57fcb3ff 	bl	-848(0xffffcb0) # 1c0021e4 <SendLength>
1c002538:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00253c:	57fcf7ff 	bl	-780(0xffffcf4) # 1c002230 <Sendcmd>
1c002540:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002544:	00150184 	move	$r4,$r12
1c002548:	57fb47ff 	bl	-1212(0xffffb44) # 1c00208c <MYUSART_SendData>
1c00254c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002550:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002554:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c002558:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00255c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002560:	00150184 	move	$r4,$r12
1c002564:	57fd07ff 	bl	-764(0xffffd04) # 1c002268 <SendCheck>
1c002568:	1400004c 	lu12i.w	$r12,2(0x2)
1c00256c:	039c4184 	ori	$r4,$r12,0x710
1c002570:	57fd4fff 	bl	-692(0xffffd4c) # 1c0022bc <JudgeStr>
1c002574:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002578:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00257c:	40001580 	beqz	$r12,20(0x14) # 1c002590 <PS_GenChar+0x88>
1c002580:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002584:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002588:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00258c:	50000c00 	b	12(0xc) # 1c002598 <PS_GenChar+0x90>
1c002590:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002594:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002598:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00259c:	00150184 	move	$r4,$r12
1c0025a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0025a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0025a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0025ac:	4c000020 	jirl	$r0,$r1,0

1c0025b0 <PS_Match>:
PS_Match():
1c0025b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0025b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0025b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0025bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0025c0:	57fb17ff 	bl	-1260(0xffffb14) # 1c0020d4 <SendHead>
1c0025c4:	57fb5bff 	bl	-1192(0xffffb58) # 1c00211c <SendAddr>
1c0025c8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0025cc:	57fbe3ff 	bl	-1056(0xffffbe0) # 1c0021ac <SendFlag>
1c0025d0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0025d4:	57fc13ff 	bl	-1008(0xffffc10) # 1c0021e4 <SendLength>
1c0025d8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0025dc:	57fc57ff 	bl	-940(0xffffc54) # 1c002230 <Sendcmd>
1c0025e0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0025e4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0025e8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0025ec:	00150184 	move	$r4,$r12
1c0025f0:	57fc7bff 	bl	-904(0xffffc78) # 1c002268 <SendCheck>
1c0025f4:	1400004c 	lu12i.w	$r12,2(0x2)
1c0025f8:	039c4184 	ori	$r4,$r12,0x710
1c0025fc:	57fcc3ff 	bl	-832(0xffffcc0) # 1c0022bc <JudgeStr>
1c002600:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002604:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002608:	40001580 	beqz	$r12,20(0x14) # 1c00261c <PS_Match+0x6c>
1c00260c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002610:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	50000c00 	b	12(0xc) # 1c002624 <PS_Match+0x74>
1c00261c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002620:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002624:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002628:	00150184 	move	$r4,$r12
1c00262c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002630:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002634:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002638:	4c000020 	jirl	$r0,$r1,0

1c00263c <PS_RegModel>:
PS_RegModel():
1c00263c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002640:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002644:	29806076 	st.w	$r22,$r3,24(0x18)
1c002648:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00264c:	57fa8bff 	bl	-1400(0xffffa88) # 1c0020d4 <SendHead>
1c002650:	57facfff 	bl	-1332(0xffffacc) # 1c00211c <SendAddr>
1c002654:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002658:	57fb57ff 	bl	-1196(0xffffb54) # 1c0021ac <SendFlag>
1c00265c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002660:	57fb87ff 	bl	-1148(0xffffb84) # 1c0021e4 <SendLength>
1c002664:	02801404 	addi.w	$r4,$r0,5(0x5)
1c002668:	57fbcbff 	bl	-1080(0xffffbc8) # 1c002230 <Sendcmd>
1c00266c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002670:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002674:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002678:	00150184 	move	$r4,$r12
1c00267c:	57fbefff 	bl	-1044(0xffffbec) # 1c002268 <SendCheck>
1c002680:	1400004c 	lu12i.w	$r12,2(0x2)
1c002684:	039c4184 	ori	$r4,$r12,0x710
1c002688:	57fc37ff 	bl	-972(0xffffc34) # 1c0022bc <JudgeStr>
1c00268c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002690:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002694:	40001580 	beqz	$r12,20(0x14) # 1c0026a8 <PS_RegModel+0x6c>
1c002698:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00269c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0026a0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026a4:	50000c00 	b	12(0xc) # 1c0026b0 <PS_RegModel+0x74>
1c0026a8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0026ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026b0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026b4:	00150184 	move	$r4,$r12
1c0026b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026c4:	4c000020 	jirl	$r0,$r1,0

1c0026c8 <PS_StoreChar>:
PS_StoreChar():
1c0026c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026d8:	0015008c 	move	$r12,$r4
1c0026dc:	001500ad 	move	$r13,$r5
1c0026e0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0026e4:	001501ac 	move	$r12,$r13
1c0026e8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0026ec:	57f9ebff 	bl	-1560(0xffff9e8) # 1c0020d4 <SendHead>
1c0026f0:	57fa2fff 	bl	-1492(0xffffa2c) # 1c00211c <SendAddr>
1c0026f4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0026f8:	57fab7ff 	bl	-1356(0xffffab4) # 1c0021ac <SendFlag>
1c0026fc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002700:	57fae7ff 	bl	-1308(0xffffae4) # 1c0021e4 <SendLength>
1c002704:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002708:	57fb2bff 	bl	-1240(0xffffb28) # 1c002230 <Sendcmd>
1c00270c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002710:	00150184 	move	$r4,$r12
1c002714:	57f97bff 	bl	-1672(0xffff978) # 1c00208c <MYUSART_SendData>
1c002718:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00271c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002720:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002724:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002728:	00150184 	move	$r4,$r12
1c00272c:	57f963ff 	bl	-1696(0xffff960) # 1c00208c <MYUSART_SendData>
1c002730:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002734:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002738:	00150184 	move	$r4,$r12
1c00273c:	57f953ff 	bl	-1712(0xffff950) # 1c00208c <MYUSART_SendData>
1c002740:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002744:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002748:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00274c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002750:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002754:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002758:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00275c:	001031ac 	add.w	$r12,$r13,$r12
1c002760:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002764:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002768:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00276c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002770:	001031ac 	add.w	$r12,$r13,$r12
1c002774:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002778:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c00277c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002780:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002784:	00150184 	move	$r4,$r12
1c002788:	57fae3ff 	bl	-1312(0xffffae0) # 1c002268 <SendCheck>
1c00278c:	1400004c 	lu12i.w	$r12,2(0x2)
1c002790:	039c4184 	ori	$r4,$r12,0x710
1c002794:	57fb2bff 	bl	-1240(0xffffb28) # 1c0022bc <JudgeStr>
1c002798:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00279c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027a0:	40001580 	beqz	$r12,20(0x14) # 1c0027b4 <PS_StoreChar+0xec>
1c0027a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027a8:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0027ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027b0:	50000c00 	b	12(0xc) # 1c0027bc <PS_StoreChar+0xf4>
1c0027b4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0027b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0027c0:	00150184 	move	$r4,$r12
1c0027c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027d0:	4c000020 	jirl	$r0,$r1,0

1c0027d4 <PS_Empty>:
PS_Empty():
1c0027d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0027dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0027e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027e4:	57f8f3ff 	bl	-1808(0xffff8f0) # 1c0020d4 <SendHead>
1c0027e8:	57f937ff 	bl	-1740(0xffff934) # 1c00211c <SendAddr>
1c0027ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0027f0:	57f9bfff 	bl	-1604(0xffff9bc) # 1c0021ac <SendFlag>
1c0027f4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027f8:	57f9efff 	bl	-1556(0xffff9ec) # 1c0021e4 <SendLength>
1c0027fc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002800:	57fa33ff 	bl	-1488(0xffffa30) # 1c002230 <Sendcmd>
1c002804:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c002808:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00280c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002810:	00150184 	move	$r4,$r12
1c002814:	57fa57ff 	bl	-1452(0xffffa54) # 1c002268 <SendCheck>
1c002818:	1400004c 	lu12i.w	$r12,2(0x2)
1c00281c:	039c4184 	ori	$r4,$r12,0x710
1c002820:	57fa9fff 	bl	-1380(0xffffa9c) # 1c0022bc <JudgeStr>
1c002824:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002828:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00282c:	40001580 	beqz	$r12,20(0x14) # 1c002840 <PS_Empty+0x6c>
1c002830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002834:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002838:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00283c:	50000c00 	b	12(0xc) # 1c002848 <PS_Empty+0x74>
1c002840:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002844:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002848:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00284c:	00150184 	move	$r4,$r12
1c002850:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002854:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002858:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00285c:	4c000020 	jirl	$r0,$r1,0

1c002860 <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c002860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002864:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002868:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00286c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002870:	0015008c 	move	$r12,$r4
1c002874:	001500ae 	move	$r14,$r5
1c002878:	001500cd 	move	$r13,$r6
1c00287c:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c002880:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002884:	001501cc 	move	$r12,$r14
1c002888:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00288c:	001501ac 	move	$r12,$r13
1c002890:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002894:	57f843ff 	bl	-1984(0xffff840) # 1c0020d4 <SendHead>
1c002898:	57f887ff 	bl	-1916(0xffff884) # 1c00211c <SendAddr>
1c00289c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0028a0:	57f90fff 	bl	-1780(0xffff90c) # 1c0021ac <SendFlag>
1c0028a4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0028a8:	57f93fff 	bl	-1732(0xffff93c) # 1c0021e4 <SendLength>
1c0028ac:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c0028b0:	57f983ff 	bl	-1664(0xffff980) # 1c002230 <Sendcmd>
1c0028b4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0028b8:	00150184 	move	$r4,$r12
1c0028bc:	57f7d3ff 	bl	-2096(0xffff7d0) # 1c00208c <MYUSART_SendData>
1c0028c0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028c4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028c8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028d0:	00150184 	move	$r4,$r12
1c0028d4:	57f7bbff 	bl	-2120(0xffff7b8) # 1c00208c <MYUSART_SendData>
1c0028d8:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028e0:	00150184 	move	$r4,$r12
1c0028e4:	57f7abff 	bl	-2136(0xffff7a8) # 1c00208c <MYUSART_SendData>
1c0028e8:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c0028ec:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028f0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028f8:	00150184 	move	$r4,$r12
1c0028fc:	57f793ff 	bl	-2160(0xffff790) # 1c00208c <MYUSART_SendData>
1c002900:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002904:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002908:	00150184 	move	$r4,$r12
1c00290c:	57f783ff 	bl	-2176(0xffff780) # 1c00208c <MYUSART_SendData>
1c002910:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002914:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002918:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00291c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002920:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002924:	001031ac 	add.w	$r12,$r13,$r12
1c002928:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00292c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002930:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002934:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002938:	001031ac 	add.w	$r12,$r13,$r12
1c00293c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002940:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002944:	0044a18c 	srli.w	$r12,$r12,0x8
1c002948:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00294c:	001031ac 	add.w	$r12,$r13,$r12
1c002950:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002954:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002960:	001031ac 	add.w	$r12,$r13,$r12
1c002964:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002968:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c00296c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002970:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002974:	00150184 	move	$r4,$r12
1c002978:	57f8f3ff 	bl	-1808(0xffff8f0) # 1c002268 <SendCheck>
1c00297c:	1400004c 	lu12i.w	$r12,2(0x2)
1c002980:	039c4184 	ori	$r4,$r12,0x710
1c002984:	57f93bff 	bl	-1736(0xffff938) # 1c0022bc <JudgeStr>
1c002988:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00298c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002990:	40008580 	beqz	$r12,132(0x84) # 1c002a14 <PS_HighSpeedSearch+0x1b4>
1c002994:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002998:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00299c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029a4:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c0029a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0029ac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0029b0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0029b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0029b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029bc:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c0029c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0029c4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0029c8:	001031ac 	add.w	$r12,$r13,$r12
1c0029cc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0029d0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0029d4:	2940018d 	st.h	$r13,$r12,0
1c0029d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029dc:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0029e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0029e4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0029e8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0029ec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0029f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029f4:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c0029f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0029fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002a00:	001031ac 	add.w	$r12,$r13,$r12
1c002a04:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002a08:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002a0c:	2940098d 	st.h	$r13,$r12,2(0x2)
1c002a10:	50000c00 	b	12(0xc) # 1c002a1c <PS_HighSpeedSearch+0x1bc>
1c002a14:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002a18:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a1c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a20:	00150184 	move	$r4,$r12
1c002a24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a30:	4c000020 	jirl	$r0,$r1,0

1c002a34 <ShowErrMessage>:
ShowErrMessage():
1c002a34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a44:	0015008c 	move	$r12,$r4
1c002a48:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a4c:	542ad000 	bl	10960(0x2ad0) # 1c00551c <OLED_CLS>
1c002a50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002a54:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002a58:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a5c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002a60:	542e0c00 	bl	11788(0x2e0c) # 1c00586c <OLED_ShowCN_STR>
1c002a64:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002a68:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002a6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a70:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002a74:	542df800 	bl	11768(0x2df8) # 1c00586c <OLED_ShowCN_STR>
1c002a78:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c002a7c:	03bf918c 	ori	$r12,$r12,0xfe4
1c002a80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a84:	50008400 	b	132(0x84) # 1c002b08 <ShowErrMessage+0xd4>
1c002a88:	03400000 	andi	$r0,$r0,0x0
1c002a8c:	03400000 	andi	$r0,$r0,0x0
1c002a90:	03400000 	andi	$r0,$r0,0x0
1c002a94:	03400000 	andi	$r0,$r0,0x0
1c002a98:	03400000 	andi	$r0,$r0,0x0
1c002a9c:	03400000 	andi	$r0,$r0,0x0
1c002aa0:	03400000 	andi	$r0,$r0,0x0
1c002aa4:	03400000 	andi	$r0,$r0,0x0
1c002aa8:	03400000 	andi	$r0,$r0,0x0
1c002aac:	03400000 	andi	$r0,$r0,0x0
1c002ab0:	03400000 	andi	$r0,$r0,0x0
1c002ab4:	03400000 	andi	$r0,$r0,0x0
1c002ab8:	03400000 	andi	$r0,$r0,0x0
1c002abc:	03400000 	andi	$r0,$r0,0x0
1c002ac0:	03400000 	andi	$r0,$r0,0x0
1c002ac4:	03400000 	andi	$r0,$r0,0x0
1c002ac8:	03400000 	andi	$r0,$r0,0x0
1c002acc:	03400000 	andi	$r0,$r0,0x0
1c002ad0:	03400000 	andi	$r0,$r0,0x0
1c002ad4:	03400000 	andi	$r0,$r0,0x0
1c002ad8:	03400000 	andi	$r0,$r0,0x0
1c002adc:	03400000 	andi	$r0,$r0,0x0
1c002ae0:	03400000 	andi	$r0,$r0,0x0
1c002ae4:	03400000 	andi	$r0,$r0,0x0
1c002ae8:	03400000 	andi	$r0,$r0,0x0
1c002aec:	03400000 	andi	$r0,$r0,0x0
1c002af0:	03400000 	andi	$r0,$r0,0x0
1c002af4:	03400000 	andi	$r0,$r0,0x0
1c002af8:	03400000 	andi	$r0,$r0,0x0
1c002afc:	03400000 	andi	$r0,$r0,0x0
1c002b00:	03400000 	andi	$r0,$r0,0x0
1c002b04:	03400000 	andi	$r0,$r0,0x0
1c002b08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b10:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b14:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002a88 <ShowErrMessage+0x54>
1c002b18:	03400000 	andi	$r0,$r0,0x0
1c002b1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b28:	4c000020 	jirl	$r0,$r1,0

1c002b2c <Add_FR>:
Add_FR():
1c002b2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002b40:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002b44:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002b48:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002b4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b50:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002b54:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c002b58:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002b5c:	580649ac 	beq	$r13,$r12,1608(0x648) # 1c0031a4 <Add_FR+0x678>
1c002b60:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002b64:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002b68:	680599ac 	bltu	$r13,$r12,1432(0x598) # 1c003100 <Add_FR+0x5d4>
1c002b6c:	0040898d 	slli.w	$r13,$r12,0x2
1c002b70:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c002b74:	02b1c18c 	addi.w	$r12,$r12,-912(0xc70)
1c002b78:	001031ac 	add.w	$r12,$r13,$r12
1c002b7c:	2880018c 	ld.w	$r12,$r12,0
1c002b80:	4c000180 	jirl	$r0,$r12,0
1c002b84:	54299800 	bl	10648(0x2998) # 1c00551c <OLED_CLS>
1c002b88:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002b8c:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002b90:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b94:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002b98:	542cd400 	bl	11476(0x2cd4) # 1c00586c <OLED_ShowCN_STR>
1c002b9c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002ba0:	03bfc98c 	ori	$r12,$r12,0xff2
1c002ba4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ba8:	50008400 	b	132(0x84) # 1c002c2c <Add_FR+0x100>
1c002bac:	03400000 	andi	$r0,$r0,0x0
1c002bb0:	03400000 	andi	$r0,$r0,0x0
1c002bb4:	03400000 	andi	$r0,$r0,0x0
1c002bb8:	03400000 	andi	$r0,$r0,0x0
1c002bbc:	03400000 	andi	$r0,$r0,0x0
1c002bc0:	03400000 	andi	$r0,$r0,0x0
1c002bc4:	03400000 	andi	$r0,$r0,0x0
1c002bc8:	03400000 	andi	$r0,$r0,0x0
1c002bcc:	03400000 	andi	$r0,$r0,0x0
1c002bd0:	03400000 	andi	$r0,$r0,0x0
1c002bd4:	03400000 	andi	$r0,$r0,0x0
1c002bd8:	03400000 	andi	$r0,$r0,0x0
1c002bdc:	03400000 	andi	$r0,$r0,0x0
1c002be0:	03400000 	andi	$r0,$r0,0x0
1c002be4:	03400000 	andi	$r0,$r0,0x0
1c002be8:	03400000 	andi	$r0,$r0,0x0
1c002bec:	03400000 	andi	$r0,$r0,0x0
1c002bf0:	03400000 	andi	$r0,$r0,0x0
1c002bf4:	03400000 	andi	$r0,$r0,0x0
1c002bf8:	03400000 	andi	$r0,$r0,0x0
1c002bfc:	03400000 	andi	$r0,$r0,0x0
1c002c00:	03400000 	andi	$r0,$r0,0x0
1c002c04:	03400000 	andi	$r0,$r0,0x0
1c002c08:	03400000 	andi	$r0,$r0,0x0
1c002c0c:	03400000 	andi	$r0,$r0,0x0
1c002c10:	03400000 	andi	$r0,$r0,0x0
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	03400000 	andi	$r0,$r0,0x0
1c002c20:	03400000 	andi	$r0,$r0,0x0
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	03400000 	andi	$r0,$r0,0x0
1c002c2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c34:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c38:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002bac <Add_FR+0x80>
1c002c3c:	57f843ff 	bl	-1984(0xffff840) # 1c00247c <PS_GetImage>
1c002c40:	0015008c 	move	$r12,$r4
1c002c44:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002c48:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002c4c:	44006980 	bnez	$r12,104(0x68) # 1c002cb4 <Add_FR+0x188>
1c002c50:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002c54:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c002508 <PS_GenChar>
1c002c58:	0015008c 	move	$r12,$r4
1c002c5c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002c60:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002c64:	44004180 	bnez	$r12,64(0x40) # 1c002ca4 <Add_FR+0x178>
1c002c68:	5428b400 	bl	10420(0x28b4) # 1c00551c <OLED_CLS>
1c002c6c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c70:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c74:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c78:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002c7c:	542bf000 	bl	11248(0x2bf0) # 1c00586c <OLED_ShowCN_STR>
1c002c80:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002c84:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002c88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c8c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002c90:	542bdc00 	bl	11228(0x2bdc) # 1c00586c <OLED_ShowCN_STR>
1c002c94:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002c98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c9c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002ca0:	50046000 	b	1120(0x460) # 1c003100 <Add_FR+0x5d4>
1c002ca4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002ca8:	00150184 	move	$r4,$r12
1c002cac:	57fd8bff 	bl	-632(0xffffd88) # 1c002a34 <ShowErrMessage>
1c002cb0:	50045000 	b	1104(0x450) # 1c003100 <Add_FR+0x5d4>
1c002cb4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002cb8:	00150184 	move	$r4,$r12
1c002cbc:	57fd7bff 	bl	-648(0xffffd78) # 1c002a34 <ShowErrMessage>
1c002cc0:	50044000 	b	1088(0x440) # 1c003100 <Add_FR+0x5d4>
1c002cc4:	54285800 	bl	10328(0x2858) # 1c00551c <OLED_CLS>
1c002cc8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ccc:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002cd0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002cd4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002cd8:	542b9400 	bl	11156(0x2b94) # 1c00586c <OLED_ShowCN_STR>
1c002cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002ce0:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002ce4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ce8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002cec:	542b8000 	bl	11136(0x2b80) # 1c00586c <OLED_ShowCN_STR>
1c002cf0:	57f78fff 	bl	-2164(0xffff78c) # 1c00247c <PS_GetImage>
1c002cf4:	0015008c 	move	$r12,$r4
1c002cf8:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002cfc:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002d00:	44006980 	bnez	$r12,104(0x68) # 1c002d68 <Add_FR+0x23c>
1c002d04:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002d08:	57f803ff 	bl	-2048(0xffff800) # 1c002508 <PS_GenChar>
1c002d0c:	0015008c 	move	$r12,$r4
1c002d10:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002d14:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002d18:	44004180 	bnez	$r12,64(0x40) # 1c002d58 <Add_FR+0x22c>
1c002d1c:	54280000 	bl	10240(0x2800) # 1c00551c <OLED_CLS>
1c002d20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d24:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002d28:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d2c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002d30:	542b3c00 	bl	11068(0x2b3c) # 1c00586c <OLED_ShowCN_STR>
1c002d34:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002d38:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002d3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d40:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002d44:	542b2800 	bl	11048(0x2b28) # 1c00586c <OLED_ShowCN_STR>
1c002d48:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002d4c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002d50:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002d54:	5003ac00 	b	940(0x3ac) # 1c003100 <Add_FR+0x5d4>
1c002d58:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002d5c:	00150184 	move	$r4,$r12
1c002d60:	57fcd7ff 	bl	-812(0xffffcd4) # 1c002a34 <ShowErrMessage>
1c002d64:	50039c00 	b	924(0x39c) # 1c003100 <Add_FR+0x5d4>
1c002d68:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002d6c:	00150184 	move	$r4,$r12
1c002d70:	57fcc7ff 	bl	-828(0xffffcc4) # 1c002a34 <ShowErrMessage>
1c002d74:	50038c00 	b	908(0x38c) # 1c003100 <Add_FR+0x5d4>
1c002d78:	5427a400 	bl	10148(0x27a4) # 1c00551c <OLED_CLS>
1c002d7c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d80:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002d84:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d88:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002d8c:	542ae000 	bl	10976(0x2ae0) # 1c00586c <OLED_ShowCN_STR>
1c002d90:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002d94:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002d98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d9c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002da0:	542acc00 	bl	10956(0x2acc) # 1c00586c <OLED_ShowCN_STR>
1c002da4:	57f80fff 	bl	-2036(0xffff80c) # 1c0025b0 <PS_Match>
1c002da8:	0015008c 	move	$r12,$r4
1c002dac:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002db0:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002db4:	44006980 	bnez	$r12,104(0x68) # 1c002e1c <Add_FR+0x2f0>
1c002db8:	54276400 	bl	10084(0x2764) # 1c00551c <OLED_CLS>
1c002dbc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002dc0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002dc4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002dc8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002dcc:	542aa000 	bl	10912(0x2aa0) # 1c00586c <OLED_ShowCN_STR>
1c002dd0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002dd4:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002dd8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ddc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002de0:	542a8c00 	bl	10892(0x2a8c) # 1c00586c <OLED_ShowCN_STR>
1c002de4:	54273800 	bl	10040(0x2738) # 1c00551c <OLED_CLS>
1c002de8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002dec:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002df0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002df4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002df8:	542a7400 	bl	10868(0x2a74) # 1c00586c <OLED_ShowCN_STR>
1c002dfc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e00:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002e04:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e08:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002e0c:	542a6000 	bl	10848(0x2a60) # 1c00586c <OLED_ShowCN_STR>
1c002e10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002e14:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e18:	5002e800 	b	744(0x2e8) # 1c003100 <Add_FR+0x5d4>
1c002e1c:	54270000 	bl	9984(0x2700) # 1c00551c <OLED_CLS>
1c002e20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e24:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e28:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e2c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002e30:	542a3c00 	bl	10812(0x2a3c) # 1c00586c <OLED_ShowCN_STR>
1c002e34:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e38:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002e3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e40:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002e44:	542a2800 	bl	10792(0x2a28) # 1c00586c <OLED_ShowCN_STR>
1c002e48:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002e4c:	00150184 	move	$r4,$r12
1c002e50:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c002a34 <ShowErrMessage>
1c002e54:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002e58:	5002a800 	b	680(0x2a8) # 1c003100 <Add_FR+0x5d4>
1c002e5c:	1400070c 	lu12i.w	$r12,56(0x38)
1c002e60:	03bfe58c 	ori	$r12,$r12,0xff9
1c002e64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002e68:	50008400 	b	132(0x84) # 1c002eec <Add_FR+0x3c0>
1c002e6c:	03400000 	andi	$r0,$r0,0x0
1c002e70:	03400000 	andi	$r0,$r0,0x0
1c002e74:	03400000 	andi	$r0,$r0,0x0
1c002e78:	03400000 	andi	$r0,$r0,0x0
1c002e7c:	03400000 	andi	$r0,$r0,0x0
1c002e80:	03400000 	andi	$r0,$r0,0x0
1c002e84:	03400000 	andi	$r0,$r0,0x0
1c002e88:	03400000 	andi	$r0,$r0,0x0
1c002e8c:	03400000 	andi	$r0,$r0,0x0
1c002e90:	03400000 	andi	$r0,$r0,0x0
1c002e94:	03400000 	andi	$r0,$r0,0x0
1c002e98:	03400000 	andi	$r0,$r0,0x0
1c002e9c:	03400000 	andi	$r0,$r0,0x0
1c002ea0:	03400000 	andi	$r0,$r0,0x0
1c002ea4:	03400000 	andi	$r0,$r0,0x0
1c002ea8:	03400000 	andi	$r0,$r0,0x0
1c002eac:	03400000 	andi	$r0,$r0,0x0
1c002eb0:	03400000 	andi	$r0,$r0,0x0
1c002eb4:	03400000 	andi	$r0,$r0,0x0
1c002eb8:	03400000 	andi	$r0,$r0,0x0
1c002ebc:	03400000 	andi	$r0,$r0,0x0
1c002ec0:	03400000 	andi	$r0,$r0,0x0
1c002ec4:	03400000 	andi	$r0,$r0,0x0
1c002ec8:	03400000 	andi	$r0,$r0,0x0
1c002ecc:	03400000 	andi	$r0,$r0,0x0
1c002ed0:	03400000 	andi	$r0,$r0,0x0
1c002ed4:	03400000 	andi	$r0,$r0,0x0
1c002ed8:	03400000 	andi	$r0,$r0,0x0
1c002edc:	03400000 	andi	$r0,$r0,0x0
1c002ee0:	03400000 	andi	$r0,$r0,0x0
1c002ee4:	03400000 	andi	$r0,$r0,0x0
1c002ee8:	03400000 	andi	$r0,$r0,0x0
1c002eec:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002ef0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ef4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002ef8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002e6c <Add_FR+0x340>
1c002efc:	57f743ff 	bl	-2240(0xffff740) # 1c00263c <PS_RegModel>
1c002f00:	0015008c 	move	$r12,$r4
1c002f04:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002f08:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002f0c:	44001180 	bnez	$r12,16(0x10) # 1c002f1c <Add_FR+0x3f0>
1c002f10:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002f14:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002f18:	5001e800 	b	488(0x1e8) # 1c003100 <Add_FR+0x5d4>
1c002f1c:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002f20:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002f24:	00150184 	move	$r4,$r12
1c002f28:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002a34 <ShowErrMessage>
1c002f2c:	5001d400 	b	468(0x1d4) # 1c003100 <Add_FR+0x5d4>
1c002f30:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f34:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002f38:	50009000 	b	144(0x90) # 1c002fc8 <Add_FR+0x49c>
1c002f3c:	54080000 	bl	2048(0x800) # 1c00373c <MatrixKey>
1c002f40:	0015008c 	move	$r12,$r4
1c002f44:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002f48:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002f4c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c002f50:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c002f6c <Add_FR+0x440>
1c002f54:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002f58:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002f5c:	40001180 	beqz	$r12,16(0x10) # 1c002f6c <Add_FR+0x440>
1c002f60:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002f64:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002f68:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002f6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002f70:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c002f74:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c002f94 <Add_FR+0x468>
1c002f78:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002f7c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c002f80:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c002f84:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c002f94 <Add_FR+0x468>
1c002f88:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002f8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f90:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002f94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f98:	1c000106 	pcaddu12i	$r6,8(0x8)
1c002f9c:	02a110c6 	addi.w	$r6,$r6,-1980(0x844)
1c002fa0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002fa4:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002fa8:	5425a000 	bl	9632(0x25a0) # 1c005548 <OLED_ShowStr>
1c002fac:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002fb0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c002fb4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002fb8:	00150186 	move	$r6,$r12
1c002fbc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002fc0:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c002fc4:	542bf000 	bl	11248(0x2bf0) # 1c005bb4 <OLED_ShowNum>
1c002fc8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002fcc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002fd0:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c002f3c <Add_FR+0x410>
1c002fd4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002fd8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002fdc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002fe0:	00150185 	move	$r5,$r12
1c002fe4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002fe8:	57f6e3ff 	bl	-2336(0xffff6e0) # 1c0026c8 <PS_StoreChar>
1c002fec:	0015008c 	move	$r12,$r4
1c002ff0:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002ff4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002ff8:	4400f580 	bnez	$r12,244(0xf4) # 1c0030ec <Add_FR+0x5c0>
1c002ffc:	54252000 	bl	9504(0x2520) # 1c00551c <OLED_CLS>
1c003000:	02801807 	addi.w	$r7,$r0,6(0x6)
1c003004:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c003008:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00300c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c003010:	54285c00 	bl	10332(0x285c) # 1c00586c <OLED_ShowCN_STR>
1c003014:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003018:	1c0000e6 	pcaddu12i	$r6,7(0x7)
1c00301c:	029f10c6 	addi.w	$r6,$r6,1988(0x7c4)
1c003020:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003024:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003028:	54252000 	bl	9504(0x2520) # 1c005548 <OLED_ShowStr>
1c00302c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003030:	02804008 	addi.w	$r8,$r0,16(0x10)
1c003034:	02800407 	addi.w	$r7,$r0,1(0x1)
1c003038:	00150186 	move	$r6,$r12
1c00303c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003040:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c003044:	542b7000 	bl	11120(0x2b70) # 1c005bb4 <OLED_ShowNum>
1c003048:	14002aac 	lu12i.w	$r12,341(0x155)
1c00304c:	03bf598c 	ori	$r12,$r12,0xfd6
1c003050:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003054:	50008400 	b	132(0x84) # 1c0030d8 <Add_FR+0x5ac>
1c003058:	03400000 	andi	$r0,$r0,0x0
1c00305c:	03400000 	andi	$r0,$r0,0x0
1c003060:	03400000 	andi	$r0,$r0,0x0
1c003064:	03400000 	andi	$r0,$r0,0x0
1c003068:	03400000 	andi	$r0,$r0,0x0
1c00306c:	03400000 	andi	$r0,$r0,0x0
1c003070:	03400000 	andi	$r0,$r0,0x0
1c003074:	03400000 	andi	$r0,$r0,0x0
1c003078:	03400000 	andi	$r0,$r0,0x0
1c00307c:	03400000 	andi	$r0,$r0,0x0
1c003080:	03400000 	andi	$r0,$r0,0x0
1c003084:	03400000 	andi	$r0,$r0,0x0
1c003088:	03400000 	andi	$r0,$r0,0x0
1c00308c:	03400000 	andi	$r0,$r0,0x0
1c003090:	03400000 	andi	$r0,$r0,0x0
1c003094:	03400000 	andi	$r0,$r0,0x0
1c003098:	03400000 	andi	$r0,$r0,0x0
1c00309c:	03400000 	andi	$r0,$r0,0x0
1c0030a0:	03400000 	andi	$r0,$r0,0x0
1c0030a4:	03400000 	andi	$r0,$r0,0x0
1c0030a8:	03400000 	andi	$r0,$r0,0x0
1c0030ac:	03400000 	andi	$r0,$r0,0x0
1c0030b0:	03400000 	andi	$r0,$r0,0x0
1c0030b4:	03400000 	andi	$r0,$r0,0x0
1c0030b8:	03400000 	andi	$r0,$r0,0x0
1c0030bc:	03400000 	andi	$r0,$r0,0x0
1c0030c0:	03400000 	andi	$r0,$r0,0x0
1c0030c4:	03400000 	andi	$r0,$r0,0x0
1c0030c8:	03400000 	andi	$r0,$r0,0x0
1c0030cc:	03400000 	andi	$r0,$r0,0x0
1c0030d0:	03400000 	andi	$r0,$r0,0x0
1c0030d4:	03400000 	andi	$r0,$r0,0x0
1c0030d8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0030dc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0030e0:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0030e4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003058 <Add_FR+0x52c>
1c0030e8:	5000c000 	b	192(0xc0) # 1c0031a8 <Add_FR+0x67c>
1c0030ec:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0030f0:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0030f4:	00150184 	move	$r4,$r12
1c0030f8:	57f93fff 	bl	-1732(0xffff93c) # 1c002a34 <ShowErrMessage>
1c0030fc:	03400000 	andi	$r0,$r0,0x0
1c003100:	1400070c 	lu12i.w	$r12,56(0x38)
1c003104:	03bfe58c 	ori	$r12,$r12,0xff9
1c003108:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00310c:	50008400 	b	132(0x84) # 1c003190 <Add_FR+0x664>
1c003110:	03400000 	andi	$r0,$r0,0x0
1c003114:	03400000 	andi	$r0,$r0,0x0
1c003118:	03400000 	andi	$r0,$r0,0x0
1c00311c:	03400000 	andi	$r0,$r0,0x0
1c003120:	03400000 	andi	$r0,$r0,0x0
1c003124:	03400000 	andi	$r0,$r0,0x0
1c003128:	03400000 	andi	$r0,$r0,0x0
1c00312c:	03400000 	andi	$r0,$r0,0x0
1c003130:	03400000 	andi	$r0,$r0,0x0
1c003134:	03400000 	andi	$r0,$r0,0x0
1c003138:	03400000 	andi	$r0,$r0,0x0
1c00313c:	03400000 	andi	$r0,$r0,0x0
1c003140:	03400000 	andi	$r0,$r0,0x0
1c003144:	03400000 	andi	$r0,$r0,0x0
1c003148:	03400000 	andi	$r0,$r0,0x0
1c00314c:	03400000 	andi	$r0,$r0,0x0
1c003150:	03400000 	andi	$r0,$r0,0x0
1c003154:	03400000 	andi	$r0,$r0,0x0
1c003158:	03400000 	andi	$r0,$r0,0x0
1c00315c:	03400000 	andi	$r0,$r0,0x0
1c003160:	03400000 	andi	$r0,$r0,0x0
1c003164:	03400000 	andi	$r0,$r0,0x0
1c003168:	03400000 	andi	$r0,$r0,0x0
1c00316c:	03400000 	andi	$r0,$r0,0x0
1c003170:	03400000 	andi	$r0,$r0,0x0
1c003174:	03400000 	andi	$r0,$r0,0x0
1c003178:	03400000 	andi	$r0,$r0,0x0
1c00317c:	03400000 	andi	$r0,$r0,0x0
1c003180:	03400000 	andi	$r0,$r0,0x0
1c003184:	03400000 	andi	$r0,$r0,0x0
1c003188:	03400000 	andi	$r0,$r0,0x0
1c00318c:	03400000 	andi	$r0,$r0,0x0
1c003190:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003194:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003198:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c00319c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003110 <Add_FR+0x5e4>
1c0031a0:	53f9abff 	b	-1624(0xffff9a8) # 1c002b48 <Add_FR+0x1c>
1c0031a4:	03400000 	andi	$r0,$r0,0x0
1c0031a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031b4:	4c000020 	jirl	$r0,$r1,0

1c0031b8 <press_FR>:
press_FR():
1c0031b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0031c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0031c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031c8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0031cc:	54235000 	bl	9040(0x2350) # 1c00551c <OLED_CLS>
1c0031d0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0031d4:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c0031d8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0031dc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0031e0:	54268c00 	bl	9868(0x268c) # 1c00586c <OLED_ShowCN_STR>
1c0031e4:	57f29bff 	bl	-3432(0xffff298) # 1c00247c <PS_GetImage>
1c0031e8:	0015008c 	move	$r12,$r4
1c0031ec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0031f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0031f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0031f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0031fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003200:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003204:	580285ac 	beq	$r13,$r12,644(0x284) # 1c003488 <press_FR+0x2d0>
1c003208:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00320c:	47ffd99f 	bnez	$r12,-40(0x7fffd8) # 1c0031e4 <press_FR+0x2c>
1c003210:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003214:	57f2f7ff 	bl	-3340(0xffff2f4) # 1c002508 <PS_GenChar>
1c003218:	0015008c 	move	$r12,$r4
1c00321c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003220:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003224:	44024980 	bnez	$r12,584(0x248) # 1c00346c <press_FR+0x2b4>
1c003228:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c00322c:	00150187 	move	$r7,$r12
1c003230:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c003234:	00150005 	move	$r5,$r0
1c003238:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00323c:	57f627ff 	bl	-2524(0xffff624) # 1c002860 <PS_HighSpeedSearch>
1c003240:	0015008c 	move	$r12,$r4
1c003244:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003248:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00324c:	44016d80 	bnez	$r12,364(0x16c) # 1c0033b8 <press_FR+0x200>
1c003250:	5422cc00 	bl	8908(0x22cc) # 1c00551c <OLED_CLS>
1c003254:	02802004 	addi.w	$r4,$r0,8(0x8)
1c003258:	5447ac00 	bl	18348(0x47ac) # 1c007a04 <interface_display>
1c00325c:	54036000 	bl	864(0x360) # 1c0035bc <SG90_Open>
1c003260:	541f3800 	bl	7992(0x1f38) # 1c005198 <Buzzer_one>
1c003264:	1400472c 	lu12i.w	$r12,569(0x239)
1c003268:	03bee58c 	ori	$r12,$r12,0xfb9
1c00326c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003270:	50008400 	b	132(0x84) # 1c0032f4 <press_FR+0x13c>
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
1c0032c4:	03400000 	andi	$r0,$r0,0x0
1c0032c8:	03400000 	andi	$r0,$r0,0x0
1c0032cc:	03400000 	andi	$r0,$r0,0x0
1c0032d0:	03400000 	andi	$r0,$r0,0x0
1c0032d4:	03400000 	andi	$r0,$r0,0x0
1c0032d8:	03400000 	andi	$r0,$r0,0x0
1c0032dc:	03400000 	andi	$r0,$r0,0x0
1c0032e0:	03400000 	andi	$r0,$r0,0x0
1c0032e4:	03400000 	andi	$r0,$r0,0x0
1c0032e8:	03400000 	andi	$r0,$r0,0x0
1c0032ec:	03400000 	andi	$r0,$r0,0x0
1c0032f0:	03400000 	andi	$r0,$r0,0x0
1c0032f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0032f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032fc:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003300:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003274 <press_FR+0xbc>
1c003304:	541e9400 	bl	7828(0x1e94) # 1c005198 <Buzzer_one>
1c003308:	5402e000 	bl	736(0x2e0) # 1c0035e8 <SG90_Close>
1c00330c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c003310:	5446f400 	bl	18164(0x46f4) # 1c007a04 <interface_display>
1c003314:	1400472c 	lu12i.w	$r12,569(0x239)
1c003318:	03bee58c 	ori	$r12,$r12,0xfb9
1c00331c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003320:	50008400 	b	132(0x84) # 1c0033a4 <press_FR+0x1ec>
1c003324:	03400000 	andi	$r0,$r0,0x0
1c003328:	03400000 	andi	$r0,$r0,0x0
1c00332c:	03400000 	andi	$r0,$r0,0x0
1c003330:	03400000 	andi	$r0,$r0,0x0
1c003334:	03400000 	andi	$r0,$r0,0x0
1c003338:	03400000 	andi	$r0,$r0,0x0
1c00333c:	03400000 	andi	$r0,$r0,0x0
1c003340:	03400000 	andi	$r0,$r0,0x0
1c003344:	03400000 	andi	$r0,$r0,0x0
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	03400000 	andi	$r0,$r0,0x0
1c003350:	03400000 	andi	$r0,$r0,0x0
1c003354:	03400000 	andi	$r0,$r0,0x0
1c003358:	03400000 	andi	$r0,$r0,0x0
1c00335c:	03400000 	andi	$r0,$r0,0x0
1c003360:	03400000 	andi	$r0,$r0,0x0
1c003364:	03400000 	andi	$r0,$r0,0x0
1c003368:	03400000 	andi	$r0,$r0,0x0
1c00336c:	03400000 	andi	$r0,$r0,0x0
1c003370:	03400000 	andi	$r0,$r0,0x0
1c003374:	03400000 	andi	$r0,$r0,0x0
1c003378:	03400000 	andi	$r0,$r0,0x0
1c00337c:	03400000 	andi	$r0,$r0,0x0
1c003380:	03400000 	andi	$r0,$r0,0x0
1c003384:	03400000 	andi	$r0,$r0,0x0
1c003388:	03400000 	andi	$r0,$r0,0x0
1c00338c:	03400000 	andi	$r0,$r0,0x0
1c003390:	03400000 	andi	$r0,$r0,0x0
1c003394:	03400000 	andi	$r0,$r0,0x0
1c003398:	03400000 	andi	$r0,$r0,0x0
1c00339c:	03400000 	andi	$r0,$r0,0x0
1c0033a0:	03400000 	andi	$r0,$r0,0x0
1c0033a4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0033a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0033ac:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0033b0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003324 <press_FR+0x16c>
1c0033b4:	5000d800 	b	216(0xd8) # 1c00348c <press_FR+0x2d4>
1c0033b8:	54216400 	bl	8548(0x2164) # 1c00551c <OLED_CLS>
1c0033bc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0033c0:	54464400 	bl	17988(0x4644) # 1c007a04 <interface_display>
1c0033c4:	541ba000 	bl	7072(0x1ba0) # 1c004f64 <Buzzer>
1c0033c8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0033cc:	03bf918c 	ori	$r12,$r12,0xfe4
1c0033d0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0033d4:	50008400 	b	132(0x84) # 1c003458 <press_FR+0x2a0>
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
1c003418:	03400000 	andi	$r0,$r0,0x0
1c00341c:	03400000 	andi	$r0,$r0,0x0
1c003420:	03400000 	andi	$r0,$r0,0x0
1c003424:	03400000 	andi	$r0,$r0,0x0
1c003428:	03400000 	andi	$r0,$r0,0x0
1c00342c:	03400000 	andi	$r0,$r0,0x0
1c003430:	03400000 	andi	$r0,$r0,0x0
1c003434:	03400000 	andi	$r0,$r0,0x0
1c003438:	03400000 	andi	$r0,$r0,0x0
1c00343c:	03400000 	andi	$r0,$r0,0x0
1c003440:	03400000 	andi	$r0,$r0,0x0
1c003444:	03400000 	andi	$r0,$r0,0x0
1c003448:	03400000 	andi	$r0,$r0,0x0
1c00344c:	03400000 	andi	$r0,$r0,0x0
1c003450:	03400000 	andi	$r0,$r0,0x0
1c003454:	03400000 	andi	$r0,$r0,0x0
1c003458:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00345c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003460:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003464:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0033d8 <press_FR+0x220>
1c003468:	50002400 	b	36(0x24) # 1c00348c <press_FR+0x2d4>
1c00346c:	5420b000 	bl	8368(0x20b0) # 1c00551c <OLED_CLS>
1c003470:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003474:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003478:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00347c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003480:	5423ec00 	bl	9196(0x23ec) # 1c00586c <OLED_ShowCN_STR>
1c003484:	53fd63ff 	b	-672(0xffffd60) # 1c0031e4 <press_FR+0x2c>
1c003488:	03400000 	andi	$r0,$r0,0x0
1c00348c:	03400000 	andi	$r0,$r0,0x0
1c003490:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003494:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003498:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00349c:	4c000020 	jirl	$r0,$r1,0

1c0034a0 <Del_FR_Lib>:
Del_FR_Lib():
1c0034a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034b0:	57f327ff 	bl	-3292(0xffff324) # 1c0027d4 <PS_Empty>
1c0034b4:	0015008c 	move	$r12,$r4
1c0034b8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0034bc:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034c0:	44000d80 	bnez	$r12,12(0xc) # 1c0034cc <Del_FR_Lib+0x2c>
1c0034c4:	541aa000 	bl	6816(0x1aa0) # 1c004f64 <Buzzer>
1c0034c8:	50001000 	b	16(0x10) # 1c0034d8 <Del_FR_Lib+0x38>
1c0034cc:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034d0:	00150184 	move	$r4,$r12
1c0034d4:	57f563ff 	bl	-2720(0xffff560) # 1c002a34 <ShowErrMessage>
1c0034d8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0034dc:	03bf918c 	ori	$r12,$r12,0xfe4
1c0034e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034e4:	50008400 	b	132(0x84) # 1c003568 <Del_FR_Lib+0xc8>
1c0034e8:	03400000 	andi	$r0,$r0,0x0
1c0034ec:	03400000 	andi	$r0,$r0,0x0
1c0034f0:	03400000 	andi	$r0,$r0,0x0
1c0034f4:	03400000 	andi	$r0,$r0,0x0
1c0034f8:	03400000 	andi	$r0,$r0,0x0
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
1c003568:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00356c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003570:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003574:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0034e8 <Del_FR_Lib+0x48>
1c003578:	03400000 	andi	$r0,$r0,0x0
1c00357c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003580:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003584:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003588:	4c000020 	jirl	$r0,$r1,0

1c00358c <SG90_GetAngle>:
SG90_GetAngle():
1c00358c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003590:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003594:	29806076 	st.w	$r22,$r3,24(0x18)
1c003598:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00359c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035a0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0035a4:	57e7fbff 	bl	-6152(0xfffe7f8) # 1c001d9c <pwm_steering_engine_set>
1c0035a8:	03400000 	andi	$r0,$r0,0x0
1c0035ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035b8:	4c000020 	jirl	$r0,$r1,0

1c0035bc <SG90_Open>:
SG90_Open():
1c0035bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0035c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0035c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0035c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0035cc:	02815404 	addi.w	$r4,$r0,85(0x55)
1c0035d0:	57ffbfff 	bl	-68(0xfffffbc) # 1c00358c <SG90_GetAngle>
1c0035d4:	03400000 	andi	$r0,$r0,0x0
1c0035d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0035e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035e4:	4c000020 	jirl	$r0,$r1,0

1c0035e8 <SG90_Close>:
SG90_Close():
1c0035e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0035ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0035f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0035f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0035f8:	00150004 	move	$r4,$r0
1c0035fc:	57ff93ff 	bl	-112(0xfffff90) # 1c00358c <SG90_GetAngle>
1c003600:	03400000 	andi	$r0,$r0,0x0
1c003604:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003608:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00360c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003610:	4c000020 	jirl	$r0,$r1,0

1c003614 <hw_uart_init>:
hw_uart_init():
1c003614:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003618:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00361c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003620:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003624:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003628:	02a7f18c 	addi.w	$r12,$r12,-1540(0x9fc)
1c00362c:	2880018e 	ld.w	$r14,$r12,0
1c003630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003634:	002135cc 	div.wu	$r12,$r14,$r13
1c003638:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003640 <hw_uart_init+0x2c>
1c00363c:	002a0007 	break	0x7
1c003640:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003644:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003648:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00364c:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c003650:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003658:	0044a18d 	srli.w	$r13,$r12,0x8
1c00365c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003660:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003664:	2900058d 	st.b	$r13,$r12,1(0x1)
1c003668:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00366c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003670:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003674:	2900018d 	st.b	$r13,$r12,0
1c003678:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00367c:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c003680:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003684:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003688:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00368c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003690:	03400000 	andi	$r0,$r0,0x0
1c003694:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003698:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00369c:	4c000020 	jirl	$r0,$r1,0

1c0036a0 <uart_write>:
uart_write():
1c0036a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036a4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0036a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036ac:	0015008c 	move	$r12,$r4
1c0036b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0036b4:	03400000 	andi	$r0,$r0,0x0
1c0036b8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0036bc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0036c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0036c4:	0340818c 	andi	$r12,$r12,0x20
1c0036c8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0036b8 <uart_write+0x18>
1c0036cc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0036d0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0036d4:	2900018d 	st.b	$r13,$r12,0
1c0036d8:	03400000 	andi	$r0,$r0,0x0
1c0036dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0036e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036e4:	4c000020 	jirl	$r0,$r1,0

1c0036e8 <clkey>:
clkey():
1c0036e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0036f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0036f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036fc:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003700:	57e22bff 	bl	-7640(0xfffe228) # 1c001928 <gpio_write>
1c003704:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003708:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00370c:	57e21fff 	bl	-7652(0xfffe21c) # 1c001928 <gpio_write>
1c003710:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003714:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003718:	57e213ff 	bl	-7664(0xfffe210) # 1c001928 <gpio_write>
1c00371c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003720:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003724:	57e207ff 	bl	-7676(0xfffe204) # 1c001928 <gpio_write>
1c003728:	03400000 	andi	$r0,$r0,0x0
1c00372c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003730:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003734:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003738:	4c000020 	jirl	$r0,$r1,0

1c00373c <MatrixKey>:
MatrixKey():
1c00373c:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c003740:	29827061 	st.w	$r1,$r3,156(0x9c)
1c003744:	29826076 	st.w	$r22,$r3,152(0x98)
1c003748:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c00374c:	57ff9fff 	bl	-100(0xfffff9c) # 1c0036e8 <clkey>
1c003750:	1400008c 	lu12i.w	$r12,4(0x4)
1c003754:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003758:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00375c:	50008400 	b	132(0x84) # 1c0037e0 <MatrixKey+0xa4>
1c003760:	03400000 	andi	$r0,$r0,0x0
1c003764:	03400000 	andi	$r0,$r0,0x0
1c003768:	03400000 	andi	$r0,$r0,0x0
1c00376c:	03400000 	andi	$r0,$r0,0x0
1c003770:	03400000 	andi	$r0,$r0,0x0
1c003774:	03400000 	andi	$r0,$r0,0x0
1c003778:	03400000 	andi	$r0,$r0,0x0
1c00377c:	03400000 	andi	$r0,$r0,0x0
1c003780:	03400000 	andi	$r0,$r0,0x0
1c003784:	03400000 	andi	$r0,$r0,0x0
1c003788:	03400000 	andi	$r0,$r0,0x0
1c00378c:	03400000 	andi	$r0,$r0,0x0
1c003790:	03400000 	andi	$r0,$r0,0x0
1c003794:	03400000 	andi	$r0,$r0,0x0
1c003798:	03400000 	andi	$r0,$r0,0x0
1c00379c:	03400000 	andi	$r0,$r0,0x0
1c0037a0:	03400000 	andi	$r0,$r0,0x0
1c0037a4:	03400000 	andi	$r0,$r0,0x0
1c0037a8:	03400000 	andi	$r0,$r0,0x0
1c0037ac:	03400000 	andi	$r0,$r0,0x0
1c0037b0:	03400000 	andi	$r0,$r0,0x0
1c0037b4:	03400000 	andi	$r0,$r0,0x0
1c0037b8:	03400000 	andi	$r0,$r0,0x0
1c0037bc:	03400000 	andi	$r0,$r0,0x0
1c0037c0:	03400000 	andi	$r0,$r0,0x0
1c0037c4:	03400000 	andi	$r0,$r0,0x0
1c0037c8:	03400000 	andi	$r0,$r0,0x0
1c0037cc:	03400000 	andi	$r0,$r0,0x0
1c0037d0:	03400000 	andi	$r0,$r0,0x0
1c0037d4:	03400000 	andi	$r0,$r0,0x0
1c0037d8:	03400000 	andi	$r0,$r0,0x0
1c0037dc:	03400000 	andi	$r0,$r0,0x0
1c0037e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037e8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0037ec:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003760 <MatrixKey+0x24>
1c0037f0:	00150005 	move	$r5,$r0
1c0037f4:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0037f8:	57e133ff 	bl	-7888(0xfffe130) # 1c001928 <gpio_write>
1c0037fc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003800:	57e223ff 	bl	-7648(0xfffe220) # 1c001a20 <gpio_read>
1c003804:	0015008c 	move	$r12,$r4
1c003808:	44016180 	bnez	$r12,352(0x160) # 1c003968 <MatrixKey+0x22c>
1c00380c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003810:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003814:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003818:	50008400 	b	132(0x84) # 1c00389c <MatrixKey+0x160>
1c00381c:	03400000 	andi	$r0,$r0,0x0
1c003820:	03400000 	andi	$r0,$r0,0x0
1c003824:	03400000 	andi	$r0,$r0,0x0
1c003828:	03400000 	andi	$r0,$r0,0x0
1c00382c:	03400000 	andi	$r0,$r0,0x0
1c003830:	03400000 	andi	$r0,$r0,0x0
1c003834:	03400000 	andi	$r0,$r0,0x0
1c003838:	03400000 	andi	$r0,$r0,0x0
1c00383c:	03400000 	andi	$r0,$r0,0x0
1c003840:	03400000 	andi	$r0,$r0,0x0
1c003844:	03400000 	andi	$r0,$r0,0x0
1c003848:	03400000 	andi	$r0,$r0,0x0
1c00384c:	03400000 	andi	$r0,$r0,0x0
1c003850:	03400000 	andi	$r0,$r0,0x0
1c003854:	03400000 	andi	$r0,$r0,0x0
1c003858:	03400000 	andi	$r0,$r0,0x0
1c00385c:	03400000 	andi	$r0,$r0,0x0
1c003860:	03400000 	andi	$r0,$r0,0x0
1c003864:	03400000 	andi	$r0,$r0,0x0
1c003868:	03400000 	andi	$r0,$r0,0x0
1c00386c:	03400000 	andi	$r0,$r0,0x0
1c003870:	03400000 	andi	$r0,$r0,0x0
1c003874:	03400000 	andi	$r0,$r0,0x0
1c003878:	03400000 	andi	$r0,$r0,0x0
1c00387c:	03400000 	andi	$r0,$r0,0x0
1c003880:	03400000 	andi	$r0,$r0,0x0
1c003884:	03400000 	andi	$r0,$r0,0x0
1c003888:	03400000 	andi	$r0,$r0,0x0
1c00388c:	03400000 	andi	$r0,$r0,0x0
1c003890:	03400000 	andi	$r0,$r0,0x0
1c003894:	03400000 	andi	$r0,$r0,0x0
1c003898:	03400000 	andi	$r0,$r0,0x0
1c00389c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0038a4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0038a8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00381c <MatrixKey+0xe0>
1c0038ac:	03400000 	andi	$r0,$r0,0x0
1c0038b0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0038b4:	57e16fff 	bl	-7828(0xfffe16c) # 1c001a20 <gpio_read>
1c0038b8:	0015008c 	move	$r12,$r4
1c0038bc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0038b0 <MatrixKey+0x174>
1c0038c0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0038c4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0038c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0038cc:	50008400 	b	132(0x84) # 1c003950 <MatrixKey+0x214>
1c0038d0:	03400000 	andi	$r0,$r0,0x0
1c0038d4:	03400000 	andi	$r0,$r0,0x0
1c0038d8:	03400000 	andi	$r0,$r0,0x0
1c0038dc:	03400000 	andi	$r0,$r0,0x0
1c0038e0:	03400000 	andi	$r0,$r0,0x0
1c0038e4:	03400000 	andi	$r0,$r0,0x0
1c0038e8:	03400000 	andi	$r0,$r0,0x0
1c0038ec:	03400000 	andi	$r0,$r0,0x0
1c0038f0:	03400000 	andi	$r0,$r0,0x0
1c0038f4:	03400000 	andi	$r0,$r0,0x0
1c0038f8:	03400000 	andi	$r0,$r0,0x0
1c0038fc:	03400000 	andi	$r0,$r0,0x0
1c003900:	03400000 	andi	$r0,$r0,0x0
1c003904:	03400000 	andi	$r0,$r0,0x0
1c003908:	03400000 	andi	$r0,$r0,0x0
1c00390c:	03400000 	andi	$r0,$r0,0x0
1c003910:	03400000 	andi	$r0,$r0,0x0
1c003914:	03400000 	andi	$r0,$r0,0x0
1c003918:	03400000 	andi	$r0,$r0,0x0
1c00391c:	03400000 	andi	$r0,$r0,0x0
1c003920:	03400000 	andi	$r0,$r0,0x0
1c003924:	03400000 	andi	$r0,$r0,0x0
1c003928:	03400000 	andi	$r0,$r0,0x0
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	03400000 	andi	$r0,$r0,0x0
1c003934:	03400000 	andi	$r0,$r0,0x0
1c003938:	03400000 	andi	$r0,$r0,0x0
1c00393c:	03400000 	andi	$r0,$r0,0x0
1c003940:	03400000 	andi	$r0,$r0,0x0
1c003944:	03400000 	andi	$r0,$r0,0x0
1c003948:	03400000 	andi	$r0,$r0,0x0
1c00394c:	03400000 	andi	$r0,$r0,0x0
1c003950:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003954:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003958:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c00395c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0038d0 <MatrixKey+0x194>
1c003960:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003964:	50158c00 	b	5516(0x158c) # 1c004ef0 <MatrixKey+0x17b4>
1c003968:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00396c:	57e0b7ff 	bl	-8012(0xfffe0b4) # 1c001a20 <gpio_read>
1c003970:	0015008c 	move	$r12,$r4
1c003974:	44016180 	bnez	$r12,352(0x160) # 1c003ad4 <MatrixKey+0x398>
1c003978:	1400008c 	lu12i.w	$r12,4(0x4)
1c00397c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003980:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003984:	50008400 	b	132(0x84) # 1c003a08 <MatrixKey+0x2cc>
1c003988:	03400000 	andi	$r0,$r0,0x0
1c00398c:	03400000 	andi	$r0,$r0,0x0
1c003990:	03400000 	andi	$r0,$r0,0x0
1c003994:	03400000 	andi	$r0,$r0,0x0
1c003998:	03400000 	andi	$r0,$r0,0x0
1c00399c:	03400000 	andi	$r0,$r0,0x0
1c0039a0:	03400000 	andi	$r0,$r0,0x0
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	03400000 	andi	$r0,$r0,0x0
1c0039ac:	03400000 	andi	$r0,$r0,0x0
1c0039b0:	03400000 	andi	$r0,$r0,0x0
1c0039b4:	03400000 	andi	$r0,$r0,0x0
1c0039b8:	03400000 	andi	$r0,$r0,0x0
1c0039bc:	03400000 	andi	$r0,$r0,0x0
1c0039c0:	03400000 	andi	$r0,$r0,0x0
1c0039c4:	03400000 	andi	$r0,$r0,0x0
1c0039c8:	03400000 	andi	$r0,$r0,0x0
1c0039cc:	03400000 	andi	$r0,$r0,0x0
1c0039d0:	03400000 	andi	$r0,$r0,0x0
1c0039d4:	03400000 	andi	$r0,$r0,0x0
1c0039d8:	03400000 	andi	$r0,$r0,0x0
1c0039dc:	03400000 	andi	$r0,$r0,0x0
1c0039e0:	03400000 	andi	$r0,$r0,0x0
1c0039e4:	03400000 	andi	$r0,$r0,0x0
1c0039e8:	03400000 	andi	$r0,$r0,0x0
1c0039ec:	03400000 	andi	$r0,$r0,0x0
1c0039f0:	03400000 	andi	$r0,$r0,0x0
1c0039f4:	03400000 	andi	$r0,$r0,0x0
1c0039f8:	03400000 	andi	$r0,$r0,0x0
1c0039fc:	03400000 	andi	$r0,$r0,0x0
1c003a00:	03400000 	andi	$r0,$r0,0x0
1c003a04:	03400000 	andi	$r0,$r0,0x0
1c003a08:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003a0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a10:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003a14:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003988 <MatrixKey+0x24c>
1c003a18:	03400000 	andi	$r0,$r0,0x0
1c003a1c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003a20:	57e003ff 	bl	-8192(0xfffe000) # 1c001a20 <gpio_read>
1c003a24:	0015008c 	move	$r12,$r4
1c003a28:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003a1c <MatrixKey+0x2e0>
1c003a2c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a30:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a34:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003a38:	50008400 	b	132(0x84) # 1c003abc <MatrixKey+0x380>
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
1c003a68:	03400000 	andi	$r0,$r0,0x0
1c003a6c:	03400000 	andi	$r0,$r0,0x0
1c003a70:	03400000 	andi	$r0,$r0,0x0
1c003a74:	03400000 	andi	$r0,$r0,0x0
1c003a78:	03400000 	andi	$r0,$r0,0x0
1c003a7c:	03400000 	andi	$r0,$r0,0x0
1c003a80:	03400000 	andi	$r0,$r0,0x0
1c003a84:	03400000 	andi	$r0,$r0,0x0
1c003a88:	03400000 	andi	$r0,$r0,0x0
1c003a8c:	03400000 	andi	$r0,$r0,0x0
1c003a90:	03400000 	andi	$r0,$r0,0x0
1c003a94:	03400000 	andi	$r0,$r0,0x0
1c003a98:	03400000 	andi	$r0,$r0,0x0
1c003a9c:	03400000 	andi	$r0,$r0,0x0
1c003aa0:	03400000 	andi	$r0,$r0,0x0
1c003aa4:	03400000 	andi	$r0,$r0,0x0
1c003aa8:	03400000 	andi	$r0,$r0,0x0
1c003aac:	03400000 	andi	$r0,$r0,0x0
1c003ab0:	03400000 	andi	$r0,$r0,0x0
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	03400000 	andi	$r0,$r0,0x0
1c003abc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003ac0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ac4:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003ac8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003a3c <MatrixKey+0x300>
1c003acc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003ad0:	50142000 	b	5152(0x1420) # 1c004ef0 <MatrixKey+0x17b4>
1c003ad4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003ad8:	57df4bff 	bl	-8376(0xfffdf48) # 1c001a20 <gpio_read>
1c003adc:	0015008c 	move	$r12,$r4
1c003ae0:	44016180 	bnez	$r12,352(0x160) # 1c003c40 <MatrixKey+0x504>
1c003ae4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ae8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003aec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003af0:	50008400 	b	132(0x84) # 1c003b74 <MatrixKey+0x438>
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
1c003b1c:	03400000 	andi	$r0,$r0,0x0
1c003b20:	03400000 	andi	$r0,$r0,0x0
1c003b24:	03400000 	andi	$r0,$r0,0x0
1c003b28:	03400000 	andi	$r0,$r0,0x0
1c003b2c:	03400000 	andi	$r0,$r0,0x0
1c003b30:	03400000 	andi	$r0,$r0,0x0
1c003b34:	03400000 	andi	$r0,$r0,0x0
1c003b38:	03400000 	andi	$r0,$r0,0x0
1c003b3c:	03400000 	andi	$r0,$r0,0x0
1c003b40:	03400000 	andi	$r0,$r0,0x0
1c003b44:	03400000 	andi	$r0,$r0,0x0
1c003b48:	03400000 	andi	$r0,$r0,0x0
1c003b4c:	03400000 	andi	$r0,$r0,0x0
1c003b50:	03400000 	andi	$r0,$r0,0x0
1c003b54:	03400000 	andi	$r0,$r0,0x0
1c003b58:	03400000 	andi	$r0,$r0,0x0
1c003b5c:	03400000 	andi	$r0,$r0,0x0
1c003b60:	03400000 	andi	$r0,$r0,0x0
1c003b64:	03400000 	andi	$r0,$r0,0x0
1c003b68:	03400000 	andi	$r0,$r0,0x0
1c003b6c:	03400000 	andi	$r0,$r0,0x0
1c003b70:	03400000 	andi	$r0,$r0,0x0
1c003b74:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003b78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b7c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003b80:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003af4 <MatrixKey+0x3b8>
1c003b84:	03400000 	andi	$r0,$r0,0x0
1c003b88:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003b8c:	57de97ff 	bl	-8556(0xfffde94) # 1c001a20 <gpio_read>
1c003b90:	0015008c 	move	$r12,$r4
1c003b94:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003b88 <MatrixKey+0x44c>
1c003b98:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b9c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ba0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003ba4:	50008400 	b	132(0x84) # 1c003c28 <MatrixKey+0x4ec>
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
1c003bd4:	03400000 	andi	$r0,$r0,0x0
1c003bd8:	03400000 	andi	$r0,$r0,0x0
1c003bdc:	03400000 	andi	$r0,$r0,0x0
1c003be0:	03400000 	andi	$r0,$r0,0x0
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	03400000 	andi	$r0,$r0,0x0
1c003bec:	03400000 	andi	$r0,$r0,0x0
1c003bf0:	03400000 	andi	$r0,$r0,0x0
1c003bf4:	03400000 	andi	$r0,$r0,0x0
1c003bf8:	03400000 	andi	$r0,$r0,0x0
1c003bfc:	03400000 	andi	$r0,$r0,0x0
1c003c00:	03400000 	andi	$r0,$r0,0x0
1c003c04:	03400000 	andi	$r0,$r0,0x0
1c003c08:	03400000 	andi	$r0,$r0,0x0
1c003c0c:	03400000 	andi	$r0,$r0,0x0
1c003c10:	03400000 	andi	$r0,$r0,0x0
1c003c14:	03400000 	andi	$r0,$r0,0x0
1c003c18:	03400000 	andi	$r0,$r0,0x0
1c003c1c:	03400000 	andi	$r0,$r0,0x0
1c003c20:	03400000 	andi	$r0,$r0,0x0
1c003c24:	03400000 	andi	$r0,$r0,0x0
1c003c28:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003c2c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c30:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003c34:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003ba8 <MatrixKey+0x46c>
1c003c38:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c003c3c:	5012b400 	b	4788(0x12b4) # 1c004ef0 <MatrixKey+0x17b4>
1c003c40:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003c44:	57dddfff 	bl	-8740(0xfffdddc) # 1c001a20 <gpio_read>
1c003c48:	0015008c 	move	$r12,$r4
1c003c4c:	44016180 	bnez	$r12,352(0x160) # 1c003dac <MatrixKey+0x670>
1c003c50:	1400008c 	lu12i.w	$r12,4(0x4)
1c003c54:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c58:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c003c5c:	50008400 	b	132(0x84) # 1c003ce0 <MatrixKey+0x5a4>
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
1c003c88:	03400000 	andi	$r0,$r0,0x0
1c003c8c:	03400000 	andi	$r0,$r0,0x0
1c003c90:	03400000 	andi	$r0,$r0,0x0
1c003c94:	03400000 	andi	$r0,$r0,0x0
1c003c98:	03400000 	andi	$r0,$r0,0x0
1c003c9c:	03400000 	andi	$r0,$r0,0x0
1c003ca0:	03400000 	andi	$r0,$r0,0x0
1c003ca4:	03400000 	andi	$r0,$r0,0x0
1c003ca8:	03400000 	andi	$r0,$r0,0x0
1c003cac:	03400000 	andi	$r0,$r0,0x0
1c003cb0:	03400000 	andi	$r0,$r0,0x0
1c003cb4:	03400000 	andi	$r0,$r0,0x0
1c003cb8:	03400000 	andi	$r0,$r0,0x0
1c003cbc:	03400000 	andi	$r0,$r0,0x0
1c003cc0:	03400000 	andi	$r0,$r0,0x0
1c003cc4:	03400000 	andi	$r0,$r0,0x0
1c003cc8:	03400000 	andi	$r0,$r0,0x0
1c003ccc:	03400000 	andi	$r0,$r0,0x0
1c003cd0:	03400000 	andi	$r0,$r0,0x0
1c003cd4:	03400000 	andi	$r0,$r0,0x0
1c003cd8:	03400000 	andi	$r0,$r0,0x0
1c003cdc:	03400000 	andi	$r0,$r0,0x0
1c003ce0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c003ce4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ce8:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c003cec:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003c60 <MatrixKey+0x524>
1c003cf0:	03400000 	andi	$r0,$r0,0x0
1c003cf4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003cf8:	57dd2bff 	bl	-8920(0xfffdd28) # 1c001a20 <gpio_read>
1c003cfc:	0015008c 	move	$r12,$r4
1c003d00:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003cf4 <MatrixKey+0x5b8>
1c003d04:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d08:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d0c:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003d10:	50008400 	b	132(0x84) # 1c003d94 <MatrixKey+0x658>
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
1c003d40:	03400000 	andi	$r0,$r0,0x0
1c003d44:	03400000 	andi	$r0,$r0,0x0
1c003d48:	03400000 	andi	$r0,$r0,0x0
1c003d4c:	03400000 	andi	$r0,$r0,0x0
1c003d50:	03400000 	andi	$r0,$r0,0x0
1c003d54:	03400000 	andi	$r0,$r0,0x0
1c003d58:	03400000 	andi	$r0,$r0,0x0
1c003d5c:	03400000 	andi	$r0,$r0,0x0
1c003d60:	03400000 	andi	$r0,$r0,0x0
1c003d64:	03400000 	andi	$r0,$r0,0x0
1c003d68:	03400000 	andi	$r0,$r0,0x0
1c003d6c:	03400000 	andi	$r0,$r0,0x0
1c003d70:	03400000 	andi	$r0,$r0,0x0
1c003d74:	03400000 	andi	$r0,$r0,0x0
1c003d78:	03400000 	andi	$r0,$r0,0x0
1c003d7c:	03400000 	andi	$r0,$r0,0x0
1c003d80:	03400000 	andi	$r0,$r0,0x0
1c003d84:	03400000 	andi	$r0,$r0,0x0
1c003d88:	03400000 	andi	$r0,$r0,0x0
1c003d8c:	03400000 	andi	$r0,$r0,0x0
1c003d90:	03400000 	andi	$r0,$r0,0x0
1c003d94:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c003d98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d9c:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c003da0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003d14 <MatrixKey+0x5d8>
1c003da4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003da8:	50114800 	b	4424(0x1148) # 1c004ef0 <MatrixKey+0x17b4>
1c003dac:	57f93fff 	bl	-1732(0xffff93c) # 1c0036e8 <clkey>
1c003db0:	00150005 	move	$r5,$r0
1c003db4:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003db8:	57db73ff 	bl	-9360(0xfffdb70) # 1c001928 <gpio_write>
1c003dbc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003dc0:	57dc63ff 	bl	-9120(0xfffdc60) # 1c001a20 <gpio_read>
1c003dc4:	0015008c 	move	$r12,$r4
1c003dc8:	44016180 	bnez	$r12,352(0x160) # 1c003f28 <MatrixKey+0x7ec>
1c003dcc:	1400008c 	lu12i.w	$r12,4(0x4)
1c003dd0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003dd4:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c003dd8:	50008400 	b	132(0x84) # 1c003e5c <MatrixKey+0x720>
1c003ddc:	03400000 	andi	$r0,$r0,0x0
1c003de0:	03400000 	andi	$r0,$r0,0x0
1c003de4:	03400000 	andi	$r0,$r0,0x0
1c003de8:	03400000 	andi	$r0,$r0,0x0
1c003dec:	03400000 	andi	$r0,$r0,0x0
1c003df0:	03400000 	andi	$r0,$r0,0x0
1c003df4:	03400000 	andi	$r0,$r0,0x0
1c003df8:	03400000 	andi	$r0,$r0,0x0
1c003dfc:	03400000 	andi	$r0,$r0,0x0
1c003e00:	03400000 	andi	$r0,$r0,0x0
1c003e04:	03400000 	andi	$r0,$r0,0x0
1c003e08:	03400000 	andi	$r0,$r0,0x0
1c003e0c:	03400000 	andi	$r0,$r0,0x0
1c003e10:	03400000 	andi	$r0,$r0,0x0
1c003e14:	03400000 	andi	$r0,$r0,0x0
1c003e18:	03400000 	andi	$r0,$r0,0x0
1c003e1c:	03400000 	andi	$r0,$r0,0x0
1c003e20:	03400000 	andi	$r0,$r0,0x0
1c003e24:	03400000 	andi	$r0,$r0,0x0
1c003e28:	03400000 	andi	$r0,$r0,0x0
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
1c003e5c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c003e60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003e64:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c003e68:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003ddc <MatrixKey+0x6a0>
1c003e6c:	03400000 	andi	$r0,$r0,0x0
1c003e70:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003e74:	57dbafff 	bl	-9300(0xfffdbac) # 1c001a20 <gpio_read>
1c003e78:	0015008c 	move	$r12,$r4
1c003e7c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003e70 <MatrixKey+0x734>
1c003e80:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e84:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e88:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c003e8c:	50008400 	b	132(0x84) # 1c003f10 <MatrixKey+0x7d4>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	03400000 	andi	$r0,$r0,0x0
1c003e98:	03400000 	andi	$r0,$r0,0x0
1c003e9c:	03400000 	andi	$r0,$r0,0x0
1c003ea0:	03400000 	andi	$r0,$r0,0x0
1c003ea4:	03400000 	andi	$r0,$r0,0x0
1c003ea8:	03400000 	andi	$r0,$r0,0x0
1c003eac:	03400000 	andi	$r0,$r0,0x0
1c003eb0:	03400000 	andi	$r0,$r0,0x0
1c003eb4:	03400000 	andi	$r0,$r0,0x0
1c003eb8:	03400000 	andi	$r0,$r0,0x0
1c003ebc:	03400000 	andi	$r0,$r0,0x0
1c003ec0:	03400000 	andi	$r0,$r0,0x0
1c003ec4:	03400000 	andi	$r0,$r0,0x0
1c003ec8:	03400000 	andi	$r0,$r0,0x0
1c003ecc:	03400000 	andi	$r0,$r0,0x0
1c003ed0:	03400000 	andi	$r0,$r0,0x0
1c003ed4:	03400000 	andi	$r0,$r0,0x0
1c003ed8:	03400000 	andi	$r0,$r0,0x0
1c003edc:	03400000 	andi	$r0,$r0,0x0
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
1c003f10:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c003f14:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f18:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c003f1c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003e90 <MatrixKey+0x754>
1c003f20:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003f24:	500fcc00 	b	4044(0xfcc) # 1c004ef0 <MatrixKey+0x17b4>
1c003f28:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003f2c:	57daf7ff 	bl	-9484(0xfffdaf4) # 1c001a20 <gpio_read>
1c003f30:	0015008c 	move	$r12,$r4
1c003f34:	44016180 	bnez	$r12,352(0x160) # 1c004094 <MatrixKey+0x958>
1c003f38:	1400008c 	lu12i.w	$r12,4(0x4)
1c003f3c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003f40:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c003f44:	50008400 	b	132(0x84) # 1c003fc8 <MatrixKey+0x88c>
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	03400000 	andi	$r0,$r0,0x0
1c003f50:	03400000 	andi	$r0,$r0,0x0
1c003f54:	03400000 	andi	$r0,$r0,0x0
1c003f58:	03400000 	andi	$r0,$r0,0x0
1c003f5c:	03400000 	andi	$r0,$r0,0x0
1c003f60:	03400000 	andi	$r0,$r0,0x0
1c003f64:	03400000 	andi	$r0,$r0,0x0
1c003f68:	03400000 	andi	$r0,$r0,0x0
1c003f6c:	03400000 	andi	$r0,$r0,0x0
1c003f70:	03400000 	andi	$r0,$r0,0x0
1c003f74:	03400000 	andi	$r0,$r0,0x0
1c003f78:	03400000 	andi	$r0,$r0,0x0
1c003f7c:	03400000 	andi	$r0,$r0,0x0
1c003f80:	03400000 	andi	$r0,$r0,0x0
1c003f84:	03400000 	andi	$r0,$r0,0x0
1c003f88:	03400000 	andi	$r0,$r0,0x0
1c003f8c:	03400000 	andi	$r0,$r0,0x0
1c003f90:	03400000 	andi	$r0,$r0,0x0
1c003f94:	03400000 	andi	$r0,$r0,0x0
1c003f98:	03400000 	andi	$r0,$r0,0x0
1c003f9c:	03400000 	andi	$r0,$r0,0x0
1c003fa0:	03400000 	andi	$r0,$r0,0x0
1c003fa4:	03400000 	andi	$r0,$r0,0x0
1c003fa8:	03400000 	andi	$r0,$r0,0x0
1c003fac:	03400000 	andi	$r0,$r0,0x0
1c003fb0:	03400000 	andi	$r0,$r0,0x0
1c003fb4:	03400000 	andi	$r0,$r0,0x0
1c003fb8:	03400000 	andi	$r0,$r0,0x0
1c003fbc:	03400000 	andi	$r0,$r0,0x0
1c003fc0:	03400000 	andi	$r0,$r0,0x0
1c003fc4:	03400000 	andi	$r0,$r0,0x0
1c003fc8:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c003fcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003fd0:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c003fd4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003f48 <MatrixKey+0x80c>
1c003fd8:	03400000 	andi	$r0,$r0,0x0
1c003fdc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003fe0:	57da43ff 	bl	-9664(0xfffda40) # 1c001a20 <gpio_read>
1c003fe4:	0015008c 	move	$r12,$r4
1c003fe8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003fdc <MatrixKey+0x8a0>
1c003fec:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ff0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ff4:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c003ff8:	50008400 	b	132(0x84) # 1c00407c <MatrixKey+0x940>
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
1c004028:	03400000 	andi	$r0,$r0,0x0
1c00402c:	03400000 	andi	$r0,$r0,0x0
1c004030:	03400000 	andi	$r0,$r0,0x0
1c004034:	03400000 	andi	$r0,$r0,0x0
1c004038:	03400000 	andi	$r0,$r0,0x0
1c00403c:	03400000 	andi	$r0,$r0,0x0
1c004040:	03400000 	andi	$r0,$r0,0x0
1c004044:	03400000 	andi	$r0,$r0,0x0
1c004048:	03400000 	andi	$r0,$r0,0x0
1c00404c:	03400000 	andi	$r0,$r0,0x0
1c004050:	03400000 	andi	$r0,$r0,0x0
1c004054:	03400000 	andi	$r0,$r0,0x0
1c004058:	03400000 	andi	$r0,$r0,0x0
1c00405c:	03400000 	andi	$r0,$r0,0x0
1c004060:	03400000 	andi	$r0,$r0,0x0
1c004064:	03400000 	andi	$r0,$r0,0x0
1c004068:	03400000 	andi	$r0,$r0,0x0
1c00406c:	03400000 	andi	$r0,$r0,0x0
1c004070:	03400000 	andi	$r0,$r0,0x0
1c004074:	03400000 	andi	$r0,$r0,0x0
1c004078:	03400000 	andi	$r0,$r0,0x0
1c00407c:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c004080:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004084:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c004088:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003ffc <MatrixKey+0x8c0>
1c00408c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004090:	500e6000 	b	3680(0xe60) # 1c004ef0 <MatrixKey+0x17b4>
1c004094:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004098:	57d98bff 	bl	-9848(0xfffd988) # 1c001a20 <gpio_read>
1c00409c:	0015008c 	move	$r12,$r4
1c0040a0:	44016180 	bnez	$r12,352(0x160) # 1c004200 <MatrixKey+0xac4>
1c0040a4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0040a8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0040ac:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c0040b0:	50008400 	b	132(0x84) # 1c004134 <MatrixKey+0x9f8>
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
1c0040dc:	03400000 	andi	$r0,$r0,0x0
1c0040e0:	03400000 	andi	$r0,$r0,0x0
1c0040e4:	03400000 	andi	$r0,$r0,0x0
1c0040e8:	03400000 	andi	$r0,$r0,0x0
1c0040ec:	03400000 	andi	$r0,$r0,0x0
1c0040f0:	03400000 	andi	$r0,$r0,0x0
1c0040f4:	03400000 	andi	$r0,$r0,0x0
1c0040f8:	03400000 	andi	$r0,$r0,0x0
1c0040fc:	03400000 	andi	$r0,$r0,0x0
1c004100:	03400000 	andi	$r0,$r0,0x0
1c004104:	03400000 	andi	$r0,$r0,0x0
1c004108:	03400000 	andi	$r0,$r0,0x0
1c00410c:	03400000 	andi	$r0,$r0,0x0
1c004110:	03400000 	andi	$r0,$r0,0x0
1c004114:	03400000 	andi	$r0,$r0,0x0
1c004118:	03400000 	andi	$r0,$r0,0x0
1c00411c:	03400000 	andi	$r0,$r0,0x0
1c004120:	03400000 	andi	$r0,$r0,0x0
1c004124:	03400000 	andi	$r0,$r0,0x0
1c004128:	03400000 	andi	$r0,$r0,0x0
1c00412c:	03400000 	andi	$r0,$r0,0x0
1c004130:	03400000 	andi	$r0,$r0,0x0
1c004134:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c004138:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00413c:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c004140:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0040b4 <MatrixKey+0x978>
1c004144:	03400000 	andi	$r0,$r0,0x0
1c004148:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00414c:	57d8d7ff 	bl	-10028(0xfffd8d4) # 1c001a20 <gpio_read>
1c004150:	0015008c 	move	$r12,$r4
1c004154:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004148 <MatrixKey+0xa0c>
1c004158:	1400008c 	lu12i.w	$r12,4(0x4)
1c00415c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004160:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c004164:	50008400 	b	132(0x84) # 1c0041e8 <MatrixKey+0xaac>
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
1c004194:	03400000 	andi	$r0,$r0,0x0
1c004198:	03400000 	andi	$r0,$r0,0x0
1c00419c:	03400000 	andi	$r0,$r0,0x0
1c0041a0:	03400000 	andi	$r0,$r0,0x0
1c0041a4:	03400000 	andi	$r0,$r0,0x0
1c0041a8:	03400000 	andi	$r0,$r0,0x0
1c0041ac:	03400000 	andi	$r0,$r0,0x0
1c0041b0:	03400000 	andi	$r0,$r0,0x0
1c0041b4:	03400000 	andi	$r0,$r0,0x0
1c0041b8:	03400000 	andi	$r0,$r0,0x0
1c0041bc:	03400000 	andi	$r0,$r0,0x0
1c0041c0:	03400000 	andi	$r0,$r0,0x0
1c0041c4:	03400000 	andi	$r0,$r0,0x0
1c0041c8:	03400000 	andi	$r0,$r0,0x0
1c0041cc:	03400000 	andi	$r0,$r0,0x0
1c0041d0:	03400000 	andi	$r0,$r0,0x0
1c0041d4:	03400000 	andi	$r0,$r0,0x0
1c0041d8:	03400000 	andi	$r0,$r0,0x0
1c0041dc:	03400000 	andi	$r0,$r0,0x0
1c0041e0:	03400000 	andi	$r0,$r0,0x0
1c0041e4:	03400000 	andi	$r0,$r0,0x0
1c0041e8:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c0041ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0041f0:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c0041f4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004168 <MatrixKey+0xa2c>
1c0041f8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0041fc:	500cf400 	b	3316(0xcf4) # 1c004ef0 <MatrixKey+0x17b4>
1c004200:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004204:	57d81fff 	bl	-10212(0xfffd81c) # 1c001a20 <gpio_read>
1c004208:	0015008c 	move	$r12,$r4
1c00420c:	44016180 	bnez	$r12,352(0x160) # 1c00436c <MatrixKey+0xc30>
1c004210:	1400008c 	lu12i.w	$r12,4(0x4)
1c004214:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004218:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c00421c:	50008400 	b	132(0x84) # 1c0042a0 <MatrixKey+0xb64>
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
1c004248:	03400000 	andi	$r0,$r0,0x0
1c00424c:	03400000 	andi	$r0,$r0,0x0
1c004250:	03400000 	andi	$r0,$r0,0x0
1c004254:	03400000 	andi	$r0,$r0,0x0
1c004258:	03400000 	andi	$r0,$r0,0x0
1c00425c:	03400000 	andi	$r0,$r0,0x0
1c004260:	03400000 	andi	$r0,$r0,0x0
1c004264:	03400000 	andi	$r0,$r0,0x0
1c004268:	03400000 	andi	$r0,$r0,0x0
1c00426c:	03400000 	andi	$r0,$r0,0x0
1c004270:	03400000 	andi	$r0,$r0,0x0
1c004274:	03400000 	andi	$r0,$r0,0x0
1c004278:	03400000 	andi	$r0,$r0,0x0
1c00427c:	03400000 	andi	$r0,$r0,0x0
1c004280:	03400000 	andi	$r0,$r0,0x0
1c004284:	03400000 	andi	$r0,$r0,0x0
1c004288:	03400000 	andi	$r0,$r0,0x0
1c00428c:	03400000 	andi	$r0,$r0,0x0
1c004290:	03400000 	andi	$r0,$r0,0x0
1c004294:	03400000 	andi	$r0,$r0,0x0
1c004298:	03400000 	andi	$r0,$r0,0x0
1c00429c:	03400000 	andi	$r0,$r0,0x0
1c0042a0:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c0042a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0042a8:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c0042ac:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004220 <MatrixKey+0xae4>
1c0042b0:	03400000 	andi	$r0,$r0,0x0
1c0042b4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0042b8:	57d76bff 	bl	-10392(0xfffd768) # 1c001a20 <gpio_read>
1c0042bc:	0015008c 	move	$r12,$r4
1c0042c0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0042b4 <MatrixKey+0xb78>
1c0042c4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0042c8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0042cc:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c0042d0:	50008400 	b	132(0x84) # 1c004354 <MatrixKey+0xc18>
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
1c004300:	03400000 	andi	$r0,$r0,0x0
1c004304:	03400000 	andi	$r0,$r0,0x0
1c004308:	03400000 	andi	$r0,$r0,0x0
1c00430c:	03400000 	andi	$r0,$r0,0x0
1c004310:	03400000 	andi	$r0,$r0,0x0
1c004314:	03400000 	andi	$r0,$r0,0x0
1c004318:	03400000 	andi	$r0,$r0,0x0
1c00431c:	03400000 	andi	$r0,$r0,0x0
1c004320:	03400000 	andi	$r0,$r0,0x0
1c004324:	03400000 	andi	$r0,$r0,0x0
1c004328:	03400000 	andi	$r0,$r0,0x0
1c00432c:	03400000 	andi	$r0,$r0,0x0
1c004330:	03400000 	andi	$r0,$r0,0x0
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	03400000 	andi	$r0,$r0,0x0
1c00433c:	03400000 	andi	$r0,$r0,0x0
1c004340:	03400000 	andi	$r0,$r0,0x0
1c004344:	03400000 	andi	$r0,$r0,0x0
1c004348:	03400000 	andi	$r0,$r0,0x0
1c00434c:	03400000 	andi	$r0,$r0,0x0
1c004350:	03400000 	andi	$r0,$r0,0x0
1c004354:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c004358:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00435c:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c004360:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0042d4 <MatrixKey+0xb98>
1c004364:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c004368:	500b8800 	b	2952(0xb88) # 1c004ef0 <MatrixKey+0x17b4>
1c00436c:	57f37fff 	bl	-3204(0xffff37c) # 1c0036e8 <clkey>
1c004370:	00150005 	move	$r5,$r0
1c004374:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004378:	57d5b3ff 	bl	-10832(0xfffd5b0) # 1c001928 <gpio_write>
1c00437c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004380:	57d6a3ff 	bl	-10592(0xfffd6a0) # 1c001a20 <gpio_read>
1c004384:	0015008c 	move	$r12,$r4
1c004388:	44016180 	bnez	$r12,352(0x160) # 1c0044e8 <MatrixKey+0xdac>
1c00438c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004390:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004394:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c004398:	50008400 	b	132(0x84) # 1c00441c <MatrixKey+0xce0>
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	03400000 	andi	$r0,$r0,0x0
1c0043a4:	03400000 	andi	$r0,$r0,0x0
1c0043a8:	03400000 	andi	$r0,$r0,0x0
1c0043ac:	03400000 	andi	$r0,$r0,0x0
1c0043b0:	03400000 	andi	$r0,$r0,0x0
1c0043b4:	03400000 	andi	$r0,$r0,0x0
1c0043b8:	03400000 	andi	$r0,$r0,0x0
1c0043bc:	03400000 	andi	$r0,$r0,0x0
1c0043c0:	03400000 	andi	$r0,$r0,0x0
1c0043c4:	03400000 	andi	$r0,$r0,0x0
1c0043c8:	03400000 	andi	$r0,$r0,0x0
1c0043cc:	03400000 	andi	$r0,$r0,0x0
1c0043d0:	03400000 	andi	$r0,$r0,0x0
1c0043d4:	03400000 	andi	$r0,$r0,0x0
1c0043d8:	03400000 	andi	$r0,$r0,0x0
1c0043dc:	03400000 	andi	$r0,$r0,0x0
1c0043e0:	03400000 	andi	$r0,$r0,0x0
1c0043e4:	03400000 	andi	$r0,$r0,0x0
1c0043e8:	03400000 	andi	$r0,$r0,0x0
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
1c00441c:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c004420:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004424:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c004428:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00439c <MatrixKey+0xc60>
1c00442c:	03400000 	andi	$r0,$r0,0x0
1c004430:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004434:	57d5efff 	bl	-10772(0xfffd5ec) # 1c001a20 <gpio_read>
1c004438:	0015008c 	move	$r12,$r4
1c00443c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004430 <MatrixKey+0xcf4>
1c004440:	1400008c 	lu12i.w	$r12,4(0x4)
1c004444:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004448:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c00444c:	50008400 	b	132(0x84) # 1c0044d0 <MatrixKey+0xd94>
1c004450:	03400000 	andi	$r0,$r0,0x0
1c004454:	03400000 	andi	$r0,$r0,0x0
1c004458:	03400000 	andi	$r0,$r0,0x0
1c00445c:	03400000 	andi	$r0,$r0,0x0
1c004460:	03400000 	andi	$r0,$r0,0x0
1c004464:	03400000 	andi	$r0,$r0,0x0
1c004468:	03400000 	andi	$r0,$r0,0x0
1c00446c:	03400000 	andi	$r0,$r0,0x0
1c004470:	03400000 	andi	$r0,$r0,0x0
1c004474:	03400000 	andi	$r0,$r0,0x0
1c004478:	03400000 	andi	$r0,$r0,0x0
1c00447c:	03400000 	andi	$r0,$r0,0x0
1c004480:	03400000 	andi	$r0,$r0,0x0
1c004484:	03400000 	andi	$r0,$r0,0x0
1c004488:	03400000 	andi	$r0,$r0,0x0
1c00448c:	03400000 	andi	$r0,$r0,0x0
1c004490:	03400000 	andi	$r0,$r0,0x0
1c004494:	03400000 	andi	$r0,$r0,0x0
1c004498:	03400000 	andi	$r0,$r0,0x0
1c00449c:	03400000 	andi	$r0,$r0,0x0
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
1c0044d0:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c0044d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0044d8:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c0044dc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004450 <MatrixKey+0xd14>
1c0044e0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0044e4:	500a0c00 	b	2572(0xa0c) # 1c004ef0 <MatrixKey+0x17b4>
1c0044e8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0044ec:	57d537ff 	bl	-10956(0xfffd534) # 1c001a20 <gpio_read>
1c0044f0:	0015008c 	move	$r12,$r4
1c0044f4:	44016180 	bnez	$r12,352(0x160) # 1c004654 <MatrixKey+0xf18>
1c0044f8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0044fc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004500:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c004504:	50008400 	b	132(0x84) # 1c004588 <MatrixKey+0xe4c>
1c004508:	03400000 	andi	$r0,$r0,0x0
1c00450c:	03400000 	andi	$r0,$r0,0x0
1c004510:	03400000 	andi	$r0,$r0,0x0
1c004514:	03400000 	andi	$r0,$r0,0x0
1c004518:	03400000 	andi	$r0,$r0,0x0
1c00451c:	03400000 	andi	$r0,$r0,0x0
1c004520:	03400000 	andi	$r0,$r0,0x0
1c004524:	03400000 	andi	$r0,$r0,0x0
1c004528:	03400000 	andi	$r0,$r0,0x0
1c00452c:	03400000 	andi	$r0,$r0,0x0
1c004530:	03400000 	andi	$r0,$r0,0x0
1c004534:	03400000 	andi	$r0,$r0,0x0
1c004538:	03400000 	andi	$r0,$r0,0x0
1c00453c:	03400000 	andi	$r0,$r0,0x0
1c004540:	03400000 	andi	$r0,$r0,0x0
1c004544:	03400000 	andi	$r0,$r0,0x0
1c004548:	03400000 	andi	$r0,$r0,0x0
1c00454c:	03400000 	andi	$r0,$r0,0x0
1c004550:	03400000 	andi	$r0,$r0,0x0
1c004554:	03400000 	andi	$r0,$r0,0x0
1c004558:	03400000 	andi	$r0,$r0,0x0
1c00455c:	03400000 	andi	$r0,$r0,0x0
1c004560:	03400000 	andi	$r0,$r0,0x0
1c004564:	03400000 	andi	$r0,$r0,0x0
1c004568:	03400000 	andi	$r0,$r0,0x0
1c00456c:	03400000 	andi	$r0,$r0,0x0
1c004570:	03400000 	andi	$r0,$r0,0x0
1c004574:	03400000 	andi	$r0,$r0,0x0
1c004578:	03400000 	andi	$r0,$r0,0x0
1c00457c:	03400000 	andi	$r0,$r0,0x0
1c004580:	03400000 	andi	$r0,$r0,0x0
1c004584:	03400000 	andi	$r0,$r0,0x0
1c004588:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c00458c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004590:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c004594:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004508 <MatrixKey+0xdcc>
1c004598:	03400000 	andi	$r0,$r0,0x0
1c00459c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0045a0:	57d483ff 	bl	-11136(0xfffd480) # 1c001a20 <gpio_read>
1c0045a4:	0015008c 	move	$r12,$r4
1c0045a8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00459c <MatrixKey+0xe60>
1c0045ac:	1400008c 	lu12i.w	$r12,4(0x4)
1c0045b0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0045b4:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c0045b8:	50008400 	b	132(0x84) # 1c00463c <MatrixKey+0xf00>
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
1c0045e8:	03400000 	andi	$r0,$r0,0x0
1c0045ec:	03400000 	andi	$r0,$r0,0x0
1c0045f0:	03400000 	andi	$r0,$r0,0x0
1c0045f4:	03400000 	andi	$r0,$r0,0x0
1c0045f8:	03400000 	andi	$r0,$r0,0x0
1c0045fc:	03400000 	andi	$r0,$r0,0x0
1c004600:	03400000 	andi	$r0,$r0,0x0
1c004604:	03400000 	andi	$r0,$r0,0x0
1c004608:	03400000 	andi	$r0,$r0,0x0
1c00460c:	03400000 	andi	$r0,$r0,0x0
1c004610:	03400000 	andi	$r0,$r0,0x0
1c004614:	03400000 	andi	$r0,$r0,0x0
1c004618:	03400000 	andi	$r0,$r0,0x0
1c00461c:	03400000 	andi	$r0,$r0,0x0
1c004620:	03400000 	andi	$r0,$r0,0x0
1c004624:	03400000 	andi	$r0,$r0,0x0
1c004628:	03400000 	andi	$r0,$r0,0x0
1c00462c:	03400000 	andi	$r0,$r0,0x0
1c004630:	03400000 	andi	$r0,$r0,0x0
1c004634:	03400000 	andi	$r0,$r0,0x0
1c004638:	03400000 	andi	$r0,$r0,0x0
1c00463c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c004640:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004644:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c004648:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0045bc <MatrixKey+0xe80>
1c00464c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004650:	5008a000 	b	2208(0x8a0) # 1c004ef0 <MatrixKey+0x17b4>
1c004654:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004658:	57d3cbff 	bl	-11320(0xfffd3c8) # 1c001a20 <gpio_read>
1c00465c:	0015008c 	move	$r12,$r4
1c004660:	44016180 	bnez	$r12,352(0x160) # 1c0047c0 <MatrixKey+0x1084>
1c004664:	1400008c 	lu12i.w	$r12,4(0x4)
1c004668:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00466c:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c004670:	50008400 	b	132(0x84) # 1c0046f4 <MatrixKey+0xfb8>
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
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	03400000 	andi	$r0,$r0,0x0
1c0046a4:	03400000 	andi	$r0,$r0,0x0
1c0046a8:	03400000 	andi	$r0,$r0,0x0
1c0046ac:	03400000 	andi	$r0,$r0,0x0
1c0046b0:	03400000 	andi	$r0,$r0,0x0
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	03400000 	andi	$r0,$r0,0x0
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	03400000 	andi	$r0,$r0,0x0
1c0046c4:	03400000 	andi	$r0,$r0,0x0
1c0046c8:	03400000 	andi	$r0,$r0,0x0
1c0046cc:	03400000 	andi	$r0,$r0,0x0
1c0046d0:	03400000 	andi	$r0,$r0,0x0
1c0046d4:	03400000 	andi	$r0,$r0,0x0
1c0046d8:	03400000 	andi	$r0,$r0,0x0
1c0046dc:	03400000 	andi	$r0,$r0,0x0
1c0046e0:	03400000 	andi	$r0,$r0,0x0
1c0046e4:	03400000 	andi	$r0,$r0,0x0
1c0046e8:	03400000 	andi	$r0,$r0,0x0
1c0046ec:	03400000 	andi	$r0,$r0,0x0
1c0046f0:	03400000 	andi	$r0,$r0,0x0
1c0046f4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0046f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046fc:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c004700:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004674 <MatrixKey+0xf38>
1c004704:	03400000 	andi	$r0,$r0,0x0
1c004708:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00470c:	57d317ff 	bl	-11500(0xfffd314) # 1c001a20 <gpio_read>
1c004710:	0015008c 	move	$r12,$r4
1c004714:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004708 <MatrixKey+0xfcc>
1c004718:	1400008c 	lu12i.w	$r12,4(0x4)
1c00471c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004720:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c004724:	50008400 	b	132(0x84) # 1c0047a8 <MatrixKey+0x106c>
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
1c004754:	03400000 	andi	$r0,$r0,0x0
1c004758:	03400000 	andi	$r0,$r0,0x0
1c00475c:	03400000 	andi	$r0,$r0,0x0
1c004760:	03400000 	andi	$r0,$r0,0x0
1c004764:	03400000 	andi	$r0,$r0,0x0
1c004768:	03400000 	andi	$r0,$r0,0x0
1c00476c:	03400000 	andi	$r0,$r0,0x0
1c004770:	03400000 	andi	$r0,$r0,0x0
1c004774:	03400000 	andi	$r0,$r0,0x0
1c004778:	03400000 	andi	$r0,$r0,0x0
1c00477c:	03400000 	andi	$r0,$r0,0x0
1c004780:	03400000 	andi	$r0,$r0,0x0
1c004784:	03400000 	andi	$r0,$r0,0x0
1c004788:	03400000 	andi	$r0,$r0,0x0
1c00478c:	03400000 	andi	$r0,$r0,0x0
1c004790:	03400000 	andi	$r0,$r0,0x0
1c004794:	03400000 	andi	$r0,$r0,0x0
1c004798:	03400000 	andi	$r0,$r0,0x0
1c00479c:	03400000 	andi	$r0,$r0,0x0
1c0047a0:	03400000 	andi	$r0,$r0,0x0
1c0047a4:	03400000 	andi	$r0,$r0,0x0
1c0047a8:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c0047ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0047b0:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c0047b4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004728 <MatrixKey+0xfec>
1c0047b8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0047bc:	50073400 	b	1844(0x734) # 1c004ef0 <MatrixKey+0x17b4>
1c0047c0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0047c4:	57d25fff 	bl	-11684(0xfffd25c) # 1c001a20 <gpio_read>
1c0047c8:	0015008c 	move	$r12,$r4
1c0047cc:	44016180 	bnez	$r12,352(0x160) # 1c00492c <MatrixKey+0x11f0>
1c0047d0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0047d4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0047d8:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c0047dc:	50008400 	b	132(0x84) # 1c004860 <MatrixKey+0x1124>
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
1c004808:	03400000 	andi	$r0,$r0,0x0
1c00480c:	03400000 	andi	$r0,$r0,0x0
1c004810:	03400000 	andi	$r0,$r0,0x0
1c004814:	03400000 	andi	$r0,$r0,0x0
1c004818:	03400000 	andi	$r0,$r0,0x0
1c00481c:	03400000 	andi	$r0,$r0,0x0
1c004820:	03400000 	andi	$r0,$r0,0x0
1c004824:	03400000 	andi	$r0,$r0,0x0
1c004828:	03400000 	andi	$r0,$r0,0x0
1c00482c:	03400000 	andi	$r0,$r0,0x0
1c004830:	03400000 	andi	$r0,$r0,0x0
1c004834:	03400000 	andi	$r0,$r0,0x0
1c004838:	03400000 	andi	$r0,$r0,0x0
1c00483c:	03400000 	andi	$r0,$r0,0x0
1c004840:	03400000 	andi	$r0,$r0,0x0
1c004844:	03400000 	andi	$r0,$r0,0x0
1c004848:	03400000 	andi	$r0,$r0,0x0
1c00484c:	03400000 	andi	$r0,$r0,0x0
1c004850:	03400000 	andi	$r0,$r0,0x0
1c004854:	03400000 	andi	$r0,$r0,0x0
1c004858:	03400000 	andi	$r0,$r0,0x0
1c00485c:	03400000 	andi	$r0,$r0,0x0
1c004860:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c004864:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004868:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c00486c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0047e0 <MatrixKey+0x10a4>
1c004870:	03400000 	andi	$r0,$r0,0x0
1c004874:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004878:	57d1abff 	bl	-11864(0xfffd1a8) # 1c001a20 <gpio_read>
1c00487c:	0015008c 	move	$r12,$r4
1c004880:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004874 <MatrixKey+0x1138>
1c004884:	1400008c 	lu12i.w	$r12,4(0x4)
1c004888:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00488c:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c004890:	50008400 	b	132(0x84) # 1c004914 <MatrixKey+0x11d8>
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
1c0048c0:	03400000 	andi	$r0,$r0,0x0
1c0048c4:	03400000 	andi	$r0,$r0,0x0
1c0048c8:	03400000 	andi	$r0,$r0,0x0
1c0048cc:	03400000 	andi	$r0,$r0,0x0
1c0048d0:	03400000 	andi	$r0,$r0,0x0
1c0048d4:	03400000 	andi	$r0,$r0,0x0
1c0048d8:	03400000 	andi	$r0,$r0,0x0
1c0048dc:	03400000 	andi	$r0,$r0,0x0
1c0048e0:	03400000 	andi	$r0,$r0,0x0
1c0048e4:	03400000 	andi	$r0,$r0,0x0
1c0048e8:	03400000 	andi	$r0,$r0,0x0
1c0048ec:	03400000 	andi	$r0,$r0,0x0
1c0048f0:	03400000 	andi	$r0,$r0,0x0
1c0048f4:	03400000 	andi	$r0,$r0,0x0
1c0048f8:	03400000 	andi	$r0,$r0,0x0
1c0048fc:	03400000 	andi	$r0,$r0,0x0
1c004900:	03400000 	andi	$r0,$r0,0x0
1c004904:	03400000 	andi	$r0,$r0,0x0
1c004908:	03400000 	andi	$r0,$r0,0x0
1c00490c:	03400000 	andi	$r0,$r0,0x0
1c004910:	03400000 	andi	$r0,$r0,0x0
1c004914:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c004918:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00491c:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c004920:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004894 <MatrixKey+0x1158>
1c004924:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004928:	5005c800 	b	1480(0x5c8) # 1c004ef0 <MatrixKey+0x17b4>
1c00492c:	57edbfff 	bl	-4676(0xfffedbc) # 1c0036e8 <clkey>
1c004930:	00150005 	move	$r5,$r0
1c004934:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004938:	57cff3ff 	bl	-12304(0xfffcff0) # 1c001928 <gpio_write>
1c00493c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004940:	57d0e3ff 	bl	-12064(0xfffd0e0) # 1c001a20 <gpio_read>
1c004944:	0015008c 	move	$r12,$r4
1c004948:	44016180 	bnez	$r12,352(0x160) # 1c004aa8 <MatrixKey+0x136c>
1c00494c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004950:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004954:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c004958:	50008400 	b	132(0x84) # 1c0049dc <MatrixKey+0x12a0>
1c00495c:	03400000 	andi	$r0,$r0,0x0
1c004960:	03400000 	andi	$r0,$r0,0x0
1c004964:	03400000 	andi	$r0,$r0,0x0
1c004968:	03400000 	andi	$r0,$r0,0x0
1c00496c:	03400000 	andi	$r0,$r0,0x0
1c004970:	03400000 	andi	$r0,$r0,0x0
1c004974:	03400000 	andi	$r0,$r0,0x0
1c004978:	03400000 	andi	$r0,$r0,0x0
1c00497c:	03400000 	andi	$r0,$r0,0x0
1c004980:	03400000 	andi	$r0,$r0,0x0
1c004984:	03400000 	andi	$r0,$r0,0x0
1c004988:	03400000 	andi	$r0,$r0,0x0
1c00498c:	03400000 	andi	$r0,$r0,0x0
1c004990:	03400000 	andi	$r0,$r0,0x0
1c004994:	03400000 	andi	$r0,$r0,0x0
1c004998:	03400000 	andi	$r0,$r0,0x0
1c00499c:	03400000 	andi	$r0,$r0,0x0
1c0049a0:	03400000 	andi	$r0,$r0,0x0
1c0049a4:	03400000 	andi	$r0,$r0,0x0
1c0049a8:	03400000 	andi	$r0,$r0,0x0
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
1c0049dc:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c0049e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0049e4:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c0049e8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00495c <MatrixKey+0x1220>
1c0049ec:	03400000 	andi	$r0,$r0,0x0
1c0049f0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0049f4:	57d02fff 	bl	-12244(0xfffd02c) # 1c001a20 <gpio_read>
1c0049f8:	0015008c 	move	$r12,$r4
1c0049fc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0049f0 <MatrixKey+0x12b4>
1c004a00:	1400008c 	lu12i.w	$r12,4(0x4)
1c004a04:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004a08:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c004a0c:	50008400 	b	132(0x84) # 1c004a90 <MatrixKey+0x1354>
1c004a10:	03400000 	andi	$r0,$r0,0x0
1c004a14:	03400000 	andi	$r0,$r0,0x0
1c004a18:	03400000 	andi	$r0,$r0,0x0
1c004a1c:	03400000 	andi	$r0,$r0,0x0
1c004a20:	03400000 	andi	$r0,$r0,0x0
1c004a24:	03400000 	andi	$r0,$r0,0x0
1c004a28:	03400000 	andi	$r0,$r0,0x0
1c004a2c:	03400000 	andi	$r0,$r0,0x0
1c004a30:	03400000 	andi	$r0,$r0,0x0
1c004a34:	03400000 	andi	$r0,$r0,0x0
1c004a38:	03400000 	andi	$r0,$r0,0x0
1c004a3c:	03400000 	andi	$r0,$r0,0x0
1c004a40:	03400000 	andi	$r0,$r0,0x0
1c004a44:	03400000 	andi	$r0,$r0,0x0
1c004a48:	03400000 	andi	$r0,$r0,0x0
1c004a4c:	03400000 	andi	$r0,$r0,0x0
1c004a50:	03400000 	andi	$r0,$r0,0x0
1c004a54:	03400000 	andi	$r0,$r0,0x0
1c004a58:	03400000 	andi	$r0,$r0,0x0
1c004a5c:	03400000 	andi	$r0,$r0,0x0
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
1c004a90:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c004a94:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004a98:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c004a9c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004a10 <MatrixKey+0x12d4>
1c004aa0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c004aa4:	50044c00 	b	1100(0x44c) # 1c004ef0 <MatrixKey+0x17b4>
1c004aa8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004aac:	57cf77ff 	bl	-12428(0xfffcf74) # 1c001a20 <gpio_read>
1c004ab0:	0015008c 	move	$r12,$r4
1c004ab4:	44016180 	bnez	$r12,352(0x160) # 1c004c14 <MatrixKey+0x14d8>
1c004ab8:	1400008c 	lu12i.w	$r12,4(0x4)
1c004abc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004ac0:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c004ac4:	50008400 	b	132(0x84) # 1c004b48 <MatrixKey+0x140c>
1c004ac8:	03400000 	andi	$r0,$r0,0x0
1c004acc:	03400000 	andi	$r0,$r0,0x0
1c004ad0:	03400000 	andi	$r0,$r0,0x0
1c004ad4:	03400000 	andi	$r0,$r0,0x0
1c004ad8:	03400000 	andi	$r0,$r0,0x0
1c004adc:	03400000 	andi	$r0,$r0,0x0
1c004ae0:	03400000 	andi	$r0,$r0,0x0
1c004ae4:	03400000 	andi	$r0,$r0,0x0
1c004ae8:	03400000 	andi	$r0,$r0,0x0
1c004aec:	03400000 	andi	$r0,$r0,0x0
1c004af0:	03400000 	andi	$r0,$r0,0x0
1c004af4:	03400000 	andi	$r0,$r0,0x0
1c004af8:	03400000 	andi	$r0,$r0,0x0
1c004afc:	03400000 	andi	$r0,$r0,0x0
1c004b00:	03400000 	andi	$r0,$r0,0x0
1c004b04:	03400000 	andi	$r0,$r0,0x0
1c004b08:	03400000 	andi	$r0,$r0,0x0
1c004b0c:	03400000 	andi	$r0,$r0,0x0
1c004b10:	03400000 	andi	$r0,$r0,0x0
1c004b14:	03400000 	andi	$r0,$r0,0x0
1c004b18:	03400000 	andi	$r0,$r0,0x0
1c004b1c:	03400000 	andi	$r0,$r0,0x0
1c004b20:	03400000 	andi	$r0,$r0,0x0
1c004b24:	03400000 	andi	$r0,$r0,0x0
1c004b28:	03400000 	andi	$r0,$r0,0x0
1c004b2c:	03400000 	andi	$r0,$r0,0x0
1c004b30:	03400000 	andi	$r0,$r0,0x0
1c004b34:	03400000 	andi	$r0,$r0,0x0
1c004b38:	03400000 	andi	$r0,$r0,0x0
1c004b3c:	03400000 	andi	$r0,$r0,0x0
1c004b40:	03400000 	andi	$r0,$r0,0x0
1c004b44:	03400000 	andi	$r0,$r0,0x0
1c004b48:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c004b4c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004b50:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c004b54:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004ac8 <MatrixKey+0x138c>
1c004b58:	03400000 	andi	$r0,$r0,0x0
1c004b5c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004b60:	57cec3ff 	bl	-12608(0xfffcec0) # 1c001a20 <gpio_read>
1c004b64:	0015008c 	move	$r12,$r4
1c004b68:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004b5c <MatrixKey+0x1420>
1c004b6c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004b70:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004b74:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c004b78:	50008400 	b	132(0x84) # 1c004bfc <MatrixKey+0x14c0>
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
1c004ba8:	03400000 	andi	$r0,$r0,0x0
1c004bac:	03400000 	andi	$r0,$r0,0x0
1c004bb0:	03400000 	andi	$r0,$r0,0x0
1c004bb4:	03400000 	andi	$r0,$r0,0x0
1c004bb8:	03400000 	andi	$r0,$r0,0x0
1c004bbc:	03400000 	andi	$r0,$r0,0x0
1c004bc0:	03400000 	andi	$r0,$r0,0x0
1c004bc4:	03400000 	andi	$r0,$r0,0x0
1c004bc8:	03400000 	andi	$r0,$r0,0x0
1c004bcc:	03400000 	andi	$r0,$r0,0x0
1c004bd0:	03400000 	andi	$r0,$r0,0x0
1c004bd4:	03400000 	andi	$r0,$r0,0x0
1c004bd8:	03400000 	andi	$r0,$r0,0x0
1c004bdc:	03400000 	andi	$r0,$r0,0x0
1c004be0:	03400000 	andi	$r0,$r0,0x0
1c004be4:	03400000 	andi	$r0,$r0,0x0
1c004be8:	03400000 	andi	$r0,$r0,0x0
1c004bec:	03400000 	andi	$r0,$r0,0x0
1c004bf0:	03400000 	andi	$r0,$r0,0x0
1c004bf4:	03400000 	andi	$r0,$r0,0x0
1c004bf8:	03400000 	andi	$r0,$r0,0x0
1c004bfc:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c004c00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004c04:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c004c08:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004b7c <MatrixKey+0x1440>
1c004c0c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004c10:	5002e000 	b	736(0x2e0) # 1c004ef0 <MatrixKey+0x17b4>
1c004c14:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004c18:	57ce0bff 	bl	-12792(0xfffce08) # 1c001a20 <gpio_read>
1c004c1c:	0015008c 	move	$r12,$r4
1c004c20:	44016180 	bnez	$r12,352(0x160) # 1c004d80 <MatrixKey+0x1644>
1c004c24:	1400008c 	lu12i.w	$r12,4(0x4)
1c004c28:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004c2c:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c004c30:	50008400 	b	132(0x84) # 1c004cb4 <MatrixKey+0x1578>
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
1c004c5c:	03400000 	andi	$r0,$r0,0x0
1c004c60:	03400000 	andi	$r0,$r0,0x0
1c004c64:	03400000 	andi	$r0,$r0,0x0
1c004c68:	03400000 	andi	$r0,$r0,0x0
1c004c6c:	03400000 	andi	$r0,$r0,0x0
1c004c70:	03400000 	andi	$r0,$r0,0x0
1c004c74:	03400000 	andi	$r0,$r0,0x0
1c004c78:	03400000 	andi	$r0,$r0,0x0
1c004c7c:	03400000 	andi	$r0,$r0,0x0
1c004c80:	03400000 	andi	$r0,$r0,0x0
1c004c84:	03400000 	andi	$r0,$r0,0x0
1c004c88:	03400000 	andi	$r0,$r0,0x0
1c004c8c:	03400000 	andi	$r0,$r0,0x0
1c004c90:	03400000 	andi	$r0,$r0,0x0
1c004c94:	03400000 	andi	$r0,$r0,0x0
1c004c98:	03400000 	andi	$r0,$r0,0x0
1c004c9c:	03400000 	andi	$r0,$r0,0x0
1c004ca0:	03400000 	andi	$r0,$r0,0x0
1c004ca4:	03400000 	andi	$r0,$r0,0x0
1c004ca8:	03400000 	andi	$r0,$r0,0x0
1c004cac:	03400000 	andi	$r0,$r0,0x0
1c004cb0:	03400000 	andi	$r0,$r0,0x0
1c004cb4:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c004cb8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004cbc:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c004cc0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004c34 <MatrixKey+0x14f8>
1c004cc4:	03400000 	andi	$r0,$r0,0x0
1c004cc8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ccc:	57cd57ff 	bl	-12972(0xfffcd54) # 1c001a20 <gpio_read>
1c004cd0:	0015008c 	move	$r12,$r4
1c004cd4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004cc8 <MatrixKey+0x158c>
1c004cd8:	1400008c 	lu12i.w	$r12,4(0x4)
1c004cdc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004ce0:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c004ce4:	50008400 	b	132(0x84) # 1c004d68 <MatrixKey+0x162c>
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
1c004d14:	03400000 	andi	$r0,$r0,0x0
1c004d18:	03400000 	andi	$r0,$r0,0x0
1c004d1c:	03400000 	andi	$r0,$r0,0x0
1c004d20:	03400000 	andi	$r0,$r0,0x0
1c004d24:	03400000 	andi	$r0,$r0,0x0
1c004d28:	03400000 	andi	$r0,$r0,0x0
1c004d2c:	03400000 	andi	$r0,$r0,0x0
1c004d30:	03400000 	andi	$r0,$r0,0x0
1c004d34:	03400000 	andi	$r0,$r0,0x0
1c004d38:	03400000 	andi	$r0,$r0,0x0
1c004d3c:	03400000 	andi	$r0,$r0,0x0
1c004d40:	03400000 	andi	$r0,$r0,0x0
1c004d44:	03400000 	andi	$r0,$r0,0x0
1c004d48:	03400000 	andi	$r0,$r0,0x0
1c004d4c:	03400000 	andi	$r0,$r0,0x0
1c004d50:	03400000 	andi	$r0,$r0,0x0
1c004d54:	03400000 	andi	$r0,$r0,0x0
1c004d58:	03400000 	andi	$r0,$r0,0x0
1c004d5c:	03400000 	andi	$r0,$r0,0x0
1c004d60:	03400000 	andi	$r0,$r0,0x0
1c004d64:	03400000 	andi	$r0,$r0,0x0
1c004d68:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c004d6c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004d70:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c004d74:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004ce8 <MatrixKey+0x15ac>
1c004d78:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c004d7c:	50017400 	b	372(0x174) # 1c004ef0 <MatrixKey+0x17b4>
1c004d80:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004d84:	57cc9fff 	bl	-13156(0xfffcc9c) # 1c001a20 <gpio_read>
1c004d88:	0015008c 	move	$r12,$r4
1c004d8c:	44016180 	bnez	$r12,352(0x160) # 1c004eec <MatrixKey+0x17b0>
1c004d90:	1400008c 	lu12i.w	$r12,4(0x4)
1c004d94:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004d98:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c004d9c:	50008400 	b	132(0x84) # 1c004e20 <MatrixKey+0x16e4>
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
1c004dc8:	03400000 	andi	$r0,$r0,0x0
1c004dcc:	03400000 	andi	$r0,$r0,0x0
1c004dd0:	03400000 	andi	$r0,$r0,0x0
1c004dd4:	03400000 	andi	$r0,$r0,0x0
1c004dd8:	03400000 	andi	$r0,$r0,0x0
1c004ddc:	03400000 	andi	$r0,$r0,0x0
1c004de0:	03400000 	andi	$r0,$r0,0x0
1c004de4:	03400000 	andi	$r0,$r0,0x0
1c004de8:	03400000 	andi	$r0,$r0,0x0
1c004dec:	03400000 	andi	$r0,$r0,0x0
1c004df0:	03400000 	andi	$r0,$r0,0x0
1c004df4:	03400000 	andi	$r0,$r0,0x0
1c004df8:	03400000 	andi	$r0,$r0,0x0
1c004dfc:	03400000 	andi	$r0,$r0,0x0
1c004e00:	03400000 	andi	$r0,$r0,0x0
1c004e04:	03400000 	andi	$r0,$r0,0x0
1c004e08:	03400000 	andi	$r0,$r0,0x0
1c004e0c:	03400000 	andi	$r0,$r0,0x0
1c004e10:	03400000 	andi	$r0,$r0,0x0
1c004e14:	03400000 	andi	$r0,$r0,0x0
1c004e18:	03400000 	andi	$r0,$r0,0x0
1c004e1c:	03400000 	andi	$r0,$r0,0x0
1c004e20:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c004e24:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e28:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c004e2c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004da0 <MatrixKey+0x1664>
1c004e30:	03400000 	andi	$r0,$r0,0x0
1c004e34:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004e38:	57cbebff 	bl	-13336(0xfffcbe8) # 1c001a20 <gpio_read>
1c004e3c:	0015008c 	move	$r12,$r4
1c004e40:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004e34 <MatrixKey+0x16f8>
1c004e44:	1400008c 	lu12i.w	$r12,4(0x4)
1c004e48:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004e4c:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c004e50:	50008400 	b	132(0x84) # 1c004ed4 <MatrixKey+0x1798>
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
1c004e80:	03400000 	andi	$r0,$r0,0x0
1c004e84:	03400000 	andi	$r0,$r0,0x0
1c004e88:	03400000 	andi	$r0,$r0,0x0
1c004e8c:	03400000 	andi	$r0,$r0,0x0
1c004e90:	03400000 	andi	$r0,$r0,0x0
1c004e94:	03400000 	andi	$r0,$r0,0x0
1c004e98:	03400000 	andi	$r0,$r0,0x0
1c004e9c:	03400000 	andi	$r0,$r0,0x0
1c004ea0:	03400000 	andi	$r0,$r0,0x0
1c004ea4:	03400000 	andi	$r0,$r0,0x0
1c004ea8:	03400000 	andi	$r0,$r0,0x0
1c004eac:	03400000 	andi	$r0,$r0,0x0
1c004eb0:	03400000 	andi	$r0,$r0,0x0
1c004eb4:	03400000 	andi	$r0,$r0,0x0
1c004eb8:	03400000 	andi	$r0,$r0,0x0
1c004ebc:	03400000 	andi	$r0,$r0,0x0
1c004ec0:	03400000 	andi	$r0,$r0,0x0
1c004ec4:	03400000 	andi	$r0,$r0,0x0
1c004ec8:	03400000 	andi	$r0,$r0,0x0
1c004ecc:	03400000 	andi	$r0,$r0,0x0
1c004ed0:	03400000 	andi	$r0,$r0,0x0
1c004ed4:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c004ed8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004edc:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c004ee0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004e54 <MatrixKey+0x1718>
1c004ee4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004ee8:	50000800 	b	8(0x8) # 1c004ef0 <MatrixKey+0x17b4>
1c004eec:	0015000c 	move	$r12,$r0
1c004ef0:	00150184 	move	$r4,$r12
1c004ef4:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c004ef8:	28826076 	ld.w	$r22,$r3,152(0x98)
1c004efc:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c004f00:	4c000020 	jirl	$r0,$r1,0

1c004f04 <LEDgree_ON>:
LEDgree_ON():
1c004f04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f08:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f14:	00150005 	move	$r5,$r0
1c004f18:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f1c:	57ca0fff 	bl	-13812(0xfffca0c) # 1c001928 <gpio_write>
1c004f20:	03400000 	andi	$r0,$r0,0x0
1c004f24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f28:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f30:	4c000020 	jirl	$r0,$r1,0

1c004f34 <LEDgree_OFF>:
LEDgree_OFF():
1c004f34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f38:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f3c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f48:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f4c:	57c9dfff 	bl	-13860(0xfffc9dc) # 1c001928 <gpio_write>
1c004f50:	03400000 	andi	$r0,$r0,0x0
1c004f54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f60:	4c000020 	jirl	$r0,$r1,0

1c004f64 <Buzzer>:
Buzzer():
1c004f64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f68:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f6c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f78:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004f7c:	57c9afff 	bl	-13908(0xfffc9ac) # 1c001928 <gpio_write>
1c004f80:	1400016c 	lu12i.w	$r12,11(0xb)
1c004f84:	0399958c 	ori	$r12,$r12,0x665
1c004f88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f8c:	50008400 	b	132(0x84) # 1c005010 <Buzzer+0xac>
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
1c004fec:	03400000 	andi	$r0,$r0,0x0
1c004ff0:	03400000 	andi	$r0,$r0,0x0
1c004ff4:	03400000 	andi	$r0,$r0,0x0
1c004ff8:	03400000 	andi	$r0,$r0,0x0
1c004ffc:	03400000 	andi	$r0,$r0,0x0
1c005000:	03400000 	andi	$r0,$r0,0x0
1c005004:	03400000 	andi	$r0,$r0,0x0
1c005008:	03400000 	andi	$r0,$r0,0x0
1c00500c:	03400000 	andi	$r0,$r0,0x0
1c005010:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005014:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005018:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00501c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004f90 <Buzzer+0x2c>
1c005020:	00150005 	move	$r5,$r0
1c005024:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005028:	57c903ff 	bl	-14080(0xfffc900) # 1c001928 <gpio_write>
1c00502c:	1400016c 	lu12i.w	$r12,11(0xb)
1c005030:	0399958c 	ori	$r12,$r12,0x665
1c005034:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005038:	50008400 	b	132(0x84) # 1c0050bc <Buzzer+0x158>
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
1c0050a0:	03400000 	andi	$r0,$r0,0x0
1c0050a4:	03400000 	andi	$r0,$r0,0x0
1c0050a8:	03400000 	andi	$r0,$r0,0x0
1c0050ac:	03400000 	andi	$r0,$r0,0x0
1c0050b0:	03400000 	andi	$r0,$r0,0x0
1c0050b4:	03400000 	andi	$r0,$r0,0x0
1c0050b8:	03400000 	andi	$r0,$r0,0x0
1c0050bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0050c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0050c4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0050c8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00503c <Buzzer+0xd8>
1c0050cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0050d0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0050d4:	57c857ff 	bl	-14252(0xfffc854) # 1c001928 <gpio_write>
1c0050d8:	1400016c 	lu12i.w	$r12,11(0xb)
1c0050dc:	0399958c 	ori	$r12,$r12,0x665
1c0050e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0050e4:	50008400 	b	132(0x84) # 1c005168 <Buzzer+0x204>
1c0050e8:	03400000 	andi	$r0,$r0,0x0
1c0050ec:	03400000 	andi	$r0,$r0,0x0
1c0050f0:	03400000 	andi	$r0,$r0,0x0
1c0050f4:	03400000 	andi	$r0,$r0,0x0
1c0050f8:	03400000 	andi	$r0,$r0,0x0
1c0050fc:	03400000 	andi	$r0,$r0,0x0
1c005100:	03400000 	andi	$r0,$r0,0x0
1c005104:	03400000 	andi	$r0,$r0,0x0
1c005108:	03400000 	andi	$r0,$r0,0x0
1c00510c:	03400000 	andi	$r0,$r0,0x0
1c005110:	03400000 	andi	$r0,$r0,0x0
1c005114:	03400000 	andi	$r0,$r0,0x0
1c005118:	03400000 	andi	$r0,$r0,0x0
1c00511c:	03400000 	andi	$r0,$r0,0x0
1c005120:	03400000 	andi	$r0,$r0,0x0
1c005124:	03400000 	andi	$r0,$r0,0x0
1c005128:	03400000 	andi	$r0,$r0,0x0
1c00512c:	03400000 	andi	$r0,$r0,0x0
1c005130:	03400000 	andi	$r0,$r0,0x0
1c005134:	03400000 	andi	$r0,$r0,0x0
1c005138:	03400000 	andi	$r0,$r0,0x0
1c00513c:	03400000 	andi	$r0,$r0,0x0
1c005140:	03400000 	andi	$r0,$r0,0x0
1c005144:	03400000 	andi	$r0,$r0,0x0
1c005148:	03400000 	andi	$r0,$r0,0x0
1c00514c:	03400000 	andi	$r0,$r0,0x0
1c005150:	03400000 	andi	$r0,$r0,0x0
1c005154:	03400000 	andi	$r0,$r0,0x0
1c005158:	03400000 	andi	$r0,$r0,0x0
1c00515c:	03400000 	andi	$r0,$r0,0x0
1c005160:	03400000 	andi	$r0,$r0,0x0
1c005164:	03400000 	andi	$r0,$r0,0x0
1c005168:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00516c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005170:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c005174:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0050e8 <Buzzer+0x184>
1c005178:	00150005 	move	$r5,$r0
1c00517c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005180:	57c7abff 	bl	-14424(0xfffc7a8) # 1c001928 <gpio_write>
1c005184:	03400000 	andi	$r0,$r0,0x0
1c005188:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00518c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005190:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005194:	4c000020 	jirl	$r0,$r1,0

1c005198 <Buzzer_one>:
Buzzer_one():
1c005198:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00519c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0051a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0051a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0051a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051ac:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0051b0:	57c77bff 	bl	-14472(0xfffc778) # 1c001928 <gpio_write>
1c0051b4:	1400088c 	lu12i.w	$r12,68(0x44)
1c0051b8:	0399798c 	ori	$r12,$r12,0x65e
1c0051bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0051c0:	50008400 	b	132(0x84) # 1c005244 <Buzzer_one+0xac>
1c0051c4:	03400000 	andi	$r0,$r0,0x0
1c0051c8:	03400000 	andi	$r0,$r0,0x0
1c0051cc:	03400000 	andi	$r0,$r0,0x0
1c0051d0:	03400000 	andi	$r0,$r0,0x0
1c0051d4:	03400000 	andi	$r0,$r0,0x0
1c0051d8:	03400000 	andi	$r0,$r0,0x0
1c0051dc:	03400000 	andi	$r0,$r0,0x0
1c0051e0:	03400000 	andi	$r0,$r0,0x0
1c0051e4:	03400000 	andi	$r0,$r0,0x0
1c0051e8:	03400000 	andi	$r0,$r0,0x0
1c0051ec:	03400000 	andi	$r0,$r0,0x0
1c0051f0:	03400000 	andi	$r0,$r0,0x0
1c0051f4:	03400000 	andi	$r0,$r0,0x0
1c0051f8:	03400000 	andi	$r0,$r0,0x0
1c0051fc:	03400000 	andi	$r0,$r0,0x0
1c005200:	03400000 	andi	$r0,$r0,0x0
1c005204:	03400000 	andi	$r0,$r0,0x0
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
1c005244:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005248:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00524c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005250:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0051c4 <Buzzer_one+0x2c>
1c005254:	00150005 	move	$r5,$r0
1c005258:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00525c:	57c6cfff 	bl	-14644(0xfffc6cc) # 1c001928 <gpio_write>
1c005260:	03400000 	andi	$r0,$r0,0x0
1c005264:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005268:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00526c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005270:	4c000020 	jirl	$r0,$r1,0

1c005274 <TIM_GetITStatus>:
TIM_GetITStatus():
1c005274:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005278:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00527c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005280:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005284:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005288:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00528c:	2880018d 	ld.w	$r13,$r12,0
1c005290:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005294:	0014b1ac 	and	$r12,$r13,$r12
1c005298:	40001180 	beqz	$r12,16(0x10) # 1c0052a8 <TIM_GetITStatus+0x34>
1c00529c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0052a4:	50000800 	b	8(0x8) # 1c0052ac <TIM_GetITStatus+0x38>
1c0052a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0052ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052b0:	00150184 	move	$r4,$r12
1c0052b4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0052b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0052bc:	4c000020 	jirl	$r0,$r1,0

1c0052c0 <TIM_ClearIT>:
TIM_ClearIT():
1c0052c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0052c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0052d0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0052d4:	2880018e 	ld.w	$r14,$r12,0
1c0052d8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0052dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0052e0:	001535cd 	or	$r13,$r14,$r13
1c0052e4:	2980018d 	st.w	$r13,$r12,0
1c0052e8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0052ec:	03800d8c 	ori	$r12,$r12,0x3
1c0052f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0052f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0052f8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0052fc:	03800d8c 	ori	$r12,$r12,0x3
1c005300:	038005ad 	ori	$r13,$r13,0x1
1c005304:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c005308:	2900018d 	st.b	$r13,$r12,0
1c00530c:	03400000 	andi	$r0,$r0,0x0
1c005310:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005314:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005318:	4c000020 	jirl	$r0,$r1,0

1c00531c <WriteCmd>:
WriteCmd():
1c00531c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005320:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005324:	29806076 	st.w	$r22,$r3,24(0x18)
1c005328:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00532c:	0015008c 	move	$r12,$r4
1c005330:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005334:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005338:	57c8afff 	bl	-14164(0xfffc8ac) # 1c001be4 <soc_I2C_GenerateSTART>
1c00533c:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005340:	57c92fff 	bl	-14036(0xfffc92c) # 1c001c6c <soc_I2C_SendData>
1c005344:	57c973ff 	bl	-13968(0xfffc970) # 1c001cb4 <soc_I2C_wait>
1c005348:	00150004 	move	$r4,$r0
1c00534c:	57c923ff 	bl	-14048(0xfffc920) # 1c001c6c <soc_I2C_SendData>
1c005350:	57c967ff 	bl	-13980(0xfffc964) # 1c001cb4 <soc_I2C_wait>
1c005354:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005358:	00150184 	move	$r4,$r12
1c00535c:	57c913ff 	bl	-14064(0xfffc910) # 1c001c6c <soc_I2C_SendData>
1c005360:	57c957ff 	bl	-13996(0xfffc954) # 1c001cb4 <soc_I2C_wait>
1c005364:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005368:	57c8c3ff 	bl	-14144(0xfffc8c0) # 1c001c28 <soc_I2C_GenerateSTOP>
1c00536c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005370:	57c75fff 	bl	-14500(0xfffc75c) # 1c001acc <soc_I2C_delay>
1c005374:	03400000 	andi	$r0,$r0,0x0
1c005378:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00537c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005380:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005384:	4c000020 	jirl	$r0,$r1,0

1c005388 <WriteDat>:
WriteDat():
1c005388:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00538c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005390:	29806076 	st.w	$r22,$r3,24(0x18)
1c005394:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005398:	0015008c 	move	$r12,$r4
1c00539c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0053a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0053a4:	57c843ff 	bl	-14272(0xfffc840) # 1c001be4 <soc_I2C_GenerateSTART>
1c0053a8:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0053ac:	57c8c3ff 	bl	-14144(0xfffc8c0) # 1c001c6c <soc_I2C_SendData>
1c0053b0:	57c907ff 	bl	-14076(0xfffc904) # 1c001cb4 <soc_I2C_wait>
1c0053b4:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0053b8:	57c8b7ff 	bl	-14156(0xfffc8b4) # 1c001c6c <soc_I2C_SendData>
1c0053bc:	57c8fbff 	bl	-14088(0xfffc8f8) # 1c001cb4 <soc_I2C_wait>
1c0053c0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0053c4:	00150184 	move	$r4,$r12
1c0053c8:	57c8a7ff 	bl	-14172(0xfffc8a4) # 1c001c6c <soc_I2C_SendData>
1c0053cc:	57c8ebff 	bl	-14104(0xfffc8e8) # 1c001cb4 <soc_I2C_wait>
1c0053d0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0053d4:	57c857ff 	bl	-14252(0xfffc854) # 1c001c28 <soc_I2C_GenerateSTOP>
1c0053d8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0053dc:	57c6f3ff 	bl	-14608(0xfffc6f0) # 1c001acc <soc_I2C_delay>
1c0053e0:	03400000 	andi	$r0,$r0,0x0
1c0053e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053f0:	4c000020 	jirl	$r0,$r1,0

1c0053f4 <OLED_SetPos>:
OLED_SetPos():
1c0053f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c005400:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005404:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005408:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00540c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005410:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005414:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005418:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00541c:	00150184 	move	$r4,$r12
1c005420:	57feffff 	bl	-260(0xffffefc) # 1c00531c <WriteCmd>
1c005424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005428:	0044918c 	srli.w	$r12,$r12,0x4
1c00542c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005430:	03403d8c 	andi	$r12,$r12,0xf
1c005434:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005438:	0380418c 	ori	$r12,$r12,0x10
1c00543c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005440:	00150184 	move	$r4,$r12
1c005444:	57fedbff 	bl	-296(0xffffed8) # 1c00531c <WriteCmd>
1c005448:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00544c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005450:	0340398c 	andi	$r12,$r12,0xe
1c005454:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005458:	0380058c 	ori	$r12,$r12,0x1
1c00545c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005460:	00150184 	move	$r4,$r12
1c005464:	57febbff 	bl	-328(0xffffeb8) # 1c00531c <WriteCmd>
1c005468:	03400000 	andi	$r0,$r0,0x0
1c00546c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005470:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005474:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005478:	4c000020 	jirl	$r0,$r1,0

1c00547c <OLED_Fill>:
OLED_Fill():
1c00547c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005480:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005484:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005488:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00548c:	0015008c 	move	$r12,$r4
1c005490:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005494:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005498:	50006400 	b	100(0x64) # 1c0054fc <OLED_Fill+0x80>
1c00549c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0054a4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0054a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0054ac:	00150184 	move	$r4,$r12
1c0054b0:	57fe6fff 	bl	-404(0xffffe6c) # 1c00531c <WriteCmd>
1c0054b4:	00150004 	move	$r4,$r0
1c0054b8:	57fe67ff 	bl	-412(0xffffe64) # 1c00531c <WriteCmd>
1c0054bc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0054c0:	57fe5fff 	bl	-420(0xffffe5c) # 1c00531c <WriteCmd>
1c0054c4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0054c8:	50001c00 	b	28(0x1c) # 1c0054e4 <OLED_Fill+0x68>
1c0054cc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0054d0:	00150184 	move	$r4,$r12
1c0054d4:	57feb7ff 	bl	-332(0xffffeb4) # 1c005388 <WriteDat>
1c0054d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0054dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0054e4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0054e8:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c0054ec:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c0054cc <OLED_Fill+0x50>
1c0054f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005500:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005504:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c00549c <OLED_Fill+0x20>
1c005508:	03400000 	andi	$r0,$r0,0x0
1c00550c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005510:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005514:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005518:	4c000020 	jirl	$r0,$r1,0

1c00551c <OLED_CLS>:
OLED_CLS():
1c00551c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005520:	29803061 	st.w	$r1,$r3,12(0xc)
1c005524:	29802076 	st.w	$r22,$r3,8(0x8)
1c005528:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00552c:	00150004 	move	$r4,$r0
1c005530:	57ff4fff 	bl	-180(0xfffff4c) # 1c00547c <OLED_Fill>
1c005534:	03400000 	andi	$r0,$r0,0x0
1c005538:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00553c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005540:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005544:	4c000020 	jirl	$r0,$r1,0

1c005548 <OLED_ShowStr>:
OLED_ShowStr():
1c005548:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00554c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005550:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00555c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005560:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005564:	001500ec 	move	$r12,$r7
1c005568:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c00556c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005570:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005574:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005578:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c00557c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005580:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c005634 <OLED_ShowStr+0xec>
1c005584:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005588:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c00574c <OLED_ShowStr+0x204>
1c00558c:	5001d800 	b	472(0x1d8) # 1c005764 <OLED_ShowStr+0x21c>
1c005590:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005594:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005598:	001031ac 	add.w	$r12,$r13,$r12
1c00559c:	2a00018c 	ld.bu	$r12,$r12,0
1c0055a0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0055a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0055a8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0055ac:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c0055b0:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0055c4 <OLED_ShowStr+0x7c>
1c0055b4:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0055b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0055bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055c0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0055c4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0055c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0055cc:	57fe2bff 	bl	-472(0xffffe28) # 1c0053f4 <OLED_SetPos>
1c0055d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0055d4:	50003c00 	b	60(0x3c) # 1c005610 <OLED_ShowStr+0xc8>
1c0055d8:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0055dc:	028871ad 	addi.w	$r13,$r13,540(0x21c)
1c0055e0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0055e4:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0055e8:	001c31cc 	mul.w	$r12,$r14,$r12
1c0055ec:	001031ad 	add.w	$r13,$r13,$r12
1c0055f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055f4:	001031ac 	add.w	$r12,$r13,$r12
1c0055f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0055fc:	00150184 	move	$r4,$r12
1c005600:	57fd8bff 	bl	-632(0xffffd88) # 1c005388 <WriteDat>
1c005604:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005608:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00560c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005610:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005614:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005618:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0055d8 <OLED_ShowStr+0x90>
1c00561c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005620:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005624:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005628:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00562c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005630:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005634:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005638:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00563c:	001031ac 	add.w	$r12,$r13,$r12
1c005640:	2a00018c 	ld.bu	$r12,$r12,0
1c005644:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c005590 <OLED_ShowStr+0x48>
1c005648:	50011c00 	b	284(0x11c) # 1c005764 <OLED_ShowStr+0x21c>
1c00564c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005650:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005654:	001031ac 	add.w	$r12,$r13,$r12
1c005658:	2a00018c 	ld.bu	$r12,$r12,0
1c00565c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005660:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005664:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005668:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c00566c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005680 <OLED_ShowStr+0x138>
1c005670:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005678:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00567c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005680:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005684:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005688:	57fd6fff 	bl	-660(0xffffd6c) # 1c0053f4 <OLED_SetPos>
1c00568c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005690:	50003800 	b	56(0x38) # 1c0056c8 <OLED_ShowStr+0x180>
1c005694:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005698:	0040918d 	slli.w	$r13,$r12,0x4
1c00569c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056a0:	001031ac 	add.w	$r12,$r13,$r12
1c0056a4:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0056a8:	028de1ad 	addi.w	$r13,$r13,888(0x378)
1c0056ac:	001031ac 	add.w	$r12,$r13,$r12
1c0056b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0056b4:	00150184 	move	$r4,$r12
1c0056b8:	57fcd3ff 	bl	-816(0xffffcd0) # 1c005388 <WriteDat>
1c0056bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0056c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0056cc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0056d0:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005694 <OLED_ShowStr+0x14c>
1c0056d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0056d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056dc:	00150185 	move	$r5,$r12
1c0056e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0056e4:	57fd13ff 	bl	-752(0xffffd10) # 1c0053f4 <OLED_SetPos>
1c0056e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0056ec:	50003c00 	b	60(0x3c) # 1c005728 <OLED_ShowStr+0x1e0>
1c0056f0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0056f4:	0040918d 	slli.w	$r13,$r12,0x4
1c0056f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056fc:	001031ac 	add.w	$r12,$r13,$r12
1c005700:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005704:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005708:	028c61ad 	addi.w	$r13,$r13,792(0x318)
1c00570c:	001031ac 	add.w	$r12,$r13,$r12
1c005710:	2a00018c 	ld.bu	$r12,$r12,0
1c005714:	00150184 	move	$r4,$r12
1c005718:	57fc73ff 	bl	-912(0xffffc70) # 1c005388 <WriteDat>
1c00571c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005720:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005724:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005728:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00572c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005730:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0056f0 <OLED_ShowStr+0x1a8>
1c005734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005738:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00573c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005744:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005748:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00574c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005750:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005754:	001031ac 	add.w	$r12,$r13,$r12
1c005758:	2a00018c 	ld.bu	$r12,$r12,0
1c00575c:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c00564c <OLED_ShowStr+0x104>
1c005760:	03400000 	andi	$r0,$r0,0x0
1c005764:	03400000 	andi	$r0,$r0,0x0
1c005768:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00576c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005770:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005774:	4c000020 	jirl	$r0,$r1,0

1c005778 <OLED_ShowCN>:
OLED_ShowCN():
1c005778:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00577c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005780:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005784:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005788:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00578c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005790:	001500cc 	move	$r12,$r6
1c005794:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005798:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00579c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0057a0:	0040958c 	slli.w	$r12,$r12,0x5
1c0057a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0057a8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0057ac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0057b0:	57fc47ff 	bl	-956(0xffffc44) # 1c0053f4 <OLED_SetPos>
1c0057b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0057b8:	50003800 	b	56(0x38) # 1c0057f0 <OLED_ShowCN+0x78>
1c0057bc:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c0057c0:	02a1a1ad 	addi.w	$r13,$r13,-1944(0x868)
1c0057c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057c8:	001031ac 	add.w	$r12,$r13,$r12
1c0057cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0057d0:	00150184 	move	$r4,$r12
1c0057d4:	57fbb7ff 	bl	-1100(0xffffbb4) # 1c005388 <WriteDat>
1c0057d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0057e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0057e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0057f0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0057f4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0057f8:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0057bc <OLED_ShowCN+0x44>
1c0057fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005800:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005804:	00150185 	move	$r5,$r12
1c005808:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00580c:	57fbebff 	bl	-1048(0xffffbe8) # 1c0053f4 <OLED_SetPos>
1c005810:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005814:	50003800 	b	56(0x38) # 1c00584c <OLED_ShowCN+0xd4>
1c005818:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c00581c:	02a031ad 	addi.w	$r13,$r13,-2036(0x80c)
1c005820:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005824:	001031ac 	add.w	$r12,$r13,$r12
1c005828:	2a00018c 	ld.bu	$r12,$r12,0
1c00582c:	00150184 	move	$r4,$r12
1c005830:	57fb5bff 	bl	-1192(0xffffb58) # 1c005388 <WriteDat>
1c005834:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005838:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00583c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005840:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005844:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005848:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00584c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005850:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005854:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005818 <OLED_ShowCN+0xa0>
1c005858:	03400000 	andi	$r0,$r0,0x0
1c00585c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005860:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005864:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005868:	4c000020 	jirl	$r0,$r1,0

1c00586c <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c00586c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005870:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005874:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005878:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00587c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005880:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005884:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005888:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c00588c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005890:	50004800 	b	72(0x48) # 1c0058d8 <OLED_ShowCN_STR+0x6c>
1c005894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005898:	0040918d 	slli.w	$r13,$r12,0x4
1c00589c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0058a0:	001031ae 	add.w	$r14,$r13,$r12
1c0058a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0058ac:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0058b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058b4:	001031ac 	add.w	$r12,$r13,$r12
1c0058b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058bc:	00150186 	move	$r6,$r12
1c0058c0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0058c4:	001501c4 	move	$r4,$r14
1c0058c8:	57feb3ff 	bl	-336(0xffffeb0) # 1c005778 <OLED_ShowCN>
1c0058cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0058d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0058dc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0058e0:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c005894 <OLED_ShowCN_STR+0x28>
1c0058e4:	03400000 	andi	$r0,$r0,0x0
1c0058e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0058ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0058f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0058f4:	4c000020 	jirl	$r0,$r1,0

1c0058f8 <OLED_DrawBMP>:
OLED_DrawBMP():
1c0058f8:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0058fc:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005900:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005904:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005908:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00590c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005910:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005914:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005918:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c00591c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005920:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005924:	03401d8c 	andi	$r12,$r12,0x7
1c005928:	44001580 	bnez	$r12,20(0x14) # 1c00593c <OLED_DrawBMP+0x44>
1c00592c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005930:	00448d8c 	srli.w	$r12,$r12,0x3
1c005934:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005938:	50001400 	b	20(0x14) # 1c00594c <OLED_DrawBMP+0x54>
1c00593c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005940:	00448d8c 	srli.w	$r12,$r12,0x3
1c005944:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005948:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00594c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005950:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005954:	50006000 	b	96(0x60) # 1c0059b4 <OLED_DrawBMP+0xbc>
1c005958:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c00595c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005960:	57fa97ff 	bl	-1388(0xffffa94) # 1c0053f4 <OLED_SetPos>
1c005964:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005968:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00596c:	50003000 	b	48(0x30) # 1c00599c <OLED_DrawBMP+0xa4>
1c005970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005974:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005978:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00597c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c005980:	001031ac 	add.w	$r12,$r13,$r12
1c005984:	2a00018c 	ld.bu	$r12,$r12,0
1c005988:	00150184 	move	$r4,$r12
1c00598c:	57f9ffff 	bl	-1540(0xffff9fc) # 1c005388 <WriteDat>
1c005990:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005994:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005998:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00599c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0059a0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0059a4:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c005970 <OLED_DrawBMP+0x78>
1c0059a8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0059ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059b0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0059b4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0059b8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0059bc:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c005958 <OLED_DrawBMP+0x60>
1c0059c0:	03400000 	andi	$r0,$r0,0x0
1c0059c4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0059c8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0059cc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0059d0:	4c000020 	jirl	$r0,$r1,0

1c0059d4 <OLED_ShowChar>:
OLED_ShowChar():
1c0059d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0059d8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0059dc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0059e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0059e4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0059e8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0059ec:	001500cc 	move	$r12,$r6
1c0059f0:	001500ed 	move	$r13,$r7
1c0059f4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0059f8:	001501ac 	move	$r12,$r13
1c0059fc:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c005a00:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005a04:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a08:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005a0c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005a10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005a14:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005a18:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c005a1c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005a30 <OLED_ShowChar+0x5c>
1c005a20:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005a24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a28:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005a2c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005a30:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c005a34:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005a38:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c005af4 <OLED_ShowChar+0x120>
1c005a3c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005a40:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005a44:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c0053f4 <OLED_SetPos>
1c005a48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a4c:	50003800 	b	56(0x38) # 1c005a84 <OLED_ShowChar+0xb0>
1c005a50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a54:	0040918d 	slli.w	$r13,$r12,0x4
1c005a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a5c:	001031ac 	add.w	$r12,$r13,$r12
1c005a60:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005a64:	02bef1ad 	addi.w	$r13,$r13,-68(0xfbc)
1c005a68:	001031ac 	add.w	$r12,$r13,$r12
1c005a6c:	2a00018c 	ld.bu	$r12,$r12,0
1c005a70:	00150184 	move	$r4,$r12
1c005a74:	57f917ff 	bl	-1772(0xffff914) # 1c005388 <WriteDat>
1c005a78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a88:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005a8c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005a50 <OLED_ShowChar+0x7c>
1c005a90:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a98:	00150185 	move	$r5,$r12
1c005a9c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005aa0:	57f957ff 	bl	-1708(0xffff954) # 1c0053f4 <OLED_SetPos>
1c005aa4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005aa8:	50003c00 	b	60(0x3c) # 1c005ae4 <OLED_ShowChar+0x110>
1c005aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ab0:	0040918d 	slli.w	$r13,$r12,0x4
1c005ab4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ab8:	001031ac 	add.w	$r12,$r13,$r12
1c005abc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005ac0:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005ac4:	02bd71ad 	addi.w	$r13,$r13,-164(0xf5c)
1c005ac8:	001031ac 	add.w	$r12,$r13,$r12
1c005acc:	2a00018c 	ld.bu	$r12,$r12,0
1c005ad0:	00150184 	move	$r4,$r12
1c005ad4:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c005388 <WriteDat>
1c005ad8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005adc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ae0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005ae4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ae8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005aec:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005aac <OLED_ShowChar+0xd8>
1c005af0:	50005c00 	b	92(0x5c) # 1c005b4c <OLED_ShowChar+0x178>
1c005af4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005af8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005afc:	57f8fbff 	bl	-1800(0xffff8f8) # 1c0053f4 <OLED_SetPos>
1c005b00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005b04:	50003c00 	b	60(0x3c) # 1c005b40 <OLED_ShowChar+0x16c>
1c005b08:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005b0c:	02b3b1ad 	addi.w	$r13,$r13,-788(0xcec)
1c005b10:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c005b14:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005b18:	001c31cc 	mul.w	$r12,$r14,$r12
1c005b1c:	001031ad 	add.w	$r13,$r13,$r12
1c005b20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b24:	001031ac 	add.w	$r12,$r13,$r12
1c005b28:	2a00018c 	ld.bu	$r12,$r12,0
1c005b2c:	00150184 	move	$r4,$r12
1c005b30:	57f85bff 	bl	-1960(0xffff858) # 1c005388 <WriteDat>
1c005b34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005b44:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005b48:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005b08 <OLED_ShowChar+0x134>
1c005b4c:	03400000 	andi	$r0,$r0,0x0
1c005b50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b5c:	4c000020 	jirl	$r0,$r1,0

1c005b60 <oled_pow>:
oled_pow():
1c005b60:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b64:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005b68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005b6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005b70:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005b74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b7c:	50001400 	b	20(0x14) # 1c005b90 <oled_pow+0x30>
1c005b80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005b84:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b88:	001c31ac 	mul.w	$r12,$r13,$r12
1c005b8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b90:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005b94:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005b98:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c005b9c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005b80 <oled_pow+0x20>
1c005ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ba4:	00150184 	move	$r4,$r12
1c005ba8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005bac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bb0:	4c000020 	jirl	$r0,$r1,0

1c005bb4 <OLED_ShowNum>:
OLED_ShowNum():
1c005bb4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005bb8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005bbc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005bc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005bc8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005bcc:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005bd0:	001500ec 	move	$r12,$r7
1c005bd4:	0015010d 	move	$r13,$r8
1c005bd8:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c005bdc:	001501ac 	move	$r12,$r13
1c005be0:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c005be4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005be8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005bec:	50010400 	b	260(0x104) # 1c005cf0 <OLED_ShowNum+0x13c>
1c005bf0:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c005bf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bf8:	001131ac 	sub.w	$r12,$r13,$r12
1c005bfc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005c00:	00150185 	move	$r5,$r12
1c005c04:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005c08:	57ff5bff 	bl	-168(0xfffff58) # 1c005b60 <oled_pow>
1c005c0c:	0015008d 	move	$r13,$r4
1c005c10:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005c14:	0021358e 	div.wu	$r14,$r12,$r13
1c005c18:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005c20 <OLED_ShowNum+0x6c>
1c005c1c:	002a0007 	break	0x7
1c005c20:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005c24:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c005c28:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005c30 <OLED_ShowNum+0x7c>
1c005c2c:	002a0007 	break	0x7
1c005c30:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005c34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005c38:	44006580 	bnez	$r12,100(0x64) # 1c005c9c <OLED_ShowNum+0xe8>
1c005c3c:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c005c40:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005c44:	0015018d 	move	$r13,$r12
1c005c48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c4c:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c005c9c <OLED_ShowNum+0xe8>
1c005c50:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005c54:	44004180 	bnez	$r12,64(0x40) # 1c005c94 <OLED_ShowNum+0xe0>
1c005c58:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c005c5c:	0044858c 	srli.w	$r12,$r12,0x1
1c005c60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c64:	0015018d 	move	$r13,$r12
1c005c68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c6c:	001c31ad 	mul.w	$r13,$r13,$r12
1c005c70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c74:	001031ac 	add.w	$r12,$r13,$r12
1c005c78:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c005c7c:	001501a7 	move	$r7,$r13
1c005c80:	02808006 	addi.w	$r6,$r0,32(0x20)
1c005c84:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005c88:	00150184 	move	$r4,$r12
1c005c8c:	57fd4bff 	bl	-696(0xffffd48) # 1c0059d4 <OLED_ShowChar>
1c005c90:	50005400 	b	84(0x54) # 1c005ce4 <OLED_ShowNum+0x130>
1c005c94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c98:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005c9c:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c005ca0:	0044858c 	srli.w	$r12,$r12,0x1
1c005ca4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ca8:	0015018d 	move	$r13,$r12
1c005cac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005cb0:	001c31ad 	mul.w	$r13,$r13,$r12
1c005cb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005cb8:	001031ad 	add.w	$r13,$r13,$r12
1c005cbc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005cc0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005cc4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c005cc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ccc:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c005cd0:	001501c7 	move	$r7,$r14
1c005cd4:	00150186 	move	$r6,$r12
1c005cd8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005cdc:	001501a4 	move	$r4,$r13
1c005ce0:	57fcf7ff 	bl	-780(0xffffcf4) # 1c0059d4 <OLED_ShowChar>
1c005ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ce8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005cf0:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c005cf4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005cf8:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c005bf0 <OLED_ShowNum+0x3c>
1c005cfc:	03400000 	andi	$r0,$r0,0x0
1c005d00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005d0c:	4c000020 	jirl	$r0,$r1,0

1c005d10 <my_GPIO_Init>:
my_GPIO_Init():
1c005d10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005d14:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005d18:	29806076 	st.w	$r22,$r3,24(0x18)
1c005d1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005d20:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d24:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005d28:	57bb0bff 	bl	-17656(0xfffbb08) # 1c001830 <gpio_init>
1c005d2c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d30:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005d34:	57baffff 	bl	-17668(0xfffbafc) # 1c001830 <gpio_init>
1c005d38:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d3c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005d40:	57baf3ff 	bl	-17680(0xfffbaf0) # 1c001830 <gpio_init>
1c005d44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d48:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c005d4c:	57bae7ff 	bl	-17692(0xfffbae4) # 1c001830 <gpio_init>
1c005d50:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d54:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005d58:	57badbff 	bl	-17704(0xfffbad8) # 1c001830 <gpio_init>
1c005d5c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d60:	02808804 	addi.w	$r4,$r0,34(0x22)
1c005d64:	57bacfff 	bl	-17716(0xfffbacc) # 1c001830 <gpio_init>
1c005d68:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d6c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005d70:	57bac3ff 	bl	-17728(0xfffbac0) # 1c001830 <gpio_init>
1c005d74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d78:	02809004 	addi.w	$r4,$r0,36(0x24)
1c005d7c:	57bab7ff 	bl	-17740(0xfffbab4) # 1c001830 <gpio_init>
1c005d80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d84:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005d88:	57baabff 	bl	-17752(0xfffbaa8) # 1c001830 <gpio_init>
1c005d8c:	00150005 	move	$r5,$r0
1c005d90:	02809804 	addi.w	$r4,$r0,38(0x26)
1c005d94:	57ba9fff 	bl	-17764(0xfffba9c) # 1c001830 <gpio_init>
1c005d98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d9c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c005da0:	57ba93ff 	bl	-17776(0xfffba90) # 1c001830 <gpio_init>
1c005da4:	00150005 	move	$r5,$r0
1c005da8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005dac:	57ba87ff 	bl	-17788(0xfffba84) # 1c001830 <gpio_init>
1c005db0:	00150005 	move	$r5,$r0
1c005db4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c005db8:	57ba7bff 	bl	-17800(0xfffba78) # 1c001830 <gpio_init>
1c005dbc:	00150005 	move	$r5,$r0
1c005dc0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005dc4:	57ba6fff 	bl	-17812(0xfffba6c) # 1c001830 <gpio_init>
1c005dc8:	00150005 	move	$r5,$r0
1c005dcc:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005dd0:	57ba63ff 	bl	-17824(0xfffba60) # 1c001830 <gpio_init>
1c005dd4:	14000e2c 	lu12i.w	$r12,113(0x71)
1c005dd8:	03bfc98c 	ori	$r12,$r12,0xff2
1c005ddc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005de0:	50008400 	b	132(0x84) # 1c005e64 <my_GPIO_Init+0x154>
1c005de4:	03400000 	andi	$r0,$r0,0x0
1c005de8:	03400000 	andi	$r0,$r0,0x0
1c005dec:	03400000 	andi	$r0,$r0,0x0
1c005df0:	03400000 	andi	$r0,$r0,0x0
1c005df4:	03400000 	andi	$r0,$r0,0x0
1c005df8:	03400000 	andi	$r0,$r0,0x0
1c005dfc:	03400000 	andi	$r0,$r0,0x0
1c005e00:	03400000 	andi	$r0,$r0,0x0
1c005e04:	03400000 	andi	$r0,$r0,0x0
1c005e08:	03400000 	andi	$r0,$r0,0x0
1c005e0c:	03400000 	andi	$r0,$r0,0x0
1c005e10:	03400000 	andi	$r0,$r0,0x0
1c005e14:	03400000 	andi	$r0,$r0,0x0
1c005e18:	03400000 	andi	$r0,$r0,0x0
1c005e1c:	03400000 	andi	$r0,$r0,0x0
1c005e20:	03400000 	andi	$r0,$r0,0x0
1c005e24:	03400000 	andi	$r0,$r0,0x0
1c005e28:	03400000 	andi	$r0,$r0,0x0
1c005e2c:	03400000 	andi	$r0,$r0,0x0
1c005e30:	03400000 	andi	$r0,$r0,0x0
1c005e34:	03400000 	andi	$r0,$r0,0x0
1c005e38:	03400000 	andi	$r0,$r0,0x0
1c005e3c:	03400000 	andi	$r0,$r0,0x0
1c005e40:	03400000 	andi	$r0,$r0,0x0
1c005e44:	03400000 	andi	$r0,$r0,0x0
1c005e48:	03400000 	andi	$r0,$r0,0x0
1c005e4c:	03400000 	andi	$r0,$r0,0x0
1c005e50:	03400000 	andi	$r0,$r0,0x0
1c005e54:	03400000 	andi	$r0,$r0,0x0
1c005e58:	03400000 	andi	$r0,$r0,0x0
1c005e5c:	03400000 	andi	$r0,$r0,0x0
1c005e60:	03400000 	andi	$r0,$r0,0x0
1c005e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e68:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005e6c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005e70:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005de4 <my_GPIO_Init+0xd4>
1c005e74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e78:	02809004 	addi.w	$r4,$r0,36(0x24)
1c005e7c:	57baafff 	bl	-17748(0xfffbaac) # 1c001928 <gpio_write>
1c005e80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e84:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005e88:	57baa3ff 	bl	-17760(0xfffbaa0) # 1c001928 <gpio_write>
1c005e8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e90:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005e94:	57ba97ff 	bl	-17772(0xfffba94) # 1c001928 <gpio_write>
1c005e98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005e9c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005ea0:	57ba8bff 	bl	-17784(0xfffba88) # 1c001928 <gpio_write>
1c005ea4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005ea8:	02809804 	addi.w	$r4,$r0,38(0x26)
1c005eac:	57ba7fff 	bl	-17796(0xfffba7c) # 1c001928 <gpio_write>
1c005eb0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005eb4:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c005eb8:	57ba73ff 	bl	-17808(0xfffba70) # 1c001928 <gpio_write>
1c005ebc:	00150005 	move	$r5,$r0
1c005ec0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005ec4:	57ba67ff 	bl	-17820(0xfffba64) # 1c001928 <gpio_write>
1c005ec8:	03400000 	andi	$r0,$r0,0x0
1c005ecc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005ed0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005ed4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005ed8:	4c000020 	jirl	$r0,$r1,0

1c005edc <my_I2C_Init>:
my_I2C_Init():
1c005edc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ee0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005ee4:	29806076 	st.w	$r22,$r3,24(0x18)
1c005ee8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005eec:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c005ef0:	00150184 	move	$r4,$r12
1c005ef4:	57bc0fff 	bl	-17396(0xfffbc0c) # 1c001b00 <soc_I2C_StructInit>
1c005ef8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c005efc:	00150184 	move	$r4,$r12
1c005f00:	57bc4bff 	bl	-17336(0xfffbc48) # 1c001b48 <soc_I2C_Init>
1c005f04:	1400016c 	lu12i.w	$r12,11(0xb)
1c005f08:	0399958c 	ori	$r12,$r12,0x665
1c005f0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f10:	50008400 	b	132(0x84) # 1c005f94 <my_I2C_Init+0xb8>
1c005f14:	03400000 	andi	$r0,$r0,0x0
1c005f18:	03400000 	andi	$r0,$r0,0x0
1c005f1c:	03400000 	andi	$r0,$r0,0x0
1c005f20:	03400000 	andi	$r0,$r0,0x0
1c005f24:	03400000 	andi	$r0,$r0,0x0
1c005f28:	03400000 	andi	$r0,$r0,0x0
1c005f2c:	03400000 	andi	$r0,$r0,0x0
1c005f30:	03400000 	andi	$r0,$r0,0x0
1c005f34:	03400000 	andi	$r0,$r0,0x0
1c005f38:	03400000 	andi	$r0,$r0,0x0
1c005f3c:	03400000 	andi	$r0,$r0,0x0
1c005f40:	03400000 	andi	$r0,$r0,0x0
1c005f44:	03400000 	andi	$r0,$r0,0x0
1c005f48:	03400000 	andi	$r0,$r0,0x0
1c005f4c:	03400000 	andi	$r0,$r0,0x0
1c005f50:	03400000 	andi	$r0,$r0,0x0
1c005f54:	03400000 	andi	$r0,$r0,0x0
1c005f58:	03400000 	andi	$r0,$r0,0x0
1c005f5c:	03400000 	andi	$r0,$r0,0x0
1c005f60:	03400000 	andi	$r0,$r0,0x0
1c005f64:	03400000 	andi	$r0,$r0,0x0
1c005f68:	03400000 	andi	$r0,$r0,0x0
1c005f6c:	03400000 	andi	$r0,$r0,0x0
1c005f70:	03400000 	andi	$r0,$r0,0x0
1c005f74:	03400000 	andi	$r0,$r0,0x0
1c005f78:	03400000 	andi	$r0,$r0,0x0
1c005f7c:	03400000 	andi	$r0,$r0,0x0
1c005f80:	03400000 	andi	$r0,$r0,0x0
1c005f84:	03400000 	andi	$r0,$r0,0x0
1c005f88:	03400000 	andi	$r0,$r0,0x0
1c005f8c:	03400000 	andi	$r0,$r0,0x0
1c005f90:	03400000 	andi	$r0,$r0,0x0
1c005f94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005f9c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005fa0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005f14 <my_I2C_Init+0x38>
1c005fa4:	03400000 	andi	$r0,$r0,0x0
1c005fa8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005fac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005fb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005fb4:	4c000020 	jirl	$r0,$r1,0

1c005fb8 <my_PWM_Init>:
my_PWM_Init():
1c005fb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005fbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005fc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c005fc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005fc8:	57bd77ff 	bl	-17036(0xfffbd74) # 1c001d3c <pwm_steering_engine_init>
1c005fcc:	1400016c 	lu12i.w	$r12,11(0xb)
1c005fd0:	0399958c 	ori	$r12,$r12,0x665
1c005fd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005fd8:	50008400 	b	132(0x84) # 1c00605c <my_PWM_Init+0xa4>
1c005fdc:	03400000 	andi	$r0,$r0,0x0
1c005fe0:	03400000 	andi	$r0,$r0,0x0
1c005fe4:	03400000 	andi	$r0,$r0,0x0
1c005fe8:	03400000 	andi	$r0,$r0,0x0
1c005fec:	03400000 	andi	$r0,$r0,0x0
1c005ff0:	03400000 	andi	$r0,$r0,0x0
1c005ff4:	03400000 	andi	$r0,$r0,0x0
1c005ff8:	03400000 	andi	$r0,$r0,0x0
1c005ffc:	03400000 	andi	$r0,$r0,0x0
1c006000:	03400000 	andi	$r0,$r0,0x0
1c006004:	03400000 	andi	$r0,$r0,0x0
1c006008:	03400000 	andi	$r0,$r0,0x0
1c00600c:	03400000 	andi	$r0,$r0,0x0
1c006010:	03400000 	andi	$r0,$r0,0x0
1c006014:	03400000 	andi	$r0,$r0,0x0
1c006018:	03400000 	andi	$r0,$r0,0x0
1c00601c:	03400000 	andi	$r0,$r0,0x0
1c006020:	03400000 	andi	$r0,$r0,0x0
1c006024:	03400000 	andi	$r0,$r0,0x0
1c006028:	03400000 	andi	$r0,$r0,0x0
1c00602c:	03400000 	andi	$r0,$r0,0x0
1c006030:	03400000 	andi	$r0,$r0,0x0
1c006034:	03400000 	andi	$r0,$r0,0x0
1c006038:	03400000 	andi	$r0,$r0,0x0
1c00603c:	03400000 	andi	$r0,$r0,0x0
1c006040:	03400000 	andi	$r0,$r0,0x0
1c006044:	03400000 	andi	$r0,$r0,0x0
1c006048:	03400000 	andi	$r0,$r0,0x0
1c00604c:	03400000 	andi	$r0,$r0,0x0
1c006050:	03400000 	andi	$r0,$r0,0x0
1c006054:	03400000 	andi	$r0,$r0,0x0
1c006058:	03400000 	andi	$r0,$r0,0x0
1c00605c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006060:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006064:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006068:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005fdc <my_PWM_Init+0x24>
1c00606c:	03400000 	andi	$r0,$r0,0x0
1c006070:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006074:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006078:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00607c:	4c000020 	jirl	$r0,$r1,0

1c006080 <my_SPI_Init>:
my_SPI_Init():
1c006080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006084:	29803061 	st.w	$r1,$r3,12(0xc)
1c006088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00608c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006090:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006094:	57bdb3ff 	bl	-16976(0xfffbdb0) # 1c001e44 <soc_Spi_Init>
1c006098:	03400000 	andi	$r0,$r0,0x0
1c00609c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060a8:	4c000020 	jirl	$r0,$r1,0

1c0060ac <Init_main>:
Init_main():
1c0060ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060b0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0060b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060b8:	03400000 	andi	$r0,$r0,0x0
1c0060bc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0060c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060c4:	4c000020 	jirl	$r0,$r1,0

1c0060c8 <ReadRawRC>:
ReadRawRC():
1c0060c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0060cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0060d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0060d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0060d8:	0015008c 	move	$r12,$r4
1c0060dc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0060e0:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0060e4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0060e8:	0040858c 	slli.w	$r12,$r12,0x1
1c0060ec:	00005d8c 	ext.w.b	$r12,$r12
1c0060f0:	0341f98c 	andi	$r12,$r12,0x7e
1c0060f4:	00005d8d 	ext.w.b	$r13,$r12
1c0060f8:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0060fc:	001531ac 	or	$r12,$r13,$r12
1c006100:	00005d8c 	ext.w.b	$r12,$r12
1c006104:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c006108:	57bdc3ff 	bl	-16960(0xfffbdc0) # 1c001ec8 <soc_Spi_Cs_Down>
1c00610c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006110:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c006114:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006118:	03400000 	andi	$r0,$r0,0x0
1c00611c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006120:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006124:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006128:	0340118c 	andi	$r12,$r12,0x4
1c00612c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00611c <ReadRawRC+0x54>
1c006130:	03400000 	andi	$r0,$r0,0x0
1c006134:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006138:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00613c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006140:	0340058c 	andi	$r12,$r12,0x1
1c006144:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c006134 <ReadRawRC+0x6c>
1c006148:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00614c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006150:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006154:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006158:	29000980 	st.b	$r0,$r12,2(0x2)
1c00615c:	03400000 	andi	$r0,$r0,0x0
1c006160:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006164:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006168:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00616c:	0340118c 	andi	$r12,$r12,0x4
1c006170:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c006160 <ReadRawRC+0x98>
1c006174:	03400000 	andi	$r0,$r0,0x0
1c006178:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00617c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006180:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006184:	0340058c 	andi	$r12,$r12,0x1
1c006188:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c006178 <ReadRawRC+0xb0>
1c00618c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006190:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006194:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006198:	57bd8bff 	bl	-17016(0xfffbd88) # 1c001f20 <soc_Spi_Cs_Up>
1c00619c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0061a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0061a4:	50008400 	b	132(0x84) # 1c006228 <ReadRawRC+0x160>
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
1c0061d4:	03400000 	andi	$r0,$r0,0x0
1c0061d8:	03400000 	andi	$r0,$r0,0x0
1c0061dc:	03400000 	andi	$r0,$r0,0x0
1c0061e0:	03400000 	andi	$r0,$r0,0x0
1c0061e4:	03400000 	andi	$r0,$r0,0x0
1c0061e8:	03400000 	andi	$r0,$r0,0x0
1c0061ec:	03400000 	andi	$r0,$r0,0x0
1c0061f0:	03400000 	andi	$r0,$r0,0x0
1c0061f4:	03400000 	andi	$r0,$r0,0x0
1c0061f8:	03400000 	andi	$r0,$r0,0x0
1c0061fc:	03400000 	andi	$r0,$r0,0x0
1c006200:	03400000 	andi	$r0,$r0,0x0
1c006204:	03400000 	andi	$r0,$r0,0x0
1c006208:	03400000 	andi	$r0,$r0,0x0
1c00620c:	03400000 	andi	$r0,$r0,0x0
1c006210:	03400000 	andi	$r0,$r0,0x0
1c006214:	03400000 	andi	$r0,$r0,0x0
1c006218:	03400000 	andi	$r0,$r0,0x0
1c00621c:	03400000 	andi	$r0,$r0,0x0
1c006220:	03400000 	andi	$r0,$r0,0x0
1c006224:	03400000 	andi	$r0,$r0,0x0
1c006228:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00622c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006230:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006234:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0061a8 <ReadRawRC+0xe0>
1c006238:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00623c:	00150184 	move	$r4,$r12
1c006240:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006244:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006248:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00624c:	4c000020 	jirl	$r0,$r1,0

1c006250 <WriteRawRC>:
WriteRawRC():
1c006250:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006254:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006258:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00625c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006260:	0015008c 	move	$r12,$r4
1c006264:	001500ad 	move	$r13,$r5
1c006268:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00626c:	001501ac 	move	$r12,$r13
1c006270:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006274:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006278:	0040858c 	slli.w	$r12,$r12,0x1
1c00627c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006280:	0341f98c 	andi	$r12,$r12,0x7e
1c006284:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006288:	57bc43ff 	bl	-17344(0xfffbc40) # 1c001ec8 <soc_Spi_Cs_Down>
1c00628c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006290:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c006294:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006298:	03400000 	andi	$r0,$r0,0x0
1c00629c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0062a0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0062a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0062a8:	0340118c 	andi	$r12,$r12,0x4
1c0062ac:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00629c <WriteRawRC+0x4c>
1c0062b0:	03400000 	andi	$r0,$r0,0x0
1c0062b4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0062b8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0062bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0062c0:	0340058c 	andi	$r12,$r12,0x1
1c0062c4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0062b4 <WriteRawRC+0x64>
1c0062c8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0062cc:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0062d0:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0062d4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0062d8:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0062dc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0062e0:	03400000 	andi	$r0,$r0,0x0
1c0062e4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0062e8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0062ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0062f0:	0340118c 	andi	$r12,$r12,0x4
1c0062f4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0062e4 <WriteRawRC+0x94>
1c0062f8:	03400000 	andi	$r0,$r0,0x0
1c0062fc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006300:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006304:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006308:	0340058c 	andi	$r12,$r12,0x1
1c00630c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0062fc <WriteRawRC+0xac>
1c006310:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006314:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006318:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00631c:	57bc07ff 	bl	-17404(0xfffbc04) # 1c001f20 <soc_Spi_Cs_Up>
1c006320:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006328:	50008400 	b	132(0x84) # 1c0063ac <WriteRawRC+0x15c>
1c00632c:	03400000 	andi	$r0,$r0,0x0
1c006330:	03400000 	andi	$r0,$r0,0x0
1c006334:	03400000 	andi	$r0,$r0,0x0
1c006338:	03400000 	andi	$r0,$r0,0x0
1c00633c:	03400000 	andi	$r0,$r0,0x0
1c006340:	03400000 	andi	$r0,$r0,0x0
1c006344:	03400000 	andi	$r0,$r0,0x0
1c006348:	03400000 	andi	$r0,$r0,0x0
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
1c0063ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0063b4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0063b8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00632c <WriteRawRC+0xdc>
1c0063bc:	03400000 	andi	$r0,$r0,0x0
1c0063c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063cc:	4c000020 	jirl	$r0,$r1,0

1c0063d0 <SetBitMask>:
SetBitMask():
1c0063d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0063d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0063e0:	0015008c 	move	$r12,$r4
1c0063e4:	001500ad 	move	$r13,$r5
1c0063e8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0063ec:	001501ac 	move	$r12,$r13
1c0063f0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0063f4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063f8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0063fc:	00150184 	move	$r4,$r12
1c006400:	57fccbff 	bl	-824(0xffffcc8) # 1c0060c8 <ReadRawRC>
1c006404:	0015008c 	move	$r12,$r4
1c006408:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00640c:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c006410:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006414:	001531ac 	or	$r12,$r13,$r12
1c006418:	00005d8c 	ext.w.b	$r12,$r12
1c00641c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006420:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006424:	001501a5 	move	$r5,$r13
1c006428:	00150184 	move	$r4,$r12
1c00642c:	57fe27ff 	bl	-476(0xffffe24) # 1c006250 <WriteRawRC>
1c006430:	03400000 	andi	$r0,$r0,0x0
1c006434:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006438:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00643c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006440:	4c000020 	jirl	$r0,$r1,0

1c006444 <ClearBitMask>:
ClearBitMask():
1c006444:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006448:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00644c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006450:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006454:	0015008c 	move	$r12,$r4
1c006458:	001500ad 	move	$r13,$r5
1c00645c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006460:	001501ac 	move	$r12,$r13
1c006464:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006468:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00646c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006470:	00150184 	move	$r4,$r12
1c006474:	57fc57ff 	bl	-940(0xffffc54) # 1c0060c8 <ReadRawRC>
1c006478:	0015008c 	move	$r12,$r4
1c00647c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006480:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c006484:	0014300c 	nor	$r12,$r0,$r12
1c006488:	00005d8d 	ext.w.b	$r13,$r12
1c00648c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006490:	0014b1ac 	and	$r12,$r13,$r12
1c006494:	00005d8c 	ext.w.b	$r12,$r12
1c006498:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00649c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0064a0:	001501a5 	move	$r5,$r13
1c0064a4:	00150184 	move	$r4,$r12
1c0064a8:	57fdabff 	bl	-600(0xffffda8) # 1c006250 <WriteRawRC>
1c0064ac:	03400000 	andi	$r0,$r0,0x0
1c0064b0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0064b4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0064b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0064bc:	4c000020 	jirl	$r0,$r1,0

1c0064c0 <PcdComMF522>:
PcdComMF522():
1c0064c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0064c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0064c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0064cc:	29809077 	st.w	$r23,$r3,36(0x24)
1c0064d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0064d4:	0015008c 	move	$r12,$r4
1c0064d8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0064dc:	001500cd 	move	$r13,$r6
1c0064e0:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c0064e4:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c0064e8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0064ec:	001501ac 	move	$r12,$r13
1c0064f0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0064f4:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0064f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0064fc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006500:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c006504:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006508:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c00650c:	5800218d 	beq	$r12,$r13,32(0x20) # 1c00652c <PcdComMF522+0x6c>
1c006510:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006514:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c006540 <PcdComMF522+0x80>
1c006518:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00651c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006520:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006524:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006528:	50001c00 	b	28(0x1c) # 1c006544 <PcdComMF522+0x84>
1c00652c:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c006530:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006534:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c006538:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00653c:	50000800 	b	8(0x8) # 1c006544 <PcdComMF522+0x84>
1c006540:	03400000 	andi	$r0,$r0,0x0
1c006544:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006548:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00654c:	001531ac 	or	$r12,$r13,$r12
1c006550:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006554:	00150185 	move	$r5,$r12
1c006558:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00655c:	57fcf7ff 	bl	-780(0xffffcf4) # 1c006250 <WriteRawRC>
1c006560:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006564:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006568:	57fedfff 	bl	-292(0xffffedc) # 1c006444 <ClearBitMask>
1c00656c:	00150005 	move	$r5,$r0
1c006570:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006574:	57fcdfff 	bl	-804(0xffffcdc) # 1c006250 <WriteRawRC>
1c006578:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00657c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006580:	57fe53ff 	bl	-432(0xffffe50) # 1c0063d0 <SetBitMask>
1c006584:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006588:	50002c00 	b	44(0x2c) # 1c0065b4 <PcdComMF522+0xf4>
1c00658c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006590:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006594:	001031ac 	add.w	$r12,$r13,$r12
1c006598:	2a00018c 	ld.bu	$r12,$r12,0
1c00659c:	00150185 	move	$r5,$r12
1c0065a0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0065a4:	57fcafff 	bl	-852(0xffffcac) # 1c006250 <WriteRawRC>
1c0065a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0065ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0065b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0065b4:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0065b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0065bc:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c00658c <PcdComMF522+0xcc>
1c0065c0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0065c4:	00150185 	move	$r5,$r12
1c0065c8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0065cc:	57fc87ff 	bl	-892(0xffffc84) # 1c006250 <WriteRawRC>
1c0065d0:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0065d4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0065d8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0065e8 <PcdComMF522+0x128>
1c0065dc:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0065e0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0065e4:	57fdefff 	bl	-532(0xffffdec) # 1c0063d0 <SetBitMask>
1c0065e8:	1400026c 	lu12i.w	$r12,19(0x13)
1c0065ec:	03a2018c 	ori	$r12,$r12,0x880
1c0065f0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0065f4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0065f8:	57fad3ff 	bl	-1328(0xffffad0) # 1c0060c8 <ReadRawRC>
1c0065fc:	0015008c 	move	$r12,$r4
1c006600:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c006604:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006608:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00660c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006610:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006614:	40002580 	beqz	$r12,36(0x24) # 1c006638 <PcdComMF522+0x178>
1c006618:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c00661c:	0340058c 	andi	$r12,$r12,0x1
1c006620:	44001980 	bnez	$r12,24(0x18) # 1c006638 <PcdComMF522+0x178>
1c006624:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006628:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00662c:	0014b1ac 	and	$r12,$r13,$r12
1c006630:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006634:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c0065f4 <PcdComMF522+0x134>
1c006638:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00663c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006640:	57fe07ff 	bl	-508(0xffffe04) # 1c006444 <ClearBitMask>
1c006644:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006648:	40011180 	beqz	$r12,272(0x110) # 1c006758 <PcdComMF522+0x298>
1c00664c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006650:	57fa7bff 	bl	-1416(0xffffa78) # 1c0060c8 <ReadRawRC>
1c006654:	0015008c 	move	$r12,$r4
1c006658:	03406d8c 	andi	$r12,$r12,0x1b
1c00665c:	4400f580 	bnez	$r12,244(0xf4) # 1c006750 <PcdComMF522+0x290>
1c006660:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006664:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006668:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00666c:	0014b1ac 	and	$r12,$r13,$r12
1c006670:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006674:	0340058c 	andi	$r12,$r12,0x1
1c006678:	40000d80 	beqz	$r12,12(0xc) # 1c006684 <PcdComMF522+0x1c4>
1c00667c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c006680:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006684:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c006688:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00668c:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c006758 <PcdComMF522+0x298>
1c006690:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006694:	57fa37ff 	bl	-1484(0xffffa34) # 1c0060c8 <ReadRawRC>
1c006698:	0015008c 	move	$r12,$r4
1c00669c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0066a0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0066a4:	57fa27ff 	bl	-1500(0xffffa24) # 1c0060c8 <ReadRawRC>
1c0066a8:	0015008c 	move	$r12,$r4
1c0066ac:	03401d8c 	andi	$r12,$r12,0x7
1c0066b0:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0066b4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0066b8:	40002580 	beqz	$r12,36(0x24) # 1c0066dc <PcdComMF522+0x21c>
1c0066bc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0066c0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0066c4:	00408d8d 	slli.w	$r13,$r12,0x3
1c0066c8:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0066cc:	001031ad 	add.w	$r13,$r13,$r12
1c0066d0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0066d4:	2980018d 	st.w	$r13,$r12,0
1c0066d8:	50001400 	b	20(0x14) # 1c0066ec <PcdComMF522+0x22c>
1c0066dc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0066e0:	00408d8d 	slli.w	$r13,$r12,0x3
1c0066e4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0066e8:	2980018d 	st.w	$r13,$r12,0
1c0066ec:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0066f0:	44000d80 	bnez	$r12,12(0xc) # 1c0066fc <PcdComMF522+0x23c>
1c0066f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066f8:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0066fc:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006700:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c006704:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c006710 <PcdComMF522+0x250>
1c006708:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00670c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c006710:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006714:	50002c00 	b	44(0x2c) # 1c006740 <PcdComMF522+0x280>
1c006718:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00671c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006720:	001031b7 	add.w	$r23,$r13,$r12
1c006724:	02802404 	addi.w	$r4,$r0,9(0x9)
1c006728:	57f9a3ff 	bl	-1632(0xffff9a0) # 1c0060c8 <ReadRawRC>
1c00672c:	0015008c 	move	$r12,$r4
1c006730:	290002ec 	st.b	$r12,$r23,0
1c006734:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006738:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00673c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006740:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c006744:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006748:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c006718 <PcdComMF522+0x258>
1c00674c:	50000c00 	b	12(0xc) # 1c006758 <PcdComMF522+0x298>
1c006750:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c006754:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006758:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00675c:	02803004 	addi.w	$r4,$r0,12(0xc)
1c006760:	57fc73ff 	bl	-912(0xffffc70) # 1c0063d0 <SetBitMask>
1c006764:	00150005 	move	$r5,$r0
1c006768:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00676c:	57fae7ff 	bl	-1308(0xffffae4) # 1c006250 <WriteRawRC>
1c006770:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006774:	00150184 	move	$r4,$r12
1c006778:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00677c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006780:	28809077 	ld.w	$r23,$r3,36(0x24)
1c006784:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006788:	4c000020 	jirl	$r0,$r1,0

1c00678c <PcdRequest>:
PcdRequest():
1c00678c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006790:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006794:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006798:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00679c:	0015008c 	move	$r12,$r4
1c0067a0:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0067a4:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c0067a8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0067ac:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0067b0:	57fc97ff 	bl	-876(0xffffc94) # 1c006444 <ClearBitMask>
1c0067b4:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c0067b8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0067bc:	57fa97ff 	bl	-1388(0xffffa94) # 1c006250 <WriteRawRC>
1c0067c0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0067c4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0067c8:	57fc0bff 	bl	-1016(0xffffc08) # 1c0063d0 <SetBitMask>
1c0067cc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0067d0:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c0067d4:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0067d8:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0067dc:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0067e0:	001501c8 	move	$r8,$r14
1c0067e4:	001501a7 	move	$r7,$r13
1c0067e8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0067ec:	00150185 	move	$r5,$r12
1c0067f0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0067f4:	57fccfff 	bl	-820(0xffffccc) # 1c0064c0 <PcdComMF522>
1c0067f8:	0015008c 	move	$r12,$r4
1c0067fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006800:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006804:	44003180 	bnez	$r12,48(0x30) # 1c006834 <PcdRequest+0xa8>
1c006808:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00680c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006810:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c006834 <PcdRequest+0xa8>
1c006814:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c006818:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00681c:	2900018d 	st.b	$r13,$r12,0
1c006820:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006824:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006828:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c00682c:	2900018d 	st.b	$r13,$r12,0
1c006830:	50000c00 	b	12(0xc) # 1c00683c <PcdRequest+0xb0>
1c006834:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c006838:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00683c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006840:	00150184 	move	$r4,$r12
1c006844:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006848:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00684c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006850:	4c000020 	jirl	$r0,$r1,0

1c006854 <PcdAnticoll>:
PcdAnticoll():
1c006854:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006858:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00685c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006860:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006864:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006868:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c00686c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006870:	02802004 	addi.w	$r4,$r0,8(0x8)
1c006874:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c006444 <ClearBitMask>
1c006878:	00150005 	move	$r5,$r0
1c00687c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006880:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c006250 <WriteRawRC>
1c006884:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006888:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00688c:	57fbbbff 	bl	-1096(0xffffbb8) # 1c006444 <ClearBitMask>
1c006890:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c006894:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c006898:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00689c:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c0068a0:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0068a4:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0068a8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0068ac:	001501c8 	move	$r8,$r14
1c0068b0:	001501a7 	move	$r7,$r13
1c0068b4:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0068b8:	00150185 	move	$r5,$r12
1c0068bc:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0068c0:	57fc03ff 	bl	-1024(0xffffc00) # 1c0064c0 <PcdComMF522>
1c0068c4:	0015008c 	move	$r12,$r4
1c0068c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0068cc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0068d0:	44008180 	bnez	$r12,128(0x80) # 1c006950 <PcdAnticoll+0xfc>
1c0068d4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0068d8:	50004c00 	b	76(0x4c) # 1c006924 <PcdAnticoll+0xd0>
1c0068dc:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c0068e0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0068e4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0068e8:	001031ac 	add.w	$r12,$r13,$r12
1c0068ec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0068f0:	001039ad 	add.w	$r13,$r13,$r14
1c0068f4:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c0068f8:	2900018d 	st.b	$r13,$r12,0
1c0068fc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006900:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006904:	001031ac 	add.w	$r12,$r13,$r12
1c006908:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c00690c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c006910:	0015b1ac 	xor	$r12,$r13,$r12
1c006914:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006918:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00691c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006920:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006924:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006928:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00692c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0068dc <PcdAnticoll+0x88>
1c006930:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006934:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c006938:	001031ac 	add.w	$r12,$r13,$r12
1c00693c:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c006940:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c006944:	58000dac 	beq	$r13,$r12,12(0xc) # 1c006950 <PcdAnticoll+0xfc>
1c006948:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c00694c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006950:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006954:	02803804 	addi.w	$r4,$r0,14(0xe)
1c006958:	57fa7bff 	bl	-1416(0xffffa78) # 1c0063d0 <SetBitMask>
1c00695c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006960:	00150184 	move	$r4,$r12
1c006964:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006968:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00696c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006970:	4c000020 	jirl	$r0,$r1,0

1c006974 <Return_Card>:
Return_Card():
1c006974:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006978:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00697c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006980:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006984:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c006988:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c00698c:	2899f0a5 	ld.w	$r5,$r5,1660(0x67c)
1c006990:	02814804 	addi.w	$r4,$r0,82(0x52)
1c006994:	57fdfbff 	bl	-520(0xffffdf8) # 1c00678c <PcdRequest>
1c006998:	0015008c 	move	$r12,$r4
1c00699c:	44005d80 	bnez	$r12,92(0x5c) # 1c0069f8 <Return_Card+0x84>
1c0069a0:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c0069a4:	2899c084 	ld.w	$r4,$r4,1648(0x670)
1c0069a8:	57feafff 	bl	-340(0xffffeac) # 1c006854 <PcdAnticoll>
1c0069ac:	0015008c 	move	$r12,$r4
1c0069b0:	44004980 	bnez	$r12,72(0x48) # 1c0069f8 <Return_Card+0x84>
1c0069b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0069b8:	2899718c 	ld.w	$r12,$r12,1628(0x65c)
1c0069bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0069c0:	0044918c 	srli.w	$r12,$r12,0x4
1c0069c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0069c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069cc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0069d0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0069d4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0069dc:	2898e18c 	ld.w	$r12,$r12,1592(0x638)
1c0069e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0069e4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0069e8:	03403d8c 	andi	$r12,$r12,0xf
1c0069ec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0069f0:	001031ac 	add.w	$r12,$r13,$r12
1c0069f4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0069f8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0069fc:	00150184 	move	$r4,$r12
1c006a00:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006a04:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006a08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006a0c:	4c000020 	jirl	$r0,$r1,0

1c006a10 <Buffer_write>:
Buffer_write():
1c006a10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006a14:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006a18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006a1c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006a20:	001500ac 	move	$r12,$r5
1c006a24:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a2c:	2880018c 	ld.w	$r12,$r12,0
1c006a30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a34:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c006a38:	0010358c 	add.w	$r12,$r12,$r13
1c006a3c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c006a40:	2900018d 	st.b	$r13,$r12,0
1c006a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a48:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c006a4c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006a50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a54:	2980318d 	st.w	$r13,$r12,12(0xc)
1c006a58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a5c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c006a60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a64:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c006a68:	60000dac 	blt	$r13,$r12,12(0xc) # 1c006a74 <Buffer_write+0x64>
1c006a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a70:	29803180 	st.w	$r0,$r12,12(0xc)
1c006a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a78:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c006a7c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a84:	2980418d 	st.w	$r13,$r12,16(0x10)
1c006a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a8c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c006a90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a94:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c006a98:	6400458d 	bge	$r12,$r13,68(0x44) # 1c006adc <Buffer_write+0xcc>
1c006a9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006aa0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c006aa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006aa8:	2980418d 	st.w	$r13,$r12,16(0x10)
1c006aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ab0:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c006ab4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c006ab8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006abc:	2980218d 	st.w	$r13,$r12,8(0x8)
1c006ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ac4:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c006ac8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006acc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c006ad0:	60000dac 	blt	$r13,$r12,12(0xc) # 1c006adc <Buffer_write+0xcc>
1c006ad4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ad8:	29802180 	st.w	$r0,$r12,8(0x8)
1c006adc:	03400000 	andi	$r0,$r0,0x0
1c006ae0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006ae4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006ae8:	4c000020 	jirl	$r0,$r1,0

1c006aec <main>:
main():
1c006aec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006af0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006af4:	29806076 	st.w	$r22,$r3,24(0x18)
1c006af8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006afc:	57f217ff 	bl	-3564(0xffff214) # 1c005d10 <my_GPIO_Init>
1c006b00:	57f4bbff 	bl	-2888(0xffff4b8) # 1c005fb8 <my_PWM_Init>
1c006b04:	57f3dbff 	bl	-3112(0xffff3d8) # 1c005edc <my_I2C_Init>
1c006b08:	57f57bff 	bl	-2696(0xffff578) # 1c006080 <my_SPI_Init>
1c006b0c:	140001cc 	lu12i.w	$r12,14(0xe)
1c006b10:	03840184 	ori	$r4,$r12,0x100
1c006b14:	57cb03ff 	bl	-13568(0xfffcb00) # 1c003614 <hw_uart_init>
1c006b18:	14000e2c 	lu12i.w	$r12,113(0x71)
1c006b1c:	03bfc98c 	ori	$r12,$r12,0xff2
1c006b20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b24:	50008400 	b	132(0x84) # 1c006ba8 <main+0xbc>
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
1c006bb4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006b28 <main+0x3c>
1c006bb8:	57f4f7ff 	bl	-2828(0xffff4f4) # 1c0060ac <Init_main>
1c006bbc:	14000e2c 	lu12i.w	$r12,113(0x71)
1c006bc0:	03bfc98c 	ori	$r12,$r12,0xff2
1c006bc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006bc8:	50008400 	b	132(0x84) # 1c006c4c <main+0x160>
1c006bcc:	03400000 	andi	$r0,$r0,0x0
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
1c006c4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c50:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006c54:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006c58:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006bcc <main+0xe0>
1c006c5c:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006c60:	57adc3ff 	bl	-21056(0xfffadc0) # 1c001a20 <gpio_read>
1c006c64:	0015008d 	move	$r13,$r4
1c006c68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006c6c:	5c0cadac 	bne	$r13,$r12,3244(0xcac) # 1c007918 <main+0xe2c>
1c006c70:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c74:	029be98c 	addi.w	$r12,$r12,1786(0x6fa)
1c006c78:	29000180 	st.b	$r0,$r12,0
1c006c7c:	57e28bff 	bl	-7544(0xfffe288) # 1c004f04 <LEDgree_ON>
1c006c80:	57cabfff 	bl	-13636(0xfffcabc) # 1c00373c <MatrixKey>
1c006c84:	0015008c 	move	$r12,$r4
1c006c88:	0015018d 	move	$r13,$r12
1c006c8c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c90:	029b758c 	addi.w	$r12,$r12,1757(0x6dd)
1c006c94:	2900018d 	st.b	$r13,$r12,0
1c006c98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006c9c:	02b7d58c 	addi.w	$r12,$r12,-523(0xdf5)
1c006ca0:	2a00018c 	ld.bu	$r12,$r12,0
1c006ca4:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c006ca8:	680cbdac 	bltu	$r13,$r12,3260(0xcbc) # 1c007964 <main+0xe78>
1c006cac:	0040898d 	slli.w	$r13,$r12,0x2
1c006cb0:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c006cb4:	0293018c 	addi.w	$r12,$r12,1216(0x4c0)
1c006cb8:	001031ac 	add.w	$r12,$r13,$r12
1c006cbc:	2880018c 	ld.w	$r12,$r12,0
1c006cc0:	4c000180 	jirl	$r0,$r12,0
1c006cc4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006cc8:	02b7218c 	addi.w	$r12,$r12,-568(0xdc8)
1c006ccc:	2a00018d 	ld.bu	$r13,$r12,0
1c006cd0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006cd4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006cec <main+0x200>
1c006cd8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006cdc:	540d2800 	bl	3368(0xd28) # 1c007a04 <interface_display>
1c006ce0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006ce4:	02b6b18c 	addi.w	$r12,$r12,-596(0xdac)
1c006ce8:	29000180 	st.b	$r0,$r12,0
1c006cec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006cf0:	0299f58c 	addi.w	$r12,$r12,1661(0x67d)
1c006cf4:	2a00018d 	ld.bu	$r13,$r12,0
1c006cf8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006cfc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006d24 <main+0x238>
1c006d00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d04:	02b6358c 	addi.w	$r12,$r12,-627(0xd8d)
1c006d08:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006d0c:	2900018d 	st.b	$r13,$r12,0
1c006d10:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d14:	02b5f18c 	addi.w	$r12,$r12,-644(0xd7c)
1c006d18:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006d1c:	2900018d 	st.b	$r13,$r12,0
1c006d20:	500c4c00 	b	3148(0xc4c) # 1c00796c <main+0xe80>
1c006d24:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d28:	0299158c 	addi.w	$r12,$r12,1605(0x645)
1c006d2c:	2a00018d 	ld.bu	$r13,$r12,0
1c006d30:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006d34:	5c0c39ac 	bne	$r13,$r12,3128(0xc38) # 1c00796c <main+0xe80>
1c006d38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d3c:	02b5558c 	addi.w	$r12,$r12,-683(0xd55)
1c006d40:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c006d44:	2900018d 	st.b	$r13,$r12,0
1c006d48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d4c:	02b5118c 	addi.w	$r12,$r12,-700(0xd44)
1c006d50:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c006d54:	2900018d 	st.b	$r13,$r12,0
1c006d58:	500c1400 	b	3092(0xc14) # 1c00796c <main+0xe80>
1c006d5c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d60:	02b4c18c 	addi.w	$r12,$r12,-720(0xd30)
1c006d64:	2a00018d 	ld.bu	$r13,$r12,0
1c006d68:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006d6c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006d84 <main+0x298>
1c006d70:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006d74:	540c9000 	bl	3216(0xc90) # 1c007a04 <interface_display>
1c006d78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d7c:	02b4518c 	addi.w	$r12,$r12,-748(0xd14)
1c006d80:	29000180 	st.b	$r0,$r12,0
1c006d84:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d88:	0297958c 	addi.w	$r12,$r12,1509(0x5e5)
1c006d8c:	2a00018d 	ld.bu	$r13,$r12,0
1c006d90:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c006d94:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006dbc <main+0x2d0>
1c006d98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006d9c:	02b3d58c 	addi.w	$r12,$r12,-779(0xcf5)
1c006da0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c006da4:	2900018d 	st.b	$r13,$r12,0
1c006da8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006dac:	02b3918c 	addi.w	$r12,$r12,-796(0xce4)
1c006db0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c006db4:	2900018d 	st.b	$r13,$r12,0
1c006db8:	500bbc00 	b	3004(0xbbc) # 1c007974 <main+0xe88>
1c006dbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006dc0:	0296b58c 	addi.w	$r12,$r12,1453(0x5ad)
1c006dc4:	2a00018d 	ld.bu	$r13,$r12,0
1c006dc8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006dcc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006df4 <main+0x308>
1c006dd0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006dd4:	02b2f58c 	addi.w	$r12,$r12,-835(0xcbd)
1c006dd8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c006ddc:	2900018d 	st.b	$r13,$r12,0
1c006de0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006de4:	02b2b18c 	addi.w	$r12,$r12,-852(0xcac)
1c006de8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c006dec:	2900018d 	st.b	$r13,$r12,0
1c006df0:	500b8400 	b	2948(0xb84) # 1c007974 <main+0xe88>
1c006df4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006df8:	0295d58c 	addi.w	$r12,$r12,1397(0x575)
1c006dfc:	2a00018d 	ld.bu	$r13,$r12,0
1c006e00:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006e04:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006e2c <main+0x340>
1c006e08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e0c:	02b2158c 	addi.w	$r12,$r12,-891(0xc85)
1c006e10:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c006e14:	2900018d 	st.b	$r13,$r12,0
1c006e18:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e1c:	02b1d18c 	addi.w	$r12,$r12,-908(0xc74)
1c006e20:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c006e24:	2900018d 	st.b	$r13,$r12,0
1c006e28:	500b4c00 	b	2892(0xb4c) # 1c007974 <main+0xe88>
1c006e2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006e30:	0294f58c 	addi.w	$r12,$r12,1341(0x53d)
1c006e34:	2a00018d 	ld.bu	$r13,$r12,0
1c006e38:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006e3c:	5c0b39ac 	bne	$r13,$r12,2872(0xb38) # 1c007974 <main+0xe88>
1c006e40:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e44:	02b1358c 	addi.w	$r12,$r12,-947(0xc4d)
1c006e48:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006e4c:	2900018d 	st.b	$r13,$r12,0
1c006e50:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e54:	02b0f18c 	addi.w	$r12,$r12,-964(0xc3c)
1c006e58:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006e5c:	2900018d 	st.b	$r13,$r12,0
1c006e60:	500b1400 	b	2836(0xb14) # 1c007974 <main+0xe88>
1c006e64:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e68:	02b0a18c 	addi.w	$r12,$r12,-984(0xc28)
1c006e6c:	2a00018d 	ld.bu	$r13,$r12,0
1c006e70:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006e74:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006e8c <main+0x3a0>
1c006e78:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006e7c:	540b8800 	bl	2952(0xb88) # 1c007a04 <interface_display>
1c006e80:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e84:	02b0318c 	addi.w	$r12,$r12,-1012(0xc0c)
1c006e88:	29000180 	st.b	$r0,$r12,0
1c006e8c:	54176c00 	bl	5996(0x176c) # 1c0085f8 <Read_ID>
1c006e90:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006e94:	0293658c 	addi.w	$r12,$r12,1241(0x4d9)
1c006e98:	2a00018d 	ld.bu	$r13,$r12,0
1c006e9c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006ea0:	5c0addac 	bne	$r13,$r12,2780(0xadc) # 1c00797c <main+0xe90>
1c006ea4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006ea8:	02afa58c 	addi.w	$r12,$r12,-1047(0xbe9)
1c006eac:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006eb0:	2900018d 	st.b	$r13,$r12,0
1c006eb4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006eb8:	02af618c 	addi.w	$r12,$r12,-1064(0xbd8)
1c006ebc:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006ec0:	2900018d 	st.b	$r13,$r12,0
1c006ec4:	500ab800 	b	2744(0xab8) # 1c00797c <main+0xe90>
1c006ec8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006ecc:	02af118c 	addi.w	$r12,$r12,-1084(0xbc4)
1c006ed0:	2a00018d 	ld.bu	$r13,$r12,0
1c006ed4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006ed8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006ef0 <main+0x404>
1c006edc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006ee0:	540b2400 	bl	2852(0xb24) # 1c007a04 <interface_display>
1c006ee4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006ee8:	02aea18c 	addi.w	$r12,$r12,-1112(0xba8)
1c006eec:	29000180 	st.b	$r0,$r12,0
1c006ef0:	5419ac00 	bl	6572(0x19ac) # 1c00889c <Key_main>
1c006ef4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ef8:	0291d58c 	addi.w	$r12,$r12,1141(0x475)
1c006efc:	2a00018d 	ld.bu	$r13,$r12,0
1c006f00:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006f04:	5c0a81ac 	bne	$r13,$r12,2688(0xa80) # 1c007984 <main+0xe98>
1c006f08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f0c:	02ae158c 	addi.w	$r12,$r12,-1147(0xb85)
1c006f10:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006f14:	2900018d 	st.b	$r13,$r12,0
1c006f18:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f1c:	02add18c 	addi.w	$r12,$r12,-1164(0xb74)
1c006f20:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006f24:	2900018d 	st.b	$r13,$r12,0
1c006f28:	500a5c00 	b	2652(0xa5c) # 1c007984 <main+0xe98>
1c006f2c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f30:	02ad818c 	addi.w	$r12,$r12,-1184(0xb60)
1c006f34:	2a00018d 	ld.bu	$r13,$r12,0
1c006f38:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c006f3c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006f54 <main+0x468>
1c006f40:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c006f44:	540ac000 	bl	2752(0xac0) # 1c007a04 <interface_display>
1c006f48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f4c:	02ad118c 	addi.w	$r12,$r12,-1212(0xb44)
1c006f50:	29000180 	st.b	$r0,$r12,0
1c006f54:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f58:	0290558c 	addi.w	$r12,$r12,1045(0x415)
1c006f5c:	2a00018d 	ld.bu	$r13,$r12,0
1c006f60:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c006f64:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006f8c <main+0x4a0>
1c006f68:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f6c:	02ac958c 	addi.w	$r12,$r12,-1243(0xb25)
1c006f70:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006f74:	2900018d 	st.b	$r13,$r12,0
1c006f78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f7c:	02ac518c 	addi.w	$r12,$r12,-1260(0xb14)
1c006f80:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006f84:	2900018d 	st.b	$r13,$r12,0
1c006f88:	500a0400 	b	2564(0xa04) # 1c00798c <main+0xea0>
1c006f8c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f90:	028f758c 	addi.w	$r12,$r12,989(0x3dd)
1c006f94:	2a00018d 	ld.bu	$r13,$r12,0
1c006f98:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006f9c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006fc4 <main+0x4d8>
1c006fa0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006fa4:	02abb58c 	addi.w	$r12,$r12,-1299(0xaed)
1c006fa8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006fac:	2900018d 	st.b	$r13,$r12,0
1c006fb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006fb4:	02ab718c 	addi.w	$r12,$r12,-1316(0xadc)
1c006fb8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006fbc:	2900018d 	st.b	$r13,$r12,0
1c006fc0:	5009cc00 	b	2508(0x9cc) # 1c00798c <main+0xea0>
1c006fc4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fc8:	028e958c 	addi.w	$r12,$r12,933(0x3a5)
1c006fcc:	2a00018d 	ld.bu	$r13,$r12,0
1c006fd0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006fd4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006ffc <main+0x510>
1c006fd8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006fdc:	02aad58c 	addi.w	$r12,$r12,-1355(0xab5)
1c006fe0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006fe4:	2900018d 	st.b	$r13,$r12,0
1c006fe8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006fec:	02aa918c 	addi.w	$r12,$r12,-1372(0xaa4)
1c006ff0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006ff4:	2900018d 	st.b	$r13,$r12,0
1c006ff8:	50099400 	b	2452(0x994) # 1c00798c <main+0xea0>
1c006ffc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007000:	028db58c 	addi.w	$r12,$r12,877(0x36d)
1c007004:	2a00018d 	ld.bu	$r13,$r12,0
1c007008:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00700c:	5c0981ac 	bne	$r13,$r12,2432(0x980) # 1c00798c <main+0xea0>
1c007010:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007014:	02a9f58c 	addi.w	$r12,$r12,-1411(0xa7d)
1c007018:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00701c:	2900018d 	st.b	$r13,$r12,0
1c007020:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007024:	02a9b18c 	addi.w	$r12,$r12,-1428(0xa6c)
1c007028:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00702c:	2900018d 	st.b	$r13,$r12,0
1c007030:	50095c00 	b	2396(0x95c) # 1c00798c <main+0xea0>
1c007034:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007038:	02a9618c 	addi.w	$r12,$r12,-1448(0xa58)
1c00703c:	2a00018d 	ld.bu	$r13,$r12,0
1c007040:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c007044:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00705c <main+0x570>
1c007048:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00704c:	5409b800 	bl	2488(0x9b8) # 1c007a04 <interface_display>
1c007050:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007054:	02a8f18c 	addi.w	$r12,$r12,-1476(0xa3c)
1c007058:	29000180 	st.b	$r0,$r12,0
1c00705c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007060:	028c358c 	addi.w	$r12,$r12,781(0x30d)
1c007064:	2a00018d 	ld.bu	$r13,$r12,0
1c007068:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00706c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007094 <main+0x5a8>
1c007070:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007074:	02a8758c 	addi.w	$r12,$r12,-1507(0xa1d)
1c007078:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c00707c:	2900018d 	st.b	$r13,$r12,0
1c007080:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007084:	02a8318c 	addi.w	$r12,$r12,-1524(0xa0c)
1c007088:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c00708c:	2900018d 	st.b	$r13,$r12,0
1c007090:	50090400 	b	2308(0x904) # 1c007994 <main+0xea8>
1c007094:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007098:	028b558c 	addi.w	$r12,$r12,725(0x2d5)
1c00709c:	2a00018d 	ld.bu	$r13,$r12,0
1c0070a0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0070a4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0070cc <main+0x5e0>
1c0070a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0070ac:	02a7958c 	addi.w	$r12,$r12,-1563(0x9e5)
1c0070b0:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c0070b4:	2900018d 	st.b	$r13,$r12,0
1c0070b8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0070bc:	02a7518c 	addi.w	$r12,$r12,-1580(0x9d4)
1c0070c0:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c0070c4:	2900018d 	st.b	$r13,$r12,0
1c0070c8:	5008cc00 	b	2252(0x8cc) # 1c007994 <main+0xea8>
1c0070cc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0070d0:	028a758c 	addi.w	$r12,$r12,669(0x29d)
1c0070d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0070d8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0070dc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007104 <main+0x618>
1c0070e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0070e4:	02a6b58c 	addi.w	$r12,$r12,-1619(0x9ad)
1c0070e8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0070ec:	2900018d 	st.b	$r13,$r12,0
1c0070f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0070f4:	02a6718c 	addi.w	$r12,$r12,-1636(0x99c)
1c0070f8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0070fc:	2900018d 	st.b	$r13,$r12,0
1c007100:	50089400 	b	2196(0x894) # 1c007994 <main+0xea8>
1c007104:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007108:	0289958c 	addi.w	$r12,$r12,613(0x265)
1c00710c:	2a00018d 	ld.bu	$r13,$r12,0
1c007110:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007114:	5c0881ac 	bne	$r13,$r12,2176(0x880) # 1c007994 <main+0xea8>
1c007118:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00711c:	02a5d58c 	addi.w	$r12,$r12,-1675(0x975)
1c007120:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007124:	2900018d 	st.b	$r13,$r12,0
1c007128:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00712c:	02a5918c 	addi.w	$r12,$r12,-1692(0x964)
1c007130:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007134:	2900018d 	st.b	$r13,$r12,0
1c007138:	50085c00 	b	2140(0x85c) # 1c007994 <main+0xea8>
1c00713c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007140:	02a5418c 	addi.w	$r12,$r12,-1712(0x950)
1c007144:	2a00018d 	ld.bu	$r13,$r12,0
1c007148:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00714c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007164 <main+0x678>
1c007150:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c007154:	5408b000 	bl	2224(0x8b0) # 1c007a04 <interface_display>
1c007158:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00715c:	02a4d18c 	addi.w	$r12,$r12,-1740(0x934)
1c007160:	29000180 	st.b	$r0,$r12,0
1c007164:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007168:	0288158c 	addi.w	$r12,$r12,517(0x205)
1c00716c:	2a00018d 	ld.bu	$r13,$r12,0
1c007170:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007174:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00719c <main+0x6b0>
1c007178:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00717c:	02a4558c 	addi.w	$r12,$r12,-1771(0x915)
1c007180:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007184:	2900018d 	st.b	$r13,$r12,0
1c007188:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00718c:	02a4118c 	addi.w	$r12,$r12,-1788(0x904)
1c007190:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007194:	2900018d 	st.b	$r13,$r12,0
1c007198:	50080400 	b	2052(0x804) # 1c00799c <main+0xeb0>
1c00719c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0071a0:	0287358c 	addi.w	$r12,$r12,461(0x1cd)
1c0071a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0071a8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0071ac:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0071d4 <main+0x6e8>
1c0071b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0071b4:	02a3758c 	addi.w	$r12,$r12,-1827(0x8dd)
1c0071b8:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c0071bc:	2900018d 	st.b	$r13,$r12,0
1c0071c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0071c4:	02a3318c 	addi.w	$r12,$r12,-1844(0x8cc)
1c0071c8:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c0071cc:	2900018d 	st.b	$r13,$r12,0
1c0071d0:	5007cc00 	b	1996(0x7cc) # 1c00799c <main+0xeb0>
1c0071d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0071d8:	0286558c 	addi.w	$r12,$r12,405(0x195)
1c0071dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0071e0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0071e4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00720c <main+0x720>
1c0071e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0071ec:	02a2958c 	addi.w	$r12,$r12,-1883(0x8a5)
1c0071f0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0071f4:	2900018d 	st.b	$r13,$r12,0
1c0071f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0071fc:	02a2518c 	addi.w	$r12,$r12,-1900(0x894)
1c007200:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007204:	2900018d 	st.b	$r13,$r12,0
1c007208:	50079400 	b	1940(0x794) # 1c00799c <main+0xeb0>
1c00720c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007210:	0285758c 	addi.w	$r12,$r12,349(0x15d)
1c007214:	2a00018d 	ld.bu	$r13,$r12,0
1c007218:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00721c:	5c0781ac 	bne	$r13,$r12,1920(0x780) # 1c00799c <main+0xeb0>
1c007220:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007224:	02a1b58c 	addi.w	$r12,$r12,-1939(0x86d)
1c007228:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00722c:	2900018d 	st.b	$r13,$r12,0
1c007230:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007234:	02a1718c 	addi.w	$r12,$r12,-1956(0x85c)
1c007238:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00723c:	2900018d 	st.b	$r13,$r12,0
1c007240:	50075c00 	b	1884(0x75c) # 1c00799c <main+0xeb0>
1c007244:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007248:	02a1218c 	addi.w	$r12,$r12,-1976(0x848)
1c00724c:	2a00018d 	ld.bu	$r13,$r12,0
1c007250:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c007254:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00726c <main+0x780>
1c007258:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c00725c:	5407a800 	bl	1960(0x7a8) # 1c007a04 <interface_display>
1c007260:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007264:	02a0b18c 	addi.w	$r12,$r12,-2004(0x82c)
1c007268:	29000180 	st.b	$r0,$r12,0
1c00726c:	541c1000 	bl	7184(0x1c10) # 1c008e7c <Key>
1c007270:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007274:	0283e58c 	addi.w	$r12,$r12,249(0xf9)
1c007278:	2a00018d 	ld.bu	$r13,$r12,0
1c00727c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007280:	5c0725ac 	bne	$r13,$r12,1828(0x724) # 1c0079a4 <main+0xeb8>
1c007284:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007288:	02a0258c 	addi.w	$r12,$r12,-2039(0x809)
1c00728c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007290:	2900018d 	st.b	$r13,$r12,0
1c007294:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007298:	029fe18c 	addi.w	$r12,$r12,2040(0x7f8)
1c00729c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0072a0:	2900018d 	st.b	$r13,$r12,0
1c0072a4:	50070000 	b	1792(0x700) # 1c0079a4 <main+0xeb8>
1c0072a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072ac:	029f918c 	addi.w	$r12,$r12,2020(0x7e4)
1c0072b0:	2a00018d 	ld.bu	$r13,$r12,0
1c0072b4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0072b8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0072d0 <main+0x7e4>
1c0072bc:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0072c0:	54074400 	bl	1860(0x744) # 1c007a04 <interface_display>
1c0072c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072c8:	029f218c 	addi.w	$r12,$r12,1992(0x7c8)
1c0072cc:	29000180 	st.b	$r0,$r12,0
1c0072d0:	540fe400 	bl	4068(0xfe4) # 1c0082b4 <Write_ID>
1c0072d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0072d8:	0282558c 	addi.w	$r12,$r12,149(0x95)
1c0072dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0072e0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0072e4:	5c06c9ac 	bne	$r13,$r12,1736(0x6c8) # 1c0079ac <main+0xec0>
1c0072e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072ec:	029e958c 	addi.w	$r12,$r12,1957(0x7a5)
1c0072f0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0072f4:	2900018d 	st.b	$r13,$r12,0
1c0072f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072fc:	029e518c 	addi.w	$r12,$r12,1940(0x794)
1c007300:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007304:	2900018d 	st.b	$r13,$r12,0
1c007308:	5006a400 	b	1700(0x6a4) # 1c0079ac <main+0xec0>
1c00730c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007310:	029e018c 	addi.w	$r12,$r12,1920(0x780)
1c007314:	2a00018d 	ld.bu	$r13,$r12,0
1c007318:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00731c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007334 <main+0x848>
1c007320:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007324:	5406e000 	bl	1760(0x6e0) # 1c007a04 <interface_display>
1c007328:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00732c:	029d918c 	addi.w	$r12,$r12,1892(0x764)
1c007330:	29000180 	st.b	$r0,$r12,0
1c007334:	541fe800 	bl	8168(0x1fe8) # 1c00931c <Add_Key>
1c007338:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00733c:	0280c58c 	addi.w	$r12,$r12,49(0x31)
1c007340:	2a00018d 	ld.bu	$r13,$r12,0
1c007344:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007348:	5c066dac 	bne	$r13,$r12,1644(0x66c) # 1c0079b4 <main+0xec8>
1c00734c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007350:	029d058c 	addi.w	$r12,$r12,1857(0x741)
1c007354:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007358:	2900018d 	st.b	$r13,$r12,0
1c00735c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007360:	029cc18c 	addi.w	$r12,$r12,1840(0x730)
1c007364:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007368:	2900018d 	st.b	$r13,$r12,0
1c00736c:	50064800 	b	1608(0x648) # 1c0079b4 <main+0xec8>
1c007370:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007374:	029c718c 	addi.w	$r12,$r12,1820(0x71c)
1c007378:	2a00018d 	ld.bu	$r13,$r12,0
1c00737c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007380:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007398 <main+0x8ac>
1c007384:	02804404 	addi.w	$r4,$r0,17(0x11)
1c007388:	54067c00 	bl	1660(0x67c) # 1c007a04 <interface_display>
1c00738c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007390:	029c018c 	addi.w	$r12,$r12,1792(0x700)
1c007394:	29000180 	st.b	$r0,$r12,0
1c007398:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00739c:	02bf458c 	addi.w	$r12,$r12,-47(0xfd1)
1c0073a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0073a4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0073a8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0073d0 <main+0x8e4>
1c0073ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073b0:	029b858c 	addi.w	$r12,$r12,1761(0x6e1)
1c0073b4:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0073b8:	2900018d 	st.b	$r13,$r12,0
1c0073bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073c0:	029b418c 	addi.w	$r12,$r12,1744(0x6d0)
1c0073c4:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0073c8:	2900018d 	st.b	$r13,$r12,0
1c0073cc:	5005f000 	b	1520(0x5f0) # 1c0079bc <main+0xed0>
1c0073d0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0073d4:	02be658c 	addi.w	$r12,$r12,-103(0xf99)
1c0073d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0073dc:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0073e0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007408 <main+0x91c>
1c0073e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073e8:	029aa58c 	addi.w	$r12,$r12,1705(0x6a9)
1c0073ec:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0073f0:	2900018d 	st.b	$r13,$r12,0
1c0073f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073f8:	029a618c 	addi.w	$r12,$r12,1688(0x698)
1c0073fc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007400:	2900018d 	st.b	$r13,$r12,0
1c007404:	5005b800 	b	1464(0x5b8) # 1c0079bc <main+0xed0>
1c007408:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00740c:	02bd858c 	addi.w	$r12,$r12,-159(0xf61)
1c007410:	2a00018d 	ld.bu	$r13,$r12,0
1c007414:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007418:	5c05a5ac 	bne	$r13,$r12,1444(0x5a4) # 1c0079bc <main+0xed0>
1c00741c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007420:	0299c58c 	addi.w	$r12,$r12,1649(0x671)
1c007424:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007428:	2900018d 	st.b	$r13,$r12,0
1c00742c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007430:	0299818c 	addi.w	$r12,$r12,1632(0x660)
1c007434:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007438:	2900018d 	st.b	$r13,$r12,0
1c00743c:	50058000 	b	1408(0x580) # 1c0079bc <main+0xed0>
1c007440:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007444:	0299318c 	addi.w	$r12,$r12,1612(0x64c)
1c007448:	2a00018d 	ld.bu	$r13,$r12,0
1c00744c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007450:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c00746c <main+0x980>
1c007454:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007458:	5405ac00 	bl	1452(0x5ac) # 1c007a04 <interface_display>
1c00745c:	54220400 	bl	8708(0x2204) # 1c009660 <Delete_key>
1c007460:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007464:	0298b18c 	addi.w	$r12,$r12,1580(0x62c)
1c007468:	29000180 	st.b	$r0,$r12,0
1c00746c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007470:	02bbf58c 	addi.w	$r12,$r12,-259(0xefd)
1c007474:	2a00018d 	ld.bu	$r13,$r12,0
1c007478:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00747c:	5c0549ac 	bne	$r13,$r12,1352(0x548) # 1c0079c4 <main+0xed8>
1c007480:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007484:	0298358c 	addi.w	$r12,$r12,1549(0x60d)
1c007488:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00748c:	2900018d 	st.b	$r13,$r12,0
1c007490:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007494:	0297f18c 	addi.w	$r12,$r12,1532(0x5fc)
1c007498:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00749c:	2900018d 	st.b	$r13,$r12,0
1c0074a0:	50052400 	b	1316(0x524) # 1c0079c4 <main+0xed8>
1c0074a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074a8:	0297a18c 	addi.w	$r12,$r12,1512(0x5e8)
1c0074ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0074b0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0074b4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0074cc <main+0x9e0>
1c0074b8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0074bc:	54054800 	bl	1352(0x548) # 1c007a04 <interface_display>
1c0074c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074c4:	0297318c 	addi.w	$r12,$r12,1484(0x5cc)
1c0074c8:	29000180 	st.b	$r0,$r12,0
1c0074cc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074d0:	02ba758c 	addi.w	$r12,$r12,-355(0xe9d)
1c0074d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0074d8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0074dc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007504 <main+0xa18>
1c0074e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074e4:	0296b58c 	addi.w	$r12,$r12,1453(0x5ad)
1c0074e8:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c0074ec:	2900018d 	st.b	$r13,$r12,0
1c0074f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074f4:	0296718c 	addi.w	$r12,$r12,1436(0x59c)
1c0074f8:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c0074fc:	2900018d 	st.b	$r13,$r12,0
1c007500:	5004cc00 	b	1228(0x4cc) # 1c0079cc <main+0xee0>
1c007504:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007508:	02b9958c 	addi.w	$r12,$r12,-411(0xe65)
1c00750c:	2a00018d 	ld.bu	$r13,$r12,0
1c007510:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007514:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00753c <main+0xa50>
1c007518:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00751c:	0295d58c 	addi.w	$r12,$r12,1397(0x575)
1c007520:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007524:	2900018d 	st.b	$r13,$r12,0
1c007528:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00752c:	0295918c 	addi.w	$r12,$r12,1380(0x564)
1c007530:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007534:	2900018d 	st.b	$r13,$r12,0
1c007538:	50049400 	b	1172(0x494) # 1c0079cc <main+0xee0>
1c00753c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007540:	02b8b58c 	addi.w	$r12,$r12,-467(0xe2d)
1c007544:	2a00018d 	ld.bu	$r13,$r12,0
1c007548:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00754c:	5c0481ac 	bne	$r13,$r12,1152(0x480) # 1c0079cc <main+0xee0>
1c007550:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007554:	0294f58c 	addi.w	$r12,$r12,1341(0x53d)
1c007558:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00755c:	2900018d 	st.b	$r13,$r12,0
1c007560:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007564:	0294b18c 	addi.w	$r12,$r12,1324(0x52c)
1c007568:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00756c:	2900018d 	st.b	$r13,$r12,0
1c007570:	50045c00 	b	1116(0x45c) # 1c0079cc <main+0xee0>
1c007574:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007578:	0294618c 	addi.w	$r12,$r12,1304(0x518)
1c00757c:	2a00018d 	ld.bu	$r13,$r12,0
1c007580:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007584:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0075a0 <main+0xab4>
1c007588:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00758c:	54047800 	bl	1144(0x478) # 1c007a04 <interface_display>
1c007590:	540f4800 	bl	3912(0xf48) # 1c0084d8 <Delate_ID>
1c007594:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007598:	0293e18c 	addi.w	$r12,$r12,1272(0x4f8)
1c00759c:	29000180 	st.b	$r0,$r12,0
1c0075a0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0075a4:	02b7258c 	addi.w	$r12,$r12,-567(0xdc9)
1c0075a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0075ac:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0075b0:	5c0425ac 	bne	$r13,$r12,1060(0x424) # 1c0079d4 <main+0xee8>
1c0075b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075b8:	0293658c 	addi.w	$r12,$r12,1241(0x4d9)
1c0075bc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0075c0:	2900018d 	st.b	$r13,$r12,0
1c0075c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075c8:	0293218c 	addi.w	$r12,$r12,1224(0x4c8)
1c0075cc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0075d0:	2900018d 	st.b	$r13,$r12,0
1c0075d4:	50040000 	b	1024(0x400) # 1c0079d4 <main+0xee8>
1c0075d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075dc:	0292d18c 	addi.w	$r12,$r12,1204(0x4b4)
1c0075e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0075e4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0075e8:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c007614 <main+0xb28>
1c0075ec:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0075f0:	54041400 	bl	1044(0x414) # 1c007a04 <interface_display>
1c0075f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075f8:	0292658c 	addi.w	$r12,$r12,1177(0x499)
1c0075fc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007600:	2900018d 	st.b	$r13,$r12,0
1c007604:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007608:	0292218c 	addi.w	$r12,$r12,1160(0x488)
1c00760c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007610:	2900018d 	st.b	$r13,$r12,0
1c007614:	57bba7ff 	bl	-17500(0xfffbba4) # 1c0031b8 <press_FR>
1c007618:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00761c:	02b5458c 	addi.w	$r12,$r12,-687(0xd51)
1c007620:	2a00018d 	ld.bu	$r13,$r12,0
1c007624:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007628:	5c03b5ac 	bne	$r13,$r12,948(0x3b4) # 1c0079dc <main+0xef0>
1c00762c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007630:	0291858c 	addi.w	$r12,$r12,1121(0x461)
1c007634:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007638:	2900018d 	st.b	$r13,$r12,0
1c00763c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007640:	0291418c 	addi.w	$r12,$r12,1104(0x450)
1c007644:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007648:	2900018d 	st.b	$r13,$r12,0
1c00764c:	50039000 	b	912(0x390) # 1c0079dc <main+0xef0>
1c007650:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007654:	0290f18c 	addi.w	$r12,$r12,1084(0x43c)
1c007658:	2a00018d 	ld.bu	$r13,$r12,0
1c00765c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007660:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007678 <main+0xb8c>
1c007664:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c007668:	54039c00 	bl	924(0x39c) # 1c007a04 <interface_display>
1c00766c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007670:	0290818c 	addi.w	$r12,$r12,1056(0x420)
1c007674:	29000180 	st.b	$r0,$r12,0
1c007678:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00767c:	02b3c58c 	addi.w	$r12,$r12,-783(0xcf1)
1c007680:	2a00018d 	ld.bu	$r13,$r12,0
1c007684:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007688:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0076b0 <main+0xbc4>
1c00768c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007690:	0290058c 	addi.w	$r12,$r12,1025(0x401)
1c007694:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c007698:	2900018d 	st.b	$r13,$r12,0
1c00769c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076a0:	028fc18c 	addi.w	$r12,$r12,1008(0x3f0)
1c0076a4:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0076a8:	2900018d 	st.b	$r13,$r12,0
1c0076ac:	50033800 	b	824(0x338) # 1c0079e4 <main+0xef8>
1c0076b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076b4:	02b2e58c 	addi.w	$r12,$r12,-839(0xcb9)
1c0076b8:	2a00018d 	ld.bu	$r13,$r12,0
1c0076bc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0076c0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0076e8 <main+0xbfc>
1c0076c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076c8:	028f258c 	addi.w	$r12,$r12,969(0x3c9)
1c0076cc:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0076d0:	2900018d 	st.b	$r13,$r12,0
1c0076d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076d8:	028ee18c 	addi.w	$r12,$r12,952(0x3b8)
1c0076dc:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0076e0:	2900018d 	st.b	$r13,$r12,0
1c0076e4:	50030000 	b	768(0x300) # 1c0079e4 <main+0xef8>
1c0076e8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076ec:	02b2058c 	addi.w	$r12,$r12,-895(0xc81)
1c0076f0:	2a00018d 	ld.bu	$r13,$r12,0
1c0076f4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0076f8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007720 <main+0xc34>
1c0076fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007700:	028e458c 	addi.w	$r12,$r12,913(0x391)
1c007704:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007708:	2900018d 	st.b	$r13,$r12,0
1c00770c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007710:	028e018c 	addi.w	$r12,$r12,896(0x380)
1c007714:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007718:	2900018d 	st.b	$r13,$r12,0
1c00771c:	5002c800 	b	712(0x2c8) # 1c0079e4 <main+0xef8>
1c007720:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007724:	02b1258c 	addi.w	$r12,$r12,-951(0xc49)
1c007728:	2a00018d 	ld.bu	$r13,$r12,0
1c00772c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007730:	5c02b5ac 	bne	$r13,$r12,692(0x2b4) # 1c0079e4 <main+0xef8>
1c007734:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007738:	028d658c 	addi.w	$r12,$r12,857(0x359)
1c00773c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007740:	2900018d 	st.b	$r13,$r12,0
1c007744:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007748:	028d218c 	addi.w	$r12,$r12,840(0x348)
1c00774c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007750:	2900018d 	st.b	$r13,$r12,0
1c007754:	50029000 	b	656(0x290) # 1c0079e4 <main+0xef8>
1c007758:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00775c:	028cd18c 	addi.w	$r12,$r12,820(0x334)
1c007760:	2a00018d 	ld.bu	$r13,$r12,0
1c007764:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c007768:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c007794 <main+0xca8>
1c00776c:	02805404 	addi.w	$r4,$r0,21(0x15)
1c007770:	54029400 	bl	660(0x294) # 1c007a04 <interface_display>
1c007774:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007778:	028c658c 	addi.w	$r12,$r12,793(0x319)
1c00777c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007780:	2900018d 	st.b	$r13,$r12,0
1c007784:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007788:	028c218c 	addi.w	$r12,$r12,776(0x308)
1c00778c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007790:	2900018d 	st.b	$r13,$r12,0
1c007794:	57b39bff 	bl	-19560(0xfffb398) # 1c002b2c <Add_FR>
1c007798:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00779c:	02af458c 	addi.w	$r12,$r12,-1071(0xbd1)
1c0077a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0077a4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0077a8:	5c0245ac 	bne	$r13,$r12,580(0x244) # 1c0079ec <main+0xf00>
1c0077ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077b0:	028b858c 	addi.w	$r12,$r12,737(0x2e1)
1c0077b4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0077b8:	2900018d 	st.b	$r13,$r12,0
1c0077bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077c0:	028b418c 	addi.w	$r12,$r12,720(0x2d0)
1c0077c4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0077c8:	2900018d 	st.b	$r13,$r12,0
1c0077cc:	50022000 	b	544(0x220) # 1c0079ec <main+0xf00>
1c0077d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077d4:	028af18c 	addi.w	$r12,$r12,700(0x2bc)
1c0077d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0077dc:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0077e0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0077f8 <main+0xd0c>
1c0077e4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0077e8:	54021c00 	bl	540(0x21c) # 1c007a04 <interface_display>
1c0077ec:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077f0:	028a818c 	addi.w	$r12,$r12,672(0x2a0)
1c0077f4:	29000180 	st.b	$r0,$r12,0
1c0077f8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077fc:	02adc58c 	addi.w	$r12,$r12,-1167(0xb71)
1c007800:	2a00018d 	ld.bu	$r13,$r12,0
1c007804:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007808:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007830 <main+0xd44>
1c00780c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007810:	028a058c 	addi.w	$r12,$r12,641(0x281)
1c007814:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c007818:	2900018d 	st.b	$r13,$r12,0
1c00781c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007820:	0289c18c 	addi.w	$r12,$r12,624(0x270)
1c007824:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c007828:	2900018d 	st.b	$r13,$r12,0
1c00782c:	5001c800 	b	456(0x1c8) # 1c0079f4 <main+0xf08>
1c007830:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007834:	02ace58c 	addi.w	$r12,$r12,-1223(0xb39)
1c007838:	2a00018d 	ld.bu	$r13,$r12,0
1c00783c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007840:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007868 <main+0xd7c>
1c007844:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007848:	0289258c 	addi.w	$r12,$r12,585(0x249)
1c00784c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007850:	2900018d 	st.b	$r13,$r12,0
1c007854:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007858:	0288e18c 	addi.w	$r12,$r12,568(0x238)
1c00785c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007860:	2900018d 	st.b	$r13,$r12,0
1c007864:	50019000 	b	400(0x190) # 1c0079f4 <main+0xf08>
1c007868:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00786c:	02ac058c 	addi.w	$r12,$r12,-1279(0xb01)
1c007870:	2a00018d 	ld.bu	$r13,$r12,0
1c007874:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007878:	5c017dac 	bne	$r13,$r12,380(0x17c) # 1c0079f4 <main+0xf08>
1c00787c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007880:	0288458c 	addi.w	$r12,$r12,529(0x211)
1c007884:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007888:	2900018d 	st.b	$r13,$r12,0
1c00788c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007890:	0288018c 	addi.w	$r12,$r12,512(0x200)
1c007894:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007898:	2900018d 	st.b	$r13,$r12,0
1c00789c:	50015800 	b	344(0x158) # 1c0079f4 <main+0xf08>
1c0078a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078a4:	0287b18c 	addi.w	$r12,$r12,492(0x1ec)
1c0078a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0078ac:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c0078b0:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c0078e0 <main+0xdf4>
1c0078b4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0078b8:	54014c00 	bl	332(0x14c) # 1c007a04 <interface_display>
1c0078bc:	57bbe7ff 	bl	-17436(0xfffbbe4) # 1c0034a0 <Del_FR_Lib>
1c0078c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078c4:	0287358c 	addi.w	$r12,$r12,461(0x1cd)
1c0078c8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0078cc:	2900018d 	st.b	$r13,$r12,0
1c0078d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078d4:	0286f18c 	addi.w	$r12,$r12,444(0x1bc)
1c0078d8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0078dc:	2900018d 	st.b	$r13,$r12,0
1c0078e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078e4:	02aa258c 	addi.w	$r12,$r12,-1399(0xa89)
1c0078e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0078ec:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0078f0:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c0079fc <main+0xf10>
1c0078f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078f8:	0286658c 	addi.w	$r12,$r12,409(0x199)
1c0078fc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007900:	2900018d 	st.b	$r13,$r12,0
1c007904:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007908:	0286218c 	addi.w	$r12,$r12,392(0x188)
1c00790c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007910:	2900018d 	st.b	$r13,$r12,0
1c007914:	5000e800 	b	232(0xe8) # 1c0079fc <main+0xf10>
1c007918:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00791c:	02a9498c 	addi.w	$r12,$r12,-1454(0xa52)
1c007920:	2a00018c 	ld.bu	$r12,$r12,0
1c007924:	44001980 	bnez	$r12,24(0x18) # 1c00793c <main+0xe50>
1c007928:	57dbf7ff 	bl	-9228(0xfffdbf4) # 1c00551c <OLED_CLS>
1c00792c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007930:	02a8f98c 	addi.w	$r12,$r12,-1474(0xa3e)
1c007934:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007938:	2900018d 	st.b	$r13,$r12,0
1c00793c:	57d5fbff 	bl	-10760(0xfffd5f8) # 1c004f34 <LEDgree_OFF>
1c007940:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007944:	0285358c 	addi.w	$r12,$r12,333(0x14d)
1c007948:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00794c:	2900018d 	st.b	$r13,$r12,0
1c007950:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007954:	0284f18c 	addi.w	$r12,$r12,316(0x13c)
1c007958:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00795c:	2900018d 	st.b	$r13,$r12,0
1c007960:	53f2ffff 	b	-3332(0xffff2fc) # 1c006c5c <main+0x170>
1c007964:	03400000 	andi	$r0,$r0,0x0
1c007968:	53f2f7ff 	b	-3340(0xffff2f4) # 1c006c5c <main+0x170>
1c00796c:	03400000 	andi	$r0,$r0,0x0
1c007970:	53f2efff 	b	-3348(0xffff2ec) # 1c006c5c <main+0x170>
1c007974:	03400000 	andi	$r0,$r0,0x0
1c007978:	53f2e7ff 	b	-3356(0xffff2e4) # 1c006c5c <main+0x170>
1c00797c:	03400000 	andi	$r0,$r0,0x0
1c007980:	53f2dfff 	b	-3364(0xffff2dc) # 1c006c5c <main+0x170>
1c007984:	03400000 	andi	$r0,$r0,0x0
1c007988:	53f2d7ff 	b	-3372(0xffff2d4) # 1c006c5c <main+0x170>
1c00798c:	03400000 	andi	$r0,$r0,0x0
1c007990:	53f2cfff 	b	-3380(0xffff2cc) # 1c006c5c <main+0x170>
1c007994:	03400000 	andi	$r0,$r0,0x0
1c007998:	53f2c7ff 	b	-3388(0xffff2c4) # 1c006c5c <main+0x170>
1c00799c:	03400000 	andi	$r0,$r0,0x0
1c0079a0:	53f2bfff 	b	-3396(0xffff2bc) # 1c006c5c <main+0x170>
1c0079a4:	03400000 	andi	$r0,$r0,0x0
1c0079a8:	53f2b7ff 	b	-3404(0xffff2b4) # 1c006c5c <main+0x170>
1c0079ac:	03400000 	andi	$r0,$r0,0x0
1c0079b0:	53f2afff 	b	-3412(0xffff2ac) # 1c006c5c <main+0x170>
1c0079b4:	03400000 	andi	$r0,$r0,0x0
1c0079b8:	53f2a7ff 	b	-3420(0xffff2a4) # 1c006c5c <main+0x170>
1c0079bc:	03400000 	andi	$r0,$r0,0x0
1c0079c0:	53f29fff 	b	-3428(0xffff29c) # 1c006c5c <main+0x170>
1c0079c4:	03400000 	andi	$r0,$r0,0x0
1c0079c8:	53f297ff 	b	-3436(0xffff294) # 1c006c5c <main+0x170>
1c0079cc:	03400000 	andi	$r0,$r0,0x0
1c0079d0:	53f28fff 	b	-3444(0xffff28c) # 1c006c5c <main+0x170>
1c0079d4:	03400000 	andi	$r0,$r0,0x0
1c0079d8:	53f287ff 	b	-3452(0xffff284) # 1c006c5c <main+0x170>
1c0079dc:	03400000 	andi	$r0,$r0,0x0
1c0079e0:	53f27fff 	b	-3460(0xffff27c) # 1c006c5c <main+0x170>
1c0079e4:	03400000 	andi	$r0,$r0,0x0
1c0079e8:	53f277ff 	b	-3468(0xffff274) # 1c006c5c <main+0x170>
1c0079ec:	03400000 	andi	$r0,$r0,0x0
1c0079f0:	53f26fff 	b	-3476(0xffff26c) # 1c006c5c <main+0x170>
1c0079f4:	03400000 	andi	$r0,$r0,0x0
1c0079f8:	53f267ff 	b	-3484(0xffff264) # 1c006c5c <main+0x170>
1c0079fc:	03400000 	andi	$r0,$r0,0x0
1c007a00:	53f25fff 	b	-3492(0xffff25c) # 1c006c5c <main+0x170>

1c007a04 <interface_display>:
interface_display():
1c007a04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007a08:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007a0c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007a10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007a14:	0015008c 	move	$r12,$r4
1c007a18:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c007a1c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c007a20:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c007a24:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c0082a0 <interface_display+0x89c>
1c007a28:	0040898d 	slli.w	$r13,$r12,0x2
1c007a2c:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c007a30:	029ea18c 	addi.w	$r12,$r12,1960(0x7a8)
1c007a34:	001031ac 	add.w	$r12,$r13,$r12
1c007a38:	2880018c 	ld.w	$r12,$r12,0
1c007a3c:	4c000180 	jirl	$r0,$r12,0
1c007a40:	57dadfff 	bl	-9508(0xfffdadc) # 1c00551c <OLED_CLS>
1c007a44:	1c000068 	pcaddu12i	$r8,3(0x3)
1c007a48:	02972108 	addi.w	$r8,$r8,1480(0x5c8)
1c007a4c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c007a50:	02814006 	addi.w	$r6,$r0,80(0x50)
1c007a54:	00150005 	move	$r5,$r0
1c007a58:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c007a5c:	57de9fff 	bl	-8548(0xfffde9c) # 1c0058f8 <OLED_DrawBMP>
1c007a60:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c007a64:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007a68:	00150004 	move	$r4,$r0
1c007a6c:	57dd0fff 	bl	-8948(0xfffdd0c) # 1c005778 <OLED_ShowCN>
1c007a70:	02802006 	addi.w	$r6,$r0,8(0x8)
1c007a74:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007a78:	02804004 	addi.w	$r4,$r0,16(0x10)
1c007a7c:	57dcffff 	bl	-8964(0xfffdcfc) # 1c005778 <OLED_ShowCN>
1c007a80:	02803406 	addi.w	$r6,$r0,13(0xd)
1c007a84:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007a88:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c007a8c:	57dcefff 	bl	-8980(0xfffdcec) # 1c005778 <OLED_ShowCN>
1c007a90:	02803806 	addi.w	$r6,$r0,14(0xe)
1c007a94:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007a98:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c007a9c:	57dcdfff 	bl	-8996(0xfffdcdc) # 1c005778 <OLED_ShowCN>
1c007aa0:	50080000 	b	2048(0x800) # 1c0082a0 <interface_display+0x89c>
1c007aa4:	57da7bff 	bl	-9608(0xfffda78) # 1c00551c <OLED_CLS>
1c007aa8:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c007aac:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c007ab0:	00150005 	move	$r5,$r0
1c007ab4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007ab8:	57ddb7ff 	bl	-8780(0xfffddb4) # 1c00586c <OLED_ShowCN_STR>
1c007abc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007ac0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007ac4:	029c00c6 	addi.w	$r6,$r6,1792(0x700)
1c007ac8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007acc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007ad0:	57da7bff 	bl	-9608(0xfffda78) # 1c005548 <OLED_ShowStr>
1c007ad4:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c007ad8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007adc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007ae0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007ae4:	57dd8bff 	bl	-8824(0xfffdd88) # 1c00586c <OLED_ShowCN_STR>
1c007ae8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007aec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007af0:	029b60c6 	addi.w	$r6,$r6,1752(0x6d8)
1c007af4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007af8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007afc:	57da4fff 	bl	-9652(0xfffda4c) # 1c005548 <OLED_ShowStr>
1c007b00:	02801007 	addi.w	$r7,$r0,4(0x4)
1c007b04:	02802406 	addi.w	$r6,$r0,9(0x9)
1c007b08:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007b0c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007b10:	57dd5fff 	bl	-8868(0xfffdd5c) # 1c00586c <OLED_ShowCN_STR>
1c007b14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b18:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007b1c:	029ac0c6 	addi.w	$r6,$r6,1712(0x6b0)
1c007b20:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007b24:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007b28:	57da23ff 	bl	-9696(0xfffda20) # 1c005548 <OLED_ShowStr>
1c007b2c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b30:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007b34:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007b38:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007b3c:	57dd33ff 	bl	-8912(0xfffdd30) # 1c00586c <OLED_ShowCN_STR>
1c007b40:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b44:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c007b48:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007b4c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007b50:	57dd1fff 	bl	-8932(0xfffdd1c) # 1c00586c <OLED_ShowCN_STR>
1c007b54:	50074c00 	b	1868(0x74c) # 1c0082a0 <interface_display+0x89c>
1c007b58:	57d9c7ff 	bl	-9788(0xfffd9c4) # 1c00551c <OLED_CLS>
1c007b5c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c007b60:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007b64:	00150005 	move	$r5,$r0
1c007b68:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007b6c:	57dd03ff 	bl	-8960(0xfffdd00) # 1c00586c <OLED_ShowCN_STR>
1c007b70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b74:	02803406 	addi.w	$r6,$r0,13(0xd)
1c007b78:	00150005 	move	$r5,$r0
1c007b7c:	02811804 	addi.w	$r4,$r0,70(0x46)
1c007b80:	57dcefff 	bl	-8980(0xfffdcec) # 1c00586c <OLED_ShowCN_STR>
1c007b84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b88:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007b8c:	0298e0c6 	addi.w	$r6,$r6,1592(0x638)
1c007b90:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007b94:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007b98:	57d9b3ff 	bl	-9808(0xfffd9b0) # 1c005548 <OLED_ShowStr>
1c007b9c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007ba0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007ba4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007ba8:	57dbd3ff 	bl	-9264(0xfffdbd0) # 1c005778 <OLED_ShowCN>
1c007bac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007bb0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007bb4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007bb8:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c007bbc:	57dcb3ff 	bl	-9040(0xfffdcb0) # 1c00586c <OLED_ShowCN_STR>
1c007bc0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007bc4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007bc8:	029800c6 	addi.w	$r6,$r6,1536(0x600)
1c007bcc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007bd0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007bd4:	57d977ff 	bl	-9868(0xfffd974) # 1c005548 <OLED_ShowStr>
1c007bd8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007bdc:	02802406 	addi.w	$r6,$r0,9(0x9)
1c007be0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007be4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007be8:	57dc87ff 	bl	-9084(0xfffdc84) # 1c00586c <OLED_ShowCN_STR>
1c007bec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007bf0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007bf4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007bf8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007bfc:	57dc73ff 	bl	-9104(0xfffdc70) # 1c00586c <OLED_ShowCN_STR>
1c007c00:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007c04:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007c08:	029710c6 	addi.w	$r6,$r6,1476(0x5c4)
1c007c0c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007c10:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007c14:	57d937ff 	bl	-9932(0xfffd934) # 1c005548 <OLED_ShowStr>
1c007c18:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007c1c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007c20:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007c24:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007c28:	57dc47ff 	bl	-9148(0xfffdc44) # 1c00586c <OLED_ShowCN_STR>
1c007c2c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007c30:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007c34:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007c38:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007c3c:	57dc33ff 	bl	-9168(0xfffdc30) # 1c00586c <OLED_ShowCN_STR>
1c007c40:	50066000 	b	1632(0x660) # 1c0082a0 <interface_display+0x89c>
1c007c44:	57d8dbff 	bl	-10024(0xfffd8d8) # 1c00551c <OLED_CLS>
1c007c48:	02805806 	addi.w	$r6,$r0,22(0x16)
1c007c4c:	00150005 	move	$r5,$r0
1c007c50:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007c54:	57db27ff 	bl	-9436(0xfffdb24) # 1c005778 <OLED_ShowCN>
1c007c58:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007c5c:	02808406 	addi.w	$r6,$r0,33(0x21)
1c007c60:	00150005 	move	$r5,$r0
1c007c64:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c007c68:	57dc07ff 	bl	-9212(0xfffdc04) # 1c00586c <OLED_ShowCN_STR>
1c007c6c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c007c70:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007c74:	00150005 	move	$r5,$r0
1c007c78:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c007c7c:	57dbf3ff 	bl	-9232(0xfffdbf0) # 1c00586c <OLED_ShowCN_STR>
1c007c80:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007c84:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c007c88:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007c8c:	00150004 	move	$r4,$r0
1c007c90:	57dbdfff 	bl	-9252(0xfffdbdc) # 1c00586c <OLED_ShowCN_STR>
1c007c94:	50060c00 	b	1548(0x60c) # 1c0082a0 <interface_display+0x89c>
1c007c98:	57d887ff 	bl	-10108(0xfffd884) # 1c00551c <OLED_CLS>
1c007c9c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c007ca0:	02805806 	addi.w	$r6,$r0,22(0x16)
1c007ca4:	00150005 	move	$r5,$r0
1c007ca8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c007cac:	57dbc3ff 	bl	-9280(0xfffdbc0) # 1c00586c <OLED_ShowCN_STR>
1c007cb0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007cb4:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c007cb8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007cbc:	00150004 	move	$r4,$r0
1c007cc0:	57dbafff 	bl	-9300(0xfffdbac) # 1c00586c <OLED_ShowCN_STR>
1c007cc4:	5005dc00 	b	1500(0x5dc) # 1c0082a0 <interface_display+0x89c>
1c007cc8:	57d857ff 	bl	-10156(0xfffd854) # 1c00551c <OLED_CLS>
1c007ccc:	02801007 	addi.w	$r7,$r0,4(0x4)
1c007cd0:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c007cd4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007cd8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007cdc:	57db93ff 	bl	-9328(0xfffdb90) # 1c00586c <OLED_ShowCN_STR>
1c007ce0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007ce4:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c007ce8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007cec:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c007cf0:	57db7fff 	bl	-9348(0xfffdb7c) # 1c00586c <OLED_ShowCN_STR>
1c007cf4:	5005ac00 	b	1452(0x5ac) # 1c0082a0 <interface_display+0x89c>
1c007cf8:	57d827ff 	bl	-10204(0xfffd824) # 1c00551c <OLED_CLS>
1c007cfc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c007d00:	02805806 	addi.w	$r6,$r0,22(0x16)
1c007d04:	00150005 	move	$r5,$r0
1c007d08:	00150004 	move	$r4,$r0
1c007d0c:	57db63ff 	bl	-9376(0xfffdb60) # 1c00586c <OLED_ShowCN_STR>
1c007d10:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c007d14:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007d18:	00150005 	move	$r5,$r0
1c007d1c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c007d20:	57db4fff 	bl	-9396(0xfffdb4c) # 1c00586c <OLED_ShowCN_STR>
1c007d24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007d28:	02806406 	addi.w	$r6,$r0,25(0x19)
1c007d2c:	00150005 	move	$r5,$r0
1c007d30:	02818004 	addi.w	$r4,$r0,96(0x60)
1c007d34:	57db3bff 	bl	-9416(0xfffdb38) # 1c00586c <OLED_ShowCN_STR>
1c007d38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007d3c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c007d40:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007d44:	00150004 	move	$r4,$r0
1c007d48:	57db27ff 	bl	-9436(0xfffdb24) # 1c00586c <OLED_ShowCN_STR>
1c007d4c:	50055400 	b	1364(0x554) # 1c0082a0 <interface_display+0x89c>
1c007d50:	57d7cfff 	bl	-10292(0xfffd7cc) # 1c00551c <OLED_CLS>
1c007d54:	02801007 	addi.w	$r7,$r0,4(0x4)
1c007d58:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c007d5c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007d60:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007d64:	57db0bff 	bl	-9464(0xfffdb08) # 1c00586c <OLED_ShowCN_STR>
1c007d68:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c007d6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007d70:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c007d74:	57da07ff 	bl	-9724(0xfffda04) # 1c005778 <OLED_ShowCN>
1c007d78:	02808006 	addi.w	$r6,$r0,32(0x20)
1c007d7c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007d80:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c007d84:	57d9f7ff 	bl	-9740(0xfffd9f4) # 1c005778 <OLED_ShowCN>
1c007d88:	50051800 	b	1304(0x518) # 1c0082a0 <interface_display+0x89c>
1c007d8c:	57d793ff 	bl	-10352(0xfffd790) # 1c00551c <OLED_CLS>
1c007d90:	02801007 	addi.w	$r7,$r0,4(0x4)
1c007d94:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c007d98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007d9c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c007da0:	57dacfff 	bl	-9524(0xfffdacc) # 1c00586c <OLED_ShowCN_STR>
1c007da4:	5004fc00 	b	1276(0x4fc) # 1c0082a0 <interface_display+0x89c>
1c007da8:	57d777ff 	bl	-10380(0xfffd774) # 1c00551c <OLED_CLS>
1c007dac:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007db0:	00150005 	move	$r5,$r0
1c007db4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007db8:	57d9c3ff 	bl	-9792(0xfffd9c0) # 1c005778 <OLED_ShowCN>
1c007dbc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007dc0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007dc4:	00150005 	move	$r5,$r0
1c007dc8:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c007dcc:	57daa3ff 	bl	-9568(0xfffdaa0) # 1c00586c <OLED_ShowCN_STR>
1c007dd0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007dd4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007dd8:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c007ddc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007de0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007de4:	57d767ff 	bl	-10396(0xfffd764) # 1c005548 <OLED_ShowStr>
1c007de8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007dec:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007df0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007df4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007df8:	57da77ff 	bl	-9612(0xfffda74) # 1c00586c <OLED_ShowCN_STR>
1c007dfc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007e00:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007e04:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007e08:	57d973ff 	bl	-9872(0xfffd970) # 1c005778 <OLED_ShowCN>
1c007e0c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e10:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007e14:	028ed0c6 	addi.w	$r6,$r6,948(0x3b4)
1c007e18:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007e1c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007e20:	57d72bff 	bl	-10456(0xfffd728) # 1c005548 <OLED_ShowStr>
1c007e24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e28:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c007e2c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007e30:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007e34:	57da3bff 	bl	-9672(0xfffda38) # 1c00586c <OLED_ShowCN_STR>
1c007e38:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007e3c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007e40:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007e44:	57d937ff 	bl	-9932(0xfffd934) # 1c005778 <OLED_ShowCN>
1c007e48:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c007e4c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007e50:	02816004 	addi.w	$r4,$r0,88(0x58)
1c007e54:	57d927ff 	bl	-9948(0xfffd924) # 1c005778 <OLED_ShowCN>
1c007e58:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e5c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007e60:	028db0c6 	addi.w	$r6,$r6,876(0x36c)
1c007e64:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007e68:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007e6c:	57d6dfff 	bl	-10532(0xfffd6dc) # 1c005548 <OLED_ShowStr>
1c007e70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e74:	02809806 	addi.w	$r6,$r0,38(0x26)
1c007e78:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007e7c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007e80:	57d9efff 	bl	-9748(0xfffd9ec) # 1c00586c <OLED_ShowCN_STR>
1c007e84:	50041c00 	b	1052(0x41c) # 1c0082a0 <interface_display+0x89c>
1c007e88:	57d697ff 	bl	-10604(0xfffd694) # 1c00551c <OLED_CLS>
1c007e8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e90:	02802406 	addi.w	$r6,$r0,9(0x9)
1c007e94:	00150005 	move	$r5,$r0
1c007e98:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007e9c:	57d9d3ff 	bl	-9776(0xfffd9d0) # 1c00586c <OLED_ShowCN_STR>
1c007ea0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007ea4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c007ea8:	00150005 	move	$r5,$r0
1c007eac:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007eb0:	57d9bfff 	bl	-9796(0xfffd9bc) # 1c00586c <OLED_ShowCN_STR>
1c007eb4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007eb8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007ebc:	028c20c6 	addi.w	$r6,$r6,776(0x308)
1c007ec0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007ec4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007ec8:	57d683ff 	bl	-10624(0xfffd680) # 1c005548 <OLED_ShowStr>
1c007ecc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007ed0:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007ed4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007ed8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007edc:	57d993ff 	bl	-9840(0xfffd990) # 1c00586c <OLED_ShowCN_STR>
1c007ee0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007ee4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c007ee8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007eec:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007ef0:	57d97fff 	bl	-9860(0xfffd97c) # 1c00586c <OLED_ShowCN_STR>
1c007ef4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007ef8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007efc:	028b30c6 	addi.w	$r6,$r6,716(0x2cc)
1c007f00:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007f04:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007f08:	57d643ff 	bl	-10688(0xfffd640) # 1c005548 <OLED_ShowStr>
1c007f0c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007f10:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c007f14:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007f18:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007f1c:	57d953ff 	bl	-9904(0xfffd950) # 1c00586c <OLED_ShowCN_STR>
1c007f20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007f24:	02806406 	addi.w	$r6,$r0,25(0x19)
1c007f28:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007f2c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007f30:	57d93fff 	bl	-9924(0xfffd93c) # 1c00586c <OLED_ShowCN_STR>
1c007f34:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c007f38:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007f3c:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c007f40:	57d83bff 	bl	-10184(0xfffd838) # 1c005778 <OLED_ShowCN>
1c007f44:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007f48:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007f4c:	028a00c6 	addi.w	$r6,$r6,640(0x280)
1c007f50:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007f54:	02805804 	addi.w	$r4,$r0,22(0x16)
1c007f58:	57d5f3ff 	bl	-10768(0xfffd5f0) # 1c005548 <OLED_ShowStr>
1c007f5c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007f60:	02809806 	addi.w	$r6,$r0,38(0x26)
1c007f64:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007f68:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007f6c:	57d903ff 	bl	-9984(0xfffd900) # 1c00586c <OLED_ShowCN_STR>
1c007f70:	50033000 	b	816(0x330) # 1c0082a0 <interface_display+0x89c>
1c007f74:	57d5abff 	bl	-10840(0xfffd5a8) # 1c00551c <OLED_CLS>
1c007f78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007f7c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007f80:	00150005 	move	$r5,$r0
1c007f84:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007f88:	57d8e7ff 	bl	-10012(0xfffd8e4) # 1c00586c <OLED_ShowCN_STR>
1c007f8c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c007f90:	00150005 	move	$r5,$r0
1c007f94:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007f98:	57d7e3ff 	bl	-10272(0xfffd7e0) # 1c005778 <OLED_ShowCN>
1c007f9c:	50030400 	b	772(0x304) # 1c0082a0 <interface_display+0x89c>
1c007fa0:	57d57fff 	bl	-10884(0xfffd57c) # 1c00551c <OLED_CLS>
1c007fa4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007fa8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007fac:	00150005 	move	$r5,$r0
1c007fb0:	02809004 	addi.w	$r4,$r0,36(0x24)
1c007fb4:	57d8bbff 	bl	-10056(0xfffd8b8) # 1c00586c <OLED_ShowCN_STR>
1c007fb8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007fbc:	02806406 	addi.w	$r6,$r0,25(0x19)
1c007fc0:	00150005 	move	$r5,$r0
1c007fc4:	02811004 	addi.w	$r4,$r0,68(0x44)
1c007fc8:	57d8a7ff 	bl	-10076(0xfffd8a4) # 1c00586c <OLED_ShowCN_STR>
1c007fcc:	5002d400 	b	724(0x2d4) # 1c0082a0 <interface_display+0x89c>
1c007fd0:	57d54fff 	bl	-10932(0xfffd54c) # 1c00551c <OLED_CLS>
1c007fd4:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c007fd8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007fdc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007fe0:	57d79bff 	bl	-10344(0xfffd798) # 1c005778 <OLED_ShowCN>
1c007fe4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007fe8:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c007fec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007ff0:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c007ff4:	57d87bff 	bl	-10120(0xfffd878) # 1c00586c <OLED_ShowCN_STR>
1c007ff8:	5002a800 	b	680(0x2a8) # 1c0082a0 <interface_display+0x89c>
1c007ffc:	57d523ff 	bl	-10976(0xfffd520) # 1c00551c <OLED_CLS>
1c008000:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008004:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008008:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00800c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c008010:	57d85fff 	bl	-10148(0xfffd85c) # 1c00586c <OLED_ShowCN_STR>
1c008014:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c008018:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00801c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c008020:	57d75bff 	bl	-10408(0xfffd758) # 1c005778 <OLED_ShowCN>
1c008024:	02808006 	addi.w	$r6,$r0,32(0x20)
1c008028:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00802c:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c008030:	57d74bff 	bl	-10424(0xfffd748) # 1c005778 <OLED_ShowCN>
1c008034:	50026c00 	b	620(0x26c) # 1c0082a0 <interface_display+0x89c>
1c008038:	57d4e7ff 	bl	-11036(0xfffd4e4) # 1c00551c <OLED_CLS>
1c00803c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008040:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008044:	00150005 	move	$r5,$r0
1c008048:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00804c:	57d823ff 	bl	-10208(0xfffd820) # 1c00586c <OLED_ShowCN_STR>
1c008050:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008054:	00150005 	move	$r5,$r0
1c008058:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c00805c:	57d71fff 	bl	-10468(0xfffd71c) # 1c005778 <OLED_ShowCN>
1c008060:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008064:	00150005 	move	$r5,$r0
1c008068:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c00806c:	57d70fff 	bl	-10484(0xfffd70c) # 1c005778 <OLED_ShowCN>
1c008070:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008074:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008078:	00150004 	move	$r4,$r0
1c00807c:	57d6ffff 	bl	-10500(0xfffd6fc) # 1c005778 <OLED_ShowCN>
1c008080:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008084:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008088:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c00808c:	57d6efff 	bl	-10516(0xfffd6ec) # 1c005778 <OLED_ShowCN>
1c008090:	50021000 	b	528(0x210) # 1c0082a0 <interface_display+0x89c>
1c008094:	57d48bff 	bl	-11128(0xfffd488) # 1c00551c <OLED_CLS>
1c008098:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00809c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0080a0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0080a4:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0080a8:	57d7c7ff 	bl	-10300(0xfffd7c4) # 1c00586c <OLED_ShowCN_STR>
1c0080ac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0080b0:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0080b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0080b8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0080bc:	57d7b3ff 	bl	-10320(0xfffd7b0) # 1c00586c <OLED_ShowCN_STR>
1c0080c0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0080c4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0080c8:	02816404 	addi.w	$r4,$r0,89(0x59)
1c0080cc:	57d6afff 	bl	-10580(0xfffd6ac) # 1c005778 <OLED_ShowCN>
1c0080d0:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c0080d4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0080d8:	00150004 	move	$r4,$r0
1c0080dc:	57d69fff 	bl	-10596(0xfffd69c) # 1c005778 <OLED_ShowCN>
1c0080e0:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c0080e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0080e8:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c0080ec:	57d68fff 	bl	-10612(0xfffd68c) # 1c005778 <OLED_ShowCN>
1c0080f0:	5001b000 	b	432(0x1b0) # 1c0082a0 <interface_display+0x89c>
1c0080f4:	57d42bff 	bl	-11224(0xfffd428) # 1c00551c <OLED_CLS>
1c0080f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0080fc:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008100:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008104:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008108:	57d767ff 	bl	-10396(0xfffd764) # 1c00586c <OLED_ShowCN_STR>
1c00810c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008110:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c008114:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008118:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00811c:	57d753ff 	bl	-10416(0xfffd750) # 1c00586c <OLED_ShowCN_STR>
1c008120:	50018000 	b	384(0x180) # 1c0082a0 <interface_display+0x89c>
1c008124:	57d3fbff 	bl	-11272(0xfffd3f8) # 1c00551c <OLED_CLS>
1c008128:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00812c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008130:	00150005 	move	$r5,$r0
1c008134:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008138:	57d737ff 	bl	-10444(0xfffd734) # 1c00586c <OLED_ShowCN_STR>
1c00813c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008140:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008144:	00150005 	move	$r5,$r0
1c008148:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00814c:	57d723ff 	bl	-10464(0xfffd720) # 1c00586c <OLED_ShowCN_STR>
1c008150:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008154:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008158:	0281b0c6 	addi.w	$r6,$r6,108(0x6c)
1c00815c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008160:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008164:	57d3e7ff 	bl	-11292(0xfffd3e4) # 1c005548 <OLED_ShowStr>
1c008168:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00816c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008170:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008174:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008178:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c00586c <OLED_ShowCN_STR>
1c00817c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008180:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008184:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008188:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00818c:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c00586c <OLED_ShowCN_STR>
1c008190:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008194:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008198:	0280c0c6 	addi.w	$r6,$r6,48(0x30)
1c00819c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0081a0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0081a4:	57d3a7ff 	bl	-11356(0xfffd3a4) # 1c005548 <OLED_ShowStr>
1c0081a8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0081ac:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0081b0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0081b4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0081b8:	57d6b7ff 	bl	-10572(0xfffd6b4) # 1c00586c <OLED_ShowCN_STR>
1c0081bc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0081c0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0081c4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0081c8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0081cc:	57d6a3ff 	bl	-10592(0xfffd6a0) # 1c00586c <OLED_ShowCN_STR>
1c0081d0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0081d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0081d8:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0081dc:	57d59fff 	bl	-10852(0xfffd59c) # 1c005778 <OLED_ShowCN>
1c0081e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0081e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0081e8:	02bf90c6 	addi.w	$r6,$r6,-28(0xfe4)
1c0081ec:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0081f0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0081f4:	57d357ff 	bl	-11436(0xfffd354) # 1c005548 <OLED_ShowStr>
1c0081f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0081fc:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008200:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008204:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008208:	57d667ff 	bl	-10652(0xfffd664) # 1c00586c <OLED_ShowCN_STR>
1c00820c:	50009400 	b	148(0x94) # 1c0082a0 <interface_display+0x89c>
1c008210:	57d30fff 	bl	-11508(0xfffd30c) # 1c00551c <OLED_CLS>
1c008214:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008218:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c00821c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008220:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008224:	57d64bff 	bl	-10680(0xfffd648) # 1c00586c <OLED_ShowCN_STR>
1c008228:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00822c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008230:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008234:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008238:	57d637ff 	bl	-10700(0xfffd634) # 1c00586c <OLED_ShowCN_STR>
1c00823c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008240:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008244:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008248:	57d533ff 	bl	-10960(0xfffd530) # 1c005778 <OLED_ShowCN>
1c00824c:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008250:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008254:	00150004 	move	$r4,$r0
1c008258:	57d523ff 	bl	-10976(0xfffd520) # 1c005778 <OLED_ShowCN>
1c00825c:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008260:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008264:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008268:	57d513ff 	bl	-10992(0xfffd510) # 1c005778 <OLED_ShowCN>
1c00826c:	50003400 	b	52(0x34) # 1c0082a0 <interface_display+0x89c>
1c008270:	57d2afff 	bl	-11604(0xfffd2ac) # 1c00551c <OLED_CLS>
1c008274:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008278:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c00827c:	00150005 	move	$r5,$r0
1c008280:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008284:	57d5ebff 	bl	-10776(0xfffd5e8) # 1c00586c <OLED_ShowCN_STR>
1c008288:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00828c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008290:	00150005 	move	$r5,$r0
1c008294:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008298:	57d5d7ff 	bl	-10796(0xfffd5d4) # 1c00586c <OLED_ShowCN_STR>
1c00829c:	03400000 	andi	$r0,$r0,0x0
1c0082a0:	03400000 	andi	$r0,$r0,0x0
1c0082a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0082a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0082ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0082b0:	4c000020 	jirl	$r0,$r1,0

1c0082b4 <Write_ID>:
Write_ID():
1c0082b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0082b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0082bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0082c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0082c4:	57e6b3ff 	bl	-6480(0xfffe6b0) # 1c006974 <Return_Card>
1c0082c8:	0015008c 	move	$r12,$r4
1c0082cc:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c0082d0:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c0082d4:	4001f180 	beqz	$r12,496(0x1f0) # 1c0084c4 <Write_ID+0x210>
1c0082d8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0082dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0082e0:	50004400 	b	68(0x44) # 1c008324 <Write_ID+0x70>
1c0082e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0082e8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0082ec:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0082f0:	029e31ad 	addi.w	$r13,$r13,1932(0x78c)
1c0082f4:	0040898c 	slli.w	$r12,$r12,0x2
1c0082f8:	001031ac 	add.w	$r12,$r13,$r12
1c0082fc:	2880018d 	ld.w	$r13,$r12,0
1c008300:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c008304:	029de1ce 	addi.w	$r14,$r14,1912(0x778)
1c008308:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00830c:	0040898c 	slli.w	$r12,$r12,0x2
1c008310:	001031cc 	add.w	$r12,$r14,$r12
1c008314:	2980018d 	st.w	$r13,$r12,0
1c008318:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00831c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008320:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008324:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008328:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c0082e4 <Write_ID+0x30>
1c00832c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c008330:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008334:	029d218c 	addi.w	$r12,$r12,1864(0x748)
1c008338:	2980018d 	st.w	$r13,$r12,0
1c00833c:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008340:	02804008 	addi.w	$r8,$r0,16(0x10)
1c008344:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008348:	00150186 	move	$r6,$r12
1c00834c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008350:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c008354:	57d863ff 	bl	-10144(0xfffd860) # 1c005bb4 <OLED_ShowNum>
1c008358:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00835c:	03bf918c 	ori	$r12,$r12,0xfe4
1c008360:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008364:	50008400 	b	132(0x84) # 1c0083e8 <Write_ID+0x134>
1c008368:	03400000 	andi	$r0,$r0,0x0
1c00836c:	03400000 	andi	$r0,$r0,0x0
1c008370:	03400000 	andi	$r0,$r0,0x0
1c008374:	03400000 	andi	$r0,$r0,0x0
1c008378:	03400000 	andi	$r0,$r0,0x0
1c00837c:	03400000 	andi	$r0,$r0,0x0
1c008380:	03400000 	andi	$r0,$r0,0x0
1c008384:	03400000 	andi	$r0,$r0,0x0
1c008388:	03400000 	andi	$r0,$r0,0x0
1c00838c:	03400000 	andi	$r0,$r0,0x0
1c008390:	03400000 	andi	$r0,$r0,0x0
1c008394:	03400000 	andi	$r0,$r0,0x0
1c008398:	03400000 	andi	$r0,$r0,0x0
1c00839c:	03400000 	andi	$r0,$r0,0x0
1c0083a0:	03400000 	andi	$r0,$r0,0x0
1c0083a4:	03400000 	andi	$r0,$r0,0x0
1c0083a8:	03400000 	andi	$r0,$r0,0x0
1c0083ac:	03400000 	andi	$r0,$r0,0x0
1c0083b0:	03400000 	andi	$r0,$r0,0x0
1c0083b4:	03400000 	andi	$r0,$r0,0x0
1c0083b8:	03400000 	andi	$r0,$r0,0x0
1c0083bc:	03400000 	andi	$r0,$r0,0x0
1c0083c0:	03400000 	andi	$r0,$r0,0x0
1c0083c4:	03400000 	andi	$r0,$r0,0x0
1c0083c8:	03400000 	andi	$r0,$r0,0x0
1c0083cc:	03400000 	andi	$r0,$r0,0x0
1c0083d0:	03400000 	andi	$r0,$r0,0x0
1c0083d4:	03400000 	andi	$r0,$r0,0x0
1c0083d8:	03400000 	andi	$r0,$r0,0x0
1c0083dc:	03400000 	andi	$r0,$r0,0x0
1c0083e0:	03400000 	andi	$r0,$r0,0x0
1c0083e4:	03400000 	andi	$r0,$r0,0x0
1c0083e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0083ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0083f0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0083f4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008368 <Write_ID+0xb4>
1c0083f8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0083fc:	57f60bff 	bl	-2552(0xffff608) # 1c007a04 <interface_display>
1c008400:	57cb67ff 	bl	-13468(0xfffcb64) # 1c004f64 <Buzzer>
1c008404:	1400182c 	lu12i.w	$r12,193(0xc1)
1c008408:	03b2d58c 	ori	$r12,$r12,0xcb5
1c00840c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008410:	50008400 	b	132(0x84) # 1c008494 <Write_ID+0x1e0>
1c008414:	03400000 	andi	$r0,$r0,0x0
1c008418:	03400000 	andi	$r0,$r0,0x0
1c00841c:	03400000 	andi	$r0,$r0,0x0
1c008420:	03400000 	andi	$r0,$r0,0x0
1c008424:	03400000 	andi	$r0,$r0,0x0
1c008428:	03400000 	andi	$r0,$r0,0x0
1c00842c:	03400000 	andi	$r0,$r0,0x0
1c008430:	03400000 	andi	$r0,$r0,0x0
1c008434:	03400000 	andi	$r0,$r0,0x0
1c008438:	03400000 	andi	$r0,$r0,0x0
1c00843c:	03400000 	andi	$r0,$r0,0x0
1c008440:	03400000 	andi	$r0,$r0,0x0
1c008444:	03400000 	andi	$r0,$r0,0x0
1c008448:	03400000 	andi	$r0,$r0,0x0
1c00844c:	03400000 	andi	$r0,$r0,0x0
1c008450:	03400000 	andi	$r0,$r0,0x0
1c008454:	03400000 	andi	$r0,$r0,0x0
1c008458:	03400000 	andi	$r0,$r0,0x0
1c00845c:	03400000 	andi	$r0,$r0,0x0
1c008460:	03400000 	andi	$r0,$r0,0x0
1c008464:	03400000 	andi	$r0,$r0,0x0
1c008468:	03400000 	andi	$r0,$r0,0x0
1c00846c:	03400000 	andi	$r0,$r0,0x0
1c008470:	03400000 	andi	$r0,$r0,0x0
1c008474:	03400000 	andi	$r0,$r0,0x0
1c008478:	03400000 	andi	$r0,$r0,0x0
1c00847c:	03400000 	andi	$r0,$r0,0x0
1c008480:	03400000 	andi	$r0,$r0,0x0
1c008484:	03400000 	andi	$r0,$r0,0x0
1c008488:	03400000 	andi	$r0,$r0,0x0
1c00848c:	03400000 	andi	$r0,$r0,0x0
1c008490:	03400000 	andi	$r0,$r0,0x0
1c008494:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008498:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00849c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0084a0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008414 <Write_ID+0x160>
1c0084a4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084a8:	0297a58c 	addi.w	$r12,$r12,1513(0x5e9)
1c0084ac:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0084b0:	2900018d 	st.b	$r13,$r12,0
1c0084b4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0084b8:	0297618c 	addi.w	$r12,$r12,1496(0x5d8)
1c0084bc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0084c0:	2900018d 	st.b	$r13,$r12,0
1c0084c4:	03400000 	andi	$r0,$r0,0x0
1c0084c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0084cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0084d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0084d4:	4c000020 	jirl	$r0,$r1,0

1c0084d8 <Delate_ID>:
Delate_ID():
1c0084d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0084dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0084e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0084e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0084e8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0084ec:	50002800 	b	40(0x28) # 1c008514 <Delate_ID+0x3c>
1c0084f0:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c0084f4:	029621ad 	addi.w	$r13,$r13,1416(0x588)
1c0084f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0084fc:	0040898c 	slli.w	$r12,$r12,0x2
1c008500:	001031ac 	add.w	$r12,$r13,$r12
1c008504:	29800180 	st.w	$r0,$r12,0
1c008508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00850c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008510:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008514:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008518:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00851c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c0084f0 <Delate_ID+0x18>
1c008520:	57ca47ff 	bl	-13756(0xfffca44) # 1c004f64 <Buzzer>
1c008524:	1400182c 	lu12i.w	$r12,193(0xc1)
1c008528:	03b2d58c 	ori	$r12,$r12,0xcb5
1c00852c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008530:	50008400 	b	132(0x84) # 1c0085b4 <Delate_ID+0xdc>
1c008534:	03400000 	andi	$r0,$r0,0x0
1c008538:	03400000 	andi	$r0,$r0,0x0
1c00853c:	03400000 	andi	$r0,$r0,0x0
1c008540:	03400000 	andi	$r0,$r0,0x0
1c008544:	03400000 	andi	$r0,$r0,0x0
1c008548:	03400000 	andi	$r0,$r0,0x0
1c00854c:	03400000 	andi	$r0,$r0,0x0
1c008550:	03400000 	andi	$r0,$r0,0x0
1c008554:	03400000 	andi	$r0,$r0,0x0
1c008558:	03400000 	andi	$r0,$r0,0x0
1c00855c:	03400000 	andi	$r0,$r0,0x0
1c008560:	03400000 	andi	$r0,$r0,0x0
1c008564:	03400000 	andi	$r0,$r0,0x0
1c008568:	03400000 	andi	$r0,$r0,0x0
1c00856c:	03400000 	andi	$r0,$r0,0x0
1c008570:	03400000 	andi	$r0,$r0,0x0
1c008574:	03400000 	andi	$r0,$r0,0x0
1c008578:	03400000 	andi	$r0,$r0,0x0
1c00857c:	03400000 	andi	$r0,$r0,0x0
1c008580:	03400000 	andi	$r0,$r0,0x0
1c008584:	03400000 	andi	$r0,$r0,0x0
1c008588:	03400000 	andi	$r0,$r0,0x0
1c00858c:	03400000 	andi	$r0,$r0,0x0
1c008590:	03400000 	andi	$r0,$r0,0x0
1c008594:	03400000 	andi	$r0,$r0,0x0
1c008598:	03400000 	andi	$r0,$r0,0x0
1c00859c:	03400000 	andi	$r0,$r0,0x0
1c0085a0:	03400000 	andi	$r0,$r0,0x0
1c0085a4:	03400000 	andi	$r0,$r0,0x0
1c0085a8:	03400000 	andi	$r0,$r0,0x0
1c0085ac:	03400000 	andi	$r0,$r0,0x0
1c0085b0:	03400000 	andi	$r0,$r0,0x0
1c0085b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0085b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0085bc:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0085c0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008534 <Delate_ID+0x5c>
1c0085c4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085c8:	0293258c 	addi.w	$r12,$r12,1225(0x4c9)
1c0085cc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0085d0:	2900018d 	st.b	$r13,$r12,0
1c0085d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0085d8:	0292e18c 	addi.w	$r12,$r12,1208(0x4b8)
1c0085dc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0085e0:	2900018d 	st.b	$r13,$r12,0
1c0085e4:	03400000 	andi	$r0,$r0,0x0
1c0085e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0085ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0085f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0085f4:	4c000020 	jirl	$r0,$r1,0

1c0085f8 <Read_ID>:
Read_ID():
1c0085f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0085fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c008600:	2980a076 	st.w	$r22,$r3,40(0x28)
1c008604:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c008608:	57e36fff 	bl	-7316(0xfffe36c) # 1c006974 <Return_Card>
1c00860c:	0015008c 	move	$r12,$r4
1c008610:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c008614:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008618:	40027180 	beqz	$r12,624(0x270) # 1c008888 <Read_ID+0x290>
1c00861c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c008620:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c008624:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008628:	6802618d 	bltu	$r12,$r13,608(0x260) # 1c008888 <Read_ID+0x290>
1c00862c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c008630:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c008634:	029121ce 	addi.w	$r14,$r14,1096(0x448)
1c008638:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00863c:	0040898c 	slli.w	$r12,$r12,0x2
1c008640:	001031cc 	add.w	$r12,$r14,$r12
1c008644:	2880018c 	ld.w	$r12,$r12,0
1c008648:	5c0189ac 	bne	$r13,$r12,392(0x188) # 1c0087d0 <Read_ID+0x1d8>
1c00864c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c008650:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c007a04 <interface_display>
1c008654:	57af6bff 	bl	-20632(0xfffaf68) # 1c0035bc <SG90_Open>
1c008658:	57cb43ff 	bl	-13504(0xfffcb40) # 1c005198 <Buzzer_one>
1c00865c:	1400472c 	lu12i.w	$r12,569(0x239)
1c008660:	03bee58c 	ori	$r12,$r12,0xfb9
1c008664:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008668:	50008400 	b	132(0x84) # 1c0086ec <Read_ID+0xf4>
1c00866c:	03400000 	andi	$r0,$r0,0x0
1c008670:	03400000 	andi	$r0,$r0,0x0
1c008674:	03400000 	andi	$r0,$r0,0x0
1c008678:	03400000 	andi	$r0,$r0,0x0
1c00867c:	03400000 	andi	$r0,$r0,0x0
1c008680:	03400000 	andi	$r0,$r0,0x0
1c008684:	03400000 	andi	$r0,$r0,0x0
1c008688:	03400000 	andi	$r0,$r0,0x0
1c00868c:	03400000 	andi	$r0,$r0,0x0
1c008690:	03400000 	andi	$r0,$r0,0x0
1c008694:	03400000 	andi	$r0,$r0,0x0
1c008698:	03400000 	andi	$r0,$r0,0x0
1c00869c:	03400000 	andi	$r0,$r0,0x0
1c0086a0:	03400000 	andi	$r0,$r0,0x0
1c0086a4:	03400000 	andi	$r0,$r0,0x0
1c0086a8:	03400000 	andi	$r0,$r0,0x0
1c0086ac:	03400000 	andi	$r0,$r0,0x0
1c0086b0:	03400000 	andi	$r0,$r0,0x0
1c0086b4:	03400000 	andi	$r0,$r0,0x0
1c0086b8:	03400000 	andi	$r0,$r0,0x0
1c0086bc:	03400000 	andi	$r0,$r0,0x0
1c0086c0:	03400000 	andi	$r0,$r0,0x0
1c0086c4:	03400000 	andi	$r0,$r0,0x0
1c0086c8:	03400000 	andi	$r0,$r0,0x0
1c0086cc:	03400000 	andi	$r0,$r0,0x0
1c0086d0:	03400000 	andi	$r0,$r0,0x0
1c0086d4:	03400000 	andi	$r0,$r0,0x0
1c0086d8:	03400000 	andi	$r0,$r0,0x0
1c0086dc:	03400000 	andi	$r0,$r0,0x0
1c0086e0:	03400000 	andi	$r0,$r0,0x0
1c0086e4:	03400000 	andi	$r0,$r0,0x0
1c0086e8:	03400000 	andi	$r0,$r0,0x0
1c0086ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0086f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0086f4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0086f8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00866c <Read_ID+0x74>
1c0086fc:	57ca9fff 	bl	-13668(0xfffca9c) # 1c005198 <Buzzer_one>
1c008700:	57aeebff 	bl	-20760(0xfffaee8) # 1c0035e8 <SG90_Close>
1c008704:	02802404 	addi.w	$r4,$r0,9(0x9)
1c008708:	57f2ffff 	bl	-3332(0xffff2fc) # 1c007a04 <interface_display>
1c00870c:	1400472c 	lu12i.w	$r12,569(0x239)
1c008710:	03bee58c 	ori	$r12,$r12,0xfb9
1c008714:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008718:	50008400 	b	132(0x84) # 1c00879c <Read_ID+0x1a4>
1c00871c:	03400000 	andi	$r0,$r0,0x0
1c008720:	03400000 	andi	$r0,$r0,0x0
1c008724:	03400000 	andi	$r0,$r0,0x0
1c008728:	03400000 	andi	$r0,$r0,0x0
1c00872c:	03400000 	andi	$r0,$r0,0x0
1c008730:	03400000 	andi	$r0,$r0,0x0
1c008734:	03400000 	andi	$r0,$r0,0x0
1c008738:	03400000 	andi	$r0,$r0,0x0
1c00873c:	03400000 	andi	$r0,$r0,0x0
1c008740:	03400000 	andi	$r0,$r0,0x0
1c008744:	03400000 	andi	$r0,$r0,0x0
1c008748:	03400000 	andi	$r0,$r0,0x0
1c00874c:	03400000 	andi	$r0,$r0,0x0
1c008750:	03400000 	andi	$r0,$r0,0x0
1c008754:	03400000 	andi	$r0,$r0,0x0
1c008758:	03400000 	andi	$r0,$r0,0x0
1c00875c:	03400000 	andi	$r0,$r0,0x0
1c008760:	03400000 	andi	$r0,$r0,0x0
1c008764:	03400000 	andi	$r0,$r0,0x0
1c008768:	03400000 	andi	$r0,$r0,0x0
1c00876c:	03400000 	andi	$r0,$r0,0x0
1c008770:	03400000 	andi	$r0,$r0,0x0
1c008774:	03400000 	andi	$r0,$r0,0x0
1c008778:	03400000 	andi	$r0,$r0,0x0
1c00877c:	03400000 	andi	$r0,$r0,0x0
1c008780:	03400000 	andi	$r0,$r0,0x0
1c008784:	03400000 	andi	$r0,$r0,0x0
1c008788:	03400000 	andi	$r0,$r0,0x0
1c00878c:	03400000 	andi	$r0,$r0,0x0
1c008790:	03400000 	andi	$r0,$r0,0x0
1c008794:	03400000 	andi	$r0,$r0,0x0
1c008798:	03400000 	andi	$r0,$r0,0x0
1c00879c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0087a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0087a4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0087a8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00871c <Read_ID+0x124>
1c0087ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0087b0:	028b818c 	addi.w	$r12,$r12,736(0x2e0)
1c0087b4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0087b8:	2900018d 	st.b	$r13,$r12,0
1c0087bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0087c0:	028b458c 	addi.w	$r12,$r12,721(0x2d1)
1c0087c4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0087c8:	2900018d 	st.b	$r13,$r12,0
1c0087cc:	5000bc00 	b	188(0xbc) # 1c008888 <Read_ID+0x290>
1c0087d0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0087d4:	57f233ff 	bl	-3536(0xffff230) # 1c007a04 <interface_display>
1c0087d8:	57c78fff 	bl	-14452(0xfffc78c) # 1c004f64 <Buzzer>
1c0087dc:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0087e0:	03bf918c 	ori	$r12,$r12,0xfe4
1c0087e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0087e8:	50008400 	b	132(0x84) # 1c00886c <Read_ID+0x274>
1c0087ec:	03400000 	andi	$r0,$r0,0x0
1c0087f0:	03400000 	andi	$r0,$r0,0x0
1c0087f4:	03400000 	andi	$r0,$r0,0x0
1c0087f8:	03400000 	andi	$r0,$r0,0x0
1c0087fc:	03400000 	andi	$r0,$r0,0x0
1c008800:	03400000 	andi	$r0,$r0,0x0
1c008804:	03400000 	andi	$r0,$r0,0x0
1c008808:	03400000 	andi	$r0,$r0,0x0
1c00880c:	03400000 	andi	$r0,$r0,0x0
1c008810:	03400000 	andi	$r0,$r0,0x0
1c008814:	03400000 	andi	$r0,$r0,0x0
1c008818:	03400000 	andi	$r0,$r0,0x0
1c00881c:	03400000 	andi	$r0,$r0,0x0
1c008820:	03400000 	andi	$r0,$r0,0x0
1c008824:	03400000 	andi	$r0,$r0,0x0
1c008828:	03400000 	andi	$r0,$r0,0x0
1c00882c:	03400000 	andi	$r0,$r0,0x0
1c008830:	03400000 	andi	$r0,$r0,0x0
1c008834:	03400000 	andi	$r0,$r0,0x0
1c008838:	03400000 	andi	$r0,$r0,0x0
1c00883c:	03400000 	andi	$r0,$r0,0x0
1c008840:	03400000 	andi	$r0,$r0,0x0
1c008844:	03400000 	andi	$r0,$r0,0x0
1c008848:	03400000 	andi	$r0,$r0,0x0
1c00884c:	03400000 	andi	$r0,$r0,0x0
1c008850:	03400000 	andi	$r0,$r0,0x0
1c008854:	03400000 	andi	$r0,$r0,0x0
1c008858:	03400000 	andi	$r0,$r0,0x0
1c00885c:	03400000 	andi	$r0,$r0,0x0
1c008860:	03400000 	andi	$r0,$r0,0x0
1c008864:	03400000 	andi	$r0,$r0,0x0
1c008868:	03400000 	andi	$r0,$r0,0x0
1c00886c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008870:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008874:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c008878:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0087ec <Read_ID+0x1f4>
1c00887c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c008880:	57f187ff 	bl	-3708(0xffff184) # 1c007a04 <interface_display>
1c008884:	03400000 	andi	$r0,$r0,0x0
1c008888:	03400000 	andi	$r0,$r0,0x0
1c00888c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c008890:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c008894:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c008898:	4c000020 	jirl	$r0,$r1,0

1c00889c <Key_main>:
Key_main():
1c00889c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0088a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0088a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0088a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0088ac:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0088b0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088b4:	02aae58c 	addi.w	$r12,$r12,-1351(0xab9)
1c0088b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0088bc:	4005ad80 	beqz	$r12,1452(0x5ac) # 1c008e68 <Key_main+0x5cc>
1c0088c0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088c4:	02aaa58c 	addi.w	$r12,$r12,-1367(0xaa9)
1c0088c8:	2a00018d 	ld.bu	$r13,$r12,0
1c0088cc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0088d0:	6802218d 	bltu	$r12,$r13,544(0x220) # 1c008af0 <Key_main+0x254>
1c0088d4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088d8:	289cd18c 	ld.w	$r12,$r12,1844(0x734)
1c0088dc:	2880018d 	ld.w	$r13,$r12,0
1c0088e0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0088e4:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c008964 <Key_main+0xc8>
1c0088e8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0088ec:	289cc18c 	ld.w	$r12,$r12,1840(0x730)
1c0088f0:	2880018d 	ld.w	$r13,$r12,0
1c0088f4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0088f8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0088fc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008900:	289c718c 	ld.w	$r12,$r12,1820(0x71c)
1c008904:	2980018d 	st.w	$r13,$r12,0
1c008908:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00890c:	02a9858c 	addi.w	$r12,$r12,-1439(0xa61)
1c008910:	2a00018d 	ld.bu	$r13,$r12,0
1c008914:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c008918:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00891c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c008924 <Key_main+0x88>
1c008920:	002a0007 	break	0x7
1c008924:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c008928:	0015018d 	move	$r13,$r12
1c00892c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008930:	289bb18c 	ld.w	$r12,$r12,1772(0x6ec)
1c008934:	2880018c 	ld.w	$r12,$r12,0
1c008938:	001031ad 	add.w	$r13,$r13,$r12
1c00893c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008940:	289b718c 	ld.w	$r12,$r12,1756(0x6dc)
1c008944:	2980018d 	st.w	$r13,$r12,0
1c008948:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00894c:	289b018c 	ld.w	$r12,$r12,1728(0x6c0)
1c008950:	2880018c 	ld.w	$r12,$r12,0
1c008954:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008958:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00895c:	289ac18c 	ld.w	$r12,$r12,1712(0x6b0)
1c008960:	2980018d 	st.w	$r13,$r12,0
1c008964:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008968:	289ad18c 	ld.w	$r12,$r12,1716(0x6b4)
1c00896c:	2880018c 	ld.w	$r12,$r12,0
1c008970:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008974:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008978:	289a518c 	ld.w	$r12,$r12,1684(0x694)
1c00897c:	2880018c 	ld.w	$r12,$r12,0
1c008980:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008984:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008988:	50006400 	b	100(0x64) # 1c0089ec <Key_main+0x150>
1c00898c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c008990:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c008994:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c008998:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0089a0 <Key_main+0x104>
1c00899c:	002a0007 	break	0x7
1c0089a0:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0089a4:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0089a8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0089ac:	002135cc 	div.wu	$r12,$r14,$r13
1c0089b0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0089b8 <Key_main+0x11c>
1c0089b4:	002a0007 	break	0x7
1c0089b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0089bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0089c0:	00408d8c 	slli.w	$r12,$r12,0x3
1c0089c4:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0089c8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0089cc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0089d0:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c0089d4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0089d8:	00150184 	move	$r4,$r12
1c0089dc:	57d1dbff 	bl	-11816(0xfffd1d8) # 1c005bb4 <OLED_ShowNum>
1c0089e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0089e4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0089e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0089ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0089f0:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c00898c <Key_main+0xf0>
1c0089f4:	140002cc 	lu12i.w	$r12,22(0x16)
1c0089f8:	03b3298c 	ori	$r12,$r12,0xcca
1c0089fc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c008a00:	50008400 	b	132(0x84) # 1c008a84 <Key_main+0x1e8>
1c008a04:	03400000 	andi	$r0,$r0,0x0
1c008a08:	03400000 	andi	$r0,$r0,0x0
1c008a0c:	03400000 	andi	$r0,$r0,0x0
1c008a10:	03400000 	andi	$r0,$r0,0x0
1c008a14:	03400000 	andi	$r0,$r0,0x0
1c008a18:	03400000 	andi	$r0,$r0,0x0
1c008a1c:	03400000 	andi	$r0,$r0,0x0
1c008a20:	03400000 	andi	$r0,$r0,0x0
1c008a24:	03400000 	andi	$r0,$r0,0x0
1c008a28:	03400000 	andi	$r0,$r0,0x0
1c008a2c:	03400000 	andi	$r0,$r0,0x0
1c008a30:	03400000 	andi	$r0,$r0,0x0
1c008a34:	03400000 	andi	$r0,$r0,0x0
1c008a38:	03400000 	andi	$r0,$r0,0x0
1c008a3c:	03400000 	andi	$r0,$r0,0x0
1c008a40:	03400000 	andi	$r0,$r0,0x0
1c008a44:	03400000 	andi	$r0,$r0,0x0
1c008a48:	03400000 	andi	$r0,$r0,0x0
1c008a4c:	03400000 	andi	$r0,$r0,0x0
1c008a50:	03400000 	andi	$r0,$r0,0x0
1c008a54:	03400000 	andi	$r0,$r0,0x0
1c008a58:	03400000 	andi	$r0,$r0,0x0
1c008a5c:	03400000 	andi	$r0,$r0,0x0
1c008a60:	03400000 	andi	$r0,$r0,0x0
1c008a64:	03400000 	andi	$r0,$r0,0x0
1c008a68:	03400000 	andi	$r0,$r0,0x0
1c008a6c:	03400000 	andi	$r0,$r0,0x0
1c008a70:	03400000 	andi	$r0,$r0,0x0
1c008a74:	03400000 	andi	$r0,$r0,0x0
1c008a78:	03400000 	andi	$r0,$r0,0x0
1c008a7c:	03400000 	andi	$r0,$r0,0x0
1c008a80:	03400000 	andi	$r0,$r0,0x0
1c008a84:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c008a88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008a8c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c008a90:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008a04 <Key_main+0x168>
1c008a94:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008a98:	50004400 	b	68(0x44) # 1c008adc <Key_main+0x240>
1c008a9c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008aa0:	2895b18c 	ld.w	$r12,$r12,1388(0x56c)
1c008aa4:	2880018d 	ld.w	$r13,$r12,0
1c008aa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008aac:	001131ac 	sub.w	$r12,$r13,$r12
1c008ab0:	00408d8c 	slli.w	$r12,$r12,0x3
1c008ab4:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c008ab8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008abc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008ac0:	029c40c6 	addi.w	$r6,$r6,1808(0x710)
1c008ac4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008ac8:	00150184 	move	$r4,$r12
1c008acc:	57ca7fff 	bl	-13700(0xfffca7c) # 1c005548 <OLED_ShowStr>
1c008ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008ad4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008ad8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008adc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008ae0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ae4:	2894a18c 	ld.w	$r12,$r12,1320(0x528)
1c008ae8:	2880018c 	ld.w	$r12,$r12,0
1c008aec:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c008a9c <Key_main+0x200>
1c008af0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008af4:	50004400 	b	68(0x44) # 1c008b38 <Key_main+0x29c>
1c008af8:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008afc:	02bdb1ad 	addi.w	$r13,$r13,-148(0xf6c)
1c008b00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008b04:	0040898c 	slli.w	$r12,$r12,0x2
1c008b08:	001031ac 	add.w	$r12,$r13,$r12
1c008b0c:	2880018d 	ld.w	$r13,$r12,0
1c008b10:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b14:	2894218c 	ld.w	$r12,$r12,1288(0x508)
1c008b18:	2880018c 	ld.w	$r12,$r12,0
1c008b1c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c008b2c <Key_main+0x290>
1c008b20:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c008b24:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008b28:	50001c00 	b	28(0x1c) # 1c008b44 <Key_main+0x2a8>
1c008b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008b30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008b34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008b38:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008b3c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008b40:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c008af8 <Key_main+0x25c>
1c008b44:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008b48:	02a0958c 	addi.w	$r12,$r12,-2011(0x825)
1c008b4c:	2a00018d 	ld.bu	$r13,$r12,0
1c008b50:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c008b54:	5c0279ac 	bne	$r13,$r12,632(0x278) # 1c008dcc <Key_main+0x530>
1c008b58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c008b5c:	4001a180 	beqz	$r12,416(0x1a0) # 1c008cfc <Key_main+0x460>
1c008b60:	02802004 	addi.w	$r4,$r0,8(0x8)
1c008b64:	57eea3ff 	bl	-4448(0xfffeea0) # 1c007a04 <interface_display>
1c008b68:	57aa57ff 	bl	-21932(0xfffaa54) # 1c0035bc <SG90_Open>
1c008b6c:	57c62fff 	bl	-14804(0xfffc62c) # 1c005198 <Buzzer_one>
1c008b70:	1400472c 	lu12i.w	$r12,569(0x239)
1c008b74:	03bee58c 	ori	$r12,$r12,0xfb9
1c008b78:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c008b7c:	50008400 	b	132(0x84) # 1c008c00 <Key_main+0x364>
1c008b80:	03400000 	andi	$r0,$r0,0x0
1c008b84:	03400000 	andi	$r0,$r0,0x0
1c008b88:	03400000 	andi	$r0,$r0,0x0
1c008b8c:	03400000 	andi	$r0,$r0,0x0
1c008b90:	03400000 	andi	$r0,$r0,0x0
1c008b94:	03400000 	andi	$r0,$r0,0x0
1c008b98:	03400000 	andi	$r0,$r0,0x0
1c008b9c:	03400000 	andi	$r0,$r0,0x0
1c008ba0:	03400000 	andi	$r0,$r0,0x0
1c008ba4:	03400000 	andi	$r0,$r0,0x0
1c008ba8:	03400000 	andi	$r0,$r0,0x0
1c008bac:	03400000 	andi	$r0,$r0,0x0
1c008bb0:	03400000 	andi	$r0,$r0,0x0
1c008bb4:	03400000 	andi	$r0,$r0,0x0
1c008bb8:	03400000 	andi	$r0,$r0,0x0
1c008bbc:	03400000 	andi	$r0,$r0,0x0
1c008bc0:	03400000 	andi	$r0,$r0,0x0
1c008bc4:	03400000 	andi	$r0,$r0,0x0
1c008bc8:	03400000 	andi	$r0,$r0,0x0
1c008bcc:	03400000 	andi	$r0,$r0,0x0
1c008bd0:	03400000 	andi	$r0,$r0,0x0
1c008bd4:	03400000 	andi	$r0,$r0,0x0
1c008bd8:	03400000 	andi	$r0,$r0,0x0
1c008bdc:	03400000 	andi	$r0,$r0,0x0
1c008be0:	03400000 	andi	$r0,$r0,0x0
1c008be4:	03400000 	andi	$r0,$r0,0x0
1c008be8:	03400000 	andi	$r0,$r0,0x0
1c008bec:	03400000 	andi	$r0,$r0,0x0
1c008bf0:	03400000 	andi	$r0,$r0,0x0
1c008bf4:	03400000 	andi	$r0,$r0,0x0
1c008bf8:	03400000 	andi	$r0,$r0,0x0
1c008bfc:	03400000 	andi	$r0,$r0,0x0
1c008c00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c008c04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008c08:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c008c0c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008b80 <Key_main+0x2e4>
1c008c10:	57c58bff 	bl	-14968(0xfffc588) # 1c005198 <Buzzer_one>
1c008c14:	57a9d7ff 	bl	-22060(0xfffa9d4) # 1c0035e8 <SG90_Close>
1c008c18:	02802404 	addi.w	$r4,$r0,9(0x9)
1c008c1c:	57edebff 	bl	-4632(0xfffede8) # 1c007a04 <interface_display>
1c008c20:	1400472c 	lu12i.w	$r12,569(0x239)
1c008c24:	03bee58c 	ori	$r12,$r12,0xfb9
1c008c28:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c008c2c:	50008400 	b	132(0x84) # 1c008cb0 <Key_main+0x414>
1c008c30:	03400000 	andi	$r0,$r0,0x0
1c008c34:	03400000 	andi	$r0,$r0,0x0
1c008c38:	03400000 	andi	$r0,$r0,0x0
1c008c3c:	03400000 	andi	$r0,$r0,0x0
1c008c40:	03400000 	andi	$r0,$r0,0x0
1c008c44:	03400000 	andi	$r0,$r0,0x0
1c008c48:	03400000 	andi	$r0,$r0,0x0
1c008c4c:	03400000 	andi	$r0,$r0,0x0
1c008c50:	03400000 	andi	$r0,$r0,0x0
1c008c54:	03400000 	andi	$r0,$r0,0x0
1c008c58:	03400000 	andi	$r0,$r0,0x0
1c008c5c:	03400000 	andi	$r0,$r0,0x0
1c008c60:	03400000 	andi	$r0,$r0,0x0
1c008c64:	03400000 	andi	$r0,$r0,0x0
1c008c68:	03400000 	andi	$r0,$r0,0x0
1c008c6c:	03400000 	andi	$r0,$r0,0x0
1c008c70:	03400000 	andi	$r0,$r0,0x0
1c008c74:	03400000 	andi	$r0,$r0,0x0
1c008c78:	03400000 	andi	$r0,$r0,0x0
1c008c7c:	03400000 	andi	$r0,$r0,0x0
1c008c80:	03400000 	andi	$r0,$r0,0x0
1c008c84:	03400000 	andi	$r0,$r0,0x0
1c008c88:	03400000 	andi	$r0,$r0,0x0
1c008c8c:	03400000 	andi	$r0,$r0,0x0
1c008c90:	03400000 	andi	$r0,$r0,0x0
1c008c94:	03400000 	andi	$r0,$r0,0x0
1c008c98:	03400000 	andi	$r0,$r0,0x0
1c008c9c:	03400000 	andi	$r0,$r0,0x0
1c008ca0:	03400000 	andi	$r0,$r0,0x0
1c008ca4:	03400000 	andi	$r0,$r0,0x0
1c008ca8:	03400000 	andi	$r0,$r0,0x0
1c008cac:	03400000 	andi	$r0,$r0,0x0
1c008cb0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c008cb4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008cb8:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c008cbc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008c30 <Key_main+0x394>
1c008cc0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008cc4:	02b7318c 	addi.w	$r12,$r12,-564(0xdcc)
1c008cc8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008ccc:	2900018d 	st.b	$r13,$r12,0
1c008cd0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008cd4:	02b6f58c 	addi.w	$r12,$r12,-579(0xdbd)
1c008cd8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008cdc:	2900018d 	st.b	$r13,$r12,0
1c008ce0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ce4:	288ce18c 	ld.w	$r12,$r12,824(0x338)
1c008ce8:	29800180 	st.w	$r0,$r12,0
1c008cec:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008cf0:	288c718c 	ld.w	$r12,$r12,796(0x31c)
1c008cf4:	29800180 	st.w	$r0,$r12,0
1c008cf8:	5000d400 	b	212(0xd4) # 1c008dcc <Key_main+0x530>
1c008cfc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c008d00:	57ed07ff 	bl	-4860(0xfffed04) # 1c007a04 <interface_display>
1c008d04:	57c263ff 	bl	-15776(0xfffc260) # 1c004f64 <Buzzer>
1c008d08:	57a8e3ff 	bl	-22304(0xfffa8e0) # 1c0035e8 <SG90_Close>
1c008d0c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c008d10:	03bf918c 	ori	$r12,$r12,0xfe4
1c008d14:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c008d18:	50008400 	b	132(0x84) # 1c008d9c <Key_main+0x500>
1c008d1c:	03400000 	andi	$r0,$r0,0x0
1c008d20:	03400000 	andi	$r0,$r0,0x0
1c008d24:	03400000 	andi	$r0,$r0,0x0
1c008d28:	03400000 	andi	$r0,$r0,0x0
1c008d2c:	03400000 	andi	$r0,$r0,0x0
1c008d30:	03400000 	andi	$r0,$r0,0x0
1c008d34:	03400000 	andi	$r0,$r0,0x0
1c008d38:	03400000 	andi	$r0,$r0,0x0
1c008d3c:	03400000 	andi	$r0,$r0,0x0
1c008d40:	03400000 	andi	$r0,$r0,0x0
1c008d44:	03400000 	andi	$r0,$r0,0x0
1c008d48:	03400000 	andi	$r0,$r0,0x0
1c008d4c:	03400000 	andi	$r0,$r0,0x0
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
1c008d9c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c008da0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008da4:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c008da8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008d1c <Key_main+0x480>
1c008dac:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008db0:	2889b18c 	ld.w	$r12,$r12,620(0x26c)
1c008db4:	29800180 	st.w	$r0,$r12,0
1c008db8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008dbc:	2889418c 	ld.w	$r12,$r12,592(0x250)
1c008dc0:	29800180 	st.w	$r0,$r12,0
1c008dc4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c008dc8:	57ec3fff 	bl	-5060(0xfffec3c) # 1c007a04 <interface_display>
1c008dcc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c008dd0:	0296758c 	addi.w	$r12,$r12,1437(0x59d)
1c008dd4:	2a00018d 	ld.bu	$r13,$r12,0
1c008dd8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c008ddc:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c008e3c <Key_main+0x5a0>
1c008de0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008de4:	2888e18c 	ld.w	$r12,$r12,568(0x238)
1c008de8:	29800180 	st.w	$r0,$r12,0
1c008dec:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008df0:	2888718c 	ld.w	$r12,$r12,540(0x21c)
1c008df4:	29800180 	st.w	$r0,$r12,0
1c008df8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008dfc:	50003400 	b	52(0x34) # 1c008e30 <Key_main+0x594>
1c008e00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008e04:	00408d8c 	slli.w	$r12,$r12,0x3
1c008e08:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c008e0c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008e10:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008e14:	028f00c6 	addi.w	$r6,$r6,960(0x3c0)
1c008e18:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008e1c:	00150184 	move	$r4,$r12
1c008e20:	57c72bff 	bl	-14552(0xfffc728) # 1c005548 <OLED_ShowStr>
1c008e24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008e2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008e30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008e34:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c008e38:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c008e00 <Key_main+0x564>
1c008e3c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c008e40:	0294b58c 	addi.w	$r12,$r12,1325(0x52d)
1c008e44:	2a00018d 	ld.bu	$r13,$r12,0
1c008e48:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008e4c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c008e68 <Key_main+0x5cc>
1c008e50:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e54:	2887218c 	ld.w	$r12,$r12,456(0x1c8)
1c008e58:	29800180 	st.w	$r0,$r12,0
1c008e5c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008e60:	2886b18c 	ld.w	$r12,$r12,428(0x1ac)
1c008e64:	29800180 	st.w	$r0,$r12,0
1c008e68:	03400000 	andi	$r0,$r0,0x0
1c008e6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c008e70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c008e74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c008e78:	4c000020 	jirl	$r0,$r1,0

1c008e7c <Key>:
Key():
1c008e7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c008e80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c008e84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c008e88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c008e8c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c008e90:	0293758c 	addi.w	$r12,$r12,1245(0x4dd)
1c008e94:	2a00018c 	ld.bu	$r12,$r12,0
1c008e98:	40047180 	beqz	$r12,1136(0x470) # 1c009308 <Key+0x48c>
1c008e9c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c008ea0:	0293358c 	addi.w	$r12,$r12,1229(0x4cd)
1c008ea4:	2a00018d 	ld.bu	$r13,$r12,0
1c008ea8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c008eac:	6801cd8d 	bltu	$r12,$r13,460(0x1cc) # 1c009078 <Key+0x1fc>
1c008eb0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008eb4:	2885618c 	ld.w	$r12,$r12,344(0x158)
1c008eb8:	2880018d 	ld.w	$r13,$r12,0
1c008ebc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c008ec0:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c008f40 <Key+0xc4>
1c008ec4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008ec8:	2885518c 	ld.w	$r12,$r12,340(0x154)
1c008ecc:	2880018d 	ld.w	$r13,$r12,0
1c008ed0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c008ed4:	001c31ad 	mul.w	$r13,$r13,$r12
1c008ed8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008edc:	2885018c 	ld.w	$r12,$r12,320(0x140)
1c008ee0:	2980018d 	st.w	$r13,$r12,0
1c008ee4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c008ee8:	0292158c 	addi.w	$r12,$r12,1157(0x485)
1c008eec:	2a00018d 	ld.bu	$r13,$r12,0
1c008ef0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c008ef4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c008ef8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c008f00 <Key+0x84>
1c008efc:	002a0007 	break	0x7
1c008f00:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c008f04:	0015018d 	move	$r13,$r12
1c008f08:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f0c:	2884418c 	ld.w	$r12,$r12,272(0x110)
1c008f10:	2880018c 	ld.w	$r12,$r12,0
1c008f14:	001031ad 	add.w	$r13,$r13,$r12
1c008f18:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f1c:	2884018c 	ld.w	$r12,$r12,256(0x100)
1c008f20:	2980018d 	st.w	$r13,$r12,0
1c008f24:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f28:	2883918c 	ld.w	$r12,$r12,228(0xe4)
1c008f2c:	2880018c 	ld.w	$r12,$r12,0
1c008f30:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c008f34:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f38:	2883518c 	ld.w	$r12,$r12,212(0xd4)
1c008f3c:	2980018d 	st.w	$r13,$r12,0
1c008f40:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f44:	2883618c 	ld.w	$r12,$r12,216(0xd8)
1c008f48:	2880018c 	ld.w	$r12,$r12,0
1c008f4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008f50:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008f54:	2882e18c 	ld.w	$r12,$r12,184(0xb8)
1c008f58:	2880018c 	ld.w	$r12,$r12,0
1c008f5c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008f60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008f64:	50006c00 	b	108(0x6c) # 1c008fd0 <Key+0x154>
1c008f68:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c008f6c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c008f70:	0020b5cc 	mod.w	$r12,$r14,$r13
1c008f74:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c008f7c <Key+0x100>
1c008f78:	002a0007 	break	0x7
1c008f7c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c008f80:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c008f84:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c008f88:	002035cc 	div.w	$r12,$r14,$r13
1c008f8c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c008f94 <Key+0x118>
1c008f90:	002a0007 	break	0x7
1c008f94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008f98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008f9c:	00408d8c 	slli.w	$r12,$r12,0x3
1c008fa0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c008fa4:	0015018d 	move	$r13,$r12
1c008fa8:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c008fac:	02804008 	addi.w	$r8,$r0,16(0x10)
1c008fb0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c008fb4:	00150186 	move	$r6,$r12
1c008fb8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008fbc:	001501a4 	move	$r4,$r13
1c008fc0:	57cbf7ff 	bl	-13324(0xfffcbf4) # 1c005bb4 <OLED_ShowNum>
1c008fc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008fc8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008fcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008fd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008fd4:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c008f68 <Key+0xec>
1c008fd8:	140005ac 	lu12i.w	$r12,45(0x2d)
1c008fdc:	03a6518c 	ori	$r12,$r12,0x994
1c008fe0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008fe4:	50008400 	b	132(0x84) # 1c009068 <Key+0x1ec>
1c008fe8:	03400000 	andi	$r0,$r0,0x0
1c008fec:	03400000 	andi	$r0,$r0,0x0
1c008ff0:	03400000 	andi	$r0,$r0,0x0
1c008ff4:	03400000 	andi	$r0,$r0,0x0
1c008ff8:	03400000 	andi	$r0,$r0,0x0
1c008ffc:	03400000 	andi	$r0,$r0,0x0
1c009000:	03400000 	andi	$r0,$r0,0x0
1c009004:	03400000 	andi	$r0,$r0,0x0
1c009008:	03400000 	andi	$r0,$r0,0x0
1c00900c:	03400000 	andi	$r0,$r0,0x0
1c009010:	03400000 	andi	$r0,$r0,0x0
1c009014:	03400000 	andi	$r0,$r0,0x0
1c009018:	03400000 	andi	$r0,$r0,0x0
1c00901c:	03400000 	andi	$r0,$r0,0x0
1c009020:	03400000 	andi	$r0,$r0,0x0
1c009024:	03400000 	andi	$r0,$r0,0x0
1c009028:	03400000 	andi	$r0,$r0,0x0
1c00902c:	03400000 	andi	$r0,$r0,0x0
1c009030:	03400000 	andi	$r0,$r0,0x0
1c009034:	03400000 	andi	$r0,$r0,0x0
1c009038:	03400000 	andi	$r0,$r0,0x0
1c00903c:	03400000 	andi	$r0,$r0,0x0
1c009040:	03400000 	andi	$r0,$r0,0x0
1c009044:	03400000 	andi	$r0,$r0,0x0
1c009048:	03400000 	andi	$r0,$r0,0x0
1c00904c:	03400000 	andi	$r0,$r0,0x0
1c009050:	03400000 	andi	$r0,$r0,0x0
1c009054:	03400000 	andi	$r0,$r0,0x0
1c009058:	03400000 	andi	$r0,$r0,0x0
1c00905c:	03400000 	andi	$r0,$r0,0x0
1c009060:	03400000 	andi	$r0,$r0,0x0
1c009064:	03400000 	andi	$r0,$r0,0x0
1c009068:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00906c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009070:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009074:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008fe8 <Key+0x16c>
1c009078:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00907c:	028bc58c 	addi.w	$r12,$r12,753(0x2f1)
1c009080:	2a00018d 	ld.bu	$r13,$r12,0
1c009084:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009088:	5c01e5ac 	bne	$r13,$r12,484(0x1e4) # 1c00926c <Key+0x3f0>
1c00908c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009090:	28be318c 	ld.w	$r12,$r12,-116(0xf8c)
1c009094:	2880018d 	ld.w	$r13,$r12,0
1c009098:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c00909c:	5c00e9ac 	bne	$r13,$r12,232(0xe8) # 1c009184 <Key+0x308>
1c0090a0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0090a4:	57e963ff 	bl	-5792(0xfffe960) # 1c007a04 <interface_display>
1c0090a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0090ac:	02a7958c 	addi.w	$r12,$r12,-1563(0x9e5)
1c0090b0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0090b4:	2900018d 	st.b	$r13,$r12,0
1c0090b8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0090bc:	02a7518c 	addi.w	$r12,$r12,-1580(0x9d4)
1c0090c0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0090c4:	2900018d 	st.b	$r13,$r12,0
1c0090c8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0090cc:	03bf918c 	ori	$r12,$r12,0xfe4
1c0090d0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0090d4:	50008400 	b	132(0x84) # 1c009158 <Key+0x2dc>
1c0090d8:	03400000 	andi	$r0,$r0,0x0
1c0090dc:	03400000 	andi	$r0,$r0,0x0
1c0090e0:	03400000 	andi	$r0,$r0,0x0
1c0090e4:	03400000 	andi	$r0,$r0,0x0
1c0090e8:	03400000 	andi	$r0,$r0,0x0
1c0090ec:	03400000 	andi	$r0,$r0,0x0
1c0090f0:	03400000 	andi	$r0,$r0,0x0
1c0090f4:	03400000 	andi	$r0,$r0,0x0
1c0090f8:	03400000 	andi	$r0,$r0,0x0
1c0090fc:	03400000 	andi	$r0,$r0,0x0
1c009100:	03400000 	andi	$r0,$r0,0x0
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
1c009158:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00915c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009160:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009164:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0090d8 <Key+0x25c>
1c009168:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00916c:	28bac18c 	ld.w	$r12,$r12,-336(0xeb0)
1c009170:	29800180 	st.w	$r0,$r12,0
1c009174:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009178:	28ba518c 	ld.w	$r12,$r12,-364(0xe94)
1c00917c:	29800180 	st.w	$r0,$r12,0
1c009180:	5000ec00 	b	236(0xec) # 1c00926c <Key+0x3f0>
1c009184:	57c39bff 	bl	-15464(0xfffc398) # 1c00551c <OLED_CLS>
1c009188:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00918c:	57e87bff 	bl	-6024(0xfffe878) # 1c007a04 <interface_display>
1c009190:	57bdd7ff 	bl	-16940(0xfffbdd4) # 1c004f64 <Buzzer>
1c009194:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009198:	03bf918c 	ori	$r12,$r12,0xfe4
1c00919c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0091a0:	50008400 	b	132(0x84) # 1c009224 <Key+0x3a8>
1c0091a4:	03400000 	andi	$r0,$r0,0x0
1c0091a8:	03400000 	andi	$r0,$r0,0x0
1c0091ac:	03400000 	andi	$r0,$r0,0x0
1c0091b0:	03400000 	andi	$r0,$r0,0x0
1c0091b4:	03400000 	andi	$r0,$r0,0x0
1c0091b8:	03400000 	andi	$r0,$r0,0x0
1c0091bc:	03400000 	andi	$r0,$r0,0x0
1c0091c0:	03400000 	andi	$r0,$r0,0x0
1c0091c4:	03400000 	andi	$r0,$r0,0x0
1c0091c8:	03400000 	andi	$r0,$r0,0x0
1c0091cc:	03400000 	andi	$r0,$r0,0x0
1c0091d0:	03400000 	andi	$r0,$r0,0x0
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
1c009224:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009228:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00922c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c009230:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0091a4 <Key+0x328>
1c009234:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009238:	02a1658c 	addi.w	$r12,$r12,-1959(0x859)
1c00923c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009240:	2900018d 	st.b	$r13,$r12,0
1c009244:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009248:	02a1218c 	addi.w	$r12,$r12,-1976(0x848)
1c00924c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009250:	2900018d 	st.b	$r13,$r12,0
1c009254:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009258:	28b7118c 	ld.w	$r12,$r12,-572(0xdc4)
1c00925c:	29800180 	st.w	$r0,$r12,0
1c009260:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009264:	28b6a18c 	ld.w	$r12,$r12,-600(0xda8)
1c009268:	29800180 	st.w	$r0,$r12,0
1c00926c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009270:	0283f58c 	addi.w	$r12,$r12,253(0xfd)
1c009274:	2a00018d 	ld.bu	$r13,$r12,0
1c009278:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00927c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0092dc <Key+0x460>
1c009280:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009284:	28b6618c 	ld.w	$r12,$r12,-616(0xd98)
1c009288:	29800180 	st.w	$r0,$r12,0
1c00928c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009290:	28b5f18c 	ld.w	$r12,$r12,-644(0xd7c)
1c009294:	29800180 	st.w	$r0,$r12,0
1c009298:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00929c:	50003400 	b	52(0x34) # 1c0092d0 <Key+0x454>
1c0092a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0092a4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0092a8:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0092ac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0092b0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0092b4:	02bc80c6 	addi.w	$r6,$r6,-224(0xf20)
1c0092b8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0092bc:	00150184 	move	$r4,$r12
1c0092c0:	57c28bff 	bl	-15736(0xfffc288) # 1c005548 <OLED_ShowStr>
1c0092c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0092c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0092cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0092d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0092d4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0092d8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0092a0 <Key+0x424>
1c0092dc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0092e0:	0282358c 	addi.w	$r12,$r12,141(0x8d)
1c0092e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0092e8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0092ec:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c009308 <Key+0x48c>
1c0092f0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092f4:	28b4a18c 	ld.w	$r12,$r12,-728(0xd28)
1c0092f8:	29800180 	st.w	$r0,$r12,0
1c0092fc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009300:	28b4318c 	ld.w	$r12,$r12,-756(0xd0c)
1c009304:	29800180 	st.w	$r0,$r12,0
1c009308:	03400000 	andi	$r0,$r0,0x0
1c00930c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009310:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c009314:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009318:	4c000020 	jirl	$r0,$r1,0

1c00931c <Add_Key>:
Add_Key():
1c00931c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009320:	29807061 	st.w	$r1,$r3,28(0x1c)
1c009324:	29806076 	st.w	$r22,$r3,24(0x18)
1c009328:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00932c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009330:	0280f58c 	addi.w	$r12,$r12,61(0x3d)
1c009334:	2a00018c 	ld.bu	$r12,$r12,0
1c009338:	40031580 	beqz	$r12,788(0x314) # 1c00964c <Add_Key+0x330>
1c00933c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009340:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009344:	2a00018d 	ld.bu	$r13,$r12,0
1c009348:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00934c:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c009478 <Add_Key+0x15c>
1c009350:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009354:	28b2e18c 	ld.w	$r12,$r12,-840(0xcb8)
1c009358:	2880018d 	ld.w	$r13,$r12,0
1c00935c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009360:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c0093e0 <Add_Key+0xc4>
1c009364:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009368:	28b2d18c 	ld.w	$r12,$r12,-844(0xcb4)
1c00936c:	2880018d 	ld.w	$r13,$r12,0
1c009370:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009374:	001c31ad 	mul.w	$r13,$r13,$r12
1c009378:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00937c:	28b2818c 	ld.w	$r12,$r12,-864(0xca0)
1c009380:	2980018d 	st.w	$r13,$r12,0
1c009384:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009388:	02bf958c 	addi.w	$r12,$r12,-27(0xfe5)
1c00938c:	2a00018d 	ld.bu	$r13,$r12,0
1c009390:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009394:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009398:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0093a0 <Add_Key+0x84>
1c00939c:	002a0007 	break	0x7
1c0093a0:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0093a4:	0015018d 	move	$r13,$r12
1c0093a8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093ac:	28b1c18c 	ld.w	$r12,$r12,-912(0xc70)
1c0093b0:	2880018c 	ld.w	$r12,$r12,0
1c0093b4:	001031ad 	add.w	$r13,$r13,$r12
1c0093b8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093bc:	28b1818c 	ld.w	$r12,$r12,-928(0xc60)
1c0093c0:	2980018d 	st.w	$r13,$r12,0
1c0093c4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093c8:	28b1118c 	ld.w	$r12,$r12,-956(0xc44)
1c0093cc:	2880018c 	ld.w	$r12,$r12,0
1c0093d0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0093d4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093d8:	28b0d18c 	ld.w	$r12,$r12,-972(0xc34)
1c0093dc:	2980018d 	st.w	$r13,$r12,0
1c0093e0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093e4:	28b0e18c 	ld.w	$r12,$r12,-968(0xc38)
1c0093e8:	2880018c 	ld.w	$r12,$r12,0
1c0093ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0093f0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093f4:	28b0618c 	ld.w	$r12,$r12,-1000(0xc18)
1c0093f8:	2880018c 	ld.w	$r12,$r12,0
1c0093fc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009400:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009404:	50006c00 	b	108(0x6c) # 1c009470 <Add_Key+0x154>
1c009408:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c00940c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009410:	0020b5cc 	mod.w	$r12,$r14,$r13
1c009414:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00941c <Add_Key+0x100>
1c009418:	002a0007 	break	0x7
1c00941c:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c009420:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009424:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009428:	002035cc 	div.w	$r12,$r14,$r13
1c00942c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009434 <Add_Key+0x118>
1c009430:	002a0007 	break	0x7
1c009434:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00943c:	00408d8c 	slli.w	$r12,$r12,0x3
1c009440:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009444:	0015018d 	move	$r13,$r12
1c009448:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c00944c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009450:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009454:	00150186 	move	$r6,$r12
1c009458:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00945c:	001501a4 	move	$r4,$r13
1c009460:	57c757ff 	bl	-14508(0xfffc754) # 1c005bb4 <OLED_ShowNum>
1c009464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009468:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00946c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009470:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009474:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c009408 <Add_Key+0xec>
1c009478:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00947c:	02bbc58c 	addi.w	$r12,$r12,-271(0xef1)
1c009480:	2a00018d 	ld.bu	$r13,$r12,0
1c009484:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009488:	5c0155ac 	bne	$r13,$r12,340(0x154) # 1c0095dc <Add_Key+0x2c0>
1c00948c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009490:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009494:	50004400 	b	68(0x44) # 1c0094d8 <Add_Key+0x1bc>
1c009498:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00949c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0094a0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c0094a4:	029711ad 	addi.w	$r13,$r13,1476(0x5c4)
1c0094a8:	0040898c 	slli.w	$r12,$r12,0x2
1c0094ac:	001031ac 	add.w	$r12,$r13,$r12
1c0094b0:	2880018d 	ld.w	$r13,$r12,0
1c0094b4:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c0094b8:	0296c1ce 	addi.w	$r14,$r14,1456(0x5b0)
1c0094bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094c0:	0040898c 	slli.w	$r12,$r12,0x2
1c0094c4:	001031cc 	add.w	$r12,$r14,$r12
1c0094c8:	2980018d 	st.w	$r13,$r12,0
1c0094cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094d0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0094d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0094d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094dc:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c009498 <Add_Key+0x17c>
1c0094e0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094e4:	28ace18c 	ld.w	$r12,$r12,-1224(0xb38)
1c0094e8:	2880018d 	ld.w	$r13,$r12,0
1c0094ec:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094f0:	0295e18c 	addi.w	$r12,$r12,1400(0x578)
1c0094f4:	2980018d 	st.w	$r13,$r12,0
1c0094f8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094fc:	28ac818c 	ld.w	$r12,$r12,-1248(0xb20)
1c009500:	29800180 	st.w	$r0,$r12,0
1c009504:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009508:	28ac118c 	ld.w	$r12,$r12,-1276(0xb04)
1c00950c:	29800180 	st.w	$r0,$r12,0
1c009510:	57ba57ff 	bl	-17836(0xfffba54) # 1c004f64 <Buzzer>
1c009514:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c009518:	57e4efff 	bl	-6932(0xfffe4ec) # 1c007a04 <interface_display>
1c00951c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009520:	03bf918c 	ori	$r12,$r12,0xfe4
1c009524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009528:	50008400 	b	132(0x84) # 1c0095ac <Add_Key+0x290>
1c00952c:	03400000 	andi	$r0,$r0,0x0
1c009530:	03400000 	andi	$r0,$r0,0x0
1c009534:	03400000 	andi	$r0,$r0,0x0
1c009538:	03400000 	andi	$r0,$r0,0x0
1c00953c:	03400000 	andi	$r0,$r0,0x0
1c009540:	03400000 	andi	$r0,$r0,0x0
1c009544:	03400000 	andi	$r0,$r0,0x0
1c009548:	03400000 	andi	$r0,$r0,0x0
1c00954c:	03400000 	andi	$r0,$r0,0x0
1c009550:	03400000 	andi	$r0,$r0,0x0
1c009554:	03400000 	andi	$r0,$r0,0x0
1c009558:	03400000 	andi	$r0,$r0,0x0
1c00955c:	03400000 	andi	$r0,$r0,0x0
1c009560:	03400000 	andi	$r0,$r0,0x0
1c009564:	03400000 	andi	$r0,$r0,0x0
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
1c0095ac:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0095b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0095b4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0095b8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00952c <Add_Key+0x210>
1c0095bc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0095c0:	0293458c 	addi.w	$r12,$r12,1233(0x4d1)
1c0095c4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0095c8:	2900018d 	st.b	$r13,$r12,0
1c0095cc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0095d0:	0293018c 	addi.w	$r12,$r12,1216(0x4c0)
1c0095d4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0095d8:	2900018d 	st.b	$r13,$r12,0
1c0095dc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0095e0:	02b6358c 	addi.w	$r12,$r12,-627(0xd8d)
1c0095e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0095e8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0095ec:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00964c <Add_Key+0x330>
1c0095f0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0095f4:	28a8a18c 	ld.w	$r12,$r12,-1496(0xa28)
1c0095f8:	29800180 	st.w	$r0,$r12,0
1c0095fc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009600:	28a8318c 	ld.w	$r12,$r12,-1524(0xa0c)
1c009604:	29800180 	st.w	$r0,$r12,0
1c009608:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00960c:	50003400 	b	52(0x34) # 1c009640 <Add_Key+0x324>
1c009610:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009614:	00408d8c 	slli.w	$r12,$r12,0x3
1c009618:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c00961c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009620:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009624:	02aec0c6 	addi.w	$r6,$r6,-1104(0xbb0)
1c009628:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00962c:	00150184 	move	$r4,$r12
1c009630:	57bf1bff 	bl	-16616(0xfffbf18) # 1c005548 <OLED_ShowStr>
1c009634:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009638:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00963c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009640:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009644:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009648:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009610 <Add_Key+0x2f4>
1c00964c:	03400000 	andi	$r0,$r0,0x0
1c009650:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c009654:	28806076 	ld.w	$r22,$r3,24(0x18)
1c009658:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00965c:	4c000020 	jirl	$r0,$r1,0

1c009660 <Delete_key>:
Delete_key():
1c009660:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009664:	29807076 	st.w	$r22,$r3,28(0x1c)
1c009668:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00966c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009670:	50002800 	b	40(0x28) # 1c009698 <Delete_key+0x38>
1c009674:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c009678:	028fc1ad 	addi.w	$r13,$r13,1008(0x3f0)
1c00967c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009680:	0040898c 	slli.w	$r12,$r12,0x2
1c009684:	001031ac 	add.w	$r12,$r13,$r12
1c009688:	29800180 	st.w	$r0,$r12,0
1c00968c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009690:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009694:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009698:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00969c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0096a0:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c009674 <Delete_key+0x14>
1c0096a4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0096a8:	03bf918c 	ori	$r12,$r12,0xfe4
1c0096ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0096b0:	50008400 	b	132(0x84) # 1c009734 <Delete_key+0xd4>
1c0096b4:	03400000 	andi	$r0,$r0,0x0
1c0096b8:	03400000 	andi	$r0,$r0,0x0
1c0096bc:	03400000 	andi	$r0,$r0,0x0
1c0096c0:	03400000 	andi	$r0,$r0,0x0
1c0096c4:	03400000 	andi	$r0,$r0,0x0
1c0096c8:	03400000 	andi	$r0,$r0,0x0
1c0096cc:	03400000 	andi	$r0,$r0,0x0
1c0096d0:	03400000 	andi	$r0,$r0,0x0
1c0096d4:	03400000 	andi	$r0,$r0,0x0
1c0096d8:	03400000 	andi	$r0,$r0,0x0
1c0096dc:	03400000 	andi	$r0,$r0,0x0
1c0096e0:	03400000 	andi	$r0,$r0,0x0
1c0096e4:	03400000 	andi	$r0,$r0,0x0
1c0096e8:	03400000 	andi	$r0,$r0,0x0
1c0096ec:	03400000 	andi	$r0,$r0,0x0
1c0096f0:	03400000 	andi	$r0,$r0,0x0
1c0096f4:	03400000 	andi	$r0,$r0,0x0
1c0096f8:	03400000 	andi	$r0,$r0,0x0
1c0096fc:	03400000 	andi	$r0,$r0,0x0
1c009700:	03400000 	andi	$r0,$r0,0x0
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
1c009734:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009738:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00973c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c009740:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0096b4 <Delete_key+0x54>
1c009744:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009748:	028d258c 	addi.w	$r12,$r12,841(0x349)
1c00974c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c009750:	2900018d 	st.b	$r13,$r12,0
1c009754:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009758:	028ce18c 	addi.w	$r12,$r12,824(0x338)
1c00975c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c009760:	2900018d 	st.b	$r13,$r12,0
1c009764:	03400000 	andi	$r0,$r0,0x0
1c009768:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00976c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c009770:	4c000020 	jirl	$r0,$r1,0

1c009774 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c009774:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009778:	29803061 	st.w	$r1,$r3,12(0xc)
1c00977c:	29802076 	st.w	$r22,$r3,8(0x8)
1c009780:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009784:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009788:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c00978c:	02805005 	addi.w	$r5,$r0,20(0x14)
1c009790:	1c000044 	pcaddu12i	$r4,2(0x2)
1c009794:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c009798:	577c1fff 	bl	-33764(0xfff7c1c) # 1c0013b4 <myprintf>
1c00979c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0097a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0097a4:	03808184 	ori	$r4,$r12,0x20
1c0097a8:	5779c7ff 	bl	-34364(0xfff79c4) # 1c00116c <EXTI_ClearITPendingBit>
1c0097ac:	03400000 	andi	$r0,$r0,0x0
1c0097b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0097b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0097b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0097bc:	4c000020 	jirl	$r0,$r1,0

1c0097c0 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0097c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0097c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0097c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0097cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0097d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0097d4:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c0097d8:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0097dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0097e0:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c0097e4:	577bd3ff 	bl	-33840(0xfff7bd0) # 1c0013b4 <myprintf>
1c0097e8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0097ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0097f0:	03808184 	ori	$r4,$r12,0x20
1c0097f4:	57797bff 	bl	-34440(0xfff7978) # 1c00116c <EXTI_ClearITPendingBit>
1c0097f8:	03400000 	andi	$r0,$r0,0x0
1c0097fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009800:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009804:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009808:	4c000020 	jirl	$r0,$r1,0

1c00980c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00980c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009810:	29803061 	st.w	$r1,$r3,12(0xc)
1c009814:	29802076 	st.w	$r22,$r3,8(0x8)
1c009818:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00981c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009820:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c009824:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c009828:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00982c:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c009830:	577b87ff 	bl	-33916(0xfff7b84) # 1c0013b4 <myprintf>
1c009834:	02801005 	addi.w	$r5,$r0,4(0x4)
1c009838:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00983c:	03808184 	ori	$r4,$r12,0x20
1c009840:	57792fff 	bl	-34516(0xfff792c) # 1c00116c <EXTI_ClearITPendingBit>
1c009844:	03400000 	andi	$r0,$r0,0x0
1c009848:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00984c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009850:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009854:	4c000020 	jirl	$r0,$r1,0

1c009858 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c009858:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00985c:	29803061 	st.w	$r1,$r3,12(0xc)
1c009860:	29802076 	st.w	$r22,$r3,8(0x8)
1c009864:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009868:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00986c:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c009870:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c009874:	1c000044 	pcaddu12i	$r4,2(0x2)
1c009878:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c00987c:	577b3bff 	bl	-33992(0xfff7b38) # 1c0013b4 <myprintf>
1c009880:	02802005 	addi.w	$r5,$r0,8(0x8)
1c009884:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009888:	03808184 	ori	$r4,$r12,0x20
1c00988c:	5778e3ff 	bl	-34592(0xfff78e0) # 1c00116c <EXTI_ClearITPendingBit>
1c009890:	03400000 	andi	$r0,$r0,0x0
1c009894:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009898:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00989c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0098a0:	4c000020 	jirl	$r0,$r1,0

1c0098a4 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0098a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0098a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0098ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0098b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0098b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0098b8:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c0098bc:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0098c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0098c4:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c0098c8:	577aefff 	bl	-34068(0xfff7aec) # 1c0013b4 <myprintf>
1c0098cc:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0098d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0098d4:	03808184 	ori	$r4,$r12,0x20
1c0098d8:	577897ff 	bl	-34668(0xfff7894) # 1c00116c <EXTI_ClearITPendingBit>
1c0098dc:	03400000 	andi	$r0,$r0,0x0
1c0098e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0098e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0098e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0098ec:	4c000020 	jirl	$r0,$r1,0

1c0098f0 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0098f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0098f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0098f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0098fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009900:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009904:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c009908:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c00990c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c009910:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c009914:	577aa3ff 	bl	-34144(0xfff7aa0) # 1c0013b4 <myprintf>
1c009918:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00991c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009920:	03808184 	ori	$r4,$r12,0x20
1c009924:	57784bff 	bl	-34744(0xfff7848) # 1c00116c <EXTI_ClearITPendingBit>
1c009928:	03400000 	andi	$r0,$r0,0x0
1c00992c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009930:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009934:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009938:	4c000020 	jirl	$r0,$r1,0

1c00993c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00993c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009940:	29803061 	st.w	$r1,$r3,12(0xc)
1c009944:	29802076 	st.w	$r22,$r3,8(0x8)
1c009948:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00994c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009950:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c009954:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c009958:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00995c:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c009960:	577a57ff 	bl	-34220(0xfff7a54) # 1c0013b4 <myprintf>
1c009964:	02810005 	addi.w	$r5,$r0,64(0x40)
1c009968:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00996c:	03808184 	ori	$r4,$r12,0x20
1c009970:	5777ffff 	bl	-34820(0xfff77fc) # 1c00116c <EXTI_ClearITPendingBit>
1c009974:	03400000 	andi	$r0,$r0,0x0
1c009978:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00997c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009980:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009984:	4c000020 	jirl	$r0,$r1,0

1c009988 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c009988:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00998c:	29803061 	st.w	$r1,$r3,12(0xc)
1c009990:	29802076 	st.w	$r22,$r3,8(0x8)
1c009994:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009998:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00999c:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c0099a0:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c0099a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0099a8:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c0099ac:	577a0bff 	bl	-34296(0xfff7a08) # 1c0013b4 <myprintf>
1c0099b0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0099b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0099b8:	03808184 	ori	$r4,$r12,0x20
1c0099bc:	5777b3ff 	bl	-34896(0xfff77b0) # 1c00116c <EXTI_ClearITPendingBit>
1c0099c0:	03400000 	andi	$r0,$r0,0x0
1c0099c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0099c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0099cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0099d0:	4c000020 	jirl	$r0,$r1,0

1c0099d4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0099d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0099d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0099dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0099e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0099e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0099e8:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c0099ec:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0099f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0099f4:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c0099f8:	5779bfff 	bl	-34372(0xfff79bc) # 1c0013b4 <myprintf>
1c0099fc:	02840005 	addi.w	$r5,$r0,256(0x100)
1c009a00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009a04:	03808184 	ori	$r4,$r12,0x20
1c009a08:	577767ff 	bl	-34972(0xfff7764) # 1c00116c <EXTI_ClearITPendingBit>
1c009a0c:	03400000 	andi	$r0,$r0,0x0
1c009a10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009a14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009a18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009a1c:	4c000020 	jirl	$r0,$r1,0

1c009a20 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c009a20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009a24:	29803061 	st.w	$r1,$r3,12(0xc)
1c009a28:	29802076 	st.w	$r22,$r3,8(0x8)
1c009a2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009a30:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009a34:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c009a38:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c009a3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009a40:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c009a44:	577973ff 	bl	-34448(0xfff7970) # 1c0013b4 <myprintf>
1c009a48:	02880005 	addi.w	$r5,$r0,512(0x200)
1c009a4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009a50:	03808184 	ori	$r4,$r12,0x20
1c009a54:	57771bff 	bl	-35048(0xfff7718) # 1c00116c <EXTI_ClearITPendingBit>
1c009a58:	03400000 	andi	$r0,$r0,0x0
1c009a5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009a60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009a64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009a68:	4c000020 	jirl	$r0,$r1,0

1c009a6c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c009a6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009a70:	29803061 	st.w	$r1,$r3,12(0xc)
1c009a74:	29802076 	st.w	$r22,$r3,8(0x8)
1c009a78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009a7c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009a80:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c009a84:	02812405 	addi.w	$r5,$r0,73(0x49)
1c009a88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009a8c:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c009a90:	577927ff 	bl	-34524(0xfff7924) # 1c0013b4 <myprintf>
1c009a94:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c009a98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009a9c:	03808184 	ori	$r4,$r12,0x20
1c009aa0:	5776cfff 	bl	-35124(0xfff76cc) # 1c00116c <EXTI_ClearITPendingBit>
1c009aa4:	03400000 	andi	$r0,$r0,0x0
1c009aa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009aac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009ab0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009ab4:	4c000020 	jirl	$r0,$r1,0

1c009ab8 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c009ab8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009abc:	29803061 	st.w	$r1,$r3,12(0xc)
1c009ac0:	29802076 	st.w	$r22,$r3,8(0x8)
1c009ac4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009ac8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009acc:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c009ad0:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c009ad4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009ad8:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c009adc:	5778dbff 	bl	-34600(0xfff78d8) # 1c0013b4 <myprintf>
1c009ae0:	03a00005 	ori	$r5,$r0,0x800
1c009ae4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009ae8:	03808184 	ori	$r4,$r12,0x20
1c009aec:	577683ff 	bl	-35200(0xfff7680) # 1c00116c <EXTI_ClearITPendingBit>
1c009af0:	03400000 	andi	$r0,$r0,0x0
1c009af4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009af8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009afc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009b00:	4c000020 	jirl	$r0,$r1,0

1c009b04 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c009b04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009b08:	29803061 	st.w	$r1,$r3,12(0xc)
1c009b0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c009b10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009b14:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009b18:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c009b1c:	02815005 	addi.w	$r5,$r0,84(0x54)
1c009b20:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009b24:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c009b28:	57788fff 	bl	-34676(0xfff788c) # 1c0013b4 <myprintf>
1c009b2c:	14000025 	lu12i.w	$r5,1(0x1)
1c009b30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009b34:	03808184 	ori	$r4,$r12,0x20
1c009b38:	577637ff 	bl	-35276(0xfff7634) # 1c00116c <EXTI_ClearITPendingBit>
1c009b3c:	03400000 	andi	$r0,$r0,0x0
1c009b40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009b44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009b48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009b4c:	4c000020 	jirl	$r0,$r1,0

1c009b50 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c009b50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009b54:	29803061 	st.w	$r1,$r3,12(0xc)
1c009b58:	29802076 	st.w	$r22,$r3,8(0x8)
1c009b5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009b60:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009b64:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c009b68:	02816405 	addi.w	$r5,$r0,89(0x59)
1c009b6c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009b70:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c009b74:	577843ff 	bl	-34752(0xfff7840) # 1c0013b4 <myprintf>
1c009b78:	14000045 	lu12i.w	$r5,2(0x2)
1c009b7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009b80:	03808184 	ori	$r4,$r12,0x20
1c009b84:	5775ebff 	bl	-35352(0xfff75e8) # 1c00116c <EXTI_ClearITPendingBit>
1c009b88:	03400000 	andi	$r0,$r0,0x0
1c009b8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009b90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009b94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009b98:	4c000020 	jirl	$r0,$r1,0

1c009b9c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c009b9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009ba0:	29803061 	st.w	$r1,$r3,12(0xc)
1c009ba4:	29802076 	st.w	$r22,$r3,8(0x8)
1c009ba8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009bac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009bb0:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c009bb4:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c009bb8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009bbc:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c009bc0:	5777f7ff 	bl	-34828(0xfff77f4) # 1c0013b4 <myprintf>
1c009bc4:	14000085 	lu12i.w	$r5,4(0x4)
1c009bc8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009bcc:	03808184 	ori	$r4,$r12,0x20
1c009bd0:	57759fff 	bl	-35428(0xfff759c) # 1c00116c <EXTI_ClearITPendingBit>
1c009bd4:	03400000 	andi	$r0,$r0,0x0
1c009bd8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009bdc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009be0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009be4:	4c000020 	jirl	$r0,$r1,0

1c009be8 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c009be8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009bec:	29803061 	st.w	$r1,$r3,12(0xc)
1c009bf0:	29802076 	st.w	$r22,$r3,8(0x8)
1c009bf4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009bf8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009bfc:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c009c00:	02819405 	addi.w	$r5,$r0,101(0x65)
1c009c04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009c08:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c009c0c:	5777abff 	bl	-34904(0xfff77a8) # 1c0013b4 <myprintf>
1c009c10:	14000105 	lu12i.w	$r5,8(0x8)
1c009c14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009c18:	03808184 	ori	$r4,$r12,0x20
1c009c1c:	577553ff 	bl	-35504(0xfff7550) # 1c00116c <EXTI_ClearITPendingBit>
1c009c20:	03400000 	andi	$r0,$r0,0x0
1c009c24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009c28:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009c2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009c30:	4c000020 	jirl	$r0,$r1,0

1c009c34 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c009c34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009c38:	29803061 	st.w	$r1,$r3,12(0xc)
1c009c3c:	29802076 	st.w	$r22,$r3,8(0x8)
1c009c40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009c44:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009c48:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c009c4c:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c009c50:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009c54:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c009c58:	57775fff 	bl	-34980(0xfff775c) # 1c0013b4 <myprintf>
1c009c5c:	14000205 	lu12i.w	$r5,16(0x10)
1c009c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009c64:	03808184 	ori	$r4,$r12,0x20
1c009c68:	577507ff 	bl	-35580(0xfff7504) # 1c00116c <EXTI_ClearITPendingBit>
1c009c6c:	03400000 	andi	$r0,$r0,0x0
1c009c70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009c74:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009c78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009c7c:	4c000020 	jirl	$r0,$r1,0

1c009c80 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c009c80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009c84:	29803061 	st.w	$r1,$r3,12(0xc)
1c009c88:	29802076 	st.w	$r22,$r3,8(0x8)
1c009c8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009c90:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009c94:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c009c98:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c009c9c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009ca0:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c009ca4:	577713ff 	bl	-35056(0xfff7710) # 1c0013b4 <myprintf>
1c009ca8:	14000405 	lu12i.w	$r5,32(0x20)
1c009cac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009cb0:	03808184 	ori	$r4,$r12,0x20
1c009cb4:	5774bbff 	bl	-35656(0xfff74b8) # 1c00116c <EXTI_ClearITPendingBit>
1c009cb8:	03400000 	andi	$r0,$r0,0x0
1c009cbc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009cc0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009cc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009cc8:	4c000020 	jirl	$r0,$r1,0

1c009ccc <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c009ccc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009cd0:	29803061 	st.w	$r1,$r3,12(0xc)
1c009cd4:	29802076 	st.w	$r22,$r3,8(0x8)
1c009cd8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009cdc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009ce0:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c009ce4:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c009ce8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009cec:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c009cf0:	5776c7ff 	bl	-35132(0xfff76c4) # 1c0013b4 <myprintf>
1c009cf4:	14000805 	lu12i.w	$r5,64(0x40)
1c009cf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009cfc:	03808184 	ori	$r4,$r12,0x20
1c009d00:	57746fff 	bl	-35732(0xfff746c) # 1c00116c <EXTI_ClearITPendingBit>
1c009d04:	03400000 	andi	$r0,$r0,0x0
1c009d08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009d0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009d10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009d14:	4c000020 	jirl	$r0,$r1,0

1c009d18 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c009d18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009d1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c009d20:	29802076 	st.w	$r22,$r3,8(0x8)
1c009d24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009d28:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009d2c:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c009d30:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c009d34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009d38:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c009d3c:	57767bff 	bl	-35208(0xfff7678) # 1c0013b4 <myprintf>
1c009d40:	14001005 	lu12i.w	$r5,128(0x80)
1c009d44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009d48:	03808184 	ori	$r4,$r12,0x20
1c009d4c:	577423ff 	bl	-35808(0xfff7420) # 1c00116c <EXTI_ClearITPendingBit>
1c009d50:	03400000 	andi	$r0,$r0,0x0
1c009d54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009d58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009d5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009d60:	4c000020 	jirl	$r0,$r1,0

1c009d64 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c009d64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009d68:	29803061 	st.w	$r1,$r3,12(0xc)
1c009d6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c009d70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009d74:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009d78:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c009d7c:	02821005 	addi.w	$r5,$r0,132(0x84)
1c009d80:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009d84:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c009d88:	57762fff 	bl	-35284(0xfff762c) # 1c0013b4 <myprintf>
1c009d8c:	14002005 	lu12i.w	$r5,256(0x100)
1c009d90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009d94:	03808184 	ori	$r4,$r12,0x20
1c009d98:	5773d7ff 	bl	-35884(0xfff73d4) # 1c00116c <EXTI_ClearITPendingBit>
1c009d9c:	03400000 	andi	$r0,$r0,0x0
1c009da0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009da4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009da8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009dac:	4c000020 	jirl	$r0,$r1,0

1c009db0 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c009db0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009db4:	29803061 	st.w	$r1,$r3,12(0xc)
1c009db8:	29802076 	st.w	$r22,$r3,8(0x8)
1c009dbc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009dc0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009dc4:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c009dc8:	02822405 	addi.w	$r5,$r0,137(0x89)
1c009dcc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009dd0:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c009dd4:	5775e3ff 	bl	-35360(0xfff75e0) # 1c0013b4 <myprintf>
1c009dd8:	14004005 	lu12i.w	$r5,512(0x200)
1c009ddc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009de0:	03808184 	ori	$r4,$r12,0x20
1c009de4:	57738bff 	bl	-35960(0xfff7388) # 1c00116c <EXTI_ClearITPendingBit>
1c009de8:	03400000 	andi	$r0,$r0,0x0
1c009dec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009df0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009df4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009df8:	4c000020 	jirl	$r0,$r1,0

1c009dfc <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c009dfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009e00:	29803061 	st.w	$r1,$r3,12(0xc)
1c009e04:	29802076 	st.w	$r22,$r3,8(0x8)
1c009e08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009e0c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009e10:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c009e14:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c009e18:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009e1c:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c009e20:	577597ff 	bl	-35436(0xfff7594) # 1c0013b4 <myprintf>
1c009e24:	14008005 	lu12i.w	$r5,1024(0x400)
1c009e28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009e2c:	03808184 	ori	$r4,$r12,0x20
1c009e30:	57733fff 	bl	-36036(0xfff733c) # 1c00116c <EXTI_ClearITPendingBit>
1c009e34:	03400000 	andi	$r0,$r0,0x0
1c009e38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009e3c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009e40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009e44:	4c000020 	jirl	$r0,$r1,0

1c009e48 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c009e48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009e4c:	29803061 	st.w	$r1,$r3,12(0xc)
1c009e50:	29802076 	st.w	$r22,$r3,8(0x8)
1c009e54:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009e58:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009e5c:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c009e60:	02825005 	addi.w	$r5,$r0,148(0x94)
1c009e64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009e68:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c009e6c:	57754bff 	bl	-35512(0xfff7548) # 1c0013b4 <myprintf>
1c009e70:	14010005 	lu12i.w	$r5,2048(0x800)
1c009e74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009e78:	03808184 	ori	$r4,$r12,0x20
1c009e7c:	5772f3ff 	bl	-36112(0xfff72f0) # 1c00116c <EXTI_ClearITPendingBit>
1c009e80:	03400000 	andi	$r0,$r0,0x0
1c009e84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009e88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009e8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009e90:	4c000020 	jirl	$r0,$r1,0

1c009e94 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c009e94:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009e98:	29803061 	st.w	$r1,$r3,12(0xc)
1c009e9c:	29802076 	st.w	$r22,$r3,8(0x8)
1c009ea0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009ea4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009ea8:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c009eac:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c009eb0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009eb4:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c009eb8:	5774ffff 	bl	-35588(0xfff74fc) # 1c0013b4 <myprintf>
1c009ebc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c009ec0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009ec4:	03808184 	ori	$r4,$r12,0x20
1c009ec8:	5772a7ff 	bl	-36188(0xfff72a4) # 1c00116c <EXTI_ClearITPendingBit>
1c009ecc:	03400000 	andi	$r0,$r0,0x0
1c009ed0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009ed4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009ed8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009edc:	4c000020 	jirl	$r0,$r1,0

1c009ee0 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c009ee0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009ee4:	29803061 	st.w	$r1,$r3,12(0xc)
1c009ee8:	29802076 	st.w	$r22,$r3,8(0x8)
1c009eec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009ef0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009ef4:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c009ef8:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c009efc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009f00:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c009f04:	5774b3ff 	bl	-35664(0xfff74b0) # 1c0013b4 <myprintf>
1c009f08:	14040005 	lu12i.w	$r5,8192(0x2000)
1c009f0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009f10:	03808184 	ori	$r4,$r12,0x20
1c009f14:	57725bff 	bl	-36264(0xfff7258) # 1c00116c <EXTI_ClearITPendingBit>
1c009f18:	03400000 	andi	$r0,$r0,0x0
1c009f1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009f20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009f24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009f28:	4c000020 	jirl	$r0,$r1,0

1c009f2c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c009f2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009f30:	29803061 	st.w	$r1,$r3,12(0xc)
1c009f34:	29802076 	st.w	$r22,$r3,8(0x8)
1c009f38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009f3c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009f40:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c009f44:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c009f48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009f4c:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c009f50:	577467ff 	bl	-35740(0xfff7464) # 1c0013b4 <myprintf>
1c009f54:	14080005 	lu12i.w	$r5,16384(0x4000)
1c009f58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009f5c:	03808184 	ori	$r4,$r12,0x20
1c009f60:	57720fff 	bl	-36340(0xfff720c) # 1c00116c <EXTI_ClearITPendingBit>
1c009f64:	03400000 	andi	$r0,$r0,0x0
1c009f68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009f6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009f70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009f74:	4c000020 	jirl	$r0,$r1,0

1c009f78 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c009f78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009f7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c009f80:	29802076 	st.w	$r22,$r3,8(0x8)
1c009f84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009f88:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009f8c:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c009f90:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c009f94:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009f98:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c009f9c:	57741bff 	bl	-35816(0xfff7418) # 1c0013b4 <myprintf>
1c009fa0:	14100005 	lu12i.w	$r5,32768(0x8000)
1c009fa4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009fa8:	03808184 	ori	$r4,$r12,0x20
1c009fac:	5771c3ff 	bl	-36416(0xfff71c0) # 1c00116c <EXTI_ClearITPendingBit>
1c009fb0:	03400000 	andi	$r0,$r0,0x0
1c009fb4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c009fb8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c009fbc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c009fc0:	4c000020 	jirl	$r0,$r1,0

1c009fc4 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c009fc4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c009fc8:	29803061 	st.w	$r1,$r3,12(0xc)
1c009fcc:	29802076 	st.w	$r22,$r3,8(0x8)
1c009fd0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c009fd4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c009fd8:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c009fdc:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c009fe0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c009fe4:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c009fe8:	5773cfff 	bl	-35892(0xfff73cc) # 1c0013b4 <myprintf>
1c009fec:	14200005 	lu12i.w	$r5,65536(0x10000)
1c009ff0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c009ff4:	03808184 	ori	$r4,$r12,0x20
1c009ff8:	577177ff 	bl	-36492(0xfff7174) # 1c00116c <EXTI_ClearITPendingBit>
1c009ffc:	03400000 	andi	$r0,$r0,0x0
1c00a000:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a004:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a008:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a00c:	4c000020 	jirl	$r0,$r1,0

1c00a010 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00a010:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a014:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a018:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a01c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a020:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a024:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c00a028:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c00a02c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a030:	02880084 	addi.w	$r4,$r4,512(0x200)
1c00a034:	577383ff 	bl	-35968(0xfff7380) # 1c0013b4 <myprintf>
1c00a038:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00a03c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a040:	03808184 	ori	$r4,$r12,0x20
1c00a044:	57712bff 	bl	-36568(0xfff7128) # 1c00116c <EXTI_ClearITPendingBit>
1c00a048:	03400000 	andi	$r0,$r0,0x0
1c00a04c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a050:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a054:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a058:	4c000020 	jirl	$r0,$r1,0

1c00a05c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00a05c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a060:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a064:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a068:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a06c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a070:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c00a074:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c00a078:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a07c:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c00a080:	577337ff 	bl	-36044(0xfff7334) # 1c0013b4 <myprintf>
1c00a084:	14800005 	lu12i.w	$r5,262144(0x40000)
1c00a088:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a08c:	03808184 	ori	$r4,$r12,0x20
1c00a090:	5770dfff 	bl	-36644(0xfff70dc) # 1c00116c <EXTI_ClearITPendingBit>
1c00a094:	03400000 	andi	$r0,$r0,0x0
1c00a098:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a09c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a0a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a0a4:	4c000020 	jirl	$r0,$r1,0

1c00a0a8 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c00a0a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a0ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a0b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a0b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a0b8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a0bc:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c00a0c0:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c00a0c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a0c8:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c00a0cc:	5772ebff 	bl	-36120(0xfff72e8) # 1c0013b4 <myprintf>
1c00a0d0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00a0d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a0d8:	03808184 	ori	$r4,$r12,0x20
1c00a0dc:	577093ff 	bl	-36720(0xfff7090) # 1c00116c <EXTI_ClearITPendingBit>
1c00a0e0:	03400000 	andi	$r0,$r0,0x0
1c00a0e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a0e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a0ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a0f0:	4c000020 	jirl	$r0,$r1,0

1c00a0f4 <ext_handler>:
ext_handler():
1c00a0f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a0f8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00a0fc:	29806076 	st.w	$r22,$r3,24(0x18)
1c00a100:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a104:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a108:	0380f18c 	ori	$r12,$r12,0x3c
1c00a10c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00a110:	2980018d 	st.w	$r13,$r12,0
1c00a114:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a118:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c00a11c:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c00a120:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a124:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c00a128:	57728fff 	bl	-36212(0xfff728c) # 1c0013b4 <myprintf>
1c00a12c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a130:	0380818c 	ori	$r12,$r12,0x20
1c00a134:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00a138:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00a13c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a140:	0380818c 	ori	$r12,$r12,0x20
1c00a144:	2880018c 	ld.w	$r12,$r12,0
1c00a148:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00a14c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00a150:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00a154:	0014b1ac 	and	$r12,$r13,$r12
1c00a158:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00a15c:	03400000 	andi	$r0,$r0,0x0
1c00a160:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00a164:	50004000 	b	64(0x40) # 1c00a1a4 <ext_handler+0xb0>
1c00a168:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00a16c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a170:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00a174:	0340058c 	andi	$r12,$r12,0x1
1c00a178:	40002180 	beqz	$r12,32(0x20) # 1c00a198 <ext_handler+0xa4>
1c00a17c:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00a180:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c00a184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a188:	0040898c 	slli.w	$r12,$r12,0x2
1c00a18c:	001031ac 	add.w	$r12,$r13,$r12
1c00a190:	2880018c 	ld.w	$r12,$r12,0
1c00a194:	4c000181 	jirl	$r1,$r12,0
1c00a198:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a19c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00a1a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a1a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00a1a8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00a1ac:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00a168 <ext_handler+0x74>
1c00a1b0:	03400000 	andi	$r0,$r0,0x0
1c00a1b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00a1b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00a1bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a1c0:	4c000020 	jirl	$r0,$r1,0

1c00a1c4 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00a1c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a1c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00a1cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c00a1d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a1d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a1d8:	0380f18c 	ori	$r12,$r12,0x3c
1c00a1dc:	1400020d 	lu12i.w	$r13,16(0x10)
1c00a1e0:	2980018d 	st.w	$r13,$r12,0
1c00a1e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a1e8:	0380118c 	ori	$r12,$r12,0x4
1c00a1ec:	2880018c 	ld.w	$r12,$r12,0
1c00a1f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a1f4:	577613ff 	bl	-35312(0xfff7610) # 1c001804 <WDG_DogFeed>
1c00a1f8:	03400000 	andi	$r0,$r0,0x0
1c00a1fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00a200:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00a204:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a208:	4c000020 	jirl	$r0,$r1,0

1c00a20c <TOUCH>:
TOUCH():
1c00a20c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a210:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00a214:	29806076 	st.w	$r22,$r3,24(0x18)
1c00a218:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a21c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00a220:	0380118c 	ori	$r12,$r12,0x4
1c00a224:	2880018c 	ld.w	$r12,$r12,0
1c00a228:	0044c18c 	srli.w	$r12,$r12,0x10
1c00a22c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00a230:	037ffd8c 	andi	$r12,$r12,0xfff
1c00a234:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00a238:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00a23c:	0380118c 	ori	$r12,$r12,0x4
1c00a240:	2880018c 	ld.w	$r12,$r12,0
1c00a244:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00a248:	03403d8c 	andi	$r12,$r12,0xf
1c00a24c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00a250:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a254:	0380f18c 	ori	$r12,$r12,0x3c
1c00a258:	1400040d 	lu12i.w	$r13,32(0x20)
1c00a25c:	2980018d 	st.w	$r13,$r12,0
1c00a260:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00a264:	0380118c 	ori	$r12,$r12,0x4
1c00a268:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00a26c:	2980018d 	st.w	$r13,$r12,0
1c00a270:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00a274:	00150185 	move	$r5,$r12
1c00a278:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a27c:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c00a280:	577137ff 	bl	-36556(0xfff7134) # 1c0013b4 <myprintf>
1c00a284:	03400000 	andi	$r0,$r0,0x0
1c00a288:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00a28c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00a290:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a294:	4c000020 	jirl	$r0,$r1,0

1c00a298 <UART2_INT>:
UART2_INT():
1c00a298:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a29c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00a2a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a2a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2a8:	0380f18c 	ori	$r12,$r12,0x3c
1c00a2ac:	1400080d 	lu12i.w	$r13,64(0x40)
1c00a2b0:	2980018d 	st.w	$r13,$r12,0
1c00a2b4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00a2b8:	0380098c 	ori	$r12,$r12,0x2
1c00a2bc:	2a00018c 	ld.bu	$r12,$r12,0
1c00a2c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00a2c4:	03400000 	andi	$r0,$r0,0x0
1c00a2c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00a2cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a2d0:	4c000020 	jirl	$r0,$r1,0

1c00a2d4 <BAT_FAIL>:
BAT_FAIL():
1c00a2d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a2d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00a2dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c00a2e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a2e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2e8:	0380118c 	ori	$r12,$r12,0x4
1c00a2ec:	2880018c 	ld.w	$r12,$r12,0
1c00a2f0:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00a2f4:	03407d8c 	andi	$r12,$r12,0x1f
1c00a2f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a2fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a300:	0380118c 	ori	$r12,$r12,0x4
1c00a304:	2880018e 	ld.w	$r14,$r12,0
1c00a308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a30c:	0380f18c 	ori	$r12,$r12,0x3c
1c00a310:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00a314:	0014b5cd 	and	$r13,$r14,$r13
1c00a318:	2980018d 	st.w	$r13,$r12,0
1c00a31c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00a320:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00a324:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00a394 <BAT_FAIL+0xc0>
1c00a328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a32c:	0040898d 	slli.w	$r13,$r12,0x2
1c00a330:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c00a334:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c00a338:	001031ac 	add.w	$r12,$r13,$r12
1c00a33c:	2880018c 	ld.w	$r12,$r12,0
1c00a340:	4c000180 	jirl	$r0,$r12,0
1c00a344:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a348:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c00a34c:	57706bff 	bl	-36760(0xfff7068) # 1c0013b4 <myprintf>
1c00a350:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a354:	0380118c 	ori	$r12,$r12,0x4
1c00a358:	29800180 	st.w	$r0,$r12,0
1c00a35c:	50003c00 	b	60(0x3c) # 1c00a398 <BAT_FAIL+0xc4>
1c00a360:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a364:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c00a368:	57704fff 	bl	-36788(0xfff704c) # 1c0013b4 <myprintf>
1c00a36c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a370:	0380118c 	ori	$r12,$r12,0x4
1c00a374:	2880018e 	ld.w	$r14,$r12,0
1c00a378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a37c:	0380118c 	ori	$r12,$r12,0x4
1c00a380:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00a384:	03bffdad 	ori	$r13,$r13,0xfff
1c00a388:	0014b5cd 	and	$r13,$r14,$r13
1c00a38c:	2980018d 	st.w	$r13,$r12,0
1c00a390:	50000800 	b	8(0x8) # 1c00a398 <BAT_FAIL+0xc4>
1c00a394:	03400000 	andi	$r0,$r0,0x0
1c00a398:	03400000 	andi	$r0,$r0,0x0
1c00a39c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00a3a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00a3a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a3a8:	4c000020 	jirl	$r0,$r1,0

1c00a3ac <INTC_Handler>:
INTC_Handler():
1c00a3ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a3b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00a3b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c00a3b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a3bc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00a3c0:	0380158c 	ori	$r12,$r12,0x5
1c00a3c4:	2a00018c 	ld.bu	$r12,$r12,0
1c00a3c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00a3cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00a3d0:	0340058c 	andi	$r12,$r12,0x1
1c00a3d4:	40002980 	beqz	$r12,40(0x28) # 1c00a3fc <INTC_Handler+0x50>
1c00a3d8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00a3dc:	57ae9bff 	bl	-20840(0xfffae98) # 1c005274 <TIM_GetITStatus>
1c00a3e0:	0015008c 	move	$r12,$r4
1c00a3e4:	40001980 	beqz	$r12,24(0x18) # 1c00a3fc <INTC_Handler+0x50>
1c00a3e8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00a3ec:	57aed7ff 	bl	-20780(0xfffaed4) # 1c0052c0 <TIM_ClearIT>
1c00a3f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a3f4:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c00a3f8:	576fbfff 	bl	-36932(0xfff6fbc) # 1c0013b4 <myprintf>
1c00a3fc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00a400:	0340118c 	andi	$r12,$r12,0x4
1c00a404:	40002d80 	beqz	$r12,44(0x2c) # 1c00a430 <INTC_Handler+0x84>
1c00a408:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00a40c:	2880018c 	ld.w	$r12,$r12,0
1c00a410:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00a414:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00a418:	00150184 	move	$r4,$r12
1c00a41c:	577b5bff 	bl	-33960(0xfff7b58) # 1c001f74 <my_recv_dat_int>
1c00a420:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00a424:	03800d8c 	ori	$r12,$r12,0x3
1c00a428:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00a42c:	2900018d 	st.b	$r13,$r12,0
1c00a430:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00a434:	0340218c 	andi	$r12,$r12,0x8
1c00a438:	40002d80 	beqz	$r12,44(0x2c) # 1c00a464 <INTC_Handler+0xb8>
1c00a43c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00a440:	2880018c 	ld.w	$r12,$r12,0
1c00a444:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00a448:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00a44c:	00150184 	move	$r4,$r12
1c00a450:	577b27ff 	bl	-34012(0xfff7b24) # 1c001f74 <my_recv_dat_int>
1c00a454:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00a458:	03800d8c 	ori	$r12,$r12,0x3
1c00a45c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00a460:	2900018d 	st.b	$r13,$r12,0
1c00a464:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00a468:	03800d8c 	ori	$r12,$r12,0x3
1c00a46c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00a470:	2900018d 	st.b	$r13,$r12,0
1c00a474:	03400000 	andi	$r0,$r0,0x0
1c00a478:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00a47c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00a480:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a484:	4c000020 	jirl	$r0,$r1,0

1c00a488 <TIMER_HANDLER>:
TIMER_HANDLER():
1c00a488:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a48c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a490:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a494:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a498:	576cb3ff 	bl	-37712(0xfff6cb0) # 1c001148 <Set_Timer_clear>
1c00a49c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a4a0:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c00a4a4:	576f13ff 	bl	-37104(0xfff6f10) # 1c0013b4 <myprintf>
1c00a4a8:	576c83ff 	bl	-37760(0xfff6c80) # 1c001128 <Set_Timer_stop>
1c00a4ac:	03400000 	andi	$r0,$r0,0x0
1c00a4b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a4b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a4b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a4bc:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c00a4c0 <F6x8-0x334>:
1c00a4c0:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c00a4c4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4c8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4cc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4d0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4d4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4d8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4dc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4e0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4e4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4e8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a4ec:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c00a4f0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a4f4:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a4f8:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a4fc:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a500:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a504:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a508:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a50c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a510:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00a514:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a518:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a51c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a520:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a524:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a528:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a52c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a530:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a534:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a538:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a53c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a540:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a544:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a548:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a54c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a550:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a554:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a558:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a55c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a560:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a564:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a568:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a56c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a570:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a574:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a578:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a57c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a580:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a584:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a588:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a58c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a590:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a594:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a598:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a59c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5a0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5a4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5a8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5ac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5b0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5b4:	1c001564 	pcaddu12i	$r4,171(0xab)
1c00a5b8:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c00a5bc:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c00a5c0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5c4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5c8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5cc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5d0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5d4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5d8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5dc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5e0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5e4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5e8:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c00a5ec:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00a5f0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5f4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a5f8:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c00a5fc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a600:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c00a604:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a608:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00a60c:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00a610:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a614:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c00a618:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c00a61c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a620:	00000000 	0x00000000
1c00a624:	befdca20 	0xbefdca20
1c00a628:	bdfcb0dd 	0xbdfcb0dd
1c00a62c:	b4d5cad3 	0xb4d5cad3
1c00a630:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00a634:	00000000 	0x00000000
1c00a638:	d0b8abb4 	0xd0b8abb4
1c00a63c:	cfc9f7c6 	0xcfc9f7c6
1c00a640:	d0d3bbc3 	0xd0d3bbc3
1c00a644:	b8d6d6ca 	0xb8d6d6ca
1c00a648:	00000000 	0x00000000
1c00a64c:	ebc8bcc2 	0xebc8bcc2
1c00a650:	c6ceb8d6 	0xc6ceb8d6
1c00a654:	f1cfbccd 	0xf1cfbccd
1c00a658:	dcb0a7ca 	0xdcb0a7ca
1c00a65c:	00000000 	0x00000000
1c00a660:	ceb8d620 	0xceb8d620
1c00a664:	b8abccc6 	0xb8abccc6
1c00a668:	ccf2bbc9 	0xccf2bbc9
1c00a66c:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c00a670:	00000000 	0x00000000
1c00a674:	ceb8d620 	0xceb8d620
1c00a678:	caabccc6 	0xcaabccc6
1c00a67c:	ccf2bbaa 	0xccf2bbaa
1c00a680:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c00a684:	00000000 	0x00000000
1c00a688:	b8d62020 	0xb8d62020
1c00a68c:	bccdc6ce 	0xbccdc6ce
1c00a690:	abccf1cf 	0xabccf1cf
1c00a694:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c00a698:	00000000 	0x00000000
1c00a69c:	ceb8d620 	0xceb8d620
1c00a6a0:	d5d8ccc6 	0xd5d8ccc6
1c00a6a4:	cce3b5f7 	0xcce3b5f7
1c00a6a8:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c00a6ac:	00000000 	0x00000000
1c00a6b0:	b8d62020 	0xb8d62020
1c00a6b4:	bbb2c6ce 	0xbbb2c6ce
1c00a6b8:	e4c5a5c6 	0xe4c5a5c6
1c00a6bc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a6c0:	00000000 	0x00000000
1c00a6c4:	d3bbc320 	0xd3bbc320
1c00a6c8:	cbd1cbd0 	0xcbd1cbd0
1c00a6cc:	d6bdb5f7 	0xd6bdb5f7
1c00a6d0:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c00a6d4:	00000000 	0x00000000
1c00a6d8:	cc202020 	0xcc202020
1c00a6dc:	baf7d5d8 	0xbaf7d5d8
1c00a6e0:	caa2b2cf 	0xcaa2b2cf
1c00a6e4:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00a6e8:	00000000 	0x00000000
1c00a6ec:	b7d6d8b5 	0xb7d6d8b5
1c00a6f0:	c5baf2d0 	0xc5baf2d0
1c00a6f4:	f6b3acb3 	0xf6b3acb3
1c00a6f8:	a7ceb6b7 	0xa7ceb6b7
1c00a6fc:	00000000 	0x00000000
1c00a700:	bec92020 	0xbec92020
1c00a704:	a3c4fdb3 	0xa3c4fdb3
1c00a708:	a7cae5b0 	0xa7cae5b0
1c00a70c:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c00a710:	00000000 	0x00000000
1c00a714:	bfe5c720 	0xbfe5c720
1c00a718:	ceb8d6d5 	0xceb8d6d5
1c00a71c:	cae2bfc6 	0xcae2bfc6
1c00a720:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00a724:	00000000 	0x00000000
1c00a728:	e5b3babb 	0xe5b3babb
1c00a72c:	dac4f8c7 	0xdac4f8c7
1c00a730:	d0d3dece 	0xd0d3dece
1c00a734:	bccda7d0 	0xbccda7d0
1c00a738:	00000000 	0x00000000
1c00a73c:	d0c1b620 	0xd0c1b620
1c00a740:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1f384 <_start-0x2e0c7c>
1c00a744:	f6b34853 	0xf6b34853
1c00a748:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c00a74c:	00000000 	0x00000000
1c00a750:	ce202020 	0xce202020
1c00a754:	d2a8b6b4 	0xd2a8b6b4
1c00a758:	ceedb4e5 	0xceedb4e5
1c00a75c:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c00a760:	00000000 	0x00000000
1c00a764:	dece2020 	0xdece2020
1c00a768:	c4bca7d0 	0xc4bca7d0
1c00a76c:	f7c6e6b4 	0xf7c6e6b4
1c00a770:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c00a774:	00000000 	0x00000000
1c00a778:	b4c4bc20 	0xb4c4bc20
1c00a77c:	c4f7c6e6 	0xc4f7c6e6
1c00a780:	b4ddc8da 	0xb4ddc8da
1c00a784:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00a788:	00000000 	0x00000000
1c00a78c:	cac7bc20 	0xcac7bc20
1c00a790:	d2beb1c2 	0xd2beb1c2
1c00a794:	b4ebc2b3 	0xb4ebc2b3
1c00a798:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00a79c:	00000000 	0x00000000
1c00a7a0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a7a4:	c6ceb8d6 	0xc6ceb8d6
1c00a7a8:	fac2e2bf 	0xfac2e2bf
1c00a7ac:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a7b0:	00000000 	0x00000000
1c00a7b4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a7b8:	b7d6d8b5 	0xb7d6d8b5
1c00a7bc:	f3ceedb4 	0xf3ceedb4
1c00a7c0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00a7c4:	00000000 	0x00000000
1c00a7c8:	bbb5b720 	0xbbb5b720
1c00a7cc:	c8b7c8d8 	0xc8b7c8d8
1c00a7d0:	d3ebc2cf 	0xd3ebc2cf
1c00a7d4:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c00a7d8:	00000000 	0x00000000
1c00a7dc:	003a4449 	0x003a4449
1c00a7e0:	1c002b84 	pcaddu12i	$r4,348(0x15c)
1c00a7e4:	1c002cc4 	pcaddu12i	$r4,358(0x166)
1c00a7e8:	1c002d78 	pcaddu12i	$r24,363(0x16b)
1c00a7ec:	1c002e5c 	pcaddu12i	$r28,370(0x172)
1c00a7f0:	1c002f30 	pcaddu12i	$r16,377(0x179)

1c00a7f4 <F6x8>:
	...
1c00a7fc:	00002f00 	ctz.d	$r0,$r24
1c00a800:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c00a804:	14000007 	lu12i.w	$r7,0
1c00a808:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c00a80c:	7f2a2400 	0x7f2a2400
1c00a810:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfea820 <_start-0x157e0>
1c00a814:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c00a818:	55493600 	bl	-134133452(0x8014934) # 1401f14c <_start-0x7fe0eb4>
1c00a81c:	00005022 	bitrev.w	$r2,$r1
1c00a820:	00000305 	0x00000305
1c00a824:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c00a828:	00000041 	0x00000041
1c00a82c:	001c2241 	mul.w	$r1,$r18,$r8
1c00a830:	3e081400 	0x3e081400
1c00a834:	08001408 	0x08001408
1c00a838:	08083e08 	0x08083e08
1c00a83c:	a0000000 	0xa0000000
1c00a840:	08000060 	0x08000060
1c00a844:	08080808 	0x08080808
1c00a848:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c010848 <_sidata+0x5150>
1c00a84c:	20000000 	ll.w	$r0,$r0,0
1c00a850:	02040810 	slti	$r16,$r0,258(0x102)
1c00a854:	49513e00 	0x49513e00
1c00a858:	00003e45 	revb.d	$r5,$r18
1c00a85c:	00407f42 	0x00407f42
1c00a860:	51614200 	b	-134127296(0x8016140) # 140209a0 <_start-0x7fdf660>
1c00a864:	21004649 	sc.w	$r9,$r18,68(0x44)
1c00a868:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c00a86c:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c00a870:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c00a874:	39454545 	0x39454545
1c00a878:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01f2b4 <_sidata+0x13bbc>
1c00a87c:	01003049 	0x01003049
1c00a880:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c00a884:	49493600 	0x49493600
1c00a888:	06003649 	cacop	0x9,$r18,13(0xd)
1c00a88c:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c00a890:	36360000 	0x36360000
1c00a894:	00000000 	0x00000000
1c00a898:	00003656 	revb.4h	$r22,$r18
1c00a89c:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c00a8a0:	14000041 	lu12i.w	$r1,2(0x2)
1c00a8a4:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c00a8a8:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c00a8ac:	02000814 	slti	$r20,$r0,2(0x2)
1c00a8b0:	06095101 	cacop	0x1,$r8,596(0x254)
1c00a8b4:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01f1e4 <_sidata+0x13aec>
1c00a8b8:	7c003e51 	0x7c003e51
1c00a8bc:	7c121112 	0x7c121112
1c00a8c0:	49497f00 	0x49497f00
1c00a8c4:	3e003649 	0x3e003649
1c00a8c8:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c00a8cc:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01ea48 <_sidata+0x13350>
1c00a8d0:	7f001c22 	0x7f001c22
1c00a8d4:	41494949 	beqz	$r10,2443592(0x254948) # 1c25f21c <_sidata+0x253b24>
1c00a8d8:	09097f00 	0x09097f00
1c00a8dc:	3e000109 	0x3e000109
1c00a8e0:	7a494941 	0x7a494941
1c00a8e4:	08087f00 	0x08087f00
1c00a8e8:	00007f08 	0x00007f08
1c00a8ec:	00417f41 	slli.d	$r1,$r26,0x1f
1c00a8f0:	41402000 	beqz	$r0,81952(0x14020) # 1c01e910 <_sidata+0x13218>
1c00a8f4:	7f00013f 	0x7f00013f
1c00a8f8:	41221408 	beqz	$r0,2171412(0x212214) # 1c21cb0c <_sidata+0x211414>
1c00a8fc:	40407f00 	beqz	$r24,16508(0x407c) # 1c00e978 <_sidata+0x3280>
1c00a900:	7f004040 	0x7f004040
1c00a904:	7f020c02 	0x7f020c02
1c00a908:	08047f00 	0x08047f00
1c00a90c:	3e007f10 	0x3e007f10
1c00a910:	3e414141 	0x3e414141
1c00a914:	09097f00 	0x09097f00
1c00a918:	3e000609 	0x3e000609
1c00a91c:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfeca6c <_start-0x13594>
1c00a920:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c00a924:	46004629 	bnez	$r17,2490436(0x260044) # 1c26a968 <_sidata+0x25f270>
1c00a928:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c00a92c:	7f010100 	0x7f010100
1c00a930:	3f000101 	0x3f000101
1c00a934:	3f404040 	0x3f404040
1c00a938:	40201f00 	beqz	$r24,8220(0x201c) # 1c00c954 <_sidata+0x125c>
1c00a93c:	3f001f20 	0x3f001f20
1c00a940:	3f403840 	0x3f403840
1c00a944:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c00a948:	07006314 	0x07006314
1c00a94c:	07087008 	0x07087008
1c00a950:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c01fab0 <_sidata+0x143b8>
1c00a954:	00004345 	revh.2w	$r5,$r26
1c00a958:	0041417f 	slli.d	$r31,$r11,0x10
1c00a95c:	552a5500 	bl	67185236(0x4012a54) # 2001d3b0 <_sidata+0x4011cb8>
1c00a960:	0000552a 	bitrev.d	$r10,$r9
1c00a964:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c00a968:	01020400 	0x01020400
1c00a96c:	40000402 	beqz	$r0,524292(0x80004) # 1c08a970 <_sidata+0x7f278>
1c00a970:	40404040 	beqz	$r2,16448(0x4040) # 1c00e9b0 <_sidata+0x32b8>
1c00a974:	02010000 	slti	$r0,$r0,64(0x40)
1c00a978:	20000004 	ll.w	$r4,$r0,0
1c00a97c:	78545454 	0x78545454
1c00a980:	44487f00 	bnez	$r24,18556(0x487c) # 1c00f1fc <_sidata+0x3b04>
1c00a984:	38003844 	ldx.b	$r4,$r2,$r14
1c00a988:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c00a98c:	44443800 	bnez	$r0,17464(0x4438) # 1c00edc4 <_sidata+0x36cc>
1c00a990:	38007f48 	ldx.b	$r8,$r26,$r31
1c00a994:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c00a998:	097e0800 	0x097e0800
1c00a99c:	18000201 	pcaddi	$r1,16(0x10)
1c00a9a0:	7ca4a4a4 	0x7ca4a4a4
1c00a9a4:	04087f00 	csrxchg	$r0,$r24,0x21f
1c00a9a8:	00007804 	0x00007804
1c00a9ac:	00407d44 	0x00407d44
1c00a9b0:	84804000 	0x84804000
1c00a9b4:	7f00007d 	0x7f00007d
1c00a9b8:	00442810 	0x00442810
1c00a9bc:	7f410000 	0x7f410000
1c00a9c0:	7c000040 	0x7c000040
1c00a9c4:	78041804 	0x78041804
1c00a9c8:	04087c00 	csrrd	$r0,0x21f
1c00a9cc:	38007804 	ldx.b	$r4,$r0,$r30
1c00a9d0:	38444444 	vstx	$vr4,$r2,$r17
1c00a9d4:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c00a9d8:	18001824 	pcaddi	$r4,193(0xc1)
1c00a9dc:	fc182424 	0xfc182424
1c00a9e0:	04087c00 	csrrd	$r0,0x21f
1c00a9e4:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c10a9ec <_sidata+0xff2f4>
1c00a9e8:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c00a9ec:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00e8f0 <_sidata+0x31f8>
1c00a9f0:	3c002040 	0x3c002040
1c00a9f4:	7c204040 	0x7c204040
1c00a9f8:	40201c00 	beqz	$r0,8220(0x201c) # 1c00ca14 <_sidata+0x131c>
1c00a9fc:	3c001c20 	0x3c001c20
1c00aa00:	3c403040 	0x3c403040
1c00aa04:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c00aa08:	1c004428 	pcaddu12i	$r8,545(0x221)
1c00aa0c:	7ca0a0a0 	0x7ca0a0a0
1c00aa10:	54644400 	bl	25668(0x6444) # 1c010e54 <_sidata+0x575c>
1c00aa14:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c00aa18:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c00aa1c <F8X16>:
	...
1c00aa2c:	f8000000 	0xf8000000
1c00aa30:	00000000 	0x00000000
1c00aa34:	33000000 	0x33000000
1c00aa38:	00000030 	0x00000030
1c00aa3c:	060c1000 	cacop	0x0,$r0,772(0x304)
1c00aa40:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c00aa4c:	4078c040 	beqz	$r2,30912(0x78c0) # 1c01230c <_sidata+0x6c14>
1c00aa50:	004078c0 	0x004078c0
1c00aa54:	04043f04 	csrxchg	$r4,$r24,0x10f
1c00aa58:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c00aa5c:	fc887000 	0xfc887000
1c00aa60:	00003008 	revb.2h	$r8,$r0
1c00aa64:	ff201800 	0xff201800
1c00aa68:	00001e21 	ctz.w	$r1,$r17
1c00aa6c:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c00aa70:	000018e0 	cto.w	$r0,$r7
1c00aa74:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c00aa78:	001e211e 	mulh.d	$r30,$r8,$r8
1c00aa7c:	8808f000 	0x8808f000
1c00aa80:	00000070 	0x00000070
1c00aa84:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c00aa88:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c00aa8c:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c00aa9c:	e0000000 	0xe0000000
1c00aaa0:	00020418 	0x00020418
1c00aaa4:	07000000 	0x07000000
1c00aaa8:	00402018 	0x00402018
1c00aaac:	18040200 	pcaddi	$r0,8208(0x2010)
1c00aab0:	000000e0 	0x000000e0
1c00aab4:	18204000 	pcaddi	$r0,66048(0x10200)
1c00aab8:	00000007 	0x00000007
1c00aabc:	f0804040 	0xf0804040
1c00aac0:	00404080 	0x00404080
1c00aac4:	0f010202 	0x0f010202
1c00aac8:	00020201 	0x00020201
1c00aacc:	f0000000 	0xf0000000
1c00aad0:	00000000 	0x00000000
1c00aad4:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c00aad8:	00010101 	0x00010101
	...
1c00aae4:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c00aaf4:	01010100 	fadd.d	$f0,$f8,$f0
1c00aaf8:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c00ab04:	00303000 	0x00303000
	...
1c00ab10:	04186080 	csrxchg	$r0,$r4,0x618
1c00ab14:	06186000 	cacop	0x0,$r0,1560(0x618)
1c00ab18:	00000001 	0x00000001
1c00ab1c:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00ab20:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00ab24:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c00ab28:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00ab2c:	f8101000 	0xf8101000
1c00ab30:	00000000 	0x00000000
1c00ab34:	3f202000 	0x3f202000
1c00ab38:	00002020 	clo.d	$r0,$r1
1c00ab3c:	08087000 	0x08087000
1c00ab40:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00ab44:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00ab48:	00302122 	0x00302122
1c00ab4c:	88083000 	0x88083000
1c00ab50:	00304888 	0x00304888
1c00ab54:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00ab58:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ab5c:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c00ab60:	0000f810 	0x0000f810
1c00ab64:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c00ab68:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c00ab6c:	8808f800 	0x8808f800
1c00ab70:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c00ab74:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c00ab78:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ab7c:	8810e000 	0x8810e000
1c00ab80:	00001888 	cto.w	$r8,$r4
1c00ab84:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00ab88:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ab8c:	08083800 	0x08083800
1c00ab90:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00ab94:	3f000000 	0x3f000000
1c00ab98:	00000000 	0x00000000
1c00ab9c:	08887000 	0x08887000
1c00aba0:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00aba4:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00aba8:	001c2221 	mul.w	$r1,$r17,$r8
1c00abac:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00abb0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00abb4:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c00abb8:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c00abbc:	c0000000 	0xc0000000
1c00abc0:	000000c0 	0x000000c0
1c00abc4:	30000000 	0x30000000
1c00abc8:	00000030 	0x00000030
1c00abcc:	80000000 	0x80000000
1c00abd0:	00000000 	0x00000000
1c00abd4:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c012bd4 <_sidata+0x74dc>
1c00abd8:	00000000 	0x00000000
1c00abdc:	40800000 	beqz	$r0,32768(0x8000) # 1c012bdc <_sidata+0x74e4>
1c00abe0:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00abe4:	04020100 	csrxchg	$r0,$r8,0x80
1c00abe8:	00201008 	div.w	$r8,$r0,$r4
1c00abec:	40404040 	beqz	$r2,16448(0x4040) # 1c00ec2c <_sidata+0x3534>
1c00abf0:	00404040 	0x00404040
1c00abf4:	04040404 	csrrd	$r4,0x101
1c00abf8:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c00abfc:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00ac00:	00008040 	0x00008040
1c00ac04:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c00ac08:	00010204 	0x00010204
1c00ac0c:	08487000 	0x08487000
1c00ac10:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00ac14:	30000000 	0x30000000
1c00ac18:	00000136 	0x00000136
1c00ac1c:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00ac20:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00ac24:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c00ac28:	000b1423 	0x000b1423
1c00ac2c:	38c00000 	0x38c00000
1c00ac30:	000000e0 	0x000000e0
1c00ac34:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c00ac38:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00ac3c:	8888f808 	0x8888f808
1c00ac40:	00007088 	0x00007088
1c00ac44:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ac48:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ac4c:	080830c0 	0x080830c0
1c00ac50:	00380808 	0x00380808
1c00ac54:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00ac58:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00ac5c:	0808f808 	0x0808f808
1c00ac60:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00ac64:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ac68:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00ac6c:	8888f808 	0x8888f808
1c00ac70:	001008e8 	add.w	$r8,$r7,$r2
1c00ac74:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ac78:	00182023 	sra.w	$r3,$r1,$r8
1c00ac7c:	8888f808 	0x8888f808
1c00ac80:	001008e8 	add.w	$r8,$r7,$r2
1c00ac84:	00203f20 	div.w	$r0,$r25,$r15
1c00ac88:	00000003 	0x00000003
1c00ac8c:	080830c0 	0x080830c0
1c00ac90:	00003808 	revb.2w	$r8,$r0
1c00ac94:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00ac98:	00021e22 	0x00021e22
1c00ac9c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00aca0:	08f80800 	0x08f80800
1c00aca4:	01213f20 	0x01213f20
1c00aca8:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c00acac:	f8080800 	0xf8080800
1c00acb0:	00000808 	0x00000808
1c00acb4:	3f202000 	0x3f202000
1c00acb8:	00002020 	clo.d	$r0,$r1
1c00acbc:	08080000 	0x08080000
1c00acc0:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00acc4:	808080c0 	0x808080c0
1c00acc8:	0000007f 	0x0000007f
1c00accc:	c088f808 	0xc088f808
1c00acd0:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00acd4:	01203f20 	0x01203f20
1c00acd8:	00203826 	div.w	$r6,$r1,$r14
1c00acdc:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00ace0:	00000000 	0x00000000
1c00ace4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00ace8:	00302020 	0x00302020
1c00acec:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00acf0:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00acf4:	3f003f20 	0x3f003f20
1c00acf8:	00203f00 	div.w	$r0,$r24,$r15
1c00acfc:	c030f808 	0xc030f808
1c00ad00:	08f80800 	0x08f80800
1c00ad04:	00203f20 	div.w	$r0,$r25,$r15
1c00ad08:	003f1807 	0x003f1807
1c00ad0c:	080810e0 	0x080810e0
1c00ad10:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00ad14:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c00ad18:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00ad1c:	0808f808 	0x0808f808
1c00ad20:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00ad24:	01213f20 	0x01213f20
1c00ad28:	00000101 	0x00000101
1c00ad2c:	080810e0 	0x080810e0
1c00ad30:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00ad34:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c00ad38:	004f5038 	0x004f5038
1c00ad3c:	8888f808 	0x8888f808
1c00ad40:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00ad44:	00203f20 	div.w	$r0,$r25,$r15
1c00ad48:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00ad4c:	08887000 	0x08887000
1c00ad50:	00380808 	0x00380808
1c00ad54:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c00ad58:	001c2221 	mul.w	$r1,$r17,$r8
1c00ad5c:	f8080818 	0xf8080818
1c00ad60:	00180808 	sra.w	$r8,$r0,$r2
1c00ad64:	3f200000 	0x3f200000
1c00ad68:	00000020 	0x00000020
1c00ad6c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00ad70:	08f80800 	0x08f80800
1c00ad74:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00ad78:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00ad7c:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00ad80:	0838c800 	0x0838c800
1c00ad84:	38070000 	0x38070000
1c00ad88:	0000010e 	0x0000010e
1c00ad8c:	f80008f8 	0xf80008f8
1c00ad90:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c00ad94:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c00ad98:	00033c07 	0x00033c07
1c00ad9c:	80681808 	0x80681808
1c00ada0:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00ada4:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c00ada8:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c00adac:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c00adb0:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00adb4:	3f200000 	0x3f200000
1c00adb8:	00000020 	0x00000020
1c00adbc:	08080810 	0x08080810
1c00adc0:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00adc4:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c00adc8:	00182020 	sra.w	$r0,$r1,$r8
1c00adcc:	fe000000 	0xfe000000
1c00add0:	00020202 	0x00020202
1c00add4:	7f000000 	0x7f000000
1c00add8:	00404040 	0x00404040
1c00addc:	c0300c00 	0xc0300c00
1c00ade0:	00000000 	0x00000000
1c00ade4:	01000000 	0x01000000
1c00ade8:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c00adec:	02020200 	slti	$r0,$r16,128(0x80)
1c00adf0:	000000fe 	0x000000fe
1c00adf4:	40404000 	beqz	$r0,16448(0x4040) # 1c00ee34 <_sidata+0x373c>
1c00adf8:	0000007f 	0x0000007f
1c00adfc:	02040000 	slti	$r0,$r0,256(0x100)
1c00ae00:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c00ae14:	80808080 	0x80808080
1c00ae18:	80808080 	0x80808080
1c00ae1c:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c00ae2c:	80800000 	0x80800000
1c00ae30:	00008080 	0x00008080
1c00ae34:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c00ae38:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c00ae3c:	8000f808 	0x8000f808
1c00ae40:	00000080 	0x00000080
1c00ae44:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00ae48:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00ae4c:	80000000 	0x80000000
1c00ae50:	00008080 	0x00008080
1c00ae54:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00ae58:	00112020 	sub.w	$r0,$r1,$r8
1c00ae5c:	80000000 	0x80000000
1c00ae60:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c00ae64:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00ae68:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00ae6c:	80800000 	0x80800000
1c00ae70:	00008080 	0x00008080
1c00ae74:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c00ae78:	00132222 	maskeqz	$r2,$r17,$r8
1c00ae7c:	f0808000 	0xf0808000
1c00ae80:	18888888 	pcaddi	$r8,279620(0x44444)
1c00ae84:	3f202000 	0x3f202000
1c00ae88:	00002020 	clo.d	$r0,$r1
1c00ae8c:	80800000 	0x80800000
1c00ae90:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00ae94:	94946b00 	0x94946b00
1c00ae98:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c00ae9c:	8000f808 	0x8000f808
1c00aea0:	00008080 	0x00008080
1c00aea4:	00213f20 	div.wu	$r0,$r25,$r15
1c00aea8:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00aeac:	98988000 	0x98988000
1c00aeb0:	00000000 	0x00000000
1c00aeb4:	3f202000 	0x3f202000
1c00aeb8:	00002020 	clo.d	$r0,$r1
1c00aebc:	80000000 	0x80000000
1c00aec0:	00009898 	0x00009898
1c00aec4:	8080c000 	0x8080c000
1c00aec8:	00007f80 	0x00007f80
1c00aecc:	0000f808 	0x0000f808
1c00aed0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00aed4:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c00aed8:	0020302d 	div.w	$r13,$r1,$r12
1c00aedc:	f8080800 	0xf8080800
1c00aee0:	00000000 	0x00000000
1c00aee4:	3f202000 	0x3f202000
1c00aee8:	00002020 	clo.d	$r0,$r1
1c00aeec:	80808080 	0x80808080
1c00aef0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00aef4:	00203f20 	div.w	$r0,$r25,$r15
1c00aef8:	3f00203f 	0x3f00203f
1c00aefc:	80008080 	0x80008080
1c00af00:	00008080 	0x00008080
1c00af04:	00213f20 	div.wu	$r0,$r25,$r15
1c00af08:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00af0c:	80800000 	0x80800000
1c00af10:	00008080 	0x00008080
1c00af14:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00af18:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00af1c:	80008080 	0x80008080
1c00af20:	00000080 	0x00000080
1c00af24:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c00af28:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00af2c:	80000000 	0x80000000
1c00af30:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af34:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00af38:	80ffa020 	0x80ffa020
1c00af3c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af40:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af44:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00af48:	00010020 	asrtle.d	$r1,$r0
1c00af4c:	80800000 	0x80800000
1c00af50:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af54:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00af58:	00192424 	srl.d	$r4,$r1,$r9
1c00af5c:	e0808000 	0xe0808000
1c00af60:	00008080 	0x00008080
1c00af64:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00af68:	00002020 	clo.d	$r0,$r1
1c00af6c:	00008080 	0x00008080
1c00af70:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00af74:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00af78:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00af7c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00af80:	80808000 	0x80808000
1c00af84:	300e0100 	0x300e0100
1c00af88:	00010608 	0x00010608
1c00af8c:	80008080 	0x80008080
1c00af90:	80808000 	0x80808000
1c00af94:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c00af98:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c00af9c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00afa0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00afa4:	2e312000 	0x2e312000
1c00afa8:	0020310e 	div.w	$r14,$r8,$r12
1c00afac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00afb0:	80808000 	0x80808000
1c00afb4:	708e8180 	0x708e8180
1c00afb8:	00010618 	0x00010618
1c00afbc:	80808000 	0x80808000
1c00afc0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00afc4:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00afc8:	00302122 	0x00302122
1c00afcc:	00000000 	0x00000000
1c00afd0:	02027c80 	slti	$r0,$r4,159(0x9f)
1c00afd4:	00000000 	0x00000000
1c00afd8:	40403f00 	beqz	$r24,16444(0x403c) # 1c00f014 <_sidata+0x391c>
1c00afdc:	00000000 	0x00000000
1c00afe0:	000000ff 	0x000000ff
1c00afe4:	00000000 	0x00000000
1c00afe8:	000000ff 	0x000000ff
1c00afec:	7c020200 	0x7c020200
1c00aff0:	00000080 	0x00000080
1c00aff4:	3f404000 	0x3f404000
1c00aff8:	00000000 	0x00000000
1c00affc:	01010600 	fadd.d	$f0,$f16,$f1
1c00b000:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c00b00c <gImage_cc>:
	...
1c00b058:	c0c08080 	0xc0c08080
1c00b05c:	80c0c0c0 	0x80c0c0c0
1c00b060:	00000080 	0x00000080
	...
1c00b088:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c00b08c:	01000101 	0x01000101
1c00b090:	ff070301 	0xff070301
1c00b094:	0000f0fe 	0x0000f0fe
	...
1c00b0b4:	fe000000 	0xfe000000
1c00b0b8:	ffffffff 	0xffffffff
1c00b0bc:	0f9fffff 	0x0f9fffff
1c00b0c0:	ff9f0f0f 	0xff9f0f0f
1c00b0c4:	ffffffff 	0xffffffff
1c00b0c8:	0000feff 	0x0000feff
	...
1c00b0e8:	3f1f0700 	0x3f1f0700
1c00b0ec:	ffff7f7f 	0xffff7f7f
1c00b0f0:	f8f8ffff 	0xf8f8ffff
1c00b0f4:	7fffffff 	0x7fffffff
1c00b0f8:	071f3f7f 	0x071f3f7f
	...
1c00b170:	1c007964 	pcaddu12i	$r4,971(0x3cb)
1c00b174:	1c006cc4 	pcaddu12i	$r4,870(0x366)
1c00b178:	1c006d5c 	pcaddu12i	$r28,874(0x36a)
1c00b17c:	1c006e64 	pcaddu12i	$r4,883(0x373)
1c00b180:	1c006ec8 	pcaddu12i	$r8,886(0x376)
1c00b184:	1c006f2c 	pcaddu12i	$r12,889(0x379)
1c00b188:	1c007034 	pcaddu12i	$r20,897(0x381)
1c00b18c:	1c00713c 	pcaddu12i	$r28,905(0x389)
1c00b190:	1c007244 	pcaddu12i	$r4,914(0x392)
1c00b194:	1c0072a8 	pcaddu12i	$r8,917(0x395)
1c00b198:	1c00730c 	pcaddu12i	$r12,920(0x398)
1c00b19c:	1c007370 	pcaddu12i	$r16,923(0x39b)
1c00b1a0:	1c007440 	pcaddu12i	$r0,930(0x3a2)
1c00b1a4:	1c0074a4 	pcaddu12i	$r4,933(0x3a5)
1c00b1a8:	1c007574 	pcaddu12i	$r20,939(0x3ab)
1c00b1ac:	1c0075d8 	pcaddu12i	$r24,942(0x3ae)
1c00b1b0:	1c007650 	pcaddu12i	$r16,946(0x3b2)
1c00b1b4:	1c007758 	pcaddu12i	$r24,954(0x3ba)
1c00b1b8:	1c0077d0 	pcaddu12i	$r16,958(0x3be)
1c00b1bc:	1c0078a0 	pcaddu12i	$r0,965(0x3c5)
1c00b1c0:	00002e31 	ctz.d	$r17,$r17
1c00b1c4:	00002e32 	ctz.d	$r18,$r17
1c00b1c8:	00002e33 	ctz.d	$r19,$r17
1c00b1cc:	0000002a 	0x0000002a
1c00b1d0:	00000020 	0x00000020
1c00b1d4:	1c0082a0 	pcaddu12i	$r0,1045(0x415)
1c00b1d8:	1c007a40 	pcaddu12i	$r0,978(0x3d2)
1c00b1dc:	1c007aa4 	pcaddu12i	$r4,981(0x3d5)
1c00b1e0:	1c007b58 	pcaddu12i	$r24,986(0x3da)
1c00b1e4:	1c007c44 	pcaddu12i	$r4,994(0x3e2)
1c00b1e8:	1c007c98 	pcaddu12i	$r24,996(0x3e4)
1c00b1ec:	1c007cc8 	pcaddu12i	$r8,998(0x3e6)
1c00b1f0:	1c007cf8 	pcaddu12i	$r24,999(0x3e7)
1c00b1f4:	1c007d50 	pcaddu12i	$r16,1002(0x3ea)
1c00b1f8:	1c007d8c 	pcaddu12i	$r12,1004(0x3ec)
1c00b1fc:	1c007da8 	pcaddu12i	$r8,1005(0x3ed)
1c00b200:	1c007e88 	pcaddu12i	$r8,1012(0x3f4)
1c00b204:	1c007f74 	pcaddu12i	$r20,1019(0x3fb)
1c00b208:	1c007fa0 	pcaddu12i	$r0,1021(0x3fd)
1c00b20c:	1c007fd0 	pcaddu12i	$r16,1022(0x3fe)
1c00b210:	1c007ffc 	pcaddu12i	$r28,1023(0x3ff)
1c00b214:	1c008038 	pcaddu12i	$r24,1025(0x401)
1c00b218:	1c008094 	pcaddu12i	$r20,1028(0x404)
1c00b21c:	1c0080f4 	pcaddu12i	$r20,1031(0x407)
1c00b220:	1c008124 	pcaddu12i	$r4,1033(0x409)
1c00b224:	1c008210 	pcaddu12i	$r16,1040(0x410)
1c00b228:	1c008270 	pcaddu12i	$r16,1043(0x413)
1c00b22c:	3c200a0d 	0x3c200a0d
1c00b230:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c021e50 <_sidata+0x16758>
1c00b234:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c00b238:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfed29c <_start-0x12d64>
1c00b23c:	3a636e75 	0x3a636e75
1c00b240:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00b244:	0a0d3e20 	0x0a0d3e20
1c00b248:	00000000 	0x00000000
1c00b24c:	2e2e2e0a 	0x2e2e2e0a
1c00b250:	2e2e2e2e 	0x2e2e2e2e
1c00b254:	2e2e2e2e 	0x2e2e2e2e
1c00b258:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c00b25c:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c1a11b0 <_sidata+0x195ab8>
1c00b260:	2e2e544e 	0x2e2e544e
1c00b264:	2e2e2e2e 	0x2e2e2e2e
1c00b268:	2e2e2e2e 	0x2e2e2e2e
1c00b26c:	2e2e2e2e 	0x2e2e2e2e
1c00b270:	00000d0a 	0x00000d0a
1c00b274:	2d2d2d0a 	0x2d2d2d0a
1c00b278:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c0027e4 <PS_Empty+0x10>
1c00b27c:	746e4968 	0x746e4968
1c00b280:	79654b3a 	0x79654b3a
1c00b284:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bff13ec <_start-0xec14>
1c00b288:	3a6c656e 	0x3a6c656e
1c00b28c:	78257830 	0x78257830
1c00b290:	0000000a 	0x0000000a
1c00b294:	2e2e2e0a 	0x2e2e2e0a
1c00b298:	2e2e2e2e 	0x2e2e2e2e
1c00b29c:	2e2e2e2e 	0x2e2e2e2e
1c00b2a0:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39f4cc <_sidata+0x393dd4>
1c00b2a4:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1f900 <_start-0x2e0700>
1c00b2a8:	2e2e4c49 	0x2e2e4c49
1c00b2ac:	2e2e2e2e 	0x2e2e2e2e
1c00b2b0:	2e2e2e2e 	0x2e2e2e2e
1c00b2b4:	2e2e2e2e 	0x2e2e2e2e
1c00b2b8:	00000d0a 	0x00000d0a
1c00b2bc:	2e2e2e0a 	0x2e2e2e0a
1c00b2c0:	2e2e2e2e 	0x2e2e2e2e
1c00b2c4:	2e2e2e2e 	0x2e2e2e2e
1c00b2c8:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38f3f4 <_sidata+0x383cfc>
1c00b2cc:	2e2e2e43 	0x2e2e2e43
1c00b2d0:	2e2e2e2e 	0x2e2e2e2e
1c00b2d4:	2e2e2e2e 	0x2e2e2e2e
1c00b2d8:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00b2dc:	0000000d 	0x0000000d
1c00b2e0:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c022544 <_sidata+0x16e4c>
1c00b2e4:	72656870 	0x72656870
1c00b2e8:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c00b2ec:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c022054 <_sidata+0x1695c>
1c00b2f0:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c011610 <_sidata+0x5f18>
1c00b2f4:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00b2f8:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c022764 <_sidata+0x1706c>
1c00b2fc:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00b300:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c00b304:	00000000 	0x00000000
1c00b308:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c022574 <_sidata+0x16e7c>
1c00b30c:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c021c60 <_sidata+0x16568>
1c00b310:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffd380 <_start-0x2c80>
1c00b314:	7261656c 	0x7261656c
1c00b318:	746e6920 	0x746e6920
1c00b31c:	75727265 	0x75727265
1c00b320:	2e2e7470 	0x2e2e7470
1c00b324:	0000000a 	0x0000000a

1c00b328 <Ext_IrqHandle>:
1c00b328:	1c009774 	pcaddu12i	$r20,1211(0x4bb)
1c00b32c:	1c0097c0 	pcaddu12i	$r0,1214(0x4be)
1c00b330:	1c00980c 	pcaddu12i	$r12,1216(0x4c0)
1c00b334:	1c009858 	pcaddu12i	$r24,1218(0x4c2)
1c00b338:	1c0098a4 	pcaddu12i	$r4,1221(0x4c5)
1c00b33c:	1c0098f0 	pcaddu12i	$r16,1223(0x4c7)
1c00b340:	1c00993c 	pcaddu12i	$r28,1225(0x4c9)
1c00b344:	1c009988 	pcaddu12i	$r8,1228(0x4cc)
1c00b348:	1c0099d4 	pcaddu12i	$r20,1230(0x4ce)
1c00b34c:	1c009a20 	pcaddu12i	$r0,1233(0x4d1)
1c00b350:	1c009a6c 	pcaddu12i	$r12,1235(0x4d3)
1c00b354:	1c009ab8 	pcaddu12i	$r24,1237(0x4d5)
1c00b358:	1c009b04 	pcaddu12i	$r4,1240(0x4d8)
1c00b35c:	1c009b50 	pcaddu12i	$r16,1242(0x4da)
1c00b360:	1c009b9c 	pcaddu12i	$r28,1244(0x4dc)
1c00b364:	1c009be8 	pcaddu12i	$r8,1247(0x4df)
1c00b368:	1c009c34 	pcaddu12i	$r20,1249(0x4e1)
1c00b36c:	1c009c80 	pcaddu12i	$r0,1252(0x4e4)
1c00b370:	1c009ccc 	pcaddu12i	$r12,1254(0x4e6)
1c00b374:	1c009d18 	pcaddu12i	$r24,1256(0x4e8)
1c00b378:	1c009d64 	pcaddu12i	$r4,1259(0x4eb)
1c00b37c:	1c009db0 	pcaddu12i	$r16,1261(0x4ed)
1c00b380:	1c009dfc 	pcaddu12i	$r28,1263(0x4ef)
1c00b384:	1c009e48 	pcaddu12i	$r8,1266(0x4f2)
1c00b388:	1c009e94 	pcaddu12i	$r20,1268(0x4f4)
1c00b38c:	1c009ee0 	pcaddu12i	$r0,1271(0x4f7)
1c00b390:	1c009f2c 	pcaddu12i	$r12,1273(0x4f9)
1c00b394:	1c009f78 	pcaddu12i	$r24,1275(0x4fb)
1c00b398:	1c009fc4 	pcaddu12i	$r4,1278(0x4fe)
1c00b39c:	1c00a010 	pcaddu12i	$r16,1280(0x500)
1c00b3a0:	1c00a05c 	pcaddu12i	$r28,1282(0x502)
1c00b3a4:	1c00a0a8 	pcaddu12i	$r8,1285(0x505)
1c00b3a8:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3ac:	1c00a344 	pcaddu12i	$r4,1306(0x51a)
1c00b3b0:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3b4:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3b8:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3bc:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3c0:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3c4:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3c8:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3cc:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3d0:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3d4:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3d8:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3dc:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3e0:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3e4:	1c00a394 	pcaddu12i	$r20,1308(0x51c)
1c00b3e8:	1c00a360 	pcaddu12i	$r0,1307(0x51b)

1c00b3ec <__FUNCTION__.1751>:
1c00b3ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022864 <_sidata+0x1716c>
1c00b3f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022454 <_sidata+0x16d5c>
1c00b3f4:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffe454 <_start-0x1bac>
1c00b3f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002568 <PS_GenChar+0x60>
1c00b3fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01225c <_sidata+0x6b64>
1c00b400:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b404 <__FUNCTION__.1755>:
1c00b404:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02287c <_sidata+0x17184>
1c00b408:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02246c <_sidata+0x16d74>
1c00b40c:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffe56c <_start-0x1a94>
1c00b410:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002580 <PS_GenChar+0x78>
1c00b414:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012274 <_sidata+0x6b7c>
1c00b418:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b41c <__FUNCTION__.1759>:
1c00b41c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022894 <_sidata+0x1719c>
1c00b420:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022484 <_sidata+0x16d8c>
1c00b424:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffe684 <_start-0x197c>
1c00b428:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002598 <PS_GenChar+0x90>
1c00b42c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01228c <_sidata+0x6b94>
1c00b430:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b434 <__FUNCTION__.1763>:
1c00b434:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0228ac <_sidata+0x171b4>
1c00b438:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02249c <_sidata+0x16da4>
1c00b43c:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffe79c <_start-0x1864>
1c00b440:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0025b0 <PS_Match>
1c00b444:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0122a4 <_sidata+0x6bac>
1c00b448:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b44c <__FUNCTION__.1767>:
1c00b44c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0228c4 <_sidata+0x171cc>
1c00b450:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0224b4 <_sidata+0x16dbc>
1c00b454:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffe8b4 <_start-0x174c>
1c00b458:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0025c8 <PS_Match+0x18>
1c00b45c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0122bc <_sidata+0x6bc4>
1c00b460:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b464 <__FUNCTION__.1771>:
1c00b464:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0228dc <_sidata+0x171e4>
1c00b468:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0224cc <_sidata+0x16dd4>
1c00b46c:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffe9cc <_start-0x1634>
1c00b470:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0025e0 <PS_Match+0x30>
1c00b474:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0122d4 <_sidata+0x6bdc>
1c00b478:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b47c <__FUNCTION__.1775>:
1c00b47c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0228f4 <_sidata+0x171fc>
1c00b480:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0224e4 <_sidata+0x16dec>
1c00b484:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffeae4 <_start-0x151c>
1c00b488:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0025f8 <PS_Match+0x48>
1c00b48c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0122ec <_sidata+0x6bf4>
1c00b490:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b494 <__FUNCTION__.1779>:
1c00b494:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02290c <_sidata+0x17214>
1c00b498:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0224fc <_sidata+0x16e04>
1c00b49c:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffebfc <_start-0x1404>
1c00b4a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002610 <PS_Match+0x60>
1c00b4a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012304 <_sidata+0x6c0c>
1c00b4a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b4ac <__FUNCTION__.1783>:
1c00b4ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022924 <_sidata+0x1722c>
1c00b4b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022514 <_sidata+0x16e1c>
1c00b4b4:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffe514 <_start-0x1aec>
1c00b4b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002628 <PS_Match+0x78>
1c00b4bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01231c <_sidata+0x6c24>
1c00b4c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b4c4 <__FUNCTION__.1787>:
1c00b4c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02293c <_sidata+0x17244>
1c00b4c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02252c <_sidata+0x16e34>
1c00b4cc:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffe62c <_start-0x19d4>
1c00b4d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002640 <PS_RegModel+0x4>
1c00b4d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012334 <_sidata+0x6c3c>
1c00b4d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b4dc <__FUNCTION__.1791>:
1c00b4dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022954 <_sidata+0x1725c>
1c00b4e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022544 <_sidata+0x16e4c>
1c00b4e4:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffe744 <_start-0x18bc>
1c00b4e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002658 <PS_RegModel+0x1c>
1c00b4ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01234c <_sidata+0x6c54>
1c00b4f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b4f4 <__FUNCTION__.1795>:
1c00b4f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02296c <_sidata+0x17274>
1c00b4f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02255c <_sidata+0x16e64>
1c00b4fc:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffe85c <_start-0x17a4>
1c00b500:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002670 <PS_RegModel+0x34>
1c00b504:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012364 <_sidata+0x6c6c>
1c00b508:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b50c <__FUNCTION__.1799>:
1c00b50c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022984 <_sidata+0x1728c>
1c00b510:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022574 <_sidata+0x16e7c>
1c00b514:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffe974 <_start-0x168c>
1c00b518:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002688 <PS_RegModel+0x4c>
1c00b51c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01237c <_sidata+0x6c84>
1c00b520:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b524 <__FUNCTION__.1803>:
1c00b524:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02299c <_sidata+0x172a4>
1c00b528:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02258c <_sidata+0x16e94>
1c00b52c:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffea8c <_start-0x1574>
1c00b530:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0026a0 <PS_RegModel+0x64>
1c00b534:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012394 <_sidata+0x6c9c>
1c00b538:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b53c <__FUNCTION__.1807>:
1c00b53c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0229b4 <_sidata+0x172bc>
1c00b540:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0225a4 <_sidata+0x16eac>
1c00b544:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffeba4 <_start-0x145c>
1c00b548:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0026b8 <PS_RegModel+0x7c>
1c00b54c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0123ac <_sidata+0x6cb4>
1c00b550:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b554 <__FUNCTION__.1811>:
1c00b554:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0229cc <_sidata+0x172d4>
1c00b558:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0225bc <_sidata+0x16ec4>
1c00b55c:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffecbc <_start-0x1344>
1c00b560:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0026d0 <PS_StoreChar+0x8>
1c00b564:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0123c4 <_sidata+0x6ccc>
1c00b568:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b56c <__FUNCTION__.1815>:
1c00b56c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0229e4 <_sidata+0x172ec>
1c00b570:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0225d4 <_sidata+0x16edc>
1c00b574:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffe5d4 <_start-0x1a2c>
1c00b578:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0026e8 <PS_StoreChar+0x20>
1c00b57c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0123dc <_sidata+0x6ce4>
1c00b580:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b584 <__FUNCTION__.1819>:
1c00b584:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0229fc <_sidata+0x17304>
1c00b588:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0225ec <_sidata+0x16ef4>
1c00b58c:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffe6ec <_start-0x1914>
1c00b590:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002700 <PS_StoreChar+0x38>
1c00b594:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0123f4 <_sidata+0x6cfc>
1c00b598:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b59c <__FUNCTION__.1823>:
1c00b59c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022a14 <_sidata+0x1731c>
1c00b5a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022604 <_sidata+0x16f0c>
1c00b5a4:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffe804 <_start-0x17fc>
1c00b5a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002718 <PS_StoreChar+0x50>
1c00b5ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01240c <_sidata+0x6d14>
1c00b5b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b5b4 <__FUNCTION__.1827>:
1c00b5b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022a2c <_sidata+0x17334>
1c00b5b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02261c <_sidata+0x16f24>
1c00b5bc:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffe91c <_start-0x16e4>
1c00b5c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002730 <PS_StoreChar+0x68>
1c00b5c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012424 <_sidata+0x6d2c>
1c00b5c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b5cc <__FUNCTION__.1831>:
1c00b5cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022a44 <_sidata+0x1734c>
1c00b5d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022634 <_sidata+0x16f3c>
1c00b5d4:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffea34 <_start-0x15cc>
1c00b5d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002748 <PS_StoreChar+0x80>
1c00b5dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01243c <_sidata+0x6d44>
1c00b5e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b5e4 <__FUNCTION__.1835>:
1c00b5e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022a5c <_sidata+0x17364>
1c00b5e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02264c <_sidata+0x16f54>
1c00b5ec:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffeb4c <_start-0x14b4>
1c00b5f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002760 <PS_StoreChar+0x98>
1c00b5f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012454 <_sidata+0x6d5c>
1c00b5f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b5fc <__FUNCTION__.1839>:
1c00b5fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022a74 <_sidata+0x1737c>
1c00b600:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022664 <_sidata+0x16f6c>
1c00b604:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffec64 <_start-0x139c>
1c00b608:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002778 <PS_StoreChar+0xb0>
1c00b60c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01246c <_sidata+0x6d74>
1c00b610:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b614 <__FUNCTION__.1843>:
1c00b614:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022a8c <_sidata+0x17394>
1c00b618:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02267c <_sidata+0x16f84>
1c00b61c:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffed7c <_start-0x1284>
1c00b620:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002790 <PS_StoreChar+0xc8>
1c00b624:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012484 <_sidata+0x6d8c>
1c00b628:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b62c <__FUNCTION__.1847>:
1c00b62c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022aa4 <_sidata+0x173ac>
1c00b630:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022694 <_sidata+0x16f9c>
1c00b634:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffe698 <_start-0x1968>
1c00b638:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0027a8 <PS_StoreChar+0xe0>
1c00b63c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01249c <_sidata+0x6da4>
1c00b640:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b644 <__FUNCTION__.1851>:
1c00b644:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022abc <_sidata+0x173c4>
1c00b648:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0226ac <_sidata+0x16fb4>
1c00b64c:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffe7b0 <_start-0x1850>
1c00b650:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0027c0 <PS_StoreChar+0xf8>
1c00b654:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0124b4 <_sidata+0x6dbc>
1c00b658:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b65c <__FUNCTION__.1855>:
1c00b65c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022ad4 <_sidata+0x173dc>
1c00b660:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0226c4 <_sidata+0x16fcc>
1c00b664:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffe8c8 <_start-0x1738>
1c00b668:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0027d8 <PS_Empty+0x4>
1c00b66c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0124cc <_sidata+0x6dd4>
1c00b670:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b674 <__FUNCTION__.1859>:
1c00b674:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022aec <_sidata+0x173f4>
1c00b678:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0226dc <_sidata+0x16fe4>
1c00b67c:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffe9e0 <_start-0x1620>
1c00b680:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0027f0 <PS_Empty+0x1c>
1c00b684:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0124e4 <_sidata+0x6dec>
1c00b688:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b68c <__FUNCTION__.1863>:
1c00b68c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022b04 <_sidata+0x1740c>
1c00b690:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0226f4 <_sidata+0x16ffc>
1c00b694:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffeaf8 <_start-0x1508>
1c00b698:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002808 <PS_Empty+0x34>
1c00b69c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0124fc <_sidata+0x6e04>
1c00b6a0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b6a4 <__FUNCTION__.1867>:
1c00b6a4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022b1c <_sidata+0x17424>
1c00b6a8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02270c <_sidata+0x17014>
1c00b6ac:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffec10 <_start-0x13f0>
1c00b6b0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002820 <PS_Empty+0x4c>
1c00b6b4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012514 <_sidata+0x6e1c>
1c00b6b8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b6bc <__FUNCTION__.1871>:
1c00b6bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022b34 <_sidata+0x1743c>
1c00b6c0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022724 <_sidata+0x1702c>
1c00b6c4:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffed28 <_start-0x12d8>
1c00b6c8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002838 <PS_Empty+0x64>
1c00b6cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01252c <_sidata+0x6e34>
1c00b6d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b6d4 <__FUNCTION__.1875>:
1c00b6d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c022b4c <_sidata+0x17454>
1c00b6d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02273c <_sidata+0x17044>
1c00b6dc:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffee40 <_start-0x11c0>
1c00b6e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002850 <PS_Empty+0x7c>
1c00b6e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012544 <_sidata+0x6e4c>
1c00b6e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00b6ec <__FUNCTION__.1884>:
1c00b6ec:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c002b64 <Add_FR+0x38>
1c00b6f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012550 <_sidata+0x6e58>
1c00b6f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

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

80001020 <SystemCoreClock>:
80001020:	01e84800 	0x01e84800

80001024 <F16x16>:
80001024:	32539410 	xvldrepl.h	$xr16,$r0,-1590(0x9ca)
80001028:	1052321e 	addu16i.d	$r30,$r16,5260(0x148c)
8000102c:	42427e00 	beqz	$r16,148092(0x2427c) # 800252a8 <_edata+0x23818>
80001030:	00007e42 	0x00007e42
80001034:	ff000000 	0xff000000
80001038:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80255980 <_edata+0x253ef0>
8000103c:	ff494949 	0xff494949
80001040:	00000000 	0x00000000
80001044:	494acc08 	bceqz	$fcc0,2181836(0x214acc) # 80215b10 <_edata+0x214080>
80001048:	18cc4a48 	pcaddi	$r8,418386(0x66252)
8000104c:	88887f00 	0x88887f00
80001050:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001054:	1212ff00 	addu16i.d	$r0,$r24,-31553(0x84bf)
80001058:	007f9252 	bstrpick.w	$r18,$r18,0x1f,0x4
8000105c:	88887e00 	0x88887e00
80001060:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001064:	0601f800 	cacop	0x0,$r0,126(0x7e)
80001068:	02020000 	slti	$r0,$r0,128(0x80)
8000106c:	02020202 	slti	$r2,$r16,128(0x80)
80001070:	0000fe02 	0x0000fe02
80001074:	0000ff00 	0x0000ff00
80001078:	00000000 	0x00000000
8000107c:	40000000 	beqz	$r0,0 # 8000107c <F16x16+0x58>
80001080:	00007f80 	0x00007f80
80001084:	14244440 	lu12i.w	$r0,74274(0x12222)
80001088:	0024147f 	crc.w.b.w	$r31,$r3,$r5
8000108c:	147f1424 	lu12i.w	$r4,260257(0x3f8a1)
80001090:	00404424 	0x00404424
80001094:	29498808 	st.h	$r8,$r0,610(0x262)
80001098:	79894909 	0x79894909
8000109c:	29090909 	st.b	$r9,$r8,578(0x242)
800010a0:	00088849 	bytepick.w	$r9,$r2,$r2,0x1
800010a4:	32220000 	xvldrepl.w	$xr0,$r0,512(0x200)
800010a8:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb34c <_sidata+0x63fdfc54>
800010ac:	81091121 	0x81091121
800010b0:	00000001 	0x00000001
800010b4:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010b8:	7e82420b 	0x7e82420b
800010bc:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010c0:	00004623 	revh.d	$r3,$r17
800010c4:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbcf4 <_sidata+0x63ff05fc>
800010c8:	c8880030 	0xc8880030
800010cc:	888e99a8 	0x888e99a8
800010d0:	0088c8a8 	bstrins.d	$r8,$r5,0x8,0x32
800010d4:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
800010d8:	30408012 	vldrepl.h	$vr18,$r0,64(0x40)
800010dc:	3f00000f 	0x3f00000f
800010e0:	00714040 	bstrins.w	$r0,$r2,0x11,0x10
800010e4:	40404040 	beqz	$r2,16448(0x4040) # 80005124 <_edata+0x3694>
800010e8:	44ff4040 	bnez	$r2,65344(0xff40) # 80011028 <_edata+0xf598>
800010ec:	44444444 	bnez	$r2,1066052(0x104444) # 80105530 <_edata+0x103aa0>
800010f0:	00404044 	0x00404044
800010f4:	00000000 	0x00000000
800010f8:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
800010fc:	08040200 	0x08040200
80001100:	00000010 	0x00000010
80001104:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001108:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
8000110c:	d20e9222 	0xd20e9222
80001110:	00001e22 	ctz.w	$r2,$r17
80001114:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001118:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
8000111c:	ff09090a 	0xff09090a
80001120:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001124:	e72c1020 	0xe72c1020
80001128:	e2002424 	0xe2002424
8000112c:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
80001130:	0000e628 	0x0000e628
80001134:	7f010101 	0x7f010101
80001138:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
8000113c:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
80001140:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
80001144:	04448c10 	csrrd	$r16,0x1123
80001148:	a69504e4 	0xa69504e4
8000114c:	84142444 	0x84142444
80001150:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001154:	417a0202 	beqz	$r16,621056(0x97a00) # 80098b54 <_edata+0x970c4>
80001158:	7e424341 	0x7e424341
8000115c:	43424242 	beqz	$r18,737856(0xb4240) # 800b539c <_edata+0xb390c>
80001160:	000000f8 	0x000000f8
80001164:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f5e8 <_edata+0xdb58>
80001168:	0200c444 	slti	$r4,$r2,49(0x31)
8000116c:	828282f2 	0x828282f2
80001170:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001174:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001178:	08003f10 	0x08003f10
8000117c:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201984 <_edata+0x1ffef4>
80001180:	003f4088 	0x003f4088
80001184:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001188:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
8000118c:	d20e9222 	0xd20e9222
80001190:	00001e22 	ctz.w	$r2,$r17
80001194:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001198:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
8000119c:	ff09090a 	0xff09090a
800011a0:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
800011a4:	e72c1020 	0xe72c1020
800011a8:	e2002424 	0xe2002424
800011ac:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
800011b0:	0000e628 	0x0000e628
800011b4:	7f010101 	0x7f010101
800011b8:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800011bc:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800011c0:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800011c4:	cc424040 	0xcc424040
800011c8:	9ea04000 	0x9ea04000
800011cc:	9e828282 	0x9e828282
800011d0:	002020a0 	div.w	$r0,$r5,$r8
800011d4:	3f000000 	0x3f000000
800011d8:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc35260 <_sidata+0x63c29b68>
800011dc:	4628102c 	bnez	$r1,3287056(0x322810) # 803239ec <_edata+0x321f5c>
800011e0:	00808041 	bstrins.d	$r1,$r2,0x0,0x20
800011e4:	d5151700 	0xd5151700
800011e8:	7d555755 	0x7d555755
800011ec:	d5555755 	0xd5555755
800011f0:	00001715 	clz.w	$r21,$r24
800011f4:	7f404040 	0x7f404040
800011f8:	55555555 	bl	89478484(0x5555554) # 8555674c <_edata+0x5554cbc>
800011fc:	7f555555 	0x7f555555
80001200:	00404040 	0x00404040
80001204:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001208:	54544400 	bl	21572(0x5444) # 8000664c <_edata+0x4bbc>
8000120c:	54547f54 	bl	-45067140(0xd50547c) # 7d506688 <_sidata+0x614faf90>
80001210:	00404454 	0x00404454
80001214:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001218:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
8000121c:	95551515 	0x95551515
80001220:	0000007f 	0x0000007f
80001224:	cc424040 	0xcc424040
80001228:	c84e5000 	0xc84e5000
8000122c:	48c87f48 	0x48c87f48
80001230:	00004048 	revh.2w	$r8,$r2
80001234:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001238:	434c5020 	beqz	$r1,216144(0x34c50) # 80035e88 <_edata+0x343f8>
8000123c:	504f4040 	b	16797504(0x1004f40) # 8100617c <_edata+0x10046ec>
80001240:	00405c50 	0x00405c50
80001244:	10ff1010 	addu16i.d	$r16,$r0,16324(0x3fc4)
80001248:	4a868200 	0x4a868200
8000124c:	4a52a252 	0x4a52a252
80001250:	00808086 	bstrins.d	$r6,$r4,0x0,0x20
80001254:	017f8242 	0x017f8242
80001258:	12121000 	addu16i.d	$r0,$r0,-31612(0x8484)
8000125c:	1212ff12 	addu16i.d	$r18,$r24,-31553(0x84bf)
80001260:	00001012 	clo.w	$r18,$r0
80001264:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001268:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
8000126c:	d20e9222 	0xd20e9222
80001270:	00001e22 	ctz.w	$r2,$r17
80001274:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001278:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
8000127c:	ff09090a 	0xff09090a
80001280:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001284:	e72c1020 	0xe72c1020
80001288:	e2002424 	0xe2002424
8000128c:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
80001290:	0000e628 	0x0000e628
80001294:	7f010101 	0x7f010101
80001298:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
8000129c:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800012a0:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800012a4:	08080808 	0x08080808
800012a8:	8e89f808 	0x8e89f808
800012ac:	88888888 	0x88888888
800012b0:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800012b4:	20408000 	ll.w	$r0,$r0,16512(0x4080)
800012b8:	00000718 	0x00000718
800012bc:	3f408040 	0x3f408040
800012c0:	00000000 	0x00000000
800012c4:	90901010 	0x90901010
800012c8:	10909090 	addu16i.d	$r16,$r4,9252(0x2424)
800012cc:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
800012d0:	00101611 	add.w	$r17,$r16,$r5
800012d4:	20602000 	ll.w	$r0,$r0,24608(0x6020)
800012d8:	1010103f 	addu16i.d	$r31,$r1,1028(0x404)
800012dc:	100c0300 	addu16i.d	$r0,$r24,768(0x300)
800012e0:	00f84020 	bstrpick.d	$r0,$r1,0x38,0x10
800012e4:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
800012e8:	54544400 	bl	21572(0x5444) # 8000672c <_edata+0x4c9c>
800012ec:	54547f54 	bl	-45067140(0xd50547c) # 7d506768 <_sidata+0x614fb070>
800012f0:	00404454 	0x00404454
800012f4:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
800012f8:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
800012fc:	95551515 	0x95551515
80001300:	0000007f 	0x0000007f
80001304:	c81f6888 	0xc81f6888
80001308:	54c81008 	bl	2148368(0x20c810) # 8020db18 <_edata+0x20c088>
8000130c:	9412d152 	0x9412d152
80001310:	0010d008 	add.d	$r8,$r0,$r20
80001314:	ff091909 	0xff091909
80001318:	12ff0005 	addu16i.d	$r5,$r0,-16448(0xbfc0)
8000131c:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1418 <_sidata+0x63fe5d20>
80001320:	00007f80 	0x00007f80
80001324:	00000000 	0x00000000
80001328:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
8000132c:	000000e0 	0x000000e0
80001330:	00000000 	0x00000000
80001334:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001338:	0000030c 	0x0000030c
8000133c:	300c0300 	0x300c0300
80001340:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001344:	04448c10 	csrrd	$r16,0x1123
80001348:	a69504e4 	0xa69504e4
8000134c:	84142444 	0x84142444
80001350:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001354:	417a0202 	beqz	$r16,621056(0x97a00) # 80098d54 <_edata+0x972c4>
80001358:	7e424341 	0x7e424341
8000135c:	43424242 	beqz	$r18,737856(0xb4240) # 800b559c <_edata+0xb3b0c>
80001360:	000000f8 	0x000000f8
80001364:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f7e8 <_edata+0xdd58>
80001368:	0200c444 	slti	$r4,$r2,49(0x31)
8000136c:	828282f2 	0x828282f2
80001370:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001374:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001378:	08003f10 	0x08003f10
8000137c:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201b84 <_edata+0x2000f4>
80001380:	003f4088 	0x003f4088
80001384:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001388:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
8000138c:	d20e9222 	0xd20e9222
80001390:	00001e22 	ctz.w	$r2,$r17
80001394:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001398:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
8000139c:	ff09090a 	0xff09090a
800013a0:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
800013a4:	e72c1020 	0xe72c1020
800013a8:	e2002424 	0xe2002424
800013ac:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
800013b0:	0000e628 	0x0000e628
800013b4:	7f010101 	0x7f010101
800013b8:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800013bc:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800013c0:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800013c4:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800013c8:	ff101010 	0xff101010
800013cc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800013d0:	00000010 	0x00000010
800013d4:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800013d8:	01030d11 	fsub.d	$f17,$f8,$f3
800013dc:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800013e0:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800013e4:	fa02fe00 	0xfa02fe00
800013e8:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800013ec:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800013f0:	001010f0 	add.w	$r16,$r7,$r4
800013f4:	0f304780 	0x0f304780
800013f8:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc0945c <_sidata+0x63bfdd64>
800013fc:	16081621 	lu32i.d	$r1,16561(0x40b1)
80001400:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
80001404:	88f80000 	0x88f80000
80001408:	08888888 	0x08888888
8000140c:	0908ff08 	0x0908ff08
80001410:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001414:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001418:	801f2010 	0x801f2010
8000141c:	18162140 	pcaddi	$r0,45322(0xb10a)
80001420:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001424:	f8080808 	0xf8080808
80001428:	10080808 	addu16i.d	$r8,$r0,514(0x202)
8000142c:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
80001430:	0000f010 	0x0000f010
80001434:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001438:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
8000143c:	8040010e 	0x8040010e
80001440:	00003f40 	revb.d	$r0,$r26
80001444:	07f86080 	0x07f86080
80001448:	2424e404 	ldptr.w	$r4,$r0,9444(0x24e4)
8000144c:	2424ff24 	ldptr.w	$r4,$r25,9468(0x24fc)
80001450:	0004e424 	alsl.w	$r4,$r1,$r25,0x2
80001454:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
80001458:	29458180 	st.h	$r0,$r12,352(0x160)
8000145c:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55588 <_sidata+0x63c49e90>
80001460:	00808181 	bstrins.d	$r1,$r12,0x0,0x20
80001464:	22fe0000 	ll.d	$r0,$r0,-512(0xfe00)
80001468:	fe222222 	0xfe222222
8000146c:	22222222 	ll.d	$r2,$r17,8736(0x2220)
80001470:	000000fe 	0x000000fe
80001474:	021f6080 	slti	$r0,$r4,2008(0x7d8)
80001478:	7f020202 	0x7f020202
8000147c:	82420202 	0x82420202
80001480:	0000007f 	0x0000007f
80001484:	a2236488 	0xa2236488
80001488:	baa2aaa6 	0xbaa2aaa6
8000148c:	26a2a3a4 	ldptr.d	$r4,$r29,-23904(0xa2a0)
80001490:	0062a22a 	bstrpick.w	$r10,$r17,0x2,0x8
80001494:	ff000000 	0xff000000
80001498:	4a4a4a4a 	0x4a4a4a4a
8000149c:	f84b4a4a 	0xf84b4a4a
800014a0:	00000000 	0x00000000
800014a4:	fc848404 	0xfc848404
800014a8:	fe008484 	0xfe008484
800014ac:	92fe9292 	0x92fe9292
800014b0:	0000fe92 	0x0000fe92
800014b4:	1f206020 	pcaddu18i	$r0,-457983(0x90301)
800014b8:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054c8 <_sidata+0x63bf9dd0>
800014bc:	447f4444 	bnez	$r2,1081156(0x107f44) # 80109400 <_edata+0x107970>
800014c0:	00404444 	0x00404444
800014c4:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4c4 <_sidata+0x63fe1dcc>
800014c8:	52525252 	b	-112569776(0x94a5250) # 794a6718 <_sidata+0x5d49b020>
800014cc:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe671c <_sidata+0x63fdb024>
800014d0:	000000c0 	0x000000c0
800014d4:	408f8080 	beqz	$r4,36736(0x8f80) # 8000a454 <_edata+0x89c4>
800014d8:	0e102040 	0x0e102040
800014dc:	20201010 	ll.w	$r16,$r0,8208(0x2010)
800014e0:	0000804f 	0x0000804f
800014e4:	cc424040 	0xcc424040
800014e8:	49ff0000 	bceqz	$fcc0,130816(0x1ff00) # 800213e8 <_edata+0x1f958>
800014ec:	4949c949 	bcnez	$fcc2,2443720(0x2549c8) # 80255eb4 <_edata+0x254424>
800014f0:	0000807f 	0x0000807f
800014f4:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800014f8:	485f4020 	bceqz	$fcc1,24384(0x5f40) # 80007438 <_edata+0x59a8>
800014fc:	42414044 	beqz	$r2,1196352(0x124140) # 8012563c <_edata+0x123bac>
80001500:	00405845 	0x00405845
80001504:	407c0000 	beqz	$r0,31744(0x7c00) # 80009104 <_edata+0x7674>
80001508:	ff404040 	0xff404040
8000150c:	40404040 	beqz	$r2,16448(0x4040) # 8000554c <_edata+0x3abc>
80001510:	000000fc 	0x000000fc
80001514:	40407c00 	beqz	$r0,16508(0x407c) # 80005590 <_edata+0x3b00>
80001518:	7f404040 	0x7f404040
8000151c:	40404040 	beqz	$r2,16448(0x4040) # 8000555c <_edata+0x3acc>
80001520:	0000fc40 	0x0000fc40
80001524:	cc424040 	0xcc424040
80001528:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
8000152c:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
80001530:	000062a3 	rdtimel.w	$r3,$r21
80001534:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001538:	50475820 	b	8406872(0x804758) # 80805c90 <_edata+0x804200>
8000153c:	45424548 	bnez	$r10,2179652(0x214244) # 80215780 <_edata+0x213cf0>
80001540:	00405048 	0x00405048
80001544:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001548:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
8000154c:	0202f212 	slti	$r18,$r16,188(0xbc)
80001550:	000000fe 	0x000000fe
80001554:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001558:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
8000155c:	20202724 	ll.w	$r4,$r25,8228(0x2024)
80001560:	0000007f 	0x0000007f
80001564:	84442404 	0x84442404
80001568:	30409c64 	vldrepl.h	$vr4,$r3,78(0x4e)
8000156c:	0808c80f 	0x0808c80f
80001570:	00001828 	cto.w	$r8,$r1
80001574:	01060810 	0x01060810
80001578:	18204c82 	pcaddi	$r2,66148(0x10264)
8000157c:	18060106 	pcaddi	$r6,12296(0x3008)
80001580:	00804020 	bstrins.d	$r0,$r1,0x0,0x10
80001584:	cc424040 	0xcc424040
80001588:	04fc0000 	csrrd	$r0,0x3f00
8000158c:	04fc0002 	csrrd	$r2,0x3f00
80001590:	0000fc04 	0x0000fc04
80001594:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001598:	444f4020 	bnez	$r1,20288(0x4f40) # 800064d8 <_edata+0x4a48>
8000159c:	427f4042 	beqz	$r2,687936(0xa7f40) # 800a94dc <_edata+0xa7a4c>
800015a0:	00404344 	0x00404344
800015a4:	44424040 	bnez	$r2,16960(0x4240) # 800057e4 <_edata+0x3d54>
800015a8:	7f40c058 	0x7f40c058
800015ac:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 8000666c <_edata+0x4bdc>
800015b0:	00404046 	0x00404046
800015b4:	20408080 	ll.w	$r0,$r4,16512(0x4080)
800015b8:	00000718 	0x00000718
800015bc:	40403f00 	beqz	$r24,16444(0x403c) # 800055f8 <_edata+0x3b68>
800015c0:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
800015c4:	0000f800 	0x0000f800
800015c8:	182040ff 	pcaddi	$r31,66055(0x10207)
800015cc:	0868180f 	fmsub.d	$f15,$f0,$f6,$f16
800015d0:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800015d4:	00001f00 	ctz.w	$r0,$r24
800015d8:	7f0000ff 	0x7f0000ff
800015dc:	213f2121 	sc.w	$r1,$r9,16160(0x3f20)
800015e0:	00007f21 	0x00007f21
800015e4:	cc424040 	0xcc424040
800015e8:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
800015ec:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
800015f0:	000062a3 	rdtimel.w	$r3,$r21
800015f4:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800015f8:	50475820 	b	8406872(0x804758) # 80805d50 <_edata+0x8042c0>
800015fc:	45424548 	bnez	$r10,2179652(0x214244) # 80215840 <_edata+0x213db0>
80001600:	00405048 	0x00405048
80001604:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001608:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
8000160c:	0202f212 	slti	$r18,$r16,188(0xbc)
80001610:	000000fe 	0x000000fe
80001614:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001618:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
8000161c:	20202724 	ll.w	$r4,$r25,8228(0x2024)
80001620:	0000007f 	0x0000007f
80001624:	8c026010 	0x8c026010
80001628:	52921000 	b	168464(0x29210) # 8002a838 <_edata+0x28da8>
8000162c:	52321e32 	b	-120966628(0x8ca321c) # 78ca4848 <_sidata+0x5cc99150>
80001630:	00101292 	add.w	$r18,$r20,$r4
80001634:	017e0404 	0x017e0404
80001638:	40182100 	beqz	$r8,6176(0x1820) # 80002e58 <_edata+0x13c8>
8000163c:	30087f80 	0x30087f80
80001640:	00310904 	0x00310904
80001644:	ff101010 	0xff101010
80001648:	00f01010 	bstrpick.d	$r16,$r0,0x30,0x4
8000164c:	0808f800 	0x0808f800
80001650:	0000f808 	0x0000f808
80001654:	0f304080 	0x0f304080
80001658:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
8000165c:	20207f00 	ll.w	$r0,$r24,8316(0x207c)
80001660:	00007f20 	0x00007f20
80001664:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001668:	3d64a424 	0x3d64a424
8000166c:	242424a6 	ldptr.w	$r6,$r5,9252(0x2424)
80001670:	00042424 	alsl.w	$r4,$r1,$r9,0x1
80001674:	100f3040 	addu16i.d	$r0,$r2,972(0x3cc)
80001678:	12121213 	addu16i.d	$r19,$r16,-31612(0x8484)
8000167c:	121212ff 	addu16i.d	$r31,$r23,-31612(0x8484)
80001680:	00101012 	add.w	$r18,$r0,$r4
80001684:	8c026010 	0x8c026010
80001688:	54544400 	bl	21572(0x5444) # 80006acc <_edata+0x503c>
8000168c:	54547f54 	bl	-45067140(0xd50547c) # 7d506b08 <_sidata+0x614fb410>
80001690:	00404454 	0x00404454
80001694:	017e0404 	0x017e0404
80001698:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
8000169c:	95551515 	0x95551515
800016a0:	0000007f 	0x0000007f
800016a4:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe39a0 <_sidata+0x63fd82a8>
800016a8:	28102086 	ld.b	$r6,$r4,1032(0x408)
800016ac:	2824e324 	ld.b	$r4,$r25,-1736(0x938)
800016b0:	00202010 	div.w	$r16,$r0,$r8
800016b4:	0804ff00 	0x0804ff00
800016b8:	410d1127 	beqz	$r9,1903888(0x1d0d10) # 801d23c8 <_edata+0x1d0938>
800016bc:	05017f81 	0x05017f81
800016c0:	00003109 	revb.2h	$r9,$r8
800016c4:	82e20000 	0x82e20000
800016c8:	82828282 	0x82828282
800016cc:	fe828282 	0xfe828282
800016d0:	00000000 	0x00000000
800016d4:	403f0000 	beqz	$r0,16128(0x3f00) # 800055d4 <_edata+0x3b44>
800016d8:	40404040 	beqz	$r2,16448(0x4040) # 80005718 <_edata+0x3c88>
800016dc:	40404040 	beqz	$r2,16448(0x4040) # 8000571c <_edata+0x3c8c>
800016e0:	00007840 	0x00007840
800016e4:	7f000000 	0x7f000000
800016e8:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256030 <_edata+0x2545a0>
800016ec:	7f494949 	0x7f494949
800016f0:	00000000 	0x00000000
800016f4:	1d214181 	pcaddu12i	$r1,-456180(0x90a0c)
800016f8:	ff814121 	0xff814121
800016fc:	89898989 	0x89898989
80001700:	00818189 	bstrins.d	$r9,$r12,0x1,0x20
80001704:	82820200 	0x82820200
80001708:	fa122242 	0xfa122242
8000170c:	42222206 	beqz	$r16,1712672(0x1a2220) # 801a392c <_edata+0x1a1e9c>
80001710:	00008242 	0x00008242
80001714:	fc000101 	0xfc000101
80001718:	45444444 	bnez	$r2,1131588(0x114444) # 80115b5c <_edata+0x1140cc>
8000171c:	fc444444 	0xfc444444
80001720:	00010000 	asrtle.d	$r0,$r0
80001724:	ff101010 	0xff101010
80001728:	3f009010 	0x3f009010
8000172c:	44444848 	bnez	$r2,2114632(0x204448) # 80205b74 <_edata+0x2040e4>
80001730:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001734:	7f824404 	0x7f824404
80001738:	ff000001 	0xff000001
8000173c:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256084 <_edata+0x2545f4>
80001740:	0000ff49 	0x0000ff49
80001744:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc374 <_sidata+0x63ff0c7c>
80001748:	f8080810 	0xf8080810
8000174c:	f8080e09 	0xf8080e09
80001750:	00000808 	0x00000808
80001754:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001758:	21408092 	sc.w	$r18,$r4,16512(0x4080)
8000175c:	21160816 	sc.w	$r22,$r0,5640(0x1608)
80001760:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001764:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001768:	54544400 	bl	21572(0x5444) # 80006bac <_edata+0x511c>
8000176c:	54547f54 	bl	-45067140(0xd50547c) # 7d506be8 <_sidata+0x614fb4f0>
80001770:	00404454 	0x00404454
80001774:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001778:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
8000177c:	95551515 	0x95551515
80001780:	0000007f 	0x0000007f
80001784:	ff101010 	0xff101010
80001788:	88982090 	0x88982090
8000178c:	888ee988 	0x888ee988
80001790:	0098a888 	bstrins.d	$r8,$r4,0x18,0x2a
80001794:	7f814202 	0x7f814202
80001798:	84800000 	0x84800000
8000179c:	2810284b 	ld.b	$r11,$r2,1034(0x40a)
800017a0:	00008047 	0x00008047
800017a4:	24240000 	ldptr.w	$r0,$r0,9216(0x2400)
800017a8:	fc242424 	0xfc242424
800017ac:	23222222 	sc.d	$r2,$r17,8736(0x2220)
800017b0:	00000022 	0x00000022
800017b4:	02020202 	slti	$r2,$r16,128(0x80)
800017b8:	7f824202 	0x7f824202
800017bc:	02020202 	slti	$r2,$r16,128(0x80)
800017c0:	00020202 	0x00020202
800017c4:	ff101010 	0xff101010
800017c8:	3f009010 	0x3f009010
800017cc:	44444848 	bnez	$r2,2114632(0x204448) # 80205c14 <_edata+0x204184>
800017d0:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
800017d4:	7f824404 	0x7f824404
800017d8:	ff000001 	0xff000001
800017dc:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256124 <_edata+0x254694>
800017e0:	0000ff49 	0x0000ff49
800017e4:	92828080 	0x92828080
800017e8:	92929292 	0x92929292
800017ec:	fe929292 	0xfe929292
800017f0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
800017f4:	24224040 	ldptr.w	$r0,$r2,8768(0x2240)
800017f8:	7f804810 	0x7f804810
800017fc:	24180804 	ldptr.w	$r4,$r0,6152(0x1808)
80001800:	00404022 	0x00404022
80001804:	00000000 	0x00000000
80001808:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
8000180c:	000000e0 	0x000000e0
80001810:	00000000 	0x00000000
80001814:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001818:	0000030c 	0x0000030c
8000181c:	300c0300 	0x300c0300
80001820:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001824:	ff101010 	0xff101010
80001828:	3f009010 	0x3f009010
8000182c:	44444848 	bnez	$r2,2114632(0x204448) # 80205c74 <_edata+0x2041e4>
80001830:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001834:	7f824404 	0x7f824404
80001838:	ff000001 	0xff000001
8000183c:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256184 <_edata+0x2546f4>
80001840:	0000ff49 	0x0000ff49
80001844:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc474 <_sidata+0x63ff0d7c>
80001848:	f8080810 	0xf8080810
8000184c:	f8080e09 	0xf8080e09
80001850:	00000808 	0x00000808
80001854:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001858:	21408092 	sc.w	$r18,$r4,16512(0x4080)
8000185c:	21160816 	sc.w	$r22,$r0,5640(0x1608)
80001860:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001864:	88f80000 	0x88f80000
80001868:	08888888 	0x08888888
8000186c:	0908ff08 	0x0908ff08
80001870:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001874:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001878:	801f2010 	0x801f2010
8000187c:	18162140 	pcaddi	$r0,45322(0xb10a)
80001880:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001884:	f8080808 	0xf8080808
80001888:	10080808 	addu16i.d	$r8,$r0,514(0x202)
8000188c:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
80001890:	0000f010 	0x0000f010
80001894:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001898:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
8000189c:	8040010e 	0x8040010e
800018a0:	00003f40 	revb.d	$r0,$r26
800018a4:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800018a8:	ff101010 	0xff101010
800018ac:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800018b0:	00000010 	0x00000010
800018b4:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800018b8:	01030d11 	fsub.d	$f17,$f8,$f3
800018bc:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800018c0:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800018c4:	fa02fe00 	0xfa02fe00
800018c8:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800018cc:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800018d0:	001010f0 	add.w	$r16,$r7,$r4
800018d4:	0f304780 	0x0f304780
800018d8:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc0993c <_sidata+0x63bfe244>
800018dc:	16081621 	lu32i.d	$r1,16561(0x40b1)
800018e0:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
800018e4:	927e0000 	0x927e0000
800018e8:	92929292 	0x92929292
800018ec:	9e929292 	0x9e929292
800018f0:	0000e080 	0x0000e080
800018f4:	28488808 	ld.h	$r8,$r0,546(0x222)
800018f8:	0808081e 	0x0808081e
800018fc:	08fe0808 	0x08fe0808
80001900:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
80001904:	ea081820 	0xea081820
80001908:	afa8a8ac 	0xafa8a8ac
8000190c:	eaaca8a8 	0xeaaca8a8
80001910:	00182808 	sra.w	$r8,$r0,$r10
80001914:	023e0000 	slti	$r0,$r0,-128(0xf80)
80001918:	ff020202 	0xff020202
8000191c:	22120202 	ll.d	$r2,$r16,4608(0x1200)
80001920:	0000001e 	0x0000001e
80001924:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001928:	54544400 	bl	21572(0x5444) # 80006d6c <_edata+0x52dc>
8000192c:	54547f54 	bl	-45067140(0xd50547c) # 7d506da8 <_sidata+0x614fb6b0>
80001930:	00404454 	0x00404454
80001934:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001938:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
8000193c:	95551515 	0x95551515
80001940:	0000007f 	0x0000007f
80001944:	fea42424 	0xfea42424
80001948:	e2002223 	0xe2002223
8000194c:	203f202c 	ll.w	$r12,$r1,16160(0x3f20)
80001950:	0000e628 	0x0000e628
80001954:	ff010608 	0xff010608
80001958:	ff000601 	0xff000601
8000195c:	49090909 	bcnez	$fcc0,2427144(0x250908) # 80252264 <_edata+0x2507d4>
80001960:	00007f89 	0x00007f89
80001964:	fc000000 	0xfc000000
80001968:	24242424 	ldptr.w	$r4,$r1,9252(0x2424)
8000196c:	23222222 	sc.d	$r2,$r17,8736(0x2220)
80001970:	00202022 	div.w	$r2,$r1,$r8
80001974:	07182040 	0x07182040
80001978:	4242fe00 	beqz	$r16,148220(0x242fc) # 80025c74 <_edata+0x241e4>
8000197c:	42424242 	beqz	$r18,672320(0xa4240) # 800a5bbc <_edata+0xa412c>
80001980:	000000fe 	0x000000fe
80001984:	92f20202 	0x92f20202
80001988:	fe929292 	0xfe929292
8000198c:	92929292 	0x92929292
80001990:	000202f2 	0x000202f2
80001994:	04ff0404 	csrrd	$r4,0x3fc1
80001998:	07040404 	0x07040404
8000199c:	84440404 	0x84440404
800019a0:	0004047f 	alsl.w	$r31,$r3,$r1,0x1
800019a4:	cc424040 	0xcc424040
800019a8:	90909000 	0x90909000
800019ac:	10ff9090 	addu16i.d	$r16,$r4,16356(0x3fe4)
800019b0:	00101611 	add.w	$r17,$r16,$r5
800019b4:	3f000000 	0x3f000000
800019b8:	3f602810 	0x3f602810
800019bc:	0e011010 	0x0e011010
800019c0:	00f04030 	bstrpick.d	$r16,$r1,0x30,0x10
800019c4:	10f00000 	addu16i.d	$r0,$r0,15360(0x3c00)
800019c8:	ff101010 	0xff101010
800019cc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800019d0:	000000f0 	0x000000f0
800019d4:	040f0000 	csrrd	$r0,0x3c0
800019d8:	ff040404 	0xff040404
800019dc:	04040404 	csrrd	$r4,0x101
800019e0:	0000000f 	0x0000000f
800019e4:	fc000000 	0xfc000000
800019e8:	54555654 	bl	-112175788(0x9505554) # 79506f3c <_sidata+0x5d4fb844>
800019ec:	fc545454 	0xfc545454
800019f0:	00408000 	slli.w	$r0,$r0,0x0
800019f4:	23424240 	sc.d	$r0,$r18,16960(0x4240)
800019f8:	12122222 	addu16i.d	$r2,$r17,-31608(0x8488)
800019fc:	7f82460a 	0x7f82460a
80001a00:	00000001 	0x00000001
80001a04:	f8608000 	0xf8608000
80001a08:	b0408007 	0xb0408007
80001a0c:	8780808e 	0x8780808e
80001a10:	00806098 	bstrins.d	$r24,$r4,0x0,0x18
80001a14:	ff000001 	0xff000001
80001a18:	30408000 	vldrepl.h	$vr0,$r0,64(0x40)
80001a1c:	8040000f 	0x8040000f
80001a20:	0000007f 	0x0000007f
80001a24:	8282fa02 	0x8282fa02
80001a28:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
80001a2c:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
80001a30:	00402050 	0x00402050
80001a34:	84481808 	0x84481808
80001a38:	44403f44 	bnez	$r26,1065020(0x10403c) # 80105a74 <_edata+0x103fe4>
80001a3c:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 8000687c <_edata+0x4dec>
80001a40:	00404758 	0x00404758
80001a44:	cc424040 	0xcc424040
80001a48:	c4040000 	0xc4040000
80001a4c:	04fc0404 	csrrd	$r4,0x3f01
80001a50:	00040404 	alsl.w	$r4,$r0,$r1,0x1
80001a54:	3f000000 	0x3f000000
80001a58:	7f404810 	0x7f404810
80001a5c:	417f4040 	beqz	$r2,98112(0x17f40) # 8001999c <_edata+0x17f0c>
80001a60:	00404141 	0x00404141

80001a64 <passwordArray>:
80001a64:	000004d2 	0x000004d2
80001a68:	000004d2 	0x000004d2
80001a6c:	000004d2 	0x000004d2
80001a70:	000004d2 	0x000004d2
80001a74:	000004d2 	0x000004d2

80001a78 <IDArray>:
80001a78:	0000000d 	0x0000000d
	...

80001a8c <flag1>:
80001a8c:	 	0x00000101

80001a8d <mode>:
80001a8d:	Address 0x0000000080001a8d is out of bounds.


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
