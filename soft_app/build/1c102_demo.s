
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
1c00000c:	038181ef 	ori	$r15,$r15,0x60
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
1c0000a0:	54748c00 	bl	29836(0x748c) # 1c00752c <main>
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
1c001090:	549a9c00 	bl	39580(0x9a9c) # 1c00ab2c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	549adc00 	bl	39644(0x9adc) # 1c00ab74 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	549b6000 	bl	39776(0x9b60) # 1c00ac00 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	549b9400 	bl	39828(0x9b94) # 1c00ac3c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5499ac00 	bl	39340(0x99ac) # 1c00aa5c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	549d3800 	bl	40248(0x9d38) # 1c00adf0 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	549c4c00 	bl	40012(0x9c4c) # 1c00ad14 <INTC_Handler>
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

1c001128 <EnableInt>:
EnableInt():
1c001128:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00112c:	29803076 	st.w	$r22,$r3,12(0xc)
1c001130:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001134:	0380100c 	ori	$r12,$r0,0x4
1c001138:	0400018c 	csrxchg	$r12,$r12,0x0
1c00113c:	03400000 	andi	$r0,$r0,0x0
1c001140:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001144:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001148:	4c000020 	jirl	$r0,$r1,0

1c00114c <Set_Timer_stop>:
Set_Timer_stop():
1c00114c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001150:	29803076 	st.w	$r22,$r3,12(0xc)
1c001154:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001158:	04010420 	csrwr	$r0,0x41
1c00115c:	03400000 	andi	$r0,$r0,0x0
1c001160:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001164:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001168:	4c000020 	jirl	$r0,$r1,0

1c00116c <Set_Timer_clear>:
Set_Timer_clear():
1c00116c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001170:	29803076 	st.w	$r22,$r3,12(0xc)
1c001174:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001178:	0380040c 	ori	$r12,$r0,0x1
1c00117c:	0401102c 	csrwr	$r12,0x44
1c001180:	03400000 	andi	$r0,$r0,0x0
1c001184:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001188:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00118c:	4c000020 	jirl	$r0,$r1,0

1c001190 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c001190:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001194:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001198:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00119c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0011a0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0011a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0011a8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0011ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0011b0:	001531ad 	or	$r13,$r13,$r12
1c0011b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0011b8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0011bc:	03400000 	andi	$r0,$r0,0x0
1c0011c0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0011c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0011c8:	4c000020 	jirl	$r0,$r1,0

1c0011cc <myputchar>:
myputchar():
1c0011cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0011d0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0011d4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0011d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0011dc:	0015008c 	move	$r12,$r4
1c0011e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0011e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0011e8:	00150185 	move	$r5,$r12
1c0011ec:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0011f0:	5405ec00 	bl	1516(0x5ec) # 1c0017dc <UART_SendData>
1c0011f4:	03400000 	andi	$r0,$r0,0x0
1c0011f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0011fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001200:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001204:	4c000020 	jirl	$r0,$r1,0

1c001208 <printbase>:
printbase():
1c001208:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c00120c:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c001210:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001214:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c001218:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c00121c:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001220:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001224:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001228:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c00122c:	40002580 	beqz	$r12,36(0x24) # 1c001250 <printbase+0x48>
1c001230:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001234:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001250 <printbase+0x48>
1c001238:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c00123c:	0011300c 	sub.w	$r12,$r0,$r12
1c001240:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001244:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001248:	57ff87ff 	bl	-124(0xfffff84) # 1c0011cc <myputchar>
1c00124c:	50000c00 	b	12(0xc) # 1c001258 <printbase+0x50>
1c001250:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001254:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001258:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00125c:	50005000 	b	80(0x50) # 1c0012ac <printbase+0xa4>
1c001260:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001264:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001268:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00126c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001274 <printbase+0x6c>
1c001270:	002a0007 	break	0x7
1c001274:	00005dcc 	ext.w.b	$r12,$r14
1c001278:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00127c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001280:	001035cd 	add.w	$r13,$r14,$r13
1c001284:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001288:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c00128c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001290:	002135cc 	div.wu	$r12,$r14,$r13
1c001294:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00129c <printbase+0x94>
1c001298:	002a0007 	break	0x7
1c00129c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0012a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0012a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0012a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0012ac:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0012b0:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001260 <printbase+0x58>
1c0012b4:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0012b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0012bc:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0012c0:	001231ad 	slt	$r13,$r13,$r12
1c0012c4:	0013b5ce 	masknez	$r14,$r14,$r13
1c0012c8:	0013358c 	maskeqz	$r12,$r12,$r13
1c0012cc:	001531cc 	or	$r12,$r14,$r12
1c0012d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0012d4:	50007400 	b	116(0x74) # 1c001348 <printbase+0x140>
1c0012d8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0012dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0012e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0012fc <printbase+0xf4>
1c0012e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0012e8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0012ec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0012f0:	001031ac 	add.w	$r12,$r13,$r12
1c0012f4:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0012f8:	50000800 	b	8(0x8) # 1c001300 <printbase+0xf8>
1c0012fc:	0015000c 	move	$r12,$r0
1c001300:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001304:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001308:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c00130c:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001324 <printbase+0x11c>
1c001310:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001314:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001318:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c00131c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001320:	50001400 	b	20(0x14) # 1c001334 <printbase+0x12c>
1c001324:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001328:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00132c:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001330:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001334:	00150184 	move	$r4,$r12
1c001338:	57fe97ff 	bl	-364(0xffffe94) # 1c0011cc <myputchar>
1c00133c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001340:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001344:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001348:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00134c:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0012d8 <printbase+0xd0>
1c001350:	0015000c 	move	$r12,$r0
1c001354:	00150184 	move	$r4,$r12
1c001358:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c00135c:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001360:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001364:	4c000020 	jirl	$r0,$r1,0

1c001368 <ls1x_puts>:
ls1x_puts():
1c001368:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00136c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001370:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001374:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001378:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00137c:	50003000 	b	48(0x30) # 1c0013ac <ls1x_puts+0x44>
1c001380:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001384:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001388:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001394 <ls1x_puts+0x2c>
1c00138c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001390:	57fe3fff 	bl	-452(0xffffe3c) # 1c0011cc <myputchar>
1c001394:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001398:	00150184 	move	$r4,$r12
1c00139c:	57fe33ff 	bl	-464(0xffffe30) # 1c0011cc <myputchar>
1c0013a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0013a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0013a8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0013ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0013b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0013b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0013b8:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0013bc:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001380 <ls1x_puts+0x18>
1c0013c0:	0015000c 	move	$r12,$r0
1c0013c4:	00150184 	move	$r4,$r12
1c0013c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0013cc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0013d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0013d4:	4c000020 	jirl	$r0,$r1,0

1c0013d8 <myprintf>:
myprintf():
1c0013d8:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c0013dc:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0013e0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0013e4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0013e8:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0013ec:	298012c5 	st.w	$r5,$r22,4(0x4)
1c0013f0:	298022c6 	st.w	$r6,$r22,8(0x8)
1c0013f4:	298032c7 	st.w	$r7,$r22,12(0xc)
1c0013f8:	298042c8 	st.w	$r8,$r22,16(0x10)
1c0013fc:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001400:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001404:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001408:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c00140c:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001410:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001414:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001418:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00141c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001420:	50033000 	b	816(0x330) # 1c001750 <myprintf+0x378>
1c001424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001428:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00142c:	001031ac 	add.w	$r12,$r13,$r12
1c001430:	2a00018c 	ld.bu	$r12,$r12,0
1c001434:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001438:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c00143c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001440:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001724 <myprintf+0x34c>
1c001444:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001448:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00144c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001450:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001454:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001458:	001031ac 	add.w	$r12,$r13,$r12
1c00145c:	2800018c 	ld.b	$r12,$r12,0
1c001460:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001464:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001468:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001714 <myprintf+0x33c>
1c00146c:	0040898d 	slli.w	$r13,$r12,0x2
1c001470:	1c00014c 	pcaddu12i	$r12,10(0xa)
1c001474:	02a6e18c 	addi.w	$r12,$r12,-1608(0x9b8)
1c001478:	001031ac 	add.w	$r12,$r13,$r12
1c00147c:	2880018c 	ld.w	$r12,$r12,0
1c001480:	4c000180 	jirl	$r0,$r12,0
1c001484:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001488:	2880018c 	ld.w	$r12,$r12,0
1c00148c:	00150184 	move	$r4,$r12
1c001490:	57fedbff 	bl	-296(0xffffed8) # 1c001368 <ls1x_puts>
1c001494:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001498:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00149c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0014a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0014a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014ac:	50029800 	b	664(0x298) # 1c001744 <myprintf+0x36c>
1c0014b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014b4:	2880018c 	ld.w	$r12,$r12,0
1c0014b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0014bc:	00150184 	move	$r4,$r12
1c0014c0:	57fd0fff 	bl	-756(0xffffd0c) # 1c0011cc <myputchar>
1c0014c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0014cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0014d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0014d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0014d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014dc:	50026800 	b	616(0x268) # 1c001744 <myprintf+0x36c>
1c0014e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0014e4:	2880018c 	ld.w	$r12,$r12,0
1c0014e8:	00150007 	move	$r7,$r0
1c0014ec:	02802806 	addi.w	$r6,$r0,10(0xa)
1c0014f0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0014f4:	00150184 	move	$r4,$r12
1c0014f8:	57fd13ff 	bl	-752(0xffffd10) # 1c001208 <printbase>
1c0014fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001500:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001504:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00150c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001510:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001514:	50023000 	b	560(0x230) # 1c001744 <myprintf+0x36c>
1c001518:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00151c:	2880018c 	ld.w	$r12,$r12,0
1c001520:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001524:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001528:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c00152c:	00150184 	move	$r4,$r12
1c001530:	57fcdbff 	bl	-808(0xffffcd8) # 1c001208 <printbase>
1c001534:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001538:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00153c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001544:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	5001f800 	b	504(0x1f8) # 1c001744 <myprintf+0x36c>
1c001550:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001554:	2880018c 	ld.w	$r12,$r12,0
1c001558:	00150007 	move	$r7,$r0
1c00155c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001560:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001564:	00150184 	move	$r4,$r12
1c001568:	57fca3ff 	bl	-864(0xffffca0) # 1c001208 <printbase>
1c00156c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001570:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001574:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00157c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001580:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001584:	5001c000 	b	448(0x1c0) # 1c001744 <myprintf+0x36c>
1c001588:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00158c:	2880018c 	ld.w	$r12,$r12,0
1c001590:	00150007 	move	$r7,$r0
1c001594:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001598:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c00159c:	00150184 	move	$r4,$r12
1c0015a0:	57fc6bff 	bl	-920(0xffffc68) # 1c001208 <printbase>
1c0015a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0015ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0015b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015bc:	50018800 	b	392(0x188) # 1c001744 <myprintf+0x36c>
1c0015c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015c4:	2880018c 	ld.w	$r12,$r12,0
1c0015c8:	00150007 	move	$r7,$r0
1c0015cc:	02804006 	addi.w	$r6,$r0,16(0x10)
1c0015d0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0015d4:	00150184 	move	$r4,$r12
1c0015d8:	57fc33ff 	bl	-976(0xffffc30) # 1c001208 <printbase>
1c0015dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0015e0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0015e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0015e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0015ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0015f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0015f4:	50015000 	b	336(0x150) # 1c001744 <myprintf+0x36c>
1c0015f8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0015fc:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c0011cc <myputchar>
1c001600:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001604:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001608:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00160c:	50013800 	b	312(0x138) # 1c001744 <myprintf+0x36c>
1c001610:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001614:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001618:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00161c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001620:	50003c00 	b	60(0x3c) # 1c00165c <myprintf+0x284>
1c001624:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001628:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00162c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001630:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001634:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001638:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c00163c:	001031cc 	add.w	$r12,$r14,$r12
1c001640:	2800018c 	ld.b	$r12,$r12,0
1c001644:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001648:	001031ac 	add.w	$r12,$r13,$r12
1c00164c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001650:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001654:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001658:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00165c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001660:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001664:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001668:	001031ac 	add.w	$r12,$r13,$r12
1c00166c:	2800018d 	ld.b	$r13,$r12,0
1c001670:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001674:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c00144c <myprintf+0x74>
1c001678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00167c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001680:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001684:	001031ac 	add.w	$r12,$r13,$r12
1c001688:	2800018d 	ld.b	$r13,$r12,0
1c00168c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001690:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001624 <myprintf+0x24c>
1c001694:	53fdbbff 	b	-584(0xffffdb8) # 1c00144c <myprintf+0x74>
1c001698:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00169c:	50003c00 	b	60(0x3c) # 1c0016d8 <myprintf+0x300>
1c0016a0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0016a4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0016a8:	001c31ad 	mul.w	$r13,$r13,$r12
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016b4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c0016b8:	001031cc 	add.w	$r12,$r14,$r12
1c0016bc:	2800018c 	ld.b	$r12,$r12,0
1c0016c0:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0016c4:	001031ac 	add.w	$r12,$r13,$r12
1c0016c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0016cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016e0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0016e4:	001031ac 	add.w	$r12,$r13,$r12
1c0016e8:	2800018d 	ld.b	$r13,$r12,0
1c0016ec:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0016f0:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c00144c <myprintf+0x74>
1c0016f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0016fc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001700:	001031ac 	add.w	$r12,$r13,$r12
1c001704:	2800018d 	ld.b	$r13,$r12,0
1c001708:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00170c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0016a0 <myprintf+0x2c8>
1c001710:	53fd3fff 	b	-708(0xffffd3c) # 1c00144c <myprintf+0x74>
1c001714:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001718:	57fab7ff 	bl	-1356(0xffffab4) # 1c0011cc <myputchar>
1c00171c:	03400000 	andi	$r0,$r0,0x0
1c001720:	50002400 	b	36(0x24) # 1c001744 <myprintf+0x36c>
1c001724:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001728:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00172c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001738 <myprintf+0x360>
1c001730:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001734:	57fa9bff 	bl	-1384(0xffffa98) # 1c0011cc <myputchar>
1c001738:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c00173c:	00150184 	move	$r4,$r12
1c001740:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0011cc <myputchar>
1c001744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001748:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00174c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001750:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001754:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001758:	001031ac 	add.w	$r12,$r13,$r12
1c00175c:	2800018c 	ld.b	$r12,$r12,0
1c001760:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001424 <myprintf+0x4c>
1c001764:	0015000c 	move	$r12,$r0
1c001768:	00150184 	move	$r4,$r12
1c00176c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001770:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001774:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001778:	4c000020 	jirl	$r0,$r1,0

1c00177c <memset>:
memset():
1c00177c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001780:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001784:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001788:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00178c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001790:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c001794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001798:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00179c:	50001c00 	b	28(0x1c) # 1c0017b8 <memset+0x3c>
1c0017a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017a4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0017a8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0017ac:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0017b0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0017b4:	2900018d 	st.b	$r13,$r12,0
1c0017b8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0017bc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0017c0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0017c4:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0017a0 <memset+0x24>
1c0017c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017cc:	00150184 	move	$r4,$r12
1c0017d0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0017d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0017d8:	4c000020 	jirl	$r0,$r1,0

1c0017dc <UART_SendData>:
UART_SendData():
1c0017dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0017e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0017e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0017e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0017ec:	001500ac 	move	$r12,$r5
1c0017f0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0017f4:	03400000 	andi	$r0,$r0,0x0
1c0017f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017fc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001800:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001804:	0340818c 	andi	$r12,$r12,0x20
1c001808:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0017f8 <UART_SendData+0x1c>
1c00180c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001810:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001814:	2900018d 	st.b	$r13,$r12,0
1c001818:	03400000 	andi	$r0,$r0,0x0
1c00181c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001820:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001824:	4c000020 	jirl	$r0,$r1,0

1c001828 <WDG_DogFeed>:
WDG_DogFeed():
1c001828:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00182c:	29803076 	st.w	$r22,$r3,12(0xc)
1c001830:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001834:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001838:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00183c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c001840:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c001844:	03400000 	andi	$r0,$r0,0x0
1c001848:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00184c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001850:	4c000020 	jirl	$r0,$r1,0

1c001854 <gpio_init>:
gpio_init():
1c001854:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001858:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00185c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001860:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001864:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001868:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00186c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001870:	6000698d 	blt	$r12,$r13,104(0x68) # 1c0018d8 <gpio_init+0x84>
1c001874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001878:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00187c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001880:	44003180 	bnez	$r12,48(0x30) # 1c0018b0 <gpio_init+0x5c>
1c001884:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001888:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c00188c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001894:	001731cc 	sll.w	$r12,$r14,$r12
1c001898:	0014300c 	nor	$r12,$r0,$r12
1c00189c:	0015018e 	move	$r14,$r12
1c0018a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018a4:	0014b9ad 	and	$r13,$r13,$r14
1c0018a8:	2981018d 	st.w	$r13,$r12,64(0x40)
1c0018ac:	50009000 	b	144(0x90) # 1c00193c <gpio_init+0xe8>
1c0018b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b4:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c0018b8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018c0:	001731cc 	sll.w	$r12,$r14,$r12
1c0018c4:	0015018e 	move	$r14,$r12
1c0018c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018cc:	001539ad 	or	$r13,$r13,$r14
1c0018d0:	2981018d 	st.w	$r13,$r12,64(0x40)
1c0018d4:	50006800 	b	104(0x68) # 1c00193c <gpio_init+0xe8>
1c0018d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018dc:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0018e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0018e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0018e8:	44003180 	bnez	$r12,48(0x30) # 1c001918 <gpio_init+0xc4>
1c0018ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f0:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0018f4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018fc:	001731cc 	sll.w	$r12,$r14,$r12
1c001900:	0014300c 	nor	$r12,$r0,$r12
1c001904:	0015018e 	move	$r14,$r12
1c001908:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00190c:	0014b9ad 	and	$r13,$r13,$r14
1c001910:	2981418d 	st.w	$r13,$r12,80(0x50)
1c001914:	50002800 	b	40(0x28) # 1c00193c <gpio_init+0xe8>
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c001920:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001924:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001928:	001731cc 	sll.w	$r12,$r14,$r12
1c00192c:	0015018e 	move	$r14,$r12
1c001930:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001934:	001539ad 	or	$r13,$r13,$r14
1c001938:	2981418d 	st.w	$r13,$r12,80(0x50)
1c00193c:	03400000 	andi	$r0,$r0,0x0
1c001940:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001944:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001948:	4c000020 	jirl	$r0,$r1,0

1c00194c <gpio_write>:
gpio_write():
1c00194c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001950:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001954:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001958:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00195c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001960:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001964:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001968:	6000698d 	blt	$r12,$r13,104(0x68) # 1c0019d0 <gpio_write+0x84>
1c00196c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001970:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001974:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001978:	44003180 	bnez	$r12,48(0x30) # 1c0019a8 <gpio_write+0x5c>
1c00197c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001980:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001984:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00198c:	001731cc 	sll.w	$r12,$r14,$r12
1c001990:	0014300c 	nor	$r12,$r0,$r12
1c001994:	0015018e 	move	$r14,$r12
1c001998:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00199c:	0014b9ad 	and	$r13,$r13,$r14
1c0019a0:	2981118d 	st.w	$r13,$r12,68(0x44)
1c0019a4:	50009000 	b	144(0x90) # 1c001a34 <gpio_write+0xe8>
1c0019a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019ac:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c0019b0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019b8:	001731cc 	sll.w	$r12,$r14,$r12
1c0019bc:	0015018e 	move	$r14,$r12
1c0019c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019c4:	001539ad 	or	$r13,$r13,$r14
1c0019c8:	2981118d 	st.w	$r13,$r12,68(0x44)
1c0019cc:	50006800 	b	104(0x68) # 1c001a34 <gpio_write+0xe8>
1c0019d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0019d4:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0019d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0019e0:	44003180 	bnez	$r12,48(0x30) # 1c001a10 <gpio_write+0xc4>
1c0019e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019e8:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c0019ec:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019f4:	001731cc 	sll.w	$r12,$r14,$r12
1c0019f8:	0014300c 	nor	$r12,$r0,$r12
1c0019fc:	0015018e 	move	$r14,$r12
1c001a00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a04:	0014b9ad 	and	$r13,$r13,$r14
1c001a08:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001a0c:	50002800 	b	40(0x28) # 1c001a34 <gpio_write+0xe8>
1c001a10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a14:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001a18:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a20:	001731cc 	sll.w	$r12,$r14,$r12
1c001a24:	0015018e 	move	$r14,$r12
1c001a28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a2c:	001539ad 	or	$r13,$r13,$r14
1c001a30:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001a34:	03400000 	andi	$r0,$r0,0x0
1c001a38:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a40:	4c000020 	jirl	$r0,$r1,0

1c001a44 <gpio_read>:
gpio_read():
1c001a44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a48:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001a4c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a50:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a54:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001a58:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001a5c:	6000458d 	blt	$r12,$r13,68(0x44) # 1c001aa0 <gpio_read+0x5c>
1c001a60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a6c:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c001a70:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	001735cd 	sll.w	$r13,$r14,$r13
1c001a7c:	0014b58c 	and	$r12,$r12,$r13
1c001a80:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a88:	001735cd 	sll.w	$r13,$r14,$r13
1c001a8c:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001a98 <gpio_read+0x54>
1c001a90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a94:	50004c00 	b	76(0x4c) # 1c001ae0 <gpio_read+0x9c>
1c001a98:	0015000c 	move	$r12,$r0
1c001a9c:	50004400 	b	68(0x44) # 1c001ae0 <gpio_read+0x9c>
1c001aa0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001aa4:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001aa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001aac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ab0:	2881618c 	ld.w	$r12,$r12,88(0x58)
1c001ab4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001ab8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001abc:	001735cd 	sll.w	$r13,$r14,$r13
1c001ac0:	0014b58c 	and	$r12,$r12,$r13
1c001ac4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001ac8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001acc:	001735cd 	sll.w	$r13,$r14,$r13
1c001ad0:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001adc <gpio_read+0x98>
1c001ad4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001ad8:	50000800 	b	8(0x8) # 1c001ae0 <gpio_read+0x9c>
1c001adc:	0015000c 	move	$r12,$r0
1c001ae0:	00150184 	move	$r4,$r12
1c001ae4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001ae8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001aec:	4c000020 	jirl	$r0,$r1,0

1c001af0 <soc_I2C_delay>:
soc_I2C_delay():
1c001af0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001af4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001af8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001afc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001b00:	03400000 	andi	$r0,$r0,0x0
1c001b04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001b0c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001b10:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c001b04 <soc_I2C_delay+0x14>
1c001b14:	03400000 	andi	$r0,$r0,0x0
1c001b18:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001b1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c001b24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001b28:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001b2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001b30:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001b34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b38:	1400030d 	lu12i.w	$r13,24(0x18)
1c001b3c:	039a81ad 	ori	$r13,$r13,0x6a0
1c001b40:	2980018d 	st.w	$r13,$r12,0
1c001b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b48:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b4c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b54:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001b58:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001b5c:	03400000 	andi	$r0,$r0,0x0
1c001b60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001b64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001b68:	4c000020 	jirl	$r0,$r1,0

1c001b6c <soc_I2C_Init>:
soc_I2C_Init():
1c001b6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b70:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001b74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b78:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001b80:	1403d08c 	lu12i.w	$r12,7812(0x1e84)
1c001b84:	03a0018c 	ori	$r12,$r12,0x800
1c001b88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b8c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b90:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b94:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001b98:	0280a00c 	addi.w	$r12,$r0,40(0x28)
1c001b9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ba4:	0044898c 	srli.w	$r12,$r12,0x2
1c001ba8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001bac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bb0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bb4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001bb8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bbc:	2900018d 	st.b	$r13,$r12,0
1c001bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bc4:	0044a18d 	srli.w	$r13,$r12,0x8
1c001bc8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bcc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bd0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001bd4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bd8:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001bdc:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001be0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001be4:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001be8:	40001180 	beqz	$r12,16(0x10) # 1c001bf8 <soc_I2C_Init+0x8c>
1c001bec:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bf0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001bf4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001bf8:	03400000 	andi	$r0,$r0,0x0
1c001bfc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001c00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c04:	4c000020 	jirl	$r0,$r1,0

1c001c08 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001c08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c0c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c14:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c1c:	40001580 	beqz	$r12,20(0x14) # 1c001c30 <soc_I2C_GenerateSTART+0x28>
1c001c20:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c24:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001c28:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c2c:	50001000 	b	16(0x10) # 1c001c3c <soc_I2C_GenerateSTART+0x34>
1c001c30:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c34:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001c38:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c3c:	03400000 	andi	$r0,$r0,0x0
1c001c40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c48:	4c000020 	jirl	$r0,$r1,0

1c001c4c <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001c4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c58:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	40001580 	beqz	$r12,20(0x14) # 1c001c74 <soc_I2C_GenerateSTOP+0x28>
1c001c64:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c68:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001c6c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c70:	50001000 	b	16(0x10) # 1c001c80 <soc_I2C_GenerateSTOP+0x34>
1c001c74:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c78:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001c7c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c80:	03400000 	andi	$r0,$r0,0x0
1c001c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c8c:	4c000020 	jirl	$r0,$r1,0

1c001c90 <soc_I2C_SendData>:
soc_I2C_SendData():
1c001c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c98:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ca0:	0015008c 	move	$r12,$r4
1c001ca4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001ca8:	54007800 	bl	120(0x78) # 1c001d20 <soc_I2C_Unlock>
1c001cac:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cb0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001cb4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001cb8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cbc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001cc0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001cc4:	03400000 	andi	$r0,$r0,0x0
1c001cc8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ccc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001cd0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cd4:	4c000020 	jirl	$r0,$r1,0

1c001cd8 <soc_I2C_wait>:
soc_I2C_wait():
1c001cd8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cdc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001ce0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ce4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ce8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001cec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001cf0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001cf4:	50001000 	b	16(0x10) # 1c001d04 <soc_I2C_wait+0x2c>
1c001cf8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cfc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d08:	0340098c 	andi	$r12,$r12,0x2
1c001d0c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001cf8 <soc_I2C_wait+0x20>
1c001d10:	03400000 	andi	$r0,$r0,0x0
1c001d14:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d1c:	4c000020 	jirl	$r0,$r1,0

1c001d20 <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001d20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d2c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d30:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d34:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d3c:	0340118c 	andi	$r12,$r12,0x4
1c001d40:	40001180 	beqz	$r12,16(0x10) # 1c001d50 <soc_I2C_Unlock+0x30>
1c001d44:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d48:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001d4c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d50:	03400000 	andi	$r0,$r0,0x0
1c001d54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d5c:	4c000020 	jirl	$r0,$r1,0

1c001d60 <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001d60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d64:	29803076 	st.w	$r22,$r3,12(0xc)
1c001d68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d6c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d70:	0380c18c 	ori	$r12,$r12,0x30
1c001d74:	29802180 	st.w	$r0,$r12,8(0x8)
1c001d78:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d7c:	0380c18c 	ori	$r12,$r12,0x30
1c001d80:	1400138d 	lu12i.w	$r13,156(0x9c)
1c001d84:	039001ad 	ori	$r13,$r13,0x400
1c001d88:	2980018d 	st.w	$r13,$r12,0
1c001d8c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d90:	0380c18c 	ori	$r12,$r12,0x30
1c001d94:	1400006d 	lu12i.w	$r13,3(0x3)
1c001d98:	03ba01ad 	ori	$r13,$r13,0xe80
1c001d9c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001da0:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001da4:	0380c18c 	ori	$r12,$r12,0x30
1c001da8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001dac:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001db0:	03400000 	andi	$r0,$r0,0x0
1c001db4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001db8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dbc:	4c000020 	jirl	$r0,$r1,0

1c001dc0 <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001dc0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001dc4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001dc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001dcc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001dd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001dd4:	03b2000c 	ori	$r12,$r0,0xc80
1c001dd8:	001c31ae 	mul.w	$r14,$r13,$r12
1c001ddc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001de0:	002031cd 	div.w	$r13,$r14,$r12
1c001de4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001dec <pwm_steering_engine_set+0x2c>
1c001de8:	002a0007 	break	0x7
1c001dec:	1400006c 	lu12i.w	$r12,3(0x3)
1c001df0:	03ba018c 	ori	$r12,$r12,0xe80
1c001df4:	001031ad 	add.w	$r13,$r13,$r12
1c001df8:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001dfc:	0380c18c 	ori	$r12,$r12,0x30
1c001e00:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001e04:	03400000 	andi	$r0,$r0,0x0
1c001e08:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e10:	4c000020 	jirl	$r0,$r1,0

1c001e14 <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001e14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e18:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001e1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e20:	0015008c 	move	$r12,$r4
1c001e24:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e28:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e2c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001e30:	03400dad 	andi	$r13,$r13,0x3
1c001e34:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e38:	2900018d 	st.b	$r13,$r12,0
1c001e3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e40:	0044898c 	srli.w	$r12,$r12,0x2
1c001e44:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e48:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e4c:	03400dad 	andi	$r13,$r13,0x3
1c001e50:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e54:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001e58:	03400000 	andi	$r0,$r0,0x0
1c001e5c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e64:	4c000020 	jirl	$r0,$r1,0

1c001e68 <soc_Spi_Init>:
soc_Spi_Init():
1c001e68:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e6c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001e70:	29806076 	st.w	$r22,$r3,24(0x18)
1c001e74:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e78:	0015008c 	move	$r12,$r4
1c001e7c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e80:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e84:	00150184 	move	$r4,$r12
1c001e88:	57ff8fff 	bl	-116(0xfffff8c) # 1c001e14 <soc_Spi_FreqDiv>
1c001e8c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e90:	2a00018c 	ld.bu	$r12,$r12,0
1c001e94:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e98:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e9c:	038141ad 	ori	$r13,$r13,0x50
1c001ea0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001ea4:	2900018d 	st.b	$r13,$r12,0
1c001ea8:	03400000 	andi	$r0,$r0,0x0
1c001eac:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001eb0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001eb4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001eb8:	0340118c 	andi	$r12,$r12,0x4
1c001ebc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001eac <soc_Spi_Init+0x44>
1c001ec0:	03400000 	andi	$r0,$r0,0x0
1c001ec4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ec8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ecc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ed0:	0340058c 	andi	$r12,$r12,0x1
1c001ed4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001ec4 <soc_Spi_Init+0x5c>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ee0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ee4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ee8:	4c000020 	jirl	$r0,$r1,0

1c001eec <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001eec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ef0:	29803076 	st.w	$r22,$r3,12(0xc)
1c001ef4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ef8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001efc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f00:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f04:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f08:	038009ad 	ori	$r13,$r13,0x2
1c001f0c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f10:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f14:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f18:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f1c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001f20:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f24:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001f28:	0014b5cd 	and	$r13,$r14,$r13
1c001f2c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f30:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f34:	03400000 	andi	$r0,$r0,0x0
1c001f38:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f40:	4c000020 	jirl	$r0,$r1,0

1c001f44 <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c001f44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f48:	29803076 	st.w	$r22,$r3,12(0xc)
1c001f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f50:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f54:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f58:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f5c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f60:	038009ad 	ori	$r13,$r13,0x2
1c001f64:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f68:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f6c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f70:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f74:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f78:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f7c:	038081ad 	ori	$r13,$r13,0x20
1c001f80:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f84:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f88:	03400000 	andi	$r0,$r0,0x0
1c001f8c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f94:	4c000020 	jirl	$r0,$r1,0

1c001f98 <my_recv_dat_int>:
my_recv_dat_int():
1c001f98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001fa0:	29806076 	st.w	$r22,$r3,24(0x18)
1c001fa4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fa8:	0015008c 	move	$r12,$r4
1c001fac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fb0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001fb4:	2881918c 	ld.w	$r12,$r12,100(0x64)
1c001fb8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001fbc:	2900018d 	st.b	$r13,$r12,0
1c001fc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001fc4:	00150185 	move	$r5,$r12
1c001fc8:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001fcc:	028e3084 	addi.w	$r4,$r4,908(0x38c)
1c001fd0:	54548000 	bl	21632(0x5480) # 1c007450 <Buffer_write>
1c001fd4:	03400000 	andi	$r0,$r0,0x0
1c001fd8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001fdc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001fe0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fe4:	4c000020 	jirl	$r0,$r1,0

1c001fe8 <my_strstr>:
my_strstr():
1c001fe8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001fec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001ff0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001ff4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001ff8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001ffc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002000:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002004:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002008:	2800018c 	ld.b	$r12,$r12,0
1c00200c:	44008580 	bnez	$r12,132(0x84) # 1c002090 <my_strstr+0xa8>
1c002010:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002014:	50008c00 	b	140(0x8c) # 1c0020a0 <my_strstr+0xb8>
1c002018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00201c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002020:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002024:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002028:	50001c00 	b	28(0x1c) # 1c002044 <my_strstr+0x5c>
1c00202c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002030:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002034:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002038:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00203c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002040:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002044:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002048:	2800018c 	ld.b	$r12,$r12,0
1c00204c:	40002580 	beqz	$r12,36(0x24) # 1c002070 <my_strstr+0x88>
1c002050:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002054:	2800018c 	ld.b	$r12,$r12,0
1c002058:	40001980 	beqz	$r12,24(0x18) # 1c002070 <my_strstr+0x88>
1c00205c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002060:	2800018d 	ld.b	$r13,$r12,0
1c002064:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002068:	2800018c 	ld.b	$r12,$r12,0
1c00206c:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c00202c <my_strstr+0x44>
1c002070:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002074:	2800018c 	ld.b	$r12,$r12,0
1c002078:	44000d80 	bnez	$r12,12(0xc) # 1c002084 <my_strstr+0x9c>
1c00207c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002080:	50002000 	b	32(0x20) # 1c0020a0 <my_strstr+0xb8>
1c002084:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002088:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00208c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002090:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002094:	2800018c 	ld.b	$r12,$r12,0
1c002098:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c002018 <my_strstr+0x30>
1c00209c:	0015000c 	move	$r12,$r0
1c0020a0:	00150184 	move	$r4,$r12
1c0020a4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0020a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0020ac:	4c000020 	jirl	$r0,$r1,0

1c0020b0 <MYUSART_SendData>:
MYUSART_SendData():
1c0020b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0020b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020bc:	0015008c 	move	$r12,$r4
1c0020c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0020c4:	03400000 	andi	$r0,$r0,0x0
1c0020c8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020cc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0020d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020d4:	0340818c 	andi	$r12,$r12,0x20
1c0020d8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0020c8 <MYUSART_SendData+0x18>
1c0020dc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020e0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020e4:	2900018d 	st.b	$r13,$r12,0
1c0020e8:	03400000 	andi	$r0,$r0,0x0
1c0020ec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0020f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020f4:	4c000020 	jirl	$r0,$r1,0

1c0020f8 <SendHead>:
SendHead():
1c0020f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c002100:	29802076 	st.w	$r22,$r3,8(0x8)
1c002104:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002108:	02864006 	addi.w	$r6,$r0,400(0x190)
1c00210c:	00150005 	move	$r5,$r0
1c002110:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002114:	28bbf084 	ld.w	$r4,$r4,-260(0xefc)
1c002118:	57f667ff 	bl	-2460(0xffff664) # 1c00177c <memset>
1c00211c:	0283bc04 	addi.w	$r4,$r0,239(0xef)
1c002120:	57ff93ff 	bl	-112(0xfffff90) # 1c0020b0 <MYUSART_SendData>
1c002124:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002128:	57ff8bff 	bl	-120(0xfffff88) # 1c0020b0 <MYUSART_SendData>
1c00212c:	03400000 	andi	$r0,$r0,0x0
1c002130:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002134:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002138:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00213c:	4c000020 	jirl	$r0,$r1,0

1c002140 <SendAddr>:
SendAddr():
1c002140:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002144:	29803061 	st.w	$r1,$r3,12(0xc)
1c002148:	29802076 	st.w	$r22,$r3,8(0x8)
1c00214c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002150:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002154:	02bb318c 	addi.w	$r12,$r12,-308(0xecc)
1c002158:	2880018c 	ld.w	$r12,$r12,0
1c00215c:	0044e18c 	srli.w	$r12,$r12,0x18
1c002160:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002164:	00150184 	move	$r4,$r12
1c002168:	57ff4bff 	bl	-184(0xfffff48) # 1c0020b0 <MYUSART_SendData>
1c00216c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002170:	02bac18c 	addi.w	$r12,$r12,-336(0xeb0)
1c002174:	2880018c 	ld.w	$r12,$r12,0
1c002178:	0044c18c 	srli.w	$r12,$r12,0x10
1c00217c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002180:	00150184 	move	$r4,$r12
1c002184:	57ff2fff 	bl	-212(0xfffff2c) # 1c0020b0 <MYUSART_SendData>
1c002188:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00218c:	02ba518c 	addi.w	$r12,$r12,-364(0xe94)
1c002190:	2880018c 	ld.w	$r12,$r12,0
1c002194:	0044a18c 	srli.w	$r12,$r12,0x8
1c002198:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00219c:	00150184 	move	$r4,$r12
1c0021a0:	57ff13ff 	bl	-240(0xfffff10) # 1c0020b0 <MYUSART_SendData>
1c0021a4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021a8:	02b9e18c 	addi.w	$r12,$r12,-392(0xe78)
1c0021ac:	2880018c 	ld.w	$r12,$r12,0
1c0021b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021b4:	00150184 	move	$r4,$r12
1c0021b8:	57fefbff 	bl	-264(0xffffef8) # 1c0020b0 <MYUSART_SendData>
1c0021bc:	03400000 	andi	$r0,$r0,0x0
1c0021c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021cc:	4c000020 	jirl	$r0,$r1,0

1c0021d0 <SendFlag>:
SendFlag():
1c0021d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021d4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021d8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021dc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021e0:	0015008c 	move	$r12,$r4
1c0021e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0021ec:	00150184 	move	$r4,$r12
1c0021f0:	57fec3ff 	bl	-320(0xffffec0) # 1c0020b0 <MYUSART_SendData>
1c0021f4:	03400000 	andi	$r0,$r0,0x0
1c0021f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0021fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002200:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002204:	4c000020 	jirl	$r0,$r1,0

1c002208 <SendLength>:
SendLength():
1c002208:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00220c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002210:	29806076 	st.w	$r22,$r3,24(0x18)
1c002214:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002218:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00221c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002220:	0048a18c 	srai.w	$r12,$r12,0x8
1c002224:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002228:	00150184 	move	$r4,$r12
1c00222c:	57fe87ff 	bl	-380(0xffffe84) # 1c0020b0 <MYUSART_SendData>
1c002230:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002234:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002238:	00150184 	move	$r4,$r12
1c00223c:	57fe77ff 	bl	-396(0xffffe74) # 1c0020b0 <MYUSART_SendData>
1c002240:	03400000 	andi	$r0,$r0,0x0
1c002244:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002248:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00224c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002250:	4c000020 	jirl	$r0,$r1,0

1c002254 <Sendcmd>:
Sendcmd():
1c002254:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002258:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00225c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002260:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002264:	0015008c 	move	$r12,$r4
1c002268:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00226c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002270:	00150184 	move	$r4,$r12
1c002274:	57fe3fff 	bl	-452(0xffffe3c) # 1c0020b0 <MYUSART_SendData>
1c002278:	03400000 	andi	$r0,$r0,0x0
1c00227c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002280:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002284:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002288:	4c000020 	jirl	$r0,$r1,0

1c00228c <SendCheck>:
SendCheck():
1c00228c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002290:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002294:	29806076 	st.w	$r22,$r3,24(0x18)
1c002298:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00229c:	0015008c 	move	$r12,$r4
1c0022a0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0022a4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0022a8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0022ac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0022b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022b4:	00150184 	move	$r4,$r12
1c0022b8:	57fdfbff 	bl	-520(0xffffdf8) # 1c0020b0 <MYUSART_SendData>
1c0022bc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0022c0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022c4:	00150184 	move	$r4,$r12
1c0022c8:	57fdebff 	bl	-536(0xffffde8) # 1c0020b0 <MYUSART_SendData>
1c0022cc:	03400000 	andi	$r0,$r0,0x0
1c0022d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0022d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0022d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022dc:	4c000020 	jirl	$r0,$r1,0

1c0022e0 <AS608_Check>:
AS608_Check():
1c0022e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0022e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0022ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022f0:	1400004c 	lu12i.w	$r12,2(0x2)
1c0022f4:	039c418c 	ori	$r12,$r12,0x710
1c0022f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022fc:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002300:	28b4418c 	ld.w	$r12,$r12,-752(0xd10)
1c002304:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002308:	2900258d 	st.b	$r13,$r12,9(0x9)
1c00230c:	57fdefff 	bl	-532(0xffffdec) # 1c0020f8 <SendHead>
1c002310:	57fe33ff 	bl	-464(0xffffe30) # 1c002140 <SendAddr>
1c002314:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002318:	50002c00 	b	44(0x2c) # 1c002344 <AS608_Check+0x64>
1c00231c:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002320:	02b411ad 	addi.w	$r13,$r13,-764(0xd04)
1c002324:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002328:	001031ac 	add.w	$r12,$r13,$r12
1c00232c:	2a00018c 	ld.bu	$r12,$r12,0
1c002330:	00150184 	move	$r4,$r12
1c002334:	57fd7fff 	bl	-644(0xffffd7c) # 1c0020b0 <MYUSART_SendData>
1c002338:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00233c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002340:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002344:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002348:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c00234c:	67ffd18d 	bge	$r12,$r13,-48(0x3ffd0) # 1c00231c <AS608_Check+0x3c>
1c002350:	03400000 	andi	$r0,$r0,0x0
1c002354:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002358:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00235c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002360:	0340058c 	andi	$r12,$r12,0x1
1c002364:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002354 <AS608_Check+0x74>
1c002368:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00236c:	5000c400 	b	196(0xc4) # 1c002430 <AS608_Check+0x150>
1c002370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002374:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002378:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00237c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002380:	44002980 	bnez	$r12,40(0x28) # 1c0023a8 <AS608_Check+0xc8>
1c002384:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002388:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00238c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002390:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002394:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c002398:	001535cd 	or	$r13,$r14,$r13
1c00239c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0023a0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0023a4:	50001800 	b	24(0x18) # 1c0023bc <AS608_Check+0xdc>
1c0023a8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023ac:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023b4:	0340058c 	andi	$r12,$r12,0x1
1c0023b8:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002370 <AS608_Check+0x90>
1c0023bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023c0:	44001d80 	bnez	$r12,28(0x1c) # 1c0023dc <AS608_Check+0xfc>
1c0023c4:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0023c8:	28b121ad 	ld.w	$r13,$r13,-952(0xc48)
1c0023cc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023d0:	001031ac 	add.w	$r12,$r13,$r12
1c0023d4:	29000180 	st.b	$r0,$r12,0
1c0023d8:	50002400 	b	36(0x24) # 1c0023fc <AS608_Check+0x11c>
1c0023dc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0023e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0023e8:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0023ec:	28b091ce 	ld.w	$r14,$r14,-988(0xc24)
1c0023f0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023f4:	001031cc 	add.w	$r12,$r14,$r12
1c0023f8:	2900018d 	st.b	$r13,$r12,0
1c0023fc:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002400:	28b041ad 	ld.w	$r13,$r13,-1008(0xc10)
1c002404:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002408:	001031ac 	add.w	$r12,$r13,$r12
1c00240c:	2a00018c 	ld.bu	$r12,$r12,0
1c002410:	00150184 	move	$r4,$r12
1c002414:	5415e400 	bl	5604(0x15e4) # 1c0039f8 <uart_write>
1c002418:	140000ec 	lu12i.w	$r12,7(0x7)
1c00241c:	0394c18c 	ori	$r12,$r12,0x530
1c002420:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002424:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002430:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002434:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002438:	6fff718d 	bgeu	$r12,$r13,-144(0x3ff70) # 1c0023a8 <AS608_Check+0xc8>
1c00243c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002440:	28af418c 	ld.w	$r12,$r12,-1072(0xbd0)
1c002444:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002448:	44000d80 	bnez	$r12,12(0xc) # 1c002454 <AS608_Check+0x174>
1c00244c:	0015000c 	move	$r12,$r0
1c002450:	50000800 	b	8(0x8) # 1c002458 <AS608_Check+0x178>
1c002454:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002458:	00150184 	move	$r4,$r12
1c00245c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002460:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002464:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002468:	4c000020 	jirl	$r0,$r1,0

1c00246c <as608_init>:
as608_init():
1c00246c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002470:	29803061 	st.w	$r1,$r3,12(0xc)
1c002474:	29802076 	st.w	$r22,$r3,8(0x8)
1c002478:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00247c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002480:	5415c000 	bl	5568(0x15c0) # 1c003a40 <uart_set_rx_th>
1c002484:	57fe5fff 	bl	-420(0xffffe5c) # 1c0022e0 <AS608_Check>
1c002488:	0015008c 	move	$r12,$r4
1c00248c:	00150184 	move	$r4,$r12
1c002490:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002494:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002498:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00249c:	4c000020 	jirl	$r0,$r1,0

1c0024a0 <JudgeStr>:
JudgeStr():
1c0024a0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0024a4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0024a8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0024ac:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0024b0:	0015008c 	move	$r12,$r4
1c0024b4:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c0024b8:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c0024bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024c0:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c0024c4:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c0024c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0024cc:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0024d0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024d4:	02ad318c 	addi.w	$r12,$r12,-1204(0xb4c)
1c0024d8:	2880018c 	ld.w	$r12,$r12,0
1c0024dc:	0044e18c 	srli.w	$r12,$r12,0x18
1c0024e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024e4:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c0024e8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024ec:	02acd18c 	addi.w	$r12,$r12,-1228(0xb34)
1c0024f0:	2880018c 	ld.w	$r12,$r12,0
1c0024f4:	0044c18c 	srli.w	$r12,$r12,0x10
1c0024f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024fc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002500:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002504:	02ac718c 	addi.w	$r12,$r12,-1252(0xb1c)
1c002508:	2880018c 	ld.w	$r12,$r12,0
1c00250c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002510:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002514:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c002518:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00251c:	02ac118c 	addi.w	$r12,$r12,-1276(0xb04)
1c002520:	2880018c 	ld.w	$r12,$r12,0
1c002524:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002528:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c00252c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002530:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c002534:	293f8ec0 	st.b	$r0,$r22,-29(0xfe3)
1c002538:	03400000 	andi	$r0,$r0,0x0
1c00253c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002540:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002544:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002548:	0340058c 	andi	$r12,$r12,0x1
1c00254c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00253c <JudgeStr+0x9c>
1c002550:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002554:	5000c000 	b	192(0xc0) # 1c002614 <JudgeStr+0x174>
1c002558:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00255c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002564:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002568:	44002980 	bnez	$r12,40(0x28) # 1c002590 <JudgeStr+0xf0>
1c00256c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002570:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c002574:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002578:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00257c:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c002580:	001535cd 	or	$r13,$r14,$r13
1c002584:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002588:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00258c:	50001800 	b	24(0x18) # 1c0025a4 <JudgeStr+0x104>
1c002590:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002594:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002598:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00259c:	0340058c 	andi	$r12,$r12,0x1
1c0025a0:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002558 <JudgeStr+0xb8>
1c0025a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025a8:	44001d80 	bnez	$r12,28(0x1c) # 1c0025c4 <JudgeStr+0x124>
1c0025ac:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0025b0:	28a981ad 	ld.w	$r13,$r13,-1440(0xa60)
1c0025b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025b8:	001031ac 	add.w	$r12,$r13,$r12
1c0025bc:	29000180 	st.b	$r0,$r12,0
1c0025c0:	50002400 	b	36(0x24) # 1c0025e4 <JudgeStr+0x144>
1c0025c4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0025c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0025cc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025d0:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0025d4:	28a8f1ce 	ld.w	$r14,$r14,-1476(0xa3c)
1c0025d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025dc:	001031cc 	add.w	$r12,$r14,$r12
1c0025e0:	2900018d 	st.b	$r13,$r12,0
1c0025e4:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0025e8:	28a8a1ad 	ld.w	$r13,$r13,-1496(0xa28)
1c0025ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025f0:	001031ac 	add.w	$r12,$r13,$r12
1c0025f4:	2a00018c 	ld.bu	$r12,$r12,0
1c0025f8:	00150184 	move	$r4,$r12
1c0025fc:	5413fc00 	bl	5116(0x13fc) # 1c0039f8 <uart_write>
1c002600:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c002604:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002608:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00260c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002610:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002614:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002618:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c00261c:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c002590 <JudgeStr+0xf0>
1c002620:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c002624:	00150185 	move	$r5,$r12
1c002628:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c00262c:	28a79084 	ld.w	$r4,$r4,-1564(0x9e4)
1c002630:	57f9bbff 	bl	-1608(0xffff9b8) # 1c001fe8 <my_strstr>
1c002634:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c002638:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00263c:	40000d80 	beqz	$r12,12(0xc) # 1c002648 <JudgeStr+0x1a8>
1c002640:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002644:	50000800 	b	8(0x8) # 1c00264c <JudgeStr+0x1ac>
1c002648:	0015000c 	move	$r12,$r0
1c00264c:	00150184 	move	$r4,$r12
1c002650:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002654:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002658:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00265c:	4c000020 	jirl	$r0,$r1,0

1c002660 <PS_GetImage>:
PS_GetImage():
1c002660:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002664:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002668:	29806076 	st.w	$r22,$r3,24(0x18)
1c00266c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002670:	57fa8bff 	bl	-1400(0xffffa88) # 1c0020f8 <SendHead>
1c002674:	57facfff 	bl	-1332(0xffffacc) # 1c002140 <SendAddr>
1c002678:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00267c:	57fb57ff 	bl	-1196(0xffffb54) # 1c0021d0 <SendFlag>
1c002680:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002684:	57fb87ff 	bl	-1148(0xffffb84) # 1c002208 <SendLength>
1c002688:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00268c:	57fbcbff 	bl	-1080(0xffffbc8) # 1c002254 <Sendcmd>
1c002690:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002694:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002698:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00269c:	00150184 	move	$r4,$r12
1c0026a0:	57fbefff 	bl	-1044(0xffffbec) # 1c00228c <SendCheck>
1c0026a4:	1400004c 	lu12i.w	$r12,2(0x2)
1c0026a8:	039c4184 	ori	$r4,$r12,0x710
1c0026ac:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0024a0 <JudgeStr>
1c0026b0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0026b4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026b8:	40001580 	beqz	$r12,20(0x14) # 1c0026cc <PS_GetImage+0x6c>
1c0026bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026c0:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0026c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026c8:	50000c00 	b	12(0xc) # 1c0026d4 <PS_GetImage+0x74>
1c0026cc:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0026d0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	00150184 	move	$r4,$r12
1c0026dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026e8:	4c000020 	jirl	$r0,$r1,0

1c0026ec <PS_GenChar>:
PS_GenChar():
1c0026ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026fc:	0015008c 	move	$r12,$r4
1c002700:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002704:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c0020f8 <SendHead>
1c002708:	57fa3bff 	bl	-1480(0xffffa38) # 1c002140 <SendAddr>
1c00270c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002710:	57fac3ff 	bl	-1344(0xffffac0) # 1c0021d0 <SendFlag>
1c002714:	02801004 	addi.w	$r4,$r0,4(0x4)
1c002718:	57faf3ff 	bl	-1296(0xffffaf0) # 1c002208 <SendLength>
1c00271c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002720:	57fb37ff 	bl	-1228(0xffffb34) # 1c002254 <Sendcmd>
1c002724:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002728:	00150184 	move	$r4,$r12
1c00272c:	57f987ff 	bl	-1660(0xffff984) # 1c0020b0 <MYUSART_SendData>
1c002730:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002734:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002738:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00273c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002740:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002744:	00150184 	move	$r4,$r12
1c002748:	57fb47ff 	bl	-1212(0xffffb44) # 1c00228c <SendCheck>
1c00274c:	1400004c 	lu12i.w	$r12,2(0x2)
1c002750:	039c4184 	ori	$r4,$r12,0x710
1c002754:	57fd4fff 	bl	-692(0xffffd4c) # 1c0024a0 <JudgeStr>
1c002758:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00275c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002760:	40001580 	beqz	$r12,20(0x14) # 1c002774 <PS_GenChar+0x88>
1c002764:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002768:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00276c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002770:	50000c00 	b	12(0xc) # 1c00277c <PS_GenChar+0x90>
1c002774:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002778:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00277c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002780:	00150184 	move	$r4,$r12
1c002784:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002788:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00278c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002790:	4c000020 	jirl	$r0,$r1,0

1c002794 <PS_Match>:
PS_Match():
1c002794:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002798:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00279c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0027a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027a4:	57f957ff 	bl	-1708(0xffff954) # 1c0020f8 <SendHead>
1c0027a8:	57f99bff 	bl	-1640(0xffff998) # 1c002140 <SendAddr>
1c0027ac:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0027b0:	57fa23ff 	bl	-1504(0xffffa20) # 1c0021d0 <SendFlag>
1c0027b4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027b8:	57fa53ff 	bl	-1456(0xffffa50) # 1c002208 <SendLength>
1c0027bc:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027c0:	57fa97ff 	bl	-1388(0xffffa94) # 1c002254 <Sendcmd>
1c0027c4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0027c8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0027cc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0027d0:	00150184 	move	$r4,$r12
1c0027d4:	57fabbff 	bl	-1352(0xffffab8) # 1c00228c <SendCheck>
1c0027d8:	1400004c 	lu12i.w	$r12,2(0x2)
1c0027dc:	039c4184 	ori	$r4,$r12,0x710
1c0027e0:	57fcc3ff 	bl	-832(0xffffcc0) # 1c0024a0 <JudgeStr>
1c0027e4:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0027e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027ec:	40001580 	beqz	$r12,20(0x14) # 1c002800 <PS_Match+0x6c>
1c0027f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0027f4:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0027f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0027fc:	50000c00 	b	12(0xc) # 1c002808 <PS_Match+0x74>
1c002800:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002804:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002808:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00280c:	00150184 	move	$r4,$r12
1c002810:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002814:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002818:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00281c:	4c000020 	jirl	$r0,$r1,0

1c002820 <PS_RegModel>:
PS_RegModel():
1c002820:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002824:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002828:	29806076 	st.w	$r22,$r3,24(0x18)
1c00282c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002830:	57f8cbff 	bl	-1848(0xffff8c8) # 1c0020f8 <SendHead>
1c002834:	57f90fff 	bl	-1780(0xffff90c) # 1c002140 <SendAddr>
1c002838:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00283c:	57f997ff 	bl	-1644(0xffff994) # 1c0021d0 <SendFlag>
1c002840:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002844:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c002208 <SendLength>
1c002848:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00284c:	57fa0bff 	bl	-1528(0xffffa08) # 1c002254 <Sendcmd>
1c002850:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002854:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002858:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00285c:	00150184 	move	$r4,$r12
1c002860:	57fa2fff 	bl	-1492(0xffffa2c) # 1c00228c <SendCheck>
1c002864:	1400004c 	lu12i.w	$r12,2(0x2)
1c002868:	039c4184 	ori	$r4,$r12,0x710
1c00286c:	57fc37ff 	bl	-972(0xffffc34) # 1c0024a0 <JudgeStr>
1c002870:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002874:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002878:	40001580 	beqz	$r12,20(0x14) # 1c00288c <PS_RegModel+0x6c>
1c00287c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002880:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002884:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002888:	50000c00 	b	12(0xc) # 1c002894 <PS_RegModel+0x74>
1c00288c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002890:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002894:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002898:	00150184 	move	$r4,$r12
1c00289c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0028a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0028a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028a8:	4c000020 	jirl	$r0,$r1,0

1c0028ac <PS_StoreChar>:
PS_StoreChar():
1c0028ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028bc:	0015008c 	move	$r12,$r4
1c0028c0:	001500ad 	move	$r13,$r5
1c0028c4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0028c8:	001501ac 	move	$r12,$r13
1c0028cc:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0028d0:	57f82bff 	bl	-2008(0xffff828) # 1c0020f8 <SendHead>
1c0028d4:	57f86fff 	bl	-1940(0xffff86c) # 1c002140 <SendAddr>
1c0028d8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0028dc:	57f8f7ff 	bl	-1804(0xffff8f4) # 1c0021d0 <SendFlag>
1c0028e0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028e4:	57f927ff 	bl	-1756(0xffff924) # 1c002208 <SendLength>
1c0028e8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028ec:	57f96bff 	bl	-1688(0xffff968) # 1c002254 <Sendcmd>
1c0028f0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0028f4:	00150184 	move	$r4,$r12
1c0028f8:	57f7bbff 	bl	-2120(0xffff7b8) # 1c0020b0 <MYUSART_SendData>
1c0028fc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002900:	0044a18c 	srli.w	$r12,$r12,0x8
1c002904:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002908:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00290c:	00150184 	move	$r4,$r12
1c002910:	57f7a3ff 	bl	-2144(0xffff7a0) # 1c0020b0 <MYUSART_SendData>
1c002914:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002918:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00291c:	00150184 	move	$r4,$r12
1c002920:	57f793ff 	bl	-2160(0xffff790) # 1c0020b0 <MYUSART_SendData>
1c002924:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002928:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00292c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002930:	0044a18c 	srli.w	$r12,$r12,0x8
1c002934:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002938:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00293c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002940:	001031ac 	add.w	$r12,$r13,$r12
1c002944:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002948:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00294c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002950:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002954:	001031ac 	add.w	$r12,$r13,$r12
1c002958:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00295c:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002960:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002964:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002968:	00150184 	move	$r4,$r12
1c00296c:	57f923ff 	bl	-1760(0xffff920) # 1c00228c <SendCheck>
1c002970:	1400004c 	lu12i.w	$r12,2(0x2)
1c002974:	039c4184 	ori	$r4,$r12,0x710
1c002978:	57fb2bff 	bl	-1240(0xffffb28) # 1c0024a0 <JudgeStr>
1c00297c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002980:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002984:	40001580 	beqz	$r12,20(0x14) # 1c002998 <PS_StoreChar+0xec>
1c002988:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00298c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002990:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002994:	50000c00 	b	12(0xc) # 1c0029a0 <PS_StoreChar+0xf4>
1c002998:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00299c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0029a4:	00150184 	move	$r4,$r12
1c0029a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029b4:	4c000020 	jirl	$r0,$r1,0

1c0029b8 <PS_Empty>:
PS_Empty():
1c0029b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029c8:	57f733ff 	bl	-2256(0xffff730) # 1c0020f8 <SendHead>
1c0029cc:	57f777ff 	bl	-2188(0xffff774) # 1c002140 <SendAddr>
1c0029d0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0029d4:	57f7ffff 	bl	-2052(0xffff7fc) # 1c0021d0 <SendFlag>
1c0029d8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0029dc:	57f82fff 	bl	-2004(0xffff82c) # 1c002208 <SendLength>
1c0029e0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0029e4:	57f873ff 	bl	-1936(0xffff870) # 1c002254 <Sendcmd>
1c0029e8:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0029ec:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0029f0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0029f4:	00150184 	move	$r4,$r12
1c0029f8:	57f897ff 	bl	-1900(0xffff894) # 1c00228c <SendCheck>
1c0029fc:	1400004c 	lu12i.w	$r12,2(0x2)
1c002a00:	039c4184 	ori	$r4,$r12,0x710
1c002a04:	57fa9fff 	bl	-1380(0xffffa9c) # 1c0024a0 <JudgeStr>
1c002a08:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002a0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a10:	40001580 	beqz	$r12,20(0x14) # 1c002a24 <PS_Empty+0x6c>
1c002a14:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a18:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002a1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a20:	50000c00 	b	12(0xc) # 1c002a2c <PS_Empty+0x74>
1c002a24:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002a28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a30:	00150184 	move	$r4,$r12
1c002a34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a40:	4c000020 	jirl	$r0,$r1,0

1c002a44 <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c002a44:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a48:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a4c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a50:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a54:	0015008c 	move	$r12,$r4
1c002a58:	001500ae 	move	$r14,$r5
1c002a5c:	001500cd 	move	$r13,$r6
1c002a60:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c002a64:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a68:	001501cc 	move	$r12,$r14
1c002a6c:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002a70:	001501ac 	move	$r12,$r13
1c002a74:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002a78:	57f683ff 	bl	-2432(0xffff680) # 1c0020f8 <SendHead>
1c002a7c:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c002140 <SendAddr>
1c002a80:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a84:	57f74fff 	bl	-2228(0xffff74c) # 1c0021d0 <SendFlag>
1c002a88:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002a8c:	57f77fff 	bl	-2180(0xffff77c) # 1c002208 <SendLength>
1c002a90:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c002a94:	57f7c3ff 	bl	-2112(0xffff7c0) # 1c002254 <Sendcmd>
1c002a98:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002a9c:	00150184 	move	$r4,$r12
1c002aa0:	57f613ff 	bl	-2544(0xffff610) # 1c0020b0 <MYUSART_SendData>
1c002aa4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002aa8:	0044a18c 	srli.w	$r12,$r12,0x8
1c002aac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ab0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ab4:	00150184 	move	$r4,$r12
1c002ab8:	57f5fbff 	bl	-2568(0xffff5f8) # 1c0020b0 <MYUSART_SendData>
1c002abc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002ac0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ac4:	00150184 	move	$r4,$r12
1c002ac8:	57f5ebff 	bl	-2584(0xffff5e8) # 1c0020b0 <MYUSART_SendData>
1c002acc:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002ad0:	0044a18c 	srli.w	$r12,$r12,0x8
1c002ad4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002adc:	00150184 	move	$r4,$r12
1c002ae0:	57f5d3ff 	bl	-2608(0xffff5d0) # 1c0020b0 <MYUSART_SendData>
1c002ae4:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002ae8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002aec:	00150184 	move	$r4,$r12
1c002af0:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c0020b0 <MYUSART_SendData>
1c002af4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002af8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002afc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002b00:	0044a18c 	srli.w	$r12,$r12,0x8
1c002b04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b08:	001031ac 	add.w	$r12,$r13,$r12
1c002b0c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b10:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002b14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b1c:	001031ac 	add.w	$r12,$r13,$r12
1c002b20:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b24:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b28:	0044a18c 	srli.w	$r12,$r12,0x8
1c002b2c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b30:	001031ac 	add.w	$r12,$r13,$r12
1c002b34:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b38:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b40:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b44:	001031ac 	add.w	$r12,$r13,$r12
1c002b48:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b4c:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c002b50:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002b54:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002b58:	00150184 	move	$r4,$r12
1c002b5c:	57f733ff 	bl	-2256(0xffff730) # 1c00228c <SendCheck>
1c002b60:	1400004c 	lu12i.w	$r12,2(0x2)
1c002b64:	039c4184 	ori	$r4,$r12,0x710
1c002b68:	57f93bff 	bl	-1736(0xffff938) # 1c0024a0 <JudgeStr>
1c002b6c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002b70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b74:	40008580 	beqz	$r12,132(0x84) # 1c002bf8 <PS_HighSpeedSearch+0x1b4>
1c002b78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b7c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002b80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b88:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c002b8c:	2a00018c 	ld.bu	$r12,$r12,0
1c002b90:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b94:	0040a18c 	slli.w	$r12,$r12,0x8
1c002b98:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ba0:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c002ba4:	2a00018c 	ld.bu	$r12,$r12,0
1c002ba8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bac:	001031ac 	add.w	$r12,$r13,$r12
1c002bb0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bb4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002bb8:	2940018d 	st.h	$r13,$r12,0
1c002bbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bc0:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c002bc4:	2a00018c 	ld.bu	$r12,$r12,0
1c002bc8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bcc:	0040a18c 	slli.w	$r12,$r12,0x8
1c002bd0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bd8:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002bdc:	2a00018c 	ld.bu	$r12,$r12,0
1c002be0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002be4:	001031ac 	add.w	$r12,$r13,$r12
1c002be8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bec:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002bf0:	2940098d 	st.h	$r13,$r12,2(0x2)
1c002bf4:	50000c00 	b	12(0xc) # 1c002c00 <PS_HighSpeedSearch+0x1bc>
1c002bf8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002bfc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002c00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002c04:	00150184 	move	$r4,$r12
1c002c08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c0c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c10:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c14:	4c000020 	jirl	$r0,$r1,0

1c002c18 <ShowErrMessage>:
ShowErrMessage():
1c002c18:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c1c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c20:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c24:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c28:	0015008c 	move	$r12,$r4
1c002c2c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002c30:	542cb400 	bl	11444(0x2cb4) # 1c0058e4 <OLED_CLS>
1c002c34:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c38:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c40:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002c44:	542ff000 	bl	12272(0x2ff0) # 1c005c34 <OLED_ShowCN_STR>
1c002c48:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c4c:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002c50:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c54:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c58:	542fdc00 	bl	12252(0x2fdc) # 1c005c34 <OLED_ShowCN_STR>
1c002c5c:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c002c60:	03bead8c 	ori	$r12,$r12,0xfab
1c002c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c68:	50008400 	b	132(0x84) # 1c002cec <ShowErrMessage+0xd4>
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
1c002cac:	03400000 	andi	$r0,$r0,0x0
1c002cb0:	03400000 	andi	$r0,$r0,0x0
1c002cb4:	03400000 	andi	$r0,$r0,0x0
1c002cb8:	03400000 	andi	$r0,$r0,0x0
1c002cbc:	03400000 	andi	$r0,$r0,0x0
1c002cc0:	03400000 	andi	$r0,$r0,0x0
1c002cc4:	03400000 	andi	$r0,$r0,0x0
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	03400000 	andi	$r0,$r0,0x0
1c002cd0:	03400000 	andi	$r0,$r0,0x0
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	03400000 	andi	$r0,$r0,0x0
1c002cdc:	03400000 	andi	$r0,$r0,0x0
1c002ce0:	03400000 	andi	$r0,$r0,0x0
1c002ce4:	03400000 	andi	$r0,$r0,0x0
1c002ce8:	03400000 	andi	$r0,$r0,0x0
1c002cec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cf0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cf4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002cf8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002c6c <ShowErrMessage+0x54>
1c002cfc:	542be800 	bl	11240(0x2be8) # 1c0058e4 <OLED_CLS>
1c002d00:	02801407 	addi.w	$r7,$r0,5(0x5)
1c002d04:	02812006 	addi.w	$r6,$r0,72(0x48)
1c002d08:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d0c:	02806404 	addi.w	$r4,$r0,25(0x19)
1c002d10:	542f2400 	bl	12068(0x2f24) # 1c005c34 <OLED_ShowCN_STR>
1c002d14:	542bd000 	bl	11216(0x2bd0) # 1c0058e4 <OLED_CLS>
1c002d18:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002d1c:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002d20:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d24:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d28:	542f0c00 	bl	12044(0x2f0c) # 1c005c34 <OLED_ShowCN_STR>
1c002d2c:	03400000 	andi	$r0,$r0,0x0
1c002d30:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d34:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d38:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d3c:	4c000020 	jirl	$r0,$r1,0

1c002d40 <Add_FR>:
Add_FR():
1c002d40:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d44:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d48:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d4c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d50:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002d54:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002d58:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002d5c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002d60:	680655ac 	bltu	$r13,$r12,1620(0x654) # 1c0033b4 <Add_FR+0x674>
1c002d64:	0040898d 	slli.w	$r13,$r12,0x2
1c002d68:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c002d6c:	028f818c 	addi.w	$r12,$r12,992(0x3e0)
1c002d70:	001031ac 	add.w	$r12,$r13,$r12
1c002d74:	2880018c 	ld.w	$r12,$r12,0
1c002d78:	4c000180 	jirl	$r0,$r12,0
1c002d7c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002d80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d84:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002d88:	542b5c00 	bl	11100(0x2b5c) # 1c0058e4 <OLED_CLS>
1c002d8c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002d90:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002d94:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d98:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d9c:	542e9800 	bl	11928(0x2e98) # 1c005c34 <OLED_ShowCN_STR>
1c002da0:	57f8c3ff 	bl	-1856(0xffff8c0) # 1c002660 <PS_GetImage>
1c002da4:	0015008c 	move	$r12,$r4
1c002da8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002dac:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002db0:	44006980 	bnez	$r12,104(0x68) # 1c002e18 <Add_FR+0xd8>
1c002db4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002db8:	57f937ff 	bl	-1740(0xffff934) # 1c0026ec <PS_GenChar>
1c002dbc:	0015008c 	move	$r12,$r4
1c002dc0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002dc4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002dc8:	44004180 	bnez	$r12,64(0x40) # 1c002e08 <Add_FR+0xc8>
1c002dcc:	542b1800 	bl	11032(0x2b18) # 1c0058e4 <OLED_CLS>
1c002dd0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002dd4:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002dd8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ddc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002de0:	542e5400 	bl	11860(0x2e54) # 1c005c34 <OLED_ShowCN_STR>
1c002de4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002de8:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002dec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002df0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002df4:	542e4000 	bl	11840(0x2e40) # 1c005c34 <OLED_ShowCN_STR>
1c002df8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002dfc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e00:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e04:	5005b000 	b	1456(0x5b0) # 1c0033b4 <Add_FR+0x674>
1c002e08:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e0c:	00150184 	move	$r4,$r12
1c002e10:	57fe0bff 	bl	-504(0xffffe08) # 1c002c18 <ShowErrMessage>
1c002e14:	5005a000 	b	1440(0x5a0) # 1c0033b4 <Add_FR+0x674>
1c002e18:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e1c:	00150184 	move	$r4,$r12
1c002e20:	57fdfbff 	bl	-520(0xffffdf8) # 1c002c18 <ShowErrMessage>
1c002e24:	50059000 	b	1424(0x590) # 1c0033b4 <Add_FR+0x674>
1c002e28:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002e2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e30:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002e34:	542ab000 	bl	10928(0x2ab0) # 1c0058e4 <OLED_CLS>
1c002e38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e3c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e44:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e48:	542dec00 	bl	11756(0x2dec) # 1c005c34 <OLED_ShowCN_STR>
1c002e4c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e50:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e58:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e5c:	542dd800 	bl	11736(0x2dd8) # 1c005c34 <OLED_ShowCN_STR>
1c002e60:	57f803ff 	bl	-2048(0xffff800) # 1c002660 <PS_GetImage>
1c002e64:	0015008c 	move	$r12,$r4
1c002e68:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002e6c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e70:	44006980 	bnez	$r12,104(0x68) # 1c002ed8 <Add_FR+0x198>
1c002e74:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002e78:	57f877ff 	bl	-1932(0xffff874) # 1c0026ec <PS_GenChar>
1c002e7c:	0015008c 	move	$r12,$r4
1c002e80:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002e84:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e88:	44004180 	bnez	$r12,64(0x40) # 1c002ec8 <Add_FR+0x188>
1c002e8c:	542a5800 	bl	10840(0x2a58) # 1c0058e4 <OLED_CLS>
1c002e90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e94:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e9c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002ea0:	542d9400 	bl	11668(0x2d94) # 1c005c34 <OLED_ShowCN_STR>
1c002ea4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002ea8:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002eac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002eb0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002eb4:	542d8000 	bl	11648(0x2d80) # 1c005c34 <OLED_ShowCN_STR>
1c002eb8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002ebc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002ec0:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002ec4:	5004f000 	b	1264(0x4f0) # 1c0033b4 <Add_FR+0x674>
1c002ec8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002ecc:	00150184 	move	$r4,$r12
1c002ed0:	57fd4bff 	bl	-696(0xffffd48) # 1c002c18 <ShowErrMessage>
1c002ed4:	5004e000 	b	1248(0x4e0) # 1c0033b4 <Add_FR+0x674>
1c002ed8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002edc:	00150184 	move	$r4,$r12
1c002ee0:	57fd3bff 	bl	-712(0xffffd38) # 1c002c18 <ShowErrMessage>
1c002ee4:	5004d000 	b	1232(0x4d0) # 1c0033b4 <Add_FR+0x674>
1c002ee8:	5429fc00 	bl	10748(0x29fc) # 1c0058e4 <OLED_CLS>
1c002eec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ef0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002ef4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ef8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002efc:	542d3800 	bl	11576(0x2d38) # 1c005c34 <OLED_ShowCN_STR>
1c002f00:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f04:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002f08:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f0c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002f10:	542d2400 	bl	11556(0x2d24) # 1c005c34 <OLED_ShowCN_STR>
1c002f14:	57f883ff 	bl	-1920(0xffff880) # 1c002794 <PS_Match>
1c002f18:	0015008c 	move	$r12,$r4
1c002f1c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002f20:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002f24:	44006980 	bnez	$r12,104(0x68) # 1c002f8c <Add_FR+0x24c>
1c002f28:	5429bc00 	bl	10684(0x29bc) # 1c0058e4 <OLED_CLS>
1c002f2c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f30:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f38:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002f3c:	542cf800 	bl	11512(0x2cf8) # 1c005c34 <OLED_ShowCN_STR>
1c002f40:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f44:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002f48:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f4c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002f50:	542ce400 	bl	11492(0x2ce4) # 1c005c34 <OLED_ShowCN_STR>
1c002f54:	54299000 	bl	10640(0x2990) # 1c0058e4 <OLED_CLS>
1c002f58:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f5c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f60:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f64:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f68:	542ccc00 	bl	11468(0x2ccc) # 1c005c34 <OLED_ShowCN_STR>
1c002f6c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f70:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002f74:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f78:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f7c:	542cb800 	bl	11448(0x2cb8) # 1c005c34 <OLED_ShowCN_STR>
1c002f80:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f84:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002f88:	50004400 	b	68(0x44) # 1c002fcc <Add_FR+0x28c>
1c002f8c:	54295800 	bl	10584(0x2958) # 1c0058e4 <OLED_CLS>
1c002f90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f94:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f9c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002fa0:	542c9400 	bl	11412(0x2c94) # 1c005c34 <OLED_ShowCN_STR>
1c002fa4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002fa8:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002fac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002fb0:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002fb4:	542c8000 	bl	11392(0x2c80) # 1c005c34 <OLED_ShowCN_STR>
1c002fb8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002fbc:	00150184 	move	$r4,$r12
1c002fc0:	57fc5bff 	bl	-936(0xffffc58) # 1c002c18 <ShowErrMessage>
1c002fc4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002fc8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002fcc:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002fd0:	03bfc98c 	ori	$r12,$r12,0xff2
1c002fd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fd8:	50008400 	b	132(0x84) # 1c00305c <Add_FR+0x31c>
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
1c00305c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003060:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003064:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003068:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c002fdc <Add_FR+0x29c>
1c00306c:	50034800 	b	840(0x348) # 1c0033b4 <Add_FR+0x674>
1c003070:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003074:	03bfc98c 	ori	$r12,$r12,0xff2
1c003078:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00307c:	50008400 	b	132(0x84) # 1c003100 <Add_FR+0x3c0>
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
1c0030d8:	03400000 	andi	$r0,$r0,0x0
1c0030dc:	03400000 	andi	$r0,$r0,0x0
1c0030e0:	03400000 	andi	$r0,$r0,0x0
1c0030e4:	03400000 	andi	$r0,$r0,0x0
1c0030e8:	03400000 	andi	$r0,$r0,0x0
1c0030ec:	03400000 	andi	$r0,$r0,0x0
1c0030f0:	03400000 	andi	$r0,$r0,0x0
1c0030f4:	03400000 	andi	$r0,$r0,0x0
1c0030f8:	03400000 	andi	$r0,$r0,0x0
1c0030fc:	03400000 	andi	$r0,$r0,0x0
1c003100:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003104:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003108:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c00310c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003080 <Add_FR+0x340>
1c003110:	57f713ff 	bl	-2288(0xffff710) # 1c002820 <PS_RegModel>
1c003114:	0015008c 	move	$r12,$r4
1c003118:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c00311c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c003120:	44001180 	bnez	$r12,16(0x10) # 1c003130 <Add_FR+0x3f0>
1c003124:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c003128:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00312c:	50001400 	b	20(0x14) # 1c003140 <Add_FR+0x400>
1c003130:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c003134:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c003138:	00150184 	move	$r4,$r12
1c00313c:	57fadfff 	bl	-1316(0xffffadc) # 1c002c18 <ShowErrMessage>
1c003140:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003144:	03bfc98c 	ori	$r12,$r12,0xff2
1c003148:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00314c:	50008400 	b	132(0x84) # 1c0031d0 <Add_FR+0x490>
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
1c0031d0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0031d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0031d8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0031dc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003150 <Add_FR+0x410>
1c0031e0:	5001d400 	b	468(0x1d4) # 1c0033b4 <Add_FR+0x674>
1c0031e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0031e8:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0031ec:	50009000 	b	144(0x90) # 1c00327c <Add_FR+0x53c>
1c0031f0:	54092800 	bl	2344(0x928) # 1c003b18 <MatrixKey>
1c0031f4:	0015008c 	move	$r12,$r4
1c0031f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0031fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003200:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003204:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c003220 <Add_FR+0x4e0>
1c003208:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00320c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003210:	40001180 	beqz	$r12,16(0x10) # 1c003220 <Add_FR+0x4e0>
1c003214:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003218:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00321c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003220:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003224:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003228:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c003248 <Add_FR+0x508>
1c00322c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003230:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c003234:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c003238:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c003248 <Add_FR+0x508>
1c00323c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003240:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003244:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003248:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00324c:	1c000106 	pcaddu12i	$r6,8(0x8)
1c003250:	02bbe0c6 	addi.w	$r6,$r6,-264(0xef8)
1c003254:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003258:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00325c:	5426b400 	bl	9908(0x26b4) # 1c005910 <OLED_ShowStr>
1c003260:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003264:	02804008 	addi.w	$r8,$r0,16(0x10)
1c003268:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00326c:	00150186 	move	$r6,$r12
1c003270:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003274:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c003278:	542d0400 	bl	11524(0x2d04) # 1c005f7c <OLED_ShowNum>
1c00327c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003280:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003284:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c0031f0 <Add_FR+0x4b0>
1c003288:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00328c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003290:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003294:	00150185 	move	$r5,$r12
1c003298:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00329c:	57f613ff 	bl	-2544(0xffff610) # 1c0028ac <PS_StoreChar>
1c0032a0:	0015008c 	move	$r12,$r4
1c0032a4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0032a8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0032ac:	4400f580 	bnez	$r12,244(0xf4) # 1c0033a0 <Add_FR+0x660>
1c0032b0:	54263400 	bl	9780(0x2634) # 1c0058e4 <OLED_CLS>
1c0032b4:	02801807 	addi.w	$r7,$r0,6(0x6)
1c0032b8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c0032bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0032c0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0032c4:	54297000 	bl	10608(0x2970) # 1c005c34 <OLED_ShowCN_STR>
1c0032c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0032cc:	1c000106 	pcaddu12i	$r6,8(0x8)
1c0032d0:	02b9e0c6 	addi.w	$r6,$r6,-392(0xe78)
1c0032d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0032d8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0032dc:	54263400 	bl	9780(0x2634) # 1c005910 <OLED_ShowStr>
1c0032e0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0032e4:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0032e8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0032ec:	00150186 	move	$r6,$r12
1c0032f0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0032f4:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c0032f8:	542c8400 	bl	11396(0x2c84) # 1c005f7c <OLED_ShowNum>
1c0032fc:	14002aac 	lu12i.w	$r12,341(0x155)
1c003300:	03bf598c 	ori	$r12,$r12,0xfd6
1c003304:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003308:	50008400 	b	132(0x84) # 1c00338c <Add_FR+0x64c>
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
1c00338c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003390:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003394:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003398:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00330c <Add_FR+0x5cc>
1c00339c:	5000cc00 	b	204(0xcc) # 1c003468 <Add_FR+0x728>
1c0033a0:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0033a4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0033a8:	00150184 	move	$r4,$r12
1c0033ac:	57f86fff 	bl	-1940(0xffff86c) # 1c002c18 <ShowErrMessage>
1c0033b0:	03400000 	andi	$r0,$r0,0x0
1c0033b4:	14000b6c 	lu12i.w	$r12,91(0x5b)
1c0033b8:	038ca18c 	ori	$r12,$r12,0x328
1c0033bc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0033c0:	50008400 	b	132(0x84) # 1c003444 <Add_FR+0x704>
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
1c003444:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003448:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00344c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003450:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0033c4 <Add_FR+0x684>
1c003454:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c003458:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00345c:	580009ac 	beq	$r13,$r12,8(0x8) # 1c003464 <Add_FR+0x724>
1c003460:	53f8fbff 	b	-1800(0xffff8f8) # 1c002d58 <Add_FR+0x18>
1c003464:	03400000 	andi	$r0,$r0,0x0
1c003468:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00346c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003470:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003474:	4c000020 	jirl	$r0,$r1,0

1c003478 <press_FR>:
press_FR():
1c003478:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00347c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003480:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003484:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003488:	54245c00 	bl	9308(0x245c) # 1c0058e4 <OLED_CLS>
1c00348c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003490:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003494:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003498:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00349c:	54279800 	bl	10136(0x2798) # 1c005c34 <OLED_ShowCN_STR>
1c0034a0:	57f1c3ff 	bl	-3648(0xffff1c0) # 1c002660 <PS_GetImage>
1c0034a4:	0015008c 	move	$r12,$r4
1c0034a8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0034ac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0034b0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0034a0 <press_FR+0x28>
1c0034b4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0034b8:	57f237ff 	bl	-3532(0xffff234) # 1c0026ec <PS_GenChar>
1c0034bc:	0015008c 	move	$r12,$r4
1c0034c0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0034c4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0034c8:	4402dd80 	bnez	$r12,732(0x2dc) # 1c0037a4 <press_FR+0x32c>
1c0034cc:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c0034d0:	00150187 	move	$r7,$r12
1c0034d4:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c0034d8:	00150005 	move	$r5,$r0
1c0034dc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0034e0:	57f567ff 	bl	-2716(0xffff564) # 1c002a44 <PS_HighSpeedSearch>
1c0034e4:	0015008c 	move	$r12,$r4
1c0034e8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0034ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0034f0:	44020580 	bnez	$r12,516(0x204) # 1c0036f4 <press_FR+0x27c>
1c0034f4:	5423f000 	bl	9200(0x23f0) # 1c0058e4 <OLED_CLS>
1c0034f8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0034fc:	544ee800 	bl	20200(0x4ee8) # 1c0083e4 <interface_display>
1c003500:	54041400 	bl	1044(0x414) # 1c003914 <SG90_Open>
1c003504:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c003508:	03bdc58c 	ori	$r12,$r12,0xf71
1c00350c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003510:	50008400 	b	132(0x84) # 1c003594 <press_FR+0x11c>
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
1c00357c:	03400000 	andi	$r0,$r0,0x0
1c003580:	03400000 	andi	$r0,$r0,0x0
1c003584:	03400000 	andi	$r0,$r0,0x0
1c003588:	03400000 	andi	$r0,$r0,0x0
1c00358c:	03400000 	andi	$r0,$r0,0x0
1c003590:	03400000 	andi	$r0,$r0,0x0
1c003594:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003598:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00359c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0035a0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003514 <press_FR+0x9c>
1c0035a4:	54039c00 	bl	924(0x39c) # 1c003940 <SG90_Close>
1c0035a8:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0035ac:	544e3800 	bl	20024(0x4e38) # 1c0083e4 <interface_display>
1c0035b0:	14002aac 	lu12i.w	$r12,341(0x155)
1c0035b4:	03bf598c 	ori	$r12,$r12,0xfd6
1c0035b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035bc:	50008400 	b	132(0x84) # 1c003640 <press_FR+0x1c8>
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
1c0035fc:	03400000 	andi	$r0,$r0,0x0
1c003600:	03400000 	andi	$r0,$r0,0x0
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
1c003640:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003644:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003648:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00364c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0035c0 <press_FR+0x148>
1c003650:	14002aac 	lu12i.w	$r12,341(0x155)
1c003654:	03bf598c 	ori	$r12,$r12,0xfd6
1c003658:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00365c:	50008400 	b	132(0x84) # 1c0036e0 <press_FR+0x268>
1c003660:	03400000 	andi	$r0,$r0,0x0
1c003664:	03400000 	andi	$r0,$r0,0x0
1c003668:	03400000 	andi	$r0,$r0,0x0
1c00366c:	03400000 	andi	$r0,$r0,0x0
1c003670:	03400000 	andi	$r0,$r0,0x0
1c003674:	03400000 	andi	$r0,$r0,0x0
1c003678:	03400000 	andi	$r0,$r0,0x0
1c00367c:	03400000 	andi	$r0,$r0,0x0
1c003680:	03400000 	andi	$r0,$r0,0x0
1c003684:	03400000 	andi	$r0,$r0,0x0
1c003688:	03400000 	andi	$r0,$r0,0x0
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
1c0036e0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036e8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0036ec:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003660 <press_FR+0x1e8>
1c0036f0:	5000d000 	b	208(0xd0) # 1c0037c0 <press_FR+0x348>
1c0036f4:	5421f000 	bl	8688(0x21f0) # 1c0058e4 <OLED_CLS>
1c0036f8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0036fc:	544ce800 	bl	19688(0x4ce8) # 1c0083e4 <interface_display>
1c003700:	541be000 	bl	7136(0x1be0) # 1c0052e0 <Buzzer>
1c003704:	14002aac 	lu12i.w	$r12,341(0x155)
1c003708:	03bf598c 	ori	$r12,$r12,0xfd6
1c00370c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003710:	50008400 	b	132(0x84) # 1c003794 <press_FR+0x31c>
1c003714:	03400000 	andi	$r0,$r0,0x0
1c003718:	03400000 	andi	$r0,$r0,0x0
1c00371c:	03400000 	andi	$r0,$r0,0x0
1c003720:	03400000 	andi	$r0,$r0,0x0
1c003724:	03400000 	andi	$r0,$r0,0x0
1c003728:	03400000 	andi	$r0,$r0,0x0
1c00372c:	03400000 	andi	$r0,$r0,0x0
1c003730:	03400000 	andi	$r0,$r0,0x0
1c003734:	03400000 	andi	$r0,$r0,0x0
1c003738:	03400000 	andi	$r0,$r0,0x0
1c00373c:	03400000 	andi	$r0,$r0,0x0
1c003740:	03400000 	andi	$r0,$r0,0x0
1c003744:	03400000 	andi	$r0,$r0,0x0
1c003748:	03400000 	andi	$r0,$r0,0x0
1c00374c:	03400000 	andi	$r0,$r0,0x0
1c003750:	03400000 	andi	$r0,$r0,0x0
1c003754:	03400000 	andi	$r0,$r0,0x0
1c003758:	03400000 	andi	$r0,$r0,0x0
1c00375c:	03400000 	andi	$r0,$r0,0x0
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
1c003794:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003798:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00379c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0037a0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003714 <press_FR+0x29c>
1c0037a4:	54214000 	bl	8512(0x2140) # 1c0058e4 <OLED_CLS>
1c0037a8:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0037ac:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c0037b0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0037b4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0037b8:	54247c00 	bl	9340(0x247c) # 1c005c34 <OLED_ShowCN_STR>
1c0037bc:	53fce7ff 	b	-796(0xffffce4) # 1c0034a0 <press_FR+0x28>
1c0037c0:	03400000 	andi	$r0,$r0,0x0
1c0037c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0037c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0037cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037d0:	4c000020 	jirl	$r0,$r1,0

1c0037d4 <Del_FR_Lib>:
Del_FR_Lib():
1c0037d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0037d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0037dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0037e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0037e4:	57f1d7ff 	bl	-3628(0xffff1d4) # 1c0029b8 <PS_Empty>
1c0037e8:	0015008c 	move	$r12,$r4
1c0037ec:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0037f0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0037f4:	40001180 	beqz	$r12,16(0x10) # 1c003804 <Del_FR_Lib+0x30>
1c0037f8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0037fc:	00150184 	move	$r4,$r12
1c003800:	57f41bff 	bl	-3048(0xffff418) # 1c002c18 <ShowErrMessage>
1c003804:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c003808:	03bf918c 	ori	$r12,$r12,0xfe4
1c00380c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003810:	50008400 	b	132(0x84) # 1c003894 <Del_FR_Lib+0xc0>
1c003814:	03400000 	andi	$r0,$r0,0x0
1c003818:	03400000 	andi	$r0,$r0,0x0
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
1c003894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003898:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00389c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0038a0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003814 <Del_FR_Lib+0x40>
1c0038a4:	03400000 	andi	$r0,$r0,0x0
1c0038a8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038ac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038b4:	4c000020 	jirl	$r0,$r1,0

1c0038b8 <SG90_GetAngle>:
SG90_GetAngle():
1c0038b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038cc:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0038d0:	57e4f3ff 	bl	-6928(0xfffe4f0) # 1c001dc0 <pwm_steering_engine_set>
1c0038d4:	03400000 	andi	$r0,$r0,0x0
1c0038d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038e4:	4c000020 	jirl	$r0,$r1,0

1c0038e8 <SG90_Init>:
SG90_Init():
1c0038e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038f8:	00150004 	move	$r4,$r0
1c0038fc:	57ffbfff 	bl	-68(0xfffffbc) # 1c0038b8 <SG90_GetAngle>
1c003900:	03400000 	andi	$r0,$r0,0x0
1c003904:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003908:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00390c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003910:	4c000020 	jirl	$r0,$r1,0

1c003914 <SG90_Open>:
SG90_Open():
1c003914:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003918:	29803061 	st.w	$r1,$r3,12(0xc)
1c00391c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003920:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003924:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c003928:	57ff93ff 	bl	-112(0xfffff90) # 1c0038b8 <SG90_GetAngle>
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003934:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003938:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00393c:	4c000020 	jirl	$r0,$r1,0

1c003940 <SG90_Close>:
SG90_Close():
1c003940:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003944:	29803061 	st.w	$r1,$r3,12(0xc)
1c003948:	29802076 	st.w	$r22,$r3,8(0x8)
1c00394c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003950:	00150004 	move	$r4,$r0
1c003954:	57ff67ff 	bl	-156(0xfffff64) # 1c0038b8 <SG90_GetAngle>
1c003958:	03400000 	andi	$r0,$r0,0x0
1c00395c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003960:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003964:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003968:	4c000020 	jirl	$r0,$r1,0

1c00396c <hw_uart_init>:
hw_uart_init():
1c00396c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003970:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003974:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003978:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00397c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c003980:	029ac18c 	addi.w	$r12,$r12,1712(0x6b0)
1c003984:	2880018e 	ld.w	$r14,$r12,0
1c003988:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00398c:	002135cc 	div.wu	$r12,$r14,$r13
1c003990:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003998 <hw_uart_init+0x2c>
1c003994:	002a0007 	break	0x7
1c003998:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00399c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039a0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0039a4:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c0039a8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0039ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b0:	0044a18d 	srli.w	$r13,$r12,0x8
1c0039b4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0039b8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0039bc:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0039c0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0039c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039c8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0039cc:	2900018d 	st.b	$r13,$r12,0
1c0039d0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0039d4:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c0039d8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0039dc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0039e0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0039e4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0039e8:	03400000 	andi	$r0,$r0,0x0
1c0039ec:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039f4:	4c000020 	jirl	$r0,$r1,0

1c0039f8 <uart_write>:
uart_write():
1c0039f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039fc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a04:	0015008c 	move	$r12,$r4
1c003a08:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a0c:	03400000 	andi	$r0,$r0,0x0
1c003a10:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003a14:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c003a18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003a1c:	0340818c 	andi	$r12,$r12,0x20
1c003a20:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c003a10 <uart_write+0x18>
1c003a24:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003a28:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003a2c:	2900018d 	st.b	$r13,$r12,0
1c003a30:	03400000 	andi	$r0,$r0,0x0
1c003a34:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a3c:	4c000020 	jirl	$r0,$r1,0

1c003a40 <uart_set_rx_th>:
uart_set_rx_th():
1c003a40:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a44:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a4c:	0015008c 	move	$r12,$r4
1c003a50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a54:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003a58:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003a5c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003a68 <uart_set_rx_th+0x28>
1c003a60:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003a64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003a68:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003a6c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003a70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a74:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003a78:	0340fdad 	andi	$r13,$r13,0x3f
1c003a7c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003a80:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003a84:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003a88:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003a8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003a90:	00005d8d 	ext.w.b	$r13,$r12
1c003a94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003a98:	0040998c 	slli.w	$r12,$r12,0x6
1c003a9c:	00005d8c 	ext.w.b	$r12,$r12
1c003aa0:	001531ac 	or	$r12,$r13,$r12
1c003aa4:	00005d8d 	ext.w.b	$r13,$r12
1c003aa8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003aac:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003ab0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003abc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ac0:	4c000020 	jirl	$r0,$r1,0

1c003ac4 <clkey>:
clkey():
1c003ac4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ac8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003acc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ad0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ad4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003ad8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003adc:	57de73ff 	bl	-8592(0xfffde70) # 1c00194c <gpio_write>
1c003ae0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003ae4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003ae8:	57de67ff 	bl	-8604(0xfffde64) # 1c00194c <gpio_write>
1c003aec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003af0:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c003af4:	57de5bff 	bl	-8616(0xfffde58) # 1c00194c <gpio_write>
1c003af8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003afc:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003b00:	57de4fff 	bl	-8628(0xfffde4c) # 1c00194c <gpio_write>
1c003b04:	03400000 	andi	$r0,$r0,0x0
1c003b08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b14:	4c000020 	jirl	$r0,$r1,0

1c003b18 <MatrixKey>:
MatrixKey():
1c003b18:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c003b1c:	29827061 	st.w	$r1,$r3,156(0x9c)
1c003b20:	29826076 	st.w	$r22,$r3,152(0x98)
1c003b24:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c003b28:	57ff9fff 	bl	-100(0xfffff9c) # 1c003ac4 <clkey>
1c003b2c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b30:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b38:	50008400 	b	132(0x84) # 1c003bbc <MatrixKey+0xa4>
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
1c003ba4:	03400000 	andi	$r0,$r0,0x0
1c003ba8:	03400000 	andi	$r0,$r0,0x0
1c003bac:	03400000 	andi	$r0,$r0,0x0
1c003bb0:	03400000 	andi	$r0,$r0,0x0
1c003bb4:	03400000 	andi	$r0,$r0,0x0
1c003bb8:	03400000 	andi	$r0,$r0,0x0
1c003bbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bc4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003bc8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003b3c <MatrixKey+0x24>
1c003bcc:	00150005 	move	$r5,$r0
1c003bd0:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003bd4:	57dd7bff 	bl	-8840(0xfffdd78) # 1c00194c <gpio_write>
1c003bd8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003bdc:	57de6bff 	bl	-8600(0xfffde68) # 1c001a44 <gpio_read>
1c003be0:	0015008c 	move	$r12,$r4
1c003be4:	44016180 	bnez	$r12,352(0x160) # 1c003d44 <MatrixKey+0x22c>
1c003be8:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bec:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003bf0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003bf4:	50008400 	b	132(0x84) # 1c003c78 <MatrixKey+0x160>
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
1c003c5c:	03400000 	andi	$r0,$r0,0x0
1c003c60:	03400000 	andi	$r0,$r0,0x0
1c003c64:	03400000 	andi	$r0,$r0,0x0
1c003c68:	03400000 	andi	$r0,$r0,0x0
1c003c6c:	03400000 	andi	$r0,$r0,0x0
1c003c70:	03400000 	andi	$r0,$r0,0x0
1c003c74:	03400000 	andi	$r0,$r0,0x0
1c003c78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003c7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c80:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003c84:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003bf8 <MatrixKey+0xe0>
1c003c88:	03400000 	andi	$r0,$r0,0x0
1c003c8c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003c90:	57ddb7ff 	bl	-8780(0xfffddb4) # 1c001a44 <gpio_read>
1c003c94:	0015008c 	move	$r12,$r4
1c003c98:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003c8c <MatrixKey+0x174>
1c003c9c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ca0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ca4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003ca8:	50008400 	b	132(0x84) # 1c003d2c <MatrixKey+0x214>
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
1c003d10:	03400000 	andi	$r0,$r0,0x0
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	03400000 	andi	$r0,$r0,0x0
1c003d1c:	03400000 	andi	$r0,$r0,0x0
1c003d20:	03400000 	andi	$r0,$r0,0x0
1c003d24:	03400000 	andi	$r0,$r0,0x0
1c003d28:	03400000 	andi	$r0,$r0,0x0
1c003d2c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003d30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d34:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003d38:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003cac <MatrixKey+0x194>
1c003d3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003d40:	50158c00 	b	5516(0x158c) # 1c0052cc <MatrixKey+0x17b4>
1c003d44:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003d48:	57dcffff 	bl	-8964(0xfffdcfc) # 1c001a44 <gpio_read>
1c003d4c:	0015008c 	move	$r12,$r4
1c003d50:	44016180 	bnez	$r12,352(0x160) # 1c003eb0 <MatrixKey+0x398>
1c003d54:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d58:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d5c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003d60:	50008400 	b	132(0x84) # 1c003de4 <MatrixKey+0x2cc>
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
1c003dc8:	03400000 	andi	$r0,$r0,0x0
1c003dcc:	03400000 	andi	$r0,$r0,0x0
1c003dd0:	03400000 	andi	$r0,$r0,0x0
1c003dd4:	03400000 	andi	$r0,$r0,0x0
1c003dd8:	03400000 	andi	$r0,$r0,0x0
1c003ddc:	03400000 	andi	$r0,$r0,0x0
1c003de0:	03400000 	andi	$r0,$r0,0x0
1c003de4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003de8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003dec:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003df0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003d64 <MatrixKey+0x24c>
1c003df4:	03400000 	andi	$r0,$r0,0x0
1c003df8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003dfc:	57dc4bff 	bl	-9144(0xfffdc48) # 1c001a44 <gpio_read>
1c003e00:	0015008c 	move	$r12,$r4
1c003e04:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003df8 <MatrixKey+0x2e0>
1c003e08:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e0c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e10:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003e14:	50008400 	b	132(0x84) # 1c003e98 <MatrixKey+0x380>
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
1c003e7c:	03400000 	andi	$r0,$r0,0x0
1c003e80:	03400000 	andi	$r0,$r0,0x0
1c003e84:	03400000 	andi	$r0,$r0,0x0
1c003e88:	03400000 	andi	$r0,$r0,0x0
1c003e8c:	03400000 	andi	$r0,$r0,0x0
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	03400000 	andi	$r0,$r0,0x0
1c003e98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003e9c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ea0:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003ea4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003e18 <MatrixKey+0x300>
1c003ea8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003eac:	50142000 	b	5152(0x1420) # 1c0052cc <MatrixKey+0x17b4>
1c003eb0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003eb4:	57db93ff 	bl	-9328(0xfffdb90) # 1c001a44 <gpio_read>
1c003eb8:	0015008c 	move	$r12,$r4
1c003ebc:	44016180 	bnez	$r12,352(0x160) # 1c00401c <MatrixKey+0x504>
1c003ec0:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ec4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ec8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003ecc:	50008400 	b	132(0x84) # 1c003f50 <MatrixKey+0x438>
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
1c003f34:	03400000 	andi	$r0,$r0,0x0
1c003f38:	03400000 	andi	$r0,$r0,0x0
1c003f3c:	03400000 	andi	$r0,$r0,0x0
1c003f40:	03400000 	andi	$r0,$r0,0x0
1c003f44:	03400000 	andi	$r0,$r0,0x0
1c003f48:	03400000 	andi	$r0,$r0,0x0
1c003f4c:	03400000 	andi	$r0,$r0,0x0
1c003f50:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003f54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f58:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003f5c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003ed0 <MatrixKey+0x3b8>
1c003f60:	03400000 	andi	$r0,$r0,0x0
1c003f64:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003f68:	57dadfff 	bl	-9508(0xfffdadc) # 1c001a44 <gpio_read>
1c003f6c:	0015008c 	move	$r12,$r4
1c003f70:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003f64 <MatrixKey+0x44c>
1c003f74:	1400008c 	lu12i.w	$r12,4(0x4)
1c003f78:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003f7c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003f80:	50008400 	b	132(0x84) # 1c004004 <MatrixKey+0x4ec>
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
1c003fe8:	03400000 	andi	$r0,$r0,0x0
1c003fec:	03400000 	andi	$r0,$r0,0x0
1c003ff0:	03400000 	andi	$r0,$r0,0x0
1c003ff4:	03400000 	andi	$r0,$r0,0x0
1c003ff8:	03400000 	andi	$r0,$r0,0x0
1c003ffc:	03400000 	andi	$r0,$r0,0x0
1c004000:	03400000 	andi	$r0,$r0,0x0
1c004004:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004008:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00400c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c004010:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c003f84 <MatrixKey+0x46c>
1c004014:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c004018:	5012b400 	b	4788(0x12b4) # 1c0052cc <MatrixKey+0x17b4>
1c00401c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004020:	57da27ff 	bl	-9692(0xfffda24) # 1c001a44 <gpio_read>
1c004024:	0015008c 	move	$r12,$r4
1c004028:	44016180 	bnez	$r12,352(0x160) # 1c004188 <MatrixKey+0x670>
1c00402c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004030:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004034:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c004038:	50008400 	b	132(0x84) # 1c0040bc <MatrixKey+0x5a4>
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
1c0040b0:	03400000 	andi	$r0,$r0,0x0
1c0040b4:	03400000 	andi	$r0,$r0,0x0
1c0040b8:	03400000 	andi	$r0,$r0,0x0
1c0040bc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0040c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0040c4:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c0040c8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00403c <MatrixKey+0x524>
1c0040cc:	03400000 	andi	$r0,$r0,0x0
1c0040d0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0040d4:	57d973ff 	bl	-9872(0xfffd970) # 1c001a44 <gpio_read>
1c0040d8:	0015008c 	move	$r12,$r4
1c0040dc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0040d0 <MatrixKey+0x5b8>
1c0040e0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0040e4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0040e8:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0040ec:	50008400 	b	132(0x84) # 1c004170 <MatrixKey+0x658>
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
1c004164:	03400000 	andi	$r0,$r0,0x0
1c004168:	03400000 	andi	$r0,$r0,0x0
1c00416c:	03400000 	andi	$r0,$r0,0x0
1c004170:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c004174:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004178:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c00417c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0040f0 <MatrixKey+0x5d8>
1c004180:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c004184:	50114800 	b	4424(0x1148) # 1c0052cc <MatrixKey+0x17b4>
1c004188:	57f93fff 	bl	-1732(0xffff93c) # 1c003ac4 <clkey>
1c00418c:	00150005 	move	$r5,$r0
1c004190:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c004194:	57d7bbff 	bl	-10312(0xfffd7b8) # 1c00194c <gpio_write>
1c004198:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00419c:	57d8abff 	bl	-10072(0xfffd8a8) # 1c001a44 <gpio_read>
1c0041a0:	0015008c 	move	$r12,$r4
1c0041a4:	44016180 	bnez	$r12,352(0x160) # 1c004304 <MatrixKey+0x7ec>
1c0041a8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0041ac:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0041b0:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c0041b4:	50008400 	b	132(0x84) # 1c004238 <MatrixKey+0x720>
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
1c00421c:	03400000 	andi	$r0,$r0,0x0
1c004220:	03400000 	andi	$r0,$r0,0x0
1c004224:	03400000 	andi	$r0,$r0,0x0
1c004228:	03400000 	andi	$r0,$r0,0x0
1c00422c:	03400000 	andi	$r0,$r0,0x0
1c004230:	03400000 	andi	$r0,$r0,0x0
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00423c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004240:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c004244:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0041b8 <MatrixKey+0x6a0>
1c004248:	03400000 	andi	$r0,$r0,0x0
1c00424c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004250:	57d7f7ff 	bl	-10252(0xfffd7f4) # 1c001a44 <gpio_read>
1c004254:	0015008c 	move	$r12,$r4
1c004258:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00424c <MatrixKey+0x734>
1c00425c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004260:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004264:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c004268:	50008400 	b	132(0x84) # 1c0042ec <MatrixKey+0x7d4>
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
1c0042d0:	03400000 	andi	$r0,$r0,0x0
1c0042d4:	03400000 	andi	$r0,$r0,0x0
1c0042d8:	03400000 	andi	$r0,$r0,0x0
1c0042dc:	03400000 	andi	$r0,$r0,0x0
1c0042e0:	03400000 	andi	$r0,$r0,0x0
1c0042e4:	03400000 	andi	$r0,$r0,0x0
1c0042e8:	03400000 	andi	$r0,$r0,0x0
1c0042ec:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c0042f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0042f4:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c0042f8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00426c <MatrixKey+0x754>
1c0042fc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004300:	500fcc00 	b	4044(0xfcc) # 1c0052cc <MatrixKey+0x17b4>
1c004304:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004308:	57d73fff 	bl	-10436(0xfffd73c) # 1c001a44 <gpio_read>
1c00430c:	0015008c 	move	$r12,$r4
1c004310:	44016180 	bnez	$r12,352(0x160) # 1c004470 <MatrixKey+0x958>
1c004314:	1400008c 	lu12i.w	$r12,4(0x4)
1c004318:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00431c:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c004320:	50008400 	b	132(0x84) # 1c0043a4 <MatrixKey+0x88c>
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
1c004388:	03400000 	andi	$r0,$r0,0x0
1c00438c:	03400000 	andi	$r0,$r0,0x0
1c004390:	03400000 	andi	$r0,$r0,0x0
1c004394:	03400000 	andi	$r0,$r0,0x0
1c004398:	03400000 	andi	$r0,$r0,0x0
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	03400000 	andi	$r0,$r0,0x0
1c0043a4:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c0043a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0043ac:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c0043b0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004324 <MatrixKey+0x80c>
1c0043b4:	03400000 	andi	$r0,$r0,0x0
1c0043b8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0043bc:	57d68bff 	bl	-10616(0xfffd688) # 1c001a44 <gpio_read>
1c0043c0:	0015008c 	move	$r12,$r4
1c0043c4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0043b8 <MatrixKey+0x8a0>
1c0043c8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0043cc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0043d0:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c0043d4:	50008400 	b	132(0x84) # 1c004458 <MatrixKey+0x940>
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
1c00443c:	03400000 	andi	$r0,$r0,0x0
1c004440:	03400000 	andi	$r0,$r0,0x0
1c004444:	03400000 	andi	$r0,$r0,0x0
1c004448:	03400000 	andi	$r0,$r0,0x0
1c00444c:	03400000 	andi	$r0,$r0,0x0
1c004450:	03400000 	andi	$r0,$r0,0x0
1c004454:	03400000 	andi	$r0,$r0,0x0
1c004458:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c00445c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004460:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c004464:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0043d8 <MatrixKey+0x8c0>
1c004468:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c00446c:	500e6000 	b	3680(0xe60) # 1c0052cc <MatrixKey+0x17b4>
1c004470:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004474:	57d5d3ff 	bl	-10800(0xfffd5d0) # 1c001a44 <gpio_read>
1c004478:	0015008c 	move	$r12,$r4
1c00447c:	44016180 	bnez	$r12,352(0x160) # 1c0045dc <MatrixKey+0xac4>
1c004480:	1400008c 	lu12i.w	$r12,4(0x4)
1c004484:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004488:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c00448c:	50008400 	b	132(0x84) # 1c004510 <MatrixKey+0x9f8>
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
1c0044f4:	03400000 	andi	$r0,$r0,0x0
1c0044f8:	03400000 	andi	$r0,$r0,0x0
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	03400000 	andi	$r0,$r0,0x0
1c004504:	03400000 	andi	$r0,$r0,0x0
1c004508:	03400000 	andi	$r0,$r0,0x0
1c00450c:	03400000 	andi	$r0,$r0,0x0
1c004510:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c004514:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004518:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c00451c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004490 <MatrixKey+0x978>
1c004520:	03400000 	andi	$r0,$r0,0x0
1c004524:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004528:	57d51fff 	bl	-10980(0xfffd51c) # 1c001a44 <gpio_read>
1c00452c:	0015008c 	move	$r12,$r4
1c004530:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004524 <MatrixKey+0xa0c>
1c004534:	1400008c 	lu12i.w	$r12,4(0x4)
1c004538:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00453c:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c004540:	50008400 	b	132(0x84) # 1c0045c4 <MatrixKey+0xaac>
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
1c0045a8:	03400000 	andi	$r0,$r0,0x0
1c0045ac:	03400000 	andi	$r0,$r0,0x0
1c0045b0:	03400000 	andi	$r0,$r0,0x0
1c0045b4:	03400000 	andi	$r0,$r0,0x0
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	03400000 	andi	$r0,$r0,0x0
1c0045c0:	03400000 	andi	$r0,$r0,0x0
1c0045c4:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c0045c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0045cc:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c0045d0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004544 <MatrixKey+0xa2c>
1c0045d4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0045d8:	500cf400 	b	3316(0xcf4) # 1c0052cc <MatrixKey+0x17b4>
1c0045dc:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0045e0:	57d467ff 	bl	-11164(0xfffd464) # 1c001a44 <gpio_read>
1c0045e4:	0015008c 	move	$r12,$r4
1c0045e8:	44016180 	bnez	$r12,352(0x160) # 1c004748 <MatrixKey+0xc30>
1c0045ec:	1400008c 	lu12i.w	$r12,4(0x4)
1c0045f0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0045f4:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c0045f8:	50008400 	b	132(0x84) # 1c00467c <MatrixKey+0xb64>
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
1c004670:	03400000 	andi	$r0,$r0,0x0
1c004674:	03400000 	andi	$r0,$r0,0x0
1c004678:	03400000 	andi	$r0,$r0,0x0
1c00467c:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c004680:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004684:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c004688:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0045fc <MatrixKey+0xae4>
1c00468c:	03400000 	andi	$r0,$r0,0x0
1c004690:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004694:	57d3b3ff 	bl	-11344(0xfffd3b0) # 1c001a44 <gpio_read>
1c004698:	0015008c 	move	$r12,$r4
1c00469c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004690 <MatrixKey+0xb78>
1c0046a0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0046a4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0046a8:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c0046ac:	50008400 	b	132(0x84) # 1c004730 <MatrixKey+0xc18>
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
1c004724:	03400000 	andi	$r0,$r0,0x0
1c004728:	03400000 	andi	$r0,$r0,0x0
1c00472c:	03400000 	andi	$r0,$r0,0x0
1c004730:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c004734:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004738:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c00473c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0046b0 <MatrixKey+0xb98>
1c004740:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c004744:	500b8800 	b	2952(0xb88) # 1c0052cc <MatrixKey+0x17b4>
1c004748:	57f37fff 	bl	-3204(0xffff37c) # 1c003ac4 <clkey>
1c00474c:	00150005 	move	$r5,$r0
1c004750:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004754:	57d1fbff 	bl	-11784(0xfffd1f8) # 1c00194c <gpio_write>
1c004758:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00475c:	57d2ebff 	bl	-11544(0xfffd2e8) # 1c001a44 <gpio_read>
1c004760:	0015008c 	move	$r12,$r4
1c004764:	44016180 	bnez	$r12,352(0x160) # 1c0048c4 <MatrixKey+0xdac>
1c004768:	1400008c 	lu12i.w	$r12,4(0x4)
1c00476c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004770:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c004774:	50008400 	b	132(0x84) # 1c0047f8 <MatrixKey+0xce0>
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
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	03400000 	andi	$r0,$r0,0x0
1c0047e4:	03400000 	andi	$r0,$r0,0x0
1c0047e8:	03400000 	andi	$r0,$r0,0x0
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	03400000 	andi	$r0,$r0,0x0
1c0047f4:	03400000 	andi	$r0,$r0,0x0
1c0047f8:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c0047fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004800:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c004804:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004778 <MatrixKey+0xc60>
1c004808:	03400000 	andi	$r0,$r0,0x0
1c00480c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004810:	57d237ff 	bl	-11724(0xfffd234) # 1c001a44 <gpio_read>
1c004814:	0015008c 	move	$r12,$r4
1c004818:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00480c <MatrixKey+0xcf4>
1c00481c:	1400008c 	lu12i.w	$r12,4(0x4)
1c004820:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004824:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c004828:	50008400 	b	132(0x84) # 1c0048ac <MatrixKey+0xd94>
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
1c004890:	03400000 	andi	$r0,$r0,0x0
1c004894:	03400000 	andi	$r0,$r0,0x0
1c004898:	03400000 	andi	$r0,$r0,0x0
1c00489c:	03400000 	andi	$r0,$r0,0x0
1c0048a0:	03400000 	andi	$r0,$r0,0x0
1c0048a4:	03400000 	andi	$r0,$r0,0x0
1c0048a8:	03400000 	andi	$r0,$r0,0x0
1c0048ac:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c0048b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0048b4:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c0048b8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00482c <MatrixKey+0xd14>
1c0048bc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0048c0:	500a0c00 	b	2572(0xa0c) # 1c0052cc <MatrixKey+0x17b4>
1c0048c4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0048c8:	57d17fff 	bl	-11908(0xfffd17c) # 1c001a44 <gpio_read>
1c0048cc:	0015008c 	move	$r12,$r4
1c0048d0:	44016180 	bnez	$r12,352(0x160) # 1c004a30 <MatrixKey+0xf18>
1c0048d4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0048d8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0048dc:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c0048e0:	50008400 	b	132(0x84) # 1c004964 <MatrixKey+0xe4c>
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
1c004948:	03400000 	andi	$r0,$r0,0x0
1c00494c:	03400000 	andi	$r0,$r0,0x0
1c004950:	03400000 	andi	$r0,$r0,0x0
1c004954:	03400000 	andi	$r0,$r0,0x0
1c004958:	03400000 	andi	$r0,$r0,0x0
1c00495c:	03400000 	andi	$r0,$r0,0x0
1c004960:	03400000 	andi	$r0,$r0,0x0
1c004964:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c004968:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00496c:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c004970:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0048e4 <MatrixKey+0xdcc>
1c004974:	03400000 	andi	$r0,$r0,0x0
1c004978:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00497c:	57d0cbff 	bl	-12088(0xfffd0c8) # 1c001a44 <gpio_read>
1c004980:	0015008c 	move	$r12,$r4
1c004984:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004978 <MatrixKey+0xe60>
1c004988:	1400008c 	lu12i.w	$r12,4(0x4)
1c00498c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004990:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c004994:	50008400 	b	132(0x84) # 1c004a18 <MatrixKey+0xf00>
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
1c0049fc:	03400000 	andi	$r0,$r0,0x0
1c004a00:	03400000 	andi	$r0,$r0,0x0
1c004a04:	03400000 	andi	$r0,$r0,0x0
1c004a08:	03400000 	andi	$r0,$r0,0x0
1c004a0c:	03400000 	andi	$r0,$r0,0x0
1c004a10:	03400000 	andi	$r0,$r0,0x0
1c004a14:	03400000 	andi	$r0,$r0,0x0
1c004a18:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c004a1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004a20:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c004a24:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004998 <MatrixKey+0xe80>
1c004a28:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004a2c:	5008a000 	b	2208(0x8a0) # 1c0052cc <MatrixKey+0x17b4>
1c004a30:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004a34:	57d013ff 	bl	-12272(0xfffd010) # 1c001a44 <gpio_read>
1c004a38:	0015008c 	move	$r12,$r4
1c004a3c:	44016180 	bnez	$r12,352(0x160) # 1c004b9c <MatrixKey+0x1084>
1c004a40:	1400008c 	lu12i.w	$r12,4(0x4)
1c004a44:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004a48:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c004a4c:	50008400 	b	132(0x84) # 1c004ad0 <MatrixKey+0xfb8>
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
1c004ab4:	03400000 	andi	$r0,$r0,0x0
1c004ab8:	03400000 	andi	$r0,$r0,0x0
1c004abc:	03400000 	andi	$r0,$r0,0x0
1c004ac0:	03400000 	andi	$r0,$r0,0x0
1c004ac4:	03400000 	andi	$r0,$r0,0x0
1c004ac8:	03400000 	andi	$r0,$r0,0x0
1c004acc:	03400000 	andi	$r0,$r0,0x0
1c004ad0:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c004ad4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004ad8:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c004adc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004a50 <MatrixKey+0xf38>
1c004ae0:	03400000 	andi	$r0,$r0,0x0
1c004ae4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ae8:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c001a44 <gpio_read>
1c004aec:	0015008c 	move	$r12,$r4
1c004af0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004ae4 <MatrixKey+0xfcc>
1c004af4:	1400008c 	lu12i.w	$r12,4(0x4)
1c004af8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004afc:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c004b00:	50008400 	b	132(0x84) # 1c004b84 <MatrixKey+0x106c>
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
1c004b68:	03400000 	andi	$r0,$r0,0x0
1c004b6c:	03400000 	andi	$r0,$r0,0x0
1c004b70:	03400000 	andi	$r0,$r0,0x0
1c004b74:	03400000 	andi	$r0,$r0,0x0
1c004b78:	03400000 	andi	$r0,$r0,0x0
1c004b7c:	03400000 	andi	$r0,$r0,0x0
1c004b80:	03400000 	andi	$r0,$r0,0x0
1c004b84:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c004b88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004b8c:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c004b90:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004b04 <MatrixKey+0xfec>
1c004b94:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004b98:	50073400 	b	1844(0x734) # 1c0052cc <MatrixKey+0x17b4>
1c004b9c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004ba0:	57cea7ff 	bl	-12636(0xfffcea4) # 1c001a44 <gpio_read>
1c004ba4:	0015008c 	move	$r12,$r4
1c004ba8:	44016180 	bnez	$r12,352(0x160) # 1c004d08 <MatrixKey+0x11f0>
1c004bac:	1400008c 	lu12i.w	$r12,4(0x4)
1c004bb0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004bb4:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c004bb8:	50008400 	b	132(0x84) # 1c004c3c <MatrixKey+0x1124>
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
1c004c30:	03400000 	andi	$r0,$r0,0x0
1c004c34:	03400000 	andi	$r0,$r0,0x0
1c004c38:	03400000 	andi	$r0,$r0,0x0
1c004c3c:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c004c40:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004c44:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c004c48:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004bbc <MatrixKey+0x10a4>
1c004c4c:	03400000 	andi	$r0,$r0,0x0
1c004c50:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004c54:	57cdf3ff 	bl	-12816(0xfffcdf0) # 1c001a44 <gpio_read>
1c004c58:	0015008c 	move	$r12,$r4
1c004c5c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004c50 <MatrixKey+0x1138>
1c004c60:	1400008c 	lu12i.w	$r12,4(0x4)
1c004c64:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004c68:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c004c6c:	50008400 	b	132(0x84) # 1c004cf0 <MatrixKey+0x11d8>
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
1c004ce4:	03400000 	andi	$r0,$r0,0x0
1c004ce8:	03400000 	andi	$r0,$r0,0x0
1c004cec:	03400000 	andi	$r0,$r0,0x0
1c004cf0:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c004cf4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004cf8:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c004cfc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004c70 <MatrixKey+0x1158>
1c004d00:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004d04:	5005c800 	b	1480(0x5c8) # 1c0052cc <MatrixKey+0x17b4>
1c004d08:	57edbfff 	bl	-4676(0xfffedbc) # 1c003ac4 <clkey>
1c004d0c:	00150005 	move	$r5,$r0
1c004d10:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004d14:	57cc3bff 	bl	-13256(0xfffcc38) # 1c00194c <gpio_write>
1c004d18:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004d1c:	57cd2bff 	bl	-13016(0xfffcd28) # 1c001a44 <gpio_read>
1c004d20:	0015008c 	move	$r12,$r4
1c004d24:	44016180 	bnez	$r12,352(0x160) # 1c004e84 <MatrixKey+0x136c>
1c004d28:	1400008c 	lu12i.w	$r12,4(0x4)
1c004d2c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004d30:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c004d34:	50008400 	b	132(0x84) # 1c004db8 <MatrixKey+0x12a0>
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
1c004d9c:	03400000 	andi	$r0,$r0,0x0
1c004da0:	03400000 	andi	$r0,$r0,0x0
1c004da4:	03400000 	andi	$r0,$r0,0x0
1c004da8:	03400000 	andi	$r0,$r0,0x0
1c004dac:	03400000 	andi	$r0,$r0,0x0
1c004db0:	03400000 	andi	$r0,$r0,0x0
1c004db4:	03400000 	andi	$r0,$r0,0x0
1c004db8:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c004dbc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004dc0:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c004dc4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004d38 <MatrixKey+0x1220>
1c004dc8:	03400000 	andi	$r0,$r0,0x0
1c004dcc:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004dd0:	57cc77ff 	bl	-13196(0xfffcc74) # 1c001a44 <gpio_read>
1c004dd4:	0015008c 	move	$r12,$r4
1c004dd8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004dcc <MatrixKey+0x12b4>
1c004ddc:	1400008c 	lu12i.w	$r12,4(0x4)
1c004de0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004de4:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c004de8:	50008400 	b	132(0x84) # 1c004e6c <MatrixKey+0x1354>
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
1c004e50:	03400000 	andi	$r0,$r0,0x0
1c004e54:	03400000 	andi	$r0,$r0,0x0
1c004e58:	03400000 	andi	$r0,$r0,0x0
1c004e5c:	03400000 	andi	$r0,$r0,0x0
1c004e60:	03400000 	andi	$r0,$r0,0x0
1c004e64:	03400000 	andi	$r0,$r0,0x0
1c004e68:	03400000 	andi	$r0,$r0,0x0
1c004e6c:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c004e70:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e74:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c004e78:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004dec <MatrixKey+0x12d4>
1c004e7c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c004e80:	50044c00 	b	1100(0x44c) # 1c0052cc <MatrixKey+0x17b4>
1c004e84:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004e88:	57cbbfff 	bl	-13380(0xfffcbbc) # 1c001a44 <gpio_read>
1c004e8c:	0015008c 	move	$r12,$r4
1c004e90:	44016180 	bnez	$r12,352(0x160) # 1c004ff0 <MatrixKey+0x14d8>
1c004e94:	1400008c 	lu12i.w	$r12,4(0x4)
1c004e98:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004e9c:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c004ea0:	50008400 	b	132(0x84) # 1c004f24 <MatrixKey+0x140c>
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
1c004f08:	03400000 	andi	$r0,$r0,0x0
1c004f0c:	03400000 	andi	$r0,$r0,0x0
1c004f10:	03400000 	andi	$r0,$r0,0x0
1c004f14:	03400000 	andi	$r0,$r0,0x0
1c004f18:	03400000 	andi	$r0,$r0,0x0
1c004f1c:	03400000 	andi	$r0,$r0,0x0
1c004f20:	03400000 	andi	$r0,$r0,0x0
1c004f24:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c004f28:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f2c:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c004f30:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004ea4 <MatrixKey+0x138c>
1c004f34:	03400000 	andi	$r0,$r0,0x0
1c004f38:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004f3c:	57cb0bff 	bl	-13560(0xfffcb08) # 1c001a44 <gpio_read>
1c004f40:	0015008c 	move	$r12,$r4
1c004f44:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c004f38 <MatrixKey+0x1420>
1c004f48:	1400008c 	lu12i.w	$r12,4(0x4)
1c004f4c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c004f50:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c004f54:	50008400 	b	132(0x84) # 1c004fd8 <MatrixKey+0x14c0>
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
1c004fbc:	03400000 	andi	$r0,$r0,0x0
1c004fc0:	03400000 	andi	$r0,$r0,0x0
1c004fc4:	03400000 	andi	$r0,$r0,0x0
1c004fc8:	03400000 	andi	$r0,$r0,0x0
1c004fcc:	03400000 	andi	$r0,$r0,0x0
1c004fd0:	03400000 	andi	$r0,$r0,0x0
1c004fd4:	03400000 	andi	$r0,$r0,0x0
1c004fd8:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c004fdc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004fe0:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c004fe4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c004f58 <MatrixKey+0x1440>
1c004fe8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004fec:	5002e000 	b	736(0x2e0) # 1c0052cc <MatrixKey+0x17b4>
1c004ff0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004ff4:	57ca53ff 	bl	-13744(0xfffca50) # 1c001a44 <gpio_read>
1c004ff8:	0015008c 	move	$r12,$r4
1c004ffc:	44016180 	bnez	$r12,352(0x160) # 1c00515c <MatrixKey+0x1644>
1c005000:	1400008c 	lu12i.w	$r12,4(0x4)
1c005004:	03a3d98c 	ori	$r12,$r12,0x8f6
1c005008:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c00500c:	50008400 	b	132(0x84) # 1c005090 <MatrixKey+0x1578>
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
1c005074:	03400000 	andi	$r0,$r0,0x0
1c005078:	03400000 	andi	$r0,$r0,0x0
1c00507c:	03400000 	andi	$r0,$r0,0x0
1c005080:	03400000 	andi	$r0,$r0,0x0
1c005084:	03400000 	andi	$r0,$r0,0x0
1c005088:	03400000 	andi	$r0,$r0,0x0
1c00508c:	03400000 	andi	$r0,$r0,0x0
1c005090:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c005094:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005098:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c00509c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005010 <MatrixKey+0x14f8>
1c0050a0:	03400000 	andi	$r0,$r0,0x0
1c0050a4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0050a8:	57c99fff 	bl	-13924(0xfffc99c) # 1c001a44 <gpio_read>
1c0050ac:	0015008c 	move	$r12,$r4
1c0050b0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0050a4 <MatrixKey+0x158c>
1c0050b4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0050b8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0050bc:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c0050c0:	50008400 	b	132(0x84) # 1c005144 <MatrixKey+0x162c>
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
1c005128:	03400000 	andi	$r0,$r0,0x0
1c00512c:	03400000 	andi	$r0,$r0,0x0
1c005130:	03400000 	andi	$r0,$r0,0x0
1c005134:	03400000 	andi	$r0,$r0,0x0
1c005138:	03400000 	andi	$r0,$r0,0x0
1c00513c:	03400000 	andi	$r0,$r0,0x0
1c005140:	03400000 	andi	$r0,$r0,0x0
1c005144:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c005148:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00514c:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c005150:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0050c4 <MatrixKey+0x15ac>
1c005154:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005158:	50017400 	b	372(0x174) # 1c0052cc <MatrixKey+0x17b4>
1c00515c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005160:	57c8e7ff 	bl	-14108(0xfffc8e4) # 1c001a44 <gpio_read>
1c005164:	0015008c 	move	$r12,$r4
1c005168:	44016180 	bnez	$r12,352(0x160) # 1c0052c8 <MatrixKey+0x17b0>
1c00516c:	1400008c 	lu12i.w	$r12,4(0x4)
1c005170:	03a3d98c 	ori	$r12,$r12,0x8f6
1c005174:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c005178:	50008400 	b	132(0x84) # 1c0051fc <MatrixKey+0x16e4>
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
1c0051dc:	03400000 	andi	$r0,$r0,0x0
1c0051e0:	03400000 	andi	$r0,$r0,0x0
1c0051e4:	03400000 	andi	$r0,$r0,0x0
1c0051e8:	03400000 	andi	$r0,$r0,0x0
1c0051ec:	03400000 	andi	$r0,$r0,0x0
1c0051f0:	03400000 	andi	$r0,$r0,0x0
1c0051f4:	03400000 	andi	$r0,$r0,0x0
1c0051f8:	03400000 	andi	$r0,$r0,0x0
1c0051fc:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c005200:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005204:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c005208:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00517c <MatrixKey+0x1664>
1c00520c:	03400000 	andi	$r0,$r0,0x0
1c005210:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005214:	57c833ff 	bl	-14288(0xfffc830) # 1c001a44 <gpio_read>
1c005218:	0015008c 	move	$r12,$r4
1c00521c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c005210 <MatrixKey+0x16f8>
1c005220:	1400008c 	lu12i.w	$r12,4(0x4)
1c005224:	03a3d98c 	ori	$r12,$r12,0x8f6
1c005228:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c00522c:	50008400 	b	132(0x84) # 1c0052b0 <MatrixKey+0x1798>
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
1c005288:	03400000 	andi	$r0,$r0,0x0
1c00528c:	03400000 	andi	$r0,$r0,0x0
1c005290:	03400000 	andi	$r0,$r0,0x0
1c005294:	03400000 	andi	$r0,$r0,0x0
1c005298:	03400000 	andi	$r0,$r0,0x0
1c00529c:	03400000 	andi	$r0,$r0,0x0
1c0052a0:	03400000 	andi	$r0,$r0,0x0
1c0052a4:	03400000 	andi	$r0,$r0,0x0
1c0052a8:	03400000 	andi	$r0,$r0,0x0
1c0052ac:	03400000 	andi	$r0,$r0,0x0
1c0052b0:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c0052b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0052b8:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c0052bc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005230 <MatrixKey+0x1718>
1c0052c0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0052c4:	50000800 	b	8(0x8) # 1c0052cc <MatrixKey+0x17b4>
1c0052c8:	0015000c 	move	$r12,$r0
1c0052cc:	00150184 	move	$r4,$r12
1c0052d0:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c0052d4:	28826076 	ld.w	$r22,$r3,152(0x98)
1c0052d8:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c0052dc:	4c000020 	jirl	$r0,$r1,0

1c0052e0 <Buzzer>:
Buzzer():
1c0052e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0052f4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0052f8:	57c657ff 	bl	-14764(0xfffc654) # 1c00194c <gpio_write>
1c0052fc:	14000e2c 	lu12i.w	$r12,113(0x71)
1c005300:	03bfc98c 	ori	$r12,$r12,0xff2
1c005304:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005308:	50008400 	b	132(0x84) # 1c00538c <Buzzer+0xac>
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
1c005334:	03400000 	andi	$r0,$r0,0x0
1c005338:	03400000 	andi	$r0,$r0,0x0
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
1c00538c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005390:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005394:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005398:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00530c <Buzzer+0x2c>
1c00539c:	00150005 	move	$r5,$r0
1c0053a0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0053a4:	57c5abff 	bl	-14936(0xfffc5a8) # 1c00194c <gpio_write>
1c0053a8:	03400000 	andi	$r0,$r0,0x0
1c0053ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053b8:	4c000020 	jirl	$r0,$r1,0

1c0053bc <Buzzer_one>:
Buzzer_one():
1c0053bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0053d0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0053d4:	57c57bff 	bl	-14984(0xfffc578) # 1c00194c <gpio_write>
1c0053d8:	1400088c 	lu12i.w	$r12,68(0x44)
1c0053dc:	0399798c 	ori	$r12,$r12,0x65e
1c0053e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0053e4:	50008400 	b	132(0x84) # 1c005468 <Buzzer_one+0xac>
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
1c005410:	03400000 	andi	$r0,$r0,0x0
1c005414:	03400000 	andi	$r0,$r0,0x0
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
1c005468:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00546c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005470:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005474:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0053e8 <Buzzer_one+0x2c>
1c005478:	00150005 	move	$r5,$r0
1c00547c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005480:	57c4cfff 	bl	-15156(0xfffc4cc) # 1c00194c <gpio_write>
1c005484:	03400000 	andi	$r0,$r0,0x0
1c005488:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00548c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005490:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005494:	4c000020 	jirl	$r0,$r1,0

1c005498 <TIM_GetITStatus>:
TIM_GetITStatus():
1c005498:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00549c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0054a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0054a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0054ac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0054b0:	2880018d 	ld.w	$r13,$r12,0
1c0054b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0054b8:	0014b1ac 	and	$r12,$r13,$r12
1c0054bc:	40001180 	beqz	$r12,16(0x10) # 1c0054cc <TIM_GetITStatus+0x34>
1c0054c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0054c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0054c8:	50000800 	b	8(0x8) # 1c0054d0 <TIM_GetITStatus+0x38>
1c0054cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0054d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054d4:	00150184 	move	$r4,$r12
1c0054d8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0054dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0054e0:	4c000020 	jirl	$r0,$r1,0

1c0054e4 <TIM_ClearIT>:
TIM_ClearIT():
1c0054e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0054ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0054f4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0054f8:	2880018e 	ld.w	$r14,$r12,0
1c0054fc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c005500:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005504:	001535cd 	or	$r13,$r14,$r13
1c005508:	2980018d 	st.w	$r13,$r12,0
1c00550c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005510:	03800d8c 	ori	$r12,$r12,0x3
1c005514:	2a00018c 	ld.bu	$r12,$r12,0
1c005518:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00551c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005520:	03800d8c 	ori	$r12,$r12,0x3
1c005524:	038005ad 	ori	$r13,$r13,0x1
1c005528:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00552c:	2900018d 	st.b	$r13,$r12,0
1c005530:	03400000 	andi	$r0,$r0,0x0
1c005534:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005538:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00553c:	4c000020 	jirl	$r0,$r1,0

1c005540 <WriteCmd>:
WriteCmd():
1c005540:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005544:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005548:	29806076 	st.w	$r22,$r3,24(0x18)
1c00554c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005550:	0015008c 	move	$r12,$r4
1c005554:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005558:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00555c:	57c6afff 	bl	-14676(0xfffc6ac) # 1c001c08 <soc_I2C_GenerateSTART>
1c005560:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c005564:	57c72fff 	bl	-14548(0xfffc72c) # 1c001c90 <soc_I2C_SendData>
1c005568:	57c773ff 	bl	-14480(0xfffc770) # 1c001cd8 <soc_I2C_wait>
1c00556c:	00150004 	move	$r4,$r0
1c005570:	57c723ff 	bl	-14560(0xfffc720) # 1c001c90 <soc_I2C_SendData>
1c005574:	57c767ff 	bl	-14492(0xfffc764) # 1c001cd8 <soc_I2C_wait>
1c005578:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00557c:	00150184 	move	$r4,$r12
1c005580:	57c713ff 	bl	-14576(0xfffc710) # 1c001c90 <soc_I2C_SendData>
1c005584:	57c757ff 	bl	-14508(0xfffc754) # 1c001cd8 <soc_I2C_wait>
1c005588:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00558c:	57c6c3ff 	bl	-14656(0xfffc6c0) # 1c001c4c <soc_I2C_GenerateSTOP>
1c005590:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005594:	57c55fff 	bl	-15012(0xfffc55c) # 1c001af0 <soc_I2C_delay>
1c005598:	03400000 	andi	$r0,$r0,0x0
1c00559c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055a0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0055a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055a8:	4c000020 	jirl	$r0,$r1,0

1c0055ac <WriteDat>:
WriteDat():
1c0055ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055bc:	0015008c 	move	$r12,$r4
1c0055c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0055c4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055c8:	57c643ff 	bl	-14784(0xfffc640) # 1c001c08 <soc_I2C_GenerateSTART>
1c0055cc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0055d0:	57c6c3ff 	bl	-14656(0xfffc6c0) # 1c001c90 <soc_I2C_SendData>
1c0055d4:	57c707ff 	bl	-14588(0xfffc704) # 1c001cd8 <soc_I2C_wait>
1c0055d8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0055dc:	57c6b7ff 	bl	-14668(0xfffc6b4) # 1c001c90 <soc_I2C_SendData>
1c0055e0:	57c6fbff 	bl	-14600(0xfffc6f8) # 1c001cd8 <soc_I2C_wait>
1c0055e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055e8:	00150184 	move	$r4,$r12
1c0055ec:	57c6a7ff 	bl	-14684(0xfffc6a4) # 1c001c90 <soc_I2C_SendData>
1c0055f0:	57c6ebff 	bl	-14616(0xfffc6e8) # 1c001cd8 <soc_I2C_wait>
1c0055f4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055f8:	57c657ff 	bl	-14764(0xfffc654) # 1c001c4c <soc_I2C_GenerateSTOP>
1c0055fc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005600:	57c4f3ff 	bl	-15120(0xfffc4f0) # 1c001af0 <soc_I2C_delay>
1c005604:	03400000 	andi	$r0,$r0,0x0
1c005608:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00560c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005610:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005614:	4c000020 	jirl	$r0,$r1,0

1c005618 <OLED_Init>:
OLED_Init():
1c005618:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00561c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005620:	29806076 	st.w	$r22,$r3,24(0x18)
1c005624:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005628:	140016cc 	lu12i.w	$r12,182(0xb6)
1c00562c:	0399418c 	ori	$r12,$r12,0x650
1c005630:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005634:	50008400 	b	132(0x84) # 1c0056b8 <OLED_Init+0xa0>
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
1c005660:	03400000 	andi	$r0,$r0,0x0
1c005664:	03400000 	andi	$r0,$r0,0x0
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
1c0056b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056bc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0056c0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0056c4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c005638 <OLED_Init+0x20>
1c0056c8:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c0056cc:	57fe77ff 	bl	-396(0xffffe74) # 1c005540 <WriteCmd>
1c0056d0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0056d4:	57fe6fff 	bl	-404(0xffffe6c) # 1c005540 <WriteCmd>
1c0056d8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0056dc:	57fe67ff 	bl	-412(0xffffe64) # 1c005540 <WriteCmd>
1c0056e0:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c0056e4:	57fe5fff 	bl	-420(0xffffe5c) # 1c005540 <WriteCmd>
1c0056e8:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0056ec:	57fe57ff 	bl	-428(0xffffe54) # 1c005540 <WriteCmd>
1c0056f0:	00150004 	move	$r4,$r0
1c0056f4:	57fe4fff 	bl	-436(0xffffe4c) # 1c005540 <WriteCmd>
1c0056f8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0056fc:	57fe47ff 	bl	-444(0xffffe44) # 1c005540 <WriteCmd>
1c005700:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005704:	57fe3fff 	bl	-452(0xffffe3c) # 1c005540 <WriteCmd>
1c005708:	02820404 	addi.w	$r4,$r0,129(0x81)
1c00570c:	57fe37ff 	bl	-460(0xffffe34) # 1c005540 <WriteCmd>
1c005710:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c005714:	57fe2fff 	bl	-468(0xffffe2c) # 1c005540 <WriteCmd>
1c005718:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c00571c:	57fe27ff 	bl	-476(0xffffe24) # 1c005540 <WriteCmd>
1c005720:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c005724:	57fe1fff 	bl	-484(0xffffe1c) # 1c005540 <WriteCmd>
1c005728:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c00572c:	57fe17ff 	bl	-492(0xffffe14) # 1c005540 <WriteCmd>
1c005730:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c005734:	57fe0fff 	bl	-500(0xffffe0c) # 1c005540 <WriteCmd>
1c005738:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c00573c:	57fe07ff 	bl	-508(0xffffe04) # 1c005540 <WriteCmd>
1c005740:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c005744:	57fdffff 	bl	-516(0xffffdfc) # 1c005540 <WriteCmd>
1c005748:	00150004 	move	$r4,$r0
1c00574c:	57fdf7ff 	bl	-524(0xffffdf4) # 1c005540 <WriteCmd>
1c005750:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005754:	57fdefff 	bl	-532(0xffffdec) # 1c005540 <WriteCmd>
1c005758:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c00575c:	57fde7ff 	bl	-540(0xffffde4) # 1c005540 <WriteCmd>
1c005760:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c005764:	57fddfff 	bl	-548(0xffffddc) # 1c005540 <WriteCmd>
1c005768:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00576c:	57fdd7ff 	bl	-556(0xffffdd4) # 1c005540 <WriteCmd>
1c005770:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005774:	57fdcfff 	bl	-564(0xffffdcc) # 1c005540 <WriteCmd>
1c005778:	02804804 	addi.w	$r4,$r0,18(0x12)
1c00577c:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005540 <WriteCmd>
1c005780:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c005784:	57fdbfff 	bl	-580(0xffffdbc) # 1c005540 <WriteCmd>
1c005788:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00578c:	57fdb7ff 	bl	-588(0xffffdb4) # 1c005540 <WriteCmd>
1c005790:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c005794:	57fdafff 	bl	-596(0xffffdac) # 1c005540 <WriteCmd>
1c005798:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00579c:	57fda7ff 	bl	-604(0xffffda4) # 1c005540 <WriteCmd>
1c0057a0:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0057a4:	57fd9fff 	bl	-612(0xffffd9c) # 1c005540 <WriteCmd>
1c0057a8:	03400000 	andi	$r0,$r0,0x0
1c0057ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0057b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0057b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0057b8:	4c000020 	jirl	$r0,$r1,0

1c0057bc <OLED_SetPos>:
OLED_SetPos():
1c0057bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0057c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0057c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0057c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0057cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0057d0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0057d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057dc:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0057e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057e4:	00150184 	move	$r4,$r12
1c0057e8:	57fd5bff 	bl	-680(0xffffd58) # 1c005540 <WriteCmd>
1c0057ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057f0:	0044918c 	srli.w	$r12,$r12,0x4
1c0057f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0057f8:	03403d8c 	andi	$r12,$r12,0xf
1c0057fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005800:	0380418c 	ori	$r12,$r12,0x10
1c005804:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005808:	00150184 	move	$r4,$r12
1c00580c:	57fd37ff 	bl	-716(0xffffd34) # 1c005540 <WriteCmd>
1c005810:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005814:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005818:	0340398c 	andi	$r12,$r12,0xe
1c00581c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005820:	0380058c 	ori	$r12,$r12,0x1
1c005824:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005828:	00150184 	move	$r4,$r12
1c00582c:	57fd17ff 	bl	-748(0xffffd14) # 1c005540 <WriteCmd>
1c005830:	03400000 	andi	$r0,$r0,0x0
1c005834:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005838:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00583c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005840:	4c000020 	jirl	$r0,$r1,0

1c005844 <OLED_Fill>:
OLED_Fill():
1c005844:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005848:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00584c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005850:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005854:	0015008c 	move	$r12,$r4
1c005858:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00585c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005860:	50006400 	b	100(0x64) # 1c0058c4 <OLED_Fill+0x80>
1c005864:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005868:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00586c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005870:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005874:	00150184 	move	$r4,$r12
1c005878:	57fccbff 	bl	-824(0xffffcc8) # 1c005540 <WriteCmd>
1c00587c:	00150004 	move	$r4,$r0
1c005880:	57fcc3ff 	bl	-832(0xffffcc0) # 1c005540 <WriteCmd>
1c005884:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005888:	57fcbbff 	bl	-840(0xffffcb8) # 1c005540 <WriteCmd>
1c00588c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005890:	50001c00 	b	28(0x1c) # 1c0058ac <OLED_Fill+0x68>
1c005894:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005898:	00150184 	move	$r4,$r12
1c00589c:	57fd13ff 	bl	-752(0xffffd10) # 1c0055ac <WriteDat>
1c0058a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0058a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0058ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0058b0:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c0058b4:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c005894 <OLED_Fill+0x50>
1c0058b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0058c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0058c8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0058cc:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c005864 <OLED_Fill+0x20>
1c0058d0:	03400000 	andi	$r0,$r0,0x0
1c0058d4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0058d8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0058dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0058e0:	4c000020 	jirl	$r0,$r1,0

1c0058e4 <OLED_CLS>:
OLED_CLS():
1c0058e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0058e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0058ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0058f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0058f4:	00150004 	move	$r4,$r0
1c0058f8:	57ff4fff 	bl	-180(0xfffff4c) # 1c005844 <OLED_Fill>
1c0058fc:	03400000 	andi	$r0,$r0,0x0
1c005900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00590c:	4c000020 	jirl	$r0,$r1,0

1c005910 <OLED_ShowStr>:
OLED_ShowStr():
1c005910:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005914:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005918:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00591c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005920:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005924:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005928:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00592c:	001500ec 	move	$r12,$r7
1c005930:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c005934:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005938:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00593c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005940:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c005944:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005948:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c0059fc <OLED_ShowStr+0xec>
1c00594c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005950:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c005b14 <OLED_ShowStr+0x204>
1c005954:	5001d800 	b	472(0x1d8) # 1c005b2c <OLED_ShowStr+0x21c>
1c005958:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00595c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005960:	001031ac 	add.w	$r12,$r13,$r12
1c005964:	2a00018c 	ld.bu	$r12,$r12,0
1c005968:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00596c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005970:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005974:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c005978:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c00598c <OLED_ShowStr+0x7c>
1c00597c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005980:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005984:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005988:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00598c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005990:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005994:	57fe2bff 	bl	-472(0xffffe28) # 1c0057bc <OLED_SetPos>
1c005998:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00599c:	50003c00 	b	60(0x3c) # 1c0059d8 <OLED_ShowStr+0xc8>
1c0059a0:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0059a4:	029ef1ad 	addi.w	$r13,$r13,1980(0x7bc)
1c0059a8:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0059ac:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0059b0:	001c31cc 	mul.w	$r12,$r14,$r12
1c0059b4:	001031ad 	add.w	$r13,$r13,$r12
1c0059b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059bc:	001031ac 	add.w	$r12,$r13,$r12
1c0059c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0059c4:	00150184 	move	$r4,$r12
1c0059c8:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c0055ac <WriteDat>
1c0059cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0059d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0059dc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0059e0:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0059a0 <OLED_ShowStr+0x90>
1c0059e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0059e8:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c0059ec:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0059f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0059f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0059fc:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005a00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a04:	001031ac 	add.w	$r12,$r13,$r12
1c005a08:	2a00018c 	ld.bu	$r12,$r12,0
1c005a0c:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c005958 <OLED_ShowStr+0x48>
1c005a10:	50011c00 	b	284(0x11c) # 1c005b2c <OLED_ShowStr+0x21c>
1c005a14:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005a18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a1c:	001031ac 	add.w	$r12,$r13,$r12
1c005a20:	2a00018c 	ld.bu	$r12,$r12,0
1c005a24:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005a28:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005a2c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005a30:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c005a34:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005a48 <OLED_ShowStr+0x138>
1c005a38:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005a3c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005a40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a44:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005a48:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005a4c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005a50:	57fd6fff 	bl	-660(0xffffd6c) # 1c0057bc <OLED_SetPos>
1c005a54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a58:	50003800 	b	56(0x38) # 1c005a90 <OLED_ShowStr+0x180>
1c005a5c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005a60:	0040918d 	slli.w	$r13,$r12,0x4
1c005a64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a68:	001031ac 	add.w	$r12,$r13,$r12
1c005a6c:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c005a70:	02a461ad 	addi.w	$r13,$r13,-1768(0x918)
1c005a74:	001031ac 	add.w	$r12,$r13,$r12
1c005a78:	2a00018c 	ld.bu	$r12,$r12,0
1c005a7c:	00150184 	move	$r4,$r12
1c005a80:	57fb2fff 	bl	-1236(0xffffb2c) # 1c0055ac <WriteDat>
1c005a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a94:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005a98:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005a5c <OLED_ShowStr+0x14c>
1c005a9c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005aa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005aa4:	00150185 	move	$r5,$r12
1c005aa8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005aac:	57fd13ff 	bl	-752(0xffffd10) # 1c0057bc <OLED_SetPos>
1c005ab0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ab4:	50003c00 	b	60(0x3c) # 1c005af0 <OLED_ShowStr+0x1e0>
1c005ab8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005abc:	0040918d 	slli.w	$r13,$r12,0x4
1c005ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ac4:	001031ac 	add.w	$r12,$r13,$r12
1c005ac8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005acc:	1c0000cd 	pcaddu12i	$r13,6(0x6)
1c005ad0:	02a2e1ad 	addi.w	$r13,$r13,-1864(0x8b8)
1c005ad4:	001031ac 	add.w	$r12,$r13,$r12
1c005ad8:	2a00018c 	ld.bu	$r12,$r12,0
1c005adc:	00150184 	move	$r4,$r12
1c005ae0:	57facfff 	bl	-1332(0xffffacc) # 1c0055ac <WriteDat>
1c005ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005aec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005af0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005af4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005af8:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005ab8 <OLED_ShowStr+0x1a8>
1c005afc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b00:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005b04:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005b08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b14:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005b18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b1c:	001031ac 	add.w	$r12,$r13,$r12
1c005b20:	2a00018c 	ld.bu	$r12,$r12,0
1c005b24:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c005a14 <OLED_ShowStr+0x104>
1c005b28:	03400000 	andi	$r0,$r0,0x0
1c005b2c:	03400000 	andi	$r0,$r0,0x0
1c005b30:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b34:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b38:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b3c:	4c000020 	jirl	$r0,$r1,0

1c005b40 <OLED_ShowCN>:
OLED_ShowCN():
1c005b40:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b44:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005b48:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005b4c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005b50:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005b54:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005b58:	001500cc 	move	$r12,$r6
1c005b5c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005b60:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b64:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005b68:	0040958c 	slli.w	$r12,$r12,0x5
1c005b6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b70:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005b74:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005b78:	57fc47ff 	bl	-956(0xffffc44) # 1c0057bc <OLED_SetPos>
1c005b7c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005b80:	50003800 	b	56(0x38) # 1c005bb8 <OLED_ShowCN+0x78>
1c005b84:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005b88:	0292b1ad 	addi.w	$r13,$r13,1196(0x4ac)
1c005b8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b90:	001031ac 	add.w	$r12,$r13,$r12
1c005b94:	2a00018c 	ld.bu	$r12,$r12,0
1c005b98:	00150184 	move	$r4,$r12
1c005b9c:	57fa13ff 	bl	-1520(0xffffa10) # 1c0055ac <WriteDat>
1c005ba0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ba4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ba8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005bac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005bb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bb4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005bb8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005bbc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005bc0:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005b84 <OLED_ShowCN+0x44>
1c005bc4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005bc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bcc:	00150185 	move	$r5,$r12
1c005bd0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005bd4:	57fbebff 	bl	-1048(0xffffbe8) # 1c0057bc <OLED_SetPos>
1c005bd8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005bdc:	50003800 	b	56(0x38) # 1c005c14 <OLED_ShowCN+0xd4>
1c005be0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005be4:	029141ad 	addi.w	$r13,$r13,1104(0x450)
1c005be8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005bec:	001031ac 	add.w	$r12,$r13,$r12
1c005bf0:	2a00018c 	ld.bu	$r12,$r12,0
1c005bf4:	00150184 	move	$r4,$r12
1c005bf8:	57f9b7ff 	bl	-1612(0xffff9b4) # 1c0055ac <WriteDat>
1c005bfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005c00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005c08:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c14:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005c18:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005c1c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005be0 <OLED_ShowCN+0xa0>
1c005c20:	03400000 	andi	$r0,$r0,0x0
1c005c24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005c28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005c2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005c30:	4c000020 	jirl	$r0,$r1,0

1c005c34 <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c005c34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005c3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005c40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c44:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c48:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005c4c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005c50:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005c54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c58:	50004800 	b	72(0x48) # 1c005ca0 <OLED_ShowCN_STR+0x6c>
1c005c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c60:	0040918d 	slli.w	$r13,$r12,0x4
1c005c64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c68:	001031ae 	add.w	$r14,$r13,$r12
1c005c6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005c74:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005c78:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c7c:	001031ac 	add.w	$r12,$r13,$r12
1c005c80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c84:	00150186 	move	$r6,$r12
1c005c88:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005c8c:	001501c4 	move	$r4,$r14
1c005c90:	57feb3ff 	bl	-336(0xffffeb0) # 1c005b40 <OLED_ShowCN>
1c005c94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005ca0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ca4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005ca8:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c005c5c <OLED_ShowCN_STR+0x28>
1c005cac:	03400000 	andi	$r0,$r0,0x0
1c005cb0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005cb4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005cb8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005cbc:	4c000020 	jirl	$r0,$r1,0

1c005cc0 <OLED_DrawBMP>:
OLED_DrawBMP():
1c005cc0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005cc4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005cc8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005ccc:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005cd0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005cd4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005cd8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005cdc:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c005ce0:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c005ce4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ce8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005cec:	03401d8c 	andi	$r12,$r12,0x7
1c005cf0:	44001580 	bnez	$r12,20(0x14) # 1c005d04 <OLED_DrawBMP+0x44>
1c005cf4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005cf8:	00448d8c 	srli.w	$r12,$r12,0x3
1c005cfc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d00:	50001400 	b	20(0x14) # 1c005d14 <OLED_DrawBMP+0x54>
1c005d04:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005d08:	00448d8c 	srli.w	$r12,$r12,0x3
1c005d0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d14:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d18:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d1c:	50006000 	b	96(0x60) # 1c005d7c <OLED_DrawBMP+0xbc>
1c005d20:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c005d24:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005d28:	57fa97ff 	bl	-1388(0xffffa94) # 1c0057bc <OLED_SetPos>
1c005d2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005d34:	50003000 	b	48(0x30) # 1c005d64 <OLED_DrawBMP+0xa4>
1c005d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d3c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005d40:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005d44:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c005d48:	001031ac 	add.w	$r12,$r13,$r12
1c005d4c:	2a00018c 	ld.bu	$r12,$r12,0
1c005d50:	00150184 	move	$r4,$r12
1c005d54:	57f85bff 	bl	-1960(0xffff858) # 1c0055ac <WriteDat>
1c005d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005d5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005d64:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005d68:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005d6c:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c005d38 <OLED_DrawBMP+0x78>
1c005d70:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005d74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d78:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d7c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005d80:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005d84:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c005d20 <OLED_DrawBMP+0x60>
1c005d88:	03400000 	andi	$r0,$r0,0x0
1c005d8c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005d90:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005d94:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005d98:	4c000020 	jirl	$r0,$r1,0

1c005d9c <OLED_ShowChar>:
OLED_ShowChar():
1c005d9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005da0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005da4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005da8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005dac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005db0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005db4:	001500cc 	move	$r12,$r6
1c005db8:	001500ed 	move	$r13,$r7
1c005dbc:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c005dc0:	001501ac 	move	$r12,$r13
1c005dc4:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c005dc8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005dcc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005dd0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c005dd4:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005dd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005ddc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005de0:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c005de4:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c005df8 <OLED_ShowChar+0x5c>
1c005de8:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005dec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005df0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005df4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005df8:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c005dfc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005e00:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c005ebc <OLED_ShowChar+0x120>
1c005e04:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005e08:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005e0c:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c0057bc <OLED_SetPos>
1c005e10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e14:	50003800 	b	56(0x38) # 1c005e4c <OLED_ShowChar+0xb0>
1c005e18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e1c:	0040918d 	slli.w	$r13,$r12,0x4
1c005e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e24:	001031ac 	add.w	$r12,$r13,$r12
1c005e28:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005e2c:	029571ad 	addi.w	$r13,$r13,1372(0x55c)
1c005e30:	001031ac 	add.w	$r12,$r13,$r12
1c005e34:	2a00018c 	ld.bu	$r12,$r12,0
1c005e38:	00150184 	move	$r4,$r12
1c005e3c:	57f773ff 	bl	-2192(0xffff770) # 1c0055ac <WriteDat>
1c005e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e50:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005e54:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c005e18 <OLED_ShowChar+0x7c>
1c005e58:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e60:	00150185 	move	$r5,$r12
1c005e64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005e68:	57f957ff 	bl	-1708(0xffff954) # 1c0057bc <OLED_SetPos>
1c005e6c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e70:	50003c00 	b	60(0x3c) # 1c005eac <OLED_ShowChar+0x110>
1c005e74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e78:	0040918d 	slli.w	$r13,$r12,0x4
1c005e7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e80:	001031ac 	add.w	$r12,$r13,$r12
1c005e84:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005e88:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005e8c:	0293f1ad 	addi.w	$r13,$r13,1276(0x4fc)
1c005e90:	001031ac 	add.w	$r12,$r13,$r12
1c005e94:	2a00018c 	ld.bu	$r12,$r12,0
1c005e98:	00150184 	move	$r4,$r12
1c005e9c:	57f713ff 	bl	-2288(0xffff710) # 1c0055ac <WriteDat>
1c005ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ea4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ea8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005eac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005eb0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005eb4:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005e74 <OLED_ShowChar+0xd8>
1c005eb8:	50005c00 	b	92(0x5c) # 1c005f14 <OLED_ShowChar+0x178>
1c005ebc:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005ec0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005ec4:	57f8fbff 	bl	-1800(0xffff8f8) # 1c0057bc <OLED_SetPos>
1c005ec8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ecc:	50003c00 	b	60(0x3c) # 1c005f08 <OLED_ShowChar+0x16c>
1c005ed0:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c005ed4:	028a31ad 	addi.w	$r13,$r13,652(0x28c)
1c005ed8:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c005edc:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005ee0:	001c31cc 	mul.w	$r12,$r14,$r12
1c005ee4:	001031ad 	add.w	$r13,$r13,$r12
1c005ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005eec:	001031ac 	add.w	$r12,$r13,$r12
1c005ef0:	2a00018c 	ld.bu	$r12,$r12,0
1c005ef4:	00150184 	move	$r4,$r12
1c005ef8:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c0055ac <WriteDat>
1c005efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005f0c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005f10:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c005ed0 <OLED_ShowChar+0x134>
1c005f14:	03400000 	andi	$r0,$r0,0x0
1c005f18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f24:	4c000020 	jirl	$r0,$r1,0

1c005f28 <oled_pow>:
oled_pow():
1c005f28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f2c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005f30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f3c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005f40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f44:	50001400 	b	20(0x14) # 1c005f58 <oled_pow+0x30>
1c005f48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005f4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f50:	001c31ac 	mul.w	$r12,$r13,$r12
1c005f54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f58:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f5c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005f60:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c005f64:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005f48 <oled_pow+0x20>
1c005f68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f6c:	00150184 	move	$r4,$r12
1c005f70:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c005f74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f78:	4c000020 	jirl	$r0,$r1,0

1c005f7c <OLED_ShowNum>:
OLED_ShowNum():
1c005f7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f8c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f90:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f94:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005f98:	001500ec 	move	$r12,$r7
1c005f9c:	0015010d 	move	$r13,$r8
1c005fa0:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c005fa4:	001501ac 	move	$r12,$r13
1c005fa8:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c005fac:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005fb0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005fb4:	50010400 	b	260(0x104) # 1c0060b8 <OLED_ShowNum+0x13c>
1c005fb8:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c005fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fc0:	001131ac 	sub.w	$r12,$r13,$r12
1c005fc4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005fc8:	00150185 	move	$r5,$r12
1c005fcc:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005fd0:	57ff5bff 	bl	-168(0xfffff58) # 1c005f28 <oled_pow>
1c005fd4:	0015008d 	move	$r13,$r4
1c005fd8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005fdc:	0021358e 	div.wu	$r14,$r12,$r13
1c005fe0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005fe8 <OLED_ShowNum+0x6c>
1c005fe4:	002a0007 	break	0x7
1c005fe8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005fec:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c005ff0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c005ff8 <OLED_ShowNum+0x7c>
1c005ff4:	002a0007 	break	0x7
1c005ff8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005ffc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006000:	44006580 	bnez	$r12,100(0x64) # 1c006064 <OLED_ShowNum+0xe8>
1c006004:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c006008:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00600c:	0015018d 	move	$r13,$r12
1c006010:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006014:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c006064 <OLED_ShowNum+0xe8>
1c006018:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00601c:	44004180 	bnez	$r12,64(0x40) # 1c00605c <OLED_ShowNum+0xe0>
1c006020:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c006024:	0044858c 	srli.w	$r12,$r12,0x1
1c006028:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00602c:	0015018d 	move	$r13,$r12
1c006030:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006034:	001c31ad 	mul.w	$r13,$r13,$r12
1c006038:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00603c:	001031ac 	add.w	$r12,$r13,$r12
1c006040:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c006044:	001501a7 	move	$r7,$r13
1c006048:	02808006 	addi.w	$r6,$r0,32(0x20)
1c00604c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c006050:	00150184 	move	$r4,$r12
1c006054:	57fd4bff 	bl	-696(0xffffd48) # 1c005d9c <OLED_ShowChar>
1c006058:	50005400 	b	84(0x54) # 1c0060ac <OLED_ShowNum+0x130>
1c00605c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006060:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006064:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c006068:	0044858c 	srli.w	$r12,$r12,0x1
1c00606c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006070:	0015018d 	move	$r13,$r12
1c006074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006078:	001c31ad 	mul.w	$r13,$r13,$r12
1c00607c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006080:	001031ad 	add.w	$r13,$r13,$r12
1c006084:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006088:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00608c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c006090:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006094:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c006098:	001501c7 	move	$r7,$r14
1c00609c:	00150186 	move	$r6,$r12
1c0060a0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0060a4:	001501a4 	move	$r4,$r13
1c0060a8:	57fcf7ff 	bl	-780(0xffffcf4) # 1c005d9c <OLED_ShowChar>
1c0060ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0060b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0060b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0060b8:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0060bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0060c0:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c005fb8 <OLED_ShowNum+0x3c>
1c0060c4:	03400000 	andi	$r0,$r0,0x0
1c0060c8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0060cc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0060d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0060d4:	4c000020 	jirl	$r0,$r1,0

1c0060d8 <my_GPIO_Init>:
my_GPIO_Init():
1c0060d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0060dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0060e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0060e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0060e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0060f0:	57b767ff 	bl	-18588(0xfffb764) # 1c001854 <gpio_init>
1c0060f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060f8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0060fc:	57b75bff 	bl	-18600(0xfffb758) # 1c001854 <gpio_init>
1c006100:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006104:	02804804 	addi.w	$r4,$r0,18(0x12)
1c006108:	57b74fff 	bl	-18612(0xfffb74c) # 1c001854 <gpio_init>
1c00610c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006110:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c006114:	57b743ff 	bl	-18624(0xfffb740) # 1c001854 <gpio_init>
1c006118:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00611c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006120:	57b737ff 	bl	-18636(0xfffb734) # 1c001854 <gpio_init>
1c006124:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006128:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00612c:	57b72bff 	bl	-18648(0xfffb728) # 1c001854 <gpio_init>
1c006130:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006134:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006138:	57b71fff 	bl	-18660(0xfffb71c) # 1c001854 <gpio_init>
1c00613c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006140:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006144:	57b713ff 	bl	-18672(0xfffb710) # 1c001854 <gpio_init>
1c006148:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00614c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006150:	57b707ff 	bl	-18684(0xfffb704) # 1c001854 <gpio_init>
1c006154:	00150005 	move	$r5,$r0
1c006158:	02809804 	addi.w	$r4,$r0,38(0x26)
1c00615c:	57b6fbff 	bl	-18696(0xfffb6f8) # 1c001854 <gpio_init>
1c006160:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006164:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006168:	57b6efff 	bl	-18708(0xfffb6ec) # 1c001854 <gpio_init>
1c00616c:	00150005 	move	$r5,$r0
1c006170:	02803804 	addi.w	$r4,$r0,14(0xe)
1c006174:	57b6e3ff 	bl	-18720(0xfffb6e0) # 1c001854 <gpio_init>
1c006178:	00150005 	move	$r5,$r0
1c00617c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006180:	57b6d7ff 	bl	-18732(0xfffb6d4) # 1c001854 <gpio_init>
1c006184:	00150005 	move	$r5,$r0
1c006188:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00618c:	57b6cbff 	bl	-18744(0xfffb6c8) # 1c001854 <gpio_init>
1c006190:	00150005 	move	$r5,$r0
1c006194:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006198:	57b6bfff 	bl	-18756(0xfffb6bc) # 1c001854 <gpio_init>
1c00619c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0061a0:	03bfc98c 	ori	$r12,$r12,0xff2
1c0061a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0061a8:	50008400 	b	132(0x84) # 1c00622c <my_GPIO_Init+0x154>
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
1c006228:	03400000 	andi	$r0,$r0,0x0
1c00622c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006230:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006234:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006238:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0061ac <my_GPIO_Init+0xd4>
1c00623c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006240:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006244:	57b70bff 	bl	-18680(0xfffb708) # 1c00194c <gpio_write>
1c006248:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00624c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006250:	57b6ffff 	bl	-18692(0xfffb6fc) # 1c00194c <gpio_write>
1c006254:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006258:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00625c:	57b6f3ff 	bl	-18704(0xfffb6f0) # 1c00194c <gpio_write>
1c006260:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006264:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006268:	57b6e7ff 	bl	-18716(0xfffb6e4) # 1c00194c <gpio_write>
1c00626c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006270:	02809804 	addi.w	$r4,$r0,38(0x26)
1c006274:	57b6dbff 	bl	-18728(0xfffb6d8) # 1c00194c <gpio_write>
1c006278:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00627c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c006280:	57b6cfff 	bl	-18740(0xfffb6cc) # 1c00194c <gpio_write>
1c006284:	00150005 	move	$r5,$r0
1c006288:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00628c:	57b6c3ff 	bl	-18752(0xfffb6c0) # 1c00194c <gpio_write>
1c006290:	03400000 	andi	$r0,$r0,0x0
1c006294:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006298:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00629c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0062a0:	4c000020 	jirl	$r0,$r1,0

1c0062a4 <my_I2C_Init>:
my_I2C_Init():
1c0062a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0062a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0062ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0062b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0062b4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0062b8:	00150184 	move	$r4,$r12
1c0062bc:	57b86bff 	bl	-18328(0xfffb868) # 1c001b24 <soc_I2C_StructInit>
1c0062c0:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0062c4:	00150184 	move	$r4,$r12
1c0062c8:	57b8a7ff 	bl	-18268(0xfffb8a4) # 1c001b6c <soc_I2C_Init>
1c0062cc:	1400016c 	lu12i.w	$r12,11(0xb)
1c0062d0:	0399958c 	ori	$r12,$r12,0x665
1c0062d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0062d8:	50008400 	b	132(0x84) # 1c00635c <my_I2C_Init+0xb8>
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
1c006304:	03400000 	andi	$r0,$r0,0x0
1c006308:	03400000 	andi	$r0,$r0,0x0
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
1c00635c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006360:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006364:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006368:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0062dc <my_I2C_Init+0x38>
1c00636c:	03400000 	andi	$r0,$r0,0x0
1c006370:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006374:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006378:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00637c:	4c000020 	jirl	$r0,$r1,0

1c006380 <my_PWM_Init>:
my_PWM_Init():
1c006380:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006384:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006388:	29806076 	st.w	$r22,$r3,24(0x18)
1c00638c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006390:	57b9d3ff 	bl	-17968(0xfffb9d0) # 1c001d60 <pwm_steering_engine_init>
1c006394:	1400016c 	lu12i.w	$r12,11(0xb)
1c006398:	0399958c 	ori	$r12,$r12,0x665
1c00639c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0063a0:	50008400 	b	132(0x84) # 1c006424 <my_PWM_Init+0xa4>
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
1c0063cc:	03400000 	andi	$r0,$r0,0x0
1c0063d0:	03400000 	andi	$r0,$r0,0x0
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
1c006424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006428:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00642c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006430:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0063a4 <my_PWM_Init+0x24>
1c006434:	03400000 	andi	$r0,$r0,0x0
1c006438:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00643c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006440:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006444:	4c000020 	jirl	$r0,$r1,0

1c006448 <my_SPI_Init>:
my_SPI_Init():
1c006448:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00644c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006450:	29802076 	st.w	$r22,$r3,8(0x8)
1c006454:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006458:	02800804 	addi.w	$r4,$r0,2(0x2)
1c00645c:	57ba0fff 	bl	-17908(0xfffba0c) # 1c001e68 <soc_Spi_Init>
1c006460:	03400000 	andi	$r0,$r0,0x0
1c006464:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006468:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00646c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006470:	4c000020 	jirl	$r0,$r1,0

1c006474 <Init_main>:
Init_main():
1c006474:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006478:	29803061 	st.w	$r1,$r3,12(0xc)
1c00647c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006480:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006484:	57d467ff 	bl	-11164(0xfffd464) # 1c0038e8 <SG90_Init>
1c006488:	57f193ff 	bl	-3696(0xffff190) # 1c005618 <OLED_Init>
1c00648c:	57f45bff 	bl	-2984(0xffff458) # 1c0058e4 <OLED_CLS>
1c006490:	54001c00 	bl	28(0x1c) # 1c0064ac <RC522_Init>
1c006494:	57bfdbff 	bl	-16424(0xfffbfd8) # 1c00246c <as608_init>
1c006498:	03400000 	andi	$r0,$r0,0x0
1c00649c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0064a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0064a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0064a8:	4c000020 	jirl	$r0,$r1,0

1c0064ac <RC522_Init>:
RC522_Init():
1c0064ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0064b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0064b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0064b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0064bc:	1400016c 	lu12i.w	$r12,11(0xb)
1c0064c0:	0399958c 	ori	$r12,$r12,0x665
1c0064c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064c8:	50008400 	b	132(0x84) # 1c00654c <RC522_Init+0xa0>
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
1c0064f4:	03400000 	andi	$r0,$r0,0x0
1c0064f8:	03400000 	andi	$r0,$r0,0x0
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
1c00654c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006550:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006554:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006558:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0064cc <RC522_Init+0x20>
1c00655c:	5405fc00 	bl	1532(0x5fc) # 1c006b58 <PcdReset>
1c006560:	1400004c 	lu12i.w	$r12,2(0x2)
1c006564:	0391ed8c 	ori	$r12,$r12,0x47b
1c006568:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00656c:	50008400 	b	132(0x84) # 1c0065f0 <RC522_Init+0x144>
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
1c006598:	03400000 	andi	$r0,$r0,0x0
1c00659c:	03400000 	andi	$r0,$r0,0x0
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
1c0065f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0065f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0065f8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0065fc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006570 <RC522_Init+0xc4>
1c006600:	54055800 	bl	1368(0x558) # 1c006b58 <PcdReset>
1c006604:	1400004c 	lu12i.w	$r12,2(0x2)
1c006608:	0391ed8c 	ori	$r12,$r12,0x47b
1c00660c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006610:	50008400 	b	132(0x84) # 1c006694 <RC522_Init+0x1e8>
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
1c00663c:	03400000 	andi	$r0,$r0,0x0
1c006640:	03400000 	andi	$r0,$r0,0x0
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
1c006694:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006698:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00669c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0066a0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006614 <RC522_Init+0x168>
1c0066a4:	54082c00 	bl	2092(0x82c) # 1c006ed0 <PcdAntennaOff>
1c0066a8:	1400004c 	lu12i.w	$r12,2(0x2)
1c0066ac:	0391ed8c 	ori	$r12,$r12,0x47b
1c0066b0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0066b4:	50008400 	b	132(0x84) # 1c006738 <RC522_Init+0x28c>
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
1c0066e0:	03400000 	andi	$r0,$r0,0x0
1c0066e4:	03400000 	andi	$r0,$r0,0x0
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
1c006738:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00673c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006740:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c006744:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0066b8 <RC522_Init+0x20c>
1c006748:	54068400 	bl	1668(0x684) # 1c006dcc <PcdAntennaOn>
1c00674c:	03400000 	andi	$r0,$r0,0x0
1c006750:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006754:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006758:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00675c:	4c000020 	jirl	$r0,$r1,0

1c006760 <ReadRawRC>:
ReadRawRC():
1c006760:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006764:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006768:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00676c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006770:	0015008c 	move	$r12,$r4
1c006774:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006778:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c00677c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006780:	0040858c 	slli.w	$r12,$r12,0x1
1c006784:	00005d8c 	ext.w.b	$r12,$r12
1c006788:	0341f98c 	andi	$r12,$r12,0x7e
1c00678c:	00005d8d 	ext.w.b	$r13,$r12
1c006790:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c006794:	001531ac 	or	$r12,$r13,$r12
1c006798:	00005d8c 	ext.w.b	$r12,$r12
1c00679c:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0067a0:	57b74fff 	bl	-18612(0xfffb74c) # 1c001eec <soc_Spi_Cs_Down>
1c0067a4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067a8:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c0067ac:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0067b0:	03400000 	andi	$r0,$r0,0x0
1c0067b4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067b8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0067bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0067c0:	0340118c 	andi	$r12,$r12,0x4
1c0067c4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0067b4 <ReadRawRC+0x54>
1c0067c8:	03400000 	andi	$r0,$r0,0x0
1c0067cc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067d0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0067d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0067d8:	0340058c 	andi	$r12,$r12,0x1
1c0067dc:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0067cc <ReadRawRC+0x6c>
1c0067e0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067e4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0067e8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0067ec:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067f0:	29000980 	st.b	$r0,$r12,2(0x2)
1c0067f4:	03400000 	andi	$r0,$r0,0x0
1c0067f8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0067fc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006800:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006804:	0340118c 	andi	$r12,$r12,0x4
1c006808:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0067f8 <ReadRawRC+0x98>
1c00680c:	03400000 	andi	$r0,$r0,0x0
1c006810:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006814:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006818:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00681c:	0340058c 	andi	$r12,$r12,0x1
1c006820:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c006810 <ReadRawRC+0xb0>
1c006824:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006828:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00682c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006830:	57b717ff 	bl	-18668(0xfffb714) # 1c001f44 <soc_Spi_Cs_Up>
1c006834:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006838:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00683c:	50008400 	b	132(0x84) # 1c0068c0 <ReadRawRC+0x160>
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
1c006868:	03400000 	andi	$r0,$r0,0x0
1c00686c:	03400000 	andi	$r0,$r0,0x0
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
1c0068c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0068c8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0068cc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006840 <ReadRawRC+0xe0>
1c0068d0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0068d4:	00150184 	move	$r4,$r12
1c0068d8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0068dc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0068e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0068e4:	4c000020 	jirl	$r0,$r1,0

1c0068e8 <WriteRawRC>:
WriteRawRC():
1c0068e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0068ec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0068f0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0068f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0068f8:	0015008c 	move	$r12,$r4
1c0068fc:	001500ad 	move	$r13,$r5
1c006900:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006904:	001501ac 	move	$r12,$r13
1c006908:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00690c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006910:	0040858c 	slli.w	$r12,$r12,0x1
1c006914:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006918:	0341f98c 	andi	$r12,$r12,0x7e
1c00691c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006920:	57b5cfff 	bl	-18996(0xfffb5cc) # 1c001eec <soc_Spi_Cs_Down>
1c006924:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006928:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00692c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006930:	03400000 	andi	$r0,$r0,0x0
1c006934:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006938:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00693c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006940:	0340118c 	andi	$r12,$r12,0x4
1c006944:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c006934 <WriteRawRC+0x4c>
1c006948:	03400000 	andi	$r0,$r0,0x0
1c00694c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006950:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006954:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006958:	0340058c 	andi	$r12,$r12,0x1
1c00695c:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c00694c <WriteRawRC+0x64>
1c006960:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006964:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006968:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00696c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006970:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c006974:	2900098d 	st.b	$r13,$r12,2(0x2)
1c006978:	03400000 	andi	$r0,$r0,0x0
1c00697c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006980:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c006984:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006988:	0340118c 	andi	$r12,$r12,0x4
1c00698c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00697c <WriteRawRC+0x94>
1c006990:	03400000 	andi	$r0,$r0,0x0
1c006994:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006998:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00699c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0069a0:	0340058c 	andi	$r12,$r12,0x1
1c0069a4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c006994 <WriteRawRC+0xac>
1c0069a8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0069ac:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0069b0:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0069b4:	57b593ff 	bl	-19056(0xfffb590) # 1c001f44 <soc_Spi_Cs_Up>
1c0069b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0069bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0069c0:	50008400 	b	132(0x84) # 1c006a44 <WriteRawRC+0x15c>
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
1c0069ec:	03400000 	andi	$r0,$r0,0x0
1c0069f0:	03400000 	andi	$r0,$r0,0x0
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
1c006a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006a4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006a50:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0069c4 <WriteRawRC+0xdc>
1c006a54:	03400000 	andi	$r0,$r0,0x0
1c006a58:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a5c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a60:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a64:	4c000020 	jirl	$r0,$r1,0

1c006a68 <SetBitMask>:
SetBitMask():
1c006a68:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a6c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006a70:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006a74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006a78:	0015008c 	move	$r12,$r4
1c006a7c:	001500ad 	move	$r13,$r5
1c006a80:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006a84:	001501ac 	move	$r12,$r13
1c006a88:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006a8c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006a90:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006a94:	00150184 	move	$r4,$r12
1c006a98:	57fccbff 	bl	-824(0xffffcc8) # 1c006760 <ReadRawRC>
1c006a9c:	0015008c 	move	$r12,$r4
1c006aa0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006aa4:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c006aa8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006aac:	001531ac 	or	$r12,$r13,$r12
1c006ab0:	00005d8c 	ext.w.b	$r12,$r12
1c006ab4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006ab8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006abc:	001501a5 	move	$r5,$r13
1c006ac0:	00150184 	move	$r4,$r12
1c006ac4:	57fe27ff 	bl	-476(0xffffe24) # 1c0068e8 <WriteRawRC>
1c006ac8:	03400000 	andi	$r0,$r0,0x0
1c006acc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006ad0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006ad4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006ad8:	4c000020 	jirl	$r0,$r1,0

1c006adc <ClearBitMask>:
ClearBitMask():
1c006adc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006ae0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006ae4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006ae8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006aec:	0015008c 	move	$r12,$r4
1c006af0:	001500ad 	move	$r13,$r5
1c006af4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006af8:	001501ac 	move	$r12,$r13
1c006afc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006b00:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006b04:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006b08:	00150184 	move	$r4,$r12
1c006b0c:	57fc57ff 	bl	-940(0xffffc54) # 1c006760 <ReadRawRC>
1c006b10:	0015008c 	move	$r12,$r4
1c006b14:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006b18:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c006b1c:	0014300c 	nor	$r12,$r0,$r12
1c006b20:	00005d8d 	ext.w.b	$r13,$r12
1c006b24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006b28:	0014b1ac 	and	$r12,$r13,$r12
1c006b2c:	00005d8c 	ext.w.b	$r12,$r12
1c006b30:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006b34:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006b38:	001501a5 	move	$r5,$r13
1c006b3c:	00150184 	move	$r4,$r12
1c006b40:	57fdabff 	bl	-600(0xffffda8) # 1c0068e8 <WriteRawRC>
1c006b44:	03400000 	andi	$r0,$r0,0x0
1c006b48:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b4c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b50:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b54:	4c000020 	jirl	$r0,$r1,0

1c006b58 <PcdReset>:
PcdReset():
1c006b58:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006b5c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006b60:	29806076 	st.w	$r22,$r3,24(0x18)
1c006b64:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006b68:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006b6c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006b70:	57addfff 	bl	-21028(0xfffaddc) # 1c00194c <gpio_write>
1c006b74:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006b78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b7c:	50008400 	b	132(0x84) # 1c006c00 <PcdReset+0xa8>
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
1c006ba8:	03400000 	andi	$r0,$r0,0x0
1c006bac:	03400000 	andi	$r0,$r0,0x0
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
1c006c00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006c08:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006c0c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006b80 <PcdReset+0x28>
1c006c10:	00150005 	move	$r5,$r0
1c006c14:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006c18:	57ad37ff 	bl	-21196(0xfffad34) # 1c00194c <gpio_write>
1c006c1c:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006c20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006c24:	50008400 	b	132(0x84) # 1c006ca8 <PcdReset+0x150>
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
1c006c50:	03400000 	andi	$r0,$r0,0x0
1c006c54:	03400000 	andi	$r0,$r0,0x0
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
1c006ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006cb0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006cb4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006c28 <PcdReset+0xd0>
1c006cb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006cbc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c006cc0:	57ac8fff 	bl	-21364(0xfffac8c) # 1c00194c <gpio_write>
1c006cc4:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c006cc8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006ccc:	57fc1fff 	bl	-996(0xffffc1c) # 1c0068e8 <WriteRawRC>
1c006cd0:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c006cd4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006cd8:	50008400 	b	132(0x84) # 1c006d5c <PcdReset+0x204>
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
1c006d04:	03400000 	andi	$r0,$r0,0x0
1c006d08:	03400000 	andi	$r0,$r0,0x0
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
1c006d5c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006d60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006d64:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c006d68:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006cdc <PcdReset+0x184>
1c006d6c:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c006d70:	02804404 	addi.w	$r4,$r0,17(0x11)
1c006d74:	57fb77ff 	bl	-1164(0xffffb74) # 1c0068e8 <WriteRawRC>
1c006d78:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c006d7c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c006d80:	57fb6bff 	bl	-1176(0xffffb68) # 1c0068e8 <WriteRawRC>
1c006d84:	00150005 	move	$r5,$r0
1c006d88:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c006d8c:	57fb5fff 	bl	-1188(0xffffb5c) # 1c0068e8 <WriteRawRC>
1c006d90:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c006d94:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c006d98:	57fb53ff 	bl	-1200(0xffffb50) # 1c0068e8 <WriteRawRC>
1c006d9c:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c006da0:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c006da4:	57fb47ff 	bl	-1212(0xffffb44) # 1c0068e8 <WriteRawRC>
1c006da8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006dac:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006db0:	57fb3bff 	bl	-1224(0xffffb38) # 1c0068e8 <WriteRawRC>
1c006db4:	0015000c 	move	$r12,$r0
1c006db8:	00150184 	move	$r4,$r12
1c006dbc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006dc0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006dc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006dc8:	4c000020 	jirl	$r0,$r1,0

1c006dcc <PcdAntennaOn>:
PcdAntennaOn():
1c006dcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006dd0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006dd4:	29806076 	st.w	$r22,$r3,24(0x18)
1c006dd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006ddc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c006de0:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006de4:	57fb07ff 	bl	-1276(0xffffb04) # 1c0068e8 <WriteRawRC>
1c006de8:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c006dec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006df0:	50008400 	b	132(0x84) # 1c006e74 <PcdAntennaOn+0xa8>
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
1c006e1c:	03400000 	andi	$r0,$r0,0x0
1c006e20:	03400000 	andi	$r0,$r0,0x0
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
1c006e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006e7c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006e80:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c006df4 <PcdAntennaOn+0x28>
1c006e84:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006e88:	57f8dbff 	bl	-1832(0xffff8d8) # 1c006760 <ReadRawRC>
1c006e8c:	0015008c 	move	$r12,$r4
1c006e90:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006e94:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c006e98:	03400d8c 	andi	$r12,$r12,0x3
1c006e9c:	44001180 	bnez	$r12,16(0x10) # 1c006eac <PcdAntennaOn+0xe0>
1c006ea0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006ea4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006ea8:	57fbc3ff 	bl	-1088(0xffffbc0) # 1c006a68 <SetBitMask>
1c006eac:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006eb0:	57f8b3ff 	bl	-1872(0xffff8b0) # 1c006760 <ReadRawRC>
1c006eb4:	0015008c 	move	$r12,$r4
1c006eb8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c006ebc:	03400000 	andi	$r0,$r0,0x0
1c006ec0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006ec4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006ec8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006ecc:	4c000020 	jirl	$r0,$r1,0

1c006ed0 <PcdAntennaOff>:
PcdAntennaOff():
1c006ed0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ed4:	29803061 	st.w	$r1,$r3,12(0xc)
1c006ed8:	29802076 	st.w	$r22,$r3,8(0x8)
1c006edc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ee0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006ee4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006ee8:	57fbf7ff 	bl	-1036(0xffffbf4) # 1c006adc <ClearBitMask>
1c006eec:	03400000 	andi	$r0,$r0,0x0
1c006ef0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ef4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ef8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006efc:	4c000020 	jirl	$r0,$r1,0

1c006f00 <PcdComMF522>:
PcdComMF522():
1c006f00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006f04:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006f08:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006f0c:	29809077 	st.w	$r23,$r3,36(0x24)
1c006f10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006f14:	0015008c 	move	$r12,$r4
1c006f18:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006f1c:	001500cd 	move	$r13,$r6
1c006f20:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c006f24:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c006f28:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c006f2c:	001501ac 	move	$r12,$r13
1c006f30:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c006f34:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c006f38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006f3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c006f40:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c006f44:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c006f48:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c006f4c:	5800218d 	beq	$r12,$r13,32(0x20) # 1c006f6c <PcdComMF522+0x6c>
1c006f50:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006f54:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c006f80 <PcdComMF522+0x80>
1c006f58:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c006f5c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006f60:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006f64:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006f68:	50001c00 	b	28(0x1c) # 1c006f84 <PcdComMF522+0x84>
1c006f6c:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c006f70:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c006f74:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c006f78:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006f7c:	50000800 	b	8(0x8) # 1c006f84 <PcdComMF522+0x84>
1c006f80:	03400000 	andi	$r0,$r0,0x0
1c006f84:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c006f88:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c006f8c:	001531ac 	or	$r12,$r13,$r12
1c006f90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006f94:	00150185 	move	$r5,$r12
1c006f98:	02800804 	addi.w	$r4,$r0,2(0x2)
1c006f9c:	57f94fff 	bl	-1716(0xffff94c) # 1c0068e8 <WriteRawRC>
1c006fa0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006fa4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006fa8:	57fb37ff 	bl	-1228(0xffffb34) # 1c006adc <ClearBitMask>
1c006fac:	00150005 	move	$r5,$r0
1c006fb0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006fb4:	57f937ff 	bl	-1740(0xffff934) # 1c0068e8 <WriteRawRC>
1c006fb8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c006fbc:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006fc0:	57faabff 	bl	-1368(0xffffaa8) # 1c006a68 <SetBitMask>
1c006fc4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006fc8:	50002c00 	b	44(0x2c) # 1c006ff4 <PcdComMF522+0xf4>
1c006fcc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006fd0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006fd4:	001031ac 	add.w	$r12,$r13,$r12
1c006fd8:	2a00018c 	ld.bu	$r12,$r12,0
1c006fdc:	00150185 	move	$r5,$r12
1c006fe0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c006fe4:	57f907ff 	bl	-1788(0xffff904) # 1c0068e8 <WriteRawRC>
1c006fe8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006fec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006ff0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006ff4:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c006ff8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006ffc:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c006fcc <PcdComMF522+0xcc>
1c007000:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c007004:	00150185 	move	$r5,$r12
1c007008:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00700c:	57f8dfff 	bl	-1828(0xffff8dc) # 1c0068e8 <WriteRawRC>
1c007010:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c007014:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007018:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007028 <PcdComMF522+0x128>
1c00701c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007020:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007024:	57fa47ff 	bl	-1468(0xffffa44) # 1c006a68 <SetBitMask>
1c007028:	1400026c 	lu12i.w	$r12,19(0x13)
1c00702c:	03a2018c 	ori	$r12,$r12,0x880
1c007030:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007034:	02801004 	addi.w	$r4,$r0,4(0x4)
1c007038:	57f72bff 	bl	-2264(0xffff728) # 1c006760 <ReadRawRC>
1c00703c:	0015008c 	move	$r12,$r4
1c007040:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c007044:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007048:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00704c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007050:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007054:	40002580 	beqz	$r12,36(0x24) # 1c007078 <PcdComMF522+0x178>
1c007058:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c00705c:	0340058c 	andi	$r12,$r12,0x1
1c007060:	44001980 	bnez	$r12,24(0x18) # 1c007078 <PcdComMF522+0x178>
1c007064:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c007068:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00706c:	0014b1ac 	and	$r12,$r13,$r12
1c007070:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007074:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c007034 <PcdComMF522+0x134>
1c007078:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00707c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007080:	57fa5fff 	bl	-1444(0xffffa5c) # 1c006adc <ClearBitMask>
1c007084:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007088:	40011180 	beqz	$r12,272(0x110) # 1c007198 <PcdComMF522+0x298>
1c00708c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007090:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c006760 <ReadRawRC>
1c007094:	0015008c 	move	$r12,$r4
1c007098:	03406d8c 	andi	$r12,$r12,0x1b
1c00709c:	4400f580 	bnez	$r12,244(0xf4) # 1c007190 <PcdComMF522+0x290>
1c0070a0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0070a4:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0070a8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0070ac:	0014b1ac 	and	$r12,$r13,$r12
1c0070b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0070b4:	0340058c 	andi	$r12,$r12,0x1
1c0070b8:	40000d80 	beqz	$r12,12(0xc) # 1c0070c4 <PcdComMF522+0x1c4>
1c0070bc:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0070c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0070c4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0070c8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0070cc:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c007198 <PcdComMF522+0x298>
1c0070d0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0070d4:	57f68fff 	bl	-2420(0xffff68c) # 1c006760 <ReadRawRC>
1c0070d8:	0015008c 	move	$r12,$r4
1c0070dc:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0070e0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0070e4:	57f67fff 	bl	-2436(0xffff67c) # 1c006760 <ReadRawRC>
1c0070e8:	0015008c 	move	$r12,$r4
1c0070ec:	03401d8c 	andi	$r12,$r12,0x7
1c0070f0:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0070f4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0070f8:	40002580 	beqz	$r12,36(0x24) # 1c00711c <PcdComMF522+0x21c>
1c0070fc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007100:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007104:	00408d8d 	slli.w	$r13,$r12,0x3
1c007108:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c00710c:	001031ad 	add.w	$r13,$r13,$r12
1c007110:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c007114:	2980018d 	st.w	$r13,$r12,0
1c007118:	50001400 	b	20(0x14) # 1c00712c <PcdComMF522+0x22c>
1c00711c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007120:	00408d8d 	slli.w	$r13,$r12,0x3
1c007124:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c007128:	2980018d 	st.w	$r13,$r12,0
1c00712c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007130:	44000d80 	bnez	$r12,12(0xc) # 1c00713c <PcdComMF522+0x23c>
1c007134:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007138:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00713c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c007140:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c007144:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c007150 <PcdComMF522+0x250>
1c007148:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00714c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c007150:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c007154:	50002c00 	b	44(0x2c) # 1c007180 <PcdComMF522+0x280>
1c007158:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00715c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c007160:	001031b7 	add.w	$r23,$r13,$r12
1c007164:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007168:	57f5fbff 	bl	-2568(0xffff5f8) # 1c006760 <ReadRawRC>
1c00716c:	0015008c 	move	$r12,$r4
1c007170:	290002ec 	st.b	$r12,$r23,0
1c007174:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007178:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00717c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007180:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c007184:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c007188:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c007158 <PcdComMF522+0x258>
1c00718c:	50000c00 	b	12(0xc) # 1c007198 <PcdComMF522+0x298>
1c007190:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c007194:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007198:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00719c:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0071a0:	57f8cbff 	bl	-1848(0xffff8c8) # 1c006a68 <SetBitMask>
1c0071a4:	00150005 	move	$r5,$r0
1c0071a8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0071ac:	57f73fff 	bl	-2244(0xffff73c) # 1c0068e8 <WriteRawRC>
1c0071b0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0071b4:	00150184 	move	$r4,$r12
1c0071b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0071bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0071c0:	28809077 	ld.w	$r23,$r3,36(0x24)
1c0071c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0071c8:	4c000020 	jirl	$r0,$r1,0

1c0071cc <PcdRequest>:
PcdRequest():
1c0071cc:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0071d0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0071d4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0071d8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0071dc:	0015008c 	move	$r12,$r4
1c0071e0:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0071e4:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c0071e8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0071ec:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0071f0:	57f8efff 	bl	-1812(0xffff8ec) # 1c006adc <ClearBitMask>
1c0071f4:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c0071f8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0071fc:	57f6efff 	bl	-2324(0xffff6ec) # 1c0068e8 <WriteRawRC>
1c007200:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007204:	02805004 	addi.w	$r4,$r0,20(0x14)
1c007208:	57f863ff 	bl	-1952(0xffff860) # 1c006a68 <SetBitMask>
1c00720c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c007210:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c007214:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c007218:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c00721c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c007220:	001501c8 	move	$r8,$r14
1c007224:	001501a7 	move	$r7,$r13
1c007228:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00722c:	00150185 	move	$r5,$r12
1c007230:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007234:	57fccfff 	bl	-820(0xffffccc) # 1c006f00 <PcdComMF522>
1c007238:	0015008c 	move	$r12,$r4
1c00723c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007240:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007244:	44003180 	bnez	$r12,48(0x30) # 1c007274 <PcdRequest+0xa8>
1c007248:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00724c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007250:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c007274 <PcdRequest+0xa8>
1c007254:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c007258:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00725c:	2900018d 	st.b	$r13,$r12,0
1c007260:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c007264:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007268:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c00726c:	2900018d 	st.b	$r13,$r12,0
1c007270:	50000c00 	b	12(0xc) # 1c00727c <PcdRequest+0xb0>
1c007274:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c007278:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00727c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007280:	00150184 	move	$r4,$r12
1c007284:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c007288:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00728c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c007290:	4c000020 	jirl	$r0,$r1,0

1c007294 <PcdAnticoll>:
PcdAnticoll():
1c007294:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c007298:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00729c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0072a0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0072a4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0072a8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0072ac:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0072b0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0072b4:	57f82bff 	bl	-2008(0xffff828) # 1c006adc <ClearBitMask>
1c0072b8:	00150005 	move	$r5,$r0
1c0072bc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0072c0:	57f62bff 	bl	-2520(0xffff628) # 1c0068e8 <WriteRawRC>
1c0072c4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0072c8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0072cc:	57f813ff 	bl	-2032(0xffff810) # 1c006adc <ClearBitMask>
1c0072d0:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c0072d4:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c0072d8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0072dc:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c0072e0:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0072e4:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0072e8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0072ec:	001501c8 	move	$r8,$r14
1c0072f0:	001501a7 	move	$r7,$r13
1c0072f4:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0072f8:	00150185 	move	$r5,$r12
1c0072fc:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007300:	57fc03ff 	bl	-1024(0xffffc00) # 1c006f00 <PcdComMF522>
1c007304:	0015008c 	move	$r12,$r4
1c007308:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00730c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c007310:	44008180 	bnez	$r12,128(0x80) # 1c007390 <PcdAnticoll+0xfc>
1c007314:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c007318:	50004c00 	b	76(0x4c) # 1c007364 <PcdAnticoll+0xd0>
1c00731c:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c007320:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007324:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c007328:	001031ac 	add.w	$r12,$r13,$r12
1c00732c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007330:	001039ad 	add.w	$r13,$r13,$r14
1c007334:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c007338:	2900018d 	st.b	$r13,$r12,0
1c00733c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007340:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007344:	001031ac 	add.w	$r12,$r13,$r12
1c007348:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c00734c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c007350:	0015b1ac 	xor	$r12,$r13,$r12
1c007354:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c007358:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00735c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007360:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007364:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c007368:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00736c:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c00731c <PcdAnticoll+0x88>
1c007370:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007374:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c007378:	001031ac 	add.w	$r12,$r13,$r12
1c00737c:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c007380:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c007384:	58000dac 	beq	$r13,$r12,12(0xc) # 1c007390 <PcdAnticoll+0xfc>
1c007388:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c00738c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007390:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007394:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007398:	57f6d3ff 	bl	-2352(0xffff6d0) # 1c006a68 <SetBitMask>
1c00739c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0073a0:	00150184 	move	$r4,$r12
1c0073a4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0073a8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0073ac:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0073b0:	4c000020 	jirl	$r0,$r1,0

1c0073b4 <Return_Card>:
Return_Card():
1c0073b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0073b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0073bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0073c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0073c4:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0073c8:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c0073cc:	28b0f0a5 	ld.w	$r5,$r5,-964(0xc3c)
1c0073d0:	02814804 	addi.w	$r4,$r0,82(0x52)
1c0073d4:	57fdfbff 	bl	-520(0xffffdf8) # 1c0071cc <PcdRequest>
1c0073d8:	0015008c 	move	$r12,$r4
1c0073dc:	44005d80 	bnez	$r12,92(0x5c) # 1c007438 <Return_Card+0x84>
1c0073e0:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c0073e4:	28b0c084 	ld.w	$r4,$r4,-976(0xc30)
1c0073e8:	57feafff 	bl	-340(0xffffeac) # 1c007294 <PcdAnticoll>
1c0073ec:	0015008c 	move	$r12,$r4
1c0073f0:	44004980 	bnez	$r12,72(0x48) # 1c007438 <Return_Card+0x84>
1c0073f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073f8:	28b0718c 	ld.w	$r12,$r12,-996(0xc1c)
1c0073fc:	2a00018c 	ld.bu	$r12,$r12,0
1c007400:	0044918c 	srli.w	$r12,$r12,0x4
1c007404:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007408:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00740c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007410:	001c31ac 	mul.w	$r12,$r13,$r12
1c007414:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c007418:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00741c:	28afe18c 	ld.w	$r12,$r12,-1032(0xbf8)
1c007420:	2a00018c 	ld.bu	$r12,$r12,0
1c007424:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007428:	03403d8c 	andi	$r12,$r12,0xf
1c00742c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007430:	001031ac 	add.w	$r12,$r13,$r12
1c007434:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c007438:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00743c:	00150184 	move	$r4,$r12
1c007440:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007444:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007448:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00744c:	4c000020 	jirl	$r0,$r1,0

1c007450 <Buffer_write>:
Buffer_write():
1c007450:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007454:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007458:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00745c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c007460:	001500ac 	move	$r12,$r5
1c007464:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c007468:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00746c:	2880018c 	ld.w	$r12,$r12,0
1c007470:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007474:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c007478:	0010358c 	add.w	$r12,$r12,$r13
1c00747c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c007480:	2900018d 	st.b	$r13,$r12,0
1c007484:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007488:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00748c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007494:	2980318d 	st.w	$r13,$r12,12(0xc)
1c007498:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00749c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0074a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074a4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0074a8:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0074b4 <Buffer_write+0x64>
1c0074ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074b0:	29803180 	st.w	$r0,$r12,12(0xc)
1c0074b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074b8:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c0074bc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0074c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074c4:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0074c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074cc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0074d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074d4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0074d8:	6400458d 	bge	$r12,$r13,68(0x44) # 1c00751c <Buffer_write+0xcc>
1c0074dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074e0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0074e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074e8:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0074ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074f0:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0074f4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0074f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0074fc:	2980218d 	st.w	$r13,$r12,8(0x8)
1c007500:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007504:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c007508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00750c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007510:	60000dac 	blt	$r13,$r12,12(0xc) # 1c00751c <Buffer_write+0xcc>
1c007514:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007518:	29802180 	st.w	$r0,$r12,8(0x8)
1c00751c:	03400000 	andi	$r0,$r0,0x0
1c007520:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007524:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007528:	4c000020 	jirl	$r0,$r1,0

1c00752c <main>:
main():
1c00752c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007530:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007534:	29806076 	st.w	$r22,$r3,24(0x18)
1c007538:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00753c:	579befff 	bl	-25620(0xfff9bec) # 1c001128 <EnableInt>
1c007540:	57eb9bff 	bl	-5224(0xfffeb98) # 1c0060d8 <my_GPIO_Init>
1c007544:	57ee3fff 	bl	-4548(0xfffee3c) # 1c006380 <my_PWM_Init>
1c007548:	57ed5fff 	bl	-4772(0xfffed5c) # 1c0062a4 <my_I2C_Init>
1c00754c:	57eeffff 	bl	-4356(0xfffeefc) # 1c006448 <my_SPI_Init>
1c007550:	140001cc 	lu12i.w	$r12,14(0xe)
1c007554:	03840184 	ori	$r4,$r12,0x100
1c007558:	57c417ff 	bl	-15340(0xfffc414) # 1c00396c <hw_uart_init>
1c00755c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c007560:	03bfc98c 	ori	$r12,$r12,0xff2
1c007564:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007568:	50008400 	b	132(0x84) # 1c0075ec <main+0xc0>
1c00756c:	03400000 	andi	$r0,$r0,0x0
1c007570:	03400000 	andi	$r0,$r0,0x0
1c007574:	03400000 	andi	$r0,$r0,0x0
1c007578:	03400000 	andi	$r0,$r0,0x0
1c00757c:	03400000 	andi	$r0,$r0,0x0
1c007580:	03400000 	andi	$r0,$r0,0x0
1c007584:	03400000 	andi	$r0,$r0,0x0
1c007588:	03400000 	andi	$r0,$r0,0x0
1c00758c:	03400000 	andi	$r0,$r0,0x0
1c007590:	03400000 	andi	$r0,$r0,0x0
1c007594:	03400000 	andi	$r0,$r0,0x0
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
1c0075ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0075f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0075f4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0075f8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00756c <main+0x40>
1c0075fc:	57ee7bff 	bl	-4488(0xfffee78) # 1c006474 <Init_main>
1c007600:	14000e2c 	lu12i.w	$r12,113(0x71)
1c007604:	03bfc98c 	ori	$r12,$r12,0xff2
1c007608:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00760c:	50008400 	b	132(0x84) # 1c007690 <main+0x164>
1c007610:	03400000 	andi	$r0,$r0,0x0
1c007614:	03400000 	andi	$r0,$r0,0x0
1c007618:	03400000 	andi	$r0,$r0,0x0
1c00761c:	03400000 	andi	$r0,$r0,0x0
1c007620:	03400000 	andi	$r0,$r0,0x0
1c007624:	03400000 	andi	$r0,$r0,0x0
1c007628:	03400000 	andi	$r0,$r0,0x0
1c00762c:	03400000 	andi	$r0,$r0,0x0
1c007630:	03400000 	andi	$r0,$r0,0x0
1c007634:	03400000 	andi	$r0,$r0,0x0
1c007638:	03400000 	andi	$r0,$r0,0x0
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
1c007690:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007694:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007698:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00769c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c007610 <main+0xe4>
1c0076a0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076a4:	02b3298c 	addi.w	$r12,$r12,-822(0xcca)
1c0076a8:	29000180 	st.b	$r0,$r12,0
1c0076ac:	57c46fff 	bl	-15252(0xfffc46c) # 1c003b18 <MatrixKey>
1c0076b0:	0015008c 	move	$r12,$r4
1c0076b4:	0015018d 	move	$r13,$r12
1c0076b8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076bc:	02b2c58c 	addi.w	$r12,$r12,-847(0xcb1)
1c0076c0:	2900018d 	st.b	$r13,$r12,0
1c0076c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076c8:	028f558c 	addi.w	$r12,$r12,981(0x3d5)
1c0076cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0076d0:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c0076d4:	680c71ac 	bltu	$r13,$r12,3184(0xc70) # 1c008344 <main+0xe18>
1c0076d8:	0040898d 	slli.w	$r13,$r12,0x2
1c0076dc:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0076e0:	028ff18c 	addi.w	$r12,$r12,1020(0x3fc)
1c0076e4:	001031ac 	add.w	$r12,$r13,$r12
1c0076e8:	2880018c 	ld.w	$r12,$r12,0
1c0076ec:	4c000180 	jirl	$r0,$r12,0
1c0076f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076f4:	028ea18c 	addi.w	$r12,$r12,936(0x3a8)
1c0076f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0076fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007700:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007718 <main+0x1ec>
1c007704:	02800404 	addi.w	$r4,$r0,1(0x1)
1c007708:	540cdc00 	bl	3292(0xcdc) # 1c0083e4 <interface_display>
1c00770c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007710:	028e318c 	addi.w	$r12,$r12,908(0x38c)
1c007714:	29000180 	st.b	$r0,$r12,0
1c007718:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00771c:	02b1458c 	addi.w	$r12,$r12,-943(0xc51)
1c007720:	2a00018d 	ld.bu	$r13,$r12,0
1c007724:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007728:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007750 <main+0x224>
1c00772c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007730:	028db58c 	addi.w	$r12,$r12,877(0x36d)
1c007734:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007738:	2900018d 	st.b	$r13,$r12,0
1c00773c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007740:	028d718c 	addi.w	$r12,$r12,860(0x35c)
1c007744:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007748:	2900018d 	st.b	$r13,$r12,0
1c00774c:	500c0000 	b	3072(0xc00) # 1c00834c <main+0xe20>
1c007750:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007754:	02b0658c 	addi.w	$r12,$r12,-999(0xc19)
1c007758:	2a00018d 	ld.bu	$r13,$r12,0
1c00775c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007760:	5c0bedac 	bne	$r13,$r12,3052(0xbec) # 1c00834c <main+0xe20>
1c007764:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007768:	028cd58c 	addi.w	$r12,$r12,821(0x335)
1c00776c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007770:	2900018d 	st.b	$r13,$r12,0
1c007774:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007778:	028c918c 	addi.w	$r12,$r12,804(0x324)
1c00777c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007780:	2900018d 	st.b	$r13,$r12,0
1c007784:	500bc800 	b	3016(0xbc8) # 1c00834c <main+0xe20>
1c007788:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00778c:	028c418c 	addi.w	$r12,$r12,784(0x310)
1c007790:	2a00018d 	ld.bu	$r13,$r12,0
1c007794:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c007798:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0077b0 <main+0x284>
1c00779c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0077a0:	540c4400 	bl	3140(0xc44) # 1c0083e4 <interface_display>
1c0077a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077a8:	028bd18c 	addi.w	$r12,$r12,756(0x2f4)
1c0077ac:	29000180 	st.b	$r0,$r12,0
1c0077b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077b4:	02aee58c 	addi.w	$r12,$r12,-1095(0xbb9)
1c0077b8:	2a00018d 	ld.bu	$r13,$r12,0
1c0077bc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0077c0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0077e8 <main+0x2bc>
1c0077c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077c8:	028b558c 	addi.w	$r12,$r12,725(0x2d5)
1c0077cc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0077d0:	2900018d 	st.b	$r13,$r12,0
1c0077d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077d8:	028b118c 	addi.w	$r12,$r12,708(0x2c4)
1c0077dc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0077e0:	2900018d 	st.b	$r13,$r12,0
1c0077e4:	500b7000 	b	2928(0xb70) # 1c008354 <main+0xe28>
1c0077e8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077ec:	02ae058c 	addi.w	$r12,$r12,-1151(0xb81)
1c0077f0:	2a00018d 	ld.bu	$r13,$r12,0
1c0077f4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0077f8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007820 <main+0x2f4>
1c0077fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007800:	028a758c 	addi.w	$r12,$r12,669(0x29d)
1c007804:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c007808:	2900018d 	st.b	$r13,$r12,0
1c00780c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007810:	028a318c 	addi.w	$r12,$r12,652(0x28c)
1c007814:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c007818:	2900018d 	st.b	$r13,$r12,0
1c00781c:	500b3800 	b	2872(0xb38) # 1c008354 <main+0xe28>
1c007820:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007824:	02ad258c 	addi.w	$r12,$r12,-1207(0xb49)
1c007828:	2a00018d 	ld.bu	$r13,$r12,0
1c00782c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007830:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007858 <main+0x32c>
1c007834:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007838:	0289958c 	addi.w	$r12,$r12,613(0x265)
1c00783c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c007840:	2900018d 	st.b	$r13,$r12,0
1c007844:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007848:	0289518c 	addi.w	$r12,$r12,596(0x254)
1c00784c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c007850:	2900018d 	st.b	$r13,$r12,0
1c007854:	500b0000 	b	2816(0xb00) # 1c008354 <main+0xe28>
1c007858:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00785c:	02ac458c 	addi.w	$r12,$r12,-1263(0xb11)
1c007860:	2a00018d 	ld.bu	$r13,$r12,0
1c007864:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007868:	5c0aedac 	bne	$r13,$r12,2796(0xaec) # 1c008354 <main+0xe28>
1c00786c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007870:	0288b58c 	addi.w	$r12,$r12,557(0x22d)
1c007874:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007878:	2900018d 	st.b	$r13,$r12,0
1c00787c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007880:	0288718c 	addi.w	$r12,$r12,540(0x21c)
1c007884:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007888:	2900018d 	st.b	$r13,$r12,0
1c00788c:	500ac800 	b	2760(0xac8) # 1c008354 <main+0xe28>
1c007890:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007894:	0288218c 	addi.w	$r12,$r12,520(0x208)
1c007898:	2a00018d 	ld.bu	$r13,$r12,0
1c00789c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0078a0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0078b8 <main+0x38c>
1c0078a4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0078a8:	540b3c00 	bl	2876(0xb3c) # 1c0083e4 <interface_display>
1c0078ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078b0:	0287b18c 	addi.w	$r12,$r12,492(0x1ec)
1c0078b4:	29000180 	st.b	$r0,$r12,0
1c0078b8:	54171000 	bl	5904(0x1710) # 1c008fc8 <Read_ID>
1c0078bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078c0:	02aab58c 	addi.w	$r12,$r12,-1363(0xaad)
1c0078c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0078c8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0078cc:	5c0a91ac 	bne	$r13,$r12,2704(0xa90) # 1c00835c <main+0xe30>
1c0078d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078d4:	0287258c 	addi.w	$r12,$r12,457(0x1c9)
1c0078d8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0078dc:	2900018d 	st.b	$r13,$r12,0
1c0078e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078e4:	0286e18c 	addi.w	$r12,$r12,440(0x1b8)
1c0078e8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0078ec:	2900018d 	st.b	$r13,$r12,0
1c0078f0:	500a6c00 	b	2668(0xa6c) # 1c00835c <main+0xe30>
1c0078f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0078f8:	0286918c 	addi.w	$r12,$r12,420(0x1a4)
1c0078fc:	2a00018d 	ld.bu	$r13,$r12,0
1c007900:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007904:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00791c <main+0x3f0>
1c007908:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00790c:	540ad800 	bl	2776(0xad8) # 1c0083e4 <interface_display>
1c007910:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007914:	0286218c 	addi.w	$r12,$r12,392(0x188)
1c007918:	29000180 	st.b	$r0,$r12,0
1c00791c:	54194800 	bl	6472(0x1948) # 1c009264 <Key_main>
1c007920:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007924:	02a9258c 	addi.w	$r12,$r12,-1463(0xa49)
1c007928:	2a00018d 	ld.bu	$r13,$r12,0
1c00792c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007930:	5c0a35ac 	bne	$r13,$r12,2612(0xa34) # 1c008364 <main+0xe38>
1c007934:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007938:	0285958c 	addi.w	$r12,$r12,357(0x165)
1c00793c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007940:	2900018d 	st.b	$r13,$r12,0
1c007944:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007948:	0285518c 	addi.w	$r12,$r12,340(0x154)
1c00794c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007950:	2900018d 	st.b	$r13,$r12,0
1c007954:	500a1000 	b	2576(0xa10) # 1c008364 <main+0xe38>
1c007958:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00795c:	0285018c 	addi.w	$r12,$r12,320(0x140)
1c007960:	2a00018d 	ld.bu	$r13,$r12,0
1c007964:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c007968:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007980 <main+0x454>
1c00796c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c007970:	540a7400 	bl	2676(0xa74) # 1c0083e4 <interface_display>
1c007974:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007978:	0284918c 	addi.w	$r12,$r12,292(0x124)
1c00797c:	29000180 	st.b	$r0,$r12,0
1c007980:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007984:	02a7a58c 	addi.w	$r12,$r12,-1559(0x9e9)
1c007988:	2a00018d 	ld.bu	$r13,$r12,0
1c00798c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007990:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0079b8 <main+0x48c>
1c007994:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007998:	0284158c 	addi.w	$r12,$r12,261(0x105)
1c00799c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0079a0:	2900018d 	st.b	$r13,$r12,0
1c0079a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079a8:	0283d18c 	addi.w	$r12,$r12,244(0xf4)
1c0079ac:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0079b0:	2900018d 	st.b	$r13,$r12,0
1c0079b4:	5009b800 	b	2488(0x9b8) # 1c00836c <main+0xe40>
1c0079b8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079bc:	02a6c58c 	addi.w	$r12,$r12,-1615(0x9b1)
1c0079c0:	2a00018d 	ld.bu	$r13,$r12,0
1c0079c4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0079c8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0079f0 <main+0x4c4>
1c0079cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079d0:	0283358c 	addi.w	$r12,$r12,205(0xcd)
1c0079d4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0079d8:	2900018d 	st.b	$r13,$r12,0
1c0079dc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0079e0:	0282f18c 	addi.w	$r12,$r12,188(0xbc)
1c0079e4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0079e8:	2900018d 	st.b	$r13,$r12,0
1c0079ec:	50098000 	b	2432(0x980) # 1c00836c <main+0xe40>
1c0079f0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079f4:	02a5e58c 	addi.w	$r12,$r12,-1671(0x979)
1c0079f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0079fc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007a00:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007a28 <main+0x4fc>
1c007a04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a08:	0282558c 	addi.w	$r12,$r12,149(0x95)
1c007a0c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007a10:	2900018d 	st.b	$r13,$r12,0
1c007a14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a18:	0282118c 	addi.w	$r12,$r12,132(0x84)
1c007a1c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c007a20:	2900018d 	st.b	$r13,$r12,0
1c007a24:	50094800 	b	2376(0x948) # 1c00836c <main+0xe40>
1c007a28:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a2c:	02a5058c 	addi.w	$r12,$r12,-1727(0x941)
1c007a30:	2a00018d 	ld.bu	$r13,$r12,0
1c007a34:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007a38:	5c0935ac 	bne	$r13,$r12,2356(0x934) # 1c00836c <main+0xe40>
1c007a3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a40:	0281758c 	addi.w	$r12,$r12,93(0x5d)
1c007a44:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007a48:	2900018d 	st.b	$r13,$r12,0
1c007a4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a50:	0281318c 	addi.w	$r12,$r12,76(0x4c)
1c007a54:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007a58:	2900018d 	st.b	$r13,$r12,0
1c007a5c:	50091000 	b	2320(0x910) # 1c00836c <main+0xe40>
1c007a60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a64:	0280e18c 	addi.w	$r12,$r12,56(0x38)
1c007a68:	2a00018d 	ld.bu	$r13,$r12,0
1c007a6c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c007a70:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007a88 <main+0x55c>
1c007a74:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007a78:	54096c00 	bl	2412(0x96c) # 1c0083e4 <interface_display>
1c007a7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a80:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c007a84:	29000180 	st.b	$r0,$r12,0
1c007a88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a8c:	02a3858c 	addi.w	$r12,$r12,-1823(0x8e1)
1c007a90:	2a00018d 	ld.bu	$r13,$r12,0
1c007a94:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007a98:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007ac0 <main+0x594>
1c007a9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007aa0:	02bff58c 	addi.w	$r12,$r12,-3(0xffd)
1c007aa4:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c007aa8:	2900018d 	st.b	$r13,$r12,0
1c007aac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ab0:	02bfb18c 	addi.w	$r12,$r12,-20(0xfec)
1c007ab4:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c007ab8:	2900018d 	st.b	$r13,$r12,0
1c007abc:	5008b800 	b	2232(0x8b8) # 1c008374 <main+0xe48>
1c007ac0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ac4:	02a2a58c 	addi.w	$r12,$r12,-1879(0x8a9)
1c007ac8:	2a00018d 	ld.bu	$r13,$r12,0
1c007acc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007ad0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007af8 <main+0x5cc>
1c007ad4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ad8:	02bf158c 	addi.w	$r12,$r12,-59(0xfc5)
1c007adc:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007ae0:	2900018d 	st.b	$r13,$r12,0
1c007ae4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ae8:	02bed18c 	addi.w	$r12,$r12,-76(0xfb4)
1c007aec:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c007af0:	2900018d 	st.b	$r13,$r12,0
1c007af4:	50088000 	b	2176(0x880) # 1c008374 <main+0xe48>
1c007af8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007afc:	02a1c58c 	addi.w	$r12,$r12,-1935(0x871)
1c007b00:	2a00018d 	ld.bu	$r13,$r12,0
1c007b04:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007b08:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007b30 <main+0x604>
1c007b0c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b10:	02be358c 	addi.w	$r12,$r12,-115(0xf8d)
1c007b14:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b18:	2900018d 	st.b	$r13,$r12,0
1c007b1c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b20:	02bdf18c 	addi.w	$r12,$r12,-132(0xf7c)
1c007b24:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b28:	2900018d 	st.b	$r13,$r12,0
1c007b2c:	50084800 	b	2120(0x848) # 1c008374 <main+0xe48>
1c007b30:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b34:	02a0e58c 	addi.w	$r12,$r12,-1991(0x839)
1c007b38:	2a00018d 	ld.bu	$r13,$r12,0
1c007b3c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007b40:	5c0835ac 	bne	$r13,$r12,2100(0x834) # 1c008374 <main+0xe48>
1c007b44:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b48:	02bd558c 	addi.w	$r12,$r12,-171(0xf55)
1c007b4c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b50:	2900018d 	st.b	$r13,$r12,0
1c007b54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b58:	02bd118c 	addi.w	$r12,$r12,-188(0xf44)
1c007b5c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007b60:	2900018d 	st.b	$r13,$r12,0
1c007b64:	50081000 	b	2064(0x810) # 1c008374 <main+0xe48>
1c007b68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b6c:	02bcc18c 	addi.w	$r12,$r12,-208(0xf30)
1c007b70:	2a00018d 	ld.bu	$r13,$r12,0
1c007b74:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c007b78:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007b90 <main+0x664>
1c007b7c:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c007b80:	54086400 	bl	2148(0x864) # 1c0083e4 <interface_display>
1c007b84:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b88:	02bc518c 	addi.w	$r12,$r12,-236(0xf14)
1c007b8c:	29000180 	st.b	$r0,$r12,0
1c007b90:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007b94:	029f658c 	addi.w	$r12,$r12,2009(0x7d9)
1c007b98:	2a00018d 	ld.bu	$r13,$r12,0
1c007b9c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007ba0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007bc8 <main+0x69c>
1c007ba4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ba8:	02bbd58c 	addi.w	$r12,$r12,-267(0xef5)
1c007bac:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007bb0:	2900018d 	st.b	$r13,$r12,0
1c007bb4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bb8:	02bb918c 	addi.w	$r12,$r12,-284(0xee4)
1c007bbc:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007bc0:	2900018d 	st.b	$r13,$r12,0
1c007bc4:	5007b800 	b	1976(0x7b8) # 1c00837c <main+0xe50>
1c007bc8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007bcc:	029e858c 	addi.w	$r12,$r12,1953(0x7a1)
1c007bd0:	2a00018d 	ld.bu	$r13,$r12,0
1c007bd4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007bd8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007c00 <main+0x6d4>
1c007bdc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007be0:	02baf58c 	addi.w	$r12,$r12,-323(0xebd)
1c007be4:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c007be8:	2900018d 	st.b	$r13,$r12,0
1c007bec:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bf0:	02bab18c 	addi.w	$r12,$r12,-340(0xeac)
1c007bf4:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c007bf8:	2900018d 	st.b	$r13,$r12,0
1c007bfc:	50078000 	b	1920(0x780) # 1c00837c <main+0xe50>
1c007c00:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c04:	029da58c 	addi.w	$r12,$r12,1897(0x769)
1c007c08:	2a00018d 	ld.bu	$r13,$r12,0
1c007c0c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c007c10:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007c38 <main+0x70c>
1c007c14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c18:	02ba158c 	addi.w	$r12,$r12,-379(0xe85)
1c007c1c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c20:	2900018d 	st.b	$r13,$r12,0
1c007c24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c28:	02b9d18c 	addi.w	$r12,$r12,-396(0xe74)
1c007c2c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c30:	2900018d 	st.b	$r13,$r12,0
1c007c34:	50074800 	b	1864(0x748) # 1c00837c <main+0xe50>
1c007c38:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c3c:	029cc58c 	addi.w	$r12,$r12,1841(0x731)
1c007c40:	2a00018d 	ld.bu	$r13,$r12,0
1c007c44:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007c48:	5c0735ac 	bne	$r13,$r12,1844(0x734) # 1c00837c <main+0xe50>
1c007c4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c50:	02b9358c 	addi.w	$r12,$r12,-435(0xe4d)
1c007c54:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c58:	2900018d 	st.b	$r13,$r12,0
1c007c5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c60:	02b8f18c 	addi.w	$r12,$r12,-452(0xe3c)
1c007c64:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007c68:	2900018d 	st.b	$r13,$r12,0
1c007c6c:	50071000 	b	1808(0x710) # 1c00837c <main+0xe50>
1c007c70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c74:	02b8a18c 	addi.w	$r12,$r12,-472(0xe28)
1c007c78:	2a00018d 	ld.bu	$r13,$r12,0
1c007c7c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c007c80:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007c98 <main+0x76c>
1c007c84:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c007c88:	54075c00 	bl	1884(0x75c) # 1c0083e4 <interface_display>
1c007c8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007c90:	02b8318c 	addi.w	$r12,$r12,-500(0xe0c)
1c007c94:	29000180 	st.b	$r0,$r12,0
1c007c98:	541b7c00 	bl	7036(0x1b7c) # 1c009814 <Key>
1c007c9c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007ca0:	029b358c 	addi.w	$r12,$r12,1741(0x6cd)
1c007ca4:	2a00018d 	ld.bu	$r13,$r12,0
1c007ca8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007cac:	5c06d9ac 	bne	$r13,$r12,1752(0x6d8) # 1c008384 <main+0xe58>
1c007cb0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cb4:	02b7a58c 	addi.w	$r12,$r12,-535(0xde9)
1c007cb8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007cbc:	2900018d 	st.b	$r13,$r12,0
1c007cc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cc4:	02b7618c 	addi.w	$r12,$r12,-552(0xdd8)
1c007cc8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007ccc:	2900018d 	st.b	$r13,$r12,0
1c007cd0:	5006b400 	b	1716(0x6b4) # 1c008384 <main+0xe58>
1c007cd4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cd8:	02b7118c 	addi.w	$r12,$r12,-572(0xdc4)
1c007cdc:	2a00018d 	ld.bu	$r13,$r12,0
1c007ce0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c007ce4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007cfc <main+0x7d0>
1c007ce8:	02803004 	addi.w	$r4,$r0,12(0xc)
1c007cec:	5406f800 	bl	1784(0x6f8) # 1c0083e4 <interface_display>
1c007cf0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007cf4:	02b6a18c 	addi.w	$r12,$r12,-600(0xda8)
1c007cf8:	29000180 	st.b	$r0,$r12,0
1c007cfc:	540f9800 	bl	3992(0xf98) # 1c008c94 <Write_ID>
1c007d00:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d04:	0299a58c 	addi.w	$r12,$r12,1641(0x669)
1c007d08:	2a00018d 	ld.bu	$r13,$r12,0
1c007d0c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007d10:	5c067dac 	bne	$r13,$r12,1660(0x67c) # 1c00838c <main+0xe60>
1c007d14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d18:	02b6158c 	addi.w	$r12,$r12,-635(0xd85)
1c007d1c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007d20:	2900018d 	st.b	$r13,$r12,0
1c007d24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d28:	02b5d18c 	addi.w	$r12,$r12,-652(0xd74)
1c007d2c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007d30:	2900018d 	st.b	$r13,$r12,0
1c007d34:	50065800 	b	1624(0x658) # 1c00838c <main+0xe60>
1c007d38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d3c:	02b5818c 	addi.w	$r12,$r12,-672(0xd60)
1c007d40:	2a00018d 	ld.bu	$r13,$r12,0
1c007d44:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007d48:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007d60 <main+0x834>
1c007d4c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c007d50:	54069400 	bl	1684(0x694) # 1c0083e4 <interface_display>
1c007d54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d58:	02b5118c 	addi.w	$r12,$r12,-700(0xd44)
1c007d5c:	29000180 	st.b	$r0,$r12,0
1c007d60:	541f2800 	bl	7976(0x1f28) # 1c009c88 <Add_Key>
1c007d64:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d68:	0298158c 	addi.w	$r12,$r12,1541(0x605)
1c007d6c:	2a00018d 	ld.bu	$r13,$r12,0
1c007d70:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007d74:	5c0621ac 	bne	$r13,$r12,1568(0x620) # 1c008394 <main+0xe68>
1c007d78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d7c:	02b4858c 	addi.w	$r12,$r12,-735(0xd21)
1c007d80:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007d84:	2900018d 	st.b	$r13,$r12,0
1c007d88:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007d8c:	02b4418c 	addi.w	$r12,$r12,-752(0xd10)
1c007d90:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007d94:	2900018d 	st.b	$r13,$r12,0
1c007d98:	5005fc00 	b	1532(0x5fc) # 1c008394 <main+0xe68>
1c007d9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007da0:	02b3f18c 	addi.w	$r12,$r12,-772(0xcfc)
1c007da4:	2a00018d 	ld.bu	$r13,$r12,0
1c007da8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007dac:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007dc4 <main+0x898>
1c007db0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c007db4:	54063000 	bl	1584(0x630) # 1c0083e4 <interface_display>
1c007db8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007dbc:	02b3818c 	addi.w	$r12,$r12,-800(0xce0)
1c007dc0:	29000180 	st.b	$r0,$r12,0
1c007dc4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007dc8:	0296958c 	addi.w	$r12,$r12,1445(0x5a5)
1c007dcc:	2a00018d 	ld.bu	$r13,$r12,0
1c007dd0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007dd4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007dfc <main+0x8d0>
1c007dd8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ddc:	02b3058c 	addi.w	$r12,$r12,-831(0xcc1)
1c007de0:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c007de4:	2900018d 	st.b	$r13,$r12,0
1c007de8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007dec:	02b2c18c 	addi.w	$r12,$r12,-848(0xcb0)
1c007df0:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c007df4:	2900018d 	st.b	$r13,$r12,0
1c007df8:	5005a400 	b	1444(0x5a4) # 1c00839c <main+0xe70>
1c007dfc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e00:	0295b58c 	addi.w	$r12,$r12,1389(0x56d)
1c007e04:	2a00018d 	ld.bu	$r13,$r12,0
1c007e08:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007e0c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007e34 <main+0x908>
1c007e10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e14:	02b2258c 	addi.w	$r12,$r12,-887(0xc89)
1c007e18:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e1c:	2900018d 	st.b	$r13,$r12,0
1c007e20:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e24:	02b1e18c 	addi.w	$r12,$r12,-904(0xc78)
1c007e28:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e2c:	2900018d 	st.b	$r13,$r12,0
1c007e30:	50056c00 	b	1388(0x56c) # 1c00839c <main+0xe70>
1c007e34:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e38:	0294d58c 	addi.w	$r12,$r12,1333(0x535)
1c007e3c:	2a00018d 	ld.bu	$r13,$r12,0
1c007e40:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007e44:	5c0559ac 	bne	$r13,$r12,1368(0x558) # 1c00839c <main+0xe70>
1c007e48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e4c:	02b1458c 	addi.w	$r12,$r12,-943(0xc51)
1c007e50:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e54:	2900018d 	st.b	$r13,$r12,0
1c007e58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e5c:	02b1018c 	addi.w	$r12,$r12,-960(0xc40)
1c007e60:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e64:	2900018d 	st.b	$r13,$r12,0
1c007e68:	50053400 	b	1332(0x534) # 1c00839c <main+0xe70>
1c007e6c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e70:	02b0b18c 	addi.w	$r12,$r12,-980(0xc2c)
1c007e74:	2a00018d 	ld.bu	$r13,$r12,0
1c007e78:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007e7c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c007e98 <main+0x96c>
1c007e80:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007e84:	54056000 	bl	1376(0x560) # 1c0083e4 <interface_display>
1c007e88:	54214000 	bl	8512(0x2140) # 1c009fc8 <Delete_key>
1c007e8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e90:	02b0318c 	addi.w	$r12,$r12,-1012(0xc0c)
1c007e94:	29000180 	st.b	$r0,$r12,0
1c007e98:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e9c:	0293458c 	addi.w	$r12,$r12,1233(0x4d1)
1c007ea0:	2a00018d 	ld.bu	$r13,$r12,0
1c007ea4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007ea8:	5c04fdac 	bne	$r13,$r12,1276(0x4fc) # 1c0083a4 <main+0xe78>
1c007eac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007eb0:	02afb58c 	addi.w	$r12,$r12,-1043(0xbed)
1c007eb4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007eb8:	2900018d 	st.b	$r13,$r12,0
1c007ebc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ec0:	02af718c 	addi.w	$r12,$r12,-1060(0xbdc)
1c007ec4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007ec8:	2900018d 	st.b	$r13,$r12,0
1c007ecc:	5004d800 	b	1240(0x4d8) # 1c0083a4 <main+0xe78>
1c007ed0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ed4:	02af218c 	addi.w	$r12,$r12,-1080(0xbc8)
1c007ed8:	2a00018d 	ld.bu	$r13,$r12,0
1c007edc:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007ee0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c007ef8 <main+0x9cc>
1c007ee4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c007ee8:	5404fc00 	bl	1276(0x4fc) # 1c0083e4 <interface_display>
1c007eec:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ef0:	02aeb18c 	addi.w	$r12,$r12,-1108(0xbac)
1c007ef4:	29000180 	st.b	$r0,$r12,0
1c007ef8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007efc:	0291c58c 	addi.w	$r12,$r12,1137(0x471)
1c007f00:	2a00018d 	ld.bu	$r13,$r12,0
1c007f04:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c007f08:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007f30 <main+0xa04>
1c007f0c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f10:	02ae358c 	addi.w	$r12,$r12,-1139(0xb8d)
1c007f14:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c007f18:	2900018d 	st.b	$r13,$r12,0
1c007f1c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f20:	02adf18c 	addi.w	$r12,$r12,-1156(0xb7c)
1c007f24:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c007f28:	2900018d 	st.b	$r13,$r12,0
1c007f2c:	50048000 	b	1152(0x480) # 1c0083ac <main+0xe80>
1c007f30:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007f34:	0290e58c 	addi.w	$r12,$r12,1081(0x439)
1c007f38:	2a00018d 	ld.bu	$r13,$r12,0
1c007f3c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007f40:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c007f68 <main+0xa3c>
1c007f44:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f48:	02ad558c 	addi.w	$r12,$r12,-1195(0xb55)
1c007f4c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f50:	2900018d 	st.b	$r13,$r12,0
1c007f54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f58:	02ad118c 	addi.w	$r12,$r12,-1212(0xb44)
1c007f5c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f60:	2900018d 	st.b	$r13,$r12,0
1c007f64:	50044800 	b	1096(0x448) # 1c0083ac <main+0xe80>
1c007f68:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007f6c:	0290058c 	addi.w	$r12,$r12,1025(0x401)
1c007f70:	2a00018d 	ld.bu	$r13,$r12,0
1c007f74:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007f78:	5c0435ac 	bne	$r13,$r12,1076(0x434) # 1c0083ac <main+0xe80>
1c007f7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f80:	02ac758c 	addi.w	$r12,$r12,-1251(0xb1d)
1c007f84:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f88:	2900018d 	st.b	$r13,$r12,0
1c007f8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f90:	02ac318c 	addi.w	$r12,$r12,-1268(0xb0c)
1c007f94:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007f98:	2900018d 	st.b	$r13,$r12,0
1c007f9c:	50041000 	b	1040(0x410) # 1c0083ac <main+0xe80>
1c007fa0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fa4:	02abe18c 	addi.w	$r12,$r12,-1288(0xaf8)
1c007fa8:	2a00018d 	ld.bu	$r13,$r12,0
1c007fac:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c007fb0:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c007fcc <main+0xaa0>
1c007fb4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c007fb8:	54042c00 	bl	1068(0x42c) # 1c0083e4 <interface_display>
1c007fbc:	540ef800 	bl	3832(0xef8) # 1c008eb4 <Delate_ID>
1c007fc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fc4:	02ab618c 	addi.w	$r12,$r12,-1320(0xad8)
1c007fc8:	29000180 	st.b	$r0,$r12,0
1c007fcc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007fd0:	028e758c 	addi.w	$r12,$r12,925(0x39d)
1c007fd4:	2a00018d 	ld.bu	$r13,$r12,0
1c007fd8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007fdc:	5c03d9ac 	bne	$r13,$r12,984(0x3d8) # 1c0083b4 <main+0xe88>
1c007fe0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007fe4:	02aae58c 	addi.w	$r12,$r12,-1351(0xab9)
1c007fe8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007fec:	2900018d 	st.b	$r13,$r12,0
1c007ff0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ff4:	02aaa18c 	addi.w	$r12,$r12,-1368(0xaa8)
1c007ff8:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007ffc:	2900018d 	st.b	$r13,$r12,0
1c008000:	5003b400 	b	948(0x3b4) # 1c0083b4 <main+0xe88>
1c008004:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008008:	02aa518c 	addi.w	$r12,$r12,-1388(0xa94)
1c00800c:	2a00018d 	ld.bu	$r13,$r12,0
1c008010:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008014:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c008040 <main+0xb14>
1c008018:	02804804 	addi.w	$r4,$r0,18(0x12)
1c00801c:	5403c800 	bl	968(0x3c8) # 1c0083e4 <interface_display>
1c008020:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008024:	02a9e58c 	addi.w	$r12,$r12,-1415(0xa79)
1c008028:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00802c:	2900018d 	st.b	$r13,$r12,0
1c008030:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008034:	02a9a18c 	addi.w	$r12,$r12,-1432(0xa68)
1c008038:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00803c:	2900018d 	st.b	$r13,$r12,0
1c008040:	57b43bff 	bl	-19400(0xfffb438) # 1c003478 <press_FR>
1c008044:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008048:	028c958c 	addi.w	$r12,$r12,805(0x325)
1c00804c:	2a00018d 	ld.bu	$r13,$r12,0
1c008050:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008054:	5c0369ac 	bne	$r13,$r12,872(0x368) # 1c0083bc <main+0xe90>
1c008058:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00805c:	02a9058c 	addi.w	$r12,$r12,-1471(0xa41)
1c008060:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c008064:	2900018d 	st.b	$r13,$r12,0
1c008068:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00806c:	02a8c18c 	addi.w	$r12,$r12,-1488(0xa30)
1c008070:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c008074:	2900018d 	st.b	$r13,$r12,0
1c008078:	50034400 	b	836(0x344) # 1c0083bc <main+0xe90>
1c00807c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008080:	02a8718c 	addi.w	$r12,$r12,-1508(0xa1c)
1c008084:	2a00018d 	ld.bu	$r13,$r12,0
1c008088:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00808c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0080a4 <main+0xb78>
1c008090:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c008094:	54035000 	bl	848(0x350) # 1c0083e4 <interface_display>
1c008098:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00809c:	02a8018c 	addi.w	$r12,$r12,-1536(0xa00)
1c0080a0:	29000180 	st.b	$r0,$r12,0
1c0080a4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0080a8:	028b158c 	addi.w	$r12,$r12,709(0x2c5)
1c0080ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0080b0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0080b4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0080dc <main+0xbb0>
1c0080b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080bc:	02a7858c 	addi.w	$r12,$r12,-1567(0x9e1)
1c0080c0:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0080c4:	2900018d 	st.b	$r13,$r12,0
1c0080c8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080cc:	02a7418c 	addi.w	$r12,$r12,-1584(0x9d0)
1c0080d0:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0080d4:	2900018d 	st.b	$r13,$r12,0
1c0080d8:	5002ec00 	b	748(0x2ec) # 1c0083c4 <main+0xe98>
1c0080dc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0080e0:	028a358c 	addi.w	$r12,$r12,653(0x28d)
1c0080e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0080e8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0080ec:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008114 <main+0xbe8>
1c0080f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0080f4:	02a6a58c 	addi.w	$r12,$r12,-1623(0x9a9)
1c0080f8:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0080fc:	2900018d 	st.b	$r13,$r12,0
1c008100:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008104:	02a6618c 	addi.w	$r12,$r12,-1640(0x998)
1c008108:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c00810c:	2900018d 	st.b	$r13,$r12,0
1c008110:	5002b400 	b	692(0x2b4) # 1c0083c4 <main+0xe98>
1c008114:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008118:	0289558c 	addi.w	$r12,$r12,597(0x255)
1c00811c:	2a00018d 	ld.bu	$r13,$r12,0
1c008120:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c008124:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00814c <main+0xc20>
1c008128:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00812c:	02a5c58c 	addi.w	$r12,$r12,-1679(0x971)
1c008130:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008134:	2900018d 	st.b	$r13,$r12,0
1c008138:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00813c:	02a5818c 	addi.w	$r12,$r12,-1696(0x960)
1c008140:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c008144:	2900018d 	st.b	$r13,$r12,0
1c008148:	50027c00 	b	636(0x27c) # 1c0083c4 <main+0xe98>
1c00814c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008150:	0288758c 	addi.w	$r12,$r12,541(0x21d)
1c008154:	2a00018d 	ld.bu	$r13,$r12,0
1c008158:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00815c:	5c0269ac 	bne	$r13,$r12,616(0x268) # 1c0083c4 <main+0xe98>
1c008160:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008164:	02a4e58c 	addi.w	$r12,$r12,-1735(0x939)
1c008168:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00816c:	2900018d 	st.b	$r13,$r12,0
1c008170:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008174:	02a4a18c 	addi.w	$r12,$r12,-1752(0x928)
1c008178:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00817c:	2900018d 	st.b	$r13,$r12,0
1c008180:	50024400 	b	580(0x244) # 1c0083c4 <main+0xe98>
1c008184:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008188:	02a4518c 	addi.w	$r12,$r12,-1772(0x914)
1c00818c:	2a00018d 	ld.bu	$r13,$r12,0
1c008190:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c008194:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c0081c0 <main+0xc94>
1c008198:	02805404 	addi.w	$r4,$r0,21(0x15)
1c00819c:	54024800 	bl	584(0x248) # 1c0083e4 <interface_display>
1c0081a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081a4:	02a3e58c 	addi.w	$r12,$r12,-1799(0x8f9)
1c0081a8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081ac:	2900018d 	st.b	$r13,$r12,0
1c0081b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081b4:	02a3a18c 	addi.w	$r12,$r12,-1816(0x8e8)
1c0081b8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081bc:	2900018d 	st.b	$r13,$r12,0
1c0081c0:	57ab83ff 	bl	-21632(0xfffab80) # 1c002d40 <Add_FR>
1c0081c4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0081c8:	0286958c 	addi.w	$r12,$r12,421(0x1a5)
1c0081cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0081d0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0081d4:	5c01f9ac 	bne	$r13,$r12,504(0x1f8) # 1c0083cc <main+0xea0>
1c0081d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081dc:	02a3058c 	addi.w	$r12,$r12,-1855(0x8c1)
1c0081e0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081e4:	2900018d 	st.b	$r13,$r12,0
1c0081e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0081ec:	02a2c18c 	addi.w	$r12,$r12,-1872(0x8b0)
1c0081f0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0081f4:	2900018d 	st.b	$r13,$r12,0
1c0081f8:	5001d400 	b	468(0x1d4) # 1c0083cc <main+0xea0>
1c0081fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008200:	02a2718c 	addi.w	$r12,$r12,-1892(0x89c)
1c008204:	2a00018d 	ld.bu	$r13,$r12,0
1c008208:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00820c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c008224 <main+0xcf8>
1c008210:	02805004 	addi.w	$r4,$r0,20(0x14)
1c008214:	5401d000 	bl	464(0x1d0) # 1c0083e4 <interface_display>
1c008218:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00821c:	02a2018c 	addi.w	$r12,$r12,-1920(0x880)
1c008220:	29000180 	st.b	$r0,$r12,0
1c008224:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008228:	0285158c 	addi.w	$r12,$r12,325(0x145)
1c00822c:	2a00018d 	ld.bu	$r13,$r12,0
1c008230:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c008234:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00825c <main+0xd30>
1c008238:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00823c:	02a1858c 	addi.w	$r12,$r12,-1951(0x861)
1c008240:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c008244:	2900018d 	st.b	$r13,$r12,0
1c008248:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00824c:	02a1418c 	addi.w	$r12,$r12,-1968(0x850)
1c008250:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c008254:	2900018d 	st.b	$r13,$r12,0
1c008258:	50017c00 	b	380(0x17c) # 1c0083d4 <main+0xea8>
1c00825c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008260:	0284358c 	addi.w	$r12,$r12,269(0x10d)
1c008264:	2a00018d 	ld.bu	$r13,$r12,0
1c008268:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00826c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c008294 <main+0xd68>
1c008270:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008274:	02a0a58c 	addi.w	$r12,$r12,-2007(0x829)
1c008278:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00827c:	2900018d 	st.b	$r13,$r12,0
1c008280:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c008284:	02a0618c 	addi.w	$r12,$r12,-2024(0x818)
1c008288:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00828c:	2900018d 	st.b	$r13,$r12,0
1c008290:	50014400 	b	324(0x144) # 1c0083d4 <main+0xea8>
1c008294:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008298:	0283558c 	addi.w	$r12,$r12,213(0xd5)
1c00829c:	2a00018d 	ld.bu	$r13,$r12,0
1c0082a0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0082a4:	5c0131ac 	bne	$r13,$r12,304(0x130) # 1c0083d4 <main+0xea8>
1c0082a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082ac:	029fc58c 	addi.w	$r12,$r12,2033(0x7f1)
1c0082b0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082b4:	2900018d 	st.b	$r13,$r12,0
1c0082b8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082bc:	029f818c 	addi.w	$r12,$r12,2016(0x7e0)
1c0082c0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082c4:	2900018d 	st.b	$r13,$r12,0
1c0082c8:	50010c00 	b	268(0x10c) # 1c0083d4 <main+0xea8>
1c0082cc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082d0:	029f318c 	addi.w	$r12,$r12,1996(0x7cc)
1c0082d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0082d8:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c0082dc:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c00830c <main+0xde0>
1c0082e0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0082e4:	54010000 	bl	256(0x100) # 1c0083e4 <interface_display>
1c0082e8:	57b4efff 	bl	-19220(0xfffb4ec) # 1c0037d4 <Del_FR_Lib>
1c0082ec:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0082f0:	029eb58c 	addi.w	$r12,$r12,1965(0x7ad)
1c0082f4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0082f8:	2900018d 	st.b	$r13,$r12,0
1c0082fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008300:	029e718c 	addi.w	$r12,$r12,1948(0x79c)
1c008304:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c008308:	2900018d 	st.b	$r13,$r12,0
1c00830c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c008310:	0281758c 	addi.w	$r12,$r12,93(0x5d)
1c008314:	2a00018d 	ld.bu	$r13,$r12,0
1c008318:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00831c:	5c00c1ac 	bne	$r13,$r12,192(0xc0) # 1c0083dc <main+0xeb0>
1c008320:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008324:	029de58c 	addi.w	$r12,$r12,1913(0x779)
1c008328:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00832c:	2900018d 	st.b	$r13,$r12,0
1c008330:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008334:	029da18c 	addi.w	$r12,$r12,1896(0x768)
1c008338:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00833c:	2900018d 	st.b	$r13,$r12,0
1c008340:	50009c00 	b	156(0x9c) # 1c0083dc <main+0xeb0>
1c008344:	03400000 	andi	$r0,$r0,0x0
1c008348:	53f35bff 	b	-3240(0xffff358) # 1c0076a0 <main+0x174>
1c00834c:	03400000 	andi	$r0,$r0,0x0
1c008350:	53f353ff 	b	-3248(0xffff350) # 1c0076a0 <main+0x174>
1c008354:	03400000 	andi	$r0,$r0,0x0
1c008358:	53f34bff 	b	-3256(0xffff348) # 1c0076a0 <main+0x174>
1c00835c:	03400000 	andi	$r0,$r0,0x0
1c008360:	53f343ff 	b	-3264(0xffff340) # 1c0076a0 <main+0x174>
1c008364:	03400000 	andi	$r0,$r0,0x0
1c008368:	53f33bff 	b	-3272(0xffff338) # 1c0076a0 <main+0x174>
1c00836c:	03400000 	andi	$r0,$r0,0x0
1c008370:	53f333ff 	b	-3280(0xffff330) # 1c0076a0 <main+0x174>
1c008374:	03400000 	andi	$r0,$r0,0x0
1c008378:	53f32bff 	b	-3288(0xffff328) # 1c0076a0 <main+0x174>
1c00837c:	03400000 	andi	$r0,$r0,0x0
1c008380:	53f323ff 	b	-3296(0xffff320) # 1c0076a0 <main+0x174>
1c008384:	03400000 	andi	$r0,$r0,0x0
1c008388:	53f31bff 	b	-3304(0xffff318) # 1c0076a0 <main+0x174>
1c00838c:	03400000 	andi	$r0,$r0,0x0
1c008390:	53f313ff 	b	-3312(0xffff310) # 1c0076a0 <main+0x174>
1c008394:	03400000 	andi	$r0,$r0,0x0
1c008398:	53f30bff 	b	-3320(0xffff308) # 1c0076a0 <main+0x174>
1c00839c:	03400000 	andi	$r0,$r0,0x0
1c0083a0:	53f303ff 	b	-3328(0xffff300) # 1c0076a0 <main+0x174>
1c0083a4:	03400000 	andi	$r0,$r0,0x0
1c0083a8:	53f2fbff 	b	-3336(0xffff2f8) # 1c0076a0 <main+0x174>
1c0083ac:	03400000 	andi	$r0,$r0,0x0
1c0083b0:	53f2f3ff 	b	-3344(0xffff2f0) # 1c0076a0 <main+0x174>
1c0083b4:	03400000 	andi	$r0,$r0,0x0
1c0083b8:	53f2ebff 	b	-3352(0xffff2e8) # 1c0076a0 <main+0x174>
1c0083bc:	03400000 	andi	$r0,$r0,0x0
1c0083c0:	53f2e3ff 	b	-3360(0xffff2e0) # 1c0076a0 <main+0x174>
1c0083c4:	03400000 	andi	$r0,$r0,0x0
1c0083c8:	53f2dbff 	b	-3368(0xffff2d8) # 1c0076a0 <main+0x174>
1c0083cc:	03400000 	andi	$r0,$r0,0x0
1c0083d0:	53f2d3ff 	b	-3376(0xffff2d0) # 1c0076a0 <main+0x174>
1c0083d4:	03400000 	andi	$r0,$r0,0x0
1c0083d8:	53f2cbff 	b	-3384(0xffff2c8) # 1c0076a0 <main+0x174>
1c0083dc:	03400000 	andi	$r0,$r0,0x0
1c0083e0:	53f2c3ff 	b	-3392(0xffff2c0) # 1c0076a0 <main+0x174>

1c0083e4 <interface_display>:
interface_display():
1c0083e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0083e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0083ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0083f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0083f4:	0015008c 	move	$r12,$r4
1c0083f8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0083fc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c008400:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c008404:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c008c80 <interface_display+0x89c>
1c008408:	0040898d 	slli.w	$r13,$r12,0x2
1c00840c:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c008410:	029cc18c 	addi.w	$r12,$r12,1840(0x730)
1c008414:	001031ac 	add.w	$r12,$r13,$r12
1c008418:	2880018c 	ld.w	$r12,$r12,0
1c00841c:	4c000180 	jirl	$r0,$r12,0
1c008420:	57d4c7ff 	bl	-11068(0xfffd4c4) # 1c0058e4 <OLED_CLS>
1c008424:	1c000068 	pcaddu12i	$r8,3(0x3)
1c008428:	02954108 	addi.w	$r8,$r8,1360(0x550)
1c00842c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008430:	02814006 	addi.w	$r6,$r0,80(0x50)
1c008434:	00150005 	move	$r5,$r0
1c008438:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00843c:	57d887ff 	bl	-10108(0xfffd884) # 1c005cc0 <OLED_DrawBMP>
1c008440:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c008444:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008448:	00150004 	move	$r4,$r0
1c00844c:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c005b40 <OLED_ShowCN>
1c008450:	02802006 	addi.w	$r6,$r0,8(0x8)
1c008454:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008458:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00845c:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c005b40 <OLED_ShowCN>
1c008460:	02803406 	addi.w	$r6,$r0,13(0xd)
1c008464:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008468:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c00846c:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c005b40 <OLED_ShowCN>
1c008470:	02803806 	addi.w	$r6,$r0,14(0xe)
1c008474:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008478:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c00847c:	57d6c7ff 	bl	-10556(0xfffd6c4) # 1c005b40 <OLED_ShowCN>
1c008480:	50080000 	b	2048(0x800) # 1c008c80 <interface_display+0x89c>
1c008484:	57d463ff 	bl	-11168(0xfffd460) # 1c0058e4 <OLED_CLS>
1c008488:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c00848c:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c008490:	00150005 	move	$r5,$r0
1c008494:	02802804 	addi.w	$r4,$r0,10(0xa)
1c008498:	57d79fff 	bl	-10340(0xfffd79c) # 1c005c34 <OLED_ShowCN_STR>
1c00849c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0084a0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0084a4:	029a20c6 	addi.w	$r6,$r6,1672(0x688)
1c0084a8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0084ac:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0084b0:	57d463ff 	bl	-11168(0xfffd460) # 1c005910 <OLED_ShowStr>
1c0084b4:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0084b8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0084bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0084c0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0084c4:	57d773ff 	bl	-10384(0xfffd770) # 1c005c34 <OLED_ShowCN_STR>
1c0084c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0084cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0084d0:	029980c6 	addi.w	$r6,$r6,1632(0x660)
1c0084d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0084d8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0084dc:	57d437ff 	bl	-11212(0xfffd434) # 1c005910 <OLED_ShowStr>
1c0084e0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0084e4:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0084e8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0084ec:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0084f0:	57d747ff 	bl	-10428(0xfffd744) # 1c005c34 <OLED_ShowCN_STR>
1c0084f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0084f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0084fc:	0298e0c6 	addi.w	$r6,$r6,1592(0x638)
1c008500:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008504:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008508:	57d40bff 	bl	-11256(0xfffd408) # 1c005910 <OLED_ShowStr>
1c00850c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008510:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008514:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008518:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00851c:	57d71bff 	bl	-10472(0xfffd718) # 1c005c34 <OLED_ShowCN_STR>
1c008520:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008524:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c008528:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00852c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008530:	57d707ff 	bl	-10492(0xfffd704) # 1c005c34 <OLED_ShowCN_STR>
1c008534:	50074c00 	b	1868(0x74c) # 1c008c80 <interface_display+0x89c>
1c008538:	57d3afff 	bl	-11348(0xfffd3ac) # 1c0058e4 <OLED_CLS>
1c00853c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008540:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008544:	00150005 	move	$r5,$r0
1c008548:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00854c:	57d6ebff 	bl	-10520(0xfffd6e8) # 1c005c34 <OLED_ShowCN_STR>
1c008550:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008554:	02803406 	addi.w	$r6,$r0,13(0xd)
1c008558:	00150005 	move	$r5,$r0
1c00855c:	02811804 	addi.w	$r4,$r0,70(0x46)
1c008560:	57d6d7ff 	bl	-10540(0xfffd6d4) # 1c005c34 <OLED_ShowCN_STR>
1c008564:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008568:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00856c:	029700c6 	addi.w	$r6,$r6,1472(0x5c0)
1c008570:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008574:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008578:	57d39bff 	bl	-11368(0xfffd398) # 1c005910 <OLED_ShowStr>
1c00857c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008580:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008584:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008588:	57d5bbff 	bl	-10824(0xfffd5b8) # 1c005b40 <OLED_ShowCN>
1c00858c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008590:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008594:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008598:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c00859c:	57d69bff 	bl	-10600(0xfffd698) # 1c005c34 <OLED_ShowCN_STR>
1c0085a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0085a8:	029620c6 	addi.w	$r6,$r6,1416(0x588)
1c0085ac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0085b0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0085b4:	57d35fff 	bl	-11428(0xfffd35c) # 1c005910 <OLED_ShowStr>
1c0085b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085bc:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0085c0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0085c4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0085c8:	57d66fff 	bl	-10644(0xfffd66c) # 1c005c34 <OLED_ShowCN_STR>
1c0085cc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085d0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0085d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0085d8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0085dc:	57d65bff 	bl	-10664(0xfffd658) # 1c005c34 <OLED_ShowCN_STR>
1c0085e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0085e8:	029530c6 	addi.w	$r6,$r6,1356(0x54c)
1c0085ec:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0085f0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0085f4:	57d31fff 	bl	-11492(0xfffd31c) # 1c005910 <OLED_ShowStr>
1c0085f8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0085fc:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008600:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008604:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008608:	57d62fff 	bl	-10708(0xfffd62c) # 1c005c34 <OLED_ShowCN_STR>
1c00860c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008610:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008614:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008618:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00861c:	57d61bff 	bl	-10728(0xfffd618) # 1c005c34 <OLED_ShowCN_STR>
1c008620:	50066000 	b	1632(0x660) # 1c008c80 <interface_display+0x89c>
1c008624:	57d2c3ff 	bl	-11584(0xfffd2c0) # 1c0058e4 <OLED_CLS>
1c008628:	02805806 	addi.w	$r6,$r0,22(0x16)
1c00862c:	00150005 	move	$r5,$r0
1c008630:	02802804 	addi.w	$r4,$r0,10(0xa)
1c008634:	57d50fff 	bl	-10996(0xfffd50c) # 1c005b40 <OLED_ShowCN>
1c008638:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00863c:	02808406 	addi.w	$r6,$r0,33(0x21)
1c008640:	00150005 	move	$r5,$r0
1c008644:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c008648:	57d5efff 	bl	-10772(0xfffd5ec) # 1c005c34 <OLED_ShowCN_STR>
1c00864c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c008650:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008654:	00150005 	move	$r5,$r0
1c008658:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c00865c:	57d5dbff 	bl	-10792(0xfffd5d8) # 1c005c34 <OLED_ShowCN_STR>
1c008660:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008664:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c008668:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00866c:	00150004 	move	$r4,$r0
1c008670:	57d5c7ff 	bl	-10812(0xfffd5c4) # 1c005c34 <OLED_ShowCN_STR>
1c008674:	50060c00 	b	1548(0x60c) # 1c008c80 <interface_display+0x89c>
1c008678:	57d26fff 	bl	-11668(0xfffd26c) # 1c0058e4 <OLED_CLS>
1c00867c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008680:	02805806 	addi.w	$r6,$r0,22(0x16)
1c008684:	00150005 	move	$r5,$r0
1c008688:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00868c:	57d5abff 	bl	-10840(0xfffd5a8) # 1c005c34 <OLED_ShowCN_STR>
1c008690:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008694:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c008698:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00869c:	00150004 	move	$r4,$r0
1c0086a0:	57d597ff 	bl	-10860(0xfffd594) # 1c005c34 <OLED_ShowCN_STR>
1c0086a4:	5005dc00 	b	1500(0x5dc) # 1c008c80 <interface_display+0x89c>
1c0086a8:	57d23fff 	bl	-11716(0xfffd23c) # 1c0058e4 <OLED_CLS>
1c0086ac:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0086b0:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c0086b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0086b8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0086bc:	57d57bff 	bl	-10888(0xfffd578) # 1c005c34 <OLED_ShowCN_STR>
1c0086c0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0086c4:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c0086c8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0086cc:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c0086d0:	57d567ff 	bl	-10908(0xfffd564) # 1c005c34 <OLED_ShowCN_STR>
1c0086d4:	5005ac00 	b	1452(0x5ac) # 1c008c80 <interface_display+0x89c>
1c0086d8:	57d20fff 	bl	-11764(0xfffd20c) # 1c0058e4 <OLED_CLS>
1c0086dc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0086e0:	02805806 	addi.w	$r6,$r0,22(0x16)
1c0086e4:	00150005 	move	$r5,$r0
1c0086e8:	00150004 	move	$r4,$r0
1c0086ec:	57d54bff 	bl	-10936(0xfffd548) # 1c005c34 <OLED_ShowCN_STR>
1c0086f0:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0086f4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0086f8:	00150005 	move	$r5,$r0
1c0086fc:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c008700:	57d537ff 	bl	-10956(0xfffd534) # 1c005c34 <OLED_ShowCN_STR>
1c008704:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008708:	02806406 	addi.w	$r6,$r0,25(0x19)
1c00870c:	00150005 	move	$r5,$r0
1c008710:	02818004 	addi.w	$r4,$r0,96(0x60)
1c008714:	57d523ff 	bl	-10976(0xfffd520) # 1c005c34 <OLED_ShowCN_STR>
1c008718:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00871c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c008720:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008724:	00150004 	move	$r4,$r0
1c008728:	57d50fff 	bl	-10996(0xfffd50c) # 1c005c34 <OLED_ShowCN_STR>
1c00872c:	50055400 	b	1364(0x554) # 1c008c80 <interface_display+0x89c>
1c008730:	57d1b7ff 	bl	-11852(0xfffd1b4) # 1c0058e4 <OLED_CLS>
1c008734:	02801007 	addi.w	$r7,$r0,4(0x4)
1c008738:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c00873c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008740:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c008744:	57d4f3ff 	bl	-11024(0xfffd4f0) # 1c005c34 <OLED_ShowCN_STR>
1c008748:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c00874c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008750:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c008754:	57d3efff 	bl	-11284(0xfffd3ec) # 1c005b40 <OLED_ShowCN>
1c008758:	02808006 	addi.w	$r6,$r0,32(0x20)
1c00875c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008760:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c008764:	57d3dfff 	bl	-11300(0xfffd3dc) # 1c005b40 <OLED_ShowCN>
1c008768:	50051800 	b	1304(0x518) # 1c008c80 <interface_display+0x89c>
1c00876c:	57d17bff 	bl	-11912(0xfffd178) # 1c0058e4 <OLED_CLS>
1c008770:	02801007 	addi.w	$r7,$r0,4(0x4)
1c008774:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c008778:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00877c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c008780:	57d4b7ff 	bl	-11084(0xfffd4b4) # 1c005c34 <OLED_ShowCN_STR>
1c008784:	5004fc00 	b	1276(0x4fc) # 1c008c80 <interface_display+0x89c>
1c008788:	57d15fff 	bl	-11940(0xfffd15c) # 1c0058e4 <OLED_CLS>
1c00878c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008790:	00150005 	move	$r5,$r0
1c008794:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008798:	57d3abff 	bl	-11352(0xfffd3a8) # 1c005b40 <OLED_ShowCN>
1c00879c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087a0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0087a4:	00150005 	move	$r5,$r0
1c0087a8:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0087ac:	57d48bff 	bl	-11128(0xfffd488) # 1c005c34 <OLED_ShowCN_STR>
1c0087b0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087b4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0087b8:	028dd0c6 	addi.w	$r6,$r6,884(0x374)
1c0087bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087c0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0087c4:	57d14fff 	bl	-11956(0xfffd14c) # 1c005910 <OLED_ShowStr>
1c0087c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087cc:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0087d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087d4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0087d8:	57d45fff 	bl	-11172(0xfffd45c) # 1c005c34 <OLED_ShowCN_STR>
1c0087dc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0087e0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0087e4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0087e8:	57d35bff 	bl	-11432(0xfffd358) # 1c005b40 <OLED_ShowCN>
1c0087ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0087f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0087f4:	028cf0c6 	addi.w	$r6,$r6,828(0x33c)
1c0087f8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0087fc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008800:	57d113ff 	bl	-12016(0xfffd110) # 1c005910 <OLED_ShowStr>
1c008804:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008808:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c00880c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008810:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008814:	57d423ff 	bl	-11232(0xfffd420) # 1c005c34 <OLED_ShowCN_STR>
1c008818:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00881c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008820:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008824:	57d31fff 	bl	-11492(0xfffd31c) # 1c005b40 <OLED_ShowCN>
1c008828:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c00882c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008830:	02816004 	addi.w	$r4,$r0,88(0x58)
1c008834:	57d30fff 	bl	-11508(0xfffd30c) # 1c005b40 <OLED_ShowCN>
1c008838:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00883c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008840:	028bd0c6 	addi.w	$r6,$r6,756(0x2f4)
1c008844:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008848:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00884c:	57d0c7ff 	bl	-12092(0xfffd0c4) # 1c005910 <OLED_ShowStr>
1c008850:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008854:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008858:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00885c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008860:	57d3d7ff 	bl	-11308(0xfffd3d4) # 1c005c34 <OLED_ShowCN_STR>
1c008864:	50041c00 	b	1052(0x41c) # 1c008c80 <interface_display+0x89c>
1c008868:	57d07fff 	bl	-12164(0xfffd07c) # 1c0058e4 <OLED_CLS>
1c00886c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008870:	02802406 	addi.w	$r6,$r0,9(0x9)
1c008874:	00150005 	move	$r5,$r0
1c008878:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00887c:	57d3bbff 	bl	-11336(0xfffd3b8) # 1c005c34 <OLED_ShowCN_STR>
1c008880:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008884:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008888:	00150005 	move	$r5,$r0
1c00888c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008890:	57d3a7ff 	bl	-11356(0xfffd3a4) # 1c005c34 <OLED_ShowCN_STR>
1c008894:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008898:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00889c:	028a40c6 	addi.w	$r6,$r6,656(0x290)
1c0088a0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0088a4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0088a8:	57d06bff 	bl	-12184(0xfffd068) # 1c005910 <OLED_ShowStr>
1c0088ac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088b0:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0088b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0088b8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0088bc:	57d37bff 	bl	-11400(0xfffd378) # 1c005c34 <OLED_ShowCN_STR>
1c0088c0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088c4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0088c8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0088cc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0088d0:	57d367ff 	bl	-11420(0xfffd364) # 1c005c34 <OLED_ShowCN_STR>
1c0088d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0088dc:	028950c6 	addi.w	$r6,$r6,596(0x254)
1c0088e0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0088e4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0088e8:	57d02bff 	bl	-12248(0xfffd028) # 1c005910 <OLED_ShowStr>
1c0088ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0088f0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0088f4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0088f8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0088fc:	57d33bff 	bl	-11464(0xfffd338) # 1c005c34 <OLED_ShowCN_STR>
1c008900:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008904:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008908:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00890c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008910:	57d327ff 	bl	-11484(0xfffd324) # 1c005c34 <OLED_ShowCN_STR>
1c008914:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008918:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00891c:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c008920:	57d223ff 	bl	-11744(0xfffd220) # 1c005b40 <OLED_ShowCN>
1c008924:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008928:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00892c:	028820c6 	addi.w	$r6,$r6,520(0x208)
1c008930:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008934:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008938:	57cfdbff 	bl	-12328(0xfffcfd8) # 1c005910 <OLED_ShowStr>
1c00893c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008940:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008944:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008948:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00894c:	57d2ebff 	bl	-11544(0xfffd2e8) # 1c005c34 <OLED_ShowCN_STR>
1c008950:	50033000 	b	816(0x330) # 1c008c80 <interface_display+0x89c>
1c008954:	57cf93ff 	bl	-12400(0xfffcf90) # 1c0058e4 <OLED_CLS>
1c008958:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00895c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008960:	00150005 	move	$r5,$r0
1c008964:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008968:	57d2cfff 	bl	-11572(0xfffd2cc) # 1c005c34 <OLED_ShowCN_STR>
1c00896c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008970:	00150005 	move	$r5,$r0
1c008974:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008978:	57d1cbff 	bl	-11832(0xfffd1c8) # 1c005b40 <OLED_ShowCN>
1c00897c:	50030400 	b	772(0x304) # 1c008c80 <interface_display+0x89c>
1c008980:	57cf67ff 	bl	-12444(0xfffcf64) # 1c0058e4 <OLED_CLS>
1c008984:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008988:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c00898c:	00150005 	move	$r5,$r0
1c008990:	02809004 	addi.w	$r4,$r0,36(0x24)
1c008994:	57d2a3ff 	bl	-11616(0xfffd2a0) # 1c005c34 <OLED_ShowCN_STR>
1c008998:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00899c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0089a0:	00150005 	move	$r5,$r0
1c0089a4:	02811004 	addi.w	$r4,$r0,68(0x44)
1c0089a8:	57d28fff 	bl	-11636(0xfffd28c) # 1c005c34 <OLED_ShowCN_STR>
1c0089ac:	5002d400 	b	724(0x2d4) # 1c008c80 <interface_display+0x89c>
1c0089b0:	57cf37ff 	bl	-12492(0xfffcf34) # 1c0058e4 <OLED_CLS>
1c0089b4:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c0089b8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089bc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0089c0:	57d183ff 	bl	-11904(0xfffd180) # 1c005b40 <OLED_ShowCN>
1c0089c4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089c8:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0089cc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089d0:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0089d4:	57d263ff 	bl	-11680(0xfffd260) # 1c005c34 <OLED_ShowCN_STR>
1c0089d8:	5002a800 	b	680(0x2a8) # 1c008c80 <interface_display+0x89c>
1c0089dc:	57cf0bff 	bl	-12536(0xfffcf08) # 1c0058e4 <OLED_CLS>
1c0089e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0089e4:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0089e8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089ec:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0089f0:	57d247ff 	bl	-11708(0xfffd244) # 1c005c34 <OLED_ShowCN_STR>
1c0089f4:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c0089f8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0089fc:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c008a00:	57d143ff 	bl	-11968(0xfffd140) # 1c005b40 <OLED_ShowCN>
1c008a04:	02808006 	addi.w	$r6,$r0,32(0x20)
1c008a08:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a0c:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c008a10:	57d133ff 	bl	-11984(0xfffd130) # 1c005b40 <OLED_ShowCN>
1c008a14:	50026c00 	b	620(0x26c) # 1c008c80 <interface_display+0x89c>
1c008a18:	57cecfff 	bl	-12596(0xfffcecc) # 1c0058e4 <OLED_CLS>
1c008a1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a20:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008a24:	00150005 	move	$r5,$r0
1c008a28:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c008a2c:	57d20bff 	bl	-11768(0xfffd208) # 1c005c34 <OLED_ShowCN_STR>
1c008a30:	02801806 	addi.w	$r6,$r0,6(0x6)
1c008a34:	00150005 	move	$r5,$r0
1c008a38:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c008a3c:	57d107ff 	bl	-12028(0xfffd104) # 1c005b40 <OLED_ShowCN>
1c008a40:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008a44:	00150005 	move	$r5,$r0
1c008a48:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c008a4c:	57d0f7ff 	bl	-12044(0xfffd0f4) # 1c005b40 <OLED_ShowCN>
1c008a50:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008a54:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008a58:	00150004 	move	$r4,$r0
1c008a5c:	57d0e7ff 	bl	-12060(0xfffd0e4) # 1c005b40 <OLED_ShowCN>
1c008a60:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008a64:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008a68:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008a6c:	57d0d7ff 	bl	-12076(0xfffd0d4) # 1c005b40 <OLED_ShowCN>
1c008a70:	50021000 	b	528(0x210) # 1c008c80 <interface_display+0x89c>
1c008a74:	57ce73ff 	bl	-12688(0xfffce70) # 1c0058e4 <OLED_CLS>
1c008a78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a7c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008a80:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a84:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008a88:	57d1afff 	bl	-11860(0xfffd1ac) # 1c005c34 <OLED_ShowCN_STR>
1c008a8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008a90:	02806406 	addi.w	$r6,$r0,25(0x19)
1c008a94:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008a98:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008a9c:	57d19bff 	bl	-11880(0xfffd198) # 1c005c34 <OLED_ShowCN_STR>
1c008aa0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008aa4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008aa8:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008aac:	57d097ff 	bl	-12140(0xfffd094) # 1c005b40 <OLED_ShowCN>
1c008ab0:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008ab4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008ab8:	00150004 	move	$r4,$r0
1c008abc:	57d087ff 	bl	-12156(0xfffd084) # 1c005b40 <OLED_ShowCN>
1c008ac0:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008ac4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008ac8:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008acc:	57d077ff 	bl	-12172(0xfffd074) # 1c005b40 <OLED_ShowCN>
1c008ad0:	5001b000 	b	432(0x1b0) # 1c008c80 <interface_display+0x89c>
1c008ad4:	57ce13ff 	bl	-12784(0xfffce10) # 1c0058e4 <OLED_CLS>
1c008ad8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008adc:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008ae0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008ae4:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008ae8:	57d14fff 	bl	-11956(0xfffd14c) # 1c005c34 <OLED_ShowCN_STR>
1c008aec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008af0:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c008af4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008af8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008afc:	57d13bff 	bl	-11976(0xfffd138) # 1c005c34 <OLED_ShowCN_STR>
1c008b00:	50018000 	b	384(0x180) # 1c008c80 <interface_display+0x89c>
1c008b04:	57cde3ff 	bl	-12832(0xfffcde0) # 1c0058e4 <OLED_CLS>
1c008b08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b0c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008b10:	00150005 	move	$r5,$r0
1c008b14:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008b18:	57d11fff 	bl	-12004(0xfffd11c) # 1c005c34 <OLED_ShowCN_STR>
1c008b1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b20:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c008b24:	00150005 	move	$r5,$r0
1c008b28:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008b2c:	57d10bff 	bl	-12024(0xfffd108) # 1c005c34 <OLED_ShowCN_STR>
1c008b30:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b34:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008b38:	02bfd0c6 	addi.w	$r6,$r6,-12(0xff4)
1c008b3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b40:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008b44:	57cdcfff 	bl	-12852(0xfffcdcc) # 1c005910 <OLED_ShowStr>
1c008b48:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b4c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008b50:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b54:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008b58:	57d0dfff 	bl	-12068(0xfffd0dc) # 1c005c34 <OLED_ShowCN_STR>
1c008b5c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b60:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008b64:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008b68:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008b6c:	57d0cbff 	bl	-12088(0xfffd0c8) # 1c005c34 <OLED_ShowCN_STR>
1c008b70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b74:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008b78:	02bee0c6 	addi.w	$r6,$r6,-72(0xfb8)
1c008b7c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008b80:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008b84:	57cd8fff 	bl	-12916(0xfffcd8c) # 1c005910 <OLED_ShowStr>
1c008b88:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008b8c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008b90:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008b94:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008b98:	57d09fff 	bl	-12132(0xfffd09c) # 1c005c34 <OLED_ShowCN_STR>
1c008b9c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008ba0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008ba4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008ba8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008bac:	57d08bff 	bl	-12152(0xfffd088) # 1c005c34 <OLED_ShowCN_STR>
1c008bb0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008bb4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008bb8:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c008bbc:	57cf87ff 	bl	-12412(0xfffcf84) # 1c005b40 <OLED_ShowCN>
1c008bc0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bc4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c008bc8:	02bdb0c6 	addi.w	$r6,$r6,-148(0xf6c)
1c008bcc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008bd0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c008bd4:	57cd3fff 	bl	-12996(0xfffcd3c) # 1c005910 <OLED_ShowStr>
1c008bd8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bdc:	02809806 	addi.w	$r6,$r0,38(0x26)
1c008be0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008be4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008be8:	57d04fff 	bl	-12212(0xfffd04c) # 1c005c34 <OLED_ShowCN_STR>
1c008bec:	50009400 	b	148(0x94) # 1c008c80 <interface_display+0x89c>
1c008bf0:	57ccf7ff 	bl	-13068(0xfffccf4) # 1c0058e4 <OLED_CLS>
1c008bf4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008bf8:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c008bfc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c00:	02806404 	addi.w	$r4,$r0,25(0x19)
1c008c04:	57d033ff 	bl	-12240(0xfffd030) # 1c005c34 <OLED_ShowCN_STR>
1c008c08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c0c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008c10:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c14:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c008c18:	57d01fff 	bl	-12260(0xfffd01c) # 1c005c34 <OLED_ShowCN_STR>
1c008c1c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c008c20:	02800805 	addi.w	$r5,$r0,2(0x2)
1c008c24:	02816404 	addi.w	$r4,$r0,89(0x59)
1c008c28:	57cf1bff 	bl	-12520(0xfffcf18) # 1c005b40 <OLED_ShowCN>
1c008c2c:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c008c30:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008c34:	00150004 	move	$r4,$r0
1c008c38:	57cf0bff 	bl	-12536(0xfffcf08) # 1c005b40 <OLED_ShowCN>
1c008c3c:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c008c40:	02801805 	addi.w	$r5,$r0,6(0x6)
1c008c44:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c008c48:	57cefbff 	bl	-12552(0xfffcef8) # 1c005b40 <OLED_ShowCN>
1c008c4c:	50003400 	b	52(0x34) # 1c008c80 <interface_display+0x89c>
1c008c50:	57cc97ff 	bl	-13164(0xfffcc94) # 1c0058e4 <OLED_CLS>
1c008c54:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c58:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c008c5c:	00150005 	move	$r5,$r0
1c008c60:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c008c64:	57cfd3ff 	bl	-12336(0xfffcfd0) # 1c005c34 <OLED_ShowCN_STR>
1c008c68:	02800807 	addi.w	$r7,$r0,2(0x2)
1c008c6c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c008c70:	00150005 	move	$r5,$r0
1c008c74:	02812004 	addi.w	$r4,$r0,72(0x48)
1c008c78:	57cfbfff 	bl	-12356(0xfffcfbc) # 1c005c34 <OLED_ShowCN_STR>
1c008c7c:	03400000 	andi	$r0,$r0,0x0
1c008c80:	03400000 	andi	$r0,$r0,0x0
1c008c84:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008c88:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008c8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008c90:	4c000020 	jirl	$r0,$r1,0

1c008c94 <Write_ID>:
Write_ID():
1c008c94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008c98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008c9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c008ca0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008ca4:	57e713ff 	bl	-6384(0xfffe710) # 1c0073b4 <Return_Card>
1c008ca8:	0015008c 	move	$r12,$r4
1c008cac:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c008cb0:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008cb4:	4001ed80 	beqz	$r12,492(0x1ec) # 1c008ea0 <Write_ID+0x20c>
1c008cb8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008cbc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008cc0:	50004400 	b	68(0x44) # 1c008d04 <Write_ID+0x70>
1c008cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008cc8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008ccc:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008cd0:	02b6e1ad 	addi.w	$r13,$r13,-584(0xdb8)
1c008cd4:	0040898c 	slli.w	$r12,$r12,0x2
1c008cd8:	001031ac 	add.w	$r12,$r13,$r12
1c008cdc:	2880018d 	ld.w	$r13,$r12,0
1c008ce0:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c008ce4:	02b691ce 	addi.w	$r14,$r14,-604(0xda4)
1c008ce8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008cec:	0040898c 	slli.w	$r12,$r12,0x2
1c008cf0:	001031cc 	add.w	$r12,$r14,$r12
1c008cf4:	2980018d 	st.w	$r13,$r12,0
1c008cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008cfc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c008d00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008d08:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c008cc4 <Write_ID+0x30>
1c008d0c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c008d10:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008d14:	02b5d18c 	addi.w	$r12,$r12,-652(0xd74)
1c008d18:	2980018d 	st.w	$r13,$r12,0
1c008d1c:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008d20:	02804008 	addi.w	$r8,$r0,16(0x10)
1c008d24:	02801407 	addi.w	$r7,$r0,5(0x5)
1c008d28:	00150186 	move	$r6,$r12
1c008d2c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c008d30:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c008d34:	57d24bff 	bl	-11704(0xfffd248) # 1c005f7c <OLED_ShowNum>
1c008d38:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c008d3c:	03bf918c 	ori	$r12,$r12,0xfe4
1c008d40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008d44:	50008400 	b	132(0x84) # 1c008dc8 <Write_ID+0x134>
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
1c008dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c008dcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008dd0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c008dd4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008d48 <Write_ID+0xb4>
1c008dd8:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c008ddc:	57f60bff 	bl	-2552(0xffff608) # 1c0083e4 <interface_display>
1c008de0:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c008de4:	03bf918c 	ori	$r12,$r12,0xfe4
1c008de8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008dec:	50008400 	b	132(0x84) # 1c008e70 <Write_ID+0x1dc>
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
1c008e58:	03400000 	andi	$r0,$r0,0x0
1c008e5c:	03400000 	andi	$r0,$r0,0x0
1c008e60:	03400000 	andi	$r0,$r0,0x0
1c008e64:	03400000 	andi	$r0,$r0,0x0
1c008e68:	03400000 	andi	$r0,$r0,0x0
1c008e6c:	03400000 	andi	$r0,$r0,0x0
1c008e70:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008e74:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008e78:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c008e7c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008df0 <Write_ID+0x15c>
1c008e80:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008e84:	02b0658c 	addi.w	$r12,$r12,-999(0xc19)
1c008e88:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008e8c:	2900018d 	st.b	$r13,$r12,0
1c008e90:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008e94:	02b0218c 	addi.w	$r12,$r12,-1016(0xc08)
1c008e98:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008e9c:	2900018d 	st.b	$r13,$r12,0
1c008ea0:	03400000 	andi	$r0,$r0,0x0
1c008ea4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008ea8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008eac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008eb0:	4c000020 	jirl	$r0,$r1,0

1c008eb4 <Delate_ID>:
Delate_ID():
1c008eb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008eb8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c008ebc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008ec0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008ec4:	50002800 	b	40(0x28) # 1c008eec <Delate_ID+0x38>
1c008ec8:	1cc7ff2d 	pcaddu12i	$r13,409593(0x63ff9)
1c008ecc:	02aef1ad 	addi.w	$r13,$r13,-1092(0xbbc)
1c008ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008ed4:	0040898c 	slli.w	$r12,$r12,0x2
1c008ed8:	001031ac 	add.w	$r12,$r13,$r12
1c008edc:	29800180 	st.w	$r0,$r12,0
1c008ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008ee4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008ee8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008eec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008ef0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008ef4:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c008ec8 <Delate_ID+0x14>
1c008ef8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c008efc:	03bf918c 	ori	$r12,$r12,0xfe4
1c008f00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008f04:	50008400 	b	132(0x84) # 1c008f88 <Delate_ID+0xd4>
1c008f08:	03400000 	andi	$r0,$r0,0x0
1c008f0c:	03400000 	andi	$r0,$r0,0x0
1c008f10:	03400000 	andi	$r0,$r0,0x0
1c008f14:	03400000 	andi	$r0,$r0,0x0
1c008f18:	03400000 	andi	$r0,$r0,0x0
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
1c008f88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c008f8c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c008f90:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c008f94:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c008f08 <Delate_ID+0x54>
1c008f98:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008f9c:	02ac058c 	addi.w	$r12,$r12,-1279(0xb01)
1c008fa0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008fa4:	2900018d 	st.b	$r13,$r12,0
1c008fa8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c008fac:	02abc18c 	addi.w	$r12,$r12,-1296(0xaf0)
1c008fb0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c008fb4:	2900018d 	st.b	$r13,$r12,0
1c008fb8:	03400000 	andi	$r0,$r0,0x0
1c008fbc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c008fc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008fc4:	4c000020 	jirl	$r0,$r1,0

1c008fc8 <Read_ID>:
Read_ID():
1c008fc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c008fcc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c008fd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c008fd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c008fd8:	57e3dfff 	bl	-7204(0xfffe3dc) # 1c0073b4 <Return_Card>
1c008fdc:	0015008c 	move	$r12,$r4
1c008fe0:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c008fe4:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c008fe8:	40026980 	beqz	$r12,616(0x268) # 1c009250 <Read_ID+0x288>
1c008fec:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c008ff0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c008ff4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c008ff8:	6802598d 	bltu	$r12,$r13,600(0x258) # 1c009250 <Read_ID+0x288>
1c008ffc:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c009000:	1cc7ff2e 	pcaddu12i	$r14,409593(0x63ff9)
1c009004:	02aa11ce 	addi.w	$r14,$r14,-1404(0xa84)
1c009008:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00900c:	0040898c 	slli.w	$r12,$r12,0x2
1c009010:	001031cc 	add.w	$r12,$r14,$r12
1c009014:	2880018c 	ld.w	$r12,$r12,0
1c009018:	5c0181ac 	bne	$r13,$r12,384(0x180) # 1c009198 <Read_ID+0x1d0>
1c00901c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c009020:	57f3c7ff 	bl	-3132(0xffff3c4) # 1c0083e4 <interface_display>
1c009024:	57a8f3ff 	bl	-22288(0xfffa8f0) # 1c003914 <SG90_Open>
1c009028:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c00902c:	03bdc58c 	ori	$r12,$r12,0xf71
1c009030:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009034:	50008400 	b	132(0x84) # 1c0090b8 <Read_ID+0xf0>
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
1c0090b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0090bc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0090c0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0090c4:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009038 <Read_ID+0x70>
1c0090c8:	57a87bff 	bl	-22408(0xfffa878) # 1c003940 <SG90_Close>
1c0090cc:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0090d0:	57f317ff 	bl	-3308(0xffff314) # 1c0083e4 <interface_display>
1c0090d4:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0090d8:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0090dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0090e0:	50008400 	b	132(0x84) # 1c009164 <Read_ID+0x19c>
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
1c00915c:	03400000 	andi	$r0,$r0,0x0
1c009160:	03400000 	andi	$r0,$r0,0x0
1c009164:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009168:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00916c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c009170:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0090e4 <Read_ID+0x11c>
1c009174:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009178:	02a4918c 	addi.w	$r12,$r12,-1756(0x924)
1c00917c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c009180:	2900018d 	st.b	$r13,$r12,0
1c009184:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c009188:	02a4558c 	addi.w	$r12,$r12,-1771(0x915)
1c00918c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c009190:	2900018d 	st.b	$r13,$r12,0
1c009194:	5000bc00 	b	188(0xbc) # 1c009250 <Read_ID+0x288>
1c009198:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00919c:	57f24bff 	bl	-3512(0xffff248) # 1c0083e4 <interface_display>
1c0091a0:	57c143ff 	bl	-16064(0xfffc140) # 1c0052e0 <Buzzer>
1c0091a4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0091a8:	03bf918c 	ori	$r12,$r12,0xfe4
1c0091ac:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0091b0:	50008400 	b	132(0x84) # 1c009234 <Read_ID+0x26c>
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
1c009224:	03400000 	andi	$r0,$r0,0x0
1c009228:	03400000 	andi	$r0,$r0,0x0
1c00922c:	03400000 	andi	$r0,$r0,0x0
1c009230:	03400000 	andi	$r0,$r0,0x0
1c009234:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009238:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00923c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009240:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0091b4 <Read_ID+0x1ec>
1c009244:	02801004 	addi.w	$r4,$r0,4(0x4)
1c009248:	57f19fff 	bl	-3684(0xffff19c) # 1c0083e4 <interface_display>
1c00924c:	03400000 	andi	$r0,$r0,0x0
1c009250:	03400000 	andi	$r0,$r0,0x0
1c009254:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009258:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00925c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009260:	4c000020 	jirl	$r0,$r1,0

1c009264 <Key_main>:
Key_main():
1c009264:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c009268:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00926c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c009270:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009274:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c009278:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00927c:	0283c58c 	addi.w	$r12,$r12,241(0xf1)
1c009280:	2a00018c 	ld.bu	$r12,$r12,0
1c009284:	40057d80 	beqz	$r12,1404(0x57c) # 1c009800 <Key_main+0x59c>
1c009288:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00928c:	0283858c 	addi.w	$r12,$r12,225(0xe1)
1c009290:	2a00018d 	ld.bu	$r13,$r12,0
1c009294:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009298:	6802218d 	bltu	$r12,$r13,544(0x220) # 1c0094b8 <Key_main+0x254>
1c00929c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092a0:	28b5b18c 	ld.w	$r12,$r12,-660(0xd6c)
1c0092a4:	2880018d 	ld.w	$r13,$r12,0
1c0092a8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0092ac:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c00932c <Key_main+0xc8>
1c0092b0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092b4:	28b5a18c 	ld.w	$r12,$r12,-664(0xd68)
1c0092b8:	2880018d 	ld.w	$r13,$r12,0
1c0092bc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0092c0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0092c4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092c8:	28b5518c 	ld.w	$r12,$r12,-684(0xd54)
1c0092cc:	2980018d 	st.w	$r13,$r12,0
1c0092d0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0092d4:	0282658c 	addi.w	$r12,$r12,153(0x99)
1c0092d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0092dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0092e0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0092e4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0092ec <Key_main+0x88>
1c0092e8:	002a0007 	break	0x7
1c0092ec:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0092f0:	0015018d 	move	$r13,$r12
1c0092f4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0092f8:	28b4918c 	ld.w	$r12,$r12,-732(0xd24)
1c0092fc:	2880018c 	ld.w	$r12,$r12,0
1c009300:	001031ad 	add.w	$r13,$r13,$r12
1c009304:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009308:	28b4518c 	ld.w	$r12,$r12,-748(0xd14)
1c00930c:	2980018d 	st.w	$r13,$r12,0
1c009310:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009314:	28b3e18c 	ld.w	$r12,$r12,-776(0xcf8)
1c009318:	2880018c 	ld.w	$r12,$r12,0
1c00931c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c009320:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009324:	28b3a18c 	ld.w	$r12,$r12,-792(0xce8)
1c009328:	2980018d 	st.w	$r13,$r12,0
1c00932c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009330:	28b3b18c 	ld.w	$r12,$r12,-788(0xcec)
1c009334:	2880018c 	ld.w	$r12,$r12,0
1c009338:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00933c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009340:	28b3318c 	ld.w	$r12,$r12,-820(0xccc)
1c009344:	2880018c 	ld.w	$r12,$r12,0
1c009348:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00934c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009350:	50006400 	b	100(0x64) # 1c0093b4 <Key_main+0x150>
1c009354:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c009358:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00935c:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c009360:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009368 <Key_main+0x104>
1c009364:	002a0007 	break	0x7
1c009368:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00936c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c009370:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009374:	002135cc 	div.wu	$r12,$r14,$r13
1c009378:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009380 <Key_main+0x11c>
1c00937c:	002a0007 	break	0x7
1c009380:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009388:	00408d8c 	slli.w	$r12,$r12,0x3
1c00938c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009390:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009394:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009398:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c00939c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0093a0:	00150184 	move	$r4,$r12
1c0093a4:	57cbdbff 	bl	-13352(0xfffcbd8) # 1c005f7c <OLED_ShowNum>
1c0093a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0093ac:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0093b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0093b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0093b8:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c009354 <Key_main+0xf0>
1c0093bc:	140002cc 	lu12i.w	$r12,22(0x16)
1c0093c0:	03b3298c 	ori	$r12,$r12,0xcca
1c0093c4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0093c8:	50008400 	b	132(0x84) # 1c00944c <Key_main+0x1e8>
1c0093cc:	03400000 	andi	$r0,$r0,0x0
1c0093d0:	03400000 	andi	$r0,$r0,0x0
1c0093d4:	03400000 	andi	$r0,$r0,0x0
1c0093d8:	03400000 	andi	$r0,$r0,0x0
1c0093dc:	03400000 	andi	$r0,$r0,0x0
1c0093e0:	03400000 	andi	$r0,$r0,0x0
1c0093e4:	03400000 	andi	$r0,$r0,0x0
1c0093e8:	03400000 	andi	$r0,$r0,0x0
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
1c00944c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c009450:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009454:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009458:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0093cc <Key_main+0x168>
1c00945c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009460:	50004400 	b	68(0x44) # 1c0094a4 <Key_main+0x240>
1c009464:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009468:	28ae918c 	ld.w	$r12,$r12,-1116(0xba4)
1c00946c:	2880018d 	ld.w	$r13,$r12,0
1c009470:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009474:	001131ac 	sub.w	$r12,$r13,$r12
1c009478:	00408d8c 	slli.w	$r12,$r12,0x3
1c00947c:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c009480:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009484:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009488:	029ac0c6 	addi.w	$r6,$r6,1712(0x6b0)
1c00948c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009490:	00150184 	move	$r4,$r12
1c009494:	57c47fff 	bl	-15236(0xfffc47c) # 1c005910 <OLED_ShowStr>
1c009498:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00949c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0094a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0094a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0094a8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094ac:	28ad818c 	ld.w	$r12,$r12,-1184(0xb60)
1c0094b0:	2880018c 	ld.w	$r12,$r12,0
1c0094b4:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c009464 <Key_main+0x200>
1c0094b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0094bc:	50004400 	b	68(0x44) # 1c009500 <Key_main+0x29c>
1c0094c0:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c0094c4:	0296c1ad 	addi.w	$r13,$r13,1456(0x5b0)
1c0094c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094cc:	0040898c 	slli.w	$r12,$r12,0x2
1c0094d0:	001031ac 	add.w	$r12,$r13,$r12
1c0094d4:	2880018d 	ld.w	$r13,$r12,0
1c0094d8:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0094dc:	28ad018c 	ld.w	$r12,$r12,-1216(0xb40)
1c0094e0:	2880018c 	ld.w	$r12,$r12,0
1c0094e4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0094f4 <Key_main+0x290>
1c0094e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0094ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0094f0:	50001c00 	b	28(0x1c) # 1c00950c <Key_main+0x2a8>
1c0094f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0094f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0094fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009500:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009504:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009508:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c0094c0 <Key_main+0x25c>
1c00950c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009510:	02b9758c 	addi.w	$r12,$r12,-419(0xe5d)
1c009514:	2a00018d 	ld.bu	$r13,$r12,0
1c009518:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00951c:	5c0275ac 	bne	$r13,$r12,628(0x274) # 1c009790 <Key_main+0x52c>
1c009520:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c009524:	40019d80 	beqz	$r12,412(0x19c) # 1c0096c0 <Key_main+0x45c>
1c009528:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00952c:	57eebbff 	bl	-4424(0xfffeeb8) # 1c0083e4 <interface_display>
1c009530:	57a3e7ff 	bl	-23580(0xfffa3e4) # 1c003914 <SG90_Open>
1c009534:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c009538:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c00953c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c009540:	50008400 	b	132(0x84) # 1c0095c4 <Key_main+0x360>
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
1c0095ac:	03400000 	andi	$r0,$r0,0x0
1c0095b0:	03400000 	andi	$r0,$r0,0x0
1c0095b4:	03400000 	andi	$r0,$r0,0x0
1c0095b8:	03400000 	andi	$r0,$r0,0x0
1c0095bc:	03400000 	andi	$r0,$r0,0x0
1c0095c0:	03400000 	andi	$r0,$r0,0x0
1c0095c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0095c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0095cc:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0095d0:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009544 <Key_main+0x2e0>
1c0095d4:	57bdebff 	bl	-16920(0xfffbde8) # 1c0053bc <Buzzer_one>
1c0095d8:	57a36bff 	bl	-23704(0xfffa368) # 1c003940 <SG90_Close>
1c0095dc:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0095e0:	57ee07ff 	bl	-4604(0xfffee04) # 1c0083e4 <interface_display>
1c0095e4:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0095e8:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0095ec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0095f0:	50008400 	b	132(0x84) # 1c009674 <Key_main+0x410>
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
1c009670:	03400000 	andi	$r0,$r0,0x0
1c009674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c009678:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00967c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c009680:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0095f4 <Key_main+0x390>
1c009684:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009688:	0290518c 	addi.w	$r12,$r12,1044(0x414)
1c00968c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c009690:	2900018d 	st.b	$r13,$r12,0
1c009694:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009698:	0290158c 	addi.w	$r12,$r12,1029(0x405)
1c00969c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0096a0:	2900018d 	st.b	$r13,$r12,0
1c0096a4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0096a8:	28a5d18c 	ld.w	$r12,$r12,-1676(0x974)
1c0096ac:	29800180 	st.w	$r0,$r12,0
1c0096b0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0096b4:	28a5618c 	ld.w	$r12,$r12,-1704(0x958)
1c0096b8:	29800180 	st.w	$r0,$r12,0
1c0096bc:	5000d400 	b	212(0xd4) # 1c009790 <Key_main+0x52c>
1c0096c0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0096c4:	57ed23ff 	bl	-4832(0xfffed20) # 1c0083e4 <interface_display>
1c0096c8:	57bc1bff 	bl	-17384(0xfffbc18) # 1c0052e0 <Buzzer>
1c0096cc:	57a277ff 	bl	-23948(0xfffa274) # 1c003940 <SG90_Close>
1c0096d0:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0096d4:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0096d8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0096dc:	50008400 	b	132(0x84) # 1c009760 <Key_main+0x4fc>
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
1c009760:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c009764:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009768:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00976c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0096e0 <Key_main+0x47c>
1c009770:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009774:	28a2a18c 	ld.w	$r12,$r12,-1880(0x8a8)
1c009778:	29800180 	st.w	$r0,$r12,0
1c00977c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009780:	28a2318c 	ld.w	$r12,$r12,-1908(0x88c)
1c009784:	29800180 	st.w	$r0,$r12,0
1c009788:	02801404 	addi.w	$r4,$r0,5(0x5)
1c00978c:	57ec5bff 	bl	-5032(0xfffec58) # 1c0083e4 <interface_display>
1c009790:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009794:	02af658c 	addi.w	$r12,$r12,-1063(0xbd9)
1c009798:	2a00018d 	ld.bu	$r13,$r12,0
1c00979c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0097a0:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009800 <Key_main+0x59c>
1c0097a4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0097a8:	28a1d18c 	ld.w	$r12,$r12,-1932(0x874)
1c0097ac:	29800180 	st.w	$r0,$r12,0
1c0097b0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0097b4:	28a1618c 	ld.w	$r12,$r12,-1960(0x858)
1c0097b8:	29800180 	st.w	$r0,$r12,0
1c0097bc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0097c0:	50003400 	b	52(0x34) # 1c0097f4 <Key_main+0x590>
1c0097c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0097c8:	00408d8c 	slli.w	$r12,$r12,0x3
1c0097cc:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0097d0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0097d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0097d8:	028d90c6 	addi.w	$r6,$r6,868(0x364)
1c0097dc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0097e0:	00150184 	move	$r4,$r12
1c0097e4:	57c12fff 	bl	-16084(0xfffc12c) # 1c005910 <OLED_ShowStr>
1c0097e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0097ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0097f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0097f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0097f8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0097fc:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0097c4 <Key_main+0x560>
1c009800:	03400000 	andi	$r0,$r0,0x0
1c009804:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009808:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00980c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009810:	4c000020 	jirl	$r0,$r1,0

1c009814 <Key>:
Key():
1c009814:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c009818:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00981c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c009820:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c009824:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009828:	02ad158c 	addi.w	$r12,$r12,-1211(0xb45)
1c00982c:	2a00018c 	ld.bu	$r12,$r12,0
1c009830:	40044580 	beqz	$r12,1092(0x444) # 1c009c74 <Key+0x460>
1c009834:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009838:	02acd58c 	addi.w	$r12,$r12,-1227(0xb35)
1c00983c:	2a00018d 	ld.bu	$r13,$r12,0
1c009840:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009844:	6801cd8d 	bltu	$r12,$r13,460(0x1cc) # 1c009a10 <Key+0x1fc>
1c009848:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c00984c:	289f018c 	ld.w	$r12,$r12,1984(0x7c0)
1c009850:	2880018d 	ld.w	$r13,$r12,0
1c009854:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009858:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c0098d8 <Key+0xc4>
1c00985c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009860:	289ef18c 	ld.w	$r12,$r12,1980(0x7bc)
1c009864:	2880018d 	ld.w	$r13,$r12,0
1c009868:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00986c:	001c31ad 	mul.w	$r13,$r13,$r12
1c009870:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009874:	289ea18c 	ld.w	$r12,$r12,1960(0x7a8)
1c009878:	2980018d 	st.w	$r13,$r12,0
1c00987c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009880:	02abb58c 	addi.w	$r12,$r12,-1299(0xaed)
1c009884:	2a00018d 	ld.bu	$r13,$r12,0
1c009888:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00988c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009890:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009898 <Key+0x84>
1c009894:	002a0007 	break	0x7
1c009898:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c00989c:	0015018d 	move	$r13,$r12
1c0098a0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098a4:	289de18c 	ld.w	$r12,$r12,1912(0x778)
1c0098a8:	2880018c 	ld.w	$r12,$r12,0
1c0098ac:	001031ad 	add.w	$r13,$r13,$r12
1c0098b0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098b4:	289da18c 	ld.w	$r12,$r12,1896(0x768)
1c0098b8:	2980018d 	st.w	$r13,$r12,0
1c0098bc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098c0:	289d318c 	ld.w	$r12,$r12,1868(0x74c)
1c0098c4:	2880018c 	ld.w	$r12,$r12,0
1c0098c8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0098cc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098d0:	289cf18c 	ld.w	$r12,$r12,1852(0x73c)
1c0098d4:	2980018d 	st.w	$r13,$r12,0
1c0098d8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098dc:	289d018c 	ld.w	$r12,$r12,1856(0x740)
1c0098e0:	2880018c 	ld.w	$r12,$r12,0
1c0098e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0098e8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c0098ec:	289c818c 	ld.w	$r12,$r12,1824(0x720)
1c0098f0:	2880018c 	ld.w	$r12,$r12,0
1c0098f4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0098f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0098fc:	50006c00 	b	108(0x6c) # 1c009968 <Key+0x154>
1c009900:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009904:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009908:	0020b5cc 	mod.w	$r12,$r14,$r13
1c00990c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009914 <Key+0x100>
1c009910:	002a0007 	break	0x7
1c009914:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c009918:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c00991c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009920:	002035cc 	div.w	$r12,$r14,$r13
1c009924:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00992c <Key+0x118>
1c009928:	002a0007 	break	0x7
1c00992c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009930:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009934:	00408d8c 	slli.w	$r12,$r12,0x3
1c009938:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c00993c:	0015018d 	move	$r13,$r12
1c009940:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c009944:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009948:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00994c:	00150186 	move	$r6,$r12
1c009950:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009954:	001501a4 	move	$r4,$r13
1c009958:	57c627ff 	bl	-14812(0xfffc624) # 1c005f7c <OLED_ShowNum>
1c00995c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009960:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009964:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009968:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00996c:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c009900 <Key+0xec>
1c009970:	140005ac 	lu12i.w	$r12,45(0x2d)
1c009974:	03a6518c 	ori	$r12,$r12,0x994
1c009978:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00997c:	50008400 	b	132(0x84) # 1c009a00 <Key+0x1ec>
1c009980:	03400000 	andi	$r0,$r0,0x0
1c009984:	03400000 	andi	$r0,$r0,0x0
1c009988:	03400000 	andi	$r0,$r0,0x0
1c00998c:	03400000 	andi	$r0,$r0,0x0
1c009990:	03400000 	andi	$r0,$r0,0x0
1c009994:	03400000 	andi	$r0,$r0,0x0
1c009998:	03400000 	andi	$r0,$r0,0x0
1c00999c:	03400000 	andi	$r0,$r0,0x0
1c0099a0:	03400000 	andi	$r0,$r0,0x0
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
1c009a00:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009a04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009a08:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009a0c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009980 <Key+0x16c>
1c009a10:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009a14:	02a5658c 	addi.w	$r12,$r12,-1703(0x959)
1c009a18:	2a00018d 	ld.bu	$r13,$r12,0
1c009a1c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009a20:	5c01e5ac 	bne	$r13,$r12,484(0x1e4) # 1c009c04 <Key+0x3f0>
1c009a24:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009a28:	2897d18c 	ld.w	$r12,$r12,1524(0x5f4)
1c009a2c:	2880018d 	ld.w	$r13,$r12,0
1c009a30:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c009a34:	5c00e9ac 	bne	$r13,$r12,232(0xe8) # 1c009b1c <Key+0x308>
1c009a38:	02802004 	addi.w	$r4,$r0,8(0x8)
1c009a3c:	57e9abff 	bl	-5720(0xfffe9a8) # 1c0083e4 <interface_display>
1c009a40:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009a44:	0281658c 	addi.w	$r12,$r12,89(0x59)
1c009a48:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c009a4c:	2900018d 	st.b	$r13,$r12,0
1c009a50:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009a54:	0281218c 	addi.w	$r12,$r12,72(0x48)
1c009a58:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c009a5c:	2900018d 	st.b	$r13,$r12,0
1c009a60:	140016cc 	lu12i.w	$r12,182(0xb6)
1c009a64:	0399418c 	ori	$r12,$r12,0x650
1c009a68:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c009a6c:	50008400 	b	132(0x84) # 1c009af0 <Key+0x2dc>
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
1c009ad8:	03400000 	andi	$r0,$r0,0x0
1c009adc:	03400000 	andi	$r0,$r0,0x0
1c009ae0:	03400000 	andi	$r0,$r0,0x0
1c009ae4:	03400000 	andi	$r0,$r0,0x0
1c009ae8:	03400000 	andi	$r0,$r0,0x0
1c009aec:	03400000 	andi	$r0,$r0,0x0
1c009af0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c009af4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009af8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c009afc:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009a70 <Key+0x25c>
1c009b00:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b04:	2894618c 	ld.w	$r12,$r12,1304(0x518)
1c009b08:	29800180 	st.w	$r0,$r12,0
1c009b0c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009b10:	2893f18c 	ld.w	$r12,$r12,1276(0x4fc)
1c009b14:	29800180 	st.w	$r0,$r12,0
1c009b18:	5000ec00 	b	236(0xec) # 1c009c04 <Key+0x3f0>
1c009b1c:	57bdcbff 	bl	-16952(0xfffbdc8) # 1c0058e4 <OLED_CLS>
1c009b20:	02801804 	addi.w	$r4,$r0,6(0x6)
1c009b24:	57e8c3ff 	bl	-5952(0xfffe8c0) # 1c0083e4 <interface_display>
1c009b28:	57b7bbff 	bl	-18504(0xfffb7b8) # 1c0052e0 <Buzzer>
1c009b2c:	140016cc 	lu12i.w	$r12,182(0xb6)
1c009b30:	0399418c 	ori	$r12,$r12,0x650
1c009b34:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c009b38:	50008400 	b	132(0x84) # 1c009bbc <Key+0x3a8>
1c009b3c:	03400000 	andi	$r0,$r0,0x0
1c009b40:	03400000 	andi	$r0,$r0,0x0
1c009b44:	03400000 	andi	$r0,$r0,0x0
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
1c009bbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c009bc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009bc4:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c009bc8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009b3c <Key+0x328>
1c009bcc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009bd0:	02bb358c 	addi.w	$r12,$r12,-307(0xecd)
1c009bd4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009bd8:	2900018d 	st.b	$r13,$r12,0
1c009bdc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009be0:	02baf18c 	addi.w	$r12,$r12,-324(0xebc)
1c009be4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c009be8:	2900018d 	st.b	$r13,$r12,0
1c009bec:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bf0:	2890b18c 	ld.w	$r12,$r12,1068(0x42c)
1c009bf4:	29800180 	st.w	$r0,$r12,0
1c009bf8:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009bfc:	2890418c 	ld.w	$r12,$r12,1040(0x410)
1c009c00:	29800180 	st.w	$r0,$r12,0
1c009c04:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009c08:	029d958c 	addi.w	$r12,$r12,1893(0x765)
1c009c0c:	2a00018d 	ld.bu	$r13,$r12,0
1c009c10:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c009c14:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009c74 <Key+0x460>
1c009c18:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c1c:	2890018c 	ld.w	$r12,$r12,1024(0x400)
1c009c20:	29800180 	st.w	$r0,$r12,0
1c009c24:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009c28:	288f918c 	ld.w	$r12,$r12,996(0x3e4)
1c009c2c:	29800180 	st.w	$r0,$r12,0
1c009c30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009c34:	50003400 	b	52(0x34) # 1c009c68 <Key+0x454>
1c009c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009c3c:	00408d8c 	slli.w	$r12,$r12,0x3
1c009c40:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009c44:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009c48:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009c4c:	02bbc0c6 	addi.w	$r6,$r6,-272(0xef0)
1c009c50:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009c54:	00150184 	move	$r4,$r12
1c009c58:	57bcbbff 	bl	-17224(0xfffbcb8) # 1c005910 <OLED_ShowStr>
1c009c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009c68:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009c6c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009c70:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009c38 <Key+0x424>
1c009c74:	03400000 	andi	$r0,$r0,0x0
1c009c78:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c009c7c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c009c80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c009c84:	4c000020 	jirl	$r0,$r1,0

1c009c88 <Add_Key>:
Add_Key():
1c009c88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009c8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c009c90:	29806076 	st.w	$r22,$r3,24(0x18)
1c009c94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009c98:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009c9c:	029b458c 	addi.w	$r12,$r12,1745(0x6d1)
1c009ca0:	2a00018c 	ld.bu	$r12,$r12,0
1c009ca4:	40031180 	beqz	$r12,784(0x310) # 1c009fb4 <Add_Key+0x32c>
1c009ca8:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009cac:	029b058c 	addi.w	$r12,$r12,1729(0x6c1)
1c009cb0:	2a00018d 	ld.bu	$r13,$r12,0
1c009cb4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009cb8:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c009de4 <Add_Key+0x15c>
1c009cbc:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cc0:	288d318c 	ld.w	$r12,$r12,844(0x34c)
1c009cc4:	2880018d 	ld.w	$r13,$r12,0
1c009cc8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009ccc:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c009d4c <Add_Key+0xc4>
1c009cd0:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009cd4:	288d218c 	ld.w	$r12,$r12,840(0x348)
1c009cd8:	2880018d 	ld.w	$r13,$r12,0
1c009cdc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009ce0:	001c31ad 	mul.w	$r13,$r13,$r12
1c009ce4:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009ce8:	288cd18c 	ld.w	$r12,$r12,820(0x334)
1c009cec:	2980018d 	st.w	$r13,$r12,0
1c009cf0:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009cf4:	0299e58c 	addi.w	$r12,$r12,1657(0x679)
1c009cf8:	2a00018d 	ld.bu	$r13,$r12,0
1c009cfc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c009d00:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c009d04:	5c000980 	bne	$r12,$r0,8(0x8) # 1c009d0c <Add_Key+0x84>
1c009d08:	002a0007 	break	0x7
1c009d0c:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c009d10:	0015018d 	move	$r13,$r12
1c009d14:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d18:	288c118c 	ld.w	$r12,$r12,772(0x304)
1c009d1c:	2880018c 	ld.w	$r12,$r12,0
1c009d20:	001031ad 	add.w	$r13,$r13,$r12
1c009d24:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d28:	288bd18c 	ld.w	$r12,$r12,756(0x2f4)
1c009d2c:	2980018d 	st.w	$r13,$r12,0
1c009d30:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d34:	288b618c 	ld.w	$r12,$r12,728(0x2d8)
1c009d38:	2880018c 	ld.w	$r12,$r12,0
1c009d3c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c009d40:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d44:	288b218c 	ld.w	$r12,$r12,712(0x2c8)
1c009d48:	2980018d 	st.w	$r13,$r12,0
1c009d4c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d50:	288b318c 	ld.w	$r12,$r12,716(0x2cc)
1c009d54:	2880018c 	ld.w	$r12,$r12,0
1c009d58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009d5c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009d60:	288ab18c 	ld.w	$r12,$r12,684(0x2ac)
1c009d64:	2880018c 	ld.w	$r12,$r12,0
1c009d68:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009d6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009d70:	50006c00 	b	108(0x6c) # 1c009ddc <Add_Key+0x154>
1c009d74:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009d78:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009d7c:	0020b5cc 	mod.w	$r12,$r14,$r13
1c009d80:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009d88 <Add_Key+0x100>
1c009d84:	002a0007 	break	0x7
1c009d88:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c009d8c:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c009d90:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c009d94:	002035cc 	div.w	$r12,$r14,$r13
1c009d98:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c009da0 <Add_Key+0x118>
1c009d9c:	002a0007 	break	0x7
1c009da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c009da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009da8:	00408d8c 	slli.w	$r12,$r12,0x3
1c009dac:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009db0:	0015018d 	move	$r13,$r12
1c009db4:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c009db8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c009dbc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c009dc0:	00150186 	move	$r6,$r12
1c009dc4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009dc8:	001501a4 	move	$r4,$r13
1c009dcc:	57c1b3ff 	bl	-15952(0xfffc1b0) # 1c005f7c <OLED_ShowNum>
1c009dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009dd4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009dd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009ddc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009de0:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c009d74 <Add_Key+0xec>
1c009de4:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009de8:	0296158c 	addi.w	$r12,$r12,1413(0x585)
1c009dec:	2a00018d 	ld.bu	$r13,$r12,0
1c009df0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c009df4:	5c0151ac 	bne	$r13,$r12,336(0x150) # 1c009f44 <Add_Key+0x2bc>
1c009df8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c009dfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009e00:	50004400 	b	68(0x44) # 1c009e44 <Add_Key+0x1bc>
1c009e04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e08:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009e0c:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c009e10:	02b191ad 	addi.w	$r13,$r13,-924(0xc64)
1c009e14:	0040898c 	slli.w	$r12,$r12,0x2
1c009e18:	001031ac 	add.w	$r12,$r13,$r12
1c009e1c:	2880018d 	ld.w	$r13,$r12,0
1c009e20:	1cc7ff0e 	pcaddu12i	$r14,409592(0x63ff8)
1c009e24:	02b141ce 	addi.w	$r14,$r14,-944(0xc50)
1c009e28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e2c:	0040898c 	slli.w	$r12,$r12,0x2
1c009e30:	001031cc 	add.w	$r12,$r14,$r12
1c009e34:	2980018d 	st.w	$r13,$r12,0
1c009e38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e3c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c009e40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009e48:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c009e04 <Add_Key+0x17c>
1c009e4c:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e50:	2887318c 	ld.w	$r12,$r12,460(0x1cc)
1c009e54:	2880018d 	ld.w	$r13,$r12,0
1c009e58:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009e5c:	02b0618c 	addi.w	$r12,$r12,-1000(0xc18)
1c009e60:	2980018d 	st.w	$r13,$r12,0
1c009e64:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e68:	2886d18c 	ld.w	$r12,$r12,436(0x1b4)
1c009e6c:	29800180 	st.w	$r0,$r12,0
1c009e70:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009e74:	2886618c 	ld.w	$r12,$r12,408(0x198)
1c009e78:	29800180 	st.w	$r0,$r12,0
1c009e7c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c009e80:	57e567ff 	bl	-6812(0xfffe564) # 1c0083e4 <interface_display>
1c009e84:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c009e88:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c009e8c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c009e90:	50008400 	b	132(0x84) # 1c009f14 <Add_Key+0x28c>
1c009e94:	03400000 	andi	$r0,$r0,0x0
1c009e98:	03400000 	andi	$r0,$r0,0x0
1c009e9c:	03400000 	andi	$r0,$r0,0x0
1c009ea0:	03400000 	andi	$r0,$r0,0x0
1c009ea4:	03400000 	andi	$r0,$r0,0x0
1c009ea8:	03400000 	andi	$r0,$r0,0x0
1c009eac:	03400000 	andi	$r0,$r0,0x0
1c009eb0:	03400000 	andi	$r0,$r0,0x0
1c009eb4:	03400000 	andi	$r0,$r0,0x0
1c009eb8:	03400000 	andi	$r0,$r0,0x0
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
1c009f14:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c009f18:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c009f1c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c009f20:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c009e94 <Add_Key+0x20c>
1c009f24:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009f28:	02add58c 	addi.w	$r12,$r12,-1163(0xb75)
1c009f2c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c009f30:	2900018d 	st.b	$r13,$r12,0
1c009f34:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c009f38:	02ad918c 	addi.w	$r12,$r12,-1180(0xb64)
1c009f3c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c009f40:	2900018d 	st.b	$r13,$r12,0
1c009f44:	1cc7fecc 	pcaddu12i	$r12,409590(0x63ff6)
1c009f48:	0290958c 	addi.w	$r12,$r12,1061(0x425)
1c009f4c:	2a00018d 	ld.bu	$r13,$r12,0
1c009f50:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c009f54:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c009fb4 <Add_Key+0x32c>
1c009f58:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f5c:	2883018c 	ld.w	$r12,$r12,192(0xc0)
1c009f60:	29800180 	st.w	$r0,$r12,0
1c009f64:	1cc7feec 	pcaddu12i	$r12,409591(0x63ff7)
1c009f68:	2882918c 	ld.w	$r12,$r12,164(0xa4)
1c009f6c:	29800180 	st.w	$r0,$r12,0
1c009f70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009f74:	50003400 	b	52(0x34) # 1c009fa8 <Add_Key+0x320>
1c009f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009f7c:	00408d8c 	slli.w	$r12,$r12,0x3
1c009f80:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c009f84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c009f88:	1c000046 	pcaddu12i	$r6,2(0x2)
1c009f8c:	02aec0c6 	addi.w	$r6,$r6,-1104(0xbb0)
1c009f90:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c009f94:	00150184 	move	$r4,$r12
1c009f98:	57b97bff 	bl	-18056(0xfffb978) # 1c005910 <OLED_ShowStr>
1c009f9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009fa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009fa4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c009fa8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c009fac:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c009fb0:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c009f78 <Add_Key+0x2f0>
1c009fb4:	03400000 	andi	$r0,$r0,0x0
1c009fb8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c009fbc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c009fc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c009fc4:	4c000020 	jirl	$r0,$r1,0

1c009fc8 <Delete_key>:
Delete_key():
1c009fc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c009fcc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c009fd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c009fd4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c009fd8:	50002800 	b	40(0x28) # 1c00a000 <Delete_key+0x38>
1c009fdc:	1cc7ff0d 	pcaddu12i	$r13,409592(0x63ff8)
1c009fe0:	02aa51ad 	addi.w	$r13,$r13,-1388(0xa94)
1c009fe4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009fe8:	0040898c 	slli.w	$r12,$r12,0x2
1c009fec:	001031ac 	add.w	$r12,$r13,$r12
1c009ff0:	29800180 	st.w	$r0,$r12,0
1c009ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c009ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c009ffc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00a000:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00a004:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00a008:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c009fdc <Delete_key+0x14>
1c00a00c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00a010:	03bf918c 	ori	$r12,$r12,0xfe4
1c00a014:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00a018:	50008400 	b	132(0x84) # 1c00a09c <Delete_key+0xd4>
1c00a01c:	03400000 	andi	$r0,$r0,0x0
1c00a020:	03400000 	andi	$r0,$r0,0x0
1c00a024:	03400000 	andi	$r0,$r0,0x0
1c00a028:	03400000 	andi	$r0,$r0,0x0
1c00a02c:	03400000 	andi	$r0,$r0,0x0
1c00a030:	03400000 	andi	$r0,$r0,0x0
1c00a034:	03400000 	andi	$r0,$r0,0x0
1c00a038:	03400000 	andi	$r0,$r0,0x0
1c00a03c:	03400000 	andi	$r0,$r0,0x0
1c00a040:	03400000 	andi	$r0,$r0,0x0
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
1c00a09c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00a0a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00a0a4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00a0a8:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c00a01c <Delete_key+0x54>
1c00a0ac:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a0b0:	02a7b58c 	addi.w	$r12,$r12,-1555(0x9ed)
1c00a0b4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a0b8:	2900018d 	st.b	$r13,$r12,0
1c00a0bc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c00a0c0:	02a7718c 	addi.w	$r12,$r12,-1572(0x9dc)
1c00a0c4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00a0c8:	2900018d 	st.b	$r13,$r12,0
1c00a0cc:	03400000 	andi	$r0,$r0,0x0
1c00a0d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00a0d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00a0d8:	4c000020 	jirl	$r0,$r1,0

1c00a0dc <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c00a0dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a0e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a0e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a0e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a0ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a0f0:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c00a0f4:	02805005 	addi.w	$r5,$r0,20(0x14)
1c00a0f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a0fc:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c00a100:	5772dbff 	bl	-36136(0xfff72d8) # 1c0013d8 <myprintf>
1c00a104:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00a108:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a10c:	03808184 	ori	$r4,$r12,0x20
1c00a110:	577083ff 	bl	-36736(0xfff7080) # 1c001190 <EXTI_ClearITPendingBit>
1c00a114:	03400000 	andi	$r0,$r0,0x0
1c00a118:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a11c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a120:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a124:	4c000020 	jirl	$r0,$r1,0

1c00a128 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c00a128:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a12c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a130:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a134:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a138:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a13c:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c00a140:	02806405 	addi.w	$r5,$r0,25(0x19)
1c00a144:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a148:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c00a14c:	57728fff 	bl	-36212(0xfff728c) # 1c0013d8 <myprintf>
1c00a150:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00a154:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a158:	03808184 	ori	$r4,$r12,0x20
1c00a15c:	577037ff 	bl	-36812(0xfff7034) # 1c001190 <EXTI_ClearITPendingBit>
1c00a160:	03400000 	andi	$r0,$r0,0x0
1c00a164:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a168:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a16c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a170:	4c000020 	jirl	$r0,$r1,0

1c00a174 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00a174:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a178:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a17c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a180:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a184:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a188:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c00a18c:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c00a190:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a194:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c00a198:	577243ff 	bl	-36288(0xfff7240) # 1c0013d8 <myprintf>
1c00a19c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00a1a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a1a4:	03808184 	ori	$r4,$r12,0x20
1c00a1a8:	576febff 	bl	-36888(0xfff6fe8) # 1c001190 <EXTI_ClearITPendingBit>
1c00a1ac:	03400000 	andi	$r0,$r0,0x0
1c00a1b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a1b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a1b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a1bc:	4c000020 	jirl	$r0,$r1,0

1c00a1c0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00a1c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a1c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a1c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a1cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a1d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a1d4:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c00a1d8:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c00a1dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a1e0:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c00a1e4:	5771f7ff 	bl	-36364(0xfff71f4) # 1c0013d8 <myprintf>
1c00a1e8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00a1ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a1f0:	03808184 	ori	$r4,$r12,0x20
1c00a1f4:	576f9fff 	bl	-36964(0xfff6f9c) # 1c001190 <EXTI_ClearITPendingBit>
1c00a1f8:	03400000 	andi	$r0,$r0,0x0
1c00a1fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a200:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a204:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a208:	4c000020 	jirl	$r0,$r1,0

1c00a20c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00a20c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a210:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a214:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a218:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a21c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a220:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c00a224:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c00a228:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a22c:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c00a230:	5771abff 	bl	-36440(0xfff71a8) # 1c0013d8 <myprintf>
1c00a234:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00a238:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a23c:	03808184 	ori	$r4,$r12,0x20
1c00a240:	576f53ff 	bl	-37040(0xfff6f50) # 1c001190 <EXTI_ClearITPendingBit>
1c00a244:	03400000 	andi	$r0,$r0,0x0
1c00a248:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a24c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a250:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a254:	4c000020 	jirl	$r0,$r1,0

1c00a258 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00a258:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a25c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a260:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a264:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a268:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a26c:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c00a270:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c00a274:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a278:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c00a27c:	57715fff 	bl	-36516(0xfff715c) # 1c0013d8 <myprintf>
1c00a280:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00a284:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a288:	03808184 	ori	$r4,$r12,0x20
1c00a28c:	576f07ff 	bl	-37116(0xfff6f04) # 1c001190 <EXTI_ClearITPendingBit>
1c00a290:	03400000 	andi	$r0,$r0,0x0
1c00a294:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a298:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a29c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a2a0:	4c000020 	jirl	$r0,$r1,0

1c00a2a4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00a2a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a2a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a2ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a2b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a2b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a2b8:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c00a2bc:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c00a2c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a2c4:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c00a2c8:	577113ff 	bl	-36592(0xfff7110) # 1c0013d8 <myprintf>
1c00a2cc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00a2d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a2d4:	03808184 	ori	$r4,$r12,0x20
1c00a2d8:	576ebbff 	bl	-37192(0xfff6eb8) # 1c001190 <EXTI_ClearITPendingBit>
1c00a2dc:	03400000 	andi	$r0,$r0,0x0
1c00a2e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a2e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a2e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a2ec:	4c000020 	jirl	$r0,$r1,0

1c00a2f0 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00a2f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a2f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a2f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a2fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a300:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a304:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c00a308:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c00a30c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a310:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c00a314:	5770c7ff 	bl	-36668(0xfff70c4) # 1c0013d8 <myprintf>
1c00a318:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00a31c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a320:	03808184 	ori	$r4,$r12,0x20
1c00a324:	576e6fff 	bl	-37268(0xfff6e6c) # 1c001190 <EXTI_ClearITPendingBit>
1c00a328:	03400000 	andi	$r0,$r0,0x0
1c00a32c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a330:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a334:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a338:	4c000020 	jirl	$r0,$r1,0

1c00a33c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00a33c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a340:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a344:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a348:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a34c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a350:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c00a354:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c00a358:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00a35c:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c00a360:	57707bff 	bl	-36744(0xfff7078) # 1c0013d8 <myprintf>
1c00a364:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00a368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a36c:	03808184 	ori	$r4,$r12,0x20
1c00a370:	576e23ff 	bl	-37344(0xfff6e20) # 1c001190 <EXTI_ClearITPendingBit>
1c00a374:	03400000 	andi	$r0,$r0,0x0
1c00a378:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a37c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a380:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a384:	4c000020 	jirl	$r0,$r1,0

1c00a388 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00a388:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a38c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a390:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a394:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a398:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a39c:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c00a3a0:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c00a3a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a3a8:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c00a3ac:	57702fff 	bl	-36820(0xfff702c) # 1c0013d8 <myprintf>
1c00a3b0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00a3b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a3b8:	03808184 	ori	$r4,$r12,0x20
1c00a3bc:	576dd7ff 	bl	-37420(0xfff6dd4) # 1c001190 <EXTI_ClearITPendingBit>
1c00a3c0:	03400000 	andi	$r0,$r0,0x0
1c00a3c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a3c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a3cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a3d0:	4c000020 	jirl	$r0,$r1,0

1c00a3d4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00a3d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a3d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a3dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a3e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a3e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a3e8:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c00a3ec:	02812405 	addi.w	$r5,$r0,73(0x49)
1c00a3f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a3f4:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c00a3f8:	576fe3ff 	bl	-36896(0xfff6fe0) # 1c0013d8 <myprintf>
1c00a3fc:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c00a400:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a404:	03808184 	ori	$r4,$r12,0x20
1c00a408:	576d8bff 	bl	-37496(0xfff6d88) # 1c001190 <EXTI_ClearITPendingBit>
1c00a40c:	03400000 	andi	$r0,$r0,0x0
1c00a410:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a414:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a418:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a41c:	4c000020 	jirl	$r0,$r1,0

1c00a420 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c00a420:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a424:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a428:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a42c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a430:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a434:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c00a438:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c00a43c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a440:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c00a444:	576f97ff 	bl	-36972(0xfff6f94) # 1c0013d8 <myprintf>
1c00a448:	03a00005 	ori	$r5,$r0,0x800
1c00a44c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a450:	03808184 	ori	$r4,$r12,0x20
1c00a454:	576d3fff 	bl	-37572(0xfff6d3c) # 1c001190 <EXTI_ClearITPendingBit>
1c00a458:	03400000 	andi	$r0,$r0,0x0
1c00a45c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a460:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a464:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a468:	4c000020 	jirl	$r0,$r1,0

1c00a46c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c00a46c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a470:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a474:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a478:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a47c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a480:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c00a484:	02815005 	addi.w	$r5,$r0,84(0x54)
1c00a488:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a48c:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c00a490:	576f4bff 	bl	-37048(0xfff6f48) # 1c0013d8 <myprintf>
1c00a494:	14000025 	lu12i.w	$r5,1(0x1)
1c00a498:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a49c:	03808184 	ori	$r4,$r12,0x20
1c00a4a0:	576cf3ff 	bl	-37648(0xfff6cf0) # 1c001190 <EXTI_ClearITPendingBit>
1c00a4a4:	03400000 	andi	$r0,$r0,0x0
1c00a4a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a4ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a4b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a4b4:	4c000020 	jirl	$r0,$r1,0

1c00a4b8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00a4b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a4bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a4c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a4c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a4c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a4cc:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c00a4d0:	02816405 	addi.w	$r5,$r0,89(0x59)
1c00a4d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a4d8:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c00a4dc:	576effff 	bl	-37124(0xfff6efc) # 1c0013d8 <myprintf>
1c00a4e0:	14000045 	lu12i.w	$r5,2(0x2)
1c00a4e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a4e8:	03808184 	ori	$r4,$r12,0x20
1c00a4ec:	576ca7ff 	bl	-37724(0xfff6ca4) # 1c001190 <EXTI_ClearITPendingBit>
1c00a4f0:	03400000 	andi	$r0,$r0,0x0
1c00a4f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a4f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a4fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a500:	4c000020 	jirl	$r0,$r1,0

1c00a504 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00a504:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a50c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a510:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a514:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a518:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c00a51c:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c00a520:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a524:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c00a528:	576eb3ff 	bl	-37200(0xfff6eb0) # 1c0013d8 <myprintf>
1c00a52c:	14000085 	lu12i.w	$r5,4(0x4)
1c00a530:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a534:	03808184 	ori	$r4,$r12,0x20
1c00a538:	576c5bff 	bl	-37800(0xfff6c58) # 1c001190 <EXTI_ClearITPendingBit>
1c00a53c:	03400000 	andi	$r0,$r0,0x0
1c00a540:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a544:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a548:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a54c:	4c000020 	jirl	$r0,$r1,0

1c00a550 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c00a550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a554:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a558:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a55c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a560:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a564:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c00a568:	02819405 	addi.w	$r5,$r0,101(0x65)
1c00a56c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a570:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c00a574:	576e67ff 	bl	-37276(0xfff6e64) # 1c0013d8 <myprintf>
1c00a578:	14000105 	lu12i.w	$r5,8(0x8)
1c00a57c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a580:	03808184 	ori	$r4,$r12,0x20
1c00a584:	576c0fff 	bl	-37876(0xfff6c0c) # 1c001190 <EXTI_ClearITPendingBit>
1c00a588:	03400000 	andi	$r0,$r0,0x0
1c00a58c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a590:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a594:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a598:	4c000020 	jirl	$r0,$r1,0

1c00a59c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00a59c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a5a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a5a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a5a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a5ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a5b0:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c00a5b4:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c00a5b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a5bc:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c00a5c0:	576e1bff 	bl	-37352(0xfff6e18) # 1c0013d8 <myprintf>
1c00a5c4:	14000205 	lu12i.w	$r5,16(0x10)
1c00a5c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a5cc:	03808184 	ori	$r4,$r12,0x20
1c00a5d0:	576bc3ff 	bl	-37952(0xfff6bc0) # 1c001190 <EXTI_ClearITPendingBit>
1c00a5d4:	03400000 	andi	$r0,$r0,0x0
1c00a5d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a5dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a5e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a5e4:	4c000020 	jirl	$r0,$r1,0

1c00a5e8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00a5e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a5ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a5f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a5f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a5f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a5fc:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c00a600:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c00a604:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a608:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c00a60c:	576dcfff 	bl	-37428(0xfff6dcc) # 1c0013d8 <myprintf>
1c00a610:	14000405 	lu12i.w	$r5,32(0x20)
1c00a614:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a618:	03808184 	ori	$r4,$r12,0x20
1c00a61c:	576b77ff 	bl	-38028(0xfff6b74) # 1c001190 <EXTI_ClearITPendingBit>
1c00a620:	03400000 	andi	$r0,$r0,0x0
1c00a624:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a628:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a62c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a630:	4c000020 	jirl	$r0,$r1,0

1c00a634 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00a634:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a638:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a63c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a640:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a644:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a648:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c00a64c:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c00a650:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a654:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c00a658:	576d83ff 	bl	-37504(0xfff6d80) # 1c0013d8 <myprintf>
1c00a65c:	14000805 	lu12i.w	$r5,64(0x40)
1c00a660:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a664:	03808184 	ori	$r4,$r12,0x20
1c00a668:	576b2bff 	bl	-38104(0xfff6b28) # 1c001190 <EXTI_ClearITPendingBit>
1c00a66c:	03400000 	andi	$r0,$r0,0x0
1c00a670:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a674:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a678:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a67c:	4c000020 	jirl	$r0,$r1,0

1c00a680 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c00a680:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a684:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a688:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a68c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a690:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a694:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c00a698:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c00a69c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a6a0:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c00a6a4:	576d37ff 	bl	-37580(0xfff6d34) # 1c0013d8 <myprintf>
1c00a6a8:	14001005 	lu12i.w	$r5,128(0x80)
1c00a6ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a6b0:	03808184 	ori	$r4,$r12,0x20
1c00a6b4:	576adfff 	bl	-38180(0xfff6adc) # 1c001190 <EXTI_ClearITPendingBit>
1c00a6b8:	03400000 	andi	$r0,$r0,0x0
1c00a6bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a6c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a6c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a6c8:	4c000020 	jirl	$r0,$r1,0

1c00a6cc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00a6cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a6d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a6d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a6d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a6dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a6e0:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c00a6e4:	02821005 	addi.w	$r5,$r0,132(0x84)
1c00a6e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a6ec:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c00a6f0:	576cebff 	bl	-37656(0xfff6ce8) # 1c0013d8 <myprintf>
1c00a6f4:	14002005 	lu12i.w	$r5,256(0x100)
1c00a6f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a6fc:	03808184 	ori	$r4,$r12,0x20
1c00a700:	576a93ff 	bl	-38256(0xfff6a90) # 1c001190 <EXTI_ClearITPendingBit>
1c00a704:	03400000 	andi	$r0,$r0,0x0
1c00a708:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a70c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a710:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a714:	4c000020 	jirl	$r0,$r1,0

1c00a718 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00a718:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a71c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a720:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a724:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a728:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00a72c:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c00a730:	02822405 	addi.w	$r5,$r0,137(0x89)
1c00a734:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a738:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c00a73c:	576c9fff 	bl	-37732(0xfff6c9c) # 1c0013d8 <myprintf>
1c00a740:	14004005 	lu12i.w	$r5,512(0x200)
1c00a744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a748:	03808184 	ori	$r4,$r12,0x20
1c00a74c:	576a47ff 	bl	-38332(0xfff6a44) # 1c001190 <EXTI_ClearITPendingBit>
1c00a750:	03400000 	andi	$r0,$r0,0x0
1c00a754:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a758:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a75c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a760:	4c000020 	jirl	$r0,$r1,0

1c00a764 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00a764:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a768:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a76c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a770:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a774:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a778:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c00a77c:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c00a780:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a784:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c00a788:	576c53ff 	bl	-37808(0xfff6c50) # 1c0013d8 <myprintf>
1c00a78c:	14008005 	lu12i.w	$r5,1024(0x400)
1c00a790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a794:	03808184 	ori	$r4,$r12,0x20
1c00a798:	5769fbff 	bl	-38408(0xfff69f8) # 1c001190 <EXTI_ClearITPendingBit>
1c00a79c:	03400000 	andi	$r0,$r0,0x0
1c00a7a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a7a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a7a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a7ac:	4c000020 	jirl	$r0,$r1,0

1c00a7b0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00a7b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a7b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a7b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a7bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a7c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a7c4:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c00a7c8:	02825005 	addi.w	$r5,$r0,148(0x94)
1c00a7cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a7d0:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c00a7d4:	576c07ff 	bl	-37884(0xfff6c04) # 1c0013d8 <myprintf>
1c00a7d8:	14010005 	lu12i.w	$r5,2048(0x800)
1c00a7dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a7e0:	03808184 	ori	$r4,$r12,0x20
1c00a7e4:	5769afff 	bl	-38484(0xfff69ac) # 1c001190 <EXTI_ClearITPendingBit>
1c00a7e8:	03400000 	andi	$r0,$r0,0x0
1c00a7ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a7f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a7f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a7f8:	4c000020 	jirl	$r0,$r1,0

1c00a7fc <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00a7fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a800:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a804:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a808:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a80c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a810:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c00a814:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c00a818:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a81c:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c00a820:	576bbbff 	bl	-37960(0xfff6bb8) # 1c0013d8 <myprintf>
1c00a824:	14020005 	lu12i.w	$r5,4096(0x1000)
1c00a828:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a82c:	03808184 	ori	$r4,$r12,0x20
1c00a830:	576963ff 	bl	-38560(0xfff6960) # 1c001190 <EXTI_ClearITPendingBit>
1c00a834:	03400000 	andi	$r0,$r0,0x0
1c00a838:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a83c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a840:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a844:	4c000020 	jirl	$r0,$r1,0

1c00a848 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c00a848:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a84c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a850:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a854:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a858:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a85c:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c00a860:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c00a864:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a868:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c00a86c:	576b6fff 	bl	-38036(0xfff6b6c) # 1c0013d8 <myprintf>
1c00a870:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00a874:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a878:	03808184 	ori	$r4,$r12,0x20
1c00a87c:	576917ff 	bl	-38636(0xfff6914) # 1c001190 <EXTI_ClearITPendingBit>
1c00a880:	03400000 	andi	$r0,$r0,0x0
1c00a884:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a888:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a88c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a890:	4c000020 	jirl	$r0,$r1,0

1c00a894 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00a894:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a898:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a89c:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a8a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a8a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a8a8:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c00a8ac:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c00a8b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a8b4:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c00a8b8:	576b23ff 	bl	-38112(0xfff6b20) # 1c0013d8 <myprintf>
1c00a8bc:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00a8c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a8c4:	03808184 	ori	$r4,$r12,0x20
1c00a8c8:	5768cbff 	bl	-38712(0xfff68c8) # 1c001190 <EXTI_ClearITPendingBit>
1c00a8cc:	03400000 	andi	$r0,$r0,0x0
1c00a8d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a8d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a8d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a8dc:	4c000020 	jirl	$r0,$r1,0

1c00a8e0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c00a8e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a8e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a8e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a8ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a8f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a8f4:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c00a8f8:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c00a8fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a900:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c00a904:	576ad7ff 	bl	-38188(0xfff6ad4) # 1c0013d8 <myprintf>
1c00a908:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00a90c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a910:	03808184 	ori	$r4,$r12,0x20
1c00a914:	57687fff 	bl	-38788(0xfff687c) # 1c001190 <EXTI_ClearITPendingBit>
1c00a918:	03400000 	andi	$r0,$r0,0x0
1c00a91c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a920:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a924:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a928:	4c000020 	jirl	$r0,$r1,0

1c00a92c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00a92c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a930:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a934:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a938:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a93c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a940:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c00a944:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c00a948:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a94c:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c00a950:	576a8bff 	bl	-38264(0xfff6a88) # 1c0013d8 <myprintf>
1c00a954:	14200005 	lu12i.w	$r5,65536(0x10000)
1c00a958:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a95c:	03808184 	ori	$r4,$r12,0x20
1c00a960:	576833ff 	bl	-38864(0xfff6830) # 1c001190 <EXTI_ClearITPendingBit>
1c00a964:	03400000 	andi	$r0,$r0,0x0
1c00a968:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a96c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a970:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a974:	4c000020 	jirl	$r0,$r1,0

1c00a978 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c00a978:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a97c:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a980:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a984:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a988:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a98c:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c00a990:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c00a994:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a998:	02880084 	addi.w	$r4,$r4,512(0x200)
1c00a99c:	576a3fff 	bl	-38340(0xfff6a3c) # 1c0013d8 <myprintf>
1c00a9a0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00a9a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a9a8:	03808184 	ori	$r4,$r12,0x20
1c00a9ac:	5767e7ff 	bl	-38940(0xfff67e4) # 1c001190 <EXTI_ClearITPendingBit>
1c00a9b0:	03400000 	andi	$r0,$r0,0x0
1c00a9b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00a9b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00a9bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00a9c0:	4c000020 	jirl	$r0,$r1,0

1c00a9c4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00a9c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00a9c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c00a9cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c00a9d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00a9d4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00a9d8:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c00a9dc:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c00a9e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00a9e4:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c00a9e8:	5769f3ff 	bl	-38416(0xfff69f0) # 1c0013d8 <myprintf>
1c00a9ec:	14800005 	lu12i.w	$r5,262144(0x40000)
1c00a9f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00a9f4:	03808184 	ori	$r4,$r12,0x20
1c00a9f8:	57679bff 	bl	-39016(0xfff6798) # 1c001190 <EXTI_ClearITPendingBit>
1c00a9fc:	03400000 	andi	$r0,$r0,0x0
1c00aa00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aa04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aa08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aa0c:	4c000020 	jirl	$r0,$r1,0

1c00aa10 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c00aa10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00aa14:	29803061 	st.w	$r1,$r3,12(0xc)
1c00aa18:	29802076 	st.w	$r22,$r3,8(0x8)
1c00aa1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00aa20:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aa24:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c00aa28:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c00aa2c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aa30:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c00aa34:	5769a7ff 	bl	-38492(0xfff69a4) # 1c0013d8 <myprintf>
1c00aa38:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00aa3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa40:	03808184 	ori	$r4,$r12,0x20
1c00aa44:	57674fff 	bl	-39092(0xfff674c) # 1c001190 <EXTI_ClearITPendingBit>
1c00aa48:	03400000 	andi	$r0,$r0,0x0
1c00aa4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00aa50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00aa54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00aa58:	4c000020 	jirl	$r0,$r1,0

1c00aa5c <ext_handler>:
ext_handler():
1c00aa5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00aa60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00aa64:	29806076 	st.w	$r22,$r3,24(0x18)
1c00aa68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00aa6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa70:	0380f18c 	ori	$r12,$r12,0x3c
1c00aa74:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00aa78:	2980018d 	st.w	$r13,$r12,0
1c00aa7c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00aa80:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c00aa84:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c00aa88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00aa8c:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c00aa90:	57694bff 	bl	-38584(0xfff6948) # 1c0013d8 <myprintf>
1c00aa94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aa98:	0380818c 	ori	$r12,$r12,0x20
1c00aa9c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00aaa0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00aaa4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00aaa8:	0380818c 	ori	$r12,$r12,0x20
1c00aaac:	2880018c 	ld.w	$r12,$r12,0
1c00aab0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00aab4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00aab8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00aabc:	0014b1ac 	and	$r12,$r13,$r12
1c00aac0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00aac4:	03400000 	andi	$r0,$r0,0x0
1c00aac8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00aacc:	50004000 	b	64(0x40) # 1c00ab0c <ext_handler+0xb0>
1c00aad0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00aad4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00aad8:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00aadc:	0340058c 	andi	$r12,$r12,0x1
1c00aae0:	40002180 	beqz	$r12,32(0x20) # 1c00ab00 <ext_handler+0xa4>
1c00aae4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00aae8:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c00aaec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00aaf0:	0040898c 	slli.w	$r12,$r12,0x2
1c00aaf4:	001031ac 	add.w	$r12,$r13,$r12
1c00aaf8:	2880018c 	ld.w	$r12,$r12,0
1c00aafc:	4c000181 	jirl	$r1,$r12,0
1c00ab00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ab04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00ab08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ab0c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00ab10:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00ab14:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c00aad0 <ext_handler+0x74>
1c00ab18:	03400000 	andi	$r0,$r0,0x0
1c00ab1c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ab20:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ab24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ab28:	4c000020 	jirl	$r0,$r1,0

1c00ab2c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00ab2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ab30:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ab34:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ab38:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ab3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ab40:	0380f18c 	ori	$r12,$r12,0x3c
1c00ab44:	1400020d 	lu12i.w	$r13,16(0x10)
1c00ab48:	2980018d 	st.w	$r13,$r12,0
1c00ab4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ab50:	0380118c 	ori	$r12,$r12,0x4
1c00ab54:	2880018c 	ld.w	$r12,$r12,0
1c00ab58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ab5c:	576ccfff 	bl	-37684(0xfff6ccc) # 1c001828 <WDG_DogFeed>
1c00ab60:	03400000 	andi	$r0,$r0,0x0
1c00ab64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ab68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ab6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ab70:	4c000020 	jirl	$r0,$r1,0

1c00ab74 <TOUCH>:
TOUCH():
1c00ab74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ab78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ab7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ab80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ab84:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00ab88:	0380118c 	ori	$r12,$r12,0x4
1c00ab8c:	2880018c 	ld.w	$r12,$r12,0
1c00ab90:	0044c18c 	srli.w	$r12,$r12,0x10
1c00ab94:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00ab98:	037ffd8c 	andi	$r12,$r12,0xfff
1c00ab9c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00aba0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00aba4:	0380118c 	ori	$r12,$r12,0x4
1c00aba8:	2880018c 	ld.w	$r12,$r12,0
1c00abac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00abb0:	03403d8c 	andi	$r12,$r12,0xf
1c00abb4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00abb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00abbc:	0380f18c 	ori	$r12,$r12,0x3c
1c00abc0:	1400040d 	lu12i.w	$r13,32(0x20)
1c00abc4:	2980018d 	st.w	$r13,$r12,0
1c00abc8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00abcc:	0380118c 	ori	$r12,$r12,0x4
1c00abd0:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00abd4:	2980018d 	st.w	$r13,$r12,0
1c00abd8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00abdc:	00150185 	move	$r5,$r12
1c00abe0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00abe4:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c00abe8:	5767f3ff 	bl	-38928(0xfff67f0) # 1c0013d8 <myprintf>
1c00abec:	03400000 	andi	$r0,$r0,0x0
1c00abf0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00abf4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00abf8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00abfc:	4c000020 	jirl	$r0,$r1,0

1c00ac00 <UART2_INT>:
UART2_INT():
1c00ac00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ac04:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00ac08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ac0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac10:	0380f18c 	ori	$r12,$r12,0x3c
1c00ac14:	1400080d 	lu12i.w	$r13,64(0x40)
1c00ac18:	2980018d 	st.w	$r13,$r12,0
1c00ac1c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c00ac20:	0380098c 	ori	$r12,$r12,0x2
1c00ac24:	2a00018c 	ld.bu	$r12,$r12,0
1c00ac28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00ac2c:	03400000 	andi	$r0,$r0,0x0
1c00ac30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00ac34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ac38:	4c000020 	jirl	$r0,$r1,0

1c00ac3c <BAT_FAIL>:
BAT_FAIL():
1c00ac3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ac40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ac44:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ac48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ac4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac50:	0380118c 	ori	$r12,$r12,0x4
1c00ac54:	2880018c 	ld.w	$r12,$r12,0
1c00ac58:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00ac5c:	03407d8c 	andi	$r12,$r12,0x1f
1c00ac60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00ac64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac68:	0380118c 	ori	$r12,$r12,0x4
1c00ac6c:	2880018e 	ld.w	$r14,$r12,0
1c00ac70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ac74:	0380f18c 	ori	$r12,$r12,0x3c
1c00ac78:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00ac7c:	0014b5cd 	and	$r13,$r14,$r13
1c00ac80:	2980018d 	st.w	$r13,$r12,0
1c00ac84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00ac88:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00ac8c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00acfc <BAT_FAIL+0xc0>
1c00ac90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00ac94:	0040898d 	slli.w	$r13,$r12,0x2
1c00ac98:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c00ac9c:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c00aca0:	001031ac 	add.w	$r12,$r13,$r12
1c00aca4:	2880018c 	ld.w	$r12,$r12,0
1c00aca8:	4c000180 	jirl	$r0,$r12,0
1c00acac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00acb0:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c00acb4:	576727ff 	bl	-39132(0xfff6724) # 1c0013d8 <myprintf>
1c00acb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00acbc:	0380118c 	ori	$r12,$r12,0x4
1c00acc0:	29800180 	st.w	$r0,$r12,0
1c00acc4:	50003c00 	b	60(0x3c) # 1c00ad00 <BAT_FAIL+0xc4>
1c00acc8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00accc:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c00acd0:	57670bff 	bl	-39160(0xfff6708) # 1c0013d8 <myprintf>
1c00acd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00acd8:	0380118c 	ori	$r12,$r12,0x4
1c00acdc:	2880018e 	ld.w	$r14,$r12,0
1c00ace0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00ace4:	0380118c 	ori	$r12,$r12,0x4
1c00ace8:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00acec:	03bffdad 	ori	$r13,$r13,0xfff
1c00acf0:	0014b5cd 	and	$r13,$r14,$r13
1c00acf4:	2980018d 	st.w	$r13,$r12,0
1c00acf8:	50000800 	b	8(0x8) # 1c00ad00 <BAT_FAIL+0xc4>
1c00acfc:	03400000 	andi	$r0,$r0,0x0
1c00ad00:	03400000 	andi	$r0,$r0,0x0
1c00ad04:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ad08:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ad0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00ad10:	4c000020 	jirl	$r0,$r1,0

1c00ad14 <INTC_Handler>:
INTC_Handler():
1c00ad14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00ad18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00ad1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c00ad20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00ad24:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00ad28:	0380158c 	ori	$r12,$r12,0x5
1c00ad2c:	2a00018c 	ld.bu	$r12,$r12,0
1c00ad30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00ad34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ad38:	0340058c 	andi	$r12,$r12,0x1
1c00ad3c:	40002980 	beqz	$r12,40(0x28) # 1c00ad64 <INTC_Handler+0x50>
1c00ad40:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00ad44:	57a757ff 	bl	-22700(0xfffa754) # 1c005498 <TIM_GetITStatus>
1c00ad48:	0015008c 	move	$r12,$r4
1c00ad4c:	40001980 	beqz	$r12,24(0x18) # 1c00ad64 <INTC_Handler+0x50>
1c00ad50:	02840004 	addi.w	$r4,$r0,256(0x100)
1c00ad54:	57a793ff 	bl	-22640(0xfffa790) # 1c0054e4 <TIM_ClearIT>
1c00ad58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ad5c:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c00ad60:	57667bff 	bl	-39304(0xfff6678) # 1c0013d8 <myprintf>
1c00ad64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ad68:	0340118c 	andi	$r12,$r12,0x4
1c00ad6c:	40002d80 	beqz	$r12,44(0x2c) # 1c00ad98 <INTC_Handler+0x84>
1c00ad70:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00ad74:	2880018c 	ld.w	$r12,$r12,0
1c00ad78:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00ad7c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00ad80:	00150184 	move	$r4,$r12
1c00ad84:	577217ff 	bl	-36332(0xfff7214) # 1c001f98 <my_recv_dat_int>
1c00ad88:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00ad8c:	03800d8c 	ori	$r12,$r12,0x3
1c00ad90:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c00ad94:	2900018d 	st.b	$r13,$r12,0
1c00ad98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00ad9c:	0340218c 	andi	$r12,$r12,0x8
1c00ada0:	40002d80 	beqz	$r12,44(0x2c) # 1c00adcc <INTC_Handler+0xb8>
1c00ada4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00ada8:	2880018c 	ld.w	$r12,$r12,0
1c00adac:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00adb0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00adb4:	00150184 	move	$r4,$r12
1c00adb8:	5771e3ff 	bl	-36384(0xfff71e0) # 1c001f98 <my_recv_dat_int>
1c00adbc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00adc0:	03800d8c 	ori	$r12,$r12,0x3
1c00adc4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00adc8:	2900018d 	st.b	$r13,$r12,0
1c00adcc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00add0:	03800d8c 	ori	$r12,$r12,0x3
1c00add4:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00add8:	2900018d 	st.b	$r13,$r12,0
1c00addc:	03400000 	andi	$r0,$r0,0x0
1c00ade0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00ade4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00ade8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00adec:	4c000020 	jirl	$r0,$r1,0

1c00adf0 <TIMER_HANDLER>:
TIMER_HANDLER():
1c00adf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00adf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c00adf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c00adfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00ae00:	57636fff 	bl	-40084(0xfff636c) # 1c00116c <Set_Timer_clear>
1c00ae04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00ae08:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c00ae0c:	5765cfff 	bl	-39476(0xfff65cc) # 1c0013d8 <myprintf>
1c00ae10:	57633fff 	bl	-40132(0xfff633c) # 1c00114c <Set_Timer_stop>
1c00ae14:	03400000 	andi	$r0,$r0,0x0
1c00ae18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00ae1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00ae20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00ae24:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c00ae28 <F6x8-0x334>:
1c00ae28:	1c0015f8 	pcaddu12i	$r24,175(0xaf)
1c00ae2c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae30:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae34:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae38:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae3c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae40:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae44:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae48:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae4c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae50:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae54:	1c001610 	pcaddu12i	$r16,176(0xb0)
1c00ae58:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae5c:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae60:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae64:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae68:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae6c:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae70:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae74:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae78:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00ae7c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae80:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae84:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae88:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae8c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae90:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae94:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae98:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00ae9c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aea0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aea4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aea8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aeac:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aeb0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aeb4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aeb8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aebc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aec0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aec4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aec8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aecc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aed0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aed4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aed8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aedc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aee0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aee4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aee8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aeec:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aef0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aef4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aef8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00aefc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af00:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af04:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af08:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af0c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af10:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af14:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af18:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af1c:	1c001588 	pcaddu12i	$r8,172(0xac)
1c00af20:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
1c00af24:	1c001518 	pcaddu12i	$r24,168(0xa8)
1c00af28:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af2c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af30:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af34:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af38:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af3c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af40:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af44:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af48:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af4c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af50:	1c001550 	pcaddu12i	$r16,170(0xaa)
1c00af54:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c00af58:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af5c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af60:	1c001484 	pcaddu12i	$r4,164(0xa4)
1c00af64:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af68:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
1c00af6c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af70:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00af74:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c00af78:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00af7c:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c00af80:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c00af84:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00af88:	00000000 	0x00000000
1c00af8c:	befdca20 	0xbefdca20
1c00af90:	bdfcb0dd 	0xbdfcb0dd
1c00af94:	b4d5cad3 	0xb4d5cad3
1c00af98:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00af9c:	00000000 	0x00000000
1c00afa0:	d0b8abb4 	0xd0b8abb4
1c00afa4:	cfc9f7c6 	0xcfc9f7c6
1c00afa8:	d0d3bbc3 	0xd0d3bbc3
1c00afac:	b8d6d6ca 	0xb8d6d6ca
1c00afb0:	00000000 	0x00000000
1c00afb4:	ebc8bcc2 	0xebc8bcc2
1c00afb8:	c6ceb8d6 	0xc6ceb8d6
1c00afbc:	f1cfbccd 	0xf1cfbccd
1c00afc0:	dcb0a7ca 	0xdcb0a7ca
1c00afc4:	00000000 	0x00000000
1c00afc8:	ceb8d620 	0xceb8d620
1c00afcc:	b8abccc6 	0xb8abccc6
1c00afd0:	ccf2bbc9 	0xccf2bbc9
1c00afd4:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c00afd8:	00000000 	0x00000000
1c00afdc:	ceb8d620 	0xceb8d620
1c00afe0:	caabccc6 	0xcaabccc6
1c00afe4:	ccf2bbaa 	0xccf2bbaa
1c00afe8:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c00afec:	00000000 	0x00000000
1c00aff0:	b8d62020 	0xb8d62020
1c00aff4:	bccdc6ce 	0xbccdc6ce
1c00aff8:	abccf1cf 	0xabccf1cf
1c00affc:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c00b000:	00000000 	0x00000000
1c00b004:	ceb8d620 	0xceb8d620
1c00b008:	d5d8ccc6 	0xd5d8ccc6
1c00b00c:	cce3b5f7 	0xcce3b5f7
1c00b010:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c00b014:	00000000 	0x00000000
1c00b018:	b8d62020 	0xb8d62020
1c00b01c:	bbb2c6ce 	0xbbb2c6ce
1c00b020:	e4c5a5c6 	0xe4c5a5c6
1c00b024:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b028:	00000000 	0x00000000
1c00b02c:	d3bbc320 	0xd3bbc320
1c00b030:	cbd1cbd0 	0xcbd1cbd0
1c00b034:	d6bdb5f7 	0xd6bdb5f7
1c00b038:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c00b03c:	00000000 	0x00000000
1c00b040:	cc202020 	0xcc202020
1c00b044:	baf7d5d8 	0xbaf7d5d8
1c00b048:	caa2b2cf 	0xcaa2b2cf
1c00b04c:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00b050:	00000000 	0x00000000
1c00b054:	b7d6d8b5 	0xb7d6d8b5
1c00b058:	c5baf2d0 	0xc5baf2d0
1c00b05c:	f6b3acb3 	0xf6b3acb3
1c00b060:	a7ceb6b7 	0xa7ceb6b7
1c00b064:	00000000 	0x00000000
1c00b068:	bec92020 	0xbec92020
1c00b06c:	a3c4fdb3 	0xa3c4fdb3
1c00b070:	a7cae5b0 	0xa7cae5b0
1c00b074:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c00b078:	00000000 	0x00000000
1c00b07c:	bfe5c720 	0xbfe5c720
1c00b080:	ceb8d6d5 	0xceb8d6d5
1c00b084:	cae2bfc6 	0xcae2bfc6
1c00b088:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c00b08c:	00000000 	0x00000000
1c00b090:	e5b3babb 	0xe5b3babb
1c00b094:	dac4f8c7 	0xdac4f8c7
1c00b098:	d0d3dece 	0xd0d3dece
1c00b09c:	bccda7d0 	0xbccda7d0
1c00b0a0:	00000000 	0x00000000
1c00b0a4:	d0c1b620 	0xd0c1b620
1c00b0a8:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1fcec <_start-0x2e0314>
1c00b0ac:	f6b34853 	0xf6b34853
1c00b0b0:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c00b0b4:	00000000 	0x00000000
1c00b0b8:	ce202020 	0xce202020
1c00b0bc:	d2a8b6b4 	0xd2a8b6b4
1c00b0c0:	ceedb4e5 	0xceedb4e5
1c00b0c4:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c00b0c8:	00000000 	0x00000000
1c00b0cc:	dece2020 	0xdece2020
1c00b0d0:	c4bca7d0 	0xc4bca7d0
1c00b0d4:	f7c6e6b4 	0xf7c6e6b4
1c00b0d8:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c00b0dc:	00000000 	0x00000000
1c00b0e0:	b4c4bc20 	0xb4c4bc20
1c00b0e4:	c4f7c6e6 	0xc4f7c6e6
1c00b0e8:	b4ddc8da 	0xb4ddc8da
1c00b0ec:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b0f0:	00000000 	0x00000000
1c00b0f4:	cac7bc20 	0xcac7bc20
1c00b0f8:	d2beb1c2 	0xd2beb1c2
1c00b0fc:	b4ebc2b3 	0xb4ebc2b3
1c00b100:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c00b104:	00000000 	0x00000000
1c00b108:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b10c:	c6ceb8d6 	0xc6ceb8d6
1c00b110:	fac2e2bf 	0xfac2e2bf
1c00b114:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b118:	00000000 	0x00000000
1c00b11c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b120:	b7d6d8b5 	0xb7d6d8b5
1c00b124:	f3ceedb4 	0xf3ceedb4
1c00b128:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00b12c:	00000000 	0x00000000
1c00b130:	bbb5b720 	0xbbb5b720
1c00b134:	c8b7c8d8 	0xc8b7c8d8
1c00b138:	d3ebc2cf 	0xd3ebc2cf
1c00b13c:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c00b140:	00000000 	0x00000000
1c00b144:	003a4449 	0x003a4449
1c00b148:	1c002d7c 	pcaddu12i	$r28,363(0x16b)
1c00b14c:	1c002e28 	pcaddu12i	$r8,369(0x171)
1c00b150:	1c002ee8 	pcaddu12i	$r8,375(0x177)
1c00b154:	1c003070 	pcaddu12i	$r16,387(0x183)
1c00b158:	1c0031e4 	pcaddu12i	$r4,399(0x18f)

1c00b15c <F6x8>:
	...
1c00b164:	00002f00 	ctz.d	$r0,$r24
1c00b168:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c00b16c:	14000007 	lu12i.w	$r7,0
1c00b170:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c00b174:	7f2a2400 	0x7f2a2400
1c00b178:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfeb188 <_start-0x14e78>
1c00b17c:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c00b180:	55493600 	bl	-134133452(0x8014934) # 1401fab4 <_start-0x7fe054c>
1c00b184:	00005022 	bitrev.w	$r2,$r1
1c00b188:	00000305 	0x00000305
1c00b18c:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c00b190:	00000041 	0x00000041
1c00b194:	001c2241 	mul.w	$r1,$r18,$r8
1c00b198:	3e081400 	0x3e081400
1c00b19c:	08001408 	0x08001408
1c00b1a0:	08083e08 	0x08083e08
1c00b1a4:	a0000000 	0xa0000000
1c00b1a8:	08000060 	0x08000060
1c00b1ac:	08080808 	0x08080808
1c00b1b0:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c0111b0 <_sidata+0x5150>
1c00b1b4:	20000000 	ll.w	$r0,$r0,0
1c00b1b8:	02040810 	slti	$r16,$r0,258(0x102)
1c00b1bc:	49513e00 	0x49513e00
1c00b1c0:	00003e45 	revb.d	$r5,$r18
1c00b1c4:	00407f42 	0x00407f42
1c00b1c8:	51614200 	b	-134127296(0x8016140) # 14021308 <_start-0x7fdecf8>
1c00b1cc:	21004649 	sc.w	$r9,$r18,68(0x44)
1c00b1d0:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c00b1d4:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c00b1d8:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c00b1dc:	39454545 	0x39454545
1c00b1e0:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01fc1c <_sidata+0x13bbc>
1c00b1e4:	01003049 	0x01003049
1c00b1e8:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c00b1ec:	49493600 	0x49493600
1c00b1f0:	06003649 	cacop	0x9,$r18,13(0xd)
1c00b1f4:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c00b1f8:	36360000 	0x36360000
1c00b1fc:	00000000 	0x00000000
1c00b200:	00003656 	revb.4h	$r22,$r18
1c00b204:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c00b208:	14000041 	lu12i.w	$r1,2(0x2)
1c00b20c:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c00b210:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c00b214:	02000814 	slti	$r20,$r0,2(0x2)
1c00b218:	06095101 	cacop	0x1,$r8,596(0x254)
1c00b21c:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01fb4c <_sidata+0x13aec>
1c00b220:	7c003e51 	0x7c003e51
1c00b224:	7c121112 	0x7c121112
1c00b228:	49497f00 	0x49497f00
1c00b22c:	3e003649 	0x3e003649
1c00b230:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c00b234:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01f3b0 <_sidata+0x13350>
1c00b238:	7f001c22 	0x7f001c22
1c00b23c:	41494949 	beqz	$r10,2443592(0x254948) # 1c25fb84 <_sidata+0x253b24>
1c00b240:	09097f00 	0x09097f00
1c00b244:	3e000109 	0x3e000109
1c00b248:	7a494941 	0x7a494941
1c00b24c:	08087f00 	0x08087f00
1c00b250:	00007f08 	0x00007f08
1c00b254:	00417f41 	slli.d	$r1,$r26,0x1f
1c00b258:	41402000 	beqz	$r0,81952(0x14020) # 1c01f278 <_sidata+0x13218>
1c00b25c:	7f00013f 	0x7f00013f
1c00b260:	41221408 	beqz	$r0,2171412(0x212214) # 1c21d474 <_sidata+0x211414>
1c00b264:	40407f00 	beqz	$r24,16508(0x407c) # 1c00f2e0 <_sidata+0x3280>
1c00b268:	7f004040 	0x7f004040
1c00b26c:	7f020c02 	0x7f020c02
1c00b270:	08047f00 	0x08047f00
1c00b274:	3e007f10 	0x3e007f10
1c00b278:	3e414141 	0x3e414141
1c00b27c:	09097f00 	0x09097f00
1c00b280:	3e000609 	0x3e000609
1c00b284:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfed3d4 <_start-0x12c2c>
1c00b288:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c00b28c:	46004629 	bnez	$r17,2490436(0x260044) # 1c26b2d0 <_sidata+0x25f270>
1c00b290:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c00b294:	7f010100 	0x7f010100
1c00b298:	3f000101 	0x3f000101
1c00b29c:	3f404040 	0x3f404040
1c00b2a0:	40201f00 	beqz	$r24,8220(0x201c) # 1c00d2bc <_sidata+0x125c>
1c00b2a4:	3f001f20 	0x3f001f20
1c00b2a8:	3f403840 	0x3f403840
1c00b2ac:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c00b2b0:	07006314 	0x07006314
1c00b2b4:	07087008 	0x07087008
1c00b2b8:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c020418 <_sidata+0x143b8>
1c00b2bc:	00004345 	revh.2w	$r5,$r26
1c00b2c0:	0041417f 	slli.d	$r31,$r11,0x10
1c00b2c4:	552a5500 	bl	67185236(0x4012a54) # 2001dd18 <_sidata+0x4011cb8>
1c00b2c8:	0000552a 	bitrev.d	$r10,$r9
1c00b2cc:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c00b2d0:	01020400 	0x01020400
1c00b2d4:	40000402 	beqz	$r0,524292(0x80004) # 1c08b2d8 <_sidata+0x7f278>
1c00b2d8:	40404040 	beqz	$r2,16448(0x4040) # 1c00f318 <_sidata+0x32b8>
1c00b2dc:	02010000 	slti	$r0,$r0,64(0x40)
1c00b2e0:	20000004 	ll.w	$r4,$r0,0
1c00b2e4:	78545454 	0x78545454
1c00b2e8:	44487f00 	bnez	$r24,18556(0x487c) # 1c00fb64 <_sidata+0x3b04>
1c00b2ec:	38003844 	ldx.b	$r4,$r2,$r14
1c00b2f0:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c00b2f4:	44443800 	bnez	$r0,17464(0x4438) # 1c00f72c <_sidata+0x36cc>
1c00b2f8:	38007f48 	ldx.b	$r8,$r26,$r31
1c00b2fc:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c00b300:	097e0800 	0x097e0800
1c00b304:	18000201 	pcaddi	$r1,16(0x10)
1c00b308:	7ca4a4a4 	0x7ca4a4a4
1c00b30c:	04087f00 	csrxchg	$r0,$r24,0x21f
1c00b310:	00007804 	0x00007804
1c00b314:	00407d44 	0x00407d44
1c00b318:	84804000 	0x84804000
1c00b31c:	7f00007d 	0x7f00007d
1c00b320:	00442810 	0x00442810
1c00b324:	7f410000 	0x7f410000
1c00b328:	7c000040 	0x7c000040
1c00b32c:	78041804 	0x78041804
1c00b330:	04087c00 	csrrd	$r0,0x21f
1c00b334:	38007804 	ldx.b	$r4,$r0,$r30
1c00b338:	38444444 	vstx	$vr4,$r2,$r17
1c00b33c:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c00b340:	18001824 	pcaddi	$r4,193(0xc1)
1c00b344:	fc182424 	0xfc182424
1c00b348:	04087c00 	csrrd	$r0,0x21f
1c00b34c:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c10b354 <_sidata+0xff2f4>
1c00b350:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c00b354:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00f258 <_sidata+0x31f8>
1c00b358:	3c002040 	0x3c002040
1c00b35c:	7c204040 	0x7c204040
1c00b360:	40201c00 	beqz	$r0,8220(0x201c) # 1c00d37c <_sidata+0x131c>
1c00b364:	3c001c20 	0x3c001c20
1c00b368:	3c403040 	0x3c403040
1c00b36c:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c00b370:	1c004428 	pcaddu12i	$r8,545(0x221)
1c00b374:	7ca0a0a0 	0x7ca0a0a0
1c00b378:	54644400 	bl	25668(0x6444) # 1c0117bc <_sidata+0x575c>
1c00b37c:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c00b380:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c00b384 <F8X16>:
	...
1c00b394:	f8000000 	0xf8000000
1c00b398:	00000000 	0x00000000
1c00b39c:	33000000 	0x33000000
1c00b3a0:	00000030 	0x00000030
1c00b3a4:	060c1000 	cacop	0x0,$r0,772(0x304)
1c00b3a8:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c00b3b4:	4078c040 	beqz	$r2,30912(0x78c0) # 1c012c74 <_sidata+0x6c14>
1c00b3b8:	004078c0 	0x004078c0
1c00b3bc:	04043f04 	csrxchg	$r4,$r24,0x10f
1c00b3c0:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c00b3c4:	fc887000 	0xfc887000
1c00b3c8:	00003008 	revb.2h	$r8,$r0
1c00b3cc:	ff201800 	0xff201800
1c00b3d0:	00001e21 	ctz.w	$r1,$r17
1c00b3d4:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c00b3d8:	000018e0 	cto.w	$r0,$r7
1c00b3dc:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c00b3e0:	001e211e 	mulh.d	$r30,$r8,$r8
1c00b3e4:	8808f000 	0x8808f000
1c00b3e8:	00000070 	0x00000070
1c00b3ec:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c00b3f0:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c00b3f4:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c00b404:	e0000000 	0xe0000000
1c00b408:	00020418 	0x00020418
1c00b40c:	07000000 	0x07000000
1c00b410:	00402018 	0x00402018
1c00b414:	18040200 	pcaddi	$r0,8208(0x2010)
1c00b418:	000000e0 	0x000000e0
1c00b41c:	18204000 	pcaddi	$r0,66048(0x10200)
1c00b420:	00000007 	0x00000007
1c00b424:	f0804040 	0xf0804040
1c00b428:	00404080 	0x00404080
1c00b42c:	0f010202 	0x0f010202
1c00b430:	00020201 	0x00020201
1c00b434:	f0000000 	0xf0000000
1c00b438:	00000000 	0x00000000
1c00b43c:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c00b440:	00010101 	0x00010101
	...
1c00b44c:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c00b45c:	01010100 	fadd.d	$f0,$f8,$f0
1c00b460:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c00b46c:	00303000 	0x00303000
	...
1c00b478:	04186080 	csrxchg	$r0,$r4,0x618
1c00b47c:	06186000 	cacop	0x0,$r0,1560(0x618)
1c00b480:	00000001 	0x00000001
1c00b484:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00b488:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b48c:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c00b490:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b494:	f8101000 	0xf8101000
1c00b498:	00000000 	0x00000000
1c00b49c:	3f202000 	0x3f202000
1c00b4a0:	00002020 	clo.d	$r0,$r1
1c00b4a4:	08087000 	0x08087000
1c00b4a8:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00b4ac:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c00b4b0:	00302122 	0x00302122
1c00b4b4:	88083000 	0x88083000
1c00b4b8:	00304888 	0x00304888
1c00b4bc:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c00b4c0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b4c4:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c00b4c8:	0000f810 	0x0000f810
1c00b4cc:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c00b4d0:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c00b4d4:	8808f800 	0x8808f800
1c00b4d8:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c00b4dc:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c00b4e0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b4e4:	8810e000 	0x8810e000
1c00b4e8:	00001888 	cto.w	$r8,$r4
1c00b4ec:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c00b4f0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b4f4:	08083800 	0x08083800
1c00b4f8:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b4fc:	3f000000 	0x3f000000
1c00b500:	00000000 	0x00000000
1c00b504:	08887000 	0x08887000
1c00b508:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00b50c:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c00b510:	001c2221 	mul.w	$r1,$r17,$r8
1c00b514:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c00b518:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b51c:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c00b520:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c00b524:	c0000000 	0xc0000000
1c00b528:	000000c0 	0x000000c0
1c00b52c:	30000000 	0x30000000
1c00b530:	00000030 	0x00000030
1c00b534:	80000000 	0x80000000
1c00b538:	00000000 	0x00000000
1c00b53c:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c01353c <_sidata+0x74dc>
1c00b540:	00000000 	0x00000000
1c00b544:	40800000 	beqz	$r0,32768(0x8000) # 1c013544 <_sidata+0x74e4>
1c00b548:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00b54c:	04020100 	csrxchg	$r0,$r8,0x80
1c00b550:	00201008 	div.w	$r8,$r0,$r4
1c00b554:	40404040 	beqz	$r2,16448(0x4040) # 1c00f594 <_sidata+0x3534>
1c00b558:	00404040 	0x00404040
1c00b55c:	04040404 	csrrd	$r4,0x101
1c00b560:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c00b564:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c00b568:	00008040 	0x00008040
1c00b56c:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c00b570:	00010204 	0x00010204
1c00b574:	08487000 	0x08487000
1c00b578:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00b57c:	30000000 	0x30000000
1c00b580:	00000136 	0x00000136
1c00b584:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c00b588:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00b58c:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c00b590:	000b1423 	0x000b1423
1c00b594:	38c00000 	0x38c00000
1c00b598:	000000e0 	0x000000e0
1c00b59c:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c00b5a0:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00b5a4:	8888f808 	0x8888f808
1c00b5a8:	00007088 	0x00007088
1c00b5ac:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b5b0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b5b4:	080830c0 	0x080830c0
1c00b5b8:	00380808 	0x00380808
1c00b5bc:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00b5c0:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00b5c4:	0808f808 	0x0808f808
1c00b5c8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b5cc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b5d0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b5d4:	8888f808 	0x8888f808
1c00b5d8:	001008e8 	add.w	$r8,$r7,$r2
1c00b5dc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b5e0:	00182023 	sra.w	$r3,$r1,$r8
1c00b5e4:	8888f808 	0x8888f808
1c00b5e8:	001008e8 	add.w	$r8,$r7,$r2
1c00b5ec:	00203f20 	div.w	$r0,$r25,$r15
1c00b5f0:	00000003 	0x00000003
1c00b5f4:	080830c0 	0x080830c0
1c00b5f8:	00003808 	revb.2w	$r8,$r0
1c00b5fc:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c00b600:	00021e22 	0x00021e22
1c00b604:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b608:	08f80800 	0x08f80800
1c00b60c:	01213f20 	0x01213f20
1c00b610:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c00b614:	f8080800 	0xf8080800
1c00b618:	00000808 	0x00000808
1c00b61c:	3f202000 	0x3f202000
1c00b620:	00002020 	clo.d	$r0,$r1
1c00b624:	08080000 	0x08080000
1c00b628:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00b62c:	808080c0 	0x808080c0
1c00b630:	0000007f 	0x0000007f
1c00b634:	c088f808 	0xc088f808
1c00b638:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00b63c:	01203f20 	0x01203f20
1c00b640:	00203826 	div.w	$r6,$r1,$r14
1c00b644:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b648:	00000000 	0x00000000
1c00b64c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c00b650:	00302020 	0x00302020
1c00b654:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c00b658:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00b65c:	3f003f20 	0x3f003f20
1c00b660:	00203f00 	div.w	$r0,$r24,$r15
1c00b664:	c030f808 	0xc030f808
1c00b668:	08f80800 	0x08f80800
1c00b66c:	00203f20 	div.w	$r0,$r25,$r15
1c00b670:	003f1807 	0x003f1807
1c00b674:	080810e0 	0x080810e0
1c00b678:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b67c:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c00b680:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00b684:	0808f808 	0x0808f808
1c00b688:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00b68c:	01213f20 	0x01213f20
1c00b690:	00000101 	0x00000101
1c00b694:	080810e0 	0x080810e0
1c00b698:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00b69c:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c00b6a0:	004f5038 	0x004f5038
1c00b6a4:	8888f808 	0x8888f808
1c00b6a8:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c00b6ac:	00203f20 	div.w	$r0,$r25,$r15
1c00b6b0:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00b6b4:	08887000 	0x08887000
1c00b6b8:	00380808 	0x00380808
1c00b6bc:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c00b6c0:	001c2221 	mul.w	$r1,$r17,$r8
1c00b6c4:	f8080818 	0xf8080818
1c00b6c8:	00180808 	sra.w	$r8,$r0,$r2
1c00b6cc:	3f200000 	0x3f200000
1c00b6d0:	00000020 	0x00000020
1c00b6d4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c00b6d8:	08f80800 	0x08f80800
1c00b6dc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b6e0:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00b6e4:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c00b6e8:	0838c800 	0x0838c800
1c00b6ec:	38070000 	0x38070000
1c00b6f0:	0000010e 	0x0000010e
1c00b6f4:	f80008f8 	0xf80008f8
1c00b6f8:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c00b6fc:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c00b700:	00033c07 	0x00033c07
1c00b704:	80681808 	0x80681808
1c00b708:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00b70c:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c00b710:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c00b714:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c00b718:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b71c:	3f200000 	0x3f200000
1c00b720:	00000020 	0x00000020
1c00b724:	08080810 	0x08080810
1c00b728:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00b72c:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c00b730:	00182020 	sra.w	$r0,$r1,$r8
1c00b734:	fe000000 	0xfe000000
1c00b738:	00020202 	0x00020202
1c00b73c:	7f000000 	0x7f000000
1c00b740:	00404040 	0x00404040
1c00b744:	c0300c00 	0xc0300c00
1c00b748:	00000000 	0x00000000
1c00b74c:	01000000 	0x01000000
1c00b750:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c00b754:	02020200 	slti	$r0,$r16,128(0x80)
1c00b758:	000000fe 	0x000000fe
1c00b75c:	40404000 	beqz	$r0,16448(0x4040) # 1c00f79c <_sidata+0x373c>
1c00b760:	0000007f 	0x0000007f
1c00b764:	02040000 	slti	$r0,$r0,256(0x100)
1c00b768:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c00b77c:	80808080 	0x80808080
1c00b780:	80808080 	0x80808080
1c00b784:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c00b794:	80800000 	0x80800000
1c00b798:	00008080 	0x00008080
1c00b79c:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c00b7a0:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c00b7a4:	8000f808 	0x8000f808
1c00b7a8:	00000080 	0x00000080
1c00b7ac:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c00b7b0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b7b4:	80000000 	0x80000000
1c00b7b8:	00008080 	0x00008080
1c00b7bc:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b7c0:	00112020 	sub.w	$r0,$r1,$r8
1c00b7c4:	80000000 	0x80000000
1c00b7c8:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c00b7cc:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b7d0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b7d4:	80800000 	0x80800000
1c00b7d8:	00008080 	0x00008080
1c00b7dc:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c00b7e0:	00132222 	maskeqz	$r2,$r17,$r8
1c00b7e4:	f0808000 	0xf0808000
1c00b7e8:	18888888 	pcaddi	$r8,279620(0x44444)
1c00b7ec:	3f202000 	0x3f202000
1c00b7f0:	00002020 	clo.d	$r0,$r1
1c00b7f4:	80800000 	0x80800000
1c00b7f8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b7fc:	94946b00 	0x94946b00
1c00b800:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c00b804:	8000f808 	0x8000f808
1c00b808:	00008080 	0x00008080
1c00b80c:	00213f20 	div.wu	$r0,$r25,$r15
1c00b810:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00b814:	98988000 	0x98988000
1c00b818:	00000000 	0x00000000
1c00b81c:	3f202000 	0x3f202000
1c00b820:	00002020 	clo.d	$r0,$r1
1c00b824:	80000000 	0x80000000
1c00b828:	00009898 	0x00009898
1c00b82c:	8080c000 	0x8080c000
1c00b830:	00007f80 	0x00007f80
1c00b834:	0000f808 	0x0000f808
1c00b838:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b83c:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c00b840:	0020302d 	div.w	$r13,$r1,$r12
1c00b844:	f8080800 	0xf8080800
1c00b848:	00000000 	0x00000000
1c00b84c:	3f202000 	0x3f202000
1c00b850:	00002020 	clo.d	$r0,$r1
1c00b854:	80808080 	0x80808080
1c00b858:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b85c:	00203f20 	div.w	$r0,$r25,$r15
1c00b860:	3f00203f 	0x3f00203f
1c00b864:	80008080 	0x80008080
1c00b868:	00008080 	0x00008080
1c00b86c:	00213f20 	div.wu	$r0,$r25,$r15
1c00b870:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00b874:	80800000 	0x80800000
1c00b878:	00008080 	0x00008080
1c00b87c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b880:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00b884:	80008080 	0x80008080
1c00b888:	00000080 	0x00000080
1c00b88c:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c00b890:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00b894:	80000000 	0x80000000
1c00b898:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b89c:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c00b8a0:	80ffa020 	0x80ffa020
1c00b8a4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8a8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8ac:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c00b8b0:	00010020 	asrtle.d	$r1,$r0
1c00b8b4:	80800000 	0x80800000
1c00b8b8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8bc:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c00b8c0:	00192424 	srl.d	$r4,$r1,$r9
1c00b8c4:	e0808000 	0xe0808000
1c00b8c8:	00008080 	0x00008080
1c00b8cc:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c00b8d0:	00002020 	clo.d	$r0,$r1
1c00b8d4:	00008080 	0x00008080
1c00b8d8:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b8dc:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c00b8e0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00b8e4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b8e8:	80808000 	0x80808000
1c00b8ec:	300e0100 	0x300e0100
1c00b8f0:	00010608 	0x00010608
1c00b8f4:	80008080 	0x80008080
1c00b8f8:	80808000 	0x80808000
1c00b8fc:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c00b900:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c00b904:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c00b908:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b90c:	2e312000 	0x2e312000
1c00b910:	0020310e 	div.w	$r14,$r8,$r12
1c00b914:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b918:	80808000 	0x80808000
1c00b91c:	708e8180 	0x708e8180
1c00b920:	00010618 	0x00010618
1c00b924:	80808000 	0x80808000
1c00b928:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00b92c:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c00b930:	00302122 	0x00302122
1c00b934:	00000000 	0x00000000
1c00b938:	02027c80 	slti	$r0,$r4,159(0x9f)
1c00b93c:	00000000 	0x00000000
1c00b940:	40403f00 	beqz	$r24,16444(0x403c) # 1c00f97c <_sidata+0x391c>
1c00b944:	00000000 	0x00000000
1c00b948:	000000ff 	0x000000ff
1c00b94c:	00000000 	0x00000000
1c00b950:	000000ff 	0x000000ff
1c00b954:	7c020200 	0x7c020200
1c00b958:	00000080 	0x00000080
1c00b95c:	3f404000 	0x3f404000
1c00b960:	00000000 	0x00000000
1c00b964:	01010600 	fadd.d	$f0,$f16,$f1
1c00b968:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c00b974 <gImage_cc>:
	...
1c00b9c0:	c0c08080 	0xc0c08080
1c00b9c4:	80c0c0c0 	0x80c0c0c0
1c00b9c8:	00000080 	0x00000080
	...
1c00b9f0:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c00b9f4:	01000101 	0x01000101
1c00b9f8:	ff070301 	0xff070301
1c00b9fc:	0000f0fe 	0x0000f0fe
	...
1c00ba1c:	fe000000 	0xfe000000
1c00ba20:	ffffffff 	0xffffffff
1c00ba24:	0f9fffff 	0x0f9fffff
1c00ba28:	ff9f0f0f 	0xff9f0f0f
1c00ba2c:	ffffffff 	0xffffffff
1c00ba30:	0000feff 	0x0000feff
	...
1c00ba50:	3f1f0700 	0x3f1f0700
1c00ba54:	ffff7f7f 	0xffff7f7f
1c00ba58:	f8f8ffff 	0xf8f8ffff
1c00ba5c:	7fffffff 	0x7fffffff
1c00ba60:	071f3f7f 	0x071f3f7f
	...
1c00bad8:	1c008344 	pcaddu12i	$r4,1050(0x41a)
1c00badc:	1c0076f0 	pcaddu12i	$r16,951(0x3b7)
1c00bae0:	1c007788 	pcaddu12i	$r8,956(0x3bc)
1c00bae4:	1c007890 	pcaddu12i	$r16,964(0x3c4)
1c00bae8:	1c0078f4 	pcaddu12i	$r20,967(0x3c7)
1c00baec:	1c007958 	pcaddu12i	$r24,970(0x3ca)
1c00baf0:	1c007a60 	pcaddu12i	$r0,979(0x3d3)
1c00baf4:	1c007b68 	pcaddu12i	$r8,987(0x3db)
1c00baf8:	1c007c70 	pcaddu12i	$r16,995(0x3e3)
1c00bafc:	1c007cd4 	pcaddu12i	$r20,998(0x3e6)
1c00bb00:	1c007d38 	pcaddu12i	$r24,1001(0x3e9)
1c00bb04:	1c007d9c 	pcaddu12i	$r28,1004(0x3ec)
1c00bb08:	1c007e6c 	pcaddu12i	$r12,1011(0x3f3)
1c00bb0c:	1c007ed0 	pcaddu12i	$r16,1014(0x3f6)
1c00bb10:	1c007fa0 	pcaddu12i	$r0,1021(0x3fd)
1c00bb14:	1c008004 	pcaddu12i	$r4,1024(0x400)
1c00bb18:	1c00807c 	pcaddu12i	$r28,1027(0x403)
1c00bb1c:	1c008184 	pcaddu12i	$r4,1036(0x40c)
1c00bb20:	1c0081fc 	pcaddu12i	$r28,1039(0x40f)
1c00bb24:	1c0082cc 	pcaddu12i	$r12,1046(0x416)
1c00bb28:	00002e31 	ctz.d	$r17,$r17
1c00bb2c:	00002e32 	ctz.d	$r18,$r17
1c00bb30:	00002e33 	ctz.d	$r19,$r17
1c00bb34:	0000002a 	0x0000002a
1c00bb38:	00000020 	0x00000020
1c00bb3c:	1c008c80 	pcaddu12i	$r0,1124(0x464)
1c00bb40:	1c008420 	pcaddu12i	$r0,1057(0x421)
1c00bb44:	1c008484 	pcaddu12i	$r4,1060(0x424)
1c00bb48:	1c008538 	pcaddu12i	$r24,1065(0x429)
1c00bb4c:	1c008624 	pcaddu12i	$r4,1073(0x431)
1c00bb50:	1c008678 	pcaddu12i	$r24,1075(0x433)
1c00bb54:	1c0086a8 	pcaddu12i	$r8,1077(0x435)
1c00bb58:	1c0086d8 	pcaddu12i	$r24,1078(0x436)
1c00bb5c:	1c008730 	pcaddu12i	$r16,1081(0x439)
1c00bb60:	1c00876c 	pcaddu12i	$r12,1083(0x43b)
1c00bb64:	1c008788 	pcaddu12i	$r8,1084(0x43c)
1c00bb68:	1c008868 	pcaddu12i	$r8,1091(0x443)
1c00bb6c:	1c008954 	pcaddu12i	$r20,1098(0x44a)
1c00bb70:	1c008980 	pcaddu12i	$r0,1100(0x44c)
1c00bb74:	1c0089b0 	pcaddu12i	$r16,1101(0x44d)
1c00bb78:	1c0089dc 	pcaddu12i	$r28,1102(0x44e)
1c00bb7c:	1c008a18 	pcaddu12i	$r24,1104(0x450)
1c00bb80:	1c008a74 	pcaddu12i	$r20,1107(0x453)
1c00bb84:	1c008ad4 	pcaddu12i	$r20,1110(0x456)
1c00bb88:	1c008b04 	pcaddu12i	$r4,1112(0x458)
1c00bb8c:	1c008bf0 	pcaddu12i	$r16,1119(0x45f)
1c00bb90:	1c008c50 	pcaddu12i	$r16,1122(0x462)
1c00bb94:	3c200a0d 	0x3c200a0d
1c00bb98:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c0227b8 <_sidata+0x16758>
1c00bb9c:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c00bba0:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfedc04 <_start-0x123fc>
1c00bba4:	3a636e75 	0x3a636e75
1c00bba8:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c00bbac:	0a0d3e20 	0x0a0d3e20
1c00bbb0:	00000000 	0x00000000
1c00bbb4:	2e2e2e0a 	0x2e2e2e0a
1c00bbb8:	2e2e2e2e 	0x2e2e2e2e
1c00bbbc:	2e2e2e2e 	0x2e2e2e2e
1c00bbc0:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c00bbc4:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c1a1b18 <_sidata+0x195ab8>
1c00bbc8:	2e2e544e 	0x2e2e544e
1c00bbcc:	2e2e2e2e 	0x2e2e2e2e
1c00bbd0:	2e2e2e2e 	0x2e2e2e2e
1c00bbd4:	2e2e2e2e 	0x2e2e2e2e
1c00bbd8:	00000d0a 	0x00000d0a
1c00bbdc:	2d2d2d0a 	0x2d2d2d0a
1c00bbe0:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c00314c <Add_FR+0x40c>
1c00bbe4:	746e4968 	0x746e4968
1c00bbe8:	79654b3a 	0x79654b3a
1c00bbec:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bff1d54 <_start-0xe2ac>
1c00bbf0:	3a6c656e 	0x3a6c656e
1c00bbf4:	78257830 	0x78257830
1c00bbf8:	0000000a 	0x0000000a
1c00bbfc:	2e2e2e0a 	0x2e2e2e0a
1c00bc00:	2e2e2e2e 	0x2e2e2e2e
1c00bc04:	2e2e2e2e 	0x2e2e2e2e
1c00bc08:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39fe34 <_sidata+0x393dd4>
1c00bc0c:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd20268 <_start-0x2dfd98>
1c00bc10:	2e2e4c49 	0x2e2e4c49
1c00bc14:	2e2e2e2e 	0x2e2e2e2e
1c00bc18:	2e2e2e2e 	0x2e2e2e2e
1c00bc1c:	2e2e2e2e 	0x2e2e2e2e
1c00bc20:	00000d0a 	0x00000d0a
1c00bc24:	2e2e2e0a 	0x2e2e2e0a
1c00bc28:	2e2e2e2e 	0x2e2e2e2e
1c00bc2c:	2e2e2e2e 	0x2e2e2e2e
1c00bc30:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38fd5c <_sidata+0x383cfc>
1c00bc34:	2e2e2e43 	0x2e2e2e43
1c00bc38:	2e2e2e2e 	0x2e2e2e2e
1c00bc3c:	2e2e2e2e 	0x2e2e2e2e
1c00bc40:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00bc44:	0000000d 	0x0000000d
1c00bc48:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c022eac <_sidata+0x16e4c>
1c00bc4c:	72656870 	0x72656870
1c00bc50:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c00bc54:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c0229bc <_sidata+0x1695c>
1c00bc58:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c011f78 <_sidata+0x5f18>
1c00bc5c:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00bc60:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c0230cc <_sidata+0x1706c>
1c00bc64:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00bc68:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c00bc6c:	00000000 	0x00000000
1c00bc70:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c022edc <_sidata+0x16e7c>
1c00bc74:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c0225c8 <_sidata+0x16568>
1c00bc78:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffdce8 <_start-0x2318>
1c00bc7c:	7261656c 	0x7261656c
1c00bc80:	746e6920 	0x746e6920
1c00bc84:	75727265 	0x75727265
1c00bc88:	2e2e7470 	0x2e2e7470
1c00bc8c:	0000000a 	0x0000000a

1c00bc90 <Ext_IrqHandle>:
1c00bc90:	1c00a0dc 	pcaddu12i	$r28,1286(0x506)
1c00bc94:	1c00a128 	pcaddu12i	$r8,1289(0x509)
1c00bc98:	1c00a174 	pcaddu12i	$r20,1291(0x50b)
1c00bc9c:	1c00a1c0 	pcaddu12i	$r0,1294(0x50e)
1c00bca0:	1c00a20c 	pcaddu12i	$r12,1296(0x510)
1c00bca4:	1c00a258 	pcaddu12i	$r24,1298(0x512)
1c00bca8:	1c00a2a4 	pcaddu12i	$r4,1301(0x515)
1c00bcac:	1c00a2f0 	pcaddu12i	$r16,1303(0x517)
1c00bcb0:	1c00a33c 	pcaddu12i	$r28,1305(0x519)
1c00bcb4:	1c00a388 	pcaddu12i	$r8,1308(0x51c)
1c00bcb8:	1c00a3d4 	pcaddu12i	$r20,1310(0x51e)
1c00bcbc:	1c00a420 	pcaddu12i	$r0,1313(0x521)
1c00bcc0:	1c00a46c 	pcaddu12i	$r12,1315(0x523)
1c00bcc4:	1c00a4b8 	pcaddu12i	$r24,1317(0x525)
1c00bcc8:	1c00a504 	pcaddu12i	$r4,1320(0x528)
1c00bccc:	1c00a550 	pcaddu12i	$r16,1322(0x52a)
1c00bcd0:	1c00a59c 	pcaddu12i	$r28,1324(0x52c)
1c00bcd4:	1c00a5e8 	pcaddu12i	$r8,1327(0x52f)
1c00bcd8:	1c00a634 	pcaddu12i	$r20,1329(0x531)
1c00bcdc:	1c00a680 	pcaddu12i	$r0,1332(0x534)
1c00bce0:	1c00a6cc 	pcaddu12i	$r12,1334(0x536)
1c00bce4:	1c00a718 	pcaddu12i	$r24,1336(0x538)
1c00bce8:	1c00a764 	pcaddu12i	$r4,1339(0x53b)
1c00bcec:	1c00a7b0 	pcaddu12i	$r16,1341(0x53d)
1c00bcf0:	1c00a7fc 	pcaddu12i	$r28,1343(0x53f)
1c00bcf4:	1c00a848 	pcaddu12i	$r8,1346(0x542)
1c00bcf8:	1c00a894 	pcaddu12i	$r20,1348(0x544)
1c00bcfc:	1c00a8e0 	pcaddu12i	$r0,1351(0x547)
1c00bd00:	1c00a92c 	pcaddu12i	$r12,1353(0x549)
1c00bd04:	1c00a978 	pcaddu12i	$r24,1355(0x54b)
1c00bd08:	1c00a9c4 	pcaddu12i	$r4,1358(0x54e)
1c00bd0c:	1c00aa10 	pcaddu12i	$r16,1360(0x550)
1c00bd10:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd14:	1c00acac 	pcaddu12i	$r12,1381(0x565)
1c00bd18:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd1c:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd20:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd24:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd28:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd2c:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd30:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd34:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd38:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd3c:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd40:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd44:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd48:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd4c:	1c00acfc 	pcaddu12i	$r28,1383(0x567)
1c00bd50:	1c00acc8 	pcaddu12i	$r8,1382(0x566)

1c00bd54 <__FUNCTION__.1751>:
1c00bd54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0231cc <_sidata+0x1716c>
1c00bd58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022dbc <_sidata+0x16d5c>
1c00bd5c:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffedbc <_start-0x1244>
1c00bd60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002ed0 <Add_FR+0x190>
1c00bd64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012bc4 <_sidata+0x6b64>
1c00bd68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bd6c <__FUNCTION__.1755>:
1c00bd6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0231e4 <_sidata+0x17184>
1c00bd70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022dd4 <_sidata+0x16d74>
1c00bd74:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffeed4 <_start-0x112c>
1c00bd78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002ee8 <Add_FR+0x1a8>
1c00bd7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012bdc <_sidata+0x6b7c>
1c00bd80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bd84 <__FUNCTION__.1759>:
1c00bd84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0231fc <_sidata+0x1719c>
1c00bd88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022dec <_sidata+0x16d8c>
1c00bd8c:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffefec <_start-0x1014>
1c00bd90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f00 <Add_FR+0x1c0>
1c00bd94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012bf4 <_sidata+0x6b94>
1c00bd98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bd9c <__FUNCTION__.1763>:
1c00bd9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023214 <_sidata+0x171b4>
1c00bda0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e04 <_sidata+0x16da4>
1c00bda4:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bfff104 <_start-0xefc>
1c00bda8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f18 <Add_FR+0x1d8>
1c00bdac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c0c <_sidata+0x6bac>
1c00bdb0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bdb4 <__FUNCTION__.1767>:
1c00bdb4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02322c <_sidata+0x171cc>
1c00bdb8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e1c <_sidata+0x16dbc>
1c00bdbc:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bfff21c <_start-0xde4>
1c00bdc0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f30 <Add_FR+0x1f0>
1c00bdc4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c24 <_sidata+0x6bc4>
1c00bdc8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bdcc <__FUNCTION__.1771>:
1c00bdcc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023244 <_sidata+0x171e4>
1c00bdd0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e34 <_sidata+0x16dd4>
1c00bdd4:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bfff334 <_start-0xccc>
1c00bdd8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f48 <Add_FR+0x208>
1c00bddc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c3c <_sidata+0x6bdc>
1c00bde0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bde4 <__FUNCTION__.1775>:
1c00bde4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02325c <_sidata+0x171fc>
1c00bde8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e4c <_sidata+0x16dec>
1c00bdec:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bfff44c <_start-0xbb4>
1c00bdf0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f60 <Add_FR+0x220>
1c00bdf4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c54 <_sidata+0x6bf4>
1c00bdf8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bdfc <__FUNCTION__.1779>:
1c00bdfc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023274 <_sidata+0x17214>
1c00be00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e64 <_sidata+0x16e04>
1c00be04:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bfff564 <_start-0xa9c>
1c00be08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f78 <Add_FR+0x238>
1c00be0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c6c <_sidata+0x6c0c>
1c00be10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be14 <__FUNCTION__.1783>:
1c00be14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02328c <_sidata+0x1722c>
1c00be18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e7c <_sidata+0x16e1c>
1c00be1c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffee7c <_start-0x1184>
1c00be20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002f90 <Add_FR+0x250>
1c00be24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c84 <_sidata+0x6c24>
1c00be28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be2c <__FUNCTION__.1787>:
1c00be2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232a4 <_sidata+0x17244>
1c00be30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022e94 <_sidata+0x16e34>
1c00be34:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffef94 <_start-0x106c>
1c00be38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fa8 <Add_FR+0x268>
1c00be3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012c9c <_sidata+0x6c3c>
1c00be40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be44 <__FUNCTION__.1791>:
1c00be44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232bc <_sidata+0x1725c>
1c00be48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022eac <_sidata+0x16e4c>
1c00be4c:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bfff0ac <_start-0xf54>
1c00be50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fc0 <Add_FR+0x280>
1c00be54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cb4 <_sidata+0x6c54>
1c00be58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be5c <__FUNCTION__.1795>:
1c00be5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232d4 <_sidata+0x17274>
1c00be60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ec4 <_sidata+0x16e64>
1c00be64:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bfff1c4 <_start-0xe3c>
1c00be68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002fd8 <Add_FR+0x298>
1c00be6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ccc <_sidata+0x6c6c>
1c00be70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be74 <__FUNCTION__.1799>:
1c00be74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0232ec <_sidata+0x1728c>
1c00be78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022edc <_sidata+0x16e7c>
1c00be7c:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bfff2dc <_start-0xd24>
1c00be80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c002ff0 <Add_FR+0x2b0>
1c00be84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012ce4 <_sidata+0x6c84>
1c00be88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00be8c <__FUNCTION__.1803>:
1c00be8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023304 <_sidata+0x172a4>
1c00be90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ef4 <_sidata+0x16e94>
1c00be94:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bfff3f4 <_start-0xc0c>
1c00be98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003008 <Add_FR+0x2c8>
1c00be9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012cfc <_sidata+0x6c9c>
1c00bea0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bea4 <__FUNCTION__.1807>:
1c00bea4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02331c <_sidata+0x172bc>
1c00bea8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f0c <_sidata+0x16eac>
1c00beac:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bfff50c <_start-0xaf4>
1c00beb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003020 <Add_FR+0x2e0>
1c00beb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d14 <_sidata+0x6cb4>
1c00beb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bebc <__FUNCTION__.1811>:
1c00bebc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023334 <_sidata+0x172d4>
1c00bec0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f24 <_sidata+0x16ec4>
1c00bec4:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bfff624 <_start-0x9dc>
1c00bec8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003038 <Add_FR+0x2f8>
1c00becc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d2c <_sidata+0x6ccc>
1c00bed0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bed4 <__FUNCTION__.1815>:
1c00bed4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02334c <_sidata+0x172ec>
1c00bed8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f3c <_sidata+0x16edc>
1c00bedc:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffef3c <_start-0x10c4>
1c00bee0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003050 <Add_FR+0x310>
1c00bee4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d44 <_sidata+0x6ce4>
1c00bee8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00beec <__FUNCTION__.1819>:
1c00beec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023364 <_sidata+0x17304>
1c00bef0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f54 <_sidata+0x16ef4>
1c00bef4:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bfff054 <_start-0xfac>
1c00bef8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003068 <Add_FR+0x328>
1c00befc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d5c <_sidata+0x6cfc>
1c00bf00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf04 <__FUNCTION__.1823>:
1c00bf04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02337c <_sidata+0x1731c>
1c00bf08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f6c <_sidata+0x16f0c>
1c00bf0c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bfff16c <_start-0xe94>
1c00bf10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003080 <Add_FR+0x340>
1c00bf14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d74 <_sidata+0x6d14>
1c00bf18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf1c <__FUNCTION__.1827>:
1c00bf1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023394 <_sidata+0x17334>
1c00bf20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f84 <_sidata+0x16f24>
1c00bf24:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bfff284 <_start-0xd7c>
1c00bf28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003098 <Add_FR+0x358>
1c00bf2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012d8c <_sidata+0x6d2c>
1c00bf30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf34 <__FUNCTION__.1831>:
1c00bf34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233ac <_sidata+0x1734c>
1c00bf38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022f9c <_sidata+0x16f3c>
1c00bf3c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bfff39c <_start-0xc64>
1c00bf40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030b0 <Add_FR+0x370>
1c00bf44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012da4 <_sidata+0x6d44>
1c00bf48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf4c <__FUNCTION__.1835>:
1c00bf4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233c4 <_sidata+0x17364>
1c00bf50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fb4 <_sidata+0x16f54>
1c00bf54:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bfff4b4 <_start-0xb4c>
1c00bf58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030c8 <Add_FR+0x388>
1c00bf5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dbc <_sidata+0x6d5c>
1c00bf60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf64 <__FUNCTION__.1839>:
1c00bf64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233dc <_sidata+0x1737c>
1c00bf68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fcc <_sidata+0x16f6c>
1c00bf6c:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bfff5cc <_start-0xa34>
1c00bf70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030e0 <Add_FR+0x3a0>
1c00bf74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dd4 <_sidata+0x6d74>
1c00bf78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf7c <__FUNCTION__.1843>:
1c00bf7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0233f4 <_sidata+0x17394>
1c00bf80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022fe4 <_sidata+0x16f84>
1c00bf84:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bfff6e4 <_start-0x91c>
1c00bf88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0030f8 <Add_FR+0x3b8>
1c00bf8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012dec <_sidata+0x6d8c>
1c00bf90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bf94 <__FUNCTION__.1847>:
1c00bf94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02340c <_sidata+0x173ac>
1c00bf98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c022ffc <_sidata+0x16f9c>
1c00bf9c:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bfff000 <_start-0x1000>
1c00bfa0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003110 <Add_FR+0x3d0>
1c00bfa4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e04 <_sidata+0x6da4>
1c00bfa8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfac <__FUNCTION__.1851>:
1c00bfac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023424 <_sidata+0x173c4>
1c00bfb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023014 <_sidata+0x16fb4>
1c00bfb4:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bfff118 <_start-0xee8>
1c00bfb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003128 <Add_FR+0x3e8>
1c00bfbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e1c <_sidata+0x6dbc>
1c00bfc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfc4 <__FUNCTION__.1855>:
1c00bfc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02343c <_sidata+0x173dc>
1c00bfc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02302c <_sidata+0x16fcc>
1c00bfcc:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bfff230 <_start-0xdd0>
1c00bfd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003140 <Add_FR+0x400>
1c00bfd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e34 <_sidata+0x6dd4>
1c00bfd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bfdc <__FUNCTION__.1859>:
1c00bfdc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023454 <_sidata+0x173f4>
1c00bfe0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023044 <_sidata+0x16fe4>
1c00bfe4:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bfff348 <_start-0xcb8>
1c00bfe8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003158 <Add_FR+0x418>
1c00bfec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e4c <_sidata+0x6dec>
1c00bff0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00bff4 <__FUNCTION__.1863>:
1c00bff4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02346c <_sidata+0x1740c>
1c00bff8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02305c <_sidata+0x16ffc>
1c00bffc:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bfff460 <_start-0xba0>
1c00c000:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003170 <Add_FR+0x430>
1c00c004:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e64 <_sidata+0x6e04>
1c00c008:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c00c <__FUNCTION__.1867>:
1c00c00c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c023484 <_sidata+0x17424>
1c00c010:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c023074 <_sidata+0x17014>
1c00c014:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bfff578 <_start-0xa88>
1c00c018:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c003188 <Add_FR+0x448>
1c00c01c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e7c <_sidata+0x6e1c>
1c00c020:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c024 <__FUNCTION__.1871>:
1c00c024:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02349c <_sidata+0x1743c>
1c00c028:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02308c <_sidata+0x1702c>
1c00c02c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bfff690 <_start-0x970>
1c00c030:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031a0 <Add_FR+0x460>
1c00c034:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012e94 <_sidata+0x6e34>
1c00c038:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c03c <__FUNCTION__.1875>:
1c00c03c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0234b4 <_sidata+0x17454>
1c00c040:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0230a4 <_sidata+0x17044>
1c00c044:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bfff7a8 <_start-0x858>
1c00c048:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0031b8 <Add_FR+0x478>
1c00c04c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012eac <_sidata+0x6e4c>
1c00c050:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00c054 <__FUNCTION__.1884>:
1c00c054:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c0034cc <press_FR+0x54>
1c00c058:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c012eb8 <_sidata+0x6e58>
1c00c05c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

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
800010b4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb358 <_sidata+0x63fdf2f8>
800010b8:	81091121 	0x81091121
800010bc:	00000001 	0x00000001
800010c0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010c4:	7e82420b 	0x7e82420b
800010c8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010cc:	00004623 	revh.d	$r3,$r17
800010d0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbd00 <_sidata+0x63fefca0>
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
800011e4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3526c <_sidata+0x63c2920c>
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
80001218:	54547f54 	bl	-45067140(0xd50547c) # 7d506694 <_sidata+0x614fa634>
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
800012f8:	54547f54 	bl	-45067140(0xd50547c) # 7d506774 <_sidata+0x614fa714>
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
80001328:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1424 <_sidata+0x63fe53c4>
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
80001404:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09468 <_sidata+0x63bfd408>
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
80001468:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55594 <_sidata+0x63c49534>
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
800014c4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054d4 <_sidata+0x63bf9474>
800014c8:	447f4444 	bnez	$r2,1081156(0x107f44) # 8010940c <_edata+0x107970>
800014cc:	00404444 	0x00404444
800014d0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4d0 <_sidata+0x63fe1470>
800014d4:	52525252 	b	-112569776(0x94a5250) # 794a6724 <_sidata+0x5d49a6c4>
800014d8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6728 <_sidata+0x63fda6c8>
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
80001638:	52321e32 	b	-120966628(0x8ca321c) # 78ca4854 <_sidata+0x5cc987f4>
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
80001698:	54547f54 	bl	-45067140(0xd50547c) # 7d506b14 <_sidata+0x614faab4>
8000169c:	00404454 	0x00404454
800016a0:	017e0404 	0x017e0404
800016a4:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
800016a8:	95551515 	0x95551515
800016ac:	0000007f 	0x0000007f
800016b0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe39ac <_sidata+0x63fd794c>
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
80001750:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc380 <_sidata+0x63ff0320>
80001754:	f8080810 	0xf8080810
80001758:	f8080e09 	0xf8080e09
8000175c:	00000808 	0x00000808
80001760:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001764:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001768:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000176c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001770:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001774:	54544400 	bl	21572(0x5444) # 80006bb8 <_edata+0x511c>
80001778:	54547f54 	bl	-45067140(0xd50547c) # 7d506bf4 <_sidata+0x614fab94>
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
80001850:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc480 <_sidata+0x63ff0420>
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
800018e4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09948 <_sidata+0x63bfd8e8>
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
80001938:	54547f54 	bl	-45067140(0xd50547c) # 7d506db4 <_sidata+0x614fad54>
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
800019f4:	54555654 	bl	-112175788(0x9505554) # 79506f48 <_sidata+0x5d4faee8>
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
