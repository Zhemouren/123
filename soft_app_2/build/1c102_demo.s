
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800cf 	lu12i.w	$r15,114694(0x1c006)
1c00000c:	039a51ef 	ori	$r15,$r15,0x694
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
1c000030:	03a971ef 	ori	$r15,$r15,0xa5c
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038011ad 	ori	$r13,$r13,0x4
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
1c0000a0:	54395c00 	bl	14684(0x395c) # 1c0039fc <main>
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
1c001090:	54430400 	bl	17156(0x4304) # 1c005394 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54434400 	bl	17220(0x4344) # 1c0053dc <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5443c800 	bl	17352(0x43c8) # 1c005468 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5443fc00 	bl	17404(0x43fc) # 1c0054a4 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54421400 	bl	16916(0x4214) # 1c0052c4 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5445a000 	bl	17824(0x45a0) # 1c005658 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5444b400 	bl	17588(0x44b4) # 1c00557c <INTC_Handler>
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
1c00144c:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001450:	0289118c 	addi.w	$r12,$r12,580(0x244)
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

1c0019c0 <gpio_read>:
gpio_read():
1c0019c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0019c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0019c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0019cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0019d0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0019d4:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0019d8:	6000458d 	blt	$r12,$r13,68(0x44) # 1c001a1c <gpio_read+0x5c>
1c0019dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0019e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019e8:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c0019ec:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019f0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0019f4:	001735cd 	sll.w	$r13,$r14,$r13
1c0019f8:	0014b58c 	and	$r12,$r12,$r13
1c0019fc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a04:	001735cd 	sll.w	$r13,$r14,$r13
1c001a08:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001a14 <gpio_read+0x54>
1c001a0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a10:	50004c00 	b	76(0x4c) # 1c001a5c <gpio_read+0x9c>
1c001a14:	0015000c 	move	$r12,$r0
1c001a18:	50004400 	b	68(0x44) # 1c001a5c <gpio_read+0x9c>
1c001a1c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a20:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001a24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a2c:	2881618c 	ld.w	$r12,$r12,88(0x58)
1c001a30:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	001735cd 	sll.w	$r13,$r14,$r13
1c001a3c:	0014b58c 	and	$r12,$r12,$r13
1c001a40:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a44:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a48:	001735cd 	sll.w	$r13,$r14,$r13
1c001a4c:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001a58 <gpio_read+0x98>
1c001a50:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a54:	50000800 	b	8(0x8) # 1c001a5c <gpio_read+0x9c>
1c001a58:	0015000c 	move	$r12,$r0
1c001a5c:	00150184 	move	$r4,$r12
1c001a60:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001a64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a68:	4c000020 	jirl	$r0,$r1,0

1c001a6c <soc_I2C_delay>:
soc_I2C_delay():
1c001a6c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001a70:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001a74:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001a78:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001a7c:	03400000 	andi	$r0,$r0,0x0
1c001a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a84:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001a88:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001a8c:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c001a80 <soc_I2C_delay+0x14>
1c001a90:	03400000 	andi	$r0,$r0,0x0
1c001a94:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001a98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a9c:	4c000020 	jirl	$r0,$r1,0

1c001aa0 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c001aa0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001aa4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001aa8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001aac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001ab0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ab4:	1400060d 	lu12i.w	$r13,48(0x30)
1c001ab8:	03b501ad 	ori	$r13,$r13,0xd40
1c001abc:	2980018d 	st.w	$r13,$r12,0
1c001ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ac4:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001ac8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001acc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ad0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001ad4:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001ad8:	03400000 	andi	$r0,$r0,0x0
1c001adc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001ae0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ae4:	4c000020 	jirl	$r0,$r1,0

1c001ae8 <soc_I2C_Init>:
soc_I2C_Init():
1c001ae8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001aec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001af0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001af4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001af8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001afc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001b00:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001b04:	0388018c 	ori	$r12,$r12,0x200
1c001b08:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b0c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b10:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b14:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001b18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b1c:	2880018d 	ld.w	$r13,$r12,0
1c001b20:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001b24:	002135cc 	div.wu	$r12,$r14,$r13
1c001b28:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001b30 <soc_I2C_Init+0x48>
1c001b2c:	002a0007 	break	0x7
1c001b30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b38:	0044898c 	srli.w	$r12,$r12,0x2
1c001b3c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b44:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b4c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001b50:	2900018d 	st.b	$r13,$r12,0
1c001b54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b58:	0044a18d 	srli.w	$r13,$r12,0x8
1c001b5c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b60:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001b64:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001b68:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b6c:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001b70:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001b74:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b78:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001b7c:	40001180 	beqz	$r12,16(0x10) # 1c001b8c <soc_I2C_Init+0xa4>
1c001b80:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b84:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001b88:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b8c:	5400e800 	bl	232(0xe8) # 1c001c74 <soc_I2C_wait>
1c001b90:	03400000 	andi	$r0,$r0,0x0
1c001b94:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b98:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ba0:	4c000020 	jirl	$r0,$r1,0

1c001ba4 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001ba4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ba8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bb0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001bb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bb8:	40001580 	beqz	$r12,20(0x14) # 1c001bcc <soc_I2C_GenerateSTART+0x28>
1c001bbc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bc0:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001bc4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001bc8:	50001000 	b	16(0x10) # 1c001bd8 <soc_I2C_GenerateSTART+0x34>
1c001bcc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bd0:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001bd4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001bd8:	03400000 	andi	$r0,$r0,0x0
1c001bdc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001be0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001be4:	4c000020 	jirl	$r0,$r1,0

1c001be8 <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001be8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001bec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bf4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001bf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bfc:	40001580 	beqz	$r12,20(0x14) # 1c001c10 <soc_I2C_GenerateSTOP+0x28>
1c001c00:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c04:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001c08:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c0c:	50001000 	b	16(0x10) # 1c001c1c <soc_I2C_GenerateSTOP+0x34>
1c001c10:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c14:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001c18:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c1c:	03400000 	andi	$r0,$r0,0x0
1c001c20:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c28:	4c000020 	jirl	$r0,$r1,0

1c001c2c <soc_I2C_SendData>:
soc_I2C_SendData():
1c001c2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c30:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c34:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c38:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c3c:	0015008c 	move	$r12,$r4
1c001c40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c44:	54007800 	bl	120(0x78) # 1c001cbc <soc_I2C_Unlock>
1c001c48:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c4c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c50:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001c54:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c58:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001c5c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c60:	03400000 	andi	$r0,$r0,0x0
1c001c64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001c68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001c6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c70:	4c000020 	jirl	$r0,$r1,0

1c001c74 <soc_I2C_wait>:
soc_I2C_wait():
1c001c74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c78:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c80:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c84:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001c88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c8c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001c90:	50001000 	b	16(0x10) # 1c001ca0 <soc_I2C_wait+0x2c>
1c001c94:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c98:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001c9c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001ca0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001ca4:	0340098c 	andi	$r12,$r12,0x2
1c001ca8:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001c94 <soc_I2C_wait+0x20>
1c001cac:	03400000 	andi	$r0,$r0,0x0
1c001cb0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001cb4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cb8:	4c000020 	jirl	$r0,$r1,0

1c001cbc <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001cbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cc0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001cc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001cc8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ccc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001cd0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001cd4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001cd8:	0340118c 	andi	$r12,$r12,0x4
1c001cdc:	40001180 	beqz	$r12,16(0x10) # 1c001cec <soc_I2C_Unlock+0x30>
1c001ce0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ce4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001ce8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001cec:	03400000 	andi	$r0,$r0,0x0
1c001cf0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001cf4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cf8:	4c000020 	jirl	$r0,$r1,0

1c001cfc <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001cfc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d00:	29803076 	st.w	$r22,$r3,12(0xc)
1c001d04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d08:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d0c:	0380c18c 	ori	$r12,$r12,0x30
1c001d10:	29802180 	st.w	$r0,$r12,8(0x8)
1c001d14:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d18:	0380c18c 	ori	$r12,$r12,0x30
1c001d1c:	140004ed 	lu12i.w	$r13,39(0x27)
1c001d20:	038401ad 	ori	$r13,$r13,0x100
1c001d24:	2980018d 	st.w	$r13,$r12,0
1c001d28:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d2c:	0380c18c 	ori	$r12,$r12,0x30
1c001d30:	03be800d 	ori	$r13,$r0,0xfa0
1c001d34:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001d38:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d3c:	0380c18c 	ori	$r12,$r12,0x30
1c001d40:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001d44:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001d48:	03400000 	andi	$r0,$r0,0x0
1c001d4c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001d50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001d54:	4c000020 	jirl	$r0,$r1,0

1c001d58 <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001d58:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d5c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d64:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001d68:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001d6c:	028c800c 	addi.w	$r12,$r0,800(0x320)
1c001d70:	001c31ae 	mul.w	$r14,$r13,$r12
1c001d74:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001d78:	002031cd 	div.w	$r13,$r14,$r12
1c001d7c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001d84 <pwm_steering_engine_set+0x2c>
1c001d80:	002a0007 	break	0x7
1c001d84:	03be800c 	ori	$r12,$r0,0xfa0
1c001d88:	001031ad 	add.w	$r13,$r13,$r12
1c001d8c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d90:	0380c18c 	ori	$r12,$r12,0x30
1c001d94:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001d98:	03400000 	andi	$r0,$r0,0x0
1c001d9c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001da0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001da4:	4c000020 	jirl	$r0,$r1,0

1c001da8 <my_recv_dat_int>:
my_recv_dat_int():
1c001da8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001dac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001db0:	29806076 	st.w	$r22,$r3,24(0x18)
1c001db4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001db8:	0015008c 	move	$r12,$r4
1c001dbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001dc0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001dc4:	2889218c 	ld.w	$r12,$r12,584(0x248)
1c001dc8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001dcc:	2900018d 	st.b	$r13,$r12,0
1c001dd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001dd4:	00150185 	move	$r5,$r12
1c001dd8:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001ddc:	0288b084 	addi.w	$r4,$r4,556(0x22c)
1c001de0:	541b4000 	bl	6976(0x1b40) # 1c003920 <Buffer_write>
1c001de4:	03400000 	andi	$r0,$r0,0x0
1c001de8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001dec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001df0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001df4:	4c000020 	jirl	$r0,$r1,0

1c001df8 <SG90_GetAngle>:
SG90_GetAngle():
1c001df8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001dfc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001e00:	29806076 	st.w	$r22,$r3,24(0x18)
1c001e04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001e0c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c001e10:	57ff4bff 	bl	-184(0xfffff48) # 1c001d58 <pwm_steering_engine_set>
1c001e14:	03400000 	andi	$r0,$r0,0x0
1c001e18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001e1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001e20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e24:	4c000020 	jirl	$r0,$r1,0

1c001e28 <SG90_Init>:
SG90_Init():
1c001e28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e30:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e38:	00150004 	move	$r4,$r0
1c001e3c:	57ffbfff 	bl	-68(0xfffffbc) # 1c001df8 <SG90_GetAngle>
1c001e40:	03400000 	andi	$r0,$r0,0x0
1c001e44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e50:	4c000020 	jirl	$r0,$r1,0

1c001e54 <SG90_Open>:
SG90_Open():
1c001e54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e58:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e64:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c001e68:	57ff93ff 	bl	-112(0xfffff90) # 1c001df8 <SG90_GetAngle>
1c001e6c:	03400000 	andi	$r0,$r0,0x0
1c001e70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e74:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e7c:	4c000020 	jirl	$r0,$r1,0

1c001e80 <SG90_Close>:
SG90_Close():
1c001e80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e84:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e88:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e90:	00150004 	move	$r4,$r0
1c001e94:	57ff67ff 	bl	-156(0xfffff64) # 1c001df8 <SG90_GetAngle>
1c001e98:	03400000 	andi	$r0,$r0,0x0
1c001e9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ea0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ea4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ea8:	4c000020 	jirl	$r0,$r1,0

1c001eac <clkey>:
clkey():
1c001eac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001eb0:	29803061 	st.w	$r1,$r3,12(0xc)
1c001eb4:	29802076 	st.w	$r22,$r3,8(0x8)
1c001eb8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ebc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ec0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001ec4:	57fa07ff 	bl	-1532(0xffffa04) # 1c0018c8 <gpio_write>
1c001ec8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ecc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c001ed0:	57f9fbff 	bl	-1544(0xffff9f8) # 1c0018c8 <gpio_write>
1c001ed4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ed8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c001edc:	57f9efff 	bl	-1556(0xffff9ec) # 1c0018c8 <gpio_write>
1c001ee0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ee4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c001ee8:	57f9e3ff 	bl	-1568(0xffff9e0) # 1c0018c8 <gpio_write>
1c001eec:	03400000 	andi	$r0,$r0,0x0
1c001ef0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ef4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ef8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001efc:	4c000020 	jirl	$r0,$r1,0

1c001f00 <MatrixKey>:
MatrixKey():
1c001f00:	02bdc063 	addi.w	$r3,$r3,-144(0xf70)
1c001f04:	29823061 	st.w	$r1,$r3,140(0x8c)
1c001f08:	29822076 	st.w	$r22,$r3,136(0x88)
1c001f0c:	02824076 	addi.w	$r22,$r3,144(0x90)
1c001f10:	57ff9fff 	bl	-100(0xfffff9c) # 1c001eac <clkey>
1c001f14:	00150005 	move	$r5,$r0
1c001f18:	02808804 	addi.w	$r4,$r0,34(0x22)
1c001f1c:	57f9afff 	bl	-1620(0xffff9ac) # 1c0018c8 <gpio_write>
1c001f20:	02803804 	addi.w	$r4,$r0,14(0xe)
1c001f24:	57fa9fff 	bl	-1380(0xffffa9c) # 1c0019c0 <gpio_read>
1c001f28:	0015008c 	move	$r12,$r4
1c001f2c:	44008180 	bnez	$r12,128(0x80) # 1c001fac <MatrixKey+0xac>
1c001f30:	1400008c 	lu12i.w	$r12,4(0x4)
1c001f34:	03a3d98c 	ori	$r12,$r12,0x8f6
1c001f38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f3c:	50001400 	b	20(0x14) # 1c001f50 <MatrixKey+0x50>
1c001f40:	03400000 	andi	$r0,$r0,0x0
1c001f44:	03400000 	andi	$r0,$r0,0x0
1c001f48:	03400000 	andi	$r0,$r0,0x0
1c001f4c:	03400000 	andi	$r0,$r0,0x0
1c001f50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001f58:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001f5c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001f40 <MatrixKey+0x40>
1c001f60:	03400000 	andi	$r0,$r0,0x0
1c001f64:	02803804 	addi.w	$r4,$r0,14(0xe)
1c001f68:	57fa5bff 	bl	-1448(0xffffa58) # 1c0019c0 <gpio_read>
1c001f6c:	0015008c 	move	$r12,$r4
1c001f70:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c001f64 <MatrixKey+0x64>
1c001f74:	1400008c 	lu12i.w	$r12,4(0x4)
1c001f78:	03a3d98c 	ori	$r12,$r12,0x8f6
1c001f7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001f80:	50001400 	b	20(0x14) # 1c001f94 <MatrixKey+0x94>
1c001f84:	03400000 	andi	$r0,$r0,0x0
1c001f88:	03400000 	andi	$r0,$r0,0x0
1c001f8c:	03400000 	andi	$r0,$r0,0x0
1c001f90:	03400000 	andi	$r0,$r0,0x0
1c001f94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001f98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001f9c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c001fa0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001f84 <MatrixKey+0x84>
1c001fa4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001fa8:	50086c00 	b	2156(0x86c) # 1c002814 <MatrixKey+0x914>
1c001fac:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c001fb0:	57fa13ff 	bl	-1520(0xffffa10) # 1c0019c0 <gpio_read>
1c001fb4:	0015008c 	move	$r12,$r4
1c001fb8:	44008180 	bnez	$r12,128(0x80) # 1c002038 <MatrixKey+0x138>
1c001fbc:	1400008c 	lu12i.w	$r12,4(0x4)
1c001fc0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c001fc4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001fc8:	50001400 	b	20(0x14) # 1c001fdc <MatrixKey+0xdc>
1c001fcc:	03400000 	andi	$r0,$r0,0x0
1c001fd0:	03400000 	andi	$r0,$r0,0x0
1c001fd4:	03400000 	andi	$r0,$r0,0x0
1c001fd8:	03400000 	andi	$r0,$r0,0x0
1c001fdc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001fe0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001fe4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c001fe8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001fcc <MatrixKey+0xcc>
1c001fec:	03400000 	andi	$r0,$r0,0x0
1c001ff0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c001ff4:	57f9cfff 	bl	-1588(0xffff9cc) # 1c0019c0 <gpio_read>
1c001ff8:	0015008c 	move	$r12,$r4
1c001ffc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c001ff0 <MatrixKey+0xf0>
1c002000:	1400008c 	lu12i.w	$r12,4(0x4)
1c002004:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002008:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00200c:	50001400 	b	20(0x14) # 1c002020 <MatrixKey+0x120>
1c002010:	03400000 	andi	$r0,$r0,0x0
1c002014:	03400000 	andi	$r0,$r0,0x0
1c002018:	03400000 	andi	$r0,$r0,0x0
1c00201c:	03400000 	andi	$r0,$r0,0x0
1c002020:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002024:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002028:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c00202c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002010 <MatrixKey+0x110>
1c002030:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002034:	5007e000 	b	2016(0x7e0) # 1c002814 <MatrixKey+0x914>
1c002038:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00203c:	57f987ff 	bl	-1660(0xffff984) # 1c0019c0 <gpio_read>
1c002040:	0015008c 	move	$r12,$r4
1c002044:	44008180 	bnez	$r12,128(0x80) # 1c0020c4 <MatrixKey+0x1c4>
1c002048:	1400008c 	lu12i.w	$r12,4(0x4)
1c00204c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002050:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002054:	50001400 	b	20(0x14) # 1c002068 <MatrixKey+0x168>
1c002058:	03400000 	andi	$r0,$r0,0x0
1c00205c:	03400000 	andi	$r0,$r0,0x0
1c002060:	03400000 	andi	$r0,$r0,0x0
1c002064:	03400000 	andi	$r0,$r0,0x0
1c002068:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00206c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002070:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c002074:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002058 <MatrixKey+0x158>
1c002078:	03400000 	andi	$r0,$r0,0x0
1c00207c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002080:	57f943ff 	bl	-1728(0xffff940) # 1c0019c0 <gpio_read>
1c002084:	0015008c 	move	$r12,$r4
1c002088:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00207c <MatrixKey+0x17c>
1c00208c:	1400008c 	lu12i.w	$r12,4(0x4)
1c002090:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002094:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002098:	50001400 	b	20(0x14) # 1c0020ac <MatrixKey+0x1ac>
1c00209c:	03400000 	andi	$r0,$r0,0x0
1c0020a0:	03400000 	andi	$r0,$r0,0x0
1c0020a4:	03400000 	andi	$r0,$r0,0x0
1c0020a8:	03400000 	andi	$r0,$r0,0x0
1c0020ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0020b4:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c0020b8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00209c <MatrixKey+0x19c>
1c0020bc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020c0:	50075400 	b	1876(0x754) # 1c002814 <MatrixKey+0x914>
1c0020c4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0020c8:	57f8fbff 	bl	-1800(0xffff8f8) # 1c0019c0 <gpio_read>
1c0020cc:	0015008c 	move	$r12,$r4
1c0020d0:	44008180 	bnez	$r12,128(0x80) # 1c002150 <MatrixKey+0x250>
1c0020d4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0020d8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0020dc:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0020e0:	50001400 	b	20(0x14) # 1c0020f4 <MatrixKey+0x1f4>
1c0020e4:	03400000 	andi	$r0,$r0,0x0
1c0020e8:	03400000 	andi	$r0,$r0,0x0
1c0020ec:	03400000 	andi	$r0,$r0,0x0
1c0020f0:	03400000 	andi	$r0,$r0,0x0
1c0020f4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0020f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0020fc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002100:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0020e4 <MatrixKey+0x1e4>
1c002104:	03400000 	andi	$r0,$r0,0x0
1c002108:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00210c:	57f8b7ff 	bl	-1868(0xffff8b4) # 1c0019c0 <gpio_read>
1c002110:	0015008c 	move	$r12,$r4
1c002114:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002108 <MatrixKey+0x208>
1c002118:	1400008c 	lu12i.w	$r12,4(0x4)
1c00211c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002120:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c002124:	50001400 	b	20(0x14) # 1c002138 <MatrixKey+0x238>
1c002128:	03400000 	andi	$r0,$r0,0x0
1c00212c:	03400000 	andi	$r0,$r0,0x0
1c002130:	03400000 	andi	$r0,$r0,0x0
1c002134:	03400000 	andi	$r0,$r0,0x0
1c002138:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00213c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002140:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c002144:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002128 <MatrixKey+0x228>
1c002148:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00214c:	5006c800 	b	1736(0x6c8) # 1c002814 <MatrixKey+0x914>
1c002150:	57fd5fff 	bl	-676(0xffffd5c) # 1c001eac <clkey>
1c002154:	00150005 	move	$r5,$r0
1c002158:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00215c:	57f76fff 	bl	-2196(0xffff76c) # 1c0018c8 <gpio_write>
1c002160:	02803804 	addi.w	$r4,$r0,14(0xe)
1c002164:	57f85fff 	bl	-1956(0xffff85c) # 1c0019c0 <gpio_read>
1c002168:	0015008c 	move	$r12,$r4
1c00216c:	44008180 	bnez	$r12,128(0x80) # 1c0021ec <MatrixKey+0x2ec>
1c002170:	1400008c 	lu12i.w	$r12,4(0x4)
1c002174:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002178:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c00217c:	50001400 	b	20(0x14) # 1c002190 <MatrixKey+0x290>
1c002180:	03400000 	andi	$r0,$r0,0x0
1c002184:	03400000 	andi	$r0,$r0,0x0
1c002188:	03400000 	andi	$r0,$r0,0x0
1c00218c:	03400000 	andi	$r0,$r0,0x0
1c002190:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c002194:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002198:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c00219c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002180 <MatrixKey+0x280>
1c0021a0:	03400000 	andi	$r0,$r0,0x0
1c0021a4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0021a8:	57f81bff 	bl	-2024(0xffff818) # 1c0019c0 <gpio_read>
1c0021ac:	0015008c 	move	$r12,$r4
1c0021b0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0021a4 <MatrixKey+0x2a4>
1c0021b4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0021b8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0021bc:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c0021c0:	50001400 	b	20(0x14) # 1c0021d4 <MatrixKey+0x2d4>
1c0021c4:	03400000 	andi	$r0,$r0,0x0
1c0021c8:	03400000 	andi	$r0,$r0,0x0
1c0021cc:	03400000 	andi	$r0,$r0,0x0
1c0021d0:	03400000 	andi	$r0,$r0,0x0
1c0021d4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0021d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0021dc:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c0021e0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0021c4 <MatrixKey+0x2c4>
1c0021e4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0021e8:	50062c00 	b	1580(0x62c) # 1c002814 <MatrixKey+0x914>
1c0021ec:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0021f0:	57f7d3ff 	bl	-2096(0xffff7d0) # 1c0019c0 <gpio_read>
1c0021f4:	0015008c 	move	$r12,$r4
1c0021f8:	44008180 	bnez	$r12,128(0x80) # 1c002278 <MatrixKey+0x378>
1c0021fc:	1400008c 	lu12i.w	$r12,4(0x4)
1c002200:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002204:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c002208:	50001400 	b	20(0x14) # 1c00221c <MatrixKey+0x31c>
1c00220c:	03400000 	andi	$r0,$r0,0x0
1c002210:	03400000 	andi	$r0,$r0,0x0
1c002214:	03400000 	andi	$r0,$r0,0x0
1c002218:	03400000 	andi	$r0,$r0,0x0
1c00221c:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c002220:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002224:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c002228:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00220c <MatrixKey+0x30c>
1c00222c:	03400000 	andi	$r0,$r0,0x0
1c002230:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c002234:	57f78fff 	bl	-2164(0xffff78c) # 1c0019c0 <gpio_read>
1c002238:	0015008c 	move	$r12,$r4
1c00223c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002230 <MatrixKey+0x330>
1c002240:	1400008c 	lu12i.w	$r12,4(0x4)
1c002244:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002248:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c00224c:	50001400 	b	20(0x14) # 1c002260 <MatrixKey+0x360>
1c002250:	03400000 	andi	$r0,$r0,0x0
1c002254:	03400000 	andi	$r0,$r0,0x0
1c002258:	03400000 	andi	$r0,$r0,0x0
1c00225c:	03400000 	andi	$r0,$r0,0x0
1c002260:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c002264:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002268:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c00226c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002250 <MatrixKey+0x350>
1c002270:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c002274:	5005a000 	b	1440(0x5a0) # 1c002814 <MatrixKey+0x914>
1c002278:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00227c:	57f747ff 	bl	-2236(0xffff744) # 1c0019c0 <gpio_read>
1c002280:	0015008c 	move	$r12,$r4
1c002284:	44008180 	bnez	$r12,128(0x80) # 1c002304 <MatrixKey+0x404>
1c002288:	1400008c 	lu12i.w	$r12,4(0x4)
1c00228c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002290:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c002294:	50001400 	b	20(0x14) # 1c0022a8 <MatrixKey+0x3a8>
1c002298:	03400000 	andi	$r0,$r0,0x0
1c00229c:	03400000 	andi	$r0,$r0,0x0
1c0022a0:	03400000 	andi	$r0,$r0,0x0
1c0022a4:	03400000 	andi	$r0,$r0,0x0
1c0022a8:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c0022ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0022b0:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c0022b4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002298 <MatrixKey+0x398>
1c0022b8:	03400000 	andi	$r0,$r0,0x0
1c0022bc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0022c0:	57f703ff 	bl	-2304(0xffff700) # 1c0019c0 <gpio_read>
1c0022c4:	0015008c 	move	$r12,$r4
1c0022c8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0022bc <MatrixKey+0x3bc>
1c0022cc:	1400008c 	lu12i.w	$r12,4(0x4)
1c0022d0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0022d4:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c0022d8:	50001400 	b	20(0x14) # 1c0022ec <MatrixKey+0x3ec>
1c0022dc:	03400000 	andi	$r0,$r0,0x0
1c0022e0:	03400000 	andi	$r0,$r0,0x0
1c0022e4:	03400000 	andi	$r0,$r0,0x0
1c0022e8:	03400000 	andi	$r0,$r0,0x0
1c0022ec:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0022f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0022f4:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c0022f8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0022dc <MatrixKey+0x3dc>
1c0022fc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002300:	50051400 	b	1300(0x514) # 1c002814 <MatrixKey+0x914>
1c002304:	02804404 	addi.w	$r4,$r0,17(0x11)
1c002308:	57f6bbff 	bl	-2376(0xffff6b8) # 1c0019c0 <gpio_read>
1c00230c:	0015008c 	move	$r12,$r4
1c002310:	44008180 	bnez	$r12,128(0x80) # 1c002390 <MatrixKey+0x490>
1c002314:	1400008c 	lu12i.w	$r12,4(0x4)
1c002318:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00231c:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c002320:	50001400 	b	20(0x14) # 1c002334 <MatrixKey+0x434>
1c002324:	03400000 	andi	$r0,$r0,0x0
1c002328:	03400000 	andi	$r0,$r0,0x0
1c00232c:	03400000 	andi	$r0,$r0,0x0
1c002330:	03400000 	andi	$r0,$r0,0x0
1c002334:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c002338:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00233c:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c002340:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002324 <MatrixKey+0x424>
1c002344:	03400000 	andi	$r0,$r0,0x0
1c002348:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00234c:	57f677ff 	bl	-2444(0xffff674) # 1c0019c0 <gpio_read>
1c002350:	0015008c 	move	$r12,$r4
1c002354:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002348 <MatrixKey+0x448>
1c002358:	1400008c 	lu12i.w	$r12,4(0x4)
1c00235c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002360:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c002364:	50001400 	b	20(0x14) # 1c002378 <MatrixKey+0x478>
1c002368:	03400000 	andi	$r0,$r0,0x0
1c00236c:	03400000 	andi	$r0,$r0,0x0
1c002370:	03400000 	andi	$r0,$r0,0x0
1c002374:	03400000 	andi	$r0,$r0,0x0
1c002378:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00237c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002380:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c002384:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002368 <MatrixKey+0x468>
1c002388:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00238c:	50048800 	b	1160(0x488) # 1c002814 <MatrixKey+0x914>
1c002390:	57fb1fff 	bl	-1252(0xffffb1c) # 1c001eac <clkey>
1c002394:	00150005 	move	$r5,$r0
1c002398:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00239c:	57f52fff 	bl	-2772(0xffff52c) # 1c0018c8 <gpio_write>
1c0023a0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0023a4:	57f61fff 	bl	-2532(0xffff61c) # 1c0019c0 <gpio_read>
1c0023a8:	0015008c 	move	$r12,$r4
1c0023ac:	44008180 	bnez	$r12,128(0x80) # 1c00242c <MatrixKey+0x52c>
1c0023b0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0023b4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0023b8:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c0023bc:	50001400 	b	20(0x14) # 1c0023d0 <MatrixKey+0x4d0>
1c0023c0:	03400000 	andi	$r0,$r0,0x0
1c0023c4:	03400000 	andi	$r0,$r0,0x0
1c0023c8:	03400000 	andi	$r0,$r0,0x0
1c0023cc:	03400000 	andi	$r0,$r0,0x0
1c0023d0:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c0023d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0023d8:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c0023dc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0023c0 <MatrixKey+0x4c0>
1c0023e0:	03400000 	andi	$r0,$r0,0x0
1c0023e4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0023e8:	57f5dbff 	bl	-2600(0xffff5d8) # 1c0019c0 <gpio_read>
1c0023ec:	0015008c 	move	$r12,$r4
1c0023f0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0023e4 <MatrixKey+0x4e4>
1c0023f4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0023f8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0023fc:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c002400:	50001400 	b	20(0x14) # 1c002414 <MatrixKey+0x514>
1c002404:	03400000 	andi	$r0,$r0,0x0
1c002408:	03400000 	andi	$r0,$r0,0x0
1c00240c:	03400000 	andi	$r0,$r0,0x0
1c002410:	03400000 	andi	$r0,$r0,0x0
1c002414:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c002418:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00241c:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c002420:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002404 <MatrixKey+0x504>
1c002424:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002428:	5003ec00 	b	1004(0x3ec) # 1c002814 <MatrixKey+0x914>
1c00242c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c002430:	57f593ff 	bl	-2672(0xffff590) # 1c0019c0 <gpio_read>
1c002434:	0015008c 	move	$r12,$r4
1c002438:	44008180 	bnez	$r12,128(0x80) # 1c0024b8 <MatrixKey+0x5b8>
1c00243c:	1400008c 	lu12i.w	$r12,4(0x4)
1c002440:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002444:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c002448:	50001400 	b	20(0x14) # 1c00245c <MatrixKey+0x55c>
1c00244c:	03400000 	andi	$r0,$r0,0x0
1c002450:	03400000 	andi	$r0,$r0,0x0
1c002454:	03400000 	andi	$r0,$r0,0x0
1c002458:	03400000 	andi	$r0,$r0,0x0
1c00245c:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c002460:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002464:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c002468:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00244c <MatrixKey+0x54c>
1c00246c:	03400000 	andi	$r0,$r0,0x0
1c002470:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c002474:	57f54fff 	bl	-2740(0xffff54c) # 1c0019c0 <gpio_read>
1c002478:	0015008c 	move	$r12,$r4
1c00247c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002470 <MatrixKey+0x570>
1c002480:	1400008c 	lu12i.w	$r12,4(0x4)
1c002484:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002488:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c00248c:	50001400 	b	20(0x14) # 1c0024a0 <MatrixKey+0x5a0>
1c002490:	03400000 	andi	$r0,$r0,0x0
1c002494:	03400000 	andi	$r0,$r0,0x0
1c002498:	03400000 	andi	$r0,$r0,0x0
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c0024a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0024a8:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c0024ac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002490 <MatrixKey+0x590>
1c0024b0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0024b4:	50036000 	b	864(0x360) # 1c002814 <MatrixKey+0x914>
1c0024b8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0024bc:	57f507ff 	bl	-2812(0xffff504) # 1c0019c0 <gpio_read>
1c0024c0:	0015008c 	move	$r12,$r4
1c0024c4:	44008180 	bnez	$r12,128(0x80) # 1c002544 <MatrixKey+0x644>
1c0024c8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0024cc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0024d0:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c0024d4:	50001400 	b	20(0x14) # 1c0024e8 <MatrixKey+0x5e8>
1c0024d8:	03400000 	andi	$r0,$r0,0x0
1c0024dc:	03400000 	andi	$r0,$r0,0x0
1c0024e0:	03400000 	andi	$r0,$r0,0x0
1c0024e4:	03400000 	andi	$r0,$r0,0x0
1c0024e8:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0024ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0024f0:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c0024f4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0024d8 <MatrixKey+0x5d8>
1c0024f8:	03400000 	andi	$r0,$r0,0x0
1c0024fc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002500:	57f4c3ff 	bl	-2880(0xffff4c0) # 1c0019c0 <gpio_read>
1c002504:	0015008c 	move	$r12,$r4
1c002508:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0024fc <MatrixKey+0x5fc>
1c00250c:	1400008c 	lu12i.w	$r12,4(0x4)
1c002510:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002514:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c002518:	50001400 	b	20(0x14) # 1c00252c <MatrixKey+0x62c>
1c00251c:	03400000 	andi	$r0,$r0,0x0
1c002520:	03400000 	andi	$r0,$r0,0x0
1c002524:	03400000 	andi	$r0,$r0,0x0
1c002528:	03400000 	andi	$r0,$r0,0x0
1c00252c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002530:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002534:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c002538:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00251c <MatrixKey+0x61c>
1c00253c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002540:	5002d400 	b	724(0x2d4) # 1c002814 <MatrixKey+0x914>
1c002544:	02804404 	addi.w	$r4,$r0,17(0x11)
1c002548:	57f47bff 	bl	-2952(0xffff478) # 1c0019c0 <gpio_read>
1c00254c:	0015008c 	move	$r12,$r4
1c002550:	44008180 	bnez	$r12,128(0x80) # 1c0025d0 <MatrixKey+0x6d0>
1c002554:	1400008c 	lu12i.w	$r12,4(0x4)
1c002558:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00255c:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c002560:	50001400 	b	20(0x14) # 1c002574 <MatrixKey+0x674>
1c002564:	03400000 	andi	$r0,$r0,0x0
1c002568:	03400000 	andi	$r0,$r0,0x0
1c00256c:	03400000 	andi	$r0,$r0,0x0
1c002570:	03400000 	andi	$r0,$r0,0x0
1c002574:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c002578:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00257c:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c002580:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002564 <MatrixKey+0x664>
1c002584:	03400000 	andi	$r0,$r0,0x0
1c002588:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00258c:	57f437ff 	bl	-3020(0xffff434) # 1c0019c0 <gpio_read>
1c002590:	0015008c 	move	$r12,$r4
1c002594:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002588 <MatrixKey+0x688>
1c002598:	1400008c 	lu12i.w	$r12,4(0x4)
1c00259c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0025a0:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c0025a4:	50001400 	b	20(0x14) # 1c0025b8 <MatrixKey+0x6b8>
1c0025a8:	03400000 	andi	$r0,$r0,0x0
1c0025ac:	03400000 	andi	$r0,$r0,0x0
1c0025b0:	03400000 	andi	$r0,$r0,0x0
1c0025b4:	03400000 	andi	$r0,$r0,0x0
1c0025b8:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0025bc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0025c0:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c0025c4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0025a8 <MatrixKey+0x6a8>
1c0025c8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0025cc:	50024800 	b	584(0x248) # 1c002814 <MatrixKey+0x914>
1c0025d0:	57f8dfff 	bl	-1828(0xffff8dc) # 1c001eac <clkey>
1c0025d4:	00150005 	move	$r5,$r0
1c0025d8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0025dc:	57f2efff 	bl	-3348(0xffff2ec) # 1c0018c8 <gpio_write>
1c0025e0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0025e4:	57f3dfff 	bl	-3108(0xffff3dc) # 1c0019c0 <gpio_read>
1c0025e8:	0015008c 	move	$r12,$r4
1c0025ec:	44008180 	bnez	$r12,128(0x80) # 1c00266c <MatrixKey+0x76c>
1c0025f0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0025f4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0025f8:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c0025fc:	50001400 	b	20(0x14) # 1c002610 <MatrixKey+0x710>
1c002600:	03400000 	andi	$r0,$r0,0x0
1c002604:	03400000 	andi	$r0,$r0,0x0
1c002608:	03400000 	andi	$r0,$r0,0x0
1c00260c:	03400000 	andi	$r0,$r0,0x0
1c002610:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c002614:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002618:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c00261c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002600 <MatrixKey+0x700>
1c002620:	03400000 	andi	$r0,$r0,0x0
1c002624:	02803804 	addi.w	$r4,$r0,14(0xe)
1c002628:	57f39bff 	bl	-3176(0xffff398) # 1c0019c0 <gpio_read>
1c00262c:	0015008c 	move	$r12,$r4
1c002630:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c002624 <MatrixKey+0x724>
1c002634:	1400008c 	lu12i.w	$r12,4(0x4)
1c002638:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00263c:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c002640:	50001400 	b	20(0x14) # 1c002654 <MatrixKey+0x754>
1c002644:	03400000 	andi	$r0,$r0,0x0
1c002648:	03400000 	andi	$r0,$r0,0x0
1c00264c:	03400000 	andi	$r0,$r0,0x0
1c002650:	03400000 	andi	$r0,$r0,0x0
1c002654:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c002658:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00265c:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c002660:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002644 <MatrixKey+0x744>
1c002664:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002668:	5001ac00 	b	428(0x1ac) # 1c002814 <MatrixKey+0x914>
1c00266c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c002670:	57f353ff 	bl	-3248(0xffff350) # 1c0019c0 <gpio_read>
1c002674:	0015008c 	move	$r12,$r4
1c002678:	44008180 	bnez	$r12,128(0x80) # 1c0026f8 <MatrixKey+0x7f8>
1c00267c:	1400008c 	lu12i.w	$r12,4(0x4)
1c002680:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002684:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c002688:	50001400 	b	20(0x14) # 1c00269c <MatrixKey+0x79c>
1c00268c:	03400000 	andi	$r0,$r0,0x0
1c002690:	03400000 	andi	$r0,$r0,0x0
1c002694:	03400000 	andi	$r0,$r0,0x0
1c002698:	03400000 	andi	$r0,$r0,0x0
1c00269c:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c0026a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0026a4:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c0026a8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00268c <MatrixKey+0x78c>
1c0026ac:	03400000 	andi	$r0,$r0,0x0
1c0026b0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0026b4:	57f30fff 	bl	-3316(0xffff30c) # 1c0019c0 <gpio_read>
1c0026b8:	0015008c 	move	$r12,$r4
1c0026bc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0026b0 <MatrixKey+0x7b0>
1c0026c0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0026c4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0026c8:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c0026cc:	50001400 	b	20(0x14) # 1c0026e0 <MatrixKey+0x7e0>
1c0026d0:	03400000 	andi	$r0,$r0,0x0
1c0026d4:	03400000 	andi	$r0,$r0,0x0
1c0026d8:	03400000 	andi	$r0,$r0,0x0
1c0026dc:	03400000 	andi	$r0,$r0,0x0
1c0026e0:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c0026e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0026e8:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c0026ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0026d0 <MatrixKey+0x7d0>
1c0026f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0026f4:	50012000 	b	288(0x120) # 1c002814 <MatrixKey+0x914>
1c0026f8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0026fc:	57f2c7ff 	bl	-3388(0xffff2c4) # 1c0019c0 <gpio_read>
1c002700:	0015008c 	move	$r12,$r4
1c002704:	44008180 	bnez	$r12,128(0x80) # 1c002784 <MatrixKey+0x884>
1c002708:	1400008c 	lu12i.w	$r12,4(0x4)
1c00270c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002710:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c002714:	50001400 	b	20(0x14) # 1c002728 <MatrixKey+0x828>
1c002718:	03400000 	andi	$r0,$r0,0x0
1c00271c:	03400000 	andi	$r0,$r0,0x0
1c002720:	03400000 	andi	$r0,$r0,0x0
1c002724:	03400000 	andi	$r0,$r0,0x0
1c002728:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c00272c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002730:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c002734:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002718 <MatrixKey+0x818>
1c002738:	03400000 	andi	$r0,$r0,0x0
1c00273c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002740:	57f283ff 	bl	-3456(0xffff280) # 1c0019c0 <gpio_read>
1c002744:	0015008c 	move	$r12,$r4
1c002748:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00273c <MatrixKey+0x83c>
1c00274c:	1400008c 	lu12i.w	$r12,4(0x4)
1c002750:	03a3d98c 	ori	$r12,$r12,0x8f6
1c002754:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c002758:	50001400 	b	20(0x14) # 1c00276c <MatrixKey+0x86c>
1c00275c:	03400000 	andi	$r0,$r0,0x0
1c002760:	03400000 	andi	$r0,$r0,0x0
1c002764:	03400000 	andi	$r0,$r0,0x0
1c002768:	03400000 	andi	$r0,$r0,0x0
1c00276c:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c002770:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002774:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c002778:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00275c <MatrixKey+0x85c>
1c00277c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c002780:	50009400 	b	148(0x94) # 1c002814 <MatrixKey+0x914>
1c002784:	02804404 	addi.w	$r4,$r0,17(0x11)
1c002788:	57f23bff 	bl	-3528(0xffff238) # 1c0019c0 <gpio_read>
1c00278c:	0015008c 	move	$r12,$r4
1c002790:	44008180 	bnez	$r12,128(0x80) # 1c002810 <MatrixKey+0x910>
1c002794:	1400008c 	lu12i.w	$r12,4(0x4)
1c002798:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00279c:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c0027a0:	50001400 	b	20(0x14) # 1c0027b4 <MatrixKey+0x8b4>
1c0027a4:	03400000 	andi	$r0,$r0,0x0
1c0027a8:	03400000 	andi	$r0,$r0,0x0
1c0027ac:	03400000 	andi	$r0,$r0,0x0
1c0027b0:	03400000 	andi	$r0,$r0,0x0
1c0027b4:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c0027b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0027bc:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c0027c0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0027a4 <MatrixKey+0x8a4>
1c0027c4:	03400000 	andi	$r0,$r0,0x0
1c0027c8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0027cc:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c0019c0 <gpio_read>
1c0027d0:	0015008c 	move	$r12,$r4
1c0027d4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0027c8 <MatrixKey+0x8c8>
1c0027d8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0027dc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0027e0:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c0027e4:	50001400 	b	20(0x14) # 1c0027f8 <MatrixKey+0x8f8>
1c0027e8:	03400000 	andi	$r0,$r0,0x0
1c0027ec:	03400000 	andi	$r0,$r0,0x0
1c0027f0:	03400000 	andi	$r0,$r0,0x0
1c0027f4:	03400000 	andi	$r0,$r0,0x0
1c0027f8:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c0027fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002800:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c002804:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0027e8 <MatrixKey+0x8e8>
1c002808:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00280c:	50000800 	b	8(0x8) # 1c002814 <MatrixKey+0x914>
1c002810:	0015000c 	move	$r12,$r0
1c002814:	00150184 	move	$r4,$r12
1c002818:	28823061 	ld.w	$r1,$r3,140(0x8c)
1c00281c:	28822076 	ld.w	$r22,$r3,136(0x88)
1c002820:	02824063 	addi.w	$r3,$r3,144(0x90)
1c002824:	4c000020 	jirl	$r0,$r1,0

1c002828 <Buzzer>:
Buzzer():
1c002828:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00282c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002830:	29806076 	st.w	$r22,$r3,24(0x18)
1c002834:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002838:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00283c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c002840:	57f08bff 	bl	-3960(0xffff088) # 1c0018c8 <gpio_write>
1c002844:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002848:	03bfc98c 	ori	$r12,$r12,0xff2
1c00284c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002850:	50001400 	b	20(0x14) # 1c002864 <Buzzer+0x3c>
1c002854:	03400000 	andi	$r0,$r0,0x0
1c002858:	03400000 	andi	$r0,$r0,0x0
1c00285c:	03400000 	andi	$r0,$r0,0x0
1c002860:	03400000 	andi	$r0,$r0,0x0
1c002864:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002868:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00286c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002870:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002854 <Buzzer+0x2c>
1c002874:	00150005 	move	$r5,$r0
1c002878:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00287c:	57f04fff 	bl	-4020(0xffff04c) # 1c0018c8 <gpio_write>
1c002880:	03400000 	andi	$r0,$r0,0x0
1c002884:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002888:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00288c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002890:	4c000020 	jirl	$r0,$r1,0

1c002894 <TIM_GetITStatus>:
TIM_GetITStatus():
1c002894:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002898:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00289c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0028a8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0028ac:	2880018d 	ld.w	$r13,$r12,0
1c0028b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028b4:	0014b1ac 	and	$r12,$r13,$r12
1c0028b8:	40001180 	beqz	$r12,16(0x10) # 1c0028c8 <TIM_GetITStatus+0x34>
1c0028bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0028c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0028c4:	50000800 	b	8(0x8) # 1c0028cc <TIM_GetITStatus+0x38>
1c0028c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0028cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d0:	00150184 	move	$r4,$r12
1c0028d4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0028d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0028dc:	4c000020 	jirl	$r0,$r1,0

1c0028e0 <TIM_ClearIT>:
TIM_ClearIT():
1c0028e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0028e4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0028e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0028f0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0028f4:	2880018e 	ld.w	$r14,$r12,0
1c0028f8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0028fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002900:	001535cd 	or	$r13,$r14,$r13
1c002904:	2980018d 	st.w	$r13,$r12,0
1c002908:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00290c:	03800d8c 	ori	$r12,$r12,0x3
1c002910:	2a00018c 	ld.bu	$r12,$r12,0
1c002914:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002918:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00291c:	03800d8c 	ori	$r12,$r12,0x3
1c002920:	038005ad 	ori	$r13,$r13,0x1
1c002924:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002928:	2900018d 	st.b	$r13,$r12,0
1c00292c:	03400000 	andi	$r0,$r0,0x0
1c002930:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002934:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002938:	4c000020 	jirl	$r0,$r1,0

1c00293c <WriteCmd>:
WriteCmd():
1c00293c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002940:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002944:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002948:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00294c:	0015008c 	move	$r12,$r4
1c002950:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002954:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002958:	57f24fff 	bl	-3508(0xffff24c) # 1c001ba4 <soc_I2C_GenerateSTART>
1c00295c:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c002960:	57f2cfff 	bl	-3380(0xffff2cc) # 1c001c2c <soc_I2C_SendData>
1c002964:	57f313ff 	bl	-3312(0xffff310) # 1c001c74 <soc_I2C_wait>
1c002968:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c00296c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002970:	50001400 	b	20(0x14) # 1c002984 <WriteCmd+0x48>
1c002974:	03400000 	andi	$r0,$r0,0x0
1c002978:	03400000 	andi	$r0,$r0,0x0
1c00297c:	03400000 	andi	$r0,$r0,0x0
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002988:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00298c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002990:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002974 <WriteCmd+0x38>
1c002994:	00150004 	move	$r4,$r0
1c002998:	57f297ff 	bl	-3436(0xffff294) # 1c001c2c <soc_I2C_SendData>
1c00299c:	57f2dbff 	bl	-3368(0xffff2d8) # 1c001c74 <soc_I2C_wait>
1c0029a0:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0029a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0029a8:	50001400 	b	20(0x14) # 1c0029bc <WriteCmd+0x80>
1c0029ac:	03400000 	andi	$r0,$r0,0x0
1c0029b0:	03400000 	andi	$r0,$r0,0x0
1c0029b4:	03400000 	andi	$r0,$r0,0x0
1c0029b8:	03400000 	andi	$r0,$r0,0x0
1c0029bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0029c4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0029c8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0029ac <WriteCmd+0x70>
1c0029cc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0029d0:	00150184 	move	$r4,$r12
1c0029d4:	57f25bff 	bl	-3496(0xffff258) # 1c001c2c <soc_I2C_SendData>
1c0029d8:	57f29fff 	bl	-3428(0xffff29c) # 1c001c74 <soc_I2C_wait>
1c0029dc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0029e0:	57f20bff 	bl	-3576(0xffff208) # 1c001be8 <soc_I2C_GenerateSTOP>
1c0029e4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0029e8:	57f087ff 	bl	-3964(0xffff084) # 1c001a6c <soc_I2C_delay>
1c0029ec:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0029f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0029f4:	50001400 	b	20(0x14) # 1c002a08 <WriteCmd+0xcc>
1c0029f8:	03400000 	andi	$r0,$r0,0x0
1c0029fc:	03400000 	andi	$r0,$r0,0x0
1c002a00:	03400000 	andi	$r0,$r0,0x0
1c002a04:	03400000 	andi	$r0,$r0,0x0
1c002a08:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002a0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a10:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002a14:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0029f8 <WriteCmd+0xbc>
1c002a18:	03400000 	andi	$r0,$r0,0x0
1c002a1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a28:	4c000020 	jirl	$r0,$r1,0

1c002a2c <WriteDat>:
WriteDat():
1c002a2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a3c:	0015008c 	move	$r12,$r4
1c002a40:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a44:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a48:	57f15fff 	bl	-3748(0xffff15c) # 1c001ba4 <soc_I2C_GenerateSTART>
1c002a4c:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c002a50:	57f1dfff 	bl	-3620(0xffff1dc) # 1c001c2c <soc_I2C_SendData>
1c002a54:	57f223ff 	bl	-3552(0xffff220) # 1c001c74 <soc_I2C_wait>
1c002a58:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002a5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a60:	50001400 	b	20(0x14) # 1c002a74 <WriteDat+0x48>
1c002a64:	03400000 	andi	$r0,$r0,0x0
1c002a68:	03400000 	andi	$r0,$r0,0x0
1c002a6c:	03400000 	andi	$r0,$r0,0x0
1c002a70:	03400000 	andi	$r0,$r0,0x0
1c002a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a7c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002a80:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a64 <WriteDat+0x38>
1c002a84:	02810004 	addi.w	$r4,$r0,64(0x40)
1c002a88:	57f1a7ff 	bl	-3676(0xffff1a4) # 1c001c2c <soc_I2C_SendData>
1c002a8c:	57f1ebff 	bl	-3608(0xffff1e8) # 1c001c74 <soc_I2C_wait>
1c002a90:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002a94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a98:	50001400 	b	20(0x14) # 1c002aac <WriteDat+0x80>
1c002a9c:	03400000 	andi	$r0,$r0,0x0
1c002aa0:	03400000 	andi	$r0,$r0,0x0
1c002aa4:	03400000 	andi	$r0,$r0,0x0
1c002aa8:	03400000 	andi	$r0,$r0,0x0
1c002aac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ab0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ab4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002ab8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a9c <WriteDat+0x70>
1c002abc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002ac0:	00150184 	move	$r4,$r12
1c002ac4:	57f16bff 	bl	-3736(0xffff168) # 1c001c2c <soc_I2C_SendData>
1c002ac8:	57f1afff 	bl	-3668(0xffff1ac) # 1c001c74 <soc_I2C_wait>
1c002acc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002ad0:	57f11bff 	bl	-3816(0xffff118) # 1c001be8 <soc_I2C_GenerateSTOP>
1c002ad4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002ad8:	57ef97ff 	bl	-4204(0xfffef94) # 1c001a6c <soc_I2C_delay>
1c002adc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002ae0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ae4:	50001400 	b	20(0x14) # 1c002af8 <WriteDat+0xcc>
1c002ae8:	03400000 	andi	$r0,$r0,0x0
1c002aec:	03400000 	andi	$r0,$r0,0x0
1c002af0:	03400000 	andi	$r0,$r0,0x0
1c002af4:	03400000 	andi	$r0,$r0,0x0
1c002af8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002afc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b00:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002b04:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002ae8 <WriteDat+0xbc>
1c002b08:	03400000 	andi	$r0,$r0,0x0
1c002b0c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b10:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b14:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b18:	4c000020 	jirl	$r0,$r1,0

1c002b1c <OLED_Init>:
OLED_Init():
1c002b1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b24:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b2c:	140016cc 	lu12i.w	$r12,182(0xb6)
1c002b30:	0399418c 	ori	$r12,$r12,0x650
1c002b34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b38:	50001400 	b	20(0x14) # 1c002b4c <OLED_Init+0x30>
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	03400000 	andi	$r0,$r0,0x0
1c002b44:	03400000 	andi	$r0,$r0,0x0
1c002b48:	03400000 	andi	$r0,$r0,0x0
1c002b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b50:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b54:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b58:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002b3c <OLED_Init+0x20>
1c002b5c:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c002b60:	57fddfff 	bl	-548(0xffffddc) # 1c00293c <WriteCmd>
1c002b64:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002b68:	57fdd7ff 	bl	-556(0xffffdd4) # 1c00293c <WriteCmd>
1c002b6c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002b70:	57fdcfff 	bl	-564(0xffffdcc) # 1c00293c <WriteCmd>
1c002b74:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c002b78:	57fdc7ff 	bl	-572(0xffffdc4) # 1c00293c <WriteCmd>
1c002b7c:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c002b80:	57fdbfff 	bl	-580(0xffffdbc) # 1c00293c <WriteCmd>
1c002b84:	00150004 	move	$r4,$r0
1c002b88:	57fdb7ff 	bl	-588(0xffffdb4) # 1c00293c <WriteCmd>
1c002b8c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002b90:	57fdafff 	bl	-596(0xffffdac) # 1c00293c <WriteCmd>
1c002b94:	02810004 	addi.w	$r4,$r0,64(0x40)
1c002b98:	57fda7ff 	bl	-604(0xffffda4) # 1c00293c <WriteCmd>
1c002b9c:	02820404 	addi.w	$r4,$r0,129(0x81)
1c002ba0:	57fd9fff 	bl	-612(0xffffd9c) # 1c00293c <WriteCmd>
1c002ba4:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c002ba8:	57fd97ff 	bl	-620(0xffffd94) # 1c00293c <WriteCmd>
1c002bac:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c002bb0:	57fd8fff 	bl	-628(0xffffd8c) # 1c00293c <WriteCmd>
1c002bb4:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c002bb8:	57fd87ff 	bl	-636(0xffffd84) # 1c00293c <WriteCmd>
1c002bbc:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c002bc0:	57fd7fff 	bl	-644(0xffffd7c) # 1c00293c <WriteCmd>
1c002bc4:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c002bc8:	57fd77ff 	bl	-652(0xffffd74) # 1c00293c <WriteCmd>
1c002bcc:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c002bd0:	57fd6fff 	bl	-660(0xffffd6c) # 1c00293c <WriteCmd>
1c002bd4:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c002bd8:	57fd67ff 	bl	-668(0xffffd64) # 1c00293c <WriteCmd>
1c002bdc:	00150004 	move	$r4,$r0
1c002be0:	57fd5fff 	bl	-676(0xffffd5c) # 1c00293c <WriteCmd>
1c002be4:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c002be8:	57fd57ff 	bl	-684(0xffffd54) # 1c00293c <WriteCmd>
1c002bec:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c002bf0:	57fd4fff 	bl	-692(0xffffd4c) # 1c00293c <WriteCmd>
1c002bf4:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c002bf8:	57fd47ff 	bl	-700(0xffffd44) # 1c00293c <WriteCmd>
1c002bfc:	02808804 	addi.w	$r4,$r0,34(0x22)
1c002c00:	57fd3fff 	bl	-708(0xffffd3c) # 1c00293c <WriteCmd>
1c002c04:	02836804 	addi.w	$r4,$r0,218(0xda)
1c002c08:	57fd37ff 	bl	-716(0xffffd34) # 1c00293c <WriteCmd>
1c002c0c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c002c10:	57fd2fff 	bl	-724(0xffffd2c) # 1c00293c <WriteCmd>
1c002c14:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c002c18:	57fd27ff 	bl	-732(0xffffd24) # 1c00293c <WriteCmd>
1c002c1c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002c20:	57fd1fff 	bl	-740(0xffffd1c) # 1c00293c <WriteCmd>
1c002c24:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c002c28:	57fd17ff 	bl	-748(0xffffd14) # 1c00293c <WriteCmd>
1c002c2c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c002c30:	57fd0fff 	bl	-756(0xffffd0c) # 1c00293c <WriteCmd>
1c002c34:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c002c38:	57fd07ff 	bl	-764(0xffffd04) # 1c00293c <WriteCmd>
1c002c3c:	03400000 	andi	$r0,$r0,0x0
1c002c40:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002c44:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002c48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c4c:	4c000020 	jirl	$r0,$r1,0

1c002c50 <OLED_SetPos>:
OLED_SetPos():
1c002c50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c54:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002c58:	29806076 	st.w	$r22,$r3,24(0x18)
1c002c5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c60:	0015008c 	move	$r12,$r4
1c002c64:	001500ad 	move	$r13,$r5
1c002c68:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002c6c:	001501ac 	move	$r12,$r13
1c002c70:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002c74:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002c78:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c002c7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	57fcbbff 	bl	-840(0xffffcb8) # 1c00293c <WriteCmd>
1c002c88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002c8c:	0044918c 	srli.w	$r12,$r12,0x4
1c002c90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c94:	0380418c 	ori	$r12,$r12,0x10
1c002c98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002c9c:	00150184 	move	$r4,$r12
1c002ca0:	57fc9fff 	bl	-868(0xffffc9c) # 1c00293c <WriteCmd>
1c002ca4:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c002ca8:	0340398c 	andi	$r12,$r12,0xe
1c002cac:	00005d8c 	ext.w.b	$r12,$r12
1c002cb0:	0380058c 	ori	$r12,$r12,0x1
1c002cb4:	00005d8c 	ext.w.b	$r12,$r12
1c002cb8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002cbc:	00150184 	move	$r4,$r12
1c002cc0:	57fc7fff 	bl	-900(0xffffc7c) # 1c00293c <WriteCmd>
1c002cc4:	03400000 	andi	$r0,$r0,0x0
1c002cc8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ccc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002cd0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cd4:	4c000020 	jirl	$r0,$r1,0

1c002cd8 <OLED_Fill>:
OLED_Fill():
1c002cd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cdc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ce0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ce4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ce8:	0015008c 	move	$r12,$r4
1c002cec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002cf0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cf4:	50006400 	b	100(0x64) # 1c002d58 <OLED_Fill+0x80>
1c002cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cfc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d00:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c002d04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002d08:	00150184 	move	$r4,$r12
1c002d0c:	57fc33ff 	bl	-976(0xffffc30) # 1c00293c <WriteCmd>
1c002d10:	00150004 	move	$r4,$r0
1c002d14:	57fc2bff 	bl	-984(0xffffc28) # 1c00293c <WriteCmd>
1c002d18:	02804004 	addi.w	$r4,$r0,16(0x10)
1c002d1c:	57fc23ff 	bl	-992(0xffffc20) # 1c00293c <WriteCmd>
1c002d20:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002d24:	50001c00 	b	28(0x1c) # 1c002d40 <OLED_Fill+0x68>
1c002d28:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002d2c:	00150184 	move	$r4,$r12
1c002d30:	57fcffff 	bl	-772(0xffffcfc) # 1c002a2c <WriteDat>
1c002d34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d3c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d40:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002d44:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c002d48:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c002d28 <OLED_Fill+0x50>
1c002d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d58:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002d5c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002d60:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c002cf8 <OLED_Fill+0x20>
1c002d64:	03400000 	andi	$r0,$r0,0x0
1c002d68:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d6c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d70:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d74:	4c000020 	jirl	$r0,$r1,0

1c002d78 <OLED_CLS>:
OLED_CLS():
1c002d78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002d7c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002d80:	29802076 	st.w	$r22,$r3,8(0x8)
1c002d84:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002d88:	00150004 	move	$r4,$r0
1c002d8c:	57ff4fff 	bl	-180(0xfffff4c) # 1c002cd8 <OLED_Fill>
1c002d90:	03400000 	andi	$r0,$r0,0x0
1c002d94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002d98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002d9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002da0:	4c000020 	jirl	$r0,$r1,0

1c002da4 <OLED_ShowStr>:
OLED_ShowStr():
1c002da4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002da8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002dac:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002db0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002db4:	0015008c 	move	$r12,$r4
1c002db8:	001500ae 	move	$r14,$r5
1c002dbc:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c002dc0:	001500ed 	move	$r13,$r7
1c002dc4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002dc8:	001501cc 	move	$r12,$r14
1c002dcc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002dd0:	001501ac 	move	$r12,$r13
1c002dd4:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c002dd8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002ddc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002de0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002de4:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c002de8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002dec:	5800bd8d 	beq	$r12,$r13,188(0xbc) # 1c002ea8 <OLED_ShowStr+0x104>
1c002df0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c002df4:	5801dd8d 	beq	$r12,$r13,476(0x1dc) # 1c002fd0 <OLED_ShowStr+0x22c>
1c002df8:	5001f000 	b	496(0x1f0) # 1c002fe8 <OLED_ShowStr+0x244>
1c002dfc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002e00:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002e04:	001031ac 	add.w	$r12,$r13,$r12
1c002e08:	2a00018c 	ld.bu	$r12,$r12,0
1c002e0c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c002e10:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e14:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c002e18:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c002e1c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c002e30 <OLED_ShowStr+0x8c>
1c002e20:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c002e24:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c002e28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e2c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002e30:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c002e34:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e38:	001501a5 	move	$r5,$r13
1c002e3c:	00150184 	move	$r4,$r12
1c002e40:	57fe13ff 	bl	-496(0xffffe10) # 1c002c50 <OLED_SetPos>
1c002e44:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002e48:	50003c00 	b	60(0x3c) # 1c002e84 <OLED_ShowStr+0xe0>
1c002e4c:	2a3fb6cf 	ld.bu	$r15,$r22,-19(0xfed)
1c002e50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002e54:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c002e58:	02a631ce 	addi.w	$r14,$r14,-1652(0x98c)
1c002e5c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c002e60:	001c35ed 	mul.w	$r13,$r15,$r13
1c002e64:	001035cd 	add.w	$r13,$r14,$r13
1c002e68:	001031ac 	add.w	$r12,$r13,$r12
1c002e6c:	2a00018c 	ld.bu	$r12,$r12,0
1c002e70:	00150184 	move	$r4,$r12
1c002e74:	57fbbbff 	bl	-1096(0xffffbb8) # 1c002a2c <WriteDat>
1c002e78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002e7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002e84:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002e88:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002e8c:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c002e4c <OLED_ShowStr+0xa8>
1c002e90:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002e94:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c002e98:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002e9c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ea4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002ea8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002eac:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002eb0:	001031ac 	add.w	$r12,$r13,$r12
1c002eb4:	2a00018c 	ld.bu	$r12,$r12,0
1c002eb8:	47ff459f 	bnez	$r12,-188(0x7fff44) # 1c002dfc <OLED_ShowStr+0x58>
1c002ebc:	50012c00 	b	300(0x12c) # 1c002fe8 <OLED_ShowStr+0x244>
1c002ec0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002ec4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002ec8:	001031ac 	add.w	$r12,$r13,$r12
1c002ecc:	2a00018c 	ld.bu	$r12,$r12,0
1c002ed0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c002ed4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002ed8:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c002edc:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c002ee0:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c002ef4 <OLED_ShowStr+0x150>
1c002ee4:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c002ee8:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c002eec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ef0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002ef4:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c002ef8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002efc:	001501a5 	move	$r5,$r13
1c002f00:	00150184 	move	$r4,$r12
1c002f04:	57fd4fff 	bl	-692(0xffffd4c) # 1c002c50 <OLED_SetPos>
1c002f08:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002f0c:	50003800 	b	56(0x38) # 1c002f44 <OLED_ShowStr+0x1a0>
1c002f10:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002f14:	0040918d 	slli.w	$r13,$r12,0x4
1c002f18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002f1c:	001031ac 	add.w	$r12,$r13,$r12
1c002f20:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c002f24:	02aba1ad 	addi.w	$r13,$r13,-1304(0xae8)
1c002f28:	001031ac 	add.w	$r12,$r13,$r12
1c002f2c:	2a00018c 	ld.bu	$r12,$r12,0
1c002f30:	00150184 	move	$r4,$r12
1c002f34:	57fafbff 	bl	-1288(0xffffaf8) # 1c002a2c <WriteDat>
1c002f38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002f3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002f44:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002f48:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002f4c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c002f10 <OLED_ShowStr+0x16c>
1c002f50:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c002f54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f58:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002f5c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f60:	001501a5 	move	$r5,$r13
1c002f64:	00150184 	move	$r4,$r12
1c002f68:	57fcebff 	bl	-792(0xffffce8) # 1c002c50 <OLED_SetPos>
1c002f6c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002f70:	50003c00 	b	60(0x3c) # 1c002fac <OLED_ShowStr+0x208>
1c002f74:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002f78:	0040918d 	slli.w	$r13,$r12,0x4
1c002f7c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002f80:	001031ac 	add.w	$r12,$r13,$r12
1c002f84:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002f88:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c002f8c:	02aa01ad 	addi.w	$r13,$r13,-1408(0xa80)
1c002f90:	001031ac 	add.w	$r12,$r13,$r12
1c002f94:	2a00018c 	ld.bu	$r12,$r12,0
1c002f98:	00150184 	move	$r4,$r12
1c002f9c:	57fa93ff 	bl	-1392(0xffffa90) # 1c002a2c <WriteDat>
1c002fa0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002fa8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002fac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002fb0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002fb4:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c002f74 <OLED_ShowStr+0x1d0>
1c002fb8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002fbc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c002fc0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002fc4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002fc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002fcc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002fd0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002fd4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002fd8:	001031ac 	add.w	$r12,$r13,$r12
1c002fdc:	2a00018c 	ld.bu	$r12,$r12,0
1c002fe0:	47fee19f 	bnez	$r12,-288(0x7ffee0) # 1c002ec0 <OLED_ShowStr+0x11c>
1c002fe4:	03400000 	andi	$r0,$r0,0x0
1c002fe8:	03400000 	andi	$r0,$r0,0x0
1c002fec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ff0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ff4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ff8:	4c000020 	jirl	$r0,$r1,0

1c002ffc <OLED_ShowCN>:
OLED_ShowCN():
1c002ffc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003000:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003004:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003008:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00300c:	0015008c 	move	$r12,$r4
1c003010:	001500ae 	move	$r14,$r5
1c003014:	001500cd 	move	$r13,$r6
1c003018:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00301c:	001501cc 	move	$r12,$r14
1c003020:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c003024:	001501ac 	move	$r12,$r13
1c003028:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c00302c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003030:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c003034:	0040958c 	slli.w	$r12,$r12,0x5
1c003038:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00303c:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c003040:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003044:	001501a5 	move	$r5,$r13
1c003048:	00150184 	move	$r4,$r12
1c00304c:	57fc07ff 	bl	-1020(0xffffc04) # 1c002c50 <OLED_SetPos>
1c003050:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003054:	50003800 	b	56(0x38) # 1c00308c <OLED_ShowCN+0x90>
1c003058:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c00305c:	02bee1ad 	addi.w	$r13,$r13,-72(0xfb8)
1c003060:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003064:	001031ac 	add.w	$r12,$r13,$r12
1c003068:	2a00018c 	ld.bu	$r12,$r12,0
1c00306c:	00150184 	move	$r4,$r12
1c003070:	57f9bfff 	bl	-1604(0xffff9bc) # 1c002a2c <WriteDat>
1c003074:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00307c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003080:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003088:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00308c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003090:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003094:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c003058 <OLED_ShowCN+0x5c>
1c003098:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c00309c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0030a4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0030a8:	001501a5 	move	$r5,$r13
1c0030ac:	00150184 	move	$r4,$r12
1c0030b0:	57fba3ff 	bl	-1120(0xffffba0) # 1c002c50 <OLED_SetPos>
1c0030b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0030b8:	50003800 	b	56(0x38) # 1c0030f0 <OLED_ShowCN+0xf4>
1c0030bc:	1cc7ffcd 	pcaddu12i	$r13,409598(0x63ffe)
1c0030c0:	02bd51ad 	addi.w	$r13,$r13,-172(0xf54)
1c0030c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030c8:	001031ac 	add.w	$r12,$r13,$r12
1c0030cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0030d0:	00150184 	move	$r4,$r12
1c0030d4:	57f95bff 	bl	-1704(0xffff958) # 1c002a2c <WriteDat>
1c0030d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0030e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0030e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0030f0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0030f4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0030f8:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0030bc <OLED_ShowCN+0xc0>
1c0030fc:	03400000 	andi	$r0,$r0,0x0
1c003100:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003104:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003108:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00310c:	4c000020 	jirl	$r0,$r1,0

1c003110 <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c003110:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003114:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003118:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00311c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003120:	0015008c 	move	$r12,$r4
1c003124:	001500af 	move	$r15,$r5
1c003128:	001500ce 	move	$r14,$r6
1c00312c:	001500ed 	move	$r13,$r7
1c003130:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003134:	001501ec 	move	$r12,$r15
1c003138:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00313c:	001501cc 	move	$r12,$r14
1c003140:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c003144:	001501ac 	move	$r12,$r13
1c003148:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c00314c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003150:	50004c00 	b	76(0x4c) # 1c00319c <OLED_ShowCN_STR+0x8c>
1c003154:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003158:	0040918c 	slli.w	$r12,$r12,0x4
1c00315c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003160:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003164:	001031ac 	add.w	$r12,$r13,$r12
1c003168:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00316c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003170:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c003174:	001031ac 	add.w	$r12,$r13,$r12
1c003178:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00317c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c003180:	001501a6 	move	$r6,$r13
1c003184:	00150185 	move	$r5,$r12
1c003188:	001501c4 	move	$r4,$r14
1c00318c:	57fe73ff 	bl	-400(0xffffe70) # 1c002ffc <OLED_ShowCN>
1c003190:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003194:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003198:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00319c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0031a0:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c0031a4:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c003154 <OLED_ShowCN_STR+0x44>
1c0031a8:	03400000 	andi	$r0,$r0,0x0
1c0031ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031b8:	4c000020 	jirl	$r0,$r1,0

1c0031bc <OLED_DrawBMP>:
OLED_DrawBMP():
1c0031bc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0031c0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0031c4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0031c8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0031cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031d0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0031d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0031d8:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0031dc:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c0031e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031e4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0031e8:	03401d8c 	andi	$r12,$r12,0x7
1c0031ec:	44002980 	bnez	$r12,40(0x28) # 1c003214 <OLED_DrawBMP+0x58>
1c0031f0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0031f4:	02801d8e 	addi.w	$r14,$r12,7(0x7)
1c0031f8:	0200018d 	slti	$r13,$r12,0
1c0031fc:	001335ce 	maskeqz	$r14,$r14,$r13
1c003200:	0013b58c 	masknez	$r12,$r12,$r13
1c003204:	001531cc 	or	$r12,$r14,$r12
1c003208:	00488d8c 	srai.w	$r12,$r12,0x3
1c00320c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003210:	50002800 	b	40(0x28) # 1c003238 <OLED_DrawBMP+0x7c>
1c003214:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c003218:	02801d8e 	addi.w	$r14,$r12,7(0x7)
1c00321c:	0200018d 	slti	$r13,$r12,0
1c003220:	001335ce 	maskeqz	$r14,$r14,$r13
1c003224:	0013b58c 	masknez	$r12,$r12,$r13
1c003228:	001531cc 	or	$r12,$r14,$r12
1c00322c:	00488d8c 	srai.w	$r12,$r12,0x3
1c003230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003234:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003238:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00323c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003240:	50007000 	b	112(0x70) # 1c0032b0 <OLED_DrawBMP+0xf4>
1c003244:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003248:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00324c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c003250:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003254:	001501a5 	move	$r5,$r13
1c003258:	00150184 	move	$r4,$r12
1c00325c:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c002c50 <OLED_SetPos>
1c003260:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003264:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003268:	50003000 	b	48(0x30) # 1c003298 <OLED_DrawBMP+0xdc>
1c00326c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003270:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003274:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003278:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00327c:	001031ac 	add.w	$r12,$r13,$r12
1c003280:	2a00018c 	ld.bu	$r12,$r12,0
1c003284:	00150184 	move	$r4,$r12
1c003288:	57f7a7ff 	bl	-2140(0xffff7a4) # 1c002a2c <WriteDat>
1c00328c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003290:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003294:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003298:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00329c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032a0:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c00326c <OLED_DrawBMP+0xb0>
1c0032a4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0032a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0032ac:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0032b0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0032b4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0032b8:	6bff8dac 	bltu	$r13,$r12,-116(0x3ff8c) # 1c003244 <OLED_DrawBMP+0x88>
1c0032bc:	03400000 	andi	$r0,$r0,0x0
1c0032c0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0032c4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0032c8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0032cc:	4c000020 	jirl	$r0,$r1,0

1c0032d0 <OLED_ShowChar>:
OLED_ShowChar():
1c0032d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0032d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0032d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0032dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0032e0:	0015008c 	move	$r12,$r4
1c0032e4:	001500af 	move	$r15,$r5
1c0032e8:	001500ce 	move	$r14,$r6
1c0032ec:	001500ed 	move	$r13,$r7
1c0032f0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0032f4:	001501ec 	move	$r12,$r15
1c0032f8:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0032fc:	001501cc 	move	$r12,$r14
1c003300:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c003304:	001501ac 	move	$r12,$r13
1c003308:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c00330c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003310:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003314:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c003318:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00331c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003320:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c003324:	64001580 	bge	$r12,$r0,20(0x14) # 1c003338 <OLED_ShowChar+0x68>
1c003328:	293f7ec0 	st.b	$r0,$r22,-33(0xfdf)
1c00332c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c003330:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c003334:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c003338:	2a3f72cd 	ld.bu	$r13,$r22,-36(0xfdc)
1c00333c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003340:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c00340c <OLED_ShowChar+0x13c>
1c003344:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c003348:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00334c:	001501a5 	move	$r5,$r13
1c003350:	00150184 	move	$r4,$r12
1c003354:	57f8ffff 	bl	-1796(0xffff8fc) # 1c002c50 <OLED_SetPos>
1c003358:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00335c:	50003800 	b	56(0x38) # 1c003394 <OLED_ShowChar+0xc4>
1c003360:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003364:	0040918d 	slli.w	$r13,$r12,0x4
1c003368:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00336c:	001031ac 	add.w	$r12,$r13,$r12
1c003370:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c003374:	029a61ad 	addi.w	$r13,$r13,1688(0x698)
1c003378:	001031ac 	add.w	$r12,$r13,$r12
1c00337c:	2a00018c 	ld.bu	$r12,$r12,0
1c003380:	00150184 	move	$r4,$r12
1c003384:	57f6abff 	bl	-2392(0xffff6a8) # 1c002a2c <WriteDat>
1c003388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00338c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003394:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003398:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00339c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c003360 <OLED_ShowChar+0x90>
1c0033a0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0033a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0033a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0033ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0033b0:	001501a5 	move	$r5,$r13
1c0033b4:	00150184 	move	$r4,$r12
1c0033b8:	57f89bff 	bl	-1896(0xffff898) # 1c002c50 <OLED_SetPos>
1c0033bc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033c0:	50003c00 	b	60(0x3c) # 1c0033fc <OLED_ShowChar+0x12c>
1c0033c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0033c8:	0040918d 	slli.w	$r13,$r12,0x4
1c0033cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033d0:	001031ac 	add.w	$r12,$r13,$r12
1c0033d4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0033d8:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c0033dc:	0298c1ad 	addi.w	$r13,$r13,1584(0x630)
1c0033e0:	001031ac 	add.w	$r12,$r13,$r12
1c0033e4:	2a00018c 	ld.bu	$r12,$r12,0
1c0033e8:	00150184 	move	$r4,$r12
1c0033ec:	57f643ff 	bl	-2496(0xffff640) # 1c002a2c <WriteDat>
1c0033f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0033f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003400:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c003404:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0033c4 <OLED_ShowChar+0xf4>
1c003408:	50006400 	b	100(0x64) # 1c00346c <OLED_ShowChar+0x19c>
1c00340c:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c003410:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003414:	001501a5 	move	$r5,$r13
1c003418:	00150184 	move	$r4,$r12
1c00341c:	57f837ff 	bl	-1996(0xffff834) # 1c002c50 <OLED_SetPos>
1c003420:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003424:	50003c00 	b	60(0x3c) # 1c003460 <OLED_ShowChar+0x190>
1c003428:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c00342c:	028ee1ad 	addi.w	$r13,$r13,952(0x3b8)
1c003430:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c003434:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003438:	001c31cc 	mul.w	$r12,$r14,$r12
1c00343c:	001031ad 	add.w	$r13,$r13,$r12
1c003440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003444:	001031ac 	add.w	$r12,$r13,$r12
1c003448:	2a00018c 	ld.bu	$r12,$r12,0
1c00344c:	00150184 	move	$r4,$r12
1c003450:	57f5dfff 	bl	-2596(0xffff5dc) # 1c002a2c <WriteDat>
1c003454:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003458:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00345c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003460:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003464:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003468:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c003428 <OLED_ShowChar+0x158>
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003474:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003478:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00347c:	4c000020 	jirl	$r0,$r1,0

1c003480 <oled_pow>:
oled_pow():
1c003480:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003484:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003488:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00348c:	0015008c 	move	$r12,$r4
1c003490:	001500ad 	move	$r13,$r5
1c003494:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003498:	001501ac 	move	$r12,$r13
1c00349c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0034a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0034a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034a8:	50001400 	b	20(0x14) # 1c0034bc <oled_pow+0x3c>
1c0034ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0034b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034b4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0034b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034bc:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0034c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034c4:	293f7acd 	st.b	$r13,$r22,-34(0xfde)
1c0034c8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0034ac <oled_pow+0x2c>
1c0034cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034d0:	00150184 	move	$r4,$r12
1c0034d4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0034d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034dc:	4c000020 	jirl	$r0,$r1,0

1c0034e0 <OLED_ShowNum>:
OLED_ShowNum():
1c0034e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034f0:	0015008c 	move	$r12,$r4
1c0034f4:	001500af 	move	$r15,$r5
1c0034f8:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c0034fc:	001500ee 	move	$r14,$r7
1c003500:	0015010d 	move	$r13,$r8
1c003504:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003508:	001501ec 	move	$r12,$r15
1c00350c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c003510:	001501cc 	move	$r12,$r14
1c003514:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c003518:	001501ac 	move	$r12,$r13
1c00351c:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c003520:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003524:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003528:	50012800 	b	296(0x128) # 1c003650 <OLED_ShowNum+0x170>
1c00352c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003530:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003534:	2a3f76cd 	ld.bu	$r13,$r22,-35(0xfdd)
1c003538:	001131ac 	sub.w	$r12,$r13,$r12
1c00353c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003540:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003544:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003548:	00150185 	move	$r5,$r12
1c00354c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c003550:	57ff33ff 	bl	-208(0xfffff30) # 1c003480 <oled_pow>
1c003554:	0015008d 	move	$r13,$r4
1c003558:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00355c:	0021358e 	div.wu	$r14,$r12,$r13
1c003560:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003568 <OLED_ShowNum+0x88>
1c003564:	002a0007 	break	0x7
1c003568:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00356c:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c003570:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003578 <OLED_ShowNum+0x98>
1c003574:	002a0007 	break	0x7
1c003578:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00357c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003580:	44007180 	bnez	$r12,112(0x70) # 1c0035f0 <OLED_ShowNum+0x110>
1c003584:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c003588:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00358c:	0015018d 	move	$r13,$r12
1c003590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003594:	6c005d8d 	bgeu	$r12,$r13,92(0x5c) # 1c0035f0 <OLED_ShowNum+0x110>
1c003598:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00359c:	44004d80 	bnez	$r12,76(0x4c) # 1c0035e8 <OLED_ShowNum+0x108>
1c0035a0:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c0035a4:	0044858c 	srli.w	$r12,$r12,0x1
1c0035a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0035b4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0035b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035bc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0035c0:	001031ac 	add.w	$r12,$r13,$r12
1c0035c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0035c8:	2a3f72ce 	ld.bu	$r14,$r22,-36(0xfdc)
1c0035cc:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c0035d0:	001501c7 	move	$r7,$r14
1c0035d4:	02808006 	addi.w	$r6,$r0,32(0x20)
1c0035d8:	001501a5 	move	$r5,$r13
1c0035dc:	00150184 	move	$r4,$r12
1c0035e0:	57fcf3ff 	bl	-784(0xffffcf0) # 1c0032d0 <OLED_ShowChar>
1c0035e4:	50006000 	b	96(0x60) # 1c003644 <OLED_ShowNum+0x164>
1c0035e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0035ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035f0:	2a3f72cc 	ld.bu	$r12,$r22,-36(0xfdc)
1c0035f4:	0044858c 	srli.w	$r12,$r12,0x1
1c0035f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003600:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003604:	001c31ac 	mul.w	$r12,$r13,$r12
1c003608:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00360c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003610:	001031ac 	add.w	$r12,$r13,$r12
1c003614:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003618:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00361c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003620:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003624:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003628:	2a3f72cf 	ld.bu	$r15,$r22,-36(0xfdc)
1c00362c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c003630:	001501e7 	move	$r7,$r15
1c003634:	001501c6 	move	$r6,$r14
1c003638:	00150185 	move	$r5,$r12
1c00363c:	001501a4 	move	$r4,$r13
1c003640:	57fc93ff 	bl	-880(0xffffc90) # 1c0032d0 <OLED_ShowChar>
1c003644:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003648:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00364c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003650:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c003654:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003658:	6bfed5ac 	bltu	$r13,$r12,-300(0x3fed4) # 1c00352c <OLED_ShowNum+0x4c>
1c00365c:	03400000 	andi	$r0,$r0,0x0
1c003660:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003664:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003668:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00366c:	4c000020 	jirl	$r0,$r1,0

1c003670 <my_GPIO_Init>:
my_GPIO_Init():
1c003670:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003674:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003678:	29806076 	st.w	$r22,$r3,24(0x18)
1c00367c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003680:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003684:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003688:	57e14bff 	bl	-7864(0xfffe148) # 1c0017d0 <gpio_init>
1c00368c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003690:	02803404 	addi.w	$r4,$r0,13(0xd)
1c003694:	57e13fff 	bl	-7876(0xfffe13c) # 1c0017d0 <gpio_init>
1c003698:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00369c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0036a0:	57e133ff 	bl	-7888(0xfffe130) # 1c0017d0 <gpio_init>
1c0036a4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036a8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0036ac:	57e127ff 	bl	-7900(0xfffe124) # 1c0017d0 <gpio_init>
1c0036b0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036b4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0036b8:	57e11bff 	bl	-7912(0xfffe118) # 1c0017d0 <gpio_init>
1c0036bc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036c0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0036c4:	57e10fff 	bl	-7924(0xfffe10c) # 1c0017d0 <gpio_init>
1c0036c8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036cc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0036d0:	57e103ff 	bl	-7936(0xfffe100) # 1c0017d0 <gpio_init>
1c0036d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036d8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0036dc:	57e0f7ff 	bl	-7948(0xfffe0f4) # 1c0017d0 <gpio_init>
1c0036e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036e4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0036e8:	57e0ebff 	bl	-7960(0xfffe0e8) # 1c0017d0 <gpio_init>
1c0036ec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036f0:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0036f4:	57e0dfff 	bl	-7972(0xfffe0dc) # 1c0017d0 <gpio_init>
1c0036f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036fc:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c003700:	57e0d3ff 	bl	-7984(0xfffe0d0) # 1c0017d0 <gpio_init>
1c003704:	00150005 	move	$r5,$r0
1c003708:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00370c:	57e0c7ff 	bl	-7996(0xfffe0c4) # 1c0017d0 <gpio_init>
1c003710:	00150005 	move	$r5,$r0
1c003714:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003718:	57e0bbff 	bl	-8008(0xfffe0b8) # 1c0017d0 <gpio_init>
1c00371c:	00150005 	move	$r5,$r0
1c003720:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003724:	57e0afff 	bl	-8020(0xfffe0ac) # 1c0017d0 <gpio_init>
1c003728:	00150005 	move	$r5,$r0
1c00372c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003730:	57e0a3ff 	bl	-8032(0xfffe0a0) # 1c0017d0 <gpio_init>
1c003734:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c003738:	03bf918c 	ori	$r12,$r12,0xfe4
1c00373c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003740:	50001400 	b	20(0x14) # 1c003754 <my_GPIO_Init+0xe4>
1c003744:	03400000 	andi	$r0,$r0,0x0
1c003748:	03400000 	andi	$r0,$r0,0x0
1c00374c:	03400000 	andi	$r0,$r0,0x0
1c003750:	03400000 	andi	$r0,$r0,0x0
1c003754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003758:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00375c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003760:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003744 <my_GPIO_Init+0xd4>
1c003764:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003768:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00376c:	57e15fff 	bl	-7844(0xfffe15c) # 1c0018c8 <gpio_write>
1c003770:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003774:	02803404 	addi.w	$r4,$r0,13(0xd)
1c003778:	57e153ff 	bl	-7856(0xfffe150) # 1c0018c8 <gpio_write>
1c00377c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003780:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003784:	57e147ff 	bl	-7868(0xfffe144) # 1c0018c8 <gpio_write>
1c003788:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00378c:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003790:	57e13bff 	bl	-7880(0xfffe138) # 1c0018c8 <gpio_write>
1c003794:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003798:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00379c:	57e12fff 	bl	-7892(0xfffe12c) # 1c0018c8 <gpio_write>
1c0037a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0037a4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0037a8:	57e123ff 	bl	-7904(0xfffe120) # 1c0018c8 <gpio_write>
1c0037ac:	00150005 	move	$r5,$r0
1c0037b0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0037b4:	57e117ff 	bl	-7916(0xfffe114) # 1c0018c8 <gpio_write>
1c0037b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0037bc:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0037c0:	57e10bff 	bl	-7928(0xfffe108) # 1c0018c8 <gpio_write>
1c0037c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0037c8:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0037cc:	57e0ffff 	bl	-7940(0xfffe0fc) # 1c0018c8 <gpio_write>
1c0037d0:	00150005 	move	$r5,$r0
1c0037d4:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0037d8:	57e0f3ff 	bl	-7952(0xfffe0f0) # 1c0018c8 <gpio_write>
1c0037dc:	00150005 	move	$r5,$r0
1c0037e0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0037e4:	57e0e7ff 	bl	-7964(0xfffe0e4) # 1c0018c8 <gpio_write>
1c0037e8:	140005ac 	lu12i.w	$r12,45(0x2d)
1c0037ec:	03a6518c 	ori	$r12,$r12,0x994
1c0037f0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0037f4:	50001400 	b	20(0x14) # 1c003808 <my_GPIO_Init+0x198>
1c0037f8:	03400000 	andi	$r0,$r0,0x0
1c0037fc:	03400000 	andi	$r0,$r0,0x0
1c003800:	03400000 	andi	$r0,$r0,0x0
1c003804:	03400000 	andi	$r0,$r0,0x0
1c003808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00380c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003810:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003814:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037f8 <my_GPIO_Init+0x188>
1c003818:	03400000 	andi	$r0,$r0,0x0
1c00381c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003820:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003824:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003828:	4c000020 	jirl	$r0,$r1,0

1c00382c <my_I2C_Init>:
my_I2C_Init():
1c00382c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003830:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003834:	29806076 	st.w	$r22,$r3,24(0x18)
1c003838:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00383c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003840:	00150184 	move	$r4,$r12
1c003844:	57e25fff 	bl	-7588(0xfffe25c) # 1c001aa0 <soc_I2C_StructInit>
1c003848:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00384c:	00150184 	move	$r4,$r12
1c003850:	57e29bff 	bl	-7528(0xfffe298) # 1c001ae8 <soc_I2C_Init>
1c003854:	1400016c 	lu12i.w	$r12,11(0xb)
1c003858:	0399958c 	ori	$r12,$r12,0x665
1c00385c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003860:	50001400 	b	20(0x14) # 1c003874 <my_I2C_Init+0x48>
1c003864:	03400000 	andi	$r0,$r0,0x0
1c003868:	03400000 	andi	$r0,$r0,0x0
1c00386c:	03400000 	andi	$r0,$r0,0x0
1c003870:	03400000 	andi	$r0,$r0,0x0
1c003874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003878:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00387c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003880:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003864 <my_I2C_Init+0x38>
1c003884:	03400000 	andi	$r0,$r0,0x0
1c003888:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00388c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003890:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003894:	4c000020 	jirl	$r0,$r1,0

1c003898 <my_PWM_Init>:
my_PWM_Init():
1c003898:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00389c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038a8:	57e457ff 	bl	-7084(0xfffe454) # 1c001cfc <pwm_steering_engine_init>
1c0038ac:	1400016c 	lu12i.w	$r12,11(0xb)
1c0038b0:	0399958c 	ori	$r12,$r12,0x665
1c0038b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038b8:	50001400 	b	20(0x14) # 1c0038cc <my_PWM_Init+0x34>
1c0038bc:	03400000 	andi	$r0,$r0,0x0
1c0038c0:	03400000 	andi	$r0,$r0,0x0
1c0038c4:	03400000 	andi	$r0,$r0,0x0
1c0038c8:	03400000 	andi	$r0,$r0,0x0
1c0038cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0038d4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0038d8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038bc <my_PWM_Init+0x24>
1c0038dc:	03400000 	andi	$r0,$r0,0x0
1c0038e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038ec:	4c000020 	jirl	$r0,$r1,0

1c0038f0 <Init_main>:
Init_main():
1c0038f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003900:	57e52bff 	bl	-6872(0xfffe528) # 1c001e28 <SG90_Init>
1c003904:	57f21bff 	bl	-3560(0xffff218) # 1c002b1c <OLED_Init>
1c003908:	57f473ff 	bl	-2960(0xffff470) # 1c002d78 <OLED_CLS>
1c00390c:	03400000 	andi	$r0,$r0,0x0
1c003910:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003914:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003918:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00391c:	4c000020 	jirl	$r0,$r1,0

1c003920 <Buffer_write>:
Buffer_write():
1c003920:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003924:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003928:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00392c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003930:	001500ac 	move	$r12,$r5
1c003934:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00393c:	2880018c 	ld.w	$r12,$r12,0
1c003940:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003944:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c003948:	0010358c 	add.w	$r12,$r12,$r13
1c00394c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c003950:	2900018d 	st.b	$r13,$r12,0
1c003954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003958:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00395c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003960:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003964:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003968:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00396c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003974:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003978:	60000dac 	blt	$r13,$r12,12(0xc) # 1c003984 <Buffer_write+0x64>
1c00397c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003980:	29803180 	st.w	$r0,$r12,12(0xc)
1c003984:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003988:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c00398c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003994:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003998:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00399c:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0039a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0039a8:	6400458d 	bge	$r12,$r13,68(0x44) # 1c0039ec <Buffer_write+0xcc>
1c0039ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0039b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b8:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0039bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039c0:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0039c4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0039c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039cc:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0039d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039d4:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c0039d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039dc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0039e0:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0039ec <Buffer_write+0xcc>
1c0039e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e8:	29802180 	st.w	$r0,$r12,8(0x8)
1c0039ec:	03400000 	andi	$r0,$r0,0x0
1c0039f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039f8:	4c000020 	jirl	$r0,$r1,0

1c0039fc <main>:
main():
1c0039fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a00:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a04:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a0c:	57fc67ff 	bl	-924(0xffffc64) # 1c003670 <my_GPIO_Init>
1c003a10:	57fe1fff 	bl	-484(0xffffe1c) # 1c00382c <my_I2C_Init>
1c003a14:	57fe87ff 	bl	-380(0xffffe84) # 1c003898 <my_PWM_Init>
1c003a18:	57fedbff 	bl	-296(0xffffed8) # 1c0038f0 <Init_main>
1c003a1c:	57e4e7ff 	bl	-6940(0xfffe4e4) # 1c001f00 <MatrixKey>
1c003a20:	0015008c 	move	$r12,$r4
1c003a24:	0015018d 	move	$r13,$r12
1c003a28:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003a2c:	0297c58c 	addi.w	$r12,$r12,1521(0x5f1)
1c003a30:	2900018d 	st.b	$r13,$r12,0
1c003a34:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003a38:	0280998c 	addi.w	$r12,$r12,38(0x26)
1c003a3c:	2a00018c 	ld.bu	$r12,$r12,0
1c003a40:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003a44:	5800a98d 	beq	$r12,$r13,168(0xa8) # 1c003aec <main+0xf0>
1c003a48:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003a4c:	58019d8d 	beq	$r12,$r13,412(0x19c) # 1c003be8 <main+0x1ec>
1c003a50:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003a54:	5c01f98d 	bne	$r12,$r13,504(0x1f8) # 1c003c4c <main+0x250>
1c003a58:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003a5c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c003a60:	2a00018d 	ld.bu	$r13,$r12,0
1c003a64:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003a68:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c003a80 <main+0x84>
1c003a6c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003a70:	5401f400 	bl	500(0x1f4) # 1c003c64 <interface_display>
1c003a74:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003a78:	02bf9d8c 	addi.w	$r12,$r12,-25(0xfe7)
1c003a7c:	29000180 	st.b	$r0,$r12,0
1c003a80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003a84:	0296658c 	addi.w	$r12,$r12,1433(0x599)
1c003a88:	2a00018d 	ld.bu	$r13,$r12,0
1c003a8c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003a90:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c003aa4 <main+0xa8>
1c003a94:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003a98:	02bf198c 	addi.w	$r12,$r12,-58(0xfc6)
1c003a9c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003aa0:	2900018d 	st.b	$r13,$r12,0
1c003aa4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003aa8:	0295d98c 	addi.w	$r12,$r12,1398(0x576)
1c003aac:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003ab0:	2900018d 	st.b	$r13,$r12,0
1c003ab4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003ab8:	0295958c 	addi.w	$r12,$r12,1381(0x565)
1c003abc:	2a00018d 	ld.bu	$r13,$r12,0
1c003ac0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003ac4:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c003ad8 <main+0xdc>
1c003ac8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003acc:	02be498c 	addi.w	$r12,$r12,-110(0xf92)
1c003ad0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c003ad4:	2900018d 	st.b	$r13,$r12,0
1c003ad8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003adc:	0295158c 	addi.w	$r12,$r12,1349(0x545)
1c003ae0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003ae4:	2900018d 	st.b	$r13,$r12,0
1c003ae8:	50017800 	b	376(0x178) # 1c003c60 <main+0x264>
1c003aec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003af0:	0294b98c 	addi.w	$r12,$r12,1326(0x52e)
1c003af4:	2a00018d 	ld.bu	$r13,$r12,0
1c003af8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003afc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c003b14 <main+0x118>
1c003b00:	02800804 	addi.w	$r4,$r0,2(0x2)
1c003b04:	54016000 	bl	352(0x160) # 1c003c64 <interface_display>
1c003b08:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003b0c:	0294498c 	addi.w	$r12,$r12,1298(0x512)
1c003b10:	29000180 	st.b	$r0,$r12,0
1c003b14:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003b18:	0294158c 	addi.w	$r12,$r12,1285(0x505)
1c003b1c:	2a00018d 	ld.bu	$r13,$r12,0
1c003b20:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b24:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c003b48 <main+0x14c>
1c003b28:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003b2c:	02bcc98c 	addi.w	$r12,$r12,-206(0xf32)
1c003b30:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c003b34:	2900018d 	st.b	$r13,$r12,0
1c003b38:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003b3c:	02938d8c 	addi.w	$r12,$r12,1251(0x4e3)
1c003b40:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003b44:	2900018d 	st.b	$r13,$r12,0
1c003b48:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003b4c:	0293458c 	addi.w	$r12,$r12,1233(0x4d1)
1c003b50:	2a00018d 	ld.bu	$r13,$r12,0
1c003b54:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c003b58:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c003b7c <main+0x180>
1c003b5c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003b60:	02bbf98c 	addi.w	$r12,$r12,-258(0xefe)
1c003b64:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003b68:	2900018d 	st.b	$r13,$r12,0
1c003b6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003b70:	0292c18c 	addi.w	$r12,$r12,1200(0x4b0)
1c003b74:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003b78:	2900018d 	st.b	$r13,$r12,0
1c003b7c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003b80:	0292758c 	addi.w	$r12,$r12,1181(0x49d)
1c003b84:	2a00018d 	ld.bu	$r13,$r12,0
1c003b88:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003b8c:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c003bb0 <main+0x1b4>
1c003b90:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003b94:	02bb298c 	addi.w	$r12,$r12,-310(0xeca)
1c003b98:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c003b9c:	2900018d 	st.b	$r13,$r12,0
1c003ba0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003ba4:	0291f98c 	addi.w	$r12,$r12,1150(0x47e)
1c003ba8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003bac:	2900018d 	st.b	$r13,$r12,0
1c003bb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003bb4:	0291a58c 	addi.w	$r12,$r12,1129(0x469)
1c003bb8:	2a00018d 	ld.bu	$r13,$r12,0
1c003bbc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003bc0:	5c0095ac 	bne	$r13,$r12,148(0x94) # 1c003c54 <main+0x258>
1c003bc4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003bc8:	02ba598c 	addi.w	$r12,$r12,-362(0xe96)
1c003bcc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003bd0:	2900018d 	st.b	$r13,$r12,0
1c003bd4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003bd8:	02ba1d8c 	addi.w	$r12,$r12,-377(0xe87)
1c003bdc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003be0:	2900018d 	st.b	$r13,$r12,0
1c003be4:	50007000 	b	112(0x70) # 1c003c54 <main+0x258>
1c003be8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003bec:	0290d18c 	addi.w	$r12,$r12,1076(0x434)
1c003bf0:	2a00018d 	ld.bu	$r13,$r12,0
1c003bf4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003bf8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c003c10 <main+0x214>
1c003bfc:	02801404 	addi.w	$r4,$r0,5(0x5)
1c003c00:	54006400 	bl	100(0x64) # 1c003c64 <interface_display>
1c003c04:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003c08:	0290618c 	addi.w	$r12,$r12,1048(0x418)
1c003c0c:	29000180 	st.b	$r0,$r12,0
1c003c10:	54090400 	bl	2308(0x904) # 1c004514 <Key_main>
1c003c14:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003c18:	0290158c 	addi.w	$r12,$r12,1029(0x405)
1c003c1c:	2a00018d 	ld.bu	$r13,$r12,0
1c003c20:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003c24:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c003c5c <main+0x260>
1c003c28:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003c2c:	02b8c98c 	addi.w	$r12,$r12,-462(0xe32)
1c003c30:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003c34:	2900018d 	st.b	$r13,$r12,0
1c003c38:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c003c3c:	028f898c 	addi.w	$r12,$r12,994(0x3e2)
1c003c40:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003c44:	2900018d 	st.b	$r13,$r12,0
1c003c48:	50001400 	b	20(0x14) # 1c003c5c <main+0x260>
1c003c4c:	03400000 	andi	$r0,$r0,0x0
1c003c50:	53fdcfff 	b	-564(0xffffdcc) # 1c003a1c <main+0x20>
1c003c54:	03400000 	andi	$r0,$r0,0x0
1c003c58:	53fdc7ff 	b	-572(0xffffdc4) # 1c003a1c <main+0x20>
1c003c5c:	03400000 	andi	$r0,$r0,0x0
1c003c60:	53fdbfff 	b	-580(0xffffdbc) # 1c003a1c <main+0x20>

1c003c64 <interface_display>:
interface_display():
1c003c64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c68:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c6c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c74:	0015008c 	move	$r12,$r4
1c003c78:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c7c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c80:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c003c84:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c004500 <interface_display+0x89c>
1c003c88:	0040898d 	slli.w	$r13,$r12,0x2
1c003c8c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c003c90:	0293918c 	addi.w	$r12,$r12,1252(0x4e4)
1c003c94:	001031ac 	add.w	$r12,$r13,$r12
1c003c98:	2880018c 	ld.w	$r12,$r12,0
1c003c9c:	4c000180 	jirl	$r0,$r12,0
1c003ca0:	57f0dbff 	bl	-3880(0xffff0d8) # 1c002d78 <OLED_CLS>
1c003ca4:	1c000048 	pcaddu12i	$r8,2(0x2)
1c003ca8:	028d5108 	addi.w	$r8,$r8,852(0x354)
1c003cac:	02801407 	addi.w	$r7,$r0,5(0x5)
1c003cb0:	02814006 	addi.w	$r6,$r0,80(0x50)
1c003cb4:	00150005 	move	$r5,$r0
1c003cb8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003cbc:	57f503ff 	bl	-2816(0xffff500) # 1c0031bc <OLED_DrawBMP>
1c003cc0:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c003cc4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003cc8:	00150004 	move	$r4,$r0
1c003ccc:	57f333ff 	bl	-3280(0xffff330) # 1c002ffc <OLED_ShowCN>
1c003cd0:	02802006 	addi.w	$r6,$r0,8(0x8)
1c003cd4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003cd8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003cdc:	57f323ff 	bl	-3296(0xffff320) # 1c002ffc <OLED_ShowCN>
1c003ce0:	02803406 	addi.w	$r6,$r0,13(0xd)
1c003ce4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003ce8:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c003cec:	57f313ff 	bl	-3312(0xffff310) # 1c002ffc <OLED_ShowCN>
1c003cf0:	02803806 	addi.w	$r6,$r0,14(0xe)
1c003cf4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003cf8:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c003cfc:	57f303ff 	bl	-3328(0xffff300) # 1c002ffc <OLED_ShowCN>
1c003d00:	50080000 	b	2048(0x800) # 1c004500 <interface_display+0x89c>
1c003d04:	57f077ff 	bl	-3980(0xffff074) # 1c002d78 <OLED_CLS>
1c003d08:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c003d0c:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c003d10:	00150005 	move	$r5,$r0
1c003d14:	02802804 	addi.w	$r4,$r0,10(0xa)
1c003d18:	57f3fbff 	bl	-3080(0xffff3f8) # 1c003110 <OLED_ShowCN_STR>
1c003d1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003d20:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d24:	0290f0c6 	addi.w	$r6,$r6,1084(0x43c)
1c003d28:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003d2c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003d30:	57f077ff 	bl	-3980(0xffff074) # 1c002da4 <OLED_ShowStr>
1c003d34:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003d38:	02801806 	addi.w	$r6,$r0,6(0x6)
1c003d3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003d40:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c003d44:	57f3cfff 	bl	-3124(0xffff3cc) # 1c003110 <OLED_ShowCN_STR>
1c003d48:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003d4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d50:	029050c6 	addi.w	$r6,$r6,1044(0x414)
1c003d54:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003d58:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003d5c:	57f04bff 	bl	-4024(0xffff048) # 1c002da4 <OLED_ShowStr>
1c003d60:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003d64:	02802406 	addi.w	$r6,$r0,9(0x9)
1c003d68:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003d6c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c003d70:	57f3a3ff 	bl	-3168(0xffff3a0) # 1c003110 <OLED_ShowCN_STR>
1c003d74:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003d78:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d7c:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c003d80:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003d84:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003d88:	57f01fff 	bl	-4068(0xffff01c) # 1c002da4 <OLED_ShowStr>
1c003d8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003d90:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c003d94:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003d98:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c003d9c:	57f377ff 	bl	-3212(0xffff374) # 1c003110 <OLED_ShowCN_STR>
1c003da0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003da4:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c003da8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003dac:	02812004 	addi.w	$r4,$r0,72(0x48)
1c003db0:	57f363ff 	bl	-3232(0xffff360) # 1c003110 <OLED_ShowCN_STR>
1c003db4:	50074c00 	b	1868(0x74c) # 1c004500 <interface_display+0x89c>
1c003db8:	57efc3ff 	bl	-4160(0xfffefc0) # 1c002d78 <OLED_CLS>
1c003dbc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003dc0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c003dc4:	00150005 	move	$r5,$r0
1c003dc8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003dcc:	57f347ff 	bl	-3260(0xffff344) # 1c003110 <OLED_ShowCN_STR>
1c003dd0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003dd4:	02803406 	addi.w	$r6,$r0,13(0xd)
1c003dd8:	00150005 	move	$r5,$r0
1c003ddc:	02811804 	addi.w	$r4,$r0,70(0x46)
1c003de0:	57f333ff 	bl	-3280(0xffff330) # 1c003110 <OLED_ShowCN_STR>
1c003de4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003de8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003dec:	028dd0c6 	addi.w	$r6,$r6,884(0x374)
1c003df0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003df4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003df8:	57efafff 	bl	-4180(0xfffefac) # 1c002da4 <OLED_ShowStr>
1c003dfc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c003e00:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003e04:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c003e08:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c002ffc <OLED_ShowCN>
1c003e0c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e10:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c003e14:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003e18:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c003e1c:	57f2f7ff 	bl	-3340(0xffff2f4) # 1c003110 <OLED_ShowCN_STR>
1c003e20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e24:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e28:	028cf0c6 	addi.w	$r6,$r6,828(0x33c)
1c003e2c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003e30:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003e34:	57ef73ff 	bl	-4240(0xfffef70) # 1c002da4 <OLED_ShowStr>
1c003e38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e3c:	02802406 	addi.w	$r6,$r0,9(0x9)
1c003e40:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003e44:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c003e48:	57f2cbff 	bl	-3384(0xffff2c8) # 1c003110 <OLED_ShowCN_STR>
1c003e4c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e50:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c003e54:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003e58:	02812004 	addi.w	$r4,$r0,72(0x48)
1c003e5c:	57f2b7ff 	bl	-3404(0xffff2b4) # 1c003110 <OLED_ShowCN_STR>
1c003e60:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e64:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e68:	028c00c6 	addi.w	$r6,$r6,768(0x300)
1c003e6c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003e70:	02805804 	addi.w	$r4,$r0,22(0x16)
1c003e74:	57ef33ff 	bl	-4304(0xfffef30) # 1c002da4 <OLED_ShowStr>
1c003e78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e7c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c003e80:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003e84:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c003e88:	57f28bff 	bl	-3448(0xffff288) # 1c003110 <OLED_ShowCN_STR>
1c003e8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003e90:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c003e94:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003e98:	02812004 	addi.w	$r4,$r0,72(0x48)
1c003e9c:	57f277ff 	bl	-3468(0xffff274) # 1c003110 <OLED_ShowCN_STR>
1c003ea0:	50066000 	b	1632(0x660) # 1c004500 <interface_display+0x89c>
1c003ea4:	57eed7ff 	bl	-4396(0xfffeed4) # 1c002d78 <OLED_CLS>
1c003ea8:	02805806 	addi.w	$r6,$r0,22(0x16)
1c003eac:	00150005 	move	$r5,$r0
1c003eb0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c003eb4:	57f14bff 	bl	-3768(0xffff148) # 1c002ffc <OLED_ShowCN>
1c003eb8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003ebc:	02808406 	addi.w	$r6,$r0,33(0x21)
1c003ec0:	00150005 	move	$r5,$r0
1c003ec4:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c003ec8:	57f24bff 	bl	-3512(0xffff248) # 1c003110 <OLED_ShowCN_STR>
1c003ecc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003ed0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c003ed4:	00150005 	move	$r5,$r0
1c003ed8:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c003edc:	57f237ff 	bl	-3532(0xffff234) # 1c003110 <OLED_ShowCN_STR>
1c003ee0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003ee4:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c003ee8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003eec:	00150004 	move	$r4,$r0
1c003ef0:	57f223ff 	bl	-3552(0xffff220) # 1c003110 <OLED_ShowCN_STR>
1c003ef4:	50060c00 	b	1548(0x60c) # 1c004500 <interface_display+0x89c>
1c003ef8:	57ee83ff 	bl	-4480(0xfffee80) # 1c002d78 <OLED_CLS>
1c003efc:	02801407 	addi.w	$r7,$r0,5(0x5)
1c003f00:	02805806 	addi.w	$r6,$r0,22(0x16)
1c003f04:	00150005 	move	$r5,$r0
1c003f08:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003f0c:	57f207ff 	bl	-3580(0xffff204) # 1c003110 <OLED_ShowCN_STR>
1c003f10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003f14:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c003f18:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003f1c:	00150004 	move	$r4,$r0
1c003f20:	57f1f3ff 	bl	-3600(0xffff1f0) # 1c003110 <OLED_ShowCN_STR>
1c003f24:	5005dc00 	b	1500(0x5dc) # 1c004500 <interface_display+0x89c>
1c003f28:	57ee53ff 	bl	-4528(0xfffee50) # 1c002d78 <OLED_CLS>
1c003f2c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003f30:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c003f34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003f38:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003f3c:	57f1d7ff 	bl	-3628(0xffff1d4) # 1c003110 <OLED_ShowCN_STR>
1c003f40:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003f44:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c003f48:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003f4c:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c003f50:	57f1c3ff 	bl	-3648(0xffff1c0) # 1c003110 <OLED_ShowCN_STR>
1c003f54:	5005ac00 	b	1452(0x5ac) # 1c004500 <interface_display+0x89c>
1c003f58:	57ee23ff 	bl	-4576(0xfffee20) # 1c002d78 <OLED_CLS>
1c003f5c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003f60:	02805806 	addi.w	$r6,$r0,22(0x16)
1c003f64:	00150005 	move	$r5,$r0
1c003f68:	00150004 	move	$r4,$r0
1c003f6c:	57f1a7ff 	bl	-3676(0xffff1a4) # 1c003110 <OLED_ShowCN_STR>
1c003f70:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c003f74:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c003f78:	00150005 	move	$r5,$r0
1c003f7c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c003f80:	57f193ff 	bl	-3696(0xffff190) # 1c003110 <OLED_ShowCN_STR>
1c003f84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003f88:	02806406 	addi.w	$r6,$r0,25(0x19)
1c003f8c:	00150005 	move	$r5,$r0
1c003f90:	02818004 	addi.w	$r4,$r0,96(0x60)
1c003f94:	57f17fff 	bl	-3716(0xffff17c) # 1c003110 <OLED_ShowCN_STR>
1c003f98:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003f9c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c003fa0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c003fa4:	00150004 	move	$r4,$r0
1c003fa8:	57f16bff 	bl	-3736(0xffff168) # 1c003110 <OLED_ShowCN_STR>
1c003fac:	50055400 	b	1364(0x554) # 1c004500 <interface_display+0x89c>
1c003fb0:	57edcbff 	bl	-4664(0xfffedc8) # 1c002d78 <OLED_CLS>
1c003fb4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003fb8:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c003fbc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003fc0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003fc4:	57f14fff 	bl	-3764(0xffff14c) # 1c003110 <OLED_ShowCN_STR>
1c003fc8:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c003fcc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003fd0:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c003fd4:	57f02bff 	bl	-4056(0xffff028) # 1c002ffc <OLED_ShowCN>
1c003fd8:	02808006 	addi.w	$r6,$r0,32(0x20)
1c003fdc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003fe0:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c003fe4:	57f01bff 	bl	-4072(0xffff018) # 1c002ffc <OLED_ShowCN>
1c003fe8:	50051800 	b	1304(0x518) # 1c004500 <interface_display+0x89c>
1c003fec:	57ed8fff 	bl	-4724(0xfffed8c) # 1c002d78 <OLED_CLS>
1c003ff0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003ff4:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c003ff8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003ffc:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004000:	57f113ff 	bl	-3824(0xffff110) # 1c003110 <OLED_ShowCN_STR>
1c004004:	5004fc00 	b	1276(0x4fc) # 1c004500 <interface_display+0x89c>
1c004008:	57ed73ff 	bl	-4752(0xfffed70) # 1c002d78 <OLED_CLS>
1c00400c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004010:	00150005 	move	$r5,$r0
1c004014:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004018:	57efe7ff 	bl	-4124(0xfffefe4) # 1c002ffc <OLED_ShowCN>
1c00401c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004020:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c004024:	00150005 	move	$r5,$r0
1c004028:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c00402c:	57f0e7ff 	bl	-3868(0xffff0e4) # 1c003110 <OLED_ShowCN_STR>
1c004030:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004034:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004038:	0284a0c6 	addi.w	$r6,$r6,296(0x128)
1c00403c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004040:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004044:	57ed63ff 	bl	-4768(0xfffed60) # 1c002da4 <OLED_ShowStr>
1c004048:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00404c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c004050:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004054:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004058:	57f0bbff 	bl	-3912(0xffff0b8) # 1c003110 <OLED_ShowCN_STR>
1c00405c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c004060:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004064:	02812004 	addi.w	$r4,$r0,72(0x48)
1c004068:	57ef97ff 	bl	-4204(0xfffef94) # 1c002ffc <OLED_ShowCN>
1c00406c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004070:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004074:	0283c0c6 	addi.w	$r6,$r6,240(0xf0)
1c004078:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00407c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004080:	57ed27ff 	bl	-4828(0xfffed24) # 1c002da4 <OLED_ShowStr>
1c004084:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004088:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c00408c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004090:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004094:	57f07fff 	bl	-3972(0xffff07c) # 1c003110 <OLED_ShowCN_STR>
1c004098:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00409c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0040a0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0040a4:	57ef5bff 	bl	-4264(0xfffef58) # 1c002ffc <OLED_ShowCN>
1c0040a8:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0040ac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0040b0:	02816004 	addi.w	$r4,$r0,88(0x58)
1c0040b4:	57ef4bff 	bl	-4280(0xfffef48) # 1c002ffc <OLED_ShowCN>
1c0040b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0040bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040c0:	0282a0c6 	addi.w	$r6,$r6,168(0xa8)
1c0040c4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0040c8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0040cc:	57ecdbff 	bl	-4904(0xfffecd8) # 1c002da4 <OLED_ShowStr>
1c0040d0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0040d4:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0040d8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0040dc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0040e0:	57f033ff 	bl	-4048(0xffff030) # 1c003110 <OLED_ShowCN_STR>
1c0040e4:	50041c00 	b	1052(0x41c) # 1c004500 <interface_display+0x89c>
1c0040e8:	57ec93ff 	bl	-4976(0xfffec90) # 1c002d78 <OLED_CLS>
1c0040ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0040f0:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0040f4:	00150005 	move	$r5,$r0
1c0040f8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0040fc:	57f017ff 	bl	-4076(0xffff014) # 1c003110 <OLED_ShowCN_STR>
1c004100:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004104:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c004108:	00150005 	move	$r5,$r0
1c00410c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c004110:	57f003ff 	bl	-4096(0xffff000) # 1c003110 <OLED_ShowCN_STR>
1c004114:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004118:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00411c:	028110c6 	addi.w	$r6,$r6,68(0x44)
1c004120:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004124:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004128:	57ec7fff 	bl	-4996(0xfffec7c) # 1c002da4 <OLED_ShowStr>
1c00412c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004130:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c004134:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004138:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00413c:	57efd7ff 	bl	-4140(0xfffefd4) # 1c003110 <OLED_ShowCN_STR>
1c004140:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004144:	02806406 	addi.w	$r6,$r0,25(0x19)
1c004148:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00414c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c004150:	57efc3ff 	bl	-4160(0xfffefc0) # 1c003110 <OLED_ShowCN_STR>
1c004154:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004158:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00415c:	028020c6 	addi.w	$r6,$r6,8(0x8)
1c004160:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004164:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004168:	57ec3fff 	bl	-5060(0xfffec3c) # 1c002da4 <OLED_ShowStr>
1c00416c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004170:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c004174:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004178:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00417c:	57ef97ff 	bl	-4204(0xfffef94) # 1c003110 <OLED_ShowCN_STR>
1c004180:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004184:	02806406 	addi.w	$r6,$r0,25(0x19)
1c004188:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00418c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c004190:	57ef83ff 	bl	-4224(0xfffef80) # 1c003110 <OLED_ShowCN_STR>
1c004194:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c004198:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00419c:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0041a0:	57ee5fff 	bl	-4516(0xfffee5c) # 1c002ffc <OLED_ShowCN>
1c0041a4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0041a8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0041ac:	02bef0c6 	addi.w	$r6,$r6,-68(0xfbc)
1c0041b0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0041b4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0041b8:	57ebefff 	bl	-5140(0xfffebec) # 1c002da4 <OLED_ShowStr>
1c0041bc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0041c0:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0041c4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0041c8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0041cc:	57ef47ff 	bl	-4284(0xfffef44) # 1c003110 <OLED_ShowCN_STR>
1c0041d0:	50033000 	b	816(0x330) # 1c004500 <interface_display+0x89c>
1c0041d4:	57eba7ff 	bl	-5212(0xfffeba4) # 1c002d78 <OLED_CLS>
1c0041d8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0041dc:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0041e0:	00150005 	move	$r5,$r0
1c0041e4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0041e8:	57ef2bff 	bl	-4312(0xfffef28) # 1c003110 <OLED_ShowCN_STR>
1c0041ec:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0041f0:	00150005 	move	$r5,$r0
1c0041f4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0041f8:	57ee07ff 	bl	-4604(0xfffee04) # 1c002ffc <OLED_ShowCN>
1c0041fc:	50030400 	b	772(0x304) # 1c004500 <interface_display+0x89c>
1c004200:	57eb7bff 	bl	-5256(0xfffeb78) # 1c002d78 <OLED_CLS>
1c004204:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004208:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c00420c:	00150005 	move	$r5,$r0
1c004210:	02809004 	addi.w	$r4,$r0,36(0x24)
1c004214:	57eeffff 	bl	-4356(0xfffeefc) # 1c003110 <OLED_ShowCN_STR>
1c004218:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00421c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c004220:	00150005 	move	$r5,$r0
1c004224:	02811004 	addi.w	$r4,$r0,68(0x44)
1c004228:	57eeebff 	bl	-4376(0xfffeee8) # 1c003110 <OLED_ShowCN_STR>
1c00422c:	5002d400 	b	724(0x2d4) # 1c004500 <interface_display+0x89c>
1c004230:	57eb4bff 	bl	-5304(0xfffeb48) # 1c002d78 <OLED_CLS>
1c004234:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c004238:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00423c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004240:	57edbfff 	bl	-4676(0xfffedbc) # 1c002ffc <OLED_ShowCN>
1c004244:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004248:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c00424c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004250:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c004254:	57eebfff 	bl	-4420(0xfffeebc) # 1c003110 <OLED_ShowCN_STR>
1c004258:	5002a800 	b	680(0x2a8) # 1c004500 <interface_display+0x89c>
1c00425c:	57eb1fff 	bl	-5348(0xfffeb1c) # 1c002d78 <OLED_CLS>
1c004260:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004264:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c004268:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00426c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c004270:	57eea3ff 	bl	-4448(0xfffeea0) # 1c003110 <OLED_ShowCN_STR>
1c004274:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c004278:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00427c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c004280:	57ed7fff 	bl	-4740(0xfffed7c) # 1c002ffc <OLED_ShowCN>
1c004284:	02808006 	addi.w	$r6,$r0,32(0x20)
1c004288:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00428c:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c004290:	57ed6fff 	bl	-4756(0xfffed6c) # 1c002ffc <OLED_ShowCN>
1c004294:	50026c00 	b	620(0x26c) # 1c004500 <interface_display+0x89c>
1c004298:	57eae3ff 	bl	-5408(0xfffeae0) # 1c002d78 <OLED_CLS>
1c00429c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0042a0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0042a4:	00150005 	move	$r5,$r0
1c0042a8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0042ac:	57ee67ff 	bl	-4508(0xfffee64) # 1c003110 <OLED_ShowCN_STR>
1c0042b0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0042b4:	00150005 	move	$r5,$r0
1c0042b8:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c0042bc:	57ed43ff 	bl	-4800(0xfffed40) # 1c002ffc <OLED_ShowCN>
1c0042c0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0042c4:	00150005 	move	$r5,$r0
1c0042c8:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c0042cc:	57ed33ff 	bl	-4816(0xfffed30) # 1c002ffc <OLED_ShowCN>
1c0042d0:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c0042d4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0042d8:	00150004 	move	$r4,$r0
1c0042dc:	57ed23ff 	bl	-4832(0xfffed20) # 1c002ffc <OLED_ShowCN>
1c0042e0:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c0042e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0042e8:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c0042ec:	57ed13ff 	bl	-4848(0xfffed10) # 1c002ffc <OLED_ShowCN>
1c0042f0:	50021000 	b	528(0x210) # 1c004500 <interface_display+0x89c>
1c0042f4:	57ea87ff 	bl	-5500(0xfffea84) # 1c002d78 <OLED_CLS>
1c0042f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0042fc:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c004300:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004304:	02806404 	addi.w	$r4,$r0,25(0x19)
1c004308:	57ee0bff 	bl	-4600(0xfffee08) # 1c003110 <OLED_ShowCN_STR>
1c00430c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004310:	02806406 	addi.w	$r6,$r0,25(0x19)
1c004314:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004318:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00431c:	57edf7ff 	bl	-4620(0xfffedf4) # 1c003110 <OLED_ShowCN_STR>
1c004320:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c004324:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004328:	02816404 	addi.w	$r4,$r0,89(0x59)
1c00432c:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c002ffc <OLED_ShowCN>
1c004330:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c004334:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004338:	00150004 	move	$r4,$r0
1c00433c:	57ecc3ff 	bl	-4928(0xfffecc0) # 1c002ffc <OLED_ShowCN>
1c004340:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c004344:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004348:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c00434c:	57ecb3ff 	bl	-4944(0xfffecb0) # 1c002ffc <OLED_ShowCN>
1c004350:	5001b000 	b	432(0x1b0) # 1c004500 <interface_display+0x89c>
1c004354:	57ea27ff 	bl	-5596(0xfffea24) # 1c002d78 <OLED_CLS>
1c004358:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00435c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c004360:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004364:	02806404 	addi.w	$r4,$r0,25(0x19)
1c004368:	57edabff 	bl	-4696(0xfffeda8) # 1c003110 <OLED_ShowCN_STR>
1c00436c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004370:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c004374:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004378:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00437c:	57ed97ff 	bl	-4716(0xfffed94) # 1c003110 <OLED_ShowCN_STR>
1c004380:	50018000 	b	384(0x180) # 1c004500 <interface_display+0x89c>
1c004384:	57e9f7ff 	bl	-5644(0xfffe9f4) # 1c002d78 <OLED_CLS>
1c004388:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00438c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c004390:	00150005 	move	$r5,$r0
1c004394:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004398:	57ed7bff 	bl	-4744(0xfffed78) # 1c003110 <OLED_ShowCN_STR>
1c00439c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0043a0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0043a4:	00150005 	move	$r5,$r0
1c0043a8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0043ac:	57ed67ff 	bl	-4764(0xfffed64) # 1c003110 <OLED_ShowCN_STR>
1c0043b0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0043b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0043b8:	02b6a0c6 	addi.w	$r6,$r6,-600(0xda8)
1c0043bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0043c0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0043c4:	57e9e3ff 	bl	-5664(0xfffe9e0) # 1c002da4 <OLED_ShowStr>
1c0043c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0043cc:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0043d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0043d4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0043d8:	57ed3bff 	bl	-4808(0xfffed38) # 1c003110 <OLED_ShowCN_STR>
1c0043dc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0043e0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0043e4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0043e8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0043ec:	57ed27ff 	bl	-4828(0xfffed24) # 1c003110 <OLED_ShowCN_STR>
1c0043f0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0043f4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0043f8:	02b5b0c6 	addi.w	$r6,$r6,-660(0xd6c)
1c0043fc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004400:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004404:	57e9a3ff 	bl	-5728(0xfffe9a0) # 1c002da4 <OLED_ShowStr>
1c004408:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00440c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c004410:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004414:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004418:	57ecfbff 	bl	-4872(0xfffecf8) # 1c003110 <OLED_ShowCN_STR>
1c00441c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004420:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c004424:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004428:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00442c:	57ece7ff 	bl	-4892(0xfffece4) # 1c003110 <OLED_ShowCN_STR>
1c004430:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c004434:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004438:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c00443c:	57ebc3ff 	bl	-5184(0xfffebc0) # 1c002ffc <OLED_ShowCN>
1c004440:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004444:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004448:	02b480c6 	addi.w	$r6,$r6,-736(0xd20)
1c00444c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004450:	02805804 	addi.w	$r4,$r0,22(0x16)
1c004454:	57e953ff 	bl	-5808(0xfffe950) # 1c002da4 <OLED_ShowStr>
1c004458:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00445c:	02809806 	addi.w	$r6,$r0,38(0x26)
1c004460:	02801805 	addi.w	$r5,$r0,6(0x6)
1c004464:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c004468:	57ecabff 	bl	-4952(0xfffeca8) # 1c003110 <OLED_ShowCN_STR>
1c00446c:	50009400 	b	148(0x94) # 1c004500 <interface_display+0x89c>
1c004470:	57e90bff 	bl	-5880(0xfffe908) # 1c002d78 <OLED_CLS>
1c004474:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004478:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c00447c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004480:	02806404 	addi.w	$r4,$r0,25(0x19)
1c004484:	57ec8fff 	bl	-4980(0xfffec8c) # 1c003110 <OLED_ShowCN_STR>
1c004488:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00448c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c004490:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004494:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004498:	57ec7bff 	bl	-5000(0xfffec78) # 1c003110 <OLED_ShowCN_STR>
1c00449c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0044a0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0044a4:	02816404 	addi.w	$r4,$r0,89(0x59)
1c0044a8:	57eb57ff 	bl	-5292(0xfffeb54) # 1c002ffc <OLED_ShowCN>
1c0044ac:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c0044b0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0044b4:	00150004 	move	$r4,$r0
1c0044b8:	57eb47ff 	bl	-5308(0xfffeb44) # 1c002ffc <OLED_ShowCN>
1c0044bc:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c0044c0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0044c4:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c0044c8:	57eb37ff 	bl	-5324(0xfffeb34) # 1c002ffc <OLED_ShowCN>
1c0044cc:	50003400 	b	52(0x34) # 1c004500 <interface_display+0x89c>
1c0044d0:	57e8abff 	bl	-5976(0xfffe8a8) # 1c002d78 <OLED_CLS>
1c0044d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0044d8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0044dc:	00150005 	move	$r5,$r0
1c0044e0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0044e4:	57ec2fff 	bl	-5076(0xfffec2c) # 1c003110 <OLED_ShowCN_STR>
1c0044e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0044ec:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0044f0:	00150005 	move	$r5,$r0
1c0044f4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0044f8:	57ec1bff 	bl	-5096(0xfffec18) # 1c003110 <OLED_ShowCN_STR>
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	03400000 	andi	$r0,$r0,0x0
1c004504:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004508:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00450c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004510:	4c000020 	jirl	$r0,$r1,0

1c004514 <Key_main>:
Key_main():
1c004514:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004518:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00451c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004520:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004524:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004528:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00452c:	02abc58c 	addi.w	$r12,$r12,-1295(0xaf1)
1c004530:	2a00018c 	ld.bu	$r12,$r12,0
1c004534:	4003fd80 	beqz	$r12,1020(0x3fc) # 1c004930 <Key_main+0x41c>
1c004538:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00453c:	02ab858c 	addi.w	$r12,$r12,-1311(0xae1)
1c004540:	2a00018d 	ld.bu	$r13,$r12,0
1c004544:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004548:	6801e18d 	bltu	$r12,$r13,480(0x1e0) # 1c004728 <Key_main+0x214>
1c00454c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004550:	28aae18c 	ld.w	$r12,$r12,-1352(0xab8)
1c004554:	2a40018d 	ld.hu	$r13,$r12,0
1c004558:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00455c:	68008d8d 	bltu	$r12,$r13,140(0x8c) # 1c0045e8 <Key_main+0xd4>
1c004560:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004564:	28aab18c 	ld.w	$r12,$r12,-1364(0xaac)
1c004568:	2a40018d 	ld.hu	$r13,$r12,0
1c00456c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004570:	001c31ac 	mul.w	$r12,$r13,$r12
1c004574:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004578:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c00457c:	28aa518c 	ld.w	$r12,$r12,-1388(0xa94)
1c004580:	2940018d 	st.h	$r13,$r12,0
1c004584:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004588:	02aa558c 	addi.w	$r12,$r12,-1387(0xa95)
1c00458c:	2a00018d 	ld.bu	$r13,$r12,0
1c004590:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004594:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004598:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0045a0 <Key_main+0x8c>
1c00459c:	002a0007 	break	0x7
1c0045a0:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0045a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0045a8:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045ac:	28a9918c 	ld.w	$r12,$r12,-1436(0xa64)
1c0045b0:	2a40018c 	ld.hu	$r12,$r12,0
1c0045b4:	001031ac 	add.w	$r12,$r13,$r12
1c0045b8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0045bc:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045c0:	28a9418c 	ld.w	$r12,$r12,-1456(0xa50)
1c0045c4:	2940018d 	st.h	$r13,$r12,0
1c0045c8:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045cc:	28a8f18c 	ld.w	$r12,$r12,-1476(0xa3c)
1c0045d0:	2a40018c 	ld.hu	$r12,$r12,0
1c0045d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045d8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0045dc:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045e0:	28a8a18c 	ld.w	$r12,$r12,-1496(0xa28)
1c0045e4:	2940018d 	st.h	$r13,$r12,0
1c0045e8:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045ec:	28a8918c 	ld.w	$r12,$r12,-1500(0xa24)
1c0045f0:	2a40018c 	ld.hu	$r12,$r12,0
1c0045f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0045f8:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0045fc:	28a8318c 	ld.w	$r12,$r12,-1524(0xa0c)
1c004600:	2a40018c 	ld.hu	$r12,$r12,0
1c004604:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004608:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00460c:	50007400 	b	116(0x74) # 1c004680 <Key_main+0x16c>
1c004610:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c004614:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c004618:	0020b5cc 	mod.w	$r12,$r14,$r13
1c00461c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004624 <Key_main+0x110>
1c004620:	002a0007 	break	0x7
1c004624:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c004628:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c00462c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c004630:	002035cc 	div.w	$r12,$r14,$r13
1c004634:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00463c <Key_main+0x128>
1c004638:	002a0007 	break	0x7
1c00463c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004640:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004644:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004648:	00408d8c 	slli.w	$r12,$r12,0x3
1c00464c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004650:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c004654:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004658:	28bf12cd 	ld.w	$r13,$r22,-60(0xfc4)
1c00465c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c004660:	02800407 	addi.w	$r7,$r0,1(0x1)
1c004664:	001501a6 	move	$r6,$r13
1c004668:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00466c:	00150184 	move	$r4,$r12
1c004670:	57ee73ff 	bl	-4496(0xfffee70) # 1c0034e0 <OLED_ShowNum>
1c004674:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004678:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00467c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004680:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004684:	67ff8d80 	bge	$r12,$r0,-116(0x3ff8c) # 1c004610 <Key_main+0xfc>
1c004688:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00468c:	03bf918c 	ori	$r12,$r12,0xfe4
1c004690:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004694:	50001400 	b	20(0x14) # 1c0046a8 <Key_main+0x194>
1c004698:	03400000 	andi	$r0,$r0,0x0
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	03400000 	andi	$r0,$r0,0x0
1c0046a4:	03400000 	andi	$r0,$r0,0x0
1c0046a8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0046ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046b0:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0046b4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004698 <Key_main+0x184>
1c0046b8:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0046bc:	50005400 	b	84(0x54) # 1c004710 <Key_main+0x1fc>
1c0046c0:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c0046c4:	28a5118c 	ld.w	$r12,$r12,-1724(0x944)
1c0046c8:	2a40018c 	ld.hu	$r12,$r12,0
1c0046cc:	0015018d 	move	$r13,$r12
1c0046d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0046d4:	001131ac 	sub.w	$r12,$r13,$r12
1c0046d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0046dc:	00408d8c 	slli.w	$r12,$r12,0x3
1c0046e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0046e4:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c0046e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0046ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0046f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0046f4:	02a9e0c6 	addi.w	$r6,$r6,-1416(0xa78)
1c0046f8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0046fc:	00150184 	move	$r4,$r12
1c004700:	57e6a7ff 	bl	-6492(0xfffe6a4) # 1c002da4 <OLED_ShowStr>
1c004704:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004708:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00470c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004710:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004714:	28a3d18c 	ld.w	$r12,$r12,-1804(0x8f4)
1c004718:	2a40018c 	ld.hu	$r12,$r12,0
1c00471c:	0015018d 	move	$r13,$r12
1c004720:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004724:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c0046c0 <Key_main+0x1ac>
1c004728:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00472c:	50004400 	b	68(0x44) # 1c004770 <Key_main+0x25c>
1c004730:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004734:	028c81ad 	addi.w	$r13,$r13,800(0x320)
1c004738:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00473c:	0040858c 	slli.w	$r12,$r12,0x1
1c004740:	001031ac 	add.w	$r12,$r13,$r12
1c004744:	2a40018d 	ld.hu	$r13,$r12,0
1c004748:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c00474c:	28a3118c 	ld.w	$r12,$r12,-1852(0x8c4)
1c004750:	2a40018c 	ld.hu	$r12,$r12,0
1c004754:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004764 <Key_main+0x250>
1c004758:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00475c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004760:	50001c00 	b	28(0x1c) # 1c00477c <Key_main+0x268>
1c004764:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004768:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00476c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004770:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004774:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c004778:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c004730 <Key_main+0x21c>
1c00477c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004780:	02a2758c 	addi.w	$r12,$r12,-1891(0x89d)
1c004784:	2a00018d 	ld.bu	$r13,$r12,0
1c004788:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00478c:	5c0129ac 	bne	$r13,$r12,296(0x128) # 1c0048b4 <Key_main+0x3a0>
1c004790:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004794:	4000bd80 	beqz	$r12,188(0xbc) # 1c004850 <Key_main+0x33c>
1c004798:	57e5e3ff 	bl	-6688(0xfffe5e0) # 1c002d78 <OLED_CLS>
1c00479c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0047a0:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c003c64 <interface_display>
1c0047a4:	57d6b3ff 	bl	-10576(0xfffd6b0) # 1c001e54 <SG90_Open>
1c0047a8:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c0047ac:	03bdc58c 	ori	$r12,$r12,0xf71
1c0047b0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0047b4:	50001400 	b	20(0x14) # 1c0047c8 <Key_main+0x2b4>
1c0047b8:	03400000 	andi	$r0,$r0,0x0
1c0047bc:	03400000 	andi	$r0,$r0,0x0
1c0047c0:	03400000 	andi	$r0,$r0,0x0
1c0047c4:	03400000 	andi	$r0,$r0,0x0
1c0047c8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0047cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0047d0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0047d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0047b8 <Key_main+0x2a4>
1c0047d8:	57d6abff 	bl	-10584(0xfffd6a8) # 1c001e80 <SG90_Close>
1c0047dc:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0047e0:	57f487ff 	bl	-2940(0xffff484) # 1c003c64 <interface_display>
1c0047e4:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c0047e8:	03bead8c 	ori	$r12,$r12,0xfab
1c0047ec:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0047f0:	50001400 	b	20(0x14) # 1c004804 <Key_main+0x2f0>
1c0047f4:	03400000 	andi	$r0,$r0,0x0
1c0047f8:	03400000 	andi	$r0,$r0,0x0
1c0047fc:	03400000 	andi	$r0,$r0,0x0
1c004800:	03400000 	andi	$r0,$r0,0x0
1c004804:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004808:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00480c:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c004810:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0047f4 <Key_main+0x2e0>
1c004814:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004818:	02891d8c 	addi.w	$r12,$r12,583(0x247)
1c00481c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004820:	2900018d 	st.b	$r13,$r12,0
1c004824:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004828:	0288d98c 	addi.w	$r12,$r12,566(0x236)
1c00482c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004830:	2900018d 	st.b	$r13,$r12,0
1c004834:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004838:	289f618c 	ld.w	$r12,$r12,2008(0x7d8)
1c00483c:	29400180 	st.h	$r0,$r12,0
1c004840:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004844:	289f118c 	ld.w	$r12,$r12,1988(0x7c4)
1c004848:	29400180 	st.h	$r0,$r12,0
1c00484c:	50006800 	b	104(0x68) # 1c0048b4 <Key_main+0x3a0>
1c004850:	57e52bff 	bl	-6872(0xfffe528) # 1c002d78 <OLED_CLS>
1c004854:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004858:	57f40fff 	bl	-3060(0xffff40c) # 1c003c64 <interface_display>
1c00485c:	57dfcfff 	bl	-8244(0xfffdfcc) # 1c002828 <Buzzer>
1c004860:	57d623ff 	bl	-10720(0xfffd620) # 1c001e80 <SG90_Close>
1c004864:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c004868:	03bead8c 	ori	$r12,$r12,0xfab
1c00486c:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c004870:	50001400 	b	20(0x14) # 1c004884 <Key_main+0x370>
1c004874:	03400000 	andi	$r0,$r0,0x0
1c004878:	03400000 	andi	$r0,$r0,0x0
1c00487c:	03400000 	andi	$r0,$r0,0x0
1c004880:	03400000 	andi	$r0,$r0,0x0
1c004884:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c004888:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00488c:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c004890:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004874 <Key_main+0x360>
1c004894:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004898:	289de18c 	ld.w	$r12,$r12,1912(0x778)
1c00489c:	29400180 	st.h	$r0,$r12,0
1c0048a0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0048a4:	289d918c 	ld.w	$r12,$r12,1892(0x764)
1c0048a8:	29400180 	st.h	$r0,$r12,0
1c0048ac:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0048b0:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c003c64 <interface_display>
1c0048b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0048b8:	029d958c 	addi.w	$r12,$r12,1893(0x765)
1c0048bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0048c0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0048c4:	5c006dac 	bne	$r13,$r12,108(0x6c) # 1c004930 <Key_main+0x41c>
1c0048c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0048cc:	289d118c 	ld.w	$r12,$r12,1860(0x744)
1c0048d0:	29400180 	st.h	$r0,$r12,0
1c0048d4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0048d8:	289cc18c 	ld.w	$r12,$r12,1840(0x730)
1c0048dc:	29400180 	st.h	$r0,$r12,0
1c0048e0:	29bf22c0 	st.w	$r0,$r22,-56(0xfc8)
1c0048e4:	50004000 	b	64(0x40) # 1c004924 <Key_main+0x410>
1c0048e8:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0048ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048f0:	00408d8c 	slli.w	$r12,$r12,0x3
1c0048f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0048f8:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0048fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004900:	02800807 	addi.w	$r7,$r0,2(0x2)
1c004904:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004908:	02a1a0c6 	addi.w	$r6,$r6,-1944(0x868)
1c00490c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c004910:	00150184 	move	$r4,$r12
1c004914:	57e493ff 	bl	-7024(0xfffe490) # 1c002da4 <OLED_ShowStr>
1c004918:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00491c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004920:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c004924:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c004928:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00492c:	67ffbd8d 	bge	$r12,$r13,-68(0x3ffbc) # 1c0048e8 <Key_main+0x3d4>
1c004930:	03400000 	andi	$r0,$r0,0x0
1c004934:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004938:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00493c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004940:	4c000020 	jirl	$r0,$r1,0

1c004944 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004944:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004948:	29803061 	st.w	$r1,$r3,12(0xc)
1c00494c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004950:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004954:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004958:	02a8d0c6 	addi.w	$r6,$r6,-1484(0xa34)
1c00495c:	02805005 	addi.w	$r5,$r0,20(0x14)
1c004960:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004964:	02a1a084 	addi.w	$r4,$r4,-1944(0x868)
1c004968:	57ca4fff 	bl	-13748(0xfffca4c) # 1c0013b4 <myprintf>
1c00496c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004970:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004974:	03808184 	ori	$r4,$r12,0x20
1c004978:	57c7f7ff 	bl	-14348(0xfffc7f4) # 1c00116c <EXTI_ClearITPendingBit>
1c00497c:	03400000 	andi	$r0,$r0,0x0
1c004980:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004984:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004988:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00498c:	4c000020 	jirl	$r0,$r1,0

1c004990 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c004990:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004994:	29803061 	st.w	$r1,$r3,12(0xc)
1c004998:	29802076 	st.w	$r22,$r3,8(0x8)
1c00499c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0049a4:	02a800c6 	addi.w	$r6,$r6,-1536(0xa00)
1c0049a8:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0049ac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049b0:	02a07084 	addi.w	$r4,$r4,-2020(0x81c)
1c0049b4:	57ca03ff 	bl	-13824(0xfffca00) # 1c0013b4 <myprintf>
1c0049b8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0049bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049c0:	03808184 	ori	$r4,$r12,0x20
1c0049c4:	57c7abff 	bl	-14424(0xfffc7a8) # 1c00116c <EXTI_ClearITPendingBit>
1c0049c8:	03400000 	andi	$r0,$r0,0x0
1c0049cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049d8:	4c000020 	jirl	$r0,$r1,0

1c0049dc <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0049dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0049f0:	02a730c6 	addi.w	$r6,$r6,-1588(0x9cc)
1c0049f4:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c0049f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0049fc:	029f4084 	addi.w	$r4,$r4,2000(0x7d0)
1c004a00:	57c9b7ff 	bl	-13900(0xfffc9b4) # 1c0013b4 <myprintf>
1c004a04:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004a08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a0c:	03808184 	ori	$r4,$r12,0x20
1c004a10:	57c75fff 	bl	-14500(0xfffc75c) # 1c00116c <EXTI_ClearITPendingBit>
1c004a14:	03400000 	andi	$r0,$r0,0x0
1c004a18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a24:	4c000020 	jirl	$r0,$r1,0

1c004a28 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004a28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a30:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a38:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a3c:	02a660c6 	addi.w	$r6,$r6,-1640(0x998)
1c004a40:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c004a44:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004a48:	029e1084 	addi.w	$r4,$r4,1924(0x784)
1c004a4c:	57c96bff 	bl	-13976(0xfffc968) # 1c0013b4 <myprintf>
1c004a50:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004a54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a58:	03808184 	ori	$r4,$r12,0x20
1c004a5c:	57c713ff 	bl	-14576(0xfffc710) # 1c00116c <EXTI_ClearITPendingBit>
1c004a60:	03400000 	andi	$r0,$r0,0x0
1c004a64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a70:	4c000020 	jirl	$r0,$r1,0

1c004a74 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004a74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a78:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a84:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a88:	02a590c6 	addi.w	$r6,$r6,-1692(0x964)
1c004a8c:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c004a90:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004a94:	029ce084 	addi.w	$r4,$r4,1848(0x738)
1c004a98:	57c91fff 	bl	-14052(0xfffc91c) # 1c0013b4 <myprintf>
1c004a9c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004aa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004aa4:	03808184 	ori	$r4,$r12,0x20
1c004aa8:	57c6c7ff 	bl	-14652(0xfffc6c4) # 1c00116c <EXTI_ClearITPendingBit>
1c004aac:	03400000 	andi	$r0,$r0,0x0
1c004ab0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ab4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ab8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004abc:	4c000020 	jirl	$r0,$r1,0

1c004ac0 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004ac0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ac4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ac8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004acc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ad0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004ad4:	02a4c0c6 	addi.w	$r6,$r6,-1744(0x930)
1c004ad8:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c004adc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ae0:	029bb084 	addi.w	$r4,$r4,1772(0x6ec)
1c004ae4:	57c8d3ff 	bl	-14128(0xfffc8d0) # 1c0013b4 <myprintf>
1c004ae8:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004aec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004af0:	03808184 	ori	$r4,$r12,0x20
1c004af4:	57c67bff 	bl	-14728(0xfffc678) # 1c00116c <EXTI_ClearITPendingBit>
1c004af8:	03400000 	andi	$r0,$r0,0x0
1c004afc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b08:	4c000020 	jirl	$r0,$r1,0

1c004b0c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004b0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b10:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b14:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b20:	02a3f0c6 	addi.w	$r6,$r6,-1796(0x8fc)
1c004b24:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c004b28:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004b2c:	029a8084 	addi.w	$r4,$r4,1696(0x6a0)
1c004b30:	57c887ff 	bl	-14204(0xfffc884) # 1c0013b4 <myprintf>
1c004b34:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004b38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b3c:	03808184 	ori	$r4,$r12,0x20
1c004b40:	57c62fff 	bl	-14804(0xfffc62c) # 1c00116c <EXTI_ClearITPendingBit>
1c004b44:	03400000 	andi	$r0,$r0,0x0
1c004b48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b54:	4c000020 	jirl	$r0,$r1,0

1c004b58 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004b58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b60:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004b6c:	02a320c6 	addi.w	$r6,$r6,-1848(0x8c8)
1c004b70:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c004b74:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004b78:	02995084 	addi.w	$r4,$r4,1620(0x654)
1c004b7c:	57c83bff 	bl	-14280(0xfffc838) # 1c0013b4 <myprintf>
1c004b80:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b88:	03808184 	ori	$r4,$r12,0x20
1c004b8c:	57c5e3ff 	bl	-14880(0xfffc5e0) # 1c00116c <EXTI_ClearITPendingBit>
1c004b90:	03400000 	andi	$r0,$r0,0x0
1c004b94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ba0:	4c000020 	jirl	$r0,$r1,0

1c004ba4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004ba4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ba8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bac:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bb4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004bb8:	02a250c6 	addi.w	$r6,$r6,-1900(0x894)
1c004bbc:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c004bc0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004bc4:	02982084 	addi.w	$r4,$r4,1544(0x608)
1c004bc8:	57c7efff 	bl	-14356(0xfffc7ec) # 1c0013b4 <myprintf>
1c004bcc:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004bd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bd4:	03808184 	ori	$r4,$r12,0x20
1c004bd8:	57c597ff 	bl	-14956(0xfffc594) # 1c00116c <EXTI_ClearITPendingBit>
1c004bdc:	03400000 	andi	$r0,$r0,0x0
1c004be0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004be4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004be8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bec:	4c000020 	jirl	$r0,$r1,0

1c004bf0 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004bf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004bf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004c04:	02a180c6 	addi.w	$r6,$r6,-1952(0x860)
1c004c08:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c004c0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004c10:	0296f084 	addi.w	$r4,$r4,1468(0x5bc)
1c004c14:	57c7a3ff 	bl	-14432(0xfffc7a0) # 1c0013b4 <myprintf>
1c004c18:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004c1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c20:	03808184 	ori	$r4,$r12,0x20
1c004c24:	57c54bff 	bl	-15032(0xfffc548) # 1c00116c <EXTI_ClearITPendingBit>
1c004c28:	03400000 	andi	$r0,$r0,0x0
1c004c2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c38:	4c000020 	jirl	$r0,$r1,0

1c004c3c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004c3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c40:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c44:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004c50:	02a0b0c6 	addi.w	$r6,$r6,-2004(0x82c)
1c004c54:	02812405 	addi.w	$r5,$r0,73(0x49)
1c004c58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004c5c:	0295c084 	addi.w	$r4,$r4,1392(0x570)
1c004c60:	57c757ff 	bl	-14508(0xfffc754) # 1c0013b4 <myprintf>
1c004c64:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004c68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c6c:	03808184 	ori	$r4,$r12,0x20
1c004c70:	57c4ffff 	bl	-15108(0xfffc4fc) # 1c00116c <EXTI_ClearITPendingBit>
1c004c74:	03400000 	andi	$r0,$r0,0x0
1c004c78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c84:	4c000020 	jirl	$r0,$r1,0

1c004c88 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004c88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c90:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c98:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004c9c:	029fe0c6 	addi.w	$r6,$r6,2040(0x7f8)
1c004ca0:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c004ca4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ca8:	02949084 	addi.w	$r4,$r4,1316(0x524)
1c004cac:	57c70bff 	bl	-14584(0xfffc708) # 1c0013b4 <myprintf>
1c004cb0:	03a00005 	ori	$r5,$r0,0x800
1c004cb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cb8:	03808184 	ori	$r4,$r12,0x20
1c004cbc:	57c4b3ff 	bl	-15184(0xfffc4b0) # 1c00116c <EXTI_ClearITPendingBit>
1c004cc0:	03400000 	andi	$r0,$r0,0x0
1c004cc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004cc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ccc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cd0:	4c000020 	jirl	$r0,$r1,0

1c004cd4 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004cd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004cd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004cdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ce0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ce4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004ce8:	029f10c6 	addi.w	$r6,$r6,1988(0x7c4)
1c004cec:	02815005 	addi.w	$r5,$r0,84(0x54)
1c004cf0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004cf4:	02936084 	addi.w	$r4,$r4,1240(0x4d8)
1c004cf8:	57c6bfff 	bl	-14660(0xfffc6bc) # 1c0013b4 <myprintf>
1c004cfc:	14000025 	lu12i.w	$r5,1(0x1)
1c004d00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d04:	03808184 	ori	$r4,$r12,0x20
1c004d08:	57c467ff 	bl	-15260(0xfffc464) # 1c00116c <EXTI_ClearITPendingBit>
1c004d0c:	03400000 	andi	$r0,$r0,0x0
1c004d10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d1c:	4c000020 	jirl	$r0,$r1,0

1c004d20 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004d20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d24:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d28:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d30:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004d34:	029e40c6 	addi.w	$r6,$r6,1936(0x790)
1c004d38:	02816405 	addi.w	$r5,$r0,89(0x59)
1c004d3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d40:	02923084 	addi.w	$r4,$r4,1164(0x48c)
1c004d44:	57c673ff 	bl	-14736(0xfffc670) # 1c0013b4 <myprintf>
1c004d48:	14000045 	lu12i.w	$r5,2(0x2)
1c004d4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d50:	03808184 	ori	$r4,$r12,0x20
1c004d54:	57c41bff 	bl	-15336(0xfffc418) # 1c00116c <EXTI_ClearITPendingBit>
1c004d58:	03400000 	andi	$r0,$r0,0x0
1c004d5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004d60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004d64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004d68:	4c000020 	jirl	$r0,$r1,0

1c004d6c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004d6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004d70:	29803061 	st.w	$r1,$r3,12(0xc)
1c004d74:	29802076 	st.w	$r22,$r3,8(0x8)
1c004d78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004d7c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004d80:	029d70c6 	addi.w	$r6,$r6,1884(0x75c)
1c004d84:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c004d88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004d8c:	02910084 	addi.w	$r4,$r4,1088(0x440)
1c004d90:	57c627ff 	bl	-14812(0xfffc624) # 1c0013b4 <myprintf>
1c004d94:	14000085 	lu12i.w	$r5,4(0x4)
1c004d98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d9c:	03808184 	ori	$r4,$r12,0x20
1c004da0:	57c3cfff 	bl	-15412(0xfffc3cc) # 1c00116c <EXTI_ClearITPendingBit>
1c004da4:	03400000 	andi	$r0,$r0,0x0
1c004da8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004dac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004db0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004db4:	4c000020 	jirl	$r0,$r1,0

1c004db8 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004db8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004dbc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004dc0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004dc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004dc8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004dcc:	029ca0c6 	addi.w	$r6,$r6,1832(0x728)
1c004dd0:	02819405 	addi.w	$r5,$r0,101(0x65)
1c004dd4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004dd8:	028fd084 	addi.w	$r4,$r4,1012(0x3f4)
1c004ddc:	57c5dbff 	bl	-14888(0xfffc5d8) # 1c0013b4 <myprintf>
1c004de0:	14000105 	lu12i.w	$r5,8(0x8)
1c004de4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004de8:	03808184 	ori	$r4,$r12,0x20
1c004dec:	57c383ff 	bl	-15488(0xfffc380) # 1c00116c <EXTI_ClearITPendingBit>
1c004df0:	03400000 	andi	$r0,$r0,0x0
1c004df4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004df8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004dfc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e00:	4c000020 	jirl	$r0,$r1,0

1c004e04 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004e04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e08:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e14:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004e18:	029bd0c6 	addi.w	$r6,$r6,1780(0x6f4)
1c004e1c:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c004e20:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e24:	028ea084 	addi.w	$r4,$r4,936(0x3a8)
1c004e28:	57c58fff 	bl	-14964(0xfffc58c) # 1c0013b4 <myprintf>
1c004e2c:	14000205 	lu12i.w	$r5,16(0x10)
1c004e30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e34:	03808184 	ori	$r4,$r12,0x20
1c004e38:	57c337ff 	bl	-15564(0xfffc334) # 1c00116c <EXTI_ClearITPendingBit>
1c004e3c:	03400000 	andi	$r0,$r0,0x0
1c004e40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e4c:	4c000020 	jirl	$r0,$r1,0

1c004e50 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004e50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e60:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004e64:	029b00c6 	addi.w	$r6,$r6,1728(0x6c0)
1c004e68:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c004e6c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004e70:	028d7084 	addi.w	$r4,$r4,860(0x35c)
1c004e74:	57c543ff 	bl	-15040(0xfffc540) # 1c0013b4 <myprintf>
1c004e78:	14000405 	lu12i.w	$r5,32(0x20)
1c004e7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e80:	03808184 	ori	$r4,$r12,0x20
1c004e84:	57c2ebff 	bl	-15640(0xfffc2e8) # 1c00116c <EXTI_ClearITPendingBit>
1c004e88:	03400000 	andi	$r0,$r0,0x0
1c004e8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e98:	4c000020 	jirl	$r0,$r1,0

1c004e9c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004e9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ea0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ea4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ea8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004eac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004eb0:	029a30c6 	addi.w	$r6,$r6,1676(0x68c)
1c004eb4:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c004eb8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004ebc:	028c4084 	addi.w	$r4,$r4,784(0x310)
1c004ec0:	57c4f7ff 	bl	-15116(0xfffc4f4) # 1c0013b4 <myprintf>
1c004ec4:	14000805 	lu12i.w	$r5,64(0x40)
1c004ec8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ecc:	03808184 	ori	$r4,$r12,0x20
1c004ed0:	57c29fff 	bl	-15716(0xfffc29c) # 1c00116c <EXTI_ClearITPendingBit>
1c004ed4:	03400000 	andi	$r0,$r0,0x0
1c004ed8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004edc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ee0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ee4:	4c000020 	jirl	$r0,$r1,0

1c004ee8 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004ee8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004eec:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ef0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ef4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ef8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004efc:	029960c6 	addi.w	$r6,$r6,1624(0x658)
1c004f00:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c004f04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f08:	028b1084 	addi.w	$r4,$r4,708(0x2c4)
1c004f0c:	57c4abff 	bl	-15192(0xfffc4a8) # 1c0013b4 <myprintf>
1c004f10:	14001005 	lu12i.w	$r5,128(0x80)
1c004f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f18:	03808184 	ori	$r4,$r12,0x20
1c004f1c:	57c253ff 	bl	-15792(0xfffc250) # 1c00116c <EXTI_ClearITPendingBit>
1c004f20:	03400000 	andi	$r0,$r0,0x0
1c004f24:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f28:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f30:	4c000020 	jirl	$r0,$r1,0

1c004f34 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004f34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f38:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f3c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f44:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004f48:	029890c6 	addi.w	$r6,$r6,1572(0x624)
1c004f4c:	02821005 	addi.w	$r5,$r0,132(0x84)
1c004f50:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004f54:	0289e084 	addi.w	$r4,$r4,632(0x278)
1c004f58:	57c45fff 	bl	-15268(0xfffc45c) # 1c0013b4 <myprintf>
1c004f5c:	14002005 	lu12i.w	$r5,256(0x100)
1c004f60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f64:	03808184 	ori	$r4,$r12,0x20
1c004f68:	57c207ff 	bl	-15868(0xfffc204) # 1c00116c <EXTI_ClearITPendingBit>
1c004f6c:	03400000 	andi	$r0,$r0,0x0
1c004f70:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f74:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f78:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f7c:	4c000020 	jirl	$r0,$r1,0

1c004f80 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004f80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f84:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f88:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f90:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004f94:	0297c0c6 	addi.w	$r6,$r6,1520(0x5f0)
1c004f98:	02822405 	addi.w	$r5,$r0,137(0x89)
1c004f9c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004fa0:	0288b084 	addi.w	$r4,$r4,556(0x22c)
1c004fa4:	57c413ff 	bl	-15344(0xfffc410) # 1c0013b4 <myprintf>
1c004fa8:	14004005 	lu12i.w	$r5,512(0x200)
1c004fac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004fb0:	03808184 	ori	$r4,$r12,0x20
1c004fb4:	57c1bbff 	bl	-15944(0xfffc1b8) # 1c00116c <EXTI_ClearITPendingBit>
1c004fb8:	03400000 	andi	$r0,$r0,0x0
1c004fbc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fc0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004fc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004fc8:	4c000020 	jirl	$r0,$r1,0

1c004fcc <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004fcc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fd0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fd4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fd8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fdc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c004fe0:	0296f0c6 	addi.w	$r6,$r6,1468(0x5bc)
1c004fe4:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c004fe8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004fec:	02878084 	addi.w	$r4,$r4,480(0x1e0)
1c004ff0:	57c3c7ff 	bl	-15420(0xfffc3c4) # 1c0013b4 <myprintf>
1c004ff4:	14008005 	lu12i.w	$r5,1024(0x400)
1c004ff8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ffc:	03808184 	ori	$r4,$r12,0x20
1c005000:	57c16fff 	bl	-16020(0xfffc16c) # 1c00116c <EXTI_ClearITPendingBit>
1c005004:	03400000 	andi	$r0,$r0,0x0
1c005008:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00500c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005010:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005014:	4c000020 	jirl	$r0,$r1,0

1c005018 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c005018:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00501c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005020:	29802076 	st.w	$r22,$r3,8(0x8)
1c005024:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005028:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00502c:	029620c6 	addi.w	$r6,$r6,1416(0x588)
1c005030:	02825005 	addi.w	$r5,$r0,148(0x94)
1c005034:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005038:	02865084 	addi.w	$r4,$r4,404(0x194)
1c00503c:	57c37bff 	bl	-15496(0xfffc378) # 1c0013b4 <myprintf>
1c005040:	14010005 	lu12i.w	$r5,2048(0x800)
1c005044:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005048:	03808184 	ori	$r4,$r12,0x20
1c00504c:	57c123ff 	bl	-16096(0xfffc120) # 1c00116c <EXTI_ClearITPendingBit>
1c005050:	03400000 	andi	$r0,$r0,0x0
1c005054:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005058:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00505c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005060:	4c000020 	jirl	$r0,$r1,0

1c005064 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c005064:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005068:	29803061 	st.w	$r1,$r3,12(0xc)
1c00506c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005070:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005074:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005078:	029550c6 	addi.w	$r6,$r6,1364(0x554)
1c00507c:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c005080:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005084:	02852084 	addi.w	$r4,$r4,328(0x148)
1c005088:	57c32fff 	bl	-15572(0xfffc32c) # 1c0013b4 <myprintf>
1c00508c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c005090:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005094:	03808184 	ori	$r4,$r12,0x20
1c005098:	57c0d7ff 	bl	-16172(0xfffc0d4) # 1c00116c <EXTI_ClearITPendingBit>
1c00509c:	03400000 	andi	$r0,$r0,0x0
1c0050a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050ac:	4c000020 	jirl	$r0,$r1,0

1c0050b0 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0050b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0050c4:	029480c6 	addi.w	$r6,$r6,1312(0x520)
1c0050c8:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0050cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0050d0:	0283f084 	addi.w	$r4,$r4,252(0xfc)
1c0050d4:	57c2e3ff 	bl	-15648(0xfffc2e0) # 1c0013b4 <myprintf>
1c0050d8:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0050dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0050e0:	03808184 	ori	$r4,$r12,0x20
1c0050e4:	57c08bff 	bl	-16248(0xfffc088) # 1c00116c <EXTI_ClearITPendingBit>
1c0050e8:	03400000 	andi	$r0,$r0,0x0
1c0050ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050f8:	4c000020 	jirl	$r0,$r1,0

1c0050fc <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0050fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005100:	29803061 	st.w	$r1,$r3,12(0xc)
1c005104:	29802076 	st.w	$r22,$r3,8(0x8)
1c005108:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00510c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005110:	0293b0c6 	addi.w	$r6,$r6,1260(0x4ec)
1c005114:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c005118:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00511c:	0282c084 	addi.w	$r4,$r4,176(0xb0)
1c005120:	57c297ff 	bl	-15724(0xfffc294) # 1c0013b4 <myprintf>
1c005124:	14080005 	lu12i.w	$r5,16384(0x4000)
1c005128:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00512c:	03808184 	ori	$r4,$r12,0x20
1c005130:	57c03fff 	bl	-16324(0xfffc03c) # 1c00116c <EXTI_ClearITPendingBit>
1c005134:	03400000 	andi	$r0,$r0,0x0
1c005138:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00513c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005140:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005144:	4c000020 	jirl	$r0,$r1,0

1c005148 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c005148:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00514c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005150:	29802076 	st.w	$r22,$r3,8(0x8)
1c005154:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005158:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00515c:	0292e0c6 	addi.w	$r6,$r6,1208(0x4b8)
1c005160:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c005164:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005168:	02819084 	addi.w	$r4,$r4,100(0x64)
1c00516c:	57c24bff 	bl	-15800(0xfffc248) # 1c0013b4 <myprintf>
1c005170:	14100005 	lu12i.w	$r5,32768(0x8000)
1c005174:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005178:	03808184 	ori	$r4,$r12,0x20
1c00517c:	57bff3ff 	bl	-16400(0xfffbff0) # 1c00116c <EXTI_ClearITPendingBit>
1c005180:	03400000 	andi	$r0,$r0,0x0
1c005184:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005188:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00518c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005190:	4c000020 	jirl	$r0,$r1,0

1c005194 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c005194:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005198:	29803061 	st.w	$r1,$r3,12(0xc)
1c00519c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0051a8:	029210c6 	addi.w	$r6,$r6,1156(0x484)
1c0051ac:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c0051b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0051b4:	02806084 	addi.w	$r4,$r4,24(0x18)
1c0051b8:	57c1ffff 	bl	-15876(0xfffc1fc) # 1c0013b4 <myprintf>
1c0051bc:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0051c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0051c4:	03808184 	ori	$r4,$r12,0x20
1c0051c8:	57bfa7ff 	bl	-16476(0xfffbfa4) # 1c00116c <EXTI_ClearITPendingBit>
1c0051cc:	03400000 	andi	$r0,$r0,0x0
1c0051d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051dc:	4c000020 	jirl	$r0,$r1,0

1c0051e0 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0051e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0051f4:	029140c6 	addi.w	$r6,$r6,1104(0x450)
1c0051f8:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c0051fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005200:	02bf3084 	addi.w	$r4,$r4,-52(0xfcc)
1c005204:	57c1b3ff 	bl	-15952(0xfffc1b0) # 1c0013b4 <myprintf>
1c005208:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00520c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005210:	03808184 	ori	$r4,$r12,0x20
1c005214:	57bf5bff 	bl	-16552(0xfffbf58) # 1c00116c <EXTI_ClearITPendingBit>
1c005218:	03400000 	andi	$r0,$r0,0x0
1c00521c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005220:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005224:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005228:	4c000020 	jirl	$r0,$r1,0

1c00522c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00522c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005230:	29803061 	st.w	$r1,$r3,12(0xc)
1c005234:	29802076 	st.w	$r22,$r3,8(0x8)
1c005238:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00523c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005240:	029070c6 	addi.w	$r6,$r6,1052(0x41c)
1c005244:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c005248:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00524c:	02be0084 	addi.w	$r4,$r4,-128(0xf80)
1c005250:	57c167ff 	bl	-16028(0xfffc164) # 1c0013b4 <myprintf>
1c005254:	14800005 	lu12i.w	$r5,262144(0x40000)
1c005258:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00525c:	03808184 	ori	$r4,$r12,0x20
1c005260:	57bf0fff 	bl	-16628(0xfffbf0c) # 1c00116c <EXTI_ClearITPendingBit>
1c005264:	03400000 	andi	$r0,$r0,0x0
1c005268:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00526c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005270:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005274:	4c000020 	jirl	$r0,$r1,0

1c005278 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c005278:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00527c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005280:	29802076 	st.w	$r22,$r3,8(0x8)
1c005284:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005288:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00528c:	028fa0c6 	addi.w	$r6,$r6,1000(0x3e8)
1c005290:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c005294:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005298:	02bcd084 	addi.w	$r4,$r4,-204(0xf34)
1c00529c:	57c11bff 	bl	-16104(0xfffc118) # 1c0013b4 <myprintf>
1c0052a0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0052a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0052a8:	03808184 	ori	$r4,$r12,0x20
1c0052ac:	57bec3ff 	bl	-16704(0xfffbec0) # 1c00116c <EXTI_ClearITPendingBit>
1c0052b0:	03400000 	andi	$r0,$r0,0x0
1c0052b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0052b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052c0:	4c000020 	jirl	$r0,$r1,0

1c0052c4 <ext_handler>:
ext_handler():
1c0052c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0052d8:	0380f18c 	ori	$r12,$r12,0x3c
1c0052dc:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0052e0:	2980018d 	st.w	$r13,$r12,0
1c0052e4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0052e8:	028e90c6 	addi.w	$r6,$r6,932(0x3a4)
1c0052ec:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c0052f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0052f4:	02bb6084 	addi.w	$r4,$r4,-296(0xed8)
1c0052f8:	57c0bfff 	bl	-16196(0xfffc0bc) # 1c0013b4 <myprintf>
1c0052fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005300:	0380818c 	ori	$r12,$r12,0x20
1c005304:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005308:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00530c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005310:	0380818c 	ori	$r12,$r12,0x20
1c005314:	2880018c 	ld.w	$r12,$r12,0
1c005318:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00531c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005320:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005324:	0014b1ac 	and	$r12,$r13,$r12
1c005328:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00532c:	03400000 	andi	$r0,$r0,0x0
1c005330:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005334:	50004000 	b	64(0x40) # 1c005374 <ext_handler+0xb0>
1c005338:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00533c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005340:	0017b1ac 	srl.w	$r12,$r13,$r12
1c005344:	0340058c 	andi	$r12,$r12,0x1
1c005348:	40002180 	beqz	$r12,32(0x20) # 1c005368 <ext_handler+0xa4>
1c00534c:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c005350:	02bde1ad 	addi.w	$r13,$r13,-136(0xf78)
1c005354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005358:	0040898c 	slli.w	$r12,$r12,0x2
1c00535c:	001031ac 	add.w	$r12,$r13,$r12
1c005360:	2880018c 	ld.w	$r12,$r12,0
1c005364:	4c000181 	jirl	$r1,$r12,0
1c005368:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00536c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005370:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005374:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005378:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00537c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c005338 <ext_handler+0x74>
1c005380:	03400000 	andi	$r0,$r0,0x0
1c005384:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005388:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00538c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005390:	4c000020 	jirl	$r0,$r1,0

1c005394 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c005394:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005398:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00539c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0053a8:	0380f18c 	ori	$r12,$r12,0x3c
1c0053ac:	1400020d 	lu12i.w	$r13,16(0x10)
1c0053b0:	2980018d 	st.w	$r13,$r12,0
1c0053b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0053b8:	0380118c 	ori	$r12,$r12,0x4
1c0053bc:	2880018c 	ld.w	$r12,$r12,0
1c0053c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0053c4:	57c3e3ff 	bl	-15392(0xfffc3e0) # 1c0017a4 <WDG_DogFeed>
1c0053c8:	03400000 	andi	$r0,$r0,0x0
1c0053cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053d8:	4c000020 	jirl	$r0,$r1,0

1c0053dc <TOUCH>:
TOUCH():
1c0053dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053ec:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0053f0:	0380118c 	ori	$r12,$r12,0x4
1c0053f4:	2880018c 	ld.w	$r12,$r12,0
1c0053f8:	0044c18c 	srli.w	$r12,$r12,0x10
1c0053fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005400:	037ffd8c 	andi	$r12,$r12,0xfff
1c005404:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005408:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00540c:	0380118c 	ori	$r12,$r12,0x4
1c005410:	2880018c 	ld.w	$r12,$r12,0
1c005414:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005418:	03403d8c 	andi	$r12,$r12,0xf
1c00541c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005420:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005424:	0380f18c 	ori	$r12,$r12,0x3c
1c005428:	1400040d 	lu12i.w	$r13,32(0x20)
1c00542c:	2980018d 	st.w	$r13,$r12,0
1c005430:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c005434:	0380118c 	ori	$r12,$r12,0x4
1c005438:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00543c:	2980018d 	st.w	$r13,$r12,0
1c005440:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005444:	00150185 	move	$r5,$r12
1c005448:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00544c:	02b72084 	addi.w	$r4,$r4,-568(0xdc8)
1c005450:	57bf67ff 	bl	-16540(0xfffbf64) # 1c0013b4 <myprintf>
1c005454:	03400000 	andi	$r0,$r0,0x0
1c005458:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00545c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005460:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005464:	4c000020 	jirl	$r0,$r1,0

1c005468 <UART2_INT>:
UART2_INT():
1c005468:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00546c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005470:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005474:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005478:	0380f18c 	ori	$r12,$r12,0x3c
1c00547c:	1400080d 	lu12i.w	$r13,64(0x40)
1c005480:	2980018d 	st.w	$r13,$r12,0
1c005484:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c005488:	0380098c 	ori	$r12,$r12,0x2
1c00548c:	2a00018c 	ld.bu	$r12,$r12,0
1c005490:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005494:	03400000 	andi	$r0,$r0,0x0
1c005498:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00549c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054a0:	4c000020 	jirl	$r0,$r1,0

1c0054a4 <BAT_FAIL>:
BAT_FAIL():
1c0054a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0054b8:	0380118c 	ori	$r12,$r12,0x4
1c0054bc:	2880018c 	ld.w	$r12,$r12,0
1c0054c0:	0044cd8c 	srli.w	$r12,$r12,0x13
1c0054c4:	03407d8c 	andi	$r12,$r12,0x1f
1c0054c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0054d0:	0380118c 	ori	$r12,$r12,0x4
1c0054d4:	2880018e 	ld.w	$r14,$r12,0
1c0054d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0054dc:	0380f18c 	ori	$r12,$r12,0x3c
1c0054e0:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c0054e4:	0014b5cd 	and	$r13,$r14,$r13
1c0054e8:	2980018d 	st.w	$r13,$r12,0
1c0054ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0054f0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0054f4:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c005564 <BAT_FAIL+0xc0>
1c0054f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054fc:	0040898d 	slli.w	$r13,$r12,0x2
1c005500:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c005504:	02b9118c 	addi.w	$r12,$r12,-444(0xe44)
1c005508:	001031ac 	add.w	$r12,$r13,$r12
1c00550c:	2880018c 	ld.w	$r12,$r12,0
1c005510:	4c000180 	jirl	$r0,$r12,0
1c005514:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005518:	02b47084 	addi.w	$r4,$r4,-740(0xd1c)
1c00551c:	57be9bff 	bl	-16744(0xfffbe98) # 1c0013b4 <myprintf>
1c005520:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005524:	0380118c 	ori	$r12,$r12,0x4
1c005528:	29800180 	st.w	$r0,$r12,0
1c00552c:	50003c00 	b	60(0x3c) # 1c005568 <BAT_FAIL+0xc4>
1c005530:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005534:	02b4a084 	addi.w	$r4,$r4,-728(0xd28)
1c005538:	57be7fff 	bl	-16772(0xfffbe7c) # 1c0013b4 <myprintf>
1c00553c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c005540:	0380118c 	ori	$r12,$r12,0x4
1c005544:	2880018e 	ld.w	$r14,$r12,0
1c005548:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00554c:	0380118c 	ori	$r12,$r12,0x4
1c005550:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c005554:	03bffdad 	ori	$r13,$r13,0xfff
1c005558:	0014b5cd 	and	$r13,$r14,$r13
1c00555c:	2980018d 	st.w	$r13,$r12,0
1c005560:	50000800 	b	8(0x8) # 1c005568 <BAT_FAIL+0xc4>
1c005564:	03400000 	andi	$r0,$r0,0x0
1c005568:	03400000 	andi	$r0,$r0,0x0
1c00556c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005570:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005574:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005578:	4c000020 	jirl	$r0,$r1,0

1c00557c <INTC_Handler>:
INTC_Handler():
1c00557c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005580:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005584:	29806076 	st.w	$r22,$r3,24(0x18)
1c005588:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00558c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005590:	0380158c 	ori	$r12,$r12,0x5
1c005594:	2a00018c 	ld.bu	$r12,$r12,0
1c005598:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00559c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055a0:	0340058c 	andi	$r12,$r12,0x1
1c0055a4:	40002980 	beqz	$r12,40(0x28) # 1c0055cc <INTC_Handler+0x50>
1c0055a8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0055ac:	57d2ebff 	bl	-11544(0xfffd2e8) # 1c002894 <TIM_GetITStatus>
1c0055b0:	0015008c 	move	$r12,$r4
1c0055b4:	40001980 	beqz	$r12,24(0x18) # 1c0055cc <INTC_Handler+0x50>
1c0055b8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0055bc:	57d327ff 	bl	-11484(0xfffd324) # 1c0028e0 <TIM_ClearIT>
1c0055c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0055c4:	02b2f084 	addi.w	$r4,$r4,-836(0xcbc)
1c0055c8:	57bdefff 	bl	-16916(0xfffbdec) # 1c0013b4 <myprintf>
1c0055cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055d0:	0340118c 	andi	$r12,$r12,0x4
1c0055d4:	40002d80 	beqz	$r12,44(0x2c) # 1c005600 <INTC_Handler+0x84>
1c0055d8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0055dc:	2880018c 	ld.w	$r12,$r12,0
1c0055e0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0055e4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055e8:	00150184 	move	$r4,$r12
1c0055ec:	57c7bfff 	bl	-14404(0xfffc7bc) # 1c001da8 <my_recv_dat_int>
1c0055f0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0055f4:	03800d8c 	ori	$r12,$r12,0x3
1c0055f8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0055fc:	2900018d 	st.b	$r13,$r12,0
1c005600:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005604:	0340218c 	andi	$r12,$r12,0x8
1c005608:	40002d80 	beqz	$r12,44(0x2c) # 1c005634 <INTC_Handler+0xb8>
1c00560c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c005610:	2880018c 	ld.w	$r12,$r12,0
1c005614:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005618:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00561c:	00150184 	move	$r4,$r12
1c005620:	57c78bff 	bl	-14456(0xfffc788) # 1c001da8 <my_recv_dat_int>
1c005624:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005628:	03800d8c 	ori	$r12,$r12,0x3
1c00562c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005630:	2900018d 	st.b	$r13,$r12,0
1c005634:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005638:	03800d8c 	ori	$r12,$r12,0x3
1c00563c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c005640:	2900018d 	st.b	$r13,$r12,0
1c005644:	03400000 	andi	$r0,$r0,0x0
1c005648:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00564c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005650:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005654:	4c000020 	jirl	$r0,$r1,0

1c005658 <TIMER_HANDLER>:
TIMER_HANDLER():
1c005658:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00565c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005660:	29802076 	st.w	$r22,$r3,8(0x8)
1c005664:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005668:	57bae3ff 	bl	-17696(0xfffbae0) # 1c001148 <Set_Timer_clear>
1c00566c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005670:	02b0e084 	addi.w	$r4,$r4,-968(0xc38)
1c005674:	57bd43ff 	bl	-17088(0xfffbd40) # 1c0013b4 <myprintf>
1c005678:	57bab3ff 	bl	-17744(0xfffbab0) # 1c001128 <Set_Timer_stop>
1c00567c:	03400000 	andi	$r0,$r0,0x0
1c005680:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005684:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005688:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00568c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c005690 <F6x8-0x150>:
1c005690:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c005694:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005698:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00569c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056a0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056a4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056a8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056ac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056b0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056b4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056b8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056bc:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c0056c0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056c4:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056c8:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056cc:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056d0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056d4:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056d8:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056dc:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056e0:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c0056e4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056e8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056ec:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056f0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056f4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056f8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0056fc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005700:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005704:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005708:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00570c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005710:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005714:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005718:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00571c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005720:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005724:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005728:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00572c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005730:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005734:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005738:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00573c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005740:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005744:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005748:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00574c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005750:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005754:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005758:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00575c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005760:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005764:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005768:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00576c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005770:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005774:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005778:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00577c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005780:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005784:	1c001564 	pcaddu12i	$r4,171(0xab)
1c005788:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c00578c:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c005790:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005794:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c005798:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00579c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057a0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057a4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057a8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057ac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057b0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057b4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057b8:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c0057bc:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c0057c0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057c4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057c8:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c0057cc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057d0:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c0057d4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057d8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0057dc:	1c00159c 	pcaddu12i	$r28,172(0xac)

1c0057e0 <F6x8>:
	...
1c0057e8:	00002f00 	ctz.d	$r0,$r24
1c0057ec:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c0057f0:	14000007 	lu12i.w	$r7,0
1c0057f4:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c0057f8:	7f2a2400 	0x7f2a2400
1c0057fc:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfe580c <_start-0x1a7f4>
1c005800:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c005804:	55493600 	bl	-134133452(0x8014934) # 1401a138 <_start-0x7fe5ec8>
1c005808:	00005022 	bitrev.w	$r2,$r1
1c00580c:	00000305 	0x00000305
1c005810:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c005814:	00000041 	0x00000041
1c005818:	001c2241 	mul.w	$r1,$r18,$r8
1c00581c:	3e081400 	0x3e081400
1c005820:	08001408 	0x08001408
1c005824:	08083e08 	0x08083e08
1c005828:	a0000000 	0xa0000000
1c00582c:	08000060 	0x08000060
1c005830:	08080808 	0x08080808
1c005834:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c00b834 <_sidata+0x51a0>
1c005838:	20000000 	ll.w	$r0,$r0,0
1c00583c:	02040810 	slti	$r16,$r0,258(0x102)
1c005840:	49513e00 	0x49513e00
1c005844:	00003e45 	revb.d	$r5,$r18
1c005848:	00407f42 	0x00407f42
1c00584c:	51614200 	b	-134127296(0x8016140) # 1401b98c <_start-0x7fe4674>
1c005850:	21004649 	sc.w	$r9,$r18,68(0x44)
1c005854:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c005858:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c00585c:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c005860:	39454545 	0x39454545
1c005864:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01a2a0 <_sidata+0x13c0c>
1c005868:	01003049 	0x01003049
1c00586c:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c005870:	49493600 	0x49493600
1c005874:	06003649 	cacop	0x9,$r18,13(0xd)
1c005878:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c00587c:	36360000 	0x36360000
1c005880:	00000000 	0x00000000
1c005884:	00003656 	revb.4h	$r22,$r18
1c005888:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c00588c:	14000041 	lu12i.w	$r1,2(0x2)
1c005890:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c005894:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c005898:	02000814 	slti	$r20,$r0,2(0x2)
1c00589c:	06095101 	cacop	0x1,$r8,596(0x254)
1c0058a0:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01a1d0 <_sidata+0x13b3c>
1c0058a4:	7c003e51 	0x7c003e51
1c0058a8:	7c121112 	0x7c121112
1c0058ac:	49497f00 	0x49497f00
1c0058b0:	3e003649 	0x3e003649
1c0058b4:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c0058b8:	41417f00 	beqz	$r24,82300(0x1417c) # 1c019a34 <_sidata+0x133a0>
1c0058bc:	7f001c22 	0x7f001c22
1c0058c0:	41494949 	beqz	$r10,2443592(0x254948) # 1c25a208 <_sidata+0x253b74>
1c0058c4:	09097f00 	0x09097f00
1c0058c8:	3e000109 	0x3e000109
1c0058cc:	7a494941 	0x7a494941
1c0058d0:	08087f00 	0x08087f00
1c0058d4:	00007f08 	0x00007f08
1c0058d8:	00417f41 	slli.d	$r1,$r26,0x1f
1c0058dc:	41402000 	beqz	$r0,81952(0x14020) # 1c0198fc <_sidata+0x13268>
1c0058e0:	7f00013f 	0x7f00013f
1c0058e4:	41221408 	beqz	$r0,2171412(0x212214) # 1c217af8 <_sidata+0x211464>
1c0058e8:	40407f00 	beqz	$r24,16508(0x407c) # 1c009964 <_sidata+0x32d0>
1c0058ec:	7f004040 	0x7f004040
1c0058f0:	7f020c02 	0x7f020c02
1c0058f4:	08047f00 	0x08047f00
1c0058f8:	3e007f10 	0x3e007f10
1c0058fc:	3e414141 	0x3e414141
1c005900:	09097f00 	0x09097f00
1c005904:	3e000609 	0x3e000609
1c005908:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfe7a58 <_start-0x185a8>
1c00590c:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c005910:	46004629 	bnez	$r17,2490436(0x260044) # 1c265954 <_sidata+0x25f2c0>
1c005914:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c005918:	7f010100 	0x7f010100
1c00591c:	3f000101 	0x3f000101
1c005920:	3f404040 	0x3f404040
1c005924:	40201f00 	beqz	$r24,8220(0x201c) # 1c007940 <_sidata+0x12ac>
1c005928:	3f001f20 	0x3f001f20
1c00592c:	3f403840 	0x3f403840
1c005930:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c005934:	07006314 	0x07006314
1c005938:	07087008 	0x07087008
1c00593c:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c01aa9c <_sidata+0x14408>
1c005940:	00004345 	revh.2w	$r5,$r26
1c005944:	0041417f 	slli.d	$r31,$r11,0x10
1c005948:	552a5500 	bl	67185236(0x4012a54) # 2001839c <_sidata+0x4011d08>
1c00594c:	0000552a 	bitrev.d	$r10,$r9
1c005950:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c005954:	01020400 	0x01020400
1c005958:	40000402 	beqz	$r0,524292(0x80004) # 1c08595c <_sidata+0x7f2c8>
1c00595c:	40404040 	beqz	$r2,16448(0x4040) # 1c00999c <_sidata+0x3308>
1c005960:	02010000 	slti	$r0,$r0,64(0x40)
1c005964:	20000004 	ll.w	$r4,$r0,0
1c005968:	78545454 	0x78545454
1c00596c:	44487f00 	bnez	$r24,18556(0x487c) # 1c00a1e8 <_sidata+0x3b54>
1c005970:	38003844 	ldx.b	$r4,$r2,$r14
1c005974:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c005978:	44443800 	bnez	$r0,17464(0x4438) # 1c009db0 <_sidata+0x371c>
1c00597c:	38007f48 	ldx.b	$r8,$r26,$r31
1c005980:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c005984:	097e0800 	0x097e0800
1c005988:	18000201 	pcaddi	$r1,16(0x10)
1c00598c:	7ca4a4a4 	0x7ca4a4a4
1c005990:	04087f00 	csrxchg	$r0,$r24,0x21f
1c005994:	00007804 	0x00007804
1c005998:	00407d44 	0x00407d44
1c00599c:	84804000 	0x84804000
1c0059a0:	7f00007d 	0x7f00007d
1c0059a4:	00442810 	0x00442810
1c0059a8:	7f410000 	0x7f410000
1c0059ac:	7c000040 	0x7c000040
1c0059b0:	78041804 	0x78041804
1c0059b4:	04087c00 	csrrd	$r0,0x21f
1c0059b8:	38007804 	ldx.b	$r4,$r0,$r30
1c0059bc:	38444444 	vstx	$vr4,$r2,$r17
1c0059c0:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c0059c4:	18001824 	pcaddi	$r4,193(0xc1)
1c0059c8:	fc182424 	0xfc182424
1c0059cc:	04087c00 	csrrd	$r0,0x21f
1c0059d0:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c1059d8 <_sidata+0xff344>
1c0059d4:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c0059d8:	443f0400 	bnez	$r0,16132(0x3f04) # 1c0098dc <_sidata+0x3248>
1c0059dc:	3c002040 	0x3c002040
1c0059e0:	7c204040 	0x7c204040
1c0059e4:	40201c00 	beqz	$r0,8220(0x201c) # 1c007a00 <_sidata+0x136c>
1c0059e8:	3c001c20 	0x3c001c20
1c0059ec:	3c403040 	0x3c403040
1c0059f0:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c0059f4:	1c004428 	pcaddu12i	$r8,545(0x221)
1c0059f8:	7ca0a0a0 	0x7ca0a0a0
1c0059fc:	54644400 	bl	25668(0x6444) # 1c00be40 <_sidata+0x57ac>
1c005a00:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c005a04:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c005a08 <F8X16>:
	...
1c005a18:	f8000000 	0xf8000000
1c005a1c:	00000000 	0x00000000
1c005a20:	33000000 	0x33000000
1c005a24:	00000030 	0x00000030
1c005a28:	060c1000 	cacop	0x0,$r0,772(0x304)
1c005a2c:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c005a38:	4078c040 	beqz	$r2,30912(0x78c0) # 1c00d2f8 <_sidata+0x6c64>
1c005a3c:	004078c0 	0x004078c0
1c005a40:	04043f04 	csrxchg	$r4,$r24,0x10f
1c005a44:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c005a48:	fc887000 	0xfc887000
1c005a4c:	00003008 	revb.2h	$r8,$r0
1c005a50:	ff201800 	0xff201800
1c005a54:	00001e21 	ctz.w	$r1,$r17
1c005a58:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c005a5c:	000018e0 	cto.w	$r0,$r7
1c005a60:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c005a64:	001e211e 	mulh.d	$r30,$r8,$r8
1c005a68:	8808f000 	0x8808f000
1c005a6c:	00000070 	0x00000070
1c005a70:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c005a74:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c005a78:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c005a88:	e0000000 	0xe0000000
1c005a8c:	00020418 	0x00020418
1c005a90:	07000000 	0x07000000
1c005a94:	00402018 	0x00402018
1c005a98:	18040200 	pcaddi	$r0,8208(0x2010)
1c005a9c:	000000e0 	0x000000e0
1c005aa0:	18204000 	pcaddi	$r0,66048(0x10200)
1c005aa4:	00000007 	0x00000007
1c005aa8:	f0804040 	0xf0804040
1c005aac:	00404080 	0x00404080
1c005ab0:	0f010202 	0x0f010202
1c005ab4:	00020201 	0x00020201
1c005ab8:	f0000000 	0xf0000000
1c005abc:	00000000 	0x00000000
1c005ac0:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c005ac4:	00010101 	0x00010101
	...
1c005ad0:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c005ae0:	01010100 	fadd.d	$f0,$f8,$f0
1c005ae4:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c005af0:	00303000 	0x00303000
	...
1c005afc:	04186080 	csrxchg	$r0,$r4,0x618
1c005b00:	06186000 	cacop	0x0,$r0,1560(0x618)
1c005b04:	00000001 	0x00000001
1c005b08:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c005b0c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005b10:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c005b14:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c005b18:	f8101000 	0xf8101000
1c005b1c:	00000000 	0x00000000
1c005b20:	3f202000 	0x3f202000
1c005b24:	00002020 	clo.d	$r0,$r1
1c005b28:	08087000 	0x08087000
1c005b2c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c005b30:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c005b34:	00302122 	0x00302122
1c005b38:	88083000 	0x88083000
1c005b3c:	00304888 	0x00304888
1c005b40:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c005b44:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005b48:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c005b4c:	0000f810 	0x0000f810
1c005b50:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c005b54:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c005b58:	8808f800 	0x8808f800
1c005b5c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c005b60:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c005b64:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005b68:	8810e000 	0x8810e000
1c005b6c:	00001888 	cto.w	$r8,$r4
1c005b70:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c005b74:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005b78:	08083800 	0x08083800
1c005b7c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c005b80:	3f000000 	0x3f000000
1c005b84:	00000000 	0x00000000
1c005b88:	08887000 	0x08887000
1c005b8c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c005b90:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c005b94:	001c2221 	mul.w	$r1,$r17,$r8
1c005b98:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c005b9c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005ba0:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c005ba4:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c005ba8:	c0000000 	0xc0000000
1c005bac:	000000c0 	0x000000c0
1c005bb0:	30000000 	0x30000000
1c005bb4:	00000030 	0x00000030
1c005bb8:	80000000 	0x80000000
1c005bbc:	00000000 	0x00000000
1c005bc0:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c00dbc0 <_sidata+0x752c>
1c005bc4:	00000000 	0x00000000
1c005bc8:	40800000 	beqz	$r0,32768(0x8000) # 1c00dbc8 <_sidata+0x7534>
1c005bcc:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c005bd0:	04020100 	csrxchg	$r0,$r8,0x80
1c005bd4:	00201008 	div.w	$r8,$r0,$r4
1c005bd8:	40404040 	beqz	$r2,16448(0x4040) # 1c009c18 <_sidata+0x3584>
1c005bdc:	00404040 	0x00404040
1c005be0:	04040404 	csrrd	$r4,0x101
1c005be4:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c005be8:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c005bec:	00008040 	0x00008040
1c005bf0:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c005bf4:	00010204 	0x00010204
1c005bf8:	08487000 	0x08487000
1c005bfc:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c005c00:	30000000 	0x30000000
1c005c04:	00000136 	0x00000136
1c005c08:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c005c0c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c005c10:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c005c14:	000b1423 	0x000b1423
1c005c18:	38c00000 	0x38c00000
1c005c1c:	000000e0 	0x000000e0
1c005c20:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c005c24:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c005c28:	8888f808 	0x8888f808
1c005c2c:	00007088 	0x00007088
1c005c30:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c005c34:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005c38:	080830c0 	0x080830c0
1c005c3c:	00380808 	0x00380808
1c005c40:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c005c44:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c005c48:	0808f808 	0x0808f808
1c005c4c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005c50:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c005c54:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c005c58:	8888f808 	0x8888f808
1c005c5c:	001008e8 	add.w	$r8,$r7,$r2
1c005c60:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c005c64:	00182023 	sra.w	$r3,$r1,$r8
1c005c68:	8888f808 	0x8888f808
1c005c6c:	001008e8 	add.w	$r8,$r7,$r2
1c005c70:	00203f20 	div.w	$r0,$r25,$r15
1c005c74:	00000003 	0x00000003
1c005c78:	080830c0 	0x080830c0
1c005c7c:	00003808 	revb.2w	$r8,$r0
1c005c80:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c005c84:	00021e22 	0x00021e22
1c005c88:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c005c8c:	08f80800 	0x08f80800
1c005c90:	01213f20 	0x01213f20
1c005c94:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c005c98:	f8080800 	0xf8080800
1c005c9c:	00000808 	0x00000808
1c005ca0:	3f202000 	0x3f202000
1c005ca4:	00002020 	clo.d	$r0,$r1
1c005ca8:	08080000 	0x08080000
1c005cac:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c005cb0:	808080c0 	0x808080c0
1c005cb4:	0000007f 	0x0000007f
1c005cb8:	c088f808 	0xc088f808
1c005cbc:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c005cc0:	01203f20 	0x01203f20
1c005cc4:	00203826 	div.w	$r6,$r1,$r14
1c005cc8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c005ccc:	00000000 	0x00000000
1c005cd0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c005cd4:	00302020 	0x00302020
1c005cd8:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c005cdc:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c005ce0:	3f003f20 	0x3f003f20
1c005ce4:	00203f00 	div.w	$r0,$r24,$r15
1c005ce8:	c030f808 	0xc030f808
1c005cec:	08f80800 	0x08f80800
1c005cf0:	00203f20 	div.w	$r0,$r25,$r15
1c005cf4:	003f1807 	0x003f1807
1c005cf8:	080810e0 	0x080810e0
1c005cfc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005d00:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c005d04:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c005d08:	0808f808 	0x0808f808
1c005d0c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c005d10:	01213f20 	0x01213f20
1c005d14:	00000101 	0x00000101
1c005d18:	080810e0 	0x080810e0
1c005d1c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c005d20:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c005d24:	004f5038 	0x004f5038
1c005d28:	8888f808 	0x8888f808
1c005d2c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c005d30:	00203f20 	div.w	$r0,$r25,$r15
1c005d34:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c005d38:	08887000 	0x08887000
1c005d3c:	00380808 	0x00380808
1c005d40:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c005d44:	001c2221 	mul.w	$r1,$r17,$r8
1c005d48:	f8080818 	0xf8080818
1c005d4c:	00180808 	sra.w	$r8,$r0,$r2
1c005d50:	3f200000 	0x3f200000
1c005d54:	00000020 	0x00000020
1c005d58:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c005d5c:	08f80800 	0x08f80800
1c005d60:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c005d64:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c005d68:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c005d6c:	0838c800 	0x0838c800
1c005d70:	38070000 	0x38070000
1c005d74:	0000010e 	0x0000010e
1c005d78:	f80008f8 	0xf80008f8
1c005d7c:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c005d80:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c005d84:	00033c07 	0x00033c07
1c005d88:	80681808 	0x80681808
1c005d8c:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c005d90:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c005d94:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c005d98:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c005d9c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c005da0:	3f200000 	0x3f200000
1c005da4:	00000020 	0x00000020
1c005da8:	08080810 	0x08080810
1c005dac:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c005db0:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c005db4:	00182020 	sra.w	$r0,$r1,$r8
1c005db8:	fe000000 	0xfe000000
1c005dbc:	00020202 	0x00020202
1c005dc0:	7f000000 	0x7f000000
1c005dc4:	00404040 	0x00404040
1c005dc8:	c0300c00 	0xc0300c00
1c005dcc:	00000000 	0x00000000
1c005dd0:	01000000 	0x01000000
1c005dd4:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c005dd8:	02020200 	slti	$r0,$r16,128(0x80)
1c005ddc:	000000fe 	0x000000fe
1c005de0:	40404000 	beqz	$r0,16448(0x4040) # 1c009e20 <_sidata+0x378c>
1c005de4:	0000007f 	0x0000007f
1c005de8:	02040000 	slti	$r0,$r0,256(0x100)
1c005dec:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c005e00:	80808080 	0x80808080
1c005e04:	80808080 	0x80808080
1c005e08:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c005e18:	80800000 	0x80800000
1c005e1c:	00008080 	0x00008080
1c005e20:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c005e24:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c005e28:	8000f808 	0x8000f808
1c005e2c:	00000080 	0x00000080
1c005e30:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c005e34:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005e38:	80000000 	0x80000000
1c005e3c:	00008080 	0x00008080
1c005e40:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c005e44:	00112020 	sub.w	$r0,$r1,$r8
1c005e48:	80000000 	0x80000000
1c005e4c:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c005e50:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c005e54:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c005e58:	80800000 	0x80800000
1c005e5c:	00008080 	0x00008080
1c005e60:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c005e64:	00132222 	maskeqz	$r2,$r17,$r8
1c005e68:	f0808000 	0xf0808000
1c005e6c:	18888888 	pcaddi	$r8,279620(0x44444)
1c005e70:	3f202000 	0x3f202000
1c005e74:	00002020 	clo.d	$r0,$r1
1c005e78:	80800000 	0x80800000
1c005e7c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005e80:	94946b00 	0x94946b00
1c005e84:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c005e88:	8000f808 	0x8000f808
1c005e8c:	00008080 	0x00008080
1c005e90:	00213f20 	div.wu	$r0,$r25,$r15
1c005e94:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c005e98:	98988000 	0x98988000
1c005e9c:	00000000 	0x00000000
1c005ea0:	3f202000 	0x3f202000
1c005ea4:	00002020 	clo.d	$r0,$r1
1c005ea8:	80000000 	0x80000000
1c005eac:	00009898 	0x00009898
1c005eb0:	8080c000 	0x8080c000
1c005eb4:	00007f80 	0x00007f80
1c005eb8:	0000f808 	0x0000f808
1c005ebc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005ec0:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c005ec4:	0020302d 	div.w	$r13,$r1,$r12
1c005ec8:	f8080800 	0xf8080800
1c005ecc:	00000000 	0x00000000
1c005ed0:	3f202000 	0x3f202000
1c005ed4:	00002020 	clo.d	$r0,$r1
1c005ed8:	80808080 	0x80808080
1c005edc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005ee0:	00203f20 	div.w	$r0,$r25,$r15
1c005ee4:	3f00203f 	0x3f00203f
1c005ee8:	80008080 	0x80008080
1c005eec:	00008080 	0x00008080
1c005ef0:	00213f20 	div.wu	$r0,$r25,$r15
1c005ef4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c005ef8:	80800000 	0x80800000
1c005efc:	00008080 	0x00008080
1c005f00:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c005f04:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c005f08:	80008080 	0x80008080
1c005f0c:	00000080 	0x00000080
1c005f10:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c005f14:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c005f18:	80000000 	0x80000000
1c005f1c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f20:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c005f24:	80ffa020 	0x80ffa020
1c005f28:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f2c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f30:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c005f34:	00010020 	asrtle.d	$r1,$r0
1c005f38:	80800000 	0x80800000
1c005f3c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f40:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c005f44:	00192424 	srl.d	$r4,$r1,$r9
1c005f48:	e0808000 	0xe0808000
1c005f4c:	00008080 	0x00008080
1c005f50:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c005f54:	00002020 	clo.d	$r0,$r1
1c005f58:	00008080 	0x00008080
1c005f5c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c005f60:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c005f64:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c005f68:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f6c:	80808000 	0x80808000
1c005f70:	300e0100 	0x300e0100
1c005f74:	00010608 	0x00010608
1c005f78:	80008080 	0x80008080
1c005f7c:	80808000 	0x80808000
1c005f80:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c005f84:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c005f88:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c005f8c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f90:	2e312000 	0x2e312000
1c005f94:	0020310e 	div.w	$r14,$r8,$r12
1c005f98:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005f9c:	80808000 	0x80808000
1c005fa0:	708e8180 	0x708e8180
1c005fa4:	00010618 	0x00010618
1c005fa8:	80808000 	0x80808000
1c005fac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c005fb0:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c005fb4:	00302122 	0x00302122
1c005fb8:	00000000 	0x00000000
1c005fbc:	02027c80 	slti	$r0,$r4,159(0x9f)
1c005fc0:	00000000 	0x00000000
1c005fc4:	40403f00 	beqz	$r24,16444(0x403c) # 1c00a000 <_sidata+0x396c>
1c005fc8:	00000000 	0x00000000
1c005fcc:	000000ff 	0x000000ff
1c005fd0:	00000000 	0x00000000
1c005fd4:	000000ff 	0x000000ff
1c005fd8:	7c020200 	0x7c020200
1c005fdc:	00000080 	0x00000080
1c005fe0:	3f404000 	0x3f404000
1c005fe4:	00000000 	0x00000000
1c005fe8:	01010600 	fadd.d	$f0,$f16,$f1
1c005fec:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c005ff8 <gImage_cc>:
	...
1c006044:	c0c08080 	0xc0c08080
1c006048:	80c0c0c0 	0x80c0c0c0
1c00604c:	00000080 	0x00000080
	...
1c006074:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c006078:	01000101 	0x01000101
1c00607c:	ff070301 	0xff070301
1c006080:	0000f0fe 	0x0000f0fe
	...
1c0060a0:	fe000000 	0xfe000000
1c0060a4:	ffffffff 	0xffffffff
1c0060a8:	0f9fffff 	0x0f9fffff
1c0060ac:	ff9f0f0f 	0xff9f0f0f
1c0060b0:	ffffffff 	0xffffffff
1c0060b4:	0000feff 	0x0000feff
	...
1c0060d4:	3f1f0700 	0x3f1f0700
1c0060d8:	ffff7f7f 	0xffff7f7f
1c0060dc:	f8f8ffff 	0xf8f8ffff
1c0060e0:	7fffffff 	0x7fffffff
1c0060e4:	071f3f7f 	0x071f3f7f
	...
1c00615c:	00002e31 	ctz.d	$r17,$r17
1c006160:	00002e32 	ctz.d	$r18,$r17
1c006164:	00002e33 	ctz.d	$r19,$r17
1c006168:	0000002a 	0x0000002a
1c00616c:	00000020 	0x00000020
1c006170:	1c004500 	pcaddu12i	$r0,552(0x228)
1c006174:	1c003ca0 	pcaddu12i	$r0,485(0x1e5)
1c006178:	1c003d04 	pcaddu12i	$r4,488(0x1e8)
1c00617c:	1c003db8 	pcaddu12i	$r24,493(0x1ed)
1c006180:	1c003ea4 	pcaddu12i	$r4,501(0x1f5)
1c006184:	1c003ef8 	pcaddu12i	$r24,503(0x1f7)
1c006188:	1c003f28 	pcaddu12i	$r8,505(0x1f9)
1c00618c:	1c003f58 	pcaddu12i	$r24,506(0x1fa)
1c006190:	1c003fb0 	pcaddu12i	$r16,509(0x1fd)
1c006194:	1c003fec 	pcaddu12i	$r12,511(0x1ff)
1c006198:	1c004008 	pcaddu12i	$r8,512(0x200)
1c00619c:	1c0040e8 	pcaddu12i	$r8,519(0x207)
1c0061a0:	1c0041d4 	pcaddu12i	$r20,526(0x20e)
1c0061a4:	1c004200 	pcaddu12i	$r0,528(0x210)
1c0061a8:	1c004230 	pcaddu12i	$r16,529(0x211)
1c0061ac:	1c00425c 	pcaddu12i	$r28,530(0x212)
1c0061b0:	1c004298 	pcaddu12i	$r24,532(0x214)
1c0061b4:	1c0042f4 	pcaddu12i	$r20,535(0x217)
1c0061b8:	1c004354 	pcaddu12i	$r20,538(0x21a)
1c0061bc:	1c004384 	pcaddu12i	$r4,540(0x21c)
1c0061c0:	1c004470 	pcaddu12i	$r16,547(0x223)
1c0061c4:	1c0044d0 	pcaddu12i	$r16,550(0x226)
1c0061c8:	3c200a0d 	0x3c200a0d
1c0061cc:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01cdec <_sidata+0x16758>
1c0061d0:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c0061d4:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe8238 <_start-0x17dc8>
1c0061d8:	3a636e75 	0x3a636e75
1c0061dc:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c0061e0:	0a0d3e20 	0x0a0d3e20
1c0061e4:	00000000 	0x00000000
1c0061e8:	2e2e2e0a 	0x2e2e2e0a
1c0061ec:	2e2e2e2e 	0x2e2e2e2e
1c0061f0:	2e2e2e2e 	0x2e2e2e2e
1c0061f4:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c0061f8:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19c14c <_sidata+0x195ab8>
1c0061fc:	2e2e544e 	0x2e2e544e
1c006200:	2e2e2e2e 	0x2e2e2e2e
1c006204:	2e2e2e2e 	0x2e2e2e2e
1c006208:	2e2e2e2e 	0x2e2e2e2e
1c00620c:	00000d0a 	0x00000d0a
1c006210:	2d2d2d0a 	0x2d2d2d0a
1c006214:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bffd780 <_start-0x2880>
1c006218:	746e4968 	0x746e4968
1c00621c:	79654b3a 	0x79654b3a
1c006220:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfec388 <_start-0x13c78>
1c006224:	3a6c656e 	0x3a6c656e
1c006228:	78257830 	0x78257830
1c00622c:	0000000a 	0x0000000a
1c006230:	2e2e2e0a 	0x2e2e2e0a
1c006234:	2e2e2e2e 	0x2e2e2e2e
1c006238:	2e2e2e2e 	0x2e2e2e2e
1c00623c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39a468 <_sidata+0x393dd4>
1c006240:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1a89c <_start-0x2e5764>
1c006244:	2e2e4c49 	0x2e2e4c49
1c006248:	2e2e2e2e 	0x2e2e2e2e
1c00624c:	2e2e2e2e 	0x2e2e2e2e
1c006250:	2e2e2e2e 	0x2e2e2e2e
1c006254:	00000d0a 	0x00000d0a
1c006258:	2e2e2e0a 	0x2e2e2e0a
1c00625c:	2e2e2e2e 	0x2e2e2e2e
1c006260:	2e2e2e2e 	0x2e2e2e2e
1c006264:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38a390 <_sidata+0x383cfc>
1c006268:	2e2e2e43 	0x2e2e2e43
1c00626c:	2e2e2e2e 	0x2e2e2e2e
1c006270:	2e2e2e2e 	0x2e2e2e2e
1c006274:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c006278:	0000000d 	0x0000000d
1c00627c:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c01d4e0 <_sidata+0x16e4c>
1c006280:	72656870 	0x72656870
1c006284:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c006288:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01cff0 <_sidata+0x1695c>
1c00628c:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00c5ac <_sidata+0x5f18>
1c006290:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c006294:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01d700 <_sidata+0x1706c>
1c006298:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00629c:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c0062a0:	00000000 	0x00000000
1c0062a4:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c01d510 <_sidata+0x16e7c>
1c0062a8:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01cbfc <_sidata+0x16568>
1c0062ac:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff831c <_start-0x7ce4>
1c0062b0:	7261656c 	0x7261656c
1c0062b4:	746e6920 	0x746e6920
1c0062b8:	75727265 	0x75727265
1c0062bc:	2e2e7470 	0x2e2e7470
1c0062c0:	0000000a 	0x0000000a

1c0062c4 <Ext_IrqHandle>:
1c0062c4:	1c004944 	pcaddu12i	$r4,586(0x24a)
1c0062c8:	1c004990 	pcaddu12i	$r16,588(0x24c)
1c0062cc:	1c0049dc 	pcaddu12i	$r28,590(0x24e)
1c0062d0:	1c004a28 	pcaddu12i	$r8,593(0x251)
1c0062d4:	1c004a74 	pcaddu12i	$r20,595(0x253)
1c0062d8:	1c004ac0 	pcaddu12i	$r0,598(0x256)
1c0062dc:	1c004b0c 	pcaddu12i	$r12,600(0x258)
1c0062e0:	1c004b58 	pcaddu12i	$r24,602(0x25a)
1c0062e4:	1c004ba4 	pcaddu12i	$r4,605(0x25d)
1c0062e8:	1c004bf0 	pcaddu12i	$r16,607(0x25f)
1c0062ec:	1c004c3c 	pcaddu12i	$r28,609(0x261)
1c0062f0:	1c004c88 	pcaddu12i	$r8,612(0x264)
1c0062f4:	1c004cd4 	pcaddu12i	$r20,614(0x266)
1c0062f8:	1c004d20 	pcaddu12i	$r0,617(0x269)
1c0062fc:	1c004d6c 	pcaddu12i	$r12,619(0x26b)
1c006300:	1c004db8 	pcaddu12i	$r24,621(0x26d)
1c006304:	1c004e04 	pcaddu12i	$r4,624(0x270)
1c006308:	1c004e50 	pcaddu12i	$r16,626(0x272)
1c00630c:	1c004e9c 	pcaddu12i	$r28,628(0x274)
1c006310:	1c004ee8 	pcaddu12i	$r8,631(0x277)
1c006314:	1c004f34 	pcaddu12i	$r20,633(0x279)
1c006318:	1c004f80 	pcaddu12i	$r0,636(0x27c)
1c00631c:	1c004fcc 	pcaddu12i	$r12,638(0x27e)
1c006320:	1c005018 	pcaddu12i	$r24,640(0x280)
1c006324:	1c005064 	pcaddu12i	$r4,643(0x283)
1c006328:	1c0050b0 	pcaddu12i	$r16,645(0x285)
1c00632c:	1c0050fc 	pcaddu12i	$r28,647(0x287)
1c006330:	1c005148 	pcaddu12i	$r8,650(0x28a)
1c006334:	1c005194 	pcaddu12i	$r20,652(0x28c)
1c006338:	1c0051e0 	pcaddu12i	$r0,655(0x28f)
1c00633c:	1c00522c 	pcaddu12i	$r12,657(0x291)
1c006340:	1c005278 	pcaddu12i	$r24,659(0x293)
1c006344:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006348:	1c005514 	pcaddu12i	$r20,680(0x2a8)
1c00634c:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006350:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006354:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006358:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c00635c:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006360:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006364:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006368:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c00636c:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006370:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006374:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006378:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c00637c:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006380:	1c005564 	pcaddu12i	$r4,683(0x2ab)
1c006384:	1c005530 	pcaddu12i	$r16,681(0x2a9)

1c006388 <__FUNCTION__.1731>:
1c006388:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d800 <_sidata+0x1716c>
1c00638c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d3f0 <_sidata+0x16d5c>
1c006390:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff93f0 <_start-0x6c10>
1c006394:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd504 <_start-0x2afc>
1c006398:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d1f8 <_sidata+0x6b64>
1c00639c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0063a0 <__FUNCTION__.1735>:
1c0063a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d818 <_sidata+0x17184>
1c0063a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d408 <_sidata+0x16d74>
1c0063a8:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9508 <_start-0x6af8>
1c0063ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd51c <_start-0x2ae4>
1c0063b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d210 <_sidata+0x6b7c>
1c0063b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0063b8 <__FUNCTION__.1739>:
1c0063b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d830 <_sidata+0x1719c>
1c0063bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d420 <_sidata+0x16d8c>
1c0063c0:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9620 <_start-0x69e0>
1c0063c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd534 <_start-0x2acc>
1c0063c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d228 <_sidata+0x6b94>
1c0063cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0063d0 <__FUNCTION__.1743>:
1c0063d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d848 <_sidata+0x171b4>
1c0063d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d438 <_sidata+0x16da4>
1c0063d8:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9738 <_start-0x68c8>
1c0063dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd54c <_start-0x2ab4>
1c0063e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d240 <_sidata+0x6bac>
1c0063e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0063e8 <__FUNCTION__.1747>:
1c0063e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d860 <_sidata+0x171cc>
1c0063ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d450 <_sidata+0x16dbc>
1c0063f0:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9850 <_start-0x67b0>
1c0063f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd564 <_start-0x2a9c>
1c0063f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d258 <_sidata+0x6bc4>
1c0063fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006400 <__FUNCTION__.1751>:
1c006400:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d878 <_sidata+0x171e4>
1c006404:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d468 <_sidata+0x16dd4>
1c006408:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9968 <_start-0x6698>
1c00640c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd57c <_start-0x2a84>
1c006410:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d270 <_sidata+0x6bdc>
1c006414:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006418 <__FUNCTION__.1755>:
1c006418:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d890 <_sidata+0x171fc>
1c00641c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d480 <_sidata+0x16dec>
1c006420:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff9a80 <_start-0x6580>
1c006424:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd594 <_start-0x2a6c>
1c006428:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d288 <_sidata+0x6bf4>
1c00642c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006430 <__FUNCTION__.1759>:
1c006430:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8a8 <_sidata+0x17214>
1c006434:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d498 <_sidata+0x16e04>
1c006438:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff9b98 <_start-0x6468>
1c00643c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5ac <_start-0x2a54>
1c006440:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2a0 <_sidata+0x6c0c>
1c006444:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006448 <__FUNCTION__.1763>:
1c006448:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8c0 <_sidata+0x1722c>
1c00644c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4b0 <_sidata+0x16e1c>
1c006450:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff94b0 <_start-0x6b50>
1c006454:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5c4 <_start-0x2a3c>
1c006458:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2b8 <_sidata+0x6c24>
1c00645c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006460 <__FUNCTION__.1767>:
1c006460:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8d8 <_sidata+0x17244>
1c006464:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4c8 <_sidata+0x16e34>
1c006468:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff95c8 <_start-0x6a38>
1c00646c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5dc <_start-0x2a24>
1c006470:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2d0 <_sidata+0x6c3c>
1c006474:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006478 <__FUNCTION__.1771>:
1c006478:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d8f0 <_sidata+0x1725c>
1c00647c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4e0 <_sidata+0x16e4c>
1c006480:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff96e0 <_start-0x6920>
1c006484:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd5f4 <_start-0x2a0c>
1c006488:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d2e8 <_sidata+0x6c54>
1c00648c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006490 <__FUNCTION__.1775>:
1c006490:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d908 <_sidata+0x17274>
1c006494:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d4f8 <_sidata+0x16e64>
1c006498:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff97f8 <_start-0x6808>
1c00649c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd60c <_start-0x29f4>
1c0064a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d300 <_sidata+0x6c6c>
1c0064a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064a8 <__FUNCTION__.1779>:
1c0064a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d920 <_sidata+0x1728c>
1c0064ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d510 <_sidata+0x16e7c>
1c0064b0:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9910 <_start-0x66f0>
1c0064b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd624 <_start-0x29dc>
1c0064b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d318 <_sidata+0x6c84>
1c0064bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064c0 <__FUNCTION__.1783>:
1c0064c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d938 <_sidata+0x172a4>
1c0064c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d528 <_sidata+0x16e94>
1c0064c8:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff9a28 <_start-0x65d8>
1c0064cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd63c <_start-0x29c4>
1c0064d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d330 <_sidata+0x6c9c>
1c0064d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064d8 <__FUNCTION__.1787>:
1c0064d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d950 <_sidata+0x172bc>
1c0064dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d540 <_sidata+0x16eac>
1c0064e0:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff9b40 <_start-0x64c0>
1c0064e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd654 <_start-0x29ac>
1c0064e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d348 <_sidata+0x6cb4>
1c0064ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0064f0 <__FUNCTION__.1791>:
1c0064f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d968 <_sidata+0x172d4>
1c0064f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d558 <_sidata+0x16ec4>
1c0064f8:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff9c58 <_start-0x63a8>
1c0064fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd66c <_start-0x2994>
1c006500:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d360 <_sidata+0x6ccc>
1c006504:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006508 <__FUNCTION__.1795>:
1c006508:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d980 <_sidata+0x172ec>
1c00650c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d570 <_sidata+0x16edc>
1c006510:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9570 <_start-0x6a90>
1c006514:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd684 <_start-0x297c>
1c006518:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d378 <_sidata+0x6ce4>
1c00651c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006520 <__FUNCTION__.1799>:
1c006520:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d998 <_sidata+0x17304>
1c006524:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d588 <_sidata+0x16ef4>
1c006528:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9688 <_start-0x6978>
1c00652c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd69c <_start-0x2964>
1c006530:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d390 <_sidata+0x6cfc>
1c006534:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006538 <__FUNCTION__.1803>:
1c006538:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9b0 <_sidata+0x1731c>
1c00653c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5a0 <_sidata+0x16f0c>
1c006540:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff97a0 <_start-0x6860>
1c006544:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6b4 <_start-0x294c>
1c006548:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3a8 <_sidata+0x6d14>
1c00654c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006550 <__FUNCTION__.1807>:
1c006550:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9c8 <_sidata+0x17334>
1c006554:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5b8 <_sidata+0x16f24>
1c006558:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff98b8 <_start-0x6748>
1c00655c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6cc <_start-0x2934>
1c006560:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3c0 <_sidata+0x6d2c>
1c006564:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006568 <__FUNCTION__.1811>:
1c006568:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9e0 <_sidata+0x1734c>
1c00656c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5d0 <_sidata+0x16f3c>
1c006570:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff99d0 <_start-0x6630>
1c006574:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6e4 <_start-0x291c>
1c006578:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3d8 <_sidata+0x6d44>
1c00657c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006580 <__FUNCTION__.1815>:
1c006580:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01d9f8 <_sidata+0x17364>
1c006584:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d5e8 <_sidata+0x16f54>
1c006588:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff9ae8 <_start-0x6518>
1c00658c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd6fc <_start-0x2904>
1c006590:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d3f0 <_sidata+0x6d5c>
1c006594:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006598 <__FUNCTION__.1819>:
1c006598:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da10 <_sidata+0x1737c>
1c00659c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d600 <_sidata+0x16f6c>
1c0065a0:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9c00 <_start-0x6400>
1c0065a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd714 <_start-0x28ec>
1c0065a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d408 <_sidata+0x6d74>
1c0065ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065b0 <__FUNCTION__.1823>:
1c0065b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da28 <_sidata+0x17394>
1c0065b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d618 <_sidata+0x16f84>
1c0065b8:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9d18 <_start-0x62e8>
1c0065bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd72c <_start-0x28d4>
1c0065c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d420 <_sidata+0x6d8c>
1c0065c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065c8 <__FUNCTION__.1827>:
1c0065c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da40 <_sidata+0x173ac>
1c0065cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d630 <_sidata+0x16f9c>
1c0065d0:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9634 <_start-0x69cc>
1c0065d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd744 <_start-0x28bc>
1c0065d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d438 <_sidata+0x6da4>
1c0065dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065e0 <__FUNCTION__.1831>:
1c0065e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da58 <_sidata+0x173c4>
1c0065e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d648 <_sidata+0x16fb4>
1c0065e8:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff974c <_start-0x68b4>
1c0065ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd75c <_start-0x28a4>
1c0065f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d450 <_sidata+0x6dbc>
1c0065f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0065f8 <__FUNCTION__.1835>:
1c0065f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da70 <_sidata+0x173dc>
1c0065fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d660 <_sidata+0x16fcc>
1c006600:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9864 <_start-0x679c>
1c006604:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd774 <_start-0x288c>
1c006608:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d468 <_sidata+0x6dd4>
1c00660c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006610 <__FUNCTION__.1839>:
1c006610:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01da88 <_sidata+0x173f4>
1c006614:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d678 <_sidata+0x16fe4>
1c006618:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff997c <_start-0x6684>
1c00661c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd78c <_start-0x2874>
1c006620:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d480 <_sidata+0x6dec>
1c006624:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006628 <__FUNCTION__.1843>:
1c006628:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01daa0 <_sidata+0x1740c>
1c00662c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d690 <_sidata+0x16ffc>
1c006630:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff9a94 <_start-0x656c>
1c006634:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7a4 <_start-0x285c>
1c006638:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d498 <_sidata+0x6e04>
1c00663c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006640 <__FUNCTION__.1847>:
1c006640:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dab8 <_sidata+0x17424>
1c006644:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6a8 <_sidata+0x17014>
1c006648:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff9bac <_start-0x6454>
1c00664c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7bc <_start-0x2844>
1c006650:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4b0 <_sidata+0x6e1c>
1c006654:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006658 <__FUNCTION__.1851>:
1c006658:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dad0 <_sidata+0x1743c>
1c00665c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6c0 <_sidata+0x1702c>
1c006660:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff9cc4 <_start-0x633c>
1c006664:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7d4 <_start-0x282c>
1c006668:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4c8 <_sidata+0x6e34>
1c00666c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006670 <__FUNCTION__.1855>:
1c006670:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dae8 <_sidata+0x17454>
1c006674:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01d6d8 <_sidata+0x17044>
1c006678:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff9ddc <_start-0x6224>
1c00667c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffd7ec <_start-0x2814>
1c006680:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4e0 <_sidata+0x6e4c>
1c006684:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006688 <__FUNCTION__.1864>:
1c006688:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bffdb00 <_start-0x2500>
1c00668c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d4ec <_sidata+0x6e58>
1c006690:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	80000000 	0x80000000
80001008:	80000018 	0x80000018
8000100c:	80000002 	0x80000002

80001010 <F16x16>:
80001010:	32539410 	xvldrepl.h	$xr16,$r0,-1590(0x9ca)
80001014:	1052321e 	addu16i.d	$r30,$r16,5260(0x148c)
80001018:	42427e00 	beqz	$r16,148092(0x2427c) # 80025294 <_edata+0x23838>
8000101c:	00007e42 	0x00007e42
80001020:	ff000000 	0xff000000
80001024:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025596c <_edata+0x253f10>
80001028:	ff494949 	0xff494949
8000102c:	00000000 	0x00000000
80001030:	494acc08 	bceqz	$fcc0,2181836(0x214acc) # 80215afc <_edata+0x2140a0>
80001034:	18cc4a48 	pcaddi	$r8,418386(0x66252)
80001038:	88887f00 	0x88887f00
8000103c:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001040:	1212ff00 	addu16i.d	$r0,$r24,-31553(0x84bf)
80001044:	007f9252 	bstrpick.w	$r18,$r18,0x1f,0x4
80001048:	88887e00 	0x88887e00
8000104c:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001050:	0601f800 	cacop	0x0,$r0,126(0x7e)
80001054:	02020000 	slti	$r0,$r0,128(0x80)
80001058:	02020202 	slti	$r2,$r16,128(0x80)
8000105c:	0000fe02 	0x0000fe02
80001060:	0000ff00 	0x0000ff00
80001064:	00000000 	0x00000000
80001068:	40000000 	beqz	$r0,0 # 80001068 <F16x16+0x58>
8000106c:	00007f80 	0x00007f80
80001070:	14244440 	lu12i.w	$r0,74274(0x12222)
80001074:	0024147f 	crc.w.b.w	$r31,$r3,$r5
80001078:	147f1424 	lu12i.w	$r4,260257(0x3f8a1)
8000107c:	00404424 	0x00404424
80001080:	29498808 	st.h	$r8,$r0,610(0x262)
80001084:	79894909 	0x79894909
80001088:	29090909 	st.b	$r9,$r8,578(0x242)
8000108c:	00088849 	bytepick.w	$r9,$r2,$r2,0x1
80001090:	32220000 	xvldrepl.w	$xr0,$r0,512(0x200)
80001094:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb338 <_sidata+0x63fe4ca4>
80001098:	81091121 	0x81091121
8000109c:	00000001 	0x00000001
800010a0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010a4:	7e82420b 	0x7e82420b
800010a8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010ac:	00004623 	revh.d	$r3,$r17
800010b0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbce0 <_sidata+0x63ff564c>
800010b4:	c8880030 	0xc8880030
800010b8:	888e99a8 	0x888e99a8
800010bc:	0088c8a8 	bstrins.d	$r8,$r5,0x8,0x32
800010c0:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
800010c4:	30408012 	vldrepl.h	$vr18,$r0,64(0x40)
800010c8:	3f00000f 	0x3f00000f
800010cc:	00714040 	bstrins.w	$r0,$r2,0x11,0x10
800010d0:	40404040 	beqz	$r2,16448(0x4040) # 80005110 <_edata+0x36b4>
800010d4:	44ff4040 	bnez	$r2,65344(0xff40) # 80011014 <_edata+0xf5b8>
800010d8:	44444444 	bnez	$r2,1066052(0x104444) # 8010551c <_edata+0x103ac0>
800010dc:	00404044 	0x00404044
800010e0:	00000000 	0x00000000
800010e4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
800010e8:	08040200 	0x08040200
800010ec:	00000010 	0x00000010
800010f0:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
800010f4:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
800010f8:	d20e9222 	0xd20e9222
800010fc:	00001e22 	ctz.w	$r2,$r17
80001100:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001104:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001108:	ff09090a 	0xff09090a
8000110c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001110:	e72c1020 	0xe72c1020
80001114:	e2002424 	0xe2002424
80001118:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000111c:	0000e628 	0x0000e628
80001120:	7f010101 	0x7f010101
80001124:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
80001128:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
8000112c:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
80001130:	04448c10 	csrrd	$r16,0x1123
80001134:	a69504e4 	0xa69504e4
80001138:	84142444 	0x84142444
8000113c:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001140:	417a0202 	beqz	$r16,621056(0x97a00) # 80098b40 <_edata+0x970e4>
80001144:	7e424341 	0x7e424341
80001148:	43424242 	beqz	$r18,737856(0xb4240) # 800b5388 <_edata+0xb392c>
8000114c:	000000f8 	0x000000f8
80001150:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f5d4 <_edata+0xdb78>
80001154:	0200c444 	slti	$r4,$r2,49(0x31)
80001158:	828282f2 	0x828282f2
8000115c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001160:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001164:	08003f10 	0x08003f10
80001168:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201970 <_edata+0x1fff14>
8000116c:	003f4088 	0x003f4088
80001170:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001174:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001178:	d20e9222 	0xd20e9222
8000117c:	00001e22 	ctz.w	$r2,$r17
80001180:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001184:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001188:	ff09090a 	0xff09090a
8000118c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001190:	e72c1020 	0xe72c1020
80001194:	e2002424 	0xe2002424
80001198:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000119c:	0000e628 	0x0000e628
800011a0:	7f010101 	0x7f010101
800011a4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800011a8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800011ac:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800011b0:	cc424040 	0xcc424040
800011b4:	9ea04000 	0x9ea04000
800011b8:	9e828282 	0x9e828282
800011bc:	002020a0 	div.w	$r0,$r5,$r8
800011c0:	3f000000 	0x3f000000
800011c4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3524c <_sidata+0x63c2ebb8>
800011c8:	4628102c 	bnez	$r1,3287056(0x322810) # 803239d8 <_edata+0x321f7c>
800011cc:	00808041 	bstrins.d	$r1,$r2,0x0,0x20
800011d0:	d5151700 	0xd5151700
800011d4:	7d555755 	0x7d555755
800011d8:	d5555755 	0xd5555755
800011dc:	00001715 	clz.w	$r21,$r24
800011e0:	7f404040 	0x7f404040
800011e4:	55555555 	bl	89478484(0x5555554) # 85556738 <_edata+0x5554cdc>
800011e8:	7f555555 	0x7f555555
800011ec:	00404040 	0x00404040
800011f0:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
800011f4:	54544400 	bl	21572(0x5444) # 80006638 <_edata+0x4bdc>
800011f8:	54547f54 	bl	-45067140(0xd50547c) # 7d506674 <_sidata+0x614fffe0>
800011fc:	00404454 	0x00404454
80001200:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001204:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001208:	95551515 	0x95551515
8000120c:	0000007f 	0x0000007f
80001210:	cc424040 	0xcc424040
80001214:	c84e5000 	0xc84e5000
80001218:	48c87f48 	0x48c87f48
8000121c:	00004048 	revh.2w	$r8,$r2
80001220:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001224:	434c5020 	beqz	$r1,216144(0x34c50) # 80035e74 <_edata+0x34418>
80001228:	504f4040 	b	16797504(0x1004f40) # 81006168 <_edata+0x100470c>
8000122c:	00405c50 	0x00405c50
80001230:	10ff1010 	addu16i.d	$r16,$r0,16324(0x3fc4)
80001234:	4a868200 	0x4a868200
80001238:	4a52a252 	0x4a52a252
8000123c:	00808086 	bstrins.d	$r6,$r4,0x0,0x20
80001240:	017f8242 	0x017f8242
80001244:	12121000 	addu16i.d	$r0,$r0,-31612(0x8484)
80001248:	1212ff12 	addu16i.d	$r18,$r24,-31553(0x84bf)
8000124c:	00001012 	clo.w	$r18,$r0
80001250:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001254:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001258:	d20e9222 	0xd20e9222
8000125c:	00001e22 	ctz.w	$r2,$r17
80001260:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001264:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001268:	ff09090a 	0xff09090a
8000126c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001270:	e72c1020 	0xe72c1020
80001274:	e2002424 	0xe2002424
80001278:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000127c:	0000e628 	0x0000e628
80001280:	7f010101 	0x7f010101
80001284:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
80001288:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
8000128c:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
80001290:	08080808 	0x08080808
80001294:	8e89f808 	0x8e89f808
80001298:	88888888 	0x88888888
8000129c:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800012a0:	20408000 	ll.w	$r0,$r0,16512(0x4080)
800012a4:	00000718 	0x00000718
800012a8:	3f408040 	0x3f408040
800012ac:	00000000 	0x00000000
800012b0:	90901010 	0x90901010
800012b4:	10909090 	addu16i.d	$r16,$r4,9252(0x2424)
800012b8:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
800012bc:	00101611 	add.w	$r17,$r16,$r5
800012c0:	20602000 	ll.w	$r0,$r0,24608(0x6020)
800012c4:	1010103f 	addu16i.d	$r31,$r1,1028(0x404)
800012c8:	100c0300 	addu16i.d	$r0,$r24,768(0x300)
800012cc:	00f84020 	bstrpick.d	$r0,$r1,0x38,0x10
800012d0:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
800012d4:	54544400 	bl	21572(0x5444) # 80006718 <_edata+0x4cbc>
800012d8:	54547f54 	bl	-45067140(0xd50547c) # 7d506754 <_sidata+0x615000c0>
800012dc:	00404454 	0x00404454
800012e0:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
800012e4:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
800012e8:	95551515 	0x95551515
800012ec:	0000007f 	0x0000007f
800012f0:	c81f6888 	0xc81f6888
800012f4:	54c81008 	bl	2148368(0x20c810) # 8020db04 <_edata+0x20c0a8>
800012f8:	9412d152 	0x9412d152
800012fc:	0010d008 	add.d	$r8,$r0,$r20
80001300:	ff091909 	0xff091909
80001304:	12ff0005 	addu16i.d	$r5,$r0,-16448(0xbfc0)
80001308:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1404 <_sidata+0x63fead70>
8000130c:	00007f80 	0x00007f80
80001310:	00000000 	0x00000000
80001314:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
80001318:	000000e0 	0x000000e0
8000131c:	00000000 	0x00000000
80001320:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001324:	0000030c 	0x0000030c
80001328:	300c0300 	0x300c0300
8000132c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001330:	04448c10 	csrrd	$r16,0x1123
80001334:	a69504e4 	0xa69504e4
80001338:	84142444 	0x84142444
8000133c:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001340:	417a0202 	beqz	$r16,621056(0x97a00) # 80098d40 <_edata+0x972e4>
80001344:	7e424341 	0x7e424341
80001348:	43424242 	beqz	$r18,737856(0xb4240) # 800b5588 <_edata+0xb3b2c>
8000134c:	000000f8 	0x000000f8
80001350:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f7d4 <_edata+0xdd78>
80001354:	0200c444 	slti	$r4,$r2,49(0x31)
80001358:	828282f2 	0x828282f2
8000135c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001360:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001364:	08003f10 	0x08003f10
80001368:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201b70 <_edata+0x200114>
8000136c:	003f4088 	0x003f4088
80001370:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001374:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001378:	d20e9222 	0xd20e9222
8000137c:	00001e22 	ctz.w	$r2,$r17
80001380:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001384:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001388:	ff09090a 	0xff09090a
8000138c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001390:	e72c1020 	0xe72c1020
80001394:	e2002424 	0xe2002424
80001398:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000139c:	0000e628 	0x0000e628
800013a0:	7f010101 	0x7f010101
800013a4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800013a8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800013ac:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800013b0:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800013b4:	ff101010 	0xff101010
800013b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800013bc:	00000010 	0x00000010
800013c0:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800013c4:	01030d11 	fsub.d	$f17,$f8,$f3
800013c8:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800013cc:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800013d0:	fa02fe00 	0xfa02fe00
800013d4:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800013d8:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800013dc:	001010f0 	add.w	$r16,$r7,$r4
800013e0:	0f304780 	0x0f304780
800013e4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09448 <_sidata+0x63c02db4>
800013e8:	16081621 	lu32i.d	$r1,16561(0x40b1)
800013ec:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
800013f0:	88f80000 	0x88f80000
800013f4:	08888888 	0x08888888
800013f8:	0908ff08 	0x0908ff08
800013fc:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001400:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001404:	801f2010 	0x801f2010
80001408:	18162140 	pcaddi	$r0,45322(0xb10a)
8000140c:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001410:	f8080808 	0xf8080808
80001414:	10080808 	addu16i.d	$r8,$r0,514(0x202)
80001418:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
8000141c:	0000f010 	0x0000f010
80001420:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001424:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
80001428:	8040010e 	0x8040010e
8000142c:	00003f40 	revb.d	$r0,$r26
80001430:	07f86080 	0x07f86080
80001434:	2424e404 	ldptr.w	$r4,$r0,9444(0x24e4)
80001438:	2424ff24 	ldptr.w	$r4,$r25,9468(0x24fc)
8000143c:	0004e424 	alsl.w	$r4,$r1,$r25,0x2
80001440:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
80001444:	29458180 	st.h	$r0,$r12,352(0x160)
80001448:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55574 <_sidata+0x63c4eee0>
8000144c:	00808181 	bstrins.d	$r1,$r12,0x0,0x20
80001450:	22fe0000 	ll.d	$r0,$r0,-512(0xfe00)
80001454:	fe222222 	0xfe222222
80001458:	22222222 	ll.d	$r2,$r17,8736(0x2220)
8000145c:	000000fe 	0x000000fe
80001460:	021f6080 	slti	$r0,$r4,2008(0x7d8)
80001464:	7f020202 	0x7f020202
80001468:	82420202 	0x82420202
8000146c:	0000007f 	0x0000007f
80001470:	a2236488 	0xa2236488
80001474:	baa2aaa6 	0xbaa2aaa6
80001478:	26a2a3a4 	ldptr.d	$r4,$r29,-23904(0xa2a0)
8000147c:	0062a22a 	bstrpick.w	$r10,$r17,0x2,0x8
80001480:	ff000000 	0xff000000
80001484:	4a4a4a4a 	0x4a4a4a4a
80001488:	f84b4a4a 	0xf84b4a4a
8000148c:	00000000 	0x00000000
80001490:	fc848404 	0xfc848404
80001494:	fe008484 	0xfe008484
80001498:	92fe9292 	0x92fe9292
8000149c:	0000fe92 	0x0000fe92
800014a0:	1f206020 	pcaddu18i	$r0,-457983(0x90301)
800014a4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054b4 <_sidata+0x63bfee20>
800014a8:	447f4444 	bnez	$r2,1081156(0x107f44) # 801093ec <_edata+0x107990>
800014ac:	00404444 	0x00404444
800014b0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4b0 <_sidata+0x63fe6e1c>
800014b4:	52525252 	b	-112569776(0x94a5250) # 794a6704 <_sidata+0x5d4a0070>
800014b8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6708 <_sidata+0x63fe0074>
800014bc:	000000c0 	0x000000c0
800014c0:	408f8080 	beqz	$r4,36736(0x8f80) # 8000a440 <_edata+0x89e4>
800014c4:	0e102040 	0x0e102040
800014c8:	20201010 	ll.w	$r16,$r0,8208(0x2010)
800014cc:	0000804f 	0x0000804f
800014d0:	cc424040 	0xcc424040
800014d4:	49ff0000 	bceqz	$fcc0,130816(0x1ff00) # 800213d4 <_edata+0x1f978>
800014d8:	4949c949 	bcnez	$fcc2,2443720(0x2549c8) # 80255ea0 <_edata+0x254444>
800014dc:	0000807f 	0x0000807f
800014e0:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800014e4:	485f4020 	bceqz	$fcc1,24384(0x5f40) # 80007424 <_edata+0x59c8>
800014e8:	42414044 	beqz	$r2,1196352(0x124140) # 80125628 <_edata+0x123bcc>
800014ec:	00405845 	0x00405845
800014f0:	407c0000 	beqz	$r0,31744(0x7c00) # 800090f0 <_edata+0x7694>
800014f4:	ff404040 	0xff404040
800014f8:	40404040 	beqz	$r2,16448(0x4040) # 80005538 <_edata+0x3adc>
800014fc:	000000fc 	0x000000fc
80001500:	40407c00 	beqz	$r0,16508(0x407c) # 8000557c <_edata+0x3b20>
80001504:	7f404040 	0x7f404040
80001508:	40404040 	beqz	$r2,16448(0x4040) # 80005548 <_edata+0x3aec>
8000150c:	0000fc40 	0x0000fc40
80001510:	cc424040 	0xcc424040
80001514:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001518:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
8000151c:	000062a3 	rdtimel.w	$r3,$r21
80001520:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001524:	50475820 	b	8406872(0x804758) # 80805c7c <_edata+0x804220>
80001528:	45424548 	bnez	$r10,2179652(0x214244) # 8021576c <_edata+0x213d10>
8000152c:	00405048 	0x00405048
80001530:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001534:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
80001538:	0202f212 	slti	$r18,$r16,188(0xbc)
8000153c:	000000fe 	0x000000fe
80001540:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001544:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
80001548:	20202724 	ll.w	$r4,$r25,8228(0x2024)
8000154c:	0000007f 	0x0000007f
80001550:	84442404 	0x84442404
80001554:	30409c64 	vldrepl.h	$vr4,$r3,78(0x4e)
80001558:	0808c80f 	0x0808c80f
8000155c:	00001828 	cto.w	$r8,$r1
80001560:	01060810 	0x01060810
80001564:	18204c82 	pcaddi	$r2,66148(0x10264)
80001568:	18060106 	pcaddi	$r6,12296(0x3008)
8000156c:	00804020 	bstrins.d	$r0,$r1,0x0,0x10
80001570:	cc424040 	0xcc424040
80001574:	04fc0000 	csrrd	$r0,0x3f00
80001578:	04fc0002 	csrrd	$r2,0x3f00
8000157c:	0000fc04 	0x0000fc04
80001580:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001584:	444f4020 	bnez	$r1,20288(0x4f40) # 800064c4 <_edata+0x4a68>
80001588:	427f4042 	beqz	$r2,687936(0xa7f40) # 800a94c8 <_edata+0xa7a6c>
8000158c:	00404344 	0x00404344
80001590:	44424040 	bnez	$r2,16960(0x4240) # 800057d0 <_edata+0x3d74>
80001594:	7f40c058 	0x7f40c058
80001598:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 80006658 <_edata+0x4bfc>
8000159c:	00404046 	0x00404046
800015a0:	20408080 	ll.w	$r0,$r4,16512(0x4080)
800015a4:	00000718 	0x00000718
800015a8:	40403f00 	beqz	$r24,16444(0x403c) # 800055e4 <_edata+0x3b88>
800015ac:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
800015b0:	0000f800 	0x0000f800
800015b4:	182040ff 	pcaddi	$r31,66055(0x10207)
800015b8:	0868180f 	fmsub.d	$f15,$f0,$f6,$f16
800015bc:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800015c0:	00001f00 	ctz.w	$r0,$r24
800015c4:	7f0000ff 	0x7f0000ff
800015c8:	213f2121 	sc.w	$r1,$r9,16160(0x3f20)
800015cc:	00007f21 	0x00007f21
800015d0:	cc424040 	0xcc424040
800015d4:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
800015d8:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
800015dc:	000062a3 	rdtimel.w	$r3,$r21
800015e0:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800015e4:	50475820 	b	8406872(0x804758) # 80805d3c <_edata+0x8042e0>
800015e8:	45424548 	bnez	$r10,2179652(0x214244) # 8021582c <_edata+0x213dd0>
800015ec:	00405048 	0x00405048
800015f0:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
800015f4:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
800015f8:	0202f212 	slti	$r18,$r16,188(0xbc)
800015fc:	000000fe 	0x000000fe
80001600:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001604:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
80001608:	20202724 	ll.w	$r4,$r25,8228(0x2024)
8000160c:	0000007f 	0x0000007f
80001610:	8c026010 	0x8c026010
80001614:	52921000 	b	168464(0x29210) # 8002a824 <_edata+0x28dc8>
80001618:	52321e32 	b	-120966628(0x8ca321c) # 78ca4834 <_sidata+0x5cc9e1a0>
8000161c:	00101292 	add.w	$r18,$r20,$r4
80001620:	017e0404 	0x017e0404
80001624:	40182100 	beqz	$r8,6176(0x1820) # 80002e44 <_edata+0x13e8>
80001628:	30087f80 	0x30087f80
8000162c:	00310904 	0x00310904
80001630:	ff101010 	0xff101010
80001634:	00f01010 	bstrpick.d	$r16,$r0,0x30,0x4
80001638:	0808f800 	0x0808f800
8000163c:	0000f808 	0x0000f808
80001640:	0f304080 	0x0f304080
80001644:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
80001648:	20207f00 	ll.w	$r0,$r24,8316(0x207c)
8000164c:	00007f20 	0x00007f20
80001650:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001654:	3d64a424 	0x3d64a424
80001658:	242424a6 	ldptr.w	$r6,$r5,9252(0x2424)
8000165c:	00042424 	alsl.w	$r4,$r1,$r9,0x1
80001660:	100f3040 	addu16i.d	$r0,$r2,972(0x3cc)
80001664:	12121213 	addu16i.d	$r19,$r16,-31612(0x8484)
80001668:	121212ff 	addu16i.d	$r31,$r23,-31612(0x8484)
8000166c:	00101012 	add.w	$r18,$r0,$r4
80001670:	8c026010 	0x8c026010
80001674:	54544400 	bl	21572(0x5444) # 80006ab8 <_edata+0x505c>
80001678:	54547f54 	bl	-45067140(0xd50547c) # 7d506af4 <_sidata+0x61500460>
8000167c:	00404454 	0x00404454
80001680:	017e0404 	0x017e0404
80001684:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
80001688:	95551515 	0x95551515
8000168c:	0000007f 	0x0000007f
80001690:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe398c <_sidata+0x63fdd2f8>
80001694:	28102086 	ld.b	$r6,$r4,1032(0x408)
80001698:	2824e324 	ld.b	$r4,$r25,-1736(0x938)
8000169c:	00202010 	div.w	$r16,$r0,$r8
800016a0:	0804ff00 	0x0804ff00
800016a4:	410d1127 	beqz	$r9,1903888(0x1d0d10) # 801d23b4 <_edata+0x1d0958>
800016a8:	05017f81 	0x05017f81
800016ac:	00003109 	revb.2h	$r9,$r8
800016b0:	82e20000 	0x82e20000
800016b4:	82828282 	0x82828282
800016b8:	fe828282 	0xfe828282
800016bc:	00000000 	0x00000000
800016c0:	403f0000 	beqz	$r0,16128(0x3f00) # 800055c0 <_edata+0x3b64>
800016c4:	40404040 	beqz	$r2,16448(0x4040) # 80005704 <_edata+0x3ca8>
800016c8:	40404040 	beqz	$r2,16448(0x4040) # 80005708 <_edata+0x3cac>
800016cc:	00007840 	0x00007840
800016d0:	7f000000 	0x7f000000
800016d4:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025601c <_edata+0x2545c0>
800016d8:	7f494949 	0x7f494949
800016dc:	00000000 	0x00000000
800016e0:	1d214181 	pcaddu12i	$r1,-456180(0x90a0c)
800016e4:	ff814121 	0xff814121
800016e8:	89898989 	0x89898989
800016ec:	00818189 	bstrins.d	$r9,$r12,0x1,0x20
800016f0:	82820200 	0x82820200
800016f4:	fa122242 	0xfa122242
800016f8:	42222206 	beqz	$r16,1712672(0x1a2220) # 801a3918 <_edata+0x1a1ebc>
800016fc:	00008242 	0x00008242
80001700:	fc000101 	0xfc000101
80001704:	45444444 	bnez	$r2,1131588(0x114444) # 80115b48 <_edata+0x1140ec>
80001708:	fc444444 	0xfc444444
8000170c:	00010000 	asrtle.d	$r0,$r0
80001710:	ff101010 	0xff101010
80001714:	3f009010 	0x3f009010
80001718:	44444848 	bnez	$r2,2114632(0x204448) # 80205b60 <_edata+0x204104>
8000171c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001720:	7f824404 	0x7f824404
80001724:	ff000001 	0xff000001
80001728:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256070 <_edata+0x254614>
8000172c:	0000ff49 	0x0000ff49
80001730:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc360 <_sidata+0x63ff5ccc>
80001734:	f8080810 	0xf8080810
80001738:	f8080e09 	0xf8080e09
8000173c:	00000808 	0x00000808
80001740:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001744:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001748:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000174c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001750:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001754:	54544400 	bl	21572(0x5444) # 80006b98 <_edata+0x513c>
80001758:	54547f54 	bl	-45067140(0xd50547c) # 7d506bd4 <_sidata+0x61500540>
8000175c:	00404454 	0x00404454
80001760:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001764:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001768:	95551515 	0x95551515
8000176c:	0000007f 	0x0000007f
80001770:	ff101010 	0xff101010
80001774:	88982090 	0x88982090
80001778:	888ee988 	0x888ee988
8000177c:	0098a888 	bstrins.d	$r8,$r4,0x18,0x2a
80001780:	7f814202 	0x7f814202
80001784:	84800000 	0x84800000
80001788:	2810284b 	ld.b	$r11,$r2,1034(0x40a)
8000178c:	00008047 	0x00008047
80001790:	24240000 	ldptr.w	$r0,$r0,9216(0x2400)
80001794:	fc242424 	0xfc242424
80001798:	23222222 	sc.d	$r2,$r17,8736(0x2220)
8000179c:	00000022 	0x00000022
800017a0:	02020202 	slti	$r2,$r16,128(0x80)
800017a4:	7f824202 	0x7f824202
800017a8:	02020202 	slti	$r2,$r16,128(0x80)
800017ac:	00020202 	0x00020202
800017b0:	ff101010 	0xff101010
800017b4:	3f009010 	0x3f009010
800017b8:	44444848 	bnez	$r2,2114632(0x204448) # 80205c00 <_edata+0x2041a4>
800017bc:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
800017c0:	7f824404 	0x7f824404
800017c4:	ff000001 	0xff000001
800017c8:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256110 <_edata+0x2546b4>
800017cc:	0000ff49 	0x0000ff49
800017d0:	92828080 	0x92828080
800017d4:	92929292 	0x92929292
800017d8:	fe929292 	0xfe929292
800017dc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
800017e0:	24224040 	ldptr.w	$r0,$r2,8768(0x2240)
800017e4:	7f804810 	0x7f804810
800017e8:	24180804 	ldptr.w	$r4,$r0,6152(0x1808)
800017ec:	00404022 	0x00404022
800017f0:	00000000 	0x00000000
800017f4:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
800017f8:	000000e0 	0x000000e0
800017fc:	00000000 	0x00000000
80001800:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001804:	0000030c 	0x0000030c
80001808:	300c0300 	0x300c0300
8000180c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001810:	ff101010 	0xff101010
80001814:	3f009010 	0x3f009010
80001818:	44444848 	bnez	$r2,2114632(0x204448) # 80205c60 <_edata+0x204204>
8000181c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001820:	7f824404 	0x7f824404
80001824:	ff000001 	0xff000001
80001828:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256170 <_edata+0x254714>
8000182c:	0000ff49 	0x0000ff49
80001830:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc460 <_sidata+0x63ff5dcc>
80001834:	f8080810 	0xf8080810
80001838:	f8080e09 	0xf8080e09
8000183c:	00000808 	0x00000808
80001840:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001844:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001848:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000184c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001850:	88f80000 	0x88f80000
80001854:	08888888 	0x08888888
80001858:	0908ff08 	0x0908ff08
8000185c:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001860:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001864:	801f2010 	0x801f2010
80001868:	18162140 	pcaddi	$r0,45322(0xb10a)
8000186c:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001870:	f8080808 	0xf8080808
80001874:	10080808 	addu16i.d	$r8,$r0,514(0x202)
80001878:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
8000187c:	0000f010 	0x0000f010
80001880:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001884:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
80001888:	8040010e 	0x8040010e
8000188c:	00003f40 	revb.d	$r0,$r26
80001890:	1e304000 	pcaddu18i	$r0,98816(0x18200)
80001894:	ff101010 	0xff101010
80001898:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
8000189c:	00000010 	0x00000010
800018a0:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800018a4:	01030d11 	fsub.d	$f17,$f8,$f3
800018a8:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800018ac:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800018b0:	fa02fe00 	0xfa02fe00
800018b4:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800018b8:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800018bc:	001010f0 	add.w	$r16,$r7,$r4
800018c0:	0f304780 	0x0f304780
800018c4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09928 <_sidata+0x63c03294>
800018c8:	16081621 	lu32i.d	$r1,16561(0x40b1)
800018cc:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
800018d0:	927e0000 	0x927e0000
800018d4:	92929292 	0x92929292
800018d8:	9e929292 	0x9e929292
800018dc:	0000e080 	0x0000e080
800018e0:	28488808 	ld.h	$r8,$r0,546(0x222)
800018e4:	0808081e 	0x0808081e
800018e8:	08fe0808 	0x08fe0808
800018ec:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800018f0:	ea081820 	0xea081820
800018f4:	afa8a8ac 	0xafa8a8ac
800018f8:	eaaca8a8 	0xeaaca8a8
800018fc:	00182808 	sra.w	$r8,$r0,$r10
80001900:	023e0000 	slti	$r0,$r0,-128(0xf80)
80001904:	ff020202 	0xff020202
80001908:	22120202 	ll.d	$r2,$r16,4608(0x1200)
8000190c:	0000001e 	0x0000001e
80001910:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001914:	54544400 	bl	21572(0x5444) # 80006d58 <_edata+0x52fc>
80001918:	54547f54 	bl	-45067140(0xd50547c) # 7d506d94 <_sidata+0x61500700>
8000191c:	00404454 	0x00404454
80001920:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001924:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001928:	95551515 	0x95551515
8000192c:	0000007f 	0x0000007f
80001930:	fea42424 	0xfea42424
80001934:	e2002223 	0xe2002223
80001938:	203f202c 	ll.w	$r12,$r1,16160(0x3f20)
8000193c:	0000e628 	0x0000e628
80001940:	ff010608 	0xff010608
80001944:	ff000601 	0xff000601
80001948:	49090909 	bcnez	$fcc0,2427144(0x250908) # 80252250 <_edata+0x2507f4>
8000194c:	00007f89 	0x00007f89
80001950:	fc000000 	0xfc000000
80001954:	24242424 	ldptr.w	$r4,$r1,9252(0x2424)
80001958:	23222222 	sc.d	$r2,$r17,8736(0x2220)
8000195c:	00202022 	div.w	$r2,$r1,$r8
80001960:	07182040 	0x07182040
80001964:	4242fe00 	beqz	$r16,148220(0x242fc) # 80025c60 <_edata+0x24204>
80001968:	42424242 	beqz	$r18,672320(0xa4240) # 800a5ba8 <_edata+0xa414c>
8000196c:	000000fe 	0x000000fe
80001970:	92f20202 	0x92f20202
80001974:	fe929292 	0xfe929292
80001978:	92929292 	0x92929292
8000197c:	000202f2 	0x000202f2
80001980:	04ff0404 	csrrd	$r4,0x3fc1
80001984:	07040404 	0x07040404
80001988:	84440404 	0x84440404
8000198c:	0004047f 	alsl.w	$r31,$r3,$r1,0x1
80001990:	cc424040 	0xcc424040
80001994:	90909000 	0x90909000
80001998:	10ff9090 	addu16i.d	$r16,$r4,16356(0x3fe4)
8000199c:	00101611 	add.w	$r17,$r16,$r5
800019a0:	3f000000 	0x3f000000
800019a4:	3f602810 	0x3f602810
800019a8:	0e011010 	0x0e011010
800019ac:	00f04030 	bstrpick.d	$r16,$r1,0x30,0x10
800019b0:	10f00000 	addu16i.d	$r0,$r0,15360(0x3c00)
800019b4:	ff101010 	0xff101010
800019b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800019bc:	000000f0 	0x000000f0
800019c0:	040f0000 	csrrd	$r0,0x3c0
800019c4:	ff040404 	0xff040404
800019c8:	04040404 	csrrd	$r4,0x101
800019cc:	0000000f 	0x0000000f
800019d0:	fc000000 	0xfc000000
800019d4:	54555654 	bl	-112175788(0x9505554) # 79506f28 <_sidata+0x5d500894>
800019d8:	fc545454 	0xfc545454
800019dc:	00408000 	slli.w	$r0,$r0,0x0
800019e0:	23424240 	sc.d	$r0,$r18,16960(0x4240)
800019e4:	12122222 	addu16i.d	$r2,$r17,-31608(0x8488)
800019e8:	7f82460a 	0x7f82460a
800019ec:	00000001 	0x00000001
800019f0:	f8608000 	0xf8608000
800019f4:	b0408007 	0xb0408007
800019f8:	8780808e 	0x8780808e
800019fc:	00806098 	bstrins.d	$r24,$r4,0x0,0x18
80001a00:	ff000001 	0xff000001
80001a04:	30408000 	vldrepl.h	$vr0,$r0,64(0x40)
80001a08:	8040000f 	0x8040000f
80001a0c:	0000007f 	0x0000007f
80001a10:	8282fa02 	0x8282fa02
80001a14:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
80001a18:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
80001a1c:	00402050 	0x00402050
80001a20:	84481808 	0x84481808
80001a24:	44403f44 	bnez	$r26,1065020(0x10403c) # 80105a60 <_edata+0x104004>
80001a28:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 80006868 <_edata+0x4e0c>
80001a2c:	00404758 	0x00404758
80001a30:	cc424040 	0xcc424040
80001a34:	c4040000 	0xc4040000
80001a38:	04fc0404 	csrrd	$r4,0x3f01
80001a3c:	00040404 	alsl.w	$r4,$r0,$r1,0x1
80001a40:	3f000000 	0x3f000000
80001a44:	7f404810 	0x7f404810
80001a48:	417f4040 	beqz	$r2,98112(0x17f40) # 80019988 <_edata+0x17f2c>
80001a4c:	00404141 	0x00404141

80001a50 <passwordArray>:
80001a50:	08370837 	0x08370837
80001a54:	08370837 	0x08370837
80001a58:	 	fadd.d	$f23,$f1,$f2

80001a5a <mode>:
80001a5a:	Address 0x0000000080001a5a is out of bounds.


80001a5b <flag1>:
80001a5b:	Address 0x0000000080001a5b is out of bounds.


Disassembly of section .bss:

80000000 <Count>:
	...

80000002 <Password>:
	...

Disassembly of section .bss.g_recvBuff:

80000004 <g_recvBuff>:
	...

Disassembly of section .bss.USART0_RX_STA:

80000018 <USART0_RX_STA>:
	...

Disassembly of section .bss.KeyNum:

80000019 <KeyNum>:
	...

Disassembly of section .bss.flag2:

8000001a <flag2>:
	...

Disassembly of section .bss.flag3:

8000001b <flag3>:
	...

Disassembly of section .bss.flag4:

8000001c <flag4>:
	...

Disassembly of section .bss.flag8:

8000001d <flag8>:
	...

Disassembly of section .bss.flag15:

8000001e <flag15>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
