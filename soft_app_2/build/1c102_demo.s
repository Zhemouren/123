
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438006f 	lu12i.w	$r15,114691(0x1c003)
1c00000c:	039b51ef 	ori	$r15,$r15,0x6d4
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
1c000030:	038021ef 	ori	$r15,$r15,0x8
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
1c0000a0:	54210000 	bl	8448(0x2100) # 1c0021a0 <main>
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
1c001090:	541d2c00 	bl	7468(0x1d2c) # 1c002dbc <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	541d6c00 	bl	7532(0x1d6c) # 1c002e04 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	541df000 	bl	7664(0x1df0) # 1c002e90 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	541e2400 	bl	7716(0x1e24) # 1c002ecc <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	541c3c00 	bl	7228(0x1c3c) # 1c002cec <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	541fc800 	bl	8136(0x1fc8) # 1c003080 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	541edc00 	bl	7900(0x1edc) # 1c002fa4 <INTC_Handler>
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
1c0011f0:	54058c00 	bl	1420(0x58c) # 1c00177c <UART_SendData>
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
1c001470:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c001474:	02b1218c 	addi.w	$r12,$r12,-952(0xc48)
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

1c00177c <UART_SendData>:
UART_SendData():
1c00177c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001780:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001784:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001788:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00178c:	001500ac 	move	$r12,$r5
1c001790:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001794:	03400000 	andi	$r0,$r0,0x0
1c001798:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00179c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0017a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0017a4:	0340818c 	andi	$r12,$r12,0x20
1c0017a8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001798 <UART_SendData+0x1c>
1c0017ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0017b0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0017b4:	2900018d 	st.b	$r13,$r12,0
1c0017b8:	03400000 	andi	$r0,$r0,0x0
1c0017bc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0017c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0017c4:	4c000020 	jirl	$r0,$r1,0

1c0017c8 <WDG_DogFeed>:
WDG_DogFeed():
1c0017c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017cc:	29803076 	st.w	$r22,$r3,12(0xc)
1c0017d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0017d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d8:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0017dc:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0017e0:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0017e4:	03400000 	andi	$r0,$r0,0x0
1c0017e8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0017ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017f0:	4c000020 	jirl	$r0,$r1,0

1c0017f4 <gpio_init>:
gpio_init():
1c0017f4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0017f8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0017fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001800:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001804:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001808:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00180c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001810:	6000698d 	blt	$r12,$r13,104(0x68) # 1c001878 <gpio_init+0x84>
1c001814:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001818:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00181c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001820:	44003180 	bnez	$r12,48(0x30) # 1c001850 <gpio_init+0x5c>
1c001824:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001828:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c00182c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0014300c 	nor	$r12,$r0,$r12
1c00183c:	0015018e 	move	$r14,$r12
1c001840:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001844:	0014b9ad 	and	$r13,$r13,$r14
1c001848:	2981018d 	st.w	$r13,$r12,64(0x40)
1c00184c:	50009000 	b	144(0x90) # 1c0018dc <gpio_init+0xe8>
1c001850:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001854:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001858:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00185c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001860:	001731cc 	sll.w	$r12,$r14,$r12
1c001864:	0015018e 	move	$r14,$r12
1c001868:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00186c:	001539ad 	or	$r13,$r13,$r14
1c001870:	2981018d 	st.w	$r13,$r12,64(0x40)
1c001874:	50006800 	b	104(0x68) # 1c0018dc <gpio_init+0xe8>
1c001878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00187c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001880:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001884:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001888:	44003180 	bnez	$r12,48(0x30) # 1c0018b8 <gpio_init+0xc4>
1c00188c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001890:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c001894:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001898:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00189c:	001731cc 	sll.w	$r12,$r14,$r12
1c0018a0:	0014300c 	nor	$r12,$r0,$r12
1c0018a4:	0015018e 	move	$r14,$r12
1c0018a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018ac:	0014b9ad 	and	$r13,$r13,$r14
1c0018b0:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0018b4:	50002800 	b	40(0x28) # 1c0018dc <gpio_init+0xe8>
1c0018b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018bc:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0018c0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018c8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018cc:	0015018e 	move	$r14,$r12
1c0018d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018d4:	001539ad 	or	$r13,$r13,$r14
1c0018d8:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0018dc:	03400000 	andi	$r0,$r0,0x0
1c0018e0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0018e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0018e8:	4c000020 	jirl	$r0,$r1,0

1c0018ec <gpio_write>:
gpio_write():
1c0018ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0018f0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0018f4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0018f8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0018fc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001900:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001904:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001908:	6000698d 	blt	$r12,$r13,104(0x68) # 1c001970 <gpio_write+0x84>
1c00190c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001910:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001914:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001918:	44003180 	bnez	$r12,48(0x30) # 1c001948 <gpio_write+0x5c>
1c00191c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001920:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0014b9ad 	and	$r13,$r13,$r14
1c001940:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001944:	50009000 	b	144(0x90) # 1c0019d4 <gpio_write+0xe8>
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001950:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001958:	001731cc 	sll.w	$r12,$r14,$r12
1c00195c:	0015018e 	move	$r14,$r12
1c001960:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001964:	001539ad 	or	$r13,$r13,$r14
1c001968:	2981118d 	st.w	$r13,$r12,68(0x44)
1c00196c:	50006800 	b	104(0x68) # 1c0019d4 <gpio_write+0xe8>
1c001970:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001974:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001978:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00197c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001980:	44003180 	bnez	$r12,48(0x30) # 1c0019b0 <gpio_write+0xc4>
1c001984:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001988:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c00198c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001994:	001731cc 	sll.w	$r12,$r14,$r12
1c001998:	0014300c 	nor	$r12,$r0,$r12
1c00199c:	0015018e 	move	$r14,$r12
1c0019a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019a4:	0014b9ad 	and	$r13,$r13,$r14
1c0019a8:	2981518d 	st.w	$r13,$r12,84(0x54)
1c0019ac:	50002800 	b	40(0x28) # 1c0019d4 <gpio_write+0xe8>
1c0019b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019b4:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c0019b8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019c0:	001731cc 	sll.w	$r12,$r14,$r12
1c0019c4:	0015018e 	move	$r14,$r12
1c0019c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019cc:	001539ad 	or	$r13,$r13,$r14
1c0019d0:	2981518d 	st.w	$r13,$r12,84(0x54)
1c0019d4:	03400000 	andi	$r0,$r0,0x0
1c0019d8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0019dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0019e0:	4c000020 	jirl	$r0,$r1,0

1c0019e4 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c0019e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0019ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0019f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019f8:	1400030d 	lu12i.w	$r13,24(0x18)
1c0019fc:	039a81ad 	ori	$r13,$r13,0x6a0
1c001a00:	2980018d 	st.w	$r13,$r12,0
1c001a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a08:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001a0c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001a10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a14:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001a18:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001a1c:	03400000 	andi	$r0,$r0,0x0
1c001a20:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001a24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a28:	4c000020 	jirl	$r0,$r1,0

1c001a2c <soc_I2C_Init>:
soc_I2C_Init():
1c001a2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001a34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001a38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a3c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a44:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001a48:	0388018c 	ori	$r12,$r12,0x200
1c001a4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a50:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001a54:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001a58:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001a5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a60:	2880018d 	ld.w	$r13,$r12,0
1c001a64:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001a68:	002135cc 	div.wu	$r12,$r14,$r13
1c001a6c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a74 <soc_I2C_Init+0x48>
1c001a70:	002a0007 	break	0x7
1c001a74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a7c:	0044898c 	srli.w	$r12,$r12,0x2
1c001a80:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a88:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001a8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a90:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001a94:	2900018d 	st.b	$r13,$r12,0
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	0044a18d 	srli.w	$r13,$r12,0x8
1c001aa0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001aa4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001aa8:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001aac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ab0:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c001ab4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ab8:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001abc:	001531ac 	or	$r12,$r13,$r12
1c001ac0:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001ac4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ac8:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001acc:	001535cd 	or	$r13,$r14,$r13
1c001ad0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001ad4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001ad8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001adc:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001ae0:	40001180 	beqz	$r12,16(0x10) # 1c001af0 <soc_I2C_Init+0xc4>
1c001ae4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ae8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001aec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001af0:	54001800 	bl	24(0x18) # 1c001b08 <soc_I2C_wait>
1c001af4:	03400000 	andi	$r0,$r0,0x0
1c001af8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001afc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b04:	4c000020 	jirl	$r0,$r1,0

1c001b08 <soc_I2C_wait>:
soc_I2C_wait():
1c001b08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001b0c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001b10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001b14:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b18:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001b1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b20:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001b24:	50001000 	b	16(0x10) # 1c001b34 <soc_I2C_wait+0x2c>
1c001b28:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b2c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001b30:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b38:	0340098c 	andi	$r12,$r12,0x2
1c001b3c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001b28 <soc_I2C_wait+0x20>
1c001b40:	03400000 	andi	$r0,$r0,0x0
1c001b44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001b48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001b4c:	4c000020 	jirl	$r0,$r1,0

1c001b50 <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001b50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001b54:	29803076 	st.w	$r22,$r3,12(0xc)
1c001b58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001b5c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001b60:	0380c18c 	ori	$r12,$r12,0x30
1c001b64:	29802180 	st.w	$r0,$r12,8(0x8)
1c001b68:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001b6c:	0380c18c 	ori	$r12,$r12,0x30
1c001b70:	140004ed 	lu12i.w	$r13,39(0x27)
1c001b74:	038401ad 	ori	$r13,$r13,0x100
1c001b78:	2980018d 	st.w	$r13,$r12,0
1c001b7c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001b80:	0380c18c 	ori	$r12,$r12,0x30
1c001b84:	03be800d 	ori	$r13,$r0,0xfa0
1c001b88:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001b8c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001b90:	0380c18c 	ori	$r12,$r12,0x30
1c001b94:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001b98:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001b9c:	03400000 	andi	$r0,$r0,0x0
1c001ba0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001ba4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ba8:	4c000020 	jirl	$r0,$r1,0

1c001bac <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001bac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001bb0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bb8:	0015008c 	move	$r12,$r4
1c001bbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001bc0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001bc4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001bc8:	03400dad 	andi	$r13,$r13,0x3
1c001bcc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bd0:	2900018d 	st.b	$r13,$r12,0
1c001bd4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001bd8:	0044898c 	srli.w	$r12,$r12,0x2
1c001bdc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001be0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001be4:	03400dad 	andi	$r13,$r13,0x3
1c001be8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bec:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001bf0:	03400000 	andi	$r0,$r0,0x0
1c001bf4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001bf8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001bfc:	4c000020 	jirl	$r0,$r1,0

1c001c00 <soc_Spi_Init>:
soc_Spi_Init():
1c001c00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c04:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c08:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c10:	0015008c 	move	$r12,$r4
1c001c14:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001c1c:	00150184 	move	$r4,$r12
1c001c20:	57ff8fff 	bl	-116(0xfffff8c) # 1c001bac <soc_Spi_FreqDiv>
1c001c24:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001c28:	2a00018c 	ld.bu	$r12,$r12,0
1c001c2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001c30:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001c34:	038141ad 	ori	$r13,$r13,0x50
1c001c38:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001c3c:	2900018d 	st.b	$r13,$r12,0
1c001c40:	03400000 	andi	$r0,$r0,0x0
1c001c44:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001c48:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001c4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c50:	0340118c 	andi	$r12,$r12,0x4
1c001c54:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001c44 <soc_Spi_Init+0x44>
1c001c58:	03400000 	andi	$r0,$r0,0x0
1c001c5c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001c60:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001c64:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c68:	0340058c 	andi	$r12,$r12,0x1
1c001c6c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001c5c <soc_Spi_Init+0x5c>
1c001c70:	03400000 	andi	$r0,$r0,0x0
1c001c74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001c78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c80:	4c000020 	jirl	$r0,$r1,0

1c001c84 <my_recv_dat_int>:
my_recv_dat_int():
1c001c84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001c8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c001c90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c94:	0015008c 	move	$r12,$r4
1c001c98:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c9c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001ca0:	288da18c 	ld.w	$r12,$r12,872(0x368)
1c001ca4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001ca8:	2900018d 	st.b	$r13,$r12,0
1c001cac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001cb0:	00150185 	move	$r5,$r12
1c001cb4:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001cb8:	028d3084 	addi.w	$r4,$r4,844(0x34c)
1c001cbc:	54040800 	bl	1032(0x408) # 1c0020c4 <Buffer_write>
1c001cc0:	03400000 	andi	$r0,$r0,0x0
1c001cc4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001cc8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ccc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cd0:	4c000020 	jirl	$r0,$r1,0

1c001cd4 <TIM_GetITStatus>:
TIM_GetITStatus():
1c001cd4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001cd8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001cdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001ce0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001ce4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001ce8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001cec:	2880018d 	ld.w	$r13,$r12,0
1c001cf0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cf4:	0014b1ac 	and	$r12,$r13,$r12
1c001cf8:	40001180 	beqz	$r12,16(0x10) # 1c001d08 <TIM_GetITStatus+0x34>
1c001cfc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d04:	50000800 	b	8(0x8) # 1c001d0c <TIM_GetITStatus+0x38>
1c001d08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d10:	00150184 	move	$r4,$r12
1c001d14:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001d18:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001d1c:	4c000020 	jirl	$r0,$r1,0

1c001d20 <TIM_ClearIT>:
TIM_ClearIT():
1c001d20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d2c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001d30:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001d34:	2880018e 	ld.w	$r14,$r12,0
1c001d38:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001d3c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001d40:	001535cd 	or	$r13,$r14,$r13
1c001d44:	2980018d 	st.w	$r13,$r12,0
1c001d48:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001d4c:	03800d8c 	ori	$r12,$r12,0x3
1c001d50:	2a00018c 	ld.bu	$r12,$r12,0
1c001d54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001d58:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001d5c:	03800d8c 	ori	$r12,$r12,0x3
1c001d60:	038005ad 	ori	$r13,$r13,0x1
1c001d64:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001d68:	2900018d 	st.b	$r13,$r12,0
1c001d6c:	03400000 	andi	$r0,$r0,0x0
1c001d70:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d78:	4c000020 	jirl	$r0,$r1,0

1c001d7c <my_GPIO_Init>:
my_GPIO_Init():
1c001d7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d80:	29803061 	st.w	$r1,$r3,12(0xc)
1c001d84:	29802076 	st.w	$r22,$r3,8(0x8)
1c001d88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001d90:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001d94:	57fa63ff 	bl	-1440(0xffffa60) # 1c0017f4 <gpio_init>
1c001d98:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001d9c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001da0:	57fa57ff 	bl	-1452(0xffffa54) # 1c0017f4 <gpio_init>
1c001da4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001da8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c001dac:	57fa4bff 	bl	-1464(0xffffa48) # 1c0017f4 <gpio_init>
1c001db0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001db4:	02801004 	addi.w	$r4,$r0,4(0x4)
1c001db8:	57fa3fff 	bl	-1476(0xffffa3c) # 1c0017f4 <gpio_init>
1c001dbc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001dc0:	02801404 	addi.w	$r4,$r0,5(0x5)
1c001dc4:	57fa33ff 	bl	-1488(0xffffa30) # 1c0017f4 <gpio_init>
1c001dc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001dcc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001dd0:	57fa27ff 	bl	-1500(0xffffa24) # 1c0017f4 <gpio_init>
1c001dd4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001dd8:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c001ddc:	57fa1bff 	bl	-1512(0xffffa18) # 1c0017f4 <gpio_init>
1c001de0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001de4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001de8:	57fa0fff 	bl	-1524(0xffffa0c) # 1c0017f4 <gpio_init>
1c001dec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001df0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c001df4:	57fa03ff 	bl	-1536(0xffffa00) # 1c0017f4 <gpio_init>
1c001df8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001dfc:	02802804 	addi.w	$r4,$r0,10(0xa)
1c001e00:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c0017f4 <gpio_init>
1c001e04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e08:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c001e0c:	57f9ebff 	bl	-1560(0xffff9e8) # 1c0017f4 <gpio_init>
1c001e10:	00150005 	move	$r5,$r0
1c001e14:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001e18:	57f9dfff 	bl	-1572(0xffff9dc) # 1c0017f4 <gpio_init>
1c001e1c:	00150005 	move	$r5,$r0
1c001e20:	02803804 	addi.w	$r4,$r0,14(0xe)
1c001e24:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c0017f4 <gpio_init>
1c001e28:	00150005 	move	$r5,$r0
1c001e2c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c001e30:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c0017f4 <gpio_init>
1c001e34:	00150005 	move	$r5,$r0
1c001e38:	02804004 	addi.w	$r4,$r0,16(0x10)
1c001e3c:	57f9bbff 	bl	-1608(0xffff9b8) # 1c0017f4 <gpio_init>
1c001e40:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e44:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001e48:	57faa7ff 	bl	-1372(0xffffaa4) # 1c0018ec <gpio_write>
1c001e4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e50:	02800804 	addi.w	$r4,$r0,2(0x2)
1c001e54:	57fa9bff 	bl	-1384(0xffffa98) # 1c0018ec <gpio_write>
1c001e58:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e5c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c001e60:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0018ec <gpio_write>
1c001e64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e68:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c001e6c:	57fa83ff 	bl	-1408(0xffffa80) # 1c0018ec <gpio_write>
1c001e70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e74:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c001e78:	57fa77ff 	bl	-1420(0xffffa74) # 1c0018ec <gpio_write>
1c001e7c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e80:	02801004 	addi.w	$r4,$r0,4(0x4)
1c001e84:	57fa6bff 	bl	-1432(0xffffa68) # 1c0018ec <gpio_write>
1c001e88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e8c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c001e90:	57fa5fff 	bl	-1444(0xffffa5c) # 1c0018ec <gpio_write>
1c001e94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e98:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001e9c:	57fa53ff 	bl	-1456(0xffffa50) # 1c0018ec <gpio_write>
1c001ea0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ea4:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c001ea8:	57fa47ff 	bl	-1468(0xffffa44) # 1c0018ec <gpio_write>
1c001eac:	00150005 	move	$r5,$r0
1c001eb0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c001eb4:	57fa3bff 	bl	-1480(0xffffa38) # 1c0018ec <gpio_write>
1c001eb8:	00150005 	move	$r5,$r0
1c001ebc:	02802404 	addi.w	$r4,$r0,9(0x9)
1c001ec0:	57fa2fff 	bl	-1492(0xffffa2c) # 1c0018ec <gpio_write>
1c001ec4:	03400000 	andi	$r0,$r0,0x0
1c001ec8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ecc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ed0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ed4:	4c000020 	jirl	$r0,$r1,0

1c001ed8 <my_I2C_Init>:
my_I2C_Init():
1c001ed8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001edc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001ee0:	29806076 	st.w	$r22,$r3,24(0x18)
1c001ee4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ee8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c001eec:	00150184 	move	$r4,$r12
1c001ef0:	57faf7ff 	bl	-1292(0xffffaf4) # 1c0019e4 <soc_I2C_StructInit>
1c001ef4:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fb33ff 	bl	-1232(0xffffb30) # 1c001a2c <soc_I2C_Init>
1c001f00:	1400016c 	lu12i.w	$r12,11(0xb)
1c001f04:	0399958c 	ori	$r12,$r12,0x665
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	50001400 	b	20(0x14) # 1c001f20 <my_I2C_Init+0x48>
1c001f10:	03400000 	andi	$r0,$r0,0x0
1c001f14:	03400000 	andi	$r0,$r0,0x0
1c001f18:	03400000 	andi	$r0,$r0,0x0
1c001f1c:	03400000 	andi	$r0,$r0,0x0
1c001f20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f24:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001f28:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001f2c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001f10 <my_I2C_Init+0x38>
1c001f30:	03400000 	andi	$r0,$r0,0x0
1c001f34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001f38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001f3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001f40:	4c000020 	jirl	$r0,$r1,0

1c001f44 <my_PWM_Init>:
my_PWM_Init():
1c001f44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001f4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c001f50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f54:	57fbffff 	bl	-1028(0xffffbfc) # 1c001b50 <pwm_steering_engine_init>
1c001f58:	1400016c 	lu12i.w	$r12,11(0xb)
1c001f5c:	0399958c 	ori	$r12,$r12,0x665
1c001f60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f64:	50001400 	b	20(0x14) # 1c001f78 <my_PWM_Init+0x34>
1c001f68:	03400000 	andi	$r0,$r0,0x0
1c001f6c:	03400000 	andi	$r0,$r0,0x0
1c001f70:	03400000 	andi	$r0,$r0,0x0
1c001f74:	03400000 	andi	$r0,$r0,0x0
1c001f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001f80:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001f84:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001f68 <my_PWM_Init+0x24>
1c001f88:	03400000 	andi	$r0,$r0,0x0
1c001f8c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001f90:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001f94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001f98:	4c000020 	jirl	$r0,$r1,0

1c001f9c <my_SPI_Init>:
my_SPI_Init():
1c001f9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fa0:	29803061 	st.w	$r1,$r3,12(0xc)
1c001fa4:	29802076 	st.w	$r22,$r3,8(0x8)
1c001fa8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001fac:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c001fb0:	57fc53ff 	bl	-944(0xffffc50) # 1c001c00 <soc_Spi_Init>
1c001fb4:	03400000 	andi	$r0,$r0,0x0
1c001fb8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fbc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001fc0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fc4:	4c000020 	jirl	$r0,$r1,0

1c001fc8 <my_USART1_Init>:
my_USART1_Init():
1c001fc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001fcc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001fd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fd4:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001fd8:	0380118c 	ori	$r12,$r12,0x4
1c001fdc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001fe0:	2980018d 	st.w	$r13,$r12,0
1c001fe4:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c001fe8:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c001fec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ff0:	50001400 	b	20(0x14) # 1c002004 <my_USART1_Init+0x3c>
1c001ff4:	03400000 	andi	$r0,$r0,0x0
1c001ff8:	03400000 	andi	$r0,$r0,0x0
1c001ffc:	03400000 	andi	$r0,$r0,0x0
1c002000:	03400000 	andi	$r0,$r0,0x0
1c002004:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002008:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00200c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002010:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001ff4 <my_USART1_Init+0x2c>
1c002014:	03400000 	andi	$r0,$r0,0x0
1c002018:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00201c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002020:	4c000020 	jirl	$r0,$r1,0

1c002024 <my_USART0_Init>:
my_USART0_Init():
1c002024:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002028:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00202c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002030:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002034:	0380118c 	ori	$r12,$r12,0x4
1c002038:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00203c:	2980018d 	st.w	$r13,$r12,0
1c002040:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c002044:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c002048:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00204c:	50001400 	b	20(0x14) # 1c002060 <my_USART0_Init+0x3c>
1c002050:	03400000 	andi	$r0,$r0,0x0
1c002054:	03400000 	andi	$r0,$r0,0x0
1c002058:	03400000 	andi	$r0,$r0,0x0
1c00205c:	03400000 	andi	$r0,$r0,0x0
1c002060:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002064:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002068:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00206c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002050 <my_USART0_Init+0x2c>
1c002070:	03400000 	andi	$r0,$r0,0x0
1c002074:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002078:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00207c:	4c000020 	jirl	$r0,$r1,0

1c002080 <interrupt_fun>:
interrupt_fun():
1c002080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002084:	29803061 	st.w	$r1,$r3,12(0xc)
1c002088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00208c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002090:	57f09bff 	bl	-3944(0xffff098) # 1c001128 <EnableInt>
1c002094:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002098:	2a00018c 	ld.bu	$r12,$r12,0
1c00209c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020a0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0020a4:	038031ad 	ori	$r13,$r13,0xc
1c0020a8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0020ac:	2900018d 	st.b	$r13,$r12,0
1c0020b0:	03400000 	andi	$r0,$r0,0x0
1c0020b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0020bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020c0:	4c000020 	jirl	$r0,$r1,0

1c0020c4 <Buffer_write>:
Buffer_write():
1c0020c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020c8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0020cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020d0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0020d4:	001500ac 	move	$r12,$r5
1c0020d8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0020dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020e0:	2880018c 	ld.w	$r12,$r12,0
1c0020e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0020e8:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c0020ec:	0010358c 	add.w	$r12,$r12,$r13
1c0020f0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0020f4:	2900018d 	st.b	$r13,$r12,0
1c0020f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020fc:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c002100:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002104:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002108:	2980318d 	st.w	$r13,$r12,12(0xc)
1c00210c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002110:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002114:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002118:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00211c:	60000dac 	blt	$r13,$r12,12(0xc) # 1c002128 <Buffer_write+0x64>
1c002120:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002124:	29803180 	st.w	$r0,$r12,12(0xc)
1c002128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00212c:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c002130:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002134:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002138:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00213c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002140:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002144:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002148:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00214c:	6400458d 	bge	$r12,$r13,68(0x44) # 1c002190 <Buffer_write+0xcc>
1c002150:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002154:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002158:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00215c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c002160:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002164:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002168:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00216c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002170:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002174:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002178:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c00217c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002180:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002184:	60000dac 	blt	$r13,$r12,12(0xc) # 1c002190 <Buffer_write+0xcc>
1c002188:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00218c:	29802180 	st.w	$r0,$r12,8(0x8)
1c002190:	03400000 	andi	$r0,$r0,0x0
1c002194:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002198:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00219c:	4c000020 	jirl	$r0,$r1,0

1c0021a0 <main>:
main():
1c0021a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021b0:	57ef7bff 	bl	-4232(0xfffef78) # 1c001128 <EnableInt>
1c0021b4:	57fbcbff 	bl	-1080(0xffffbc8) # 1c001d7c <my_GPIO_Init>
1c0021b8:	57fd8fff 	bl	-628(0xffffd8c) # 1c001f44 <my_PWM_Init>
1c0021bc:	57fde3ff 	bl	-544(0xffffde0) # 1c001f9c <my_SPI_Init>
1c0021c0:	57fd1bff 	bl	-744(0xffffd18) # 1c001ed8 <my_I2C_Init>
1c0021c4:	57fe07ff 	bl	-508(0xffffe04) # 1c001fc8 <my_USART1_Init>
1c0021c8:	57fe5fff 	bl	-420(0xffffe5c) # 1c002024 <my_USART0_Init>
1c0021cc:	57feb7ff 	bl	-332(0xffffeb4) # 1c002080 <interrupt_fun>
1c0021d0:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0021d4:	03bfc98c 	ori	$r12,$r12,0xff2
1c0021d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021dc:	50001400 	b	20(0x14) # 1c0021f0 <main+0x50>
1c0021e0:	03400000 	andi	$r0,$r0,0x0
1c0021e4:	03400000 	andi	$r0,$r0,0x0
1c0021e8:	03400000 	andi	$r0,$r0,0x0
1c0021ec:	03400000 	andi	$r0,$r0,0x0
1c0021f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0021f8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0021fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0021e0 <main+0x40>
1c002200:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002204:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002208:	57f6e7ff 	bl	-2332(0xffff6e4) # 1c0018ec <gpio_write>
1c00220c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002210:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002214:	57f6dbff 	bl	-2344(0xffff6d8) # 1c0018ec <gpio_write>
1c002218:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00221c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002220:	57f6cfff 	bl	-2356(0xffff6cc) # 1c0018ec <gpio_write>
1c002224:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002228:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00222c:	57f6c3ff 	bl	-2368(0xffff6c0) # 1c0018ec <gpio_write>
1c002230:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002234:	02801404 	addi.w	$r4,$r0,5(0x5)
1c002238:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c0018ec <gpio_write>
1c00223c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002240:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002244:	57f6abff 	bl	-2392(0xffff6a8) # 1c0018ec <gpio_write>
1c002248:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00224c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002250:	57f69fff 	bl	-2404(0xffff69c) # 1c0018ec <gpio_write>
1c002254:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002258:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00225c:	57f693ff 	bl	-2416(0xffff690) # 1c0018ec <gpio_write>
1c002260:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002264:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002268:	57f687ff 	bl	-2428(0xffff684) # 1c0018ec <gpio_write>
1c00226c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002270:	02802804 	addi.w	$r4,$r0,10(0xa)
1c002274:	57f67bff 	bl	-2440(0xffff678) # 1c0018ec <gpio_write>
1c002278:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00227c:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c002280:	57f66fff 	bl	-2452(0xffff66c) # 1c0018ec <gpio_write>
1c002284:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002288:	03bfc98c 	ori	$r12,$r12,0xff2
1c00228c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002290:	50001400 	b	20(0x14) # 1c0022a4 <main+0x104>
1c002294:	03400000 	andi	$r0,$r0,0x0
1c002298:	03400000 	andi	$r0,$r0,0x0
1c00229c:	03400000 	andi	$r0,$r0,0x0
1c0022a0:	03400000 	andi	$r0,$r0,0x0
1c0022a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0022ac:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0022b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002294 <main+0xf4>
1c0022b4:	00150005 	move	$r5,$r0
1c0022b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0022bc:	57f633ff 	bl	-2512(0xffff630) # 1c0018ec <gpio_write>
1c0022c0:	00150005 	move	$r5,$r0
1c0022c4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0022c8:	57f627ff 	bl	-2524(0xffff624) # 1c0018ec <gpio_write>
1c0022cc:	00150005 	move	$r5,$r0
1c0022d0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0022d4:	57f61bff 	bl	-2536(0xffff618) # 1c0018ec <gpio_write>
1c0022d8:	00150005 	move	$r5,$r0
1c0022dc:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0022e0:	57f60fff 	bl	-2548(0xffff60c) # 1c0018ec <gpio_write>
1c0022e4:	00150005 	move	$r5,$r0
1c0022e8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0022ec:	57f603ff 	bl	-2560(0xffff600) # 1c0018ec <gpio_write>
1c0022f0:	00150005 	move	$r5,$r0
1c0022f4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0022f8:	57f5f7ff 	bl	-2572(0xffff5f4) # 1c0018ec <gpio_write>
1c0022fc:	00150005 	move	$r5,$r0
1c002300:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002304:	57f5ebff 	bl	-2584(0xffff5e8) # 1c0018ec <gpio_write>
1c002308:	00150005 	move	$r5,$r0
1c00230c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002310:	57f5dfff 	bl	-2596(0xffff5dc) # 1c0018ec <gpio_write>
1c002314:	00150005 	move	$r5,$r0
1c002318:	02802404 	addi.w	$r4,$r0,9(0x9)
1c00231c:	57f5d3ff 	bl	-2608(0xffff5d0) # 1c0018ec <gpio_write>
1c002320:	00150005 	move	$r5,$r0
1c002324:	02802804 	addi.w	$r4,$r0,10(0xa)
1c002328:	57f5c7ff 	bl	-2620(0xffff5c4) # 1c0018ec <gpio_write>
1c00232c:	00150005 	move	$r5,$r0
1c002330:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c002334:	57f5bbff 	bl	-2632(0xffff5b8) # 1c0018ec <gpio_write>
1c002338:	14000e2c 	lu12i.w	$r12,113(0x71)
1c00233c:	03bfc98c 	ori	$r12,$r12,0xff2
1c002340:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002344:	50001400 	b	20(0x14) # 1c002358 <main+0x1b8>
1c002348:	03400000 	andi	$r0,$r0,0x0
1c00234c:	03400000 	andi	$r0,$r0,0x0
1c002350:	03400000 	andi	$r0,$r0,0x0
1c002354:	03400000 	andi	$r0,$r0,0x0
1c002358:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00235c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002360:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002364:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002348 <main+0x1a8>
1c002368:	53fe9bff 	b	-360(0xffffe98) # 1c002200 <main+0x60>

1c00236c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c00236c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002370:	29803061 	st.w	$r1,$r3,12(0xc)
1c002374:	29802076 	st.w	$r22,$r3,8(0x8)
1c002378:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00237c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002380:	028130c6 	addi.w	$r6,$r6,76(0x4c)
1c002384:	02805005 	addi.w	$r5,$r0,20(0x14)
1c002388:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00238c:	02ba0084 	addi.w	$r4,$r4,-384(0xe80)
1c002390:	57f04bff 	bl	-4024(0xffff048) # 1c0013d8 <myprintf>
1c002394:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00239c:	03808184 	ori	$r4,$r12,0x20
1c0023a0:	57edf3ff 	bl	-4624(0xfffedf0) # 1c001190 <EXTI_ClearITPendingBit>
1c0023a4:	03400000 	andi	$r0,$r0,0x0
1c0023a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0023b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023b4:	4c000020 	jirl	$r0,$r1,0

1c0023b8 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0023b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0023bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0023c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0023c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0023c8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0023cc:	028060c6 	addi.w	$r6,$r6,24(0x18)
1c0023d0:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0023d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0023d8:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c0023dc:	57efffff 	bl	-4100(0xfffeffc) # 1c0013d8 <myprintf>
1c0023e0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0023e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023e8:	03808184 	ori	$r4,$r12,0x20
1c0023ec:	57eda7ff 	bl	-4700(0xfffeda4) # 1c001190 <EXTI_ClearITPendingBit>
1c0023f0:	03400000 	andi	$r0,$r0,0x0
1c0023f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0023fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002400:	4c000020 	jirl	$r0,$r1,0

1c002404 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c002404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002408:	29803061 	st.w	$r1,$r3,12(0xc)
1c00240c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002410:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002414:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002418:	02bf90c6 	addi.w	$r6,$r6,-28(0xfe4)
1c00241c:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c002420:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002424:	02b7a084 	addi.w	$r4,$r4,-536(0xde8)
1c002428:	57efb3ff 	bl	-4176(0xfffefb0) # 1c0013d8 <myprintf>
1c00242c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002430:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002434:	03808184 	ori	$r4,$r12,0x20
1c002438:	57ed5bff 	bl	-4776(0xfffed58) # 1c001190 <EXTI_ClearITPendingBit>
1c00243c:	03400000 	andi	$r0,$r0,0x0
1c002440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002444:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00244c:	4c000020 	jirl	$r0,$r1,0

1c002450 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c002450:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002454:	29803061 	st.w	$r1,$r3,12(0xc)
1c002458:	29802076 	st.w	$r22,$r3,8(0x8)
1c00245c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002460:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002464:	02bec0c6 	addi.w	$r6,$r6,-80(0xfb0)
1c002468:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c00246c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002470:	02b67084 	addi.w	$r4,$r4,-612(0xd9c)
1c002474:	57ef67ff 	bl	-4252(0xfffef64) # 1c0013d8 <myprintf>
1c002478:	02802005 	addi.w	$r5,$r0,8(0x8)
1c00247c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002480:	03808184 	ori	$r4,$r12,0x20
1c002484:	57ed0fff 	bl	-4852(0xfffed0c) # 1c001190 <EXTI_ClearITPendingBit>
1c002488:	03400000 	andi	$r0,$r0,0x0
1c00248c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002490:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002494:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002498:	4c000020 	jirl	$r0,$r1,0

1c00249c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c00249c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0024a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0024a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0024a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0024ac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0024b0:	02bdf0c6 	addi.w	$r6,$r6,-132(0xf7c)
1c0024b4:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0024b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0024bc:	02b54084 	addi.w	$r4,$r4,-688(0xd50)
1c0024c0:	57ef1bff 	bl	-4328(0xfffef18) # 1c0013d8 <myprintf>
1c0024c4:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0024c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024cc:	03808184 	ori	$r4,$r12,0x20
1c0024d0:	57ecc3ff 	bl	-4928(0xfffecc0) # 1c001190 <EXTI_ClearITPendingBit>
1c0024d4:	03400000 	andi	$r0,$r0,0x0
1c0024d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0024dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0024e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024e4:	4c000020 	jirl	$r0,$r1,0

1c0024e8 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0024e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0024ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0024f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0024f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0024f8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0024fc:	02bd20c6 	addi.w	$r6,$r6,-184(0xf48)
1c002500:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002504:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002508:	02b41084 	addi.w	$r4,$r4,-764(0xd04)
1c00250c:	57eecfff 	bl	-4404(0xfffeecc) # 1c0013d8 <myprintf>
1c002510:	02808005 	addi.w	$r5,$r0,32(0x20)
1c002514:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002518:	03808184 	ori	$r4,$r12,0x20
1c00251c:	57ec77ff 	bl	-5004(0xfffec74) # 1c001190 <EXTI_ClearITPendingBit>
1c002520:	03400000 	andi	$r0,$r0,0x0
1c002524:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002528:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00252c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002530:	4c000020 	jirl	$r0,$r1,0

1c002534 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c002534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00253c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002544:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002548:	02bc50c6 	addi.w	$r6,$r6,-236(0xf14)
1c00254c:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c002550:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002554:	02b2e084 	addi.w	$r4,$r4,-840(0xcb8)
1c002558:	57ee83ff 	bl	-4480(0xfffee80) # 1c0013d8 <myprintf>
1c00255c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c002560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002564:	03808184 	ori	$r4,$r12,0x20
1c002568:	57ec2bff 	bl	-5080(0xfffec28) # 1c001190 <EXTI_ClearITPendingBit>
1c00256c:	03400000 	andi	$r0,$r0,0x0
1c002570:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002574:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002578:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00257c:	4c000020 	jirl	$r0,$r1,0

1c002580 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c002580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002584:	29803061 	st.w	$r1,$r3,12(0xc)
1c002588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00258c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002590:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002594:	02bb80c6 	addi.w	$r6,$r6,-288(0xee0)
1c002598:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c00259c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0025a0:	02b1b084 	addi.w	$r4,$r4,-916(0xc6c)
1c0025a4:	57ee37ff 	bl	-4556(0xfffee34) # 1c0013d8 <myprintf>
1c0025a8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0025ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025b0:	03808184 	ori	$r4,$r12,0x20
1c0025b4:	57ebdfff 	bl	-5156(0xfffebdc) # 1c001190 <EXTI_ClearITPendingBit>
1c0025b8:	03400000 	andi	$r0,$r0,0x0
1c0025bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0025c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0025c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0025c8:	4c000020 	jirl	$r0,$r1,0

1c0025cc <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0025cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0025d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0025d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0025d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0025dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0025e0:	02bab0c6 	addi.w	$r6,$r6,-340(0xeac)
1c0025e4:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0025e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0025ec:	02b08084 	addi.w	$r4,$r4,-992(0xc20)
1c0025f0:	57edebff 	bl	-4632(0xfffede8) # 1c0013d8 <myprintf>
1c0025f4:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0025f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025fc:	03808184 	ori	$r4,$r12,0x20
1c002600:	57eb93ff 	bl	-5232(0xfffeb90) # 1c001190 <EXTI_ClearITPendingBit>
1c002604:	03400000 	andi	$r0,$r0,0x0
1c002608:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00260c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002610:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002614:	4c000020 	jirl	$r0,$r1,0

1c002618 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c002618:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00261c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002620:	29802076 	st.w	$r22,$r3,8(0x8)
1c002624:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002628:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00262c:	02b9e0c6 	addi.w	$r6,$r6,-392(0xe78)
1c002630:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c002634:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002638:	02af5084 	addi.w	$r4,$r4,-1068(0xbd4)
1c00263c:	57ed9fff 	bl	-4708(0xfffed9c) # 1c0013d8 <myprintf>
1c002640:	02880005 	addi.w	$r5,$r0,512(0x200)
1c002644:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002648:	03808184 	ori	$r4,$r12,0x20
1c00264c:	57eb47ff 	bl	-5308(0xfffeb44) # 1c001190 <EXTI_ClearITPendingBit>
1c002650:	03400000 	andi	$r0,$r0,0x0
1c002654:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002658:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00265c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002660:	4c000020 	jirl	$r0,$r1,0

1c002664 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c002664:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002668:	29803061 	st.w	$r1,$r3,12(0xc)
1c00266c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002670:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002674:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002678:	02b910c6 	addi.w	$r6,$r6,-444(0xe44)
1c00267c:	02812405 	addi.w	$r5,$r0,73(0x49)
1c002680:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002684:	02ae2084 	addi.w	$r4,$r4,-1144(0xb88)
1c002688:	57ed53ff 	bl	-4784(0xfffed50) # 1c0013d8 <myprintf>
1c00268c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c002690:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002694:	03808184 	ori	$r4,$r12,0x20
1c002698:	57eafbff 	bl	-5384(0xfffeaf8) # 1c001190 <EXTI_ClearITPendingBit>
1c00269c:	03400000 	andi	$r0,$r0,0x0
1c0026a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0026a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0026a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0026ac:	4c000020 	jirl	$r0,$r1,0

1c0026b0 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0026b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0026b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0026b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0026bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0026c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0026c4:	02b840c6 	addi.w	$r6,$r6,-496(0xe10)
1c0026c8:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c0026cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0026d0:	02acf084 	addi.w	$r4,$r4,-1220(0xb3c)
1c0026d4:	57ed07ff 	bl	-4860(0xfffed04) # 1c0013d8 <myprintf>
1c0026d8:	03a00005 	ori	$r5,$r0,0x800
1c0026dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026e0:	03808184 	ori	$r4,$r12,0x20
1c0026e4:	57eaafff 	bl	-5460(0xfffeaac) # 1c001190 <EXTI_ClearITPendingBit>
1c0026e8:	03400000 	andi	$r0,$r0,0x0
1c0026ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0026f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0026f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0026f8:	4c000020 	jirl	$r0,$r1,0

1c0026fc <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0026fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002700:	29803061 	st.w	$r1,$r3,12(0xc)
1c002704:	29802076 	st.w	$r22,$r3,8(0x8)
1c002708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00270c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002710:	02b770c6 	addi.w	$r6,$r6,-548(0xddc)
1c002714:	02815005 	addi.w	$r5,$r0,84(0x54)
1c002718:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00271c:	02abc084 	addi.w	$r4,$r4,-1296(0xaf0)
1c002720:	57ecbbff 	bl	-4936(0xfffecb8) # 1c0013d8 <myprintf>
1c002724:	14000025 	lu12i.w	$r5,1(0x1)
1c002728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00272c:	03808184 	ori	$r4,$r12,0x20
1c002730:	57ea63ff 	bl	-5536(0xfffea60) # 1c001190 <EXTI_ClearITPendingBit>
1c002734:	03400000 	andi	$r0,$r0,0x0
1c002738:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00273c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002740:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002744:	4c000020 	jirl	$r0,$r1,0

1c002748 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c002748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00274c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002750:	29802076 	st.w	$r22,$r3,8(0x8)
1c002754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002758:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00275c:	02b6a0c6 	addi.w	$r6,$r6,-600(0xda8)
1c002760:	02816405 	addi.w	$r5,$r0,89(0x59)
1c002764:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002768:	02aa9084 	addi.w	$r4,$r4,-1372(0xaa4)
1c00276c:	57ec6fff 	bl	-5012(0xfffec6c) # 1c0013d8 <myprintf>
1c002770:	14000045 	lu12i.w	$r5,2(0x2)
1c002774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002778:	03808184 	ori	$r4,$r12,0x20
1c00277c:	57ea17ff 	bl	-5612(0xfffea14) # 1c001190 <EXTI_ClearITPendingBit>
1c002780:	03400000 	andi	$r0,$r0,0x0
1c002784:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002788:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00278c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002790:	4c000020 	jirl	$r0,$r1,0

1c002794 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c002794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00279c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0027a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0027a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0027a8:	02b5d0c6 	addi.w	$r6,$r6,-652(0xd74)
1c0027ac:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c0027b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0027b4:	02a96084 	addi.w	$r4,$r4,-1448(0xa58)
1c0027b8:	57ec23ff 	bl	-5088(0xfffec20) # 1c0013d8 <myprintf>
1c0027bc:	14000085 	lu12i.w	$r5,4(0x4)
1c0027c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027c4:	03808184 	ori	$r4,$r12,0x20
1c0027c8:	57e9cbff 	bl	-5688(0xfffe9c8) # 1c001190 <EXTI_ClearITPendingBit>
1c0027cc:	03400000 	andi	$r0,$r0,0x0
1c0027d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0027d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0027d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0027dc:	4c000020 	jirl	$r0,$r1,0

1c0027e0 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0027e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0027e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0027e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0027ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0027f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0027f4:	02b500c6 	addi.w	$r6,$r6,-704(0xd40)
1c0027f8:	02819405 	addi.w	$r5,$r0,101(0x65)
1c0027fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002800:	02a83084 	addi.w	$r4,$r4,-1524(0xa0c)
1c002804:	57ebd7ff 	bl	-5164(0xfffebd4) # 1c0013d8 <myprintf>
1c002808:	14000105 	lu12i.w	$r5,8(0x8)
1c00280c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002810:	03808184 	ori	$r4,$r12,0x20
1c002814:	57e97fff 	bl	-5764(0xfffe97c) # 1c001190 <EXTI_ClearITPendingBit>
1c002818:	03400000 	andi	$r0,$r0,0x0
1c00281c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002820:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002828:	4c000020 	jirl	$r0,$r1,0

1c00282c <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c00282c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002830:	29803061 	st.w	$r1,$r3,12(0xc)
1c002834:	29802076 	st.w	$r22,$r3,8(0x8)
1c002838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00283c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002840:	02b430c6 	addi.w	$r6,$r6,-756(0xd0c)
1c002844:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c002848:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00284c:	02a70084 	addi.w	$r4,$r4,-1600(0x9c0)
1c002850:	57eb8bff 	bl	-5240(0xfffeb88) # 1c0013d8 <myprintf>
1c002854:	14000205 	lu12i.w	$r5,16(0x10)
1c002858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00285c:	03808184 	ori	$r4,$r12,0x20
1c002860:	57e933ff 	bl	-5840(0xfffe930) # 1c001190 <EXTI_ClearITPendingBit>
1c002864:	03400000 	andi	$r0,$r0,0x0
1c002868:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00286c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002870:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002874:	4c000020 	jirl	$r0,$r1,0

1c002878 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c002878:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00287c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002880:	29802076 	st.w	$r22,$r3,8(0x8)
1c002884:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002888:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00288c:	02b360c6 	addi.w	$r6,$r6,-808(0xcd8)
1c002890:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c002894:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002898:	02a5d084 	addi.w	$r4,$r4,-1676(0x974)
1c00289c:	57eb3fff 	bl	-5316(0xfffeb3c) # 1c0013d8 <myprintf>
1c0028a0:	14000405 	lu12i.w	$r5,32(0x20)
1c0028a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028a8:	03808184 	ori	$r4,$r12,0x20
1c0028ac:	57e8e7ff 	bl	-5916(0xfffe8e4) # 1c001190 <EXTI_ClearITPendingBit>
1c0028b0:	03400000 	andi	$r0,$r0,0x0
1c0028b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0028b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0028bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0028c0:	4c000020 	jirl	$r0,$r1,0

1c0028c4 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0028c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0028c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0028cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0028d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0028d4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0028d8:	02b290c6 	addi.w	$r6,$r6,-860(0xca4)
1c0028dc:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0028e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0028e4:	02a4a084 	addi.w	$r4,$r4,-1752(0x928)
1c0028e8:	57eaf3ff 	bl	-5392(0xfffeaf0) # 1c0013d8 <myprintf>
1c0028ec:	14000805 	lu12i.w	$r5,64(0x40)
1c0028f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028f4:	03808184 	ori	$r4,$r12,0x20
1c0028f8:	57e89bff 	bl	-5992(0xfffe898) # 1c001190 <EXTI_ClearITPendingBit>
1c0028fc:	03400000 	andi	$r0,$r0,0x0
1c002900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00290c:	4c000020 	jirl	$r0,$r1,0

1c002910 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c002910:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002914:	29803061 	st.w	$r1,$r3,12(0xc)
1c002918:	29802076 	st.w	$r22,$r3,8(0x8)
1c00291c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002920:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002924:	02b1c0c6 	addi.w	$r6,$r6,-912(0xc70)
1c002928:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c00292c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002930:	02a37084 	addi.w	$r4,$r4,-1828(0x8dc)
1c002934:	57eaa7ff 	bl	-5468(0xfffeaa4) # 1c0013d8 <myprintf>
1c002938:	14001005 	lu12i.w	$r5,128(0x80)
1c00293c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002940:	03808184 	ori	$r4,$r12,0x20
1c002944:	57e84fff 	bl	-6068(0xfffe84c) # 1c001190 <EXTI_ClearITPendingBit>
1c002948:	03400000 	andi	$r0,$r0,0x0
1c00294c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002950:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002954:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002958:	4c000020 	jirl	$r0,$r1,0

1c00295c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00295c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002960:	29803061 	st.w	$r1,$r3,12(0xc)
1c002964:	29802076 	st.w	$r22,$r3,8(0x8)
1c002968:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00296c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002970:	02b0f0c6 	addi.w	$r6,$r6,-964(0xc3c)
1c002974:	02821005 	addi.w	$r5,$r0,132(0x84)
1c002978:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00297c:	02a24084 	addi.w	$r4,$r4,-1904(0x890)
1c002980:	57ea5bff 	bl	-5544(0xfffea58) # 1c0013d8 <myprintf>
1c002984:	14002005 	lu12i.w	$r5,256(0x100)
1c002988:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00298c:	03808184 	ori	$r4,$r12,0x20
1c002990:	57e803ff 	bl	-6144(0xfffe800) # 1c001190 <EXTI_ClearITPendingBit>
1c002994:	03400000 	andi	$r0,$r0,0x0
1c002998:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00299c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0029a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0029a4:	4c000020 	jirl	$r0,$r1,0

1c0029a8 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0029a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0029ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0029b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0029b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0029b8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0029bc:	02b020c6 	addi.w	$r6,$r6,-1016(0xc08)
1c0029c0:	02822405 	addi.w	$r5,$r0,137(0x89)
1c0029c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0029c8:	02a11084 	addi.w	$r4,$r4,-1980(0x844)
1c0029cc:	57ea0fff 	bl	-5620(0xfffea0c) # 1c0013d8 <myprintf>
1c0029d0:	14004005 	lu12i.w	$r5,512(0x200)
1c0029d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029d8:	03808184 	ori	$r4,$r12,0x20
1c0029dc:	57e7b7ff 	bl	-6220(0xfffe7b4) # 1c001190 <EXTI_ClearITPendingBit>
1c0029e0:	03400000 	andi	$r0,$r0,0x0
1c0029e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0029e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0029ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0029f0:	4c000020 	jirl	$r0,$r1,0

1c0029f4 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0029f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0029f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0029fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c002a00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002a04:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002a08:	02af50c6 	addi.w	$r6,$r6,-1068(0xbd4)
1c002a0c:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c002a10:	1c000004 	pcaddu12i	$r4,0
1c002a14:	029fe084 	addi.w	$r4,$r4,2040(0x7f8)
1c002a18:	57e9c3ff 	bl	-5696(0xfffe9c0) # 1c0013d8 <myprintf>
1c002a1c:	14008005 	lu12i.w	$r5,1024(0x400)
1c002a20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a24:	03808184 	ori	$r4,$r12,0x20
1c002a28:	57e76bff 	bl	-6296(0xfffe768) # 1c001190 <EXTI_ClearITPendingBit>
1c002a2c:	03400000 	andi	$r0,$r0,0x0
1c002a30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002a34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002a38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002a3c:	4c000020 	jirl	$r0,$r1,0

1c002a40 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c002a40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002a44:	29803061 	st.w	$r1,$r3,12(0xc)
1c002a48:	29802076 	st.w	$r22,$r3,8(0x8)
1c002a4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002a50:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002a54:	02ae80c6 	addi.w	$r6,$r6,-1120(0xba0)
1c002a58:	02825005 	addi.w	$r5,$r0,148(0x94)
1c002a5c:	1c000004 	pcaddu12i	$r4,0
1c002a60:	029eb084 	addi.w	$r4,$r4,1964(0x7ac)
1c002a64:	57e977ff 	bl	-5772(0xfffe974) # 1c0013d8 <myprintf>
1c002a68:	14010005 	lu12i.w	$r5,2048(0x800)
1c002a6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a70:	03808184 	ori	$r4,$r12,0x20
1c002a74:	57e71fff 	bl	-6372(0xfffe71c) # 1c001190 <EXTI_ClearITPendingBit>
1c002a78:	03400000 	andi	$r0,$r0,0x0
1c002a7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002a80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002a84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002a88:	4c000020 	jirl	$r0,$r1,0

1c002a8c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c002a8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002a90:	29803061 	st.w	$r1,$r3,12(0xc)
1c002a94:	29802076 	st.w	$r22,$r3,8(0x8)
1c002a98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002a9c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002aa0:	02adb0c6 	addi.w	$r6,$r6,-1172(0xb6c)
1c002aa4:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c002aa8:	1c000004 	pcaddu12i	$r4,0
1c002aac:	029d8084 	addi.w	$r4,$r4,1888(0x760)
1c002ab0:	57e92bff 	bl	-5848(0xfffe928) # 1c0013d8 <myprintf>
1c002ab4:	14020005 	lu12i.w	$r5,4096(0x1000)
1c002ab8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002abc:	03808184 	ori	$r4,$r12,0x20
1c002ac0:	57e6d3ff 	bl	-6448(0xfffe6d0) # 1c001190 <EXTI_ClearITPendingBit>
1c002ac4:	03400000 	andi	$r0,$r0,0x0
1c002ac8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002acc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002ad0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002ad4:	4c000020 	jirl	$r0,$r1,0

1c002ad8 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c002ad8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002adc:	29803061 	st.w	$r1,$r3,12(0xc)
1c002ae0:	29802076 	st.w	$r22,$r3,8(0x8)
1c002ae4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002ae8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002aec:	02ace0c6 	addi.w	$r6,$r6,-1224(0xb38)
1c002af0:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c002af4:	1c000004 	pcaddu12i	$r4,0
1c002af8:	029c5084 	addi.w	$r4,$r4,1812(0x714)
1c002afc:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c0013d8 <myprintf>
1c002b00:	14040005 	lu12i.w	$r5,8192(0x2000)
1c002b04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b08:	03808184 	ori	$r4,$r12,0x20
1c002b0c:	57e687ff 	bl	-6524(0xfffe684) # 1c001190 <EXTI_ClearITPendingBit>
1c002b10:	03400000 	andi	$r0,$r0,0x0
1c002b14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002b18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002b1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b20:	4c000020 	jirl	$r0,$r1,0

1c002b24 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c002b24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b28:	29803061 	st.w	$r1,$r3,12(0xc)
1c002b2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002b30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b34:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002b38:	02ac10c6 	addi.w	$r6,$r6,-1276(0xb04)
1c002b3c:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c002b40:	1c000004 	pcaddu12i	$r4,0
1c002b44:	029b2084 	addi.w	$r4,$r4,1736(0x6c8)
1c002b48:	57e893ff 	bl	-6000(0xfffe890) # 1c0013d8 <myprintf>
1c002b4c:	14080005 	lu12i.w	$r5,16384(0x4000)
1c002b50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b54:	03808184 	ori	$r4,$r12,0x20
1c002b58:	57e63bff 	bl	-6600(0xfffe638) # 1c001190 <EXTI_ClearITPendingBit>
1c002b5c:	03400000 	andi	$r0,$r0,0x0
1c002b60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002b64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002b68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b6c:	4c000020 	jirl	$r0,$r1,0

1c002b70 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c002b70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b74:	29803061 	st.w	$r1,$r3,12(0xc)
1c002b78:	29802076 	st.w	$r22,$r3,8(0x8)
1c002b7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b80:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002b84:	02ab40c6 	addi.w	$r6,$r6,-1328(0xad0)
1c002b88:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c002b8c:	1c000004 	pcaddu12i	$r4,0
1c002b90:	0299f084 	addi.w	$r4,$r4,1660(0x67c)
1c002b94:	57e847ff 	bl	-6076(0xfffe844) # 1c0013d8 <myprintf>
1c002b98:	14100005 	lu12i.w	$r5,32768(0x8000)
1c002b9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba0:	03808184 	ori	$r4,$r12,0x20
1c002ba4:	57e5efff 	bl	-6676(0xfffe5ec) # 1c001190 <EXTI_ClearITPendingBit>
1c002ba8:	03400000 	andi	$r0,$r0,0x0
1c002bac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002bb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002bb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002bb8:	4c000020 	jirl	$r0,$r1,0

1c002bbc <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c002bbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002bc0:	29803061 	st.w	$r1,$r3,12(0xc)
1c002bc4:	29802076 	st.w	$r22,$r3,8(0x8)
1c002bc8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002bcc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002bd0:	02aa70c6 	addi.w	$r6,$r6,-1380(0xa9c)
1c002bd4:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c002bd8:	1c000004 	pcaddu12i	$r4,0
1c002bdc:	0298c084 	addi.w	$r4,$r4,1584(0x630)
1c002be0:	57e7fbff 	bl	-6152(0xfffe7f8) # 1c0013d8 <myprintf>
1c002be4:	14200005 	lu12i.w	$r5,65536(0x10000)
1c002be8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bec:	03808184 	ori	$r4,$r12,0x20
1c002bf0:	57e5a3ff 	bl	-6752(0xfffe5a0) # 1c001190 <EXTI_ClearITPendingBit>
1c002bf4:	03400000 	andi	$r0,$r0,0x0
1c002bf8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002bfc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002c00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002c04:	4c000020 	jirl	$r0,$r1,0

1c002c08 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c002c08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002c0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002c10:	29802076 	st.w	$r22,$r3,8(0x8)
1c002c14:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002c18:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002c1c:	02a9a0c6 	addi.w	$r6,$r6,-1432(0xa68)
1c002c20:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c002c24:	1c000004 	pcaddu12i	$r4,0
1c002c28:	02979084 	addi.w	$r4,$r4,1508(0x5e4)
1c002c2c:	57e7afff 	bl	-6228(0xfffe7ac) # 1c0013d8 <myprintf>
1c002c30:	14400005 	lu12i.w	$r5,131072(0x20000)
1c002c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c38:	03808184 	ori	$r4,$r12,0x20
1c002c3c:	57e557ff 	bl	-6828(0xfffe554) # 1c001190 <EXTI_ClearITPendingBit>
1c002c40:	03400000 	andi	$r0,$r0,0x0
1c002c44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002c48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002c4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002c50:	4c000020 	jirl	$r0,$r1,0

1c002c54 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c002c54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002c58:	29803061 	st.w	$r1,$r3,12(0xc)
1c002c5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002c60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002c64:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002c68:	02a8d0c6 	addi.w	$r6,$r6,-1484(0xa34)
1c002c6c:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c002c70:	1c000004 	pcaddu12i	$r4,0
1c002c74:	02966084 	addi.w	$r4,$r4,1432(0x598)
1c002c78:	57e763ff 	bl	-6304(0xfffe760) # 1c0013d8 <myprintf>
1c002c7c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c002c80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c84:	03808184 	ori	$r4,$r12,0x20
1c002c88:	57e50bff 	bl	-6904(0xfffe508) # 1c001190 <EXTI_ClearITPendingBit>
1c002c8c:	03400000 	andi	$r0,$r0,0x0
1c002c90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002c94:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002c98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002c9c:	4c000020 	jirl	$r0,$r1,0

1c002ca0 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c002ca0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002ca4:	29803061 	st.w	$r1,$r3,12(0xc)
1c002ca8:	29802076 	st.w	$r22,$r3,8(0x8)
1c002cac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002cb0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002cb4:	02a800c6 	addi.w	$r6,$r6,-1536(0xa00)
1c002cb8:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c002cbc:	1c000004 	pcaddu12i	$r4,0
1c002cc0:	02953084 	addi.w	$r4,$r4,1356(0x54c)
1c002cc4:	57e717ff 	bl	-6380(0xfffe714) # 1c0013d8 <myprintf>
1c002cc8:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c002ccc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd0:	03808184 	ori	$r4,$r12,0x20
1c002cd4:	57e4bfff 	bl	-6980(0xfffe4bc) # 1c001190 <EXTI_ClearITPendingBit>
1c002cd8:	03400000 	andi	$r0,$r0,0x0
1c002cdc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002ce0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002ce4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002ce8:	4c000020 	jirl	$r0,$r1,0

1c002cec <ext_handler>:
ext_handler():
1c002cec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002cf0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002cf4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002cf8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d00:	0380f18c 	ori	$r12,$r12,0x3c
1c002d04:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c002d08:	2980018d 	st.w	$r13,$r12,0
1c002d0c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002d10:	02a6f0c6 	addi.w	$r6,$r6,-1604(0x9bc)
1c002d14:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c002d18:	1c000004 	pcaddu12i	$r4,0
1c002d1c:	0293c084 	addi.w	$r4,$r4,1264(0x4f0)
1c002d20:	57e6bbff 	bl	-6472(0xfffe6b8) # 1c0013d8 <myprintf>
1c002d24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d28:	0380818c 	ori	$r12,$r12,0x20
1c002d2c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c002d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d38:	0380818c 	ori	$r12,$r12,0x20
1c002d3c:	2880018c 	ld.w	$r12,$r12,0
1c002d40:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d44:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002d48:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d4c:	0014b1ac 	and	$r12,$r13,$r12
1c002d50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d54:	03400000 	andi	$r0,$r0,0x0
1c002d58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d5c:	50004000 	b	64(0x40) # 1c002d9c <ext_handler+0xb0>
1c002d60:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002d64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d68:	0017b1ac 	srl.w	$r12,$r13,$r12
1c002d6c:	0340058c 	andi	$r12,$r12,0x1
1c002d70:	40002180 	beqz	$r12,32(0x20) # 1c002d90 <ext_handler+0xa4>
1c002d74:	1c00000d 	pcaddu12i	$r13,0
1c002d78:	029641ad 	addi.w	$r13,$r13,1424(0x590)
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	0040898c 	slli.w	$r12,$r12,0x2
1c002d84:	001031ac 	add.w	$r12,$r13,$r12
1c002d88:	2880018c 	ld.w	$r12,$r12,0
1c002d8c:	4c000181 	jirl	$r1,$r12,0
1c002d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002da0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002da4:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c002d60 <ext_handler+0x74>
1c002da8:	03400000 	andi	$r0,$r0,0x0
1c002dac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002db0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002db4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002db8:	4c000020 	jirl	$r0,$r1,0

1c002dbc <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c002dbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002dc0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002dc4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002dc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002dcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd0:	0380f18c 	ori	$r12,$r12,0x3c
1c002dd4:	1400020d 	lu12i.w	$r13,16(0x10)
1c002dd8:	2980018d 	st.w	$r13,$r12,0
1c002ddc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002de0:	0380118c 	ori	$r12,$r12,0x4
1c002de4:	2880018c 	ld.w	$r12,$r12,0
1c002de8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dec:	57e9dfff 	bl	-5668(0xfffe9dc) # 1c0017c8 <WDG_DogFeed>
1c002df0:	03400000 	andi	$r0,$r0,0x0
1c002df4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002df8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002dfc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e00:	4c000020 	jirl	$r0,$r1,0

1c002e04 <TOUCH>:
TOUCH():
1c002e04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e08:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002e0c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002e10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e14:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002e18:	0380118c 	ori	$r12,$r12,0x4
1c002e1c:	2880018c 	ld.w	$r12,$r12,0
1c002e20:	0044c18c 	srli.w	$r12,$r12,0x10
1c002e24:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002e28:	037ffd8c 	andi	$r12,$r12,0xfff
1c002e2c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002e30:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002e34:	0380118c 	ori	$r12,$r12,0x4
1c002e38:	2880018c 	ld.w	$r12,$r12,0
1c002e3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002e40:	03403d8c 	andi	$r12,$r12,0xf
1c002e44:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e4c:	0380f18c 	ori	$r12,$r12,0x3c
1c002e50:	1400040d 	lu12i.w	$r13,32(0x20)
1c002e54:	2980018d 	st.w	$r13,$r12,0
1c002e58:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002e5c:	0380118c 	ori	$r12,$r12,0x4
1c002e60:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e64:	2980018d 	st.w	$r13,$r12,0
1c002e68:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c002e6c:	00150185 	move	$r5,$r12
1c002e70:	1c000004 	pcaddu12i	$r4,0
1c002e74:	028f8084 	addi.w	$r4,$r4,992(0x3e0)
1c002e78:	57e563ff 	bl	-6816(0xfffe560) # 1c0013d8 <myprintf>
1c002e7c:	03400000 	andi	$r0,$r0,0x0
1c002e80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002e84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002e88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e8c:	4c000020 	jirl	$r0,$r1,0

1c002e90 <UART2_INT>:
UART2_INT():
1c002e90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea0:	0380f18c 	ori	$r12,$r12,0x3c
1c002ea4:	1400080d 	lu12i.w	$r13,64(0x40)
1c002ea8:	2980018d 	st.w	$r13,$r12,0
1c002eac:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002eb0:	0380098c 	ori	$r12,$r12,0x2
1c002eb4:	2a00018c 	ld.bu	$r12,$r12,0
1c002eb8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ebc:	03400000 	andi	$r0,$r0,0x0
1c002ec0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ec4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ec8:	4c000020 	jirl	$r0,$r1,0

1c002ecc <BAT_FAIL>:
BAT_FAIL():
1c002ecc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ed0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ed4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002ed8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002edc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee0:	0380118c 	ori	$r12,$r12,0x4
1c002ee4:	2880018c 	ld.w	$r12,$r12,0
1c002ee8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c002eec:	03407d8c 	andi	$r12,$r12,0x1f
1c002ef0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ef4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ef8:	0380118c 	ori	$r12,$r12,0x4
1c002efc:	2880018e 	ld.w	$r14,$r12,0
1c002f00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f04:	0380f18c 	ori	$r12,$r12,0x3c
1c002f08:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c002f0c:	0014b5cd 	and	$r13,$r14,$r13
1c002f10:	2980018d 	st.w	$r13,$r12,0
1c002f14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f18:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c002f1c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c002f8c <BAT_FAIL+0xc0>
1c002f20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f24:	0040898d 	slli.w	$r13,$r12,0x2
1c002f28:	1c00000c 	pcaddu12i	$r12,0
1c002f2c:	0291718c 	addi.w	$r12,$r12,1116(0x45c)
1c002f30:	001031ac 	add.w	$r12,$r13,$r12
1c002f34:	2880018c 	ld.w	$r12,$r12,0
1c002f38:	4c000180 	jirl	$r0,$r12,0
1c002f3c:	1c000004 	pcaddu12i	$r4,0
1c002f40:	028cd084 	addi.w	$r4,$r4,820(0x334)
1c002f44:	57e497ff 	bl	-7020(0xfffe494) # 1c0013d8 <myprintf>
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	0380118c 	ori	$r12,$r12,0x4
1c002f50:	29800180 	st.w	$r0,$r12,0
1c002f54:	50003c00 	b	60(0x3c) # 1c002f90 <BAT_FAIL+0xc4>
1c002f58:	1c000004 	pcaddu12i	$r4,0
1c002f5c:	028d0084 	addi.w	$r4,$r4,832(0x340)
1c002f60:	57e47bff 	bl	-7048(0xfffe478) # 1c0013d8 <myprintf>
1c002f64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f68:	0380118c 	ori	$r12,$r12,0x4
1c002f6c:	2880018e 	ld.w	$r14,$r12,0
1c002f70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f74:	0380118c 	ori	$r12,$r12,0x4
1c002f78:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c002f7c:	03bffdad 	ori	$r13,$r13,0xfff
1c002f80:	0014b5cd 	and	$r13,$r14,$r13
1c002f84:	2980018d 	st.w	$r13,$r12,0
1c002f88:	50000800 	b	8(0x8) # 1c002f90 <BAT_FAIL+0xc4>
1c002f8c:	03400000 	andi	$r0,$r0,0x0
1c002f90:	03400000 	andi	$r0,$r0,0x0
1c002f94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002f9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002fa0:	4c000020 	jirl	$r0,$r1,0

1c002fa4 <INTC_Handler>:
INTC_Handler():
1c002fa4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002fa8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002fac:	29806076 	st.w	$r22,$r3,24(0x18)
1c002fb0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002fb4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002fb8:	0380158c 	ori	$r12,$r12,0x5
1c002fbc:	2a00018c 	ld.bu	$r12,$r12,0
1c002fc0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002fc4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002fc8:	0340058c 	andi	$r12,$r12,0x1
1c002fcc:	40002980 	beqz	$r12,40(0x28) # 1c002ff4 <INTC_Handler+0x50>
1c002fd0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002fd4:	57ed03ff 	bl	-4864(0xfffed00) # 1c001cd4 <TIM_GetITStatus>
1c002fd8:	0015008c 	move	$r12,$r4
1c002fdc:	40001980 	beqz	$r12,24(0x18) # 1c002ff4 <INTC_Handler+0x50>
1c002fe0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002fe4:	57ed3fff 	bl	-4804(0xfffed3c) # 1c001d20 <TIM_ClearIT>
1c002fe8:	1c000004 	pcaddu12i	$r4,0
1c002fec:	028b5084 	addi.w	$r4,$r4,724(0x2d4)
1c002ff0:	57e3ebff 	bl	-7192(0xfffe3e8) # 1c0013d8 <myprintf>
1c002ff4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ff8:	0340118c 	andi	$r12,$r12,0x4
1c002ffc:	40002d80 	beqz	$r12,44(0x2c) # 1c003028 <INTC_Handler+0x84>
1c003000:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c003004:	2880018c 	ld.w	$r12,$r12,0
1c003008:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00300c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003010:	00150184 	move	$r4,$r12
1c003014:	57ec73ff 	bl	-5008(0xfffec70) # 1c001c84 <my_recv_dat_int>
1c003018:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00301c:	03800d8c 	ori	$r12,$r12,0x3
1c003020:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003024:	2900018d 	st.b	$r13,$r12,0
1c003028:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00302c:	0340218c 	andi	$r12,$r12,0x8
1c003030:	40002d80 	beqz	$r12,44(0x2c) # 1c00305c <INTC_Handler+0xb8>
1c003034:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003038:	2880018c 	ld.w	$r12,$r12,0
1c00303c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c003040:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c003044:	00150184 	move	$r4,$r12
1c003048:	57ec3fff 	bl	-5060(0xfffec3c) # 1c001c84 <my_recv_dat_int>
1c00304c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003050:	03800d8c 	ori	$r12,$r12,0x3
1c003054:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c003058:	2900018d 	st.b	$r13,$r12,0
1c00305c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003060:	03800d8c 	ori	$r12,$r12,0x3
1c003064:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c003068:	2900018d 	st.b	$r13,$r12,0
1c00306c:	03400000 	andi	$r0,$r0,0x0
1c003070:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003074:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003078:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00307c:	4c000020 	jirl	$r0,$r1,0

1c003080 <TIMER_HANDLER>:
TIMER_HANDLER():
1c003080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003084:	29803061 	st.w	$r1,$r3,12(0xc)
1c003088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00308c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003090:	57e0dfff 	bl	-7972(0xfffe0dc) # 1c00116c <Set_Timer_clear>
1c003094:	1c000004 	pcaddu12i	$r4,0
1c003098:	02894084 	addi.w	$r4,$r4,592(0x250)
1c00309c:	57e33fff 	bl	-7364(0xfffe33c) # 1c0013d8 <myprintf>
1c0030a0:	57e0afff 	bl	-8020(0xfffe0ac) # 1c00114c <Set_Timer_stop>
1c0030a4:	03400000 	andi	$r0,$r0,0x0
1c0030a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0030ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0030b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0030b4:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0030b8 <Ext_IrqHandle-0x24c>:
1c0030b8:	1c0015f8 	pcaddu12i	$r24,175(0xaf)
1c0030bc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030c0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030c4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030c8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030cc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030d0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030d4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030d8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030dc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030e0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0030e4:	1c001610 	pcaddu12i	$r16,176(0xb0)
1c0030e8:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c0030ec:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c0030f0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c0030f4:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c0030f8:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c0030fc:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c003100:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c003104:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c003108:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00310c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003110:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003114:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003118:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00311c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003120:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003124:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003128:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00312c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003130:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003134:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003138:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00313c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003140:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003144:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003148:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00314c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003150:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003154:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003158:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00315c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003160:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003164:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003168:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00316c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003170:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003174:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003178:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00317c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003180:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003184:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003188:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00318c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003190:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003194:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003198:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00319c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031a0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031a4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031a8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031ac:	1c001588 	pcaddu12i	$r8,172(0xac)
1c0031b0:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
1c0031b4:	1c001518 	pcaddu12i	$r24,168(0xa8)
1c0031b8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031bc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031c0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031c4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031c8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031cc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031d0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031d4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031d8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031dc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031e0:	1c001550 	pcaddu12i	$r16,170(0xaa)
1c0031e4:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c0031e8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031ec:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031f0:	1c001484 	pcaddu12i	$r4,164(0xa4)
1c0031f4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0031f8:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
1c0031fc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003200:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c003204:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c003208:	3c200a0d 	0x3c200a0d
1c00320c:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c019e2c <_sidata+0x16758>
1c003210:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c003214:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe5278 <_start-0x1ad88>
1c003218:	3a636e75 	0x3a636e75
1c00321c:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c003220:	0a0d3e20 	0x0a0d3e20
1c003224:	00000000 	0x00000000
1c003228:	2e2e2e0a 	0x2e2e2e0a
1c00322c:	2e2e2e2e 	0x2e2e2e2e
1c003230:	2e2e2e2e 	0x2e2e2e2e
1c003234:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c003238:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19918c <_sidata+0x195ab8>
1c00323c:	2e2e544e 	0x2e2e544e
1c003240:	2e2e2e2e 	0x2e2e2e2e
1c003244:	2e2e2e2e 	0x2e2e2e2e
1c003248:	2e2e2e2e 	0x2e2e2e2e
1c00324c:	00000d0a 	0x00000d0a
1c003250:	2d2d2d0a 	0x2d2d2d0a
1c003254:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bffa7c0 <_start-0x5840>
1c003258:	746e4968 	0x746e4968
1c00325c:	79654b3a 	0x79654b3a
1c003260:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe93c8 <_start-0x16c38>
1c003264:	3a6c656e 	0x3a6c656e
1c003268:	78257830 	0x78257830
1c00326c:	0000000a 	0x0000000a
1c003270:	2e2e2e0a 	0x2e2e2e0a
1c003274:	2e2e2e2e 	0x2e2e2e2e
1c003278:	2e2e2e2e 	0x2e2e2e2e
1c00327c:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c3974a8 <_sidata+0x393dd4>
1c003280:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd178dc <_start-0x2e8724>
1c003284:	2e2e4c49 	0x2e2e4c49
1c003288:	2e2e2e2e 	0x2e2e2e2e
1c00328c:	2e2e2e2e 	0x2e2e2e2e
1c003290:	2e2e2e2e 	0x2e2e2e2e
1c003294:	00000d0a 	0x00000d0a
1c003298:	2e2e2e0a 	0x2e2e2e0a
1c00329c:	2e2e2e2e 	0x2e2e2e2e
1c0032a0:	2e2e2e2e 	0x2e2e2e2e
1c0032a4:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c3873d0 <_sidata+0x383cfc>
1c0032a8:	2e2e2e43 	0x2e2e2e43
1c0032ac:	2e2e2e2e 	0x2e2e2e2e
1c0032b0:	2e2e2e2e 	0x2e2e2e2e
1c0032b4:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0032b8:	0000000d 	0x0000000d
1c0032bc:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c01a520 <_sidata+0x16e4c>
1c0032c0:	72656870 	0x72656870
1c0032c4:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c0032c8:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01a030 <_sidata+0x1695c>
1c0032cc:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c0095ec <_sidata+0x5f18>
1c0032d0:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0032d4:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01a740 <_sidata+0x1706c>
1c0032d8:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0032dc:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c0032e0:	00000000 	0x00000000
1c0032e4:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c01a550 <_sidata+0x16e7c>
1c0032e8:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c019c3c <_sidata+0x16568>
1c0032ec:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff535c <_start-0xaca4>
1c0032f0:	7261656c 	0x7261656c
1c0032f4:	746e6920 	0x746e6920
1c0032f8:	75727265 	0x75727265
1c0032fc:	2e2e7470 	0x2e2e7470
1c003300:	0000000a 	0x0000000a

1c003304 <Ext_IrqHandle>:
1c003304:	1c00236c 	pcaddu12i	$r12,283(0x11b)
1c003308:	1c0023b8 	pcaddu12i	$r24,285(0x11d)
1c00330c:	1c002404 	pcaddu12i	$r4,288(0x120)
1c003310:	1c002450 	pcaddu12i	$r16,290(0x122)
1c003314:	1c00249c 	pcaddu12i	$r28,292(0x124)
1c003318:	1c0024e8 	pcaddu12i	$r8,295(0x127)
1c00331c:	1c002534 	pcaddu12i	$r20,297(0x129)
1c003320:	1c002580 	pcaddu12i	$r0,300(0x12c)
1c003324:	1c0025cc 	pcaddu12i	$r12,302(0x12e)
1c003328:	1c002618 	pcaddu12i	$r24,304(0x130)
1c00332c:	1c002664 	pcaddu12i	$r4,307(0x133)
1c003330:	1c0026b0 	pcaddu12i	$r16,309(0x135)
1c003334:	1c0026fc 	pcaddu12i	$r28,311(0x137)
1c003338:	1c002748 	pcaddu12i	$r8,314(0x13a)
1c00333c:	1c002794 	pcaddu12i	$r20,316(0x13c)
1c003340:	1c0027e0 	pcaddu12i	$r0,319(0x13f)
1c003344:	1c00282c 	pcaddu12i	$r12,321(0x141)
1c003348:	1c002878 	pcaddu12i	$r24,323(0x143)
1c00334c:	1c0028c4 	pcaddu12i	$r4,326(0x146)
1c003350:	1c002910 	pcaddu12i	$r16,328(0x148)
1c003354:	1c00295c 	pcaddu12i	$r28,330(0x14a)
1c003358:	1c0029a8 	pcaddu12i	$r8,333(0x14d)
1c00335c:	1c0029f4 	pcaddu12i	$r20,335(0x14f)
1c003360:	1c002a40 	pcaddu12i	$r0,338(0x152)
1c003364:	1c002a8c 	pcaddu12i	$r12,340(0x154)
1c003368:	1c002ad8 	pcaddu12i	$r24,342(0x156)
1c00336c:	1c002b24 	pcaddu12i	$r4,345(0x159)
1c003370:	1c002b70 	pcaddu12i	$r16,347(0x15b)
1c003374:	1c002bbc 	pcaddu12i	$r28,349(0x15d)
1c003378:	1c002c08 	pcaddu12i	$r8,352(0x160)
1c00337c:	1c002c54 	pcaddu12i	$r20,354(0x162)
1c003380:	1c002ca0 	pcaddu12i	$r0,357(0x165)
1c003384:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c003388:	1c002f3c 	pcaddu12i	$r28,377(0x179)
1c00338c:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c003390:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c003394:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c003398:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c00339c:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033a0:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033a4:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033a8:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033ac:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033b0:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033b4:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033b8:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033bc:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033c0:	1c002f8c 	pcaddu12i	$r12,380(0x17c)
1c0033c4:	1c002f58 	pcaddu12i	$r24,378(0x17a)

1c0033c8 <__FUNCTION__.1757>:
1c0033c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a840 <_sidata+0x1716c>
1c0033cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a430 <_sidata+0x16d5c>
1c0033d0:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff6430 <_start-0x9bd0>
1c0033d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa544 <_start-0x5abc>
1c0033d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a238 <_sidata+0x6b64>
1c0033dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0033e0 <__FUNCTION__.1761>:
1c0033e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a858 <_sidata+0x17184>
1c0033e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a448 <_sidata+0x16d74>
1c0033e8:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff6548 <_start-0x9ab8>
1c0033ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa55c <_start-0x5aa4>
1c0033f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a250 <_sidata+0x6b7c>
1c0033f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0033f8 <__FUNCTION__.1765>:
1c0033f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a870 <_sidata+0x1719c>
1c0033fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a460 <_sidata+0x16d8c>
1c003400:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff6660 <_start-0x99a0>
1c003404:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa574 <_start-0x5a8c>
1c003408:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a268 <_sidata+0x6b94>
1c00340c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003410 <__FUNCTION__.1769>:
1c003410:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a888 <_sidata+0x171b4>
1c003414:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a478 <_sidata+0x16da4>
1c003418:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff6778 <_start-0x9888>
1c00341c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa58c <_start-0x5a74>
1c003420:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a280 <_sidata+0x6bac>
1c003424:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003428 <__FUNCTION__.1773>:
1c003428:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a8a0 <_sidata+0x171cc>
1c00342c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a490 <_sidata+0x16dbc>
1c003430:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff6890 <_start-0x9770>
1c003434:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa5a4 <_start-0x5a5c>
1c003438:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a298 <_sidata+0x6bc4>
1c00343c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003440 <__FUNCTION__.1777>:
1c003440:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a8b8 <_sidata+0x171e4>
1c003444:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a4a8 <_sidata+0x16dd4>
1c003448:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff69a8 <_start-0x9658>
1c00344c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa5bc <_start-0x5a44>
1c003450:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a2b0 <_sidata+0x6bdc>
1c003454:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003458 <__FUNCTION__.1781>:
1c003458:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a8d0 <_sidata+0x171fc>
1c00345c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a4c0 <_sidata+0x16dec>
1c003460:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff6ac0 <_start-0x9540>
1c003464:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa5d4 <_start-0x5a2c>
1c003468:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a2c8 <_sidata+0x6bf4>
1c00346c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003470 <__FUNCTION__.1785>:
1c003470:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a8e8 <_sidata+0x17214>
1c003474:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a4d8 <_sidata+0x16e04>
1c003478:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff6bd8 <_start-0x9428>
1c00347c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa5ec <_start-0x5a14>
1c003480:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a2e0 <_sidata+0x6c0c>
1c003484:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003488 <__FUNCTION__.1789>:
1c003488:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a900 <_sidata+0x1722c>
1c00348c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a4f0 <_sidata+0x16e1c>
1c003490:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff64f0 <_start-0x9b10>
1c003494:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa604 <_start-0x59fc>
1c003498:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a2f8 <_sidata+0x6c24>
1c00349c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0034a0 <__FUNCTION__.1793>:
1c0034a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a918 <_sidata+0x17244>
1c0034a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a508 <_sidata+0x16e34>
1c0034a8:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff6608 <_start-0x99f8>
1c0034ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa61c <_start-0x59e4>
1c0034b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a310 <_sidata+0x6c3c>
1c0034b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0034b8 <__FUNCTION__.1797>:
1c0034b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a930 <_sidata+0x1725c>
1c0034bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a520 <_sidata+0x16e4c>
1c0034c0:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff6720 <_start-0x98e0>
1c0034c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa634 <_start-0x59cc>
1c0034c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a328 <_sidata+0x6c54>
1c0034cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0034d0 <__FUNCTION__.1801>:
1c0034d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a948 <_sidata+0x17274>
1c0034d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a538 <_sidata+0x16e64>
1c0034d8:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff6838 <_start-0x97c8>
1c0034dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa64c <_start-0x59b4>
1c0034e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a340 <_sidata+0x6c6c>
1c0034e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0034e8 <__FUNCTION__.1805>:
1c0034e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a960 <_sidata+0x1728c>
1c0034ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a550 <_sidata+0x16e7c>
1c0034f0:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff6950 <_start-0x96b0>
1c0034f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa664 <_start-0x599c>
1c0034f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a358 <_sidata+0x6c84>
1c0034fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003500 <__FUNCTION__.1809>:
1c003500:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a978 <_sidata+0x172a4>
1c003504:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a568 <_sidata+0x16e94>
1c003508:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff6a68 <_start-0x9598>
1c00350c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa67c <_start-0x5984>
1c003510:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a370 <_sidata+0x6c9c>
1c003514:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003518 <__FUNCTION__.1813>:
1c003518:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a990 <_sidata+0x172bc>
1c00351c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a580 <_sidata+0x16eac>
1c003520:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff6b80 <_start-0x9480>
1c003524:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa694 <_start-0x596c>
1c003528:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a388 <_sidata+0x6cb4>
1c00352c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003530 <__FUNCTION__.1817>:
1c003530:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a9a8 <_sidata+0x172d4>
1c003534:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a598 <_sidata+0x16ec4>
1c003538:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff6c98 <_start-0x9368>
1c00353c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa6ac <_start-0x5954>
1c003540:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a3a0 <_sidata+0x6ccc>
1c003544:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003548 <__FUNCTION__.1821>:
1c003548:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a9c0 <_sidata+0x172ec>
1c00354c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a5b0 <_sidata+0x16edc>
1c003550:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff65b0 <_start-0x9a50>
1c003554:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa6c4 <_start-0x593c>
1c003558:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a3b8 <_sidata+0x6ce4>
1c00355c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003560 <__FUNCTION__.1825>:
1c003560:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a9d8 <_sidata+0x17304>
1c003564:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a5c8 <_sidata+0x16ef4>
1c003568:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff66c8 <_start-0x9938>
1c00356c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa6dc <_start-0x5924>
1c003570:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a3d0 <_sidata+0x6cfc>
1c003574:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003578 <__FUNCTION__.1829>:
1c003578:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a9f0 <_sidata+0x1731c>
1c00357c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a5e0 <_sidata+0x16f0c>
1c003580:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff67e0 <_start-0x9820>
1c003584:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa6f4 <_start-0x590c>
1c003588:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a3e8 <_sidata+0x6d14>
1c00358c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003590 <__FUNCTION__.1833>:
1c003590:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa08 <_sidata+0x17334>
1c003594:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a5f8 <_sidata+0x16f24>
1c003598:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff68f8 <_start-0x9708>
1c00359c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa70c <_start-0x58f4>
1c0035a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a400 <_sidata+0x6d2c>
1c0035a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0035a8 <__FUNCTION__.1837>:
1c0035a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa20 <_sidata+0x1734c>
1c0035ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a610 <_sidata+0x16f3c>
1c0035b0:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff6a10 <_start-0x95f0>
1c0035b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa724 <_start-0x58dc>
1c0035b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a418 <_sidata+0x6d44>
1c0035bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0035c0 <__FUNCTION__.1841>:
1c0035c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa38 <_sidata+0x17364>
1c0035c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a628 <_sidata+0x16f54>
1c0035c8:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff6b28 <_start-0x94d8>
1c0035cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa73c <_start-0x58c4>
1c0035d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a430 <_sidata+0x6d5c>
1c0035d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0035d8 <__FUNCTION__.1845>:
1c0035d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa50 <_sidata+0x1737c>
1c0035dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a640 <_sidata+0x16f6c>
1c0035e0:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff6c40 <_start-0x93c0>
1c0035e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa754 <_start-0x58ac>
1c0035e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a448 <_sidata+0x6d74>
1c0035ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0035f0 <__FUNCTION__.1849>:
1c0035f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa68 <_sidata+0x17394>
1c0035f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a658 <_sidata+0x16f84>
1c0035f8:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff6d58 <_start-0x92a8>
1c0035fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa76c <_start-0x5894>
1c003600:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a460 <_sidata+0x6d8c>
1c003604:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003608 <__FUNCTION__.1853>:
1c003608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa80 <_sidata+0x173ac>
1c00360c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a670 <_sidata+0x16f9c>
1c003610:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff6674 <_start-0x998c>
1c003614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa784 <_start-0x587c>
1c003618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a478 <_sidata+0x6da4>
1c00361c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003620 <__FUNCTION__.1857>:
1c003620:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aa98 <_sidata+0x173c4>
1c003624:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a688 <_sidata+0x16fb4>
1c003628:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff678c <_start-0x9874>
1c00362c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa79c <_start-0x5864>
1c003630:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a490 <_sidata+0x6dbc>
1c003634:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003638 <__FUNCTION__.1861>:
1c003638:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aab0 <_sidata+0x173dc>
1c00363c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a6a0 <_sidata+0x16fcc>
1c003640:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff68a4 <_start-0x975c>
1c003644:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa7b4 <_start-0x584c>
1c003648:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a4a8 <_sidata+0x6dd4>
1c00364c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003650 <__FUNCTION__.1865>:
1c003650:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aac8 <_sidata+0x173f4>
1c003654:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a6b8 <_sidata+0x16fe4>
1c003658:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff69bc <_start-0x9644>
1c00365c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa7cc <_start-0x5834>
1c003660:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a4c0 <_sidata+0x6dec>
1c003664:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003668 <__FUNCTION__.1869>:
1c003668:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aae0 <_sidata+0x1740c>
1c00366c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a6d0 <_sidata+0x16ffc>
1c003670:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff6ad4 <_start-0x952c>
1c003674:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa7e4 <_start-0x581c>
1c003678:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a4d8 <_sidata+0x6e04>
1c00367c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003680 <__FUNCTION__.1873>:
1c003680:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01aaf8 <_sidata+0x17424>
1c003684:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a6e8 <_sidata+0x17014>
1c003688:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff6bec <_start-0x9414>
1c00368c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa7fc <_start-0x5804>
1c003690:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a4f0 <_sidata+0x6e1c>
1c003694:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003698 <__FUNCTION__.1877>:
1c003698:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ab10 <_sidata+0x1743c>
1c00369c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a700 <_sidata+0x1702c>
1c0036a0:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff6d04 <_start-0x92fc>
1c0036a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa814 <_start-0x57ec>
1c0036a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a508 <_sidata+0x6e34>
1c0036ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0036b0 <__FUNCTION__.1881>:
1c0036b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ab28 <_sidata+0x17454>
1c0036b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a718 <_sidata+0x17044>
1c0036b8:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff6e1c <_start-0x91e4>
1c0036bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa82c <_start-0x57d4>
1c0036c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a520 <_sidata+0x6e4c>
1c0036c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0036c8 <__FUNCTION__.1890>:
1c0036c8:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bffab40 <_start-0x54c0>
1c0036cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a52c <_sidata+0x6e58>
1c0036d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	80000014 	0x80000014

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
