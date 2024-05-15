
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438008f 	lu12i.w	$r15,114692(0x1c004)
1c00000c:	03b381ef 	ori	$r15,$r15,0xce0
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
1c000030:	038031ef 	ori	$r15,$r15,0xc
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038001ad 	ori	$r13,$r13,0x0
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
1c0000a0:	542fac00 	bl	12204(0x2fac) # 1c00304c <main>
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
1c001090:	542b2000 	bl	11040(0x2b20) # 1c003bb0 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	542b6000 	bl	11104(0x2b60) # 1c003bf8 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	542be400 	bl	11236(0x2be4) # 1c003c84 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	542c1800 	bl	11288(0x2c18) # 1c003cc0 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	542a3000 	bl	10800(0x2a30) # 1c003ae0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	542dbc00 	bl	11708(0x2dbc) # 1c003e74 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	542cd000 	bl	11472(0x2cd0) # 1c003d98 <INTC_Handler>
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
1c0011cc:	54058c00 	bl	1420(0x58c) # 1c001758 <UART_SendData>
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
1c00144c:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c001450:	02a9818c 	addi.w	$r12,$r12,-1440(0xa60)
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

1c001758 <UART_SendData>:
UART_SendData():
1c001758:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00175c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001760:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001764:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001768:	001500ac 	move	$r12,$r5
1c00176c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001770:	03400000 	andi	$r0,$r0,0x0
1c001774:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001778:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00177c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001780:	0340818c 	andi	$r12,$r12,0x20
1c001784:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001774 <UART_SendData+0x1c>
1c001788:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00178c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001790:	2900018d 	st.b	$r13,$r12,0
1c001794:	03400000 	andi	$r0,$r0,0x0
1c001798:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00179c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0017a0:	4c000020 	jirl	$r0,$r1,0

1c0017a4 <WDG_DogFeed>:
WDG_DogFeed():
1c0017a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017a8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0017ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0017b8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0017bc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0017c0:	03400000 	andi	$r0,$r0,0x0
1c0017c4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0017c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017cc:	4c000020 	jirl	$r0,$r1,0

1c0017d0 <gpio_init>:
gpio_init():
1c0017d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0017d4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0017d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0017dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0017e0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0017e4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0017e8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0017ec:	6000698d 	blt	$r12,$r13,104(0x68) # 1c001854 <gpio_init+0x84>
1c0017f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0017f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0017fc:	44003180 	bnez	$r12,48(0x30) # 1c00182c <gpio_init+0x5c>
1c001800:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001804:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001808:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00180c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001810:	001731cc 	sll.w	$r12,$r14,$r12
1c001814:	0014300c 	nor	$r12,$r0,$r12
1c001818:	0015018e 	move	$r14,$r12
1c00181c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001820:	0014b9ad 	and	$r13,$r13,$r14
1c001824:	2981018d 	st.w	$r13,$r12,64(0x40)
1c001828:	50009000 	b	144(0x90) # 1c0018b8 <gpio_init+0xe8>
1c00182c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001830:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001834:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00183c:	001731cc 	sll.w	$r12,$r14,$r12
1c001840:	0015018e 	move	$r14,$r12
1c001844:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001848:	001539ad 	or	$r13,$r13,$r14
1c00184c:	2981018d 	st.w	$r13,$r12,64(0x40)
1c001850:	50006800 	b	104(0x68) # 1c0018b8 <gpio_init+0xe8>
1c001854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001858:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00185c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001860:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001864:	44003180 	bnez	$r12,48(0x30) # 1c001894 <gpio_init+0xc4>
1c001868:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00186c:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c001870:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001878:	001731cc 	sll.w	$r12,$r14,$r12
1c00187c:	0014300c 	nor	$r12,$r0,$r12
1c001880:	0015018e 	move	$r14,$r12
1c001884:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001888:	0014b9ad 	and	$r13,$r13,$r14
1c00188c:	2981418d 	st.w	$r13,$r12,80(0x50)
1c001890:	50002800 	b	40(0x28) # 1c0018b8 <gpio_init+0xe8>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c00189c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0018a8:	0015018e 	move	$r14,$r12
1c0018ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b0:	001539ad 	or	$r13,$r13,$r14
1c0018b4:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0018b8:	03400000 	andi	$r0,$r0,0x0
1c0018bc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0018c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0018c4:	4c000020 	jirl	$r0,$r1,0

1c0018c8 <gpio_write>:
gpio_write():
1c0018c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0018cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0018d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0018d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0018d8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0018dc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0018e0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018e4:	6000698d 	blt	$r12,$r13,104(0x68) # 1c00194c <gpio_write+0x84>
1c0018e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0018f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0018f4:	44003180 	bnez	$r12,48(0x30) # 1c001924 <gpio_write+0x5c>
1c0018f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018fc:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001900:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001904:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001908:	001731cc 	sll.w	$r12,$r14,$r12
1c00190c:	0014300c 	nor	$r12,$r0,$r12
1c001910:	0015018e 	move	$r14,$r12
1c001914:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001918:	0014b9ad 	and	$r13,$r13,$r14
1c00191c:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001920:	50009000 	b	144(0x90) # 1c0019b0 <gpio_write+0xe8>
1c001924:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001928:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c00192c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001930:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001934:	001731cc 	sll.w	$r12,$r14,$r12
1c001938:	0015018e 	move	$r14,$r12
1c00193c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001940:	001539ad 	or	$r13,$r13,$r14
1c001944:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001948:	50006800 	b	104(0x68) # 1c0019b0 <gpio_write+0xe8>
1c00194c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001950:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001954:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001958:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00195c:	44003180 	bnez	$r12,48(0x30) # 1c00198c <gpio_write+0xc4>
1c001960:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001964:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001968:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00196c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001970:	001731cc 	sll.w	$r12,$r14,$r12
1c001974:	0014300c 	nor	$r12,$r0,$r12
1c001978:	0015018e 	move	$r14,$r12
1c00197c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001980:	0014b9ad 	and	$r13,$r13,$r14
1c001984:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001988:	50002800 	b	40(0x28) # 1c0019b0 <gpio_write+0xe8>
1c00198c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001990:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001994:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001998:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00199c:	001731cc 	sll.w	$r12,$r14,$r12
1c0019a0:	0015018e 	move	$r14,$r12
1c0019a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019a8:	001539ad 	or	$r13,$r13,$r14
1c0019ac:	2981518d 	st.w	$r13,$r12,84(0x54)
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0019b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019bc:	4c000020 	jirl	$r0,$r1,0

1c0019c0 <soc_I2C_delay>:
soc_I2C_delay():
1c0019c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0019c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0019d0:	03400000 	andi	$r0,$r0,0x0
1c0019d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0019dc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0019e0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c0019d4 <soc_I2C_delay+0x14>
1c0019e4:	03400000 	andi	$r0,$r0,0x0
1c0019e8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0019ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019f0:	4c000020 	jirl	$r0,$r1,0

1c0019f4 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c0019f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0019fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001a00:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a08:	1400060d 	lu12i.w	$r13,48(0x30)
1c001a0c:	03b501ad 	ori	$r13,$r13,0xd40
1c001a10:	2980018d 	st.w	$r13,$r12,0
1c001a14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a18:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001a1c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001a20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a24:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001a28:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001a2c:	03400000 	andi	$r0,$r0,0x0
1c001a30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001a34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a38:	4c000020 	jirl	$r0,$r1,0

1c001a3c <soc_I2C_Init>:
soc_I2C_Init():
1c001a3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a40:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001a44:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001a48:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a4c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a50:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a54:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001a58:	0388018c 	ori	$r12,$r12,0x200
1c001a5c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a60:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001a64:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001a68:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001a6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a70:	2880018d 	ld.w	$r13,$r12,0
1c001a74:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001a78:	002135cc 	div.wu	$r12,$r14,$r13
1c001a7c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a84 <soc_I2C_Init+0x48>
1c001a80:	002a0007 	break	0x7
1c001a84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a8c:	0044898c 	srli.w	$r12,$r12,0x2
1c001a90:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a98:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001a9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001aa0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001aa4:	2900018d 	st.b	$r13,$r12,0
1c001aa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aac:	0044a18d 	srli.w	$r13,$r12,0x8
1c001ab0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ab4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001ab8:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001abc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ac0:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001ac4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001ac8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001acc:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001ad0:	40001180 	beqz	$r12,16(0x10) # 1c001ae0 <soc_I2C_Init+0xa4>
1c001ad4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ad8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001adc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001ae0:	5400e800 	bl	232(0xe8) # 1c001bc8 <soc_I2C_wait>
1c001ae4:	03400000 	andi	$r0,$r0,0x0
1c001ae8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001aec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001af0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001af4:	4c000020 	jirl	$r0,$r1,0

1c001af8 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001af8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001afc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001b00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001b04:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001b08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b0c:	40001580 	beqz	$r12,20(0x14) # 1c001b20 <soc_I2C_GenerateSTART+0x28>
1c001b10:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b14:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001b18:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b1c:	50001000 	b	16(0x10) # 1c001b2c <soc_I2C_GenerateSTART+0x34>
1c001b20:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b24:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001b28:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b2c:	03400000 	andi	$r0,$r0,0x0
1c001b30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001b34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001b38:	4c000020 	jirl	$r0,$r1,0

1c001b3c <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001b3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001b40:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001b44:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001b48:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b50:	40001580 	beqz	$r12,20(0x14) # 1c001b64 <soc_I2C_GenerateSTOP+0x28>
1c001b54:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b58:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001b5c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b60:	50001000 	b	16(0x10) # 1c001b70 <soc_I2C_GenerateSTOP+0x34>
1c001b64:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b68:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001b6c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b70:	03400000 	andi	$r0,$r0,0x0
1c001b74:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001b78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001b7c:	4c000020 	jirl	$r0,$r1,0

1c001b80 <soc_I2C_SendData>:
soc_I2C_SendData():
1c001b80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001b84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001b88:	29806076 	st.w	$r22,$r3,24(0x18)
1c001b8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001b90:	0015008c 	move	$r12,$r4
1c001b94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b98:	54007800 	bl	120(0x78) # 1c001c10 <soc_I2C_Unlock>
1c001b9c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ba0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001ba4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001ba8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bac:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001bb0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001bb4:	03400000 	andi	$r0,$r0,0x0
1c001bb8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001bbc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001bc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001bc4:	4c000020 	jirl	$r0,$r1,0

1c001bc8 <soc_I2C_wait>:
soc_I2C_wait():
1c001bc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001bcc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bd4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bd8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001bdc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001be0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001be4:	50001000 	b	16(0x10) # 1c001bf4 <soc_I2C_wait+0x2c>
1c001be8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bec:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001bf0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001bf4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001bf8:	0340098c 	andi	$r12,$r12,0x2
1c001bfc:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001be8 <soc_I2C_wait+0x20>
1c001c00:	03400000 	andi	$r0,$r0,0x0
1c001c04:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c0c:	4c000020 	jirl	$r0,$r1,0

1c001c10 <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001c10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c14:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c1c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c20:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001c24:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001c2c:	0340118c 	andi	$r12,$r12,0x4
1c001c30:	40001180 	beqz	$r12,16(0x10) # 1c001c40 <soc_I2C_Unlock+0x30>
1c001c34:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c38:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001c3c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c40:	03400000 	andi	$r0,$r0,0x0
1c001c44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c4c:	4c000020 	jirl	$r0,$r1,0

1c001c50 <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001c50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001c54:	29803076 	st.w	$r22,$r3,12(0xc)
1c001c58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001c5c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001c60:	0380c18c 	ori	$r12,$r12,0x30
1c001c64:	29802180 	st.w	$r0,$r12,8(0x8)
1c001c68:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001c6c:	0380c18c 	ori	$r12,$r12,0x30
1c001c70:	140004ed 	lu12i.w	$r13,39(0x27)
1c001c74:	038401ad 	ori	$r13,$r13,0x100
1c001c78:	2980018d 	st.w	$r13,$r12,0
1c001c7c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001c80:	0380c18c 	ori	$r12,$r12,0x30
1c001c84:	03be800d 	ori	$r13,$r0,0xfa0
1c001c88:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001c8c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001c90:	0380c18c 	ori	$r12,$r12,0x30
1c001c94:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001c98:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001c9c:	03400000 	andi	$r0,$r0,0x0
1c001ca0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001ca4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ca8:	4c000020 	jirl	$r0,$r1,0

1c001cac <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001cac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cb0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001cb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001cb8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001cbc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001cc0:	028c800c 	addi.w	$r12,$r0,800(0x320)
1c001cc4:	001c31ae 	mul.w	$r14,$r13,$r12
1c001cc8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ccc:	002031cd 	div.w	$r13,$r14,$r12
1c001cd0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001cd8 <pwm_steering_engine_set+0x2c>
1c001cd4:	002a0007 	break	0x7
1c001cd8:	03be800c 	ori	$r12,$r0,0xfa0
1c001cdc:	001031ad 	add.w	$r13,$r13,$r12
1c001ce0:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001ce4:	0380c18c 	ori	$r12,$r12,0x30
1c001ce8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001cec:	03400000 	andi	$r0,$r0,0x0
1c001cf0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001cf4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cf8:	4c000020 	jirl	$r0,$r1,0

1c001cfc <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001cfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d08:	0015008c 	move	$r12,$r4
1c001d0c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d10:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001d14:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001d18:	03400dad 	andi	$r13,$r13,0x3
1c001d1c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001d20:	2900018d 	st.b	$r13,$r12,0
1c001d24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d28:	0044898c 	srli.w	$r12,$r12,0x2
1c001d2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001d30:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001d34:	03400dad 	andi	$r13,$r13,0x3
1c001d38:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001d3c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001d40:	03400000 	andi	$r0,$r0,0x0
1c001d44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d4c:	4c000020 	jirl	$r0,$r1,0

1c001d50 <soc_Spi_Init>:
soc_Spi_Init():
1c001d50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d54:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001d58:	29806076 	st.w	$r22,$r3,24(0x18)
1c001d5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d60:	0015008c 	move	$r12,$r4
1c001d64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d6c:	00150184 	move	$r4,$r12
1c001d70:	57ff8fff 	bl	-116(0xfffff8c) # 1c001cfc <soc_Spi_FreqDiv>
1c001d74:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001d78:	2a00018c 	ld.bu	$r12,$r12,0
1c001d7c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001d80:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001d84:	038141ad 	ori	$r13,$r13,0x50
1c001d88:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001d8c:	2900018d 	st.b	$r13,$r12,0
1c001d90:	03400000 	andi	$r0,$r0,0x0
1c001d94:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001d98:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001d9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001da0:	0340118c 	andi	$r12,$r12,0x4
1c001da4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001d94 <soc_Spi_Init+0x44>
1c001da8:	03400000 	andi	$r0,$r0,0x0
1c001dac:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001db0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001db4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001db8:	0340058c 	andi	$r12,$r12,0x1
1c001dbc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001dac <soc_Spi_Init+0x5c>
1c001dc0:	03400000 	andi	$r0,$r0,0x0
1c001dc4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001dc8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001dcc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001dd0:	4c000020 	jirl	$r0,$r1,0

1c001dd4 <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001dd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001dd8:	29803076 	st.w	$r22,$r3,12(0xc)
1c001ddc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001de0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001de4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001de8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001dec:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001df0:	038009ad 	ori	$r13,$r13,0x2
1c001df4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001df8:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001dfc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e00:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001e04:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001e08:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e0c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001e10:	0014b5cd 	and	$r13,$r14,$r13
1c001e14:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e18:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001e1c:	03400000 	andi	$r0,$r0,0x0
1c001e20:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001e24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e28:	4c000020 	jirl	$r0,$r1,0

1c001e2c <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c001e2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e30:	29803076 	st.w	$r22,$r3,12(0xc)
1c001e34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e38:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e3c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001e40:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e44:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e48:	038009ad 	ori	$r13,$r13,0x2
1c001e4c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e50:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001e54:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e58:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001e5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e60:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e64:	038081ad 	ori	$r13,$r13,0x20
1c001e68:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e6c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001e70:	03400000 	andi	$r0,$r0,0x0
1c001e74:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001e78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e7c:	4c000020 	jirl	$r0,$r1,0

1c001e80 <my_recv_dat_int>:
my_recv_dat_int():
1c001e80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001e88:	29806076 	st.w	$r22,$r3,24(0x18)
1c001e8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e90:	0015008c 	move	$r12,$r4
1c001e94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e98:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001e9c:	2885b18c 	ld.w	$r12,$r12,364(0x16c)
1c001ea0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001ea4:	2900018d 	st.b	$r13,$r12,0
1c001ea8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001eac:	00150185 	move	$r5,$r12
1c001eb0:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001eb4:	02854084 	addi.w	$r4,$r4,336(0x150)
1c001eb8:	5410b800 	bl	4280(0x10b8) # 1c002f70 <Buffer_write>
1c001ebc:	03400000 	andi	$r0,$r0,0x0
1c001ec0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ec4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ec8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ecc:	4c000020 	jirl	$r0,$r1,0

1c001ed0 <SG90_GetAngle>:
SG90_GetAngle():
1c001ed0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ed4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001ed8:	29806076 	st.w	$r22,$r3,24(0x18)
1c001edc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ee0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001ee4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c001ee8:	57fdc7ff 	bl	-572(0xffffdc4) # 1c001cac <pwm_steering_engine_set>
1c001eec:	03400000 	andi	$r0,$r0,0x0
1c001ef0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ef4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ef8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001efc:	4c000020 	jirl	$r0,$r1,0

1c001f00 <SG90_Init>:
SG90_Init():
1c001f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f04:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f08:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f10:	00150004 	move	$r4,$r0
1c001f14:	57ffbfff 	bl	-68(0xfffffbc) # 1c001ed0 <SG90_GetAngle>
1c001f18:	03400000 	andi	$r0,$r0,0x0
1c001f1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f28:	4c000020 	jirl	$r0,$r1,0

1c001f2c <hw_uart_init>:
hw_uart_init():
1c001f2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f30:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001f34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f3c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001f40:	0283318c 	addi.w	$r12,$r12,204(0xcc)
1c001f44:	2880018e 	ld.w	$r14,$r12,0
1c001f48:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001f50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001f58 <hw_uart_init+0x2c>
1c001f54:	002a0007 	break	0x7
1c001f58:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001f64:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001f68:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f70:	0044a18d 	srli.w	$r13,$r12,0x8
1c001f74:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001f78:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f7c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001f80:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001f84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001f88:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f8c:	2900018d 	st.b	$r13,$r12,0
1c001f90:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001f94:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c001f98:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001f9c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001fa0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001fa4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fa8:	03400000 	andi	$r0,$r0,0x0
1c001fac:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001fb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001fb4:	4c000020 	jirl	$r0,$r1,0

1c001fb8 <TIM_GetITStatus>:
TIM_GetITStatus():
1c001fb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001fbc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001fc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001fc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001fc8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001fcc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001fd0:	2880018d 	ld.w	$r13,$r12,0
1c001fd4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd8:	0014b1ac 	and	$r12,$r13,$r12
1c001fdc:	40001180 	beqz	$r12,16(0x10) # 1c001fec <TIM_GetITStatus+0x34>
1c001fe0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001fe4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fe8:	50000800 	b	8(0x8) # 1c001ff0 <TIM_GetITStatus+0x38>
1c001fec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001ff0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ff4:	00150184 	move	$r4,$r12
1c001ff8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001ffc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002000:	4c000020 	jirl	$r0,$r1,0

1c002004 <TIM_ClearIT>:
TIM_ClearIT():
1c002004:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002008:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00200c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002010:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002014:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c002018:	2880018e 	ld.w	$r14,$r12,0
1c00201c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c002020:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002024:	001535cd 	or	$r13,$r14,$r13
1c002028:	2980018d 	st.w	$r13,$r12,0
1c00202c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002030:	03800d8c 	ori	$r12,$r12,0x3
1c002034:	2a00018c 	ld.bu	$r12,$r12,0
1c002038:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00203c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002040:	03800d8c 	ori	$r12,$r12,0x3
1c002044:	038005ad 	ori	$r13,$r13,0x1
1c002048:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00204c:	2900018d 	st.b	$r13,$r12,0
1c002050:	03400000 	andi	$r0,$r0,0x0
1c002054:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002058:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00205c:	4c000020 	jirl	$r0,$r1,0

1c002060 <WriteCmd>:
WriteCmd():
1c002060:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002064:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002068:	29806076 	st.w	$r22,$r3,24(0x18)
1c00206c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002070:	0015008c 	move	$r12,$r4
1c002074:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002078:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00207c:	57fa7fff 	bl	-1412(0xffffa7c) # 1c001af8 <soc_I2C_GenerateSTART>
1c002080:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c002084:	57faffff 	bl	-1284(0xffffafc) # 1c001b80 <soc_I2C_SendData>
1c002088:	57fb43ff 	bl	-1216(0xffffb40) # 1c001bc8 <soc_I2C_wait>
1c00208c:	00150004 	move	$r4,$r0
1c002090:	57faf3ff 	bl	-1296(0xffffaf0) # 1c001b80 <soc_I2C_SendData>
1c002094:	57fb37ff 	bl	-1228(0xffffb34) # 1c001bc8 <soc_I2C_wait>
1c002098:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00209c:	00150184 	move	$r4,$r12
1c0020a0:	57fae3ff 	bl	-1312(0xffffae0) # 1c001b80 <soc_I2C_SendData>
1c0020a4:	57fb27ff 	bl	-1244(0xffffb24) # 1c001bc8 <soc_I2C_wait>
1c0020a8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0020ac:	57fa93ff 	bl	-1392(0xffffa90) # 1c001b3c <soc_I2C_GenerateSTOP>
1c0020b0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0020b4:	57f90fff 	bl	-1780(0xffff90c) # 1c0019c0 <soc_I2C_delay>
1c0020b8:	03400000 	andi	$r0,$r0,0x0
1c0020bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0020c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0020c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020c8:	4c000020 	jirl	$r0,$r1,0

1c0020cc <WriteDat>:
WriteDat():
1c0020cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020d0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0020d4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0020d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020dc:	0015008c 	move	$r12,$r4
1c0020e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0020e4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0020e8:	57fa13ff 	bl	-1520(0xffffa10) # 1c001af8 <soc_I2C_GenerateSTART>
1c0020ec:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0020f0:	57fa93ff 	bl	-1392(0xffffa90) # 1c001b80 <soc_I2C_SendData>
1c0020f4:	57fad7ff 	bl	-1324(0xffffad4) # 1c001bc8 <soc_I2C_wait>
1c0020f8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0020fc:	57fa87ff 	bl	-1404(0xffffa84) # 1c001b80 <soc_I2C_SendData>
1c002100:	57facbff 	bl	-1336(0xffffac8) # 1c001bc8 <soc_I2C_wait>
1c002104:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002108:	00150184 	move	$r4,$r12
1c00210c:	57fa77ff 	bl	-1420(0xffffa74) # 1c001b80 <soc_I2C_SendData>
1c002110:	57fabbff 	bl	-1352(0xffffab8) # 1c001bc8 <soc_I2C_wait>
1c002114:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002118:	57fa27ff 	bl	-1500(0xffffa24) # 1c001b3c <soc_I2C_GenerateSTOP>
1c00211c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002120:	57f8a3ff 	bl	-1888(0xffff8a0) # 1c0019c0 <soc_I2C_delay>
1c002124:	03400000 	andi	$r0,$r0,0x0
1c002128:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00212c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002130:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002134:	4c000020 	jirl	$r0,$r1,0

1c002138 <OLED_Init>:
OLED_Init():
1c002138:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00213c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002140:	29806076 	st.w	$r22,$r3,24(0x18)
1c002144:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002148:	140016cc 	lu12i.w	$r12,182(0xb6)
1c00214c:	0399418c 	ori	$r12,$r12,0x650
1c002150:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002154:	50001400 	b	20(0x14) # 1c002168 <OLED_Init+0x30>
1c002158:	03400000 	andi	$r0,$r0,0x0
1c00215c:	03400000 	andi	$r0,$r0,0x0
1c002160:	03400000 	andi	$r0,$r0,0x0
1c002164:	03400000 	andi	$r0,$r0,0x0
1c002168:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00216c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002170:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002174:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002158 <OLED_Init+0x20>
1c002178:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c00217c:	57fee7ff 	bl	-284(0xffffee4) # 1c002060 <WriteCmd>
1c002180:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002184:	57fedfff 	bl	-292(0xffffedc) # 1c002060 <WriteCmd>
1c002188:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00218c:	57fed7ff 	bl	-300(0xffffed4) # 1c002060 <WriteCmd>
1c002190:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c002194:	57fecfff 	bl	-308(0xffffecc) # 1c002060 <WriteCmd>
1c002198:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c00219c:	57fec7ff 	bl	-316(0xffffec4) # 1c002060 <WriteCmd>
1c0021a0:	00150004 	move	$r4,$r0
1c0021a4:	57febfff 	bl	-324(0xffffebc) # 1c002060 <WriteCmd>
1c0021a8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0021ac:	57feb7ff 	bl	-332(0xffffeb4) # 1c002060 <WriteCmd>
1c0021b0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0021b4:	57feafff 	bl	-340(0xffffeac) # 1c002060 <WriteCmd>
1c0021b8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0021bc:	57fea7ff 	bl	-348(0xffffea4) # 1c002060 <WriteCmd>
1c0021c0:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0021c4:	57fe9fff 	bl	-356(0xffffe9c) # 1c002060 <WriteCmd>
1c0021c8:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0021cc:	57fe97ff 	bl	-364(0xffffe94) # 1c002060 <WriteCmd>
1c0021d0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0021d4:	57fe8fff 	bl	-372(0xffffe8c) # 1c002060 <WriteCmd>
1c0021d8:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0021dc:	57fe87ff 	bl	-380(0xffffe84) # 1c002060 <WriteCmd>
1c0021e0:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0021e4:	57fe7fff 	bl	-388(0xffffe7c) # 1c002060 <WriteCmd>
1c0021e8:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0021ec:	57fe77ff 	bl	-396(0xffffe74) # 1c002060 <WriteCmd>
1c0021f0:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0021f4:	57fe6fff 	bl	-404(0xffffe6c) # 1c002060 <WriteCmd>
1c0021f8:	00150004 	move	$r4,$r0
1c0021fc:	57fe67ff 	bl	-412(0xffffe64) # 1c002060 <WriteCmd>
1c002200:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c002204:	57fe5fff 	bl	-420(0xffffe5c) # 1c002060 <WriteCmd>
1c002208:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c00220c:	57fe57ff 	bl	-428(0xffffe54) # 1c002060 <WriteCmd>
1c002210:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c002214:	57fe4fff 	bl	-436(0xffffe4c) # 1c002060 <WriteCmd>
1c002218:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00221c:	57fe47ff 	bl	-444(0xffffe44) # 1c002060 <WriteCmd>
1c002220:	02836804 	addi.w	$r4,$r0,218(0xda)
1c002224:	57fe3fff 	bl	-452(0xffffe3c) # 1c002060 <WriteCmd>
1c002228:	02804804 	addi.w	$r4,$r0,18(0x12)
1c00222c:	57fe37ff 	bl	-460(0xffffe34) # 1c002060 <WriteCmd>
1c002230:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c002234:	57fe2fff 	bl	-468(0xffffe2c) # 1c002060 <WriteCmd>
1c002238:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00223c:	57fe27ff 	bl	-476(0xffffe24) # 1c002060 <WriteCmd>
1c002240:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c002244:	57fe1fff 	bl	-484(0xffffe1c) # 1c002060 <WriteCmd>
1c002248:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00224c:	57fe17ff 	bl	-492(0xffffe14) # 1c002060 <WriteCmd>
1c002250:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c002254:	57fe0fff 	bl	-500(0xffffe0c) # 1c002060 <WriteCmd>
1c002258:	03400000 	andi	$r0,$r0,0x0
1c00225c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002260:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002264:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002268:	4c000020 	jirl	$r0,$r1,0

1c00226c <OLED_SetPos>:
OLED_SetPos():
1c00226c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002270:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002274:	29806076 	st.w	$r22,$r3,24(0x18)
1c002278:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00227c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002280:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002284:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002288:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00228c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c002290:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002294:	00150184 	move	$r4,$r12
1c002298:	57fdcbff 	bl	-568(0xffffdc8) # 1c002060 <WriteCmd>
1c00229c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a0:	0044918c 	srli.w	$r12,$r12,0x4
1c0022a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022a8:	03403d8c 	andi	$r12,$r12,0xf
1c0022ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022b0:	0380418c 	ori	$r12,$r12,0x10
1c0022b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022b8:	00150184 	move	$r4,$r12
1c0022bc:	57fda7ff 	bl	-604(0xffffda4) # 1c002060 <WriteCmd>
1c0022c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022c8:	0340398c 	andi	$r12,$r12,0xe
1c0022cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022d0:	0380058c 	ori	$r12,$r12,0x1
1c0022d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022d8:	00150184 	move	$r4,$r12
1c0022dc:	57fd87ff 	bl	-636(0xffffd84) # 1c002060 <WriteCmd>
1c0022e0:	03400000 	andi	$r0,$r0,0x0
1c0022e4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0022e8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0022ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022f0:	4c000020 	jirl	$r0,$r1,0

1c0022f4 <OLED_Fill>:
OLED_Fill():
1c0022f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0022f8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0022fc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002300:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002304:	0015008c 	move	$r12,$r4
1c002308:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00230c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002310:	50006400 	b	100(0x64) # 1c002374 <OLED_Fill+0x80>
1c002314:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002318:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00231c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c002320:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002324:	00150184 	move	$r4,$r12
1c002328:	57fd3bff 	bl	-712(0xffffd38) # 1c002060 <WriteCmd>
1c00232c:	00150004 	move	$r4,$r0
1c002330:	57fd33ff 	bl	-720(0xffffd30) # 1c002060 <WriteCmd>
1c002334:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002338:	57fd2bff 	bl	-728(0xffffd28) # 1c002060 <WriteCmd>
1c00233c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002340:	50001c00 	b	28(0x1c) # 1c00235c <OLED_Fill+0x68>
1c002344:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002348:	00150184 	move	$r4,$r12
1c00234c:	57fd83ff 	bl	-640(0xffffd80) # 1c0020cc <WriteDat>
1c002350:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002354:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002358:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00235c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002360:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c002364:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c002344 <OLED_Fill+0x50>
1c002368:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00236c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002370:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002374:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002378:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00237c:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c002314 <OLED_Fill+0x20>
1c002380:	03400000 	andi	$r0,$r0,0x0
1c002384:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002388:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00238c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002390:	4c000020 	jirl	$r0,$r1,0

1c002394 <OLED_CLS>:
OLED_CLS():
1c002394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00239c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0023a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0023a4:	00150004 	move	$r4,$r0
1c0023a8:	57ff4fff 	bl	-180(0xfffff4c) # 1c0022f4 <OLED_Fill>
1c0023ac:	03400000 	andi	$r0,$r0,0x0
1c0023b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0023b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023bc:	4c000020 	jirl	$r0,$r1,0

1c0023c0 <OLED_ShowChar>:
OLED_ShowChar():
1c0023c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0023c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0023c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0023cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0023d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023d4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0023d8:	001500cc 	move	$r12,$r6
1c0023dc:	001500ed 	move	$r13,$r7
1c0023e0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0023e4:	001501ac 	move	$r12,$r13
1c0023e8:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c0023ec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0023f0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0023f4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0023f8:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0023fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002400:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002404:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c002408:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c00241c <OLED_ShowChar+0x5c>
1c00240c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002410:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002414:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c002418:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00241c:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c002420:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c002424:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c0024e0 <OLED_ShowChar+0x120>
1c002428:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00242c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002430:	57fe3fff 	bl	-452(0xffffe3c) # 1c00226c <OLED_SetPos>
1c002434:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002438:	50003800 	b	56(0x38) # 1c002470 <OLED_ShowChar+0xb0>
1c00243c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002440:	0040918d 	slli.w	$r13,$r12,0x4
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	001031ac 	add.w	$r12,$r13,$r12
1c00244c:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c002450:	02b761ad 	addi.w	$r13,$r13,-552(0xdd8)
1c002454:	001031ac 	add.w	$r12,$r13,$r12
1c002458:	2a00018c 	ld.bu	$r12,$r12,0
1c00245c:	00150184 	move	$r4,$r12
1c002460:	57fc6fff 	bl	-916(0xffffc6c) # 1c0020cc <WriteDat>
1c002464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00246c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002470:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002474:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002478:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c00243c <OLED_ShowChar+0x7c>
1c00247c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002480:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002484:	00150185 	move	$r5,$r12
1c002488:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00248c:	57fde3ff 	bl	-544(0xffffde0) # 1c00226c <OLED_SetPos>
1c002490:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002494:	50003c00 	b	60(0x3c) # 1c0024d0 <OLED_ShowChar+0x110>
1c002498:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00249c:	0040918d 	slli.w	$r13,$r12,0x4
1c0024a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024a4:	001031ac 	add.w	$r12,$r13,$r12
1c0024a8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0024ac:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0024b0:	02b5e1ad 	addi.w	$r13,$r13,-648(0xd78)
1c0024b4:	001031ac 	add.w	$r12,$r13,$r12
1c0024b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0024bc:	00150184 	move	$r4,$r12
1c0024c0:	57fc0fff 	bl	-1012(0xffffc0c) # 1c0020cc <WriteDat>
1c0024c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0024d4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0024d8:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c002498 <OLED_ShowChar+0xd8>
1c0024dc:	50005c00 	b	92(0x5c) # 1c002538 <OLED_ShowChar+0x178>
1c0024e0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0024e4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024e8:	57fd87ff 	bl	-636(0xffffd84) # 1c00226c <OLED_SetPos>
1c0024ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0024f0:	50003c00 	b	60(0x3c) # 1c00252c <OLED_ShowChar+0x16c>
1c0024f4:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0024f8:	02ac21ad 	addi.w	$r13,$r13,-1272(0xb08)
1c0024fc:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c002500:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c002504:	001c31cc 	mul.w	$r12,$r14,$r12
1c002508:	001031ad 	add.w	$r13,$r13,$r12
1c00250c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002510:	001031ac 	add.w	$r12,$r13,$r12
1c002514:	2a00018c 	ld.bu	$r12,$r12,0
1c002518:	00150184 	move	$r4,$r12
1c00251c:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c0020cc <WriteDat>
1c002520:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002524:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002528:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00252c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002530:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002534:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0024f4 <OLED_ShowChar+0x134>
1c002538:	03400000 	andi	$r0,$r0,0x0
1c00253c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002540:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002544:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002548:	4c000020 	jirl	$r0,$r1,0

1c00254c <oled_pow>:
oled_pow():
1c00254c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002550:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00255c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002560:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002564:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002568:	50001400 	b	20(0x14) # 1c00257c <oled_pow+0x30>
1c00256c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002574:	001c31ac 	mul.w	$r12,$r13,$r12
1c002578:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00257c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002580:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002584:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c002588:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00256c <oled_pow+0x20>
1c00258c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002590:	00150184 	move	$r4,$r12
1c002594:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002598:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00259c:	4c000020 	jirl	$r0,$r1,0

1c0025a0 <OLED_ShowNum>:
OLED_ShowNum():
1c0025a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0025a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0025a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0025ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0025b0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025b4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025b8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0025bc:	001500ec 	move	$r12,$r7
1c0025c0:	0015010d 	move	$r13,$r8
1c0025c4:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c0025c8:	001501ac 	move	$r12,$r13
1c0025cc:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c0025d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0025d8:	50010400 	b	260(0x104) # 1c0026dc <OLED_ShowNum+0x13c>
1c0025dc:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c0025e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025e4:	001131ac 	sub.w	$r12,$r13,$r12
1c0025e8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0025ec:	00150185 	move	$r5,$r12
1c0025f0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0025f4:	57ff5bff 	bl	-168(0xfffff58) # 1c00254c <oled_pow>
1c0025f8:	0015008d 	move	$r13,$r4
1c0025fc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002600:	0021358e 	div.wu	$r14,$r12,$r13
1c002604:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00260c <OLED_ShowNum+0x6c>
1c002608:	002a0007 	break	0x7
1c00260c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c002610:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c002614:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00261c <OLED_ShowNum+0x7c>
1c002618:	002a0007 	break	0x7
1c00261c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002624:	44006580 	bnez	$r12,100(0x64) # 1c002688 <OLED_ShowNum+0xe8>
1c002628:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c00262c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002630:	0015018d 	move	$r13,$r12
1c002634:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002638:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c002688 <OLED_ShowNum+0xe8>
1c00263c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002640:	44004180 	bnez	$r12,64(0x40) # 1c002680 <OLED_ShowNum+0xe0>
1c002644:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c002648:	0044858c 	srli.w	$r12,$r12,0x1
1c00264c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002650:	0015018d 	move	$r13,$r12
1c002654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002658:	001c31ad 	mul.w	$r13,$r13,$r12
1c00265c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002660:	001031ac 	add.w	$r12,$r13,$r12
1c002664:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c002668:	001501a7 	move	$r7,$r13
1c00266c:	02808006 	addi.w	$r6,$r0,32(0x20)
1c002670:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c002674:	00150184 	move	$r4,$r12
1c002678:	57fd4bff 	bl	-696(0xffffd48) # 1c0023c0 <OLED_ShowChar>
1c00267c:	50005400 	b	84(0x54) # 1c0026d0 <OLED_ShowNum+0x130>
1c002680:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002684:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002688:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c00268c:	0044858c 	srli.w	$r12,$r12,0x1
1c002690:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002694:	0015018d 	move	$r13,$r12
1c002698:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00269c:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026a4:	001031ad 	add.w	$r13,$r13,$r12
1c0026a8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0026ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0026b0:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0026b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0026b8:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c0026bc:	001501c7 	move	$r7,$r14
1c0026c0:	00150186 	move	$r6,$r12
1c0026c4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0026c8:	001501a4 	move	$r4,$r13
1c0026cc:	57fcf7ff 	bl	-780(0xffffcf4) # 1c0023c0 <OLED_ShowChar>
1c0026d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0026d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0026d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0026dc:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0026e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0026e4:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c0025dc <OLED_ShowNum+0x3c>
1c0026e8:	03400000 	andi	$r0,$r0,0x0
1c0026ec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0026f0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0026f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0026f8:	4c000020 	jirl	$r0,$r1,0

1c0026fc <my_GPIO_Init>:
my_GPIO_Init():
1c0026fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002700:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002704:	29806076 	st.w	$r22,$r3,24(0x18)
1c002708:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00270c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002710:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002714:	57f0bfff 	bl	-3908(0xffff0bc) # 1c0017d0 <gpio_init>
1c002718:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00271c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002720:	57f0b3ff 	bl	-3920(0xffff0b0) # 1c0017d0 <gpio_init>
1c002724:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002728:	02804804 	addi.w	$r4,$r0,18(0x12)
1c00272c:	57f0a7ff 	bl	-3932(0xffff0a4) # 1c0017d0 <gpio_init>
1c002730:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002734:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c002738:	57f09bff 	bl	-3944(0xffff098) # 1c0017d0 <gpio_init>
1c00273c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002740:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002744:	57f08fff 	bl	-3956(0xffff08c) # 1c0017d0 <gpio_init>
1c002748:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00274c:	02808804 	addi.w	$r4,$r0,34(0x22)
1c002750:	57f083ff 	bl	-3968(0xffff080) # 1c0017d0 <gpio_init>
1c002754:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002758:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00275c:	57f077ff 	bl	-3980(0xffff074) # 1c0017d0 <gpio_init>
1c002760:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002764:	02809004 	addi.w	$r4,$r0,36(0x24)
1c002768:	57f06bff 	bl	-3992(0xffff068) # 1c0017d0 <gpio_init>
1c00276c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002770:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002774:	57f05fff 	bl	-4004(0xffff05c) # 1c0017d0 <gpio_init>
1c002778:	00150005 	move	$r5,$r0
1c00277c:	02809804 	addi.w	$r4,$r0,38(0x26)
1c002780:	57f053ff 	bl	-4016(0xffff050) # 1c0017d0 <gpio_init>
1c002784:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002788:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c00278c:	57f047ff 	bl	-4028(0xffff044) # 1c0017d0 <gpio_init>
1c002790:	00150005 	move	$r5,$r0
1c002794:	02803804 	addi.w	$r4,$r0,14(0xe)
1c002798:	57f03bff 	bl	-4040(0xffff038) # 1c0017d0 <gpio_init>
1c00279c:	00150005 	move	$r5,$r0
1c0027a0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0027a4:	57f02fff 	bl	-4052(0xffff02c) # 1c0017d0 <gpio_init>
1c0027a8:	00150005 	move	$r5,$r0
1c0027ac:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0027b0:	57f023ff 	bl	-4064(0xffff020) # 1c0017d0 <gpio_init>
1c0027b4:	00150005 	move	$r5,$r0
1c0027b8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0027bc:	57f017ff 	bl	-4076(0xffff014) # 1c0017d0 <gpio_init>
1c0027c0:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0027c4:	03bfc98c 	ori	$r12,$r12,0xff2
1c0027c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0027cc:	50001400 	b	20(0x14) # 1c0027e0 <my_GPIO_Init+0xe4>
1c0027d0:	03400000 	andi	$r0,$r0,0x0
1c0027d4:	03400000 	andi	$r0,$r0,0x0
1c0027d8:	03400000 	andi	$r0,$r0,0x0
1c0027dc:	03400000 	andi	$r0,$r0,0x0
1c0027e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0027e8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0027ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0027d0 <my_GPIO_Init+0xd4>
1c0027f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0027f4:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0027f8:	57f0d3ff 	bl	-3888(0xffff0d0) # 1c0018c8 <gpio_write>
1c0027fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002800:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002804:	57f0c7ff 	bl	-3900(0xffff0c4) # 1c0018c8 <gpio_write>
1c002808:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00280c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002810:	57f0bbff 	bl	-3912(0xffff0b8) # 1c0018c8 <gpio_write>
1c002814:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002818:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00281c:	57f0afff 	bl	-3924(0xffff0ac) # 1c0018c8 <gpio_write>
1c002820:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002824:	02809804 	addi.w	$r4,$r0,38(0x26)
1c002828:	57f0a3ff 	bl	-3936(0xffff0a0) # 1c0018c8 <gpio_write>
1c00282c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002830:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c002834:	57f097ff 	bl	-3948(0xffff094) # 1c0018c8 <gpio_write>
1c002838:	00150005 	move	$r5,$r0
1c00283c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c002840:	57f08bff 	bl	-3960(0xffff088) # 1c0018c8 <gpio_write>
1c002844:	03400000 	andi	$r0,$r0,0x0
1c002848:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00284c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002854:	4c000020 	jirl	$r0,$r1,0

1c002858 <my_I2C_Init>:
my_I2C_Init():
1c002858:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00285c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002860:	29806076 	st.w	$r22,$r3,24(0x18)
1c002864:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002868:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00286c:	00150184 	move	$r4,$r12
1c002870:	57f187ff 	bl	-3708(0xffff184) # 1c0019f4 <soc_I2C_StructInit>
1c002874:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002878:	00150184 	move	$r4,$r12
1c00287c:	57f1c3ff 	bl	-3648(0xffff1c0) # 1c001a3c <soc_I2C_Init>
1c002880:	1400016c 	lu12i.w	$r12,11(0xb)
1c002884:	0399958c 	ori	$r12,$r12,0x665
1c002888:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00288c:	50001400 	b	20(0x14) # 1c0028a0 <my_I2C_Init+0x48>
1c002890:	03400000 	andi	$r0,$r0,0x0
1c002894:	03400000 	andi	$r0,$r0,0x0
1c002898:	03400000 	andi	$r0,$r0,0x0
1c00289c:	03400000 	andi	$r0,$r0,0x0
1c0028a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0028a8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0028ac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002890 <my_I2C_Init+0x38>
1c0028b0:	03400000 	andi	$r0,$r0,0x0
1c0028b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0028b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0028bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028c0:	4c000020 	jirl	$r0,$r1,0

1c0028c4 <my_PWM_Init>:
my_PWM_Init():
1c0028c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0028c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0028cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0028d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028d4:	57f37fff 	bl	-3204(0xffff37c) # 1c001c50 <pwm_steering_engine_init>
1c0028d8:	1400016c 	lu12i.w	$r12,11(0xb)
1c0028dc:	0399958c 	ori	$r12,$r12,0x665
1c0028e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0028e4:	50001400 	b	20(0x14) # 1c0028f8 <my_PWM_Init+0x34>
1c0028e8:	03400000 	andi	$r0,$r0,0x0
1c0028ec:	03400000 	andi	$r0,$r0,0x0
1c0028f0:	03400000 	andi	$r0,$r0,0x0
1c0028f4:	03400000 	andi	$r0,$r0,0x0
1c0028f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002900:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002904:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0028e8 <my_PWM_Init+0x24>
1c002908:	03400000 	andi	$r0,$r0,0x0
1c00290c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002910:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002914:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002918:	4c000020 	jirl	$r0,$r1,0

1c00291c <my_SPI_Init>:
my_SPI_Init():
1c00291c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002920:	29803061 	st.w	$r1,$r3,12(0xc)
1c002924:	29802076 	st.w	$r22,$r3,8(0x8)
1c002928:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00292c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c002930:	57f423ff 	bl	-3040(0xffff420) # 1c001d50 <soc_Spi_Init>
1c002934:	03400000 	andi	$r0,$r0,0x0
1c002938:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00293c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002940:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002944:	4c000020 	jirl	$r0,$r1,0

1c002948 <Init_main>:
Init_main():
1c002948:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00294c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002950:	29802076 	st.w	$r22,$r3,8(0x8)
1c002954:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002958:	57f5abff 	bl	-2648(0xffff5a8) # 1c001f00 <SG90_Init>
1c00295c:	57f7dfff 	bl	-2084(0xffff7dc) # 1c002138 <OLED_Init>
1c002960:	57fa37ff 	bl	-1484(0xffffa34) # 1c002394 <OLED_CLS>
1c002964:	54001800 	bl	24(0x18) # 1c00297c <RC522_Init>
1c002968:	03400000 	andi	$r0,$r0,0x0
1c00296c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002970:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002974:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002978:	4c000020 	jirl	$r0,$r1,0

1c00297c <RC522_Init>:
RC522_Init():
1c00297c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002980:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002984:	29806076 	st.w	$r22,$r3,24(0x18)
1c002988:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00298c:	1400016c 	lu12i.w	$r12,11(0xb)
1c002990:	0399958c 	ori	$r12,$r12,0x665
1c002994:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002998:	50001400 	b	20(0x14) # 1c0029ac <RC522_Init+0x30>
1c00299c:	03400000 	andi	$r0,$r0,0x0
1c0029a0:	03400000 	andi	$r0,$r0,0x0
1c0029a4:	03400000 	andi	$r0,$r0,0x0
1c0029a8:	03400000 	andi	$r0,$r0,0x0
1c0029ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0029b4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0029b8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00299c <RC522_Init+0x20>
1c0029bc:	5403cc00 	bl	972(0x3cc) # 1c002d88 <PcdReset>
1c0029c0:	1400004c 	lu12i.w	$r12,2(0x2)
1c0029c4:	0391ed8c 	ori	$r12,$r12,0x47b
1c0029c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0029cc:	50001400 	b	20(0x14) # 1c0029e0 <RC522_Init+0x64>
1c0029d0:	03400000 	andi	$r0,$r0,0x0
1c0029d4:	03400000 	andi	$r0,$r0,0x0
1c0029d8:	03400000 	andi	$r0,$r0,0x0
1c0029dc:	03400000 	andi	$r0,$r0,0x0
1c0029e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0029e8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0029ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0029d0 <RC522_Init+0x54>
1c0029f0:	54039800 	bl	920(0x398) # 1c002d88 <PcdReset>
1c0029f4:	1400004c 	lu12i.w	$r12,2(0x2)
1c0029f8:	0391ed8c 	ori	$r12,$r12,0x47b
1c0029fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a00:	50001400 	b	20(0x14) # 1c002a14 <RC522_Init+0x98>
1c002a04:	03400000 	andi	$r0,$r0,0x0
1c002a08:	03400000 	andi	$r0,$r0,0x0
1c002a0c:	03400000 	andi	$r0,$r0,0x0
1c002a10:	03400000 	andi	$r0,$r0,0x0
1c002a14:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002a18:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a1c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002a20:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a04 <RC522_Init+0x88>
1c002a24:	54051c00 	bl	1308(0x51c) # 1c002f40 <PcdAntennaOff>
1c002a28:	1400004c 	lu12i.w	$r12,2(0x2)
1c002a2c:	0391ed8c 	ori	$r12,$r12,0x47b
1c002a30:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a34:	50001400 	b	20(0x14) # 1c002a48 <RC522_Init+0xcc>
1c002a38:	03400000 	andi	$r0,$r0,0x0
1c002a3c:	03400000 	andi	$r0,$r0,0x0
1c002a40:	03400000 	andi	$r0,$r0,0x0
1c002a44:	03400000 	andi	$r0,$r0,0x0
1c002a48:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002a4c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a50:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c002a54:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a38 <RC522_Init+0xbc>
1c002a58:	54045400 	bl	1108(0x454) # 1c002eac <PcdAntennaOn>
1c002a5c:	03400000 	andi	$r0,$r0,0x0
1c002a60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a6c:	4c000020 	jirl	$r0,$r1,0

1c002a70 <ReadRawRC>:
ReadRawRC():
1c002a70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a80:	0015008c 	move	$r12,$r4
1c002a84:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a88:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c002a8c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002a90:	0040858c 	slli.w	$r12,$r12,0x1
1c002a94:	00005d8c 	ext.w.b	$r12,$r12
1c002a98:	0341f98c 	andi	$r12,$r12,0x7e
1c002a9c:	00005d8d 	ext.w.b	$r13,$r12
1c002aa0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002aa4:	001531ac 	or	$r12,$r13,$r12
1c002aa8:	00005d8c 	ext.w.b	$r12,$r12
1c002aac:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c002ab0:	57f327ff 	bl	-3292(0xffff324) # 1c001dd4 <soc_Spi_Cs_Down>
1c002ab4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002ab8:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c002abc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002ac0:	03400000 	andi	$r0,$r0,0x0
1c002ac4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002ac8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002acc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ad0:	0340118c 	andi	$r12,$r12,0x4
1c002ad4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002ac4 <ReadRawRC+0x54>
1c002ad8:	03400000 	andi	$r0,$r0,0x0
1c002adc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002ae0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ae8:	0340058c 	andi	$r12,$r12,0x1
1c002aec:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002adc <ReadRawRC+0x6c>
1c002af0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002af4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002af8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002afc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002b00:	29000980 	st.b	$r0,$r12,2(0x2)
1c002b04:	03400000 	andi	$r0,$r0,0x0
1c002b08:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002b0c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002b10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b14:	0340118c 	andi	$r12,$r12,0x4
1c002b18:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002b08 <ReadRawRC+0x98>
1c002b1c:	03400000 	andi	$r0,$r0,0x0
1c002b20:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002b24:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002b28:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b2c:	0340058c 	andi	$r12,$r12,0x1
1c002b30:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002b20 <ReadRawRC+0xb0>
1c002b34:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002b38:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002b3c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002b40:	57f2efff 	bl	-3348(0xffff2ec) # 1c001e2c <soc_Spi_Cs_Up>
1c002b44:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002b48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b4c:	50001400 	b	20(0x14) # 1c002b60 <ReadRawRC+0xf0>
1c002b50:	03400000 	andi	$r0,$r0,0x0
1c002b54:	03400000 	andi	$r0,$r0,0x0
1c002b58:	03400000 	andi	$r0,$r0,0x0
1c002b5c:	03400000 	andi	$r0,$r0,0x0
1c002b60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b64:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b68:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b6c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b50 <ReadRawRC+0xe0>
1c002b70:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002b74:	00150184 	move	$r4,$r12
1c002b78:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b7c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b84:	4c000020 	jirl	$r0,$r1,0

1c002b88 <WriteRawRC>:
WriteRawRC():
1c002b88:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b8c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b90:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b94:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b98:	0015008c 	move	$r12,$r4
1c002b9c:	001500ad 	move	$r13,$r5
1c002ba0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002ba4:	001501ac 	move	$r12,$r13
1c002ba8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002bac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002bb0:	0040858c 	slli.w	$r12,$r12,0x1
1c002bb4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002bb8:	0341f98c 	andi	$r12,$r12,0x7e
1c002bbc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002bc0:	57f217ff 	bl	-3564(0xffff214) # 1c001dd4 <soc_Spi_Cs_Down>
1c002bc4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002bc8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002bcc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002bd0:	03400000 	andi	$r0,$r0,0x0
1c002bd4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002bd8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002bdc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002be0:	0340118c 	andi	$r12,$r12,0x4
1c002be4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002bd4 <WriteRawRC+0x4c>
1c002be8:	03400000 	andi	$r0,$r0,0x0
1c002bec:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002bf0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002bf4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002bf8:	0340058c 	andi	$r12,$r12,0x1
1c002bfc:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002bec <WriteRawRC+0x64>
1c002c00:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002c04:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002c08:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c002c0c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002c10:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c002c14:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002c20:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002c24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c28:	0340118c 	andi	$r12,$r12,0x4
1c002c2c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002c1c <WriteRawRC+0x94>
1c002c30:	03400000 	andi	$r0,$r0,0x0
1c002c34:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002c38:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002c3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c40:	0340058c 	andi	$r12,$r12,0x1
1c002c44:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002c34 <WriteRawRC+0xac>
1c002c48:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002c4c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002c50:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c002c54:	57f1dbff 	bl	-3624(0xffff1d8) # 1c001e2c <soc_Spi_Cs_Up>
1c002c58:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002c5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c60:	50001400 	b	20(0x14) # 1c002c74 <WriteRawRC+0xec>
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	03400000 	andi	$r0,$r0,0x0
1c002c70:	03400000 	andi	$r0,$r0,0x0
1c002c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c7c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c80:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c64 <WriteRawRC+0xdc>
1c002c84:	03400000 	andi	$r0,$r0,0x0
1c002c88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c94:	4c000020 	jirl	$r0,$r1,0

1c002c98 <SetBitMask>:
SetBitMask():
1c002c98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c9c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ca0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ca4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ca8:	0015008c 	move	$r12,$r4
1c002cac:	001500ad 	move	$r13,$r5
1c002cb0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002cb4:	001501ac 	move	$r12,$r13
1c002cb8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002cbc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002cc0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002cc4:	00150184 	move	$r4,$r12
1c002cc8:	57fdabff 	bl	-600(0xffffda8) # 1c002a70 <ReadRawRC>
1c002ccc:	0015008c 	move	$r12,$r4
1c002cd0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002cd4:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c002cd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002cdc:	001531ac 	or	$r12,$r13,$r12
1c002ce0:	00005d8c 	ext.w.b	$r12,$r12
1c002ce4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002ce8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002cec:	001501a5 	move	$r5,$r13
1c002cf0:	00150184 	move	$r4,$r12
1c002cf4:	57fe97ff 	bl	-364(0xffffe94) # 1c002b88 <WriteRawRC>
1c002cf8:	03400000 	andi	$r0,$r0,0x0
1c002cfc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d00:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d08:	4c000020 	jirl	$r0,$r1,0

1c002d0c <ClearBitMask>:
ClearBitMask():
1c002d0c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d10:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d14:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d1c:	0015008c 	move	$r12,$r4
1c002d20:	001500ad 	move	$r13,$r5
1c002d24:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002d28:	001501ac 	move	$r12,$r13
1c002d2c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002d30:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002d34:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d38:	00150184 	move	$r4,$r12
1c002d3c:	57fd37ff 	bl	-716(0xffffd34) # 1c002a70 <ReadRawRC>
1c002d40:	0015008c 	move	$r12,$r4
1c002d44:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002d48:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c002d4c:	0014300c 	nor	$r12,$r0,$r12
1c002d50:	00005d8d 	ext.w.b	$r13,$r12
1c002d54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002d58:	0014b1ac 	and	$r12,$r13,$r12
1c002d5c:	00005d8c 	ext.w.b	$r12,$r12
1c002d60:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002d64:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d68:	001501a5 	move	$r5,$r13
1c002d6c:	00150184 	move	$r4,$r12
1c002d70:	57fe1bff 	bl	-488(0xffffe18) # 1c002b88 <WriteRawRC>
1c002d74:	03400000 	andi	$r0,$r0,0x0
1c002d78:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d7c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d84:	4c000020 	jirl	$r0,$r1,0

1c002d88 <PcdReset>:
PcdReset():
1c002d88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002d90:	29806076 	st.w	$r22,$r3,24(0x18)
1c002d94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002d9c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002da0:	57eb2bff 	bl	-5336(0xfffeb28) # 1c0018c8 <gpio_write>
1c002da4:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c002da8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dac:	50001400 	b	20(0x14) # 1c002dc0 <PcdReset+0x38>
1c002db0:	03400000 	andi	$r0,$r0,0x0
1c002db4:	03400000 	andi	$r0,$r0,0x0
1c002db8:	03400000 	andi	$r0,$r0,0x0
1c002dbc:	03400000 	andi	$r0,$r0,0x0
1c002dc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dc4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002dc8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002dcc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002db0 <PcdReset+0x28>
1c002dd0:	00150005 	move	$r5,$r0
1c002dd4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002dd8:	57eaf3ff 	bl	-5392(0xfffeaf0) # 1c0018c8 <gpio_write>
1c002ddc:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c002de0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002de4:	50001400 	b	20(0x14) # 1c002df8 <PcdReset+0x70>
1c002de8:	03400000 	andi	$r0,$r0,0x0
1c002dec:	03400000 	andi	$r0,$r0,0x0
1c002df0:	03400000 	andi	$r0,$r0,0x0
1c002df4:	03400000 	andi	$r0,$r0,0x0
1c002df8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dfc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002e00:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002e04:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002de8 <PcdReset+0x60>
1c002e08:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002e0c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c002e10:	57eabbff 	bl	-5448(0xfffeab8) # 1c0018c8 <gpio_write>
1c002e14:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c002e18:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002e1c:	57fd6fff 	bl	-660(0xffffd6c) # 1c002b88 <WriteRawRC>
1c002e20:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c002e24:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002e28:	50001400 	b	20(0x14) # 1c002e3c <PcdReset+0xb4>
1c002e2c:	03400000 	andi	$r0,$r0,0x0
1c002e30:	03400000 	andi	$r0,$r0,0x0
1c002e34:	03400000 	andi	$r0,$r0,0x0
1c002e38:	03400000 	andi	$r0,$r0,0x0
1c002e3c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002e40:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002e44:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002e48:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002e2c <PcdReset+0xa4>
1c002e4c:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c002e50:	02804404 	addi.w	$r4,$r0,17(0x11)
1c002e54:	57fd37ff 	bl	-716(0xffffd34) # 1c002b88 <WriteRawRC>
1c002e58:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c002e5c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c002e60:	57fd2bff 	bl	-728(0xffffd28) # 1c002b88 <WriteRawRC>
1c002e64:	00150005 	move	$r5,$r0
1c002e68:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c002e6c:	57fd1fff 	bl	-740(0xffffd1c) # 1c002b88 <WriteRawRC>
1c002e70:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c002e74:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c002e78:	57fd13ff 	bl	-752(0xffffd10) # 1c002b88 <WriteRawRC>
1c002e7c:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c002e80:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c002e84:	57fd07ff 	bl	-764(0xffffd04) # 1c002b88 <WriteRawRC>
1c002e88:	02810005 	addi.w	$r5,$r0,64(0x40)
1c002e8c:	02805404 	addi.w	$r4,$r0,21(0x15)
1c002e90:	57fcfbff 	bl	-776(0xffffcf8) # 1c002b88 <WriteRawRC>
1c002e94:	0015000c 	move	$r12,$r0
1c002e98:	00150184 	move	$r4,$r12
1c002e9c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ea0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ea4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ea8:	4c000020 	jirl	$r0,$r1,0

1c002eac <PcdAntennaOn>:
PcdAntennaOn():
1c002eac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002eb0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002eb4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002eb8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ebc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c002ec0:	02805404 	addi.w	$r4,$r0,21(0x15)
1c002ec4:	57fcc7ff 	bl	-828(0xffffcc4) # 1c002b88 <WriteRawRC>
1c002ec8:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c002ecc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ed0:	50001400 	b	20(0x14) # 1c002ee4 <PcdAntennaOn+0x38>
1c002ed4:	03400000 	andi	$r0,$r0,0x0
1c002ed8:	03400000 	andi	$r0,$r0,0x0
1c002edc:	03400000 	andi	$r0,$r0,0x0
1c002ee0:	03400000 	andi	$r0,$r0,0x0
1c002ee4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ee8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002eec:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ef0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002ed4 <PcdAntennaOn+0x28>
1c002ef4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002ef8:	57fb7bff 	bl	-1160(0xffffb78) # 1c002a70 <ReadRawRC>
1c002efc:	0015008c 	move	$r12,$r4
1c002f00:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002f04:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002f08:	03400d8c 	andi	$r12,$r12,0x3
1c002f0c:	44001180 	bnez	$r12,16(0x10) # 1c002f1c <PcdAntennaOn+0x70>
1c002f10:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c002f14:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002f18:	57fd83ff 	bl	-640(0xffffd80) # 1c002c98 <SetBitMask>
1c002f1c:	02805404 	addi.w	$r4,$r0,21(0x15)
1c002f20:	57fb53ff 	bl	-1200(0xffffb50) # 1c002a70 <ReadRawRC>
1c002f24:	0015008c 	move	$r12,$r4
1c002f28:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002f2c:	03400000 	andi	$r0,$r0,0x0
1c002f30:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f34:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002f38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f3c:	4c000020 	jirl	$r0,$r1,0

1c002f40 <PcdAntennaOff>:
PcdAntennaOff():
1c002f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002f44:	29803061 	st.w	$r1,$r3,12(0xc)
1c002f48:	29802076 	st.w	$r22,$r3,8(0x8)
1c002f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002f50:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c002f54:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002f58:	57fdb7ff 	bl	-588(0xffffdb4) # 1c002d0c <ClearBitMask>
1c002f5c:	03400000 	andi	$r0,$r0,0x0
1c002f60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002f64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002f68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002f6c:	4c000020 	jirl	$r0,$r1,0

1c002f70 <Buffer_write>:
Buffer_write():
1c002f70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f74:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002f78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f80:	001500ac 	move	$r12,$r5
1c002f84:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002f88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f8c:	2880018c 	ld.w	$r12,$r12,0
1c002f90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f94:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c002f98:	0010358c 	add.w	$r12,$r12,$r13
1c002f9c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002fa0:	2900018d 	st.b	$r13,$r12,0
1c002fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fa8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c002fac:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fb4:	2980318d 	st.w	$r13,$r12,12(0xc)
1c002fb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fbc:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002fc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fc4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fc8:	60000dac 	blt	$r13,$r12,12(0xc) # 1c002fd4 <Buffer_write+0x64>
1c002fcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fd0:	29803180 	st.w	$r0,$r12,12(0xc)
1c002fd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fd8:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c002fdc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002fe0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fe4:	2980418d 	st.w	$r13,$r12,16(0x10)
1c002fe8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fec:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002ff0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ff4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002ff8:	6400458d 	bge	$r12,$r13,68(0x44) # 1c00303c <Buffer_write+0xcc>
1c002ffc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003000:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003004:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003008:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00300c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003010:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c003014:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00301c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003020:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003024:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c003028:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00302c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003030:	60000dac 	blt	$r13,$r12,12(0xc) # 1c00303c <Buffer_write+0xcc>
1c003034:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003038:	29802180 	st.w	$r0,$r12,8(0x8)
1c00303c:	03400000 	andi	$r0,$r0,0x0
1c003040:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003044:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003048:	4c000020 	jirl	$r0,$r1,0

1c00304c <main>:
main():
1c00304c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003050:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003054:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003058:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00305c:	57f6a3ff 	bl	-2400(0xffff6a0) # 1c0026fc <my_GPIO_Init>
1c003060:	57f867ff 	bl	-1948(0xffff864) # 1c0028c4 <my_PWM_Init>
1c003064:	57f7f7ff 	bl	-2060(0xffff7f4) # 1c002858 <my_I2C_Init>
1c003068:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c00291c <my_SPI_Init>
1c00306c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003070:	03bfc98c 	ori	$r12,$r12,0xff2
1c003074:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003078:	50001400 	b	20(0x14) # 1c00308c <main+0x40>
1c00307c:	03400000 	andi	$r0,$r0,0x0
1c003080:	03400000 	andi	$r0,$r0,0x0
1c003084:	03400000 	andi	$r0,$r0,0x0
1c003088:	03400000 	andi	$r0,$r0,0x0
1c00308c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003090:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003094:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003098:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00307c <main+0x30>
1c00309c:	140001cc 	lu12i.w	$r12,14(0xe)
1c0030a0:	03840184 	ori	$r4,$r12,0x100
1c0030a4:	57ee8bff 	bl	-4472(0xfffee88) # 1c001f2c <hw_uart_init>
1c0030a8:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0030ac:	03bfc98c 	ori	$r12,$r12,0xff2
1c0030b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0030b4:	50001400 	b	20(0x14) # 1c0030c8 <main+0x7c>
1c0030b8:	03400000 	andi	$r0,$r0,0x0
1c0030bc:	03400000 	andi	$r0,$r0,0x0
1c0030c0:	03400000 	andi	$r0,$r0,0x0
1c0030c4:	03400000 	andi	$r0,$r0,0x0
1c0030c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0030d0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0030d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0030b8 <main+0x6c>
1c0030d8:	57f873ff 	bl	-1936(0xffff870) # 1c002948 <Init_main>
1c0030dc:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0030e0:	03bfc98c 	ori	$r12,$r12,0xff2
1c0030e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030e8:	50001400 	b	20(0x14) # 1c0030fc <main+0xb0>
1c0030ec:	03400000 	andi	$r0,$r0,0x0
1c0030f0:	03400000 	andi	$r0,$r0,0x0
1c0030f4:	03400000 	andi	$r0,$r0,0x0
1c0030f8:	03400000 	andi	$r0,$r0,0x0
1c0030fc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003100:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003104:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003108:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0030ec <main+0xa0>
1c00310c:	57f28bff 	bl	-3448(0xffff288) # 1c002394 <OLED_CLS>
1c003110:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003114:	02804008 	addi.w	$r8,$r0,16(0x10)
1c003118:	02801407 	addi.w	$r7,$r0,5(0x5)
1c00311c:	00150186 	move	$r6,$r12
1c003120:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c003124:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c003128:	57f47bff 	bl	-2952(0xffff478) # 1c0025a0 <OLED_ShowNum>
1c00312c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003130:	03bfc98c 	ori	$r12,$r12,0xff2
1c003134:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003138:	50001400 	b	20(0x14) # 1c00314c <main+0x100>
1c00313c:	03400000 	andi	$r0,$r0,0x0
1c003140:	03400000 	andi	$r0,$r0,0x0
1c003144:	03400000 	andi	$r0,$r0,0x0
1c003148:	03400000 	andi	$r0,$r0,0x0
1c00314c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003150:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003154:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003158:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00313c <main+0xf0>
1c00315c:	53ffb3ff 	b	-80(0xfffffb0) # 1c00310c <main+0xc0>

1c003160 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003160:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003164:	29803061 	st.w	$r1,$r3,12(0xc)
1c003168:	29802076 	st.w	$r22,$r3,8(0x8)
1c00316c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003170:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003174:	02a190c6 	addi.w	$r6,$r6,-1948(0x864)
1c003178:	02805005 	addi.w	$r5,$r0,20(0x14)
1c00317c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003180:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c003184:	57e233ff 	bl	-7632(0xfffe230) # 1c0013b4 <myprintf>
1c003188:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00318c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003190:	03808184 	ori	$r4,$r12,0x20
1c003194:	57dfdbff 	bl	-8232(0xfffdfd8) # 1c00116c <EXTI_ClearITPendingBit>
1c003198:	03400000 	andi	$r0,$r0,0x0
1c00319c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0031a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031a8:	4c000020 	jirl	$r0,$r1,0

1c0031ac <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0031ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0031b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0031b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0031c0:	02a0c0c6 	addi.w	$r6,$r6,-2000(0x830)
1c0031c4:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0031c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0031cc:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c0031d0:	57e1e7ff 	bl	-7708(0xfffe1e4) # 1c0013b4 <myprintf>
1c0031d4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0031d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031dc:	03808184 	ori	$r4,$r12,0x20
1c0031e0:	57df8fff 	bl	-8308(0xfffdf8c) # 1c00116c <EXTI_ClearITPendingBit>
1c0031e4:	03400000 	andi	$r0,$r0,0x0
1c0031e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0031f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031f4:	4c000020 	jirl	$r0,$r1,0

1c0031f8 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0031f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003200:	29802076 	st.w	$r22,$r3,8(0x8)
1c003204:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003208:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00320c:	029ff0c6 	addi.w	$r6,$r6,2044(0x7fc)
1c003210:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c003214:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003218:	02980084 	addi.w	$r4,$r4,1536(0x600)
1c00321c:	57e19bff 	bl	-7784(0xfffe198) # 1c0013b4 <myprintf>
1c003220:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003224:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003228:	03808184 	ori	$r4,$r12,0x20
1c00322c:	57df43ff 	bl	-8384(0xfffdf40) # 1c00116c <EXTI_ClearITPendingBit>
1c003230:	03400000 	andi	$r0,$r0,0x0
1c003234:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003238:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00323c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003240:	4c000020 	jirl	$r0,$r1,0

1c003244 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003244:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003248:	29803061 	st.w	$r1,$r3,12(0xc)
1c00324c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003250:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003254:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003258:	029f20c6 	addi.w	$r6,$r6,1992(0x7c8)
1c00325c:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c003260:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003264:	0296d084 	addi.w	$r4,$r4,1460(0x5b4)
1c003268:	57e14fff 	bl	-7860(0xfffe14c) # 1c0013b4 <myprintf>
1c00326c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003274:	03808184 	ori	$r4,$r12,0x20
1c003278:	57def7ff 	bl	-8460(0xfffdef4) # 1c00116c <EXTI_ClearITPendingBit>
1c00327c:	03400000 	andi	$r0,$r0,0x0
1c003280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00328c:	4c000020 	jirl	$r0,$r1,0

1c003290 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c003290:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003294:	29803061 	st.w	$r1,$r3,12(0xc)
1c003298:	29802076 	st.w	$r22,$r3,8(0x8)
1c00329c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032a0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0032a4:	029e50c6 	addi.w	$r6,$r6,1940(0x794)
1c0032a8:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0032ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0032b0:	0295a084 	addi.w	$r4,$r4,1384(0x568)
1c0032b4:	57e103ff 	bl	-7936(0xfffe100) # 1c0013b4 <myprintf>
1c0032b8:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0032bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c0:	03808184 	ori	$r4,$r12,0x20
1c0032c4:	57deabff 	bl	-8536(0xfffdea8) # 1c00116c <EXTI_ClearITPendingBit>
1c0032c8:	03400000 	andi	$r0,$r0,0x0
1c0032cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032d8:	4c000020 	jirl	$r0,$r1,0

1c0032dc <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0032dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0032e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0032e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0032e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0032ec:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0032f0:	029d80c6 	addi.w	$r6,$r6,1888(0x760)
1c0032f4:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c0032f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0032fc:	02947084 	addi.w	$r4,$r4,1308(0x51c)
1c003300:	57e0b7ff 	bl	-8012(0xfffe0b4) # 1c0013b4 <myprintf>
1c003304:	02808005 	addi.w	$r5,$r0,32(0x20)
1c003308:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00330c:	03808184 	ori	$r4,$r12,0x20
1c003310:	57de5fff 	bl	-8612(0xfffde5c) # 1c00116c <EXTI_ClearITPendingBit>
1c003314:	03400000 	andi	$r0,$r0,0x0
1c003318:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00331c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003320:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003324:	4c000020 	jirl	$r0,$r1,0

1c003328 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c003328:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00332c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003330:	29802076 	st.w	$r22,$r3,8(0x8)
1c003334:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003338:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00333c:	029cb0c6 	addi.w	$r6,$r6,1836(0x72c)
1c003340:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c003344:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003348:	02934084 	addi.w	$r4,$r4,1232(0x4d0)
1c00334c:	57e06bff 	bl	-8088(0xfffe068) # 1c0013b4 <myprintf>
1c003350:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003354:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003358:	03808184 	ori	$r4,$r12,0x20
1c00335c:	57de13ff 	bl	-8688(0xfffde10) # 1c00116c <EXTI_ClearITPendingBit>
1c003360:	03400000 	andi	$r0,$r0,0x0
1c003364:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003368:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00336c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003370:	4c000020 	jirl	$r0,$r1,0

1c003374 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003374:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003378:	29803061 	st.w	$r1,$r3,12(0xc)
1c00337c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003380:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003384:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003388:	029be0c6 	addi.w	$r6,$r6,1784(0x6f8)
1c00338c:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c003390:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003394:	02921084 	addi.w	$r4,$r4,1156(0x484)
1c003398:	57e01fff 	bl	-8164(0xfffe01c) # 1c0013b4 <myprintf>
1c00339c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0033a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0033a4:	03808184 	ori	$r4,$r12,0x20
1c0033a8:	57ddc7ff 	bl	-8764(0xfffddc4) # 1c00116c <EXTI_ClearITPendingBit>
1c0033ac:	03400000 	andi	$r0,$r0,0x0
1c0033b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033bc:	4c000020 	jirl	$r0,$r1,0

1c0033c0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0033c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033d0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0033d4:	029b10c6 	addi.w	$r6,$r6,1732(0x6c4)
1c0033d8:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0033dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0033e0:	0290e084 	addi.w	$r4,$r4,1080(0x438)
1c0033e4:	57dfd3ff 	bl	-8240(0xfffdfd0) # 1c0013b4 <myprintf>
1c0033e8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0033ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0033f0:	03808184 	ori	$r4,$r12,0x20
1c0033f4:	57dd7bff 	bl	-8840(0xfffdd78) # 1c00116c <EXTI_ClearITPendingBit>
1c0033f8:	03400000 	andi	$r0,$r0,0x0
1c0033fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003400:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003404:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003408:	4c000020 	jirl	$r0,$r1,0

1c00340c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00340c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003410:	29803061 	st.w	$r1,$r3,12(0xc)
1c003414:	29802076 	st.w	$r22,$r3,8(0x8)
1c003418:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00341c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003420:	029a40c6 	addi.w	$r6,$r6,1680(0x690)
1c003424:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c003428:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00342c:	028fb084 	addi.w	$r4,$r4,1004(0x3ec)
1c003430:	57df87ff 	bl	-8316(0xfffdf84) # 1c0013b4 <myprintf>
1c003434:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003438:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00343c:	03808184 	ori	$r4,$r12,0x20
1c003440:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c00116c <EXTI_ClearITPendingBit>
1c003444:	03400000 	andi	$r0,$r0,0x0
1c003448:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00344c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003450:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003454:	4c000020 	jirl	$r0,$r1,0

1c003458 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003458:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00345c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003460:	29802076 	st.w	$r22,$r3,8(0x8)
1c003464:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003468:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00346c:	029970c6 	addi.w	$r6,$r6,1628(0x65c)
1c003470:	02812405 	addi.w	$r5,$r0,73(0x49)
1c003474:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003478:	028e8084 	addi.w	$r4,$r4,928(0x3a0)
1c00347c:	57df3bff 	bl	-8392(0xfffdf38) # 1c0013b4 <myprintf>
1c003480:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003484:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003488:	03808184 	ori	$r4,$r12,0x20
1c00348c:	57dce3ff 	bl	-8992(0xfffdce0) # 1c00116c <EXTI_ClearITPendingBit>
1c003490:	03400000 	andi	$r0,$r0,0x0
1c003494:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003498:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00349c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034a0:	4c000020 	jirl	$r0,$r1,0

1c0034a4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0034a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0034ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0034b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0034b4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0034b8:	0298a0c6 	addi.w	$r6,$r6,1576(0x628)
1c0034bc:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c0034c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0034c4:	028d5084 	addi.w	$r4,$r4,852(0x354)
1c0034c8:	57deefff 	bl	-8468(0xfffdeec) # 1c0013b4 <myprintf>
1c0034cc:	03a00005 	ori	$r5,$r0,0x800
1c0034d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0034d4:	03808184 	ori	$r4,$r12,0x20
1c0034d8:	57dc97ff 	bl	-9068(0xfffdc94) # 1c00116c <EXTI_ClearITPendingBit>
1c0034dc:	03400000 	andi	$r0,$r0,0x0
1c0034e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0034e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0034e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034ec:	4c000020 	jirl	$r0,$r1,0

1c0034f0 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0034f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0034f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0034f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0034fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003500:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003504:	0297d0c6 	addi.w	$r6,$r6,1524(0x5f4)
1c003508:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00350c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003510:	028c2084 	addi.w	$r4,$r4,776(0x308)
1c003514:	57dea3ff 	bl	-8544(0xfffdea0) # 1c0013b4 <myprintf>
1c003518:	14000025 	lu12i.w	$r5,1(0x1)
1c00351c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003520:	03808184 	ori	$r4,$r12,0x20
1c003524:	57dc4bff 	bl	-9144(0xfffdc48) # 1c00116c <EXTI_ClearITPendingBit>
1c003528:	03400000 	andi	$r0,$r0,0x0
1c00352c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003530:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003534:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003538:	4c000020 	jirl	$r0,$r1,0

1c00353c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00353c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003540:	29803061 	st.w	$r1,$r3,12(0xc)
1c003544:	29802076 	st.w	$r22,$r3,8(0x8)
1c003548:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00354c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003550:	029700c6 	addi.w	$r6,$r6,1472(0x5c0)
1c003554:	02816405 	addi.w	$r5,$r0,89(0x59)
1c003558:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00355c:	028af084 	addi.w	$r4,$r4,700(0x2bc)
1c003560:	57de57ff 	bl	-8620(0xfffde54) # 1c0013b4 <myprintf>
1c003564:	14000045 	lu12i.w	$r5,2(0x2)
1c003568:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00356c:	03808184 	ori	$r4,$r12,0x20
1c003570:	57dbffff 	bl	-9220(0xfffdbfc) # 1c00116c <EXTI_ClearITPendingBit>
1c003574:	03400000 	andi	$r0,$r0,0x0
1c003578:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00357c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003580:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003584:	4c000020 	jirl	$r0,$r1,0

1c003588 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003588:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00358c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003590:	29802076 	st.w	$r22,$r3,8(0x8)
1c003594:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003598:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00359c:	029630c6 	addi.w	$r6,$r6,1420(0x58c)
1c0035a0:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c0035a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0035a8:	0289c084 	addi.w	$r4,$r4,624(0x270)
1c0035ac:	57de0bff 	bl	-8696(0xfffde08) # 1c0013b4 <myprintf>
1c0035b0:	14000085 	lu12i.w	$r5,4(0x4)
1c0035b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0035b8:	03808184 	ori	$r4,$r12,0x20
1c0035bc:	57dbb3ff 	bl	-9296(0xfffdbb0) # 1c00116c <EXTI_ClearITPendingBit>
1c0035c0:	03400000 	andi	$r0,$r0,0x0
1c0035c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0035c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0035cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0035d0:	4c000020 	jirl	$r0,$r1,0

1c0035d4 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0035d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0035d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0035dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0035e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0035e4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0035e8:	029560c6 	addi.w	$r6,$r6,1368(0x558)
1c0035ec:	02819405 	addi.w	$r5,$r0,101(0x65)
1c0035f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0035f4:	02889084 	addi.w	$r4,$r4,548(0x224)
1c0035f8:	57ddbfff 	bl	-8772(0xfffddbc) # 1c0013b4 <myprintf>
1c0035fc:	14000105 	lu12i.w	$r5,8(0x8)
1c003600:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003604:	03808184 	ori	$r4,$r12,0x20
1c003608:	57db67ff 	bl	-9372(0xfffdb64) # 1c00116c <EXTI_ClearITPendingBit>
1c00360c:	03400000 	andi	$r0,$r0,0x0
1c003610:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003614:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003618:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00361c:	4c000020 	jirl	$r0,$r1,0

1c003620 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c003620:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003624:	29803061 	st.w	$r1,$r3,12(0xc)
1c003628:	29802076 	st.w	$r22,$r3,8(0x8)
1c00362c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003630:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003634:	029490c6 	addi.w	$r6,$r6,1316(0x524)
1c003638:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c00363c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003640:	02876084 	addi.w	$r4,$r4,472(0x1d8)
1c003644:	57dd73ff 	bl	-8848(0xfffdd70) # 1c0013b4 <myprintf>
1c003648:	14000205 	lu12i.w	$r5,16(0x10)
1c00364c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003650:	03808184 	ori	$r4,$r12,0x20
1c003654:	57db1bff 	bl	-9448(0xfffdb18) # 1c00116c <EXTI_ClearITPendingBit>
1c003658:	03400000 	andi	$r0,$r0,0x0
1c00365c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003660:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003664:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003668:	4c000020 	jirl	$r0,$r1,0

1c00366c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00366c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003670:	29803061 	st.w	$r1,$r3,12(0xc)
1c003674:	29802076 	st.w	$r22,$r3,8(0x8)
1c003678:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00367c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003680:	0293c0c6 	addi.w	$r6,$r6,1264(0x4f0)
1c003684:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c003688:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00368c:	02863084 	addi.w	$r4,$r4,396(0x18c)
1c003690:	57dd27ff 	bl	-8924(0xfffdd24) # 1c0013b4 <myprintf>
1c003694:	14000405 	lu12i.w	$r5,32(0x20)
1c003698:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00369c:	03808184 	ori	$r4,$r12,0x20
1c0036a0:	57dacfff 	bl	-9524(0xfffdacc) # 1c00116c <EXTI_ClearITPendingBit>
1c0036a4:	03400000 	andi	$r0,$r0,0x0
1c0036a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0036ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0036b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0036b4:	4c000020 	jirl	$r0,$r1,0

1c0036b8 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0036b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0036bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0036c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0036c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0036c8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0036cc:	0292f0c6 	addi.w	$r6,$r6,1212(0x4bc)
1c0036d0:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0036d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0036d8:	02850084 	addi.w	$r4,$r4,320(0x140)
1c0036dc:	57dcdbff 	bl	-9000(0xfffdcd8) # 1c0013b4 <myprintf>
1c0036e0:	14000805 	lu12i.w	$r5,64(0x40)
1c0036e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0036e8:	03808184 	ori	$r4,$r12,0x20
1c0036ec:	57da83ff 	bl	-9600(0xfffda80) # 1c00116c <EXTI_ClearITPendingBit>
1c0036f0:	03400000 	andi	$r0,$r0,0x0
1c0036f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0036f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0036fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003700:	4c000020 	jirl	$r0,$r1,0

1c003704 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c003704:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003708:	29803061 	st.w	$r1,$r3,12(0xc)
1c00370c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003710:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003714:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003718:	029220c6 	addi.w	$r6,$r6,1160(0x488)
1c00371c:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c003720:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003724:	0283d084 	addi.w	$r4,$r4,244(0xf4)
1c003728:	57dc8fff 	bl	-9076(0xfffdc8c) # 1c0013b4 <myprintf>
1c00372c:	14001005 	lu12i.w	$r5,128(0x80)
1c003730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003734:	03808184 	ori	$r4,$r12,0x20
1c003738:	57da37ff 	bl	-9676(0xfffda34) # 1c00116c <EXTI_ClearITPendingBit>
1c00373c:	03400000 	andi	$r0,$r0,0x0
1c003740:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003744:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003748:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00374c:	4c000020 	jirl	$r0,$r1,0

1c003750 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c003750:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003754:	29803061 	st.w	$r1,$r3,12(0xc)
1c003758:	29802076 	st.w	$r22,$r3,8(0x8)
1c00375c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003760:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003764:	029150c6 	addi.w	$r6,$r6,1108(0x454)
1c003768:	02821005 	addi.w	$r5,$r0,132(0x84)
1c00376c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003770:	0282a084 	addi.w	$r4,$r4,168(0xa8)
1c003774:	57dc43ff 	bl	-9152(0xfffdc40) # 1c0013b4 <myprintf>
1c003778:	14002005 	lu12i.w	$r5,256(0x100)
1c00377c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003780:	03808184 	ori	$r4,$r12,0x20
1c003784:	57d9ebff 	bl	-9752(0xfffd9e8) # 1c00116c <EXTI_ClearITPendingBit>
1c003788:	03400000 	andi	$r0,$r0,0x0
1c00378c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003790:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003794:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003798:	4c000020 	jirl	$r0,$r1,0

1c00379c <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00379c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037ac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0037b0:	029080c6 	addi.w	$r6,$r6,1056(0x420)
1c0037b4:	02822405 	addi.w	$r5,$r0,137(0x89)
1c0037b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0037bc:	02817084 	addi.w	$r4,$r4,92(0x5c)
1c0037c0:	57dbf7ff 	bl	-9228(0xfffdbf4) # 1c0013b4 <myprintf>
1c0037c4:	14004005 	lu12i.w	$r5,512(0x200)
1c0037c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037cc:	03808184 	ori	$r4,$r12,0x20
1c0037d0:	57d99fff 	bl	-9828(0xfffd99c) # 1c00116c <EXTI_ClearITPendingBit>
1c0037d4:	03400000 	andi	$r0,$r0,0x0
1c0037d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037e4:	4c000020 	jirl	$r0,$r1,0

1c0037e8 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0037e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037f8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0037fc:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c003800:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c003804:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003808:	02804084 	addi.w	$r4,$r4,16(0x10)
1c00380c:	57dbabff 	bl	-9304(0xfffdba8) # 1c0013b4 <myprintf>
1c003810:	14008005 	lu12i.w	$r5,1024(0x400)
1c003814:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003818:	03808184 	ori	$r4,$r12,0x20
1c00381c:	57d953ff 	bl	-9904(0xfffd950) # 1c00116c <EXTI_ClearITPendingBit>
1c003820:	03400000 	andi	$r0,$r0,0x0
1c003824:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003828:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00382c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003830:	4c000020 	jirl	$r0,$r1,0

1c003834 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c003834:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003838:	29803061 	st.w	$r1,$r3,12(0xc)
1c00383c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003840:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003844:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003848:	028ee0c6 	addi.w	$r6,$r6,952(0x3b8)
1c00384c:	02825005 	addi.w	$r5,$r0,148(0x94)
1c003850:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003854:	02bf1084 	addi.w	$r4,$r4,-60(0xfc4)
1c003858:	57db5fff 	bl	-9380(0xfffdb5c) # 1c0013b4 <myprintf>
1c00385c:	14010005 	lu12i.w	$r5,2048(0x800)
1c003860:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003864:	03808184 	ori	$r4,$r12,0x20
1c003868:	57d907ff 	bl	-9980(0xfffd904) # 1c00116c <EXTI_ClearITPendingBit>
1c00386c:	03400000 	andi	$r0,$r0,0x0
1c003870:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003874:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003878:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00387c:	4c000020 	jirl	$r0,$r1,0

1c003880 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c003880:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003884:	29803061 	st.w	$r1,$r3,12(0xc)
1c003888:	29802076 	st.w	$r22,$r3,8(0x8)
1c00388c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003890:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003894:	028e10c6 	addi.w	$r6,$r6,900(0x384)
1c003898:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c00389c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0038a0:	02bde084 	addi.w	$r4,$r4,-136(0xf78)
1c0038a4:	57db13ff 	bl	-9456(0xfffdb10) # 1c0013b4 <myprintf>
1c0038a8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0038ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038b0:	03808184 	ori	$r4,$r12,0x20
1c0038b4:	57d8bbff 	bl	-10056(0xfffd8b8) # 1c00116c <EXTI_ClearITPendingBit>
1c0038b8:	03400000 	andi	$r0,$r0,0x0
1c0038bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038c8:	4c000020 	jirl	$r0,$r1,0

1c0038cc <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0038cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0038e0:	028d40c6 	addi.w	$r6,$r6,848(0x350)
1c0038e4:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0038e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0038ec:	02bcb084 	addi.w	$r4,$r4,-212(0xf2c)
1c0038f0:	57dac7ff 	bl	-9532(0xfffdac4) # 1c0013b4 <myprintf>
1c0038f4:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0038f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038fc:	03808184 	ori	$r4,$r12,0x20
1c003900:	57d86fff 	bl	-10132(0xfffd86c) # 1c00116c <EXTI_ClearITPendingBit>
1c003904:	03400000 	andi	$r0,$r0,0x0
1c003908:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00390c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003910:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003914:	4c000020 	jirl	$r0,$r1,0

1c003918 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c003918:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00391c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003920:	29802076 	st.w	$r22,$r3,8(0x8)
1c003924:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003928:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00392c:	028c70c6 	addi.w	$r6,$r6,796(0x31c)
1c003930:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c003934:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003938:	02bb8084 	addi.w	$r4,$r4,-288(0xee0)
1c00393c:	57da7bff 	bl	-9608(0xfffda78) # 1c0013b4 <myprintf>
1c003940:	14080005 	lu12i.w	$r5,16384(0x4000)
1c003944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003948:	03808184 	ori	$r4,$r12,0x20
1c00394c:	57d823ff 	bl	-10208(0xfffd820) # 1c00116c <EXTI_ClearITPendingBit>
1c003950:	03400000 	andi	$r0,$r0,0x0
1c003954:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003958:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00395c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003960:	4c000020 	jirl	$r0,$r1,0

1c003964 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c003964:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003968:	29803061 	st.w	$r1,$r3,12(0xc)
1c00396c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003970:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003974:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003978:	028ba0c6 	addi.w	$r6,$r6,744(0x2e8)
1c00397c:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c003980:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003984:	02ba5084 	addi.w	$r4,$r4,-364(0xe94)
1c003988:	57da2fff 	bl	-9684(0xfffda2c) # 1c0013b4 <myprintf>
1c00398c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c003990:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003994:	03808184 	ori	$r4,$r12,0x20
1c003998:	57d7d7ff 	bl	-10284(0xfffd7d4) # 1c00116c <EXTI_ClearITPendingBit>
1c00399c:	03400000 	andi	$r0,$r0,0x0
1c0039a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039ac:	4c000020 	jirl	$r0,$r1,0

1c0039b0 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0039b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0039c4:	028ad0c6 	addi.w	$r6,$r6,692(0x2b4)
1c0039c8:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c0039cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0039d0:	02b92084 	addi.w	$r4,$r4,-440(0xe48)
1c0039d4:	57d9e3ff 	bl	-9760(0xfffd9e0) # 1c0013b4 <myprintf>
1c0039d8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0039dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039e0:	03808184 	ori	$r4,$r12,0x20
1c0039e4:	57d78bff 	bl	-10360(0xfffd788) # 1c00116c <EXTI_ClearITPendingBit>
1c0039e8:	03400000 	andi	$r0,$r0,0x0
1c0039ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039f8:	4c000020 	jirl	$r0,$r1,0

1c0039fc <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0039fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a00:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a04:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a0c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003a10:	028a00c6 	addi.w	$r6,$r6,640(0x280)
1c003a14:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c003a18:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003a1c:	02b7f084 	addi.w	$r4,$r4,-516(0xdfc)
1c003a20:	57d997ff 	bl	-9836(0xfffd994) # 1c0013b4 <myprintf>
1c003a24:	14400005 	lu12i.w	$r5,131072(0x20000)
1c003a28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a2c:	03808184 	ori	$r4,$r12,0x20
1c003a30:	57d73fff 	bl	-10436(0xfffd73c) # 1c00116c <EXTI_ClearITPendingBit>
1c003a34:	03400000 	andi	$r0,$r0,0x0
1c003a38:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a3c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a40:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a44:	4c000020 	jirl	$r0,$r1,0

1c003a48 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c003a48:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a4c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a50:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a54:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a58:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003a5c:	028930c6 	addi.w	$r6,$r6,588(0x24c)
1c003a60:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c003a64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003a68:	02b6c084 	addi.w	$r4,$r4,-592(0xdb0)
1c003a6c:	57d94bff 	bl	-9912(0xfffd948) # 1c0013b4 <myprintf>
1c003a70:	14800005 	lu12i.w	$r5,262144(0x40000)
1c003a74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a78:	03808184 	ori	$r4,$r12,0x20
1c003a7c:	57d6f3ff 	bl	-10512(0xfffd6f0) # 1c00116c <EXTI_ClearITPendingBit>
1c003a80:	03400000 	andi	$r0,$r0,0x0
1c003a84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a90:	4c000020 	jirl	$r0,$r1,0

1c003a94 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c003a94:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a98:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a9c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003aa0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003aa4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003aa8:	028860c6 	addi.w	$r6,$r6,536(0x218)
1c003aac:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c003ab0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003ab4:	02b59084 	addi.w	$r4,$r4,-668(0xd64)
1c003ab8:	57d8ffff 	bl	-9988(0xfffd8fc) # 1c0013b4 <myprintf>
1c003abc:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c003ac0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ac4:	03808184 	ori	$r4,$r12,0x20
1c003ac8:	57d6a7ff 	bl	-10588(0xfffd6a4) # 1c00116c <EXTI_ClearITPendingBit>
1c003acc:	03400000 	andi	$r0,$r0,0x0
1c003ad0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ad4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ad8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003adc:	4c000020 	jirl	$r0,$r1,0

1c003ae0 <ext_handler>:
ext_handler():
1c003ae0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ae4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003ae8:	29806076 	st.w	$r22,$r3,24(0x18)
1c003aec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003af0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003af4:	0380f18c 	ori	$r12,$r12,0x3c
1c003af8:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c003afc:	2980018d 	st.w	$r13,$r12,0
1c003b00:	1c000026 	pcaddu12i	$r6,1(0x1)
1c003b04:	028750c6 	addi.w	$r6,$r6,468(0x1d4)
1c003b08:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c003b0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003b10:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c003b14:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c0013b4 <myprintf>
1c003b18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b1c:	0380818c 	ori	$r12,$r12,0x20
1c003b20:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c003b24:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003b28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b2c:	0380818c 	ori	$r12,$r12,0x20
1c003b30:	2880018c 	ld.w	$r12,$r12,0
1c003b34:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003b38:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003b3c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003b40:	0014b1ac 	and	$r12,$r13,$r12
1c003b44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003b48:	03400000 	andi	$r0,$r0,0x0
1c003b4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b50:	50004000 	b	64(0x40) # 1c003b90 <ext_handler+0xb0>
1c003b54:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003b58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b5c:	0017b1ac 	srl.w	$r12,$r13,$r12
1c003b60:	0340058c 	andi	$r12,$r12,0x1
1c003b64:	40002180 	beqz	$r12,32(0x20) # 1c003b84 <ext_handler+0xa4>
1c003b68:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c003b6c:	02b6a1ad 	addi.w	$r13,$r13,-600(0xda8)
1c003b70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b74:	0040898c 	slli.w	$r12,$r12,0x2
1c003b78:	001031ac 	add.w	$r12,$r13,$r12
1c003b7c:	2880018c 	ld.w	$r12,$r12,0
1c003b80:	4c000181 	jirl	$r1,$r12,0
1c003b84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b94:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c003b98:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c003b54 <ext_handler+0x74>
1c003b9c:	03400000 	andi	$r0,$r0,0x0
1c003ba0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003ba4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ba8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bac:	4c000020 	jirl	$r0,$r1,0

1c003bb0 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c003bb0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bb4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003bb8:	29806076 	st.w	$r22,$r3,24(0x18)
1c003bbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bc4:	0380f18c 	ori	$r12,$r12,0x3c
1c003bc8:	1400020d 	lu12i.w	$r13,16(0x10)
1c003bcc:	2980018d 	st.w	$r13,$r12,0
1c003bd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bd4:	0380118c 	ori	$r12,$r12,0x4
1c003bd8:	2880018c 	ld.w	$r12,$r12,0
1c003bdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003be0:	57dbc7ff 	bl	-9276(0xfffdbc4) # 1c0017a4 <WDG_DogFeed>
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003bec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003bf0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bf4:	4c000020 	jirl	$r0,$r1,0

1c003bf8 <TOUCH>:
TOUCH():
1c003bf8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bfc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c00:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c08:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c0c:	0380118c 	ori	$r12,$r12,0x4
1c003c10:	2880018c 	ld.w	$r12,$r12,0
1c003c14:	0044c18c 	srli.w	$r12,$r12,0x10
1c003c18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c1c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c20:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c24:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c28:	0380118c 	ori	$r12,$r12,0x4
1c003c2c:	2880018c 	ld.w	$r12,$r12,0
1c003c30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003c34:	03403d8c 	andi	$r12,$r12,0xf
1c003c38:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c003c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c40:	0380f18c 	ori	$r12,$r12,0x3c
1c003c44:	1400040d 	lu12i.w	$r13,32(0x20)
1c003c48:	2980018d 	st.w	$r13,$r12,0
1c003c4c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c50:	0380118c 	ori	$r12,$r12,0x4
1c003c54:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c003c58:	2980018d 	st.w	$r13,$r12,0
1c003c5c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c60:	00150185 	move	$r5,$r12
1c003c64:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003c68:	02afe084 	addi.w	$r4,$r4,-1032(0xbf8)
1c003c6c:	57d74bff 	bl	-10424(0xfffd748) # 1c0013b4 <myprintf>
1c003c70:	03400000 	andi	$r0,$r0,0x0
1c003c74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c80:	4c000020 	jirl	$r0,$r1,0

1c003c84 <UART2_INT>:
UART2_INT():
1c003c84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c88:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c94:	0380f18c 	ori	$r12,$r12,0x3c
1c003c98:	1400080d 	lu12i.w	$r13,64(0x40)
1c003c9c:	2980018d 	st.w	$r13,$r12,0
1c003ca0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c003ca4:	0380098c 	ori	$r12,$r12,0x2
1c003ca8:	2a00018c 	ld.bu	$r12,$r12,0
1c003cac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003cb0:	03400000 	andi	$r0,$r0,0x0
1c003cb4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003cb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003cbc:	4c000020 	jirl	$r0,$r1,0

1c003cc0 <BAT_FAIL>:
BAT_FAIL():
1c003cc0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cc4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003cc8:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ccc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cd4:	0380118c 	ori	$r12,$r12,0x4
1c003cd8:	2880018c 	ld.w	$r12,$r12,0
1c003cdc:	0044cd8c 	srli.w	$r12,$r12,0x13
1c003ce0:	03407d8c 	andi	$r12,$r12,0x1f
1c003ce4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ce8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cec:	0380118c 	ori	$r12,$r12,0x4
1c003cf0:	2880018e 	ld.w	$r14,$r12,0
1c003cf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cf8:	0380f18c 	ori	$r12,$r12,0x3c
1c003cfc:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c003d00:	0014b5cd 	and	$r13,$r14,$r13
1c003d04:	2980018d 	st.w	$r13,$r12,0
1c003d08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d0c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003d10:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c003d80 <BAT_FAIL+0xc0>
1c003d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d18:	0040898d 	slli.w	$r13,$r12,0x2
1c003d1c:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c003d20:	02b1d18c 	addi.w	$r12,$r12,-908(0xc74)
1c003d24:	001031ac 	add.w	$r12,$r13,$r12
1c003d28:	2880018c 	ld.w	$r12,$r12,0
1c003d2c:	4c000180 	jirl	$r0,$r12,0
1c003d30:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003d34:	02ad3084 	addi.w	$r4,$r4,-1204(0xb4c)
1c003d38:	57d67fff 	bl	-10628(0xfffd67c) # 1c0013b4 <myprintf>
1c003d3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d40:	0380118c 	ori	$r12,$r12,0x4
1c003d44:	29800180 	st.w	$r0,$r12,0
1c003d48:	50003c00 	b	60(0x3c) # 1c003d84 <BAT_FAIL+0xc4>
1c003d4c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003d50:	02ad6084 	addi.w	$r4,$r4,-1192(0xb58)
1c003d54:	57d663ff 	bl	-10656(0xfffd660) # 1c0013b4 <myprintf>
1c003d58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d5c:	0380118c 	ori	$r12,$r12,0x4
1c003d60:	2880018e 	ld.w	$r14,$r12,0
1c003d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d68:	0380118c 	ori	$r12,$r12,0x4
1c003d6c:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c003d70:	03bffdad 	ori	$r13,$r13,0xfff
1c003d74:	0014b5cd 	and	$r13,$r14,$r13
1c003d78:	2980018d 	st.w	$r13,$r12,0
1c003d7c:	50000800 	b	8(0x8) # 1c003d84 <BAT_FAIL+0xc4>
1c003d80:	03400000 	andi	$r0,$r0,0x0
1c003d84:	03400000 	andi	$r0,$r0,0x0
1c003d88:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003d8c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d94:	4c000020 	jirl	$r0,$r1,0

1c003d98 <INTC_Handler>:
INTC_Handler():
1c003d98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003da0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003da4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003da8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003dac:	0380158c 	ori	$r12,$r12,0x5
1c003db0:	2a00018c 	ld.bu	$r12,$r12,0
1c003db4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003db8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dbc:	0340058c 	andi	$r12,$r12,0x1
1c003dc0:	40002980 	beqz	$r12,40(0x28) # 1c003de8 <INTC_Handler+0x50>
1c003dc4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c003dc8:	57e1f3ff 	bl	-7696(0xfffe1f0) # 1c001fb8 <TIM_GetITStatus>
1c003dcc:	0015008c 	move	$r12,$r4
1c003dd0:	40001980 	beqz	$r12,24(0x18) # 1c003de8 <INTC_Handler+0x50>
1c003dd4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c003dd8:	57e22fff 	bl	-7636(0xfffe22c) # 1c002004 <TIM_ClearIT>
1c003ddc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003de0:	02abb084 	addi.w	$r4,$r4,-1300(0xaec)
1c003de4:	57d5d3ff 	bl	-10800(0xfffd5d0) # 1c0013b4 <myprintf>
1c003de8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dec:	0340118c 	andi	$r12,$r12,0x4
1c003df0:	40002d80 	beqz	$r12,44(0x2c) # 1c003e1c <INTC_Handler+0x84>
1c003df4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c003df8:	2880018c 	ld.w	$r12,$r12,0
1c003dfc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003e00:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003e04:	00150184 	move	$r4,$r12
1c003e08:	57e07bff 	bl	-8072(0xfffe078) # 1c001e80 <my_recv_dat_int>
1c003e0c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e10:	03800d8c 	ori	$r12,$r12,0x3
1c003e14:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003e18:	2900018d 	st.b	$r13,$r12,0
1c003e1c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e20:	0340218c 	andi	$r12,$r12,0x8
1c003e24:	40002d80 	beqz	$r12,44(0x2c) # 1c003e50 <INTC_Handler+0xb8>
1c003e28:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003e2c:	2880018c 	ld.w	$r12,$r12,0
1c003e30:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c003e34:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c003e38:	00150184 	move	$r4,$r12
1c003e3c:	57e047ff 	bl	-8124(0xfffe044) # 1c001e80 <my_recv_dat_int>
1c003e40:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e44:	03800d8c 	ori	$r12,$r12,0x3
1c003e48:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c003e4c:	2900018d 	st.b	$r13,$r12,0
1c003e50:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e54:	03800d8c 	ori	$r12,$r12,0x3
1c003e58:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c003e5c:	2900018d 	st.b	$r13,$r12,0
1c003e60:	03400000 	andi	$r0,$r0,0x0
1c003e64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e70:	4c000020 	jirl	$r0,$r1,0

1c003e74 <TIMER_HANDLER>:
TIMER_HANDLER():
1c003e74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e78:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e84:	57d2c7ff 	bl	-11580(0xfffd2c4) # 1c001148 <Set_Timer_clear>
1c003e88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003e8c:	02a9a084 	addi.w	$r4,$r4,-1432(0xa68)
1c003e90:	57d527ff 	bl	-10972(0xfffd524) # 1c0013b4 <myprintf>
1c003e94:	57d297ff 	bl	-11628(0xfffd294) # 1c001128 <Set_Timer_stop>
1c003e98:	03400000 	andi	$r0,$r0,0x0
1c003e9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ea0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ea4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ea8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c003eac <F6x8-0x150>:
1c003eac:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c003eb0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003eb4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003eb8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ebc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ec0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ec4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ec8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ecc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ed0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ed4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ed8:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c003edc:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003ee0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003ee4:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003ee8:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003eec:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003ef0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003ef4:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003ef8:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003efc:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c003f00:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f04:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f08:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f0c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f10:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f14:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f18:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f1c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f20:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f24:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f28:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f2c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f30:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f34:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f38:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f3c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f40:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f44:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f48:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f4c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f50:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f54:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f58:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f5c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f60:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f64:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f68:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f6c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f70:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f74:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f78:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f7c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f80:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f84:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f88:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f8c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f90:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f94:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f98:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003f9c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fa0:	1c001564 	pcaddu12i	$r4,171(0xab)
1c003fa4:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c003fa8:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c003fac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fb0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fb4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fb8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fbc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fc0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fc4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fc8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fcc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fd0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fd4:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c003fd8:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c003fdc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fe0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fe4:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c003fe8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003fec:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c003ff0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ff4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c003ff8:	1c00159c 	pcaddu12i	$r28,172(0xac)

1c003ffc <F6x8>:
	...
1c004004:	00002f00 	ctz.d	$r0,$r24
1c004008:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c00400c:	14000007 	lu12i.w	$r7,0
1c004010:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c004014:	7f2a2400 	0x7f2a2400
1c004018:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfe4028 <_start-0x1bfd8>
1c00401c:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c004020:	55493600 	bl	-134133452(0x8014934) # 14018954 <_start-0x7fe76ac>
1c004024:	00005022 	bitrev.w	$r2,$r1
1c004028:	00000305 	0x00000305
1c00402c:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c004030:	00000041 	0x00000041
1c004034:	001c2241 	mul.w	$r1,$r18,$r8
1c004038:	3e081400 	0x3e081400
1c00403c:	08001408 	0x08001408
1c004040:	08083e08 	0x08083e08
1c004044:	a0000000 	0xa0000000
1c004048:	08000060 	0x08000060
1c00404c:	08080808 	0x08080808
1c004050:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c00a050 <_sidata+0x5370>
1c004054:	20000000 	ll.w	$r0,$r0,0
1c004058:	02040810 	slti	$r16,$r0,258(0x102)
1c00405c:	49513e00 	0x49513e00
1c004060:	00003e45 	revb.d	$r5,$r18
1c004064:	00407f42 	0x00407f42
1c004068:	51614200 	b	-134127296(0x8016140) # 1401a1a8 <_start-0x7fe5e58>
1c00406c:	21004649 	sc.w	$r9,$r18,68(0x44)
1c004070:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c004074:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c004078:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c00407c:	39454545 	0x39454545
1c004080:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c018abc <_sidata+0x13ddc>
1c004084:	01003049 	0x01003049
1c004088:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c00408c:	49493600 	0x49493600
1c004090:	06003649 	cacop	0x9,$r18,13(0xd)
1c004094:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c004098:	36360000 	0x36360000
1c00409c:	00000000 	0x00000000
1c0040a0:	00003656 	revb.4h	$r22,$r18
1c0040a4:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c0040a8:	14000041 	lu12i.w	$r1,2(0x2)
1c0040ac:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c0040b0:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c0040b4:	02000814 	slti	$r20,$r0,2(0x2)
1c0040b8:	06095101 	cacop	0x1,$r8,596(0x254)
1c0040bc:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c0189ec <_sidata+0x13d0c>
1c0040c0:	7c003e51 	0x7c003e51
1c0040c4:	7c121112 	0x7c121112
1c0040c8:	49497f00 	0x49497f00
1c0040cc:	3e003649 	0x3e003649
1c0040d0:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c0040d4:	41417f00 	beqz	$r24,82300(0x1417c) # 1c018250 <_sidata+0x13570>
1c0040d8:	7f001c22 	0x7f001c22
1c0040dc:	41494949 	beqz	$r10,2443592(0x254948) # 1c258a24 <_sidata+0x253d44>
1c0040e0:	09097f00 	0x09097f00
1c0040e4:	3e000109 	0x3e000109
1c0040e8:	7a494941 	0x7a494941
1c0040ec:	08087f00 	0x08087f00
1c0040f0:	00007f08 	0x00007f08
1c0040f4:	00417f41 	slli.d	$r1,$r26,0x1f
1c0040f8:	41402000 	beqz	$r0,81952(0x14020) # 1c018118 <_sidata+0x13438>
1c0040fc:	7f00013f 	0x7f00013f
1c004100:	41221408 	beqz	$r0,2171412(0x212214) # 1c216314 <_sidata+0x211634>
1c004104:	40407f00 	beqz	$r24,16508(0x407c) # 1c008180 <_sidata+0x34a0>
1c004108:	7f004040 	0x7f004040
1c00410c:	7f020c02 	0x7f020c02
1c004110:	08047f00 	0x08047f00
1c004114:	3e007f10 	0x3e007f10
1c004118:	3e414141 	0x3e414141
1c00411c:	09097f00 	0x09097f00
1c004120:	3e000609 	0x3e000609
1c004124:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfe6274 <_start-0x19d8c>
1c004128:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c00412c:	46004629 	bnez	$r17,2490436(0x260044) # 1c264170 <_sidata+0x25f490>
1c004130:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c004134:	7f010100 	0x7f010100
1c004138:	3f000101 	0x3f000101
1c00413c:	3f404040 	0x3f404040
1c004140:	40201f00 	beqz	$r24,8220(0x201c) # 1c00615c <_sidata+0x147c>
1c004144:	3f001f20 	0x3f001f20
1c004148:	3f403840 	0x3f403840
1c00414c:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c004150:	07006314 	0x07006314
1c004154:	07087008 	0x07087008
1c004158:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c0192b8 <_sidata+0x145d8>
1c00415c:	00004345 	revh.2w	$r5,$r26
1c004160:	0041417f 	slli.d	$r31,$r11,0x10
1c004164:	552a5500 	bl	67185236(0x4012a54) # 20016bb8 <_sidata+0x4011ed8>
1c004168:	0000552a 	bitrev.d	$r10,$r9
1c00416c:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c004170:	01020400 	0x01020400
1c004174:	40000402 	beqz	$r0,524292(0x80004) # 1c084178 <_sidata+0x7f498>
1c004178:	40404040 	beqz	$r2,16448(0x4040) # 1c0081b8 <_sidata+0x34d8>
1c00417c:	02010000 	slti	$r0,$r0,64(0x40)
1c004180:	20000004 	ll.w	$r4,$r0,0
1c004184:	78545454 	0x78545454
1c004188:	44487f00 	bnez	$r24,18556(0x487c) # 1c008a04 <_sidata+0x3d24>
1c00418c:	38003844 	ldx.b	$r4,$r2,$r14
1c004190:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c004194:	44443800 	bnez	$r0,17464(0x4438) # 1c0085cc <_sidata+0x38ec>
1c004198:	38007f48 	ldx.b	$r8,$r26,$r31
1c00419c:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c0041a0:	097e0800 	0x097e0800
1c0041a4:	18000201 	pcaddi	$r1,16(0x10)
1c0041a8:	7ca4a4a4 	0x7ca4a4a4
1c0041ac:	04087f00 	csrxchg	$r0,$r24,0x21f
1c0041b0:	00007804 	0x00007804
1c0041b4:	00407d44 	0x00407d44
1c0041b8:	84804000 	0x84804000
1c0041bc:	7f00007d 	0x7f00007d
1c0041c0:	00442810 	0x00442810
1c0041c4:	7f410000 	0x7f410000
1c0041c8:	7c000040 	0x7c000040
1c0041cc:	78041804 	0x78041804
1c0041d0:	04087c00 	csrrd	$r0,0x21f
1c0041d4:	38007804 	ldx.b	$r4,$r0,$r30
1c0041d8:	38444444 	vstx	$vr4,$r2,$r17
1c0041dc:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c0041e0:	18001824 	pcaddi	$r4,193(0xc1)
1c0041e4:	fc182424 	0xfc182424
1c0041e8:	04087c00 	csrrd	$r0,0x21f
1c0041ec:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c1041f4 <_sidata+0xff514>
1c0041f0:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c0041f4:	443f0400 	bnez	$r0,16132(0x3f04) # 1c0080f8 <_sidata+0x3418>
1c0041f8:	3c002040 	0x3c002040
1c0041fc:	7c204040 	0x7c204040
1c004200:	40201c00 	beqz	$r0,8220(0x201c) # 1c00621c <_sidata+0x153c>
1c004204:	3c001c20 	0x3c001c20
1c004208:	3c403040 	0x3c403040
1c00420c:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c004210:	1c004428 	pcaddu12i	$r8,545(0x221)
1c004214:	7ca0a0a0 	0x7ca0a0a0
1c004218:	54644400 	bl	25668(0x6444) # 1c00a65c <_sidata+0x597c>
1c00421c:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c004220:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c004224 <F8X16>:
	...
1c004234:	f8000000 	0xf8000000
1c004238:	00000000 	0x00000000
1c00423c:	33000000 	0x33000000
1c004240:	00000030 	0x00000030
1c004244:	060c1000 	cacop	0x0,$r0,772(0x304)
1c004248:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c004254:	4078c040 	beqz	$r2,30912(0x78c0) # 1c00bb14 <_sidata+0x6e34>
1c004258:	004078c0 	0x004078c0
1c00425c:	04043f04 	csrxchg	$r4,$r24,0x10f
1c004260:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c004264:	fc887000 	0xfc887000
1c004268:	00003008 	revb.2h	$r8,$r0
1c00426c:	ff201800 	0xff201800
1c004270:	00001e21 	ctz.w	$r1,$r17
1c004274:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c004278:	000018e0 	cto.w	$r0,$r7
1c00427c:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c004280:	001e211e 	mulh.d	$r30,$r8,$r8
1c004284:	8808f000 	0x8808f000
1c004288:	00000070 	0x00000070
1c00428c:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c004290:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c004294:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c0042a4:	e0000000 	0xe0000000
1c0042a8:	00020418 	0x00020418
1c0042ac:	07000000 	0x07000000
1c0042b0:	00402018 	0x00402018
1c0042b4:	18040200 	pcaddi	$r0,8208(0x2010)
1c0042b8:	000000e0 	0x000000e0
1c0042bc:	18204000 	pcaddi	$r0,66048(0x10200)
1c0042c0:	00000007 	0x00000007
1c0042c4:	f0804040 	0xf0804040
1c0042c8:	00404080 	0x00404080
1c0042cc:	0f010202 	0x0f010202
1c0042d0:	00020201 	0x00020201
1c0042d4:	f0000000 	0xf0000000
1c0042d8:	00000000 	0x00000000
1c0042dc:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c0042e0:	00010101 	0x00010101
	...
1c0042ec:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c0042fc:	01010100 	fadd.d	$f0,$f8,$f0
1c004300:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c00430c:	00303000 	0x00303000
	...
1c004318:	04186080 	csrxchg	$r0,$r4,0x618
1c00431c:	06186000 	cacop	0x0,$r0,1560(0x618)
1c004320:	00000001 	0x00000001
1c004324:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c004328:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00432c:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c004330:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c004334:	f8101000 	0xf8101000
1c004338:	00000000 	0x00000000
1c00433c:	3f202000 	0x3f202000
1c004340:	00002020 	clo.d	$r0,$r1
1c004344:	08087000 	0x08087000
1c004348:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00434c:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c004350:	00302122 	0x00302122
1c004354:	88083000 	0x88083000
1c004358:	00304888 	0x00304888
1c00435c:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c004360:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c004364:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c004368:	0000f810 	0x0000f810
1c00436c:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c004370:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c004374:	8808f800 	0x8808f800
1c004378:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c00437c:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c004380:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c004384:	8810e000 	0x8810e000
1c004388:	00001888 	cto.w	$r8,$r4
1c00438c:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c004390:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c004394:	08083800 	0x08083800
1c004398:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00439c:	3f000000 	0x3f000000
1c0043a0:	00000000 	0x00000000
1c0043a4:	08887000 	0x08887000
1c0043a8:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c0043ac:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c0043b0:	001c2221 	mul.w	$r1,$r17,$r8
1c0043b4:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c0043b8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0043bc:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c0043c0:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c0043c4:	c0000000 	0xc0000000
1c0043c8:	000000c0 	0x000000c0
1c0043cc:	30000000 	0x30000000
1c0043d0:	00000030 	0x00000030
1c0043d4:	80000000 	0x80000000
1c0043d8:	00000000 	0x00000000
1c0043dc:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c00c3dc <_sidata+0x76fc>
1c0043e0:	00000000 	0x00000000
1c0043e4:	40800000 	beqz	$r0,32768(0x8000) # 1c00c3e4 <_sidata+0x7704>
1c0043e8:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0043ec:	04020100 	csrxchg	$r0,$r8,0x80
1c0043f0:	00201008 	div.w	$r8,$r0,$r4
1c0043f4:	40404040 	beqz	$r2,16448(0x4040) # 1c008434 <_sidata+0x3754>
1c0043f8:	00404040 	0x00404040
1c0043fc:	04040404 	csrrd	$r4,0x101
1c004400:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c004404:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c004408:	00008040 	0x00008040
1c00440c:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c004410:	00010204 	0x00010204
1c004414:	08487000 	0x08487000
1c004418:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00441c:	30000000 	0x30000000
1c004420:	00000136 	0x00000136
1c004424:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c004428:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00442c:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c004430:	000b1423 	0x000b1423
1c004434:	38c00000 	0x38c00000
1c004438:	000000e0 	0x000000e0
1c00443c:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c004440:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c004444:	8888f808 	0x8888f808
1c004448:	00007088 	0x00007088
1c00444c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c004450:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c004454:	080830c0 	0x080830c0
1c004458:	00380808 	0x00380808
1c00445c:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c004460:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c004464:	0808f808 	0x0808f808
1c004468:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00446c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c004470:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c004474:	8888f808 	0x8888f808
1c004478:	001008e8 	add.w	$r8,$r7,$r2
1c00447c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c004480:	00182023 	sra.w	$r3,$r1,$r8
1c004484:	8888f808 	0x8888f808
1c004488:	001008e8 	add.w	$r8,$r7,$r2
1c00448c:	00203f20 	div.w	$r0,$r25,$r15
1c004490:	00000003 	0x00000003
1c004494:	080830c0 	0x080830c0
1c004498:	00003808 	revb.2w	$r8,$r0
1c00449c:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0044a0:	00021e22 	0x00021e22
1c0044a4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0044a8:	08f80800 	0x08f80800
1c0044ac:	01213f20 	0x01213f20
1c0044b0:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c0044b4:	f8080800 	0xf8080800
1c0044b8:	00000808 	0x00000808
1c0044bc:	3f202000 	0x3f202000
1c0044c0:	00002020 	clo.d	$r0,$r1
1c0044c4:	08080000 	0x08080000
1c0044c8:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c0044cc:	808080c0 	0x808080c0
1c0044d0:	0000007f 	0x0000007f
1c0044d4:	c088f808 	0xc088f808
1c0044d8:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c0044dc:	01203f20 	0x01203f20
1c0044e0:	00203826 	div.w	$r6,$r1,$r14
1c0044e4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0044e8:	00000000 	0x00000000
1c0044ec:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0044f0:	00302020 	0x00302020
1c0044f4:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c0044f8:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c0044fc:	3f003f20 	0x3f003f20
1c004500:	00203f00 	div.w	$r0,$r24,$r15
1c004504:	c030f808 	0xc030f808
1c004508:	08f80800 	0x08f80800
1c00450c:	00203f20 	div.w	$r0,$r25,$r15
1c004510:	003f1807 	0x003f1807
1c004514:	080810e0 	0x080810e0
1c004518:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00451c:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c004520:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c004524:	0808f808 	0x0808f808
1c004528:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00452c:	01213f20 	0x01213f20
1c004530:	00000101 	0x00000101
1c004534:	080810e0 	0x080810e0
1c004538:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00453c:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c004540:	004f5038 	0x004f5038
1c004544:	8888f808 	0x8888f808
1c004548:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00454c:	00203f20 	div.w	$r0,$r25,$r15
1c004550:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c004554:	08887000 	0x08887000
1c004558:	00380808 	0x00380808
1c00455c:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c004560:	001c2221 	mul.w	$r1,$r17,$r8
1c004564:	f8080818 	0xf8080818
1c004568:	00180808 	sra.w	$r8,$r0,$r2
1c00456c:	3f200000 	0x3f200000
1c004570:	00000020 	0x00000020
1c004574:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c004578:	08f80800 	0x08f80800
1c00457c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c004580:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c004584:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c004588:	0838c800 	0x0838c800
1c00458c:	38070000 	0x38070000
1c004590:	0000010e 	0x0000010e
1c004594:	f80008f8 	0xf80008f8
1c004598:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c00459c:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c0045a0:	00033c07 	0x00033c07
1c0045a4:	80681808 	0x80681808
1c0045a8:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c0045ac:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c0045b0:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c0045b4:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c0045b8:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0045bc:	3f200000 	0x3f200000
1c0045c0:	00000020 	0x00000020
1c0045c4:	08080810 	0x08080810
1c0045c8:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c0045cc:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c0045d0:	00182020 	sra.w	$r0,$r1,$r8
1c0045d4:	fe000000 	0xfe000000
1c0045d8:	00020202 	0x00020202
1c0045dc:	7f000000 	0x7f000000
1c0045e0:	00404040 	0x00404040
1c0045e4:	c0300c00 	0xc0300c00
1c0045e8:	00000000 	0x00000000
1c0045ec:	01000000 	0x01000000
1c0045f0:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c0045f4:	02020200 	slti	$r0,$r16,128(0x80)
1c0045f8:	000000fe 	0x000000fe
1c0045fc:	40404000 	beqz	$r0,16448(0x4040) # 1c00863c <_sidata+0x395c>
1c004600:	0000007f 	0x0000007f
1c004604:	02040000 	slti	$r0,$r0,256(0x100)
1c004608:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c00461c:	80808080 	0x80808080
1c004620:	80808080 	0x80808080
1c004624:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c004634:	80800000 	0x80800000
1c004638:	00008080 	0x00008080
1c00463c:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c004640:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c004644:	8000f808 	0x8000f808
1c004648:	00000080 	0x00000080
1c00464c:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c004650:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c004654:	80000000 	0x80000000
1c004658:	00008080 	0x00008080
1c00465c:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c004660:	00112020 	sub.w	$r0,$r1,$r8
1c004664:	80000000 	0x80000000
1c004668:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c00466c:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c004670:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c004674:	80800000 	0x80800000
1c004678:	00008080 	0x00008080
1c00467c:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c004680:	00132222 	maskeqz	$r2,$r17,$r8
1c004684:	f0808000 	0xf0808000
1c004688:	18888888 	pcaddi	$r8,279620(0x44444)
1c00468c:	3f202000 	0x3f202000
1c004690:	00002020 	clo.d	$r0,$r1
1c004694:	80800000 	0x80800000
1c004698:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00469c:	94946b00 	0x94946b00
1c0046a0:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c0046a4:	8000f808 	0x8000f808
1c0046a8:	00008080 	0x00008080
1c0046ac:	00213f20 	div.wu	$r0,$r25,$r15
1c0046b0:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0046b4:	98988000 	0x98988000
1c0046b8:	00000000 	0x00000000
1c0046bc:	3f202000 	0x3f202000
1c0046c0:	00002020 	clo.d	$r0,$r1
1c0046c4:	80000000 	0x80000000
1c0046c8:	00009898 	0x00009898
1c0046cc:	8080c000 	0x8080c000
1c0046d0:	00007f80 	0x00007f80
1c0046d4:	0000f808 	0x0000f808
1c0046d8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0046dc:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c0046e0:	0020302d 	div.w	$r13,$r1,$r12
1c0046e4:	f8080800 	0xf8080800
1c0046e8:	00000000 	0x00000000
1c0046ec:	3f202000 	0x3f202000
1c0046f0:	00002020 	clo.d	$r0,$r1
1c0046f4:	80808080 	0x80808080
1c0046f8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0046fc:	00203f20 	div.w	$r0,$r25,$r15
1c004700:	3f00203f 	0x3f00203f
1c004704:	80008080 	0x80008080
1c004708:	00008080 	0x00008080
1c00470c:	00213f20 	div.wu	$r0,$r25,$r15
1c004710:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c004714:	80800000 	0x80800000
1c004718:	00008080 	0x00008080
1c00471c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c004720:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c004724:	80008080 	0x80008080
1c004728:	00000080 	0x00000080
1c00472c:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c004730:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c004734:	80000000 	0x80000000
1c004738:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00473c:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c004740:	80ffa020 	0x80ffa020
1c004744:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c004748:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00474c:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c004750:	00010020 	asrtle.d	$r1,$r0
1c004754:	80800000 	0x80800000
1c004758:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00475c:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c004760:	00192424 	srl.d	$r4,$r1,$r9
1c004764:	e0808000 	0xe0808000
1c004768:	00008080 	0x00008080
1c00476c:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c004770:	00002020 	clo.d	$r0,$r1
1c004774:	00008080 	0x00008080
1c004778:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00477c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c004780:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c004784:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c004788:	80808000 	0x80808000
1c00478c:	300e0100 	0x300e0100
1c004790:	00010608 	0x00010608
1c004794:	80008080 	0x80008080
1c004798:	80808000 	0x80808000
1c00479c:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c0047a0:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c0047a4:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0047a8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0047ac:	2e312000 	0x2e312000
1c0047b0:	0020310e 	div.w	$r14,$r8,$r12
1c0047b4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0047b8:	80808000 	0x80808000
1c0047bc:	708e8180 	0x708e8180
1c0047c0:	00010618 	0x00010618
1c0047c4:	80808000 	0x80808000
1c0047c8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0047cc:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c0047d0:	00302122 	0x00302122
1c0047d4:	00000000 	0x00000000
1c0047d8:	02027c80 	slti	$r0,$r4,159(0x9f)
1c0047dc:	00000000 	0x00000000
1c0047e0:	40403f00 	beqz	$r24,16444(0x403c) # 1c00881c <_sidata+0x3b3c>
1c0047e4:	00000000 	0x00000000
1c0047e8:	000000ff 	0x000000ff
1c0047ec:	00000000 	0x00000000
1c0047f0:	000000ff 	0x000000ff
1c0047f4:	7c020200 	0x7c020200
1c0047f8:	00000080 	0x00000080
1c0047fc:	3f404000 	0x3f404000
1c004800:	00000000 	0x00000000
1c004804:	01010600 	fadd.d	$f0,$f16,$f1
1c004808:	04040202 	csrxchg	$r2,$r16,0x100
	...
1c004814:	3c200a0d 	0x3c200a0d
1c004818:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01b438 <_sidata+0x16758>
1c00481c:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c004820:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe6884 <_start-0x1977c>
1c004824:	3a636e75 	0x3a636e75
1c004828:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00482c:	0a0d3e20 	0x0a0d3e20
1c004830:	00000000 	0x00000000
1c004834:	2e2e2e0a 	0x2e2e2e0a
1c004838:	2e2e2e2e 	0x2e2e2e2e
1c00483c:	2e2e2e2e 	0x2e2e2e2e
1c004840:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c004844:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19a798 <_sidata+0x195ab8>
1c004848:	2e2e544e 	0x2e2e544e
1c00484c:	2e2e2e2e 	0x2e2e2e2e
1c004850:	2e2e2e2e 	0x2e2e2e2e
1c004854:	2e2e2e2e 	0x2e2e2e2e
1c004858:	00000d0a 	0x00000d0a
1c00485c:	2d2d2d0a 	0x2d2d2d0a
1c004860:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bffbdcc <_start-0x4234>
1c004864:	746e4968 	0x746e4968
1c004868:	79654b3a 	0x79654b3a
1c00486c:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfea9d4 <_start-0x1562c>
1c004870:	3a6c656e 	0x3a6c656e
1c004874:	78257830 	0x78257830
1c004878:	0000000a 	0x0000000a
1c00487c:	2e2e2e0a 	0x2e2e2e0a
1c004880:	2e2e2e2e 	0x2e2e2e2e
1c004884:	2e2e2e2e 	0x2e2e2e2e
1c004888:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c398ab4 <_sidata+0x393dd4>
1c00488c:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd18ee8 <_start-0x2e7118>
1c004890:	2e2e4c49 	0x2e2e4c49
1c004894:	2e2e2e2e 	0x2e2e2e2e
1c004898:	2e2e2e2e 	0x2e2e2e2e
1c00489c:	2e2e2e2e 	0x2e2e2e2e
1c0048a0:	00000d0a 	0x00000d0a
1c0048a4:	2e2e2e0a 	0x2e2e2e0a
1c0048a8:	2e2e2e2e 	0x2e2e2e2e
1c0048ac:	2e2e2e2e 	0x2e2e2e2e
1c0048b0:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c3889dc <_sidata+0x383cfc>
1c0048b4:	2e2e2e43 	0x2e2e2e43
1c0048b8:	2e2e2e2e 	0x2e2e2e2e
1c0048bc:	2e2e2e2e 	0x2e2e2e2e
1c0048c0:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0048c4:	0000000d 	0x0000000d
1c0048c8:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c01bb2c <_sidata+0x16e4c>
1c0048cc:	72656870 	0x72656870
1c0048d0:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c0048d4:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01b63c <_sidata+0x1695c>
1c0048d8:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00abf8 <_sidata+0x5f18>
1c0048dc:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0048e0:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01bd4c <_sidata+0x1706c>
1c0048e4:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0048e8:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c0048ec:	00000000 	0x00000000
1c0048f0:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c01bb5c <_sidata+0x16e7c>
1c0048f4:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01b248 <_sidata+0x16568>
1c0048f8:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff6968 <_start-0x9698>
1c0048fc:	7261656c 	0x7261656c
1c004900:	746e6920 	0x746e6920
1c004904:	75727265 	0x75727265
1c004908:	2e2e7470 	0x2e2e7470
1c00490c:	0000000a 	0x0000000a

1c004910 <Ext_IrqHandle>:
1c004910:	1c003160 	pcaddu12i	$r0,395(0x18b)
1c004914:	1c0031ac 	pcaddu12i	$r12,397(0x18d)
1c004918:	1c0031f8 	pcaddu12i	$r24,399(0x18f)
1c00491c:	1c003244 	pcaddu12i	$r4,402(0x192)
1c004920:	1c003290 	pcaddu12i	$r16,404(0x194)
1c004924:	1c0032dc 	pcaddu12i	$r28,406(0x196)
1c004928:	1c003328 	pcaddu12i	$r8,409(0x199)
1c00492c:	1c003374 	pcaddu12i	$r20,411(0x19b)
1c004930:	1c0033c0 	pcaddu12i	$r0,414(0x19e)
1c004934:	1c00340c 	pcaddu12i	$r12,416(0x1a0)
1c004938:	1c003458 	pcaddu12i	$r24,418(0x1a2)
1c00493c:	1c0034a4 	pcaddu12i	$r4,421(0x1a5)
1c004940:	1c0034f0 	pcaddu12i	$r16,423(0x1a7)
1c004944:	1c00353c 	pcaddu12i	$r28,425(0x1a9)
1c004948:	1c003588 	pcaddu12i	$r8,428(0x1ac)
1c00494c:	1c0035d4 	pcaddu12i	$r20,430(0x1ae)
1c004950:	1c003620 	pcaddu12i	$r0,433(0x1b1)
1c004954:	1c00366c 	pcaddu12i	$r12,435(0x1b3)
1c004958:	1c0036b8 	pcaddu12i	$r24,437(0x1b5)
1c00495c:	1c003704 	pcaddu12i	$r4,440(0x1b8)
1c004960:	1c003750 	pcaddu12i	$r16,442(0x1ba)
1c004964:	1c00379c 	pcaddu12i	$r28,444(0x1bc)
1c004968:	1c0037e8 	pcaddu12i	$r8,447(0x1bf)
1c00496c:	1c003834 	pcaddu12i	$r20,449(0x1c1)
1c004970:	1c003880 	pcaddu12i	$r0,452(0x1c4)
1c004974:	1c0038cc 	pcaddu12i	$r12,454(0x1c6)
1c004978:	1c003918 	pcaddu12i	$r24,456(0x1c8)
1c00497c:	1c003964 	pcaddu12i	$r4,459(0x1cb)
1c004980:	1c0039b0 	pcaddu12i	$r16,461(0x1cd)
1c004984:	1c0039fc 	pcaddu12i	$r28,463(0x1cf)
1c004988:	1c003a48 	pcaddu12i	$r8,466(0x1d2)
1c00498c:	1c003a94 	pcaddu12i	$r20,468(0x1d4)
1c004990:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c004994:	1c003d30 	pcaddu12i	$r16,489(0x1e9)
1c004998:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c00499c:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049a0:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049a4:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049a8:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049ac:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049b0:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049b4:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049b8:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049bc:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049c0:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049c4:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049c8:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049cc:	1c003d80 	pcaddu12i	$r0,492(0x1ec)
1c0049d0:	1c003d4c 	pcaddu12i	$r12,490(0x1ea)

1c0049d4 <__FUNCTION__.1751>:
1c0049d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01be4c <_sidata+0x1716c>
1c0049d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ba3c <_sidata+0x16d5c>
1c0049dc:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff7a3c <_start-0x85c4>
1c0049e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbb50 <_start-0x44b0>
1c0049e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b844 <_sidata+0x6b64>
1c0049e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0049ec <__FUNCTION__.1755>:
1c0049ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01be64 <_sidata+0x17184>
1c0049f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ba54 <_sidata+0x16d74>
1c0049f4:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff7b54 <_start-0x84ac>
1c0049f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbb68 <_start-0x4498>
1c0049fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b85c <_sidata+0x6b7c>
1c004a00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a04 <__FUNCTION__.1759>:
1c004a04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01be7c <_sidata+0x1719c>
1c004a08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ba6c <_sidata+0x16d8c>
1c004a0c:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff7c6c <_start-0x8394>
1c004a10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbb80 <_start-0x4480>
1c004a14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b874 <_sidata+0x6b94>
1c004a18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a1c <__FUNCTION__.1763>:
1c004a1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01be94 <_sidata+0x171b4>
1c004a20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ba84 <_sidata+0x16da4>
1c004a24:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff7d84 <_start-0x827c>
1c004a28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbb98 <_start-0x4468>
1c004a2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b88c <_sidata+0x6bac>
1c004a30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a34 <__FUNCTION__.1767>:
1c004a34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01beac <_sidata+0x171cc>
1c004a38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ba9c <_sidata+0x16dbc>
1c004a3c:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff7e9c <_start-0x8164>
1c004a40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbbb0 <_start-0x4450>
1c004a44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b8a4 <_sidata+0x6bc4>
1c004a48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a4c <__FUNCTION__.1771>:
1c004a4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bec4 <_sidata+0x171e4>
1c004a50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bab4 <_sidata+0x16dd4>
1c004a54:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff7fb4 <_start-0x804c>
1c004a58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbbc8 <_start-0x4438>
1c004a5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b8bc <_sidata+0x6bdc>
1c004a60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a64 <__FUNCTION__.1775>:
1c004a64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bedc <_sidata+0x171fc>
1c004a68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bacc <_sidata+0x16dec>
1c004a6c:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff80cc <_start-0x7f34>
1c004a70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbbe0 <_start-0x4420>
1c004a74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b8d4 <_sidata+0x6bf4>
1c004a78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a7c <__FUNCTION__.1779>:
1c004a7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bef4 <_sidata+0x17214>
1c004a80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bae4 <_sidata+0x16e04>
1c004a84:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff81e4 <_start-0x7e1c>
1c004a88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbbf8 <_start-0x4408>
1c004a8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b8ec <_sidata+0x6c0c>
1c004a90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004a94 <__FUNCTION__.1783>:
1c004a94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf0c <_sidata+0x1722c>
1c004a98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bafc <_sidata+0x16e1c>
1c004a9c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff7afc <_start-0x8504>
1c004aa0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbc10 <_start-0x43f0>
1c004aa4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b904 <_sidata+0x6c24>
1c004aa8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004aac <__FUNCTION__.1787>:
1c004aac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf24 <_sidata+0x17244>
1c004ab0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bb14 <_sidata+0x16e34>
1c004ab4:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff7c14 <_start-0x83ec>
1c004ab8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbc28 <_start-0x43d8>
1c004abc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b91c <_sidata+0x6c3c>
1c004ac0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004ac4 <__FUNCTION__.1791>:
1c004ac4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf3c <_sidata+0x1725c>
1c004ac8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bb2c <_sidata+0x16e4c>
1c004acc:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff7d2c <_start-0x82d4>
1c004ad0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbc40 <_start-0x43c0>
1c004ad4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b934 <_sidata+0x6c54>
1c004ad8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004adc <__FUNCTION__.1795>:
1c004adc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf54 <_sidata+0x17274>
1c004ae0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bb44 <_sidata+0x16e64>
1c004ae4:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff7e44 <_start-0x81bc>
1c004ae8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbc58 <_start-0x43a8>
1c004aec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b94c <_sidata+0x6c6c>
1c004af0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004af4 <__FUNCTION__.1799>:
1c004af4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf6c <_sidata+0x1728c>
1c004af8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bb5c <_sidata+0x16e7c>
1c004afc:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff7f5c <_start-0x80a4>
1c004b00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbc70 <_start-0x4390>
1c004b04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b964 <_sidata+0x6c84>
1c004b08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b0c <__FUNCTION__.1803>:
1c004b0c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf84 <_sidata+0x172a4>
1c004b10:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bb74 <_sidata+0x16e94>
1c004b14:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff8074 <_start-0x7f8c>
1c004b18:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbc88 <_start-0x4378>
1c004b1c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b97c <_sidata+0x6c9c>
1c004b20:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b24 <__FUNCTION__.1807>:
1c004b24:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bf9c <_sidata+0x172bc>
1c004b28:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bb8c <_sidata+0x16eac>
1c004b2c:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff818c <_start-0x7e74>
1c004b30:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbca0 <_start-0x4360>
1c004b34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b994 <_sidata+0x6cb4>
1c004b38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b3c <__FUNCTION__.1811>:
1c004b3c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bfb4 <_sidata+0x172d4>
1c004b40:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bba4 <_sidata+0x16ec4>
1c004b44:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff82a4 <_start-0x7d5c>
1c004b48:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbcb8 <_start-0x4348>
1c004b4c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b9ac <_sidata+0x6ccc>
1c004b50:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b54 <__FUNCTION__.1815>:
1c004b54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bfcc <_sidata+0x172ec>
1c004b58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bbbc <_sidata+0x16edc>
1c004b5c:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff7bbc <_start-0x8444>
1c004b60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbcd0 <_start-0x4330>
1c004b64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b9c4 <_sidata+0x6ce4>
1c004b68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b6c <__FUNCTION__.1819>:
1c004b6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bfe4 <_sidata+0x17304>
1c004b70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bbd4 <_sidata+0x16ef4>
1c004b74:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff7cd4 <_start-0x832c>
1c004b78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbce8 <_start-0x4318>
1c004b7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b9dc <_sidata+0x6cfc>
1c004b80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b84 <__FUNCTION__.1823>:
1c004b84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01bffc <_sidata+0x1731c>
1c004b88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bbec <_sidata+0x16f0c>
1c004b8c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff7dec <_start-0x8214>
1c004b90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd00 <_start-0x4300>
1c004b94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00b9f4 <_sidata+0x6d14>
1c004b98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004b9c <__FUNCTION__.1827>:
1c004b9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c014 <_sidata+0x17334>
1c004ba0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc04 <_sidata+0x16f24>
1c004ba4:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff7f04 <_start-0x80fc>
1c004ba8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd18 <_start-0x42e8>
1c004bac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba0c <_sidata+0x6d2c>
1c004bb0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004bb4 <__FUNCTION__.1831>:
1c004bb4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c02c <_sidata+0x1734c>
1c004bb8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc1c <_sidata+0x16f3c>
1c004bbc:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff801c <_start-0x7fe4>
1c004bc0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd30 <_start-0x42d0>
1c004bc4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba24 <_sidata+0x6d44>
1c004bc8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004bcc <__FUNCTION__.1835>:
1c004bcc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c044 <_sidata+0x17364>
1c004bd0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc34 <_sidata+0x16f54>
1c004bd4:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff8134 <_start-0x7ecc>
1c004bd8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd48 <_start-0x42b8>
1c004bdc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba3c <_sidata+0x6d5c>
1c004be0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004be4 <__FUNCTION__.1839>:
1c004be4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c05c <_sidata+0x1737c>
1c004be8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc4c <_sidata+0x16f6c>
1c004bec:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff824c <_start-0x7db4>
1c004bf0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd60 <_start-0x42a0>
1c004bf4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba54 <_sidata+0x6d74>
1c004bf8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004bfc <__FUNCTION__.1843>:
1c004bfc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c074 <_sidata+0x17394>
1c004c00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc64 <_sidata+0x16f84>
1c004c04:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff8364 <_start-0x7c9c>
1c004c08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd78 <_start-0x4288>
1c004c0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba6c <_sidata+0x6d8c>
1c004c10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004c14 <__FUNCTION__.1847>:
1c004c14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c08c <_sidata+0x173ac>
1c004c18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc7c <_sidata+0x16f9c>
1c004c1c:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff7c80 <_start-0x8380>
1c004c20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbd90 <_start-0x4270>
1c004c24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba84 <_sidata+0x6da4>
1c004c28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004c2c <__FUNCTION__.1851>:
1c004c2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c0a4 <_sidata+0x173c4>
1c004c30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bc94 <_sidata+0x16fb4>
1c004c34:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff7d98 <_start-0x8268>
1c004c38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbda8 <_start-0x4258>
1c004c3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ba9c <_sidata+0x6dbc>
1c004c40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004c44 <__FUNCTION__.1855>:
1c004c44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c0bc <_sidata+0x173dc>
1c004c48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bcac <_sidata+0x16fcc>
1c004c4c:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff7eb0 <_start-0x8150>
1c004c50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbdc0 <_start-0x4240>
1c004c54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bab4 <_sidata+0x6dd4>
1c004c58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004c5c <__FUNCTION__.1859>:
1c004c5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c0d4 <_sidata+0x173f4>
1c004c60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bcc4 <_sidata+0x16fe4>
1c004c64:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff7fc8 <_start-0x8038>
1c004c68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbdd8 <_start-0x4228>
1c004c6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bacc <_sidata+0x6dec>
1c004c70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004c74 <__FUNCTION__.1863>:
1c004c74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c0ec <_sidata+0x1740c>
1c004c78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bcdc <_sidata+0x16ffc>
1c004c7c:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff80e0 <_start-0x7f20>
1c004c80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbdf0 <_start-0x4210>
1c004c84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bae4 <_sidata+0x6e04>
1c004c88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004c8c <__FUNCTION__.1867>:
1c004c8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c104 <_sidata+0x17424>
1c004c90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bcf4 <_sidata+0x17014>
1c004c94:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff81f8 <_start-0x7e08>
1c004c98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbe08 <_start-0x41f8>
1c004c9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bafc <_sidata+0x6e1c>
1c004ca0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004ca4 <__FUNCTION__.1871>:
1c004ca4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c11c <_sidata+0x1743c>
1c004ca8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bd0c <_sidata+0x1702c>
1c004cac:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff8310 <_start-0x7cf0>
1c004cb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbe20 <_start-0x41e0>
1c004cb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bb14 <_sidata+0x6e34>
1c004cb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004cbc <__FUNCTION__.1875>:
1c004cbc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01c134 <_sidata+0x17454>
1c004cc0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01bd24 <_sidata+0x17044>
1c004cc4:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff8428 <_start-0x7bd8>
1c004cc8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffbe38 <_start-0x41c8>
1c004ccc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bb2c <_sidata+0x6e4c>
1c004cd0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c004cd4 <__FUNCTION__.1884>:
1c004cd4:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bffc14c <_start-0x3eb4>
1c004cd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00bb38 <_sidata+0x6e58>
1c004cdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	80000014 	0x80000014

80001008 <SystemCoreClock>:
80001008:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss.g_recvBuff:

80000000 <g_recvBuff>:
	...

Disassembly of section .bss.USART0_RX_STA:

80000014 <USART0_RX_STA>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
