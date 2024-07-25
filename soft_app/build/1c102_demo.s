
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
1c00000c:	0385a1ef 	ori	$r15,$r15,0x168
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
1c0000a0:	5474bc00 	bl	29884(0x74bc) # 1c00755c <main>
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
1c001090:	549ba400 	bl	39844(0x9ba4) # 1c00ac34 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	549be400 	bl	39908(0x9be4) # 1c00ac7c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	549c6800 	bl	40040(0x9c68) # 1c00ad08 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	549c9c00 	bl	40092(0x9c9c) # 1c00ad44 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	549ab400 	bl	39604(0x9ab4) # 1c00ab64 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	549e4000 	bl	40512(0x9e40) # 1c00aef8 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	549d5400 	bl	40276(0x9d54) # 1c00ae1c <INTC_Handler>
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
1c001450:	02ab918c 	addi.w	$r12,$r12,-1308(0xae4)
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
1c001fac:	5454d400 	bl	21716(0x54d4) # 1c007480 <Buffer_write>
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
1c002440:	54147800 	bl	5240(0x1478) # 1c0038b8 <uart_set_rx_th>
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
1c0025bc:	5412b400 	bl	4788(0x12b4) # 1c003870 <uart_write>
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
1c002bf0:	542d2400 	bl	11556(0x2d24) # 1c005914 <OLED_CLS>
1c002bf4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002bf8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002bfc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c00:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002c04:	54306000 	bl	12384(0x3060) # 1c005c64 <OLED_ShowCN_STR>
1c002c08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c0c:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002c10:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c14:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c18:	54304c00 	bl	12364(0x304c) # 1c005c64 <OLED_ShowCN_STR>
1c002c1c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c002c20:	03bf918c 	ori	$r12,$r12,0xfe4
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
1c002cbc:	03400000 	andi	$r0,$r0,0x0
1c002cc0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cc4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002cc8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ccc:	4c000020 	jirl	$r0,$r1,0

1c002cd0 <Add_FR>:
Add_FR():
1c002cd0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cd4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002cd8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ce0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002ce4:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002ce8:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002cec:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002cf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002cf4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002cf8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c002cfc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002d00:	580649ac 	beq	$r13,$r12,1608(0x648) # 1c003348 <Add_FR+0x678>
1c002d04:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002d08:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002d0c:	680599ac 	bltu	$r13,$r12,1432(0x598) # 1c0032a4 <Add_FR+0x5d4>
1c002d10:	0040898d 	slli.w	$r13,$r12,0x2
1c002d14:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c002d18:	0294f18c 	addi.w	$r12,$r12,1340(0x53c)
1c002d1c:	001031ac 	add.w	$r12,$r13,$r12
1c002d20:	2880018c 	ld.w	$r12,$r12,0
1c002d24:	4c000180 	jirl	$r0,$r12,0
1c002d28:	542bec00 	bl	11244(0x2bec) # 1c005914 <OLED_CLS>
1c002d2c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002d30:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002d34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d38:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d3c:	542f2800 	bl	12072(0x2f28) # 1c005c64 <OLED_ShowCN_STR>
1c002d40:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002d44:	03bfc98c 	ori	$r12,$r12,0xff2
1c002d48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d4c:	50008400 	b	132(0x84) # 1c002dd0 <Add_FR+0x100>
1c002d50:	03400000 	andi	$r0,$r0,0x0
1c002d54:	03400000 	andi	$r0,$r0,0x0
1c002d58:	03400000 	andi	$r0,$r0,0x0
1c002d5c:	03400000 	andi	$r0,$r0,0x0
1c002d60:	03400000 	andi	$r0,$r0,0x0
1c002d64:	03400000 	andi	$r0,$r0,0x0
1c002d68:	03400000 	andi	$r0,$r0,0x0
1c002d6c:	03400000 	andi	$r0,$r0,0x0
1c002d70:	03400000 	andi	$r0,$r0,0x0
1c002d74:	03400000 	andi	$r0,$r0,0x0
1c002d78:	03400000 	andi	$r0,$r0,0x0
1c002d7c:	03400000 	andi	$r0,$r0,0x0
1c002d80:	03400000 	andi	$r0,$r0,0x0
1c002d84:	03400000 	andi	$r0,$r0,0x0
1c002d88:	03400000 	andi	$r0,$r0,0x0
1c002d8c:	03400000 	andi	$r0,$r0,0x0
1c002d90:	03400000 	andi	$r0,$r0,0x0
1c002d94:	03400000 	andi	$r0,$r0,0x0
1c002d98:	03400000 	andi	$r0,$r0,0x0
1c002d9c:	03400000 	andi	$r0,$r0,0x0
1c002da0:	03400000 	andi	$r0,$r0,0x0
1c002da4:	03400000 	andi	$r0,$r0,0x0
1c002da8:	03400000 	andi	$r0,$r0,0x0
1c002dac:	03400000 	andi	$r0,$r0,0x0
1c002db0:	03400000 	andi	$r0,$r0,0x0
1c002db4:	03400000 	andi	$r0,$r0,0x0
1c002db8:	03400000 	andi	$r0,$r0,0x0
1c002dbc:	03400000 	andi	$r0,$r0,0x0
1c002dc0:	03400000 	andi	$r0,$r0,0x0
1c002dc4:	03400000 	andi	$r0,$r0,0x0
1c002dc8:	03400000 	andi	$r0,$r0,0x0
1c002dcc:	03400000 	andi	$r0,$r0,0x0
1c002dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dd4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002dd8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002ddc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002d50 <Add_FR+0x80>
1c002de0:	57f843ff 	bl	-1984(0xffff840) # 1c002620 <PS_GetImage>
1c002de4:	0015008c 	move	$r12,$r4
1c002de8:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002dec:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002df0:	44006980 	bnez	$r12,104(0x68) # 1c002e58 <Add_FR+0x188>
1c002df4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002df8:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c0026ac <PS_GenChar>
1c002dfc:	0015008c 	move	$r12,$r4
1c002e00:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002e04:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002e08:	44004180 	bnez	$r12,64(0x40) # 1c002e48 <Add_FR+0x178>
1c002e0c:	542b0800 	bl	11016(0x2b08) # 1c005914 <OLED_CLS>
1c002e10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e14:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e1c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e20:	542e4400 	bl	11844(0x2e44) # 1c005c64 <OLED_ShowCN_STR>
1c002e24:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e28:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e2c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e30:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e34:	542e3000 	bl	11824(0x2e30) # 1c005c64 <OLED_ShowCN_STR>
1c002e38:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002e3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e40:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e44:	50046000 	b	1120(0x460) # 1c0032a4 <Add_FR+0x5d4>
1c002e48:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002e4c:	00150184 	move	$r4,$r12
1c002e50:	57fd8bff 	bl	-632(0xffffd88) # 1c002bd8 <ShowErrMessage>
1c002e54:	50045000 	b	1104(0x450) # 1c0032a4 <Add_FR+0x5d4>
1c002e58:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002e5c:	00150184 	move	$r4,$r12
1c002e60:	57fd7bff 	bl	-648(0xffffd78) # 1c002bd8 <ShowErrMessage>
1c002e64:	50044000 	b	1088(0x440) # 1c0032a4 <Add_FR+0x5d4>
1c002e68:	542aac00 	bl	10924(0x2aac) # 1c005914 <OLED_CLS>
1c002e6c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e70:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e74:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e78:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e7c:	542de800 	bl	11752(0x2de8) # 1c005c64 <OLED_ShowCN_STR>
1c002e80:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e84:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e8c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e90:	542dd400 	bl	11732(0x2dd4) # 1c005c64 <OLED_ShowCN_STR>
1c002e94:	57f78fff 	bl	-2164(0xffff78c) # 1c002620 <PS_GetImage>
1c002e98:	0015008c 	move	$r12,$r4
1c002e9c:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002ea0:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002ea4:	44006980 	bnez	$r12,104(0x68) # 1c002f0c <Add_FR+0x23c>
1c002ea8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002eac:	57f803ff 	bl	-2048(0xffff800) # 1c0026ac <PS_GenChar>
1c002eb0:	0015008c 	move	$r12,$r4
1c002eb4:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002eb8:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002ebc:	44004180 	bnez	$r12,64(0x40) # 1c002efc <Add_FR+0x22c>
1c002ec0:	542a5400 	bl	10836(0x2a54) # 1c005914 <OLED_CLS>
1c002ec4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ec8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002ecc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ed0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002ed4:	542d9000 	bl	11664(0x2d90) # 1c005c64 <OLED_ShowCN_STR>
1c002ed8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002edc:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002ee0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ee4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002ee8:	542d7c00 	bl	11644(0x2d7c) # 1c005c64 <OLED_ShowCN_STR>
1c002eec:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002ef0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002ef4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002ef8:	5003ac00 	b	940(0x3ac) # 1c0032a4 <Add_FR+0x5d4>
1c002efc:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002f00:	00150184 	move	$r4,$r12
1c002f04:	57fcd7ff 	bl	-812(0xffffcd4) # 1c002bd8 <ShowErrMessage>
1c002f08:	50039c00 	b	924(0x39c) # 1c0032a4 <Add_FR+0x5d4>
1c002f0c:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002f10:	00150184 	move	$r4,$r12
1c002f14:	57fcc7ff 	bl	-828(0xffffcc4) # 1c002bd8 <ShowErrMessage>
1c002f18:	50038c00 	b	908(0x38c) # 1c0032a4 <Add_FR+0x5d4>
1c002f1c:	5429f800 	bl	10744(0x29f8) # 1c005914 <OLED_CLS>
1c002f20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f24:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f28:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f2c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002f30:	542d3400 	bl	11572(0x2d34) # 1c005c64 <OLED_ShowCN_STR>
1c002f34:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f38:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002f3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f40:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002f44:	542d2000 	bl	11552(0x2d20) # 1c005c64 <OLED_ShowCN_STR>
1c002f48:	57f80fff 	bl	-2036(0xffff80c) # 1c002754 <PS_Match>
1c002f4c:	0015008c 	move	$r12,$r4
1c002f50:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c002f54:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002f58:	44006980 	bnez	$r12,104(0x68) # 1c002fc0 <Add_FR+0x2f0>
1c002f5c:	5429b800 	bl	10680(0x29b8) # 1c005914 <OLED_CLS>
1c002f60:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f64:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f68:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f6c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002f70:	542cf400 	bl	11508(0x2cf4) # 1c005c64 <OLED_ShowCN_STR>
1c002f74:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f78:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002f7c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f80:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002f84:	542ce000 	bl	11488(0x2ce0) # 1c005c64 <OLED_ShowCN_STR>
1c002f88:	54298c00 	bl	10636(0x298c) # 1c005914 <OLED_CLS>
1c002f8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f90:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f94:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f98:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f9c:	542cc800 	bl	11464(0x2cc8) # 1c005c64 <OLED_ShowCN_STR>
1c002fa0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002fa4:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002fa8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002fac:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002fb0:	542cb400 	bl	11444(0x2cb4) # 1c005c64 <OLED_ShowCN_STR>
1c002fb4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002fb8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002fbc:	5002e800 	b	744(0x2e8) # 1c0032a4 <Add_FR+0x5d4>
1c002fc0:	54295400 	bl	10580(0x2954) # 1c005914 <OLED_CLS>
1c002fc4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002fc8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002fcc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002fd0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002fd4:	542c9000 	bl	11408(0x2c90) # 1c005c64 <OLED_ShowCN_STR>
1c002fd8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002fdc:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002fe0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002fe4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002fe8:	542c7c00 	bl	11388(0x2c7c) # 1c005c64 <OLED_ShowCN_STR>
1c002fec:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c002ff0:	00150184 	move	$r4,$r12
1c002ff4:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c002bd8 <ShowErrMessage>
1c002ff8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002ffc:	5002a800 	b	680(0x2a8) # 1c0032a4 <Add_FR+0x5d4>
1c003000:	1400070c 	lu12i.w	$r12,56(0x38)
1c003004:	03bfe58c 	ori	$r12,$r12,0xff9
1c003008:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00300c:	50008400 	b	132(0x84) # 1c003090 <Add_FR+0x3c0>
1c003010:	03400000 	andi	$r0,$r0,0x0
1c003014:	03400000 	andi	$r0,$r0,0x0
1c003018:	03400000 	andi	$r0,$r0,0x0
1c00301c:	03400000 	andi	$r0,$r0,0x0
1c003020:	03400000 	andi	$r0,$r0,0x0
1c003024:	03400000 	andi	$r0,$r0,0x0
1c003028:	03400000 	andi	$r0,$r0,0x0
1c00302c:	03400000 	andi	$r0,$r0,0x0
1c003030:	03400000 	andi	$r0,$r0,0x0
1c003034:	03400000 	andi	$r0,$r0,0x0
1c003038:	03400000 	andi	$r0,$r0,0x0
1c00303c:	03400000 	andi	$r0,$r0,0x0
1c003040:	03400000 	andi	$r0,$r0,0x0
1c003044:	03400000 	andi	$r0,$r0,0x0
1c003048:	03400000 	andi	$r0,$r0,0x0
1c00304c:	03400000 	andi	$r0,$r0,0x0
1c003050:	03400000 	andi	$r0,$r0,0x0
1c003054:	03400000 	andi	$r0,$r0,0x0
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
1c003090:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003094:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003098:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c00309c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003010 <Add_FR+0x340>
1c0030a0:	57f743ff 	bl	-2240(0xffff740) # 1c0027e0 <PS_RegModel>
1c0030a4:	0015008c 	move	$r12,$r4
1c0030a8:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0030ac:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0030b0:	44001180 	bnez	$r12,16(0x10) # 1c0030c0 <Add_FR+0x3f0>
1c0030b4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0030b8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0030bc:	5001e800 	b	488(0x1e8) # 1c0032a4 <Add_FR+0x5d4>
1c0030c0:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0030c4:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c0030c8:	00150184 	move	$r4,$r12
1c0030cc:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002bd8 <ShowErrMessage>
1c0030d0:	5001d400 	b	468(0x1d4) # 1c0032a4 <Add_FR+0x5d4>
1c0030d4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030d8:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0030dc:	50009000 	b	144(0x90) # 1c00316c <Add_FR+0x49c>
1c0030e0:	5408b000 	bl	2224(0x8b0) # 1c003990 <MatrixKey>
1c0030e4:	0015008c 	move	$r12,$r4
1c0030e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0030ec:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0030f0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0030f4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c003110 <Add_FR+0x440>
1c0030f8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0030fc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003100:	40001180 	beqz	$r12,16(0x10) # 1c003110 <Add_FR+0x440>
1c003104:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003108:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00310c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003110:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003114:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003118:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c003138 <Add_FR+0x468>
1c00311c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003120:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c003124:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c003128:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c003138 <Add_FR+0x468>
1c00312c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003130:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003134:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003138:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00313c:	1c000106 	pcaddu12i	$r6,8(0x8)
1c003140:	028440c6 	addi.w	$r6,$r6,272(0x110)
1c003144:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003148:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00314c:	5427f400 	bl	10228(0x27f4) # 1c005940 <OLED_ShowStr>
1c003150:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003154:	02804008 	addi.w	$r8,$r0,16(0x10)
1c003158:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00315c:	00150186 	move	$r6,$r12
1c003160:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003164:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c003168:	542e4400 	bl	11844(0x2e44) # 1c005fac <OLED_ShowNum>
1c00316c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003170:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003174:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c0030e0 <Add_FR+0x410>
1c003178:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00317c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003180:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003184:	00150185 	move	$r5,$r12
1c003188:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00318c:	57f6e3ff 	bl	-2336(0xffff6e0) # 1c00286c <PS_StoreChar>
1c003190:	0015008c 	move	$r12,$r4
1c003194:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c003198:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c00319c:	4400f580 	bnez	$r12,244(0xf4) # 1c003290 <Add_FR+0x5c0>
1c0031a0:	54277400 	bl	10100(0x2774) # 1c005914 <OLED_CLS>
1c0031a4:	02801807 	addi.w	$r7,$r0,6(0x6)
1c0031a8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c0031ac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0031b0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0031b4:	542ab000 	bl	10928(0x2ab0) # 1c005c64 <OLED_ShowCN_STR>
1c0031b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0031bc:	1c000106 	pcaddu12i	$r6,8(0x8)
1c0031c0:	028240c6 	addi.w	$r6,$r6,144(0x90)
1c0031c4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0031c8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0031cc:	54277400 	bl	10100(0x2774) # 1c005940 <OLED_ShowStr>
1c0031d0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0031d4:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0031d8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0031dc:	00150186 	move	$r6,$r12
1c0031e0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0031e4:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c0031e8:	542dc400 	bl	11716(0x2dc4) # 1c005fac <OLED_ShowNum>
1c0031ec:	14002aac 	lu12i.w	$r12,341(0x155)
1c0031f0:	03bf598c 	ori	$r12,$r12,0xfd6
1c0031f4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0031f8:	50008400 	b	132(0x84) # 1c00327c <Add_FR+0x5ac>
1c0031fc:	03400000 	andi	$r0,$r0,0x0
1c003200:	03400000 	andi	$r0,$r0,0x0
1c003204:	03400000 	andi	$r0,$r0,0x0
1c003208:	03400000 	andi	$r0,$r0,0x0
1c00320c:	03400000 	andi	$r0,$r0,0x0
1c003210:	03400000 	andi	$r0,$r0,0x0
1c003214:	03400000 	andi	$r0,$r0,0x0
1c003218:	03400000 	andi	$r0,$r0,0x0
1c00321c:	03400000 	andi	$r0,$r0,0x0
1c003220:	03400000 	andi	$r0,$r0,0x0
1c003224:	03400000 	andi	$r0,$r0,0x0
1c003228:	03400000 	andi	$r0,$r0,0x0
1c00322c:	03400000 	andi	$r0,$r0,0x0
1c003230:	03400000 	andi	$r0,$r0,0x0
1c003234:	03400000 	andi	$r0,$r0,0x0
1c003238:	03400000 	andi	$r0,$r0,0x0
1c00323c:	03400000 	andi	$r0,$r0,0x0
1c003240:	03400000 	andi	$r0,$r0,0x0
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
1c00327c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003280:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003284:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003288:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0031fc <Add_FR+0x52c>
1c00328c:	5000c000 	b	192(0xc0) # 1c00334c <Add_FR+0x67c>
1c003290:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c003294:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c003298:	00150184 	move	$r4,$r12
1c00329c:	57f93fff 	bl	-1732(0xffff93c) # 1c002bd8 <ShowErrMessage>
1c0032a0:	03400000 	andi	$r0,$r0,0x0
1c0032a4:	1400070c 	lu12i.w	$r12,56(0x38)
1c0032a8:	03bfe58c 	ori	$r12,$r12,0xff9
1c0032ac:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0032b0:	50008400 	b	132(0x84) # 1c003334 <Add_FR+0x664>
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
1c0032f4:	03400000 	andi	$r0,$r0,0x0
1c0032f8:	03400000 	andi	$r0,$r0,0x0
1c0032fc:	03400000 	andi	$r0,$r0,0x0
1c003300:	03400000 	andi	$r0,$r0,0x0
1c003304:	03400000 	andi	$r0,$r0,0x0
1c003308:	03400000 	andi	$r0,$r0,0x0
1c00330c:	03400000 	andi	$r0,$r0,0x0
1c003310:	03400000 	andi	$r0,$r0,0x0
1c003314:	03400000 	andi	$r0,$r0,0x0
1c003318:	03400000 	andi	$r0,$r0,0x0
1c00331c:	03400000 	andi	$r0,$r0,0x0
1c003320:	03400000 	andi	$r0,$r0,0x0
1c003324:	03400000 	andi	$r0,$r0,0x0
1c003328:	03400000 	andi	$r0,$r0,0x0
1c00332c:	03400000 	andi	$r0,$r0,0x0
1c003330:	03400000 	andi	$r0,$r0,0x0
1c003334:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003338:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00333c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003340:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0032b4 <Add_FR+0x5e4>
1c003344:	53f9abff 	b	-1624(0xffff9a8) # 1c002cec <Add_FR+0x1c>
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003350:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003354:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003358:	4c000020 	jirl	$r0,$r1,0

1c00335c <press_FR>:
press_FR():
1c00335c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003360:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003364:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003368:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00336c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003370:	5425a400 	bl	9636(0x25a4) # 1c005914 <OLED_CLS>
1c003374:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003378:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c00337c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003380:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003384:	5428e000 	bl	10464(0x28e0) # 1c005c64 <OLED_ShowCN_STR>
1c003388:	57f29bff 	bl	-3432(0xffff298) # 1c002620 <PS_GetImage>
1c00338c:	0015008c 	move	$r12,$r4
1c003390:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003394:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003398:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00339c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0033a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0033a4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0033a8:	580285ac 	beq	$r13,$r12,644(0x284) # 1c00362c <press_FR+0x2d0>
1c0033ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0033b0:	47ffd99f 	bnez	$r12,-40(0x7fffd8) # 1c003388 <press_FR+0x2c>
1c0033b4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0033b8:	57f2f7ff 	bl	-3340(0xffff2f4) # 1c0026ac <PS_GenChar>
1c0033bc:	0015008c 	move	$r12,$r4
1c0033c0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0033c4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0033c8:	44024980 	bnez	$r12,584(0x248) # 1c003610 <press_FR+0x2b4>
1c0033cc:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c0033d0:	00150187 	move	$r7,$r12
1c0033d4:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c0033d8:	00150005 	move	$r5,$r0
1c0033dc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0033e0:	57f627ff 	bl	-2524(0xffff624) # 1c002a04 <PS_HighSpeedSearch>
1c0033e4:	0015008c 	move	$r12,$r4
1c0033e8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0033ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0033f0:	44016d80 	bnez	$r12,364(0x16c) # 1c00355c <press_FR+0x200>
1c0033f4:	54252000 	bl	9504(0x2520) # 1c005914 <OLED_CLS>
1c0033f8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0033fc:	54507800 	bl	20600(0x5078) # 1c008474 <interface_display>
1c003400:	54038c00 	bl	908(0x38c) # 1c00378c <SG90_Open>
1c003404:	541fe800 	bl	8168(0x1fe8) # 1c0053ec <Buzzer_one>
1c003408:	1400472c 	lu12i.w	$r12,569(0x239)
1c00340c:	03bee58c 	ori	$r12,$r12,0xfb9
1c003410:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003414:	50008400 	b	132(0x84) # 1c003498 <press_FR+0x13c>
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
1c003498:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00349c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034a0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0034a4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003418 <press_FR+0xbc>
1c0034a8:	541f4400 	bl	8004(0x1f44) # 1c0053ec <Buzzer_one>
1c0034ac:	54030c00 	bl	780(0x30c) # 1c0037b8 <SG90_Close>
1c0034b0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0034b4:	544fc000 	bl	20416(0x4fc0) # 1c008474 <interface_display>
1c0034b8:	1400472c 	lu12i.w	$r12,569(0x239)
1c0034bc:	03bee58c 	ori	$r12,$r12,0xfb9
1c0034c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0034c4:	50008400 	b	132(0x84) # 1c003548 <press_FR+0x1ec>
1c0034c8:	03400000 	andi	$r0,$r0,0x0
1c0034cc:	03400000 	andi	$r0,$r0,0x0
1c0034d0:	03400000 	andi	$r0,$r0,0x0
1c0034d4:	03400000 	andi	$r0,$r0,0x0
1c0034d8:	03400000 	andi	$r0,$r0,0x0
1c0034dc:	03400000 	andi	$r0,$r0,0x0
1c0034e0:	03400000 	andi	$r0,$r0,0x0
1c0034e4:	03400000 	andi	$r0,$r0,0x0
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
1c003548:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00354c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003550:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003554:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0034c8 <press_FR+0x16c>
1c003558:	5000d800 	b	216(0xd8) # 1c003630 <press_FR+0x2d4>
1c00355c:	5423b800 	bl	9144(0x23b8) # 1c005914 <OLED_CLS>
1c003560:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003564:	544f1000 	bl	20240(0x4f10) # 1c008474 <interface_display>
1c003568:	541c5000 	bl	7248(0x1c50) # 1c0051b8 <Buzzer>
1c00356c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c003570:	03bf918c 	ori	$r12,$r12,0xfe4
1c003574:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003578:	50008400 	b	132(0x84) # 1c0035fc <press_FR+0x2a0>
1c00357c:	03400000 	andi	$r0,$r0,0x0
1c003580:	03400000 	andi	$r0,$r0,0x0
1c003584:	03400000 	andi	$r0,$r0,0x0
1c003588:	03400000 	andi	$r0,$r0,0x0
1c00358c:	03400000 	andi	$r0,$r0,0x0
1c003590:	03400000 	andi	$r0,$r0,0x0
1c003594:	03400000 	andi	$r0,$r0,0x0
1c003598:	03400000 	andi	$r0,$r0,0x0
1c00359c:	03400000 	andi	$r0,$r0,0x0
1c0035a0:	03400000 	andi	$r0,$r0,0x0
1c0035a4:	03400000 	andi	$r0,$r0,0x0
1c0035a8:	03400000 	andi	$r0,$r0,0x0
1c0035ac:	03400000 	andi	$r0,$r0,0x0
1c0035b0:	03400000 	andi	$r0,$r0,0x0
1c0035b4:	03400000 	andi	$r0,$r0,0x0
1c0035b8:	03400000 	andi	$r0,$r0,0x0
1c0035bc:	03400000 	andi	$r0,$r0,0x0
1c0035c0:	03400000 	andi	$r0,$r0,0x0
1c0035c4:	03400000 	andi	$r0,$r0,0x0
1c0035c8:	03400000 	andi	$r0,$r0,0x0
1c0035cc:	03400000 	andi	$r0,$r0,0x0
1c0035d0:	03400000 	andi	$r0,$r0,0x0
1c0035d4:	03400000 	andi	$r0,$r0,0x0
1c0035d8:	03400000 	andi	$r0,$r0,0x0
1c0035dc:	03400000 	andi	$r0,$r0,0x0
1c0035e0:	03400000 	andi	$r0,$r0,0x0
1c0035e4:	03400000 	andi	$r0,$r0,0x0
1c0035e8:	03400000 	andi	$r0,$r0,0x0
1c0035ec:	03400000 	andi	$r0,$r0,0x0
1c0035f0:	03400000 	andi	$r0,$r0,0x0
1c0035f4:	03400000 	andi	$r0,$r0,0x0
1c0035f8:	03400000 	andi	$r0,$r0,0x0
1c0035fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003600:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003604:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003608:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00357c <press_FR+0x220>
1c00360c:	50002400 	b	36(0x24) # 1c003630 <press_FR+0x2d4>
1c003610:	54230400 	bl	8964(0x2304) # 1c005914 <OLED_CLS>
1c003614:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003618:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c00361c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003620:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003624:	54264000 	bl	9792(0x2640) # 1c005c64 <OLED_ShowCN_STR>
1c003628:	53fd63ff 	b	-672(0xffffd60) # 1c003388 <press_FR+0x2c>
1c00362c:	03400000 	andi	$r0,$r0,0x0
1c003630:	03400000 	andi	$r0,$r0,0x0
1c003634:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003638:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00363c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003640:	4c000020 	jirl	$r0,$r1,0

1c003644 <Del_FR_Lib>:
Del_FR_Lib():
1c003644:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003648:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00364c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003650:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003654:	57f327ff 	bl	-3292(0xffff324) # 1c002978 <PS_Empty>
1c003658:	0015008c 	move	$r12,$r4
1c00365c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003660:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003664:	44000d80 	bnez	$r12,12(0xc) # 1c003670 <Del_FR_Lib+0x2c>
1c003668:	541b5000 	bl	6992(0x1b50) # 1c0051b8 <Buzzer>
1c00366c:	50001000 	b	16(0x10) # 1c00367c <Del_FR_Lib+0x38>
1c003670:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003674:	00150184 	move	$r4,$r12
1c003678:	57f563ff 	bl	-2720(0xffff560) # 1c002bd8 <ShowErrMessage>
1c00367c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c003680:	03bf918c 	ori	$r12,$r12,0xfe4
1c003684:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003688:	50008400 	b	132(0x84) # 1c00370c <Del_FR_Lib+0xc8>
1c00368c:	03400000 	andi	$r0,$r0,0x0
1c003690:	03400000 	andi	$r0,$r0,0x0
1c003694:	03400000 	andi	$r0,$r0,0x0
1c003698:	03400000 	andi	$r0,$r0,0x0
1c00369c:	03400000 	andi	$r0,$r0,0x0
1c0036a0:	03400000 	andi	$r0,$r0,0x0
1c0036a4:	03400000 	andi	$r0,$r0,0x0
1c0036a8:	03400000 	andi	$r0,$r0,0x0
1c0036ac:	03400000 	andi	$r0,$r0,0x0
1c0036b0:	03400000 	andi	$r0,$r0,0x0
1c0036b4:	03400000 	andi	$r0,$r0,0x0
1c0036b8:	03400000 	andi	$r0,$r0,0x0
1c0036bc:	03400000 	andi	$r0,$r0,0x0
1c0036c0:	03400000 	andi	$r0,$r0,0x0
1c0036c4:	03400000 	andi	$r0,$r0,0x0
1c0036c8:	03400000 	andi	$r0,$r0,0x0
1c0036cc:	03400000 	andi	$r0,$r0,0x0
1c0036d0:	03400000 	andi	$r0,$r0,0x0
1c0036d4:	03400000 	andi	$r0,$r0,0x0
1c0036d8:	03400000 	andi	$r0,$r0,0x0
1c0036dc:	03400000 	andi	$r0,$r0,0x0
1c0036e0:	03400000 	andi	$r0,$r0,0x0
1c0036e4:	03400000 	andi	$r0,$r0,0x0
1c0036e8:	03400000 	andi	$r0,$r0,0x0
1c0036ec:	03400000 	andi	$r0,$r0,0x0
1c0036f0:	03400000 	andi	$r0,$r0,0x0
1c0036f4:	03400000 	andi	$r0,$r0,0x0
1c0036f8:	03400000 	andi	$r0,$r0,0x0
1c0036fc:	03400000 	andi	$r0,$r0,0x0
1c003700:	03400000 	andi	$r0,$r0,0x0
1c003704:	03400000 	andi	$r0,$r0,0x0
1c003708:	03400000 	andi	$r0,$r0,0x0
1c00370c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003710:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003714:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003718:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00368c <Del_FR_Lib+0x48>
1c00371c:	03400000 	andi	$r0,$r0,0x0
1c003720:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003724:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003728:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00372c:	4c000020 	jirl	$r0,$r1,0

1c003730 <SG90_GetAngle>:
SG90_GetAngle():
1c003730:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003734:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003738:	29806076 	st.w	$r22,$r3,24(0x18)
1c00373c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003740:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003744:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003748:	57e657ff 	bl	-6572(0xfffe654) # 1c001d9c <pwm_steering_engine_set>
1c00374c:	03400000 	andi	$r0,$r0,0x0
1c003750:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003754:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003758:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00375c:	4c000020 	jirl	$r0,$r1,0

1c003760 <SG90_Init>:
SG90_Init():
1c003760:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003764:	29803061 	st.w	$r1,$r3,12(0xc)
1c003768:	29802076 	st.w	$r22,$r3,8(0x8)
1c00376c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003770:	00150004 	move	$r4,$r0
1c003774:	57ffbfff 	bl	-68(0xfffffbc) # 1c003730 <SG90_GetAngle>
1c003778:	03400000 	andi	$r0,$r0,0x0
1c00377c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003780:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003784:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003788:	4c000020 	jirl	$r0,$r1,0

1c00378c <SG90_Open>:
SG90_Open():
1c00378c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003790:	29803061 	st.w	$r1,$r3,12(0xc)
1c003794:	29802076 	st.w	$r22,$r3,8(0x8)
1c003798:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00379c:	02815404 	addi.w	$r4,$r0,85(0x55)
1c0037a0:	57ff93ff 	bl	-112(0xfffff90) # 1c003730 <SG90_GetAngle>
1c0037a4:	03400000 	andi	$r0,$r0,0x0
1c0037a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037b4:	4c000020 	jirl	$r0,$r1,0

1c0037b8 <SG90_Close>:
SG90_Close():
1c0037b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037c8:	00150004 	move	$r4,$r0
1c0037cc:	57ff67ff 	bl	-156(0xfffff64) # 1c003730 <SG90_GetAngle>
1c0037d0:	03400000 	andi	$r0,$r0,0x0
1c0037d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037e0:	4c000020 	jirl	$r0,$r1,0

1c0037e4 <hw_uart_init>:
hw_uart_init():
1c0037e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037e8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037f4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0037f8:	02a0e18c 	addi.w	$r12,$r12,-1992(0x838)
1c0037fc:	2880018e 	ld.w	$r14,$r12,0
1c003800:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003804:	002135cc 	div.wu	$r12,$r14,$r13
1c003808:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003810 <hw_uart_init+0x2c>
1c00380c:	002a0007 	break	0x7
1c003810:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003814:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003818:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00381c:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c003820:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003828:	0044a18d 	srli.w	$r13,$r12,0x8
1c00382c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003830:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003834:	2900058d 	st.b	$r13,$r12,1(0x1)
1c003838:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00383c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003840:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003844:	2900018d 	st.b	$r13,$r12,0
1c003848:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00384c:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c003850:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003854:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003858:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00385c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003860:	03400000 	andi	$r0,$r0,0x0
1c003864:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003868:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00386c:	4c000020 	jirl	$r0,$r1,0

1c003870 <uart_write>:
uart_write():
1c003870:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003874:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00387c:	0015008c 	move	$r12,$r4
1c003880:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003884:	03400000 	andi	$r0,$r0,0x0
1c003888:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00388c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c003890:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003894:	0340818c 	andi	$r12,$r12,0x20
1c003898:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c003888 <uart_write+0x18>
1c00389c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0038a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0038a4:	2900018d 	st.b	$r13,$r12,0
1c0038a8:	03400000 	andi	$r0,$r0,0x0
1c0038ac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0038b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038b4:	4c000020 	jirl	$r0,$r1,0

1c0038b8 <uart_set_rx_th>:
uart_set_rx_th():
1c0038b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0038c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038c4:	0015008c 	move	$r12,$r4
1c0038c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0038cc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0038d0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0038d4:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0038e0 <uart_set_rx_th+0x28>
1c0038d8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0038dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0038e0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0038e4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0038e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038ec:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0038f0:	0340fdad 	andi	$r13,$r13,0x3f
1c0038f4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0038f8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0038fc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003900:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003904:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003908:	00005d8d 	ext.w.b	$r13,$r12
1c00390c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003910:	0040998c 	slli.w	$r12,$r12,0x6
1c003914:	00005d8c 	ext.w.b	$r12,$r12
1c003918:	001531ac 	or	$r12,$r13,$r12
1c00391c:	00005d8d 	ext.w.b	$r13,$r12
1c003920:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003924:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003928:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003934:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003938:	4c000020 	jirl	$r0,$r1,0

1c00393c <clkey>:
clkey():
1c00393c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003940:	29803061 	st.w	$r1,$r3,12(0xc)
1c003944:	29802076 	st.w	$r22,$r3,8(0x8)
1c003948:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00394c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003950:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003954:	57dfd7ff 	bl	-8236(0xfffdfd4) # 1c001928 <gpio_write>
1c003958:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00395c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003960:	57dfcbff 	bl	-8248(0xfffdfc8) # 1c001928 <gpio_write>
1c003964:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003968:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00396c:	57dfbfff 	bl	-8260(0xfffdfbc) # 1c001928 <gpio_write>
1c003970:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003974:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003978:	57dfb3ff 	bl	-8272(0xfffdfb0) # 1c001928 <gpio_write>
1c00397c:	03400000 	andi	$r0,$r0,0x0
1c003980:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003984:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003988:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00398c:	4c000020 	jirl	$r0,$r1,0

1c003990 <MatrixKey>:
MatrixKey():
1c003990:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c003994:	29827061 	st.w	$r1,$r3,156(0x9c)
1c003998:	29826076 	st.w	$r22,$r3,152(0x98)
1c00399c:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c0039a0:	57ff9fff 	bl	-100(0xfffff9c) # 1c00393c <clkey>
1c0039a4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0039a8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0039ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039b0:	50008400 	b	132(0x84) # 1c003a34 <MatrixKey+0xa4>
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
1c003a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a3c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003a40:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0039b4 <MatrixKey+0x24>
1c003a44:	00150005 	move	$r5,$r0
1c003a48:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003a4c:	57dedfff 	bl	-8484(0xfffdedc) # 1c001928 <gpio_write>
1c003a50:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003a54:	57dfcfff 	bl	-8244(0xfffdfcc) # 1c001a20 <gpio_read>
1c003a58:	0015008c 	move	$r12,$r4
1c003a5c:	44016180 	bnez	$r12,352(0x160) # 1c003bbc <MatrixKey+0x22c>
1c003a60:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a64:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003a6c:	50008400 	b	132(0x84) # 1c003af0 <MatrixKey+0x160>
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
1c003af0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003af4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003af8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003afc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003a70 <MatrixKey+0xe0>
1c003b00:	03400000 	andi	$r0,$r0,0x0
1c003b04:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003b08:	57df1bff 	bl	-8424(0xfffdf18) # 1c001a20 <gpio_read>
1c003b0c:	0015008c 	move	$r12,$r4
1c003b10:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003b04 <MatrixKey+0x174>
1c003b14:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b18:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003b20:	50008400 	b	132(0x84) # 1c003ba4 <MatrixKey+0x214>
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
1c003ba4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003ba8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bac:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003bb0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003b24 <MatrixKey+0x194>
1c003bb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003bb8:	50158c00 	b	5516(0x158c) # 1c005144 <MatrixKey+0x17b4>
1c003bbc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003bc0:	57de63ff 	bl	-8608(0xfffde60) # 1c001a20 <gpio_read>
1c003bc4:	0015008c 	move	$r12,$r4
1c003bc8:	44016180 	bnez	$r12,352(0x160) # 1c003d28 <MatrixKey+0x398>
1c003bcc:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bd0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003bd4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003bd8:	50008400 	b	132(0x84) # 1c003c5c <MatrixKey+0x2cc>
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
1c003c5c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003c60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c64:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003c68:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003bdc <MatrixKey+0x24c>
1c003c6c:	03400000 	andi	$r0,$r0,0x0
1c003c70:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003c74:	57ddafff 	bl	-8788(0xfffddac) # 1c001a20 <gpio_read>
1c003c78:	0015008c 	move	$r12,$r4
1c003c7c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003c70 <MatrixKey+0x2e0>
1c003c80:	1400008c 	lu12i.w	$r12,4(0x4)
1c003c84:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c88:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003c8c:	50008400 	b	132(0x84) # 1c003d10 <MatrixKey+0x380>
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
1c003d10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003d14:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d18:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003d1c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003c90 <MatrixKey+0x300>
1c003d20:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003d24:	50142000 	b	5152(0x1420) # 1c005144 <MatrixKey+0x17b4>
1c003d28:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003d2c:	57dcf7ff 	bl	-8972(0xfffdcf4) # 1c001a20 <gpio_read>
1c003d30:	0015008c 	move	$r12,$r4
1c003d34:	44016180 	bnez	$r12,352(0x160) # 1c003e94 <MatrixKey+0x504>
1c003d38:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d3c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d40:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003d44:	50008400 	b	132(0x84) # 1c003dc8 <MatrixKey+0x438>
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
1c003dc8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003dcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003dd0:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003dd4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003d48 <MatrixKey+0x3b8>
1c003dd8:	03400000 	andi	$r0,$r0,0x0
1c003ddc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003de0:	57dc43ff 	bl	-9152(0xfffdc40) # 1c001a20 <gpio_read>
1c003de4:	0015008c 	move	$r12,$r4
1c003de8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003ddc <MatrixKey+0x44c>
1c003dec:	1400008c 	lu12i.w	$r12,4(0x4)
1c003df0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003df4:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003df8:	50008400 	b	132(0x84) # 1c003e7c <MatrixKey+0x4ec>
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
1c003e5c:	03400000 	andi	$r0,$r0,0x0
1c003e60:	03400000 	andi	$r0,$r0,0x0
1c003e64:	03400000 	andi	$r0,$r0,0x0
1c003e68:	03400000 	andi	$r0,$r0,0x0
1c003e6c:	03400000 	andi	$r0,$r0,0x0
1c003e70:	03400000 	andi	$r0,$r0,0x0
1c003e74:	03400000 	andi	$r0,$r0,0x0
1c003e78:	03400000 	andi	$r0,$r0,0x0
1c003e7c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003e80:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003e84:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003e88:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003dfc <MatrixKey+0x46c>
1c003e8c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c003e90:	5012b400 	b	4788(0x12b4) # 1c005144 <MatrixKey+0x17b4>
1c003e94:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003e98:	57db8bff 	bl	-9336(0xfffdb88) # 1c001a20 <gpio_read>
1c003e9c:	0015008c 	move	$r12,$r4
1c003ea0:	44016180 	bnez	$r12,352(0x160) # 1c004000 <MatrixKey+0x670>
1c003ea4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ea8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003eac:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c003eb0:	50008400 	b	132(0x84) # 1c003f34 <MatrixKey+0x5a4>
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
1c003f10:	03400000 	andi	$r0,$r0,0x0
1c003f14:	03400000 	andi	$r0,$r0,0x0
1c003f18:	03400000 	andi	$r0,$r0,0x0
1c003f1c:	03400000 	andi	$r0,$r0,0x0
1c003f20:	03400000 	andi	$r0,$r0,0x0
1c003f24:	03400000 	andi	$r0,$r0,0x0
1c003f28:	03400000 	andi	$r0,$r0,0x0
1c003f2c:	03400000 	andi	$r0,$r0,0x0
1c003f30:	03400000 	andi	$r0,$r0,0x0
1c003f34:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c003f38:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f3c:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c003f40:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003eb4 <MatrixKey+0x524>
1c003f44:	03400000 	andi	$r0,$r0,0x0
1c003f48:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003f4c:	57dad7ff 	bl	-9516(0xfffdad4) # 1c001a20 <gpio_read>
1c003f50:	0015008c 	move	$r12,$r4
1c003f54:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003f48 <MatrixKey+0x5b8>
1c003f58:	1400008c 	lu12i.w	$r12,4(0x4)
1c003f5c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003f60:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003f64:	50008400 	b	132(0x84) # 1c003fe8 <MatrixKey+0x658>
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
1c003fc8:	03400000 	andi	$r0,$r0,0x0
1c003fcc:	03400000 	andi	$r0,$r0,0x0
1c003fd0:	03400000 	andi	$r0,$r0,0x0
1c003fd4:	03400000 	andi	$r0,$r0,0x0
1c003fd8:	03400000 	andi	$r0,$r0,0x0
1c003fdc:	03400000 	andi	$r0,$r0,0x0
1c003fe0:	03400000 	andi	$r0,$r0,0x0
1c003fe4:	03400000 	andi	$r0,$r0,0x0
1c003fe8:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c003fec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ff0:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c003ff4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003f68 <MatrixKey+0x5d8>
1c003ff8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003ffc:	50114800 	b	4424(0x1148) # 1c005144 <MatrixKey+0x17b4>
1c004000:	57f93fff 	bl	-1732(0xffff93c) # 1c00393c <clkey>
1c004004:	00150005 	move	$r5,$r0
1c004008:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00400c:	57d91fff 	bl	-9956(0xfffd91c) # 1c001928 <gpio_write>
1c004010:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004014:	57da0fff 	bl	-9716(0xfffda0c) # 1c001a20 <gpio_read>
1c004018:	0015008c 	move	$r12,$r4
1c00401c:	44016180 	bnez	$r12,352(0x160) # 1c00417c <MatrixKey+0x7ec>
1c004020:	1400008c 	lu12i.w	$r12,4(0x4)
1c004024:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004028:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c00402c:	50008400 	b	132(0x84) # 1c0040b0 <MatrixKey+0x720>
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
1c0040b0:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0040b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0040b8:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c0040bc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004030 <MatrixKey+0x6a0>
1c0040c0:	03400000 	andi	$r0,$r0,0x0
1c0040c4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0040c8:	57d95bff 	bl	-9896(0xfffd958) # 1c001a20 <gpio_read>
1c0040cc:	0015008c 	move	$r12,$r4
1c0040d0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0040c4 <MatrixKey+0x734>
1c0040d4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0040d8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0040dc:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c0040e0:	50008400 	b	132(0x84) # 1c004164 <MatrixKey+0x7d4>
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
1c004164:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c004168:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00416c:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c004170:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0040e4 <MatrixKey+0x754>
1c004174:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004178:	500fcc00 	b	4044(0xfcc) # 1c005144 <MatrixKey+0x17b4>
1c00417c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004180:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c001a20 <gpio_read>
1c004184:	0015008c 	move	$r12,$r4
1c004188:	44016180 	bnez	$r12,352(0x160) # 1c0042e8 <MatrixKey+0x958>
1c00418c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004190:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004194:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c004198:	50008400 	b	132(0x84) # 1c00421c <MatrixKey+0x88c>
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
1c00421c:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c004220:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004224:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c004228:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00419c <MatrixKey+0x80c>
1c00422c:	03400000 	andi	$r0,$r0,0x0
1c004230:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004234:	57d7efff 	bl	-10260(0xfffd7ec) # 1c001a20 <gpio_read>
1c004238:	0015008c 	move	$r12,$r4
1c00423c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004230 <MatrixKey+0x8a0>
1c004240:	1400008c 	lu12i.w	$r12,4(0x4)
1c004244:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004248:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c00424c:	50008400 	b	132(0x84) # 1c0042d0 <MatrixKey+0x940>
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
1c0042d0:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c0042d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0042d8:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c0042dc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004250 <MatrixKey+0x8c0>
1c0042e0:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0042e4:	500e6000 	b	3680(0xe60) # 1c005144 <MatrixKey+0x17b4>
1c0042e8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0042ec:	57d737ff 	bl	-10444(0xfffd734) # 1c001a20 <gpio_read>
1c0042f0:	0015008c 	move	$r12,$r4
1c0042f4:	44016180 	bnez	$r12,352(0x160) # 1c004454 <MatrixKey+0xac4>
1c0042f8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0042fc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004300:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c004304:	50008400 	b	132(0x84) # 1c004388 <MatrixKey+0x9f8>
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
1c004388:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c00438c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004390:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c004394:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004308 <MatrixKey+0x978>
1c004398:	03400000 	andi	$r0,$r0,0x0
1c00439c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0043a0:	57d683ff 	bl	-10624(0xfffd680) # 1c001a20 <gpio_read>
1c0043a4:	0015008c 	move	$r12,$r4
1c0043a8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00439c <MatrixKey+0xa0c>
1c0043ac:	1400008c 	lu12i.w	$r12,4(0x4)
1c0043b0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0043b4:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c0043b8:	50008400 	b	132(0x84) # 1c00443c <MatrixKey+0xaac>
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
1c00441c:	03400000 	andi	$r0,$r0,0x0
1c004420:	03400000 	andi	$r0,$r0,0x0
1c004424:	03400000 	andi	$r0,$r0,0x0
1c004428:	03400000 	andi	$r0,$r0,0x0
1c00442c:	03400000 	andi	$r0,$r0,0x0
1c004430:	03400000 	andi	$r0,$r0,0x0
1c004434:	03400000 	andi	$r0,$r0,0x0
1c004438:	03400000 	andi	$r0,$r0,0x0
1c00443c:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c004440:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004444:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c004448:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0043bc <MatrixKey+0xa2c>
1c00444c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004450:	500cf400 	b	3316(0xcf4) # 1c005144 <MatrixKey+0x17b4>
1c004454:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004458:	57d5cbff 	bl	-10808(0xfffd5c8) # 1c001a20 <gpio_read>
1c00445c:	0015008c 	move	$r12,$r4
1c004460:	44016180 	bnez	$r12,352(0x160) # 1c0045c0 <MatrixKey+0xc30>
1c004464:	1400008c 	lu12i.w	$r12,4(0x4)
1c004468:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00446c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c004470:	50008400 	b	132(0x84) # 1c0044f4 <MatrixKey+0xb64>
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
1c0044d0:	03400000 	andi	$r0,$r0,0x0
1c0044d4:	03400000 	andi	$r0,$r0,0x0
1c0044d8:	03400000 	andi	$r0,$r0,0x0
1c0044dc:	03400000 	andi	$r0,$r0,0x0
1c0044e0:	03400000 	andi	$r0,$r0,0x0
1c0044e4:	03400000 	andi	$r0,$r0,0x0
1c0044e8:	03400000 	andi	$r0,$r0,0x0
1c0044ec:	03400000 	andi	$r0,$r0,0x0
1c0044f0:	03400000 	andi	$r0,$r0,0x0
1c0044f4:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c0044f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0044fc:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c004500:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004474 <MatrixKey+0xae4>
1c004504:	03400000 	andi	$r0,$r0,0x0
1c004508:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00450c:	57d517ff 	bl	-10988(0xfffd514) # 1c001a20 <gpio_read>
1c004510:	0015008c 	move	$r12,$r4
1c004514:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004508 <MatrixKey+0xb78>
1c004518:	1400008c 	lu12i.w	$r12,4(0x4)
1c00451c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004520:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c004524:	50008400 	b	132(0x84) # 1c0045a8 <MatrixKey+0xc18>
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
1c004588:	03400000 	andi	$r0,$r0,0x0
1c00458c:	03400000 	andi	$r0,$r0,0x0
1c004590:	03400000 	andi	$r0,$r0,0x0
1c004594:	03400000 	andi	$r0,$r0,0x0
1c004598:	03400000 	andi	$r0,$r0,0x0
1c00459c:	03400000 	andi	$r0,$r0,0x0
1c0045a0:	03400000 	andi	$r0,$r0,0x0
1c0045a4:	03400000 	andi	$r0,$r0,0x0
1c0045a8:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c0045ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0045b0:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c0045b4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004528 <MatrixKey+0xb98>
1c0045b8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0045bc:	500b8800 	b	2952(0xb88) # 1c005144 <MatrixKey+0x17b4>
1c0045c0:	57f37fff 	bl	-3204(0xffff37c) # 1c00393c <clkey>
1c0045c4:	00150005 	move	$r5,$r0
1c0045c8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0045cc:	57d35fff 	bl	-11428(0xfffd35c) # 1c001928 <gpio_write>
1c0045d0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0045d4:	57d44fff 	bl	-11188(0xfffd44c) # 1c001a20 <gpio_read>
1c0045d8:	0015008c 	move	$r12,$r4
1c0045dc:	44016180 	bnez	$r12,352(0x160) # 1c00473c <MatrixKey+0xdac>
1c0045e0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0045e4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0045e8:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c0045ec:	50008400 	b	132(0x84) # 1c004670 <MatrixKey+0xce0>
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
1c004670:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c004674:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004678:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c00467c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0045f0 <MatrixKey+0xc60>
1c004680:	03400000 	andi	$r0,$r0,0x0
1c004684:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004688:	57d39bff 	bl	-11368(0xfffd398) # 1c001a20 <gpio_read>
1c00468c:	0015008c 	move	$r12,$r4
1c004690:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004684 <MatrixKey+0xcf4>
1c004694:	1400008c 	lu12i.w	$r12,4(0x4)
1c004698:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00469c:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c0046a0:	50008400 	b	132(0x84) # 1c004724 <MatrixKey+0xd94>
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
1c004724:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c004728:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00472c:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c004730:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0046a4 <MatrixKey+0xd14>
1c004734:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004738:	500a0c00 	b	2572(0xa0c) # 1c005144 <MatrixKey+0x17b4>
1c00473c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004740:	57d2e3ff 	bl	-11552(0xfffd2e0) # 1c001a20 <gpio_read>
1c004744:	0015008c 	move	$r12,$r4
1c004748:	44016180 	bnez	$r12,352(0x160) # 1c0048a8 <MatrixKey+0xf18>
1c00474c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004750:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004754:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c004758:	50008400 	b	132(0x84) # 1c0047dc <MatrixKey+0xe4c>
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
1c0047dc:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0047e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0047e4:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c0047e8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00475c <MatrixKey+0xdcc>
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0047f4:	57d22fff 	bl	-11732(0xfffd22c) # 1c001a20 <gpio_read>
1c0047f8:	0015008c 	move	$r12,$r4
1c0047fc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0047f0 <MatrixKey+0xe60>
1c004800:	1400008c 	lu12i.w	$r12,4(0x4)
1c004804:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004808:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c00480c:	50008400 	b	132(0x84) # 1c004890 <MatrixKey+0xf00>
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
1c004890:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c004894:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004898:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c00489c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004810 <MatrixKey+0xe80>
1c0048a0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0048a4:	5008a000 	b	2208(0x8a0) # 1c005144 <MatrixKey+0x17b4>
1c0048a8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0048ac:	57d177ff 	bl	-11916(0xfffd174) # 1c001a20 <gpio_read>
1c0048b0:	0015008c 	move	$r12,$r4
1c0048b4:	44016180 	bnez	$r12,352(0x160) # 1c004a14 <MatrixKey+0x1084>
1c0048b8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0048bc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0048c0:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c0048c4:	50008400 	b	132(0x84) # 1c004948 <MatrixKey+0xfb8>
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
1c004948:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00494c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004950:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c004954:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0048c8 <MatrixKey+0xf38>
1c004958:	03400000 	andi	$r0,$r0,0x0
1c00495c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004960:	57d0c3ff 	bl	-12096(0xfffd0c0) # 1c001a20 <gpio_read>
1c004964:	0015008c 	move	$r12,$r4
1c004968:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00495c <MatrixKey+0xfcc>
1c00496c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004970:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004974:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c004978:	50008400 	b	132(0x84) # 1c0049fc <MatrixKey+0x106c>
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
1c0049dc:	03400000 	andi	$r0,$r0,0x0
1c0049e0:	03400000 	andi	$r0,$r0,0x0
1c0049e4:	03400000 	andi	$r0,$r0,0x0
1c0049e8:	03400000 	andi	$r0,$r0,0x0
1c0049ec:	03400000 	andi	$r0,$r0,0x0
1c0049f0:	03400000 	andi	$r0,$r0,0x0
1c0049f4:	03400000 	andi	$r0,$r0,0x0
1c0049f8:	03400000 	andi	$r0,$r0,0x0
1c0049fc:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c004a00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004a04:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c004a08:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00497c <MatrixKey+0xfec>
1c004a0c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004a10:	50073400 	b	1844(0x734) # 1c005144 <MatrixKey+0x17b4>
1c004a14:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004a18:	57d00bff 	bl	-12280(0xfffd008) # 1c001a20 <gpio_read>
1c004a1c:	0015008c 	move	$r12,$r4
1c004a20:	44016180 	bnez	$r12,352(0x160) # 1c004b80 <MatrixKey+0x11f0>
1c004a24:	1400008c 	lu12i.w	$r12,4(0x4)
1c004a28:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004a2c:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c004a30:	50008400 	b	132(0x84) # 1c004ab4 <MatrixKey+0x1124>
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
1c004a90:	03400000 	andi	$r0,$r0,0x0
1c004a94:	03400000 	andi	$r0,$r0,0x0
1c004a98:	03400000 	andi	$r0,$r0,0x0
1c004a9c:	03400000 	andi	$r0,$r0,0x0
1c004aa0:	03400000 	andi	$r0,$r0,0x0
1c004aa4:	03400000 	andi	$r0,$r0,0x0
1c004aa8:	03400000 	andi	$r0,$r0,0x0
1c004aac:	03400000 	andi	$r0,$r0,0x0
1c004ab0:	03400000 	andi	$r0,$r0,0x0
1c004ab4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c004ab8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004abc:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c004ac0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004a34 <MatrixKey+0x10a4>
1c004ac4:	03400000 	andi	$r0,$r0,0x0
1c004ac8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004acc:	57cf57ff 	bl	-12460(0xfffcf54) # 1c001a20 <gpio_read>
1c004ad0:	0015008c 	move	$r12,$r4
1c004ad4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004ac8 <MatrixKey+0x1138>
1c004ad8:	1400008c 	lu12i.w	$r12,4(0x4)
1c004adc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004ae0:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c004ae4:	50008400 	b	132(0x84) # 1c004b68 <MatrixKey+0x11d8>
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
1c004b48:	03400000 	andi	$r0,$r0,0x0
1c004b4c:	03400000 	andi	$r0,$r0,0x0
1c004b50:	03400000 	andi	$r0,$r0,0x0
1c004b54:	03400000 	andi	$r0,$r0,0x0
1c004b58:	03400000 	andi	$r0,$r0,0x0
1c004b5c:	03400000 	andi	$r0,$r0,0x0
1c004b60:	03400000 	andi	$r0,$r0,0x0
1c004b64:	03400000 	andi	$r0,$r0,0x0
1c004b68:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c004b6c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004b70:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c004b74:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004ae8 <MatrixKey+0x1158>
1c004b78:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004b7c:	5005c800 	b	1480(0x5c8) # 1c005144 <MatrixKey+0x17b4>
1c004b80:	57edbfff 	bl	-4676(0xfffedbc) # 1c00393c <clkey>
1c004b84:	00150005 	move	$r5,$r0
1c004b88:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004b8c:	57cd9fff 	bl	-12900(0xfffcd9c) # 1c001928 <gpio_write>
1c004b90:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004b94:	57ce8fff 	bl	-12660(0xfffce8c) # 1c001a20 <gpio_read>
1c004b98:	0015008c 	move	$r12,$r4
1c004b9c:	44016180 	bnez	$r12,352(0x160) # 1c004cfc <MatrixKey+0x136c>
1c004ba0:	1400008c 	lu12i.w	$r12,4(0x4)
1c004ba4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004ba8:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c004bac:	50008400 	b	132(0x84) # 1c004c30 <MatrixKey+0x12a0>
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
1c004c30:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c004c34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004c38:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c004c3c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004bb0 <MatrixKey+0x1220>
1c004c40:	03400000 	andi	$r0,$r0,0x0
1c004c44:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004c48:	57cddbff 	bl	-12840(0xfffcdd8) # 1c001a20 <gpio_read>
1c004c4c:	0015008c 	move	$r12,$r4
1c004c50:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004c44 <MatrixKey+0x12b4>
1c004c54:	1400008c 	lu12i.w	$r12,4(0x4)
1c004c58:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004c5c:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c004c60:	50008400 	b	132(0x84) # 1c004ce4 <MatrixKey+0x1354>
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
1c004ce4:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c004ce8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004cec:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c004cf0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004c64 <MatrixKey+0x12d4>
1c004cf4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c004cf8:	50044c00 	b	1100(0x44c) # 1c005144 <MatrixKey+0x17b4>
1c004cfc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004d00:	57cd23ff 	bl	-13024(0xfffcd20) # 1c001a20 <gpio_read>
1c004d04:	0015008c 	move	$r12,$r4
1c004d08:	44016180 	bnez	$r12,352(0x160) # 1c004e68 <MatrixKey+0x14d8>
1c004d0c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004d10:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004d14:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c004d18:	50008400 	b	132(0x84) # 1c004d9c <MatrixKey+0x140c>
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
1c004d9c:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c004da0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004da4:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c004da8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004d1c <MatrixKey+0x138c>
1c004dac:	03400000 	andi	$r0,$r0,0x0
1c004db0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004db4:	57cc6fff 	bl	-13204(0xfffcc6c) # 1c001a20 <gpio_read>
1c004db8:	0015008c 	move	$r12,$r4
1c004dbc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004db0 <MatrixKey+0x1420>
1c004dc0:	1400008c 	lu12i.w	$r12,4(0x4)
1c004dc4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004dc8:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c004dcc:	50008400 	b	132(0x84) # 1c004e50 <MatrixKey+0x14c0>
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
1c004e50:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c004e54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e58:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c004e5c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004dd0 <MatrixKey+0x1440>
1c004e60:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004e64:	5002e000 	b	736(0x2e0) # 1c005144 <MatrixKey+0x17b4>
1c004e68:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004e6c:	57cbb7ff 	bl	-13388(0xfffcbb4) # 1c001a20 <gpio_read>
1c004e70:	0015008c 	move	$r12,$r4
1c004e74:	44016180 	bnez	$r12,352(0x160) # 1c004fd4 <MatrixKey+0x1644>
1c004e78:	1400008c 	lu12i.w	$r12,4(0x4)
1c004e7c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004e80:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c004e84:	50008400 	b	132(0x84) # 1c004f08 <MatrixKey+0x1578>
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
1c004f08:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c004f0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f10:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c004f14:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004e88 <MatrixKey+0x14f8>
1c004f18:	03400000 	andi	$r0,$r0,0x0
1c004f1c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004f20:	57cb03ff 	bl	-13568(0xfffcb00) # 1c001a20 <gpio_read>
1c004f24:	0015008c 	move	$r12,$r4
1c004f28:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004f1c <MatrixKey+0x158c>
1c004f2c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004f30:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004f34:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c004f38:	50008400 	b	132(0x84) # 1c004fbc <MatrixKey+0x162c>
1c004f3c:	03400000 	andi	$r0,$r0,0x0
1c004f40:	03400000 	andi	$r0,$r0,0x0
1c004f44:	03400000 	andi	$r0,$r0,0x0
1c004f48:	03400000 	andi	$r0,$r0,0x0
1c004f4c:	03400000 	andi	$r0,$r0,0x0
1c004f50:	03400000 	andi	$r0,$r0,0x0
1c004f54:	03400000 	andi	$r0,$r0,0x0
1c004f58:	03400000 	andi	$r0,$r0,0x0
1c004f5c:	03400000 	andi	$r0,$r0,0x0
1c004f60:	03400000 	andi	$r0,$r0,0x0
1c004f64:	03400000 	andi	$r0,$r0,0x0
1c004f68:	03400000 	andi	$r0,$r0,0x0
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
1c004fbc:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c004fc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004fc4:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c004fc8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004f3c <MatrixKey+0x15ac>
1c004fcc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c004fd0:	50017400 	b	372(0x174) # 1c005144 <MatrixKey+0x17b4>
1c004fd4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004fd8:	57ca4bff 	bl	-13752(0xfffca48) # 1c001a20 <gpio_read>
1c004fdc:	0015008c 	move	$r12,$r4
1c004fe0:	44016180 	bnez	$r12,352(0x160) # 1c005140 <MatrixKey+0x17b0>
1c004fe4:	1400008c 	lu12i.w	$r12,4(0x4)
1c004fe8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004fec:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c004ff0:	50008400 	b	132(0x84) # 1c005074 <MatrixKey+0x16e4>
1c004ff4:	03400000 	andi	$r0,$r0,0x0
1c004ff8:	03400000 	andi	$r0,$r0,0x0
1c004ffc:	03400000 	andi	$r0,$r0,0x0
1c005000:	03400000 	andi	$r0,$r0,0x0
1c005004:	03400000 	andi	$r0,$r0,0x0
1c005008:	03400000 	andi	$r0,$r0,0x0
1c00500c:	03400000 	andi	$r0,$r0,0x0
1c005010:	03400000 	andi	$r0,$r0,0x0
1c005014:	03400000 	andi	$r0,$r0,0x0
1c005018:	03400000 	andi	$r0,$r0,0x0
1c00501c:	03400000 	andi	$r0,$r0,0x0
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
1c005074:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c005078:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00507c:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c005080:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004ff4 <MatrixKey+0x1664>
1c005084:	03400000 	andi	$r0,$r0,0x0
1c005088:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00508c:	57c997ff 	bl	-13932(0xfffc994) # 1c001a20 <gpio_read>
1c005090:	0015008c 	move	$r12,$r4
1c005094:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c005088 <MatrixKey+0x16f8>
1c005098:	1400008c 	lu12i.w	$r12,4(0x4)
1c00509c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0050a0:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c0050a4:	50008400 	b	132(0x84) # 1c005128 <MatrixKey+0x1798>
1c0050a8:	03400000 	andi	$r0,$r0,0x0
1c0050ac:	03400000 	andi	$r0,$r0,0x0
1c0050b0:	03400000 	andi	$r0,$r0,0x0
1c0050b4:	03400000 	andi	$r0,$r0,0x0
1c0050b8:	03400000 	andi	$r0,$r0,0x0
1c0050bc:	03400000 	andi	$r0,$r0,0x0
1c0050c0:	03400000 	andi	$r0,$r0,0x0
1c0050c4:	03400000 	andi	$r0,$r0,0x0
1c0050c8:	03400000 	andi	$r0,$r0,0x0
1c0050cc:	03400000 	andi	$r0,$r0,0x0
1c0050d0:	03400000 	andi	$r0,$r0,0x0
1c0050d4:	03400000 	andi	$r0,$r0,0x0
1c0050d8:	03400000 	andi	$r0,$r0,0x0
1c0050dc:	03400000 	andi	$r0,$r0,0x0
1c0050e0:	03400000 	andi	$r0,$r0,0x0
1c0050e4:	03400000 	andi	$r0,$r0,0x0
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
1c005128:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c00512c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005130:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c005134:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0050a8 <MatrixKey+0x1718>
1c005138:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00513c:	50000800 	b	8(0x8) # 1c005144 <MatrixKey+0x17b4>
1c005140:	0015000c 	move	$r12,$r0
1c005144:	00150184 	move	$r4,$r12
1c005148:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c00514c:	28826076 	ld.w	$r22,$r3,152(0x98)
1c005150:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c005154:	4c000020 	jirl	$r0,$r1,0

1c005158 <LEDgree_ON>:
LEDgree_ON():
1c005158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00515c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005160:	29802076 	st.w	$r22,$r3,8(0x8)
1c005164:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005168:	00150005 	move	$r5,$r0
1c00516c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005170:	57c7bbff 	bl	-14408(0xfffc7b8) # 1c001928 <gpio_write>
1c005174:	03400000 	andi	$r0,$r0,0x0
1c005178:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00517c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005180:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005184:	4c000020 	jirl	$r0,$r1,0

1c005188 <LEDgree_OFF>:
LEDgree_OFF():
1c005188:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00518c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005190:	29802076 	st.w	$r22,$r3,8(0x8)
1c005194:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005198:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00519c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0051a0:	57c78bff 	bl	-14456(0xfffc788) # 1c001928 <gpio_write>
1c0051a4:	03400000 	andi	$r0,$r0,0x0
1c0051a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051b4:	4c000020 	jirl	$r0,$r1,0

1c0051b8 <Buzzer>:
Buzzer():
1c0051b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0051bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0051c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0051c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0051c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051cc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0051d0:	57c75bff 	bl	-14504(0xfffc758) # 1c001928 <gpio_write>
1c0051d4:	1400016c 	lu12i.w	$r12,11(0xb)
1c0051d8:	0399958c 	ori	$r12,$r12,0x665
1c0051dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0051e0:	50008400 	b	132(0x84) # 1c005264 <Buzzer+0xac>
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
1c005244:	03400000 	andi	$r0,$r0,0x0
1c005248:	03400000 	andi	$r0,$r0,0x0
1c00524c:	03400000 	andi	$r0,$r0,0x0
1c005250:	03400000 	andi	$r0,$r0,0x0
1c005254:	03400000 	andi	$r0,$r0,0x0
1c005258:	03400000 	andi	$r0,$r0,0x0
1c00525c:	03400000 	andi	$r0,$r0,0x0
1c005260:	03400000 	andi	$r0,$r0,0x0
1c005264:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005268:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00526c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005270:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0051e4 <Buzzer+0x2c>
1c005274:	00150005 	move	$r5,$r0
1c005278:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00527c:	57c6afff 	bl	-14676(0xfffc6ac) # 1c001928 <gpio_write>
1c005280:	1400016c 	lu12i.w	$r12,11(0xb)
1c005284:	0399958c 	ori	$r12,$r12,0x665
1c005288:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00528c:	50008400 	b	132(0x84) # 1c005310 <Buzzer+0x158>
1c005290:	03400000 	andi	$r0,$r0,0x0
1c005294:	03400000 	andi	$r0,$r0,0x0
1c005298:	03400000 	andi	$r0,$r0,0x0
1c00529c:	03400000 	andi	$r0,$r0,0x0
1c0052a0:	03400000 	andi	$r0,$r0,0x0
1c0052a4:	03400000 	andi	$r0,$r0,0x0
1c0052a8:	03400000 	andi	$r0,$r0,0x0
1c0052ac:	03400000 	andi	$r0,$r0,0x0
1c0052b0:	03400000 	andi	$r0,$r0,0x0
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
1c005310:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005314:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005318:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00531c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005290 <Buzzer+0xd8>
1c005320:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005324:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005328:	57c603ff 	bl	-14848(0xfffc600) # 1c001928 <gpio_write>
1c00532c:	1400016c 	lu12i.w	$r12,11(0xb)
1c005330:	0399958c 	ori	$r12,$r12,0x665
1c005334:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005338:	50008400 	b	132(0x84) # 1c0053bc <Buzzer+0x204>
1c00533c:	03400000 	andi	$r0,$r0,0x0
1c005340:	03400000 	andi	$r0,$r0,0x0
1c005344:	03400000 	andi	$r0,$r0,0x0
1c005348:	03400000 	andi	$r0,$r0,0x0
1c00534c:	03400000 	andi	$r0,$r0,0x0
1c005350:	03400000 	andi	$r0,$r0,0x0
1c005354:	03400000 	andi	$r0,$r0,0x0
1c005358:	03400000 	andi	$r0,$r0,0x0
1c00535c:	03400000 	andi	$r0,$r0,0x0
1c005360:	03400000 	andi	$r0,$r0,0x0
1c005364:	03400000 	andi	$r0,$r0,0x0
1c005368:	03400000 	andi	$r0,$r0,0x0
1c00536c:	03400000 	andi	$r0,$r0,0x0
1c005370:	03400000 	andi	$r0,$r0,0x0
1c005374:	03400000 	andi	$r0,$r0,0x0
1c005378:	03400000 	andi	$r0,$r0,0x0
1c00537c:	03400000 	andi	$r0,$r0,0x0
1c005380:	03400000 	andi	$r0,$r0,0x0
1c005384:	03400000 	andi	$r0,$r0,0x0
1c005388:	03400000 	andi	$r0,$r0,0x0
1c00538c:	03400000 	andi	$r0,$r0,0x0
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
1c0053bc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0053c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0053c4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0053c8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00533c <Buzzer+0x184>
1c0053cc:	00150005 	move	$r5,$r0
1c0053d0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0053d4:	57c557ff 	bl	-15020(0xfffc554) # 1c001928 <gpio_write>
1c0053d8:	03400000 	andi	$r0,$r0,0x0
1c0053dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053e8:	4c000020 	jirl	$r0,$r1,0

1c0053ec <Buzzer_one>:
Buzzer_one():
1c0053ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005400:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005404:	57c527ff 	bl	-15068(0xfffc524) # 1c001928 <gpio_write>
1c005408:	1400088c 	lu12i.w	$r12,68(0x44)
1c00540c:	0399798c 	ori	$r12,$r12,0x65e
1c005410:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005414:	50008400 	b	132(0x84) # 1c005498 <Buzzer_one+0xac>
1c005418:	03400000 	andi	$r0,$r0,0x0
1c00541c:	03400000 	andi	$r0,$r0,0x0
1c005420:	03400000 	andi	$r0,$r0,0x0
1c005424:	03400000 	andi	$r0,$r0,0x0
1c005428:	03400000 	andi	$r0,$r0,0x0
1c00542c:	03400000 	andi	$r0,$r0,0x0
1c005430:	03400000 	andi	$r0,$r0,0x0
1c005434:	03400000 	andi	$r0,$r0,0x0
1c005438:	03400000 	andi	$r0,$r0,0x0
1c00543c:	03400000 	andi	$r0,$r0,0x0
1c005440:	03400000 	andi	$r0,$r0,0x0
1c005444:	03400000 	andi	$r0,$r0,0x0
1c005448:	03400000 	andi	$r0,$r0,0x0
1c00544c:	03400000 	andi	$r0,$r0,0x0
1c005450:	03400000 	andi	$r0,$r0,0x0
1c005454:	03400000 	andi	$r0,$r0,0x0
1c005458:	03400000 	andi	$r0,$r0,0x0
1c00545c:	03400000 	andi	$r0,$r0,0x0
1c005460:	03400000 	andi	$r0,$r0,0x0
1c005464:	03400000 	andi	$r0,$r0,0x0
1c005468:	03400000 	andi	$r0,$r0,0x0
1c00546c:	03400000 	andi	$r0,$r0,0x0
1c005470:	03400000 	andi	$r0,$r0,0x0
1c005474:	03400000 	andi	$r0,$r0,0x0
1c005478:	03400000 	andi	$r0,$r0,0x0
1c00547c:	03400000 	andi	$r0,$r0,0x0
1c005480:	03400000 	andi	$r0,$r0,0x0
1c005484:	03400000 	andi	$r0,$r0,0x0
1c005488:	03400000 	andi	$r0,$r0,0x0
1c00548c:	03400000 	andi	$r0,$r0,0x0
1c005490:	03400000 	andi	$r0,$r0,0x0
1c005494:	03400000 	andi	$r0,$r0,0x0
1c005498:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00549c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0054a0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0054a4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005418 <Buzzer_one+0x2c>
1c0054a8:	00150005 	move	$r5,$r0
1c0054ac:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0054b0:	57c47bff 	bl	-15240(0xfffc478) # 1c001928 <gpio_write>
1c0054b4:	03400000 	andi	$r0,$r0,0x0
1c0054b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0054bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0054c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054c4:	4c000020 	jirl	$r0,$r1,0

1c0054c8 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0054c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0054cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0054d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0054d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0054dc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0054e0:	2880018d 	ld.w	$r13,$r12,0
1c0054e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0054e8:	0014b1ac 	and	$r12,$r13,$r12
1c0054ec:	40001180 	beqz	$r12,16(0x10) # 1c0054fc <TIM_GetITStatus+0x34>
1c0054f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0054f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054f8:	50000800 	b	8(0x8) # 1c005500 <TIM_GetITStatus+0x38>
1c0054fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005500:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005504:	00150184 	move	$r4,$r12
1c005508:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00550c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005510:	4c000020 	jirl	$r0,$r1,0

1c005514 <TIM_ClearIT>:
TIM_ClearIT():
1c005514:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005518:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00551c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005520:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005524:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c005528:	2880018e 	ld.w	$r14,$r12,0
1c00552c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c005530:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005534:	001535cd 	or	$r13,$r14,$r13
1c005538:	2980018d 	st.w	$r13,$r12,0
1c00553c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005540:	03800d8c 	ori	$r12,$r12,0x3
1c005544:	2a00018c 	ld.bu	$r12,$r12,0
1c005548:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00554c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005550:	03800d8c 	ori	$r12,$r12,0x3
1c005554:	038005ad 	ori	$r13,$r13,0x1
1c005558:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00555c:	2900018d 	st.b	$r13,$r12,0
1c005560:	03400000 	andi	$r0,$r0,0x0
1c005564:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005568:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00556c:	4c000020 	jirl	$r0,$r1,0

1c005570 <WriteCmd>:
WriteCmd():
1c005570:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005574:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005578:	29806076 	st.w	$r22,$r3,24(0x18)
1c00557c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005580:	0015008c 	move	$r12,$r4
1c005584:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005588:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00558c:	57c65bff 	bl	-14760(0xfffc658) # 1c001be4 <soc_I2C_GenerateSTART>
1c005590:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005594:	57c6dbff 	bl	-14632(0xfffc6d8) # 1c001c6c <soc_I2C_SendData>
1c005598:	57c71fff 	bl	-14564(0xfffc71c) # 1c001cb4 <soc_I2C_wait>
1c00559c:	00150004 	move	$r4,$r0
1c0055a0:	57c6cfff 	bl	-14644(0xfffc6cc) # 1c001c6c <soc_I2C_SendData>
1c0055a4:	57c713ff 	bl	-14576(0xfffc710) # 1c001cb4 <soc_I2C_wait>
1c0055a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055ac:	00150184 	move	$r4,$r12
1c0055b0:	57c6bfff 	bl	-14660(0xfffc6bc) # 1c001c6c <soc_I2C_SendData>
1c0055b4:	57c703ff 	bl	-14592(0xfffc700) # 1c001cb4 <soc_I2C_wait>
1c0055b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055bc:	57c66fff 	bl	-14740(0xfffc66c) # 1c001c28 <soc_I2C_GenerateSTOP>
1c0055c0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055c4:	57c50bff 	bl	-15096(0xfffc508) # 1c001acc <soc_I2C_delay>
1c0055c8:	03400000 	andi	$r0,$r0,0x0
1c0055cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0055d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055d8:	4c000020 	jirl	$r0,$r1,0

1c0055dc <WriteDat>:
WriteDat():
1c0055dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055ec:	0015008c 	move	$r12,$r4
1c0055f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0055f4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055f8:	57c5efff 	bl	-14868(0xfffc5ec) # 1c001be4 <soc_I2C_GenerateSTART>
1c0055fc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005600:	57c66fff 	bl	-14740(0xfffc66c) # 1c001c6c <soc_I2C_SendData>
1c005604:	57c6b3ff 	bl	-14672(0xfffc6b0) # 1c001cb4 <soc_I2C_wait>
1c005608:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00560c:	57c663ff 	bl	-14752(0xfffc660) # 1c001c6c <soc_I2C_SendData>
1c005610:	57c6a7ff 	bl	-14684(0xfffc6a4) # 1c001cb4 <soc_I2C_wait>
1c005614:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005618:	00150184 	move	$r4,$r12
1c00561c:	57c653ff 	bl	-14768(0xfffc650) # 1c001c6c <soc_I2C_SendData>
1c005620:	57c697ff 	bl	-14700(0xfffc694) # 1c001cb4 <soc_I2C_wait>
1c005624:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005628:	57c603ff 	bl	-14848(0xfffc600) # 1c001c28 <soc_I2C_GenerateSTOP>
1c00562c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005630:	57c49fff 	bl	-15204(0xfffc49c) # 1c001acc <soc_I2C_delay>
1c005634:	03400000 	andi	$r0,$r0,0x0
1c005638:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00563c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005640:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005644:	4c000020 	jirl	$r0,$r1,0

1c005648 <OLED_Init>:
OLED_Init():
1c005648:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00564c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005650:	29806076 	st.w	$r22,$r3,24(0x18)
1c005654:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005658:	140016cc 	lu12i.w	$r12,182(0xb6)
1c00565c:	0399418c 	ori	$r12,$r12,0x650
1c005660:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005664:	50008400 	b	132(0x84) # 1c0056e8 <OLED_Init+0xa0>
1c005668:	03400000 	andi	$r0,$r0,0x0
1c00566c:	03400000 	andi	$r0,$r0,0x0
1c005670:	03400000 	andi	$r0,$r0,0x0
1c005674:	03400000 	andi	$r0,$r0,0x0
1c005678:	03400000 	andi	$r0,$r0,0x0
1c00567c:	03400000 	andi	$r0,$r0,0x0
1c005680:	03400000 	andi	$r0,$r0,0x0
1c005684:	03400000 	andi	$r0,$r0,0x0
1c005688:	03400000 	andi	$r0,$r0,0x0
1c00568c:	03400000 	andi	$r0,$r0,0x0
1c005690:	03400000 	andi	$r0,$r0,0x0
1c005694:	03400000 	andi	$r0,$r0,0x0
1c005698:	03400000 	andi	$r0,$r0,0x0
1c00569c:	03400000 	andi	$r0,$r0,0x0
1c0056a0:	03400000 	andi	$r0,$r0,0x0
1c0056a4:	03400000 	andi	$r0,$r0,0x0
1c0056a8:	03400000 	andi	$r0,$r0,0x0
1c0056ac:	03400000 	andi	$r0,$r0,0x0
1c0056b0:	03400000 	andi	$r0,$r0,0x0
1c0056b4:	03400000 	andi	$r0,$r0,0x0
1c0056b8:	03400000 	andi	$r0,$r0,0x0
1c0056bc:	03400000 	andi	$r0,$r0,0x0
1c0056c0:	03400000 	andi	$r0,$r0,0x0
1c0056c4:	03400000 	andi	$r0,$r0,0x0
1c0056c8:	03400000 	andi	$r0,$r0,0x0
1c0056cc:	03400000 	andi	$r0,$r0,0x0
1c0056d0:	03400000 	andi	$r0,$r0,0x0
1c0056d4:	03400000 	andi	$r0,$r0,0x0
1c0056d8:	03400000 	andi	$r0,$r0,0x0
1c0056dc:	03400000 	andi	$r0,$r0,0x0
1c0056e0:	03400000 	andi	$r0,$r0,0x0
1c0056e4:	03400000 	andi	$r0,$r0,0x0
1c0056e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0056f0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0056f4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005668 <OLED_Init+0x20>
1c0056f8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0056fc:	57fe77ff 	bl	-396(0xffffe74) # 1c005570 <WriteCmd>
1c005700:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005704:	57fe6fff 	bl	-404(0xffffe6c) # 1c005570 <WriteCmd>
1c005708:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00570c:	57fe67ff 	bl	-412(0xffffe64) # 1c005570 <WriteCmd>
1c005710:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c005714:	57fe5fff 	bl	-420(0xffffe5c) # 1c005570 <WriteCmd>
1c005718:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c00571c:	57fe57ff 	bl	-428(0xffffe54) # 1c005570 <WriteCmd>
1c005720:	00150004 	move	$r4,$r0
1c005724:	57fe4fff 	bl	-436(0xffffe4c) # 1c005570 <WriteCmd>
1c005728:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00572c:	57fe47ff 	bl	-444(0xffffe44) # 1c005570 <WriteCmd>
1c005730:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005734:	57fe3fff 	bl	-452(0xffffe3c) # 1c005570 <WriteCmd>
1c005738:	02820404 	addi.w	$r4,$r0,129(0x81)
1c00573c:	57fe37ff 	bl	-460(0xffffe34) # 1c005570 <WriteCmd>
1c005740:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005744:	57fe2fff 	bl	-468(0xffffe2c) # 1c005570 <WriteCmd>
1c005748:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c00574c:	57fe27ff 	bl	-476(0xffffe24) # 1c005570 <WriteCmd>
1c005750:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005754:	57fe1fff 	bl	-484(0xffffe1c) # 1c005570 <WriteCmd>
1c005758:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c00575c:	57fe17ff 	bl	-492(0xffffe14) # 1c005570 <WriteCmd>
1c005760:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005764:	57fe0fff 	bl	-500(0xffffe0c) # 1c005570 <WriteCmd>
1c005768:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c00576c:	57fe07ff 	bl	-508(0xffffe04) # 1c005570 <WriteCmd>
1c005770:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005774:	57fdffff 	bl	-516(0xffffdfc) # 1c005570 <WriteCmd>
1c005778:	00150004 	move	$r4,$r0
1c00577c:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005570 <WriteCmd>
1c005780:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005784:	57fdefff 	bl	-532(0xffffdec) # 1c005570 <WriteCmd>
1c005788:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c00578c:	57fde7ff 	bl	-540(0xffffde4) # 1c005570 <WriteCmd>
1c005790:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005794:	57fddfff 	bl	-548(0xffffddc) # 1c005570 <WriteCmd>
1c005798:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00579c:	57fdd7ff 	bl	-556(0xffffdd4) # 1c005570 <WriteCmd>
1c0057a0:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0057a4:	57fdcfff 	bl	-564(0xffffdcc) # 1c005570 <WriteCmd>
1c0057a8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0057ac:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005570 <WriteCmd>
1c0057b0:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c0057b4:	57fdbfff 	bl	-580(0xffffdbc) # 1c005570 <WriteCmd>
1c0057b8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0057bc:	57fdb7ff 	bl	-588(0xffffdb4) # 1c005570 <WriteCmd>
1c0057c0:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c0057c4:	57fdafff 	bl	-596(0xffffdac) # 1c005570 <WriteCmd>
1c0057c8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0057cc:	57fda7ff 	bl	-604(0xffffda4) # 1c005570 <WriteCmd>
1c0057d0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0057d4:	57fd9fff 	bl	-612(0xffffd9c) # 1c005570 <WriteCmd>
1c0057d8:	03400000 	andi	$r0,$r0,0x0
1c0057dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0057e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0057e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0057e8:	4c000020 	jirl	$r0,$r1,0

1c0057ec <OLED_SetPos>:
OLED_SetPos():
1c0057ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0057f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0057f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0057f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0057fc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005800:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c005804:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005808:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00580c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005810:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005814:	00150184 	move	$r4,$r12
1c005818:	57fd5bff 	bl	-680(0xffffd58) # 1c005570 <WriteCmd>
1c00581c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005820:	0044918c 	srli.w	$r12,$r12,0x4
1c005824:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005828:	03403d8c 	andi	$r12,$r12,0xf
1c00582c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005830:	0380418c 	ori	$r12,$r12,0x10
1c005834:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005838:	00150184 	move	$r4,$r12
1c00583c:	57fd37ff 	bl	-716(0xffffd34) # 1c005570 <WriteCmd>
1c005840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005844:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005848:	0340398c 	andi	$r12,$r12,0xe
1c00584c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005850:	0380058c 	ori	$r12,$r12,0x1
1c005854:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005858:	00150184 	move	$r4,$r12
1c00585c:	57fd17ff 	bl	-748(0xffffd14) # 1c005570 <WriteCmd>
1c005860:	03400000 	andi	$r0,$r0,0x0
1c005864:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005868:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00586c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005870:	4c000020 	jirl	$r0,$r1,0

1c005874 <OLED_Fill>:
OLED_Fill():
1c005874:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005878:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00587c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005880:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005884:	0015008c 	move	$r12,$r4
1c005888:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00588c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005890:	50006400 	b	100(0x64) # 1c0058f4 <OLED_Fill+0x80>
1c005894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005898:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00589c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0058a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0058a4:	00150184 	move	$r4,$r12
1c0058a8:	57fccbff 	bl	-824(0xffffcc8) # 1c005570 <WriteCmd>
1c0058ac:	00150004 	move	$r4,$r0
1c0058b0:	57fcc3ff 	bl	-832(0xffffcc0) # 1c005570 <WriteCmd>
1c0058b4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0058b8:	57fcbbff 	bl	-840(0xffffcb8) # 1c005570 <WriteCmd>
1c0058bc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0058c0:	50001c00 	b	28(0x1c) # 1c0058dc <OLED_Fill+0x68>
1c0058c4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0058c8:	00150184 	move	$r4,$r12
1c0058cc:	57fd13ff 	bl	-752(0xffffd10) # 1c0055dc <WriteDat>
1c0058d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0058d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0058dc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0058e0:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c0058e4:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c0058c4 <OLED_Fill+0x50>
1c0058e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0058f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0058f8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0058fc:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c005894 <OLED_Fill+0x20>
1c005900:	03400000 	andi	$r0,$r0,0x0
1c005904:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005908:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00590c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005910:	4c000020 	jirl	$r0,$r1,0

1c005914 <OLED_CLS>:
OLED_CLS():
1c005914:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005918:	29803061 	st.w	$r1,$r3,12(0xc)
1c00591c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005920:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005924:	00150004 	move	$r4,$r0
1c005928:	57ff4fff 	bl	-180(0xfffff4c) # 1c005874 <OLED_Fill>
1c00592c:	03400000 	andi	$r0,$r0,0x0
1c005930:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005934:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005938:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00593c:	4c000020 	jirl	$r0,$r1,0

1c005940 <OLED_ShowStr>:
OLED_ShowStr():
1c005940:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005944:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005948:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00594c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005950:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005954:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005958:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00595c:	001500ec 	move	$r12,$r7
1c005960:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c005964:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005968:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00596c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005970:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c005974:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005978:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c005a2c <OLED_ShowStr+0xec>
1c00597c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005980:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c005b44 <OLED_ShowStr+0x204>
1c005984:	5001d800 	b	472(0x1d8) # 1c005b5c <OLED_ShowStr+0x21c>
1c005988:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00598c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005990:	001031ac 	add.w	$r12,$r13,$r12
1c005994:	2a00018c 	ld.bu	$r12,$r12,0
1c005998:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00599c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0059a0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0059a4:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c0059a8:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0059bc <OLED_ShowStr+0x7c>
1c0059ac:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0059b0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0059b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059b8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0059bc:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0059c0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0059c4:	57fe2bff 	bl	-472(0xffffe28) # 1c0057ec <OLED_SetPos>
1c0059c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0059cc:	50003c00 	b	60(0x3c) # 1c005a08 <OLED_ShowStr+0xc8>
1c0059d0:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c0059d4:	02a251ad 	addi.w	$r13,$r13,-1900(0x894)
1c0059d8:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0059dc:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0059e0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0059e4:	001031ad 	add.w	$r13,$r13,$r12
1c0059e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059ec:	001031ac 	add.w	$r12,$r13,$r12
1c0059f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0059f4:	00150184 	move	$r4,$r12
1c0059f8:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c0055dc <WriteDat>
1c0059fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a0c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005a10:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0059d0 <OLED_ShowStr+0x90>
1c005a14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005a18:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005a1c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005a20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a28:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005a2c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005a30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a34:	001031ac 	add.w	$r12,$r13,$r12
1c005a38:	2a00018c 	ld.bu	$r12,$r12,0
1c005a3c:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c005988 <OLED_ShowStr+0x48>
1c005a40:	50011c00 	b	284(0x11c) # 1c005b5c <OLED_ShowStr+0x21c>
1c005a44:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005a48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a4c:	001031ac 	add.w	$r12,$r13,$r12
1c005a50:	2a00018c 	ld.bu	$r12,$r12,0
1c005a54:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005a5c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005a60:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c005a64:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005a78 <OLED_ShowStr+0x138>
1c005a68:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005a6c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a74:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005a78:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005a7c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005a80:	57fd6fff 	bl	-660(0xffffd6c) # 1c0057ec <OLED_SetPos>
1c005a84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a88:	50003800 	b	56(0x38) # 1c005ac0 <OLED_ShowStr+0x180>
1c005a8c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005a90:	0040918d 	slli.w	$r13,$r12,0x4
1c005a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a98:	001031ac 	add.w	$r12,$r13,$r12
1c005a9c:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c005aa0:	02a7c1ad 	addi.w	$r13,$r13,-1552(0x9f0)
1c005aa4:	001031ac 	add.w	$r12,$r13,$r12
1c005aa8:	2a00018c 	ld.bu	$r12,$r12,0
1c005aac:	00150184 	move	$r4,$r12
1c005ab0:	57fb2fff 	bl	-1236(0xffffb2c) # 1c0055dc <WriteDat>
1c005ab4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ab8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005abc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005ac0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ac4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005ac8:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005a8c <OLED_ShowStr+0x14c>
1c005acc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ad0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ad4:	00150185 	move	$r5,$r12
1c005ad8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005adc:	57fd13ff 	bl	-752(0xffffd10) # 1c0057ec <OLED_SetPos>
1c005ae0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ae4:	50003c00 	b	60(0x3c) # 1c005b20 <OLED_ShowStr+0x1e0>
1c005ae8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005aec:	0040918d 	slli.w	$r13,$r12,0x4
1c005af0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af4:	001031ac 	add.w	$r12,$r13,$r12
1c005af8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005afc:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c005b00:	02a641ad 	addi.w	$r13,$r13,-1648(0x990)
1c005b04:	001031ac 	add.w	$r12,$r13,$r12
1c005b08:	2a00018c 	ld.bu	$r12,$r12,0
1c005b0c:	00150184 	move	$r4,$r12
1c005b10:	57facfff 	bl	-1332(0xffffacc) # 1c0055dc <WriteDat>
1c005b14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b20:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005b24:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005b28:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005ae8 <OLED_ShowStr+0x1a8>
1c005b2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b30:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005b34:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005b38:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b44:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005b48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b4c:	001031ac 	add.w	$r12,$r13,$r12
1c005b50:	2a00018c 	ld.bu	$r12,$r12,0
1c005b54:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c005a44 <OLED_ShowStr+0x104>
1c005b58:	03400000 	andi	$r0,$r0,0x0
1c005b5c:	03400000 	andi	$r0,$r0,0x0
1c005b60:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b64:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b68:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b6c:	4c000020 	jirl	$r0,$r1,0

1c005b70 <OLED_ShowCN>:
OLED_ShowCN():
1c005b70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005b78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005b7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005b80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005b84:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005b88:	001500cc 	move	$r12,$r6
1c005b8c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005b90:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b94:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b98:	0040958c 	slli.w	$r12,$r12,0x5
1c005b9c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005ba0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005ba4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005ba8:	57fc47ff 	bl	-956(0xffffc44) # 1c0057ec <OLED_SetPos>
1c005bac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005bb0:	50003800 	b	56(0x38) # 1c005be8 <OLED_ShowCN+0x78>
1c005bb4:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005bb8:	0291f1ad 	addi.w	$r13,$r13,1148(0x47c)
1c005bbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005bc0:	001031ac 	add.w	$r12,$r13,$r12
1c005bc4:	2a00018c 	ld.bu	$r12,$r12,0
1c005bc8:	00150184 	move	$r4,$r12
1c005bcc:	57fa13ff 	bl	-1520(0xffffa10) # 1c0055dc <WriteDat>
1c005bd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005bd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005bdc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005be0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005be4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005be8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005bec:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005bf0:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005bb4 <OLED_ShowCN+0x44>
1c005bf4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bf8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bfc:	00150185 	move	$r5,$r12
1c005c00:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005c04:	57fbebff 	bl	-1048(0xffffbe8) # 1c0057ec <OLED_SetPos>
1c005c08:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005c0c:	50003800 	b	56(0x38) # 1c005c44 <OLED_ShowCN+0xd4>
1c005c10:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005c14:	029081ad 	addi.w	$r13,$r13,1056(0x420)
1c005c18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005c1c:	001031ac 	add.w	$r12,$r13,$r12
1c005c20:	2a00018c 	ld.bu	$r12,$r12,0
1c005c24:	00150184 	move	$r4,$r12
1c005c28:	57f9b7ff 	bl	-1612(0xffff9b4) # 1c0055dc <WriteDat>
1c005c2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005c30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c34:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005c38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c44:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005c48:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005c4c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005c10 <OLED_ShowCN+0xa0>
1c005c50:	03400000 	andi	$r0,$r0,0x0
1c005c54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c60:	4c000020 	jirl	$r0,$r1,0

1c005c64 <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c005c64:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c68:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005c6c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005c70:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c74:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c78:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005c7c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005c80:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005c84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c88:	50004800 	b	72(0x48) # 1c005cd0 <OLED_ShowCN_STR+0x6c>
1c005c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c90:	0040918d 	slli.w	$r13,$r12,0x4
1c005c94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c98:	001031ae 	add.w	$r14,$r13,$r12
1c005c9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ca0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005ca4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005ca8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005cac:	001031ac 	add.w	$r12,$r13,$r12
1c005cb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005cb4:	00150186 	move	$r6,$r12
1c005cb8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005cbc:	001501c4 	move	$r4,$r14
1c005cc0:	57feb3ff 	bl	-336(0xffffeb0) # 1c005b70 <OLED_ShowCN>
1c005cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005cd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005cd4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005cd8:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c005c8c <OLED_ShowCN_STR+0x28>
1c005cdc:	03400000 	andi	$r0,$r0,0x0
1c005ce0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ce4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ce8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005cec:	4c000020 	jirl	$r0,$r1,0

1c005cf0 <OLED_DrawBMP>:
OLED_DrawBMP():
1c005cf0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005cf4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005cf8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005cfc:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005d00:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d04:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d08:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005d0c:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005d10:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c005d14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d18:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005d1c:	03401d8c 	andi	$r12,$r12,0x7
1c005d20:	44001580 	bnez	$r12,20(0x14) # 1c005d34 <OLED_DrawBMP+0x44>
1c005d24:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005d28:	00448d8c 	srli.w	$r12,$r12,0x3
1c005d2c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d30:	50001400 	b	20(0x14) # 1c005d44 <OLED_DrawBMP+0x54>
1c005d34:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005d38:	00448d8c 	srli.w	$r12,$r12,0x3
1c005d3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d40:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d44:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d48:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d4c:	50006000 	b	96(0x60) # 1c005dac <OLED_DrawBMP+0xbc>
1c005d50:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c005d54:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005d58:	57fa97ff 	bl	-1388(0xffffa94) # 1c0057ec <OLED_SetPos>
1c005d5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005d64:	50003000 	b	48(0x30) # 1c005d94 <OLED_DrawBMP+0xa4>
1c005d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d6c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005d70:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005d74:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c005d78:	001031ac 	add.w	$r12,$r13,$r12
1c005d7c:	2a00018c 	ld.bu	$r12,$r12,0
1c005d80:	00150184 	move	$r4,$r12
1c005d84:	57f85bff 	bl	-1960(0xffff858) # 1c0055dc <WriteDat>
1c005d88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005d8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d90:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005d94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005d98:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005d9c:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c005d68 <OLED_DrawBMP+0x78>
1c005da0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005da4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005da8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005dac:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005db0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005db4:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c005d50 <OLED_DrawBMP+0x60>
1c005db8:	03400000 	andi	$r0,$r0,0x0
1c005dbc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005dc0:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005dc4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005dc8:	4c000020 	jirl	$r0,$r1,0

1c005dcc <OLED_ShowChar>:
OLED_ShowChar():
1c005dcc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005dd0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005dd4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005dd8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ddc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005de0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005de4:	001500cc 	move	$r12,$r6
1c005de8:	001500ed 	move	$r13,$r7
1c005dec:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005df0:	001501ac 	move	$r12,$r13
1c005df4:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c005df8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005dfc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e00:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005e04:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005e08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005e0c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005e10:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c005e14:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005e28 <OLED_ShowChar+0x5c>
1c005e18:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005e1c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e20:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005e24:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005e28:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c005e2c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005e30:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c005eec <OLED_ShowChar+0x120>
1c005e34:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005e38:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005e3c:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c0057ec <OLED_SetPos>
1c005e40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e44:	50003800 	b	56(0x38) # 1c005e7c <OLED_ShowChar+0xb0>
1c005e48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e4c:	0040918d 	slli.w	$r13,$r12,0x4
1c005e50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e54:	001031ac 	add.w	$r12,$r13,$r12
1c005e58:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005e5c:	0298d1ad 	addi.w	$r13,$r13,1588(0x634)
1c005e60:	001031ac 	add.w	$r12,$r13,$r12
1c005e64:	2a00018c 	ld.bu	$r12,$r12,0
1c005e68:	00150184 	move	$r4,$r12
1c005e6c:	57f773ff 	bl	-2192(0xffff770) # 1c0055dc <WriteDat>
1c005e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e7c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e80:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005e84:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005e48 <OLED_ShowChar+0x7c>
1c005e88:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e90:	00150185 	move	$r5,$r12
1c005e94:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005e98:	57f957ff 	bl	-1708(0xffff954) # 1c0057ec <OLED_SetPos>
1c005e9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ea0:	50003c00 	b	60(0x3c) # 1c005edc <OLED_ShowChar+0x110>
1c005ea4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ea8:	0040918d 	slli.w	$r13,$r12,0x4
1c005eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005eb0:	001031ac 	add.w	$r12,$r13,$r12
1c005eb4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005eb8:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005ebc:	029751ad 	addi.w	$r13,$r13,1492(0x5d4)
1c005ec0:	001031ac 	add.w	$r12,$r13,$r12
1c005ec4:	2a00018c 	ld.bu	$r12,$r12,0
1c005ec8:	00150184 	move	$r4,$r12
1c005ecc:	57f713ff 	bl	-2288(0xffff710) # 1c0055dc <WriteDat>
1c005ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ed4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ed8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005edc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ee0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005ee4:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005ea4 <OLED_ShowChar+0xd8>
1c005ee8:	50005c00 	b	92(0x5c) # 1c005f44 <OLED_ShowChar+0x178>
1c005eec:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005ef0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005ef4:	57f8fbff 	bl	-1800(0xffff8f8) # 1c0057ec <OLED_SetPos>
1c005ef8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005efc:	50003c00 	b	60(0x3c) # 1c005f38 <OLED_ShowChar+0x16c>
1c005f00:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005f04:	028d91ad 	addi.w	$r13,$r13,868(0x364)
1c005f08:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c005f0c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005f10:	001c31cc 	mul.w	$r12,$r14,$r12
1c005f14:	001031ad 	add.w	$r13,$r13,$r12
1c005f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f1c:	001031ac 	add.w	$r12,$r13,$r12
1c005f20:	2a00018c 	ld.bu	$r12,$r12,0
1c005f24:	00150184 	move	$r4,$r12
1c005f28:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c0055dc <WriteDat>
1c005f2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f38:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005f3c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005f40:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005f00 <OLED_ShowChar+0x134>
1c005f44:	03400000 	andi	$r0,$r0,0x0
1c005f48:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f4c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f50:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f54:	4c000020 	jirl	$r0,$r1,0

1c005f58 <oled_pow>:
oled_pow():
1c005f58:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f5c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005f60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f64:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f68:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f6c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f74:	50001400 	b	20(0x14) # 1c005f88 <oled_pow+0x30>
1c005f78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005f7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f80:	001c31ac 	mul.w	$r12,$r13,$r12
1c005f84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f88:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f8c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005f90:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c005f94:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005f78 <oled_pow+0x20>
1c005f98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f9c:	00150184 	move	$r4,$r12
1c005fa0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005fa4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fa8:	4c000020 	jirl	$r0,$r1,0

1c005fac <OLED_ShowNum>:
OLED_ShowNum():
1c005fac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005fb0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005fb4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005fb8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005fbc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005fc0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005fc4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005fc8:	001500ec 	move	$r12,$r7
1c005fcc:	0015010d 	move	$r13,$r8
1c005fd0:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c005fd4:	001501ac 	move	$r12,$r13
1c005fd8:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c005fdc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005fe0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005fe4:	50010400 	b	260(0x104) # 1c0060e8 <OLED_ShowNum+0x13c>
1c005fe8:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c005fec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ff0:	001131ac 	sub.w	$r12,$r13,$r12
1c005ff4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005ff8:	00150185 	move	$r5,$r12
1c005ffc:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006000:	57ff5bff 	bl	-168(0xfffff58) # 1c005f58 <oled_pow>
1c006004:	0015008d 	move	$r13,$r4
1c006008:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00600c:	0021358e 	div.wu	$r14,$r12,$r13
1c006010:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006018 <OLED_ShowNum+0x6c>
1c006014:	002a0007 	break	0x7
1c006018:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00601c:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c006020:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006028 <OLED_ShowNum+0x7c>
1c006024:	002a0007 	break	0x7
1c006028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00602c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006030:	44006580 	bnez	$r12,100(0x64) # 1c006094 <OLED_ShowNum+0xe8>
1c006034:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c006038:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00603c:	0015018d 	move	$r13,$r12
1c006040:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006044:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c006094 <OLED_ShowNum+0xe8>
1c006048:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00604c:	44004180 	bnez	$r12,64(0x40) # 1c00608c <OLED_ShowNum+0xe0>
1c006050:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c006054:	0044858c 	srli.w	$r12,$r12,0x1
1c006058:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00605c:	0015018d 	move	$r13,$r12
1c006060:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006064:	001c31ad 	mul.w	$r13,$r13,$r12
1c006068:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00606c:	001031ac 	add.w	$r12,$r13,$r12
1c006070:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c006074:	001501a7 	move	$r7,$r13
1c006078:	02808006 	addi.w	$r6,$r0,32(0x20)
1c00607c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c006080:	00150184 	move	$r4,$r12
1c006084:	57fd4bff 	bl	-696(0xffffd48) # 1c005dcc <OLED_ShowChar>
1c006088:	50005400 	b	84(0x54) # 1c0060dc <OLED_ShowNum+0x130>
1c00608c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006090:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006094:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c006098:	0044858c 	srli.w	$r12,$r12,0x1
1c00609c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0060a0:	0015018d 	move	$r13,$r12
1c0060a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0060a8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0060ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0060b0:	001031ad 	add.w	$r13,$r13,$r12
1c0060b4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0060b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0060bc:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0060c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0060c4:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c0060c8:	001501c7 	move	$r7,$r14
1c0060cc:	00150186 	move	$r6,$r12
1c0060d0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0060d4:	001501a4 	move	$r4,$r13
1c0060d8:	57fcf7ff 	bl	-780(0xffffcf4) # 1c005dcc <OLED_ShowChar>
1c0060dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0060e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0060e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0060e8:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0060ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0060f0:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c005fe8 <OLED_ShowNum+0x3c>
1c0060f4:	03400000 	andi	$r0,$r0,0x0
1c0060f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0060fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006100:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006104:	4c000020 	jirl	$r0,$r1,0

1c006108 <my_GPIO_Init>:
my_GPIO_Init():
1c006108:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00610c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006110:	29806076 	st.w	$r22,$r3,24(0x18)
1c006114:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006118:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00611c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006120:	57b713ff 	bl	-18672(0xfffb710) # 1c001830 <gpio_init>
1c006124:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006128:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00612c:	57b707ff 	bl	-18684(0xfffb704) # 1c001830 <gpio_init>
1c006130:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006134:	02804804 	addi.w	$r4,$r0,18(0x12)
1c006138:	57b6fbff 	bl	-18696(0xfffb6f8) # 1c001830 <gpio_init>
1c00613c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006140:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c006144:	57b6efff 	bl	-18708(0xfffb6ec) # 1c001830 <gpio_init>
1c006148:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00614c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006150:	57b6e3ff 	bl	-18720(0xfffb6e0) # 1c001830 <gpio_init>
1c006154:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006158:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00615c:	57b6d7ff 	bl	-18732(0xfffb6d4) # 1c001830 <gpio_init>
1c006160:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006164:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006168:	57b6cbff 	bl	-18744(0xfffb6c8) # 1c001830 <gpio_init>
1c00616c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006170:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006174:	57b6bfff 	bl	-18756(0xfffb6bc) # 1c001830 <gpio_init>
1c006178:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00617c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006180:	57b6b3ff 	bl	-18768(0xfffb6b0) # 1c001830 <gpio_init>
1c006184:	00150005 	move	$r5,$r0
1c006188:	02809804 	addi.w	$r4,$r0,38(0x26)
1c00618c:	57b6a7ff 	bl	-18780(0xfffb6a4) # 1c001830 <gpio_init>
1c006190:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006194:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006198:	57b69bff 	bl	-18792(0xfffb698) # 1c001830 <gpio_init>
1c00619c:	00150005 	move	$r5,$r0
1c0061a0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0061a4:	57b68fff 	bl	-18804(0xfffb68c) # 1c001830 <gpio_init>
1c0061a8:	00150005 	move	$r5,$r0
1c0061ac:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0061b0:	57b683ff 	bl	-18816(0xfffb680) # 1c001830 <gpio_init>
1c0061b4:	00150005 	move	$r5,$r0
1c0061b8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0061bc:	57b677ff 	bl	-18828(0xfffb674) # 1c001830 <gpio_init>
1c0061c0:	00150005 	move	$r5,$r0
1c0061c4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0061c8:	57b66bff 	bl	-18840(0xfffb668) # 1c001830 <gpio_init>
1c0061cc:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0061d0:	03bfc98c 	ori	$r12,$r12,0xff2
1c0061d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0061d8:	50008400 	b	132(0x84) # 1c00625c <my_GPIO_Init+0x154>
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
1c006228:	03400000 	andi	$r0,$r0,0x0
1c00622c:	03400000 	andi	$r0,$r0,0x0
1c006230:	03400000 	andi	$r0,$r0,0x0
1c006234:	03400000 	andi	$r0,$r0,0x0
1c006238:	03400000 	andi	$r0,$r0,0x0
1c00623c:	03400000 	andi	$r0,$r0,0x0
1c006240:	03400000 	andi	$r0,$r0,0x0
1c006244:	03400000 	andi	$r0,$r0,0x0
1c006248:	03400000 	andi	$r0,$r0,0x0
1c00624c:	03400000 	andi	$r0,$r0,0x0
1c006250:	03400000 	andi	$r0,$r0,0x0
1c006254:	03400000 	andi	$r0,$r0,0x0
1c006258:	03400000 	andi	$r0,$r0,0x0
1c00625c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006260:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006264:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006268:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0061dc <my_GPIO_Init+0xd4>
1c00626c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006270:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006274:	57b6b7ff 	bl	-18764(0xfffb6b4) # 1c001928 <gpio_write>
1c006278:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00627c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006280:	57b6abff 	bl	-18776(0xfffb6a8) # 1c001928 <gpio_write>
1c006284:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006288:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00628c:	57b69fff 	bl	-18788(0xfffb69c) # 1c001928 <gpio_write>
1c006290:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006294:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006298:	57b693ff 	bl	-18800(0xfffb690) # 1c001928 <gpio_write>
1c00629c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0062a0:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0062a4:	57b687ff 	bl	-18812(0xfffb684) # 1c001928 <gpio_write>
1c0062a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0062ac:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0062b0:	57b67bff 	bl	-18824(0xfffb678) # 1c001928 <gpio_write>
1c0062b4:	00150005 	move	$r5,$r0
1c0062b8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0062bc:	57b66fff 	bl	-18836(0xfffb66c) # 1c001928 <gpio_write>
1c0062c0:	03400000 	andi	$r0,$r0,0x0
1c0062c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0062c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0062cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0062d0:	4c000020 	jirl	$r0,$r1,0

1c0062d4 <my_I2C_Init>:
my_I2C_Init():
1c0062d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0062d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0062dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0062e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0062e4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0062e8:	00150184 	move	$r4,$r12
1c0062ec:	57b817ff 	bl	-18412(0xfffb814) # 1c001b00 <soc_I2C_StructInit>
1c0062f0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0062f4:	00150184 	move	$r4,$r12
1c0062f8:	57b853ff 	bl	-18352(0xfffb850) # 1c001b48 <soc_I2C_Init>
1c0062fc:	1400016c 	lu12i.w	$r12,11(0xb)
1c006300:	0399958c 	ori	$r12,$r12,0x665
1c006304:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006308:	50008400 	b	132(0x84) # 1c00638c <my_I2C_Init+0xb8>
1c00630c:	03400000 	andi	$r0,$r0,0x0
1c006310:	03400000 	andi	$r0,$r0,0x0
1c006314:	03400000 	andi	$r0,$r0,0x0
1c006318:	03400000 	andi	$r0,$r0,0x0
1c00631c:	03400000 	andi	$r0,$r0,0x0
1c006320:	03400000 	andi	$r0,$r0,0x0
1c006324:	03400000 	andi	$r0,$r0,0x0
1c006328:	03400000 	andi	$r0,$r0,0x0
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
1c00638c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006390:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006394:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006398:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00630c <my_I2C_Init+0x38>
1c00639c:	03400000 	andi	$r0,$r0,0x0
1c0063a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0063a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0063a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0063ac:	4c000020 	jirl	$r0,$r1,0

1c0063b0 <my_PWM_Init>:
my_PWM_Init():
1c0063b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0063b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0063b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0063bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0063c0:	57b97fff 	bl	-18052(0xfffb97c) # 1c001d3c <pwm_steering_engine_init>
1c0063c4:	1400016c 	lu12i.w	$r12,11(0xb)
1c0063c8:	0399958c 	ori	$r12,$r12,0x665
1c0063cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0063d0:	50008400 	b	132(0x84) # 1c006454 <my_PWM_Init+0xa4>
1c0063d4:	03400000 	andi	$r0,$r0,0x0
1c0063d8:	03400000 	andi	$r0,$r0,0x0
1c0063dc:	03400000 	andi	$r0,$r0,0x0
1c0063e0:	03400000 	andi	$r0,$r0,0x0
1c0063e4:	03400000 	andi	$r0,$r0,0x0
1c0063e8:	03400000 	andi	$r0,$r0,0x0
1c0063ec:	03400000 	andi	$r0,$r0,0x0
1c0063f0:	03400000 	andi	$r0,$r0,0x0
1c0063f4:	03400000 	andi	$r0,$r0,0x0
1c0063f8:	03400000 	andi	$r0,$r0,0x0
1c0063fc:	03400000 	andi	$r0,$r0,0x0
1c006400:	03400000 	andi	$r0,$r0,0x0
1c006404:	03400000 	andi	$r0,$r0,0x0
1c006408:	03400000 	andi	$r0,$r0,0x0
1c00640c:	03400000 	andi	$r0,$r0,0x0
1c006410:	03400000 	andi	$r0,$r0,0x0
1c006414:	03400000 	andi	$r0,$r0,0x0
1c006418:	03400000 	andi	$r0,$r0,0x0
1c00641c:	03400000 	andi	$r0,$r0,0x0
1c006420:	03400000 	andi	$r0,$r0,0x0
1c006424:	03400000 	andi	$r0,$r0,0x0
1c006428:	03400000 	andi	$r0,$r0,0x0
1c00642c:	03400000 	andi	$r0,$r0,0x0
1c006430:	03400000 	andi	$r0,$r0,0x0
1c006434:	03400000 	andi	$r0,$r0,0x0
1c006438:	03400000 	andi	$r0,$r0,0x0
1c00643c:	03400000 	andi	$r0,$r0,0x0
1c006440:	03400000 	andi	$r0,$r0,0x0
1c006444:	03400000 	andi	$r0,$r0,0x0
1c006448:	03400000 	andi	$r0,$r0,0x0
1c00644c:	03400000 	andi	$r0,$r0,0x0
1c006450:	03400000 	andi	$r0,$r0,0x0
1c006454:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006458:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00645c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006460:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0063d4 <my_PWM_Init+0x24>
1c006464:	03400000 	andi	$r0,$r0,0x0
1c006468:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00646c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006470:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006474:	4c000020 	jirl	$r0,$r1,0

1c006478 <my_SPI_Init>:
my_SPI_Init():
1c006478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00647c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006480:	29802076 	st.w	$r22,$r3,8(0x8)
1c006484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006488:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00648c:	57b9bbff 	bl	-17992(0xfffb9b8) # 1c001e44 <soc_Spi_Init>
1c006490:	03400000 	andi	$r0,$r0,0x0
1c006494:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006498:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00649c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0064a0:	4c000020 	jirl	$r0,$r1,0

1c0064a4 <Init_main>:
Init_main():
1c0064a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0064ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0064b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0064b4:	57d2afff 	bl	-11604(0xfffd2ac) # 1c003760 <SG90_Init>
1c0064b8:	57f193ff 	bl	-3696(0xffff190) # 1c005648 <OLED_Init>
1c0064bc:	57f45bff 	bl	-2984(0xffff458) # 1c005914 <OLED_CLS>
1c0064c0:	54001c00 	bl	28(0x1c) # 1c0064dc <RC522_Init>
1c0064c4:	57bf6bff 	bl	-16536(0xfffbf68) # 1c00242c <as608_init>
1c0064c8:	03400000 	andi	$r0,$r0,0x0
1c0064cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0064d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0064d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0064d8:	4c000020 	jirl	$r0,$r1,0

1c0064dc <RC522_Init>:
RC522_Init():
1c0064dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0064e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0064e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0064e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0064ec:	1400016c 	lu12i.w	$r12,11(0xb)
1c0064f0:	0399958c 	ori	$r12,$r12,0x665
1c0064f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064f8:	50008400 	b	132(0x84) # 1c00657c <RC522_Init+0xa0>
1c0064fc:	03400000 	andi	$r0,$r0,0x0
1c006500:	03400000 	andi	$r0,$r0,0x0
1c006504:	03400000 	andi	$r0,$r0,0x0
1c006508:	03400000 	andi	$r0,$r0,0x0
1c00650c:	03400000 	andi	$r0,$r0,0x0
1c006510:	03400000 	andi	$r0,$r0,0x0
1c006514:	03400000 	andi	$r0,$r0,0x0
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
1c00657c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006580:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006584:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006588:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0064fc <RC522_Init+0x20>
1c00658c:	5405fc00 	bl	1532(0x5fc) # 1c006b88 <PcdReset>
1c006590:	1400004c 	lu12i.w	$r12,2(0x2)
1c006594:	0391ed8c 	ori	$r12,$r12,0x47b
1c006598:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00659c:	50008400 	b	132(0x84) # 1c006620 <RC522_Init+0x144>
1c0065a0:	03400000 	andi	$r0,$r0,0x0
1c0065a4:	03400000 	andi	$r0,$r0,0x0
1c0065a8:	03400000 	andi	$r0,$r0,0x0
1c0065ac:	03400000 	andi	$r0,$r0,0x0
1c0065b0:	03400000 	andi	$r0,$r0,0x0
1c0065b4:	03400000 	andi	$r0,$r0,0x0
1c0065b8:	03400000 	andi	$r0,$r0,0x0
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
1c006620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006624:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006628:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00662c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0065a0 <RC522_Init+0xc4>
1c006630:	54055800 	bl	1368(0x558) # 1c006b88 <PcdReset>
1c006634:	1400004c 	lu12i.w	$r12,2(0x2)
1c006638:	0391ed8c 	ori	$r12,$r12,0x47b
1c00663c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006640:	50008400 	b	132(0x84) # 1c0066c4 <RC522_Init+0x1e8>
1c006644:	03400000 	andi	$r0,$r0,0x0
1c006648:	03400000 	andi	$r0,$r0,0x0
1c00664c:	03400000 	andi	$r0,$r0,0x0
1c006650:	03400000 	andi	$r0,$r0,0x0
1c006654:	03400000 	andi	$r0,$r0,0x0
1c006658:	03400000 	andi	$r0,$r0,0x0
1c00665c:	03400000 	andi	$r0,$r0,0x0
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
1c0066c4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0066c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0066cc:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0066d0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006644 <RC522_Init+0x168>
1c0066d4:	54082c00 	bl	2092(0x82c) # 1c006f00 <PcdAntennaOff>
1c0066d8:	1400004c 	lu12i.w	$r12,2(0x2)
1c0066dc:	0391ed8c 	ori	$r12,$r12,0x47b
1c0066e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0066e4:	50008400 	b	132(0x84) # 1c006768 <RC522_Init+0x28c>
1c0066e8:	03400000 	andi	$r0,$r0,0x0
1c0066ec:	03400000 	andi	$r0,$r0,0x0
1c0066f0:	03400000 	andi	$r0,$r0,0x0
1c0066f4:	03400000 	andi	$r0,$r0,0x0
1c0066f8:	03400000 	andi	$r0,$r0,0x0
1c0066fc:	03400000 	andi	$r0,$r0,0x0
1c006700:	03400000 	andi	$r0,$r0,0x0
1c006704:	03400000 	andi	$r0,$r0,0x0
1c006708:	03400000 	andi	$r0,$r0,0x0
1c00670c:	03400000 	andi	$r0,$r0,0x0
1c006710:	03400000 	andi	$r0,$r0,0x0
1c006714:	03400000 	andi	$r0,$r0,0x0
1c006718:	03400000 	andi	$r0,$r0,0x0
1c00671c:	03400000 	andi	$r0,$r0,0x0
1c006720:	03400000 	andi	$r0,$r0,0x0
1c006724:	03400000 	andi	$r0,$r0,0x0
1c006728:	03400000 	andi	$r0,$r0,0x0
1c00672c:	03400000 	andi	$r0,$r0,0x0
1c006730:	03400000 	andi	$r0,$r0,0x0
1c006734:	03400000 	andi	$r0,$r0,0x0
1c006738:	03400000 	andi	$r0,$r0,0x0
1c00673c:	03400000 	andi	$r0,$r0,0x0
1c006740:	03400000 	andi	$r0,$r0,0x0
1c006744:	03400000 	andi	$r0,$r0,0x0
1c006748:	03400000 	andi	$r0,$r0,0x0
1c00674c:	03400000 	andi	$r0,$r0,0x0
1c006750:	03400000 	andi	$r0,$r0,0x0
1c006754:	03400000 	andi	$r0,$r0,0x0
1c006758:	03400000 	andi	$r0,$r0,0x0
1c00675c:	03400000 	andi	$r0,$r0,0x0
1c006760:	03400000 	andi	$r0,$r0,0x0
1c006764:	03400000 	andi	$r0,$r0,0x0
1c006768:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00676c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006770:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c006774:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0066e8 <RC522_Init+0x20c>
1c006778:	54068400 	bl	1668(0x684) # 1c006dfc <PcdAntennaOn>
1c00677c:	03400000 	andi	$r0,$r0,0x0
1c006780:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006784:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006788:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00678c:	4c000020 	jirl	$r0,$r1,0

1c006790 <ReadRawRC>:
ReadRawRC():
1c006790:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006794:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006798:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00679c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0067a0:	0015008c 	move	$r12,$r4
1c0067a4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0067a8:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0067ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0067b0:	0040858c 	slli.w	$r12,$r12,0x1
1c0067b4:	00005d8c 	ext.w.b	$r12,$r12
1c0067b8:	0341f98c 	andi	$r12,$r12,0x7e
1c0067bc:	00005d8d 	ext.w.b	$r13,$r12
1c0067c0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0067c4:	001531ac 	or	$r12,$r13,$r12
1c0067c8:	00005d8c 	ext.w.b	$r12,$r12
1c0067cc:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0067d0:	57b6fbff 	bl	-18696(0xfffb6f8) # 1c001ec8 <soc_Spi_Cs_Down>
1c0067d4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067d8:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c0067dc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0067e0:	03400000 	andi	$r0,$r0,0x0
1c0067e4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067e8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0067ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0067f0:	0340118c 	andi	$r12,$r12,0x4
1c0067f4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0067e4 <ReadRawRC+0x54>
1c0067f8:	03400000 	andi	$r0,$r0,0x0
1c0067fc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006800:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006804:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006808:	0340058c 	andi	$r12,$r12,0x1
1c00680c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0067fc <ReadRawRC+0x6c>
1c006810:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006814:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006818:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00681c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006820:	29000980 	st.b	$r0,$r12,2(0x2)
1c006824:	03400000 	andi	$r0,$r0,0x0
1c006828:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00682c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006830:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006834:	0340118c 	andi	$r12,$r12,0x4
1c006838:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c006828 <ReadRawRC+0x98>
1c00683c:	03400000 	andi	$r0,$r0,0x0
1c006840:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006844:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006848:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00684c:	0340058c 	andi	$r12,$r12,0x1
1c006850:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c006840 <ReadRawRC+0xb0>
1c006854:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006858:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00685c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006860:	57b6c3ff 	bl	-18752(0xfffb6c0) # 1c001f20 <soc_Spi_Cs_Up>
1c006864:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006868:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00686c:	50008400 	b	132(0x84) # 1c0068f0 <ReadRawRC+0x160>
1c006870:	03400000 	andi	$r0,$r0,0x0
1c006874:	03400000 	andi	$r0,$r0,0x0
1c006878:	03400000 	andi	$r0,$r0,0x0
1c00687c:	03400000 	andi	$r0,$r0,0x0
1c006880:	03400000 	andi	$r0,$r0,0x0
1c006884:	03400000 	andi	$r0,$r0,0x0
1c006888:	03400000 	andi	$r0,$r0,0x0
1c00688c:	03400000 	andi	$r0,$r0,0x0
1c006890:	03400000 	andi	$r0,$r0,0x0
1c006894:	03400000 	andi	$r0,$r0,0x0
1c006898:	03400000 	andi	$r0,$r0,0x0
1c00689c:	03400000 	andi	$r0,$r0,0x0
1c0068a0:	03400000 	andi	$r0,$r0,0x0
1c0068a4:	03400000 	andi	$r0,$r0,0x0
1c0068a8:	03400000 	andi	$r0,$r0,0x0
1c0068ac:	03400000 	andi	$r0,$r0,0x0
1c0068b0:	03400000 	andi	$r0,$r0,0x0
1c0068b4:	03400000 	andi	$r0,$r0,0x0
1c0068b8:	03400000 	andi	$r0,$r0,0x0
1c0068bc:	03400000 	andi	$r0,$r0,0x0
1c0068c0:	03400000 	andi	$r0,$r0,0x0
1c0068c4:	03400000 	andi	$r0,$r0,0x0
1c0068c8:	03400000 	andi	$r0,$r0,0x0
1c0068cc:	03400000 	andi	$r0,$r0,0x0
1c0068d0:	03400000 	andi	$r0,$r0,0x0
1c0068d4:	03400000 	andi	$r0,$r0,0x0
1c0068d8:	03400000 	andi	$r0,$r0,0x0
1c0068dc:	03400000 	andi	$r0,$r0,0x0
1c0068e0:	03400000 	andi	$r0,$r0,0x0
1c0068e4:	03400000 	andi	$r0,$r0,0x0
1c0068e8:	03400000 	andi	$r0,$r0,0x0
1c0068ec:	03400000 	andi	$r0,$r0,0x0
1c0068f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0068f8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0068fc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006870 <ReadRawRC+0xe0>
1c006900:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006904:	00150184 	move	$r4,$r12
1c006908:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00690c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006910:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006914:	4c000020 	jirl	$r0,$r1,0

1c006918 <WriteRawRC>:
WriteRawRC():
1c006918:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00691c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006920:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006924:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006928:	0015008c 	move	$r12,$r4
1c00692c:	001500ad 	move	$r13,$r5
1c006930:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006934:	001501ac 	move	$r12,$r13
1c006938:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00693c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006940:	0040858c 	slli.w	$r12,$r12,0x1
1c006944:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006948:	0341f98c 	andi	$r12,$r12,0x7e
1c00694c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006950:	57b57bff 	bl	-19080(0xfffb578) # 1c001ec8 <soc_Spi_Cs_Down>
1c006954:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006958:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00695c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006960:	03400000 	andi	$r0,$r0,0x0
1c006964:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006968:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00696c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006970:	0340118c 	andi	$r12,$r12,0x4
1c006974:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c006964 <WriteRawRC+0x4c>
1c006978:	03400000 	andi	$r0,$r0,0x0
1c00697c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006980:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006984:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006988:	0340058c 	andi	$r12,$r12,0x1
1c00698c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c00697c <WriteRawRC+0x64>
1c006990:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006994:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006998:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00699c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069a0:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0069a4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0069a8:	03400000 	andi	$r0,$r0,0x0
1c0069ac:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069b0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0069b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0069b8:	0340118c 	andi	$r12,$r12,0x4
1c0069bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0069ac <WriteRawRC+0x94>
1c0069c0:	03400000 	andi	$r0,$r0,0x0
1c0069c4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069c8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0069cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0069d0:	0340058c 	andi	$r12,$r12,0x1
1c0069d4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0069c4 <WriteRawRC+0xac>
1c0069d8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069dc:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0069e0:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0069e4:	57b53fff 	bl	-19140(0xfffb53c) # 1c001f20 <soc_Spi_Cs_Up>
1c0069e8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0069ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0069f0:	50008400 	b	132(0x84) # 1c006a74 <WriteRawRC+0x15c>
1c0069f4:	03400000 	andi	$r0,$r0,0x0
1c0069f8:	03400000 	andi	$r0,$r0,0x0
1c0069fc:	03400000 	andi	$r0,$r0,0x0
1c006a00:	03400000 	andi	$r0,$r0,0x0
1c006a04:	03400000 	andi	$r0,$r0,0x0
1c006a08:	03400000 	andi	$r0,$r0,0x0
1c006a0c:	03400000 	andi	$r0,$r0,0x0
1c006a10:	03400000 	andi	$r0,$r0,0x0
1c006a14:	03400000 	andi	$r0,$r0,0x0
1c006a18:	03400000 	andi	$r0,$r0,0x0
1c006a1c:	03400000 	andi	$r0,$r0,0x0
1c006a20:	03400000 	andi	$r0,$r0,0x0
1c006a24:	03400000 	andi	$r0,$r0,0x0
1c006a28:	03400000 	andi	$r0,$r0,0x0
1c006a2c:	03400000 	andi	$r0,$r0,0x0
1c006a30:	03400000 	andi	$r0,$r0,0x0
1c006a34:	03400000 	andi	$r0,$r0,0x0
1c006a38:	03400000 	andi	$r0,$r0,0x0
1c006a3c:	03400000 	andi	$r0,$r0,0x0
1c006a40:	03400000 	andi	$r0,$r0,0x0
1c006a44:	03400000 	andi	$r0,$r0,0x0
1c006a48:	03400000 	andi	$r0,$r0,0x0
1c006a4c:	03400000 	andi	$r0,$r0,0x0
1c006a50:	03400000 	andi	$r0,$r0,0x0
1c006a54:	03400000 	andi	$r0,$r0,0x0
1c006a58:	03400000 	andi	$r0,$r0,0x0
1c006a5c:	03400000 	andi	$r0,$r0,0x0
1c006a60:	03400000 	andi	$r0,$r0,0x0
1c006a64:	03400000 	andi	$r0,$r0,0x0
1c006a68:	03400000 	andi	$r0,$r0,0x0
1c006a6c:	03400000 	andi	$r0,$r0,0x0
1c006a70:	03400000 	andi	$r0,$r0,0x0
1c006a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006a7c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006a80:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0069f4 <WriteRawRC+0xdc>
1c006a84:	03400000 	andi	$r0,$r0,0x0
1c006a88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a94:	4c000020 	jirl	$r0,$r1,0

1c006a98 <SetBitMask>:
SetBitMask():
1c006a98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a9c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006aa0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006aa4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006aa8:	0015008c 	move	$r12,$r4
1c006aac:	001500ad 	move	$r13,$r5
1c006ab0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006ab4:	001501ac 	move	$r12,$r13
1c006ab8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006abc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006ac0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006ac4:	00150184 	move	$r4,$r12
1c006ac8:	57fccbff 	bl	-824(0xffffcc8) # 1c006790 <ReadRawRC>
1c006acc:	0015008c 	move	$r12,$r4
1c006ad0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006ad4:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c006ad8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006adc:	001531ac 	or	$r12,$r13,$r12
1c006ae0:	00005d8c 	ext.w.b	$r12,$r12
1c006ae4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006ae8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006aec:	001501a5 	move	$r5,$r13
1c006af0:	00150184 	move	$r4,$r12
1c006af4:	57fe27ff 	bl	-476(0xffffe24) # 1c006918 <WriteRawRC>
1c006af8:	03400000 	andi	$r0,$r0,0x0
1c006afc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b00:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b04:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b08:	4c000020 	jirl	$r0,$r1,0

1c006b0c <ClearBitMask>:
ClearBitMask():
1c006b0c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006b10:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006b14:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006b18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006b1c:	0015008c 	move	$r12,$r4
1c006b20:	001500ad 	move	$r13,$r5
1c006b24:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006b28:	001501ac 	move	$r12,$r13
1c006b2c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006b30:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006b34:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006b38:	00150184 	move	$r4,$r12
1c006b3c:	57fc57ff 	bl	-940(0xffffc54) # 1c006790 <ReadRawRC>
1c006b40:	0015008c 	move	$r12,$r4
1c006b44:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006b48:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c006b4c:	0014300c 	nor	$r12,$r0,$r12
1c006b50:	00005d8d 	ext.w.b	$r13,$r12
1c006b54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006b58:	0014b1ac 	and	$r12,$r13,$r12
1c006b5c:	00005d8c 	ext.w.b	$r12,$r12
1c006b60:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006b64:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006b68:	001501a5 	move	$r5,$r13
1c006b6c:	00150184 	move	$r4,$r12
1c006b70:	57fdabff 	bl	-600(0xffffda8) # 1c006918 <WriteRawRC>
1c006b74:	03400000 	andi	$r0,$r0,0x0
1c006b78:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b7c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b84:	4c000020 	jirl	$r0,$r1,0

1c006b88 <PcdReset>:
PcdReset():
1c006b88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b90:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b9c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006ba0:	57ad8bff 	bl	-21112(0xfffad88) # 1c001928 <gpio_write>
1c006ba4:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006ba8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006bac:	50008400 	b	132(0x84) # 1c006c30 <PcdReset+0xa8>
1c006bb0:	03400000 	andi	$r0,$r0,0x0
1c006bb4:	03400000 	andi	$r0,$r0,0x0
1c006bb8:	03400000 	andi	$r0,$r0,0x0
1c006bbc:	03400000 	andi	$r0,$r0,0x0
1c006bc0:	03400000 	andi	$r0,$r0,0x0
1c006bc4:	03400000 	andi	$r0,$r0,0x0
1c006bc8:	03400000 	andi	$r0,$r0,0x0
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
1c006c30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006c38:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006c3c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006bb0 <PcdReset+0x28>
1c006c40:	00150005 	move	$r5,$r0
1c006c44:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006c48:	57ace3ff 	bl	-21280(0xffface0) # 1c001928 <gpio_write>
1c006c4c:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006c50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006c54:	50008400 	b	132(0x84) # 1c006cd8 <PcdReset+0x150>
1c006c58:	03400000 	andi	$r0,$r0,0x0
1c006c5c:	03400000 	andi	$r0,$r0,0x0
1c006c60:	03400000 	andi	$r0,$r0,0x0
1c006c64:	03400000 	andi	$r0,$r0,0x0
1c006c68:	03400000 	andi	$r0,$r0,0x0
1c006c6c:	03400000 	andi	$r0,$r0,0x0
1c006c70:	03400000 	andi	$r0,$r0,0x0
1c006c74:	03400000 	andi	$r0,$r0,0x0
1c006c78:	03400000 	andi	$r0,$r0,0x0
1c006c7c:	03400000 	andi	$r0,$r0,0x0
1c006c80:	03400000 	andi	$r0,$r0,0x0
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
1c006cd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cdc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006ce0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006ce4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006c58 <PcdReset+0xd0>
1c006ce8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cec:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006cf0:	57ac3bff 	bl	-21448(0xfffac38) # 1c001928 <gpio_write>
1c006cf4:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c006cf8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006cfc:	57fc1fff 	bl	-996(0xffffc1c) # 1c006918 <WriteRawRC>
1c006d00:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006d04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006d08:	50008400 	b	132(0x84) # 1c006d8c <PcdReset+0x204>
1c006d0c:	03400000 	andi	$r0,$r0,0x0
1c006d10:	03400000 	andi	$r0,$r0,0x0
1c006d14:	03400000 	andi	$r0,$r0,0x0
1c006d18:	03400000 	andi	$r0,$r0,0x0
1c006d1c:	03400000 	andi	$r0,$r0,0x0
1c006d20:	03400000 	andi	$r0,$r0,0x0
1c006d24:	03400000 	andi	$r0,$r0,0x0
1c006d28:	03400000 	andi	$r0,$r0,0x0
1c006d2c:	03400000 	andi	$r0,$r0,0x0
1c006d30:	03400000 	andi	$r0,$r0,0x0
1c006d34:	03400000 	andi	$r0,$r0,0x0
1c006d38:	03400000 	andi	$r0,$r0,0x0
1c006d3c:	03400000 	andi	$r0,$r0,0x0
1c006d40:	03400000 	andi	$r0,$r0,0x0
1c006d44:	03400000 	andi	$r0,$r0,0x0
1c006d48:	03400000 	andi	$r0,$r0,0x0
1c006d4c:	03400000 	andi	$r0,$r0,0x0
1c006d50:	03400000 	andi	$r0,$r0,0x0
1c006d54:	03400000 	andi	$r0,$r0,0x0
1c006d58:	03400000 	andi	$r0,$r0,0x0
1c006d5c:	03400000 	andi	$r0,$r0,0x0
1c006d60:	03400000 	andi	$r0,$r0,0x0
1c006d64:	03400000 	andi	$r0,$r0,0x0
1c006d68:	03400000 	andi	$r0,$r0,0x0
1c006d6c:	03400000 	andi	$r0,$r0,0x0
1c006d70:	03400000 	andi	$r0,$r0,0x0
1c006d74:	03400000 	andi	$r0,$r0,0x0
1c006d78:	03400000 	andi	$r0,$r0,0x0
1c006d7c:	03400000 	andi	$r0,$r0,0x0
1c006d80:	03400000 	andi	$r0,$r0,0x0
1c006d84:	03400000 	andi	$r0,$r0,0x0
1c006d88:	03400000 	andi	$r0,$r0,0x0
1c006d8c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006d90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006d94:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c006d98:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006d0c <PcdReset+0x184>
1c006d9c:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c006da0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006da4:	57fb77ff 	bl	-1164(0xffffb74) # 1c006918 <WriteRawRC>
1c006da8:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c006dac:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c006db0:	57fb6bff 	bl	-1176(0xffffb68) # 1c006918 <WriteRawRC>
1c006db4:	00150005 	move	$r5,$r0
1c006db8:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c006dbc:	57fb5fff 	bl	-1188(0xffffb5c) # 1c006918 <WriteRawRC>
1c006dc0:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c006dc4:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c006dc8:	57fb53ff 	bl	-1200(0xffffb50) # 1c006918 <WriteRawRC>
1c006dcc:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c006dd0:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c006dd4:	57fb47ff 	bl	-1212(0xffffb44) # 1c006918 <WriteRawRC>
1c006dd8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006ddc:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006de0:	57fb3bff 	bl	-1224(0xffffb38) # 1c006918 <WriteRawRC>
1c006de4:	0015000c 	move	$r12,$r0
1c006de8:	00150184 	move	$r4,$r12
1c006dec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006df0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006df4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006df8:	4c000020 	jirl	$r0,$r1,0

1c006dfc <PcdAntennaOn>:
PcdAntennaOn():
1c006dfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006e00:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006e04:	29806076 	st.w	$r22,$r3,24(0x18)
1c006e08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006e0c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006e10:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006e14:	57fb07ff 	bl	-1276(0xffffb04) # 1c006918 <WriteRawRC>
1c006e18:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c006e1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006e20:	50008400 	b	132(0x84) # 1c006ea4 <PcdAntennaOn+0xa8>
1c006e24:	03400000 	andi	$r0,$r0,0x0
1c006e28:	03400000 	andi	$r0,$r0,0x0
1c006e2c:	03400000 	andi	$r0,$r0,0x0
1c006e30:	03400000 	andi	$r0,$r0,0x0
1c006e34:	03400000 	andi	$r0,$r0,0x0
1c006e38:	03400000 	andi	$r0,$r0,0x0
1c006e3c:	03400000 	andi	$r0,$r0,0x0
1c006e40:	03400000 	andi	$r0,$r0,0x0
1c006e44:	03400000 	andi	$r0,$r0,0x0
1c006e48:	03400000 	andi	$r0,$r0,0x0
1c006e4c:	03400000 	andi	$r0,$r0,0x0
1c006e50:	03400000 	andi	$r0,$r0,0x0
1c006e54:	03400000 	andi	$r0,$r0,0x0
1c006e58:	03400000 	andi	$r0,$r0,0x0
1c006e5c:	03400000 	andi	$r0,$r0,0x0
1c006e60:	03400000 	andi	$r0,$r0,0x0
1c006e64:	03400000 	andi	$r0,$r0,0x0
1c006e68:	03400000 	andi	$r0,$r0,0x0
1c006e6c:	03400000 	andi	$r0,$r0,0x0
1c006e70:	03400000 	andi	$r0,$r0,0x0
1c006e74:	03400000 	andi	$r0,$r0,0x0
1c006e78:	03400000 	andi	$r0,$r0,0x0
1c006e7c:	03400000 	andi	$r0,$r0,0x0
1c006e80:	03400000 	andi	$r0,$r0,0x0
1c006e84:	03400000 	andi	$r0,$r0,0x0
1c006e88:	03400000 	andi	$r0,$r0,0x0
1c006e8c:	03400000 	andi	$r0,$r0,0x0
1c006e90:	03400000 	andi	$r0,$r0,0x0
1c006e94:	03400000 	andi	$r0,$r0,0x0
1c006e98:	03400000 	andi	$r0,$r0,0x0
1c006e9c:	03400000 	andi	$r0,$r0,0x0
1c006ea0:	03400000 	andi	$r0,$r0,0x0
1c006ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ea8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006eac:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006eb0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006e24 <PcdAntennaOn+0x28>
1c006eb4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006eb8:	57f8dbff 	bl	-1832(0xffff8d8) # 1c006790 <ReadRawRC>
1c006ebc:	0015008c 	move	$r12,$r4
1c006ec0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006ec4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006ec8:	03400d8c 	andi	$r12,$r12,0x3
1c006ecc:	44001180 	bnez	$r12,16(0x10) # 1c006edc <PcdAntennaOn+0xe0>
1c006ed0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006ed4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006ed8:	57fbc3ff 	bl	-1088(0xffffbc0) # 1c006a98 <SetBitMask>
1c006edc:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006ee0:	57f8b3ff 	bl	-1872(0xffff8b0) # 1c006790 <ReadRawRC>
1c006ee4:	0015008c 	move	$r12,$r4
1c006ee8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006eec:	03400000 	andi	$r0,$r0,0x0
1c006ef0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006ef4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006ef8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006efc:	4c000020 	jirl	$r0,$r1,0

1c006f00 <PcdAntennaOff>:
PcdAntennaOff():
1c006f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f04:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f08:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f10:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006f14:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006f18:	57fbf7ff 	bl	-1036(0xffffbf4) # 1c006b0c <ClearBitMask>
1c006f1c:	03400000 	andi	$r0,$r0,0x0
1c006f20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f2c:	4c000020 	jirl	$r0,$r1,0

1c006f30 <PcdComMF522>:
PcdComMF522():
1c006f30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006f34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006f38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006f3c:	29809077 	st.w	$r23,$r3,36(0x24)
1c006f40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006f44:	0015008c 	move	$r12,$r4
1c006f48:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006f4c:	001500cd 	move	$r13,$r6
1c006f50:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c006f54:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c006f58:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006f5c:	001501ac 	move	$r12,$r13
1c006f60:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006f64:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c006f68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006f6c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006f70:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c006f74:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006f78:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c006f7c:	5800218d 	beq	$r12,$r13,32(0x20) # 1c006f9c <PcdComMF522+0x6c>
1c006f80:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006f84:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c006fb0 <PcdComMF522+0x80>
1c006f88:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c006f8c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006f90:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006f94:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006f98:	50001c00 	b	28(0x1c) # 1c006fb4 <PcdComMF522+0x84>
1c006f9c:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c006fa0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006fa4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c006fa8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006fac:	50000800 	b	8(0x8) # 1c006fb4 <PcdComMF522+0x84>
1c006fb0:	03400000 	andi	$r0,$r0,0x0
1c006fb4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006fb8:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c006fbc:	001531ac 	or	$r12,$r13,$r12
1c006fc0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006fc4:	00150185 	move	$r5,$r12
1c006fc8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006fcc:	57f94fff 	bl	-1716(0xffff94c) # 1c006918 <WriteRawRC>
1c006fd0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006fd4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006fd8:	57fb37ff 	bl	-1228(0xffffb34) # 1c006b0c <ClearBitMask>
1c006fdc:	00150005 	move	$r5,$r0
1c006fe0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006fe4:	57f937ff 	bl	-1740(0xffff934) # 1c006918 <WriteRawRC>
1c006fe8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006fec:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006ff0:	57faabff 	bl	-1368(0xffffaa8) # 1c006a98 <SetBitMask>
1c006ff4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006ff8:	50002c00 	b	44(0x2c) # 1c007024 <PcdComMF522+0xf4>
1c006ffc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007000:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c007004:	001031ac 	add.w	$r12,$r13,$r12
1c007008:	2a00018c 	ld.bu	$r12,$r12,0
1c00700c:	00150185 	move	$r5,$r12
1c007010:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007014:	57f907ff 	bl	-1788(0xffff904) # 1c006918 <WriteRawRC>
1c007018:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00701c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007020:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007024:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c007028:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00702c:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c006ffc <PcdComMF522+0xcc>
1c007030:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c007034:	00150185 	move	$r5,$r12
1c007038:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00703c:	57f8dfff 	bl	-1828(0xffff8dc) # 1c006918 <WriteRawRC>
1c007040:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c007044:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007048:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007058 <PcdComMF522+0x128>
1c00704c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007050:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007054:	57fa47ff 	bl	-1468(0xffffa44) # 1c006a98 <SetBitMask>
1c007058:	1400026c 	lu12i.w	$r12,19(0x13)
1c00705c:	03a2018c 	ori	$r12,$r12,0x880
1c007060:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007064:	02801004 	addi.w	$r4,$r0,4(0x4)
1c007068:	57f72bff 	bl	-2264(0xffff728) # 1c006790 <ReadRawRC>
1c00706c:	0015008c 	move	$r12,$r4
1c007070:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c007074:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007078:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00707c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007080:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007084:	40002580 	beqz	$r12,36(0x24) # 1c0070a8 <PcdComMF522+0x178>
1c007088:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c00708c:	0340058c 	andi	$r12,$r12,0x1
1c007090:	44001980 	bnez	$r12,24(0x18) # 1c0070a8 <PcdComMF522+0x178>
1c007094:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c007098:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00709c:	0014b1ac 	and	$r12,$r13,$r12
1c0070a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0070a4:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c007064 <PcdComMF522+0x134>
1c0070a8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0070ac:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0070b0:	57fa5fff 	bl	-1444(0xffffa5c) # 1c006b0c <ClearBitMask>
1c0070b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0070b8:	40011180 	beqz	$r12,272(0x110) # 1c0071c8 <PcdComMF522+0x298>
1c0070bc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0070c0:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c006790 <ReadRawRC>
1c0070c4:	0015008c 	move	$r12,$r4
1c0070c8:	03406d8c 	andi	$r12,$r12,0x1b
1c0070cc:	4400f580 	bnez	$r12,244(0xf4) # 1c0071c0 <PcdComMF522+0x290>
1c0070d0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0070d4:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0070d8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0070dc:	0014b1ac 	and	$r12,$r13,$r12
1c0070e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0070e4:	0340058c 	andi	$r12,$r12,0x1
1c0070e8:	40000d80 	beqz	$r12,12(0xc) # 1c0070f4 <PcdComMF522+0x1c4>
1c0070ec:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0070f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0070f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0070f8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0070fc:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c0071c8 <PcdComMF522+0x298>
1c007100:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007104:	57f68fff 	bl	-2420(0xffff68c) # 1c006790 <ReadRawRC>
1c007108:	0015008c 	move	$r12,$r4
1c00710c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c007110:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007114:	57f67fff 	bl	-2436(0xffff67c) # 1c006790 <ReadRawRC>
1c007118:	0015008c 	move	$r12,$r4
1c00711c:	03401d8c 	andi	$r12,$r12,0x7
1c007120:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c007124:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c007128:	40002580 	beqz	$r12,36(0x24) # 1c00714c <PcdComMF522+0x21c>
1c00712c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007130:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007134:	00408d8d 	slli.w	$r13,$r12,0x3
1c007138:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c00713c:	001031ad 	add.w	$r13,$r13,$r12
1c007140:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c007144:	2980018d 	st.w	$r13,$r12,0
1c007148:	50001400 	b	20(0x14) # 1c00715c <PcdComMF522+0x22c>
1c00714c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007150:	00408d8d 	slli.w	$r13,$r12,0x3
1c007154:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c007158:	2980018d 	st.w	$r13,$r12,0
1c00715c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007160:	44000d80 	bnez	$r12,12(0xc) # 1c00716c <PcdComMF522+0x23c>
1c007164:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007168:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00716c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c007170:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c007174:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c007180 <PcdComMF522+0x250>
1c007178:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00717c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c007180:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c007184:	50002c00 	b	44(0x2c) # 1c0071b0 <PcdComMF522+0x280>
1c007188:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00718c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c007190:	001031b7 	add.w	$r23,$r13,$r12
1c007194:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007198:	57f5fbff 	bl	-2568(0xffff5f8) # 1c006790 <ReadRawRC>
1c00719c:	0015008c 	move	$r12,$r4
1c0071a0:	290002ec 	st.b	$r12,$r23,0
1c0071a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0071a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0071ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0071b0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0071b4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0071b8:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c007188 <PcdComMF522+0x258>
1c0071bc:	50000c00 	b	12(0xc) # 1c0071c8 <PcdComMF522+0x298>
1c0071c0:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0071c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0071c8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0071cc:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0071d0:	57f8cbff 	bl	-1848(0xffff8c8) # 1c006a98 <SetBitMask>
1c0071d4:	00150005 	move	$r5,$r0
1c0071d8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0071dc:	57f73fff 	bl	-2244(0xffff73c) # 1c006918 <WriteRawRC>
1c0071e0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0071e4:	00150184 	move	$r4,$r12
1c0071e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0071ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0071f0:	28809077 	ld.w	$r23,$r3,36(0x24)
1c0071f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0071f8:	4c000020 	jirl	$r0,$r1,0

1c0071fc <PcdRequest>:
PcdRequest():
1c0071fc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c007200:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c007204:	2980e076 	st.w	$r22,$r3,56(0x38)
1c007208:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00720c:	0015008c 	move	$r12,$r4
1c007210:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c007214:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c007218:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00721c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007220:	57f8efff 	bl	-1812(0xffff8ec) # 1c006b0c <ClearBitMask>
1c007224:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c007228:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00722c:	57f6efff 	bl	-2324(0xffff6ec) # 1c006918 <WriteRawRC>
1c007230:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007234:	02805004 	addi.w	$r4,$r0,20(0x14)
1c007238:	57f863ff 	bl	-1952(0xffff860) # 1c006a98 <SetBitMask>
1c00723c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c007240:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c007244:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c007248:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c00724c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c007250:	001501c8 	move	$r8,$r14
1c007254:	001501a7 	move	$r7,$r13
1c007258:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00725c:	00150185 	move	$r5,$r12
1c007260:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007264:	57fccfff 	bl	-820(0xffffccc) # 1c006f30 <PcdComMF522>
1c007268:	0015008c 	move	$r12,$r4
1c00726c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007270:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007274:	44003180 	bnez	$r12,48(0x30) # 1c0072a4 <PcdRequest+0xa8>
1c007278:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00727c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007280:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0072a4 <PcdRequest+0xa8>
1c007284:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c007288:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00728c:	2900018d 	st.b	$r13,$r12,0
1c007290:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007294:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007298:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c00729c:	2900018d 	st.b	$r13,$r12,0
1c0072a0:	50000c00 	b	12(0xc) # 1c0072ac <PcdRequest+0xb0>
1c0072a4:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0072a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0072ac:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0072b0:	00150184 	move	$r4,$r12
1c0072b4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0072b8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0072bc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0072c0:	4c000020 	jirl	$r0,$r1,0

1c0072c4 <PcdAnticoll>:
PcdAnticoll():
1c0072c4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0072c8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0072cc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0072d0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0072d4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0072d8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0072dc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0072e0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0072e4:	57f82bff 	bl	-2008(0xffff828) # 1c006b0c <ClearBitMask>
1c0072e8:	00150005 	move	$r5,$r0
1c0072ec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0072f0:	57f62bff 	bl	-2520(0xffff628) # 1c006918 <WriteRawRC>
1c0072f4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0072f8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0072fc:	57f813ff 	bl	-2032(0xffff810) # 1c006b0c <ClearBitMask>
1c007300:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c007304:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c007308:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00730c:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c007310:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c007314:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c007318:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00731c:	001501c8 	move	$r8,$r14
1c007320:	001501a7 	move	$r7,$r13
1c007324:	02800806 	addi.w	$r6,$r0,2(0x2)
1c007328:	00150185 	move	$r5,$r12
1c00732c:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007330:	57fc03ff 	bl	-1024(0xffffc00) # 1c006f30 <PcdComMF522>
1c007334:	0015008c 	move	$r12,$r4
1c007338:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00733c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007340:	44008180 	bnez	$r12,128(0x80) # 1c0073c0 <PcdAnticoll+0xfc>
1c007344:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c007348:	50004c00 	b	76(0x4c) # 1c007394 <PcdAnticoll+0xd0>
1c00734c:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c007350:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007354:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c007358:	001031ac 	add.w	$r12,$r13,$r12
1c00735c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007360:	001039ad 	add.w	$r13,$r13,$r14
1c007364:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c007368:	2900018d 	st.b	$r13,$r12,0
1c00736c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007370:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007374:	001031ac 	add.w	$r12,$r13,$r12
1c007378:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c00737c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c007380:	0015b1ac 	xor	$r12,$r13,$r12
1c007384:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c007388:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00738c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007390:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007394:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c007398:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00739c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00734c <PcdAnticoll+0x88>
1c0073a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0073a4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0073a8:	001031ac 	add.w	$r12,$r13,$r12
1c0073ac:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c0073b0:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c0073b4:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0073c0 <PcdAnticoll+0xfc>
1c0073b8:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0073bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0073c0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0073c4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0073c8:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c006a98 <SetBitMask>
1c0073cc:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0073d0:	00150184 	move	$r4,$r12
1c0073d4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0073d8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0073dc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0073e0:	4c000020 	jirl	$r0,$r1,0

1c0073e4 <Return_Card>:
Return_Card():
1c0073e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0073e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0073ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0073f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0073f4:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0073f8:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c0073fc:	28b030a5 	ld.w	$r5,$r5,-1012(0xc0c)
1c007400:	02814804 	addi.w	$r4,$r0,82(0x52)
1c007404:	57fdfbff 	bl	-520(0xffffdf8) # 1c0071fc <PcdRequest>
1c007408:	0015008c 	move	$r12,$r4
1c00740c:	44005d80 	bnez	$r12,92(0x5c) # 1c007468 <Return_Card+0x84>
1c007410:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c007414:	28b00084 	ld.w	$r4,$r4,-1024(0xc00)
1c007418:	57feafff 	bl	-340(0xffffeac) # 1c0072c4 <PcdAnticoll>
1c00741c:	0015008c 	move	$r12,$r4
1c007420:	44004980 	bnez	$r12,72(0x48) # 1c007468 <Return_Card+0x84>
1c007424:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007428:	28afb18c 	ld.w	$r12,$r12,-1044(0xbec)
1c00742c:	2a00018c 	ld.bu	$r12,$r12,0
1c007430:	0044918c 	srli.w	$r12,$r12,0x4
1c007434:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007438:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00743c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007440:	001c31ac 	mul.w	$r12,$r13,$r12
1c007444:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c007448:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00744c:	28af218c 	ld.w	$r12,$r12,-1080(0xbc8)
1c007450:	2a00018c 	ld.bu	$r12,$r12,0
1c007454:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007458:	03403d8c 	andi	$r12,$r12,0xf
1c00745c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007460:	001031ac 	add.w	$r12,$r13,$r12
1c007464:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c007468:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00746c:	00150184 	move	$r4,$r12
1c007470:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007474:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007478:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00747c:	4c000020 	jirl	$r0,$r1,0

1c007480 <Buffer_write>:
Buffer_write():
1c007480:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007484:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007488:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00748c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c007490:	001500ac 	move	$r12,$r5
1c007494:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c007498:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00749c:	2880018c 	ld.w	$r12,$r12,0
1c0074a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0074a4:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c0074a8:	0010358c 	add.w	$r12,$r12,$r13
1c0074ac:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0074b0:	2900018d 	st.b	$r13,$r12,0
1c0074b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074b8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0074bc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0074c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074c4:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0074c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074cc:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0074d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074d4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0074d8:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0074e4 <Buffer_write+0x64>
1c0074dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074e0:	29803180 	st.w	$r0,$r12,12(0xc)
1c0074e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074e8:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c0074ec:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0074f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074f4:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0074f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074fc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c007500:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007504:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007508:	6400458d 	bge	$r12,$r13,68(0x44) # 1c00754c <Buffer_write+0xcc>
1c00750c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007510:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c007514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007518:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00751c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007520:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c007524:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007528:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00752c:	2980218d 	st.w	$r13,$r12,8(0x8)
1c007530:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007534:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c007538:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00753c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007540:	60000dac 	blt	$r13,$r12,12(0xc) # 1c00754c <Buffer_write+0xcc>
1c007544:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007548:	29802180 	st.w	$r0,$r12,8(0x8)
1c00754c:	03400000 	andi	$r0,$r0,0x0
1c007550:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007554:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007558:	4c000020 	jirl	$r0,$r1,0

1c00755c <main>:
main():
1c00755c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007560:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007564:	29806076 	st.w	$r22,$r3,24(0x18)
1c007568:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00756c:	57eb9fff 	bl	-5220(0xfffeb9c) # 1c006108 <my_GPIO_Init>
1c007570:	57ee43ff 	bl	-4544(0xfffee40) # 1c0063b0 <my_PWM_Init>
1c007574:	57ed63ff 	bl	-4768(0xfffed60) # 1c0062d4 <my_I2C_Init>
1c007578:	57ef03ff 	bl	-4352(0xfffef00) # 1c006478 <my_SPI_Init>
1c00757c:	140001cc 	lu12i.w	$r12,14(0xe)
1c007580:	03840184 	ori	$r4,$r12,0x100
1c007584:	57c263ff 	bl	-15776(0xfffc260) # 1c0037e4 <hw_uart_init>
1c007588:	14000e2c 	lu12i.w	$r12,113(0x71)
1c00758c:	03bfc98c 	ori	$r12,$r12,0xff2
1c007590:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007594:	50008400 	b	132(0x84) # 1c007618 <main+0xbc>
1c007598:	03400000 	andi	$r0,$r0,0x0
1c00759c:	03400000 	andi	$r0,$r0,0x0
1c0075a0:	03400000 	andi	$r0,$r0,0x0
1c0075a4:	03400000 	andi	$r0,$r0,0x0
1c0075a8:	03400000 	andi	$r0,$r0,0x0
1c0075ac:	03400000 	andi	$r0,$r0,0x0
1c0075b0:	03400000 	andi	$r0,$r0,0x0
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
1c007618:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00761c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007620:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c007624:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c007598 <main+0x3c>
1c007628:	57ee7fff 	bl	-4484(0xfffee7c) # 1c0064a4 <Init_main>
1c00762c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c007630:	03bfc98c 	ori	$r12,$r12,0xff2
1c007634:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007638:	50008400 	b	132(0x84) # 1c0076bc <main+0x160>
1c00763c:	03400000 	andi	$r0,$r0,0x0
1c007640:	03400000 	andi	$r0,$r0,0x0
1c007644:	03400000 	andi	$r0,$r0,0x0
1c007648:	03400000 	andi	$r0,$r0,0x0
1c00764c:	03400000 	andi	$r0,$r0,0x0
1c007650:	03400000 	andi	$r0,$r0,0x0
1c007654:	03400000 	andi	$r0,$r0,0x0
1c007658:	03400000 	andi	$r0,$r0,0x0
1c00765c:	03400000 	andi	$r0,$r0,0x0
1c007660:	03400000 	andi	$r0,$r0,0x0
1c007664:	03400000 	andi	$r0,$r0,0x0
1c007668:	03400000 	andi	$r0,$r0,0x0
1c00766c:	03400000 	andi	$r0,$r0,0x0
1c007670:	03400000 	andi	$r0,$r0,0x0
1c007674:	03400000 	andi	$r0,$r0,0x0
1c007678:	03400000 	andi	$r0,$r0,0x0
1c00767c:	03400000 	andi	$r0,$r0,0x0
1c007680:	03400000 	andi	$r0,$r0,0x0
1c007684:	03400000 	andi	$r0,$r0,0x0
1c007688:	03400000 	andi	$r0,$r0,0x0
1c00768c:	03400000 	andi	$r0,$r0,0x0
1c007690:	03400000 	andi	$r0,$r0,0x0
1c007694:	03400000 	andi	$r0,$r0,0x0
1c007698:	03400000 	andi	$r0,$r0,0x0
1c00769c:	03400000 	andi	$r0,$r0,0x0
1c0076a0:	03400000 	andi	$r0,$r0,0x0
1c0076a4:	03400000 	andi	$r0,$r0,0x0
1c0076a8:	03400000 	andi	$r0,$r0,0x0
1c0076ac:	03400000 	andi	$r0,$r0,0x0
1c0076b0:	03400000 	andi	$r0,$r0,0x0
1c0076b4:	03400000 	andi	$r0,$r0,0x0
1c0076b8:	03400000 	andi	$r0,$r0,0x0
1c0076bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0076c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0076c4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0076c8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00763c <main+0xe0>
1c0076cc:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0076d0:	57a353ff 	bl	-23728(0xfffa350) # 1c001a20 <gpio_read>
1c0076d4:	0015008d 	move	$r13,$r4
1c0076d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0076dc:	5c0cadac 	bne	$r13,$r12,3244(0xcac) # 1c008388 <main+0xe2c>
1c0076e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076e4:	02b2298c 	addi.w	$r12,$r12,-886(0xc8a)
1c0076e8:	29000180 	st.b	$r0,$r12,0
1c0076ec:	57da6fff 	bl	-9620(0xfffda6c) # 1c005158 <LEDgree_ON>
1c0076f0:	57c2a3ff 	bl	-15712(0xfffc2a0) # 1c003990 <MatrixKey>
1c0076f4:	0015008c 	move	$r12,$r4
1c0076f8:	0015018d 	move	$r13,$r12
1c0076fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007700:	02b1b58c 	addi.w	$r12,$r12,-915(0xc6d)
1c007704:	2900018d 	st.b	$r13,$r12,0
1c007708:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00770c:	028e458c 	addi.w	$r12,$r12,913(0x391)
1c007710:	2a00018c 	ld.bu	$r12,$r12,0
1c007714:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c007718:	680cbdac 	bltu	$r13,$r12,3260(0xcbc) # 1c0083d4 <main+0xe78>
1c00771c:	0040898d 	slli.w	$r13,$r12,0x2
1c007720:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c007724:	0293018c 	addi.w	$r12,$r12,1216(0x4c0)
1c007728:	001031ac 	add.w	$r12,$r13,$r12
1c00772c:	2880018c 	ld.w	$r12,$r12,0
1c007730:	4c000180 	jirl	$r0,$r12,0
1c007734:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007738:	028d918c 	addi.w	$r12,$r12,868(0x364)
1c00773c:	2a00018d 	ld.bu	$r13,$r12,0
1c007740:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007744:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00775c <main+0x200>
1c007748:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00774c:	540d2800 	bl	3368(0xd28) # 1c008474 <interface_display>
1c007750:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007754:	028d218c 	addi.w	$r12,$r12,840(0x348)
1c007758:	29000180 	st.b	$r0,$r12,0
1c00775c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007760:	02b0358c 	addi.w	$r12,$r12,-1011(0xc0d)
1c007764:	2a00018d 	ld.bu	$r13,$r12,0
1c007768:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00776c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007794 <main+0x238>
1c007770:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007774:	028ca58c 	addi.w	$r12,$r12,809(0x329)
1c007778:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00777c:	2900018d 	st.b	$r13,$r12,0
1c007780:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007784:	028c618c 	addi.w	$r12,$r12,792(0x318)
1c007788:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00778c:	2900018d 	st.b	$r13,$r12,0
1c007790:	500c4c00 	b	3148(0xc4c) # 1c0083dc <main+0xe80>
1c007794:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007798:	02af558c 	addi.w	$r12,$r12,-1067(0xbd5)
1c00779c:	2a00018d 	ld.bu	$r13,$r12,0
1c0077a0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0077a4:	5c0c39ac 	bne	$r13,$r12,3128(0xc38) # 1c0083dc <main+0xe80>
1c0077a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077ac:	028bc58c 	addi.w	$r12,$r12,753(0x2f1)
1c0077b0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0077b4:	2900018d 	st.b	$r13,$r12,0
1c0077b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077bc:	028b818c 	addi.w	$r12,$r12,736(0x2e0)
1c0077c0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0077c4:	2900018d 	st.b	$r13,$r12,0
1c0077c8:	500c1400 	b	3092(0xc14) # 1c0083dc <main+0xe80>
1c0077cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077d0:	028b318c 	addi.w	$r12,$r12,716(0x2cc)
1c0077d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0077d8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0077dc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0077f4 <main+0x298>
1c0077e0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0077e4:	540c9000 	bl	3216(0xc90) # 1c008474 <interface_display>
1c0077e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077ec:	028ac18c 	addi.w	$r12,$r12,688(0x2b0)
1c0077f0:	29000180 	st.b	$r0,$r12,0
1c0077f4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077f8:	02add58c 	addi.w	$r12,$r12,-1163(0xb75)
1c0077fc:	2a00018d 	ld.bu	$r13,$r12,0
1c007800:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007804:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00782c <main+0x2d0>
1c007808:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00780c:	028a458c 	addi.w	$r12,$r12,657(0x291)
1c007810:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c007814:	2900018d 	st.b	$r13,$r12,0
1c007818:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00781c:	028a018c 	addi.w	$r12,$r12,640(0x280)
1c007820:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c007824:	2900018d 	st.b	$r13,$r12,0
1c007828:	500bbc00 	b	3004(0xbbc) # 1c0083e4 <main+0xe88>
1c00782c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007830:	02acf58c 	addi.w	$r12,$r12,-1219(0xb3d)
1c007834:	2a00018d 	ld.bu	$r13,$r12,0
1c007838:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00783c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007864 <main+0x308>
1c007840:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007844:	0289658c 	addi.w	$r12,$r12,601(0x259)
1c007848:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00784c:	2900018d 	st.b	$r13,$r12,0
1c007850:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007854:	0289218c 	addi.w	$r12,$r12,584(0x248)
1c007858:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00785c:	2900018d 	st.b	$r13,$r12,0
1c007860:	500b8400 	b	2948(0xb84) # 1c0083e4 <main+0xe88>
1c007864:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007868:	02ac158c 	addi.w	$r12,$r12,-1275(0xb05)
1c00786c:	2a00018d 	ld.bu	$r13,$r12,0
1c007870:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007874:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00789c <main+0x340>
1c007878:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00787c:	0288858c 	addi.w	$r12,$r12,545(0x221)
1c007880:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c007884:	2900018d 	st.b	$r13,$r12,0
1c007888:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00788c:	0288418c 	addi.w	$r12,$r12,528(0x210)
1c007890:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c007894:	2900018d 	st.b	$r13,$r12,0
1c007898:	500b4c00 	b	2892(0xb4c) # 1c0083e4 <main+0xe88>
1c00789c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078a0:	02ab358c 	addi.w	$r12,$r12,-1331(0xacd)
1c0078a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0078a8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0078ac:	5c0b39ac 	bne	$r13,$r12,2872(0xb38) # 1c0083e4 <main+0xe88>
1c0078b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078b4:	0287a58c 	addi.w	$r12,$r12,489(0x1e9)
1c0078b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0078bc:	2900018d 	st.b	$r13,$r12,0
1c0078c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078c4:	0287618c 	addi.w	$r12,$r12,472(0x1d8)
1c0078c8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0078cc:	2900018d 	st.b	$r13,$r12,0
1c0078d0:	500b1400 	b	2836(0xb14) # 1c0083e4 <main+0xe88>
1c0078d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078d8:	0287118c 	addi.w	$r12,$r12,452(0x1c4)
1c0078dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0078e0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0078e4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0078fc <main+0x3a0>
1c0078e8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0078ec:	540b8800 	bl	2952(0xb88) # 1c008474 <interface_display>
1c0078f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078f4:	0286a18c 	addi.w	$r12,$r12,424(0x1a8)
1c0078f8:	29000180 	st.b	$r0,$r12,0
1c0078fc:	54176c00 	bl	5996(0x176c) # 1c009068 <Read_ID>
1c007900:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007904:	02a9a58c 	addi.w	$r12,$r12,-1431(0xa69)
1c007908:	2a00018d 	ld.bu	$r13,$r12,0
1c00790c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007910:	5c0addac 	bne	$r13,$r12,2780(0xadc) # 1c0083ec <main+0xe90>
1c007914:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007918:	0286158c 	addi.w	$r12,$r12,389(0x185)
1c00791c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007920:	2900018d 	st.b	$r13,$r12,0
1c007924:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007928:	0285d18c 	addi.w	$r12,$r12,372(0x174)
1c00792c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007930:	2900018d 	st.b	$r13,$r12,0
1c007934:	500ab800 	b	2744(0xab8) # 1c0083ec <main+0xe90>
1c007938:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00793c:	0285818c 	addi.w	$r12,$r12,352(0x160)
1c007940:	2a00018d 	ld.bu	$r13,$r12,0
1c007944:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007948:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007960 <main+0x404>
1c00794c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c007950:	540b2400 	bl	2852(0xb24) # 1c008474 <interface_display>
1c007954:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007958:	0285118c 	addi.w	$r12,$r12,324(0x144)
1c00795c:	29000180 	st.b	$r0,$r12,0
1c007960:	5419ac00 	bl	6572(0x19ac) # 1c00930c <Key_main>
1c007964:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007968:	02a8158c 	addi.w	$r12,$r12,-1531(0xa05)
1c00796c:	2a00018d 	ld.bu	$r13,$r12,0
1c007970:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007974:	5c0a81ac 	bne	$r13,$r12,2688(0xa80) # 1c0083f4 <main+0xe98>
1c007978:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00797c:	0284858c 	addi.w	$r12,$r12,289(0x121)
1c007980:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007984:	2900018d 	st.b	$r13,$r12,0
1c007988:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00798c:	0284418c 	addi.w	$r12,$r12,272(0x110)
1c007990:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007994:	2900018d 	st.b	$r13,$r12,0
1c007998:	500a5c00 	b	2652(0xa5c) # 1c0083f4 <main+0xe98>
1c00799c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079a0:	0283f18c 	addi.w	$r12,$r12,252(0xfc)
1c0079a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0079a8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0079ac:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0079c4 <main+0x468>
1c0079b0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0079b4:	540ac000 	bl	2752(0xac0) # 1c008474 <interface_display>
1c0079b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079bc:	0283818c 	addi.w	$r12,$r12,224(0xe0)
1c0079c0:	29000180 	st.b	$r0,$r12,0
1c0079c4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079c8:	02a6958c 	addi.w	$r12,$r12,-1627(0x9a5)
1c0079cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0079d0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0079d4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0079fc <main+0x4a0>
1c0079d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079dc:	0283058c 	addi.w	$r12,$r12,193(0xc1)
1c0079e0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0079e4:	2900018d 	st.b	$r13,$r12,0
1c0079e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079ec:	0282c18c 	addi.w	$r12,$r12,176(0xb0)
1c0079f0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0079f4:	2900018d 	st.b	$r13,$r12,0
1c0079f8:	500a0400 	b	2564(0xa04) # 1c0083fc <main+0xea0>
1c0079fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a00:	02a5b58c 	addi.w	$r12,$r12,-1683(0x96d)
1c007a04:	2a00018d 	ld.bu	$r13,$r12,0
1c007a08:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007a0c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007a34 <main+0x4d8>
1c007a10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a14:	0282258c 	addi.w	$r12,$r12,137(0x89)
1c007a18:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007a1c:	2900018d 	st.b	$r13,$r12,0
1c007a20:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a24:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c007a28:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007a2c:	2900018d 	st.b	$r13,$r12,0
1c007a30:	5009cc00 	b	2508(0x9cc) # 1c0083fc <main+0xea0>
1c007a34:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a38:	02a4d58c 	addi.w	$r12,$r12,-1739(0x935)
1c007a3c:	2a00018d 	ld.bu	$r13,$r12,0
1c007a40:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007a44:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007a6c <main+0x510>
1c007a48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a4c:	0281458c 	addi.w	$r12,$r12,81(0x51)
1c007a50:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007a54:	2900018d 	st.b	$r13,$r12,0
1c007a58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a5c:	0281018c 	addi.w	$r12,$r12,64(0x40)
1c007a60:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007a64:	2900018d 	st.b	$r13,$r12,0
1c007a68:	50099400 	b	2452(0x994) # 1c0083fc <main+0xea0>
1c007a6c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a70:	02a3f58c 	addi.w	$r12,$r12,-1795(0x8fd)
1c007a74:	2a00018d 	ld.bu	$r13,$r12,0
1c007a78:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007a7c:	5c0981ac 	bne	$r13,$r12,2432(0x980) # 1c0083fc <main+0xea0>
1c007a80:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a84:	0280658c 	addi.w	$r12,$r12,25(0x19)
1c007a88:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007a8c:	2900018d 	st.b	$r13,$r12,0
1c007a90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a94:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c007a98:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007a9c:	2900018d 	st.b	$r13,$r12,0
1c007aa0:	50095c00 	b	2396(0x95c) # 1c0083fc <main+0xea0>
1c007aa4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007aa8:	02bfd18c 	addi.w	$r12,$r12,-12(0xff4)
1c007aac:	2a00018d 	ld.bu	$r13,$r12,0
1c007ab0:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c007ab4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007acc <main+0x570>
1c007ab8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007abc:	5409b800 	bl	2488(0x9b8) # 1c008474 <interface_display>
1c007ac0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ac4:	02bf618c 	addi.w	$r12,$r12,-40(0xfd8)
1c007ac8:	29000180 	st.b	$r0,$r12,0
1c007acc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ad0:	02a2758c 	addi.w	$r12,$r12,-1891(0x89d)
1c007ad4:	2a00018d 	ld.bu	$r13,$r12,0
1c007ad8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007adc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007b04 <main+0x5a8>
1c007ae0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ae4:	02bee58c 	addi.w	$r12,$r12,-71(0xfb9)
1c007ae8:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c007aec:	2900018d 	st.b	$r13,$r12,0
1c007af0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007af4:	02bea18c 	addi.w	$r12,$r12,-88(0xfa8)
1c007af8:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c007afc:	2900018d 	st.b	$r13,$r12,0
1c007b00:	50090400 	b	2308(0x904) # 1c008404 <main+0xea8>
1c007b04:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b08:	02a1958c 	addi.w	$r12,$r12,-1947(0x865)
1c007b0c:	2a00018d 	ld.bu	$r13,$r12,0
1c007b10:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007b14:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007b3c <main+0x5e0>
1c007b18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b1c:	02be058c 	addi.w	$r12,$r12,-127(0xf81)
1c007b20:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007b24:	2900018d 	st.b	$r13,$r12,0
1c007b28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b2c:	02bdc18c 	addi.w	$r12,$r12,-144(0xf70)
1c007b30:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007b34:	2900018d 	st.b	$r13,$r12,0
1c007b38:	5008cc00 	b	2252(0x8cc) # 1c008404 <main+0xea8>
1c007b3c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b40:	02a0b58c 	addi.w	$r12,$r12,-2003(0x82d)
1c007b44:	2a00018d 	ld.bu	$r13,$r12,0
1c007b48:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007b4c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007b74 <main+0x618>
1c007b50:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b54:	02bd258c 	addi.w	$r12,$r12,-183(0xf49)
1c007b58:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b5c:	2900018d 	st.b	$r13,$r12,0
1c007b60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b64:	02bce18c 	addi.w	$r12,$r12,-200(0xf38)
1c007b68:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b6c:	2900018d 	st.b	$r13,$r12,0
1c007b70:	50089400 	b	2196(0x894) # 1c008404 <main+0xea8>
1c007b74:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007b78:	029fd58c 	addi.w	$r12,$r12,2037(0x7f5)
1c007b7c:	2a00018d 	ld.bu	$r13,$r12,0
1c007b80:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007b84:	5c0881ac 	bne	$r13,$r12,2176(0x880) # 1c008404 <main+0xea8>
1c007b88:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b8c:	02bc458c 	addi.w	$r12,$r12,-239(0xf11)
1c007b90:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b94:	2900018d 	st.b	$r13,$r12,0
1c007b98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b9c:	02bc018c 	addi.w	$r12,$r12,-256(0xf00)
1c007ba0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007ba4:	2900018d 	st.b	$r13,$r12,0
1c007ba8:	50085c00 	b	2140(0x85c) # 1c008404 <main+0xea8>
1c007bac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bb0:	02bbb18c 	addi.w	$r12,$r12,-276(0xeec)
1c007bb4:	2a00018d 	ld.bu	$r13,$r12,0
1c007bb8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c007bbc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007bd4 <main+0x678>
1c007bc0:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c007bc4:	5408b000 	bl	2224(0x8b0) # 1c008474 <interface_display>
1c007bc8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bcc:	02bb418c 	addi.w	$r12,$r12,-304(0xed0)
1c007bd0:	29000180 	st.b	$r0,$r12,0
1c007bd4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007bd8:	029e558c 	addi.w	$r12,$r12,1941(0x795)
1c007bdc:	2a00018d 	ld.bu	$r13,$r12,0
1c007be0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007be4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007c0c <main+0x6b0>
1c007be8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bec:	02bac58c 	addi.w	$r12,$r12,-335(0xeb1)
1c007bf0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007bf4:	2900018d 	st.b	$r13,$r12,0
1c007bf8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bfc:	02ba818c 	addi.w	$r12,$r12,-352(0xea0)
1c007c00:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007c04:	2900018d 	st.b	$r13,$r12,0
1c007c08:	50080400 	b	2052(0x804) # 1c00840c <main+0xeb0>
1c007c0c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c10:	029d758c 	addi.w	$r12,$r12,1885(0x75d)
1c007c14:	2a00018d 	ld.bu	$r13,$r12,0
1c007c18:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007c1c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007c44 <main+0x6e8>
1c007c20:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c24:	02b9e58c 	addi.w	$r12,$r12,-391(0xe79)
1c007c28:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c007c2c:	2900018d 	st.b	$r13,$r12,0
1c007c30:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c34:	02b9a18c 	addi.w	$r12,$r12,-408(0xe68)
1c007c38:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c007c3c:	2900018d 	st.b	$r13,$r12,0
1c007c40:	5007cc00 	b	1996(0x7cc) # 1c00840c <main+0xeb0>
1c007c44:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c48:	029c958c 	addi.w	$r12,$r12,1829(0x725)
1c007c4c:	2a00018d 	ld.bu	$r13,$r12,0
1c007c50:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007c54:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007c7c <main+0x720>
1c007c58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c5c:	02b9058c 	addi.w	$r12,$r12,-447(0xe41)
1c007c60:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c64:	2900018d 	st.b	$r13,$r12,0
1c007c68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c6c:	02b8c18c 	addi.w	$r12,$r12,-464(0xe30)
1c007c70:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c74:	2900018d 	st.b	$r13,$r12,0
1c007c78:	50079400 	b	1940(0x794) # 1c00840c <main+0xeb0>
1c007c7c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c80:	029bb58c 	addi.w	$r12,$r12,1773(0x6ed)
1c007c84:	2a00018d 	ld.bu	$r13,$r12,0
1c007c88:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007c8c:	5c0781ac 	bne	$r13,$r12,1920(0x780) # 1c00840c <main+0xeb0>
1c007c90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c94:	02b8258c 	addi.w	$r12,$r12,-503(0xe09)
1c007c98:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c9c:	2900018d 	st.b	$r13,$r12,0
1c007ca0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ca4:	02b7e18c 	addi.w	$r12,$r12,-520(0xdf8)
1c007ca8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007cac:	2900018d 	st.b	$r13,$r12,0
1c007cb0:	50075c00 	b	1884(0x75c) # 1c00840c <main+0xeb0>
1c007cb4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cb8:	02b7918c 	addi.w	$r12,$r12,-540(0xde4)
1c007cbc:	2a00018d 	ld.bu	$r13,$r12,0
1c007cc0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c007cc4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007cdc <main+0x780>
1c007cc8:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c007ccc:	5407a800 	bl	1960(0x7a8) # 1c008474 <interface_display>
1c007cd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cd4:	02b7218c 	addi.w	$r12,$r12,-568(0xdc8)
1c007cd8:	29000180 	st.b	$r0,$r12,0
1c007cdc:	541c1000 	bl	7184(0x1c10) # 1c0098ec <Key>
1c007ce0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007ce4:	029a258c 	addi.w	$r12,$r12,1673(0x689)
1c007ce8:	2a00018d 	ld.bu	$r13,$r12,0
1c007cec:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007cf0:	5c0725ac 	bne	$r13,$r12,1828(0x724) # 1c008414 <main+0xeb8>
1c007cf4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cf8:	02b6958c 	addi.w	$r12,$r12,-603(0xda5)
1c007cfc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007d00:	2900018d 	st.b	$r13,$r12,0
1c007d04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d08:	02b6518c 	addi.w	$r12,$r12,-620(0xd94)
1c007d0c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007d10:	2900018d 	st.b	$r13,$r12,0
1c007d14:	50070000 	b	1792(0x700) # 1c008414 <main+0xeb8>
1c007d18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d1c:	02b6018c 	addi.w	$r12,$r12,-640(0xd80)
1c007d20:	2a00018d 	ld.bu	$r13,$r12,0
1c007d24:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c007d28:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007d40 <main+0x7e4>
1c007d2c:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007d30:	54074400 	bl	1860(0x744) # 1c008474 <interface_display>
1c007d34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d38:	02b5918c 	addi.w	$r12,$r12,-668(0xd64)
1c007d3c:	29000180 	st.b	$r0,$r12,0
1c007d40:	540fe400 	bl	4068(0xfe4) # 1c008d24 <Write_ID>
1c007d44:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d48:	0298958c 	addi.w	$r12,$r12,1573(0x625)
1c007d4c:	2a00018d 	ld.bu	$r13,$r12,0
1c007d50:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007d54:	5c06c9ac 	bne	$r13,$r12,1736(0x6c8) # 1c00841c <main+0xec0>
1c007d58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d5c:	02b5058c 	addi.w	$r12,$r12,-703(0xd41)
1c007d60:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007d64:	2900018d 	st.b	$r13,$r12,0
1c007d68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d6c:	02b4c18c 	addi.w	$r12,$r12,-720(0xd30)
1c007d70:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007d74:	2900018d 	st.b	$r13,$r12,0
1c007d78:	5006a400 	b	1700(0x6a4) # 1c00841c <main+0xec0>
1c007d7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d80:	02b4718c 	addi.w	$r12,$r12,-740(0xd1c)
1c007d84:	2a00018d 	ld.bu	$r13,$r12,0
1c007d88:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007d8c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007da4 <main+0x848>
1c007d90:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007d94:	5406e000 	bl	1760(0x6e0) # 1c008474 <interface_display>
1c007d98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d9c:	02b4018c 	addi.w	$r12,$r12,-768(0xd00)
1c007da0:	29000180 	st.b	$r0,$r12,0
1c007da4:	541fe800 	bl	8168(0x1fe8) # 1c009d8c <Add_Key>
1c007da8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007dac:	0297058c 	addi.w	$r12,$r12,1473(0x5c1)
1c007db0:	2a00018d 	ld.bu	$r13,$r12,0
1c007db4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007db8:	5c066dac 	bne	$r13,$r12,1644(0x66c) # 1c008424 <main+0xec8>
1c007dbc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007dc0:	02b3758c 	addi.w	$r12,$r12,-803(0xcdd)
1c007dc4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007dc8:	2900018d 	st.b	$r13,$r12,0
1c007dcc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007dd0:	02b3318c 	addi.w	$r12,$r12,-820(0xccc)
1c007dd4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007dd8:	2900018d 	st.b	$r13,$r12,0
1c007ddc:	50064800 	b	1608(0x648) # 1c008424 <main+0xec8>
1c007de0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007de4:	02b2e18c 	addi.w	$r12,$r12,-840(0xcb8)
1c007de8:	2a00018d 	ld.bu	$r13,$r12,0
1c007dec:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007df0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007e08 <main+0x8ac>
1c007df4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c007df8:	54067c00 	bl	1660(0x67c) # 1c008474 <interface_display>
1c007dfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e00:	02b2718c 	addi.w	$r12,$r12,-868(0xc9c)
1c007e04:	29000180 	st.b	$r0,$r12,0
1c007e08:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e0c:	0295858c 	addi.w	$r12,$r12,1377(0x561)
1c007e10:	2a00018d 	ld.bu	$r13,$r12,0
1c007e14:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007e18:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007e40 <main+0x8e4>
1c007e1c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e20:	02b1f58c 	addi.w	$r12,$r12,-899(0xc7d)
1c007e24:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c007e28:	2900018d 	st.b	$r13,$r12,0
1c007e2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e30:	02b1b18c 	addi.w	$r12,$r12,-916(0xc6c)
1c007e34:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c007e38:	2900018d 	st.b	$r13,$r12,0
1c007e3c:	5005f000 	b	1520(0x5f0) # 1c00842c <main+0xed0>
1c007e40:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e44:	0294a58c 	addi.w	$r12,$r12,1321(0x529)
1c007e48:	2a00018d 	ld.bu	$r13,$r12,0
1c007e4c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007e50:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007e78 <main+0x91c>
1c007e54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e58:	02b1158c 	addi.w	$r12,$r12,-955(0xc45)
1c007e5c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e60:	2900018d 	st.b	$r13,$r12,0
1c007e64:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e68:	02b0d18c 	addi.w	$r12,$r12,-972(0xc34)
1c007e6c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e70:	2900018d 	st.b	$r13,$r12,0
1c007e74:	5005b800 	b	1464(0x5b8) # 1c00842c <main+0xed0>
1c007e78:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e7c:	0293c58c 	addi.w	$r12,$r12,1265(0x4f1)
1c007e80:	2a00018d 	ld.bu	$r13,$r12,0
1c007e84:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007e88:	5c05a5ac 	bne	$r13,$r12,1444(0x5a4) # 1c00842c <main+0xed0>
1c007e8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e90:	02b0358c 	addi.w	$r12,$r12,-1011(0xc0d)
1c007e94:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e98:	2900018d 	st.b	$r13,$r12,0
1c007e9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ea0:	02aff18c 	addi.w	$r12,$r12,-1028(0xbfc)
1c007ea4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007ea8:	2900018d 	st.b	$r13,$r12,0
1c007eac:	50058000 	b	1408(0x580) # 1c00842c <main+0xed0>
1c007eb0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007eb4:	02afa18c 	addi.w	$r12,$r12,-1048(0xbe8)
1c007eb8:	2a00018d 	ld.bu	$r13,$r12,0
1c007ebc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007ec0:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c007edc <main+0x980>
1c007ec4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007ec8:	5405ac00 	bl	1452(0x5ac) # 1c008474 <interface_display>
1c007ecc:	54220400 	bl	8708(0x2204) # 1c00a0d0 <Delete_key>
1c007ed0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ed4:	02af218c 	addi.w	$r12,$r12,-1080(0xbc8)
1c007ed8:	29000180 	st.b	$r0,$r12,0
1c007edc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007ee0:	0292358c 	addi.w	$r12,$r12,1165(0x48d)
1c007ee4:	2a00018d 	ld.bu	$r13,$r12,0
1c007ee8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007eec:	5c0549ac 	bne	$r13,$r12,1352(0x548) # 1c008434 <main+0xed8>
1c007ef0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ef4:	02aea58c 	addi.w	$r12,$r12,-1111(0xba9)
1c007ef8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007efc:	2900018d 	st.b	$r13,$r12,0
1c007f00:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f04:	02ae618c 	addi.w	$r12,$r12,-1128(0xb98)
1c007f08:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007f0c:	2900018d 	st.b	$r13,$r12,0
1c007f10:	50052400 	b	1316(0x524) # 1c008434 <main+0xed8>
1c007f14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f18:	02ae118c 	addi.w	$r12,$r12,-1148(0xb84)
1c007f1c:	2a00018d 	ld.bu	$r13,$r12,0
1c007f20:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007f24:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007f3c <main+0x9e0>
1c007f28:	02804004 	addi.w	$r4,$r0,16(0x10)
1c007f2c:	54054800 	bl	1352(0x548) # 1c008474 <interface_display>
1c007f30:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f34:	02ada18c 	addi.w	$r12,$r12,-1176(0xb68)
1c007f38:	29000180 	st.b	$r0,$r12,0
1c007f3c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007f40:	0290b58c 	addi.w	$r12,$r12,1069(0x42d)
1c007f44:	2a00018d 	ld.bu	$r13,$r12,0
1c007f48:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007f4c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007f74 <main+0xa18>
1c007f50:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f54:	02ad258c 	addi.w	$r12,$r12,-1207(0xb49)
1c007f58:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c007f5c:	2900018d 	st.b	$r13,$r12,0
1c007f60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f64:	02ace18c 	addi.w	$r12,$r12,-1224(0xb38)
1c007f68:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c007f6c:	2900018d 	st.b	$r13,$r12,0
1c007f70:	5004cc00 	b	1228(0x4cc) # 1c00843c <main+0xee0>
1c007f74:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007f78:	028fd58c 	addi.w	$r12,$r12,1013(0x3f5)
1c007f7c:	2a00018d 	ld.bu	$r13,$r12,0
1c007f80:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007f84:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007fac <main+0xa50>
1c007f88:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f8c:	02ac458c 	addi.w	$r12,$r12,-1263(0xb11)
1c007f90:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f94:	2900018d 	st.b	$r13,$r12,0
1c007f98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f9c:	02ac018c 	addi.w	$r12,$r12,-1280(0xb00)
1c007fa0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007fa4:	2900018d 	st.b	$r13,$r12,0
1c007fa8:	50049400 	b	1172(0x494) # 1c00843c <main+0xee0>
1c007fac:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007fb0:	028ef58c 	addi.w	$r12,$r12,957(0x3bd)
1c007fb4:	2a00018d 	ld.bu	$r13,$r12,0
1c007fb8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007fbc:	5c0481ac 	bne	$r13,$r12,1152(0x480) # 1c00843c <main+0xee0>
1c007fc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fc4:	02ab658c 	addi.w	$r12,$r12,-1319(0xad9)
1c007fc8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007fcc:	2900018d 	st.b	$r13,$r12,0
1c007fd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fd4:	02ab218c 	addi.w	$r12,$r12,-1336(0xac8)
1c007fd8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007fdc:	2900018d 	st.b	$r13,$r12,0
1c007fe0:	50045c00 	b	1116(0x45c) # 1c00843c <main+0xee0>
1c007fe4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fe8:	02aad18c 	addi.w	$r12,$r12,-1356(0xab4)
1c007fec:	2a00018d 	ld.bu	$r13,$r12,0
1c007ff0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007ff4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c008010 <main+0xab4>
1c007ff8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007ffc:	54047800 	bl	1144(0x478) # 1c008474 <interface_display>
1c008000:	540f4800 	bl	3912(0xf48) # 1c008f48 <Delate_ID>
1c008004:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008008:	02aa518c 	addi.w	$r12,$r12,-1388(0xa94)
1c00800c:	29000180 	st.b	$r0,$r12,0
1c008010:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008014:	028d658c 	addi.w	$r12,$r12,857(0x359)
1c008018:	2a00018d 	ld.bu	$r13,$r12,0
1c00801c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008020:	5c0425ac 	bne	$r13,$r12,1060(0x424) # 1c008444 <main+0xee8>
1c008024:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008028:	02a9d58c 	addi.w	$r12,$r12,-1419(0xa75)
1c00802c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008030:	2900018d 	st.b	$r13,$r12,0
1c008034:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008038:	02a9918c 	addi.w	$r12,$r12,-1436(0xa64)
1c00803c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008040:	2900018d 	st.b	$r13,$r12,0
1c008044:	50040000 	b	1024(0x400) # 1c008444 <main+0xee8>
1c008048:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00804c:	02a9418c 	addi.w	$r12,$r12,-1456(0xa50)
1c008050:	2a00018d 	ld.bu	$r13,$r12,0
1c008054:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008058:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c008084 <main+0xb28>
1c00805c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c008060:	54041400 	bl	1044(0x414) # 1c008474 <interface_display>
1c008064:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008068:	02a8d58c 	addi.w	$r12,$r12,-1483(0xa35)
1c00806c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008070:	2900018d 	st.b	$r13,$r12,0
1c008074:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008078:	02a8918c 	addi.w	$r12,$r12,-1500(0xa24)
1c00807c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c008080:	2900018d 	st.b	$r13,$r12,0
1c008084:	57b2dbff 	bl	-19752(0xfffb2d8) # 1c00335c <press_FR>
1c008088:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00808c:	028b858c 	addi.w	$r12,$r12,737(0x2e1)
1c008090:	2a00018d 	ld.bu	$r13,$r12,0
1c008094:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008098:	5c03b5ac 	bne	$r13,$r12,948(0x3b4) # 1c00844c <main+0xef0>
1c00809c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080a0:	02a7f58c 	addi.w	$r12,$r12,-1539(0x9fd)
1c0080a4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0080a8:	2900018d 	st.b	$r13,$r12,0
1c0080ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080b0:	02a7b18c 	addi.w	$r12,$r12,-1556(0x9ec)
1c0080b4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0080b8:	2900018d 	st.b	$r13,$r12,0
1c0080bc:	50039000 	b	912(0x390) # 1c00844c <main+0xef0>
1c0080c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080c4:	02a7618c 	addi.w	$r12,$r12,-1576(0x9d8)
1c0080c8:	2a00018d 	ld.bu	$r13,$r12,0
1c0080cc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0080d0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0080e8 <main+0xb8c>
1c0080d4:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0080d8:	54039c00 	bl	924(0x39c) # 1c008474 <interface_display>
1c0080dc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080e0:	02a6f18c 	addi.w	$r12,$r12,-1604(0x9bc)
1c0080e4:	29000180 	st.b	$r0,$r12,0
1c0080e8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0080ec:	028a058c 	addi.w	$r12,$r12,641(0x281)
1c0080f0:	2a00018d 	ld.bu	$r13,$r12,0
1c0080f4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0080f8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008120 <main+0xbc4>
1c0080fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008100:	02a6758c 	addi.w	$r12,$r12,-1635(0x99d)
1c008104:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c008108:	2900018d 	st.b	$r13,$r12,0
1c00810c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008110:	02a6318c 	addi.w	$r12,$r12,-1652(0x98c)
1c008114:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c008118:	2900018d 	st.b	$r13,$r12,0
1c00811c:	50033800 	b	824(0x338) # 1c008454 <main+0xef8>
1c008120:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008124:	0289258c 	addi.w	$r12,$r12,585(0x249)
1c008128:	2a00018d 	ld.bu	$r13,$r12,0
1c00812c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c008130:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008158 <main+0xbfc>
1c008134:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008138:	02a5958c 	addi.w	$r12,$r12,-1691(0x965)
1c00813c:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c008140:	2900018d 	st.b	$r13,$r12,0
1c008144:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008148:	02a5518c 	addi.w	$r12,$r12,-1708(0x954)
1c00814c:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c008150:	2900018d 	st.b	$r13,$r12,0
1c008154:	50030000 	b	768(0x300) # 1c008454 <main+0xef8>
1c008158:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00815c:	0288458c 	addi.w	$r12,$r12,529(0x211)
1c008160:	2a00018d 	ld.bu	$r13,$r12,0
1c008164:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008168:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008190 <main+0xc34>
1c00816c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008170:	02a4b58c 	addi.w	$r12,$r12,-1747(0x92d)
1c008174:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008178:	2900018d 	st.b	$r13,$r12,0
1c00817c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008180:	02a4718c 	addi.w	$r12,$r12,-1764(0x91c)
1c008184:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008188:	2900018d 	st.b	$r13,$r12,0
1c00818c:	5002c800 	b	712(0x2c8) # 1c008454 <main+0xef8>
1c008190:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008194:	0287658c 	addi.w	$r12,$r12,473(0x1d9)
1c008198:	2a00018d 	ld.bu	$r13,$r12,0
1c00819c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0081a0:	5c02b5ac 	bne	$r13,$r12,692(0x2b4) # 1c008454 <main+0xef8>
1c0081a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081a8:	02a3d58c 	addi.w	$r12,$r12,-1803(0x8f5)
1c0081ac:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0081b0:	2900018d 	st.b	$r13,$r12,0
1c0081b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081b8:	02a3918c 	addi.w	$r12,$r12,-1820(0x8e4)
1c0081bc:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0081c0:	2900018d 	st.b	$r13,$r12,0
1c0081c4:	50029000 	b	656(0x290) # 1c008454 <main+0xef8>
1c0081c8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081cc:	02a3418c 	addi.w	$r12,$r12,-1840(0x8d0)
1c0081d0:	2a00018d 	ld.bu	$r13,$r12,0
1c0081d4:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0081d8:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c008204 <main+0xca8>
1c0081dc:	02805404 	addi.w	$r4,$r0,21(0x15)
1c0081e0:	54029400 	bl	660(0x294) # 1c008474 <interface_display>
1c0081e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081e8:	02a2d58c 	addi.w	$r12,$r12,-1867(0x8b5)
1c0081ec:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081f0:	2900018d 	st.b	$r13,$r12,0
1c0081f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081f8:	02a2918c 	addi.w	$r12,$r12,-1884(0x8a4)
1c0081fc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008200:	2900018d 	st.b	$r13,$r12,0
1c008204:	57aacfff 	bl	-21812(0xfffaacc) # 1c002cd0 <Add_FR>
1c008208:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00820c:	0285858c 	addi.w	$r12,$r12,353(0x161)
1c008210:	2a00018d 	ld.bu	$r13,$r12,0
1c008214:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008218:	5c0245ac 	bne	$r13,$r12,580(0x244) # 1c00845c <main+0xf00>
1c00821c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008220:	02a1f58c 	addi.w	$r12,$r12,-1923(0x87d)
1c008224:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008228:	2900018d 	st.b	$r13,$r12,0
1c00822c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008230:	02a1b18c 	addi.w	$r12,$r12,-1940(0x86c)
1c008234:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008238:	2900018d 	st.b	$r13,$r12,0
1c00823c:	50022000 	b	544(0x220) # 1c00845c <main+0xf00>
1c008240:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008244:	02a1618c 	addi.w	$r12,$r12,-1960(0x858)
1c008248:	2a00018d 	ld.bu	$r13,$r12,0
1c00824c:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c008250:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c008268 <main+0xd0c>
1c008254:	02805004 	addi.w	$r4,$r0,20(0x14)
1c008258:	54021c00 	bl	540(0x21c) # 1c008474 <interface_display>
1c00825c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008260:	02a0f18c 	addi.w	$r12,$r12,-1988(0x83c)
1c008264:	29000180 	st.b	$r0,$r12,0
1c008268:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00826c:	0284058c 	addi.w	$r12,$r12,257(0x101)
1c008270:	2a00018d 	ld.bu	$r13,$r12,0
1c008274:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c008278:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0082a0 <main+0xd44>
1c00827c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008280:	02a0758c 	addi.w	$r12,$r12,-2019(0x81d)
1c008284:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c008288:	2900018d 	st.b	$r13,$r12,0
1c00828c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008290:	02a0318c 	addi.w	$r12,$r12,-2036(0x80c)
1c008294:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c008298:	2900018d 	st.b	$r13,$r12,0
1c00829c:	5001c800 	b	456(0x1c8) # 1c008464 <main+0xf08>
1c0082a0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0082a4:	0283258c 	addi.w	$r12,$r12,201(0xc9)
1c0082a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0082ac:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0082b0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0082d8 <main+0xd7c>
1c0082b4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082b8:	029f958c 	addi.w	$r12,$r12,2021(0x7e5)
1c0082bc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082c0:	2900018d 	st.b	$r13,$r12,0
1c0082c4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082c8:	029f518c 	addi.w	$r12,$r12,2004(0x7d4)
1c0082cc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082d0:	2900018d 	st.b	$r13,$r12,0
1c0082d4:	50019000 	b	400(0x190) # 1c008464 <main+0xf08>
1c0082d8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0082dc:	0282458c 	addi.w	$r12,$r12,145(0x91)
1c0082e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0082e4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0082e8:	5c017dac 	bne	$r13,$r12,380(0x17c) # 1c008464 <main+0xf08>
1c0082ec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082f0:	029eb58c 	addi.w	$r12,$r12,1965(0x7ad)
1c0082f4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082f8:	2900018d 	st.b	$r13,$r12,0
1c0082fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008300:	029e718c 	addi.w	$r12,$r12,1948(0x79c)
1c008304:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008308:	2900018d 	st.b	$r13,$r12,0
1c00830c:	50015800 	b	344(0x158) # 1c008464 <main+0xf08>
1c008310:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008314:	029e218c 	addi.w	$r12,$r12,1928(0x788)
1c008318:	2a00018d 	ld.bu	$r13,$r12,0
1c00831c:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c008320:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c008350 <main+0xdf4>
1c008324:	02803804 	addi.w	$r4,$r0,14(0xe)
1c008328:	54014c00 	bl	332(0x14c) # 1c008474 <interface_display>
1c00832c:	57b31bff 	bl	-19688(0xfffb318) # 1c003644 <Del_FR_Lib>
1c008330:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008334:	029da58c 	addi.w	$r12,$r12,1897(0x769)
1c008338:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00833c:	2900018d 	st.b	$r13,$r12,0
1c008340:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008344:	029d618c 	addi.w	$r12,$r12,1880(0x758)
1c008348:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00834c:	2900018d 	st.b	$r13,$r12,0
1c008350:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008354:	0280658c 	addi.w	$r12,$r12,25(0x19)
1c008358:	2a00018d 	ld.bu	$r13,$r12,0
1c00835c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008360:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c00846c <main+0xf10>
1c008364:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008368:	029cd58c 	addi.w	$r12,$r12,1845(0x735)
1c00836c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008370:	2900018d 	st.b	$r13,$r12,0
1c008374:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008378:	029c918c 	addi.w	$r12,$r12,1828(0x724)
1c00837c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008380:	2900018d 	st.b	$r13,$r12,0
1c008384:	5000e800 	b	232(0xe8) # 1c00846c <main+0xf10>
1c008388:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00838c:	02bf898c 	addi.w	$r12,$r12,-30(0xfe2)
1c008390:	2a00018c 	ld.bu	$r12,$r12,0
1c008394:	44001980 	bnez	$r12,24(0x18) # 1c0083ac <main+0xe50>
1c008398:	57d57fff 	bl	-10884(0xfffd57c) # 1c005914 <OLED_CLS>
1c00839c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0083a0:	02bf398c 	addi.w	$r12,$r12,-50(0xfce)
1c0083a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0083a8:	2900018d 	st.b	$r13,$r12,0
1c0083ac:	57cddfff 	bl	-12836(0xfffcddc) # 1c005188 <LEDgree_OFF>
1c0083b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083b4:	029ba58c 	addi.w	$r12,$r12,1769(0x6e9)
1c0083b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0083bc:	2900018d 	st.b	$r13,$r12,0
1c0083c0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0083c4:	029b618c 	addi.w	$r12,$r12,1752(0x6d8)
1c0083c8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0083cc:	2900018d 	st.b	$r13,$r12,0
1c0083d0:	53f2ffff 	b	-3332(0xffff2fc) # 1c0076cc <main+0x170>
1c0083d4:	03400000 	andi	$r0,$r0,0x0
1c0083d8:	53f2f7ff 	b	-3340(0xffff2f4) # 1c0076cc <main+0x170>
1c0083dc:	03400000 	andi	$r0,$r0,0x0
1c0083e0:	53f2efff 	b	-3348(0xffff2ec) # 1c0076cc <main+0x170>
1c0083e4:	03400000 	andi	$r0,$r0,0x0
1c0083e8:	53f2e7ff 	b	-3356(0xffff2e4) # 1c0076cc <main+0x170>
1c0083ec:	03400000 	andi	$r0,$r0,0x0
1c0083f0:	53f2dfff 	b	-3364(0xffff2dc) # 1c0076cc <main+0x170>
1c0083f4:	03400000 	andi	$r0,$r0,0x0
1c0083f8:	53f2d7ff 	b	-3372(0xffff2d4) # 1c0076cc <main+0x170>
1c0083fc:	03400000 	andi	$r0,$r0,0x0
1c008400:	53f2cfff 	b	-3380(0xffff2cc) # 1c0076cc <main+0x170>
1c008404:	03400000 	andi	$r0,$r0,0x0
1c008408:	53f2c7ff 	b	-3388(0xffff2c4) # 1c0076cc <main+0x170>
1c00840c:	03400000 	andi	$r0,$r0,0x0
1c008410:	53f2bfff 	b	-3396(0xffff2bc) # 1c0076cc <main+0x170>
1c008414:	03400000 	andi	$r0,$r0,0x0
1c008418:	53f2b7ff 	b	-3404(0xffff2b4) # 1c0076cc <main+0x170>
1c00841c:	03400000 	andi	$r0,$r0,0x0
1c008420:	53f2afff 	b	-3412(0xffff2ac) # 1c0076cc <main+0x170>
1c008424:	03400000 	andi	$r0,$r0,0x0
1c008428:	53f2a7ff 	b	-3420(0xffff2a4) # 1c0076cc <main+0x170>
1c00842c:	03400000 	andi	$r0,$r0,0x0
1c008430:	53f29fff 	b	-3428(0xffff29c) # 1c0076cc <main+0x170>
1c008434:	03400000 	andi	$r0,$r0,0x0
1c008438:	53f297ff 	b	-3436(0xffff294) # 1c0076cc <main+0x170>
1c00843c:	03400000 	andi	$r0,$r0,0x0
1c008440:	53f28fff 	b	-3444(0xffff28c) # 1c0076cc <main+0x170>
1c008444:	03400000 	andi	$r0,$r0,0x0
1c008448:	53f287ff 	b	-3452(0xffff284) # 1c0076cc <main+0x170>
1c00844c:	03400000 	andi	$r0,$r0,0x0
1c008450:	53f27fff 	b	-3460(0xffff27c) # 1c0076cc <main+0x170>
1c008454:	03400000 	andi	$r0,$r0,0x0
1c008458:	53f277ff 	b	-3468(0xffff274) # 1c0076cc <main+0x170>
1c00845c:	03400000 	andi	$r0,$r0,0x0
1c008460:	53f26fff 	b	-3476(0xffff26c) # 1c0076cc <main+0x170>
1c008464:	03400000 	andi	$r0,$r0,0x0
1c008468:	53f267ff 	b	-3484(0xffff264) # 1c0076cc <main+0x170>
1c00846c:	03400000 	andi	$r0,$r0,0x0
1c008470:	53f25fff 	b	-3492(0xffff25c) # 1c0076cc <main+0x170>

1c008474 <interface_display>:
interface_display():
1c008474:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008478:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00847c:	29806076 	st.w	$r22,$r3,24(0x18)
1c008480:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008484:	0015008c 	move	$r12,$r4
1c008488:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00848c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c008490:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c008494:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c008d10 <interface_display+0x89c>
1c008498:	0040898d 	slli.w	$r13,$r12,0x2
1c00849c:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0084a0:	029ea18c 	addi.w	$r12,$r12,1960(0x7a8)
1c0084a4:	001031ac 	add.w	$r12,$r13,$r12
1c0084a8:	2880018c 	ld.w	$r12,$r12,0
1c0084ac:	4c000180 	jirl	$r0,$r12,0
1c0084b0:	57d467ff 	bl	-11164(0xfffd464) # 1c005914 <OLED_CLS>
1c0084b4:	1c000068 	pcaddu12i	$r8,3(0x3)
1c0084b8:	02972108 	addi.w	$r8,$r8,1480(0x5c8)
1c0084bc:	02801407 	addi.w	$r7,$r0,5(0x5)
1c0084c0:	02814006 	addi.w	$r6,$r0,80(0x50)
1c0084c4:	00150005 	move	$r5,$r0
1c0084c8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0084cc:	57d827ff 	bl	-10204(0xfffd824) # 1c005cf0 <OLED_DrawBMP>
1c0084d0:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c0084d4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0084d8:	00150004 	move	$r4,$r0
1c0084dc:	57d697ff 	bl	-10604(0xfffd694) # 1c005b70 <OLED_ShowCN>
1c0084e0:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0084e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0084e8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0084ec:	57d687ff 	bl	-10620(0xfffd684) # 1c005b70 <OLED_ShowCN>
1c0084f0:	02803406 	addi.w	$r6,$r0,13(0xd)
1c0084f4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0084f8:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c0084fc:	57d677ff 	bl	-10636(0xfffd674) # 1c005b70 <OLED_ShowCN>
1c008500:	02803806 	addi.w	$r6,$r0,14(0xe)
1c008504:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008508:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c00850c:	57d667ff 	bl	-10652(0xfffd664) # 1c005b70 <OLED_ShowCN>
1c008510:	50080000 	b	2048(0x800) # 1c008d10 <interface_display+0x89c>
1c008514:	57d403ff 	bl	-11264(0xfffd400) # 1c005914 <OLED_CLS>
1c008518:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c00851c:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c008520:	00150005 	move	$r5,$r0
1c008524:	02802804 	addi.w	$r4,$r0,10(0xa)
1c008528:	57d73fff 	bl	-10436(0xfffd73c) # 1c005c64 <OLED_ShowCN_STR>
1c00852c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008530:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008534:	029c00c6 	addi.w	$r6,$r6,1792(0x700)
1c008538:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00853c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008540:	57d403ff 	bl	-11264(0xfffd400) # 1c005940 <OLED_ShowStr>
1c008544:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008548:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00854c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008550:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008554:	57d713ff 	bl	-10480(0xfffd710) # 1c005c64 <OLED_ShowCN_STR>
1c008558:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00855c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008560:	029b60c6 	addi.w	$r6,$r6,1752(0x6d8)
1c008564:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008568:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00856c:	57d3d7ff 	bl	-11308(0xfffd3d4) # 1c005940 <OLED_ShowStr>
1c008570:	02801007 	addi.w	$r7,$r0,4(0x4)
1c008574:	02802406 	addi.w	$r6,$r0,9(0x9)
1c008578:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00857c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008580:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c005c64 <OLED_ShowCN_STR>
1c008584:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008588:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00858c:	029ac0c6 	addi.w	$r6,$r6,1712(0x6b0)
1c008590:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008594:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008598:	57d3abff 	bl	-11352(0xfffd3a8) # 1c005940 <OLED_ShowStr>
1c00859c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085a0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0085a4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0085a8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0085ac:	57d6bbff 	bl	-10568(0xfffd6b8) # 1c005c64 <OLED_ShowCN_STR>
1c0085b0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085b4:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c0085b8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0085bc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0085c0:	57d6a7ff 	bl	-10588(0xfffd6a4) # 1c005c64 <OLED_ShowCN_STR>
1c0085c4:	50074c00 	b	1868(0x74c) # 1c008d10 <interface_display+0x89c>
1c0085c8:	57d34fff 	bl	-11444(0xfffd34c) # 1c005914 <OLED_CLS>
1c0085cc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0085d0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0085d4:	00150005 	move	$r5,$r0
1c0085d8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0085dc:	57d68bff 	bl	-10616(0xfffd688) # 1c005c64 <OLED_ShowCN_STR>
1c0085e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085e4:	02803406 	addi.w	$r6,$r0,13(0xd)
1c0085e8:	00150005 	move	$r5,$r0
1c0085ec:	02811804 	addi.w	$r4,$r0,70(0x46)
1c0085f0:	57d677ff 	bl	-10636(0xfffd674) # 1c005c64 <OLED_ShowCN_STR>
1c0085f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0085fc:	0298e0c6 	addi.w	$r6,$r6,1592(0x638)
1c008600:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008604:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008608:	57d33bff 	bl	-11464(0xfffd338) # 1c005940 <OLED_ShowStr>
1c00860c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008610:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008614:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008618:	57d55bff 	bl	-10920(0xfffd558) # 1c005b70 <OLED_ShowCN>
1c00861c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008620:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008624:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008628:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c00862c:	57d63bff 	bl	-10696(0xfffd638) # 1c005c64 <OLED_ShowCN_STR>
1c008630:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008634:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008638:	029800c6 	addi.w	$r6,$r6,1536(0x600)
1c00863c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008640:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008644:	57d2ffff 	bl	-11524(0xfffd2fc) # 1c005940 <OLED_ShowStr>
1c008648:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00864c:	02802406 	addi.w	$r6,$r0,9(0x9)
1c008650:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008654:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008658:	57d60fff 	bl	-10740(0xfffd60c) # 1c005c64 <OLED_ShowCN_STR>
1c00865c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008660:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008664:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008668:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00866c:	57d5fbff 	bl	-10760(0xfffd5f8) # 1c005c64 <OLED_ShowCN_STR>
1c008670:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008674:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008678:	029710c6 	addi.w	$r6,$r6,1476(0x5c4)
1c00867c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008680:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008684:	57d2bfff 	bl	-11588(0xfffd2bc) # 1c005940 <OLED_ShowStr>
1c008688:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00868c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008690:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008694:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008698:	57d5cfff 	bl	-10804(0xfffd5cc) # 1c005c64 <OLED_ShowCN_STR>
1c00869c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0086a0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0086a4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0086a8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0086ac:	57d5bbff 	bl	-10824(0xfffd5b8) # 1c005c64 <OLED_ShowCN_STR>
1c0086b0:	50066000 	b	1632(0x660) # 1c008d10 <interface_display+0x89c>
1c0086b4:	57d263ff 	bl	-11680(0xfffd260) # 1c005914 <OLED_CLS>
1c0086b8:	02805806 	addi.w	$r6,$r0,22(0x16)
1c0086bc:	00150005 	move	$r5,$r0
1c0086c0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0086c4:	57d4afff 	bl	-11092(0xfffd4ac) # 1c005b70 <OLED_ShowCN>
1c0086c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0086cc:	02808406 	addi.w	$r6,$r0,33(0x21)
1c0086d0:	00150005 	move	$r5,$r0
1c0086d4:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c0086d8:	57d58fff 	bl	-10868(0xfffd58c) # 1c005c64 <OLED_ShowCN_STR>
1c0086dc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0086e0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0086e4:	00150005 	move	$r5,$r0
1c0086e8:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c0086ec:	57d57bff 	bl	-10888(0xfffd578) # 1c005c64 <OLED_ShowCN_STR>
1c0086f0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0086f4:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c0086f8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0086fc:	00150004 	move	$r4,$r0
1c008700:	57d567ff 	bl	-10908(0xfffd564) # 1c005c64 <OLED_ShowCN_STR>
1c008704:	50060c00 	b	1548(0x60c) # 1c008d10 <interface_display+0x89c>
1c008708:	57d20fff 	bl	-11764(0xfffd20c) # 1c005914 <OLED_CLS>
1c00870c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008710:	02805806 	addi.w	$r6,$r0,22(0x16)
1c008714:	00150005 	move	$r5,$r0
1c008718:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00871c:	57d54bff 	bl	-10936(0xfffd548) # 1c005c64 <OLED_ShowCN_STR>
1c008720:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008724:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c008728:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00872c:	00150004 	move	$r4,$r0
1c008730:	57d537ff 	bl	-10956(0xfffd534) # 1c005c64 <OLED_ShowCN_STR>
1c008734:	5005dc00 	b	1500(0x5dc) # 1c008d10 <interface_display+0x89c>
1c008738:	57d1dfff 	bl	-11812(0xfffd1dc) # 1c005914 <OLED_CLS>
1c00873c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c008740:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c008744:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008748:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00874c:	57d51bff 	bl	-10984(0xfffd518) # 1c005c64 <OLED_ShowCN_STR>
1c008750:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008754:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c008758:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00875c:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c008760:	57d507ff 	bl	-11004(0xfffd504) # 1c005c64 <OLED_ShowCN_STR>
1c008764:	5005ac00 	b	1452(0x5ac) # 1c008d10 <interface_display+0x89c>
1c008768:	57d1afff 	bl	-11860(0xfffd1ac) # 1c005914 <OLED_CLS>
1c00876c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008770:	02805806 	addi.w	$r6,$r0,22(0x16)
1c008774:	00150005 	move	$r5,$r0
1c008778:	00150004 	move	$r4,$r0
1c00877c:	57d4ebff 	bl	-11032(0xfffd4e8) # 1c005c64 <OLED_ShowCN_STR>
1c008780:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008784:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008788:	00150005 	move	$r5,$r0
1c00878c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c008790:	57d4d7ff 	bl	-11052(0xfffd4d4) # 1c005c64 <OLED_ShowCN_STR>
1c008794:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008798:	02806406 	addi.w	$r6,$r0,25(0x19)
1c00879c:	00150005 	move	$r5,$r0
1c0087a0:	02818004 	addi.w	$r4,$r0,96(0x60)
1c0087a4:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c005c64 <OLED_ShowCN_STR>
1c0087a8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087ac:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c0087b0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0087b4:	00150004 	move	$r4,$r0
1c0087b8:	57d4afff 	bl	-11092(0xfffd4ac) # 1c005c64 <OLED_ShowCN_STR>
1c0087bc:	50055400 	b	1364(0x554) # 1c008d10 <interface_display+0x89c>
1c0087c0:	57d157ff 	bl	-11948(0xfffd154) # 1c005914 <OLED_CLS>
1c0087c4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0087c8:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c0087cc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087d0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0087d4:	57d493ff 	bl	-11120(0xfffd490) # 1c005c64 <OLED_ShowCN_STR>
1c0087d8:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c0087dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087e0:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c0087e4:	57d38fff 	bl	-11380(0xfffd38c) # 1c005b70 <OLED_ShowCN>
1c0087e8:	02808006 	addi.w	$r6,$r0,32(0x20)
1c0087ec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087f0:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c0087f4:	57d37fff 	bl	-11396(0xfffd37c) # 1c005b70 <OLED_ShowCN>
1c0087f8:	50051800 	b	1304(0x518) # 1c008d10 <interface_display+0x89c>
1c0087fc:	57d11bff 	bl	-12008(0xfffd118) # 1c005914 <OLED_CLS>
1c008800:	02801007 	addi.w	$r7,$r0,4(0x4)
1c008804:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c008808:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00880c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c008810:	57d457ff 	bl	-11180(0xfffd454) # 1c005c64 <OLED_ShowCN_STR>
1c008814:	5004fc00 	b	1276(0x4fc) # 1c008d10 <interface_display+0x89c>
1c008818:	57d0ffff 	bl	-12036(0xfffd0fc) # 1c005914 <OLED_CLS>
1c00881c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008820:	00150005 	move	$r5,$r0
1c008824:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008828:	57d34bff 	bl	-11448(0xfffd348) # 1c005b70 <OLED_ShowCN>
1c00882c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008830:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008834:	00150005 	move	$r5,$r0
1c008838:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c00883c:	57d42bff 	bl	-11224(0xfffd428) # 1c005c64 <OLED_ShowCN_STR>
1c008840:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008844:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008848:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c00884c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008850:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008854:	57d0efff 	bl	-12052(0xfffd0ec) # 1c005940 <OLED_ShowStr>
1c008858:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00885c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008860:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008864:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008868:	57d3ffff 	bl	-11268(0xfffd3fc) # 1c005c64 <OLED_ShowCN_STR>
1c00886c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008870:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008874:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008878:	57d2fbff 	bl	-11528(0xfffd2f8) # 1c005b70 <OLED_ShowCN>
1c00887c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008880:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008884:	028ed0c6 	addi.w	$r6,$r6,948(0x3b4)
1c008888:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00888c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008890:	57d0b3ff 	bl	-12112(0xfffd0b0) # 1c005940 <OLED_ShowStr>
1c008894:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008898:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c00889c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0088a0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0088a4:	57d3c3ff 	bl	-11328(0xfffd3c0) # 1c005c64 <OLED_ShowCN_STR>
1c0088a8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0088ac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0088b0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0088b4:	57d2bfff 	bl	-11588(0xfffd2bc) # 1c005b70 <OLED_ShowCN>
1c0088b8:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0088bc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0088c0:	02816004 	addi.w	$r4,$r0,88(0x58)
1c0088c4:	57d2afff 	bl	-11604(0xfffd2ac) # 1c005b70 <OLED_ShowCN>
1c0088c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0088d0:	028db0c6 	addi.w	$r6,$r6,876(0x36c)
1c0088d4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0088d8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0088dc:	57d067ff 	bl	-12188(0xfffd064) # 1c005940 <OLED_ShowStr>
1c0088e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088e4:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0088e8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0088ec:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0088f0:	57d377ff 	bl	-11404(0xfffd374) # 1c005c64 <OLED_ShowCN_STR>
1c0088f4:	50041c00 	b	1052(0x41c) # 1c008d10 <interface_display+0x89c>
1c0088f8:	57d01fff 	bl	-12260(0xfffd01c) # 1c005914 <OLED_CLS>
1c0088fc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008900:	02802406 	addi.w	$r6,$r0,9(0x9)
1c008904:	00150005 	move	$r5,$r0
1c008908:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00890c:	57d35bff 	bl	-11432(0xfffd358) # 1c005c64 <OLED_ShowCN_STR>
1c008910:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008914:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008918:	00150005 	move	$r5,$r0
1c00891c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008920:	57d347ff 	bl	-11452(0xfffd344) # 1c005c64 <OLED_ShowCN_STR>
1c008924:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008928:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00892c:	028c20c6 	addi.w	$r6,$r6,776(0x308)
1c008930:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008934:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008938:	57d00bff 	bl	-12280(0xfffd008) # 1c005940 <OLED_ShowStr>
1c00893c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008940:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008944:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008948:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00894c:	57d31bff 	bl	-11496(0xfffd318) # 1c005c64 <OLED_ShowCN_STR>
1c008950:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008954:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008958:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00895c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008960:	57d307ff 	bl	-11516(0xfffd304) # 1c005c64 <OLED_ShowCN_STR>
1c008964:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008968:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00896c:	028b30c6 	addi.w	$r6,$r6,716(0x2cc)
1c008970:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008974:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008978:	57cfcbff 	bl	-12344(0xfffcfc8) # 1c005940 <OLED_ShowStr>
1c00897c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008980:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008984:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008988:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00898c:	57d2dbff 	bl	-11560(0xfffd2d8) # 1c005c64 <OLED_ShowCN_STR>
1c008990:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008994:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008998:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00899c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0089a0:	57d2c7ff 	bl	-11580(0xfffd2c4) # 1c005c64 <OLED_ShowCN_STR>
1c0089a4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0089a8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0089ac:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0089b0:	57d1c3ff 	bl	-11840(0xfffd1c0) # 1c005b70 <OLED_ShowCN>
1c0089b4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0089bc:	028a00c6 	addi.w	$r6,$r6,640(0x280)
1c0089c0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0089c4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0089c8:	57cf7bff 	bl	-12424(0xfffcf78) # 1c005940 <OLED_ShowStr>
1c0089cc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089d0:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0089d4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0089d8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0089dc:	57d28bff 	bl	-11640(0xfffd288) # 1c005c64 <OLED_ShowCN_STR>
1c0089e0:	50033000 	b	816(0x330) # 1c008d10 <interface_display+0x89c>
1c0089e4:	57cf33ff 	bl	-12496(0xfffcf30) # 1c005914 <OLED_CLS>
1c0089e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089ec:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0089f0:	00150005 	move	$r5,$r0
1c0089f4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0089f8:	57d26fff 	bl	-11668(0xfffd26c) # 1c005c64 <OLED_ShowCN_STR>
1c0089fc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008a00:	00150005 	move	$r5,$r0
1c008a04:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008a08:	57d16bff 	bl	-11928(0xfffd168) # 1c005b70 <OLED_ShowCN>
1c008a0c:	50030400 	b	772(0x304) # 1c008d10 <interface_display+0x89c>
1c008a10:	57cf07ff 	bl	-12540(0xfffcf04) # 1c005914 <OLED_CLS>
1c008a14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a18:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008a1c:	00150005 	move	$r5,$r0
1c008a20:	02809004 	addi.w	$r4,$r0,36(0x24)
1c008a24:	57d243ff 	bl	-11712(0xfffd240) # 1c005c64 <OLED_ShowCN_STR>
1c008a28:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a2c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008a30:	00150005 	move	$r5,$r0
1c008a34:	02811004 	addi.w	$r4,$r0,68(0x44)
1c008a38:	57d22fff 	bl	-11732(0xfffd22c) # 1c005c64 <OLED_ShowCN_STR>
1c008a3c:	5002d400 	b	724(0x2d4) # 1c008d10 <interface_display+0x89c>
1c008a40:	57ced7ff 	bl	-12588(0xfffced4) # 1c005914 <OLED_CLS>
1c008a44:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c008a48:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a4c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008a50:	57d123ff 	bl	-12000(0xfffd120) # 1c005b70 <OLED_ShowCN>
1c008a54:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a58:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008a5c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a60:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c008a64:	57d203ff 	bl	-11776(0xfffd200) # 1c005c64 <OLED_ShowCN_STR>
1c008a68:	5002a800 	b	680(0x2a8) # 1c008d10 <interface_display+0x89c>
1c008a6c:	57ceabff 	bl	-12632(0xfffcea8) # 1c005914 <OLED_CLS>
1c008a70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a74:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008a78:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a7c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c008a80:	57d1e7ff 	bl	-11804(0xfffd1e4) # 1c005c64 <OLED_ShowCN_STR>
1c008a84:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c008a88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a8c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c008a90:	57d0e3ff 	bl	-12064(0xfffd0e0) # 1c005b70 <OLED_ShowCN>
1c008a94:	02808006 	addi.w	$r6,$r0,32(0x20)
1c008a98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a9c:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c008aa0:	57d0d3ff 	bl	-12080(0xfffd0d0) # 1c005b70 <OLED_ShowCN>
1c008aa4:	50026c00 	b	620(0x26c) # 1c008d10 <interface_display+0x89c>
1c008aa8:	57ce6fff 	bl	-12692(0xfffce6c) # 1c005914 <OLED_CLS>
1c008aac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008ab0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008ab4:	00150005 	move	$r5,$r0
1c008ab8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c008abc:	57d1abff 	bl	-11864(0xfffd1a8) # 1c005c64 <OLED_ShowCN_STR>
1c008ac0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008ac4:	00150005 	move	$r5,$r0
1c008ac8:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c008acc:	57d0a7ff 	bl	-12124(0xfffd0a4) # 1c005b70 <OLED_ShowCN>
1c008ad0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008ad4:	00150005 	move	$r5,$r0
1c008ad8:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c008adc:	57d097ff 	bl	-12140(0xfffd094) # 1c005b70 <OLED_ShowCN>
1c008ae0:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008ae4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008ae8:	00150004 	move	$r4,$r0
1c008aec:	57d087ff 	bl	-12156(0xfffd084) # 1c005b70 <OLED_ShowCN>
1c008af0:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008af4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008af8:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008afc:	57d077ff 	bl	-12172(0xfffd074) # 1c005b70 <OLED_ShowCN>
1c008b00:	50021000 	b	528(0x210) # 1c008d10 <interface_display+0x89c>
1c008b04:	57ce13ff 	bl	-12784(0xfffce10) # 1c005914 <OLED_CLS>
1c008b08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b0c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008b10:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b14:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008b18:	57d14fff 	bl	-11956(0xfffd14c) # 1c005c64 <OLED_ShowCN_STR>
1c008b1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b20:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008b24:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b28:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008b2c:	57d13bff 	bl	-11976(0xfffd138) # 1c005c64 <OLED_ShowCN_STR>
1c008b30:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008b34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b38:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008b3c:	57d037ff 	bl	-12236(0xfffd034) # 1c005b70 <OLED_ShowCN>
1c008b40:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008b44:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008b48:	00150004 	move	$r4,$r0
1c008b4c:	57d027ff 	bl	-12252(0xfffd024) # 1c005b70 <OLED_ShowCN>
1c008b50:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008b54:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008b58:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008b5c:	57d017ff 	bl	-12268(0xfffd014) # 1c005b70 <OLED_ShowCN>
1c008b60:	5001b000 	b	432(0x1b0) # 1c008d10 <interface_display+0x89c>
1c008b64:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c005914 <OLED_CLS>
1c008b68:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b6c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008b70:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b74:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008b78:	57d0efff 	bl	-12052(0xfffd0ec) # 1c005c64 <OLED_ShowCN_STR>
1c008b7c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b80:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c008b84:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b88:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008b8c:	57d0dbff 	bl	-12072(0xfffd0d8) # 1c005c64 <OLED_ShowCN_STR>
1c008b90:	50018000 	b	384(0x180) # 1c008d10 <interface_display+0x89c>
1c008b94:	57cd83ff 	bl	-12928(0xfffcd80) # 1c005914 <OLED_CLS>
1c008b98:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b9c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008ba0:	00150005 	move	$r5,$r0
1c008ba4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008ba8:	57d0bfff 	bl	-12100(0xfffd0bc) # 1c005c64 <OLED_ShowCN_STR>
1c008bac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bb0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008bb4:	00150005 	move	$r5,$r0
1c008bb8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008bbc:	57d0abff 	bl	-12120(0xfffd0a8) # 1c005c64 <OLED_ShowCN_STR>
1c008bc0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bc4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008bc8:	0281b0c6 	addi.w	$r6,$r6,108(0x6c)
1c008bcc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008bd0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008bd4:	57cd6fff 	bl	-12948(0xfffcd6c) # 1c005940 <OLED_ShowStr>
1c008bd8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bdc:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008be0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008be4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008be8:	57d07fff 	bl	-12164(0xfffd07c) # 1c005c64 <OLED_ShowCN_STR>
1c008bec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bf0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008bf4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008bf8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008bfc:	57d06bff 	bl	-12184(0xfffd068) # 1c005c64 <OLED_ShowCN_STR>
1c008c00:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c04:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008c08:	0280c0c6 	addi.w	$r6,$r6,48(0x30)
1c008c0c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008c10:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008c14:	57cd2fff 	bl	-13012(0xfffcd2c) # 1c005940 <OLED_ShowStr>
1c008c18:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c1c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008c20:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008c24:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008c28:	57d03fff 	bl	-12228(0xfffd03c) # 1c005c64 <OLED_ShowCN_STR>
1c008c2c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c30:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008c34:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008c38:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008c3c:	57d02bff 	bl	-12248(0xfffd028) # 1c005c64 <OLED_ShowCN_STR>
1c008c40:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008c44:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008c48:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c008c4c:	57cf27ff 	bl	-12508(0xfffcf24) # 1c005b70 <OLED_ShowCN>
1c008c50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c54:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008c58:	02bf90c6 	addi.w	$r6,$r6,-28(0xfe4)
1c008c5c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008c60:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008c64:	57ccdfff 	bl	-13092(0xfffccdc) # 1c005940 <OLED_ShowStr>
1c008c68:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c6c:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008c70:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008c74:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008c78:	57cfefff 	bl	-12308(0xfffcfec) # 1c005c64 <OLED_ShowCN_STR>
1c008c7c:	50009400 	b	148(0x94) # 1c008d10 <interface_display+0x89c>
1c008c80:	57cc97ff 	bl	-13164(0xfffcc94) # 1c005914 <OLED_CLS>
1c008c84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c88:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008c8c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c90:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008c94:	57cfd3ff 	bl	-12336(0xfffcfd0) # 1c005c64 <OLED_ShowCN_STR>
1c008c98:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c9c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008ca0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008ca4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008ca8:	57cfbfff 	bl	-12356(0xfffcfbc) # 1c005c64 <OLED_ShowCN_STR>
1c008cac:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008cb0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008cb4:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008cb8:	57cebbff 	bl	-12616(0xfffceb8) # 1c005b70 <OLED_ShowCN>
1c008cbc:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008cc0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008cc4:	00150004 	move	$r4,$r0
1c008cc8:	57ceabff 	bl	-12632(0xfffcea8) # 1c005b70 <OLED_ShowCN>
1c008ccc:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008cd0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008cd4:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008cd8:	57ce9bff 	bl	-12648(0xfffce98) # 1c005b70 <OLED_ShowCN>
1c008cdc:	50003400 	b	52(0x34) # 1c008d10 <interface_display+0x89c>
1c008ce0:	57cc37ff 	bl	-13260(0xfffcc34) # 1c005914 <OLED_CLS>
1c008ce4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008ce8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008cec:	00150005 	move	$r5,$r0
1c008cf0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008cf4:	57cf73ff 	bl	-12432(0xfffcf70) # 1c005c64 <OLED_ShowCN_STR>
1c008cf8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008cfc:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008d00:	00150005 	move	$r5,$r0
1c008d04:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008d08:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c005c64 <OLED_ShowCN_STR>
1c008d0c:	03400000 	andi	$r0,$r0,0x0
1c008d10:	03400000 	andi	$r0,$r0,0x0
1c008d14:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008d18:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008d1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008d20:	4c000020 	jirl	$r0,$r1,0

1c008d24 <Write_ID>:
Write_ID():
1c008d24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008d28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008d2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c008d30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008d34:	57e6b3ff 	bl	-6480(0xfffe6b0) # 1c0073e4 <Return_Card>
1c008d38:	0015008c 	move	$r12,$r4
1c008d3c:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c008d40:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008d44:	4001f180 	beqz	$r12,496(0x1f0) # 1c008f34 <Write_ID+0x210>
1c008d48:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008d4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008d50:	50004400 	b	68(0x44) # 1c008d94 <Write_ID+0x70>
1c008d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d58:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008d5c:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008d60:	02b4a1ad 	addi.w	$r13,$r13,-728(0xd28)
1c008d64:	0040898c 	slli.w	$r12,$r12,0x2
1c008d68:	001031ac 	add.w	$r12,$r13,$r12
1c008d6c:	2880018d 	ld.w	$r13,$r12,0
1c008d70:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c008d74:	02b451ce 	addi.w	$r14,$r14,-748(0xd14)
1c008d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d7c:	0040898c 	slli.w	$r12,$r12,0x2
1c008d80:	001031cc 	add.w	$r12,$r14,$r12
1c008d84:	2980018d 	st.w	$r13,$r12,0
1c008d88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d8c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008d90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d98:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c008d54 <Write_ID+0x30>
1c008d9c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c008da0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008da4:	02b3918c 	addi.w	$r12,$r12,-796(0xce4)
1c008da8:	2980018d 	st.w	$r13,$r12,0
1c008dac:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008db0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c008db4:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008db8:	00150186 	move	$r6,$r12
1c008dbc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008dc0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c008dc4:	57d1ebff 	bl	-11800(0xfffd1e8) # 1c005fac <OLED_ShowNum>
1c008dc8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c008dcc:	03bf918c 	ori	$r12,$r12,0xfe4
1c008dd0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008dd4:	50008400 	b	132(0x84) # 1c008e58 <Write_ID+0x134>
1c008dd8:	03400000 	andi	$r0,$r0,0x0
1c008ddc:	03400000 	andi	$r0,$r0,0x0
1c008de0:	03400000 	andi	$r0,$r0,0x0
1c008de4:	03400000 	andi	$r0,$r0,0x0
1c008de8:	03400000 	andi	$r0,$r0,0x0
1c008dec:	03400000 	andi	$r0,$r0,0x0
1c008df0:	03400000 	andi	$r0,$r0,0x0
1c008df4:	03400000 	andi	$r0,$r0,0x0
1c008df8:	03400000 	andi	$r0,$r0,0x0
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
1c008e58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c008e5c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008e60:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c008e64:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008dd8 <Write_ID+0xb4>
1c008e68:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c008e6c:	57f60bff 	bl	-2552(0xffff608) # 1c008474 <interface_display>
1c008e70:	57c34bff 	bl	-15544(0xfffc348) # 1c0051b8 <Buzzer>
1c008e74:	1400182c 	lu12i.w	$r12,193(0xc1)
1c008e78:	03b2d58c 	ori	$r12,$r12,0xcb5
1c008e7c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008e80:	50008400 	b	132(0x84) # 1c008f04 <Write_ID+0x1e0>
1c008e84:	03400000 	andi	$r0,$r0,0x0
1c008e88:	03400000 	andi	$r0,$r0,0x0
1c008e8c:	03400000 	andi	$r0,$r0,0x0
1c008e90:	03400000 	andi	$r0,$r0,0x0
1c008e94:	03400000 	andi	$r0,$r0,0x0
1c008e98:	03400000 	andi	$r0,$r0,0x0
1c008e9c:	03400000 	andi	$r0,$r0,0x0
1c008ea0:	03400000 	andi	$r0,$r0,0x0
1c008ea4:	03400000 	andi	$r0,$r0,0x0
1c008ea8:	03400000 	andi	$r0,$r0,0x0
1c008eac:	03400000 	andi	$r0,$r0,0x0
1c008eb0:	03400000 	andi	$r0,$r0,0x0
1c008eb4:	03400000 	andi	$r0,$r0,0x0
1c008eb8:	03400000 	andi	$r0,$r0,0x0
1c008ebc:	03400000 	andi	$r0,$r0,0x0
1c008ec0:	03400000 	andi	$r0,$r0,0x0
1c008ec4:	03400000 	andi	$r0,$r0,0x0
1c008ec8:	03400000 	andi	$r0,$r0,0x0
1c008ecc:	03400000 	andi	$r0,$r0,0x0
1c008ed0:	03400000 	andi	$r0,$r0,0x0
1c008ed4:	03400000 	andi	$r0,$r0,0x0
1c008ed8:	03400000 	andi	$r0,$r0,0x0
1c008edc:	03400000 	andi	$r0,$r0,0x0
1c008ee0:	03400000 	andi	$r0,$r0,0x0
1c008ee4:	03400000 	andi	$r0,$r0,0x0
1c008ee8:	03400000 	andi	$r0,$r0,0x0
1c008eec:	03400000 	andi	$r0,$r0,0x0
1c008ef0:	03400000 	andi	$r0,$r0,0x0
1c008ef4:	03400000 	andi	$r0,$r0,0x0
1c008ef8:	03400000 	andi	$r0,$r0,0x0
1c008efc:	03400000 	andi	$r0,$r0,0x0
1c008f00:	03400000 	andi	$r0,$r0,0x0
1c008f04:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008f08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008f0c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c008f10:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008e84 <Write_ID+0x160>
1c008f14:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008f18:	02ae158c 	addi.w	$r12,$r12,-1147(0xb85)
1c008f1c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008f20:	2900018d 	st.b	$r13,$r12,0
1c008f24:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008f28:	02add18c 	addi.w	$r12,$r12,-1164(0xb74)
1c008f2c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008f30:	2900018d 	st.b	$r13,$r12,0
1c008f34:	03400000 	andi	$r0,$r0,0x0
1c008f38:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008f3c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008f40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008f44:	4c000020 	jirl	$r0,$r1,0

1c008f48 <Delate_ID>:
Delate_ID():
1c008f48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008f4c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008f50:	29806076 	st.w	$r22,$r3,24(0x18)
1c008f54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008f58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008f5c:	50002800 	b	40(0x28) # 1c008f84 <Delate_ID+0x3c>
1c008f60:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008f64:	02ac91ad 	addi.w	$r13,$r13,-1244(0xb24)
1c008f68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008f6c:	0040898c 	slli.w	$r12,$r12,0x2
1c008f70:	001031ac 	add.w	$r12,$r13,$r12
1c008f74:	29800180 	st.w	$r0,$r12,0
1c008f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008f7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008f80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008f84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008f88:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008f8c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c008f60 <Delate_ID+0x18>
1c008f90:	57c22bff 	bl	-15832(0xfffc228) # 1c0051b8 <Buzzer>
1c008f94:	1400182c 	lu12i.w	$r12,193(0xc1)
1c008f98:	03b2d58c 	ori	$r12,$r12,0xcb5
1c008f9c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008fa0:	50008400 	b	132(0x84) # 1c009024 <Delate_ID+0xdc>
1c008fa4:	03400000 	andi	$r0,$r0,0x0
1c008fa8:	03400000 	andi	$r0,$r0,0x0
1c008fac:	03400000 	andi	$r0,$r0,0x0
1c008fb0:	03400000 	andi	$r0,$r0,0x0
1c008fb4:	03400000 	andi	$r0,$r0,0x0
1c008fb8:	03400000 	andi	$r0,$r0,0x0
1c008fbc:	03400000 	andi	$r0,$r0,0x0
1c008fc0:	03400000 	andi	$r0,$r0,0x0
1c008fc4:	03400000 	andi	$r0,$r0,0x0
1c008fc8:	03400000 	andi	$r0,$r0,0x0
1c008fcc:	03400000 	andi	$r0,$r0,0x0
1c008fd0:	03400000 	andi	$r0,$r0,0x0
1c008fd4:	03400000 	andi	$r0,$r0,0x0
1c008fd8:	03400000 	andi	$r0,$r0,0x0
1c008fdc:	03400000 	andi	$r0,$r0,0x0
1c008fe0:	03400000 	andi	$r0,$r0,0x0
1c008fe4:	03400000 	andi	$r0,$r0,0x0
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
1c009024:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009028:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00902c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c009030:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008fa4 <Delate_ID+0x5c>
1c009034:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009038:	02a9958c 	addi.w	$r12,$r12,-1435(0xa65)
1c00903c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c009040:	2900018d 	st.b	$r13,$r12,0
1c009044:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009048:	02a9518c 	addi.w	$r12,$r12,-1452(0xa54)
1c00904c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c009050:	2900018d 	st.b	$r13,$r12,0
1c009054:	03400000 	andi	$r0,$r0,0x0
1c009058:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00905c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c009060:	02808063 	addi.w	$r3,$r3,32(0x20)
1c009064:	4c000020 	jirl	$r0,$r1,0

1c009068 <Read_ID>:
Read_ID():
1c009068:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00906c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c009070:	2980a076 	st.w	$r22,$r3,40(0x28)
1c009074:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009078:	57e36fff 	bl	-7316(0xfffe36c) # 1c0073e4 <Return_Card>
1c00907c:	0015008c 	move	$r12,$r4
1c009080:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c009084:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c009088:	40027180 	beqz	$r12,624(0x270) # 1c0092f8 <Read_ID+0x290>
1c00908c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c009090:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c009094:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009098:	6802618d 	bltu	$r12,$r13,608(0x260) # 1c0092f8 <Read_ID+0x290>
1c00909c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c0090a0:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c0090a4:	02a791ce 	addi.w	$r14,$r14,-1564(0x9e4)
1c0090a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0090ac:	0040898c 	slli.w	$r12,$r12,0x2
1c0090b0:	001031cc 	add.w	$r12,$r14,$r12
1c0090b4:	2880018c 	ld.w	$r12,$r12,0
1c0090b8:	5c0189ac 	bne	$r13,$r12,392(0x188) # 1c009240 <Read_ID+0x1d8>
1c0090bc:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0090c0:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c008474 <interface_display>
1c0090c4:	57a6cbff 	bl	-22840(0xfffa6c8) # 1c00378c <SG90_Open>
1c0090c8:	57c327ff 	bl	-15580(0xfffc324) # 1c0053ec <Buzzer_one>
1c0090cc:	1400472c 	lu12i.w	$r12,569(0x239)
1c0090d0:	03bee58c 	ori	$r12,$r12,0xfb9
1c0090d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0090d8:	50008400 	b	132(0x84) # 1c00915c <Read_ID+0xf4>
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
1c009158:	03400000 	andi	$r0,$r0,0x0
1c00915c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009160:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009164:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c009168:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0090dc <Read_ID+0x74>
1c00916c:	57c283ff 	bl	-15744(0xfffc280) # 1c0053ec <Buzzer_one>
1c009170:	57a64bff 	bl	-22968(0xfffa648) # 1c0037b8 <SG90_Close>
1c009174:	02802404 	addi.w	$r4,$r0,9(0x9)
1c009178:	57f2ffff 	bl	-3332(0xffff2fc) # 1c008474 <interface_display>
1c00917c:	1400472c 	lu12i.w	$r12,569(0x239)
1c009180:	03bee58c 	ori	$r12,$r12,0xfb9
1c009184:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009188:	50008400 	b	132(0x84) # 1c00920c <Read_ID+0x1a4>
1c00918c:	03400000 	andi	$r0,$r0,0x0
1c009190:	03400000 	andi	$r0,$r0,0x0
1c009194:	03400000 	andi	$r0,$r0,0x0
1c009198:	03400000 	andi	$r0,$r0,0x0
1c00919c:	03400000 	andi	$r0,$r0,0x0
1c0091a0:	03400000 	andi	$r0,$r0,0x0
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
1c00920c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009210:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009214:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c009218:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00918c <Read_ID+0x124>
1c00921c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009220:	02a1f18c 	addi.w	$r12,$r12,-1924(0x87c)
1c009224:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c009228:	2900018d 	st.b	$r13,$r12,0
1c00922c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009230:	02a1b58c 	addi.w	$r12,$r12,-1939(0x86d)
1c009234:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c009238:	2900018d 	st.b	$r13,$r12,0
1c00923c:	5000bc00 	b	188(0xbc) # 1c0092f8 <Read_ID+0x290>
1c009240:	02801804 	addi.w	$r4,$r0,6(0x6)
1c009244:	57f233ff 	bl	-3536(0xffff230) # 1c008474 <interface_display>
1c009248:	57bf73ff 	bl	-16528(0xfffbf70) # 1c0051b8 <Buzzer>
1c00924c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009250:	03bf918c 	ori	$r12,$r12,0xfe4
1c009254:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009258:	50008400 	b	132(0x84) # 1c0092dc <Read_ID+0x274>
1c00925c:	03400000 	andi	$r0,$r0,0x0
1c009260:	03400000 	andi	$r0,$r0,0x0
1c009264:	03400000 	andi	$r0,$r0,0x0
1c009268:	03400000 	andi	$r0,$r0,0x0
1c00926c:	03400000 	andi	$r0,$r0,0x0
1c009270:	03400000 	andi	$r0,$r0,0x0
1c009274:	03400000 	andi	$r0,$r0,0x0
1c009278:	03400000 	andi	$r0,$r0,0x0
1c00927c:	03400000 	andi	$r0,$r0,0x0
1c009280:	03400000 	andi	$r0,$r0,0x0
1c009284:	03400000 	andi	$r0,$r0,0x0
1c009288:	03400000 	andi	$r0,$r0,0x0
1c00928c:	03400000 	andi	$r0,$r0,0x0
1c009290:	03400000 	andi	$r0,$r0,0x0
1c009294:	03400000 	andi	$r0,$r0,0x0
1c009298:	03400000 	andi	$r0,$r0,0x0
1c00929c:	03400000 	andi	$r0,$r0,0x0
1c0092a0:	03400000 	andi	$r0,$r0,0x0
1c0092a4:	03400000 	andi	$r0,$r0,0x0
1c0092a8:	03400000 	andi	$r0,$r0,0x0
1c0092ac:	03400000 	andi	$r0,$r0,0x0
1c0092b0:	03400000 	andi	$r0,$r0,0x0
1c0092b4:	03400000 	andi	$r0,$r0,0x0
1c0092b8:	03400000 	andi	$r0,$r0,0x0
1c0092bc:	03400000 	andi	$r0,$r0,0x0
1c0092c0:	03400000 	andi	$r0,$r0,0x0
1c0092c4:	03400000 	andi	$r0,$r0,0x0
1c0092c8:	03400000 	andi	$r0,$r0,0x0
1c0092cc:	03400000 	andi	$r0,$r0,0x0
1c0092d0:	03400000 	andi	$r0,$r0,0x0
1c0092d4:	03400000 	andi	$r0,$r0,0x0
1c0092d8:	03400000 	andi	$r0,$r0,0x0
1c0092dc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0092e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0092e4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0092e8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00925c <Read_ID+0x1f4>
1c0092ec:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0092f0:	57f187ff 	bl	-3708(0xffff184) # 1c008474 <interface_display>
1c0092f4:	03400000 	andi	$r0,$r0,0x0
1c0092f8:	03400000 	andi	$r0,$r0,0x0
1c0092fc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009300:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c009304:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009308:	4c000020 	jirl	$r0,$r1,0

1c00930c <Key_main>:
Key_main():
1c00930c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c009310:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c009314:	2980a076 	st.w	$r22,$r3,40(0x28)
1c009318:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00931c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c009320:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009324:	0281258c 	addi.w	$r12,$r12,73(0x49)
1c009328:	2a00018c 	ld.bu	$r12,$r12,0
1c00932c:	4005ad80 	beqz	$r12,1452(0x5ac) # 1c0098d8 <Key_main+0x5cc>
1c009330:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009334:	0280e58c 	addi.w	$r12,$r12,57(0x39)
1c009338:	2a00018d 	ld.bu	$r13,$r12,0
1c00933c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009340:	6802218d 	bltu	$r12,$r13,544(0x220) # 1c009560 <Key_main+0x254>
1c009344:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009348:	28b3118c 	ld.w	$r12,$r12,-828(0xcc4)
1c00934c:	2880018d 	ld.w	$r13,$r12,0
1c009350:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009354:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c0093d4 <Key_main+0xc8>
1c009358:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00935c:	28b3018c 	ld.w	$r12,$r12,-832(0xcc0)
1c009360:	2880018d 	ld.w	$r13,$r12,0
1c009364:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009368:	001c31ad 	mul.w	$r13,$r13,$r12
1c00936c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009370:	28b2b18c 	ld.w	$r12,$r12,-852(0xcac)
1c009374:	2980018d 	st.w	$r13,$r12,0
1c009378:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00937c:	02bfc58c 	addi.w	$r12,$r12,-15(0xff1)
1c009380:	2a00018d 	ld.bu	$r13,$r12,0
1c009384:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009388:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00938c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009394 <Key_main+0x88>
1c009390:	002a0007 	break	0x7
1c009394:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c009398:	0015018d 	move	$r13,$r12
1c00939c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093a0:	28b1f18c 	ld.w	$r12,$r12,-900(0xc7c)
1c0093a4:	2880018c 	ld.w	$r12,$r12,0
1c0093a8:	001031ad 	add.w	$r13,$r13,$r12
1c0093ac:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093b0:	28b1b18c 	ld.w	$r12,$r12,-916(0xc6c)
1c0093b4:	2980018d 	st.w	$r13,$r12,0
1c0093b8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093bc:	28b1418c 	ld.w	$r12,$r12,-944(0xc50)
1c0093c0:	2880018c 	ld.w	$r12,$r12,0
1c0093c4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0093c8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093cc:	28b1018c 	ld.w	$r12,$r12,-960(0xc40)
1c0093d0:	2980018d 	st.w	$r13,$r12,0
1c0093d4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093d8:	28b1118c 	ld.w	$r12,$r12,-956(0xc44)
1c0093dc:	2880018c 	ld.w	$r12,$r12,0
1c0093e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0093e4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0093e8:	28b0918c 	ld.w	$r12,$r12,-988(0xc24)
1c0093ec:	2880018c 	ld.w	$r12,$r12,0
1c0093f0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0093f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0093f8:	50006400 	b	100(0x64) # 1c00945c <Key_main+0x150>
1c0093fc:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c009400:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009404:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c009408:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009410 <Key_main+0x104>
1c00940c:	002a0007 	break	0x7
1c009410:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c009414:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c009418:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00941c:	002135cc 	div.wu	$r12,$r14,$r13
1c009420:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009428 <Key_main+0x11c>
1c009424:	002a0007 	break	0x7
1c009428:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00942c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009430:	00408d8c 	slli.w	$r12,$r12,0x3
1c009434:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009438:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00943c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009440:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c009444:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009448:	00150184 	move	$r4,$r12
1c00944c:	57cb63ff 	bl	-13472(0xfffcb60) # 1c005fac <OLED_ShowNum>
1c009450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009454:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009458:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00945c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009460:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c0093fc <Key_main+0xf0>
1c009464:	140002cc 	lu12i.w	$r12,22(0x16)
1c009468:	03b3298c 	ori	$r12,$r12,0xcca
1c00946c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c009470:	50008400 	b	132(0x84) # 1c0094f4 <Key_main+0x1e8>
1c009474:	03400000 	andi	$r0,$r0,0x0
1c009478:	03400000 	andi	$r0,$r0,0x0
1c00947c:	03400000 	andi	$r0,$r0,0x0
1c009480:	03400000 	andi	$r0,$r0,0x0
1c009484:	03400000 	andi	$r0,$r0,0x0
1c009488:	03400000 	andi	$r0,$r0,0x0
1c00948c:	03400000 	andi	$r0,$r0,0x0
1c009490:	03400000 	andi	$r0,$r0,0x0
1c009494:	03400000 	andi	$r0,$r0,0x0
1c009498:	03400000 	andi	$r0,$r0,0x0
1c00949c:	03400000 	andi	$r0,$r0,0x0
1c0094a0:	03400000 	andi	$r0,$r0,0x0
1c0094a4:	03400000 	andi	$r0,$r0,0x0
1c0094a8:	03400000 	andi	$r0,$r0,0x0
1c0094ac:	03400000 	andi	$r0,$r0,0x0
1c0094b0:	03400000 	andi	$r0,$r0,0x0
1c0094b4:	03400000 	andi	$r0,$r0,0x0
1c0094b8:	03400000 	andi	$r0,$r0,0x0
1c0094bc:	03400000 	andi	$r0,$r0,0x0
1c0094c0:	03400000 	andi	$r0,$r0,0x0
1c0094c4:	03400000 	andi	$r0,$r0,0x0
1c0094c8:	03400000 	andi	$r0,$r0,0x0
1c0094cc:	03400000 	andi	$r0,$r0,0x0
1c0094d0:	03400000 	andi	$r0,$r0,0x0
1c0094d4:	03400000 	andi	$r0,$r0,0x0
1c0094d8:	03400000 	andi	$r0,$r0,0x0
1c0094dc:	03400000 	andi	$r0,$r0,0x0
1c0094e0:	03400000 	andi	$r0,$r0,0x0
1c0094e4:	03400000 	andi	$r0,$r0,0x0
1c0094e8:	03400000 	andi	$r0,$r0,0x0
1c0094ec:	03400000 	andi	$r0,$r0,0x0
1c0094f0:	03400000 	andi	$r0,$r0,0x0
1c0094f4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0094f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0094fc:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009500:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009474 <Key_main+0x168>
1c009504:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009508:	50004400 	b	68(0x44) # 1c00954c <Key_main+0x240>
1c00950c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009510:	28abf18c 	ld.w	$r12,$r12,-1284(0xafc)
1c009514:	2880018d 	ld.w	$r13,$r12,0
1c009518:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00951c:	001131ac 	sub.w	$r12,$r13,$r12
1c009520:	00408d8c 	slli.w	$r12,$r12,0x3
1c009524:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c009528:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00952c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009530:	029c40c6 	addi.w	$r6,$r6,1808(0x710)
1c009534:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009538:	00150184 	move	$r4,$r12
1c00953c:	57c407ff 	bl	-15356(0xfffc404) # 1c005940 <OLED_ShowStr>
1c009540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009544:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00954c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009550:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009554:	28aae18c 	ld.w	$r12,$r12,-1352(0xab8)
1c009558:	2880018c 	ld.w	$r12,$r12,0
1c00955c:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c00950c <Key_main+0x200>
1c009560:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009564:	50004400 	b	68(0x44) # 1c0095a8 <Key_main+0x29c>
1c009568:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c00956c:	029421ad 	addi.w	$r13,$r13,1288(0x508)
1c009570:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009574:	0040898c 	slli.w	$r12,$r12,0x2
1c009578:	001031ac 	add.w	$r12,$r13,$r12
1c00957c:	2880018d 	ld.w	$r13,$r12,0
1c009580:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009584:	28aa618c 	ld.w	$r12,$r12,-1384(0xa98)
1c009588:	2880018c 	ld.w	$r12,$r12,0
1c00958c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00959c <Key_main+0x290>
1c009590:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c009594:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009598:	50001c00 	b	28(0x1c) # 1c0095b4 <Key_main+0x2a8>
1c00959c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0095a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0095a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0095a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0095ac:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0095b0:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c009568 <Key_main+0x25c>
1c0095b4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0095b8:	02b6d58c 	addi.w	$r12,$r12,-587(0xdb5)
1c0095bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0095c0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0095c4:	5c0279ac 	bne	$r13,$r12,632(0x278) # 1c00983c <Key_main+0x530>
1c0095c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0095cc:	4001a180 	beqz	$r12,416(0x1a0) # 1c00976c <Key_main+0x460>
1c0095d0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0095d4:	57eea3ff 	bl	-4448(0xfffeea0) # 1c008474 <interface_display>
1c0095d8:	57a1b7ff 	bl	-24140(0xfffa1b4) # 1c00378c <SG90_Open>
1c0095dc:	57be13ff 	bl	-16880(0xfffbe10) # 1c0053ec <Buzzer_one>
1c0095e0:	1400472c 	lu12i.w	$r12,569(0x239)
1c0095e4:	03bee58c 	ori	$r12,$r12,0xfb9
1c0095e8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0095ec:	50008400 	b	132(0x84) # 1c009670 <Key_main+0x364>
1c0095f0:	03400000 	andi	$r0,$r0,0x0
1c0095f4:	03400000 	andi	$r0,$r0,0x0
1c0095f8:	03400000 	andi	$r0,$r0,0x0
1c0095fc:	03400000 	andi	$r0,$r0,0x0
1c009600:	03400000 	andi	$r0,$r0,0x0
1c009604:	03400000 	andi	$r0,$r0,0x0
1c009608:	03400000 	andi	$r0,$r0,0x0
1c00960c:	03400000 	andi	$r0,$r0,0x0
1c009610:	03400000 	andi	$r0,$r0,0x0
1c009614:	03400000 	andi	$r0,$r0,0x0
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
1c009670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009674:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009678:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c00967c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0095f0 <Key_main+0x2e4>
1c009680:	57bd6fff 	bl	-17044(0xfffbd6c) # 1c0053ec <Buzzer_one>
1c009684:	57a137ff 	bl	-24268(0xfffa134) # 1c0037b8 <SG90_Close>
1c009688:	02802404 	addi.w	$r4,$r0,9(0x9)
1c00968c:	57edebff 	bl	-4632(0xfffede8) # 1c008474 <interface_display>
1c009690:	1400472c 	lu12i.w	$r12,569(0x239)
1c009694:	03bee58c 	ori	$r12,$r12,0xfb9
1c009698:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00969c:	50008400 	b	132(0x84) # 1c009720 <Key_main+0x414>
1c0096a0:	03400000 	andi	$r0,$r0,0x0
1c0096a4:	03400000 	andi	$r0,$r0,0x0
1c0096a8:	03400000 	andi	$r0,$r0,0x0
1c0096ac:	03400000 	andi	$r0,$r0,0x0
1c0096b0:	03400000 	andi	$r0,$r0,0x0
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
1c009720:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c009724:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009728:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c00972c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0096a0 <Key_main+0x394>
1c009730:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009734:	028da18c 	addi.w	$r12,$r12,872(0x368)
1c009738:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00973c:	2900018d 	st.b	$r13,$r12,0
1c009740:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009744:	028d658c 	addi.w	$r12,$r12,857(0x359)
1c009748:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00974c:	2900018d 	st.b	$r13,$r12,0
1c009750:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009754:	28a3218c 	ld.w	$r12,$r12,-1848(0x8c8)
1c009758:	29800180 	st.w	$r0,$r12,0
1c00975c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009760:	28a2b18c 	ld.w	$r12,$r12,-1876(0x8ac)
1c009764:	29800180 	st.w	$r0,$r12,0
1c009768:	5000d400 	b	212(0xd4) # 1c00983c <Key_main+0x530>
1c00976c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c009770:	57ed07ff 	bl	-4860(0xfffed04) # 1c008474 <interface_display>
1c009774:	57ba47ff 	bl	-17852(0xfffba44) # 1c0051b8 <Buzzer>
1c009778:	57a043ff 	bl	-24512(0xfffa040) # 1c0037b8 <SG90_Close>
1c00977c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009780:	03bf918c 	ori	$r12,$r12,0xfe4
1c009784:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c009788:	50008400 	b	132(0x84) # 1c00980c <Key_main+0x500>
1c00978c:	03400000 	andi	$r0,$r0,0x0
1c009790:	03400000 	andi	$r0,$r0,0x0
1c009794:	03400000 	andi	$r0,$r0,0x0
1c009798:	03400000 	andi	$r0,$r0,0x0
1c00979c:	03400000 	andi	$r0,$r0,0x0
1c0097a0:	03400000 	andi	$r0,$r0,0x0
1c0097a4:	03400000 	andi	$r0,$r0,0x0
1c0097a8:	03400000 	andi	$r0,$r0,0x0
1c0097ac:	03400000 	andi	$r0,$r0,0x0
1c0097b0:	03400000 	andi	$r0,$r0,0x0
1c0097b4:	03400000 	andi	$r0,$r0,0x0
1c0097b8:	03400000 	andi	$r0,$r0,0x0
1c0097bc:	03400000 	andi	$r0,$r0,0x0
1c0097c0:	03400000 	andi	$r0,$r0,0x0
1c0097c4:	03400000 	andi	$r0,$r0,0x0
1c0097c8:	03400000 	andi	$r0,$r0,0x0
1c0097cc:	03400000 	andi	$r0,$r0,0x0
1c0097d0:	03400000 	andi	$r0,$r0,0x0
1c0097d4:	03400000 	andi	$r0,$r0,0x0
1c0097d8:	03400000 	andi	$r0,$r0,0x0
1c0097dc:	03400000 	andi	$r0,$r0,0x0
1c0097e0:	03400000 	andi	$r0,$r0,0x0
1c0097e4:	03400000 	andi	$r0,$r0,0x0
1c0097e8:	03400000 	andi	$r0,$r0,0x0
1c0097ec:	03400000 	andi	$r0,$r0,0x0
1c0097f0:	03400000 	andi	$r0,$r0,0x0
1c0097f4:	03400000 	andi	$r0,$r0,0x0
1c0097f8:	03400000 	andi	$r0,$r0,0x0
1c0097fc:	03400000 	andi	$r0,$r0,0x0
1c009800:	03400000 	andi	$r0,$r0,0x0
1c009804:	03400000 	andi	$r0,$r0,0x0
1c009808:	03400000 	andi	$r0,$r0,0x0
1c00980c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c009810:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009814:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c009818:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00978c <Key_main+0x480>
1c00981c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009820:	289ff18c 	ld.w	$r12,$r12,2044(0x7fc)
1c009824:	29800180 	st.w	$r0,$r12,0
1c009828:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00982c:	289f818c 	ld.w	$r12,$r12,2016(0x7e0)
1c009830:	29800180 	st.w	$r0,$r12,0
1c009834:	02801404 	addi.w	$r4,$r0,5(0x5)
1c009838:	57ec3fff 	bl	-5060(0xfffec3c) # 1c008474 <interface_display>
1c00983c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009840:	02acb58c 	addi.w	$r12,$r12,-1235(0xb2d)
1c009844:	2a00018d 	ld.bu	$r13,$r12,0
1c009848:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00984c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0098ac <Key_main+0x5a0>
1c009850:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009854:	289f218c 	ld.w	$r12,$r12,1992(0x7c8)
1c009858:	29800180 	st.w	$r0,$r12,0
1c00985c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009860:	289eb18c 	ld.w	$r12,$r12,1964(0x7ac)
1c009864:	29800180 	st.w	$r0,$r12,0
1c009868:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00986c:	50003400 	b	52(0x34) # 1c0098a0 <Key_main+0x594>
1c009870:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009874:	00408d8c 	slli.w	$r12,$r12,0x3
1c009878:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c00987c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009880:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009884:	028f00c6 	addi.w	$r6,$r6,960(0x3c0)
1c009888:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00988c:	00150184 	move	$r4,$r12
1c009890:	57c0b3ff 	bl	-16208(0xfffc0b0) # 1c005940 <OLED_ShowStr>
1c009894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009898:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00989c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0098a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0098a4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0098a8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009870 <Key_main+0x564>
1c0098ac:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098b0:	02aaf58c 	addi.w	$r12,$r12,-1347(0xabd)
1c0098b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0098b8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0098bc:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0098d8 <Key_main+0x5cc>
1c0098c0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098c4:	289d618c 	ld.w	$r12,$r12,1880(0x758)
1c0098c8:	29800180 	st.w	$r0,$r12,0
1c0098cc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098d0:	289cf18c 	ld.w	$r12,$r12,1852(0x73c)
1c0098d4:	29800180 	st.w	$r0,$r12,0
1c0098d8:	03400000 	andi	$r0,$r0,0x0
1c0098dc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0098e0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0098e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0098e8:	4c000020 	jirl	$r0,$r1,0

1c0098ec <Key>:
Key():
1c0098ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0098f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0098f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0098f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0098fc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009900:	02a9b58c 	addi.w	$r12,$r12,-1427(0xa6d)
1c009904:	2a00018c 	ld.bu	$r12,$r12,0
1c009908:	40047180 	beqz	$r12,1136(0x470) # 1c009d78 <Key+0x48c>
1c00990c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009910:	02a9758c 	addi.w	$r12,$r12,-1443(0xa5d)
1c009914:	2a00018d 	ld.bu	$r13,$r12,0
1c009918:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00991c:	6801cd8d 	bltu	$r12,$r13,460(0x1cc) # 1c009ae8 <Key+0x1fc>
1c009920:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009924:	289ba18c 	ld.w	$r12,$r12,1768(0x6e8)
1c009928:	2880018d 	ld.w	$r13,$r12,0
1c00992c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009930:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c0099b0 <Key+0xc4>
1c009934:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009938:	289b918c 	ld.w	$r12,$r12,1764(0x6e4)
1c00993c:	2880018d 	ld.w	$r13,$r12,0
1c009940:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009944:	001c31ad 	mul.w	$r13,$r13,$r12
1c009948:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00994c:	289b418c 	ld.w	$r12,$r12,1744(0x6d0)
1c009950:	2980018d 	st.w	$r13,$r12,0
1c009954:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009958:	02a8558c 	addi.w	$r12,$r12,-1515(0xa15)
1c00995c:	2a00018d 	ld.bu	$r13,$r12,0
1c009960:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009964:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009968:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009970 <Key+0x84>
1c00996c:	002a0007 	break	0x7
1c009970:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c009974:	0015018d 	move	$r13,$r12
1c009978:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00997c:	289a818c 	ld.w	$r12,$r12,1696(0x6a0)
1c009980:	2880018c 	ld.w	$r12,$r12,0
1c009984:	001031ad 	add.w	$r13,$r13,$r12
1c009988:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00998c:	289a418c 	ld.w	$r12,$r12,1680(0x690)
1c009990:	2980018d 	st.w	$r13,$r12,0
1c009994:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009998:	2899d18c 	ld.w	$r12,$r12,1652(0x674)
1c00999c:	2880018c 	ld.w	$r12,$r12,0
1c0099a0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0099a4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0099a8:	2899918c 	ld.w	$r12,$r12,1636(0x664)
1c0099ac:	2980018d 	st.w	$r13,$r12,0
1c0099b0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0099b4:	2899a18c 	ld.w	$r12,$r12,1640(0x668)
1c0099b8:	2880018c 	ld.w	$r12,$r12,0
1c0099bc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0099c0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0099c4:	2899218c 	ld.w	$r12,$r12,1608(0x648)
1c0099c8:	2880018c 	ld.w	$r12,$r12,0
1c0099cc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0099d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0099d4:	50006c00 	b	108(0x6c) # 1c009a40 <Key+0x154>
1c0099d8:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0099dc:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0099e0:	0020b5cc 	mod.w	$r12,$r14,$r13
1c0099e4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0099ec <Key+0x100>
1c0099e8:	002a0007 	break	0x7
1c0099ec:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0099f0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0099f4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0099f8:	002035cc 	div.w	$r12,$r14,$r13
1c0099fc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009a04 <Key+0x118>
1c009a00:	002a0007 	break	0x7
1c009a04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009a08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009a0c:	00408d8c 	slli.w	$r12,$r12,0x3
1c009a10:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009a14:	0015018d 	move	$r13,$r12
1c009a18:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c009a1c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009a20:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009a24:	00150186 	move	$r6,$r12
1c009a28:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009a2c:	001501a4 	move	$r4,$r13
1c009a30:	57c57fff 	bl	-14980(0xfffc57c) # 1c005fac <OLED_ShowNum>
1c009a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009a38:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009a3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009a40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009a44:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c0099d8 <Key+0xec>
1c009a48:	140005ac 	lu12i.w	$r12,45(0x2d)
1c009a4c:	03a6518c 	ori	$r12,$r12,0x994
1c009a50:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009a54:	50008400 	b	132(0x84) # 1c009ad8 <Key+0x1ec>
1c009a58:	03400000 	andi	$r0,$r0,0x0
1c009a5c:	03400000 	andi	$r0,$r0,0x0
1c009a60:	03400000 	andi	$r0,$r0,0x0
1c009a64:	03400000 	andi	$r0,$r0,0x0
1c009a68:	03400000 	andi	$r0,$r0,0x0
1c009a6c:	03400000 	andi	$r0,$r0,0x0
1c009a70:	03400000 	andi	$r0,$r0,0x0
1c009a74:	03400000 	andi	$r0,$r0,0x0
1c009a78:	03400000 	andi	$r0,$r0,0x0
1c009a7c:	03400000 	andi	$r0,$r0,0x0
1c009a80:	03400000 	andi	$r0,$r0,0x0
1c009a84:	03400000 	andi	$r0,$r0,0x0
1c009a88:	03400000 	andi	$r0,$r0,0x0
1c009a8c:	03400000 	andi	$r0,$r0,0x0
1c009a90:	03400000 	andi	$r0,$r0,0x0
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
1c009ad8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009adc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009ae0:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009ae4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009a58 <Key+0x16c>
1c009ae8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009aec:	02a2058c 	addi.w	$r12,$r12,-1919(0x881)
1c009af0:	2a00018d 	ld.bu	$r13,$r12,0
1c009af4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009af8:	5c01e5ac 	bne	$r13,$r12,484(0x1e4) # 1c009cdc <Key+0x3f0>
1c009afc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b00:	2894718c 	ld.w	$r12,$r12,1308(0x51c)
1c009b04:	2880018d 	ld.w	$r13,$r12,0
1c009b08:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c009b0c:	5c00e9ac 	bne	$r13,$r12,232(0xe8) # 1c009bf4 <Key+0x308>
1c009b10:	02802004 	addi.w	$r4,$r0,8(0x8)
1c009b14:	57e963ff 	bl	-5792(0xfffe960) # 1c008474 <interface_display>
1c009b18:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009b1c:	02be058c 	addi.w	$r12,$r12,-127(0xf81)
1c009b20:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c009b24:	2900018d 	st.b	$r13,$r12,0
1c009b28:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009b2c:	02bdc18c 	addi.w	$r12,$r12,-144(0xf70)
1c009b30:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c009b34:	2900018d 	st.b	$r13,$r12,0
1c009b38:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009b3c:	03bf918c 	ori	$r12,$r12,0xfe4
1c009b40:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c009b44:	50008400 	b	132(0x84) # 1c009bc8 <Key+0x2dc>
1c009b48:	03400000 	andi	$r0,$r0,0x0
1c009b4c:	03400000 	andi	$r0,$r0,0x0
1c009b50:	03400000 	andi	$r0,$r0,0x0
1c009b54:	03400000 	andi	$r0,$r0,0x0
1c009b58:	03400000 	andi	$r0,$r0,0x0
1c009b5c:	03400000 	andi	$r0,$r0,0x0
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
1c009bc8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c009bcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009bd0:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009bd4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009b48 <Key+0x25c>
1c009bd8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bdc:	2891018c 	ld.w	$r12,$r12,1088(0x440)
1c009be0:	29800180 	st.w	$r0,$r12,0
1c009be4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009be8:	2890918c 	ld.w	$r12,$r12,1060(0x424)
1c009bec:	29800180 	st.w	$r0,$r12,0
1c009bf0:	5000ec00 	b	236(0xec) # 1c009cdc <Key+0x3f0>
1c009bf4:	57bd23ff 	bl	-17120(0xfffbd20) # 1c005914 <OLED_CLS>
1c009bf8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c009bfc:	57e87bff 	bl	-6024(0xfffe878) # 1c008474 <interface_display>
1c009c00:	57b5bbff 	bl	-19016(0xfffb5b8) # 1c0051b8 <Buzzer>
1c009c04:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009c08:	03bf918c 	ori	$r12,$r12,0xfe4
1c009c0c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c009c10:	50008400 	b	132(0x84) # 1c009c94 <Key+0x3a8>
1c009c14:	03400000 	andi	$r0,$r0,0x0
1c009c18:	03400000 	andi	$r0,$r0,0x0
1c009c1c:	03400000 	andi	$r0,$r0,0x0
1c009c20:	03400000 	andi	$r0,$r0,0x0
1c009c24:	03400000 	andi	$r0,$r0,0x0
1c009c28:	03400000 	andi	$r0,$r0,0x0
1c009c2c:	03400000 	andi	$r0,$r0,0x0
1c009c30:	03400000 	andi	$r0,$r0,0x0
1c009c34:	03400000 	andi	$r0,$r0,0x0
1c009c38:	03400000 	andi	$r0,$r0,0x0
1c009c3c:	03400000 	andi	$r0,$r0,0x0
1c009c40:	03400000 	andi	$r0,$r0,0x0
1c009c44:	03400000 	andi	$r0,$r0,0x0
1c009c48:	03400000 	andi	$r0,$r0,0x0
1c009c4c:	03400000 	andi	$r0,$r0,0x0
1c009c50:	03400000 	andi	$r0,$r0,0x0
1c009c54:	03400000 	andi	$r0,$r0,0x0
1c009c58:	03400000 	andi	$r0,$r0,0x0
1c009c5c:	03400000 	andi	$r0,$r0,0x0
1c009c60:	03400000 	andi	$r0,$r0,0x0
1c009c64:	03400000 	andi	$r0,$r0,0x0
1c009c68:	03400000 	andi	$r0,$r0,0x0
1c009c6c:	03400000 	andi	$r0,$r0,0x0
1c009c70:	03400000 	andi	$r0,$r0,0x0
1c009c74:	03400000 	andi	$r0,$r0,0x0
1c009c78:	03400000 	andi	$r0,$r0,0x0
1c009c7c:	03400000 	andi	$r0,$r0,0x0
1c009c80:	03400000 	andi	$r0,$r0,0x0
1c009c84:	03400000 	andi	$r0,$r0,0x0
1c009c88:	03400000 	andi	$r0,$r0,0x0
1c009c8c:	03400000 	andi	$r0,$r0,0x0
1c009c90:	03400000 	andi	$r0,$r0,0x0
1c009c94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009c98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009c9c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c009ca0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009c14 <Key+0x328>
1c009ca4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009ca8:	02b7d58c 	addi.w	$r12,$r12,-523(0xdf5)
1c009cac:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009cb0:	2900018d 	st.b	$r13,$r12,0
1c009cb4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009cb8:	02b7918c 	addi.w	$r12,$r12,-540(0xde4)
1c009cbc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009cc0:	2900018d 	st.b	$r13,$r12,0
1c009cc4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cc8:	288d518c 	ld.w	$r12,$r12,852(0x354)
1c009ccc:	29800180 	st.w	$r0,$r12,0
1c009cd0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cd4:	288ce18c 	ld.w	$r12,$r12,824(0x338)
1c009cd8:	29800180 	st.w	$r0,$r12,0
1c009cdc:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009ce0:	029a358c 	addi.w	$r12,$r12,1677(0x68d)
1c009ce4:	2a00018d 	ld.bu	$r13,$r12,0
1c009ce8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c009cec:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009d4c <Key+0x460>
1c009cf0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cf4:	288ca18c 	ld.w	$r12,$r12,808(0x328)
1c009cf8:	29800180 	st.w	$r0,$r12,0
1c009cfc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d00:	288c318c 	ld.w	$r12,$r12,780(0x30c)
1c009d04:	29800180 	st.w	$r0,$r12,0
1c009d08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009d0c:	50003400 	b	52(0x34) # 1c009d40 <Key+0x454>
1c009d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009d14:	00408d8c 	slli.w	$r12,$r12,0x3
1c009d18:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009d1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009d20:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009d24:	02bc80c6 	addi.w	$r6,$r6,-224(0xf20)
1c009d28:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009d2c:	00150184 	move	$r4,$r12
1c009d30:	57bc13ff 	bl	-17392(0xfffbc10) # 1c005940 <OLED_ShowStr>
1c009d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009d40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009d44:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009d48:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009d10 <Key+0x424>
1c009d4c:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009d50:	0298758c 	addi.w	$r12,$r12,1565(0x61d)
1c009d54:	2a00018d 	ld.bu	$r13,$r12,0
1c009d58:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c009d5c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c009d78 <Key+0x48c>
1c009d60:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d64:	288ae18c 	ld.w	$r12,$r12,696(0x2b8)
1c009d68:	29800180 	st.w	$r0,$r12,0
1c009d6c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d70:	288a718c 	ld.w	$r12,$r12,668(0x29c)
1c009d74:	29800180 	st.w	$r0,$r12,0
1c009d78:	03400000 	andi	$r0,$r0,0x0
1c009d7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009d80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c009d84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009d88:	4c000020 	jirl	$r0,$r1,0

1c009d8c <Add_Key>:
Add_Key():
1c009d8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009d90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c009d94:	29806076 	st.w	$r22,$r3,24(0x18)
1c009d98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009d9c:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009da0:	0297358c 	addi.w	$r12,$r12,1485(0x5cd)
1c009da4:	2a00018c 	ld.bu	$r12,$r12,0
1c009da8:	40031580 	beqz	$r12,788(0x314) # 1c00a0bc <Add_Key+0x330>
1c009dac:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009db0:	0296f58c 	addi.w	$r12,$r12,1469(0x5bd)
1c009db4:	2a00018d 	ld.bu	$r13,$r12,0
1c009db8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009dbc:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c009ee8 <Add_Key+0x15c>
1c009dc0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009dc4:	2889218c 	ld.w	$r12,$r12,584(0x248)
1c009dc8:	2880018d 	ld.w	$r13,$r12,0
1c009dcc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009dd0:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c009e50 <Add_Key+0xc4>
1c009dd4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009dd8:	2889118c 	ld.w	$r12,$r12,580(0x244)
1c009ddc:	2880018d 	ld.w	$r13,$r12,0
1c009de0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009de4:	001c31ad 	mul.w	$r13,$r13,$r12
1c009de8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009dec:	2888c18c 	ld.w	$r12,$r12,560(0x230)
1c009df0:	2980018d 	st.w	$r13,$r12,0
1c009df4:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009df8:	0295d58c 	addi.w	$r12,$r12,1397(0x575)
1c009dfc:	2a00018d 	ld.bu	$r13,$r12,0
1c009e00:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009e04:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009e08:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009e10 <Add_Key+0x84>
1c009e0c:	002a0007 	break	0x7
1c009e10:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c009e14:	0015018d 	move	$r13,$r12
1c009e18:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e1c:	2888018c 	ld.w	$r12,$r12,512(0x200)
1c009e20:	2880018c 	ld.w	$r12,$r12,0
1c009e24:	001031ad 	add.w	$r13,$r13,$r12
1c009e28:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e2c:	2887c18c 	ld.w	$r12,$r12,496(0x1f0)
1c009e30:	2980018d 	st.w	$r13,$r12,0
1c009e34:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e38:	2887518c 	ld.w	$r12,$r12,468(0x1d4)
1c009e3c:	2880018c 	ld.w	$r12,$r12,0
1c009e40:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c009e44:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e48:	2887118c 	ld.w	$r12,$r12,452(0x1c4)
1c009e4c:	2980018d 	st.w	$r13,$r12,0
1c009e50:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e54:	2887218c 	ld.w	$r12,$r12,456(0x1c8)
1c009e58:	2880018c 	ld.w	$r12,$r12,0
1c009e5c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009e60:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e64:	2886a18c 	ld.w	$r12,$r12,424(0x1a8)
1c009e68:	2880018c 	ld.w	$r12,$r12,0
1c009e6c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009e70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009e74:	50006c00 	b	108(0x6c) # 1c009ee0 <Add_Key+0x154>
1c009e78:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009e7c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009e80:	0020b5cc 	mod.w	$r12,$r14,$r13
1c009e84:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009e8c <Add_Key+0x100>
1c009e88:	002a0007 	break	0x7
1c009e8c:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c009e90:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009e94:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009e98:	002035cc 	div.w	$r12,$r14,$r13
1c009e9c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009ea4 <Add_Key+0x118>
1c009ea0:	002a0007 	break	0x7
1c009ea4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009ea8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009eac:	00408d8c 	slli.w	$r12,$r12,0x3
1c009eb0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009eb4:	0015018d 	move	$r13,$r12
1c009eb8:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c009ebc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009ec0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009ec4:	00150186 	move	$r6,$r12
1c009ec8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009ecc:	001501a4 	move	$r4,$r13
1c009ed0:	57c0dfff 	bl	-16164(0xfffc0dc) # 1c005fac <OLED_ShowNum>
1c009ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009ed8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009edc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009ee4:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c009e78 <Add_Key+0xec>
1c009ee8:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009eec:	0292058c 	addi.w	$r12,$r12,1153(0x481)
1c009ef0:	2a00018d 	ld.bu	$r13,$r12,0
1c009ef4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009ef8:	5c0155ac 	bne	$r13,$r12,340(0x154) # 1c00a04c <Add_Key+0x2c0>
1c009efc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009f00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009f04:	50004400 	b	68(0x44) # 1c009f48 <Add_Key+0x1bc>
1c009f08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009f0c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009f10:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c009f14:	02ad81ad 	addi.w	$r13,$r13,-1184(0xb60)
1c009f18:	0040898c 	slli.w	$r12,$r12,0x2
1c009f1c:	001031ac 	add.w	$r12,$r13,$r12
1c009f20:	2880018d 	ld.w	$r13,$r12,0
1c009f24:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c009f28:	02ad31ce 	addi.w	$r14,$r14,-1204(0xb4c)
1c009f2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009f30:	0040898c 	slli.w	$r12,$r12,0x2
1c009f34:	001031cc 	add.w	$r12,$r14,$r12
1c009f38:	2980018d 	st.w	$r13,$r12,0
1c009f3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009f40:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009f44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009f48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009f4c:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c009f08 <Add_Key+0x17c>
1c009f50:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f54:	2883218c 	ld.w	$r12,$r12,200(0xc8)
1c009f58:	2880018d 	ld.w	$r13,$r12,0
1c009f5c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009f60:	02ac518c 	addi.w	$r12,$r12,-1260(0xb14)
1c009f64:	2980018d 	st.w	$r13,$r12,0
1c009f68:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f6c:	2882c18c 	ld.w	$r12,$r12,176(0xb0)
1c009f70:	29800180 	st.w	$r0,$r12,0
1c009f74:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f78:	2882518c 	ld.w	$r12,$r12,148(0x94)
1c009f7c:	29800180 	st.w	$r0,$r12,0
1c009f80:	57b23bff 	bl	-19912(0xfffb238) # 1c0051b8 <Buzzer>
1c009f84:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c009f88:	57e4efff 	bl	-6932(0xfffe4ec) # 1c008474 <interface_display>
1c009f8c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c009f90:	03bf918c 	ori	$r12,$r12,0xfe4
1c009f94:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009f98:	50008400 	b	132(0x84) # 1c00a01c <Add_Key+0x290>
1c009f9c:	03400000 	andi	$r0,$r0,0x0
1c009fa0:	03400000 	andi	$r0,$r0,0x0
1c009fa4:	03400000 	andi	$r0,$r0,0x0
1c009fa8:	03400000 	andi	$r0,$r0,0x0
1c009fac:	03400000 	andi	$r0,$r0,0x0
1c009fb0:	03400000 	andi	$r0,$r0,0x0
1c009fb4:	03400000 	andi	$r0,$r0,0x0
1c009fb8:	03400000 	andi	$r0,$r0,0x0
1c009fbc:	03400000 	andi	$r0,$r0,0x0
1c009fc0:	03400000 	andi	$r0,$r0,0x0
1c009fc4:	03400000 	andi	$r0,$r0,0x0
1c009fc8:	03400000 	andi	$r0,$r0,0x0
1c009fcc:	03400000 	andi	$r0,$r0,0x0
1c009fd0:	03400000 	andi	$r0,$r0,0x0
1c009fd4:	03400000 	andi	$r0,$r0,0x0
1c009fd8:	03400000 	andi	$r0,$r0,0x0
1c009fdc:	03400000 	andi	$r0,$r0,0x0
1c009fe0:	03400000 	andi	$r0,$r0,0x0
1c009fe4:	03400000 	andi	$r0,$r0,0x0
1c009fe8:	03400000 	andi	$r0,$r0,0x0
1c009fec:	03400000 	andi	$r0,$r0,0x0
1c009ff0:	03400000 	andi	$r0,$r0,0x0
1c009ff4:	03400000 	andi	$r0,$r0,0x0
1c009ff8:	03400000 	andi	$r0,$r0,0x0
1c009ffc:	03400000 	andi	$r0,$r0,0x0
1c00a000:	03400000 	andi	$r0,$r0,0x0
1c00a004:	03400000 	andi	$r0,$r0,0x0
1c00a008:	03400000 	andi	$r0,$r0,0x0
1c00a00c:	03400000 	andi	$r0,$r0,0x0
1c00a010:	03400000 	andi	$r0,$r0,0x0
1c00a014:	03400000 	andi	$r0,$r0,0x0
1c00a018:	03400000 	andi	$r0,$r0,0x0
1c00a01c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00a020:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00a024:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c00a028:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009f9c <Add_Key+0x210>
1c00a02c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a030:	02a9b58c 	addi.w	$r12,$r12,-1427(0xa6d)
1c00a034:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a038:	2900018d 	st.b	$r13,$r12,0
1c00a03c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a040:	02a9718c 	addi.w	$r12,$r12,-1444(0xa5c)
1c00a044:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a048:	2900018d 	st.b	$r13,$r12,0
1c00a04c:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c00a050:	028c758c 	addi.w	$r12,$r12,797(0x31d)
1c00a054:	2a00018d 	ld.bu	$r13,$r12,0
1c00a058:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00a05c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00a0bc <Add_Key+0x330>
1c00a060:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00a064:	28bee18c 	ld.w	$r12,$r12,-72(0xfb8)
1c00a068:	29800180 	st.w	$r0,$r12,0
1c00a06c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00a070:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c00a074:	29800180 	st.w	$r0,$r12,0
1c00a078:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00a07c:	50003400 	b	52(0x34) # 1c00a0b0 <Add_Key+0x324>
1c00a080:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a084:	00408d8c 	slli.w	$r12,$r12,0x3
1c00a088:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c00a08c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00a090:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a094:	02aec0c6 	addi.w	$r6,$r6,-1104(0xbb0)
1c00a098:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00a09c:	00150184 	move	$r4,$r12
1c00a0a0:	57b8a3ff 	bl	-18272(0xfffb8a0) # 1c005940 <OLED_ShowStr>
1c00a0a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a0a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00a0ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a0b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00a0b4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00a0b8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c00a080 <Add_Key+0x2f4>
1c00a0bc:	03400000 	andi	$r0,$r0,0x0
1c00a0c0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00a0c4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00a0c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a0cc:	4c000020 	jirl	$r0,$r1,0

1c00a0d0 <Delete_key>:
Delete_key():
1c00a0d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00a0d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00a0d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00a0dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00a0e0:	50002800 	b	40(0x28) # 1c00a108 <Delete_key+0x38>
1c00a0e4:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c00a0e8:	02a631ad 	addi.w	$r13,$r13,-1652(0x98c)
1c00a0ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a0f0:	0040898c 	slli.w	$r12,$r12,0x2
1c00a0f4:	001031ac 	add.w	$r12,$r13,$r12
1c00a0f8:	29800180 	st.w	$r0,$r12,0
1c00a0fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00a100:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00a104:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a108:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00a10c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00a110:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c00a0e4 <Delete_key+0x14>
1c00a114:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00a118:	03bf918c 	ori	$r12,$r12,0xfe4
1c00a11c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00a120:	50008400 	b	132(0x84) # 1c00a1a4 <Delete_key+0xd4>
1c00a124:	03400000 	andi	$r0,$r0,0x0
1c00a128:	03400000 	andi	$r0,$r0,0x0
1c00a12c:	03400000 	andi	$r0,$r0,0x0
1c00a130:	03400000 	andi	$r0,$r0,0x0
1c00a134:	03400000 	andi	$r0,$r0,0x0
1c00a138:	03400000 	andi	$r0,$r0,0x0
1c00a13c:	03400000 	andi	$r0,$r0,0x0
1c00a140:	03400000 	andi	$r0,$r0,0x0
1c00a144:	03400000 	andi	$r0,$r0,0x0
1c00a148:	03400000 	andi	$r0,$r0,0x0
1c00a14c:	03400000 	andi	$r0,$r0,0x0
1c00a150:	03400000 	andi	$r0,$r0,0x0
1c00a154:	03400000 	andi	$r0,$r0,0x0
1c00a158:	03400000 	andi	$r0,$r0,0x0
1c00a15c:	03400000 	andi	$r0,$r0,0x0
1c00a160:	03400000 	andi	$r0,$r0,0x0
1c00a164:	03400000 	andi	$r0,$r0,0x0
1c00a168:	03400000 	andi	$r0,$r0,0x0
1c00a16c:	03400000 	andi	$r0,$r0,0x0
1c00a170:	03400000 	andi	$r0,$r0,0x0
1c00a174:	03400000 	andi	$r0,$r0,0x0
1c00a178:	03400000 	andi	$r0,$r0,0x0
1c00a17c:	03400000 	andi	$r0,$r0,0x0
1c00a180:	03400000 	andi	$r0,$r0,0x0
1c00a184:	03400000 	andi	$r0,$r0,0x0
1c00a188:	03400000 	andi	$r0,$r0,0x0
1c00a18c:	03400000 	andi	$r0,$r0,0x0
1c00a190:	03400000 	andi	$r0,$r0,0x0
1c00a194:	03400000 	andi	$r0,$r0,0x0
1c00a198:	03400000 	andi	$r0,$r0,0x0
1c00a19c:	03400000 	andi	$r0,$r0,0x0
1c00a1a0:	03400000 	andi	$r0,$r0,0x0
1c00a1a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00a1a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00a1ac:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00a1b0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00a124 <Delete_key+0x54>
1c00a1b4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a1b8:	02a3958c 	addi.w	$r12,$r12,-1819(0x8e5)
1c00a1bc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a1c0:	2900018d 	st.b	$r13,$r12,0
1c00a1c4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a1c8:	02a3518c 	addi.w	$r12,$r12,-1836(0x8d4)
1c00a1cc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a1d0:	2900018d 	st.b	$r13,$r12,0
1c00a1d4:	03400000 	andi	$r0,$r0,0x0
1c00a1d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00a1dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a1e0:	4c000020 	jirl	$r0,$r1,0

1c00a1e4 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c00a1e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a1e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a1ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a1f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a1f4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a1f8:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c00a1fc:	02805005 	addi.w	$r5,$r0,20(0x14)
1c00a200:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a204:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c00a208:	5771afff 	bl	-36436(0xfff71ac) # 1c0013b4 <myprintf>
1c00a20c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00a210:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a214:	03808184 	ori	$r4,$r12,0x20
1c00a218:	576f57ff 	bl	-37036(0xfff6f54) # 1c00116c <EXTI_ClearITPendingBit>
1c00a21c:	03400000 	andi	$r0,$r0,0x0
1c00a220:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a224:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a228:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a22c:	4c000020 	jirl	$r0,$r1,0

1c00a230 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c00a230:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a234:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a238:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a23c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a240:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a244:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c00a248:	02806405 	addi.w	$r5,$r0,25(0x19)
1c00a24c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a250:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c00a254:	577163ff 	bl	-36512(0xfff7160) # 1c0013b4 <myprintf>
1c00a258:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00a25c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a260:	03808184 	ori	$r4,$r12,0x20
1c00a264:	576f0bff 	bl	-37112(0xfff6f08) # 1c00116c <EXTI_ClearITPendingBit>
1c00a268:	03400000 	andi	$r0,$r0,0x0
1c00a26c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a270:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a274:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a278:	4c000020 	jirl	$r0,$r1,0

1c00a27c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00a27c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a280:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a284:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a288:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a28c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a290:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c00a294:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c00a298:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a29c:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c00a2a0:	577117ff 	bl	-36588(0xfff7114) # 1c0013b4 <myprintf>
1c00a2a4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00a2a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2ac:	03808184 	ori	$r4,$r12,0x20
1c00a2b0:	576ebfff 	bl	-37188(0xfff6ebc) # 1c00116c <EXTI_ClearITPendingBit>
1c00a2b4:	03400000 	andi	$r0,$r0,0x0
1c00a2b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a2bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a2c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a2c4:	4c000020 	jirl	$r0,$r1,0

1c00a2c8 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00a2c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a2cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a2d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a2d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a2d8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a2dc:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c00a2e0:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c00a2e4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a2e8:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c00a2ec:	5770cbff 	bl	-36664(0xfff70c8) # 1c0013b4 <myprintf>
1c00a2f0:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00a2f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2f8:	03808184 	ori	$r4,$r12,0x20
1c00a2fc:	576e73ff 	bl	-37264(0xfff6e70) # 1c00116c <EXTI_ClearITPendingBit>
1c00a300:	03400000 	andi	$r0,$r0,0x0
1c00a304:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a308:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a30c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a310:	4c000020 	jirl	$r0,$r1,0

1c00a314 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00a314:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a318:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a31c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a320:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a324:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a328:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c00a32c:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c00a330:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a334:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c00a338:	57707fff 	bl	-36740(0xfff707c) # 1c0013b4 <myprintf>
1c00a33c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00a340:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a344:	03808184 	ori	$r4,$r12,0x20
1c00a348:	576e27ff 	bl	-37340(0xfff6e24) # 1c00116c <EXTI_ClearITPendingBit>
1c00a34c:	03400000 	andi	$r0,$r0,0x0
1c00a350:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a354:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a358:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a35c:	4c000020 	jirl	$r0,$r1,0

1c00a360 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00a360:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a364:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a368:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a36c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a370:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a374:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c00a378:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c00a37c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a380:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c00a384:	577033ff 	bl	-36816(0xfff7030) # 1c0013b4 <myprintf>
1c00a388:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00a38c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a390:	03808184 	ori	$r4,$r12,0x20
1c00a394:	576ddbff 	bl	-37416(0xfff6dd8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a398:	03400000 	andi	$r0,$r0,0x0
1c00a39c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a3a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a3a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a3a8:	4c000020 	jirl	$r0,$r1,0

1c00a3ac <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00a3ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a3b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a3b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a3b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a3bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a3c0:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c00a3c4:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c00a3c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a3cc:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c00a3d0:	576fe7ff 	bl	-36892(0xfff6fe4) # 1c0013b4 <myprintf>
1c00a3d4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00a3d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a3dc:	03808184 	ori	$r4,$r12,0x20
1c00a3e0:	576d8fff 	bl	-37492(0xfff6d8c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a3e4:	03400000 	andi	$r0,$r0,0x0
1c00a3e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a3ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a3f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a3f4:	4c000020 	jirl	$r0,$r1,0

1c00a3f8 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00a3f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a3fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a400:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a404:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a408:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a40c:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c00a410:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c00a414:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a418:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c00a41c:	576f9bff 	bl	-36968(0xfff6f98) # 1c0013b4 <myprintf>
1c00a420:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00a424:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a428:	03808184 	ori	$r4,$r12,0x20
1c00a42c:	576d43ff 	bl	-37568(0xfff6d40) # 1c00116c <EXTI_ClearITPendingBit>
1c00a430:	03400000 	andi	$r0,$r0,0x0
1c00a434:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a438:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a43c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a440:	4c000020 	jirl	$r0,$r1,0

1c00a444 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00a444:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a448:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a44c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a450:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a454:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a458:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c00a45c:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c00a460:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a464:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c00a468:	576f4fff 	bl	-37044(0xfff6f4c) # 1c0013b4 <myprintf>
1c00a46c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00a470:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a474:	03808184 	ori	$r4,$r12,0x20
1c00a478:	576cf7ff 	bl	-37644(0xfff6cf4) # 1c00116c <EXTI_ClearITPendingBit>
1c00a47c:	03400000 	andi	$r0,$r0,0x0
1c00a480:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a484:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a488:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a48c:	4c000020 	jirl	$r0,$r1,0

1c00a490 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00a490:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a494:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a498:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a49c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a4a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a4a4:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c00a4a8:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c00a4ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a4b0:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c00a4b4:	576f03ff 	bl	-37120(0xfff6f00) # 1c0013b4 <myprintf>
1c00a4b8:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00a4bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a4c0:	03808184 	ori	$r4,$r12,0x20
1c00a4c4:	576cabff 	bl	-37720(0xfff6ca8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a4c8:	03400000 	andi	$r0,$r0,0x0
1c00a4cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a4d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a4d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a4d8:	4c000020 	jirl	$r0,$r1,0

1c00a4dc <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00a4dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a4e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a4e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a4e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a4ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a4f0:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c00a4f4:	02812405 	addi.w	$r5,$r0,73(0x49)
1c00a4f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a4fc:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c00a500:	576eb7ff 	bl	-37196(0xfff6eb4) # 1c0013b4 <myprintf>
1c00a504:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c00a508:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a50c:	03808184 	ori	$r4,$r12,0x20
1c00a510:	576c5fff 	bl	-37796(0xfff6c5c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a514:	03400000 	andi	$r0,$r0,0x0
1c00a518:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a51c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a520:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a524:	4c000020 	jirl	$r0,$r1,0

1c00a528 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c00a528:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a52c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a530:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a534:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a538:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a53c:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c00a540:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c00a544:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a548:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c00a54c:	576e6bff 	bl	-37272(0xfff6e68) # 1c0013b4 <myprintf>
1c00a550:	03a00005 	ori	$r5,$r0,0x800
1c00a554:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a558:	03808184 	ori	$r4,$r12,0x20
1c00a55c:	576c13ff 	bl	-37872(0xfff6c10) # 1c00116c <EXTI_ClearITPendingBit>
1c00a560:	03400000 	andi	$r0,$r0,0x0
1c00a564:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a568:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a56c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a570:	4c000020 	jirl	$r0,$r1,0

1c00a574 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00a574:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a578:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a57c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a580:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a584:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a588:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c00a58c:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00a590:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a594:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c00a598:	576e1fff 	bl	-37348(0xfff6e1c) # 1c0013b4 <myprintf>
1c00a59c:	14000025 	lu12i.w	$r5,1(0x1)
1c00a5a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a5a4:	03808184 	ori	$r4,$r12,0x20
1c00a5a8:	576bc7ff 	bl	-37948(0xfff6bc4) # 1c00116c <EXTI_ClearITPendingBit>
1c00a5ac:	03400000 	andi	$r0,$r0,0x0
1c00a5b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a5b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a5b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a5bc:	4c000020 	jirl	$r0,$r1,0

1c00a5c0 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00a5c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a5c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a5c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a5cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a5d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a5d4:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c00a5d8:	02816405 	addi.w	$r5,$r0,89(0x59)
1c00a5dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a5e0:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c00a5e4:	576dd3ff 	bl	-37424(0xfff6dd0) # 1c0013b4 <myprintf>
1c00a5e8:	14000045 	lu12i.w	$r5,2(0x2)
1c00a5ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a5f0:	03808184 	ori	$r4,$r12,0x20
1c00a5f4:	576b7bff 	bl	-38024(0xfff6b78) # 1c00116c <EXTI_ClearITPendingBit>
1c00a5f8:	03400000 	andi	$r0,$r0,0x0
1c00a5fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a600:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a604:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a608:	4c000020 	jirl	$r0,$r1,0

1c00a60c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00a60c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a610:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a614:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a618:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a61c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a620:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c00a624:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c00a628:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a62c:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c00a630:	576d87ff 	bl	-37500(0xfff6d84) # 1c0013b4 <myprintf>
1c00a634:	14000085 	lu12i.w	$r5,4(0x4)
1c00a638:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a63c:	03808184 	ori	$r4,$r12,0x20
1c00a640:	576b2fff 	bl	-38100(0xfff6b2c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a644:	03400000 	andi	$r0,$r0,0x0
1c00a648:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a64c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a650:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a654:	4c000020 	jirl	$r0,$r1,0

1c00a658 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c00a658:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a65c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a660:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a664:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a668:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a66c:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c00a670:	02819405 	addi.w	$r5,$r0,101(0x65)
1c00a674:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a678:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c00a67c:	576d3bff 	bl	-37576(0xfff6d38) # 1c0013b4 <myprintf>
1c00a680:	14000105 	lu12i.w	$r5,8(0x8)
1c00a684:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a688:	03808184 	ori	$r4,$r12,0x20
1c00a68c:	576ae3ff 	bl	-38176(0xfff6ae0) # 1c00116c <EXTI_ClearITPendingBit>
1c00a690:	03400000 	andi	$r0,$r0,0x0
1c00a694:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a698:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a69c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a6a0:	4c000020 	jirl	$r0,$r1,0

1c00a6a4 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00a6a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a6a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a6ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a6b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a6b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a6b8:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c00a6bc:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c00a6c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a6c4:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c00a6c8:	576cefff 	bl	-37652(0xfff6cec) # 1c0013b4 <myprintf>
1c00a6cc:	14000205 	lu12i.w	$r5,16(0x10)
1c00a6d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a6d4:	03808184 	ori	$r4,$r12,0x20
1c00a6d8:	576a97ff 	bl	-38252(0xfff6a94) # 1c00116c <EXTI_ClearITPendingBit>
1c00a6dc:	03400000 	andi	$r0,$r0,0x0
1c00a6e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a6e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a6e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a6ec:	4c000020 	jirl	$r0,$r1,0

1c00a6f0 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00a6f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a6f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a6f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a6fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a700:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a704:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c00a708:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c00a70c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a710:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c00a714:	576ca3ff 	bl	-37728(0xfff6ca0) # 1c0013b4 <myprintf>
1c00a718:	14000405 	lu12i.w	$r5,32(0x20)
1c00a71c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a720:	03808184 	ori	$r4,$r12,0x20
1c00a724:	576a4bff 	bl	-38328(0xfff6a48) # 1c00116c <EXTI_ClearITPendingBit>
1c00a728:	03400000 	andi	$r0,$r0,0x0
1c00a72c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a730:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a734:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a738:	4c000020 	jirl	$r0,$r1,0

1c00a73c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00a73c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a740:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a744:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a748:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a74c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a750:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c00a754:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c00a758:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a75c:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c00a760:	576c57ff 	bl	-37804(0xfff6c54) # 1c0013b4 <myprintf>
1c00a764:	14000805 	lu12i.w	$r5,64(0x40)
1c00a768:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a76c:	03808184 	ori	$r4,$r12,0x20
1c00a770:	5769ffff 	bl	-38404(0xfff69fc) # 1c00116c <EXTI_ClearITPendingBit>
1c00a774:	03400000 	andi	$r0,$r0,0x0
1c00a778:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a77c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a780:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a784:	4c000020 	jirl	$r0,$r1,0

1c00a788 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c00a788:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a78c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a790:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a794:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a798:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a79c:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c00a7a0:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c00a7a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a7a8:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c00a7ac:	576c0bff 	bl	-37880(0xfff6c08) # 1c0013b4 <myprintf>
1c00a7b0:	14001005 	lu12i.w	$r5,128(0x80)
1c00a7b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a7b8:	03808184 	ori	$r4,$r12,0x20
1c00a7bc:	5769b3ff 	bl	-38480(0xfff69b0) # 1c00116c <EXTI_ClearITPendingBit>
1c00a7c0:	03400000 	andi	$r0,$r0,0x0
1c00a7c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a7c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a7cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a7d0:	4c000020 	jirl	$r0,$r1,0

1c00a7d4 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00a7d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a7d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a7dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a7e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a7e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a7e8:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c00a7ec:	02821005 	addi.w	$r5,$r0,132(0x84)
1c00a7f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a7f4:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c00a7f8:	576bbfff 	bl	-37956(0xfff6bbc) # 1c0013b4 <myprintf>
1c00a7fc:	14002005 	lu12i.w	$r5,256(0x100)
1c00a800:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a804:	03808184 	ori	$r4,$r12,0x20
1c00a808:	576967ff 	bl	-38556(0xfff6964) # 1c00116c <EXTI_ClearITPendingBit>
1c00a80c:	03400000 	andi	$r0,$r0,0x0
1c00a810:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a814:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a818:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a81c:	4c000020 	jirl	$r0,$r1,0

1c00a820 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00a820:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a824:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a828:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a82c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a830:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a834:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c00a838:	02822405 	addi.w	$r5,$r0,137(0x89)
1c00a83c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a840:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c00a844:	576b73ff 	bl	-38032(0xfff6b70) # 1c0013b4 <myprintf>
1c00a848:	14004005 	lu12i.w	$r5,512(0x200)
1c00a84c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a850:	03808184 	ori	$r4,$r12,0x20
1c00a854:	57691bff 	bl	-38632(0xfff6918) # 1c00116c <EXTI_ClearITPendingBit>
1c00a858:	03400000 	andi	$r0,$r0,0x0
1c00a85c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a860:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a864:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a868:	4c000020 	jirl	$r0,$r1,0

1c00a86c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00a86c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a870:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a874:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a878:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a87c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a880:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c00a884:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c00a888:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a88c:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c00a890:	576b27ff 	bl	-38108(0xfff6b24) # 1c0013b4 <myprintf>
1c00a894:	14008005 	lu12i.w	$r5,1024(0x400)
1c00a898:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a89c:	03808184 	ori	$r4,$r12,0x20
1c00a8a0:	5768cfff 	bl	-38708(0xfff68cc) # 1c00116c <EXTI_ClearITPendingBit>
1c00a8a4:	03400000 	andi	$r0,$r0,0x0
1c00a8a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a8ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a8b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a8b4:	4c000020 	jirl	$r0,$r1,0

1c00a8b8 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00a8b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a8bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a8c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a8c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a8c8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a8cc:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c00a8d0:	02825005 	addi.w	$r5,$r0,148(0x94)
1c00a8d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a8d8:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c00a8dc:	576adbff 	bl	-38184(0xfff6ad8) # 1c0013b4 <myprintf>
1c00a8e0:	14010005 	lu12i.w	$r5,2048(0x800)
1c00a8e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a8e8:	03808184 	ori	$r4,$r12,0x20
1c00a8ec:	576883ff 	bl	-38784(0xfff6880) # 1c00116c <EXTI_ClearITPendingBit>
1c00a8f0:	03400000 	andi	$r0,$r0,0x0
1c00a8f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a8f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a8fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a900:	4c000020 	jirl	$r0,$r1,0

1c00a904 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00a904:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a908:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a90c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a910:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a914:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a918:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c00a91c:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c00a920:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a924:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c00a928:	576a8fff 	bl	-38260(0xfff6a8c) # 1c0013b4 <myprintf>
1c00a92c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00a930:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a934:	03808184 	ori	$r4,$r12,0x20
1c00a938:	576837ff 	bl	-38860(0xfff6834) # 1c00116c <EXTI_ClearITPendingBit>
1c00a93c:	03400000 	andi	$r0,$r0,0x0
1c00a940:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a944:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a948:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a94c:	4c000020 	jirl	$r0,$r1,0

1c00a950 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c00a950:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a954:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a958:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a95c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a960:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a964:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c00a968:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c00a96c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a970:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c00a974:	576a43ff 	bl	-38336(0xfff6a40) # 1c0013b4 <myprintf>
1c00a978:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00a97c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a980:	03808184 	ori	$r4,$r12,0x20
1c00a984:	5767ebff 	bl	-38936(0xfff67e8) # 1c00116c <EXTI_ClearITPendingBit>
1c00a988:	03400000 	andi	$r0,$r0,0x0
1c00a98c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a990:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a994:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a998:	4c000020 	jirl	$r0,$r1,0

1c00a99c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00a99c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a9a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a9a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a9a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a9ac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a9b0:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c00a9b4:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c00a9b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a9bc:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c00a9c0:	5769f7ff 	bl	-38412(0xfff69f4) # 1c0013b4 <myprintf>
1c00a9c4:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00a9c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a9cc:	03808184 	ori	$r4,$r12,0x20
1c00a9d0:	57679fff 	bl	-39012(0xfff679c) # 1c00116c <EXTI_ClearITPendingBit>
1c00a9d4:	03400000 	andi	$r0,$r0,0x0
1c00a9d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a9dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a9e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a9e4:	4c000020 	jirl	$r0,$r1,0

1c00a9e8 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c00a9e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a9ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a9f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a9f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a9f8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a9fc:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c00aa00:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c00aa04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aa08:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c00aa0c:	5769abff 	bl	-38488(0xfff69a8) # 1c0013b4 <myprintf>
1c00aa10:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00aa14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa18:	03808184 	ori	$r4,$r12,0x20
1c00aa1c:	576753ff 	bl	-39088(0xfff6750) # 1c00116c <EXTI_ClearITPendingBit>
1c00aa20:	03400000 	andi	$r0,$r0,0x0
1c00aa24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aa28:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aa2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aa30:	4c000020 	jirl	$r0,$r1,0

1c00aa34 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00aa34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00aa38:	29803061 	st.w	$r1,$r3,12(0xc)
1c00aa3c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00aa40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00aa44:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aa48:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c00aa4c:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c00aa50:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aa54:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c00aa58:	57695fff 	bl	-38564(0xfff695c) # 1c0013b4 <myprintf>
1c00aa5c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00aa60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa64:	03808184 	ori	$r4,$r12,0x20
1c00aa68:	576707ff 	bl	-39164(0xfff6704) # 1c00116c <EXTI_ClearITPendingBit>
1c00aa6c:	03400000 	andi	$r0,$r0,0x0
1c00aa70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aa74:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aa78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aa7c:	4c000020 	jirl	$r0,$r1,0

1c00aa80 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00aa80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00aa84:	29803061 	st.w	$r1,$r3,12(0xc)
1c00aa88:	29802076 	st.w	$r22,$r3,8(0x8)
1c00aa8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00aa90:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aa94:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c00aa98:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c00aa9c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aaa0:	02880084 	addi.w	$r4,$r4,512(0x200)
1c00aaa4:	576913ff 	bl	-38640(0xfff6910) # 1c0013b4 <myprintf>
1c00aaa8:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00aaac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aab0:	03808184 	ori	$r4,$r12,0x20
1c00aab4:	5766bbff 	bl	-39240(0xfff66b8) # 1c00116c <EXTI_ClearITPendingBit>
1c00aab8:	03400000 	andi	$r0,$r0,0x0
1c00aabc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aac0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aac4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aac8:	4c000020 	jirl	$r0,$r1,0

1c00aacc <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00aacc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00aad0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00aad4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00aad8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00aadc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aae0:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c00aae4:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c00aae8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aaec:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c00aaf0:	5768c7ff 	bl	-38716(0xfff68c4) # 1c0013b4 <myprintf>
1c00aaf4:	14800005 	lu12i.w	$r5,262144(0x40000)
1c00aaf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aafc:	03808184 	ori	$r4,$r12,0x20
1c00ab00:	57666fff 	bl	-39316(0xfff666c) # 1c00116c <EXTI_ClearITPendingBit>
1c00ab04:	03400000 	andi	$r0,$r0,0x0
1c00ab08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00ab0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00ab10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00ab14:	4c000020 	jirl	$r0,$r1,0

1c00ab18 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c00ab18:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00ab1c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00ab20:	29802076 	st.w	$r22,$r3,8(0x8)
1c00ab24:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00ab28:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00ab2c:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c00ab30:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c00ab34:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ab38:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c00ab3c:	57687bff 	bl	-38792(0xfff6878) # 1c0013b4 <myprintf>
1c00ab40:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00ab44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ab48:	03808184 	ori	$r4,$r12,0x20
1c00ab4c:	576623ff 	bl	-39392(0xfff6620) # 1c00116c <EXTI_ClearITPendingBit>
1c00ab50:	03400000 	andi	$r0,$r0,0x0
1c00ab54:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00ab58:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00ab5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00ab60:	4c000020 	jirl	$r0,$r1,0

1c00ab64 <ext_handler>:
ext_handler():
1c00ab64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ab68:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ab6c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ab70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ab74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ab78:	0380f18c 	ori	$r12,$r12,0x3c
1c00ab7c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00ab80:	2980018d 	st.w	$r13,$r12,0
1c00ab84:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00ab88:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c00ab8c:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c00ab90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ab94:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c00ab98:	57681fff 	bl	-38884(0xfff681c) # 1c0013b4 <myprintf>
1c00ab9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aba0:	0380818c 	ori	$r12,$r12,0x20
1c00aba4:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00aba8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00abac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00abb0:	0380818c 	ori	$r12,$r12,0x20
1c00abb4:	2880018c 	ld.w	$r12,$r12,0
1c00abb8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00abbc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00abc0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00abc4:	0014b1ac 	and	$r12,$r13,$r12
1c00abc8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00abcc:	03400000 	andi	$r0,$r0,0x0
1c00abd0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00abd4:	50004000 	b	64(0x40) # 1c00ac14 <ext_handler+0xb0>
1c00abd8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00abdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00abe0:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00abe4:	0340058c 	andi	$r12,$r12,0x1
1c00abe8:	40002180 	beqz	$r12,32(0x20) # 1c00ac08 <ext_handler+0xa4>
1c00abec:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00abf0:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c00abf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00abf8:	0040898c 	slli.w	$r12,$r12,0x2
1c00abfc:	001031ac 	add.w	$r12,$r13,$r12
1c00ac00:	2880018c 	ld.w	$r12,$r12,0
1c00ac04:	4c000181 	jirl	$r1,$r12,0
1c00ac08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ac0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00ac10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ac14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00ac18:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00ac1c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00abd8 <ext_handler+0x74>
1c00ac20:	03400000 	andi	$r0,$r0,0x0
1c00ac24:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ac28:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ac2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ac30:	4c000020 	jirl	$r0,$r1,0

1c00ac34 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00ac34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ac38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ac3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ac40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ac44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac48:	0380f18c 	ori	$r12,$r12,0x3c
1c00ac4c:	1400020d 	lu12i.w	$r13,16(0x10)
1c00ac50:	2980018d 	st.w	$r13,$r12,0
1c00ac54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac58:	0380118c 	ori	$r12,$r12,0x4
1c00ac5c:	2880018c 	ld.w	$r12,$r12,0
1c00ac60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ac64:	576ba3ff 	bl	-37984(0xfff6ba0) # 1c001804 <WDG_DogFeed>
1c00ac68:	03400000 	andi	$r0,$r0,0x0
1c00ac6c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ac70:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ac74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ac78:	4c000020 	jirl	$r0,$r1,0

1c00ac7c <TOUCH>:
TOUCH():
1c00ac7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ac80:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ac84:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ac88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ac8c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00ac90:	0380118c 	ori	$r12,$r12,0x4
1c00ac94:	2880018c 	ld.w	$r12,$r12,0
1c00ac98:	0044c18c 	srli.w	$r12,$r12,0x10
1c00ac9c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00aca0:	037ffd8c 	andi	$r12,$r12,0xfff
1c00aca4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00aca8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00acac:	0380118c 	ori	$r12,$r12,0x4
1c00acb0:	2880018c 	ld.w	$r12,$r12,0
1c00acb4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00acb8:	03403d8c 	andi	$r12,$r12,0xf
1c00acbc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00acc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00acc4:	0380f18c 	ori	$r12,$r12,0x3c
1c00acc8:	1400040d 	lu12i.w	$r13,32(0x20)
1c00accc:	2980018d 	st.w	$r13,$r12,0
1c00acd0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00acd4:	0380118c 	ori	$r12,$r12,0x4
1c00acd8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00acdc:	2980018d 	st.w	$r13,$r12,0
1c00ace0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00ace4:	00150185 	move	$r5,$r12
1c00ace8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00acec:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c00acf0:	5766c7ff 	bl	-39228(0xfff66c4) # 1c0013b4 <myprintf>
1c00acf4:	03400000 	andi	$r0,$r0,0x0
1c00acf8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00acfc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ad00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ad04:	4c000020 	jirl	$r0,$r1,0

1c00ad08 <UART2_INT>:
UART2_INT():
1c00ad08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ad0c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00ad10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ad14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ad18:	0380f18c 	ori	$r12,$r12,0x3c
1c00ad1c:	1400080d 	lu12i.w	$r13,64(0x40)
1c00ad20:	2980018d 	st.w	$r13,$r12,0
1c00ad24:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00ad28:	0380098c 	ori	$r12,$r12,0x2
1c00ad2c:	2a00018c 	ld.bu	$r12,$r12,0
1c00ad30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00ad34:	03400000 	andi	$r0,$r0,0x0
1c00ad38:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00ad3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ad40:	4c000020 	jirl	$r0,$r1,0

1c00ad44 <BAT_FAIL>:
BAT_FAIL():
1c00ad44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ad48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ad4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ad50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ad54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ad58:	0380118c 	ori	$r12,$r12,0x4
1c00ad5c:	2880018c 	ld.w	$r12,$r12,0
1c00ad60:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00ad64:	03407d8c 	andi	$r12,$r12,0x1f
1c00ad68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ad6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ad70:	0380118c 	ori	$r12,$r12,0x4
1c00ad74:	2880018e 	ld.w	$r14,$r12,0
1c00ad78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ad7c:	0380f18c 	ori	$r12,$r12,0x3c
1c00ad80:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00ad84:	0014b5cd 	and	$r13,$r14,$r13
1c00ad88:	2980018d 	st.w	$r13,$r12,0
1c00ad8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00ad90:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00ad94:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00ae04 <BAT_FAIL+0xc0>
1c00ad98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ad9c:	0040898d 	slli.w	$r13,$r12,0x2
1c00ada0:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c00ada4:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c00ada8:	001031ac 	add.w	$r12,$r13,$r12
1c00adac:	2880018c 	ld.w	$r12,$r12,0
1c00adb0:	4c000180 	jirl	$r0,$r12,0
1c00adb4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00adb8:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c00adbc:	5765fbff 	bl	-39432(0xfff65f8) # 1c0013b4 <myprintf>
1c00adc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00adc4:	0380118c 	ori	$r12,$r12,0x4
1c00adc8:	29800180 	st.w	$r0,$r12,0
1c00adcc:	50003c00 	b	60(0x3c) # 1c00ae08 <BAT_FAIL+0xc4>
1c00add0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00add4:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c00add8:	5765dfff 	bl	-39460(0xfff65dc) # 1c0013b4 <myprintf>
1c00addc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ade0:	0380118c 	ori	$r12,$r12,0x4
1c00ade4:	2880018e 	ld.w	$r14,$r12,0
1c00ade8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00adec:	0380118c 	ori	$r12,$r12,0x4
1c00adf0:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00adf4:	03bffdad 	ori	$r13,$r13,0xfff
1c00adf8:	0014b5cd 	and	$r13,$r14,$r13
1c00adfc:	2980018d 	st.w	$r13,$r12,0
1c00ae00:	50000800 	b	8(0x8) # 1c00ae08 <BAT_FAIL+0xc4>
1c00ae04:	03400000 	andi	$r0,$r0,0x0
1c00ae08:	03400000 	andi	$r0,$r0,0x0
1c00ae0c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ae10:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ae14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ae18:	4c000020 	jirl	$r0,$r1,0

1c00ae1c <INTC_Handler>:
INTC_Handler():
1c00ae1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ae20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ae24:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ae28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ae2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00ae30:	0380158c 	ori	$r12,$r12,0x5
1c00ae34:	2a00018c 	ld.bu	$r12,$r12,0
1c00ae38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00ae3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ae40:	0340058c 	andi	$r12,$r12,0x1
1c00ae44:	40002980 	beqz	$r12,40(0x28) # 1c00ae6c <INTC_Handler+0x50>
1c00ae48:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00ae4c:	57a67fff 	bl	-22916(0xfffa67c) # 1c0054c8 <TIM_GetITStatus>
1c00ae50:	0015008c 	move	$r12,$r4
1c00ae54:	40001980 	beqz	$r12,24(0x18) # 1c00ae6c <INTC_Handler+0x50>
1c00ae58:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00ae5c:	57a6bbff 	bl	-22856(0xfffa6b8) # 1c005514 <TIM_ClearIT>
1c00ae60:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ae64:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c00ae68:	57654fff 	bl	-39604(0xfff654c) # 1c0013b4 <myprintf>
1c00ae6c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ae70:	0340118c 	andi	$r12,$r12,0x4
1c00ae74:	40002d80 	beqz	$r12,44(0x2c) # 1c00aea0 <INTC_Handler+0x84>
1c00ae78:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00ae7c:	2880018c 	ld.w	$r12,$r12,0
1c00ae80:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00ae84:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00ae88:	00150184 	move	$r4,$r12
1c00ae8c:	5770ebff 	bl	-36632(0xfff70e8) # 1c001f74 <my_recv_dat_int>
1c00ae90:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00ae94:	03800d8c 	ori	$r12,$r12,0x3
1c00ae98:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00ae9c:	2900018d 	st.b	$r13,$r12,0
1c00aea0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00aea4:	0340218c 	andi	$r12,$r12,0x8
1c00aea8:	40002d80 	beqz	$r12,44(0x2c) # 1c00aed4 <INTC_Handler+0xb8>
1c00aeac:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00aeb0:	2880018c 	ld.w	$r12,$r12,0
1c00aeb4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00aeb8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00aebc:	00150184 	move	$r4,$r12
1c00aec0:	5770b7ff 	bl	-36684(0xfff70b4) # 1c001f74 <my_recv_dat_int>
1c00aec4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00aec8:	03800d8c 	ori	$r12,$r12,0x3
1c00aecc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00aed0:	2900018d 	st.b	$r13,$r12,0
1c00aed4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00aed8:	03800d8c 	ori	$r12,$r12,0x3
1c00aedc:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00aee0:	2900018d 	st.b	$r13,$r12,0
1c00aee4:	03400000 	andi	$r0,$r0,0x0
1c00aee8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00aeec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00aef0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00aef4:	4c000020 	jirl	$r0,$r1,0

1c00aef8 <TIMER_HANDLER>:
TIMER_HANDLER():
1c00aef8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00aefc:	29803061 	st.w	$r1,$r3,12(0xc)
1c00af00:	29802076 	st.w	$r22,$r3,8(0x8)
1c00af04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00af08:	576243ff 	bl	-40384(0xfff6240) # 1c001148 <Set_Timer_clear>
1c00af0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00af10:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c00af14:	5764a3ff 	bl	-39776(0xfff64a0) # 1c0013b4 <myprintf>
1c00af18:	576213ff 	bl	-40432(0xfff6210) # 1c001128 <Set_Timer_stop>
1c00af1c:	03400000 	andi	$r0,$r0,0x0
1c00af20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00af24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00af28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00af2c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c00af30 <F6x8-0x334>:
1c00af30:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c00af34:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af38:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af3c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af40:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af44:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af48:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af4c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af50:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af54:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af58:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af5c:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c00af60:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af64:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af68:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af6c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af70:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af74:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af78:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af7c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af80:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00af84:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af88:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af8c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af90:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af94:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af98:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00af9c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afa0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afa4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afa8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afb0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afb4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afb8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afbc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afc0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afc4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afc8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afcc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afd0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afd4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afd8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afdc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afe0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afe4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afe8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00afec:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aff0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aff4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00aff8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00affc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b000:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b004:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b008:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b00c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b010:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b014:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b018:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b01c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b020:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b024:	1c001564 	pcaddu12i	$r4,171(0xab)
1c00b028:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c00b02c:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c00b030:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b034:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b038:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b03c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b040:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b044:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b048:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b04c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b050:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b054:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b058:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c00b05c:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00b060:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b064:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b068:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c00b06c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b070:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c00b074:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b078:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00b07c:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00b080:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b084:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c00b088:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c00b08c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b090:	00000000 	0x00000000
1c00b094:	befdca20 	0xbefdca20
1c00b098:	bdfcb0dd 	0xbdfcb0dd
1c00b09c:	b4d5cad3 	0xb4d5cad3
1c00b0a0:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b0a4:	00000000 	0x00000000
1c00b0a8:	d0b8abb4 	0xd0b8abb4
1c00b0ac:	cfc9f7c6 	0xcfc9f7c6
1c00b0b0:	d0d3bbc3 	0xd0d3bbc3
1c00b0b4:	b8d6d6ca 	0xb8d6d6ca
1c00b0b8:	00000000 	0x00000000
1c00b0bc:	ebc8bcc2 	0xebc8bcc2
1c00b0c0:	c6ceb8d6 	0xc6ceb8d6
1c00b0c4:	f1cfbccd 	0xf1cfbccd
1c00b0c8:	dcb0a7ca 	0xdcb0a7ca
1c00b0cc:	00000000 	0x00000000
1c00b0d0:	ceb8d620 	0xceb8d620
1c00b0d4:	b8abccc6 	0xb8abccc6
1c00b0d8:	ccf2bbc9 	0xccf2bbc9
1c00b0dc:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c00b0e0:	00000000 	0x00000000
1c00b0e4:	ceb8d620 	0xceb8d620
1c00b0e8:	caabccc6 	0xcaabccc6
1c00b0ec:	ccf2bbaa 	0xccf2bbaa
1c00b0f0:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c00b0f4:	00000000 	0x00000000
1c00b0f8:	b8d62020 	0xb8d62020
1c00b0fc:	bccdc6ce 	0xbccdc6ce
1c00b100:	abccf1cf 	0xabccf1cf
1c00b104:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c00b108:	00000000 	0x00000000
1c00b10c:	ceb8d620 	0xceb8d620
1c00b110:	d5d8ccc6 	0xd5d8ccc6
1c00b114:	cce3b5f7 	0xcce3b5f7
1c00b118:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c00b11c:	00000000 	0x00000000
1c00b120:	b8d62020 	0xb8d62020
1c00b124:	bbb2c6ce 	0xbbb2c6ce
1c00b128:	e4c5a5c6 	0xe4c5a5c6
1c00b12c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b130:	00000000 	0x00000000
1c00b134:	d3bbc320 	0xd3bbc320
1c00b138:	cbd1cbd0 	0xcbd1cbd0
1c00b13c:	d6bdb5f7 	0xd6bdb5f7
1c00b140:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c00b144:	00000000 	0x00000000
1c00b148:	cc202020 	0xcc202020
1c00b14c:	baf7d5d8 	0xbaf7d5d8
1c00b150:	caa2b2cf 	0xcaa2b2cf
1c00b154:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00b158:	00000000 	0x00000000
1c00b15c:	b7d6d8b5 	0xb7d6d8b5
1c00b160:	c5baf2d0 	0xc5baf2d0
1c00b164:	f6b3acb3 	0xf6b3acb3
1c00b168:	a7ceb6b7 	0xa7ceb6b7
1c00b16c:	00000000 	0x00000000
1c00b170:	bec92020 	0xbec92020
1c00b174:	a3c4fdb3 	0xa3c4fdb3
1c00b178:	a7cae5b0 	0xa7cae5b0
1c00b17c:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c00b180:	00000000 	0x00000000
1c00b184:	bfe5c720 	0xbfe5c720
1c00b188:	ceb8d6d5 	0xceb8d6d5
1c00b18c:	cae2bfc6 	0xcae2bfc6
1c00b190:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00b194:	00000000 	0x00000000
1c00b198:	e5b3babb 	0xe5b3babb
1c00b19c:	dac4f8c7 	0xdac4f8c7
1c00b1a0:	d0d3dece 	0xd0d3dece
1c00b1a4:	bccda7d0 	0xbccda7d0
1c00b1a8:	00000000 	0x00000000
1c00b1ac:	d0c1b620 	0xd0c1b620
1c00b1b0:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1fdf4 <_start-0x2e020c>
1c00b1b4:	f6b34853 	0xf6b34853
1c00b1b8:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c00b1bc:	00000000 	0x00000000
1c00b1c0:	ce202020 	0xce202020
1c00b1c4:	d2a8b6b4 	0xd2a8b6b4
1c00b1c8:	ceedb4e5 	0xceedb4e5
1c00b1cc:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c00b1d0:	00000000 	0x00000000
1c00b1d4:	dece2020 	0xdece2020
1c00b1d8:	c4bca7d0 	0xc4bca7d0
1c00b1dc:	f7c6e6b4 	0xf7c6e6b4
1c00b1e0:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c00b1e4:	00000000 	0x00000000
1c00b1e8:	b4c4bc20 	0xb4c4bc20
1c00b1ec:	c4f7c6e6 	0xc4f7c6e6
1c00b1f0:	b4ddc8da 	0xb4ddc8da
1c00b1f4:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b1f8:	00000000 	0x00000000
1c00b1fc:	cac7bc20 	0xcac7bc20
1c00b200:	d2beb1c2 	0xd2beb1c2
1c00b204:	b4ebc2b3 	0xb4ebc2b3
1c00b208:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b20c:	00000000 	0x00000000
1c00b210:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b214:	c6ceb8d6 	0xc6ceb8d6
1c00b218:	fac2e2bf 	0xfac2e2bf
1c00b21c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b220:	00000000 	0x00000000
1c00b224:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b228:	b7d6d8b5 	0xb7d6d8b5
1c00b22c:	f3ceedb4 	0xf3ceedb4
1c00b230:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b234:	00000000 	0x00000000
1c00b238:	bbb5b720 	0xbbb5b720
1c00b23c:	c8b7c8d8 	0xc8b7c8d8
1c00b240:	d3ebc2cf 	0xd3ebc2cf
1c00b244:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c00b248:	00000000 	0x00000000
1c00b24c:	003a4449 	0x003a4449
1c00b250:	1c002d28 	pcaddu12i	$r8,361(0x169)
1c00b254:	1c002e68 	pcaddu12i	$r8,371(0x173)
1c00b258:	1c002f1c 	pcaddu12i	$r28,376(0x178)
1c00b25c:	1c003000 	pcaddu12i	$r0,384(0x180)
1c00b260:	1c0030d4 	pcaddu12i	$r20,390(0x186)

1c00b264 <F6x8>:
	...
1c00b26c:	00002f00 	ctz.d	$r0,$r24
1c00b270:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c00b274:	14000007 	lu12i.w	$r7,0
1c00b278:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c00b27c:	7f2a2400 	0x7f2a2400
1c00b280:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfeb290 <_start-0x14d70>
1c00b284:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c00b288:	55493600 	bl	-134133452(0x8014934) # 1401fbbc <_start-0x7fe0444>
1c00b28c:	00005022 	bitrev.w	$r2,$r1
1c00b290:	00000305 	0x00000305
1c00b294:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c00b298:	00000041 	0x00000041
1c00b29c:	001c2241 	mul.w	$r1,$r18,$r8
1c00b2a0:	3e081400 	0x3e081400
1c00b2a4:	08001408 	0x08001408
1c00b2a8:	08083e08 	0x08083e08
1c00b2ac:	a0000000 	0xa0000000
1c00b2b0:	08000060 	0x08000060
1c00b2b4:	08080808 	0x08080808
1c00b2b8:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c0112b8 <_sidata+0x5150>
1c00b2bc:	20000000 	ll.w	$r0,$r0,0
1c00b2c0:	02040810 	slti	$r16,$r0,258(0x102)
1c00b2c4:	49513e00 	0x49513e00
1c00b2c8:	00003e45 	revb.d	$r5,$r18
1c00b2cc:	00407f42 	0x00407f42
1c00b2d0:	51614200 	b	-134127296(0x8016140) # 14021410 <_start-0x7fdebf0>
1c00b2d4:	21004649 	sc.w	$r9,$r18,68(0x44)
1c00b2d8:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c00b2dc:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c00b2e0:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c00b2e4:	39454545 	0x39454545
1c00b2e8:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01fd24 <_sidata+0x13bbc>
1c00b2ec:	01003049 	0x01003049
1c00b2f0:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c00b2f4:	49493600 	0x49493600
1c00b2f8:	06003649 	cacop	0x9,$r18,13(0xd)
1c00b2fc:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c00b300:	36360000 	0x36360000
1c00b304:	00000000 	0x00000000
1c00b308:	00003656 	revb.4h	$r22,$r18
1c00b30c:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c00b310:	14000041 	lu12i.w	$r1,2(0x2)
1c00b314:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c00b318:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c00b31c:	02000814 	slti	$r20,$r0,2(0x2)
1c00b320:	06095101 	cacop	0x1,$r8,596(0x254)
1c00b324:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01fc54 <_sidata+0x13aec>
1c00b328:	7c003e51 	0x7c003e51
1c00b32c:	7c121112 	0x7c121112
1c00b330:	49497f00 	0x49497f00
1c00b334:	3e003649 	0x3e003649
1c00b338:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c00b33c:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01f4b8 <_sidata+0x13350>
1c00b340:	7f001c22 	0x7f001c22
1c00b344:	41494949 	beqz	$r10,2443592(0x254948) # 1c25fc8c <_sidata+0x253b24>
1c00b348:	09097f00 	0x09097f00
1c00b34c:	3e000109 	0x3e000109
1c00b350:	7a494941 	0x7a494941
1c00b354:	08087f00 	0x08087f00
1c00b358:	00007f08 	0x00007f08
1c00b35c:	00417f41 	slli.d	$r1,$r26,0x1f
1c00b360:	41402000 	beqz	$r0,81952(0x14020) # 1c01f380 <_sidata+0x13218>
1c00b364:	7f00013f 	0x7f00013f
1c00b368:	41221408 	beqz	$r0,2171412(0x212214) # 1c21d57c <_sidata+0x211414>
1c00b36c:	40407f00 	beqz	$r24,16508(0x407c) # 1c00f3e8 <_sidata+0x3280>
1c00b370:	7f004040 	0x7f004040
1c00b374:	7f020c02 	0x7f020c02
1c00b378:	08047f00 	0x08047f00
1c00b37c:	3e007f10 	0x3e007f10
1c00b380:	3e414141 	0x3e414141
1c00b384:	09097f00 	0x09097f00
1c00b388:	3e000609 	0x3e000609
1c00b38c:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfed4dc <_start-0x12b24>
1c00b390:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c00b394:	46004629 	bnez	$r17,2490436(0x260044) # 1c26b3d8 <_sidata+0x25f270>
1c00b398:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c00b39c:	7f010100 	0x7f010100
1c00b3a0:	3f000101 	0x3f000101
1c00b3a4:	3f404040 	0x3f404040
1c00b3a8:	40201f00 	beqz	$r24,8220(0x201c) # 1c00d3c4 <_sidata+0x125c>
1c00b3ac:	3f001f20 	0x3f001f20
1c00b3b0:	3f403840 	0x3f403840
1c00b3b4:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c00b3b8:	07006314 	0x07006314
1c00b3bc:	07087008 	0x07087008
1c00b3c0:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c020520 <_sidata+0x143b8>
1c00b3c4:	00004345 	revh.2w	$r5,$r26
1c00b3c8:	0041417f 	slli.d	$r31,$r11,0x10
1c00b3cc:	552a5500 	bl	67185236(0x4012a54) # 2001de20 <_sidata+0x4011cb8>
1c00b3d0:	0000552a 	bitrev.d	$r10,$r9
1c00b3d4:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c00b3d8:	01020400 	0x01020400
1c00b3dc:	40000402 	beqz	$r0,524292(0x80004) # 1c08b3e0 <_sidata+0x7f278>
1c00b3e0:	40404040 	beqz	$r2,16448(0x4040) # 1c00f420 <_sidata+0x32b8>
1c00b3e4:	02010000 	slti	$r0,$r0,64(0x40)
1c00b3e8:	20000004 	ll.w	$r4,$r0,0
1c00b3ec:	78545454 	0x78545454
1c00b3f0:	44487f00 	bnez	$r24,18556(0x487c) # 1c00fc6c <_sidata+0x3b04>
1c00b3f4:	38003844 	ldx.b	$r4,$r2,$r14
1c00b3f8:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c00b3fc:	44443800 	bnez	$r0,17464(0x4438) # 1c00f834 <_sidata+0x36cc>
1c00b400:	38007f48 	ldx.b	$r8,$r26,$r31
1c00b404:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c00b408:	097e0800 	0x097e0800
1c00b40c:	18000201 	pcaddi	$r1,16(0x10)
1c00b410:	7ca4a4a4 	0x7ca4a4a4
1c00b414:	04087f00 	csrxchg	$r0,$r24,0x21f
1c00b418:	00007804 	0x00007804
1c00b41c:	00407d44 	0x00407d44
1c00b420:	84804000 	0x84804000
1c00b424:	7f00007d 	0x7f00007d
1c00b428:	00442810 	0x00442810
1c00b42c:	7f410000 	0x7f410000
1c00b430:	7c000040 	0x7c000040
1c00b434:	78041804 	0x78041804
1c00b438:	04087c00 	csrrd	$r0,0x21f
1c00b43c:	38007804 	ldx.b	$r4,$r0,$r30
1c00b440:	38444444 	vstx	$vr4,$r2,$r17
1c00b444:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c00b448:	18001824 	pcaddi	$r4,193(0xc1)
1c00b44c:	fc182424 	0xfc182424
1c00b450:	04087c00 	csrrd	$r0,0x21f
1c00b454:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c10b45c <_sidata+0xff2f4>
1c00b458:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c00b45c:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00f360 <_sidata+0x31f8>
1c00b460:	3c002040 	0x3c002040
1c00b464:	7c204040 	0x7c204040
1c00b468:	40201c00 	beqz	$r0,8220(0x201c) # 1c00d484 <_sidata+0x131c>
1c00b46c:	3c001c20 	0x3c001c20
1c00b470:	3c403040 	0x3c403040
1c00b474:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c00b478:	1c004428 	pcaddu12i	$r8,545(0x221)
1c00b47c:	7ca0a0a0 	0x7ca0a0a0
1c00b480:	54644400 	bl	25668(0x6444) # 1c0118c4 <_sidata+0x575c>
1c00b484:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c00b488:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c00b48c <F8X16>:
	...
1c00b49c:	f8000000 	0xf8000000
1c00b4a0:	00000000 	0x00000000
1c00b4a4:	33000000 	0x33000000
1c00b4a8:	00000030 	0x00000030
1c00b4ac:	060c1000 	cacop	0x0,$r0,772(0x304)
1c00b4b0:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c00b4bc:	4078c040 	beqz	$r2,30912(0x78c0) # 1c012d7c <_sidata+0x6c14>
1c00b4c0:	004078c0 	0x004078c0
1c00b4c4:	04043f04 	csrxchg	$r4,$r24,0x10f
1c00b4c8:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c00b4cc:	fc887000 	0xfc887000
1c00b4d0:	00003008 	revb.2h	$r8,$r0
1c00b4d4:	ff201800 	0xff201800
1c00b4d8:	00001e21 	ctz.w	$r1,$r17
1c00b4dc:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c00b4e0:	000018e0 	cto.w	$r0,$r7
1c00b4e4:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c00b4e8:	001e211e 	mulh.d	$r30,$r8,$r8
1c00b4ec:	8808f000 	0x8808f000
1c00b4f0:	00000070 	0x00000070
1c00b4f4:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c00b4f8:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c00b4fc:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c00b50c:	e0000000 	0xe0000000
1c00b510:	00020418 	0x00020418
1c00b514:	07000000 	0x07000000
1c00b518:	00402018 	0x00402018
1c00b51c:	18040200 	pcaddi	$r0,8208(0x2010)
1c00b520:	000000e0 	0x000000e0
1c00b524:	18204000 	pcaddi	$r0,66048(0x10200)
1c00b528:	00000007 	0x00000007
1c00b52c:	f0804040 	0xf0804040
1c00b530:	00404080 	0x00404080
1c00b534:	0f010202 	0x0f010202
1c00b538:	00020201 	0x00020201
1c00b53c:	f0000000 	0xf0000000
1c00b540:	00000000 	0x00000000
1c00b544:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c00b548:	00010101 	0x00010101
	...
1c00b554:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c00b564:	01010100 	fadd.d	$f0,$f8,$f0
1c00b568:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c00b574:	00303000 	0x00303000
	...
1c00b580:	04186080 	csrxchg	$r0,$r4,0x618
1c00b584:	06186000 	cacop	0x0,$r0,1560(0x618)
1c00b588:	00000001 	0x00000001
1c00b58c:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00b590:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b594:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c00b598:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b59c:	f8101000 	0xf8101000
1c00b5a0:	00000000 	0x00000000
1c00b5a4:	3f202000 	0x3f202000
1c00b5a8:	00002020 	clo.d	$r0,$r1
1c00b5ac:	08087000 	0x08087000
1c00b5b0:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00b5b4:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00b5b8:	00302122 	0x00302122
1c00b5bc:	88083000 	0x88083000
1c00b5c0:	00304888 	0x00304888
1c00b5c4:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00b5c8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b5cc:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c00b5d0:	0000f810 	0x0000f810
1c00b5d4:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c00b5d8:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c00b5dc:	8808f800 	0x8808f800
1c00b5e0:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c00b5e4:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c00b5e8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b5ec:	8810e000 	0x8810e000
1c00b5f0:	00001888 	cto.w	$r8,$r4
1c00b5f4:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00b5f8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b5fc:	08083800 	0x08083800
1c00b600:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b604:	3f000000 	0x3f000000
1c00b608:	00000000 	0x00000000
1c00b60c:	08887000 	0x08887000
1c00b610:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00b614:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00b618:	001c2221 	mul.w	$r1,$r17,$r8
1c00b61c:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00b620:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b624:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c00b628:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c00b62c:	c0000000 	0xc0000000
1c00b630:	000000c0 	0x000000c0
1c00b634:	30000000 	0x30000000
1c00b638:	00000030 	0x00000030
1c00b63c:	80000000 	0x80000000
1c00b640:	00000000 	0x00000000
1c00b644:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c013644 <_sidata+0x74dc>
1c00b648:	00000000 	0x00000000
1c00b64c:	40800000 	beqz	$r0,32768(0x8000) # 1c01364c <_sidata+0x74e4>
1c00b650:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00b654:	04020100 	csrxchg	$r0,$r8,0x80
1c00b658:	00201008 	div.w	$r8,$r0,$r4
1c00b65c:	40404040 	beqz	$r2,16448(0x4040) # 1c00f69c <_sidata+0x3534>
1c00b660:	00404040 	0x00404040
1c00b664:	04040404 	csrrd	$r4,0x101
1c00b668:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c00b66c:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00b670:	00008040 	0x00008040
1c00b674:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c00b678:	00010204 	0x00010204
1c00b67c:	08487000 	0x08487000
1c00b680:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00b684:	30000000 	0x30000000
1c00b688:	00000136 	0x00000136
1c00b68c:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00b690:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00b694:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c00b698:	000b1423 	0x000b1423
1c00b69c:	38c00000 	0x38c00000
1c00b6a0:	000000e0 	0x000000e0
1c00b6a4:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c00b6a8:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00b6ac:	8888f808 	0x8888f808
1c00b6b0:	00007088 	0x00007088
1c00b6b4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b6b8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b6bc:	080830c0 	0x080830c0
1c00b6c0:	00380808 	0x00380808
1c00b6c4:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00b6c8:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00b6cc:	0808f808 	0x0808f808
1c00b6d0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b6d4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b6d8:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b6dc:	8888f808 	0x8888f808
1c00b6e0:	001008e8 	add.w	$r8,$r7,$r2
1c00b6e4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b6e8:	00182023 	sra.w	$r3,$r1,$r8
1c00b6ec:	8888f808 	0x8888f808
1c00b6f0:	001008e8 	add.w	$r8,$r7,$r2
1c00b6f4:	00203f20 	div.w	$r0,$r25,$r15
1c00b6f8:	00000003 	0x00000003
1c00b6fc:	080830c0 	0x080830c0
1c00b700:	00003808 	revb.2w	$r8,$r0
1c00b704:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00b708:	00021e22 	0x00021e22
1c00b70c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b710:	08f80800 	0x08f80800
1c00b714:	01213f20 	0x01213f20
1c00b718:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c00b71c:	f8080800 	0xf8080800
1c00b720:	00000808 	0x00000808
1c00b724:	3f202000 	0x3f202000
1c00b728:	00002020 	clo.d	$r0,$r1
1c00b72c:	08080000 	0x08080000
1c00b730:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00b734:	808080c0 	0x808080c0
1c00b738:	0000007f 	0x0000007f
1c00b73c:	c088f808 	0xc088f808
1c00b740:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00b744:	01203f20 	0x01203f20
1c00b748:	00203826 	div.w	$r6,$r1,$r14
1c00b74c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b750:	00000000 	0x00000000
1c00b754:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b758:	00302020 	0x00302020
1c00b75c:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00b760:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00b764:	3f003f20 	0x3f003f20
1c00b768:	00203f00 	div.w	$r0,$r24,$r15
1c00b76c:	c030f808 	0xc030f808
1c00b770:	08f80800 	0x08f80800
1c00b774:	00203f20 	div.w	$r0,$r25,$r15
1c00b778:	003f1807 	0x003f1807
1c00b77c:	080810e0 	0x080810e0
1c00b780:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b784:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c00b788:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b78c:	0808f808 	0x0808f808
1c00b790:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00b794:	01213f20 	0x01213f20
1c00b798:	00000101 	0x00000101
1c00b79c:	080810e0 	0x080810e0
1c00b7a0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b7a4:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c00b7a8:	004f5038 	0x004f5038
1c00b7ac:	8888f808 	0x8888f808
1c00b7b0:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00b7b4:	00203f20 	div.w	$r0,$r25,$r15
1c00b7b8:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00b7bc:	08887000 	0x08887000
1c00b7c0:	00380808 	0x00380808
1c00b7c4:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c00b7c8:	001c2221 	mul.w	$r1,$r17,$r8
1c00b7cc:	f8080818 	0xf8080818
1c00b7d0:	00180808 	sra.w	$r8,$r0,$r2
1c00b7d4:	3f200000 	0x3f200000
1c00b7d8:	00000020 	0x00000020
1c00b7dc:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b7e0:	08f80800 	0x08f80800
1c00b7e4:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b7e8:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00b7ec:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00b7f0:	0838c800 	0x0838c800
1c00b7f4:	38070000 	0x38070000
1c00b7f8:	0000010e 	0x0000010e
1c00b7fc:	f80008f8 	0xf80008f8
1c00b800:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c00b804:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c00b808:	00033c07 	0x00033c07
1c00b80c:	80681808 	0x80681808
1c00b810:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00b814:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c00b818:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c00b81c:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c00b820:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b824:	3f200000 	0x3f200000
1c00b828:	00000020 	0x00000020
1c00b82c:	08080810 	0x08080810
1c00b830:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b834:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c00b838:	00182020 	sra.w	$r0,$r1,$r8
1c00b83c:	fe000000 	0xfe000000
1c00b840:	00020202 	0x00020202
1c00b844:	7f000000 	0x7f000000
1c00b848:	00404040 	0x00404040
1c00b84c:	c0300c00 	0xc0300c00
1c00b850:	00000000 	0x00000000
1c00b854:	01000000 	0x01000000
1c00b858:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c00b85c:	02020200 	slti	$r0,$r16,128(0x80)
1c00b860:	000000fe 	0x000000fe
1c00b864:	40404000 	beqz	$r0,16448(0x4040) # 1c00f8a4 <_sidata+0x373c>
1c00b868:	0000007f 	0x0000007f
1c00b86c:	02040000 	slti	$r0,$r0,256(0x100)
1c00b870:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c00b884:	80808080 	0x80808080
1c00b888:	80808080 	0x80808080
1c00b88c:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c00b89c:	80800000 	0x80800000
1c00b8a0:	00008080 	0x00008080
1c00b8a4:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c00b8a8:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c00b8ac:	8000f808 	0x8000f808
1c00b8b0:	00000080 	0x00000080
1c00b8b4:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00b8b8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b8bc:	80000000 	0x80000000
1c00b8c0:	00008080 	0x00008080
1c00b8c4:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b8c8:	00112020 	sub.w	$r0,$r1,$r8
1c00b8cc:	80000000 	0x80000000
1c00b8d0:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c00b8d4:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b8d8:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b8dc:	80800000 	0x80800000
1c00b8e0:	00008080 	0x00008080
1c00b8e4:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c00b8e8:	00132222 	maskeqz	$r2,$r17,$r8
1c00b8ec:	f0808000 	0xf0808000
1c00b8f0:	18888888 	pcaddi	$r8,279620(0x44444)
1c00b8f4:	3f202000 	0x3f202000
1c00b8f8:	00002020 	clo.d	$r0,$r1
1c00b8fc:	80800000 	0x80800000
1c00b900:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b904:	94946b00 	0x94946b00
1c00b908:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c00b90c:	8000f808 	0x8000f808
1c00b910:	00008080 	0x00008080
1c00b914:	00213f20 	div.wu	$r0,$r25,$r15
1c00b918:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00b91c:	98988000 	0x98988000
1c00b920:	00000000 	0x00000000
1c00b924:	3f202000 	0x3f202000
1c00b928:	00002020 	clo.d	$r0,$r1
1c00b92c:	80000000 	0x80000000
1c00b930:	00009898 	0x00009898
1c00b934:	8080c000 	0x8080c000
1c00b938:	00007f80 	0x00007f80
1c00b93c:	0000f808 	0x0000f808
1c00b940:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b944:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c00b948:	0020302d 	div.w	$r13,$r1,$r12
1c00b94c:	f8080800 	0xf8080800
1c00b950:	00000000 	0x00000000
1c00b954:	3f202000 	0x3f202000
1c00b958:	00002020 	clo.d	$r0,$r1
1c00b95c:	80808080 	0x80808080
1c00b960:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b964:	00203f20 	div.w	$r0,$r25,$r15
1c00b968:	3f00203f 	0x3f00203f
1c00b96c:	80008080 	0x80008080
1c00b970:	00008080 	0x00008080
1c00b974:	00213f20 	div.wu	$r0,$r25,$r15
1c00b978:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00b97c:	80800000 	0x80800000
1c00b980:	00008080 	0x00008080
1c00b984:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b988:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00b98c:	80008080 	0x80008080
1c00b990:	00000080 	0x00000080
1c00b994:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c00b998:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b99c:	80000000 	0x80000000
1c00b9a0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b9a4:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b9a8:	80ffa020 	0x80ffa020
1c00b9ac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b9b0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b9b4:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00b9b8:	00010020 	asrtle.d	$r1,$r0
1c00b9bc:	80800000 	0x80800000
1c00b9c0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b9c4:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00b9c8:	00192424 	srl.d	$r4,$r1,$r9
1c00b9cc:	e0808000 	0xe0808000
1c00b9d0:	00008080 	0x00008080
1c00b9d4:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00b9d8:	00002020 	clo.d	$r0,$r1
1c00b9dc:	00008080 	0x00008080
1c00b9e0:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b9e4:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b9e8:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b9ec:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b9f0:	80808000 	0x80808000
1c00b9f4:	300e0100 	0x300e0100
1c00b9f8:	00010608 	0x00010608
1c00b9fc:	80008080 	0x80008080
1c00ba00:	80808000 	0x80808000
1c00ba04:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c00ba08:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c00ba0c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00ba10:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00ba14:	2e312000 	0x2e312000
1c00ba18:	0020310e 	div.w	$r14,$r8,$r12
1c00ba1c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00ba20:	80808000 	0x80808000
1c00ba24:	708e8180 	0x708e8180
1c00ba28:	00010618 	0x00010618
1c00ba2c:	80808000 	0x80808000
1c00ba30:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00ba34:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00ba38:	00302122 	0x00302122
1c00ba3c:	00000000 	0x00000000
1c00ba40:	02027c80 	slti	$r0,$r4,159(0x9f)
1c00ba44:	00000000 	0x00000000
1c00ba48:	40403f00 	beqz	$r24,16444(0x403c) # 1c00fa84 <_sidata+0x391c>
1c00ba4c:	00000000 	0x00000000
1c00ba50:	000000ff 	0x000000ff
1c00ba54:	00000000 	0x00000000
1c00ba58:	000000ff 	0x000000ff
1c00ba5c:	7c020200 	0x7c020200
1c00ba60:	00000080 	0x00000080
1c00ba64:	3f404000 	0x3f404000
1c00ba68:	00000000 	0x00000000
1c00ba6c:	01010600 	fadd.d	$f0,$f16,$f1
1c00ba70:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c00ba7c <gImage_cc>:
	...
1c00bac8:	c0c08080 	0xc0c08080
1c00bacc:	80c0c0c0 	0x80c0c0c0
1c00bad0:	00000080 	0x00000080
	...
1c00baf8:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c00bafc:	01000101 	0x01000101
1c00bb00:	ff070301 	0xff070301
1c00bb04:	0000f0fe 	0x0000f0fe
	...
1c00bb24:	fe000000 	0xfe000000
1c00bb28:	ffffffff 	0xffffffff
1c00bb2c:	0f9fffff 	0x0f9fffff
1c00bb30:	ff9f0f0f 	0xff9f0f0f
1c00bb34:	ffffffff 	0xffffffff
1c00bb38:	0000feff 	0x0000feff
	...
1c00bb58:	3f1f0700 	0x3f1f0700
1c00bb5c:	ffff7f7f 	0xffff7f7f
1c00bb60:	f8f8ffff 	0xf8f8ffff
1c00bb64:	7fffffff 	0x7fffffff
1c00bb68:	071f3f7f 	0x071f3f7f
	...
1c00bbe0:	1c0083d4 	pcaddu12i	$r20,1054(0x41e)
1c00bbe4:	1c007734 	pcaddu12i	$r20,953(0x3b9)
1c00bbe8:	1c0077cc 	pcaddu12i	$r12,958(0x3be)
1c00bbec:	1c0078d4 	pcaddu12i	$r20,966(0x3c6)
1c00bbf0:	1c007938 	pcaddu12i	$r24,969(0x3c9)
1c00bbf4:	1c00799c 	pcaddu12i	$r28,972(0x3cc)
1c00bbf8:	1c007aa4 	pcaddu12i	$r4,981(0x3d5)
1c00bbfc:	1c007bac 	pcaddu12i	$r12,989(0x3dd)
1c00bc00:	1c007cb4 	pcaddu12i	$r20,997(0x3e5)
1c00bc04:	1c007d18 	pcaddu12i	$r24,1000(0x3e8)
1c00bc08:	1c007d7c 	pcaddu12i	$r28,1003(0x3eb)
1c00bc0c:	1c007de0 	pcaddu12i	$r0,1007(0x3ef)
1c00bc10:	1c007eb0 	pcaddu12i	$r16,1013(0x3f5)
1c00bc14:	1c007f14 	pcaddu12i	$r20,1016(0x3f8)
1c00bc18:	1c007fe4 	pcaddu12i	$r4,1023(0x3ff)
1c00bc1c:	1c008048 	pcaddu12i	$r8,1026(0x402)
1c00bc20:	1c0080c0 	pcaddu12i	$r0,1030(0x406)
1c00bc24:	1c0081c8 	pcaddu12i	$r8,1038(0x40e)
1c00bc28:	1c008240 	pcaddu12i	$r0,1042(0x412)
1c00bc2c:	1c008310 	pcaddu12i	$r16,1048(0x418)
1c00bc30:	00002e31 	ctz.d	$r17,$r17
1c00bc34:	00002e32 	ctz.d	$r18,$r17
1c00bc38:	00002e33 	ctz.d	$r19,$r17
1c00bc3c:	0000002a 	0x0000002a
1c00bc40:	00000020 	0x00000020
1c00bc44:	1c008d10 	pcaddu12i	$r16,1128(0x468)
1c00bc48:	1c0084b0 	pcaddu12i	$r16,1061(0x425)
1c00bc4c:	1c008514 	pcaddu12i	$r20,1064(0x428)
1c00bc50:	1c0085c8 	pcaddu12i	$r8,1070(0x42e)
1c00bc54:	1c0086b4 	pcaddu12i	$r20,1077(0x435)
1c00bc58:	1c008708 	pcaddu12i	$r8,1080(0x438)
1c00bc5c:	1c008738 	pcaddu12i	$r24,1081(0x439)
1c00bc60:	1c008768 	pcaddu12i	$r8,1083(0x43b)
1c00bc64:	1c0087c0 	pcaddu12i	$r0,1086(0x43e)
1c00bc68:	1c0087fc 	pcaddu12i	$r28,1087(0x43f)
1c00bc6c:	1c008818 	pcaddu12i	$r24,1088(0x440)
1c00bc70:	1c0088f8 	pcaddu12i	$r24,1095(0x447)
1c00bc74:	1c0089e4 	pcaddu12i	$r4,1103(0x44f)
1c00bc78:	1c008a10 	pcaddu12i	$r16,1104(0x450)
1c00bc7c:	1c008a40 	pcaddu12i	$r0,1106(0x452)
1c00bc80:	1c008a6c 	pcaddu12i	$r12,1107(0x453)
1c00bc84:	1c008aa8 	pcaddu12i	$r8,1109(0x455)
1c00bc88:	1c008b04 	pcaddu12i	$r4,1112(0x458)
1c00bc8c:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c00bc90:	1c008b94 	pcaddu12i	$r20,1116(0x45c)
1c00bc94:	1c008c80 	pcaddu12i	$r0,1124(0x464)
1c00bc98:	1c008ce0 	pcaddu12i	$r0,1127(0x467)
1c00bc9c:	3c200a0d 	0x3c200a0d
1c00bca0:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c0228c0 <_sidata+0x16758>
1c00bca4:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c00bca8:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfedd0c <_start-0x122f4>
1c00bcac:	3a636e75 	0x3a636e75
1c00bcb0:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00bcb4:	0a0d3e20 	0x0a0d3e20
1c00bcb8:	00000000 	0x00000000
1c00bcbc:	2e2e2e0a 	0x2e2e2e0a
1c00bcc0:	2e2e2e2e 	0x2e2e2e2e
1c00bcc4:	2e2e2e2e 	0x2e2e2e2e
1c00bcc8:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c00bccc:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c1a1c20 <_sidata+0x195ab8>
1c00bcd0:	2e2e544e 	0x2e2e544e
1c00bcd4:	2e2e2e2e 	0x2e2e2e2e
1c00bcd8:	2e2e2e2e 	0x2e2e2e2e
1c00bcdc:	2e2e2e2e 	0x2e2e2e2e
1c00bce0:	00000d0a 	0x00000d0a
1c00bce4:	2d2d2d0a 	0x2d2d2d0a
1c00bce8:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c003254 <Add_FR+0x584>
1c00bcec:	746e4968 	0x746e4968
1c00bcf0:	79654b3a 	0x79654b3a
1c00bcf4:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bff1e5c <_start-0xe1a4>
1c00bcf8:	3a6c656e 	0x3a6c656e
1c00bcfc:	78257830 	0x78257830
1c00bd00:	0000000a 	0x0000000a
1c00bd04:	2e2e2e0a 	0x2e2e2e0a
1c00bd08:	2e2e2e2e 	0x2e2e2e2e
1c00bd0c:	2e2e2e2e 	0x2e2e2e2e
1c00bd10:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ff3c <_sidata+0x393dd4>
1c00bd14:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd20370 <_start-0x2dfc90>
1c00bd18:	2e2e4c49 	0x2e2e4c49
1c00bd1c:	2e2e2e2e 	0x2e2e2e2e
1c00bd20:	2e2e2e2e 	0x2e2e2e2e
1c00bd24:	2e2e2e2e 	0x2e2e2e2e
1c00bd28:	00000d0a 	0x00000d0a
1c00bd2c:	2e2e2e0a 	0x2e2e2e0a
1c00bd30:	2e2e2e2e 	0x2e2e2e2e
1c00bd34:	2e2e2e2e 	0x2e2e2e2e
1c00bd38:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38fe64 <_sidata+0x383cfc>
1c00bd3c:	2e2e2e43 	0x2e2e2e43
1c00bd40:	2e2e2e2e 	0x2e2e2e2e
1c00bd44:	2e2e2e2e 	0x2e2e2e2e
1c00bd48:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00bd4c:	0000000d 	0x0000000d
1c00bd50:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c022fb4 <_sidata+0x16e4c>
1c00bd54:	72656870 	0x72656870
1c00bd58:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c00bd5c:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c022ac4 <_sidata+0x1695c>
1c00bd60:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c012080 <_sidata+0x5f18>
1c00bd64:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00bd68:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c0231d4 <_sidata+0x1706c>
1c00bd6c:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00bd70:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c00bd74:	00000000 	0x00000000
1c00bd78:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c022fe4 <_sidata+0x16e7c>
1c00bd7c:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c0226d0 <_sidata+0x16568>
1c00bd80:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffddf0 <_start-0x2210>
1c00bd84:	7261656c 	0x7261656c
1c00bd88:	746e6920 	0x746e6920
1c00bd8c:	75727265 	0x75727265
1c00bd90:	2e2e7470 	0x2e2e7470
1c00bd94:	0000000a 	0x0000000a

1c00bd98 <Ext_IrqHandle>:
1c00bd98:	1c00a1e4 	pcaddu12i	$r4,1295(0x50f)
1c00bd9c:	1c00a230 	pcaddu12i	$r16,1297(0x511)
1c00bda0:	1c00a27c 	pcaddu12i	$r28,1299(0x513)
1c00bda4:	1c00a2c8 	pcaddu12i	$r8,1302(0x516)
1c00bda8:	1c00a314 	pcaddu12i	$r20,1304(0x518)
1c00bdac:	1c00a360 	pcaddu12i	$r0,1307(0x51b)
1c00bdb0:	1c00a3ac 	pcaddu12i	$r12,1309(0x51d)
1c00bdb4:	1c00a3f8 	pcaddu12i	$r24,1311(0x51f)
1c00bdb8:	1c00a444 	pcaddu12i	$r4,1314(0x522)
1c00bdbc:	1c00a490 	pcaddu12i	$r16,1316(0x524)
1c00bdc0:	1c00a4dc 	pcaddu12i	$r28,1318(0x526)
1c00bdc4:	1c00a528 	pcaddu12i	$r8,1321(0x529)
1c00bdc8:	1c00a574 	pcaddu12i	$r20,1323(0x52b)
1c00bdcc:	1c00a5c0 	pcaddu12i	$r0,1326(0x52e)
1c00bdd0:	1c00a60c 	pcaddu12i	$r12,1328(0x530)
1c00bdd4:	1c00a658 	pcaddu12i	$r24,1330(0x532)
1c00bdd8:	1c00a6a4 	pcaddu12i	$r4,1333(0x535)
1c00bddc:	1c00a6f0 	pcaddu12i	$r16,1335(0x537)
1c00bde0:	1c00a73c 	pcaddu12i	$r28,1337(0x539)
1c00bde4:	1c00a788 	pcaddu12i	$r8,1340(0x53c)
1c00bde8:	1c00a7d4 	pcaddu12i	$r20,1342(0x53e)
1c00bdec:	1c00a820 	pcaddu12i	$r0,1345(0x541)
1c00bdf0:	1c00a86c 	pcaddu12i	$r12,1347(0x543)
1c00bdf4:	1c00a8b8 	pcaddu12i	$r24,1349(0x545)
1c00bdf8:	1c00a904 	pcaddu12i	$r4,1352(0x548)
1c00bdfc:	1c00a950 	pcaddu12i	$r16,1354(0x54a)
1c00be00:	1c00a99c 	pcaddu12i	$r28,1356(0x54c)
1c00be04:	1c00a9e8 	pcaddu12i	$r8,1359(0x54f)
1c00be08:	1c00aa34 	pcaddu12i	$r20,1361(0x551)
1c00be0c:	1c00aa80 	pcaddu12i	$r0,1364(0x554)
1c00be10:	1c00aacc 	pcaddu12i	$r12,1366(0x556)
1c00be14:	1c00ab18 	pcaddu12i	$r24,1368(0x558)
1c00be18:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be1c:	1c00adb4 	pcaddu12i	$r20,1389(0x56d)
1c00be20:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be24:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be28:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be2c:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be30:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be34:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be38:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be3c:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be40:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be44:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be48:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be4c:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be50:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be54:	1c00ae04 	pcaddu12i	$r4,1392(0x570)
1c00be58:	1c00add0 	pcaddu12i	$r16,1390(0x56e)

1c00be5c <__FUNCTION__.1751>:
1c00be5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232d4 <_sidata+0x1716c>
1c00be60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ec4 <_sidata+0x16d5c>
1c00be64:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffeec4 <_start-0x113c>
1c00be68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fd8 <Add_FR+0x308>
1c00be6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ccc <_sidata+0x6b64>
1c00be70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be74 <__FUNCTION__.1755>:
1c00be74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232ec <_sidata+0x17184>
1c00be78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022edc <_sidata+0x16d74>
1c00be7c:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffefdc <_start-0x1024>
1c00be80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002ff0 <Add_FR+0x320>
1c00be84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ce4 <_sidata+0x6b7c>
1c00be88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be8c <__FUNCTION__.1759>:
1c00be8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023304 <_sidata+0x1719c>
1c00be90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ef4 <_sidata+0x16d8c>
1c00be94:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bfff0f4 <_start-0xf0c>
1c00be98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003008 <Add_FR+0x338>
1c00be9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cfc <_sidata+0x6b94>
1c00bea0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bea4 <__FUNCTION__.1763>:
1c00bea4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02331c <_sidata+0x171b4>
1c00bea8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f0c <_sidata+0x16da4>
1c00beac:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bfff20c <_start-0xdf4>
1c00beb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003020 <Add_FR+0x350>
1c00beb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d14 <_sidata+0x6bac>
1c00beb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bebc <__FUNCTION__.1767>:
1c00bebc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023334 <_sidata+0x171cc>
1c00bec0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f24 <_sidata+0x16dbc>
1c00bec4:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bfff324 <_start-0xcdc>
1c00bec8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003038 <Add_FR+0x368>
1c00becc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d2c <_sidata+0x6bc4>
1c00bed0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bed4 <__FUNCTION__.1771>:
1c00bed4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02334c <_sidata+0x171e4>
1c00bed8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f3c <_sidata+0x16dd4>
1c00bedc:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bfff43c <_start-0xbc4>
1c00bee0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003050 <Add_FR+0x380>
1c00bee4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d44 <_sidata+0x6bdc>
1c00bee8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00beec <__FUNCTION__.1775>:
1c00beec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023364 <_sidata+0x171fc>
1c00bef0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f54 <_sidata+0x16dec>
1c00bef4:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bfff554 <_start-0xaac>
1c00bef8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003068 <Add_FR+0x398>
1c00befc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d5c <_sidata+0x6bf4>
1c00bf00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf04 <__FUNCTION__.1779>:
1c00bf04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02337c <_sidata+0x17214>
1c00bf08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f6c <_sidata+0x16e04>
1c00bf0c:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bfff66c <_start-0x994>
1c00bf10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003080 <Add_FR+0x3b0>
1c00bf14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d74 <_sidata+0x6c0c>
1c00bf18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf1c <__FUNCTION__.1783>:
1c00bf1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023394 <_sidata+0x1722c>
1c00bf20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f84 <_sidata+0x16e1c>
1c00bf24:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffef84 <_start-0x107c>
1c00bf28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003098 <Add_FR+0x3c8>
1c00bf2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d8c <_sidata+0x6c24>
1c00bf30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf34 <__FUNCTION__.1787>:
1c00bf34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233ac <_sidata+0x17244>
1c00bf38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f9c <_sidata+0x16e34>
1c00bf3c:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bfff09c <_start-0xf64>
1c00bf40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030b0 <Add_FR+0x3e0>
1c00bf44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012da4 <_sidata+0x6c3c>
1c00bf48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf4c <__FUNCTION__.1791>:
1c00bf4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233c4 <_sidata+0x1725c>
1c00bf50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fb4 <_sidata+0x16e4c>
1c00bf54:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bfff1b4 <_start-0xe4c>
1c00bf58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030c8 <Add_FR+0x3f8>
1c00bf5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dbc <_sidata+0x6c54>
1c00bf60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf64 <__FUNCTION__.1795>:
1c00bf64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233dc <_sidata+0x17274>
1c00bf68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fcc <_sidata+0x16e64>
1c00bf6c:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bfff2cc <_start-0xd34>
1c00bf70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030e0 <Add_FR+0x410>
1c00bf74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dd4 <_sidata+0x6c6c>
1c00bf78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf7c <__FUNCTION__.1799>:
1c00bf7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233f4 <_sidata+0x1728c>
1c00bf80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fe4 <_sidata+0x16e7c>
1c00bf84:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bfff3e4 <_start-0xc1c>
1c00bf88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030f8 <Add_FR+0x428>
1c00bf8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dec <_sidata+0x6c84>
1c00bf90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf94 <__FUNCTION__.1803>:
1c00bf94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02340c <_sidata+0x172a4>
1c00bf98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ffc <_sidata+0x16e94>
1c00bf9c:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bfff4fc <_start-0xb04>
1c00bfa0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003110 <Add_FR+0x440>
1c00bfa4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e04 <_sidata+0x6c9c>
1c00bfa8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfac <__FUNCTION__.1807>:
1c00bfac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023424 <_sidata+0x172bc>
1c00bfb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023014 <_sidata+0x16eac>
1c00bfb4:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bfff614 <_start-0x9ec>
1c00bfb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003128 <Add_FR+0x458>
1c00bfbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e1c <_sidata+0x6cb4>
1c00bfc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfc4 <__FUNCTION__.1811>:
1c00bfc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02343c <_sidata+0x172d4>
1c00bfc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02302c <_sidata+0x16ec4>
1c00bfcc:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bfff72c <_start-0x8d4>
1c00bfd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003140 <Add_FR+0x470>
1c00bfd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e34 <_sidata+0x6ccc>
1c00bfd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfdc <__FUNCTION__.1815>:
1c00bfdc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023454 <_sidata+0x172ec>
1c00bfe0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023044 <_sidata+0x16edc>
1c00bfe4:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bfff044 <_start-0xfbc>
1c00bfe8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003158 <Add_FR+0x488>
1c00bfec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e4c <_sidata+0x6ce4>
1c00bff0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bff4 <__FUNCTION__.1819>:
1c00bff4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02346c <_sidata+0x17304>
1c00bff8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02305c <_sidata+0x16ef4>
1c00bffc:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bfff15c <_start-0xea4>
1c00c000:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003170 <Add_FR+0x4a0>
1c00c004:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e64 <_sidata+0x6cfc>
1c00c008:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c00c <__FUNCTION__.1823>:
1c00c00c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023484 <_sidata+0x1731c>
1c00c010:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023074 <_sidata+0x16f0c>
1c00c014:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bfff274 <_start-0xd8c>
1c00c018:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003188 <Add_FR+0x4b8>
1c00c01c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e7c <_sidata+0x6d14>
1c00c020:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c024 <__FUNCTION__.1827>:
1c00c024:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02349c <_sidata+0x17334>
1c00c028:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02308c <_sidata+0x16f24>
1c00c02c:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bfff38c <_start-0xc74>
1c00c030:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031a0 <Add_FR+0x4d0>
1c00c034:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e94 <_sidata+0x6d2c>
1c00c038:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c03c <__FUNCTION__.1831>:
1c00c03c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234b4 <_sidata+0x1734c>
1c00c040:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230a4 <_sidata+0x16f3c>
1c00c044:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bfff4a4 <_start-0xb5c>
1c00c048:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031b8 <Add_FR+0x4e8>
1c00c04c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012eac <_sidata+0x6d44>
1c00c050:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c054 <__FUNCTION__.1835>:
1c00c054:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234cc <_sidata+0x17364>
1c00c058:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230bc <_sidata+0x16f54>
1c00c05c:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bfff5bc <_start-0xa44>
1c00c060:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031d0 <Add_FR+0x500>
1c00c064:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ec4 <_sidata+0x6d5c>
1c00c068:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c06c <__FUNCTION__.1839>:
1c00c06c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234e4 <_sidata+0x1737c>
1c00c070:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230d4 <_sidata+0x16f6c>
1c00c074:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bfff6d4 <_start-0x92c>
1c00c078:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031e8 <Add_FR+0x518>
1c00c07c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012edc <_sidata+0x6d74>
1c00c080:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c084 <__FUNCTION__.1843>:
1c00c084:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234fc <_sidata+0x17394>
1c00c088:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230ec <_sidata+0x16f84>
1c00c08c:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bfff7ec <_start-0x814>
1c00c090:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003200 <Add_FR+0x530>
1c00c094:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ef4 <_sidata+0x6d8c>
1c00c098:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c09c <__FUNCTION__.1847>:
1c00c09c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023514 <_sidata+0x173ac>
1c00c0a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023104 <_sidata+0x16f9c>
1c00c0a4:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bfff108 <_start-0xef8>
1c00c0a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003218 <Add_FR+0x548>
1c00c0ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f0c <_sidata+0x6da4>
1c00c0b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c0b4 <__FUNCTION__.1851>:
1c00c0b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02352c <_sidata+0x173c4>
1c00c0b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02311c <_sidata+0x16fb4>
1c00c0bc:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bfff220 <_start-0xde0>
1c00c0c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003230 <Add_FR+0x560>
1c00c0c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f24 <_sidata+0x6dbc>
1c00c0c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c0cc <__FUNCTION__.1855>:
1c00c0cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023544 <_sidata+0x173dc>
1c00c0d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023134 <_sidata+0x16fcc>
1c00c0d4:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bfff338 <_start-0xcc8>
1c00c0d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003248 <Add_FR+0x578>
1c00c0dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f3c <_sidata+0x6dd4>
1c00c0e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c0e4 <__FUNCTION__.1859>:
1c00c0e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02355c <_sidata+0x173f4>
1c00c0e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02314c <_sidata+0x16fe4>
1c00c0ec:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bfff450 <_start-0xbb0>
1c00c0f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003260 <Add_FR+0x590>
1c00c0f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f54 <_sidata+0x6dec>
1c00c0f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c0fc <__FUNCTION__.1863>:
1c00c0fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023574 <_sidata+0x1740c>
1c00c100:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023164 <_sidata+0x16ffc>
1c00c104:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bfff568 <_start-0xa98>
1c00c108:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003278 <Add_FR+0x5a8>
1c00c10c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f6c <_sidata+0x6e04>
1c00c110:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c114 <__FUNCTION__.1867>:
1c00c114:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02358c <_sidata+0x17424>
1c00c118:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02317c <_sidata+0x17014>
1c00c11c:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bfff680 <_start-0x980>
1c00c120:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003290 <Add_FR+0x5c0>
1c00c124:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f84 <_sidata+0x6e1c>
1c00c128:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c12c <__FUNCTION__.1871>:
1c00c12c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0235a4 <_sidata+0x1743c>
1c00c130:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023194 <_sidata+0x1702c>
1c00c134:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bfff798 <_start-0x868>
1c00c138:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0032a8 <Add_FR+0x5d8>
1c00c13c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012f9c <_sidata+0x6e34>
1c00c140:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c144 <__FUNCTION__.1875>:
1c00c144:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0235bc <_sidata+0x17454>
1c00c148:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0231ac <_sidata+0x17044>
1c00c14c:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bfff8b0 <_start-0x750>
1c00c150:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0032c0 <Add_FR+0x5f0>
1c00c154:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012fb4 <_sidata+0x6e4c>
1c00c158:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c15c <__FUNCTION__.1884>:
1c00c15c:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c0035d4 <press_FR+0x278>
1c00c160:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012fc0 <_sidata+0x6e58>
1c00c164:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

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
800010b4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb358 <_sidata+0x63fdf1f0>
800010b8:	81091121 	0x81091121
800010bc:	00000001 	0x00000001
800010c0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010c4:	7e82420b 	0x7e82420b
800010c8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010cc:	00004623 	revh.d	$r3,$r17
800010d0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbd00 <_sidata+0x63fefb98>
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
800011e4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3526c <_sidata+0x63c29104>
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
80001218:	54547f54 	bl	-45067140(0xd50547c) # 7d506694 <_sidata+0x614fa52c>
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
800012f8:	54547f54 	bl	-45067140(0xd50547c) # 7d506774 <_sidata+0x614fa60c>
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
80001328:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1424 <_sidata+0x63fe52bc>
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
80001404:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09468 <_sidata+0x63bfd300>
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
80001468:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55594 <_sidata+0x63c4942c>
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
800014c4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054d4 <_sidata+0x63bf936c>
800014c8:	447f4444 	bnez	$r2,1081156(0x107f44) # 8010940c <_edata+0x107970>
800014cc:	00404444 	0x00404444
800014d0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4d0 <_sidata+0x63fe1368>
800014d4:	52525252 	b	-112569776(0x94a5250) # 794a6724 <_sidata+0x5d49a5bc>
800014d8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6728 <_sidata+0x63fda5c0>
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
80001638:	52321e32 	b	-120966628(0x8ca321c) # 78ca4854 <_sidata+0x5cc986ec>
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
80001698:	54547f54 	bl	-45067140(0xd50547c) # 7d506b14 <_sidata+0x614fa9ac>
8000169c:	00404454 	0x00404454
800016a0:	017e0404 	0x017e0404
800016a4:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
800016a8:	95551515 	0x95551515
800016ac:	0000007f 	0x0000007f
800016b0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe39ac <_sidata+0x63fd7844>
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
80001750:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc380 <_sidata+0x63ff0218>
80001754:	f8080810 	0xf8080810
80001758:	f8080e09 	0xf8080e09
8000175c:	00000808 	0x00000808
80001760:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001764:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001768:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000176c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001770:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001774:	54544400 	bl	21572(0x5444) # 80006bb8 <_edata+0x511c>
80001778:	54547f54 	bl	-45067140(0xd50547c) # 7d506bf4 <_sidata+0x614faa8c>
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
80001850:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc480 <_sidata+0x63ff0318>
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
800018e4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09948 <_sidata+0x63bfd7e0>
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
80001938:	54547f54 	bl	-45067140(0xd50547c) # 7d506db4 <_sidata+0x614fac4c>
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
800019f4:	54555654 	bl	-112175788(0x9505554) # 79506f48 <_sidata+0x5d4fade0>
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
