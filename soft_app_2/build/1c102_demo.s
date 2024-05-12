
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
1c00000c:	03adc1ef 	ori	$r15,$r15,0xb70
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
1c000030:	03aa31ef 	ori	$r15,$r15,0xa8c
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038711ad 	ori	$r13,$r13,0x1c4
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
1c0000a0:	5456e000 	bl	22240(0x56e0) # 1c005780 <main>
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
1c001090:	5475ac00 	bl	30124(0x75ac) # 1c00863c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5475ec00 	bl	30188(0x75ec) # 1c008684 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54767000 	bl	30320(0x7670) # 1c008710 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5476a400 	bl	30372(0x76a4) # 1c00874c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5474bc00 	bl	29884(0x74bc) # 1c00856c <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54784800 	bl	30792(0x7848) # 1c008900 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54775c00 	bl	30556(0x775c) # 1c008824 <INTC_Handler>
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
1c0011f0:	5406cc00 	bl	1740(0x6cc) # 1c0018bc <UART_SendData>
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
1c001470:	1c0000ec 	pcaddu12i	$r12,7(0x7)
1c001474:	0293218c 	addi.w	$r12,$r12,1224(0x4c8)
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

1c0017dc <strstr>:
strstr():
1c0017dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0017e0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0017e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0017e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0017ec:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0017f0:	001500cc 	move	$r12,$r6
1c0017f4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0017f8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0017fc:	5000a000 	b	160(0xa0) # 1c00189c <strstr+0xc0>
1c001800:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c001804:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001808:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00180c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001810:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001814:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001818:	2a00018d 	ld.bu	$r13,$r12,0
1c00181c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001820:	2a00018c 	ld.bu	$r12,$r12,0
1c001824:	5c006dac 	bne	$r13,$r12,108(0x6c) # 1c001890 <strstr+0xb4>
1c001828:	50003c00 	b	60(0x3c) # 1c001864 <strstr+0x88>
1c00182c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001830:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001834:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001838:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00183c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001840:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001844:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001848:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00184c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001850:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001854:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c001858:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001864 <strstr+0x88>
1c00185c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001860:	50004c00 	b	76(0x4c) # 1c0018ac <strstr+0xd0>
1c001864:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001868:	2a00018c 	ld.bu	$r12,$r12,0
1c00186c:	40002580 	beqz	$r12,36(0x24) # 1c001890 <strstr+0xb4>
1c001870:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001874:	2a00018c 	ld.bu	$r12,$r12,0
1c001878:	40001980 	beqz	$r12,24(0x18) # 1c001890 <strstr+0xb4>
1c00187c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001880:	2a00018d 	ld.bu	$r13,$r12,0
1c001884:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001888:	2a00018c 	ld.bu	$r12,$r12,0
1c00188c:	5bffa1ac 	beq	$r13,$r12,-96(0x3ffa0) # 1c00182c <strstr+0x50>
1c001890:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001894:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001898:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00189c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0018a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0018a4:	47ff5d9f 	bnez	$r12,-164(0x7fff5c) # 1c001800 <strstr+0x24>
1c0018a8:	0015000c 	move	$r12,$r0
1c0018ac:	00150184 	move	$r4,$r12
1c0018b0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0018b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0018b8:	4c000020 	jirl	$r0,$r1,0

1c0018bc <UART_SendData>:
UART_SendData():
1c0018bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0018c0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0018c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0018c8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0018cc:	001500ac 	move	$r12,$r5
1c0018d0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0018d4:	03400000 	andi	$r0,$r0,0x0
1c0018d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018dc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0018e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018e4:	0340818c 	andi	$r12,$r12,0x20
1c0018e8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0018d8 <UART_SendData+0x1c>
1c0018ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018f0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0018f4:	2900018d 	st.b	$r13,$r12,0
1c0018f8:	03400000 	andi	$r0,$r0,0x0
1c0018fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001904:	4c000020 	jirl	$r0,$r1,0

1c001908 <WDG_DogFeed>:
WDG_DogFeed():
1c001908:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00190c:	29803076 	st.w	$r22,$r3,12(0xc)
1c001910:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001914:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001918:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c00191c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c001920:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c001924:	03400000 	andi	$r0,$r0,0x0
1c001928:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00192c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001930:	4c000020 	jirl	$r0,$r1,0

1c001934 <gpio_init>:
gpio_init():
1c001934:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001938:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00193c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001940:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001944:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001948:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00194c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001950:	6000698d 	blt	$r12,$r13,104(0x68) # 1c0019b8 <gpio_init+0x84>
1c001954:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001958:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00195c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001960:	44003180 	bnez	$r12,48(0x30) # 1c001990 <gpio_init+0x5c>
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c00196c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001974:	001731cc 	sll.w	$r12,$r14,$r12
1c001978:	0014300c 	nor	$r12,$r0,$r12
1c00197c:	0015018e 	move	$r14,$r12
1c001980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001984:	0014b9ad 	and	$r13,$r13,$r14
1c001988:	2981018d 	st.w	$r13,$r12,64(0x40)
1c00198c:	50009000 	b	144(0x90) # 1c001a1c <gpio_init+0xe8>
1c001990:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001994:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001998:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00199c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019a0:	001731cc 	sll.w	$r12,$r14,$r12
1c0019a4:	0015018e 	move	$r14,$r12
1c0019a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019ac:	001539ad 	or	$r13,$r13,$r14
1c0019b0:	2981018d 	st.w	$r13,$r12,64(0x40)
1c0019b4:	50006800 	b	104(0x68) # 1c001a1c <gpio_init+0xe8>
1c0019b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0019bc:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0019c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0019c8:	44003180 	bnez	$r12,48(0x30) # 1c0019f8 <gpio_init+0xc4>
1c0019cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019d0:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0019d4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019dc:	001731cc 	sll.w	$r12,$r14,$r12
1c0019e0:	0014300c 	nor	$r12,$r0,$r12
1c0019e4:	0015018e 	move	$r14,$r12
1c0019e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019ec:	0014b9ad 	and	$r13,$r13,$r14
1c0019f0:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0019f4:	50002800 	b	40(0x28) # 1c001a1c <gpio_init+0xe8>
1c0019f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019fc:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c001a00:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a08:	001731cc 	sll.w	$r12,$r14,$r12
1c001a0c:	0015018e 	move	$r14,$r12
1c001a10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a14:	001539ad 	or	$r13,$r13,$r14
1c001a18:	2981418d 	st.w	$r13,$r12,80(0x50)
1c001a1c:	03400000 	andi	$r0,$r0,0x0
1c001a20:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001a24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a28:	4c000020 	jirl	$r0,$r1,0

1c001a2c <gpio_write>:
gpio_write():
1c001a2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a30:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001a34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a3c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001a40:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001a44:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001a48:	6000698d 	blt	$r12,$r13,104(0x68) # 1c001ab0 <gpio_write+0x84>
1c001a4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a54:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001a58:	44003180 	bnez	$r12,48(0x30) # 1c001a88 <gpio_write+0x5c>
1c001a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a60:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001a64:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a6c:	001731cc 	sll.w	$r12,$r14,$r12
1c001a70:	0014300c 	nor	$r12,$r0,$r12
1c001a74:	0015018e 	move	$r14,$r12
1c001a78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a7c:	0014b9ad 	and	$r13,$r13,$r14
1c001a80:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001a84:	50009000 	b	144(0x90) # 1c001b14 <gpio_write+0xe8>
1c001a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a8c:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001a90:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a98:	001731cc 	sll.w	$r12,$r14,$r12
1c001a9c:	0015018e 	move	$r14,$r12
1c001aa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001aa4:	001539ad 	or	$r13,$r13,$r14
1c001aa8:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001aac:	50006800 	b	104(0x68) # 1c001b14 <gpio_write+0xe8>
1c001ab0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ab4:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001ab8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001abc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ac0:	44003180 	bnez	$r12,48(0x30) # 1c001af0 <gpio_write+0xc4>
1c001ac4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ac8:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001acc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ad4:	001731cc 	sll.w	$r12,$r14,$r12
1c001ad8:	0014300c 	nor	$r12,$r0,$r12
1c001adc:	0015018e 	move	$r14,$r12
1c001ae0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ae4:	0014b9ad 	and	$r13,$r13,$r14
1c001ae8:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001aec:	50002800 	b	40(0x28) # 1c001b14 <gpio_write+0xe8>
1c001af0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001af4:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001af8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001afc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b00:	001731cc 	sll.w	$r12,$r14,$r12
1c001b04:	0015018e 	move	$r14,$r12
1c001b08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b0c:	001539ad 	or	$r13,$r13,$r14
1c001b10:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001b14:	03400000 	andi	$r0,$r0,0x0
1c001b18:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001b1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <gpio_read>:
gpio_read():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001b2c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b30:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b34:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001b38:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001b3c:	6000458d 	blt	$r12,$r13,68(0x44) # 1c001b80 <gpio_read+0x5c>
1c001b40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b4c:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c001b50:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b58:	001735cd 	sll.w	$r13,$r14,$r13
1c001b5c:	0014b58c 	and	$r12,$r12,$r13
1c001b60:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b68:	001735cd 	sll.w	$r13,$r14,$r13
1c001b6c:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001b78 <gpio_read+0x54>
1c001b70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001b74:	50004c00 	b	76(0x4c) # 1c001bc0 <gpio_read+0x9c>
1c001b78:	0015000c 	move	$r12,$r0
1c001b7c:	50004400 	b	68(0x44) # 1c001bc0 <gpio_read+0x9c>
1c001b80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b84:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001b88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b90:	2881618c 	ld.w	$r12,$r12,88(0x58)
1c001b94:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b98:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b9c:	001735cd 	sll.w	$r13,$r14,$r13
1c001ba0:	0014b58c 	and	$r12,$r12,$r13
1c001ba4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001ba8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001bac:	001735cd 	sll.w	$r13,$r14,$r13
1c001bb0:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001bbc <gpio_read+0x98>
1c001bb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001bb8:	50000800 	b	8(0x8) # 1c001bc0 <gpio_read+0x9c>
1c001bbc:	0015000c 	move	$r12,$r0
1c001bc0:	00150184 	move	$r4,$r12
1c001bc4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001bc8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001bcc:	4c000020 	jirl	$r0,$r1,0

1c001bd0 <soc_I2C_delay>:
soc_I2C_delay():
1c001bd0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001bd4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bdc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001be0:	03400000 	andi	$r0,$r0,0x0
1c001be4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001bec:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001bf0:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c001be4 <soc_I2C_delay+0x14>
1c001bf4:	03400000 	andi	$r0,$r0,0x0
1c001bf8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001bfc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c00:	4c000020 	jirl	$r0,$r1,0

1c001c04 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c001c04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c08:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c10:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c18:	1400060d 	lu12i.w	$r13,48(0x30)
1c001c1c:	03b501ad 	ori	$r13,$r13,0xd40
1c001c20:	2980018d 	st.w	$r13,$r12,0
1c001c24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c28:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001c2c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c34:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001c38:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001c3c:	03400000 	andi	$r0,$r0,0x0
1c001c40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c48:	4c000020 	jirl	$r0,$r1,0

1c001c4c <soc_I2C_Init>:
soc_I2C_Init():
1c001c4c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c50:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c54:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c58:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c5c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001c60:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001c64:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001c68:	0388018c 	ori	$r12,$r12,0x200
1c001c6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c70:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c74:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001c78:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001c7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c80:	2880018d 	ld.w	$r13,$r12,0
1c001c84:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001c88:	002135cc 	div.wu	$r12,$r14,$r13
1c001c8c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001c94 <soc_I2C_Init+0x48>
1c001c90:	002a0007 	break	0x7
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c9c:	0044898c 	srli.w	$r12,$r12,0x2
1c001ca0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001ca4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ca8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001cb0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001cb4:	2900018d 	st.b	$r13,$r12,0
1c001cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cbc:	0044a18d 	srli.w	$r13,$r12,0x8
1c001cc0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cc4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001cc8:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001ccc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cd0:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001cd4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001cd8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cdc:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001ce0:	40001180 	beqz	$r12,16(0x10) # 1c001cf0 <soc_I2C_Init+0xa4>
1c001ce4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ce8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001cec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001cf0:	5400e800 	bl	232(0xe8) # 1c001dd8 <soc_I2C_wait>
1c001cf4:	03400000 	andi	$r0,$r0,0x0
1c001cf8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001cfc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001d00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001d04:	4c000020 	jirl	$r0,$r1,0

1c001d08 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001d08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d0c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d14:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d1c:	40001580 	beqz	$r12,20(0x14) # 1c001d30 <soc_I2C_GenerateSTART+0x28>
1c001d20:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d24:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001d28:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d2c:	50001000 	b	16(0x10) # 1c001d3c <soc_I2C_GenerateSTART+0x34>
1c001d30:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d34:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001d38:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d3c:	03400000 	andi	$r0,$r0,0x0
1c001d40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d48:	4c000020 	jirl	$r0,$r1,0

1c001d4c <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001d4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d58:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001d5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d60:	40001580 	beqz	$r12,20(0x14) # 1c001d74 <soc_I2C_GenerateSTOP+0x28>
1c001d64:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d68:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001d6c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d70:	50001000 	b	16(0x10) # 1c001d80 <soc_I2C_GenerateSTOP+0x34>
1c001d74:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d78:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001d7c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d80:	03400000 	andi	$r0,$r0,0x0
1c001d84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d8c:	4c000020 	jirl	$r0,$r1,0

1c001d90 <soc_I2C_SendData>:
soc_I2C_SendData():
1c001d90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001d98:	29806076 	st.w	$r22,$r3,24(0x18)
1c001d9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001da0:	0015008c 	move	$r12,$r4
1c001da4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001da8:	54007800 	bl	120(0x78) # 1c001e20 <soc_I2C_Unlock>
1c001dac:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001db0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001db4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001db8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001dbc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001dc0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001dc4:	03400000 	andi	$r0,$r0,0x0
1c001dc8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001dcc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001dd0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001dd4:	4c000020 	jirl	$r0,$r1,0

1c001dd8 <soc_I2C_wait>:
soc_I2C_wait():
1c001dd8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ddc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001de0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001de4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001de8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001dec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001df0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001df4:	50001000 	b	16(0x10) # 1c001e04 <soc_I2C_wait+0x2c>
1c001df8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001dfc:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001e00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e08:	0340098c 	andi	$r12,$r12,0x2
1c001e0c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001df8 <soc_I2C_wait+0x20>
1c001e10:	03400000 	andi	$r0,$r0,0x0
1c001e14:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e1c:	4c000020 	jirl	$r0,$r1,0

1c001e20 <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001e20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001e28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e2c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001e30:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001e34:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e3c:	0340118c 	andi	$r12,$r12,0x4
1c001e40:	40001180 	beqz	$r12,16(0x10) # 1c001e50 <soc_I2C_Unlock+0x30>
1c001e44:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001e48:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001e4c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001e50:	03400000 	andi	$r0,$r0,0x0
1c001e54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e5c:	4c000020 	jirl	$r0,$r1,0

1c001e60 <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001e60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e64:	29803076 	st.w	$r22,$r3,12(0xc)
1c001e68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e6c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e70:	0380c18c 	ori	$r12,$r12,0x30
1c001e74:	29802180 	st.w	$r0,$r12,8(0x8)
1c001e78:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e7c:	0380c18c 	ori	$r12,$r12,0x30
1c001e80:	140004ed 	lu12i.w	$r13,39(0x27)
1c001e84:	038401ad 	ori	$r13,$r13,0x100
1c001e88:	2980018d 	st.w	$r13,$r12,0
1c001e8c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e90:	0380c18c 	ori	$r12,$r12,0x30
1c001e94:	03be800d 	ori	$r13,$r0,0xfa0
1c001e98:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001e9c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001ea0:	0380c18c 	ori	$r12,$r12,0x30
1c001ea4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001ea8:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001eac:	03400000 	andi	$r0,$r0,0x0
1c001eb0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001eb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001eb8:	4c000020 	jirl	$r0,$r1,0

1c001ebc <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001ebc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ec0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001ec4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ec8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001ecc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ed0:	028c800c 	addi.w	$r12,$r0,800(0x320)
1c001ed4:	001c31ae 	mul.w	$r14,$r13,$r12
1c001ed8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001edc:	002031cd 	div.w	$r13,$r14,$r12
1c001ee0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ee8 <pwm_steering_engine_set+0x2c>
1c001ee4:	002a0007 	break	0x7
1c001ee8:	03be800c 	ori	$r12,$r0,0xfa0
1c001eec:	001031ad 	add.w	$r13,$r13,$r12
1c001ef0:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001ef4:	0380c18c 	ori	$r12,$r12,0x30
1c001ef8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001efc:	03400000 	andi	$r0,$r0,0x0
1c001f00:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001f04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001f08:	4c000020 	jirl	$r0,$r1,0

1c001f0c <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001f0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f10:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f18:	0015008c 	move	$r12,$r4
1c001f1c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001f20:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f24:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001f28:	03400dad 	andi	$r13,$r13,0x3
1c001f2c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f30:	2900018d 	st.b	$r13,$r12,0
1c001f34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001f38:	0044898c 	srli.w	$r12,$r12,0x2
1c001f3c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f40:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f44:	03400dad 	andi	$r13,$r13,0x3
1c001f48:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f4c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001f50:	03400000 	andi	$r0,$r0,0x0
1c001f54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001f58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001f5c:	4c000020 	jirl	$r0,$r1,0

1c001f60 <soc_Spi_Init>:
soc_Spi_Init():
1c001f60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f64:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001f68:	29806076 	st.w	$r22,$r3,24(0x18)
1c001f6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f70:	0015008c 	move	$r12,$r4
1c001f74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001f78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001f7c:	00150184 	move	$r4,$r12
1c001f80:	57ff8fff 	bl	-116(0xfffff8c) # 1c001f0c <soc_Spi_FreqDiv>
1c001f84:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f88:	2a00018c 	ld.bu	$r12,$r12,0
1c001f8c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f90:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f94:	038141ad 	ori	$r13,$r13,0x50
1c001f98:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f9c:	2900018d 	st.b	$r13,$r12,0
1c001fa0:	03400000 	andi	$r0,$r0,0x0
1c001fa4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001fa8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001fac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fb0:	0340118c 	andi	$r12,$r12,0x4
1c001fb4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001fa4 <soc_Spi_Init+0x44>
1c001fb8:	03400000 	andi	$r0,$r0,0x0
1c001fbc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001fc0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001fc4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fc8:	0340058c 	andi	$r12,$r12,0x1
1c001fcc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001fbc <soc_Spi_Init+0x5c>
1c001fd0:	03400000 	andi	$r0,$r0,0x0
1c001fd4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001fd8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001fdc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fe0:	4c000020 	jirl	$r0,$r1,0

1c001fe4 <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001fe4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fe8:	29803076 	st.w	$r22,$r3,12(0xc)
1c001fec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ff0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ff4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001ff8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001ffc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002000:	038009ad 	ori	$r13,$r13,0x2
1c002004:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002008:	2900158d 	st.b	$r13,$r12,5(0x5)
1c00200c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002010:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002014:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002018:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00201c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002020:	0014b5cd 	and	$r13,$r14,$r13
1c002024:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002028:	2900158d 	st.b	$r13,$r12,5(0x5)
1c00202c:	03400000 	andi	$r0,$r0,0x0
1c002030:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002034:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002038:	4c000020 	jirl	$r0,$r1,0

1c00203c <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c00203c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002040:	29803076 	st.w	$r22,$r3,12(0xc)
1c002044:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002048:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00204c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002050:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002054:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002058:	038009ad 	ori	$r13,$r13,0x2
1c00205c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002060:	2900158d 	st.b	$r13,$r12,5(0x5)
1c002064:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002068:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00206c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002070:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002074:	038081ad 	ori	$r13,$r13,0x20
1c002078:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00207c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c002080:	03400000 	andi	$r0,$r0,0x0
1c002084:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002088:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00208c:	4c000020 	jirl	$r0,$r1,0

1c002090 <my_recv_dat_int>:
my_recv_dat_int():
1c002090:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002094:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002098:	29806076 	st.w	$r22,$r3,24(0x18)
1c00209c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020a0:	0015008c 	move	$r12,$r4
1c0020a4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0020a8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0020ac:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c0020b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0020b4:	2900018d 	st.b	$r13,$r12,0
1c0020b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0020bc:	00150185 	move	$r5,$r12
1c0020c0:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c0020c4:	02841084 	addi.w	$r4,$r4,260(0x104)
1c0020c8:	5435dc00 	bl	13788(0x35dc) # 1c0056a4 <Buffer_write>
1c0020cc:	03400000 	andi	$r0,$r0,0x0
1c0020d0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0020d4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0020d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0020dc:	4c000020 	jirl	$r0,$r1,0

1c0020e0 <MYUSART_SendData>:
MYUSART_SendData():
1c0020e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0020e4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0020e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0020ec:	0015008c 	move	$r12,$r4
1c0020f0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0020f4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020f8:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0020fc:	2980018d 	st.w	$r13,$r12,0
1c002100:	140000ac 	lu12i.w	$r12,5(0x5)
1c002104:	03accd8c 	ori	$r12,$r12,0xb33
1c002108:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00210c:	50001400 	b	20(0x14) # 1c002120 <MYUSART_SendData+0x40>
1c002110:	03400000 	andi	$r0,$r0,0x0
1c002114:	03400000 	andi	$r0,$r0,0x0
1c002118:	03400000 	andi	$r0,$r0,0x0
1c00211c:	03400000 	andi	$r0,$r0,0x0
1c002120:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002124:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002128:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00212c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002110 <MYUSART_SendData+0x30>
1c002130:	0015000c 	move	$r12,$r0
1c002134:	00150184 	move	$r4,$r12
1c002138:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00213c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002140:	4c000020 	jirl	$r0,$r1,0

1c002144 <SendHead>:
SendHead():
1c002144:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002148:	29803061 	st.w	$r1,$r3,12(0xc)
1c00214c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002150:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002154:	02864006 	addi.w	$r6,$r0,400(0x190)
1c002158:	00150005 	move	$r5,$r0
1c00215c:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002160:	28bac084 	ld.w	$r4,$r4,-336(0xeb0)
1c002164:	57f61bff 	bl	-2536(0xffff618) # 1c00177c <memset>
1c002168:	0283bc04 	addi.w	$r4,$r0,239(0xef)
1c00216c:	57ff77ff 	bl	-140(0xfffff74) # 1c0020e0 <MYUSART_SendData>
1c002170:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002174:	57ff6fff 	bl	-148(0xfffff6c) # 1c0020e0 <MYUSART_SendData>
1c002178:	03400000 	andi	$r0,$r0,0x0
1c00217c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002180:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002184:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002188:	4c000020 	jirl	$r0,$r1,0

1c00218c <SendAddr>:
SendAddr():
1c00218c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002190:	29803061 	st.w	$r1,$r3,12(0xc)
1c002194:	29802076 	st.w	$r22,$r3,8(0x8)
1c002198:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00219c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021a0:	02ba018c 	addi.w	$r12,$r12,-384(0xe80)
1c0021a4:	2880018c 	ld.w	$r12,$r12,0
1c0021a8:	0044e18c 	srli.w	$r12,$r12,0x18
1c0021ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021b0:	00150184 	move	$r4,$r12
1c0021b4:	57ff2fff 	bl	-212(0xfffff2c) # 1c0020e0 <MYUSART_SendData>
1c0021b8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021bc:	02b9918c 	addi.w	$r12,$r12,-412(0xe64)
1c0021c0:	2880018c 	ld.w	$r12,$r12,0
1c0021c4:	0044c18c 	srli.w	$r12,$r12,0x10
1c0021c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021cc:	00150184 	move	$r4,$r12
1c0021d0:	57ff13ff 	bl	-240(0xfffff10) # 1c0020e0 <MYUSART_SendData>
1c0021d4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021d8:	02b9218c 	addi.w	$r12,$r12,-440(0xe48)
1c0021dc:	2880018c 	ld.w	$r12,$r12,0
1c0021e0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0021e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021e8:	00150184 	move	$r4,$r12
1c0021ec:	57fef7ff 	bl	-268(0xffffef4) # 1c0020e0 <MYUSART_SendData>
1c0021f0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021f4:	02b8b18c 	addi.w	$r12,$r12,-468(0xe2c)
1c0021f8:	2880018c 	ld.w	$r12,$r12,0
1c0021fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002200:	00150184 	move	$r4,$r12
1c002204:	57fedfff 	bl	-292(0xffffedc) # 1c0020e0 <MYUSART_SendData>
1c002208:	03400000 	andi	$r0,$r0,0x0
1c00220c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002210:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002214:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002218:	4c000020 	jirl	$r0,$r1,0

1c00221c <SendFlag>:
SendFlag():
1c00221c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002220:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002224:	29806076 	st.w	$r22,$r3,24(0x18)
1c002228:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00222c:	0015008c 	move	$r12,$r4
1c002230:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002234:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002238:	00150184 	move	$r4,$r12
1c00223c:	57fea7ff 	bl	-348(0xffffea4) # 1c0020e0 <MYUSART_SendData>
1c002240:	03400000 	andi	$r0,$r0,0x0
1c002244:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002248:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00224c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002250:	4c000020 	jirl	$r0,$r1,0

1c002254 <SendLength>:
SendLength():
1c002254:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002258:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00225c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002260:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002264:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0048a18c 	srai.w	$r12,$r12,0x8
1c002270:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002274:	00150184 	move	$r4,$r12
1c002278:	57fe6bff 	bl	-408(0xffffe68) # 1c0020e0 <MYUSART_SendData>
1c00227c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002280:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002284:	00150184 	move	$r4,$r12
1c002288:	57fe5bff 	bl	-424(0xffffe58) # 1c0020e0 <MYUSART_SendData>
1c00228c:	03400000 	andi	$r0,$r0,0x0
1c002290:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002294:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002298:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00229c:	4c000020 	jirl	$r0,$r1,0

1c0022a0 <Sendcmd>:
Sendcmd():
1c0022a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0022a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0022ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022b0:	0015008c 	move	$r12,$r4
1c0022b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0022b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0022bc:	00150184 	move	$r4,$r12
1c0022c0:	57fe23ff 	bl	-480(0xffffe20) # 1c0020e0 <MYUSART_SendData>
1c0022c4:	03400000 	andi	$r0,$r0,0x0
1c0022c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0022cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0022d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022d4:	4c000020 	jirl	$r0,$r1,0

1c0022d8 <SendCheck>:
SendCheck():
1c0022d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0022e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0022e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022e8:	0015008c 	move	$r12,$r4
1c0022ec:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0022f0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0022f4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0022f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0022fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002300:	00150184 	move	$r4,$r12
1c002304:	57fddfff 	bl	-548(0xffffddc) # 1c0020e0 <MYUSART_SendData>
1c002308:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00230c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002310:	00150184 	move	$r4,$r12
1c002314:	57fdcfff 	bl	-564(0xffffdcc) # 1c0020e0 <MYUSART_SendData>
1c002318:	03400000 	andi	$r0,$r0,0x0
1c00231c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002320:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002324:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002328:	4c000020 	jirl	$r0,$r1,0

1c00232c <JudgeStr>:
JudgeStr():
1c00232c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002330:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002334:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002338:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00233c:	0015008c 	move	$r12,$r4
1c002340:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c002344:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c002348:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c00234c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002350:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c002354:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002358:	02b3218c 	addi.w	$r12,$r12,-824(0xcc8)
1c00235c:	2880018c 	ld.w	$r12,$r12,0
1c002360:	0044e18c 	srli.w	$r12,$r12,0x18
1c002364:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002368:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c00236c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002370:	02b2c18c 	addi.w	$r12,$r12,-848(0xcb0)
1c002374:	2880018c 	ld.w	$r12,$r12,0
1c002378:	0044c18c 	srli.w	$r12,$r12,0x10
1c00237c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002380:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002384:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002388:	02b2618c 	addi.w	$r12,$r12,-872(0xc98)
1c00238c:	2880018c 	ld.w	$r12,$r12,0
1c002390:	0044a18c 	srli.w	$r12,$r12,0x8
1c002394:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002398:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c00239c:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0023a0:	02b2018c 	addi.w	$r12,$r12,-896(0xc80)
1c0023a4:	2880018c 	ld.w	$r12,$r12,0
1c0023a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023ac:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c0023b0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0023b4:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c0023b8:	293f9ec0 	st.b	$r0,$r22,-25(0xfe7)
1c0023bc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0023c0:	02b8718c 	addi.w	$r12,$r12,-484(0xe1c)
1c0023c4:	29000180 	st.b	$r0,$r12,0
1c0023c8:	50008000 	b	128(0x80) # 1c002448 <JudgeStr+0x11c>
1c0023cc:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	50001400 	b	20(0x14) # 1c0023e8 <JudgeStr+0xbc>
1c0023d8:	03400000 	andi	$r0,$r0,0x0
1c0023dc:	03400000 	andi	$r0,$r0,0x0
1c0023e0:	03400000 	andi	$r0,$r0,0x0
1c0023e4:	03400000 	andi	$r0,$r0,0x0
1c0023e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0023f0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0023f4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0023d8 <JudgeStr+0xac>
1c0023f8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0023fc:	02b7818c 	addi.w	$r12,$r12,-544(0xde0)
1c002400:	2a00018c 	ld.bu	$r12,$r12,0
1c002404:	40004580 	beqz	$r12,68(0x44) # 1c002448 <JudgeStr+0x11c>
1c002408:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00240c:	02b7418c 	addi.w	$r12,$r12,-560(0xdd0)
1c002410:	29000180 	st.b	$r0,$r12,0
1c002414:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002418:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00241c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c002420:	00150185 	move	$r5,$r12
1c002424:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002428:	28afa084 	ld.w	$r4,$r4,-1048(0xbe8)
1c00242c:	57f3b3ff 	bl	-3152(0xffff3b0) # 1c0017dc <strstr>
1c002430:	0015008c 	move	$r12,$r4
1c002434:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002438:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00243c:	40000d80 	beqz	$r12,12(0xc) # 1c002448 <JudgeStr+0x11c>
1c002440:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002444:	50001c00 	b	28(0x1c) # 1c002460 <JudgeStr+0x134>
1c002448:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00244c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002450:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c002454:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c002458:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0023cc <JudgeStr+0xa0>
1c00245c:	0015000c 	move	$r12,$r0
1c002460:	00150184 	move	$r4,$r12
1c002464:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002468:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00246c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002470:	4c000020 	jirl	$r0,$r1,0

1c002474 <PS_GetImage>:
PS_GetImage():
1c002474:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002478:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00247c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002480:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002484:	57fcc3ff 	bl	-832(0xffffcc0) # 1c002144 <SendHead>
1c002488:	57fd07ff 	bl	-764(0xffffd04) # 1c00218c <SendAddr>
1c00248c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002490:	57fd8fff 	bl	-628(0xffffd8c) # 1c00221c <SendFlag>
1c002494:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002498:	57fdbfff 	bl	-580(0xffffdbc) # 1c002254 <SendLength>
1c00249c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0024a0:	57fe03ff 	bl	-512(0xffffe00) # 1c0022a0 <Sendcmd>
1c0024a4:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0024a8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0024ac:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0024b0:	00150184 	move	$r4,$r12
1c0024b4:	57fe27ff 	bl	-476(0xffffe24) # 1c0022d8 <SendCheck>
1c0024b8:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c0024bc:	57fe73ff 	bl	-400(0xffffe70) # 1c00232c <JudgeStr>
1c0024c0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0024c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024c8:	40001580 	beqz	$r12,20(0x14) # 1c0024dc <PS_GetImage+0x68>
1c0024cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024d0:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0024d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024d8:	50000c00 	b	12(0xc) # 1c0024e4 <PS_GetImage+0x70>
1c0024dc:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0024e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024e8:	00150184 	move	$r4,$r12
1c0024ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0024f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0024f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0024f8:	4c000020 	jirl	$r0,$r1,0

1c0024fc <PS_GenChar>:
PS_GenChar():
1c0024fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002500:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002504:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002508:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00250c:	0015008c 	move	$r12,$r4
1c002510:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002514:	57fc33ff 	bl	-976(0xffffc30) # 1c002144 <SendHead>
1c002518:	57fc77ff 	bl	-908(0xffffc74) # 1c00218c <SendAddr>
1c00251c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002520:	57fcffff 	bl	-772(0xffffcfc) # 1c00221c <SendFlag>
1c002524:	02801004 	addi.w	$r4,$r0,4(0x4)
1c002528:	57fd2fff 	bl	-724(0xffffd2c) # 1c002254 <SendLength>
1c00252c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002530:	57fd73ff 	bl	-656(0xffffd70) # 1c0022a0 <Sendcmd>
1c002534:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002538:	00150184 	move	$r4,$r12
1c00253c:	57fba7ff 	bl	-1116(0xffffba4) # 1c0020e0 <MYUSART_SendData>
1c002540:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002544:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002548:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00254c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002550:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002554:	00150184 	move	$r4,$r12
1c002558:	57fd83ff 	bl	-640(0xffffd80) # 1c0022d8 <SendCheck>
1c00255c:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002560:	57fdcfff 	bl	-564(0xffffdcc) # 1c00232c <JudgeStr>
1c002564:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002568:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00256c:	40001580 	beqz	$r12,20(0x14) # 1c002580 <PS_GenChar+0x84>
1c002570:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002574:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002578:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00257c:	50000c00 	b	12(0xc) # 1c002588 <PS_GenChar+0x8c>
1c002580:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002584:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002588:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00258c:	00150184 	move	$r4,$r12
1c002590:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002594:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002598:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00259c:	4c000020 	jirl	$r0,$r1,0

1c0025a0 <PS_Match>:
PS_Match():
1c0025a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0025a4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0025a8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0025ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0025b0:	57fb97ff 	bl	-1132(0xffffb94) # 1c002144 <SendHead>
1c0025b4:	57fbdbff 	bl	-1064(0xffffbd8) # 1c00218c <SendAddr>
1c0025b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0025bc:	57fc63ff 	bl	-928(0xffffc60) # 1c00221c <SendFlag>
1c0025c0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0025c4:	57fc93ff 	bl	-880(0xffffc90) # 1c002254 <SendLength>
1c0025c8:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0025cc:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0022a0 <Sendcmd>
1c0025d0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0025d4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0025d8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0025dc:	00150184 	move	$r4,$r12
1c0025e0:	57fcfbff 	bl	-776(0xffffcf8) # 1c0022d8 <SendCheck>
1c0025e4:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c0025e8:	57fd47ff 	bl	-700(0xffffd44) # 1c00232c <JudgeStr>
1c0025ec:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0025f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025f4:	40001580 	beqz	$r12,20(0x14) # 1c002608 <PS_Match+0x68>
1c0025f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025fc:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002600:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002604:	50000c00 	b	12(0xc) # 1c002610 <PS_Match+0x70>
1c002608:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00260c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002610:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002614:	00150184 	move	$r4,$r12
1c002618:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00261c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002620:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002624:	4c000020 	jirl	$r0,$r1,0

1c002628 <PS_RegModel>:
PS_RegModel():
1c002628:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00262c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002630:	29806076 	st.w	$r22,$r3,24(0x18)
1c002634:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002638:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002144 <SendHead>
1c00263c:	57fb53ff 	bl	-1200(0xffffb50) # 1c00218c <SendAddr>
1c002640:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002644:	57fbdbff 	bl	-1064(0xffffbd8) # 1c00221c <SendFlag>
1c002648:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00264c:	57fc0bff 	bl	-1016(0xffffc08) # 1c002254 <SendLength>
1c002650:	02801404 	addi.w	$r4,$r0,5(0x5)
1c002654:	57fc4fff 	bl	-948(0xffffc4c) # 1c0022a0 <Sendcmd>
1c002658:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c00265c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002660:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002664:	00150184 	move	$r4,$r12
1c002668:	57fc73ff 	bl	-912(0xffffc70) # 1c0022d8 <SendCheck>
1c00266c:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002670:	57fcbfff 	bl	-836(0xffffcbc) # 1c00232c <JudgeStr>
1c002674:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002678:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00267c:	40001580 	beqz	$r12,20(0x14) # 1c002690 <PS_RegModel+0x68>
1c002680:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002684:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002688:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00268c:	50000c00 	b	12(0xc) # 1c002698 <PS_RegModel+0x70>
1c002690:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002694:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002698:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00269c:	00150184 	move	$r4,$r12
1c0026a0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026a4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0026ac:	4c000020 	jirl	$r0,$r1,0

1c0026b0 <PS_StoreChar>:
PS_StoreChar():
1c0026b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026c0:	0015008c 	move	$r12,$r4
1c0026c4:	001500ad 	move	$r13,$r5
1c0026c8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0026cc:	001501ac 	move	$r12,$r13
1c0026d0:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0026d4:	57fa73ff 	bl	-1424(0xffffa70) # 1c002144 <SendHead>
1c0026d8:	57fab7ff 	bl	-1356(0xffffab4) # 1c00218c <SendAddr>
1c0026dc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0026e0:	57fb3fff 	bl	-1220(0xffffb3c) # 1c00221c <SendFlag>
1c0026e4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0026e8:	57fb6fff 	bl	-1172(0xffffb6c) # 1c002254 <SendLength>
1c0026ec:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0026f0:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c0022a0 <Sendcmd>
1c0026f4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0026f8:	00150184 	move	$r4,$r12
1c0026fc:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c0020e0 <MYUSART_SendData>
1c002700:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002704:	0044a18c 	srli.w	$r12,$r12,0x8
1c002708:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00270c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002710:	00150184 	move	$r4,$r12
1c002714:	57f9cfff 	bl	-1588(0xffff9cc) # 1c0020e0 <MYUSART_SendData>
1c002718:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00271c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002720:	00150184 	move	$r4,$r12
1c002724:	57f9bfff 	bl	-1604(0xffff9bc) # 1c0020e0 <MYUSART_SendData>
1c002728:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00272c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002730:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002734:	0044a18c 	srli.w	$r12,$r12,0x8
1c002738:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00273c:	001031ac 	add.w	$r12,$r13,$r12
1c002740:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002744:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002748:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00274c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002750:	001031ac 	add.w	$r12,$r13,$r12
1c002754:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002758:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c00275c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002760:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002764:	00150184 	move	$r4,$r12
1c002768:	57fb73ff 	bl	-1168(0xffffb70) # 1c0022d8 <SendCheck>
1c00276c:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002770:	57fbbfff 	bl	-1092(0xffffbbc) # 1c00232c <JudgeStr>
1c002774:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002778:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00277c:	40001580 	beqz	$r12,20(0x14) # 1c002790 <PS_StoreChar+0xe0>
1c002780:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002784:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002788:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00278c:	50000c00 	b	12(0xc) # 1c002798 <PS_StoreChar+0xe8>
1c002790:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002794:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002798:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00279c:	00150184 	move	$r4,$r12
1c0027a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027ac:	4c000020 	jirl	$r0,$r1,0

1c0027b0 <PS_Empty>:
PS_Empty():
1c0027b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0027b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0027bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027c0:	57f987ff 	bl	-1660(0xffff984) # 1c002144 <SendHead>
1c0027c4:	57f9cbff 	bl	-1592(0xffff9c8) # 1c00218c <SendAddr>
1c0027c8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0027cc:	57fa53ff 	bl	-1456(0xffffa50) # 1c00221c <SendFlag>
1c0027d0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027d4:	57fa83ff 	bl	-1408(0xffffa80) # 1c002254 <SendLength>
1c0027d8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0027dc:	57fac7ff 	bl	-1340(0xffffac4) # 1c0022a0 <Sendcmd>
1c0027e0:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0027e4:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0027e8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0027ec:	00150184 	move	$r4,$r12
1c0027f0:	57faebff 	bl	-1304(0xffffae8) # 1c0022d8 <SendCheck>
1c0027f4:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c0027f8:	57fb37ff 	bl	-1228(0xffffb34) # 1c00232c <JudgeStr>
1c0027fc:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002804:	40001580 	beqz	$r12,20(0x14) # 1c002818 <PS_Empty+0x68>
1c002808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00280c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002810:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002814:	50000c00 	b	12(0xc) # 1c002820 <PS_Empty+0x70>
1c002818:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00281c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002820:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002824:	00150184 	move	$r4,$r12
1c002828:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00282c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002830:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002834:	4c000020 	jirl	$r0,$r1,0

1c002838 <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c002838:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00283c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002840:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002844:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002848:	0015008c 	move	$r12,$r4
1c00284c:	001500ae 	move	$r14,$r5
1c002850:	001500cd 	move	$r13,$r6
1c002854:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c002858:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00285c:	001501cc 	move	$r12,$r14
1c002860:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002864:	001501ac 	move	$r12,$r13
1c002868:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c00286c:	57f8dbff 	bl	-1832(0xffff8d8) # 1c002144 <SendHead>
1c002870:	57f91fff 	bl	-1764(0xffff91c) # 1c00218c <SendAddr>
1c002874:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002878:	57f9a7ff 	bl	-1628(0xffff9a4) # 1c00221c <SendFlag>
1c00287c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002880:	57f9d7ff 	bl	-1580(0xffff9d4) # 1c002254 <SendLength>
1c002884:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c002888:	57fa1bff 	bl	-1512(0xffffa18) # 1c0022a0 <Sendcmd>
1c00288c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002890:	00150184 	move	$r4,$r12
1c002894:	57f84fff 	bl	-1972(0xffff84c) # 1c0020e0 <MYUSART_SendData>
1c002898:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00289c:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028a0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028a8:	00150184 	move	$r4,$r12
1c0028ac:	57f837ff 	bl	-1996(0xffff834) # 1c0020e0 <MYUSART_SendData>
1c0028b0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028b8:	00150184 	move	$r4,$r12
1c0028bc:	57f827ff 	bl	-2012(0xffff824) # 1c0020e0 <MYUSART_SendData>
1c0028c0:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c0028c4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028c8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028d0:	00150184 	move	$r4,$r12
1c0028d4:	57f80fff 	bl	-2036(0xffff80c) # 1c0020e0 <MYUSART_SendData>
1c0028d8:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c0028dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028e0:	00150184 	move	$r4,$r12
1c0028e4:	57f7ffff 	bl	-2052(0xffff7fc) # 1c0020e0 <MYUSART_SendData>
1c0028e8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0028ec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0028f0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0028f4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0028f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028fc:	001031ac 	add.w	$r12,$r13,$r12
1c002900:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002904:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002908:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00290c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002910:	001031ac 	add.w	$r12,$r13,$r12
1c002914:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002918:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c00291c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002920:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002924:	001031ac 	add.w	$r12,$r13,$r12
1c002928:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00292c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002930:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002934:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002938:	001031ac 	add.w	$r12,$r13,$r12
1c00293c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002940:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c002944:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002948:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00294c:	00150184 	move	$r4,$r12
1c002950:	57f98bff 	bl	-1656(0xffff988) # 1c0022d8 <SendCheck>
1c002954:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002958:	57f9d7ff 	bl	-1580(0xffff9d4) # 1c00232c <JudgeStr>
1c00295c:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002960:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002964:	40008580 	beqz	$r12,132(0x84) # 1c0029e8 <PS_HighSpeedSearch+0x1b0>
1c002968:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00296c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002970:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002974:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002978:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c00297c:	2a00018c 	ld.bu	$r12,$r12,0
1c002980:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002984:	0040a18c 	slli.w	$r12,$r12,0x8
1c002988:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00298c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002990:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c002994:	2a00018c 	ld.bu	$r12,$r12,0
1c002998:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00299c:	001031ac 	add.w	$r12,$r13,$r12
1c0029a0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0029a4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0029a8:	2940018d 	st.h	$r13,$r12,0
1c0029ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029b0:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0029b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0029b8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0029bc:	0040a18c 	slli.w	$r12,$r12,0x8
1c0029c0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0029c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029c8:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c0029cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0029d0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0029d4:	001031ac 	add.w	$r12,$r13,$r12
1c0029d8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0029dc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0029e0:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0029e4:	50000c00 	b	12(0xc) # 1c0029f0 <PS_HighSpeedSearch+0x1b8>
1c0029e8:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0029ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029f0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0029f4:	00150184 	move	$r4,$r12
1c0029f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a04:	4c000020 	jirl	$r0,$r1,0

1c002a08 <ShowErrMessage>:
ShowErrMessage():
1c002a08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a18:	0015008c 	move	$r12,$r4
1c002a1c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a20:	5416cc00 	bl	5836(0x16cc) # 1c0040ec <OLED_CLS>
1c002a24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002a28:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002a2c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a30:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002a34:	541a0800 	bl	6664(0x1a08) # 1c00443c <OLED_ShowCN_STR>
1c002a38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002a3c:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002a40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a44:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002a48:	5419f400 	bl	6644(0x19f4) # 1c00443c <OLED_ShowCN_STR>
1c002a4c:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c002a50:	03bead8c 	ori	$r12,$r12,0xfab
1c002a54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a58:	50001400 	b	20(0x14) # 1c002a6c <ShowErrMessage+0x64>
1c002a5c:	03400000 	andi	$r0,$r0,0x0
1c002a60:	03400000 	andi	$r0,$r0,0x0
1c002a64:	03400000 	andi	$r0,$r0,0x0
1c002a68:	03400000 	andi	$r0,$r0,0x0
1c002a6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a70:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002a74:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002a78:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002a5c <ShowErrMessage+0x54>
1c002a7c:	54167000 	bl	5744(0x1670) # 1c0040ec <OLED_CLS>
1c002a80:	02801407 	addi.w	$r7,$r0,5(0x5)
1c002a84:	02812006 	addi.w	$r6,$r0,72(0x48)
1c002a88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a8c:	02806404 	addi.w	$r4,$r0,25(0x19)
1c002a90:	5419ac00 	bl	6572(0x19ac) # 1c00443c <OLED_ShowCN_STR>
1c002a94:	54165800 	bl	5720(0x1658) # 1c0040ec <OLED_CLS>
1c002a98:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002a9c:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002aa0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002aa4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002aa8:	54199400 	bl	6548(0x1994) # 1c00443c <OLED_ShowCN_STR>
1c002aac:	03400000 	andi	$r0,$r0,0x0
1c002ab0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ab4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ab8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002abc:	4c000020 	jirl	$r0,$r1,0

1c002ac0 <Add_FR>:
Add_FR():
1c002ac0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ac4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ac8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002acc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ad0:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002ad4:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002ad8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002adc:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002ae0:	680495ac 	bltu	$r13,$r12,1172(0x494) # 1c002f74 <Add_FR+0x4b4>
1c002ae4:	0040898d 	slli.w	$r13,$r12,0x2
1c002ae8:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c002aec:	0285c18c 	addi.w	$r12,$r12,368(0x170)
1c002af0:	001031ac 	add.w	$r12,$r13,$r12
1c002af4:	2880018c 	ld.w	$r12,$r12,0
1c002af8:	4c000180 	jirl	$r0,$r12,0
1c002afc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002b00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002b04:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002b08:	5415e400 	bl	5604(0x15e4) # 1c0040ec <OLED_CLS>
1c002b0c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002b10:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002b14:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b18:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002b1c:	54192000 	bl	6432(0x1920) # 1c00443c <OLED_ShowCN_STR>
1c002b20:	57f957ff 	bl	-1708(0xffff954) # 1c002474 <PS_GetImage>
1c002b24:	0015008c 	move	$r12,$r4
1c002b28:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002b2c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b30:	44006980 	bnez	$r12,104(0x68) # 1c002b98 <Add_FR+0xd8>
1c002b34:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002b38:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c0024fc <PS_GenChar>
1c002b3c:	0015008c 	move	$r12,$r4
1c002b40:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002b44:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b48:	44004180 	bnez	$r12,64(0x40) # 1c002b88 <Add_FR+0xc8>
1c002b4c:	5415a000 	bl	5536(0x15a0) # 1c0040ec <OLED_CLS>
1c002b50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002b54:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002b58:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b5c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002b60:	5418dc00 	bl	6364(0x18dc) # 1c00443c <OLED_ShowCN_STR>
1c002b64:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002b68:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002b6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b70:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002b74:	5418c800 	bl	6344(0x18c8) # 1c00443c <OLED_ShowCN_STR>
1c002b78:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002b7c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b80:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002b84:	5003f000 	b	1008(0x3f0) # 1c002f74 <Add_FR+0x4b4>
1c002b88:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b8c:	00150184 	move	$r4,$r12
1c002b90:	57fe7bff 	bl	-392(0xffffe78) # 1c002a08 <ShowErrMessage>
1c002b94:	5003e000 	b	992(0x3e0) # 1c002f74 <Add_FR+0x4b4>
1c002b98:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b9c:	00150184 	move	$r4,$r12
1c002ba0:	57fe6bff 	bl	-408(0xffffe68) # 1c002a08 <ShowErrMessage>
1c002ba4:	5003d000 	b	976(0x3d0) # 1c002f74 <Add_FR+0x4b4>
1c002ba8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002bac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002bb0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002bb4:	54153800 	bl	5432(0x1538) # 1c0040ec <OLED_CLS>
1c002bb8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002bbc:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002bc0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002bc4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002bc8:	54187400 	bl	6260(0x1874) # 1c00443c <OLED_ShowCN_STR>
1c002bcc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002bd0:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002bd4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002bd8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002bdc:	54186000 	bl	6240(0x1860) # 1c00443c <OLED_ShowCN_STR>
1c002be0:	57f897ff 	bl	-1900(0xffff894) # 1c002474 <PS_GetImage>
1c002be4:	0015008c 	move	$r12,$r4
1c002be8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002bec:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002bf0:	44006980 	bnez	$r12,104(0x68) # 1c002c58 <Add_FR+0x198>
1c002bf4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002bf8:	57f907ff 	bl	-1788(0xffff904) # 1c0024fc <PS_GenChar>
1c002bfc:	0015008c 	move	$r12,$r4
1c002c00:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002c04:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002c08:	44004180 	bnez	$r12,64(0x40) # 1c002c48 <Add_FR+0x188>
1c002c0c:	5414e000 	bl	5344(0x14e0) # 1c0040ec <OLED_CLS>
1c002c10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c14:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c1c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002c20:	54181c00 	bl	6172(0x181c) # 1c00443c <OLED_ShowCN_STR>
1c002c24:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002c28:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002c2c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c30:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002c34:	54180800 	bl	6152(0x1808) # 1c00443c <OLED_ShowCN_STR>
1c002c38:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002c3c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002c40:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002c44:	50033000 	b	816(0x330) # 1c002f74 <Add_FR+0x4b4>
1c002c48:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002c4c:	00150184 	move	$r4,$r12
1c002c50:	57fdbbff 	bl	-584(0xffffdb8) # 1c002a08 <ShowErrMessage>
1c002c54:	50032000 	b	800(0x320) # 1c002f74 <Add_FR+0x4b4>
1c002c58:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002c5c:	00150184 	move	$r4,$r12
1c002c60:	57fdabff 	bl	-600(0xffffda8) # 1c002a08 <ShowErrMessage>
1c002c64:	50031000 	b	784(0x310) # 1c002f74 <Add_FR+0x4b4>
1c002c68:	54148400 	bl	5252(0x1484) # 1c0040ec <OLED_CLS>
1c002c6c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c70:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c74:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c78:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002c7c:	5417c000 	bl	6080(0x17c0) # 1c00443c <OLED_ShowCN_STR>
1c002c80:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002c84:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002c88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c8c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002c90:	5417ac00 	bl	6060(0x17ac) # 1c00443c <OLED_ShowCN_STR>
1c002c94:	57f90fff 	bl	-1780(0xffff90c) # 1c0025a0 <PS_Match>
1c002c98:	0015008c 	move	$r12,$r4
1c002c9c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002ca0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002ca4:	44006980 	bnez	$r12,104(0x68) # 1c002d0c <Add_FR+0x24c>
1c002ca8:	54144400 	bl	5188(0x1444) # 1c0040ec <OLED_CLS>
1c002cac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002cb0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002cb4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002cb8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002cbc:	54178000 	bl	6016(0x1780) # 1c00443c <OLED_ShowCN_STR>
1c002cc0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002cc4:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002cc8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ccc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002cd0:	54176c00 	bl	5996(0x176c) # 1c00443c <OLED_ShowCN_STR>
1c002cd4:	54141800 	bl	5144(0x1418) # 1c0040ec <OLED_CLS>
1c002cd8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002cdc:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002ce0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ce4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002ce8:	54175400 	bl	5972(0x1754) # 1c00443c <OLED_ShowCN_STR>
1c002cec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002cf0:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002cf4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002cf8:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002cfc:	54174000 	bl	5952(0x1740) # 1c00443c <OLED_ShowCN_STR>
1c002d00:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002d04:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002d08:	50004400 	b	68(0x44) # 1c002d4c <Add_FR+0x28c>
1c002d0c:	5413e000 	bl	5088(0x13e0) # 1c0040ec <OLED_CLS>
1c002d10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d14:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002d18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d1c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d20:	54171c00 	bl	5916(0x171c) # 1c00443c <OLED_ShowCN_STR>
1c002d24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d28:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002d2c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d30:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002d34:	54170800 	bl	5896(0x1708) # 1c00443c <OLED_ShowCN_STR>
1c002d38:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002d3c:	00150184 	move	$r4,$r12
1c002d40:	57fccbff 	bl	-824(0xffffcc8) # 1c002a08 <ShowErrMessage>
1c002d44:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002d48:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002d4c:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002d50:	03bfc98c 	ori	$r12,$r12,0xff2
1c002d54:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d58:	50001400 	b	20(0x14) # 1c002d6c <Add_FR+0x2ac>
1c002d5c:	03400000 	andi	$r0,$r0,0x0
1c002d60:	03400000 	andi	$r0,$r0,0x0
1c002d64:	03400000 	andi	$r0,$r0,0x0
1c002d68:	03400000 	andi	$r0,$r0,0x0
1c002d6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d70:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d74:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d78:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d5c <Add_FR+0x29c>
1c002d7c:	5001f800 	b	504(0x1f8) # 1c002f74 <Add_FR+0x4b4>
1c002d80:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002d84:	03bfc98c 	ori	$r12,$r12,0xff2
1c002d88:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d8c:	50001400 	b	20(0x14) # 1c002da0 <Add_FR+0x2e0>
1c002d90:	03400000 	andi	$r0,$r0,0x0
1c002d94:	03400000 	andi	$r0,$r0,0x0
1c002d98:	03400000 	andi	$r0,$r0,0x0
1c002d9c:	03400000 	andi	$r0,$r0,0x0
1c002da0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002da4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002da8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002dac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d90 <Add_FR+0x2d0>
1c002db0:	57f87bff 	bl	-1928(0xffff878) # 1c002628 <PS_RegModel>
1c002db4:	0015008c 	move	$r12,$r4
1c002db8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002dbc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002dc0:	44001180 	bnez	$r12,16(0x10) # 1c002dd0 <Add_FR+0x310>
1c002dc4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002dc8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002dcc:	50001400 	b	20(0x14) # 1c002de0 <Add_FR+0x320>
1c002dd0:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002dd4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002dd8:	00150184 	move	$r4,$r12
1c002ddc:	57fc2fff 	bl	-980(0xffffc2c) # 1c002a08 <ShowErrMessage>
1c002de0:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002de4:	03bfc98c 	ori	$r12,$r12,0xff2
1c002de8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002dec:	50001400 	b	20(0x14) # 1c002e00 <Add_FR+0x340>
1c002df0:	03400000 	andi	$r0,$r0,0x0
1c002df4:	03400000 	andi	$r0,$r0,0x0
1c002df8:	03400000 	andi	$r0,$r0,0x0
1c002dfc:	03400000 	andi	$r0,$r0,0x0
1c002e00:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002e04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002e08:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c002e0c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002df0 <Add_FR+0x330>
1c002e10:	50016400 	b	356(0x164) # 1c002f74 <Add_FR+0x4b4>
1c002e14:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e18:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002e1c:	50009000 	b	144(0x90) # 1c002eac <Add_FR+0x3ec>
1c002e20:	5404c000 	bl	1216(0x4c0) # 1c0032e0 <MatrixKey>
1c002e24:	0015008c 	move	$r12,$r4
1c002e28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002e2c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002e30:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c002e34:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c002e50 <Add_FR+0x390>
1c002e38:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002e3c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002e40:	40001180 	beqz	$r12,16(0x10) # 1c002e50 <Add_FR+0x390>
1c002e44:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002e48:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002e4c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002e50:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002e54:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c002e58:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c002e78 <Add_FR+0x3b8>
1c002e5c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002e60:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c002e64:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c002e68:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c002e78 <Add_FR+0x3b8>
1c002e6c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002e70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e74:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002e78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e7c:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c002e80:	02b760c6 	addi.w	$r6,$r6,-552(0xdd8)
1c002e84:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002e88:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002e8c:	54128c00 	bl	4748(0x128c) # 1c004118 <OLED_ShowStr>
1c002e90:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002e94:	02804008 	addi.w	$r8,$r0,16(0x10)
1c002e98:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e9c:	00150186 	move	$r6,$r12
1c002ea0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002ea4:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c002ea8:	5418dc00 	bl	6364(0x18dc) # 1c004784 <OLED_ShowNum>
1c002eac:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002eb0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002eb4:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c002e20 <Add_FR+0x360>
1c002eb8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002ebc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002ec0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ec4:	00150185 	move	$r5,$r12
1c002ec8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002ecc:	57f7e7ff 	bl	-2076(0xffff7e4) # 1c0026b0 <PS_StoreChar>
1c002ed0:	0015008c 	move	$r12,$r4
1c002ed4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002ed8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002edc:	44008580 	bnez	$r12,132(0x84) # 1c002f60 <Add_FR+0x4a0>
1c002ee0:	54120c00 	bl	4620(0x120c) # 1c0040ec <OLED_CLS>
1c002ee4:	02801807 	addi.w	$r7,$r0,6(0x6)
1c002ee8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002eec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ef0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c002ef4:	54154800 	bl	5448(0x1548) # 1c00443c <OLED_ShowCN_STR>
1c002ef8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002efc:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c002f00:	02b560c6 	addi.w	$r6,$r6,-680(0xd58)
1c002f04:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002f08:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002f0c:	54120c00 	bl	4620(0x120c) # 1c004118 <OLED_ShowStr>
1c002f10:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002f14:	02804008 	addi.w	$r8,$r0,16(0x10)
1c002f18:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f1c:	00150186 	move	$r6,$r12
1c002f20:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002f24:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c002f28:	54185c00 	bl	6236(0x185c) # 1c004784 <OLED_ShowNum>
1c002f2c:	14002aac 	lu12i.w	$r12,341(0x155)
1c002f30:	03bf598c 	ori	$r12,$r12,0xfd6
1c002f34:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002f38:	50001400 	b	20(0x14) # 1c002f4c <Add_FR+0x48c>
1c002f3c:	03400000 	andi	$r0,$r0,0x0
1c002f40:	03400000 	andi	$r0,$r0,0x0
1c002f44:	03400000 	andi	$r0,$r0,0x0
1c002f48:	03400000 	andi	$r0,$r0,0x0
1c002f4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f50:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f54:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c002f58:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002f3c <Add_FR+0x47c>
1c002f5c:	50005c00 	b	92(0x5c) # 1c002fb8 <Add_FR+0x4f8>
1c002f60:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002f64:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002f68:	00150184 	move	$r4,$r12
1c002f6c:	57fa9fff 	bl	-1380(0xffffa9c) # 1c002a08 <ShowErrMessage>
1c002f70:	03400000 	andi	$r0,$r0,0x0
1c002f74:	14000b6c 	lu12i.w	$r12,91(0x5b)
1c002f78:	038ca18c 	ori	$r12,$r12,0x328
1c002f7c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002f80:	50001400 	b	20(0x14) # 1c002f94 <Add_FR+0x4d4>
1c002f84:	03400000 	andi	$r0,$r0,0x0
1c002f88:	03400000 	andi	$r0,$r0,0x0
1c002f8c:	03400000 	andi	$r0,$r0,0x0
1c002f90:	03400000 	andi	$r0,$r0,0x0
1c002f94:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002f98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f9c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c002fa0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002f84 <Add_FR+0x4c4>
1c002fa4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c002fa8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002fac:	580009ac 	beq	$r13,$r12,8(0x8) # 1c002fb4 <Add_FR+0x4f4>
1c002fb0:	53fb2bff 	b	-1240(0xffffb28) # 1c002ad8 <Add_FR+0x18>
1c002fb4:	03400000 	andi	$r0,$r0,0x0
1c002fb8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002fbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002fc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002fc4:	4c000020 	jirl	$r0,$r1,0

1c002fc8 <press_FR>:
press_FR():
1c002fc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fcc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002fd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002fd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fd8:	54111400 	bl	4372(0x1114) # 1c0040ec <OLED_CLS>
1c002fdc:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002fe0:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002fe4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002fe8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002fec:	54145000 	bl	5200(0x1450) # 1c00443c <OLED_ShowCN_STR>
1c002ff0:	57f487ff 	bl	-2940(0xffff484) # 1c002474 <PS_GetImage>
1c002ff4:	0015008c 	move	$r12,$r4
1c002ff8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002ffc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003000:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002ff0 <press_FR+0x28>
1c003004:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003008:	57f4f7ff 	bl	-2828(0xffff4f4) # 1c0024fc <PS_GenChar>
1c00300c:	0015008c 	move	$r12,$r4
1c003010:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003014:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003018:	44011d80 	bnez	$r12,284(0x11c) # 1c003134 <press_FR+0x16c>
1c00301c:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c003020:	00150187 	move	$r7,$r12
1c003024:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c003028:	00150005 	move	$r5,$r0
1c00302c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003030:	57f80bff 	bl	-2040(0xffff808) # 1c002838 <PS_HighSpeedSearch>
1c003034:	0015008c 	move	$r12,$r4
1c003038:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00303c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003040:	4400b580 	bnez	$r12,180(0xb4) # 1c0030f4 <press_FR+0x12c>
1c003044:	5410a800 	bl	4264(0x10a8) # 1c0040ec <OLED_CLS>
1c003048:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00304c:	54353800 	bl	13624(0x3538) # 1c006584 <interface_display>
1c003050:	5401e400 	bl	484(0x1e4) # 1c003234 <SG90_Open>
1c003054:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c003058:	03bdc58c 	ori	$r12,$r12,0xf71
1c00305c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003060:	50001400 	b	20(0x14) # 1c003074 <press_FR+0xac>
1c003064:	03400000 	andi	$r0,$r0,0x0
1c003068:	03400000 	andi	$r0,$r0,0x0
1c00306c:	03400000 	andi	$r0,$r0,0x0
1c003070:	03400000 	andi	$r0,$r0,0x0
1c003074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003078:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00307c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003080:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003064 <press_FR+0x9c>
1c003084:	5401dc00 	bl	476(0x1dc) # 1c003260 <SG90_Close>
1c003088:	02802404 	addi.w	$r4,$r0,9(0x9)
1c00308c:	5434f800 	bl	13560(0x34f8) # 1c006584 <interface_display>
1c003090:	14002aac 	lu12i.w	$r12,341(0x155)
1c003094:	03bf598c 	ori	$r12,$r12,0xfd6
1c003098:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00309c:	50001400 	b	20(0x14) # 1c0030b0 <press_FR+0xe8>
1c0030a0:	03400000 	andi	$r0,$r0,0x0
1c0030a4:	03400000 	andi	$r0,$r0,0x0
1c0030a8:	03400000 	andi	$r0,$r0,0x0
1c0030ac:	03400000 	andi	$r0,$r0,0x0
1c0030b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0030b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0030b8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0030bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0030a0 <press_FR+0xd8>
1c0030c0:	14002aac 	lu12i.w	$r12,341(0x155)
1c0030c4:	03bf598c 	ori	$r12,$r12,0xfd6
1c0030c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030cc:	50001400 	b	20(0x14) # 1c0030e0 <press_FR+0x118>
1c0030d0:	03400000 	andi	$r0,$r0,0x0
1c0030d4:	03400000 	andi	$r0,$r0,0x0
1c0030d8:	03400000 	andi	$r0,$r0,0x0
1c0030dc:	03400000 	andi	$r0,$r0,0x0
1c0030e0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0030e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0030e8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0030ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0030d0 <press_FR+0x108>
1c0030f0:	50006000 	b	96(0x60) # 1c003150 <press_FR+0x188>
1c0030f4:	540ff800 	bl	4088(0xff8) # 1c0040ec <OLED_CLS>
1c0030f8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0030fc:	54348800 	bl	13448(0x3488) # 1c006584 <interface_display>
1c003100:	540b3800 	bl	2872(0xb38) # 1c003c38 <Buzzer>
1c003104:	14002aac 	lu12i.w	$r12,341(0x155)
1c003108:	03bf598c 	ori	$r12,$r12,0xfd6
1c00310c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003110:	50001400 	b	20(0x14) # 1c003124 <press_FR+0x15c>
1c003114:	03400000 	andi	$r0,$r0,0x0
1c003118:	03400000 	andi	$r0,$r0,0x0
1c00311c:	03400000 	andi	$r0,$r0,0x0
1c003120:	03400000 	andi	$r0,$r0,0x0
1c003124:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003128:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00312c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003130:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003114 <press_FR+0x14c>
1c003134:	540fb800 	bl	4024(0xfb8) # 1c0040ec <OLED_CLS>
1c003138:	02801007 	addi.w	$r7,$r0,4(0x4)
1c00313c:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003140:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003144:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003148:	5412f400 	bl	4852(0x12f4) # 1c00443c <OLED_ShowCN_STR>
1c00314c:	53fea7ff 	b	-348(0xffffea4) # 1c002ff0 <press_FR+0x28>
1c003150:	03400000 	andi	$r0,$r0,0x0
1c003154:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003158:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00315c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003160:	4c000020 	jirl	$r0,$r1,0

1c003164 <Del_FR_Lib>:
Del_FR_Lib():
1c003164:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003168:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00316c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003170:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003174:	57f63fff 	bl	-2500(0xffff63c) # 1c0027b0 <PS_Empty>
1c003178:	0015008c 	move	$r12,$r4
1c00317c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003180:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003184:	40001180 	beqz	$r12,16(0x10) # 1c003194 <Del_FR_Lib+0x30>
1c003188:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00318c:	00150184 	move	$r4,$r12
1c003190:	57f87bff 	bl	-1928(0xffff878) # 1c002a08 <ShowErrMessage>
1c003194:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c003198:	03bf918c 	ori	$r12,$r12,0xfe4
1c00319c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031a0:	50001400 	b	20(0x14) # 1c0031b4 <Del_FR_Lib+0x50>
1c0031a4:	03400000 	andi	$r0,$r0,0x0
1c0031a8:	03400000 	andi	$r0,$r0,0x0
1c0031ac:	03400000 	andi	$r0,$r0,0x0
1c0031b0:	03400000 	andi	$r0,$r0,0x0
1c0031b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0031bc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0031c0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0031a4 <Del_FR_Lib+0x40>
1c0031c4:	03400000 	andi	$r0,$r0,0x0
1c0031c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0031cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0031d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031d4:	4c000020 	jirl	$r0,$r1,0

1c0031d8 <SG90_GetAngle>:
SG90_GetAngle():
1c0031d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0031dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0031e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0031e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0031ec:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0031f0:	57eccfff 	bl	-4916(0xfffeccc) # 1c001ebc <pwm_steering_engine_set>
1c0031f4:	03400000 	andi	$r0,$r0,0x0
1c0031f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0031fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003200:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003204:	4c000020 	jirl	$r0,$r1,0

1c003208 <SG90_Init>:
SG90_Init():
1c003208:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00320c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003210:	29802076 	st.w	$r22,$r3,8(0x8)
1c003214:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003218:	00150004 	move	$r4,$r0
1c00321c:	57ffbfff 	bl	-68(0xfffffbc) # 1c0031d8 <SG90_GetAngle>
1c003220:	03400000 	andi	$r0,$r0,0x0
1c003224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00322c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003230:	4c000020 	jirl	$r0,$r1,0

1c003234 <SG90_Open>:
SG90_Open():
1c003234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00323c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003244:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c003248:	57ff93ff 	bl	-112(0xfffff90) # 1c0031d8 <SG90_GetAngle>
1c00324c:	03400000 	andi	$r0,$r0,0x0
1c003250:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003254:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003258:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00325c:	4c000020 	jirl	$r0,$r1,0

1c003260 <SG90_Close>:
SG90_Close():
1c003260:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003264:	29803061 	st.w	$r1,$r3,12(0xc)
1c003268:	29802076 	st.w	$r22,$r3,8(0x8)
1c00326c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003270:	00150004 	move	$r4,$r0
1c003274:	57ff67ff 	bl	-156(0xfffff64) # 1c0031d8 <SG90_GetAngle>
1c003278:	03400000 	andi	$r0,$r0,0x0
1c00327c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003280:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003284:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003288:	4c000020 	jirl	$r0,$r1,0

1c00328c <clkey>:
clkey():
1c00328c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003290:	29803061 	st.w	$r1,$r3,12(0xc)
1c003294:	29802076 	st.w	$r22,$r3,8(0x8)
1c003298:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00329c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0032a0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0032a4:	57e78bff 	bl	-6264(0xfffe788) # 1c001a2c <gpio_write>
1c0032a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0032ac:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0032b0:	57e77fff 	bl	-6276(0xfffe77c) # 1c001a2c <gpio_write>
1c0032b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0032b8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0032bc:	57e773ff 	bl	-6288(0xfffe770) # 1c001a2c <gpio_write>
1c0032c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0032c4:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0032c8:	57e767ff 	bl	-6300(0xfffe764) # 1c001a2c <gpio_write>
1c0032cc:	03400000 	andi	$r0,$r0,0x0
1c0032d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0032d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0032d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0032dc:	4c000020 	jirl	$r0,$r1,0

1c0032e0 <MatrixKey>:
MatrixKey():
1c0032e0:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c0032e4:	29827061 	st.w	$r1,$r3,156(0x9c)
1c0032e8:	29826076 	st.w	$r22,$r3,152(0x98)
1c0032ec:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c0032f0:	57ff9fff 	bl	-100(0xfffff9c) # 1c00328c <clkey>
1c0032f4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0032f8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0032fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003300:	50001400 	b	20(0x14) # 1c003314 <MatrixKey+0x34>
1c003304:	03400000 	andi	$r0,$r0,0x0
1c003308:	03400000 	andi	$r0,$r0,0x0
1c00330c:	03400000 	andi	$r0,$r0,0x0
1c003310:	03400000 	andi	$r0,$r0,0x0
1c003314:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003318:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00331c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003320:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003304 <MatrixKey+0x24>
1c003324:	00150005 	move	$r5,$r0
1c003328:	02804804 	addi.w	$r4,$r0,18(0x12)
1c00332c:	57e703ff 	bl	-6400(0xfffe700) # 1c001a2c <gpio_write>
1c003330:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003334:	57e7f3ff 	bl	-6160(0xfffe7f0) # 1c001b24 <gpio_read>
1c003338:	0015008c 	move	$r12,$r4
1c00333c:	44008180 	bnez	$r12,128(0x80) # 1c0033bc <MatrixKey+0xdc>
1c003340:	1400008c 	lu12i.w	$r12,4(0x4)
1c003344:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003348:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00334c:	50001400 	b	20(0x14) # 1c003360 <MatrixKey+0x80>
1c003350:	03400000 	andi	$r0,$r0,0x0
1c003354:	03400000 	andi	$r0,$r0,0x0
1c003358:	03400000 	andi	$r0,$r0,0x0
1c00335c:	03400000 	andi	$r0,$r0,0x0
1c003360:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003364:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003368:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00336c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003350 <MatrixKey+0x70>
1c003370:	03400000 	andi	$r0,$r0,0x0
1c003374:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003378:	57e7afff 	bl	-6228(0xfffe7ac) # 1c001b24 <gpio_read>
1c00337c:	0015008c 	move	$r12,$r4
1c003380:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003374 <MatrixKey+0x94>
1c003384:	1400008c 	lu12i.w	$r12,4(0x4)
1c003388:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00338c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003390:	50001400 	b	20(0x14) # 1c0033a4 <MatrixKey+0xc4>
1c003394:	03400000 	andi	$r0,$r0,0x0
1c003398:	03400000 	andi	$r0,$r0,0x0
1c00339c:	03400000 	andi	$r0,$r0,0x0
1c0033a0:	03400000 	andi	$r0,$r0,0x0
1c0033a4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0033a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0033ac:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0033b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003394 <MatrixKey+0xb4>
1c0033b4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0033b8:	50086c00 	b	2156(0x86c) # 1c003c24 <MatrixKey+0x944>
1c0033bc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0033c0:	57e767ff 	bl	-6300(0xfffe764) # 1c001b24 <gpio_read>
1c0033c4:	0015008c 	move	$r12,$r4
1c0033c8:	44008180 	bnez	$r12,128(0x80) # 1c003448 <MatrixKey+0x168>
1c0033cc:	1400008c 	lu12i.w	$r12,4(0x4)
1c0033d0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0033d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0033d8:	50001400 	b	20(0x14) # 1c0033ec <MatrixKey+0x10c>
1c0033dc:	03400000 	andi	$r0,$r0,0x0
1c0033e0:	03400000 	andi	$r0,$r0,0x0
1c0033e4:	03400000 	andi	$r0,$r0,0x0
1c0033e8:	03400000 	andi	$r0,$r0,0x0
1c0033ec:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0033f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0033f4:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0033f8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0033dc <MatrixKey+0xfc>
1c0033fc:	03400000 	andi	$r0,$r0,0x0
1c003400:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003404:	57e723ff 	bl	-6368(0xfffe720) # 1c001b24 <gpio_read>
1c003408:	0015008c 	move	$r12,$r4
1c00340c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003400 <MatrixKey+0x120>
1c003410:	1400008c 	lu12i.w	$r12,4(0x4)
1c003414:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003418:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00341c:	50001400 	b	20(0x14) # 1c003430 <MatrixKey+0x150>
1c003420:	03400000 	andi	$r0,$r0,0x0
1c003424:	03400000 	andi	$r0,$r0,0x0
1c003428:	03400000 	andi	$r0,$r0,0x0
1c00342c:	03400000 	andi	$r0,$r0,0x0
1c003430:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003434:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003438:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c00343c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003420 <MatrixKey+0x140>
1c003440:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003444:	5007e000 	b	2016(0x7e0) # 1c003c24 <MatrixKey+0x944>
1c003448:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00344c:	57e6dbff 	bl	-6440(0xfffe6d8) # 1c001b24 <gpio_read>
1c003450:	0015008c 	move	$r12,$r4
1c003454:	44008180 	bnez	$r12,128(0x80) # 1c0034d4 <MatrixKey+0x1f4>
1c003458:	1400008c 	lu12i.w	$r12,4(0x4)
1c00345c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003460:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003464:	50001400 	b	20(0x14) # 1c003478 <MatrixKey+0x198>
1c003468:	03400000 	andi	$r0,$r0,0x0
1c00346c:	03400000 	andi	$r0,$r0,0x0
1c003470:	03400000 	andi	$r0,$r0,0x0
1c003474:	03400000 	andi	$r0,$r0,0x0
1c003478:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00347c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003480:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003484:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003468 <MatrixKey+0x188>
1c003488:	03400000 	andi	$r0,$r0,0x0
1c00348c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003490:	57e697ff 	bl	-6508(0xfffe694) # 1c001b24 <gpio_read>
1c003494:	0015008c 	move	$r12,$r4
1c003498:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00348c <MatrixKey+0x1ac>
1c00349c:	1400008c 	lu12i.w	$r12,4(0x4)
1c0034a0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0034a4:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0034a8:	50001400 	b	20(0x14) # 1c0034bc <MatrixKey+0x1dc>
1c0034ac:	03400000 	andi	$r0,$r0,0x0
1c0034b0:	03400000 	andi	$r0,$r0,0x0
1c0034b4:	03400000 	andi	$r0,$r0,0x0
1c0034b8:	03400000 	andi	$r0,$r0,0x0
1c0034bc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0034c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034c4:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0034c8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0034ac <MatrixKey+0x1cc>
1c0034cc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0034d0:	50075400 	b	1876(0x754) # 1c003c24 <MatrixKey+0x944>
1c0034d4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0034d8:	57e64fff 	bl	-6580(0xfffe64c) # 1c001b24 <gpio_read>
1c0034dc:	0015008c 	move	$r12,$r4
1c0034e0:	44008180 	bnez	$r12,128(0x80) # 1c003560 <MatrixKey+0x280>
1c0034e4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0034e8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0034ec:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0034f0:	50001400 	b	20(0x14) # 1c003504 <MatrixKey+0x224>
1c0034f4:	03400000 	andi	$r0,$r0,0x0
1c0034f8:	03400000 	andi	$r0,$r0,0x0
1c0034fc:	03400000 	andi	$r0,$r0,0x0
1c003500:	03400000 	andi	$r0,$r0,0x0
1c003504:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c003508:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00350c:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c003510:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0034f4 <MatrixKey+0x214>
1c003514:	03400000 	andi	$r0,$r0,0x0
1c003518:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00351c:	57e60bff 	bl	-6648(0xfffe608) # 1c001b24 <gpio_read>
1c003520:	0015008c 	move	$r12,$r4
1c003524:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003518 <MatrixKey+0x238>
1c003528:	1400008c 	lu12i.w	$r12,4(0x4)
1c00352c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003530:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003534:	50001400 	b	20(0x14) # 1c003548 <MatrixKey+0x268>
1c003538:	03400000 	andi	$r0,$r0,0x0
1c00353c:	03400000 	andi	$r0,$r0,0x0
1c003540:	03400000 	andi	$r0,$r0,0x0
1c003544:	03400000 	andi	$r0,$r0,0x0
1c003548:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c00354c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003550:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c003554:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003538 <MatrixKey+0x258>
1c003558:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00355c:	5006c800 	b	1736(0x6c8) # 1c003c24 <MatrixKey+0x944>
1c003560:	57fd2fff 	bl	-724(0xffffd2c) # 1c00328c <clkey>
1c003564:	00150005 	move	$r5,$r0
1c003568:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00356c:	57e4c3ff 	bl	-6976(0xfffe4c0) # 1c001a2c <gpio_write>
1c003570:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003574:	57e5b3ff 	bl	-6736(0xfffe5b0) # 1c001b24 <gpio_read>
1c003578:	0015008c 	move	$r12,$r4
1c00357c:	44008180 	bnez	$r12,128(0x80) # 1c0035fc <MatrixKey+0x31c>
1c003580:	1400008c 	lu12i.w	$r12,4(0x4)
1c003584:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003588:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c00358c:	50001400 	b	20(0x14) # 1c0035a0 <MatrixKey+0x2c0>
1c003590:	03400000 	andi	$r0,$r0,0x0
1c003594:	03400000 	andi	$r0,$r0,0x0
1c003598:	03400000 	andi	$r0,$r0,0x0
1c00359c:	03400000 	andi	$r0,$r0,0x0
1c0035a0:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0035a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035a8:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c0035ac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003590 <MatrixKey+0x2b0>
1c0035b0:	03400000 	andi	$r0,$r0,0x0
1c0035b4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0035b8:	57e56fff 	bl	-6804(0xfffe56c) # 1c001b24 <gpio_read>
1c0035bc:	0015008c 	move	$r12,$r4
1c0035c0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0035b4 <MatrixKey+0x2d4>
1c0035c4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0035c8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0035cc:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c0035d0:	50001400 	b	20(0x14) # 1c0035e4 <MatrixKey+0x304>
1c0035d4:	03400000 	andi	$r0,$r0,0x0
1c0035d8:	03400000 	andi	$r0,$r0,0x0
1c0035dc:	03400000 	andi	$r0,$r0,0x0
1c0035e0:	03400000 	andi	$r0,$r0,0x0
1c0035e4:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c0035e8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035ec:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c0035f0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0035d4 <MatrixKey+0x2f4>
1c0035f4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0035f8:	50062c00 	b	1580(0x62c) # 1c003c24 <MatrixKey+0x944>
1c0035fc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003600:	57e527ff 	bl	-6876(0xfffe524) # 1c001b24 <gpio_read>
1c003604:	0015008c 	move	$r12,$r4
1c003608:	44008180 	bnez	$r12,128(0x80) # 1c003688 <MatrixKey+0x3a8>
1c00360c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003610:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003614:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c003618:	50001400 	b	20(0x14) # 1c00362c <MatrixKey+0x34c>
1c00361c:	03400000 	andi	$r0,$r0,0x0
1c003620:	03400000 	andi	$r0,$r0,0x0
1c003624:	03400000 	andi	$r0,$r0,0x0
1c003628:	03400000 	andi	$r0,$r0,0x0
1c00362c:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c003630:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003634:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c003638:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00361c <MatrixKey+0x33c>
1c00363c:	03400000 	andi	$r0,$r0,0x0
1c003640:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003644:	57e4e3ff 	bl	-6944(0xfffe4e0) # 1c001b24 <gpio_read>
1c003648:	0015008c 	move	$r12,$r4
1c00364c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003640 <MatrixKey+0x360>
1c003650:	1400008c 	lu12i.w	$r12,4(0x4)
1c003654:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003658:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c00365c:	50001400 	b	20(0x14) # 1c003670 <MatrixKey+0x390>
1c003660:	03400000 	andi	$r0,$r0,0x0
1c003664:	03400000 	andi	$r0,$r0,0x0
1c003668:	03400000 	andi	$r0,$r0,0x0
1c00366c:	03400000 	andi	$r0,$r0,0x0
1c003670:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c003674:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003678:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c00367c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003660 <MatrixKey+0x380>
1c003680:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003684:	5005a000 	b	1440(0x5a0) # 1c003c24 <MatrixKey+0x944>
1c003688:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00368c:	57e49bff 	bl	-7016(0xfffe498) # 1c001b24 <gpio_read>
1c003690:	0015008c 	move	$r12,$r4
1c003694:	44008180 	bnez	$r12,128(0x80) # 1c003714 <MatrixKey+0x434>
1c003698:	1400008c 	lu12i.w	$r12,4(0x4)
1c00369c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0036a0:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c0036a4:	50001400 	b	20(0x14) # 1c0036b8 <MatrixKey+0x3d8>
1c0036a8:	03400000 	andi	$r0,$r0,0x0
1c0036ac:	03400000 	andi	$r0,$r0,0x0
1c0036b0:	03400000 	andi	$r0,$r0,0x0
1c0036b4:	03400000 	andi	$r0,$r0,0x0
1c0036b8:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0036bc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036c0:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c0036c4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036a8 <MatrixKey+0x3c8>
1c0036c8:	03400000 	andi	$r0,$r0,0x0
1c0036cc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0036d0:	57e457ff 	bl	-7084(0xfffe454) # 1c001b24 <gpio_read>
1c0036d4:	0015008c 	move	$r12,$r4
1c0036d8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0036cc <MatrixKey+0x3ec>
1c0036dc:	1400008c 	lu12i.w	$r12,4(0x4)
1c0036e0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0036e4:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c0036e8:	50001400 	b	20(0x14) # 1c0036fc <MatrixKey+0x41c>
1c0036ec:	03400000 	andi	$r0,$r0,0x0
1c0036f0:	03400000 	andi	$r0,$r0,0x0
1c0036f4:	03400000 	andi	$r0,$r0,0x0
1c0036f8:	03400000 	andi	$r0,$r0,0x0
1c0036fc:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c003700:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003704:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c003708:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036ec <MatrixKey+0x40c>
1c00370c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003710:	50051400 	b	1300(0x514) # 1c003c24 <MatrixKey+0x944>
1c003714:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003718:	57e40fff 	bl	-7156(0xfffe40c) # 1c001b24 <gpio_read>
1c00371c:	0015008c 	move	$r12,$r4
1c003720:	44008180 	bnez	$r12,128(0x80) # 1c0037a0 <MatrixKey+0x4c0>
1c003724:	1400008c 	lu12i.w	$r12,4(0x4)
1c003728:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00372c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c003730:	50001400 	b	20(0x14) # 1c003744 <MatrixKey+0x464>
1c003734:	03400000 	andi	$r0,$r0,0x0
1c003738:	03400000 	andi	$r0,$r0,0x0
1c00373c:	03400000 	andi	$r0,$r0,0x0
1c003740:	03400000 	andi	$r0,$r0,0x0
1c003744:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c003748:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00374c:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c003750:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003734 <MatrixKey+0x454>
1c003754:	03400000 	andi	$r0,$r0,0x0
1c003758:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00375c:	57e3cbff 	bl	-7224(0xfffe3c8) # 1c001b24 <gpio_read>
1c003760:	0015008c 	move	$r12,$r4
1c003764:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003758 <MatrixKey+0x478>
1c003768:	1400008c 	lu12i.w	$r12,4(0x4)
1c00376c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003770:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c003774:	50001400 	b	20(0x14) # 1c003788 <MatrixKey+0x4a8>
1c003778:	03400000 	andi	$r0,$r0,0x0
1c00377c:	03400000 	andi	$r0,$r0,0x0
1c003780:	03400000 	andi	$r0,$r0,0x0
1c003784:	03400000 	andi	$r0,$r0,0x0
1c003788:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c00378c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003790:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c003794:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003778 <MatrixKey+0x498>
1c003798:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c00379c:	50048800 	b	1160(0x488) # 1c003c24 <MatrixKey+0x944>
1c0037a0:	57faefff 	bl	-1300(0xffffaec) # 1c00328c <clkey>
1c0037a4:	00150005 	move	$r5,$r0
1c0037a8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0037ac:	57e283ff 	bl	-7552(0xfffe280) # 1c001a2c <gpio_write>
1c0037b0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0037b4:	57e373ff 	bl	-7312(0xfffe370) # 1c001b24 <gpio_read>
1c0037b8:	0015008c 	move	$r12,$r4
1c0037bc:	44008180 	bnez	$r12,128(0x80) # 1c00383c <MatrixKey+0x55c>
1c0037c0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0037c4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0037c8:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c0037cc:	50001400 	b	20(0x14) # 1c0037e0 <MatrixKey+0x500>
1c0037d0:	03400000 	andi	$r0,$r0,0x0
1c0037d4:	03400000 	andi	$r0,$r0,0x0
1c0037d8:	03400000 	andi	$r0,$r0,0x0
1c0037dc:	03400000 	andi	$r0,$r0,0x0
1c0037e0:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c0037e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037e8:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c0037ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037d0 <MatrixKey+0x4f0>
1c0037f0:	03400000 	andi	$r0,$r0,0x0
1c0037f4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0037f8:	57e32fff 	bl	-7380(0xfffe32c) # 1c001b24 <gpio_read>
1c0037fc:	0015008c 	move	$r12,$r4
1c003800:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0037f4 <MatrixKey+0x514>
1c003804:	1400008c 	lu12i.w	$r12,4(0x4)
1c003808:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00380c:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c003810:	50001400 	b	20(0x14) # 1c003824 <MatrixKey+0x544>
1c003814:	03400000 	andi	$r0,$r0,0x0
1c003818:	03400000 	andi	$r0,$r0,0x0
1c00381c:	03400000 	andi	$r0,$r0,0x0
1c003820:	03400000 	andi	$r0,$r0,0x0
1c003824:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c003828:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00382c:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c003830:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003814 <MatrixKey+0x534>
1c003834:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003838:	5003ec00 	b	1004(0x3ec) # 1c003c24 <MatrixKey+0x944>
1c00383c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003840:	57e2e7ff 	bl	-7452(0xfffe2e4) # 1c001b24 <gpio_read>
1c003844:	0015008c 	move	$r12,$r4
1c003848:	44008180 	bnez	$r12,128(0x80) # 1c0038c8 <MatrixKey+0x5e8>
1c00384c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003850:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003854:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c003858:	50001400 	b	20(0x14) # 1c00386c <MatrixKey+0x58c>
1c00385c:	03400000 	andi	$r0,$r0,0x0
1c003860:	03400000 	andi	$r0,$r0,0x0
1c003864:	03400000 	andi	$r0,$r0,0x0
1c003868:	03400000 	andi	$r0,$r0,0x0
1c00386c:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c003870:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003874:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c003878:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00385c <MatrixKey+0x57c>
1c00387c:	03400000 	andi	$r0,$r0,0x0
1c003880:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003884:	57e2a3ff 	bl	-7520(0xfffe2a0) # 1c001b24 <gpio_read>
1c003888:	0015008c 	move	$r12,$r4
1c00388c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003880 <MatrixKey+0x5a0>
1c003890:	1400008c 	lu12i.w	$r12,4(0x4)
1c003894:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003898:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c00389c:	50001400 	b	20(0x14) # 1c0038b0 <MatrixKey+0x5d0>
1c0038a0:	03400000 	andi	$r0,$r0,0x0
1c0038a4:	03400000 	andi	$r0,$r0,0x0
1c0038a8:	03400000 	andi	$r0,$r0,0x0
1c0038ac:	03400000 	andi	$r0,$r0,0x0
1c0038b0:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0038b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0038b8:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c0038bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038a0 <MatrixKey+0x5c0>
1c0038c0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0038c4:	50036000 	b	864(0x360) # 1c003c24 <MatrixKey+0x944>
1c0038c8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0038cc:	57e25bff 	bl	-7592(0xfffe258) # 1c001b24 <gpio_read>
1c0038d0:	0015008c 	move	$r12,$r4
1c0038d4:	44008180 	bnez	$r12,128(0x80) # 1c003954 <MatrixKey+0x674>
1c0038d8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0038dc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0038e0:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c0038e4:	50001400 	b	20(0x14) # 1c0038f8 <MatrixKey+0x618>
1c0038e8:	03400000 	andi	$r0,$r0,0x0
1c0038ec:	03400000 	andi	$r0,$r0,0x0
1c0038f0:	03400000 	andi	$r0,$r0,0x0
1c0038f4:	03400000 	andi	$r0,$r0,0x0
1c0038f8:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c0038fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003900:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c003904:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038e8 <MatrixKey+0x608>
1c003908:	03400000 	andi	$r0,$r0,0x0
1c00390c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003910:	57e217ff 	bl	-7660(0xfffe214) # 1c001b24 <gpio_read>
1c003914:	0015008c 	move	$r12,$r4
1c003918:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00390c <MatrixKey+0x62c>
1c00391c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003920:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003924:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c003928:	50001400 	b	20(0x14) # 1c00393c <MatrixKey+0x65c>
1c00392c:	03400000 	andi	$r0,$r0,0x0
1c003930:	03400000 	andi	$r0,$r0,0x0
1c003934:	03400000 	andi	$r0,$r0,0x0
1c003938:	03400000 	andi	$r0,$r0,0x0
1c00393c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c003940:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003944:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c003948:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00392c <MatrixKey+0x64c>
1c00394c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003950:	5002d400 	b	724(0x2d4) # 1c003c24 <MatrixKey+0x944>
1c003954:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003958:	57e1cfff 	bl	-7732(0xfffe1cc) # 1c001b24 <gpio_read>
1c00395c:	0015008c 	move	$r12,$r4
1c003960:	44008180 	bnez	$r12,128(0x80) # 1c0039e0 <MatrixKey+0x700>
1c003964:	1400008c 	lu12i.w	$r12,4(0x4)
1c003968:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00396c:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c003970:	50001400 	b	20(0x14) # 1c003984 <MatrixKey+0x6a4>
1c003974:	03400000 	andi	$r0,$r0,0x0
1c003978:	03400000 	andi	$r0,$r0,0x0
1c00397c:	03400000 	andi	$r0,$r0,0x0
1c003980:	03400000 	andi	$r0,$r0,0x0
1c003984:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c003988:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00398c:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c003990:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003974 <MatrixKey+0x694>
1c003994:	03400000 	andi	$r0,$r0,0x0
1c003998:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00399c:	57e18bff 	bl	-7800(0xfffe188) # 1c001b24 <gpio_read>
1c0039a0:	0015008c 	move	$r12,$r4
1c0039a4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003998 <MatrixKey+0x6b8>
1c0039a8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0039ac:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0039b0:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c0039b4:	50001400 	b	20(0x14) # 1c0039c8 <MatrixKey+0x6e8>
1c0039b8:	03400000 	andi	$r0,$r0,0x0
1c0039bc:	03400000 	andi	$r0,$r0,0x0
1c0039c0:	03400000 	andi	$r0,$r0,0x0
1c0039c4:	03400000 	andi	$r0,$r0,0x0
1c0039c8:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c0039cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039d0:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c0039d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0039b8 <MatrixKey+0x6d8>
1c0039d8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0039dc:	50024800 	b	584(0x248) # 1c003c24 <MatrixKey+0x944>
1c0039e0:	57f8afff 	bl	-1876(0xffff8ac) # 1c00328c <clkey>
1c0039e4:	00150005 	move	$r5,$r0
1c0039e8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0039ec:	57e043ff 	bl	-8128(0xfffe040) # 1c001a2c <gpio_write>
1c0039f0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0039f4:	57e133ff 	bl	-7888(0xfffe130) # 1c001b24 <gpio_read>
1c0039f8:	0015008c 	move	$r12,$r4
1c0039fc:	44008180 	bnez	$r12,128(0x80) # 1c003a7c <MatrixKey+0x79c>
1c003a00:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a04:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a08:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c003a0c:	50001400 	b	20(0x14) # 1c003a20 <MatrixKey+0x740>
1c003a10:	03400000 	andi	$r0,$r0,0x0
1c003a14:	03400000 	andi	$r0,$r0,0x0
1c003a18:	03400000 	andi	$r0,$r0,0x0
1c003a1c:	03400000 	andi	$r0,$r0,0x0
1c003a20:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c003a24:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a28:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c003a2c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a10 <MatrixKey+0x730>
1c003a30:	03400000 	andi	$r0,$r0,0x0
1c003a34:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003a38:	57e0efff 	bl	-7956(0xfffe0ec) # 1c001b24 <gpio_read>
1c003a3c:	0015008c 	move	$r12,$r4
1c003a40:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003a34 <MatrixKey+0x754>
1c003a44:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a48:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a4c:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c003a50:	50001400 	b	20(0x14) # 1c003a64 <MatrixKey+0x784>
1c003a54:	03400000 	andi	$r0,$r0,0x0
1c003a58:	03400000 	andi	$r0,$r0,0x0
1c003a5c:	03400000 	andi	$r0,$r0,0x0
1c003a60:	03400000 	andi	$r0,$r0,0x0
1c003a64:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c003a68:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a6c:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c003a70:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a54 <MatrixKey+0x774>
1c003a74:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c003a78:	5001ac00 	b	428(0x1ac) # 1c003c24 <MatrixKey+0x944>
1c003a7c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003a80:	57e0a7ff 	bl	-8028(0xfffe0a4) # 1c001b24 <gpio_read>
1c003a84:	0015008c 	move	$r12,$r4
1c003a88:	44008180 	bnez	$r12,128(0x80) # 1c003b08 <MatrixKey+0x828>
1c003a8c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a90:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a94:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c003a98:	50001400 	b	20(0x14) # 1c003aac <MatrixKey+0x7cc>
1c003a9c:	03400000 	andi	$r0,$r0,0x0
1c003aa0:	03400000 	andi	$r0,$r0,0x0
1c003aa4:	03400000 	andi	$r0,$r0,0x0
1c003aa8:	03400000 	andi	$r0,$r0,0x0
1c003aac:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c003ab0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ab4:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c003ab8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a9c <MatrixKey+0x7bc>
1c003abc:	03400000 	andi	$r0,$r0,0x0
1c003ac0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003ac4:	57e063ff 	bl	-8096(0xfffe060) # 1c001b24 <gpio_read>
1c003ac8:	0015008c 	move	$r12,$r4
1c003acc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003ac0 <MatrixKey+0x7e0>
1c003ad0:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ad4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ad8:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c003adc:	50001400 	b	20(0x14) # 1c003af0 <MatrixKey+0x810>
1c003ae0:	03400000 	andi	$r0,$r0,0x0
1c003ae4:	03400000 	andi	$r0,$r0,0x0
1c003ae8:	03400000 	andi	$r0,$r0,0x0
1c003aec:	03400000 	andi	$r0,$r0,0x0
1c003af0:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c003af4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003af8:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c003afc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003ae0 <MatrixKey+0x800>
1c003b00:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c003b04:	50012000 	b	288(0x120) # 1c003c24 <MatrixKey+0x944>
1c003b08:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003b0c:	57e01bff 	bl	-8168(0xfffe018) # 1c001b24 <gpio_read>
1c003b10:	0015008c 	move	$r12,$r4
1c003b14:	44008180 	bnez	$r12,128(0x80) # 1c003b94 <MatrixKey+0x8b4>
1c003b18:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b1c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b20:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c003b24:	50001400 	b	20(0x14) # 1c003b38 <MatrixKey+0x858>
1c003b28:	03400000 	andi	$r0,$r0,0x0
1c003b2c:	03400000 	andi	$r0,$r0,0x0
1c003b30:	03400000 	andi	$r0,$r0,0x0
1c003b34:	03400000 	andi	$r0,$r0,0x0
1c003b38:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c003b3c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b40:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c003b44:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b28 <MatrixKey+0x848>
1c003b48:	03400000 	andi	$r0,$r0,0x0
1c003b4c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003b50:	57dfd7ff 	bl	-8236(0xfffdfd4) # 1c001b24 <gpio_read>
1c003b54:	0015008c 	move	$r12,$r4
1c003b58:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003b4c <MatrixKey+0x86c>
1c003b5c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b60:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b64:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c003b68:	50001400 	b	20(0x14) # 1c003b7c <MatrixKey+0x89c>
1c003b6c:	03400000 	andi	$r0,$r0,0x0
1c003b70:	03400000 	andi	$r0,$r0,0x0
1c003b74:	03400000 	andi	$r0,$r0,0x0
1c003b78:	03400000 	andi	$r0,$r0,0x0
1c003b7c:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c003b80:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b84:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c003b88:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b6c <MatrixKey+0x88c>
1c003b8c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c003b90:	50009400 	b	148(0x94) # 1c003c24 <MatrixKey+0x944>
1c003b94:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003b98:	57df8fff 	bl	-8308(0xfffdf8c) # 1c001b24 <gpio_read>
1c003b9c:	0015008c 	move	$r12,$r4
1c003ba0:	44008180 	bnez	$r12,128(0x80) # 1c003c20 <MatrixKey+0x940>
1c003ba4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ba8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003bac:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c003bb0:	50001400 	b	20(0x14) # 1c003bc4 <MatrixKey+0x8e4>
1c003bb4:	03400000 	andi	$r0,$r0,0x0
1c003bb8:	03400000 	andi	$r0,$r0,0x0
1c003bbc:	03400000 	andi	$r0,$r0,0x0
1c003bc0:	03400000 	andi	$r0,$r0,0x0
1c003bc4:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c003bc8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bcc:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c003bd0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003bb4 <MatrixKey+0x8d4>
1c003bd4:	03400000 	andi	$r0,$r0,0x0
1c003bd8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003bdc:	57df4bff 	bl	-8376(0xfffdf48) # 1c001b24 <gpio_read>
1c003be0:	0015008c 	move	$r12,$r4
1c003be4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003bd8 <MatrixKey+0x8f8>
1c003be8:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bec:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003bf0:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c003bf4:	50001400 	b	20(0x14) # 1c003c08 <MatrixKey+0x928>
1c003bf8:	03400000 	andi	$r0,$r0,0x0
1c003bfc:	03400000 	andi	$r0,$r0,0x0
1c003c00:	03400000 	andi	$r0,$r0,0x0
1c003c04:	03400000 	andi	$r0,$r0,0x0
1c003c08:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c003c0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c10:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c003c14:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003bf8 <MatrixKey+0x918>
1c003c18:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003c1c:	50000800 	b	8(0x8) # 1c003c24 <MatrixKey+0x944>
1c003c20:	0015000c 	move	$r12,$r0
1c003c24:	00150184 	move	$r4,$r12
1c003c28:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c003c2c:	28826076 	ld.w	$r22,$r3,152(0x98)
1c003c30:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c003c34:	4c000020 	jirl	$r0,$r1,0

1c003c38 <Buzzer>:
Buzzer():
1c003c38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c3c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c40:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c44:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c48:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003c4c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003c50:	57dddfff 	bl	-8740(0xfffdddc) # 1c001a2c <gpio_write>
1c003c54:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003c58:	03bfc98c 	ori	$r12,$r12,0xff2
1c003c5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c60:	50001400 	b	20(0x14) # 1c003c74 <Buzzer+0x3c>
1c003c64:	03400000 	andi	$r0,$r0,0x0
1c003c68:	03400000 	andi	$r0,$r0,0x0
1c003c6c:	03400000 	andi	$r0,$r0,0x0
1c003c70:	03400000 	andi	$r0,$r0,0x0
1c003c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c78:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c7c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003c80:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003c64 <Buzzer+0x2c>
1c003c84:	00150005 	move	$r5,$r0
1c003c88:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003c8c:	57dda3ff 	bl	-8800(0xfffdda0) # 1c001a2c <gpio_write>
1c003c90:	03400000 	andi	$r0,$r0,0x0
1c003c94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003c98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003c9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ca0:	4c000020 	jirl	$r0,$r1,0

1c003ca4 <Buzzer_one>:
Buzzer_one():
1c003ca4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ca8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003cac:	29806076 	st.w	$r22,$r3,24(0x18)
1c003cb0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003cb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003cb8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003cbc:	57dd73ff 	bl	-8848(0xfffdd70) # 1c001a2c <gpio_write>
1c003cc0:	1400088c 	lu12i.w	$r12,68(0x44)
1c003cc4:	0399798c 	ori	$r12,$r12,0x65e
1c003cc8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ccc:	50001400 	b	20(0x14) # 1c003ce0 <Buzzer_one+0x3c>
1c003cd0:	03400000 	andi	$r0,$r0,0x0
1c003cd4:	03400000 	andi	$r0,$r0,0x0
1c003cd8:	03400000 	andi	$r0,$r0,0x0
1c003cdc:	03400000 	andi	$r0,$r0,0x0
1c003ce0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ce4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ce8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003cec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003cd0 <Buzzer_one+0x2c>
1c003cf0:	00150005 	move	$r5,$r0
1c003cf4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003cf8:	57dd37ff 	bl	-8908(0xfffdd34) # 1c001a2c <gpio_write>
1c003cfc:	03400000 	andi	$r0,$r0,0x0
1c003d00:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003d04:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d0c:	4c000020 	jirl	$r0,$r1,0

1c003d10 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003d10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003d14:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003d18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003d1c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003d20:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d24:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d28:	2880018d 	ld.w	$r13,$r12,0
1c003d2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003d30:	0014b1ac 	and	$r12,$r13,$r12
1c003d34:	40001180 	beqz	$r12,16(0x10) # 1c003d44 <TIM_GetITStatus+0x34>
1c003d38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d40:	50000800 	b	8(0x8) # 1c003d48 <TIM_GetITStatus+0x38>
1c003d44:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d4c:	00150184 	move	$r4,$r12
1c003d50:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003d54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003d58:	4c000020 	jirl	$r0,$r1,0

1c003d5c <TIM_ClearIT>:
TIM_ClearIT():
1c003d5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d60:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d64:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d68:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003d6c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d70:	2880018e 	ld.w	$r14,$r12,0
1c003d74:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003d78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d7c:	001535cd 	or	$r13,$r14,$r13
1c003d80:	2980018d 	st.w	$r13,$r12,0
1c003d84:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003d88:	03800d8c 	ori	$r12,$r12,0x3
1c003d8c:	2a00018c 	ld.bu	$r12,$r12,0
1c003d90:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003d94:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003d98:	03800d8c 	ori	$r12,$r12,0x3
1c003d9c:	038005ad 	ori	$r13,$r13,0x1
1c003da0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003da4:	2900018d 	st.b	$r13,$r12,0
1c003da8:	03400000 	andi	$r0,$r0,0x0
1c003dac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003db0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003db4:	4c000020 	jirl	$r0,$r1,0

1c003db8 <WriteCmd>:
WriteCmd():
1c003db8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003dbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003dc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003dc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003dc8:	0015008c 	move	$r12,$r4
1c003dcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003dd0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003dd4:	57df37ff 	bl	-8396(0xfffdf34) # 1c001d08 <soc_I2C_GenerateSTART>
1c003dd8:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c003ddc:	57dfb7ff 	bl	-8268(0xfffdfb4) # 1c001d90 <soc_I2C_SendData>
1c003de0:	57dffbff 	bl	-8200(0xfffdff8) # 1c001dd8 <soc_I2C_wait>
1c003de4:	00150004 	move	$r4,$r0
1c003de8:	57dfabff 	bl	-8280(0xfffdfa8) # 1c001d90 <soc_I2C_SendData>
1c003dec:	57dfefff 	bl	-8212(0xfffdfec) # 1c001dd8 <soc_I2C_wait>
1c003df0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003df4:	00150184 	move	$r4,$r12
1c003df8:	57df9bff 	bl	-8296(0xfffdf98) # 1c001d90 <soc_I2C_SendData>
1c003dfc:	57dfdfff 	bl	-8228(0xfffdfdc) # 1c001dd8 <soc_I2C_wait>
1c003e00:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003e04:	57df4bff 	bl	-8376(0xfffdf48) # 1c001d4c <soc_I2C_GenerateSTOP>
1c003e08:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003e0c:	57ddc7ff 	bl	-8764(0xfffddc4) # 1c001bd0 <soc_I2C_delay>
1c003e10:	03400000 	andi	$r0,$r0,0x0
1c003e14:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e18:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e20:	4c000020 	jirl	$r0,$r1,0

1c003e24 <WriteDat>:
WriteDat():
1c003e24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003e2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003e30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e34:	0015008c 	move	$r12,$r4
1c003e38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003e3c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003e40:	57decbff 	bl	-8504(0xfffdec8) # 1c001d08 <soc_I2C_GenerateSTART>
1c003e44:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c003e48:	57df4bff 	bl	-8376(0xfffdf48) # 1c001d90 <soc_I2C_SendData>
1c003e4c:	57df8fff 	bl	-8308(0xfffdf8c) # 1c001dd8 <soc_I2C_wait>
1c003e50:	02810004 	addi.w	$r4,$r0,64(0x40)
1c003e54:	57df3fff 	bl	-8388(0xfffdf3c) # 1c001d90 <soc_I2C_SendData>
1c003e58:	57df83ff 	bl	-8320(0xfffdf80) # 1c001dd8 <soc_I2C_wait>
1c003e5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e60:	00150184 	move	$r4,$r12
1c003e64:	57df2fff 	bl	-8404(0xfffdf2c) # 1c001d90 <soc_I2C_SendData>
1c003e68:	57df73ff 	bl	-8336(0xfffdf70) # 1c001dd8 <soc_I2C_wait>
1c003e6c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003e70:	57dedfff 	bl	-8484(0xfffdedc) # 1c001d4c <soc_I2C_GenerateSTOP>
1c003e74:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003e78:	57dd5bff 	bl	-8872(0xfffdd58) # 1c001bd0 <soc_I2C_delay>
1c003e7c:	03400000 	andi	$r0,$r0,0x0
1c003e80:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e84:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e8c:	4c000020 	jirl	$r0,$r1,0

1c003e90 <OLED_Init>:
OLED_Init():
1c003e90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e94:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003e98:	29806076 	st.w	$r22,$r3,24(0x18)
1c003e9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ea0:	140016cc 	lu12i.w	$r12,182(0xb6)
1c003ea4:	0399418c 	ori	$r12,$r12,0x650
1c003ea8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003eac:	50001400 	b	20(0x14) # 1c003ec0 <OLED_Init+0x30>
1c003eb0:	03400000 	andi	$r0,$r0,0x0
1c003eb4:	03400000 	andi	$r0,$r0,0x0
1c003eb8:	03400000 	andi	$r0,$r0,0x0
1c003ebc:	03400000 	andi	$r0,$r0,0x0
1c003ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ec4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ec8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003ecc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003eb0 <OLED_Init+0x20>
1c003ed0:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c003ed4:	57fee7ff 	bl	-284(0xffffee4) # 1c003db8 <WriteCmd>
1c003ed8:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003edc:	57fedfff 	bl	-292(0xffffedc) # 1c003db8 <WriteCmd>
1c003ee0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003ee4:	57fed7ff 	bl	-300(0xffffed4) # 1c003db8 <WriteCmd>
1c003ee8:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c003eec:	57fecfff 	bl	-308(0xffffecc) # 1c003db8 <WriteCmd>
1c003ef0:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c003ef4:	57fec7ff 	bl	-316(0xffffec4) # 1c003db8 <WriteCmd>
1c003ef8:	00150004 	move	$r4,$r0
1c003efc:	57febfff 	bl	-324(0xffffebc) # 1c003db8 <WriteCmd>
1c003f00:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003f04:	57feb7ff 	bl	-332(0xffffeb4) # 1c003db8 <WriteCmd>
1c003f08:	02810004 	addi.w	$r4,$r0,64(0x40)
1c003f0c:	57feafff 	bl	-340(0xffffeac) # 1c003db8 <WriteCmd>
1c003f10:	02820404 	addi.w	$r4,$r0,129(0x81)
1c003f14:	57fea7ff 	bl	-348(0xffffea4) # 1c003db8 <WriteCmd>
1c003f18:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c003f1c:	57fe9fff 	bl	-356(0xffffe9c) # 1c003db8 <WriteCmd>
1c003f20:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c003f24:	57fe97ff 	bl	-364(0xffffe94) # 1c003db8 <WriteCmd>
1c003f28:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c003f2c:	57fe8fff 	bl	-372(0xffffe8c) # 1c003db8 <WriteCmd>
1c003f30:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c003f34:	57fe87ff 	bl	-380(0xffffe84) # 1c003db8 <WriteCmd>
1c003f38:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c003f3c:	57fe7fff 	bl	-388(0xffffe7c) # 1c003db8 <WriteCmd>
1c003f40:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c003f44:	57fe77ff 	bl	-396(0xffffe74) # 1c003db8 <WriteCmd>
1c003f48:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c003f4c:	57fe6fff 	bl	-404(0xffffe6c) # 1c003db8 <WriteCmd>
1c003f50:	00150004 	move	$r4,$r0
1c003f54:	57fe67ff 	bl	-412(0xffffe64) # 1c003db8 <WriteCmd>
1c003f58:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c003f5c:	57fe5fff 	bl	-420(0xffffe5c) # 1c003db8 <WriteCmd>
1c003f60:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c003f64:	57fe57ff 	bl	-428(0xffffe54) # 1c003db8 <WriteCmd>
1c003f68:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c003f6c:	57fe4fff 	bl	-436(0xffffe4c) # 1c003db8 <WriteCmd>
1c003f70:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003f74:	57fe47ff 	bl	-444(0xffffe44) # 1c003db8 <WriteCmd>
1c003f78:	02836804 	addi.w	$r4,$r0,218(0xda)
1c003f7c:	57fe3fff 	bl	-452(0xffffe3c) # 1c003db8 <WriteCmd>
1c003f80:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003f84:	57fe37ff 	bl	-460(0xffffe34) # 1c003db8 <WriteCmd>
1c003f88:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c003f8c:	57fe2fff 	bl	-468(0xffffe2c) # 1c003db8 <WriteCmd>
1c003f90:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003f94:	57fe27ff 	bl	-476(0xffffe24) # 1c003db8 <WriteCmd>
1c003f98:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c003f9c:	57fe1fff 	bl	-484(0xffffe1c) # 1c003db8 <WriteCmd>
1c003fa0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003fa4:	57fe17ff 	bl	-492(0xffffe14) # 1c003db8 <WriteCmd>
1c003fa8:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c003fac:	57fe0fff 	bl	-500(0xffffe0c) # 1c003db8 <WriteCmd>
1c003fb0:	03400000 	andi	$r0,$r0,0x0
1c003fb4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003fb8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003fbc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003fc0:	4c000020 	jirl	$r0,$r1,0

1c003fc4 <OLED_SetPos>:
OLED_SetPos():
1c003fc4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003fc8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003fcc:	29806076 	st.w	$r22,$r3,24(0x18)
1c003fd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003fd4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003fd8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003fdc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003fe0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003fe4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c003fe8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003fec:	00150184 	move	$r4,$r12
1c003ff0:	57fdcbff 	bl	-568(0xffffdc8) # 1c003db8 <WriteCmd>
1c003ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ff8:	0044918c 	srli.w	$r12,$r12,0x4
1c003ffc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004000:	03403d8c 	andi	$r12,$r12,0xf
1c004004:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004008:	0380418c 	ori	$r12,$r12,0x10
1c00400c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004010:	00150184 	move	$r4,$r12
1c004014:	57fda7ff 	bl	-604(0xffffda4) # 1c003db8 <WriteCmd>
1c004018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00401c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004020:	0340398c 	andi	$r12,$r12,0xe
1c004024:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004028:	0380058c 	ori	$r12,$r12,0x1
1c00402c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004030:	00150184 	move	$r4,$r12
1c004034:	57fd87ff 	bl	-636(0xffffd84) # 1c003db8 <WriteCmd>
1c004038:	03400000 	andi	$r0,$r0,0x0
1c00403c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004040:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004044:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004048:	4c000020 	jirl	$r0,$r1,0

1c00404c <OLED_Fill>:
OLED_Fill():
1c00404c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004050:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004054:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004058:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00405c:	0015008c 	move	$r12,$r4
1c004060:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004064:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004068:	50006400 	b	100(0x64) # 1c0040cc <OLED_Fill+0x80>
1c00406c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004070:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004074:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c004078:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00407c:	00150184 	move	$r4,$r12
1c004080:	57fd3bff 	bl	-712(0xffffd38) # 1c003db8 <WriteCmd>
1c004084:	00150004 	move	$r4,$r0
1c004088:	57fd33ff 	bl	-720(0xffffd30) # 1c003db8 <WriteCmd>
1c00408c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004090:	57fd2bff 	bl	-728(0xffffd28) # 1c003db8 <WriteCmd>
1c004094:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004098:	50001c00 	b	28(0x1c) # 1c0040b4 <OLED_Fill+0x68>
1c00409c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0040a0:	00150184 	move	$r4,$r12
1c0040a4:	57fd83ff 	bl	-640(0xffffd80) # 1c003e24 <WriteDat>
1c0040a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0040ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0040b4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0040b8:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c0040bc:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c00409c <OLED_Fill+0x50>
1c0040c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040d0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0040d4:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c00406c <OLED_Fill+0x20>
1c0040d8:	03400000 	andi	$r0,$r0,0x0
1c0040dc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0040e0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0040e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0040e8:	4c000020 	jirl	$r0,$r1,0

1c0040ec <OLED_CLS>:
OLED_CLS():
1c0040ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040fc:	00150004 	move	$r4,$r0
1c004100:	57ff4fff 	bl	-180(0xfffff4c) # 1c00404c <OLED_Fill>
1c004104:	03400000 	andi	$r0,$r0,0x0
1c004108:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00410c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004110:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004114:	4c000020 	jirl	$r0,$r1,0

1c004118 <OLED_ShowStr>:
OLED_ShowStr():
1c004118:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00411c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004120:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004124:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004128:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00412c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004130:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004134:	001500ec 	move	$r12,$r7
1c004138:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c00413c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c004140:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004144:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004148:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c00414c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004150:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c004204 <OLED_ShowStr+0xec>
1c004154:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c004158:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c00431c <OLED_ShowStr+0x204>
1c00415c:	5001d800 	b	472(0x1d8) # 1c004334 <OLED_ShowStr+0x21c>
1c004160:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004164:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004168:	001031ac 	add.w	$r12,$r13,$r12
1c00416c:	2a00018c 	ld.bu	$r12,$r12,0
1c004170:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004174:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004178:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00417c:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c004180:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004194 <OLED_ShowStr+0x7c>
1c004184:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004188:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00418c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004190:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004194:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004198:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00419c:	57fe2bff 	bl	-472(0xffffe28) # 1c003fc4 <OLED_SetPos>
1c0041a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0041a4:	50003c00 	b	60(0x3c) # 1c0041e0 <OLED_ShowStr+0xc8>
1c0041a8:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0041ac:	02ab11ad 	addi.w	$r13,$r13,-1340(0xac4)
1c0041b0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0041b4:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0041b8:	001c31cc 	mul.w	$r12,$r14,$r12
1c0041bc:	001031ad 	add.w	$r13,$r13,$r12
1c0041c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041c4:	001031ac 	add.w	$r12,$r13,$r12
1c0041c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0041cc:	00150184 	move	$r4,$r12
1c0041d0:	57fc57ff 	bl	-940(0xffffc54) # 1c003e24 <WriteDat>
1c0041d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0041e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0041e4:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0041e8:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0041a8 <OLED_ShowStr+0x90>
1c0041ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0041f0:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c0041f4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0041f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0041fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004200:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004204:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004208:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00420c:	001031ac 	add.w	$r12,$r13,$r12
1c004210:	2a00018c 	ld.bu	$r12,$r12,0
1c004214:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c004160 <OLED_ShowStr+0x48>
1c004218:	50011c00 	b	284(0x11c) # 1c004334 <OLED_ShowStr+0x21c>
1c00421c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004220:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004224:	001031ac 	add.w	$r12,$r13,$r12
1c004228:	2a00018c 	ld.bu	$r12,$r12,0
1c00422c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004230:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004234:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004238:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c00423c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004250 <OLED_ShowStr+0x138>
1c004240:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004244:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004248:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00424c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004250:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004254:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004258:	57fd6fff 	bl	-660(0xffffd6c) # 1c003fc4 <OLED_SetPos>
1c00425c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004260:	50003800 	b	56(0x38) # 1c004298 <OLED_ShowStr+0x180>
1c004264:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004268:	0040918d 	slli.w	$r13,$r12,0x4
1c00426c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004270:	001031ac 	add.w	$r12,$r13,$r12
1c004274:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004278:	02b081ad 	addi.w	$r13,$r13,-992(0xc20)
1c00427c:	001031ac 	add.w	$r12,$r13,$r12
1c004280:	2a00018c 	ld.bu	$r12,$r12,0
1c004284:	00150184 	move	$r4,$r12
1c004288:	57fb9fff 	bl	-1124(0xffffb9c) # 1c003e24 <WriteDat>
1c00428c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004290:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004294:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004298:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00429c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0042a0:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c004264 <OLED_ShowStr+0x14c>
1c0042a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0042a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0042ac:	00150185 	move	$r5,$r12
1c0042b0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0042b4:	57fd13ff 	bl	-752(0xffffd10) # 1c003fc4 <OLED_SetPos>
1c0042b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0042bc:	50003c00 	b	60(0x3c) # 1c0042f8 <OLED_ShowStr+0x1e0>
1c0042c0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0042c4:	0040918d 	slli.w	$r13,$r12,0x4
1c0042c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042cc:	001031ac 	add.w	$r12,$r13,$r12
1c0042d0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0042d4:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0042d8:	02af01ad 	addi.w	$r13,$r13,-1088(0xbc0)
1c0042dc:	001031ac 	add.w	$r12,$r13,$r12
1c0042e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0042e4:	00150184 	move	$r4,$r12
1c0042e8:	57fb3fff 	bl	-1220(0xffffb3c) # 1c003e24 <WriteDat>
1c0042ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0042f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0042f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0042fc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004300:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0042c0 <OLED_ShowStr+0x1a8>
1c004304:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004308:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00430c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004310:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004314:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004318:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00431c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004320:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004324:	001031ac 	add.w	$r12,$r13,$r12
1c004328:	2a00018c 	ld.bu	$r12,$r12,0
1c00432c:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c00421c <OLED_ShowStr+0x104>
1c004330:	03400000 	andi	$r0,$r0,0x0
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00433c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004340:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004344:	4c000020 	jirl	$r0,$r1,0

1c004348 <OLED_ShowCN>:
OLED_ShowCN():
1c004348:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00434c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004350:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004354:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004358:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00435c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004360:	001500cc 	move	$r12,$r6
1c004364:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c004368:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00436c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c004370:	0040958c 	slli.w	$r12,$r12,0x5
1c004374:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004378:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00437c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004380:	57fc47ff 	bl	-956(0xffffc44) # 1c003fc4 <OLED_SetPos>
1c004384:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004388:	50003800 	b	56(0x38) # 1c0043c0 <OLED_ShowCN+0x78>
1c00438c:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004390:	02b251ad 	addi.w	$r13,$r13,-876(0xc94)
1c004394:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004398:	001031ac 	add.w	$r12,$r13,$r12
1c00439c:	2a00018c 	ld.bu	$r12,$r12,0
1c0043a0:	00150184 	move	$r4,$r12
1c0043a4:	57fa83ff 	bl	-1408(0xffffa80) # 1c003e24 <WriteDat>
1c0043a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0043ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0043b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0043b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0043c0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0043c4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0043c8:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c00438c <OLED_ShowCN+0x44>
1c0043cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0043d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043d4:	00150185 	move	$r5,$r12
1c0043d8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0043dc:	57fbebff 	bl	-1048(0xffffbe8) # 1c003fc4 <OLED_SetPos>
1c0043e0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0043e4:	50003800 	b	56(0x38) # 1c00441c <OLED_ShowCN+0xd4>
1c0043e8:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c0043ec:	02b0e1ad 	addi.w	$r13,$r13,-968(0xc38)
1c0043f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0043f4:	001031ac 	add.w	$r12,$r13,$r12
1c0043f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0043fc:	00150184 	move	$r4,$r12
1c004400:	57fa27ff 	bl	-1500(0xffffa24) # 1c003e24 <WriteDat>
1c004404:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004408:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00440c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004410:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004414:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004418:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00441c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004420:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004424:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0043e8 <OLED_ShowCN+0xa0>
1c004428:	03400000 	andi	$r0,$r0,0x0
1c00442c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004430:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004434:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004438:	4c000020 	jirl	$r0,$r1,0

1c00443c <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c00443c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004440:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004444:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004448:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00444c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004450:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004454:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004458:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c00445c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004460:	50004800 	b	72(0x48) # 1c0044a8 <OLED_ShowCN_STR+0x6c>
1c004464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004468:	0040918d 	slli.w	$r13,$r12,0x4
1c00446c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004470:	001031ae 	add.w	$r14,$r13,$r12
1c004474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004478:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00447c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004480:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004484:	001031ac 	add.w	$r12,$r13,$r12
1c004488:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00448c:	00150186 	move	$r6,$r12
1c004490:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004494:	001501c4 	move	$r4,$r14
1c004498:	57feb3ff 	bl	-336(0xffffeb0) # 1c004348 <OLED_ShowCN>
1c00449c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0044a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0044ac:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0044b0:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c004464 <OLED_ShowCN_STR+0x28>
1c0044b4:	03400000 	andi	$r0,$r0,0x0
1c0044b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0044bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0044c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0044c4:	4c000020 	jirl	$r0,$r1,0

1c0044c8 <OLED_DrawBMP>:
OLED_DrawBMP():
1c0044c8:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0044cc:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0044d0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0044d4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0044d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0044dc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0044e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0044e4:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0044e8:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c0044ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0044f0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0044f4:	03401d8c 	andi	$r12,$r12,0x7
1c0044f8:	44001580 	bnez	$r12,20(0x14) # 1c00450c <OLED_DrawBMP+0x44>
1c0044fc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004500:	00448d8c 	srli.w	$r12,$r12,0x3
1c004504:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004508:	50001400 	b	20(0x14) # 1c00451c <OLED_DrawBMP+0x54>
1c00450c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004510:	00448d8c 	srli.w	$r12,$r12,0x3
1c004514:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00451c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004520:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004524:	50006000 	b	96(0x60) # 1c004584 <OLED_DrawBMP+0xbc>
1c004528:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c00452c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004530:	57fa97ff 	bl	-1388(0xffffa94) # 1c003fc4 <OLED_SetPos>
1c004534:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004538:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00453c:	50003000 	b	48(0x30) # 1c00456c <OLED_DrawBMP+0xa4>
1c004540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004544:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004548:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00454c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c004550:	001031ac 	add.w	$r12,$r13,$r12
1c004554:	2a00018c 	ld.bu	$r12,$r12,0
1c004558:	00150184 	move	$r4,$r12
1c00455c:	57f8cbff 	bl	-1848(0xffff8c8) # 1c003e24 <WriteDat>
1c004560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004564:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004568:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00456c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004570:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004574:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c004540 <OLED_DrawBMP+0x78>
1c004578:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00457c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004580:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004584:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c004588:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00458c:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c004528 <OLED_DrawBMP+0x60>
1c004590:	03400000 	andi	$r0,$r0,0x0
1c004594:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004598:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00459c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0045a0:	4c000020 	jirl	$r0,$r1,0

1c0045a4 <OLED_ShowChar>:
OLED_ShowChar():
1c0045a4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0045a8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0045ac:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0045b0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0045b4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0045b8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0045bc:	001500cc 	move	$r12,$r6
1c0045c0:	001500ed 	move	$r13,$r7
1c0045c4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0045c8:	001501ac 	move	$r12,$r13
1c0045cc:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c0045d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0045d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0045d8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0045dc:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0045e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0045e4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0045e8:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c0045ec:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004600 <OLED_ShowChar+0x5c>
1c0045f0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0045f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0045f8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0045fc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004600:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c004604:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004608:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c0046c4 <OLED_ShowChar+0x120>
1c00460c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004610:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004614:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c003fc4 <OLED_SetPos>
1c004618:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00461c:	50003800 	b	56(0x38) # 1c004654 <OLED_ShowChar+0xb0>
1c004620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004624:	0040918d 	slli.w	$r13,$r12,0x4
1c004628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00462c:	001031ac 	add.w	$r12,$r13,$r12
1c004630:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004634:	02a191ad 	addi.w	$r13,$r13,-1948(0x864)
1c004638:	001031ac 	add.w	$r12,$r13,$r12
1c00463c:	2a00018c 	ld.bu	$r12,$r12,0
1c004640:	00150184 	move	$r4,$r12
1c004644:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c003e24 <WriteDat>
1c004648:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00464c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004650:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004654:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004658:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00465c:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c004620 <OLED_ShowChar+0x7c>
1c004660:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004664:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004668:	00150185 	move	$r5,$r12
1c00466c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004670:	57f957ff 	bl	-1708(0xffff954) # 1c003fc4 <OLED_SetPos>
1c004674:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004678:	50003c00 	b	60(0x3c) # 1c0046b4 <OLED_ShowChar+0x110>
1c00467c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004680:	0040918d 	slli.w	$r13,$r12,0x4
1c004684:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004688:	001031ac 	add.w	$r12,$r13,$r12
1c00468c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004690:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004694:	02a011ad 	addi.w	$r13,$r13,-2044(0x804)
1c004698:	001031ac 	add.w	$r12,$r13,$r12
1c00469c:	2a00018c 	ld.bu	$r12,$r12,0
1c0046a0:	00150184 	move	$r4,$r12
1c0046a4:	57f783ff 	bl	-2176(0xffff780) # 1c003e24 <WriteDat>
1c0046a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0046b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0046b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0046b8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0046bc:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c00467c <OLED_ShowChar+0xd8>
1c0046c0:	50005c00 	b	92(0x5c) # 1c00471c <OLED_ShowChar+0x178>
1c0046c4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0046c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0046cc:	57f8fbff 	bl	-1800(0xffff8f8) # 1c003fc4 <OLED_SetPos>
1c0046d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0046d4:	50003c00 	b	60(0x3c) # 1c004710 <OLED_ShowChar+0x16c>
1c0046d8:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0046dc:	029651ad 	addi.w	$r13,$r13,1428(0x594)
1c0046e0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0046e4:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0046e8:	001c31cc 	mul.w	$r12,$r14,$r12
1c0046ec:	001031ad 	add.w	$r13,$r13,$r12
1c0046f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0046f4:	001031ac 	add.w	$r12,$r13,$r12
1c0046f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0046fc:	00150184 	move	$r4,$r12
1c004700:	57f727ff 	bl	-2268(0xffff724) # 1c003e24 <WriteDat>
1c004704:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004708:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00470c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004710:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004714:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004718:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0046d8 <OLED_ShowChar+0x134>
1c00471c:	03400000 	andi	$r0,$r0,0x0
1c004720:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004724:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004728:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00472c:	4c000020 	jirl	$r0,$r1,0

1c004730 <oled_pow>:
oled_pow():
1c004730:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004734:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004738:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00473c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004740:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004744:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004748:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00474c:	50001400 	b	20(0x14) # 1c004760 <oled_pow+0x30>
1c004750:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004754:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004758:	001c31ac 	mul.w	$r12,$r13,$r12
1c00475c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004760:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004764:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004768:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c00476c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004750 <oled_pow+0x20>
1c004770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004774:	00150184 	move	$r4,$r12
1c004778:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00477c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004780:	4c000020 	jirl	$r0,$r1,0

1c004784 <OLED_ShowNum>:
OLED_ShowNum():
1c004784:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004788:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00478c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004790:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004794:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004798:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00479c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0047a0:	001500ec 	move	$r12,$r7
1c0047a4:	0015010d 	move	$r13,$r8
1c0047a8:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c0047ac:	001501ac 	move	$r12,$r13
1c0047b0:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c0047b4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0047b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0047bc:	50010400 	b	260(0x104) # 1c0048c0 <OLED_ShowNum+0x13c>
1c0047c0:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c0047c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0047c8:	001131ac 	sub.w	$r12,$r13,$r12
1c0047cc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0047d0:	00150185 	move	$r5,$r12
1c0047d4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0047d8:	57ff5bff 	bl	-168(0xfffff58) # 1c004730 <oled_pow>
1c0047dc:	0015008d 	move	$r13,$r4
1c0047e0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0047e4:	0021358e 	div.wu	$r14,$r12,$r13
1c0047e8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0047f0 <OLED_ShowNum+0x6c>
1c0047ec:	002a0007 	break	0x7
1c0047f0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0047f4:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c0047f8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004800 <OLED_ShowNum+0x7c>
1c0047fc:	002a0007 	break	0x7
1c004800:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004804:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004808:	44006580 	bnez	$r12,100(0x64) # 1c00486c <OLED_ShowNum+0xe8>
1c00480c:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c004810:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004814:	0015018d 	move	$r13,$r12
1c004818:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00481c:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c00486c <OLED_ShowNum+0xe8>
1c004820:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004824:	44004180 	bnez	$r12,64(0x40) # 1c004864 <OLED_ShowNum+0xe0>
1c004828:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c00482c:	0044858c 	srli.w	$r12,$r12,0x1
1c004830:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004834:	0015018d 	move	$r13,$r12
1c004838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00483c:	001c31ad 	mul.w	$r13,$r13,$r12
1c004840:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004844:	001031ac 	add.w	$r12,$r13,$r12
1c004848:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c00484c:	001501a7 	move	$r7,$r13
1c004850:	02808006 	addi.w	$r6,$r0,32(0x20)
1c004854:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004858:	00150184 	move	$r4,$r12
1c00485c:	57fd4bff 	bl	-696(0xffffd48) # 1c0045a4 <OLED_ShowChar>
1c004860:	50005400 	b	84(0x54) # 1c0048b4 <OLED_ShowNum+0x130>
1c004864:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004868:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00486c:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c004870:	0044858c 	srli.w	$r12,$r12,0x1
1c004874:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004878:	0015018d 	move	$r13,$r12
1c00487c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004880:	001c31ad 	mul.w	$r13,$r13,$r12
1c004884:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004888:	001031ad 	add.w	$r13,$r13,$r12
1c00488c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004890:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004894:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004898:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00489c:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c0048a0:	001501c7 	move	$r7,$r14
1c0048a4:	00150186 	move	$r6,$r12
1c0048a8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0048ac:	001501a4 	move	$r4,$r13
1c0048b0:	57fcf7ff 	bl	-780(0xffffcf4) # 1c0045a4 <OLED_ShowChar>
1c0048b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0048c0:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0048c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0048c8:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c0047c0 <OLED_ShowNum+0x3c>
1c0048cc:	03400000 	andi	$r0,$r0,0x0
1c0048d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0048d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0048d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0048dc:	4c000020 	jirl	$r0,$r1,0

1c0048e0 <my_GPIO_Init>:
my_GPIO_Init():
1c0048e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0048ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0048f4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0048f8:	57d03fff 	bl	-12228(0xfffd03c) # 1c001934 <gpio_init>
1c0048fc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004900:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004904:	57d033ff 	bl	-12240(0xfffd030) # 1c001934 <gpio_init>
1c004908:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00490c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004910:	57d027ff 	bl	-12252(0xfffd024) # 1c001934 <gpio_init>
1c004914:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004918:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00491c:	57d01bff 	bl	-12264(0xfffd018) # 1c001934 <gpio_init>
1c004920:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004924:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004928:	57d00fff 	bl	-12276(0xfffd00c) # 1c001934 <gpio_init>
1c00492c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004930:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004934:	57d003ff 	bl	-12288(0xfffd000) # 1c001934 <gpio_init>
1c004938:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00493c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004940:	57cff7ff 	bl	-12300(0xfffcff4) # 1c001934 <gpio_init>
1c004944:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004948:	02809004 	addi.w	$r4,$r0,36(0x24)
1c00494c:	57cfebff 	bl	-12312(0xfffcfe8) # 1c001934 <gpio_init>
1c004950:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004954:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004958:	57cfdfff 	bl	-12324(0xfffcfdc) # 1c001934 <gpio_init>
1c00495c:	00150005 	move	$r5,$r0
1c004960:	02809804 	addi.w	$r4,$r0,38(0x26)
1c004964:	57cfd3ff 	bl	-12336(0xfffcfd0) # 1c001934 <gpio_init>
1c004968:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00496c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004970:	57cfc7ff 	bl	-12348(0xfffcfc4) # 1c001934 <gpio_init>
1c004974:	00150005 	move	$r5,$r0
1c004978:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00497c:	57cfbbff 	bl	-12360(0xfffcfb8) # 1c001934 <gpio_init>
1c004980:	00150005 	move	$r5,$r0
1c004984:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004988:	57cfafff 	bl	-12372(0xfffcfac) # 1c001934 <gpio_init>
1c00498c:	00150005 	move	$r5,$r0
1c004990:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004994:	57cfa3ff 	bl	-12384(0xfffcfa0) # 1c001934 <gpio_init>
1c004998:	00150005 	move	$r5,$r0
1c00499c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0049a0:	57cf97ff 	bl	-12396(0xfffcf94) # 1c001934 <gpio_init>
1c0049a4:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0049a8:	03bfc98c 	ori	$r12,$r12,0xff2
1c0049ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049b0:	50001400 	b	20(0x14) # 1c0049c4 <my_GPIO_Init+0xe4>
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	03400000 	andi	$r0,$r0,0x0
1c0049bc:	03400000 	andi	$r0,$r0,0x0
1c0049c0:	03400000 	andi	$r0,$r0,0x0
1c0049c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0049cc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0049d0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0049b4 <my_GPIO_Init+0xd4>
1c0049d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049d8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0049dc:	57d053ff 	bl	-12208(0xfffd050) # 1c001a2c <gpio_write>
1c0049e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049e4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0049e8:	57d047ff 	bl	-12220(0xfffd044) # 1c001a2c <gpio_write>
1c0049ec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049f0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0049f4:	57d03bff 	bl	-12232(0xfffd038) # 1c001a2c <gpio_write>
1c0049f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0049fc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004a00:	57d02fff 	bl	-12244(0xfffd02c) # 1c001a2c <gpio_write>
1c004a04:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a08:	02809804 	addi.w	$r4,$r0,38(0x26)
1c004a0c:	57d023ff 	bl	-12256(0xfffd020) # 1c001a2c <gpio_write>
1c004a10:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004a14:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004a18:	57d017ff 	bl	-12268(0xfffd014) # 1c001a2c <gpio_write>
1c004a1c:	00150005 	move	$r5,$r0
1c004a20:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004a24:	57d00bff 	bl	-12280(0xfffd008) # 1c001a2c <gpio_write>
1c004a28:	03400000 	andi	$r0,$r0,0x0
1c004a2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a38:	4c000020 	jirl	$r0,$r1,0

1c004a3c <my_I2C_Init>:
my_I2C_Init():
1c004a3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a44:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a4c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004a50:	00150184 	move	$r4,$r12
1c004a54:	57d1b3ff 	bl	-11856(0xfffd1b0) # 1c001c04 <soc_I2C_StructInit>
1c004a58:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004a5c:	00150184 	move	$r4,$r12
1c004a60:	57d1efff 	bl	-11796(0xfffd1ec) # 1c001c4c <soc_I2C_Init>
1c004a64:	1400016c 	lu12i.w	$r12,11(0xb)
1c004a68:	0399958c 	ori	$r12,$r12,0x665
1c004a6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a70:	50001400 	b	20(0x14) # 1c004a84 <my_I2C_Init+0x48>
1c004a74:	03400000 	andi	$r0,$r0,0x0
1c004a78:	03400000 	andi	$r0,$r0,0x0
1c004a7c:	03400000 	andi	$r0,$r0,0x0
1c004a80:	03400000 	andi	$r0,$r0,0x0
1c004a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a88:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004a8c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004a90:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004a74 <my_I2C_Init+0x38>
1c004a94:	03400000 	andi	$r0,$r0,0x0
1c004a98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004aa0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004aa4:	4c000020 	jirl	$r0,$r1,0

1c004aa8 <my_PWM_Init>:
my_PWM_Init():
1c004aa8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004aac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ab0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ab4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ab8:	57d3abff 	bl	-11352(0xfffd3a8) # 1c001e60 <pwm_steering_engine_init>
1c004abc:	1400016c 	lu12i.w	$r12,11(0xb)
1c004ac0:	0399958c 	ori	$r12,$r12,0x665
1c004ac4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ac8:	50001400 	b	20(0x14) # 1c004adc <my_PWM_Init+0x34>
1c004acc:	03400000 	andi	$r0,$r0,0x0
1c004ad0:	03400000 	andi	$r0,$r0,0x0
1c004ad4:	03400000 	andi	$r0,$r0,0x0
1c004ad8:	03400000 	andi	$r0,$r0,0x0
1c004adc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ae0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004ae4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004ae8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004acc <my_PWM_Init+0x24>
1c004aec:	03400000 	andi	$r0,$r0,0x0
1c004af0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004af4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004af8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004afc:	4c000020 	jirl	$r0,$r1,0

1c004b00 <my_SPI_Init>:
my_SPI_Init():
1c004b00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b04:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b08:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b10:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004b14:	57d44fff 	bl	-11188(0xfffd44c) # 1c001f60 <soc_Spi_Init>
1c004b18:	03400000 	andi	$r0,$r0,0x0
1c004b1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b28:	4c000020 	jirl	$r0,$r1,0

1c004b2c <Init_main>:
Init_main():
1c004b2c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b30:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b34:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b38:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b3c:	57e6cfff 	bl	-6452(0xfffe6cc) # 1c003208 <SG90_Init>
1c004b40:	57f353ff 	bl	-3248(0xffff350) # 1c003e90 <OLED_Init>
1c004b44:	57f5abff 	bl	-2648(0xffff5a8) # 1c0040ec <OLED_CLS>
1c004b48:	54001800 	bl	24(0x18) # 1c004b60 <RC522_Init>
1c004b4c:	03400000 	andi	$r0,$r0,0x0
1c004b50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b5c:	4c000020 	jirl	$r0,$r1,0

1c004b60 <RC522_Init>:
RC522_Init():
1c004b60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b64:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b68:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b70:	1400016c 	lu12i.w	$r12,11(0xb)
1c004b74:	0399958c 	ori	$r12,$r12,0x665
1c004b78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b7c:	50001400 	b	20(0x14) # 1c004b90 <RC522_Init+0x30>
1c004b80:	03400000 	andi	$r0,$r0,0x0
1c004b84:	03400000 	andi	$r0,$r0,0x0
1c004b88:	03400000 	andi	$r0,$r0,0x0
1c004b8c:	03400000 	andi	$r0,$r0,0x0
1c004b90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b94:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004b98:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004b9c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004b80 <RC522_Init+0x20>
1c004ba0:	5403cc00 	bl	972(0x3cc) # 1c004f6c <PcdReset>
1c004ba4:	1400004c 	lu12i.w	$r12,2(0x2)
1c004ba8:	0391ed8c 	ori	$r12,$r12,0x47b
1c004bac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004bb0:	50001400 	b	20(0x14) # 1c004bc4 <RC522_Init+0x64>
1c004bb4:	03400000 	andi	$r0,$r0,0x0
1c004bb8:	03400000 	andi	$r0,$r0,0x0
1c004bbc:	03400000 	andi	$r0,$r0,0x0
1c004bc0:	03400000 	andi	$r0,$r0,0x0
1c004bc4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004bc8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004bcc:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c004bd0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004bb4 <RC522_Init+0x54>
1c004bd4:	54039800 	bl	920(0x398) # 1c004f6c <PcdReset>
1c004bd8:	1400004c 	lu12i.w	$r12,2(0x2)
1c004bdc:	0391ed8c 	ori	$r12,$r12,0x47b
1c004be0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004be4:	50001400 	b	20(0x14) # 1c004bf8 <RC522_Init+0x98>
1c004be8:	03400000 	andi	$r0,$r0,0x0
1c004bec:	03400000 	andi	$r0,$r0,0x0
1c004bf0:	03400000 	andi	$r0,$r0,0x0
1c004bf4:	03400000 	andi	$r0,$r0,0x0
1c004bf8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004bfc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004c00:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c004c04:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004be8 <RC522_Init+0x88>
1c004c08:	54051c00 	bl	1308(0x51c) # 1c005124 <PcdAntennaOff>
1c004c0c:	1400004c 	lu12i.w	$r12,2(0x2)
1c004c10:	0391ed8c 	ori	$r12,$r12,0x47b
1c004c14:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004c18:	50001400 	b	20(0x14) # 1c004c2c <RC522_Init+0xcc>
1c004c1c:	03400000 	andi	$r0,$r0,0x0
1c004c20:	03400000 	andi	$r0,$r0,0x0
1c004c24:	03400000 	andi	$r0,$r0,0x0
1c004c28:	03400000 	andi	$r0,$r0,0x0
1c004c2c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004c30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004c34:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c004c38:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004c1c <RC522_Init+0xbc>
1c004c3c:	54045400 	bl	1108(0x454) # 1c005090 <PcdAntennaOn>
1c004c40:	03400000 	andi	$r0,$r0,0x0
1c004c44:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c48:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c50:	4c000020 	jirl	$r0,$r1,0

1c004c54 <ReadRawRC>:
ReadRawRC():
1c004c54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c64:	0015008c 	move	$r12,$r4
1c004c68:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004c6c:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c004c70:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004c74:	0040858c 	slli.w	$r12,$r12,0x1
1c004c78:	00005d8c 	ext.w.b	$r12,$r12
1c004c7c:	0341f98c 	andi	$r12,$r12,0x7e
1c004c80:	00005d8d 	ext.w.b	$r13,$r12
1c004c84:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c004c88:	001531ac 	or	$r12,$r13,$r12
1c004c8c:	00005d8c 	ext.w.b	$r12,$r12
1c004c90:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004c94:	57d353ff 	bl	-11440(0xfffd350) # 1c001fe4 <soc_Spi_Cs_Down>
1c004c98:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004c9c:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c004ca0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c004ca4:	03400000 	andi	$r0,$r0,0x0
1c004ca8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004cac:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004cb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004cb4:	0340118c 	andi	$r12,$r12,0x4
1c004cb8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c004ca8 <ReadRawRC+0x54>
1c004cbc:	03400000 	andi	$r0,$r0,0x0
1c004cc0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004cc4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004cc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ccc:	0340058c 	andi	$r12,$r12,0x1
1c004cd0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004cc0 <ReadRawRC+0x6c>
1c004cd4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004cd8:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c004cdc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004ce0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004ce4:	29000980 	st.b	$r0,$r12,2(0x2)
1c004ce8:	03400000 	andi	$r0,$r0,0x0
1c004cec:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004cf0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004cf4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004cf8:	0340118c 	andi	$r12,$r12,0x4
1c004cfc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c004cec <ReadRawRC+0x98>
1c004d00:	03400000 	andi	$r0,$r0,0x0
1c004d04:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004d08:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004d0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d10:	0340058c 	andi	$r12,$r12,0x1
1c004d14:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004d04 <ReadRawRC+0xb0>
1c004d18:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004d1c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c004d20:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004d24:	57d31bff 	bl	-11496(0xfffd318) # 1c00203c <soc_Spi_Cs_Up>
1c004d28:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004d2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d30:	50001400 	b	20(0x14) # 1c004d44 <ReadRawRC+0xf0>
1c004d34:	03400000 	andi	$r0,$r0,0x0
1c004d38:	03400000 	andi	$r0,$r0,0x0
1c004d3c:	03400000 	andi	$r0,$r0,0x0
1c004d40:	03400000 	andi	$r0,$r0,0x0
1c004d44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004d4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004d50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004d34 <ReadRawRC+0xe0>
1c004d54:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004d58:	00150184 	move	$r4,$r12
1c004d5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004d60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004d64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004d68:	4c000020 	jirl	$r0,$r1,0

1c004d6c <WriteRawRC>:
WriteRawRC():
1c004d6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004d78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004d7c:	0015008c 	move	$r12,$r4
1c004d80:	001500ad 	move	$r13,$r5
1c004d84:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004d88:	001501ac 	move	$r12,$r13
1c004d8c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004d90:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004d94:	0040858c 	slli.w	$r12,$r12,0x1
1c004d98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d9c:	0341f98c 	andi	$r12,$r12,0x7e
1c004da0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004da4:	57d243ff 	bl	-11712(0xfffd240) # 1c001fe4 <soc_Spi_Cs_Down>
1c004da8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004dac:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004db0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c004db4:	03400000 	andi	$r0,$r0,0x0
1c004db8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004dbc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004dc0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004dc4:	0340118c 	andi	$r12,$r12,0x4
1c004dc8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c004db8 <WriteRawRC+0x4c>
1c004dcc:	03400000 	andi	$r0,$r0,0x0
1c004dd0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004dd4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004dd8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ddc:	0340058c 	andi	$r12,$r12,0x1
1c004de0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004dd0 <WriteRawRC+0x64>
1c004de4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004de8:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c004dec:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004df0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004df4:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c004df8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c004dfc:	03400000 	andi	$r0,$r0,0x0
1c004e00:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004e04:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004e08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e0c:	0340118c 	andi	$r12,$r12,0x4
1c004e10:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c004e00 <WriteRawRC+0x94>
1c004e14:	03400000 	andi	$r0,$r0,0x0
1c004e18:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004e1c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004e20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e24:	0340058c 	andi	$r12,$r12,0x1
1c004e28:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004e18 <WriteRawRC+0xac>
1c004e2c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004e30:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c004e34:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004e38:	57d207ff 	bl	-11772(0xfffd204) # 1c00203c <soc_Spi_Cs_Up>
1c004e3c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004e40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e44:	50001400 	b	20(0x14) # 1c004e58 <WriteRawRC+0xec>
1c004e48:	03400000 	andi	$r0,$r0,0x0
1c004e4c:	03400000 	andi	$r0,$r0,0x0
1c004e50:	03400000 	andi	$r0,$r0,0x0
1c004e54:	03400000 	andi	$r0,$r0,0x0
1c004e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e5c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e60:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004e64:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004e48 <WriteRawRC+0xdc>
1c004e68:	03400000 	andi	$r0,$r0,0x0
1c004e6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e74:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e78:	4c000020 	jirl	$r0,$r1,0

1c004e7c <SetBitMask>:
SetBitMask():
1c004e7c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e80:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e84:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e88:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e8c:	0015008c 	move	$r12,$r4
1c004e90:	001500ad 	move	$r13,$r5
1c004e94:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004e98:	001501ac 	move	$r12,$r13
1c004e9c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004ea0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004ea4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004ea8:	00150184 	move	$r4,$r12
1c004eac:	57fdabff 	bl	-600(0xffffda8) # 1c004c54 <ReadRawRC>
1c004eb0:	0015008c 	move	$r12,$r4
1c004eb4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004eb8:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c004ebc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ec0:	001531ac 	or	$r12,$r13,$r12
1c004ec4:	00005d8c 	ext.w.b	$r12,$r12
1c004ec8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004ecc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004ed0:	001501a5 	move	$r5,$r13
1c004ed4:	00150184 	move	$r4,$r12
1c004ed8:	57fe97ff 	bl	-364(0xffffe94) # 1c004d6c <WriteRawRC>
1c004edc:	03400000 	andi	$r0,$r0,0x0
1c004ee0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ee4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004ee8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004eec:	4c000020 	jirl	$r0,$r1,0

1c004ef0 <ClearBitMask>:
ClearBitMask():
1c004ef0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004ef4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004ef8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004efc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004f00:	0015008c 	move	$r12,$r4
1c004f04:	001500ad 	move	$r13,$r5
1c004f08:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004f0c:	001501ac 	move	$r12,$r13
1c004f10:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004f14:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004f18:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004f1c:	00150184 	move	$r4,$r12
1c004f20:	57fd37ff 	bl	-716(0xffffd34) # 1c004c54 <ReadRawRC>
1c004f24:	0015008c 	move	$r12,$r4
1c004f28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f2c:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c004f30:	0014300c 	nor	$r12,$r0,$r12
1c004f34:	00005d8d 	ext.w.b	$r13,$r12
1c004f38:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f3c:	0014b1ac 	and	$r12,$r13,$r12
1c004f40:	00005d8c 	ext.w.b	$r12,$r12
1c004f44:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f48:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004f4c:	001501a5 	move	$r5,$r13
1c004f50:	00150184 	move	$r4,$r12
1c004f54:	57fe1bff 	bl	-488(0xffffe18) # 1c004d6c <WriteRawRC>
1c004f58:	03400000 	andi	$r0,$r0,0x0
1c004f5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f68:	4c000020 	jirl	$r0,$r1,0

1c004f6c <PcdReset>:
PcdReset():
1c004f6c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f70:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f74:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f7c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f80:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004f84:	57caabff 	bl	-13656(0xfffcaa8) # 1c001a2c <gpio_write>
1c004f88:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c004f8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f90:	50001400 	b	20(0x14) # 1c004fa4 <PcdReset+0x38>
1c004f94:	03400000 	andi	$r0,$r0,0x0
1c004f98:	03400000 	andi	$r0,$r0,0x0
1c004f9c:	03400000 	andi	$r0,$r0,0x0
1c004fa0:	03400000 	andi	$r0,$r0,0x0
1c004fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004fa8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004fac:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004fb0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f94 <PcdReset+0x28>
1c004fb4:	00150005 	move	$r5,$r0
1c004fb8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004fbc:	57ca73ff 	bl	-13712(0xfffca70) # 1c001a2c <gpio_write>
1c004fc0:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c004fc4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004fc8:	50001400 	b	20(0x14) # 1c004fdc <PcdReset+0x70>
1c004fcc:	03400000 	andi	$r0,$r0,0x0
1c004fd0:	03400000 	andi	$r0,$r0,0x0
1c004fd4:	03400000 	andi	$r0,$r0,0x0
1c004fd8:	03400000 	andi	$r0,$r0,0x0
1c004fdc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004fe0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004fe4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c004fe8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004fcc <PcdReset+0x60>
1c004fec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ff0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004ff4:	57ca3bff 	bl	-13768(0xfffca38) # 1c001a2c <gpio_write>
1c004ff8:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c004ffc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005000:	57fd6fff 	bl	-660(0xffffd6c) # 1c004d6c <WriteRawRC>
1c005004:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c005008:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00500c:	50001400 	b	20(0x14) # 1c005020 <PcdReset+0xb4>
1c005010:	03400000 	andi	$r0,$r0,0x0
1c005014:	03400000 	andi	$r0,$r0,0x0
1c005018:	03400000 	andi	$r0,$r0,0x0
1c00501c:	03400000 	andi	$r0,$r0,0x0
1c005020:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005024:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005028:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c00502c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005010 <PcdReset+0xa4>
1c005030:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c005034:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005038:	57fd37ff 	bl	-716(0xffffd34) # 1c004d6c <WriteRawRC>
1c00503c:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c005040:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c005044:	57fd2bff 	bl	-728(0xffffd28) # 1c004d6c <WriteRawRC>
1c005048:	00150005 	move	$r5,$r0
1c00504c:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c005050:	57fd1fff 	bl	-740(0xffffd1c) # 1c004d6c <WriteRawRC>
1c005054:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c005058:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c00505c:	57fd13ff 	bl	-752(0xffffd10) # 1c004d6c <WriteRawRC>
1c005060:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c005064:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c005068:	57fd07ff 	bl	-764(0xffffd04) # 1c004d6c <WriteRawRC>
1c00506c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005070:	02805404 	addi.w	$r4,$r0,21(0x15)
1c005074:	57fcfbff 	bl	-776(0xffffcf8) # 1c004d6c <WriteRawRC>
1c005078:	0015000c 	move	$r12,$r0
1c00507c:	00150184 	move	$r4,$r12
1c005080:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005084:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005088:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00508c:	4c000020 	jirl	$r0,$r1,0

1c005090 <PcdAntennaOn>:
PcdAntennaOn():
1c005090:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005094:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005098:	29806076 	st.w	$r22,$r3,24(0x18)
1c00509c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0050a0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0050a4:	02805404 	addi.w	$r4,$r0,21(0x15)
1c0050a8:	57fcc7ff 	bl	-828(0xffffcc4) # 1c004d6c <WriteRawRC>
1c0050ac:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c0050b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0050b4:	50001400 	b	20(0x14) # 1c0050c8 <PcdAntennaOn+0x38>
1c0050b8:	03400000 	andi	$r0,$r0,0x0
1c0050bc:	03400000 	andi	$r0,$r0,0x0
1c0050c0:	03400000 	andi	$r0,$r0,0x0
1c0050c4:	03400000 	andi	$r0,$r0,0x0
1c0050c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0050cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0050d0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0050d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0050b8 <PcdAntennaOn+0x28>
1c0050d8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0050dc:	57fb7bff 	bl	-1160(0xffffb78) # 1c004c54 <ReadRawRC>
1c0050e0:	0015008c 	move	$r12,$r4
1c0050e4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0050e8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0050ec:	03400d8c 	andi	$r12,$r12,0x3
1c0050f0:	44001180 	bnez	$r12,16(0x10) # 1c005100 <PcdAntennaOn+0x70>
1c0050f4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0050f8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0050fc:	57fd83ff 	bl	-640(0xffffd80) # 1c004e7c <SetBitMask>
1c005100:	02805404 	addi.w	$r4,$r0,21(0x15)
1c005104:	57fb53ff 	bl	-1200(0xffffb50) # 1c004c54 <ReadRawRC>
1c005108:	0015008c 	move	$r12,$r4
1c00510c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005110:	03400000 	andi	$r0,$r0,0x0
1c005114:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005118:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00511c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005120:	4c000020 	jirl	$r0,$r1,0

1c005124 <PcdAntennaOff>:
PcdAntennaOff():
1c005124:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005128:	29803061 	st.w	$r1,$r3,12(0xc)
1c00512c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005130:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005134:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005138:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00513c:	57fdb7ff 	bl	-588(0xffffdb4) # 1c004ef0 <ClearBitMask>
1c005140:	03400000 	andi	$r0,$r0,0x0
1c005144:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005148:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00514c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005150:	4c000020 	jirl	$r0,$r1,0

1c005154 <PcdComMF522>:
PcdComMF522():
1c005154:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005158:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00515c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005160:	29809077 	st.w	$r23,$r3,36(0x24)
1c005164:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005168:	0015008c 	move	$r12,$r4
1c00516c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005170:	001500cd 	move	$r13,$r6
1c005174:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c005178:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c00517c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005180:	001501ac 	move	$r12,$r13
1c005184:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005188:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c00518c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005190:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005194:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005198:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00519c:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0051a0:	5800218d 	beq	$r12,$r13,32(0x20) # 1c0051c0 <PcdComMF522+0x6c>
1c0051a4:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c0051a8:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c0051d4 <PcdComMF522+0x80>
1c0051ac:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0051b0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0051b4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0051b8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0051bc:	50001c00 	b	28(0x1c) # 1c0051d8 <PcdComMF522+0x84>
1c0051c0:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c0051c4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0051c8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0051cc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0051d0:	50000800 	b	8(0x8) # 1c0051d8 <PcdComMF522+0x84>
1c0051d4:	03400000 	andi	$r0,$r0,0x0
1c0051d8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0051dc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0051e0:	001531ac 	or	$r12,$r13,$r12
1c0051e4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051e8:	00150185 	move	$r5,$r12
1c0051ec:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0051f0:	57fb7fff 	bl	-1156(0xffffb7c) # 1c004d6c <WriteRawRC>
1c0051f4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0051f8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0051fc:	57fcf7ff 	bl	-780(0xffffcf4) # 1c004ef0 <ClearBitMask>
1c005200:	00150005 	move	$r5,$r0
1c005204:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005208:	57fb67ff 	bl	-1180(0xffffb64) # 1c004d6c <WriteRawRC>
1c00520c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005210:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005214:	57fc6bff 	bl	-920(0xffffc68) # 1c004e7c <SetBitMask>
1c005218:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00521c:	50002c00 	b	44(0x2c) # 1c005248 <PcdComMF522+0xf4>
1c005220:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005224:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005228:	001031ac 	add.w	$r12,$r13,$r12
1c00522c:	2a00018c 	ld.bu	$r12,$r12,0
1c005230:	00150185 	move	$r5,$r12
1c005234:	02802404 	addi.w	$r4,$r0,9(0x9)
1c005238:	57fb37ff 	bl	-1228(0xffffb34) # 1c004d6c <WriteRawRC>
1c00523c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005240:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005244:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005248:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c00524c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005250:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c005220 <PcdComMF522+0xcc>
1c005254:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005258:	00150185 	move	$r5,$r12
1c00525c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005260:	57fb0fff 	bl	-1268(0xffffb0c) # 1c004d6c <WriteRawRC>
1c005264:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c005268:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00526c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00527c <PcdComMF522+0x128>
1c005270:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005274:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005278:	57fc07ff 	bl	-1020(0xffffc04) # 1c004e7c <SetBitMask>
1c00527c:	1400026c 	lu12i.w	$r12,19(0x13)
1c005280:	03a2018c 	ori	$r12,$r12,0x880
1c005284:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005288:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00528c:	57f9cbff 	bl	-1592(0xffff9c8) # 1c004c54 <ReadRawRC>
1c005290:	0015008c 	move	$r12,$r4
1c005294:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005298:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00529c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0052a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0052a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0052a8:	40002580 	beqz	$r12,36(0x24) # 1c0052cc <PcdComMF522+0x178>
1c0052ac:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0052b0:	0340058c 	andi	$r12,$r12,0x1
1c0052b4:	44001980 	bnez	$r12,24(0x18) # 1c0052cc <PcdComMF522+0x178>
1c0052b8:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0052bc:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0052c0:	0014b1ac 	and	$r12,$r13,$r12
1c0052c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052c8:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c005288 <PcdComMF522+0x134>
1c0052cc:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0052d0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0052d4:	57fc1fff 	bl	-996(0xffffc1c) # 1c004ef0 <ClearBitMask>
1c0052d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0052dc:	40011180 	beqz	$r12,272(0x110) # 1c0053ec <PcdComMF522+0x298>
1c0052e0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0052e4:	57f973ff 	bl	-1680(0xffff970) # 1c004c54 <ReadRawRC>
1c0052e8:	0015008c 	move	$r12,$r4
1c0052ec:	03406d8c 	andi	$r12,$r12,0x1b
1c0052f0:	4400f580 	bnez	$r12,244(0xf4) # 1c0053e4 <PcdComMF522+0x290>
1c0052f4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052f8:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0052fc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005300:	0014b1ac 	and	$r12,$r13,$r12
1c005304:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005308:	0340058c 	andi	$r12,$r12,0x1
1c00530c:	40000d80 	beqz	$r12,12(0xc) # 1c005318 <PcdComMF522+0x1c4>
1c005310:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c005314:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005318:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00531c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005320:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c0053ec <PcdComMF522+0x298>
1c005324:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005328:	57f92fff 	bl	-1748(0xffff92c) # 1c004c54 <ReadRawRC>
1c00532c:	0015008c 	move	$r12,$r4
1c005330:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005334:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005338:	57f91fff 	bl	-1764(0xffff91c) # 1c004c54 <ReadRawRC>
1c00533c:	0015008c 	move	$r12,$r4
1c005340:	03401d8c 	andi	$r12,$r12,0x7
1c005344:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c005348:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c00534c:	40002580 	beqz	$r12,36(0x24) # 1c005370 <PcdComMF522+0x21c>
1c005350:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005354:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005358:	00408d8d 	slli.w	$r13,$r12,0x3
1c00535c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005360:	001031ad 	add.w	$r13,$r13,$r12
1c005364:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005368:	2980018d 	st.w	$r13,$r12,0
1c00536c:	50001400 	b	20(0x14) # 1c005380 <PcdComMF522+0x22c>
1c005370:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005374:	00408d8d 	slli.w	$r13,$r12,0x3
1c005378:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00537c:	2980018d 	st.w	$r13,$r12,0
1c005380:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005384:	44000d80 	bnez	$r12,12(0xc) # 1c005390 <PcdComMF522+0x23c>
1c005388:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00538c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005390:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005394:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c005398:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0053a4 <PcdComMF522+0x250>
1c00539c:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c0053a0:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0053a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0053a8:	50002c00 	b	44(0x2c) # 1c0053d4 <PcdComMF522+0x280>
1c0053ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0053b0:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0053b4:	001031b7 	add.w	$r23,$r13,$r12
1c0053b8:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0053bc:	57f89bff 	bl	-1896(0xffff898) # 1c004c54 <ReadRawRC>
1c0053c0:	0015008c 	move	$r12,$r4
1c0053c4:	290002ec 	st.b	$r12,$r23,0
1c0053c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0053cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0053d4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0053d8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0053dc:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c0053ac <PcdComMF522+0x258>
1c0053e0:	50000c00 	b	12(0xc) # 1c0053ec <PcdComMF522+0x298>
1c0053e4:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0053e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0053ec:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0053f0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0053f4:	57fa8bff 	bl	-1400(0xffffa88) # 1c004e7c <SetBitMask>
1c0053f8:	00150005 	move	$r5,$r0
1c0053fc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005400:	57f96fff 	bl	-1684(0xffff96c) # 1c004d6c <WriteRawRC>
1c005404:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005408:	00150184 	move	$r4,$r12
1c00540c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005410:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005414:	28809077 	ld.w	$r23,$r3,36(0x24)
1c005418:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00541c:	4c000020 	jirl	$r0,$r1,0

1c005420 <PcdRequest>:
PcdRequest():
1c005420:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005424:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005428:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00542c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005430:	0015008c 	move	$r12,$r4
1c005434:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c005438:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c00543c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c005440:	02802004 	addi.w	$r4,$r0,8(0x8)
1c005444:	57faafff 	bl	-1364(0xffffaac) # 1c004ef0 <ClearBitMask>
1c005448:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c00544c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005450:	57f91fff 	bl	-1764(0xffff91c) # 1c004d6c <WriteRawRC>
1c005454:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c005458:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00545c:	57fa23ff 	bl	-1504(0xffffa20) # 1c004e7c <SetBitMask>
1c005460:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c005464:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c005468:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c00546c:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c005470:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c005474:	001501c8 	move	$r8,$r14
1c005478:	001501a7 	move	$r7,$r13
1c00547c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005480:	00150185 	move	$r5,$r12
1c005484:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005488:	57fccfff 	bl	-820(0xffffccc) # 1c005154 <PcdComMF522>
1c00548c:	0015008c 	move	$r12,$r4
1c005490:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005494:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005498:	44003180 	bnez	$r12,48(0x30) # 1c0054c8 <PcdRequest+0xa8>
1c00549c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0054a0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0054a4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0054c8 <PcdRequest+0xa8>
1c0054a8:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c0054ac:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0054b0:	2900018d 	st.b	$r13,$r12,0
1c0054b4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0054b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054bc:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c0054c0:	2900018d 	st.b	$r13,$r12,0
1c0054c4:	50000c00 	b	12(0xc) # 1c0054d0 <PcdRequest+0xb0>
1c0054c8:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0054cc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0054d0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0054d4:	00150184 	move	$r4,$r12
1c0054d8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0054dc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0054e0:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0054e4:	4c000020 	jirl	$r0,$r1,0

1c0054e8 <PcdAnticoll>:
PcdAnticoll():
1c0054e8:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0054ec:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0054f0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0054f4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0054f8:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0054fc:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005500:	02802005 	addi.w	$r5,$r0,8(0x8)
1c005504:	02802004 	addi.w	$r4,$r0,8(0x8)
1c005508:	57f9ebff 	bl	-1560(0xffff9e8) # 1c004ef0 <ClearBitMask>
1c00550c:	00150005 	move	$r5,$r0
1c005510:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005514:	57f85bff 	bl	-1960(0xffff858) # 1c004d6c <WriteRawRC>
1c005518:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00551c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005520:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c004ef0 <ClearBitMask>
1c005524:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c005528:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c00552c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005530:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c005534:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c005538:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c00553c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c005540:	001501c8 	move	$r8,$r14
1c005544:	001501a7 	move	$r7,$r13
1c005548:	02800806 	addi.w	$r6,$r0,2(0x2)
1c00554c:	00150185 	move	$r5,$r12
1c005550:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005554:	57fc03ff 	bl	-1024(0xffffc00) # 1c005154 <PcdComMF522>
1c005558:	0015008c 	move	$r12,$r4
1c00555c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005560:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005564:	44008180 	bnez	$r12,128(0x80) # 1c0055e4 <PcdAnticoll+0xfc>
1c005568:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c00556c:	50004c00 	b	76(0x4c) # 1c0055b8 <PcdAnticoll+0xd0>
1c005570:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c005574:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005578:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00557c:	001031ac 	add.w	$r12,$r13,$r12
1c005580:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005584:	001039ad 	add.w	$r13,$r13,$r14
1c005588:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c00558c:	2900018d 	st.b	$r13,$r12,0
1c005590:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005594:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005598:	001031ac 	add.w	$r12,$r13,$r12
1c00559c:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c0055a0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0055a4:	0015b1ac 	xor	$r12,$r13,$r12
1c0055a8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0055ac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055b4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0055b8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0055bc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0055c0:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005570 <PcdAnticoll+0x88>
1c0055c4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055c8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0055cc:	001031ac 	add.w	$r12,$r13,$r12
1c0055d0:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c0055d4:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c0055d8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0055e4 <PcdAnticoll+0xfc>
1c0055dc:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0055e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0055e4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0055e8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0055ec:	57f893ff 	bl	-1904(0xffff890) # 1c004e7c <SetBitMask>
1c0055f0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0055f4:	00150184 	move	$r4,$r12
1c0055f8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0055fc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005600:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005604:	4c000020 	jirl	$r0,$r1,0

1c005608 <Return_Card>:
Return_Card():
1c005608:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00560c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005610:	29806076 	st.w	$r22,$r3,24(0x18)
1c005614:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005618:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00561c:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005620:	28a7a0a5 	ld.w	$r5,$r5,-1560(0x9e8)
1c005624:	02814804 	addi.w	$r4,$r0,82(0x52)
1c005628:	57fdfbff 	bl	-520(0xffffdf8) # 1c005420 <PcdRequest>
1c00562c:	0015008c 	move	$r12,$r4
1c005630:	44005d80 	bnez	$r12,92(0x5c) # 1c00568c <Return_Card+0x84>
1c005634:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005638:	28a77084 	ld.w	$r4,$r4,-1572(0x9dc)
1c00563c:	57feafff 	bl	-340(0xffffeac) # 1c0054e8 <PcdAnticoll>
1c005640:	0015008c 	move	$r12,$r4
1c005644:	44004980 	bnez	$r12,72(0x48) # 1c00568c <Return_Card+0x84>
1c005648:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00564c:	28a7218c 	ld.w	$r12,$r12,-1592(0x9c8)
1c005650:	2a00018c 	ld.bu	$r12,$r12,0
1c005654:	0044918c 	srli.w	$r12,$r12,0x4
1c005658:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00565c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005660:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005664:	001c31ac 	mul.w	$r12,$r13,$r12
1c005668:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00566c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005670:	28a6918c 	ld.w	$r12,$r12,-1628(0x9a4)
1c005674:	2a00018c 	ld.bu	$r12,$r12,0
1c005678:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00567c:	03403d8c 	andi	$r12,$r12,0xf
1c005680:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005684:	001031ac 	add.w	$r12,$r13,$r12
1c005688:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00568c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005690:	00150184 	move	$r4,$r12
1c005694:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005698:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00569c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0056a0:	4c000020 	jirl	$r0,$r1,0

1c0056a4 <Buffer_write>:
Buffer_write():
1c0056a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0056a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0056ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0056b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0056b4:	001500ac 	move	$r12,$r5
1c0056b8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0056bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056c0:	2880018c 	ld.w	$r12,$r12,0
1c0056c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0056c8:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c0056cc:	0010358c 	add.w	$r12,$r12,$r13
1c0056d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0056d4:	2900018d 	st.b	$r13,$r12,0
1c0056d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056dc:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0056e0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0056e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056e8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0056ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056f0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0056f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056f8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0056fc:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005708 <Buffer_write+0x64>
1c005700:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005704:	29803180 	st.w	$r0,$r12,12(0xc)
1c005708:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00570c:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c005710:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005718:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00571c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005720:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c005724:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005728:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00572c:	6400458d 	bge	$r12,$r13,68(0x44) # 1c005770 <Buffer_write+0xcc>
1c005730:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005734:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c005738:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00573c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c005740:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005744:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005748:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00574c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005750:	2980218d 	st.w	$r13,$r12,8(0x8)
1c005754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005758:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c00575c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005760:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005764:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005770 <Buffer_write+0xcc>
1c005768:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00576c:	29802180 	st.w	$r0,$r12,8(0x8)
1c005770:	03400000 	andi	$r0,$r0,0x0
1c005774:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005778:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00577c:	4c000020 	jirl	$r0,$r1,0

1c005780 <main>:
main():
1c005780:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005784:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005788:	29806076 	st.w	$r22,$r3,24(0x18)
1c00578c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005790:	57b99bff 	bl	-18024(0xfffb998) # 1c001128 <EnableInt>
1c005794:	57f14fff 	bl	-3764(0xffff14c) # 1c0048e0 <my_GPIO_Init>
1c005798:	57f313ff 	bl	-3312(0xffff310) # 1c004aa8 <my_PWM_Init>
1c00579c:	57f2a3ff 	bl	-3424(0xffff2a0) # 1c004a3c <my_I2C_Init>
1c0057a0:	57f363ff 	bl	-3232(0xffff360) # 1c004b00 <my_SPI_Init>
1c0057a4:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0057a8:	03bfc98c 	ori	$r12,$r12,0xff2
1c0057ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0057b0:	50001400 	b	20(0x14) # 1c0057c4 <main+0x44>
1c0057b4:	03400000 	andi	$r0,$r0,0x0
1c0057b8:	03400000 	andi	$r0,$r0,0x0
1c0057bc:	03400000 	andi	$r0,$r0,0x0
1c0057c0:	03400000 	andi	$r0,$r0,0x0
1c0057c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057c8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0057cc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0057d0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0057b4 <main+0x34>
1c0057d4:	57f35bff 	bl	-3240(0xffff358) # 1c004b2c <Init_main>
1c0057d8:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0057dc:	03bfc98c 	ori	$r12,$r12,0xff2
1c0057e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0057e4:	50001400 	b	20(0x14) # 1c0057f8 <main+0x78>
1c0057e8:	03400000 	andi	$r0,$r0,0x0
1c0057ec:	03400000 	andi	$r0,$r0,0x0
1c0057f0:	03400000 	andi	$r0,$r0,0x0
1c0057f4:	03400000 	andi	$r0,$r0,0x0
1c0057f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005800:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c005804:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0057e8 <main+0x68>
1c005808:	02809804 	addi.w	$r4,$r0,38(0x26)
1c00580c:	57c31bff 	bl	-15592(0xfffc318) # 1c001b24 <gpio_read>
1c005810:	0015008c 	move	$r12,$r4
1c005814:	400ca980 	beqz	$r12,3240(0xca8) # 1c0064bc <main+0xd3c>
1c005818:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00581c:	02a7098c 	addi.w	$r12,$r12,-1598(0x9c2)
1c005820:	29000180 	st.b	$r0,$r12,0
1c005824:	57dabfff 	bl	-9540(0xfffdabc) # 1c0032e0 <MatrixKey>
1c005828:	0015008c 	move	$r12,$r4
1c00582c:	0015018d 	move	$r13,$r12
1c005830:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005834:	02a6a58c 	addi.w	$r12,$r12,-1623(0x9a9)
1c005838:	2900018d 	st.b	$r13,$r12,0
1c00583c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005840:	0289358c 	addi.w	$r12,$r12,589(0x24d)
1c005844:	2a00018c 	ld.bu	$r12,$r12,0
1c005848:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c00584c:	680c99ac 	bltu	$r13,$r12,3224(0xc98) # 1c0064e4 <main+0xd64>
1c005850:	0040898d 	slli.w	$r13,$r12,0x2
1c005854:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c005858:	02b6518c 	addi.w	$r12,$r12,-620(0xd94)
1c00585c:	001031ac 	add.w	$r12,$r13,$r12
1c005860:	2880018c 	ld.w	$r12,$r12,0
1c005864:	4c000180 	jirl	$r0,$r12,0
1c005868:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00586c:	0288818c 	addi.w	$r12,$r12,544(0x220)
1c005870:	2a00018d 	ld.bu	$r13,$r12,0
1c005874:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005878:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005890 <main+0x110>
1c00587c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005880:	540d0400 	bl	3332(0xd04) # 1c006584 <interface_display>
1c005884:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005888:	0288118c 	addi.w	$r12,$r12,516(0x204)
1c00588c:	29000180 	st.b	$r0,$r12,0
1c005890:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005894:	02a5258c 	addi.w	$r12,$r12,-1719(0x949)
1c005898:	2a00018d 	ld.bu	$r13,$r12,0
1c00589c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0058a0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0058c8 <main+0x148>
1c0058a4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0058a8:	0287958c 	addi.w	$r12,$r12,485(0x1e5)
1c0058ac:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0058b0:	2900018d 	st.b	$r13,$r12,0
1c0058b4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0058b8:	0287518c 	addi.w	$r12,$r12,468(0x1d4)
1c0058bc:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0058c0:	2900018d 	st.b	$r13,$r12,0
1c0058c4:	500c2800 	b	3112(0xc28) # 1c0064ec <main+0xd6c>
1c0058c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058cc:	02a4458c 	addi.w	$r12,$r12,-1775(0x911)
1c0058d0:	2a00018d 	ld.bu	$r13,$r12,0
1c0058d4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0058d8:	5c0c15ac 	bne	$r13,$r12,3092(0xc14) # 1c0064ec <main+0xd6c>
1c0058dc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0058e0:	0286b58c 	addi.w	$r12,$r12,429(0x1ad)
1c0058e4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0058e8:	2900018d 	st.b	$r13,$r12,0
1c0058ec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0058f0:	0286718c 	addi.w	$r12,$r12,412(0x19c)
1c0058f4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0058f8:	2900018d 	st.b	$r13,$r12,0
1c0058fc:	500bf000 	b	3056(0xbf0) # 1c0064ec <main+0xd6c>
1c005900:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005904:	0286218c 	addi.w	$r12,$r12,392(0x188)
1c005908:	2a00018d 	ld.bu	$r13,$r12,0
1c00590c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005910:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005928 <main+0x1a8>
1c005914:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005918:	540c6c00 	bl	3180(0xc6c) # 1c006584 <interface_display>
1c00591c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005920:	0285b18c 	addi.w	$r12,$r12,364(0x16c)
1c005924:	29000180 	st.b	$r0,$r12,0
1c005928:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00592c:	02a2c58c 	addi.w	$r12,$r12,-1871(0x8b1)
1c005930:	2a00018d 	ld.bu	$r13,$r12,0
1c005934:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005938:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005960 <main+0x1e0>
1c00593c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005940:	0285358c 	addi.w	$r12,$r12,333(0x14d)
1c005944:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005948:	2900018d 	st.b	$r13,$r12,0
1c00594c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005950:	0284f18c 	addi.w	$r12,$r12,316(0x13c)
1c005954:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005958:	2900018d 	st.b	$r13,$r12,0
1c00595c:	500b9800 	b	2968(0xb98) # 1c0064f4 <main+0xd74>
1c005960:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005964:	02a1e58c 	addi.w	$r12,$r12,-1927(0x879)
1c005968:	2a00018d 	ld.bu	$r13,$r12,0
1c00596c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005970:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005998 <main+0x218>
1c005974:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005978:	0284558c 	addi.w	$r12,$r12,277(0x115)
1c00597c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005980:	2900018d 	st.b	$r13,$r12,0
1c005984:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005988:	0284118c 	addi.w	$r12,$r12,260(0x104)
1c00598c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005990:	2900018d 	st.b	$r13,$r12,0
1c005994:	500b6000 	b	2912(0xb60) # 1c0064f4 <main+0xd74>
1c005998:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00599c:	02a1058c 	addi.w	$r12,$r12,-1983(0x841)
1c0059a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0059a4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0059a8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0059d0 <main+0x250>
1c0059ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0059b0:	0283758c 	addi.w	$r12,$r12,221(0xdd)
1c0059b4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0059b8:	2900018d 	st.b	$r13,$r12,0
1c0059bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0059c0:	0283318c 	addi.w	$r12,$r12,204(0xcc)
1c0059c4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0059c8:	2900018d 	st.b	$r13,$r12,0
1c0059cc:	500b2800 	b	2856(0xb28) # 1c0064f4 <main+0xd74>
1c0059d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059d4:	02a0258c 	addi.w	$r12,$r12,-2039(0x809)
1c0059d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0059dc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0059e0:	5c0b15ac 	bne	$r13,$r12,2836(0xb14) # 1c0064f4 <main+0xd74>
1c0059e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0059e8:	0282958c 	addi.w	$r12,$r12,165(0xa5)
1c0059ec:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0059f0:	2900018d 	st.b	$r13,$r12,0
1c0059f4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0059f8:	0282518c 	addi.w	$r12,$r12,148(0x94)
1c0059fc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005a00:	2900018d 	st.b	$r13,$r12,0
1c005a04:	500af000 	b	2800(0xaf0) # 1c0064f4 <main+0xd74>
1c005a08:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a0c:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c005a10:	2a00018d 	ld.bu	$r13,$r12,0
1c005a14:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005a18:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005a30 <main+0x2b0>
1c005a1c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005a20:	540b6400 	bl	2916(0xb64) # 1c006584 <interface_display>
1c005a24:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a28:	0281918c 	addi.w	$r12,$r12,100(0x64)
1c005a2c:	29000180 	st.b	$r0,$r12,0
1c005a30:	5415e800 	bl	5608(0x15e8) # 1c007018 <Read_ID>
1c005a34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a38:	029e958c 	addi.w	$r12,$r12,1957(0x7a5)
1c005a3c:	2a00018d 	ld.bu	$r13,$r12,0
1c005a40:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005a44:	5c0ab9ac 	bne	$r13,$r12,2744(0xab8) # 1c0064fc <main+0xd7c>
1c005a48:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a4c:	0281058c 	addi.w	$r12,$r12,65(0x41)
1c005a50:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005a54:	2900018d 	st.b	$r13,$r12,0
1c005a58:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a5c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c005a60:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005a64:	2900018d 	st.b	$r13,$r12,0
1c005a68:	500a9400 	b	2708(0xa94) # 1c0064fc <main+0xd7c>
1c005a6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a70:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c005a74:	2a00018d 	ld.bu	$r13,$r12,0
1c005a78:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005a7c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005a94 <main+0x314>
1c005a80:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005a84:	540b0000 	bl	2816(0xb00) # 1c006584 <interface_display>
1c005a88:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a8c:	0280018c 	addi.w	$r12,$r12,0
1c005a90:	29000180 	st.b	$r0,$r12,0
1c005a94:	5416d000 	bl	5840(0x16d0) # 1c007164 <Key_main>
1c005a98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a9c:	029d058c 	addi.w	$r12,$r12,1857(0x741)
1c005aa0:	2a00018d 	ld.bu	$r13,$r12,0
1c005aa4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005aa8:	5c0a5dac 	bne	$r13,$r12,2652(0xa5c) # 1c006504 <main+0xd84>
1c005aac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ab0:	02bf758c 	addi.w	$r12,$r12,-35(0xfdd)
1c005ab4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005ab8:	2900018d 	st.b	$r13,$r12,0
1c005abc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ac0:	02bf318c 	addi.w	$r12,$r12,-52(0xfcc)
1c005ac4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005ac8:	2900018d 	st.b	$r13,$r12,0
1c005acc:	500a3800 	b	2616(0xa38) # 1c006504 <main+0xd84>
1c005ad0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ad4:	02bee18c 	addi.w	$r12,$r12,-72(0xfb8)
1c005ad8:	2a00018d 	ld.bu	$r13,$r12,0
1c005adc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005ae0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005af8 <main+0x378>
1c005ae4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005ae8:	540a9c00 	bl	2716(0xa9c) # 1c006584 <interface_display>
1c005aec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005af0:	02be718c 	addi.w	$r12,$r12,-100(0xf9c)
1c005af4:	29000180 	st.b	$r0,$r12,0
1c005af8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005afc:	029b858c 	addi.w	$r12,$r12,1761(0x6e1)
1c005b00:	2a00018d 	ld.bu	$r13,$r12,0
1c005b04:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005b08:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005b30 <main+0x3b0>
1c005b0c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b10:	02bdf58c 	addi.w	$r12,$r12,-131(0xf7d)
1c005b14:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005b18:	2900018d 	st.b	$r13,$r12,0
1c005b1c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b20:	02bdb18c 	addi.w	$r12,$r12,-148(0xf6c)
1c005b24:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005b28:	2900018d 	st.b	$r13,$r12,0
1c005b2c:	5009e000 	b	2528(0x9e0) # 1c00650c <main+0xd8c>
1c005b30:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b34:	029aa58c 	addi.w	$r12,$r12,1705(0x6a9)
1c005b38:	2a00018d 	ld.bu	$r13,$r12,0
1c005b3c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005b40:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005b68 <main+0x3e8>
1c005b44:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b48:	02bd158c 	addi.w	$r12,$r12,-187(0xf45)
1c005b4c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005b50:	2900018d 	st.b	$r13,$r12,0
1c005b54:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b58:	02bcd18c 	addi.w	$r12,$r12,-204(0xf34)
1c005b5c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005b60:	2900018d 	st.b	$r13,$r12,0
1c005b64:	5009a800 	b	2472(0x9a8) # 1c00650c <main+0xd8c>
1c005b68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b6c:	0299c58c 	addi.w	$r12,$r12,1649(0x671)
1c005b70:	2a00018d 	ld.bu	$r13,$r12,0
1c005b74:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005b78:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005ba0 <main+0x420>
1c005b7c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b80:	02bc358c 	addi.w	$r12,$r12,-243(0xf0d)
1c005b84:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005b88:	2900018d 	st.b	$r13,$r12,0
1c005b8c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b90:	02bbf18c 	addi.w	$r12,$r12,-260(0xefc)
1c005b94:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005b98:	2900018d 	st.b	$r13,$r12,0
1c005b9c:	50097000 	b	2416(0x970) # 1c00650c <main+0xd8c>
1c005ba0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ba4:	0298e58c 	addi.w	$r12,$r12,1593(0x639)
1c005ba8:	2a00018d 	ld.bu	$r13,$r12,0
1c005bac:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005bb0:	5c095dac 	bne	$r13,$r12,2396(0x95c) # 1c00650c <main+0xd8c>
1c005bb4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bb8:	02bb558c 	addi.w	$r12,$r12,-299(0xed5)
1c005bbc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005bc0:	2900018d 	st.b	$r13,$r12,0
1c005bc4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bc8:	02bb118c 	addi.w	$r12,$r12,-316(0xec4)
1c005bcc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005bd0:	2900018d 	st.b	$r13,$r12,0
1c005bd4:	50093800 	b	2360(0x938) # 1c00650c <main+0xd8c>
1c005bd8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bdc:	02bac18c 	addi.w	$r12,$r12,-336(0xeb0)
1c005be0:	2a00018d 	ld.bu	$r13,$r12,0
1c005be4:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005be8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005c00 <main+0x480>
1c005bec:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005bf0:	54099400 	bl	2452(0x994) # 1c006584 <interface_display>
1c005bf4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bf8:	02ba518c 	addi.w	$r12,$r12,-364(0xe94)
1c005bfc:	29000180 	st.b	$r0,$r12,0
1c005c00:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c04:	0297658c 	addi.w	$r12,$r12,1497(0x5d9)
1c005c08:	2a00018d 	ld.bu	$r13,$r12,0
1c005c0c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005c10:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005c38 <main+0x4b8>
1c005c14:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c18:	02b9d58c 	addi.w	$r12,$r12,-395(0xe75)
1c005c1c:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c005c20:	2900018d 	st.b	$r13,$r12,0
1c005c24:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c28:	02b9918c 	addi.w	$r12,$r12,-412(0xe64)
1c005c2c:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c005c30:	2900018d 	st.b	$r13,$r12,0
1c005c34:	5008e000 	b	2272(0x8e0) # 1c006514 <main+0xd94>
1c005c38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c3c:	0296858c 	addi.w	$r12,$r12,1441(0x5a1)
1c005c40:	2a00018d 	ld.bu	$r13,$r12,0
1c005c44:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005c48:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005c70 <main+0x4f0>
1c005c4c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c50:	02b8f58c 	addi.w	$r12,$r12,-451(0xe3d)
1c005c54:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005c58:	2900018d 	st.b	$r13,$r12,0
1c005c5c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c60:	02b8b18c 	addi.w	$r12,$r12,-468(0xe2c)
1c005c64:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005c68:	2900018d 	st.b	$r13,$r12,0
1c005c6c:	5008a800 	b	2216(0x8a8) # 1c006514 <main+0xd94>
1c005c70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c74:	0295a58c 	addi.w	$r12,$r12,1385(0x569)
1c005c78:	2a00018d 	ld.bu	$r13,$r12,0
1c005c7c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005c80:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005ca8 <main+0x528>
1c005c84:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c88:	02b8158c 	addi.w	$r12,$r12,-507(0xe05)
1c005c8c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005c90:	2900018d 	st.b	$r13,$r12,0
1c005c94:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c98:	02b7d18c 	addi.w	$r12,$r12,-524(0xdf4)
1c005c9c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005ca0:	2900018d 	st.b	$r13,$r12,0
1c005ca4:	50087000 	b	2160(0x870) # 1c006514 <main+0xd94>
1c005ca8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cac:	0294c58c 	addi.w	$r12,$r12,1329(0x531)
1c005cb0:	2a00018d 	ld.bu	$r13,$r12,0
1c005cb4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005cb8:	5c085dac 	bne	$r13,$r12,2140(0x85c) # 1c006514 <main+0xd94>
1c005cbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cc0:	02b7358c 	addi.w	$r12,$r12,-563(0xdcd)
1c005cc4:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005cc8:	2900018d 	st.b	$r13,$r12,0
1c005ccc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cd0:	02b6f18c 	addi.w	$r12,$r12,-580(0xdbc)
1c005cd4:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005cd8:	2900018d 	st.b	$r13,$r12,0
1c005cdc:	50083800 	b	2104(0x838) # 1c006514 <main+0xd94>
1c005ce0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ce4:	02b6a18c 	addi.w	$r12,$r12,-600(0xda8)
1c005ce8:	2a00018d 	ld.bu	$r13,$r12,0
1c005cec:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005cf0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005d08 <main+0x588>
1c005cf4:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c005cf8:	54088c00 	bl	2188(0x88c) # 1c006584 <interface_display>
1c005cfc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d00:	02b6318c 	addi.w	$r12,$r12,-628(0xd8c)
1c005d04:	29000180 	st.b	$r0,$r12,0
1c005d08:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d0c:	0293458c 	addi.w	$r12,$r12,1233(0x4d1)
1c005d10:	2a00018d 	ld.bu	$r13,$r12,0
1c005d14:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005d18:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005d40 <main+0x5c0>
1c005d1c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d20:	02b5b58c 	addi.w	$r12,$r12,-659(0xd6d)
1c005d24:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005d28:	2900018d 	st.b	$r13,$r12,0
1c005d2c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d30:	02b5718c 	addi.w	$r12,$r12,-676(0xd5c)
1c005d34:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c005d38:	2900018d 	st.b	$r13,$r12,0
1c005d3c:	5007e000 	b	2016(0x7e0) # 1c00651c <main+0xd9c>
1c005d40:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d44:	0292658c 	addi.w	$r12,$r12,1177(0x499)
1c005d48:	2a00018d 	ld.bu	$r13,$r12,0
1c005d4c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005d50:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005d78 <main+0x5f8>
1c005d54:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d58:	02b4d58c 	addi.w	$r12,$r12,-715(0xd35)
1c005d5c:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c005d60:	2900018d 	st.b	$r13,$r12,0
1c005d64:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d68:	02b4918c 	addi.w	$r12,$r12,-732(0xd24)
1c005d6c:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c005d70:	2900018d 	st.b	$r13,$r12,0
1c005d74:	5007a800 	b	1960(0x7a8) # 1c00651c <main+0xd9c>
1c005d78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d7c:	0291858c 	addi.w	$r12,$r12,1121(0x461)
1c005d80:	2a00018d 	ld.bu	$r13,$r12,0
1c005d84:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005d88:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005db0 <main+0x630>
1c005d8c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d90:	02b3f58c 	addi.w	$r12,$r12,-771(0xcfd)
1c005d94:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005d98:	2900018d 	st.b	$r13,$r12,0
1c005d9c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005da0:	02b3b18c 	addi.w	$r12,$r12,-788(0xcec)
1c005da4:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005da8:	2900018d 	st.b	$r13,$r12,0
1c005dac:	50077000 	b	1904(0x770) # 1c00651c <main+0xd9c>
1c005db0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005db4:	0290a58c 	addi.w	$r12,$r12,1065(0x429)
1c005db8:	2a00018d 	ld.bu	$r13,$r12,0
1c005dbc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005dc0:	5c075dac 	bne	$r13,$r12,1884(0x75c) # 1c00651c <main+0xd9c>
1c005dc4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dc8:	02b3158c 	addi.w	$r12,$r12,-827(0xcc5)
1c005dcc:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005dd0:	2900018d 	st.b	$r13,$r12,0
1c005dd4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dd8:	02b2d18c 	addi.w	$r12,$r12,-844(0xcb4)
1c005ddc:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005de0:	2900018d 	st.b	$r13,$r12,0
1c005de4:	50073800 	b	1848(0x738) # 1c00651c <main+0xd9c>
1c005de8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dec:	02b2818c 	addi.w	$r12,$r12,-864(0xca0)
1c005df0:	2a00018d 	ld.bu	$r13,$r12,0
1c005df4:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005df8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e10 <main+0x690>
1c005dfc:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005e00:	54078400 	bl	1924(0x784) # 1c006584 <interface_display>
1c005e04:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e08:	02b2118c 	addi.w	$r12,$r12,-892(0xc84)
1c005e0c:	29000180 	st.b	$r0,$r12,0
1c005e10:	54174400 	bl	5956(0x1744) # 1c007554 <Key>
1c005e14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e18:	028f158c 	addi.w	$r12,$r12,965(0x3c5)
1c005e1c:	2a00018d 	ld.bu	$r13,$r12,0
1c005e20:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005e24:	5c0701ac 	bne	$r13,$r12,1792(0x700) # 1c006524 <main+0xda4>
1c005e28:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e2c:	02b1858c 	addi.w	$r12,$r12,-927(0xc61)
1c005e30:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005e34:	2900018d 	st.b	$r13,$r12,0
1c005e38:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e3c:	02b1418c 	addi.w	$r12,$r12,-944(0xc50)
1c005e40:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005e44:	2900018d 	st.b	$r13,$r12,0
1c005e48:	5006dc00 	b	1756(0x6dc) # 1c006524 <main+0xda4>
1c005e4c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e50:	02b0f18c 	addi.w	$r12,$r12,-964(0xc3c)
1c005e54:	2a00018d 	ld.bu	$r13,$r12,0
1c005e58:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c005e5c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e74 <main+0x6f4>
1c005e60:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005e64:	54072000 	bl	1824(0x720) # 1c006584 <interface_display>
1c005e68:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e6c:	02b0818c 	addi.w	$r12,$r12,-992(0xc20)
1c005e70:	29000180 	st.b	$r0,$r12,0
1c005e74:	540fc000 	bl	4032(0xfc0) # 1c006e34 <Write_ID>
1c005e78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e7c:	028d858c 	addi.w	$r12,$r12,865(0x361)
1c005e80:	2a00018d 	ld.bu	$r13,$r12,0
1c005e84:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005e88:	5c06a5ac 	bne	$r13,$r12,1700(0x6a4) # 1c00652c <main+0xdac>
1c005e8c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e90:	02aff58c 	addi.w	$r12,$r12,-1027(0xbfd)
1c005e94:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005e98:	2900018d 	st.b	$r13,$r12,0
1c005e9c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ea0:	02afb18c 	addi.w	$r12,$r12,-1044(0xbec)
1c005ea4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005ea8:	2900018d 	st.b	$r13,$r12,0
1c005eac:	50068000 	b	1664(0x680) # 1c00652c <main+0xdac>
1c005eb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005eb4:	02af618c 	addi.w	$r12,$r12,-1064(0xbd8)
1c005eb8:	2a00018d 	ld.bu	$r13,$r12,0
1c005ebc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005ec0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005ed8 <main+0x758>
1c005ec4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005ec8:	5406bc00 	bl	1724(0x6bc) # 1c006584 <interface_display>
1c005ecc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ed0:	02aef18c 	addi.w	$r12,$r12,-1092(0xbbc)
1c005ed4:	29000180 	st.b	$r0,$r12,0
1c005ed8:	5419a000 	bl	6560(0x19a0) # 1c007878 <Add_Key>
1c005edc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ee0:	028bf58c 	addi.w	$r12,$r12,765(0x2fd)
1c005ee4:	2a00018d 	ld.bu	$r13,$r12,0
1c005ee8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005eec:	5c0649ac 	bne	$r13,$r12,1608(0x648) # 1c006534 <main+0xdb4>
1c005ef0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ef4:	02ae658c 	addi.w	$r12,$r12,-1127(0xb99)
1c005ef8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005efc:	2900018d 	st.b	$r13,$r12,0
1c005f00:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f04:	02ae218c 	addi.w	$r12,$r12,-1144(0xb88)
1c005f08:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005f0c:	2900018d 	st.b	$r13,$r12,0
1c005f10:	50062400 	b	1572(0x624) # 1c006534 <main+0xdb4>
1c005f14:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f18:	02add18c 	addi.w	$r12,$r12,-1164(0xb74)
1c005f1c:	2a00018d 	ld.bu	$r13,$r12,0
1c005f20:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005f24:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005f3c <main+0x7bc>
1c005f28:	02804404 	addi.w	$r4,$r0,17(0x11)
1c005f2c:	54065800 	bl	1624(0x658) # 1c006584 <interface_display>
1c005f30:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f34:	02ad618c 	addi.w	$r12,$r12,-1192(0xb58)
1c005f38:	29000180 	st.b	$r0,$r12,0
1c005f3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f40:	028a758c 	addi.w	$r12,$r12,669(0x29d)
1c005f44:	2a00018d 	ld.bu	$r13,$r12,0
1c005f48:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005f4c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005f74 <main+0x7f4>
1c005f50:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f54:	02ace58c 	addi.w	$r12,$r12,-1223(0xb39)
1c005f58:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c005f5c:	2900018d 	st.b	$r13,$r12,0
1c005f60:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f64:	02aca18c 	addi.w	$r12,$r12,-1240(0xb28)
1c005f68:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c005f6c:	2900018d 	st.b	$r13,$r12,0
1c005f70:	5005cc00 	b	1484(0x5cc) # 1c00653c <main+0xdbc>
1c005f74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f78:	0289958c 	addi.w	$r12,$r12,613(0x265)
1c005f7c:	2a00018d 	ld.bu	$r13,$r12,0
1c005f80:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005f84:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005fac <main+0x82c>
1c005f88:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f8c:	02ac058c 	addi.w	$r12,$r12,-1279(0xb01)
1c005f90:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005f94:	2900018d 	st.b	$r13,$r12,0
1c005f98:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f9c:	02abc18c 	addi.w	$r12,$r12,-1296(0xaf0)
1c005fa0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005fa4:	2900018d 	st.b	$r13,$r12,0
1c005fa8:	50059400 	b	1428(0x594) # 1c00653c <main+0xdbc>
1c005fac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fb0:	0288b58c 	addi.w	$r12,$r12,557(0x22d)
1c005fb4:	2a00018d 	ld.bu	$r13,$r12,0
1c005fb8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005fbc:	5c0581ac 	bne	$r13,$r12,1408(0x580) # 1c00653c <main+0xdbc>
1c005fc0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fc4:	02ab258c 	addi.w	$r12,$r12,-1335(0xac9)
1c005fc8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005fcc:	2900018d 	st.b	$r13,$r12,0
1c005fd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fd4:	02aae18c 	addi.w	$r12,$r12,-1352(0xab8)
1c005fd8:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005fdc:	2900018d 	st.b	$r13,$r12,0
1c005fe0:	50055c00 	b	1372(0x55c) # 1c00653c <main+0xdbc>
1c005fe4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fe8:	02aa918c 	addi.w	$r12,$r12,-1372(0xaa4)
1c005fec:	2a00018d 	ld.bu	$r13,$r12,0
1c005ff0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005ff4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006010 <main+0x890>
1c005ff8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005ffc:	54058800 	bl	1416(0x588) # 1c006584 <interface_display>
1c006000:	541b4800 	bl	6984(0x1b48) # 1c007b48 <Delete_key>
1c006004:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006008:	02aa118c 	addi.w	$r12,$r12,-1404(0xa84)
1c00600c:	29000180 	st.b	$r0,$r12,0
1c006010:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006014:	0287258c 	addi.w	$r12,$r12,457(0x1c9)
1c006018:	2a00018d 	ld.bu	$r13,$r12,0
1c00601c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006020:	5c0525ac 	bne	$r13,$r12,1316(0x524) # 1c006544 <main+0xdc4>
1c006024:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006028:	02a9958c 	addi.w	$r12,$r12,-1435(0xa65)
1c00602c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006030:	2900018d 	st.b	$r13,$r12,0
1c006034:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006038:	02a9518c 	addi.w	$r12,$r12,-1452(0xa54)
1c00603c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006040:	2900018d 	st.b	$r13,$r12,0
1c006044:	50050000 	b	1280(0x500) # 1c006544 <main+0xdc4>
1c006048:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00604c:	02a9018c 	addi.w	$r12,$r12,-1472(0xa40)
1c006050:	2a00018d 	ld.bu	$r13,$r12,0
1c006054:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006058:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006070 <main+0x8f0>
1c00605c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006060:	54052400 	bl	1316(0x524) # 1c006584 <interface_display>
1c006064:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006068:	02a8918c 	addi.w	$r12,$r12,-1500(0xa24)
1c00606c:	29000180 	st.b	$r0,$r12,0
1c006070:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006074:	0285a58c 	addi.w	$r12,$r12,361(0x169)
1c006078:	2a00018d 	ld.bu	$r13,$r12,0
1c00607c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006080:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0060a8 <main+0x928>
1c006084:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006088:	02a8158c 	addi.w	$r12,$r12,-1531(0xa05)
1c00608c:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006090:	2900018d 	st.b	$r13,$r12,0
1c006094:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006098:	02a7d18c 	addi.w	$r12,$r12,-1548(0x9f4)
1c00609c:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c0060a0:	2900018d 	st.b	$r13,$r12,0
1c0060a4:	5004a800 	b	1192(0x4a8) # 1c00654c <main+0xdcc>
1c0060a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060ac:	0284c58c 	addi.w	$r12,$r12,305(0x131)
1c0060b0:	2a00018d 	ld.bu	$r13,$r12,0
1c0060b4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0060b8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0060e0 <main+0x960>
1c0060bc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060c0:	02a7358c 	addi.w	$r12,$r12,-1587(0x9cd)
1c0060c4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0060c8:	2900018d 	st.b	$r13,$r12,0
1c0060cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060d0:	02a6f18c 	addi.w	$r12,$r12,-1604(0x9bc)
1c0060d4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0060d8:	2900018d 	st.b	$r13,$r12,0
1c0060dc:	50047000 	b	1136(0x470) # 1c00654c <main+0xdcc>
1c0060e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060e4:	0283e58c 	addi.w	$r12,$r12,249(0xf9)
1c0060e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0060ec:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0060f0:	5c045dac 	bne	$r13,$r12,1116(0x45c) # 1c00654c <main+0xdcc>
1c0060f4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060f8:	02a6558c 	addi.w	$r12,$r12,-1643(0x995)
1c0060fc:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006100:	2900018d 	st.b	$r13,$r12,0
1c006104:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006108:	02a6118c 	addi.w	$r12,$r12,-1660(0x984)
1c00610c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006110:	2900018d 	st.b	$r13,$r12,0
1c006114:	50043800 	b	1080(0x438) # 1c00654c <main+0xdcc>
1c006118:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00611c:	02a5c18c 	addi.w	$r12,$r12,-1680(0x970)
1c006120:	2a00018d 	ld.bu	$r13,$r12,0
1c006124:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006128:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006144 <main+0x9c4>
1c00612c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c006130:	54045400 	bl	1108(0x454) # 1c006584 <interface_display>
1c006134:	540e4000 	bl	3648(0xe40) # 1c006f74 <Delate_ID>
1c006138:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00613c:	02a5418c 	addi.w	$r12,$r12,-1712(0x950)
1c006140:	29000180 	st.b	$r0,$r12,0
1c006144:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006148:	0282558c 	addi.w	$r12,$r12,149(0x95)
1c00614c:	2a00018d 	ld.bu	$r13,$r12,0
1c006150:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006154:	5c0401ac 	bne	$r13,$r12,1024(0x400) # 1c006554 <main+0xdd4>
1c006158:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00615c:	02a4c58c 	addi.w	$r12,$r12,-1743(0x931)
1c006160:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006164:	2900018d 	st.b	$r13,$r12,0
1c006168:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00616c:	02a4818c 	addi.w	$r12,$r12,-1760(0x920)
1c006170:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006174:	2900018d 	st.b	$r13,$r12,0
1c006178:	5003dc00 	b	988(0x3dc) # 1c006554 <main+0xdd4>
1c00617c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006180:	02a4318c 	addi.w	$r12,$r12,-1780(0x90c)
1c006184:	2a00018d 	ld.bu	$r13,$r12,0
1c006188:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00618c:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c0061b8 <main+0xa38>
1c006190:	02804804 	addi.w	$r4,$r0,18(0x12)
1c006194:	5403f000 	bl	1008(0x3f0) # 1c006584 <interface_display>
1c006198:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00619c:	02a3c58c 	addi.w	$r12,$r12,-1807(0x8f1)
1c0061a0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0061a4:	2900018d 	st.b	$r13,$r12,0
1c0061a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061ac:	02a3818c 	addi.w	$r12,$r12,-1824(0x8e0)
1c0061b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0061b4:	2900018d 	st.b	$r13,$r12,0
1c0061b8:	57ce13ff 	bl	-12784(0xfffce10) # 1c002fc8 <press_FR>
1c0061bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061c0:	0280758c 	addi.w	$r12,$r12,29(0x1d)
1c0061c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0061c8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0061cc:	5c0391ac 	bne	$r13,$r12,912(0x390) # 1c00655c <main+0xddc>
1c0061d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061d4:	02a2e58c 	addi.w	$r12,$r12,-1863(0x8b9)
1c0061d8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0061dc:	2900018d 	st.b	$r13,$r12,0
1c0061e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061e4:	02a2a18c 	addi.w	$r12,$r12,-1880(0x8a8)
1c0061e8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0061ec:	2900018d 	st.b	$r13,$r12,0
1c0061f0:	50036c00 	b	876(0x36c) # 1c00655c <main+0xddc>
1c0061f4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061f8:	02a2518c 	addi.w	$r12,$r12,-1900(0x894)
1c0061fc:	2a00018d 	ld.bu	$r13,$r12,0
1c006200:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006204:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00621c <main+0xa9c>
1c006208:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00620c:	54037800 	bl	888(0x378) # 1c006584 <interface_display>
1c006210:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006214:	02a1e18c 	addi.w	$r12,$r12,-1928(0x878)
1c006218:	29000180 	st.b	$r0,$r12,0
1c00621c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006220:	02bef58c 	addi.w	$r12,$r12,-67(0xfbd)
1c006224:	2a00018d 	ld.bu	$r13,$r12,0
1c006228:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c00622c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006254 <main+0xad4>
1c006230:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006234:	02a1658c 	addi.w	$r12,$r12,-1959(0x859)
1c006238:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c00623c:	2900018d 	st.b	$r13,$r12,0
1c006240:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006244:	02a1218c 	addi.w	$r12,$r12,-1976(0x848)
1c006248:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c00624c:	2900018d 	st.b	$r13,$r12,0
1c006250:	50031400 	b	788(0x314) # 1c006564 <main+0xde4>
1c006254:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006258:	02be158c 	addi.w	$r12,$r12,-123(0xf85)
1c00625c:	2a00018d 	ld.bu	$r13,$r12,0
1c006260:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006264:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00628c <main+0xb0c>
1c006268:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00626c:	02a0858c 	addi.w	$r12,$r12,-2015(0x821)
1c006270:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c006274:	2900018d 	st.b	$r13,$r12,0
1c006278:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00627c:	02a0418c 	addi.w	$r12,$r12,-2032(0x810)
1c006280:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c006284:	2900018d 	st.b	$r13,$r12,0
1c006288:	5002dc00 	b	732(0x2dc) # 1c006564 <main+0xde4>
1c00628c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006290:	02bd358c 	addi.w	$r12,$r12,-179(0xf4d)
1c006294:	2a00018d 	ld.bu	$r13,$r12,0
1c006298:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00629c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0062c4 <main+0xb44>
1c0062a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062a4:	029fa58c 	addi.w	$r12,$r12,2025(0x7e9)
1c0062a8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0062ac:	2900018d 	st.b	$r13,$r12,0
1c0062b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062b4:	029f618c 	addi.w	$r12,$r12,2008(0x7d8)
1c0062b8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0062bc:	2900018d 	st.b	$r13,$r12,0
1c0062c0:	5002a400 	b	676(0x2a4) # 1c006564 <main+0xde4>
1c0062c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062c8:	02bc558c 	addi.w	$r12,$r12,-235(0xf15)
1c0062cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0062d0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0062d4:	5c0291ac 	bne	$r13,$r12,656(0x290) # 1c006564 <main+0xde4>
1c0062d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062dc:	029ec58c 	addi.w	$r12,$r12,1969(0x7b1)
1c0062e0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0062e4:	2900018d 	st.b	$r13,$r12,0
1c0062e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062ec:	029e818c 	addi.w	$r12,$r12,1952(0x7a0)
1c0062f0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0062f4:	2900018d 	st.b	$r13,$r12,0
1c0062f8:	50026c00 	b	620(0x26c) # 1c006564 <main+0xde4>
1c0062fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006300:	029e318c 	addi.w	$r12,$r12,1932(0x78c)
1c006304:	2a00018d 	ld.bu	$r13,$r12,0
1c006308:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c00630c:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c006338 <main+0xbb8>
1c006310:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006314:	54027000 	bl	624(0x270) # 1c006584 <interface_display>
1c006318:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00631c:	029dc58c 	addi.w	$r12,$r12,1905(0x771)
1c006320:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006324:	2900018d 	st.b	$r13,$r12,0
1c006328:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00632c:	029d818c 	addi.w	$r12,$r12,1888(0x760)
1c006330:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006334:	2900018d 	st.b	$r13,$r12,0
1c006338:	57c78bff 	bl	-14456(0xfffc788) # 1c002ac0 <Add_FR>
1c00633c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006340:	02ba758c 	addi.w	$r12,$r12,-355(0xe9d)
1c006344:	2a00018d 	ld.bu	$r13,$r12,0
1c006348:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00634c:	5c0221ac 	bne	$r13,$r12,544(0x220) # 1c00656c <main+0xdec>
1c006350:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006354:	029ce58c 	addi.w	$r12,$r12,1849(0x739)
1c006358:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00635c:	2900018d 	st.b	$r13,$r12,0
1c006360:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006364:	029ca18c 	addi.w	$r12,$r12,1832(0x728)
1c006368:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00636c:	2900018d 	st.b	$r13,$r12,0
1c006370:	5001fc00 	b	508(0x1fc) # 1c00656c <main+0xdec>
1c006374:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006378:	029c518c 	addi.w	$r12,$r12,1812(0x714)
1c00637c:	2a00018d 	ld.bu	$r13,$r12,0
1c006380:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c006384:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00639c <main+0xc1c>
1c006388:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00638c:	5401f800 	bl	504(0x1f8) # 1c006584 <interface_display>
1c006390:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006394:	029be18c 	addi.w	$r12,$r12,1784(0x6f8)
1c006398:	29000180 	st.b	$r0,$r12,0
1c00639c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063a0:	02b8f58c 	addi.w	$r12,$r12,-451(0xe3d)
1c0063a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0063a8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0063ac:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0063d4 <main+0xc54>
1c0063b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063b4:	029b658c 	addi.w	$r12,$r12,1753(0x6d9)
1c0063b8:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c0063bc:	2900018d 	st.b	$r13,$r12,0
1c0063c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063c4:	029b218c 	addi.w	$r12,$r12,1736(0x6c8)
1c0063c8:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c0063cc:	2900018d 	st.b	$r13,$r12,0
1c0063d0:	5001a400 	b	420(0x1a4) # 1c006574 <main+0xdf4>
1c0063d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063d8:	02b8158c 	addi.w	$r12,$r12,-507(0xe05)
1c0063dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0063e0:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0063e4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00640c <main+0xc8c>
1c0063e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063ec:	029a858c 	addi.w	$r12,$r12,1697(0x6a1)
1c0063f0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0063f4:	2900018d 	st.b	$r13,$r12,0
1c0063f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063fc:	029a418c 	addi.w	$r12,$r12,1680(0x690)
1c006400:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006404:	2900018d 	st.b	$r13,$r12,0
1c006408:	50016c00 	b	364(0x16c) # 1c006574 <main+0xdf4>
1c00640c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006410:	02b7358c 	addi.w	$r12,$r12,-563(0xdcd)
1c006414:	2a00018d 	ld.bu	$r13,$r12,0
1c006418:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00641c:	5c0159ac 	bne	$r13,$r12,344(0x158) # 1c006574 <main+0xdf4>
1c006420:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006424:	0299a58c 	addi.w	$r12,$r12,1641(0x669)
1c006428:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00642c:	2900018d 	st.b	$r13,$r12,0
1c006430:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006434:	0299618c 	addi.w	$r12,$r12,1624(0x658)
1c006438:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00643c:	2900018d 	st.b	$r13,$r12,0
1c006440:	50013400 	b	308(0x134) # 1c006574 <main+0xdf4>
1c006444:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006448:	0299118c 	addi.w	$r12,$r12,1604(0x644)
1c00644c:	2a00018d 	ld.bu	$r13,$r12,0
1c006450:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c006454:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c006484 <main+0xd04>
1c006458:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00645c:	54012800 	bl	296(0x128) # 1c006584 <interface_display>
1c006460:	57cd07ff 	bl	-13052(0xfffcd04) # 1c003164 <Del_FR_Lib>
1c006464:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006468:	0298958c 	addi.w	$r12,$r12,1573(0x625)
1c00646c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006470:	2900018d 	st.b	$r13,$r12,0
1c006474:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006478:	0298518c 	addi.w	$r12,$r12,1556(0x614)
1c00647c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006480:	2900018d 	st.b	$r13,$r12,0
1c006484:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006488:	02b5558c 	addi.w	$r12,$r12,-683(0xd55)
1c00648c:	2a00018d 	ld.bu	$r13,$r12,0
1c006490:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006494:	5c00e9ac 	bne	$r13,$r12,232(0xe8) # 1c00657c <main+0xdfc>
1c006498:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00649c:	0297c58c 	addi.w	$r12,$r12,1521(0x5f1)
1c0064a0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0064a4:	2900018d 	st.b	$r13,$r12,0
1c0064a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064ac:	0297818c 	addi.w	$r12,$r12,1504(0x5e0)
1c0064b0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0064b4:	2900018d 	st.b	$r13,$r12,0
1c0064b8:	5000c400 	b	196(0xc4) # 1c00657c <main+0xdfc>
1c0064bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0064c0:	02b4798c 	addi.w	$r12,$r12,-738(0xd1e)
1c0064c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0064c8:	47f3419f 	bnez	$r12,-3264(0x7ff340) # 1c005808 <main+0x88>
1c0064cc:	57dc23ff 	bl	-9184(0xfffdc20) # 1c0040ec <OLED_CLS>
1c0064d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0064d4:	02b4298c 	addi.w	$r12,$r12,-758(0xd0a)
1c0064d8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0064dc:	2900018d 	st.b	$r13,$r12,0
1c0064e0:	53f32bff 	b	-3288(0xffff328) # 1c005808 <main+0x88>
1c0064e4:	03400000 	andi	$r0,$r0,0x0
1c0064e8:	53f323ff 	b	-3296(0xffff320) # 1c005808 <main+0x88>
1c0064ec:	03400000 	andi	$r0,$r0,0x0
1c0064f0:	53f31bff 	b	-3304(0xffff318) # 1c005808 <main+0x88>
1c0064f4:	03400000 	andi	$r0,$r0,0x0
1c0064f8:	53f313ff 	b	-3312(0xffff310) # 1c005808 <main+0x88>
1c0064fc:	03400000 	andi	$r0,$r0,0x0
1c006500:	53f30bff 	b	-3320(0xffff308) # 1c005808 <main+0x88>
1c006504:	03400000 	andi	$r0,$r0,0x0
1c006508:	53f303ff 	b	-3328(0xffff300) # 1c005808 <main+0x88>
1c00650c:	03400000 	andi	$r0,$r0,0x0
1c006510:	53f2fbff 	b	-3336(0xffff2f8) # 1c005808 <main+0x88>
1c006514:	03400000 	andi	$r0,$r0,0x0
1c006518:	53f2f3ff 	b	-3344(0xffff2f0) # 1c005808 <main+0x88>
1c00651c:	03400000 	andi	$r0,$r0,0x0
1c006520:	53f2ebff 	b	-3352(0xffff2e8) # 1c005808 <main+0x88>
1c006524:	03400000 	andi	$r0,$r0,0x0
1c006528:	53f2e3ff 	b	-3360(0xffff2e0) # 1c005808 <main+0x88>
1c00652c:	03400000 	andi	$r0,$r0,0x0
1c006530:	53f2dbff 	b	-3368(0xffff2d8) # 1c005808 <main+0x88>
1c006534:	03400000 	andi	$r0,$r0,0x0
1c006538:	53f2d3ff 	b	-3376(0xffff2d0) # 1c005808 <main+0x88>
1c00653c:	03400000 	andi	$r0,$r0,0x0
1c006540:	53f2cbff 	b	-3384(0xffff2c8) # 1c005808 <main+0x88>
1c006544:	03400000 	andi	$r0,$r0,0x0
1c006548:	53f2c3ff 	b	-3392(0xffff2c0) # 1c005808 <main+0x88>
1c00654c:	03400000 	andi	$r0,$r0,0x0
1c006550:	53f2bbff 	b	-3400(0xffff2b8) # 1c005808 <main+0x88>
1c006554:	03400000 	andi	$r0,$r0,0x0
1c006558:	53f2b3ff 	b	-3408(0xffff2b0) # 1c005808 <main+0x88>
1c00655c:	03400000 	andi	$r0,$r0,0x0
1c006560:	53f2abff 	b	-3416(0xffff2a8) # 1c005808 <main+0x88>
1c006564:	03400000 	andi	$r0,$r0,0x0
1c006568:	53f2a3ff 	b	-3424(0xffff2a0) # 1c005808 <main+0x88>
1c00656c:	03400000 	andi	$r0,$r0,0x0
1c006570:	53f29bff 	b	-3432(0xffff298) # 1c005808 <main+0x88>
1c006574:	03400000 	andi	$r0,$r0,0x0
1c006578:	53f293ff 	b	-3440(0xffff290) # 1c005808 <main+0x88>
1c00657c:	03400000 	andi	$r0,$r0,0x0
1c006580:	53f28bff 	b	-3448(0xffff288) # 1c005808 <main+0x88>

1c006584 <interface_display>:
interface_display():
1c006584:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006588:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00658c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006590:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006594:	0015008c 	move	$r12,$r4
1c006598:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00659c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0065a0:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c0065a4:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c006e20 <interface_display+0x89c>
1c0065a8:	0040898d 	slli.w	$r13,$r12,0x2
1c0065ac:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0065b0:	0282818c 	addi.w	$r12,$r12,160(0xa0)
1c0065b4:	001031ac 	add.w	$r12,$r13,$r12
1c0065b8:	2880018c 	ld.w	$r12,$r12,0
1c0065bc:	4c000180 	jirl	$r0,$r12,0
1c0065c0:	57db2fff 	bl	-9428(0xfffdb2c) # 1c0040ec <OLED_CLS>
1c0065c4:	1c000068 	pcaddu12i	$r8,3(0x3)
1c0065c8:	02bb0108 	addi.w	$r8,$r8,-320(0xec0)
1c0065cc:	02801407 	addi.w	$r7,$r0,5(0x5)
1c0065d0:	02814006 	addi.w	$r6,$r0,80(0x50)
1c0065d4:	00150005 	move	$r5,$r0
1c0065d8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0065dc:	57deefff 	bl	-8468(0xfffdeec) # 1c0044c8 <OLED_DrawBMP>
1c0065e0:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c0065e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0065e8:	00150004 	move	$r4,$r0
1c0065ec:	57dd5fff 	bl	-8868(0xfffdd5c) # 1c004348 <OLED_ShowCN>
1c0065f0:	02802006 	addi.w	$r6,$r0,8(0x8)
1c0065f4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0065f8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0065fc:	57dd4fff 	bl	-8884(0xfffdd4c) # 1c004348 <OLED_ShowCN>
1c006600:	02803406 	addi.w	$r6,$r0,13(0xd)
1c006604:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006608:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c00660c:	57dd3fff 	bl	-8900(0xfffdd3c) # 1c004348 <OLED_ShowCN>
1c006610:	02803806 	addi.w	$r6,$r0,14(0xe)
1c006614:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006618:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c00661c:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c004348 <OLED_ShowCN>
1c006620:	50080000 	b	2048(0x800) # 1c006e20 <interface_display+0x89c>
1c006624:	57dacbff 	bl	-9528(0xfffdac8) # 1c0040ec <OLED_CLS>
1c006628:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c00662c:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c006630:	00150005 	move	$r5,$r0
1c006634:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006638:	57de07ff 	bl	-8700(0xfffde04) # 1c00443c <OLED_ShowCN_STR>
1c00663c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006640:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006644:	02bfe0c6 	addi.w	$r6,$r6,-8(0xff8)
1c006648:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00664c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006650:	57dacbff 	bl	-9528(0xfffdac8) # 1c004118 <OLED_ShowStr>
1c006654:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006658:	02801806 	addi.w	$r6,$r0,6(0x6)
1c00665c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006660:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006664:	57dddbff 	bl	-8744(0xfffddd8) # 1c00443c <OLED_ShowCN_STR>
1c006668:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00666c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006670:	02bf40c6 	addi.w	$r6,$r6,-48(0xfd0)
1c006674:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006678:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00667c:	57da9fff 	bl	-9572(0xfffda9c) # 1c004118 <OLED_ShowStr>
1c006680:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006684:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006688:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00668c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006690:	57ddafff 	bl	-8788(0xfffddac) # 1c00443c <OLED_ShowCN_STR>
1c006694:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006698:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00669c:	02bea0c6 	addi.w	$r6,$r6,-88(0xfa8)
1c0066a0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0066a4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0066a8:	57da73ff 	bl	-9616(0xfffda70) # 1c004118 <OLED_ShowStr>
1c0066ac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066b0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0066b4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0066b8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0066bc:	57dd83ff 	bl	-8832(0xfffdd80) # 1c00443c <OLED_ShowCN_STR>
1c0066c0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066c4:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c0066c8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0066cc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0066d0:	57dd6fff 	bl	-8852(0xfffdd6c) # 1c00443c <OLED_ShowCN_STR>
1c0066d4:	50074c00 	b	1868(0x74c) # 1c006e20 <interface_display+0x89c>
1c0066d8:	57da17ff 	bl	-9708(0xfffda14) # 1c0040ec <OLED_CLS>
1c0066dc:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0066e0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0066e4:	00150005 	move	$r5,$r0
1c0066e8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0066ec:	57dd53ff 	bl	-8880(0xfffdd50) # 1c00443c <OLED_ShowCN_STR>
1c0066f0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066f4:	02803406 	addi.w	$r6,$r0,13(0xd)
1c0066f8:	00150005 	move	$r5,$r0
1c0066fc:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006700:	57dd3fff 	bl	-8900(0xfffdd3c) # 1c00443c <OLED_ShowCN_STR>
1c006704:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006708:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00670c:	02bcc0c6 	addi.w	$r6,$r6,-208(0xf30)
1c006710:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006714:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006718:	57da03ff 	bl	-9728(0xfffda00) # 1c004118 <OLED_ShowStr>
1c00671c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006720:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006724:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006728:	57dc23ff 	bl	-9184(0xfffdc20) # 1c004348 <OLED_ShowCN>
1c00672c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006730:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006734:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006738:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c00673c:	57dd03ff 	bl	-8960(0xfffdd00) # 1c00443c <OLED_ShowCN_STR>
1c006740:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006744:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006748:	02bbe0c6 	addi.w	$r6,$r6,-264(0xef8)
1c00674c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006750:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006754:	57d9c7ff 	bl	-9788(0xfffd9c4) # 1c004118 <OLED_ShowStr>
1c006758:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00675c:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006760:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006764:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006768:	57dcd7ff 	bl	-9004(0xfffdcd4) # 1c00443c <OLED_ShowCN_STR>
1c00676c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006770:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006774:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006778:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00677c:	57dcc3ff 	bl	-9024(0xfffdcc0) # 1c00443c <OLED_ShowCN_STR>
1c006780:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006784:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006788:	02baf0c6 	addi.w	$r6,$r6,-324(0xebc)
1c00678c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006790:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006794:	57d987ff 	bl	-9852(0xfffd984) # 1c004118 <OLED_ShowStr>
1c006798:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00679c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0067a0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0067a4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0067a8:	57dc97ff 	bl	-9068(0xfffdc94) # 1c00443c <OLED_ShowCN_STR>
1c0067ac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0067b0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0067b4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0067b8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0067bc:	57dc83ff 	bl	-9088(0xfffdc80) # 1c00443c <OLED_ShowCN_STR>
1c0067c0:	50066000 	b	1632(0x660) # 1c006e20 <interface_display+0x89c>
1c0067c4:	57d92bff 	bl	-9944(0xfffd928) # 1c0040ec <OLED_CLS>
1c0067c8:	02805806 	addi.w	$r6,$r0,22(0x16)
1c0067cc:	00150005 	move	$r5,$r0
1c0067d0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0067d4:	57db77ff 	bl	-9356(0xfffdb74) # 1c004348 <OLED_ShowCN>
1c0067d8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0067dc:	02808406 	addi.w	$r6,$r0,33(0x21)
1c0067e0:	00150005 	move	$r5,$r0
1c0067e4:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c0067e8:	57dc57ff 	bl	-9132(0xfffdc54) # 1c00443c <OLED_ShowCN_STR>
1c0067ec:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0067f0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0067f4:	00150005 	move	$r5,$r0
1c0067f8:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c0067fc:	57dc43ff 	bl	-9152(0xfffdc40) # 1c00443c <OLED_ShowCN_STR>
1c006800:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006804:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006808:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00680c:	00150004 	move	$r4,$r0
1c006810:	57dc2fff 	bl	-9172(0xfffdc2c) # 1c00443c <OLED_ShowCN_STR>
1c006814:	50060c00 	b	1548(0x60c) # 1c006e20 <interface_display+0x89c>
1c006818:	57d8d7ff 	bl	-10028(0xfffd8d4) # 1c0040ec <OLED_CLS>
1c00681c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006820:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006824:	00150005 	move	$r5,$r0
1c006828:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00682c:	57dc13ff 	bl	-9200(0xfffdc10) # 1c00443c <OLED_ShowCN_STR>
1c006830:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006834:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006838:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00683c:	00150004 	move	$r4,$r0
1c006840:	57dbffff 	bl	-9220(0xfffdbfc) # 1c00443c <OLED_ShowCN_STR>
1c006844:	5005dc00 	b	1500(0x5dc) # 1c006e20 <interface_display+0x89c>
1c006848:	57d8a7ff 	bl	-10076(0xfffd8a4) # 1c0040ec <OLED_CLS>
1c00684c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006850:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c006854:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006858:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c00685c:	57dbe3ff 	bl	-9248(0xfffdbe0) # 1c00443c <OLED_ShowCN_STR>
1c006860:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006864:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c006868:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00686c:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c006870:	57dbcfff 	bl	-9268(0xfffdbcc) # 1c00443c <OLED_ShowCN_STR>
1c006874:	5005ac00 	b	1452(0x5ac) # 1c006e20 <interface_display+0x89c>
1c006878:	57d877ff 	bl	-10124(0xfffd874) # 1c0040ec <OLED_CLS>
1c00687c:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006880:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006884:	00150005 	move	$r5,$r0
1c006888:	00150004 	move	$r4,$r0
1c00688c:	57dbb3ff 	bl	-9296(0xfffdbb0) # 1c00443c <OLED_ShowCN_STR>
1c006890:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006894:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006898:	00150005 	move	$r5,$r0
1c00689c:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c0068a0:	57db9fff 	bl	-9316(0xfffdb9c) # 1c00443c <OLED_ShowCN_STR>
1c0068a4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0068a8:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0068ac:	00150005 	move	$r5,$r0
1c0068b0:	02818004 	addi.w	$r4,$r0,96(0x60)
1c0068b4:	57db8bff 	bl	-9336(0xfffdb88) # 1c00443c <OLED_ShowCN_STR>
1c0068b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0068bc:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c0068c0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0068c4:	00150004 	move	$r4,$r0
1c0068c8:	57db77ff 	bl	-9356(0xfffdb74) # 1c00443c <OLED_ShowCN_STR>
1c0068cc:	50055400 	b	1364(0x554) # 1c006e20 <interface_display+0x89c>
1c0068d0:	57d81fff 	bl	-10212(0xfffd81c) # 1c0040ec <OLED_CLS>
1c0068d4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0068d8:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c0068dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0068e0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0068e4:	57db5bff 	bl	-9384(0xfffdb58) # 1c00443c <OLED_ShowCN_STR>
1c0068e8:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c0068ec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0068f0:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c0068f4:	57da57ff 	bl	-9644(0xfffda54) # 1c004348 <OLED_ShowCN>
1c0068f8:	02808006 	addi.w	$r6,$r0,32(0x20)
1c0068fc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006900:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c006904:	57da47ff 	bl	-9660(0xfffda44) # 1c004348 <OLED_ShowCN>
1c006908:	50051800 	b	1304(0x518) # 1c006e20 <interface_display+0x89c>
1c00690c:	57d7e3ff 	bl	-10272(0xfffd7e0) # 1c0040ec <OLED_CLS>
1c006910:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006914:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c006918:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00691c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c006920:	57db1fff 	bl	-9444(0xfffdb1c) # 1c00443c <OLED_ShowCN_STR>
1c006924:	5004fc00 	b	1276(0x4fc) # 1c006e20 <interface_display+0x89c>
1c006928:	57d7c7ff 	bl	-10300(0xfffd7c4) # 1c0040ec <OLED_CLS>
1c00692c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006930:	00150005 	move	$r5,$r0
1c006934:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006938:	57da13ff 	bl	-9712(0xfffda10) # 1c004348 <OLED_ShowCN>
1c00693c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006940:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006944:	00150005 	move	$r5,$r0
1c006948:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c00694c:	57daf3ff 	bl	-9488(0xfffdaf0) # 1c00443c <OLED_ShowCN_STR>
1c006950:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006954:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006958:	02b390c6 	addi.w	$r6,$r6,-796(0xce4)
1c00695c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006960:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006964:	57d7b7ff 	bl	-10316(0xfffd7b4) # 1c004118 <OLED_ShowStr>
1c006968:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00696c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006970:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006974:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006978:	57dac7ff 	bl	-9532(0xfffdac4) # 1c00443c <OLED_ShowCN_STR>
1c00697c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006980:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006984:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006988:	57d9c3ff 	bl	-9792(0xfffd9c0) # 1c004348 <OLED_ShowCN>
1c00698c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006990:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006994:	02b2b0c6 	addi.w	$r6,$r6,-852(0xcac)
1c006998:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00699c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0069a0:	57d77bff 	bl	-10376(0xfffd778) # 1c004118 <OLED_ShowStr>
1c0069a4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069a8:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0069ac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069b0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0069b4:	57da8bff 	bl	-9592(0xfffda88) # 1c00443c <OLED_ShowCN_STR>
1c0069b8:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0069bc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069c0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0069c4:	57d987ff 	bl	-9852(0xfffd984) # 1c004348 <OLED_ShowCN>
1c0069c8:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0069cc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069d0:	02816004 	addi.w	$r4,$r0,88(0x58)
1c0069d4:	57d977ff 	bl	-9868(0xfffd974) # 1c004348 <OLED_ShowCN>
1c0069d8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0069e0:	02b190c6 	addi.w	$r6,$r6,-924(0xc64)
1c0069e4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0069e8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0069ec:	57d72fff 	bl	-10452(0xfffd72c) # 1c004118 <OLED_ShowStr>
1c0069f0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069f4:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0069f8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0069fc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a00:	57da3fff 	bl	-9668(0xfffda3c) # 1c00443c <OLED_ShowCN_STR>
1c006a04:	50041c00 	b	1052(0x41c) # 1c006e20 <interface_display+0x89c>
1c006a08:	57d6e7ff 	bl	-10524(0xfffd6e4) # 1c0040ec <OLED_CLS>
1c006a0c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a10:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006a14:	00150005 	move	$r5,$r0
1c006a18:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a1c:	57da23ff 	bl	-9696(0xfffda20) # 1c00443c <OLED_ShowCN_STR>
1c006a20:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a24:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006a28:	00150005 	move	$r5,$r0
1c006a2c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006a30:	57da0fff 	bl	-9716(0xfffda0c) # 1c00443c <OLED_ShowCN_STR>
1c006a34:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a38:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006a3c:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c006a40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a44:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a48:	57d6d3ff 	bl	-10544(0xfffd6d0) # 1c004118 <OLED_ShowStr>
1c006a4c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a50:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006a54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a58:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a5c:	57d9e3ff 	bl	-9760(0xfffd9e0) # 1c00443c <OLED_ShowCN_STR>
1c006a60:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a64:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006a68:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a6c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006a70:	57d9cfff 	bl	-9780(0xfffd9cc) # 1c00443c <OLED_ShowCN_STR>
1c006a74:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a78:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006a7c:	02af10c6 	addi.w	$r6,$r6,-1084(0xbc4)
1c006a80:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006a84:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a88:	57d693ff 	bl	-10608(0xfffd690) # 1c004118 <OLED_ShowStr>
1c006a8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a90:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006a94:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006a98:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a9c:	57d9a3ff 	bl	-9824(0xfffd9a0) # 1c00443c <OLED_ShowCN_STR>
1c006aa0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006aa4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006aa8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006aac:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006ab0:	57d98fff 	bl	-9844(0xfffd98c) # 1c00443c <OLED_ShowCN_STR>
1c006ab4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006ab8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006abc:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c006ac0:	57d88bff 	bl	-10104(0xfffd888) # 1c004348 <OLED_ShowCN>
1c006ac4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ac8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006acc:	02ade0c6 	addi.w	$r6,$r6,-1160(0xb78)
1c006ad0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006ad4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006ad8:	57d643ff 	bl	-10688(0xfffd640) # 1c004118 <OLED_ShowStr>
1c006adc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ae0:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006ae4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006ae8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006aec:	57d953ff 	bl	-9904(0xfffd950) # 1c00443c <OLED_ShowCN_STR>
1c006af0:	50033000 	b	816(0x330) # 1c006e20 <interface_display+0x89c>
1c006af4:	57d5fbff 	bl	-10760(0xfffd5f8) # 1c0040ec <OLED_CLS>
1c006af8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006afc:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006b00:	00150005 	move	$r5,$r0
1c006b04:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006b08:	57d937ff 	bl	-9932(0xfffd934) # 1c00443c <OLED_ShowCN_STR>
1c006b0c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006b10:	00150005 	move	$r5,$r0
1c006b14:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006b18:	57d833ff 	bl	-10192(0xfffd830) # 1c004348 <OLED_ShowCN>
1c006b1c:	50030400 	b	772(0x304) # 1c006e20 <interface_display+0x89c>
1c006b20:	57d5cfff 	bl	-10804(0xfffd5cc) # 1c0040ec <OLED_CLS>
1c006b24:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b28:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006b2c:	00150005 	move	$r5,$r0
1c006b30:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006b34:	57d90bff 	bl	-9976(0xfffd908) # 1c00443c <OLED_ShowCN_STR>
1c006b38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b3c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006b40:	00150005 	move	$r5,$r0
1c006b44:	02811004 	addi.w	$r4,$r0,68(0x44)
1c006b48:	57d8f7ff 	bl	-9996(0xfffd8f4) # 1c00443c <OLED_ShowCN_STR>
1c006b4c:	5002d400 	b	724(0x2d4) # 1c006e20 <interface_display+0x89c>
1c006b50:	57d59fff 	bl	-10852(0xfffd59c) # 1c0040ec <OLED_CLS>
1c006b54:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c006b58:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006b5c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006b60:	57d7ebff 	bl	-10264(0xfffd7e8) # 1c004348 <OLED_ShowCN>
1c006b64:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b68:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006b6c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006b70:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006b74:	57d8cbff 	bl	-10040(0xfffd8c8) # 1c00443c <OLED_ShowCN_STR>
1c006b78:	5002a800 	b	680(0x2a8) # 1c006e20 <interface_display+0x89c>
1c006b7c:	57d573ff 	bl	-10896(0xfffd570) # 1c0040ec <OLED_CLS>
1c006b80:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b84:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006b88:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006b8c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006b90:	57d8afff 	bl	-10068(0xfffd8ac) # 1c00443c <OLED_ShowCN_STR>
1c006b94:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c006b98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006b9c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006ba0:	57d7abff 	bl	-10328(0xfffd7a8) # 1c004348 <OLED_ShowCN>
1c006ba4:	02808006 	addi.w	$r6,$r0,32(0x20)
1c006ba8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006bac:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c006bb0:	57d79bff 	bl	-10344(0xfffd798) # 1c004348 <OLED_ShowCN>
1c006bb4:	50026c00 	b	620(0x26c) # 1c006e20 <interface_display+0x89c>
1c006bb8:	57d537ff 	bl	-10956(0xfffd534) # 1c0040ec <OLED_CLS>
1c006bbc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006bc0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006bc4:	00150005 	move	$r5,$r0
1c006bc8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006bcc:	57d873ff 	bl	-10128(0xfffd870) # 1c00443c <OLED_ShowCN_STR>
1c006bd0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006bd4:	00150005 	move	$r5,$r0
1c006bd8:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c006bdc:	57d76fff 	bl	-10388(0xfffd76c) # 1c004348 <OLED_ShowCN>
1c006be0:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006be4:	00150005 	move	$r5,$r0
1c006be8:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c006bec:	57d75fff 	bl	-10404(0xfffd75c) # 1c004348 <OLED_ShowCN>
1c006bf0:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006bf4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006bf8:	00150004 	move	$r4,$r0
1c006bfc:	57d74fff 	bl	-10420(0xfffd74c) # 1c004348 <OLED_ShowCN>
1c006c00:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006c04:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006c08:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006c0c:	57d73fff 	bl	-10436(0xfffd73c) # 1c004348 <OLED_ShowCN>
1c006c10:	50021000 	b	528(0x210) # 1c006e20 <interface_display+0x89c>
1c006c14:	57d4dbff 	bl	-11048(0xfffd4d8) # 1c0040ec <OLED_CLS>
1c006c18:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c1c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006c20:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c24:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006c28:	57d817ff 	bl	-10220(0xfffd814) # 1c00443c <OLED_ShowCN_STR>
1c006c2c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c30:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006c34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c38:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006c3c:	57d803ff 	bl	-10240(0xfffd800) # 1c00443c <OLED_ShowCN_STR>
1c006c40:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006c44:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c48:	02816404 	addi.w	$r4,$r0,89(0x59)
1c006c4c:	57d6ffff 	bl	-10500(0xfffd6fc) # 1c004348 <OLED_ShowCN>
1c006c50:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006c54:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006c58:	00150004 	move	$r4,$r0
1c006c5c:	57d6efff 	bl	-10516(0xfffd6ec) # 1c004348 <OLED_ShowCN>
1c006c60:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006c64:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006c68:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006c6c:	57d6dfff 	bl	-10532(0xfffd6dc) # 1c004348 <OLED_ShowCN>
1c006c70:	5001b000 	b	432(0x1b0) # 1c006e20 <interface_display+0x89c>
1c006c74:	57d47bff 	bl	-11144(0xfffd478) # 1c0040ec <OLED_CLS>
1c006c78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c7c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006c80:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c84:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006c88:	57d7b7ff 	bl	-10316(0xfffd7b4) # 1c00443c <OLED_ShowCN_STR>
1c006c8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c90:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c006c94:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c98:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006c9c:	57d7a3ff 	bl	-10336(0xfffd7a0) # 1c00443c <OLED_ShowCN_STR>
1c006ca0:	50018000 	b	384(0x180) # 1c006e20 <interface_display+0x89c>
1c006ca4:	57d44bff 	bl	-11192(0xfffd448) # 1c0040ec <OLED_CLS>
1c006ca8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cac:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006cb0:	00150005 	move	$r5,$r0
1c006cb4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006cb8:	57d787ff 	bl	-10364(0xfffd784) # 1c00443c <OLED_ShowCN_STR>
1c006cbc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cc0:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006cc4:	00150005 	move	$r5,$r0
1c006cc8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006ccc:	57d773ff 	bl	-10384(0xfffd770) # 1c00443c <OLED_ShowCN_STR>
1c006cd0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cd4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cd8:	02a590c6 	addi.w	$r6,$r6,-1692(0x964)
1c006cdc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ce0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006ce4:	57d437ff 	bl	-11212(0xfffd434) # 1c004118 <OLED_ShowStr>
1c006ce8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cec:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006cf0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006cf4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006cf8:	57d747ff 	bl	-10428(0xfffd744) # 1c00443c <OLED_ShowCN_STR>
1c006cfc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d00:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006d04:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006d08:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006d0c:	57d733ff 	bl	-10448(0xfffd730) # 1c00443c <OLED_ShowCN_STR>
1c006d10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d14:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006d18:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c006d1c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d20:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006d24:	57d3f7ff 	bl	-11276(0xfffd3f4) # 1c004118 <OLED_ShowStr>
1c006d28:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d2c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006d30:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d34:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d38:	57d707ff 	bl	-10492(0xfffd704) # 1c00443c <OLED_ShowCN_STR>
1c006d3c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d40:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006d44:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d48:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006d4c:	57d6f3ff 	bl	-10512(0xfffd6f0) # 1c00443c <OLED_ShowCN_STR>
1c006d50:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006d54:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d58:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c006d5c:	57d5efff 	bl	-10772(0xfffd5ec) # 1c004348 <OLED_ShowCN>
1c006d60:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d64:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006d68:	02a370c6 	addi.w	$r6,$r6,-1828(0x8dc)
1c006d6c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006d70:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006d74:	57d3a7ff 	bl	-11356(0xfffd3a4) # 1c004118 <OLED_ShowStr>
1c006d78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d7c:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006d80:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006d84:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d88:	57d6b7ff 	bl	-10572(0xfffd6b4) # 1c00443c <OLED_ShowCN_STR>
1c006d8c:	50009400 	b	148(0x94) # 1c006e20 <interface_display+0x89c>
1c006d90:	57d35fff 	bl	-11428(0xfffd35c) # 1c0040ec <OLED_CLS>
1c006d94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d98:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006d9c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006da0:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006da4:	57d69bff 	bl	-10600(0xfffd698) # 1c00443c <OLED_ShowCN_STR>
1c006da8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006dac:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006db0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006db4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006db8:	57d687ff 	bl	-10620(0xfffd684) # 1c00443c <OLED_ShowCN_STR>
1c006dbc:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006dc0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006dc4:	02816404 	addi.w	$r4,$r0,89(0x59)
1c006dc8:	57d583ff 	bl	-10880(0xfffd580) # 1c004348 <OLED_ShowCN>
1c006dcc:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006dd0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006dd4:	00150004 	move	$r4,$r0
1c006dd8:	57d573ff 	bl	-10896(0xfffd570) # 1c004348 <OLED_ShowCN>
1c006ddc:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006de0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006de4:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006de8:	57d563ff 	bl	-10912(0xfffd560) # 1c004348 <OLED_ShowCN>
1c006dec:	50003400 	b	52(0x34) # 1c006e20 <interface_display+0x89c>
1c006df0:	57d2ffff 	bl	-11524(0xfffd2fc) # 1c0040ec <OLED_CLS>
1c006df4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006df8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006dfc:	00150005 	move	$r5,$r0
1c006e00:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006e04:	57d63bff 	bl	-10696(0xfffd638) # 1c00443c <OLED_ShowCN_STR>
1c006e08:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e0c:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006e10:	00150005 	move	$r5,$r0
1c006e14:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006e18:	57d627ff 	bl	-10716(0xfffd624) # 1c00443c <OLED_ShowCN_STR>
1c006e1c:	03400000 	andi	$r0,$r0,0x0
1c006e20:	03400000 	andi	$r0,$r0,0x0
1c006e24:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006e28:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006e2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006e30:	4c000020 	jirl	$r0,$r1,0

1c006e34 <Write_ID>:
Write_ID():
1c006e34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006e38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006e3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006e40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006e44:	57e7c7ff 	bl	-6204(0xfffe7c4) # 1c005608 <Return_Card>
1c006e48:	0015008c 	move	$r12,$r4
1c006e4c:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c006e50:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c006e54:	40010d80 	beqz	$r12,268(0x10c) # 1c006f60 <Write_ID+0x12c>
1c006e58:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006e5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006e60:	50004400 	b	68(0x44) # 1c006ea4 <Write_ID+0x70>
1c006e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e68:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006e6c:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c006e70:	02b021ad 	addi.w	$r13,$r13,-1016(0xc08)
1c006e74:	0040898c 	slli.w	$r12,$r12,0x2
1c006e78:	001031ac 	add.w	$r12,$r13,$r12
1c006e7c:	2880018d 	ld.w	$r13,$r12,0
1c006e80:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c006e84:	02afd1ce 	addi.w	$r14,$r14,-1036(0xbf4)
1c006e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e8c:	0040898c 	slli.w	$r12,$r12,0x2
1c006e90:	001031cc 	add.w	$r12,$r14,$r12
1c006e94:	2980018d 	st.w	$r13,$r12,0
1c006e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e9c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006ea0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ea8:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c006e64 <Write_ID+0x30>
1c006eac:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c006eb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006eb4:	02af118c 	addi.w	$r12,$r12,-1084(0xbc4)
1c006eb8:	2980018d 	st.w	$r13,$r12,0
1c006ebc:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c006ec0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006ec4:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006ec8:	00150186 	move	$r6,$r12
1c006ecc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006ed0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c006ed4:	57d8b3ff 	bl	-10064(0xfffd8b0) # 1c004784 <OLED_ShowNum>
1c006ed8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c006edc:	03bf918c 	ori	$r12,$r12,0xfe4
1c006ee0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006ee4:	50001400 	b	20(0x14) # 1c006ef8 <Write_ID+0xc4>
1c006ee8:	03400000 	andi	$r0,$r0,0x0
1c006eec:	03400000 	andi	$r0,$r0,0x0
1c006ef0:	03400000 	andi	$r0,$r0,0x0
1c006ef4:	03400000 	andi	$r0,$r0,0x0
1c006ef8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006efc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006f00:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006f04:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006ee8 <Write_ID+0xb4>
1c006f08:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006f0c:	57f67bff 	bl	-2440(0xffff678) # 1c006584 <interface_display>
1c006f10:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c006f14:	03bf918c 	ori	$r12,$r12,0xfe4
1c006f18:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006f1c:	50001400 	b	20(0x14) # 1c006f30 <Write_ID+0xfc>
1c006f20:	03400000 	andi	$r0,$r0,0x0
1c006f24:	03400000 	andi	$r0,$r0,0x0
1c006f28:	03400000 	andi	$r0,$r0,0x0
1c006f2c:	03400000 	andi	$r0,$r0,0x0
1c006f30:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006f34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006f38:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c006f3c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006f20 <Write_ID+0xec>
1c006f40:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f44:	02ad258c 	addi.w	$r12,$r12,-1207(0xb49)
1c006f48:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006f4c:	2900018d 	st.b	$r13,$r12,0
1c006f50:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006f54:	02ace18c 	addi.w	$r12,$r12,-1224(0xb38)
1c006f58:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006f5c:	2900018d 	st.b	$r13,$r12,0
1c006f60:	03400000 	andi	$r0,$r0,0x0
1c006f64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006f68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006f6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006f70:	4c000020 	jirl	$r0,$r1,0

1c006f74 <Delate_ID>:
Delate_ID():
1c006f74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006f78:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006f7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006f80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006f84:	50002800 	b	40(0x28) # 1c006fac <Delate_ID+0x38>
1c006f88:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c006f8c:	02abb1ad 	addi.w	$r13,$r13,-1300(0xaec)
1c006f90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f94:	0040898c 	slli.w	$r12,$r12,0x2
1c006f98:	001031ac 	add.w	$r12,$r13,$r12
1c006f9c:	29800180 	st.w	$r0,$r12,0
1c006fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006fa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006fac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006fb0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006fb4:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c006f88 <Delate_ID+0x14>
1c006fb8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c006fbc:	03bf918c 	ori	$r12,$r12,0xfe4
1c006fc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006fc4:	50001400 	b	20(0x14) # 1c006fd8 <Delate_ID+0x64>
1c006fc8:	03400000 	andi	$r0,$r0,0x0
1c006fcc:	03400000 	andi	$r0,$r0,0x0
1c006fd0:	03400000 	andi	$r0,$r0,0x0
1c006fd4:	03400000 	andi	$r0,$r0,0x0
1c006fd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006fdc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006fe0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006fe4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006fc8 <Delate_ID+0x54>
1c006fe8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006fec:	02aa858c 	addi.w	$r12,$r12,-1375(0xaa1)
1c006ff0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006ff4:	2900018d 	st.b	$r13,$r12,0
1c006ff8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006ffc:	02aa418c 	addi.w	$r12,$r12,-1392(0xa90)
1c007000:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c007004:	2900018d 	st.b	$r13,$r12,0
1c007008:	03400000 	andi	$r0,$r0,0x0
1c00700c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007010:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007014:	4c000020 	jirl	$r0,$r1,0

1c007018 <Read_ID>:
Read_ID():
1c007018:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00701c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c007020:	2980a076 	st.w	$r22,$r3,40(0x28)
1c007024:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007028:	57e5e3ff 	bl	-6688(0xfffe5e0) # 1c005608 <Return_Card>
1c00702c:	0015008c 	move	$r12,$r4
1c007030:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c007034:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c007038:	40011980 	beqz	$r12,280(0x118) # 1c007150 <Read_ID+0x138>
1c00703c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c007040:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c007044:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007048:	6801098d 	bltu	$r12,$r13,264(0x108) # 1c007150 <Read_ID+0x138>
1c00704c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c007050:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c007054:	02a891ce 	addi.w	$r14,$r14,-1500(0xa24)
1c007058:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00705c:	0040898c 	slli.w	$r12,$r12,0x2
1c007060:	001031cc 	add.w	$r12,$r14,$r12
1c007064:	2880018c 	ld.w	$r12,$r12,0
1c007068:	5c00a1ac 	bne	$r13,$r12,160(0xa0) # 1c007108 <Read_ID+0xf0>
1c00706c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007070:	57f517ff 	bl	-2796(0xffff514) # 1c006584 <interface_display>
1c007074:	57c1c3ff 	bl	-15936(0xfffc1c0) # 1c003234 <SG90_Open>
1c007078:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c00707c:	03bdc58c 	ori	$r12,$r12,0xf71
1c007080:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007084:	50001400 	b	20(0x14) # 1c007098 <Read_ID+0x80>
1c007088:	03400000 	andi	$r0,$r0,0x0
1c00708c:	03400000 	andi	$r0,$r0,0x0
1c007090:	03400000 	andi	$r0,$r0,0x0
1c007094:	03400000 	andi	$r0,$r0,0x0
1c007098:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00709c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0070a0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0070a4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007088 <Read_ID+0x70>
1c0070a8:	57c1bbff 	bl	-15944(0xfffc1b8) # 1c003260 <SG90_Close>
1c0070ac:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0070b0:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c006584 <interface_display>
1c0070b4:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0070b8:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0070bc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0070c0:	50001400 	b	20(0x14) # 1c0070d4 <Read_ID+0xbc>
1c0070c4:	03400000 	andi	$r0,$r0,0x0
1c0070c8:	03400000 	andi	$r0,$r0,0x0
1c0070cc:	03400000 	andi	$r0,$r0,0x0
1c0070d0:	03400000 	andi	$r0,$r0,0x0
1c0070d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0070d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0070dc:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0070e0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0070c4 <Read_ID+0xac>
1c0070e4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0070e8:	02a6918c 	addi.w	$r12,$r12,-1628(0x9a4)
1c0070ec:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0070f0:	2900018d 	st.b	$r13,$r12,0
1c0070f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0070f8:	02a6558c 	addi.w	$r12,$r12,-1643(0x995)
1c0070fc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007100:	2900018d 	st.b	$r13,$r12,0
1c007104:	50004c00 	b	76(0x4c) # 1c007150 <Read_ID+0x138>
1c007108:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00710c:	57f47bff 	bl	-2952(0xffff478) # 1c006584 <interface_display>
1c007110:	57cb2bff 	bl	-13528(0xfffcb28) # 1c003c38 <Buzzer>
1c007114:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007118:	03bf918c 	ori	$r12,$r12,0xfe4
1c00711c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007120:	50001400 	b	20(0x14) # 1c007134 <Read_ID+0x11c>
1c007124:	03400000 	andi	$r0,$r0,0x0
1c007128:	03400000 	andi	$r0,$r0,0x0
1c00712c:	03400000 	andi	$r0,$r0,0x0
1c007130:	03400000 	andi	$r0,$r0,0x0
1c007134:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007138:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00713c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007140:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007124 <Read_ID+0x10c>
1c007144:	02801004 	addi.w	$r4,$r0,4(0x4)
1c007148:	57f43fff 	bl	-3012(0xffff43c) # 1c006584 <interface_display>
1c00714c:	03400000 	andi	$r0,$r0,0x0
1c007150:	03400000 	andi	$r0,$r0,0x0
1c007154:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007158:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00715c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007160:	4c000020 	jirl	$r0,$r1,0

1c007164 <Key_main>:
Key_main():
1c007164:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007168:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00716c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c007170:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007174:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c007178:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00717c:	0281858c 	addi.w	$r12,$r12,97(0x61)
1c007180:	2a00018c 	ld.bu	$r12,$r12,0
1c007184:	4003bd80 	beqz	$r12,956(0x3bc) # 1c007540 <Key_main+0x3dc>
1c007188:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00718c:	0281458c 	addi.w	$r12,$r12,81(0x51)
1c007190:	2a00018d 	ld.bu	$r13,$r12,0
1c007194:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007198:	6801b18d 	bltu	$r12,$r13,432(0x1b0) # 1c007348 <Key_main+0x1e4>
1c00719c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071a0:	28b9b18c 	ld.w	$r12,$r12,-404(0xe6c)
1c0071a4:	2880018d 	ld.w	$r13,$r12,0
1c0071a8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0071ac:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c00722c <Key_main+0xc8>
1c0071b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071b4:	28b9a18c 	ld.w	$r12,$r12,-408(0xe68)
1c0071b8:	2880018d 	ld.w	$r13,$r12,0
1c0071bc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0071c0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0071c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071c8:	28b9518c 	ld.w	$r12,$r12,-428(0xe54)
1c0071cc:	2980018d 	st.w	$r13,$r12,0
1c0071d0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0071d4:	0280258c 	addi.w	$r12,$r12,9(0x9)
1c0071d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0071dc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0071e0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0071e4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0071ec <Key_main+0x88>
1c0071e8:	002a0007 	break	0x7
1c0071ec:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0071f0:	0015018d 	move	$r13,$r12
1c0071f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071f8:	28b8918c 	ld.w	$r12,$r12,-476(0xe24)
1c0071fc:	2880018c 	ld.w	$r12,$r12,0
1c007200:	001031ad 	add.w	$r13,$r13,$r12
1c007204:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007208:	28b8518c 	ld.w	$r12,$r12,-492(0xe14)
1c00720c:	2980018d 	st.w	$r13,$r12,0
1c007210:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007214:	28b7e18c 	ld.w	$r12,$r12,-520(0xdf8)
1c007218:	2880018c 	ld.w	$r12,$r12,0
1c00721c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007220:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007224:	28b7a18c 	ld.w	$r12,$r12,-536(0xde8)
1c007228:	2980018d 	st.w	$r13,$r12,0
1c00722c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007230:	28b7b18c 	ld.w	$r12,$r12,-532(0xdec)
1c007234:	2880018c 	ld.w	$r12,$r12,0
1c007238:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00723c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007240:	28b7318c 	ld.w	$r12,$r12,-564(0xdcc)
1c007244:	2880018c 	ld.w	$r12,$r12,0
1c007248:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00724c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007250:	50006400 	b	100(0x64) # 1c0072b4 <Key_main+0x150>
1c007254:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c007258:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00725c:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c007260:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007268 <Key_main+0x104>
1c007264:	002a0007 	break	0x7
1c007268:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c00726c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c007270:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007274:	002135cc 	div.wu	$r12,$r14,$r13
1c007278:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007280 <Key_main+0x11c>
1c00727c:	002a0007 	break	0x7
1c007280:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007284:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007288:	00408d8c 	slli.w	$r12,$r12,0x3
1c00728c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007290:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007294:	02800407 	addi.w	$r7,$r0,1(0x1)
1c007298:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c00729c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0072a0:	00150184 	move	$r4,$r12
1c0072a4:	57d4e3ff 	bl	-11040(0xfffd4e0) # 1c004784 <OLED_ShowNum>
1c0072a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0072ac:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0072b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0072b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0072b8:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c007254 <Key_main+0xf0>
1c0072bc:	140002cc 	lu12i.w	$r12,22(0x16)
1c0072c0:	03b3298c 	ori	$r12,$r12,0xcca
1c0072c4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0072c8:	50001400 	b	20(0x14) # 1c0072dc <Key_main+0x178>
1c0072cc:	03400000 	andi	$r0,$r0,0x0
1c0072d0:	03400000 	andi	$r0,$r0,0x0
1c0072d4:	03400000 	andi	$r0,$r0,0x0
1c0072d8:	03400000 	andi	$r0,$r0,0x0
1c0072dc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0072e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0072e4:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0072e8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0072cc <Key_main+0x168>
1c0072ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0072f0:	50004400 	b	68(0x44) # 1c007334 <Key_main+0x1d0>
1c0072f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072f8:	28b4518c 	ld.w	$r12,$r12,-748(0xd14)
1c0072fc:	2880018d 	ld.w	$r13,$r12,0
1c007300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007304:	001131ac 	sub.w	$r12,$r13,$r12
1c007308:	00408d8c 	slli.w	$r12,$r12,0x3
1c00730c:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c007310:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007314:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007318:	028cc0c6 	addi.w	$r6,$r6,816(0x330)
1c00731c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007320:	00150184 	move	$r4,$r12
1c007324:	57cdf7ff 	bl	-12812(0xfffcdf4) # 1c004118 <OLED_ShowStr>
1c007328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00732c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007330:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007334:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007338:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00733c:	28b3418c 	ld.w	$r12,$r12,-816(0xcd0)
1c007340:	2880018c 	ld.w	$r12,$r12,0
1c007344:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c0072f4 <Key_main+0x190>
1c007348:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00734c:	50004400 	b	68(0x44) # 1c007390 <Key_main+0x22c>
1c007350:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007354:	029c41ad 	addi.w	$r13,$r13,1808(0x710)
1c007358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00735c:	0040898c 	slli.w	$r12,$r12,0x2
1c007360:	001031ac 	add.w	$r12,$r13,$r12
1c007364:	2880018d 	ld.w	$r13,$r12,0
1c007368:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00736c:	28b2c18c 	ld.w	$r12,$r12,-848(0xcb0)
1c007370:	2880018c 	ld.w	$r12,$r12,0
1c007374:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007384 <Key_main+0x220>
1c007378:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00737c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007380:	50001c00 	b	28(0x1c) # 1c00739c <Key_main+0x238>
1c007384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007388:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00738c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007390:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007394:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007398:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c007350 <Key_main+0x1ec>
1c00739c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0073a0:	02b8f58c 	addi.w	$r12,$r12,-451(0xe3d)
1c0073a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0073a8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0073ac:	5c0125ac 	bne	$r13,$r12,292(0x124) # 1c0074d0 <Key_main+0x36c>
1c0073b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0073b4:	4000bd80 	beqz	$r12,188(0xbc) # 1c007470 <Key_main+0x30c>
1c0073b8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0073bc:	57f1cbff 	bl	-3640(0xffff1c8) # 1c006584 <interface_display>
1c0073c0:	57be77ff 	bl	-16780(0xfffbe74) # 1c003234 <SG90_Open>
1c0073c4:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0073c8:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0073cc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0073d0:	50001400 	b	20(0x14) # 1c0073e4 <Key_main+0x280>
1c0073d4:	03400000 	andi	$r0,$r0,0x0
1c0073d8:	03400000 	andi	$r0,$r0,0x0
1c0073dc:	03400000 	andi	$r0,$r0,0x0
1c0073e0:	03400000 	andi	$r0,$r0,0x0
1c0073e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0073e8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0073ec:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0073f0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0073d4 <Key_main+0x270>
1c0073f4:	57c8b3ff 	bl	-14160(0xfffc8b0) # 1c003ca4 <Buzzer_one>
1c0073f8:	57be6bff 	bl	-16792(0xfffbe68) # 1c003260 <SG90_Close>
1c0073fc:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007400:	57f187ff 	bl	-3708(0xffff184) # 1c006584 <interface_display>
1c007404:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007408:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c00740c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c007410:	50001400 	b	20(0x14) # 1c007424 <Key_main+0x2c0>
1c007414:	03400000 	andi	$r0,$r0,0x0
1c007418:	03400000 	andi	$r0,$r0,0x0
1c00741c:	03400000 	andi	$r0,$r0,0x0
1c007420:	03400000 	andi	$r0,$r0,0x0
1c007424:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007428:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00742c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c007430:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007414 <Key_main+0x2b0>
1c007434:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007438:	0299518c 	addi.w	$r12,$r12,1620(0x654)
1c00743c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007440:	2900018d 	st.b	$r13,$r12,0
1c007444:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007448:	0299158c 	addi.w	$r12,$r12,1605(0x645)
1c00744c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007450:	2900018d 	st.b	$r13,$r12,0
1c007454:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007458:	28af118c 	ld.w	$r12,$r12,-1084(0xbc4)
1c00745c:	29800180 	st.w	$r0,$r12,0
1c007460:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007464:	28aea18c 	ld.w	$r12,$r12,-1112(0xba8)
1c007468:	29800180 	st.w	$r0,$r12,0
1c00746c:	50006400 	b	100(0x64) # 1c0074d0 <Key_main+0x36c>
1c007470:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007474:	57f113ff 	bl	-3824(0xffff110) # 1c006584 <interface_display>
1c007478:	57c7c3ff 	bl	-14400(0xfffc7c0) # 1c003c38 <Buzzer>
1c00747c:	57bde7ff 	bl	-16924(0xfffbde4) # 1c003260 <SG90_Close>
1c007480:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007484:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007488:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c00748c:	50001400 	b	20(0x14) # 1c0074a0 <Key_main+0x33c>
1c007490:	03400000 	andi	$r0,$r0,0x0
1c007494:	03400000 	andi	$r0,$r0,0x0
1c007498:	03400000 	andi	$r0,$r0,0x0
1c00749c:	03400000 	andi	$r0,$r0,0x0
1c0074a0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0074a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0074a8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0074ac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007490 <Key_main+0x32c>
1c0074b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074b4:	28ada18c 	ld.w	$r12,$r12,-1176(0xb68)
1c0074b8:	29800180 	st.w	$r0,$r12,0
1c0074bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074c0:	28ad318c 	ld.w	$r12,$r12,-1204(0xb4c)
1c0074c4:	29800180 	st.w	$r0,$r12,0
1c0074c8:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0074cc:	57f0bbff 	bl	-3912(0xffff0b8) # 1c006584 <interface_display>
1c0074d0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074d4:	02b4258c 	addi.w	$r12,$r12,-759(0xd09)
1c0074d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0074dc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0074e0:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007540 <Key_main+0x3dc>
1c0074e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074e8:	28acd18c 	ld.w	$r12,$r12,-1228(0xb34)
1c0074ec:	29800180 	st.w	$r0,$r12,0
1c0074f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074f4:	28ac618c 	ld.w	$r12,$r12,-1256(0xb18)
1c0074f8:	29800180 	st.w	$r0,$r12,0
1c0074fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007500:	50003400 	b	52(0x34) # 1c007534 <Key_main+0x3d0>
1c007504:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007508:	00408d8c 	slli.w	$r12,$r12,0x3
1c00750c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007510:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007514:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007518:	0284d0c6 	addi.w	$r6,$r6,308(0x134)
1c00751c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007520:	00150184 	move	$r4,$r12
1c007524:	57cbf7ff 	bl	-13324(0xfffcbf4) # 1c004118 <OLED_ShowStr>
1c007528:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00752c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007530:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007538:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00753c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007504 <Key_main+0x3a0>
1c007540:	03400000 	andi	$r0,$r0,0x0
1c007544:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007548:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00754c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007550:	4c000020 	jirl	$r0,$r1,0

1c007554 <Key>:
Key():
1c007554:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007558:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00755c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c007560:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007564:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007568:	02b1d58c 	addi.w	$r12,$r12,-907(0xc75)
1c00756c:	2a00018c 	ld.bu	$r12,$r12,0
1c007570:	4002f580 	beqz	$r12,756(0x2f4) # 1c007864 <Key+0x310>
1c007574:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007578:	02b1958c 	addi.w	$r12,$r12,-923(0xc65)
1c00757c:	2a00018d 	ld.bu	$r13,$r12,0
1c007580:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007584:	68015d8d 	bltu	$r12,$r13,348(0x15c) # 1c0076e0 <Key+0x18c>
1c007588:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00758c:	28aa018c 	ld.w	$r12,$r12,-1408(0xa80)
1c007590:	2880018d 	ld.w	$r13,$r12,0
1c007594:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007598:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c007618 <Key+0xc4>
1c00759c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075a0:	28a9f18c 	ld.w	$r12,$r12,-1412(0xa7c)
1c0075a4:	2880018d 	ld.w	$r13,$r12,0
1c0075a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0075ac:	001c31ad 	mul.w	$r13,$r13,$r12
1c0075b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075b4:	28a9a18c 	ld.w	$r12,$r12,-1432(0xa68)
1c0075b8:	2980018d 	st.w	$r13,$r12,0
1c0075bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0075c0:	02b0758c 	addi.w	$r12,$r12,-995(0xc1d)
1c0075c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0075c8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0075cc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0075d0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0075d8 <Key+0x84>
1c0075d4:	002a0007 	break	0x7
1c0075d8:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0075dc:	0015018d 	move	$r13,$r12
1c0075e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075e4:	28a8e18c 	ld.w	$r12,$r12,-1480(0xa38)
1c0075e8:	2880018c 	ld.w	$r12,$r12,0
1c0075ec:	001031ad 	add.w	$r13,$r13,$r12
1c0075f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075f4:	28a8a18c 	ld.w	$r12,$r12,-1496(0xa28)
1c0075f8:	2980018d 	st.w	$r13,$r12,0
1c0075fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007600:	28a8318c 	ld.w	$r12,$r12,-1524(0xa0c)
1c007604:	2880018c 	ld.w	$r12,$r12,0
1c007608:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00760c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007610:	28a7f18c 	ld.w	$r12,$r12,-1540(0x9fc)
1c007614:	2980018d 	st.w	$r13,$r12,0
1c007618:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00761c:	28a8018c 	ld.w	$r12,$r12,-1536(0xa00)
1c007620:	2880018c 	ld.w	$r12,$r12,0
1c007624:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007628:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00762c:	28a7818c 	ld.w	$r12,$r12,-1568(0x9e0)
1c007630:	2880018c 	ld.w	$r12,$r12,0
1c007634:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007638:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00763c:	50006c00 	b	108(0x6c) # 1c0076a8 <Key+0x154>
1c007640:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007644:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007648:	0020b5cc 	mod.w	$r12,$r14,$r13
1c00764c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007654 <Key+0x100>
1c007650:	002a0007 	break	0x7
1c007654:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c007658:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c00765c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007660:	002035cc 	div.w	$r12,$r14,$r13
1c007664:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00766c <Key+0x118>
1c007668:	002a0007 	break	0x7
1c00766c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007670:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007674:	00408d8c 	slli.w	$r12,$r12,0x3
1c007678:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c00767c:	0015018d 	move	$r13,$r12
1c007680:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c007684:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007688:	02800407 	addi.w	$r7,$r0,1(0x1)
1c00768c:	00150186 	move	$r6,$r12
1c007690:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007694:	001501a4 	move	$r4,$r13
1c007698:	57d0efff 	bl	-12052(0xfffd0ec) # 1c004784 <OLED_ShowNum>
1c00769c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0076a0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0076a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0076a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0076ac:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007640 <Key+0xec>
1c0076b0:	140005ac 	lu12i.w	$r12,45(0x2d)
1c0076b4:	03a6518c 	ori	$r12,$r12,0x994
1c0076b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0076bc:	50001400 	b	20(0x14) # 1c0076d0 <Key+0x17c>
1c0076c0:	03400000 	andi	$r0,$r0,0x0
1c0076c4:	03400000 	andi	$r0,$r0,0x0
1c0076c8:	03400000 	andi	$r0,$r0,0x0
1c0076cc:	03400000 	andi	$r0,$r0,0x0
1c0076d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0076d4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0076d8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0076dc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0076c0 <Key+0x16c>
1c0076e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076e4:	02abe58c 	addi.w	$r12,$r12,-1287(0xaf9)
1c0076e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0076ec:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0076f0:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0077f4 <Key+0x2a0>
1c0076f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076f8:	28a4918c 	ld.w	$r12,$r12,-1756(0x924)
1c0076fc:	2880018d 	ld.w	$r13,$r12,0
1c007700:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c007704:	5c0079ac 	bne	$r13,$r12,120(0x78) # 1c00777c <Key+0x228>
1c007708:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00770c:	57ee7bff 	bl	-4488(0xfffee78) # 1c006584 <interface_display>
1c007710:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007714:	028de58c 	addi.w	$r12,$r12,889(0x379)
1c007718:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00771c:	2900018d 	st.b	$r13,$r12,0
1c007720:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007724:	028da18c 	addi.w	$r12,$r12,872(0x368)
1c007728:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00772c:	2900018d 	st.b	$r13,$r12,0
1c007730:	140016cc 	lu12i.w	$r12,182(0xb6)
1c007734:	0399418c 	ori	$r12,$r12,0x650
1c007738:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00773c:	50001400 	b	20(0x14) # 1c007750 <Key+0x1fc>
1c007740:	03400000 	andi	$r0,$r0,0x0
1c007744:	03400000 	andi	$r0,$r0,0x0
1c007748:	03400000 	andi	$r0,$r0,0x0
1c00774c:	03400000 	andi	$r0,$r0,0x0
1c007750:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007754:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007758:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c00775c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007740 <Key+0x1ec>
1c007760:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007764:	28a2e18c 	ld.w	$r12,$r12,-1864(0x8b8)
1c007768:	29800180 	st.w	$r0,$r12,0
1c00776c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007770:	28a2718c 	ld.w	$r12,$r12,-1892(0x89c)
1c007774:	29800180 	st.w	$r0,$r12,0
1c007778:	50007c00 	b	124(0x7c) # 1c0077f4 <Key+0x2a0>
1c00777c:	57c973ff 	bl	-13968(0xfffc970) # 1c0040ec <OLED_CLS>
1c007780:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007784:	57ee03ff 	bl	-4608(0xfffee00) # 1c006584 <interface_display>
1c007788:	57c4b3ff 	bl	-15184(0xfffc4b0) # 1c003c38 <Buzzer>
1c00778c:	140016cc 	lu12i.w	$r12,182(0xb6)
1c007790:	0399418c 	ori	$r12,$r12,0x650
1c007794:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c007798:	50001400 	b	20(0x14) # 1c0077ac <Key+0x258>
1c00779c:	03400000 	andi	$r0,$r0,0x0
1c0077a0:	03400000 	andi	$r0,$r0,0x0
1c0077a4:	03400000 	andi	$r0,$r0,0x0
1c0077a8:	03400000 	andi	$r0,$r0,0x0
1c0077ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0077b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0077b4:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0077b8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00779c <Key+0x248>
1c0077bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077c0:	028b358c 	addi.w	$r12,$r12,717(0x2cd)
1c0077c4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0077c8:	2900018d 	st.b	$r13,$r12,0
1c0077cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077d0:	028af18c 	addi.w	$r12,$r12,700(0x2bc)
1c0077d4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0077d8:	2900018d 	st.b	$r13,$r12,0
1c0077dc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077e0:	28a0f18c 	ld.w	$r12,$r12,-1988(0x83c)
1c0077e4:	29800180 	st.w	$r0,$r12,0
1c0077e8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077ec:	28a0818c 	ld.w	$r12,$r12,-2016(0x820)
1c0077f0:	29800180 	st.w	$r0,$r12,0
1c0077f4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0077f8:	02a7958c 	addi.w	$r12,$r12,-1563(0x9e5)
1c0077fc:	2a00018d 	ld.bu	$r13,$r12,0
1c007800:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007804:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007864 <Key+0x310>
1c007808:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00780c:	28a0418c 	ld.w	$r12,$r12,-2032(0x810)
1c007810:	29800180 	st.w	$r0,$r12,0
1c007814:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007818:	289fd18c 	ld.w	$r12,$r12,2036(0x7f4)
1c00781c:	29800180 	st.w	$r0,$r12,0
1c007820:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007824:	50003400 	b	52(0x34) # 1c007858 <Key+0x304>
1c007828:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00782c:	00408d8c 	slli.w	$r12,$r12,0x3
1c007830:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007834:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007838:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00783c:	02b840c6 	addi.w	$r6,$r6,-496(0xe10)
1c007840:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007844:	00150184 	move	$r4,$r12
1c007848:	57c8d3ff 	bl	-14128(0xfffc8d0) # 1c004118 <OLED_ShowStr>
1c00784c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007850:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007854:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007858:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00785c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007860:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007828 <Key+0x2d4>
1c007864:	03400000 	andi	$r0,$r0,0x0
1c007868:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00786c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007870:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007874:	4c000020 	jirl	$r0,$r1,0

1c007878 <Add_Key>:
Add_Key():
1c007878:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00787c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007880:	29806076 	st.w	$r22,$r3,24(0x18)
1c007884:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007888:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00788c:	02a5458c 	addi.w	$r12,$r12,-1711(0x951)
1c007890:	2a00018c 	ld.bu	$r12,$r12,0
1c007894:	4002a180 	beqz	$r12,672(0x2a0) # 1c007b34 <Add_Key+0x2bc>
1c007898:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00789c:	02a5058c 	addi.w	$r12,$r12,-1727(0x941)
1c0078a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0078a4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0078a8:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c0079d4 <Add_Key+0x15c>
1c0078ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078b0:	289d718c 	ld.w	$r12,$r12,1884(0x75c)
1c0078b4:	2880018d 	ld.w	$r13,$r12,0
1c0078b8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0078bc:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c00793c <Add_Key+0xc4>
1c0078c0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078c4:	289d618c 	ld.w	$r12,$r12,1880(0x758)
1c0078c8:	2880018d 	ld.w	$r13,$r12,0
1c0078cc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0078d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0078d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078d8:	289d118c 	ld.w	$r12,$r12,1860(0x744)
1c0078dc:	2980018d 	st.w	$r13,$r12,0
1c0078e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078e4:	02a3e58c 	addi.w	$r12,$r12,-1799(0x8f9)
1c0078e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0078ec:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0078f0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0078f4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0078fc <Add_Key+0x84>
1c0078f8:	002a0007 	break	0x7
1c0078fc:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c007900:	0015018d 	move	$r13,$r12
1c007904:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007908:	289c518c 	ld.w	$r12,$r12,1812(0x714)
1c00790c:	2880018c 	ld.w	$r12,$r12,0
1c007910:	001031ad 	add.w	$r13,$r13,$r12
1c007914:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007918:	289c118c 	ld.w	$r12,$r12,1796(0x704)
1c00791c:	2980018d 	st.w	$r13,$r12,0
1c007920:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007924:	289ba18c 	ld.w	$r12,$r12,1768(0x6e8)
1c007928:	2880018c 	ld.w	$r12,$r12,0
1c00792c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007930:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007934:	289b618c 	ld.w	$r12,$r12,1752(0x6d8)
1c007938:	2980018d 	st.w	$r13,$r12,0
1c00793c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007940:	289b718c 	ld.w	$r12,$r12,1756(0x6dc)
1c007944:	2880018c 	ld.w	$r12,$r12,0
1c007948:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00794c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007950:	289af18c 	ld.w	$r12,$r12,1724(0x6bc)
1c007954:	2880018c 	ld.w	$r12,$r12,0
1c007958:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00795c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007960:	50006c00 	b	108(0x6c) # 1c0079cc <Add_Key+0x154>
1c007964:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007968:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00796c:	0020b5cc 	mod.w	$r12,$r14,$r13
1c007970:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007978 <Add_Key+0x100>
1c007974:	002a0007 	break	0x7
1c007978:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00797c:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007980:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007984:	002035cc 	div.w	$r12,$r14,$r13
1c007988:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007990 <Add_Key+0x118>
1c00798c:	002a0007 	break	0x7
1c007990:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007998:	00408d8c 	slli.w	$r12,$r12,0x3
1c00799c:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0079a0:	0015018d 	move	$r13,$r12
1c0079a4:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0079a8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0079ac:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0079b0:	00150186 	move	$r6,$r12
1c0079b4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0079b8:	001501a4 	move	$r4,$r13
1c0079bc:	57cdcbff 	bl	-12856(0xfffcdc8) # 1c004784 <OLED_ShowNum>
1c0079c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079c4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0079c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0079cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079d0:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007964 <Add_Key+0xec>
1c0079d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079d8:	02a0158c 	addi.w	$r12,$r12,-2043(0x805)
1c0079dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0079e0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0079e4:	5c00e1ac 	bne	$r13,$r12,224(0xe0) # 1c007ac4 <Add_Key+0x24c>
1c0079e8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0079ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0079f0:	50004400 	b	68(0x44) # 1c007a34 <Add_Key+0x1bc>
1c0079f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079f8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0079fc:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007a00:	028191ad 	addi.w	$r13,$r13,100(0x64)
1c007a04:	0040898c 	slli.w	$r12,$r12,0x2
1c007a08:	001031ac 	add.w	$r12,$r13,$r12
1c007a0c:	2880018d 	ld.w	$r13,$r12,0
1c007a10:	1cc7ff4e 	pcaddu12i	$r14,409594(0x63ffa)
1c007a14:	028141ce 	addi.w	$r14,$r14,80(0x50)
1c007a18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a1c:	0040898c 	slli.w	$r12,$r12,0x2
1c007a20:	001031cc 	add.w	$r12,$r14,$r12
1c007a24:	2980018d 	st.w	$r13,$r12,0
1c007a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a2c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007a30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007a34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a38:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c0079f4 <Add_Key+0x17c>
1c007a3c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a40:	2897718c 	ld.w	$r12,$r12,1500(0x5dc)
1c007a44:	2880018d 	ld.w	$r13,$r12,0
1c007a48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a4c:	0280618c 	addi.w	$r12,$r12,24(0x18)
1c007a50:	2980018d 	st.w	$r13,$r12,0
1c007a54:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a58:	2897118c 	ld.w	$r12,$r12,1476(0x5c4)
1c007a5c:	29800180 	st.w	$r0,$r12,0
1c007a60:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a64:	2896a18c 	ld.w	$r12,$r12,1448(0x5a8)
1c007a68:	29800180 	st.w	$r0,$r12,0
1c007a6c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007a70:	57eb17ff 	bl	-5356(0xfffeb14) # 1c006584 <interface_display>
1c007a74:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007a78:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007a7c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007a80:	50001400 	b	20(0x14) # 1c007a94 <Add_Key+0x21c>
1c007a84:	03400000 	andi	$r0,$r0,0x0
1c007a88:	03400000 	andi	$r0,$r0,0x0
1c007a8c:	03400000 	andi	$r0,$r0,0x0
1c007a90:	03400000 	andi	$r0,$r0,0x0
1c007a94:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007a98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007a9c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007aa0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007a84 <Add_Key+0x20c>
1c007aa4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007aa8:	02bf958c 	addi.w	$r12,$r12,-27(0xfe5)
1c007aac:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007ab0:	2900018d 	st.b	$r13,$r12,0
1c007ab4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007ab8:	02bf518c 	addi.w	$r12,$r12,-44(0xfd4)
1c007abc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007ac0:	2900018d 	st.b	$r13,$r12,0
1c007ac4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007ac8:	029c558c 	addi.w	$r12,$r12,1813(0x715)
1c007acc:	2a00018d 	ld.bu	$r13,$r12,0
1c007ad0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007ad4:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007b34 <Add_Key+0x2bc>
1c007ad8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007adc:	2895018c 	ld.w	$r12,$r12,1344(0x540)
1c007ae0:	29800180 	st.w	$r0,$r12,0
1c007ae4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ae8:	2894918c 	ld.w	$r12,$r12,1316(0x524)
1c007aec:	29800180 	st.w	$r0,$r12,0
1c007af0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007af4:	50003400 	b	52(0x34) # 1c007b28 <Add_Key+0x2b0>
1c007af8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007afc:	00408d8c 	slli.w	$r12,$r12,0x3
1c007b00:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007b04:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b08:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007b0c:	02ad00c6 	addi.w	$r6,$r6,-1216(0xb40)
1c007b10:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007b14:	00150184 	move	$r4,$r12
1c007b18:	57c603ff 	bl	-14848(0xfffc600) # 1c004118 <OLED_ShowStr>
1c007b1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007b20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b24:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007b28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007b2c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007b30:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007af8 <Add_Key+0x280>
1c007b34:	03400000 	andi	$r0,$r0,0x0
1c007b38:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007b3c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007b40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007b44:	4c000020 	jirl	$r0,$r1,0

1c007b48 <Delete_key>:
Delete_key():
1c007b48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007b4c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007b50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007b54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007b58:	50002800 	b	40(0x28) # 1c007b80 <Delete_key+0x38>
1c007b5c:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007b60:	02bc11ad 	addi.w	$r13,$r13,-252(0xf04)
1c007b64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007b68:	0040898c 	slli.w	$r12,$r12,0x2
1c007b6c:	001031ac 	add.w	$r12,$r13,$r12
1c007b70:	29800180 	st.w	$r0,$r12,0
1c007b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007b78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007b7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007b80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007b84:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007b88:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c007b5c <Delete_key+0x14>
1c007b8c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007b90:	03bf918c 	ori	$r12,$r12,0xfe4
1c007b94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007b98:	50001400 	b	20(0x14) # 1c007bac <Delete_key+0x64>
1c007b9c:	03400000 	andi	$r0,$r0,0x0
1c007ba0:	03400000 	andi	$r0,$r0,0x0
1c007ba4:	03400000 	andi	$r0,$r0,0x0
1c007ba8:	03400000 	andi	$r0,$r0,0x0
1c007bac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007bb0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007bb4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007bb8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007b9c <Delete_key+0x54>
1c007bbc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bc0:	02bb358c 	addi.w	$r12,$r12,-307(0xecd)
1c007bc4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007bc8:	2900018d 	st.b	$r13,$r12,0
1c007bcc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007bd0:	02baf18c 	addi.w	$r12,$r12,-324(0xebc)
1c007bd4:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007bd8:	2900018d 	st.b	$r13,$r12,0
1c007bdc:	03400000 	andi	$r0,$r0,0x0
1c007be0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007be4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007be8:	4c000020 	jirl	$r0,$r1,0

1c007bec <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c007bec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007bf0:	29803061 	st.w	$r1,$r3,12(0xc)
1c007bf4:	29802076 	st.w	$r22,$r3,8(0x8)
1c007bf8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007bfc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007c00:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c007c04:	02805005 	addi.w	$r5,$r0,20(0x14)
1c007c08:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007c0c:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c007c10:	5797cbff 	bl	-26680(0xfff97c8) # 1c0013d8 <myprintf>
1c007c14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007c1c:	03808184 	ori	$r4,$r12,0x20
1c007c20:	579573ff 	bl	-27280(0xfff9570) # 1c001190 <EXTI_ClearITPendingBit>
1c007c24:	03400000 	andi	$r0,$r0,0x0
1c007c28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007c2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c34:	4c000020 	jirl	$r0,$r1,0

1c007c38 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c007c38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007c3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007c40:	29802076 	st.w	$r22,$r3,8(0x8)
1c007c44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c48:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007c4c:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c007c50:	02806405 	addi.w	$r5,$r0,25(0x19)
1c007c54:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007c58:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c007c5c:	57977fff 	bl	-26756(0xfff977c) # 1c0013d8 <myprintf>
1c007c60:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007c64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007c68:	03808184 	ori	$r4,$r12,0x20
1c007c6c:	579527ff 	bl	-27356(0xfff9524) # 1c001190 <EXTI_ClearITPendingBit>
1c007c70:	03400000 	andi	$r0,$r0,0x0
1c007c74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007c78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c80:	4c000020 	jirl	$r0,$r1,0

1c007c84 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c007c84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007c88:	29803061 	st.w	$r1,$r3,12(0xc)
1c007c8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007c90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c94:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007c98:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c007c9c:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c007ca0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007ca4:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c007ca8:	579733ff 	bl	-26832(0xfff9730) # 1c0013d8 <myprintf>
1c007cac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007cb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007cb4:	03808184 	ori	$r4,$r12,0x20
1c007cb8:	5794dbff 	bl	-27432(0xfff94d8) # 1c001190 <EXTI_ClearITPendingBit>
1c007cbc:	03400000 	andi	$r0,$r0,0x0
1c007cc0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007cc4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007cc8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007ccc:	4c000020 	jirl	$r0,$r1,0

1c007cd0 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c007cd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007cd4:	29803061 	st.w	$r1,$r3,12(0xc)
1c007cd8:	29802076 	st.w	$r22,$r3,8(0x8)
1c007cdc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ce0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007ce4:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c007ce8:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c007cec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007cf0:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c007cf4:	5796e7ff 	bl	-26908(0xfff96e4) # 1c0013d8 <myprintf>
1c007cf8:	02802005 	addi.w	$r5,$r0,8(0x8)
1c007cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007d00:	03808184 	ori	$r4,$r12,0x20
1c007d04:	57948fff 	bl	-27508(0xfff948c) # 1c001190 <EXTI_ClearITPendingBit>
1c007d08:	03400000 	andi	$r0,$r0,0x0
1c007d0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007d10:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007d14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007d18:	4c000020 	jirl	$r0,$r1,0

1c007d1c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c007d1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007d20:	29803061 	st.w	$r1,$r3,12(0xc)
1c007d24:	29802076 	st.w	$r22,$r3,8(0x8)
1c007d28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007d2c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007d30:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c007d34:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c007d38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007d3c:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c007d40:	57969bff 	bl	-26984(0xfff9698) # 1c0013d8 <myprintf>
1c007d44:	02804005 	addi.w	$r5,$r0,16(0x10)
1c007d48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007d4c:	03808184 	ori	$r4,$r12,0x20
1c007d50:	579443ff 	bl	-27584(0xfff9440) # 1c001190 <EXTI_ClearITPendingBit>
1c007d54:	03400000 	andi	$r0,$r0,0x0
1c007d58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007d5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007d60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007d64:	4c000020 	jirl	$r0,$r1,0

1c007d68 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c007d68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007d6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007d70:	29802076 	st.w	$r22,$r3,8(0x8)
1c007d74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007d78:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007d7c:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c007d80:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c007d84:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007d88:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c007d8c:	57964fff 	bl	-27060(0xfff964c) # 1c0013d8 <myprintf>
1c007d90:	02808005 	addi.w	$r5,$r0,32(0x20)
1c007d94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007d98:	03808184 	ori	$r4,$r12,0x20
1c007d9c:	5793f7ff 	bl	-27660(0xfff93f4) # 1c001190 <EXTI_ClearITPendingBit>
1c007da0:	03400000 	andi	$r0,$r0,0x0
1c007da4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007da8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007dac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007db0:	4c000020 	jirl	$r0,$r1,0

1c007db4 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c007db4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007db8:	29803061 	st.w	$r1,$r3,12(0xc)
1c007dbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c007dc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007dc4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007dc8:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c007dcc:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c007dd0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007dd4:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c007dd8:	579603ff 	bl	-27136(0xfff9600) # 1c0013d8 <myprintf>
1c007ddc:	02810005 	addi.w	$r5,$r0,64(0x40)
1c007de0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007de4:	03808184 	ori	$r4,$r12,0x20
1c007de8:	5793abff 	bl	-27736(0xfff93a8) # 1c001190 <EXTI_ClearITPendingBit>
1c007dec:	03400000 	andi	$r0,$r0,0x0
1c007df0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007df4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007df8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007dfc:	4c000020 	jirl	$r0,$r1,0

1c007e00 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c007e00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007e04:	29803061 	st.w	$r1,$r3,12(0xc)
1c007e08:	29802076 	st.w	$r22,$r3,8(0x8)
1c007e0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007e10:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007e14:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c007e18:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c007e1c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007e20:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c007e24:	5795b7ff 	bl	-27212(0xfff95b4) # 1c0013d8 <myprintf>
1c007e28:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007e2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007e30:	03808184 	ori	$r4,$r12,0x20
1c007e34:	57935fff 	bl	-27812(0xfff935c) # 1c001190 <EXTI_ClearITPendingBit>
1c007e38:	03400000 	andi	$r0,$r0,0x0
1c007e3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007e40:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007e44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007e48:	4c000020 	jirl	$r0,$r1,0

1c007e4c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c007e4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007e50:	29803061 	st.w	$r1,$r3,12(0xc)
1c007e54:	29802076 	st.w	$r22,$r3,8(0x8)
1c007e58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007e5c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007e60:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c007e64:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c007e68:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007e6c:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c007e70:	57956bff 	bl	-27288(0xfff9568) # 1c0013d8 <myprintf>
1c007e74:	02840005 	addi.w	$r5,$r0,256(0x100)
1c007e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007e7c:	03808184 	ori	$r4,$r12,0x20
1c007e80:	579313ff 	bl	-27888(0xfff9310) # 1c001190 <EXTI_ClearITPendingBit>
1c007e84:	03400000 	andi	$r0,$r0,0x0
1c007e88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007e8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007e90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007e94:	4c000020 	jirl	$r0,$r1,0

1c007e98 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c007e98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007e9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007ea0:	29802076 	st.w	$r22,$r3,8(0x8)
1c007ea4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ea8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007eac:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c007eb0:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c007eb4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007eb8:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c007ebc:	57951fff 	bl	-27364(0xfff951c) # 1c0013d8 <myprintf>
1c007ec0:	02880005 	addi.w	$r5,$r0,512(0x200)
1c007ec4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007ec8:	03808184 	ori	$r4,$r12,0x20
1c007ecc:	5792c7ff 	bl	-27964(0xfff92c4) # 1c001190 <EXTI_ClearITPendingBit>
1c007ed0:	03400000 	andi	$r0,$r0,0x0
1c007ed4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007ed8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007edc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007ee0:	4c000020 	jirl	$r0,$r1,0

1c007ee4 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c007ee4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007ee8:	29803061 	st.w	$r1,$r3,12(0xc)
1c007eec:	29802076 	st.w	$r22,$r3,8(0x8)
1c007ef0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ef4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007ef8:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c007efc:	02812405 	addi.w	$r5,$r0,73(0x49)
1c007f00:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007f04:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c007f08:	5794d3ff 	bl	-27440(0xfff94d0) # 1c0013d8 <myprintf>
1c007f0c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c007f10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007f14:	03808184 	ori	$r4,$r12,0x20
1c007f18:	57927bff 	bl	-28040(0xfff9278) # 1c001190 <EXTI_ClearITPendingBit>
1c007f1c:	03400000 	andi	$r0,$r0,0x0
1c007f20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007f24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007f28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007f2c:	4c000020 	jirl	$r0,$r1,0

1c007f30 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c007f30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f34:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f38:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007f40:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007f44:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c007f48:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c007f4c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007f50:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c007f54:	579487ff 	bl	-27516(0xfff9484) # 1c0013d8 <myprintf>
1c007f58:	03a00005 	ori	$r5,$r0,0x800
1c007f5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007f60:	03808184 	ori	$r4,$r12,0x20
1c007f64:	57922fff 	bl	-28116(0xfff922c) # 1c001190 <EXTI_ClearITPendingBit>
1c007f68:	03400000 	andi	$r0,$r0,0x0
1c007f6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007f70:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007f74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007f78:	4c000020 	jirl	$r0,$r1,0

1c007f7c <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c007f7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f80:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f84:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007f8c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007f90:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c007f94:	02815005 	addi.w	$r5,$r0,84(0x54)
1c007f98:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007f9c:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c007fa0:	57943bff 	bl	-27592(0xfff9438) # 1c0013d8 <myprintf>
1c007fa4:	14000025 	lu12i.w	$r5,1(0x1)
1c007fa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007fac:	03808184 	ori	$r4,$r12,0x20
1c007fb0:	5791e3ff 	bl	-28192(0xfff91e0) # 1c001190 <EXTI_ClearITPendingBit>
1c007fb4:	03400000 	andi	$r0,$r0,0x0
1c007fb8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007fbc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007fc0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007fc4:	4c000020 	jirl	$r0,$r1,0

1c007fc8 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c007fc8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007fcc:	29803061 	st.w	$r1,$r3,12(0xc)
1c007fd0:	29802076 	st.w	$r22,$r3,8(0x8)
1c007fd4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007fd8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007fdc:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c007fe0:	02816405 	addi.w	$r5,$r0,89(0x59)
1c007fe4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007fe8:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c007fec:	5793efff 	bl	-27668(0xfff93ec) # 1c0013d8 <myprintf>
1c007ff0:	14000045 	lu12i.w	$r5,2(0x2)
1c007ff4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007ff8:	03808184 	ori	$r4,$r12,0x20
1c007ffc:	579197ff 	bl	-28268(0xfff9194) # 1c001190 <EXTI_ClearITPendingBit>
1c008000:	03400000 	andi	$r0,$r0,0x0
1c008004:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008008:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00800c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008010:	4c000020 	jirl	$r0,$r1,0

1c008014 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c008014:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008018:	29803061 	st.w	$r1,$r3,12(0xc)
1c00801c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008020:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008024:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008028:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c00802c:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c008030:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008034:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c008038:	5793a3ff 	bl	-27744(0xfff93a0) # 1c0013d8 <myprintf>
1c00803c:	14000085 	lu12i.w	$r5,4(0x4)
1c008040:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008044:	03808184 	ori	$r4,$r12,0x20
1c008048:	57914bff 	bl	-28344(0xfff9148) # 1c001190 <EXTI_ClearITPendingBit>
1c00804c:	03400000 	andi	$r0,$r0,0x0
1c008050:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008054:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008058:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00805c:	4c000020 	jirl	$r0,$r1,0

1c008060 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c008060:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008064:	29803061 	st.w	$r1,$r3,12(0xc)
1c008068:	29802076 	st.w	$r22,$r3,8(0x8)
1c00806c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008070:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008074:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c008078:	02819405 	addi.w	$r5,$r0,101(0x65)
1c00807c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008080:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c008084:	579357ff 	bl	-27820(0xfff9354) # 1c0013d8 <myprintf>
1c008088:	14000105 	lu12i.w	$r5,8(0x8)
1c00808c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008090:	03808184 	ori	$r4,$r12,0x20
1c008094:	5790ffff 	bl	-28420(0xfff90fc) # 1c001190 <EXTI_ClearITPendingBit>
1c008098:	03400000 	andi	$r0,$r0,0x0
1c00809c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0080a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0080a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0080a8:	4c000020 	jirl	$r0,$r1,0

1c0080ac <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0080ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0080b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0080b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0080b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0080bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0080c0:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c0080c4:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c0080c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0080cc:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c0080d0:	57930bff 	bl	-27896(0xfff9308) # 1c0013d8 <myprintf>
1c0080d4:	14000205 	lu12i.w	$r5,16(0x10)
1c0080d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0080dc:	03808184 	ori	$r4,$r12,0x20
1c0080e0:	5790b3ff 	bl	-28496(0xfff90b0) # 1c001190 <EXTI_ClearITPendingBit>
1c0080e4:	03400000 	andi	$r0,$r0,0x0
1c0080e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0080ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0080f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0080f4:	4c000020 	jirl	$r0,$r1,0

1c0080f8 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0080f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0080fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c008100:	29802076 	st.w	$r22,$r3,8(0x8)
1c008104:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008108:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00810c:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c008110:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c008114:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008118:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c00811c:	5792bfff 	bl	-27972(0xfff92bc) # 1c0013d8 <myprintf>
1c008120:	14000405 	lu12i.w	$r5,32(0x20)
1c008124:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008128:	03808184 	ori	$r4,$r12,0x20
1c00812c:	579067ff 	bl	-28572(0xfff9064) # 1c001190 <EXTI_ClearITPendingBit>
1c008130:	03400000 	andi	$r0,$r0,0x0
1c008134:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008138:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00813c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008140:	4c000020 	jirl	$r0,$r1,0

1c008144 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c008144:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008148:	29803061 	st.w	$r1,$r3,12(0xc)
1c00814c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008150:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008154:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008158:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c00815c:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c008160:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008164:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c008168:	579273ff 	bl	-28048(0xfff9270) # 1c0013d8 <myprintf>
1c00816c:	14000805 	lu12i.w	$r5,64(0x40)
1c008170:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008174:	03808184 	ori	$r4,$r12,0x20
1c008178:	57901bff 	bl	-28648(0xfff9018) # 1c001190 <EXTI_ClearITPendingBit>
1c00817c:	03400000 	andi	$r0,$r0,0x0
1c008180:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008184:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008188:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00818c:	4c000020 	jirl	$r0,$r1,0

1c008190 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c008190:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008194:	29803061 	st.w	$r1,$r3,12(0xc)
1c008198:	29802076 	st.w	$r22,$r3,8(0x8)
1c00819c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0081a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0081a4:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c0081a8:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c0081ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0081b0:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c0081b4:	579227ff 	bl	-28124(0xfff9224) # 1c0013d8 <myprintf>
1c0081b8:	14001005 	lu12i.w	$r5,128(0x80)
1c0081bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0081c0:	03808184 	ori	$r4,$r12,0x20
1c0081c4:	578fcfff 	bl	-28724(0xfff8fcc) # 1c001190 <EXTI_ClearITPendingBit>
1c0081c8:	03400000 	andi	$r0,$r0,0x0
1c0081cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0081d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0081d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0081d8:	4c000020 	jirl	$r0,$r1,0

1c0081dc <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0081dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0081e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0081e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0081e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0081ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0081f0:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c0081f4:	02821005 	addi.w	$r5,$r0,132(0x84)
1c0081f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0081fc:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c008200:	5791dbff 	bl	-28200(0xfff91d8) # 1c0013d8 <myprintf>
1c008204:	14002005 	lu12i.w	$r5,256(0x100)
1c008208:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00820c:	03808184 	ori	$r4,$r12,0x20
1c008210:	578f83ff 	bl	-28800(0xfff8f80) # 1c001190 <EXTI_ClearITPendingBit>
1c008214:	03400000 	andi	$r0,$r0,0x0
1c008218:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00821c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008220:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008224:	4c000020 	jirl	$r0,$r1,0

1c008228 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c008228:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00822c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008230:	29802076 	st.w	$r22,$r3,8(0x8)
1c008234:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008238:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00823c:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c008240:	02822405 	addi.w	$r5,$r0,137(0x89)
1c008244:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008248:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c00824c:	57918fff 	bl	-28276(0xfff918c) # 1c0013d8 <myprintf>
1c008250:	14004005 	lu12i.w	$r5,512(0x200)
1c008254:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008258:	03808184 	ori	$r4,$r12,0x20
1c00825c:	578f37ff 	bl	-28876(0xfff8f34) # 1c001190 <EXTI_ClearITPendingBit>
1c008260:	03400000 	andi	$r0,$r0,0x0
1c008264:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008268:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00826c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008270:	4c000020 	jirl	$r0,$r1,0

1c008274 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c008274:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008278:	29803061 	st.w	$r1,$r3,12(0xc)
1c00827c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008280:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008284:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008288:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c00828c:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c008290:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008294:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c008298:	579143ff 	bl	-28352(0xfff9140) # 1c0013d8 <myprintf>
1c00829c:	14008005 	lu12i.w	$r5,1024(0x400)
1c0082a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0082a4:	03808184 	ori	$r4,$r12,0x20
1c0082a8:	578eebff 	bl	-28952(0xfff8ee8) # 1c001190 <EXTI_ClearITPendingBit>
1c0082ac:	03400000 	andi	$r0,$r0,0x0
1c0082b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0082b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0082b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0082bc:	4c000020 	jirl	$r0,$r1,0

1c0082c0 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0082c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0082c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0082c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0082cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0082d0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0082d4:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c0082d8:	02825005 	addi.w	$r5,$r0,148(0x94)
1c0082dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0082e0:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c0082e4:	5790f7ff 	bl	-28428(0xfff90f4) # 1c0013d8 <myprintf>
1c0082e8:	14010005 	lu12i.w	$r5,2048(0x800)
1c0082ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0082f0:	03808184 	ori	$r4,$r12,0x20
1c0082f4:	578e9fff 	bl	-29028(0xfff8e9c) # 1c001190 <EXTI_ClearITPendingBit>
1c0082f8:	03400000 	andi	$r0,$r0,0x0
1c0082fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008300:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008304:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008308:	4c000020 	jirl	$r0,$r1,0

1c00830c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00830c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008310:	29803061 	st.w	$r1,$r3,12(0xc)
1c008314:	29802076 	st.w	$r22,$r3,8(0x8)
1c008318:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00831c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008320:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c008324:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c008328:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00832c:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c008330:	5790abff 	bl	-28504(0xfff90a8) # 1c0013d8 <myprintf>
1c008334:	14020005 	lu12i.w	$r5,4096(0x1000)
1c008338:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00833c:	03808184 	ori	$r4,$r12,0x20
1c008340:	578e53ff 	bl	-29104(0xfff8e50) # 1c001190 <EXTI_ClearITPendingBit>
1c008344:	03400000 	andi	$r0,$r0,0x0
1c008348:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00834c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008350:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008354:	4c000020 	jirl	$r0,$r1,0

1c008358 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c008358:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00835c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008360:	29802076 	st.w	$r22,$r3,8(0x8)
1c008364:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008368:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00836c:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c008370:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c008374:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008378:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c00837c:	57905fff 	bl	-28580(0xfff905c) # 1c0013d8 <myprintf>
1c008380:	14040005 	lu12i.w	$r5,8192(0x2000)
1c008384:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008388:	03808184 	ori	$r4,$r12,0x20
1c00838c:	578e07ff 	bl	-29180(0xfff8e04) # 1c001190 <EXTI_ClearITPendingBit>
1c008390:	03400000 	andi	$r0,$r0,0x0
1c008394:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008398:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00839c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0083a0:	4c000020 	jirl	$r0,$r1,0

1c0083a4 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0083a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0083a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0083ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0083b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0083b4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0083b8:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c0083bc:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c0083c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0083c4:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c0083c8:	579013ff 	bl	-28656(0xfff9010) # 1c0013d8 <myprintf>
1c0083cc:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0083d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0083d4:	03808184 	ori	$r4,$r12,0x20
1c0083d8:	578dbbff 	bl	-29256(0xfff8db8) # 1c001190 <EXTI_ClearITPendingBit>
1c0083dc:	03400000 	andi	$r0,$r0,0x0
1c0083e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0083e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0083e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0083ec:	4c000020 	jirl	$r0,$r1,0

1c0083f0 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0083f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0083f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0083f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0083fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008400:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008404:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c008408:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c00840c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008410:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c008414:	578fc7ff 	bl	-28732(0xfff8fc4) # 1c0013d8 <myprintf>
1c008418:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00841c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008420:	03808184 	ori	$r4,$r12,0x20
1c008424:	578d6fff 	bl	-29332(0xfff8d6c) # 1c001190 <EXTI_ClearITPendingBit>
1c008428:	03400000 	andi	$r0,$r0,0x0
1c00842c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008430:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008434:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008438:	4c000020 	jirl	$r0,$r1,0

1c00843c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00843c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008440:	29803061 	st.w	$r1,$r3,12(0xc)
1c008444:	29802076 	st.w	$r22,$r3,8(0x8)
1c008448:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00844c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008450:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c008454:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c008458:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00845c:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c008460:	578f7bff 	bl	-28808(0xfff8f78) # 1c0013d8 <myprintf>
1c008464:	14200005 	lu12i.w	$r5,65536(0x10000)
1c008468:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00846c:	03808184 	ori	$r4,$r12,0x20
1c008470:	578d23ff 	bl	-29408(0xfff8d20) # 1c001190 <EXTI_ClearITPendingBit>
1c008474:	03400000 	andi	$r0,$r0,0x0
1c008478:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00847c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008480:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008484:	4c000020 	jirl	$r0,$r1,0

1c008488 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c008488:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00848c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008490:	29802076 	st.w	$r22,$r3,8(0x8)
1c008494:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008498:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00849c:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c0084a0:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c0084a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0084a8:	02880084 	addi.w	$r4,$r4,512(0x200)
1c0084ac:	578f2fff 	bl	-28884(0xfff8f2c) # 1c0013d8 <myprintf>
1c0084b0:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0084b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0084b8:	03808184 	ori	$r4,$r12,0x20
1c0084bc:	578cd7ff 	bl	-29484(0xfff8cd4) # 1c001190 <EXTI_ClearITPendingBit>
1c0084c0:	03400000 	andi	$r0,$r0,0x0
1c0084c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0084c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0084cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0084d0:	4c000020 	jirl	$r0,$r1,0

1c0084d4 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0084d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0084d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0084dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0084e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0084e4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0084e8:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c0084ec:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c0084f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0084f4:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c0084f8:	578ee3ff 	bl	-28960(0xfff8ee0) # 1c0013d8 <myprintf>
1c0084fc:	14800005 	lu12i.w	$r5,262144(0x40000)
1c008500:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008504:	03808184 	ori	$r4,$r12,0x20
1c008508:	578c8bff 	bl	-29560(0xfff8c88) # 1c001190 <EXTI_ClearITPendingBit>
1c00850c:	03400000 	andi	$r0,$r0,0x0
1c008510:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008514:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008518:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00851c:	4c000020 	jirl	$r0,$r1,0

1c008520 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c008520:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008524:	29803061 	st.w	$r1,$r3,12(0xc)
1c008528:	29802076 	st.w	$r22,$r3,8(0x8)
1c00852c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008530:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008534:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c008538:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c00853c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008540:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c008544:	578e97ff 	bl	-29036(0xfff8e94) # 1c0013d8 <myprintf>
1c008548:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00854c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008550:	03808184 	ori	$r4,$r12,0x20
1c008554:	578c3fff 	bl	-29636(0xfff8c3c) # 1c001190 <EXTI_ClearITPendingBit>
1c008558:	03400000 	andi	$r0,$r0,0x0
1c00855c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008560:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008564:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008568:	4c000020 	jirl	$r0,$r1,0

1c00856c <ext_handler>:
ext_handler():
1c00856c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008570:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008574:	29806076 	st.w	$r22,$r3,24(0x18)
1c008578:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00857c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008580:	0380f18c 	ori	$r12,$r12,0x3c
1c008584:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c008588:	2980018d 	st.w	$r13,$r12,0
1c00858c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008590:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c008594:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c008598:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00859c:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c0085a0:	578e3bff 	bl	-29128(0xfff8e38) # 1c0013d8 <myprintf>
1c0085a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0085a8:	0380818c 	ori	$r12,$r12,0x20
1c0085ac:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0085b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0085b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0085b8:	0380818c 	ori	$r12,$r12,0x20
1c0085bc:	2880018c 	ld.w	$r12,$r12,0
1c0085c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0085c4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0085c8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0085cc:	0014b1ac 	and	$r12,$r13,$r12
1c0085d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0085d4:	03400000 	andi	$r0,$r0,0x0
1c0085d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0085dc:	50004000 	b	64(0x40) # 1c00861c <ext_handler+0xb0>
1c0085e0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0085e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0085e8:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0085ec:	0340058c 	andi	$r12,$r12,0x1
1c0085f0:	40002180 	beqz	$r12,32(0x20) # 1c008610 <ext_handler+0xa4>
1c0085f4:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0085f8:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c0085fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008600:	0040898c 	slli.w	$r12,$r12,0x2
1c008604:	001031ac 	add.w	$r12,$r13,$r12
1c008608:	2880018c 	ld.w	$r12,$r12,0
1c00860c:	4c000181 	jirl	$r1,$r12,0
1c008610:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008614:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008618:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00861c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008620:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c008624:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0085e0 <ext_handler+0x74>
1c008628:	03400000 	andi	$r0,$r0,0x0
1c00862c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008630:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008634:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008638:	4c000020 	jirl	$r0,$r1,0

1c00863c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00863c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008640:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008644:	29806076 	st.w	$r22,$r3,24(0x18)
1c008648:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00864c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008650:	0380f18c 	ori	$r12,$r12,0x3c
1c008654:	1400020d 	lu12i.w	$r13,16(0x10)
1c008658:	2980018d 	st.w	$r13,$r12,0
1c00865c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008660:	0380118c 	ori	$r12,$r12,0x4
1c008664:	2880018c 	ld.w	$r12,$r12,0
1c008668:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00866c:	57929fff 	bl	-28004(0xfff929c) # 1c001908 <WDG_DogFeed>
1c008670:	03400000 	andi	$r0,$r0,0x0
1c008674:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008678:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00867c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008680:	4c000020 	jirl	$r0,$r1,0

1c008684 <TOUCH>:
TOUCH():
1c008684:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008688:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00868c:	29806076 	st.w	$r22,$r3,24(0x18)
1c008690:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008694:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008698:	0380118c 	ori	$r12,$r12,0x4
1c00869c:	2880018c 	ld.w	$r12,$r12,0
1c0086a0:	0044c18c 	srli.w	$r12,$r12,0x10
1c0086a4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0086a8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0086ac:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0086b0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0086b4:	0380118c 	ori	$r12,$r12,0x4
1c0086b8:	2880018c 	ld.w	$r12,$r12,0
1c0086bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0086c0:	03403d8c 	andi	$r12,$r12,0xf
1c0086c4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0086c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0086cc:	0380f18c 	ori	$r12,$r12,0x3c
1c0086d0:	1400040d 	lu12i.w	$r13,32(0x20)
1c0086d4:	2980018d 	st.w	$r13,$r12,0
1c0086d8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0086dc:	0380118c 	ori	$r12,$r12,0x4
1c0086e0:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0086e4:	2980018d 	st.w	$r13,$r12,0
1c0086e8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0086ec:	00150185 	move	$r5,$r12
1c0086f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0086f4:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c0086f8:	578ce3ff 	bl	-29472(0xfff8ce0) # 1c0013d8 <myprintf>
1c0086fc:	03400000 	andi	$r0,$r0,0x0
1c008700:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008704:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008708:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00870c:	4c000020 	jirl	$r0,$r1,0

1c008710 <UART2_INT>:
UART2_INT():
1c008710:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008714:	29807076 	st.w	$r22,$r3,28(0x1c)
1c008718:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00871c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008720:	0380f18c 	ori	$r12,$r12,0x3c
1c008724:	1400080d 	lu12i.w	$r13,64(0x40)
1c008728:	2980018d 	st.w	$r13,$r12,0
1c00872c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c008730:	0380098c 	ori	$r12,$r12,0x2
1c008734:	2a00018c 	ld.bu	$r12,$r12,0
1c008738:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00873c:	03400000 	andi	$r0,$r0,0x0
1c008740:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c008744:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008748:	4c000020 	jirl	$r0,$r1,0

1c00874c <BAT_FAIL>:
BAT_FAIL():
1c00874c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008750:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008754:	29806076 	st.w	$r22,$r3,24(0x18)
1c008758:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00875c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008760:	0380118c 	ori	$r12,$r12,0x4
1c008764:	2880018c 	ld.w	$r12,$r12,0
1c008768:	0044cd8c 	srli.w	$r12,$r12,0x13
1c00876c:	03407d8c 	andi	$r12,$r12,0x1f
1c008770:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008778:	0380118c 	ori	$r12,$r12,0x4
1c00877c:	2880018e 	ld.w	$r14,$r12,0
1c008780:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008784:	0380f18c 	ori	$r12,$r12,0x3c
1c008788:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00878c:	0014b5cd 	and	$r13,$r14,$r13
1c008790:	2980018d 	st.w	$r13,$r12,0
1c008794:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008798:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00879c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00880c <BAT_FAIL+0xc0>
1c0087a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0087a4:	0040898d 	slli.w	$r13,$r12,0x2
1c0087a8:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c0087ac:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c0087b0:	001031ac 	add.w	$r12,$r13,$r12
1c0087b4:	2880018c 	ld.w	$r12,$r12,0
1c0087b8:	4c000180 	jirl	$r0,$r12,0
1c0087bc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0087c0:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c0087c4:	578c17ff 	bl	-29676(0xfff8c14) # 1c0013d8 <myprintf>
1c0087c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0087cc:	0380118c 	ori	$r12,$r12,0x4
1c0087d0:	29800180 	st.w	$r0,$r12,0
1c0087d4:	50003c00 	b	60(0x3c) # 1c008810 <BAT_FAIL+0xc4>
1c0087d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0087dc:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c0087e0:	578bfbff 	bl	-29704(0xfff8bf8) # 1c0013d8 <myprintf>
1c0087e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0087e8:	0380118c 	ori	$r12,$r12,0x4
1c0087ec:	2880018e 	ld.w	$r14,$r12,0
1c0087f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0087f4:	0380118c 	ori	$r12,$r12,0x4
1c0087f8:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0087fc:	03bffdad 	ori	$r13,$r13,0xfff
1c008800:	0014b5cd 	and	$r13,$r14,$r13
1c008804:	2980018d 	st.w	$r13,$r12,0
1c008808:	50000800 	b	8(0x8) # 1c008810 <BAT_FAIL+0xc4>
1c00880c:	03400000 	andi	$r0,$r0,0x0
1c008810:	03400000 	andi	$r0,$r0,0x0
1c008814:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008818:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00881c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008820:	4c000020 	jirl	$r0,$r1,0

1c008824 <INTC_Handler>:
INTC_Handler():
1c008824:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008828:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00882c:	29806076 	st.w	$r22,$r3,24(0x18)
1c008830:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008834:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008838:	0380158c 	ori	$r12,$r12,0x5
1c00883c:	2a00018c 	ld.bu	$r12,$r12,0
1c008840:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008844:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008848:	0340058c 	andi	$r12,$r12,0x1
1c00884c:	40002980 	beqz	$r12,40(0x28) # 1c008874 <INTC_Handler+0x50>
1c008850:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008854:	57b4bfff 	bl	-19268(0xfffb4bc) # 1c003d10 <TIM_GetITStatus>
1c008858:	0015008c 	move	$r12,$r4
1c00885c:	40001980 	beqz	$r12,24(0x18) # 1c008874 <INTC_Handler+0x50>
1c008860:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008864:	57b4fbff 	bl	-19208(0xfffb4f8) # 1c003d5c <TIM_ClearIT>
1c008868:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00886c:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c008870:	578b6bff 	bl	-29848(0xfff8b68) # 1c0013d8 <myprintf>
1c008874:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008878:	0340118c 	andi	$r12,$r12,0x4
1c00887c:	40002d80 	beqz	$r12,44(0x2c) # 1c0088a8 <INTC_Handler+0x84>
1c008880:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c008884:	2880018c 	ld.w	$r12,$r12,0
1c008888:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00888c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c008890:	00150184 	move	$r4,$r12
1c008894:	5797ffff 	bl	-26628(0xfff97fc) # 1c002090 <my_recv_dat_int>
1c008898:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00889c:	03800d8c 	ori	$r12,$r12,0x3
1c0088a0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0088a4:	2900018d 	st.b	$r13,$r12,0
1c0088a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0088ac:	0340218c 	andi	$r12,$r12,0x8
1c0088b0:	40002d80 	beqz	$r12,44(0x2c) # 1c0088dc <INTC_Handler+0xb8>
1c0088b4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0088b8:	2880018c 	ld.w	$r12,$r12,0
1c0088bc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0088c0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0088c4:	00150184 	move	$r4,$r12
1c0088c8:	5797cbff 	bl	-26680(0xfff97c8) # 1c002090 <my_recv_dat_int>
1c0088cc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0088d0:	03800d8c 	ori	$r12,$r12,0x3
1c0088d4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0088d8:	2900018d 	st.b	$r13,$r12,0
1c0088dc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0088e0:	03800d8c 	ori	$r12,$r12,0x3
1c0088e4:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0088e8:	2900018d 	st.b	$r13,$r12,0
1c0088ec:	03400000 	andi	$r0,$r0,0x0
1c0088f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0088f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0088f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0088fc:	4c000020 	jirl	$r0,$r1,0

1c008900 <TIMER_HANDLER>:
TIMER_HANDLER():
1c008900:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008904:	29803061 	st.w	$r1,$r3,12(0xc)
1c008908:	29802076 	st.w	$r22,$r3,8(0x8)
1c00890c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008910:	57885fff 	bl	-30628(0xfff885c) # 1c00116c <Set_Timer_clear>
1c008914:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008918:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c00891c:	578abfff 	bl	-30020(0xfff8abc) # 1c0013d8 <myprintf>
1c008920:	57882fff 	bl	-30676(0xfff882c) # 1c00114c <Set_Timer_stop>
1c008924:	03400000 	andi	$r0,$r0,0x0
1c008928:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00892c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008930:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008934:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c008938 <F6x8-0x334>:
1c008938:	1c0015f8 	pcaddu12i	$r24,175(0xaf)
1c00893c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008940:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008944:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008948:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00894c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008950:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008954:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008958:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00895c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008960:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008964:	1c001610 	pcaddu12i	$r16,176(0xb0)
1c008968:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00896c:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008970:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008974:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008978:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00897c:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008980:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008984:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008988:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c00898c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008990:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008994:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008998:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c00899c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089a0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089a4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089a8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089ac:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089b0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089b4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089b8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089bc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089c0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089c4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089c8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089cc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089d0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089d4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089d8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089dc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089e0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089e4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089e8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089ec:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089f0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089f4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089f8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c0089fc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a00:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a04:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a08:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a0c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a10:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a14:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a18:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a1c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a20:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a24:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a28:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a2c:	1c001588 	pcaddu12i	$r8,172(0xac)
1c008a30:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
1c008a34:	1c001518 	pcaddu12i	$r24,168(0xa8)
1c008a38:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a3c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a40:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a44:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a48:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a4c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a50:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a54:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a58:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a5c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a60:	1c001550 	pcaddu12i	$r16,170(0xaa)
1c008a64:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c008a68:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a6c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a70:	1c001484 	pcaddu12i	$r4,164(0xa4)
1c008a74:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a78:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
1c008a7c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a80:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008a84:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c008a88:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008a8c:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c008a90:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c008a94:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008a98:	00000000 	0x00000000
1c008a9c:	befdca20 	0xbefdca20
1c008aa0:	bdfcb0dd 	0xbdfcb0dd
1c008aa4:	b4d5cad3 	0xb4d5cad3
1c008aa8:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008aac:	00000000 	0x00000000
1c008ab0:	d0b8abb4 	0xd0b8abb4
1c008ab4:	cfc9f7c6 	0xcfc9f7c6
1c008ab8:	d0d3bbc3 	0xd0d3bbc3
1c008abc:	b8d6d6ca 	0xb8d6d6ca
1c008ac0:	00000000 	0x00000000
1c008ac4:	ebc8bcc2 	0xebc8bcc2
1c008ac8:	c6ceb8d6 	0xc6ceb8d6
1c008acc:	f1cfbccd 	0xf1cfbccd
1c008ad0:	dcb0a7ca 	0xdcb0a7ca
1c008ad4:	00000000 	0x00000000
1c008ad8:	ceb8d620 	0xceb8d620
1c008adc:	b8abccc6 	0xb8abccc6
1c008ae0:	ccf2bbc9 	0xccf2bbc9
1c008ae4:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c008ae8:	00000000 	0x00000000
1c008aec:	ceb8d620 	0xceb8d620
1c008af0:	caabccc6 	0xcaabccc6
1c008af4:	ccf2bbaa 	0xccf2bbaa
1c008af8:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c008afc:	00000000 	0x00000000
1c008b00:	b8d62020 	0xb8d62020
1c008b04:	bccdc6ce 	0xbccdc6ce
1c008b08:	abccf1cf 	0xabccf1cf
1c008b0c:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c008b10:	00000000 	0x00000000
1c008b14:	ceb8d620 	0xceb8d620
1c008b18:	d5d8ccc6 	0xd5d8ccc6
1c008b1c:	cce3b5f7 	0xcce3b5f7
1c008b20:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c008b24:	00000000 	0x00000000
1c008b28:	b8d62020 	0xb8d62020
1c008b2c:	bbb2c6ce 	0xbbb2c6ce
1c008b30:	e4c5a5c6 	0xe4c5a5c6
1c008b34:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008b38:	00000000 	0x00000000
1c008b3c:	d3bbc320 	0xd3bbc320
1c008b40:	cbd1cbd0 	0xcbd1cbd0
1c008b44:	d6bdb5f7 	0xd6bdb5f7
1c008b48:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c008b4c:	00000000 	0x00000000
1c008b50:	cc202020 	0xcc202020
1c008b54:	baf7d5d8 	0xbaf7d5d8
1c008b58:	caa2b2cf 	0xcaa2b2cf
1c008b5c:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008b60:	00000000 	0x00000000
1c008b64:	b7d6d8b5 	0xb7d6d8b5
1c008b68:	c5baf2d0 	0xc5baf2d0
1c008b6c:	f6b3acb3 	0xf6b3acb3
1c008b70:	a7ceb6b7 	0xa7ceb6b7
1c008b74:	00000000 	0x00000000
1c008b78:	bec92020 	0xbec92020
1c008b7c:	a3c4fdb3 	0xa3c4fdb3
1c008b80:	a7cae5b0 	0xa7cae5b0
1c008b84:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c008b88:	00000000 	0x00000000
1c008b8c:	bfe5c720 	0xbfe5c720
1c008b90:	ceb8d6d5 	0xceb8d6d5
1c008b94:	cae2bfc6 	0xcae2bfc6
1c008b98:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008b9c:	00000000 	0x00000000
1c008ba0:	e5b3babb 	0xe5b3babb
1c008ba4:	dac4f8c7 	0xdac4f8c7
1c008ba8:	d0d3dece 	0xd0d3dece
1c008bac:	bccda7d0 	0xbccda7d0
1c008bb0:	00000000 	0x00000000
1c008bb4:	d0c1b620 	0xd0c1b620
1c008bb8:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1d7fc <_start-0x2e2804>
1c008bbc:	f6b34853 	0xf6b34853
1c008bc0:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c008bc4:	00000000 	0x00000000
1c008bc8:	ce202020 	0xce202020
1c008bcc:	d2a8b6b4 	0xd2a8b6b4
1c008bd0:	ceedb4e5 	0xceedb4e5
1c008bd4:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c008bd8:	00000000 	0x00000000
1c008bdc:	dece2020 	0xdece2020
1c008be0:	c4bca7d0 	0xc4bca7d0
1c008be4:	f7c6e6b4 	0xf7c6e6b4
1c008be8:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c008bec:	00000000 	0x00000000
1c008bf0:	b4c4bc20 	0xb4c4bc20
1c008bf4:	c4f7c6e6 	0xc4f7c6e6
1c008bf8:	b4ddc8da 	0xb4ddc8da
1c008bfc:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008c00:	00000000 	0x00000000
1c008c04:	cac7bc20 	0xcac7bc20
1c008c08:	d2beb1c2 	0xd2beb1c2
1c008c0c:	b4ebc2b3 	0xb4ebc2b3
1c008c10:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008c14:	00000000 	0x00000000
1c008c18:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c1c:	c6ceb8d6 	0xc6ceb8d6
1c008c20:	fac2e2bf 	0xfac2e2bf
1c008c24:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c28:	00000000 	0x00000000
1c008c2c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c30:	b7d6d8b5 	0xb7d6d8b5
1c008c34:	f3ceedb4 	0xf3ceedb4
1c008c38:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008c3c:	00000000 	0x00000000
1c008c40:	bbb5b720 	0xbbb5b720
1c008c44:	c8b7c8d8 	0xc8b7c8d8
1c008c48:	d3ebc2cf 	0xd3ebc2cf
1c008c4c:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c008c50:	00000000 	0x00000000
1c008c54:	003a4449 	0x003a4449
1c008c58:	1c002afc 	pcaddu12i	$r28,343(0x157)
1c008c5c:	1c002ba8 	pcaddu12i	$r8,349(0x15d)
1c008c60:	1c002c68 	pcaddu12i	$r8,355(0x163)
1c008c64:	1c002d80 	pcaddu12i	$r0,364(0x16c)
1c008c68:	1c002e14 	pcaddu12i	$r20,368(0x170)

1c008c6c <F6x8>:
	...
1c008c74:	00002f00 	ctz.d	$r0,$r24
1c008c78:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c008c7c:	14000007 	lu12i.w	$r7,0
1c008c80:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c008c84:	7f2a2400 	0x7f2a2400
1c008c88:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfe8c98 <_start-0x17368>
1c008c8c:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c008c90:	55493600 	bl	-134133452(0x8014934) # 1401d5c4 <_start-0x7fe2a3c>
1c008c94:	00005022 	bitrev.w	$r2,$r1
1c008c98:	00000305 	0x00000305
1c008c9c:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c008ca0:	00000041 	0x00000041
1c008ca4:	001c2241 	mul.w	$r1,$r18,$r8
1c008ca8:	3e081400 	0x3e081400
1c008cac:	08001408 	0x08001408
1c008cb0:	08083e08 	0x08083e08
1c008cb4:	a0000000 	0xa0000000
1c008cb8:	08000060 	0x08000060
1c008cbc:	08080808 	0x08080808
1c008cc0:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c00ecc0 <_sidata+0x5150>
1c008cc4:	20000000 	ll.w	$r0,$r0,0
1c008cc8:	02040810 	slti	$r16,$r0,258(0x102)
1c008ccc:	49513e00 	0x49513e00
1c008cd0:	00003e45 	revb.d	$r5,$r18
1c008cd4:	00407f42 	0x00407f42
1c008cd8:	51614200 	b	-134127296(0x8016140) # 1401ee18 <_start-0x7fe11e8>
1c008cdc:	21004649 	sc.w	$r9,$r18,68(0x44)
1c008ce0:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c008ce4:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c008ce8:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c008cec:	39454545 	0x39454545
1c008cf0:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01d72c <_sidata+0x13bbc>
1c008cf4:	01003049 	0x01003049
1c008cf8:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c008cfc:	49493600 	0x49493600
1c008d00:	06003649 	cacop	0x9,$r18,13(0xd)
1c008d04:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c008d08:	36360000 	0x36360000
1c008d0c:	00000000 	0x00000000
1c008d10:	00003656 	revb.4h	$r22,$r18
1c008d14:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c008d18:	14000041 	lu12i.w	$r1,2(0x2)
1c008d1c:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c008d20:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c008d24:	02000814 	slti	$r20,$r0,2(0x2)
1c008d28:	06095101 	cacop	0x1,$r8,596(0x254)
1c008d2c:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01d65c <_sidata+0x13aec>
1c008d30:	7c003e51 	0x7c003e51
1c008d34:	7c121112 	0x7c121112
1c008d38:	49497f00 	0x49497f00
1c008d3c:	3e003649 	0x3e003649
1c008d40:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c008d44:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01cec0 <_sidata+0x13350>
1c008d48:	7f001c22 	0x7f001c22
1c008d4c:	41494949 	beqz	$r10,2443592(0x254948) # 1c25d694 <_sidata+0x253b24>
1c008d50:	09097f00 	0x09097f00
1c008d54:	3e000109 	0x3e000109
1c008d58:	7a494941 	0x7a494941
1c008d5c:	08087f00 	0x08087f00
1c008d60:	00007f08 	0x00007f08
1c008d64:	00417f41 	slli.d	$r1,$r26,0x1f
1c008d68:	41402000 	beqz	$r0,81952(0x14020) # 1c01cd88 <_sidata+0x13218>
1c008d6c:	7f00013f 	0x7f00013f
1c008d70:	41221408 	beqz	$r0,2171412(0x212214) # 1c21af84 <_sidata+0x211414>
1c008d74:	40407f00 	beqz	$r24,16508(0x407c) # 1c00cdf0 <_sidata+0x3280>
1c008d78:	7f004040 	0x7f004040
1c008d7c:	7f020c02 	0x7f020c02
1c008d80:	08047f00 	0x08047f00
1c008d84:	3e007f10 	0x3e007f10
1c008d88:	3e414141 	0x3e414141
1c008d8c:	09097f00 	0x09097f00
1c008d90:	3e000609 	0x3e000609
1c008d94:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfeaee4 <_start-0x1511c>
1c008d98:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c008d9c:	46004629 	bnez	$r17,2490436(0x260044) # 1c268de0 <_sidata+0x25f270>
1c008da0:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c008da4:	7f010100 	0x7f010100
1c008da8:	3f000101 	0x3f000101
1c008dac:	3f404040 	0x3f404040
1c008db0:	40201f00 	beqz	$r24,8220(0x201c) # 1c00adcc <_sidata+0x125c>
1c008db4:	3f001f20 	0x3f001f20
1c008db8:	3f403840 	0x3f403840
1c008dbc:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c008dc0:	07006314 	0x07006314
1c008dc4:	07087008 	0x07087008
1c008dc8:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c01df28 <_sidata+0x143b8>
1c008dcc:	00004345 	revh.2w	$r5,$r26
1c008dd0:	0041417f 	slli.d	$r31,$r11,0x10
1c008dd4:	552a5500 	bl	67185236(0x4012a54) # 2001b828 <_sidata+0x4011cb8>
1c008dd8:	0000552a 	bitrev.d	$r10,$r9
1c008ddc:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c008de0:	01020400 	0x01020400
1c008de4:	40000402 	beqz	$r0,524292(0x80004) # 1c088de8 <_sidata+0x7f278>
1c008de8:	40404040 	beqz	$r2,16448(0x4040) # 1c00ce28 <_sidata+0x32b8>
1c008dec:	02010000 	slti	$r0,$r0,64(0x40)
1c008df0:	20000004 	ll.w	$r4,$r0,0
1c008df4:	78545454 	0x78545454
1c008df8:	44487f00 	bnez	$r24,18556(0x487c) # 1c00d674 <_sidata+0x3b04>
1c008dfc:	38003844 	ldx.b	$r4,$r2,$r14
1c008e00:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c008e04:	44443800 	bnez	$r0,17464(0x4438) # 1c00d23c <_sidata+0x36cc>
1c008e08:	38007f48 	ldx.b	$r8,$r26,$r31
1c008e0c:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c008e10:	097e0800 	0x097e0800
1c008e14:	18000201 	pcaddi	$r1,16(0x10)
1c008e18:	7ca4a4a4 	0x7ca4a4a4
1c008e1c:	04087f00 	csrxchg	$r0,$r24,0x21f
1c008e20:	00007804 	0x00007804
1c008e24:	00407d44 	0x00407d44
1c008e28:	84804000 	0x84804000
1c008e2c:	7f00007d 	0x7f00007d
1c008e30:	00442810 	0x00442810
1c008e34:	7f410000 	0x7f410000
1c008e38:	7c000040 	0x7c000040
1c008e3c:	78041804 	0x78041804
1c008e40:	04087c00 	csrrd	$r0,0x21f
1c008e44:	38007804 	ldx.b	$r4,$r0,$r30
1c008e48:	38444444 	vstx	$vr4,$r2,$r17
1c008e4c:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c008e50:	18001824 	pcaddi	$r4,193(0xc1)
1c008e54:	fc182424 	0xfc182424
1c008e58:	04087c00 	csrrd	$r0,0x21f
1c008e5c:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c108e64 <_sidata+0xff2f4>
1c008e60:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c008e64:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00cd68 <_sidata+0x31f8>
1c008e68:	3c002040 	0x3c002040
1c008e6c:	7c204040 	0x7c204040
1c008e70:	40201c00 	beqz	$r0,8220(0x201c) # 1c00ae8c <_sidata+0x131c>
1c008e74:	3c001c20 	0x3c001c20
1c008e78:	3c403040 	0x3c403040
1c008e7c:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c008e80:	1c004428 	pcaddu12i	$r8,545(0x221)
1c008e84:	7ca0a0a0 	0x7ca0a0a0
1c008e88:	54644400 	bl	25668(0x6444) # 1c00f2cc <_sidata+0x575c>
1c008e8c:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c008e90:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c008e94 <F8X16>:
	...
1c008ea4:	f8000000 	0xf8000000
1c008ea8:	00000000 	0x00000000
1c008eac:	33000000 	0x33000000
1c008eb0:	00000030 	0x00000030
1c008eb4:	060c1000 	cacop	0x0,$r0,772(0x304)
1c008eb8:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c008ec4:	4078c040 	beqz	$r2,30912(0x78c0) # 1c010784 <_sidata+0x6c14>
1c008ec8:	004078c0 	0x004078c0
1c008ecc:	04043f04 	csrxchg	$r4,$r24,0x10f
1c008ed0:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c008ed4:	fc887000 	0xfc887000
1c008ed8:	00003008 	revb.2h	$r8,$r0
1c008edc:	ff201800 	0xff201800
1c008ee0:	00001e21 	ctz.w	$r1,$r17
1c008ee4:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c008ee8:	000018e0 	cto.w	$r0,$r7
1c008eec:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c008ef0:	001e211e 	mulh.d	$r30,$r8,$r8
1c008ef4:	8808f000 	0x8808f000
1c008ef8:	00000070 	0x00000070
1c008efc:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c008f00:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c008f04:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c008f14:	e0000000 	0xe0000000
1c008f18:	00020418 	0x00020418
1c008f1c:	07000000 	0x07000000
1c008f20:	00402018 	0x00402018
1c008f24:	18040200 	pcaddi	$r0,8208(0x2010)
1c008f28:	000000e0 	0x000000e0
1c008f2c:	18204000 	pcaddi	$r0,66048(0x10200)
1c008f30:	00000007 	0x00000007
1c008f34:	f0804040 	0xf0804040
1c008f38:	00404080 	0x00404080
1c008f3c:	0f010202 	0x0f010202
1c008f40:	00020201 	0x00020201
1c008f44:	f0000000 	0xf0000000
1c008f48:	00000000 	0x00000000
1c008f4c:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c008f50:	00010101 	0x00010101
	...
1c008f5c:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c008f6c:	01010100 	fadd.d	$f0,$f8,$f0
1c008f70:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c008f7c:	00303000 	0x00303000
	...
1c008f88:	04186080 	csrxchg	$r0,$r4,0x618
1c008f8c:	06186000 	cacop	0x0,$r0,1560(0x618)
1c008f90:	00000001 	0x00000001
1c008f94:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c008f98:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008f9c:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c008fa0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008fa4:	f8101000 	0xf8101000
1c008fa8:	00000000 	0x00000000
1c008fac:	3f202000 	0x3f202000
1c008fb0:	00002020 	clo.d	$r0,$r1
1c008fb4:	08087000 	0x08087000
1c008fb8:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c008fbc:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c008fc0:	00302122 	0x00302122
1c008fc4:	88083000 	0x88083000
1c008fc8:	00304888 	0x00304888
1c008fcc:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c008fd0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008fd4:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c008fd8:	0000f810 	0x0000f810
1c008fdc:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c008fe0:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c008fe4:	8808f800 	0x8808f800
1c008fe8:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c008fec:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c008ff0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008ff4:	8810e000 	0x8810e000
1c008ff8:	00001888 	cto.w	$r8,$r4
1c008ffc:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c009000:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c009004:	08083800 	0x08083800
1c009008:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00900c:	3f000000 	0x3f000000
1c009010:	00000000 	0x00000000
1c009014:	08887000 	0x08887000
1c009018:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c00901c:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c009020:	001c2221 	mul.w	$r1,$r17,$r8
1c009024:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c009028:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00902c:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c009030:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c009034:	c0000000 	0xc0000000
1c009038:	000000c0 	0x000000c0
1c00903c:	30000000 	0x30000000
1c009040:	00000030 	0x00000030
1c009044:	80000000 	0x80000000
1c009048:	00000000 	0x00000000
1c00904c:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c01104c <_sidata+0x74dc>
1c009050:	00000000 	0x00000000
1c009054:	40800000 	beqz	$r0,32768(0x8000) # 1c011054 <_sidata+0x74e4>
1c009058:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00905c:	04020100 	csrxchg	$r0,$r8,0x80
1c009060:	00201008 	div.w	$r8,$r0,$r4
1c009064:	40404040 	beqz	$r2,16448(0x4040) # 1c00d0a4 <_sidata+0x3534>
1c009068:	00404040 	0x00404040
1c00906c:	04040404 	csrrd	$r4,0x101
1c009070:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c009074:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c009078:	00008040 	0x00008040
1c00907c:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c009080:	00010204 	0x00010204
1c009084:	08487000 	0x08487000
1c009088:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00908c:	30000000 	0x30000000
1c009090:	00000136 	0x00000136
1c009094:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c009098:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c00909c:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c0090a0:	000b1423 	0x000b1423
1c0090a4:	38c00000 	0x38c00000
1c0090a8:	000000e0 	0x000000e0
1c0090ac:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c0090b0:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c0090b4:	8888f808 	0x8888f808
1c0090b8:	00007088 	0x00007088
1c0090bc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0090c0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0090c4:	080830c0 	0x080830c0
1c0090c8:	00380808 	0x00380808
1c0090cc:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c0090d0:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0090d4:	0808f808 	0x0808f808
1c0090d8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0090dc:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0090e0:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0090e4:	8888f808 	0x8888f808
1c0090e8:	001008e8 	add.w	$r8,$r7,$r2
1c0090ec:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0090f0:	00182023 	sra.w	$r3,$r1,$r8
1c0090f4:	8888f808 	0x8888f808
1c0090f8:	001008e8 	add.w	$r8,$r7,$r2
1c0090fc:	00203f20 	div.w	$r0,$r25,$r15
1c009100:	00000003 	0x00000003
1c009104:	080830c0 	0x080830c0
1c009108:	00003808 	revb.2w	$r8,$r0
1c00910c:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c009110:	00021e22 	0x00021e22
1c009114:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c009118:	08f80800 	0x08f80800
1c00911c:	01213f20 	0x01213f20
1c009120:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c009124:	f8080800 	0xf8080800
1c009128:	00000808 	0x00000808
1c00912c:	3f202000 	0x3f202000
1c009130:	00002020 	clo.d	$r0,$r1
1c009134:	08080000 	0x08080000
1c009138:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c00913c:	808080c0 	0x808080c0
1c009140:	0000007f 	0x0000007f
1c009144:	c088f808 	0xc088f808
1c009148:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c00914c:	01203f20 	0x01203f20
1c009150:	00203826 	div.w	$r6,$r1,$r14
1c009154:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c009158:	00000000 	0x00000000
1c00915c:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009160:	00302020 	0x00302020
1c009164:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c009168:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c00916c:	3f003f20 	0x3f003f20
1c009170:	00203f00 	div.w	$r0,$r24,$r15
1c009174:	c030f808 	0xc030f808
1c009178:	08f80800 	0x08f80800
1c00917c:	00203f20 	div.w	$r0,$r25,$r15
1c009180:	003f1807 	0x003f1807
1c009184:	080810e0 	0x080810e0
1c009188:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c00918c:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c009190:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c009194:	0808f808 	0x0808f808
1c009198:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c00919c:	01213f20 	0x01213f20
1c0091a0:	00000101 	0x00000101
1c0091a4:	080810e0 	0x080810e0
1c0091a8:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0091ac:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c0091b0:	004f5038 	0x004f5038
1c0091b4:	8888f808 	0x8888f808
1c0091b8:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c0091bc:	00203f20 	div.w	$r0,$r25,$r15
1c0091c0:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c0091c4:	08887000 	0x08887000
1c0091c8:	00380808 	0x00380808
1c0091cc:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c0091d0:	001c2221 	mul.w	$r1,$r17,$r8
1c0091d4:	f8080818 	0xf8080818
1c0091d8:	00180808 	sra.w	$r8,$r0,$r2
1c0091dc:	3f200000 	0x3f200000
1c0091e0:	00000020 	0x00000020
1c0091e4:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0091e8:	08f80800 	0x08f80800
1c0091ec:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0091f0:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0091f4:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c0091f8:	0838c800 	0x0838c800
1c0091fc:	38070000 	0x38070000
1c009200:	0000010e 	0x0000010e
1c009204:	f80008f8 	0xf80008f8
1c009208:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c00920c:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c009210:	00033c07 	0x00033c07
1c009214:	80681808 	0x80681808
1c009218:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c00921c:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c009220:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c009224:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c009228:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00922c:	3f200000 	0x3f200000
1c009230:	00000020 	0x00000020
1c009234:	08080810 	0x08080810
1c009238:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c00923c:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c009240:	00182020 	sra.w	$r0,$r1,$r8
1c009244:	fe000000 	0xfe000000
1c009248:	00020202 	0x00020202
1c00924c:	7f000000 	0x7f000000
1c009250:	00404040 	0x00404040
1c009254:	c0300c00 	0xc0300c00
1c009258:	00000000 	0x00000000
1c00925c:	01000000 	0x01000000
1c009260:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c009264:	02020200 	slti	$r0,$r16,128(0x80)
1c009268:	000000fe 	0x000000fe
1c00926c:	40404000 	beqz	$r0,16448(0x4040) # 1c00d2ac <_sidata+0x373c>
1c009270:	0000007f 	0x0000007f
1c009274:	02040000 	slti	$r0,$r0,256(0x100)
1c009278:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c00928c:	80808080 	0x80808080
1c009290:	80808080 	0x80808080
1c009294:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c0092a4:	80800000 	0x80800000
1c0092a8:	00008080 	0x00008080
1c0092ac:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c0092b0:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c0092b4:	8000f808 	0x8000f808
1c0092b8:	00000080 	0x00000080
1c0092bc:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c0092c0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0092c4:	80000000 	0x80000000
1c0092c8:	00008080 	0x00008080
1c0092cc:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0092d0:	00112020 	sub.w	$r0,$r1,$r8
1c0092d4:	80000000 	0x80000000
1c0092d8:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c0092dc:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0092e0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0092e4:	80800000 	0x80800000
1c0092e8:	00008080 	0x00008080
1c0092ec:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c0092f0:	00132222 	maskeqz	$r2,$r17,$r8
1c0092f4:	f0808000 	0xf0808000
1c0092f8:	18888888 	pcaddi	$r8,279620(0x44444)
1c0092fc:	3f202000 	0x3f202000
1c009300:	00002020 	clo.d	$r0,$r1
1c009304:	80800000 	0x80800000
1c009308:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00930c:	94946b00 	0x94946b00
1c009310:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c009314:	8000f808 	0x8000f808
1c009318:	00008080 	0x00008080
1c00931c:	00213f20 	div.wu	$r0,$r25,$r15
1c009320:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c009324:	98988000 	0x98988000
1c009328:	00000000 	0x00000000
1c00932c:	3f202000 	0x3f202000
1c009330:	00002020 	clo.d	$r0,$r1
1c009334:	80000000 	0x80000000
1c009338:	00009898 	0x00009898
1c00933c:	8080c000 	0x8080c000
1c009340:	00007f80 	0x00007f80
1c009344:	0000f808 	0x0000f808
1c009348:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00934c:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c009350:	0020302d 	div.w	$r13,$r1,$r12
1c009354:	f8080800 	0xf8080800
1c009358:	00000000 	0x00000000
1c00935c:	3f202000 	0x3f202000
1c009360:	00002020 	clo.d	$r0,$r1
1c009364:	80808080 	0x80808080
1c009368:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00936c:	00203f20 	div.w	$r0,$r25,$r15
1c009370:	3f00203f 	0x3f00203f
1c009374:	80008080 	0x80008080
1c009378:	00008080 	0x00008080
1c00937c:	00213f20 	div.wu	$r0,$r25,$r15
1c009380:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c009384:	80800000 	0x80800000
1c009388:	00008080 	0x00008080
1c00938c:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c009390:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c009394:	80008080 	0x80008080
1c009398:	00000080 	0x00000080
1c00939c:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c0093a0:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0093a4:	80000000 	0x80000000
1c0093a8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0093ac:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c0093b0:	80ffa020 	0x80ffa020
1c0093b4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0093b8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0093bc:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c0093c0:	00010020 	asrtle.d	$r1,$r0
1c0093c4:	80800000 	0x80800000
1c0093c8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0093cc:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c0093d0:	00192424 	srl.d	$r4,$r1,$r9
1c0093d4:	e0808000 	0xe0808000
1c0093d8:	00008080 	0x00008080
1c0093dc:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c0093e0:	00002020 	clo.d	$r0,$r1
1c0093e4:	00008080 	0x00008080
1c0093e8:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c0093ec:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0093f0:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c0093f4:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0093f8:	80808000 	0x80808000
1c0093fc:	300e0100 	0x300e0100
1c009400:	00010608 	0x00010608
1c009404:	80008080 	0x80008080
1c009408:	80808000 	0x80808000
1c00940c:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c009410:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c009414:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c009418:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00941c:	2e312000 	0x2e312000
1c009420:	0020310e 	div.w	$r14,$r8,$r12
1c009424:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009428:	80808000 	0x80808000
1c00942c:	708e8180 	0x708e8180
1c009430:	00010618 	0x00010618
1c009434:	80808000 	0x80808000
1c009438:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c00943c:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c009440:	00302122 	0x00302122
1c009444:	00000000 	0x00000000
1c009448:	02027c80 	slti	$r0,$r4,159(0x9f)
1c00944c:	00000000 	0x00000000
1c009450:	40403f00 	beqz	$r24,16444(0x403c) # 1c00d48c <_sidata+0x391c>
1c009454:	00000000 	0x00000000
1c009458:	000000ff 	0x000000ff
1c00945c:	00000000 	0x00000000
1c009460:	000000ff 	0x000000ff
1c009464:	7c020200 	0x7c020200
1c009468:	00000080 	0x00000080
1c00946c:	3f404000 	0x3f404000
1c009470:	00000000 	0x00000000
1c009474:	01010600 	fadd.d	$f0,$f16,$f1
1c009478:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c009484 <gImage_cc>:
	...
1c0094d0:	c0c08080 	0xc0c08080
1c0094d4:	80c0c0c0 	0x80c0c0c0
1c0094d8:	00000080 	0x00000080
	...
1c009500:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c009504:	01000101 	0x01000101
1c009508:	ff070301 	0xff070301
1c00950c:	0000f0fe 	0x0000f0fe
	...
1c00952c:	fe000000 	0xfe000000
1c009530:	ffffffff 	0xffffffff
1c009534:	0f9fffff 	0x0f9fffff
1c009538:	ff9f0f0f 	0xff9f0f0f
1c00953c:	ffffffff 	0xffffffff
1c009540:	0000feff 	0x0000feff
	...
1c009560:	3f1f0700 	0x3f1f0700
1c009564:	ffff7f7f 	0xffff7f7f
1c009568:	f8f8ffff 	0xf8f8ffff
1c00956c:	7fffffff 	0x7fffffff
1c009570:	071f3f7f 	0x071f3f7f
	...
1c0095e8:	1c0064e4 	pcaddu12i	$r4,807(0x327)
1c0095ec:	1c005868 	pcaddu12i	$r8,707(0x2c3)
1c0095f0:	1c005900 	pcaddu12i	$r0,712(0x2c8)
1c0095f4:	1c005a08 	pcaddu12i	$r8,720(0x2d0)
1c0095f8:	1c005a6c 	pcaddu12i	$r12,723(0x2d3)
1c0095fc:	1c005ad0 	pcaddu12i	$r16,726(0x2d6)
1c009600:	1c005bd8 	pcaddu12i	$r24,734(0x2de)
1c009604:	1c005ce0 	pcaddu12i	$r0,743(0x2e7)
1c009608:	1c005de8 	pcaddu12i	$r8,751(0x2ef)
1c00960c:	1c005e4c 	pcaddu12i	$r12,754(0x2f2)
1c009610:	1c005eb0 	pcaddu12i	$r16,757(0x2f5)
1c009614:	1c005f14 	pcaddu12i	$r20,760(0x2f8)
1c009618:	1c005fe4 	pcaddu12i	$r4,767(0x2ff)
1c00961c:	1c006048 	pcaddu12i	$r8,770(0x302)
1c009620:	1c006118 	pcaddu12i	$r24,776(0x308)
1c009624:	1c00617c 	pcaddu12i	$r28,779(0x30b)
1c009628:	1c0061f4 	pcaddu12i	$r20,783(0x30f)
1c00962c:	1c0062fc 	pcaddu12i	$r28,791(0x317)
1c009630:	1c006374 	pcaddu12i	$r20,795(0x31b)
1c009634:	1c006444 	pcaddu12i	$r4,802(0x322)
1c009638:	00002e31 	ctz.d	$r17,$r17
1c00963c:	00002e32 	ctz.d	$r18,$r17
1c009640:	00002e33 	ctz.d	$r19,$r17
1c009644:	0000002a 	0x0000002a
1c009648:	00000020 	0x00000020
1c00964c:	1c006e20 	pcaddu12i	$r0,881(0x371)
1c009650:	1c0065c0 	pcaddu12i	$r0,814(0x32e)
1c009654:	1c006624 	pcaddu12i	$r4,817(0x331)
1c009658:	1c0066d8 	pcaddu12i	$r24,822(0x336)
1c00965c:	1c0067c4 	pcaddu12i	$r4,830(0x33e)
1c009660:	1c006818 	pcaddu12i	$r24,832(0x340)
1c009664:	1c006848 	pcaddu12i	$r8,834(0x342)
1c009668:	1c006878 	pcaddu12i	$r24,835(0x343)
1c00966c:	1c0068d0 	pcaddu12i	$r16,838(0x346)
1c009670:	1c00690c 	pcaddu12i	$r12,840(0x348)
1c009674:	1c006928 	pcaddu12i	$r8,841(0x349)
1c009678:	1c006a08 	pcaddu12i	$r8,848(0x350)
1c00967c:	1c006af4 	pcaddu12i	$r20,855(0x357)
1c009680:	1c006b20 	pcaddu12i	$r0,857(0x359)
1c009684:	1c006b50 	pcaddu12i	$r16,858(0x35a)
1c009688:	1c006b7c 	pcaddu12i	$r28,859(0x35b)
1c00968c:	1c006bb8 	pcaddu12i	$r24,861(0x35d)
1c009690:	1c006c14 	pcaddu12i	$r20,864(0x360)
1c009694:	1c006c74 	pcaddu12i	$r20,867(0x363)
1c009698:	1c006ca4 	pcaddu12i	$r4,869(0x365)
1c00969c:	1c006d90 	pcaddu12i	$r16,876(0x36c)
1c0096a0:	1c006df0 	pcaddu12i	$r16,879(0x36f)
1c0096a4:	3c200a0d 	0x3c200a0d
1c0096a8:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c0202c8 <_sidata+0x16758>
1c0096ac:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c0096b0:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeb714 <_start-0x148ec>
1c0096b4:	3a636e75 	0x3a636e75
1c0096b8:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c0096bc:	0a0d3e20 	0x0a0d3e20
1c0096c0:	00000000 	0x00000000
1c0096c4:	2e2e2e0a 	0x2e2e2e0a
1c0096c8:	2e2e2e2e 	0x2e2e2e2e
1c0096cc:	2e2e2e2e 	0x2e2e2e2e
1c0096d0:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c0096d4:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19f628 <_sidata+0x195ab8>
1c0096d8:	2e2e544e 	0x2e2e544e
1c0096dc:	2e2e2e2e 	0x2e2e2e2e
1c0096e0:	2e2e2e2e 	0x2e2e2e2e
1c0096e4:	2e2e2e2e 	0x2e2e2e2e
1c0096e8:	00000d0a 	0x00000d0a
1c0096ec:	2d2d2d0a 	0x2d2d2d0a
1c0096f0:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000c5c <cpu_wait+0xbb4>
1c0096f4:	746e4968 	0x746e4968
1c0096f8:	79654b3a 	0x79654b3a
1c0096fc:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfef864 <_start-0x1079c>
1c009700:	3a6c656e 	0x3a6c656e
1c009704:	78257830 	0x78257830
1c009708:	0000000a 	0x0000000a
1c00970c:	2e2e2e0a 	0x2e2e2e0a
1c009710:	2e2e2e2e 	0x2e2e2e2e
1c009714:	2e2e2e2e 	0x2e2e2e2e
1c009718:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39d944 <_sidata+0x393dd4>
1c00971c:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1dd78 <_start-0x2e2288>
1c009720:	2e2e4c49 	0x2e2e4c49
1c009724:	2e2e2e2e 	0x2e2e2e2e
1c009728:	2e2e2e2e 	0x2e2e2e2e
1c00972c:	2e2e2e2e 	0x2e2e2e2e
1c009730:	00000d0a 	0x00000d0a
1c009734:	2e2e2e0a 	0x2e2e2e0a
1c009738:	2e2e2e2e 	0x2e2e2e2e
1c00973c:	2e2e2e2e 	0x2e2e2e2e
1c009740:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38d86c <_sidata+0x383cfc>
1c009744:	2e2e2e43 	0x2e2e2e43
1c009748:	2e2e2e2e 	0x2e2e2e2e
1c00974c:	2e2e2e2e 	0x2e2e2e2e
1c009750:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c009754:	0000000d 	0x0000000d
1c009758:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c0209bc <_sidata+0x16e4c>
1c00975c:	72656870 	0x72656870
1c009760:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c009764:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c0204cc <_sidata+0x1695c>
1c009768:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00fa88 <_sidata+0x5f18>
1c00976c:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c009770:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c020bdc <_sidata+0x1706c>
1c009774:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c009778:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c00977c:	00000000 	0x00000000
1c009780:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c0209ec <_sidata+0x16e7c>
1c009784:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c0200d8 <_sidata+0x16568>
1c009788:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffb7f8 <_start-0x4808>
1c00978c:	7261656c 	0x7261656c
1c009790:	746e6920 	0x746e6920
1c009794:	75727265 	0x75727265
1c009798:	2e2e7470 	0x2e2e7470
1c00979c:	0000000a 	0x0000000a

1c0097a0 <Ext_IrqHandle>:
1c0097a0:	1c007bec 	pcaddu12i	$r12,991(0x3df)
1c0097a4:	1c007c38 	pcaddu12i	$r24,993(0x3e1)
1c0097a8:	1c007c84 	pcaddu12i	$r4,996(0x3e4)
1c0097ac:	1c007cd0 	pcaddu12i	$r16,998(0x3e6)
1c0097b0:	1c007d1c 	pcaddu12i	$r28,1000(0x3e8)
1c0097b4:	1c007d68 	pcaddu12i	$r8,1003(0x3eb)
1c0097b8:	1c007db4 	pcaddu12i	$r20,1005(0x3ed)
1c0097bc:	1c007e00 	pcaddu12i	$r0,1008(0x3f0)
1c0097c0:	1c007e4c 	pcaddu12i	$r12,1010(0x3f2)
1c0097c4:	1c007e98 	pcaddu12i	$r24,1012(0x3f4)
1c0097c8:	1c007ee4 	pcaddu12i	$r4,1015(0x3f7)
1c0097cc:	1c007f30 	pcaddu12i	$r16,1017(0x3f9)
1c0097d0:	1c007f7c 	pcaddu12i	$r28,1019(0x3fb)
1c0097d4:	1c007fc8 	pcaddu12i	$r8,1022(0x3fe)
1c0097d8:	1c008014 	pcaddu12i	$r20,1024(0x400)
1c0097dc:	1c008060 	pcaddu12i	$r0,1027(0x403)
1c0097e0:	1c0080ac 	pcaddu12i	$r12,1029(0x405)
1c0097e4:	1c0080f8 	pcaddu12i	$r24,1031(0x407)
1c0097e8:	1c008144 	pcaddu12i	$r4,1034(0x40a)
1c0097ec:	1c008190 	pcaddu12i	$r16,1036(0x40c)
1c0097f0:	1c0081dc 	pcaddu12i	$r28,1038(0x40e)
1c0097f4:	1c008228 	pcaddu12i	$r8,1041(0x411)
1c0097f8:	1c008274 	pcaddu12i	$r20,1043(0x413)
1c0097fc:	1c0082c0 	pcaddu12i	$r0,1046(0x416)
1c009800:	1c00830c 	pcaddu12i	$r12,1048(0x418)
1c009804:	1c008358 	pcaddu12i	$r24,1050(0x41a)
1c009808:	1c0083a4 	pcaddu12i	$r4,1053(0x41d)
1c00980c:	1c0083f0 	pcaddu12i	$r16,1055(0x41f)
1c009810:	1c00843c 	pcaddu12i	$r28,1057(0x421)
1c009814:	1c008488 	pcaddu12i	$r8,1060(0x424)
1c009818:	1c0084d4 	pcaddu12i	$r20,1062(0x426)
1c00981c:	1c008520 	pcaddu12i	$r0,1065(0x429)
1c009820:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009824:	1c0087bc 	pcaddu12i	$r28,1085(0x43d)
1c009828:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c00982c:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009830:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009834:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009838:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c00983c:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009840:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009844:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009848:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c00984c:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009850:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009854:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009858:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c00985c:	1c00880c 	pcaddu12i	$r12,1088(0x440)
1c009860:	1c0087d8 	pcaddu12i	$r24,1086(0x43e)

1c009864 <__FUNCTION__.1731>:
1c009864:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020cdc <_sidata+0x1716c>
1c009868:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0208cc <_sidata+0x16d5c>
1c00986c:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffc8cc <_start-0x3734>
1c009870:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0009e0 <cpu_wait+0x938>
1c009874:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0106d4 <_sidata+0x6b64>
1c009878:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00987c <__FUNCTION__.1735>:
1c00987c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020cf4 <_sidata+0x17184>
1c009880:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0208e4 <_sidata+0x16d74>
1c009884:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffc9e4 <_start-0x361c>
1c009888:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0009f8 <cpu_wait+0x950>
1c00988c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0106ec <_sidata+0x6b7c>
1c009890:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009894 <__FUNCTION__.1739>:
1c009894:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d0c <_sidata+0x1719c>
1c009898:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0208fc <_sidata+0x16d8c>
1c00989c:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffcafc <_start-0x3504>
1c0098a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000a10 <cpu_wait+0x968>
1c0098a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010704 <_sidata+0x6b94>
1c0098a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0098ac <__FUNCTION__.1743>:
1c0098ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d24 <_sidata+0x171b4>
1c0098b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020914 <_sidata+0x16da4>
1c0098b4:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffcc14 <_start-0x33ec>
1c0098b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000a28 <cpu_wait+0x980>
1c0098bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01071c <_sidata+0x6bac>
1c0098c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0098c4 <__FUNCTION__.1747>:
1c0098c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d3c <_sidata+0x171cc>
1c0098c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02092c <_sidata+0x16dbc>
1c0098cc:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffcd2c <_start-0x32d4>
1c0098d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000a40 <cpu_wait+0x998>
1c0098d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010734 <_sidata+0x6bc4>
1c0098d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0098dc <__FUNCTION__.1751>:
1c0098dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d54 <_sidata+0x171e4>
1c0098e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020944 <_sidata+0x16dd4>
1c0098e4:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffce44 <_start-0x31bc>
1c0098e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000a58 <cpu_wait+0x9b0>
1c0098ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01074c <_sidata+0x6bdc>
1c0098f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0098f4 <__FUNCTION__.1755>:
1c0098f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d6c <_sidata+0x171fc>
1c0098f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02095c <_sidata+0x16dec>
1c0098fc:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffcf5c <_start-0x30a4>
1c009900:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000a70 <cpu_wait+0x9c8>
1c009904:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010764 <_sidata+0x6bf4>
1c009908:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00990c <__FUNCTION__.1759>:
1c00990c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d84 <_sidata+0x17214>
1c009910:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020974 <_sidata+0x16e04>
1c009914:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffd074 <_start-0x2f8c>
1c009918:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000a88 <cpu_wait+0x9e0>
1c00991c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01077c <_sidata+0x6c0c>
1c009920:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009924 <__FUNCTION__.1763>:
1c009924:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020d9c <_sidata+0x1722c>
1c009928:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c02098c <_sidata+0x16e1c>
1c00992c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffc98c <_start-0x3674>
1c009930:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000aa0 <cpu_wait+0x9f8>
1c009934:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010794 <_sidata+0x6c24>
1c009938:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00993c <__FUNCTION__.1767>:
1c00993c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020db4 <_sidata+0x17244>
1c009940:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0209a4 <_sidata+0x16e34>
1c009944:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffcaa4 <_start-0x355c>
1c009948:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ab8 <cpu_wait+0xa10>
1c00994c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0107ac <_sidata+0x6c3c>
1c009950:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009954 <__FUNCTION__.1771>:
1c009954:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020dcc <_sidata+0x1725c>
1c009958:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0209bc <_sidata+0x16e4c>
1c00995c:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffcbbc <_start-0x3444>
1c009960:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ad0 <cpu_wait+0xa28>
1c009964:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0107c4 <_sidata+0x6c54>
1c009968:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00996c <__FUNCTION__.1775>:
1c00996c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020de4 <_sidata+0x17274>
1c009970:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0209d4 <_sidata+0x16e64>
1c009974:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffccd4 <_start-0x332c>
1c009978:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ae8 <cpu_wait+0xa40>
1c00997c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0107dc <_sidata+0x6c6c>
1c009980:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009984 <__FUNCTION__.1779>:
1c009984:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020dfc <_sidata+0x1728c>
1c009988:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0209ec <_sidata+0x16e7c>
1c00998c:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffcdec <_start-0x3214>
1c009990:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b00 <cpu_wait+0xa58>
1c009994:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0107f4 <_sidata+0x6c84>
1c009998:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00999c <__FUNCTION__.1783>:
1c00999c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020e14 <_sidata+0x172a4>
1c0099a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a04 <_sidata+0x16e94>
1c0099a4:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffcf04 <_start-0x30fc>
1c0099a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b18 <cpu_wait+0xa70>
1c0099ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01080c <_sidata+0x6c9c>
1c0099b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0099b4 <__FUNCTION__.1787>:
1c0099b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020e2c <_sidata+0x172bc>
1c0099b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a1c <_sidata+0x16eac>
1c0099bc:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffd01c <_start-0x2fe4>
1c0099c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b30 <cpu_wait+0xa88>
1c0099c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010824 <_sidata+0x6cb4>
1c0099c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0099cc <__FUNCTION__.1791>:
1c0099cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020e44 <_sidata+0x172d4>
1c0099d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a34 <_sidata+0x16ec4>
1c0099d4:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffd134 <_start-0x2ecc>
1c0099d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b48 <cpu_wait+0xaa0>
1c0099dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01083c <_sidata+0x6ccc>
1c0099e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0099e4 <__FUNCTION__.1795>:
1c0099e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020e5c <_sidata+0x172ec>
1c0099e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a4c <_sidata+0x16edc>
1c0099ec:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffca4c <_start-0x35b4>
1c0099f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b60 <cpu_wait+0xab8>
1c0099f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010854 <_sidata+0x6ce4>
1c0099f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0099fc <__FUNCTION__.1799>:
1c0099fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020e74 <_sidata+0x17304>
1c009a00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a64 <_sidata+0x16ef4>
1c009a04:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffcb64 <_start-0x349c>
1c009a08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b78 <cpu_wait+0xad0>
1c009a0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01086c <_sidata+0x6cfc>
1c009a10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009a14 <__FUNCTION__.1803>:
1c009a14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020e8c <_sidata+0x1731c>
1c009a18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a7c <_sidata+0x16f0c>
1c009a1c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffcc7c <_start-0x3384>
1c009a20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000b90 <cpu_wait+0xae8>
1c009a24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010884 <_sidata+0x6d14>
1c009a28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009a2c <__FUNCTION__.1807>:
1c009a2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020ea4 <_sidata+0x17334>
1c009a30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020a94 <_sidata+0x16f24>
1c009a34:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffcd94 <_start-0x326c>
1c009a38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ba8 <cpu_wait+0xb00>
1c009a3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01089c <_sidata+0x6d2c>
1c009a40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009a44 <__FUNCTION__.1811>:
1c009a44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020ebc <_sidata+0x1734c>
1c009a48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020aac <_sidata+0x16f3c>
1c009a4c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffceac <_start-0x3154>
1c009a50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000bc0 <cpu_wait+0xb18>
1c009a54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0108b4 <_sidata+0x6d44>
1c009a58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009a5c <__FUNCTION__.1815>:
1c009a5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020ed4 <_sidata+0x17364>
1c009a60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ac4 <_sidata+0x16f54>
1c009a64:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffcfc4 <_start-0x303c>
1c009a68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000bd8 <cpu_wait+0xb30>
1c009a6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0108cc <_sidata+0x6d5c>
1c009a70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009a74 <__FUNCTION__.1819>:
1c009a74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020eec <_sidata+0x1737c>
1c009a78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020adc <_sidata+0x16f6c>
1c009a7c:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffd0dc <_start-0x2f24>
1c009a80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000bf0 <cpu_wait+0xb48>
1c009a84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0108e4 <_sidata+0x6d74>
1c009a88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009a8c <__FUNCTION__.1823>:
1c009a8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f04 <_sidata+0x17394>
1c009a90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020af4 <_sidata+0x16f84>
1c009a94:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffd1f4 <_start-0x2e0c>
1c009a98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c08 <cpu_wait+0xb60>
1c009a9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0108fc <_sidata+0x6d8c>
1c009aa0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009aa4 <__FUNCTION__.1827>:
1c009aa4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f1c <_sidata+0x173ac>
1c009aa8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b0c <_sidata+0x16f9c>
1c009aac:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffcb10 <_start-0x34f0>
1c009ab0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c20 <cpu_wait+0xb78>
1c009ab4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010914 <_sidata+0x6da4>
1c009ab8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009abc <__FUNCTION__.1831>:
1c009abc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f34 <_sidata+0x173c4>
1c009ac0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b24 <_sidata+0x16fb4>
1c009ac4:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffcc28 <_start-0x33d8>
1c009ac8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c38 <cpu_wait+0xb90>
1c009acc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01092c <_sidata+0x6dbc>
1c009ad0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ad4 <__FUNCTION__.1835>:
1c009ad4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f4c <_sidata+0x173dc>
1c009ad8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b3c <_sidata+0x16fcc>
1c009adc:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffcd40 <_start-0x32c0>
1c009ae0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c50 <cpu_wait+0xba8>
1c009ae4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010944 <_sidata+0x6dd4>
1c009ae8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009aec <__FUNCTION__.1839>:
1c009aec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f64 <_sidata+0x173f4>
1c009af0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b54 <_sidata+0x16fe4>
1c009af4:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffce58 <_start-0x31a8>
1c009af8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c68 <cpu_wait+0xbc0>
1c009afc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01095c <_sidata+0x6dec>
1c009b00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009b04 <__FUNCTION__.1843>:
1c009b04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f7c <_sidata+0x1740c>
1c009b08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b6c <_sidata+0x16ffc>
1c009b0c:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffcf70 <_start-0x3090>
1c009b10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c80 <cpu_wait+0xbd8>
1c009b14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010974 <_sidata+0x6e04>
1c009b18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009b1c <__FUNCTION__.1847>:
1c009b1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020f94 <_sidata+0x17424>
1c009b20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b84 <_sidata+0x17014>
1c009b24:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffd088 <_start-0x2f78>
1c009b28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000c98 <cpu_wait+0xbf0>
1c009b2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01098c <_sidata+0x6e1c>
1c009b30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009b34 <__FUNCTION__.1851>:
1c009b34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020fac <_sidata+0x1743c>
1c009b38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020b9c <_sidata+0x1702c>
1c009b3c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffd1a0 <_start-0x2e60>
1c009b40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000cb0 <cpu_wait+0xc08>
1c009b44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0109a4 <_sidata+0x6e34>
1c009b48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009b4c <__FUNCTION__.1855>:
1c009b4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020fc4 <_sidata+0x17454>
1c009b50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020bb4 <_sidata+0x17044>
1c009b54:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffd2b8 <_start-0x2d48>
1c009b58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000cc8 <cpu_wait+0xc20>
1c009b5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0109bc <_sidata+0x6e4c>
1c009b60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009b64 <__FUNCTION__.1864>:
1c009b64:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c000fdc <cpu_wait+0xf34>
1c009b68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0109c8 <_sidata+0x6e58>
1c009b6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	8000019c 	0x8000019c
80001008:	800001bc 	0x800001bc
8000100c:	8000000c 	0x8000000c
80001010:	800001b4 	0x800001b4
80001014:	800001d8 	0x800001d8
80001018:	800001c0 	0x800001c0

8000101c <AS608Addr>:
8000101c:	ffffffff 	0xffffffff

80001020 <F16x16>:
80001020:	32539410 	xvldrepl.h	$xr16,$r0,-1590(0x9ca)
80001024:	1052321e 	addu16i.d	$r30,$r16,5260(0x148c)
80001028:	42427e00 	beqz	$r16,148092(0x2427c) # 800252a4 <_edata+0x23818>
8000102c:	00007e42 	0x00007e42
80001030:	ff000000 	0xff000000
80001034:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025597c <_edata+0x253ef0>
80001038:	ff494949 	0xff494949
8000103c:	00000000 	0x00000000
80001040:	494acc08 	bceqz	$fcc0,2181836(0x214acc) # 80215b0c <_edata+0x214080>
80001044:	18cc4a48 	pcaddi	$r8,418386(0x66252)
80001048:	88887f00 	0x88887f00
8000104c:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001050:	1212ff00 	addu16i.d	$r0,$r24,-31553(0x84bf)
80001054:	007f9252 	bstrpick.w	$r18,$r18,0x1f,0x4
80001058:	88887e00 	0x88887e00
8000105c:	00e08284 	bstrpick.d	$r4,$r20,0x20,0x20
80001060:	0601f800 	cacop	0x0,$r0,126(0x7e)
80001064:	02020000 	slti	$r0,$r0,128(0x80)
80001068:	02020202 	slti	$r2,$r16,128(0x80)
8000106c:	0000fe02 	0x0000fe02
80001070:	0000ff00 	0x0000ff00
80001074:	00000000 	0x00000000
80001078:	40000000 	beqz	$r0,0 # 80001078 <F16x16+0x58>
8000107c:	00007f80 	0x00007f80
80001080:	14244440 	lu12i.w	$r0,74274(0x12222)
80001084:	0024147f 	crc.w.b.w	$r31,$r3,$r5
80001088:	147f1424 	lu12i.w	$r4,260257(0x3f8a1)
8000108c:	00404424 	0x00404424
80001090:	29498808 	st.h	$r8,$r0,610(0x262)
80001094:	79894909 	0x79894909
80001098:	29090909 	st.b	$r9,$r8,578(0x242)
8000109c:	00088849 	bytepick.w	$r9,$r2,$r2,0x1
800010a0:	32220000 	xvldrepl.w	$xr0,$r0,512(0x200)
800010a4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb348 <_sidata+0x63fe17d8>
800010a8:	81091121 	0x81091121
800010ac:	00000001 	0x00000001
800010b0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010b4:	7e82420b 	0x7e82420b
800010b8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010bc:	00004623 	revh.d	$r3,$r17
800010c0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbcf0 <_sidata+0x63ff2180>
800010c4:	c8880030 	0xc8880030
800010c8:	888e99a8 	0x888e99a8
800010cc:	0088c8a8 	bstrins.d	$r8,$r5,0x8,0x32
800010d0:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
800010d4:	30408012 	vldrepl.h	$vr18,$r0,64(0x40)
800010d8:	3f00000f 	0x3f00000f
800010dc:	00714040 	bstrins.w	$r0,$r2,0x11,0x10
800010e0:	40404040 	beqz	$r2,16448(0x4040) # 80005120 <_edata+0x3694>
800010e4:	44ff4040 	bnez	$r2,65344(0xff40) # 80011024 <_edata+0xf598>
800010e8:	44444444 	bnez	$r2,1066052(0x104444) # 8010552c <_edata+0x103aa0>
800010ec:	00404044 	0x00404044
800010f0:	00000000 	0x00000000
800010f4:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
800010f8:	08040200 	0x08040200
800010fc:	00000010 	0x00000010
80001100:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001104:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001108:	d20e9222 	0xd20e9222
8000110c:	00001e22 	ctz.w	$r2,$r17
80001110:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001114:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001118:	ff09090a 	0xff09090a
8000111c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001120:	e72c1020 	0xe72c1020
80001124:	e2002424 	0xe2002424
80001128:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000112c:	0000e628 	0x0000e628
80001130:	7f010101 	0x7f010101
80001134:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
80001138:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
8000113c:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
80001140:	04448c10 	csrrd	$r16,0x1123
80001144:	a69504e4 	0xa69504e4
80001148:	84142444 	0x84142444
8000114c:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001150:	417a0202 	beqz	$r16,621056(0x97a00) # 80098b50 <_edata+0x970c4>
80001154:	7e424341 	0x7e424341
80001158:	43424242 	beqz	$r18,737856(0xb4240) # 800b5398 <_edata+0xb390c>
8000115c:	000000f8 	0x000000f8
80001160:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f5e4 <_edata+0xdb58>
80001164:	0200c444 	slti	$r4,$r2,49(0x31)
80001168:	828282f2 	0x828282f2
8000116c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001170:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001174:	08003f10 	0x08003f10
80001178:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201980 <_edata+0x1ffef4>
8000117c:	003f4088 	0x003f4088
80001180:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001184:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001188:	d20e9222 	0xd20e9222
8000118c:	00001e22 	ctz.w	$r2,$r17
80001190:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001194:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001198:	ff09090a 	0xff09090a
8000119c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
800011a0:	e72c1020 	0xe72c1020
800011a4:	e2002424 	0xe2002424
800011a8:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
800011ac:	0000e628 	0x0000e628
800011b0:	7f010101 	0x7f010101
800011b4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800011b8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800011bc:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800011c0:	cc424040 	0xcc424040
800011c4:	9ea04000 	0x9ea04000
800011c8:	9e828282 	0x9e828282
800011cc:	002020a0 	div.w	$r0,$r5,$r8
800011d0:	3f000000 	0x3f000000
800011d4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3525c <_sidata+0x63c2b6ec>
800011d8:	4628102c 	bnez	$r1,3287056(0x322810) # 803239e8 <_edata+0x321f5c>
800011dc:	00808041 	bstrins.d	$r1,$r2,0x0,0x20
800011e0:	d5151700 	0xd5151700
800011e4:	7d555755 	0x7d555755
800011e8:	d5555755 	0xd5555755
800011ec:	00001715 	clz.w	$r21,$r24
800011f0:	7f404040 	0x7f404040
800011f4:	55555555 	bl	89478484(0x5555554) # 85556748 <_edata+0x5554cbc>
800011f8:	7f555555 	0x7f555555
800011fc:	00404040 	0x00404040
80001200:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001204:	54544400 	bl	21572(0x5444) # 80006648 <_edata+0x4bbc>
80001208:	54547f54 	bl	-45067140(0xd50547c) # 7d506684 <_sidata+0x614fcb14>
8000120c:	00404454 	0x00404454
80001210:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001214:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001218:	95551515 	0x95551515
8000121c:	0000007f 	0x0000007f
80001220:	cc424040 	0xcc424040
80001224:	c84e5000 	0xc84e5000
80001228:	48c87f48 	0x48c87f48
8000122c:	00004048 	revh.2w	$r8,$r2
80001230:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001234:	434c5020 	beqz	$r1,216144(0x34c50) # 80035e84 <_edata+0x343f8>
80001238:	504f4040 	b	16797504(0x1004f40) # 81006178 <_edata+0x10046ec>
8000123c:	00405c50 	0x00405c50
80001240:	10ff1010 	addu16i.d	$r16,$r0,16324(0x3fc4)
80001244:	4a868200 	0x4a868200
80001248:	4a52a252 	0x4a52a252
8000124c:	00808086 	bstrins.d	$r6,$r4,0x0,0x20
80001250:	017f8242 	0x017f8242
80001254:	12121000 	addu16i.d	$r0,$r0,-31612(0x8484)
80001258:	1212ff12 	addu16i.d	$r18,$r24,-31553(0x84bf)
8000125c:	00001012 	clo.w	$r18,$r0
80001260:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001264:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001268:	d20e9222 	0xd20e9222
8000126c:	00001e22 	ctz.w	$r2,$r17
80001270:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001274:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001278:	ff09090a 	0xff09090a
8000127c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
80001280:	e72c1020 	0xe72c1020
80001284:	e2002424 	0xe2002424
80001288:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
8000128c:	0000e628 	0x0000e628
80001290:	7f010101 	0x7f010101
80001294:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
80001298:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
8000129c:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800012a0:	08080808 	0x08080808
800012a4:	8e89f808 	0x8e89f808
800012a8:	88888888 	0x88888888
800012ac:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800012b0:	20408000 	ll.w	$r0,$r0,16512(0x4080)
800012b4:	00000718 	0x00000718
800012b8:	3f408040 	0x3f408040
800012bc:	00000000 	0x00000000
800012c0:	90901010 	0x90901010
800012c4:	10909090 	addu16i.d	$r16,$r4,9252(0x2424)
800012c8:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
800012cc:	00101611 	add.w	$r17,$r16,$r5
800012d0:	20602000 	ll.w	$r0,$r0,24608(0x6020)
800012d4:	1010103f 	addu16i.d	$r31,$r1,1028(0x404)
800012d8:	100c0300 	addu16i.d	$r0,$r24,768(0x300)
800012dc:	00f84020 	bstrpick.d	$r0,$r1,0x38,0x10
800012e0:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
800012e4:	54544400 	bl	21572(0x5444) # 80006728 <_edata+0x4c9c>
800012e8:	54547f54 	bl	-45067140(0xd50547c) # 7d506764 <_sidata+0x614fcbf4>
800012ec:	00404454 	0x00404454
800012f0:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
800012f4:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
800012f8:	95551515 	0x95551515
800012fc:	0000007f 	0x0000007f
80001300:	c81f6888 	0xc81f6888
80001304:	54c81008 	bl	2148368(0x20c810) # 8020db14 <_edata+0x20c088>
80001308:	9412d152 	0x9412d152
8000130c:	0010d008 	add.d	$r8,$r0,$r20
80001310:	ff091909 	0xff091909
80001314:	12ff0005 	addu16i.d	$r5,$r0,-16448(0xbfc0)
80001318:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1414 <_sidata+0x63fe78a4>
8000131c:	00007f80 	0x00007f80
80001320:	00000000 	0x00000000
80001324:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
80001328:	000000e0 	0x000000e0
8000132c:	00000000 	0x00000000
80001330:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001334:	0000030c 	0x0000030c
80001338:	300c0300 	0x300c0300
8000133c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001340:	04448c10 	csrrd	$r16,0x1123
80001344:	a69504e4 	0xa69504e4
80001348:	84142444 	0x84142444
8000134c:	000c9444 	bytepick.d	$r4,$r2,$r5,0x1
80001350:	417a0202 	beqz	$r16,621056(0x97a00) # 80098d50 <_edata+0x972c4>
80001354:	7e424341 	0x7e424341
80001358:	43424242 	beqz	$r18,737856(0xb4240) # 800b5598 <_edata+0xb3b0c>
8000135c:	000000f8 	0x000000f8
80001360:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f7e4 <_edata+0xdd58>
80001364:	0200c444 	slti	$r4,$r2,49(0x31)
80001368:	828282f2 	0x828282f2
8000136c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001370:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001374:	08003f10 	0x08003f10
80001378:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201b80 <_edata+0x2000f4>
8000137c:	003f4088 	0x003f4088
80001380:	27ec1020 	stptr.d	$r0,$r1,-5104(0xec10)
80001384:	00e02cf4 	bstrpick.d	$r20,$r7,0x20,0xb
80001388:	d20e9222 	0xd20e9222
8000138c:	00001e22 	ctz.w	$r2,$r17
80001390:	091f6080 	vfmadd.s	$vr0,$vr4,$vr24,$vr30
80001394:	00ff893f 	bstrpick.d	$r31,$r9,0x3f,0x22
80001398:	ff09090a 	0xff09090a
8000139c:	00080909 	bytepick.w	$r9,$r8,$r2,0x0
800013a0:	e72c1020 	0xe72c1020
800013a4:	e2002424 	0xe2002424
800013a8:	20bf202c 	ll.w	$r12,$r1,-16608(0xbf20)
800013ac:	0000e628 	0x0000e628
800013b0:	7f010101 	0x7f010101
800013b4:	4f801121 	jirl	$r1,$r9,-32752(0x38010)
800013b8:	100f1020 	addu16i.d	$r0,$r1,964(0x3c4)
800013bc:	00804f20 	bstrins.d	$r0,$r25,0x0,0x13
800013c0:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800013c4:	ff101010 	0xff101010
800013c8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800013cc:	00000010 	0x00000010
800013d0:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800013d4:	01030d11 	fsub.d	$f17,$f8,$f3
800013d8:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800013dc:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800013e0:	fa02fe00 	0xfa02fe00
800013e4:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800013e8:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800013ec:	001010f0 	add.w	$r16,$r7,$r4
800013f0:	0f304780 	0x0f304780
800013f4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09458 <_sidata+0x63bff8e8>
800013f8:	16081621 	lu32i.d	$r1,16561(0x40b1)
800013fc:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
80001400:	88f80000 	0x88f80000
80001404:	08888888 	0x08888888
80001408:	0908ff08 	0x0908ff08
8000140c:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001410:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001414:	801f2010 	0x801f2010
80001418:	18162140 	pcaddi	$r0,45322(0xb10a)
8000141c:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001420:	f8080808 	0xf8080808
80001424:	10080808 	addu16i.d	$r8,$r0,514(0x202)
80001428:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
8000142c:	0000f010 	0x0000f010
80001430:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001434:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
80001438:	8040010e 	0x8040010e
8000143c:	00003f40 	revb.d	$r0,$r26
80001440:	07f86080 	0x07f86080
80001444:	2424e404 	ldptr.w	$r4,$r0,9444(0x24e4)
80001448:	2424ff24 	ldptr.w	$r4,$r25,9468(0x24fc)
8000144c:	0004e424 	alsl.w	$r4,$r1,$r25,0x2
80001450:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
80001454:	29458180 	st.h	$r0,$r12,352(0x160)
80001458:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55584 <_sidata+0x63c4ba14>
8000145c:	00808181 	bstrins.d	$r1,$r12,0x0,0x20
80001460:	22fe0000 	ll.d	$r0,$r0,-512(0xfe00)
80001464:	fe222222 	0xfe222222
80001468:	22222222 	ll.d	$r2,$r17,8736(0x2220)
8000146c:	000000fe 	0x000000fe
80001470:	021f6080 	slti	$r0,$r4,2008(0x7d8)
80001474:	7f020202 	0x7f020202
80001478:	82420202 	0x82420202
8000147c:	0000007f 	0x0000007f
80001480:	a2236488 	0xa2236488
80001484:	baa2aaa6 	0xbaa2aaa6
80001488:	26a2a3a4 	ldptr.d	$r4,$r29,-23904(0xa2a0)
8000148c:	0062a22a 	bstrpick.w	$r10,$r17,0x2,0x8
80001490:	ff000000 	0xff000000
80001494:	4a4a4a4a 	0x4a4a4a4a
80001498:	f84b4a4a 	0xf84b4a4a
8000149c:	00000000 	0x00000000
800014a0:	fc848404 	0xfc848404
800014a4:	fe008484 	0xfe008484
800014a8:	92fe9292 	0x92fe9292
800014ac:	0000fe92 	0x0000fe92
800014b0:	1f206020 	pcaddu18i	$r0,-457983(0x90301)
800014b4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054c4 <_sidata+0x63bfb954>
800014b8:	447f4444 	bnez	$r2,1081156(0x107f44) # 801093fc <_edata+0x107970>
800014bc:	00404444 	0x00404444
800014c0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4c0 <_sidata+0x63fe3950>
800014c4:	52525252 	b	-112569776(0x94a5250) # 794a6714 <_sidata+0x5d49cba4>
800014c8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6718 <_sidata+0x63fdcba8>
800014cc:	000000c0 	0x000000c0
800014d0:	408f8080 	beqz	$r4,36736(0x8f80) # 8000a450 <_edata+0x89c4>
800014d4:	0e102040 	0x0e102040
800014d8:	20201010 	ll.w	$r16,$r0,8208(0x2010)
800014dc:	0000804f 	0x0000804f
800014e0:	cc424040 	0xcc424040
800014e4:	49ff0000 	bceqz	$fcc0,130816(0x1ff00) # 800213e4 <_edata+0x1f958>
800014e8:	4949c949 	bcnez	$fcc2,2443720(0x2549c8) # 80255eb0 <_edata+0x254424>
800014ec:	0000807f 	0x0000807f
800014f0:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800014f4:	485f4020 	bceqz	$fcc1,24384(0x5f40) # 80007434 <_edata+0x59a8>
800014f8:	42414044 	beqz	$r2,1196352(0x124140) # 80125638 <_edata+0x123bac>
800014fc:	00405845 	0x00405845
80001500:	407c0000 	beqz	$r0,31744(0x7c00) # 80009100 <_edata+0x7674>
80001504:	ff404040 	0xff404040
80001508:	40404040 	beqz	$r2,16448(0x4040) # 80005548 <_edata+0x3abc>
8000150c:	000000fc 	0x000000fc
80001510:	40407c00 	beqz	$r0,16508(0x407c) # 8000558c <_edata+0x3b00>
80001514:	7f404040 	0x7f404040
80001518:	40404040 	beqz	$r2,16448(0x4040) # 80005558 <_edata+0x3acc>
8000151c:	0000fc40 	0x0000fc40
80001520:	cc424040 	0xcc424040
80001524:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001528:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
8000152c:	000062a3 	rdtimel.w	$r3,$r21
80001530:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001534:	50475820 	b	8406872(0x804758) # 80805c8c <_edata+0x804200>
80001538:	45424548 	bnez	$r10,2179652(0x214244) # 8021577c <_edata+0x213cf0>
8000153c:	00405048 	0x00405048
80001540:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001544:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
80001548:	0202f212 	slti	$r18,$r16,188(0xbc)
8000154c:	000000fe 	0x000000fe
80001550:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001554:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
80001558:	20202724 	ll.w	$r4,$r25,8228(0x2024)
8000155c:	0000007f 	0x0000007f
80001560:	84442404 	0x84442404
80001564:	30409c64 	vldrepl.h	$vr4,$r3,78(0x4e)
80001568:	0808c80f 	0x0808c80f
8000156c:	00001828 	cto.w	$r8,$r1
80001570:	01060810 	0x01060810
80001574:	18204c82 	pcaddi	$r2,66148(0x10264)
80001578:	18060106 	pcaddi	$r6,12296(0x3008)
8000157c:	00804020 	bstrins.d	$r0,$r1,0x0,0x10
80001580:	cc424040 	0xcc424040
80001584:	04fc0000 	csrrd	$r0,0x3f00
80001588:	04fc0002 	csrrd	$r2,0x3f00
8000158c:	0000fc04 	0x0000fc04
80001590:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001594:	444f4020 	bnez	$r1,20288(0x4f40) # 800064d4 <_edata+0x4a48>
80001598:	427f4042 	beqz	$r2,687936(0xa7f40) # 800a94d8 <_edata+0xa7a4c>
8000159c:	00404344 	0x00404344
800015a0:	44424040 	bnez	$r2,16960(0x4240) # 800057e0 <_edata+0x3d54>
800015a4:	7f40c058 	0x7f40c058
800015a8:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 80006668 <_edata+0x4bdc>
800015ac:	00404046 	0x00404046
800015b0:	20408080 	ll.w	$r0,$r4,16512(0x4080)
800015b4:	00000718 	0x00000718
800015b8:	40403f00 	beqz	$r24,16444(0x403c) # 800055f4 <_edata+0x3b68>
800015bc:	00784040 	bstrins.w	$r0,$r2,0x18,0x10
800015c0:	0000f800 	0x0000f800
800015c4:	182040ff 	pcaddi	$r31,66055(0x10207)
800015c8:	0868180f 	fmsub.d	$f15,$f0,$f6,$f16
800015cc:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
800015d0:	00001f00 	ctz.w	$r0,$r24
800015d4:	7f0000ff 	0x7f0000ff
800015d8:	213f2121 	sc.w	$r1,$r9,16160(0x3f20)
800015dc:	00007f21 	0x00007f21
800015e0:	cc424040 	0xcc424040
800015e4:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
800015e8:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
800015ec:	000062a3 	rdtimel.w	$r3,$r21
800015f0:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800015f4:	50475820 	b	8406872(0x804758) # 80805d4c <_edata+0x8042c0>
800015f8:	45424548 	bnez	$r10,2179652(0x214244) # 8021583c <_edata+0x213db0>
800015fc:	00405048 	0x00405048
80001600:	02fe0000 	addi.d	$r0,$r0,-128(0xf80)
80001604:	1212f202 	addu16i.d	$r2,$r16,-31556(0x84bc)
80001608:	0202f212 	slti	$r18,$r16,188(0xbc)
8000160c:	000000fe 	0x000000fe
80001610:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001614:	24242720 	ldptr.w	$r0,$r25,9252(0x2424)
80001618:	20202724 	ll.w	$r4,$r25,8228(0x2024)
8000161c:	0000007f 	0x0000007f
80001620:	8c026010 	0x8c026010
80001624:	52921000 	b	168464(0x29210) # 8002a834 <_edata+0x28da8>
80001628:	52321e32 	b	-120966628(0x8ca321c) # 78ca4844 <_sidata+0x5cc9acd4>
8000162c:	00101292 	add.w	$r18,$r20,$r4
80001630:	017e0404 	0x017e0404
80001634:	40182100 	beqz	$r8,6176(0x1820) # 80002e54 <_edata+0x13c8>
80001638:	30087f80 	0x30087f80
8000163c:	00310904 	0x00310904
80001640:	ff101010 	0xff101010
80001644:	00f01010 	bstrpick.d	$r16,$r0,0x30,0x4
80001648:	0808f800 	0x0808f800
8000164c:	0000f808 	0x0000f808
80001650:	0f304080 	0x0f304080
80001654:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
80001658:	20207f00 	ll.w	$r0,$r24,8316(0x207c)
8000165c:	00007f20 	0x00007f20
80001660:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001664:	3d64a424 	0x3d64a424
80001668:	242424a6 	ldptr.w	$r6,$r5,9252(0x2424)
8000166c:	00042424 	alsl.w	$r4,$r1,$r9,0x1
80001670:	100f3040 	addu16i.d	$r0,$r2,972(0x3cc)
80001674:	12121213 	addu16i.d	$r19,$r16,-31612(0x8484)
80001678:	121212ff 	addu16i.d	$r31,$r23,-31612(0x8484)
8000167c:	00101012 	add.w	$r18,$r0,$r4
80001680:	8c026010 	0x8c026010
80001684:	54544400 	bl	21572(0x5444) # 80006ac8 <_edata+0x503c>
80001688:	54547f54 	bl	-45067140(0xd50547c) # 7d506b04 <_sidata+0x614fcf94>
8000168c:	00404454 	0x00404454
80001690:	017e0404 	0x017e0404
80001694:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
80001698:	95551515 	0x95551515
8000169c:	0000007f 	0x0000007f
800016a0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe399c <_sidata+0x63fd9e2c>
800016a4:	28102086 	ld.b	$r6,$r4,1032(0x408)
800016a8:	2824e324 	ld.b	$r4,$r25,-1736(0x938)
800016ac:	00202010 	div.w	$r16,$r0,$r8
800016b0:	0804ff00 	0x0804ff00
800016b4:	410d1127 	beqz	$r9,1903888(0x1d0d10) # 801d23c4 <_edata+0x1d0938>
800016b8:	05017f81 	0x05017f81
800016bc:	00003109 	revb.2h	$r9,$r8
800016c0:	82e20000 	0x82e20000
800016c4:	82828282 	0x82828282
800016c8:	fe828282 	0xfe828282
800016cc:	00000000 	0x00000000
800016d0:	403f0000 	beqz	$r0,16128(0x3f00) # 800055d0 <_edata+0x3b44>
800016d4:	40404040 	beqz	$r2,16448(0x4040) # 80005714 <_edata+0x3c88>
800016d8:	40404040 	beqz	$r2,16448(0x4040) # 80005718 <_edata+0x3c8c>
800016dc:	00007840 	0x00007840
800016e0:	7f000000 	0x7f000000
800016e4:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025602c <_edata+0x2545a0>
800016e8:	7f494949 	0x7f494949
800016ec:	00000000 	0x00000000
800016f0:	1d214181 	pcaddu12i	$r1,-456180(0x90a0c)
800016f4:	ff814121 	0xff814121
800016f8:	89898989 	0x89898989
800016fc:	00818189 	bstrins.d	$r9,$r12,0x1,0x20
80001700:	82820200 	0x82820200
80001704:	fa122242 	0xfa122242
80001708:	42222206 	beqz	$r16,1712672(0x1a2220) # 801a3928 <_edata+0x1a1e9c>
8000170c:	00008242 	0x00008242
80001710:	fc000101 	0xfc000101
80001714:	45444444 	bnez	$r2,1131588(0x114444) # 80115b58 <_edata+0x1140cc>
80001718:	fc444444 	0xfc444444
8000171c:	00010000 	asrtle.d	$r0,$r0
80001720:	ff101010 	0xff101010
80001724:	3f009010 	0x3f009010
80001728:	44444848 	bnez	$r2,2114632(0x204448) # 80205b70 <_edata+0x2040e4>
8000172c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001730:	7f824404 	0x7f824404
80001734:	ff000001 	0xff000001
80001738:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256080 <_edata+0x2545f4>
8000173c:	0000ff49 	0x0000ff49
80001740:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc370 <_sidata+0x63ff2800>
80001744:	f8080810 	0xf8080810
80001748:	f8080e09 	0xf8080e09
8000174c:	00000808 	0x00000808
80001750:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001754:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001758:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000175c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001760:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001764:	54544400 	bl	21572(0x5444) # 80006ba8 <_edata+0x511c>
80001768:	54547f54 	bl	-45067140(0xd50547c) # 7d506be4 <_sidata+0x614fd074>
8000176c:	00404454 	0x00404454
80001770:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001774:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001778:	95551515 	0x95551515
8000177c:	0000007f 	0x0000007f
80001780:	ff101010 	0xff101010
80001784:	88982090 	0x88982090
80001788:	888ee988 	0x888ee988
8000178c:	0098a888 	bstrins.d	$r8,$r4,0x18,0x2a
80001790:	7f814202 	0x7f814202
80001794:	84800000 	0x84800000
80001798:	2810284b 	ld.b	$r11,$r2,1034(0x40a)
8000179c:	00008047 	0x00008047
800017a0:	24240000 	ldptr.w	$r0,$r0,9216(0x2400)
800017a4:	fc242424 	0xfc242424
800017a8:	23222222 	sc.d	$r2,$r17,8736(0x2220)
800017ac:	00000022 	0x00000022
800017b0:	02020202 	slti	$r2,$r16,128(0x80)
800017b4:	7f824202 	0x7f824202
800017b8:	02020202 	slti	$r2,$r16,128(0x80)
800017bc:	00020202 	0x00020202
800017c0:	ff101010 	0xff101010
800017c4:	3f009010 	0x3f009010
800017c8:	44444848 	bnez	$r2,2114632(0x204448) # 80205c10 <_edata+0x204184>
800017cc:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
800017d0:	7f824404 	0x7f824404
800017d4:	ff000001 	0xff000001
800017d8:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256120 <_edata+0x254694>
800017dc:	0000ff49 	0x0000ff49
800017e0:	92828080 	0x92828080
800017e4:	92929292 	0x92929292
800017e8:	fe929292 	0xfe929292
800017ec:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
800017f0:	24224040 	ldptr.w	$r0,$r2,8768(0x2240)
800017f4:	7f804810 	0x7f804810
800017f8:	24180804 	ldptr.w	$r4,$r0,6152(0x1808)
800017fc:	00404022 	0x00404022
80001800:	00000000 	0x00000000
80001804:	1ce20100 	pcaddu12i	$r0,462856(0x71008)
80001808:	000000e0 	0x000000e0
8000180c:	00000000 	0x00000000
80001810:	10204080 	addu16i.d	$r0,$r4,2064(0x810)
80001814:	0000030c 	0x0000030c
80001818:	300c0300 	0x300c0300
8000181c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001820:	ff101010 	0xff101010
80001824:	3f009010 	0x3f009010
80001828:	44444848 	bnez	$r2,2114632(0x204448) # 80205c70 <_edata+0x2041e4>
8000182c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001830:	7f824404 	0x7f824404
80001834:	ff000001 	0xff000001
80001838:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256180 <_edata+0x2546f4>
8000183c:	0000ff49 	0x0000ff49
80001840:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc470 <_sidata+0x63ff2900>
80001844:	f8080810 	0xf8080810
80001848:	f8080e09 	0xf8080e09
8000184c:	00000808 	0x00000808
80001850:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001854:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001858:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000185c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001860:	88f80000 	0x88f80000
80001864:	08888888 	0x08888888
80001868:	0908ff08 	0x0908ff08
8000186c:	0008c80a 	bytepick.w	$r10,$r0,$r18,0x1
80001870:	001f6080 	mulw.d.w	$r0,$r4,$r24
80001874:	801f2010 	0x801f2010
80001878:	18162140 	pcaddi	$r0,45322(0xb10a)
8000187c:	00f84126 	bstrpick.d	$r6,$r9,0x38,0x10
80001880:	f8080808 	0xf8080808
80001884:	10080808 	addu16i.d	$r8,$r0,514(0x202)
80001888:	1010ff10 	addu16i.d	$r16,$r24,1087(0x43f)
8000188c:	0000f010 	0x0000f010
80001890:	1f103010 	pcaddu18i	$r16,-491136(0x88180)
80001894:	30488808 	vldrepl.h	$vr8,$r0,1092(0x444)
80001898:	8040010e 	0x8040010e
8000189c:	00003f40 	revb.d	$r0,$r26
800018a0:	1e304000 	pcaddu18i	$r0,98816(0x18200)
800018a4:	ff101010 	0xff101010
800018a8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800018ac:	00000010 	0x00000010
800018b0:	21418181 	sc.w	$r1,$r12,16768(0x4180)
800018b4:	01030d11 	fsub.d	$f17,$f8,$f3
800018b8:	21110d03 	sc.w	$r3,$r8,4364(0x110c)
800018bc:	00818141 	bstrins.d	$r1,$r10,0x1,0x20
800018c0:	fa02fe00 	0xfa02fe00
800018c4:	2040fe02 	ll.w	$r2,$r16,16636(0x40fc)
800018c8:	101017d8 	addu16i.d	$r24,$r30,1029(0x405)
800018cc:	001010f0 	add.w	$r16,$r7,$r4
800018d0:	0f304780 	0x0f304780
800018d4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09938 <_sidata+0x63bffdc8>
800018d8:	16081621 	lu32i.d	$r1,16561(0x40b1)
800018dc:	00804021 	bstrins.d	$r1,$r1,0x0,0x10
800018e0:	927e0000 	0x927e0000
800018e4:	92929292 	0x92929292
800018e8:	9e929292 	0x9e929292
800018ec:	0000e080 	0x0000e080
800018f0:	28488808 	ld.h	$r8,$r0,546(0x222)
800018f4:	0808081e 	0x0808081e
800018f8:	08fe0808 	0x08fe0808
800018fc:	00080808 	bytepick.w	$r8,$r0,$r2,0x0
80001900:	ea081820 	0xea081820
80001904:	afa8a8ac 	0xafa8a8ac
80001908:	eaaca8a8 	0xeaaca8a8
8000190c:	00182808 	sra.w	$r8,$r0,$r10
80001910:	023e0000 	slti	$r0,$r0,-128(0xf80)
80001914:	ff020202 	0xff020202
80001918:	22120202 	ll.d	$r2,$r16,4608(0x1200)
8000191c:	0000001e 	0x0000001e
80001920:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001924:	54544400 	bl	21572(0x5444) # 80006d68 <_edata+0x52dc>
80001928:	54547f54 	bl	-45067140(0xd50547c) # 7d506da4 <_sidata+0x614fd234>
8000192c:	00404454 	0x00404454
80001930:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
80001934:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
80001938:	95551515 	0x95551515
8000193c:	0000007f 	0x0000007f
80001940:	fea42424 	0xfea42424
80001944:	e2002223 	0xe2002223
80001948:	203f202c 	ll.w	$r12,$r1,16160(0x3f20)
8000194c:	0000e628 	0x0000e628
80001950:	ff010608 	0xff010608
80001954:	ff000601 	0xff000601
80001958:	49090909 	bcnez	$fcc0,2427144(0x250908) # 80252260 <_edata+0x2507d4>
8000195c:	00007f89 	0x00007f89
80001960:	fc000000 	0xfc000000
80001964:	24242424 	ldptr.w	$r4,$r1,9252(0x2424)
80001968:	23222222 	sc.d	$r2,$r17,8736(0x2220)
8000196c:	00202022 	div.w	$r2,$r1,$r8
80001970:	07182040 	0x07182040
80001974:	4242fe00 	beqz	$r16,148220(0x242fc) # 80025c70 <_edata+0x241e4>
80001978:	42424242 	beqz	$r18,672320(0xa4240) # 800a5bb8 <_edata+0xa412c>
8000197c:	000000fe 	0x000000fe
80001980:	92f20202 	0x92f20202
80001984:	fe929292 	0xfe929292
80001988:	92929292 	0x92929292
8000198c:	000202f2 	0x000202f2
80001990:	04ff0404 	csrrd	$r4,0x3fc1
80001994:	07040404 	0x07040404
80001998:	84440404 	0x84440404
8000199c:	0004047f 	alsl.w	$r31,$r3,$r1,0x1
800019a0:	cc424040 	0xcc424040
800019a4:	90909000 	0x90909000
800019a8:	10ff9090 	addu16i.d	$r16,$r4,16356(0x3fe4)
800019ac:	00101611 	add.w	$r17,$r16,$r5
800019b0:	3f000000 	0x3f000000
800019b4:	3f602810 	0x3f602810
800019b8:	0e011010 	0x0e011010
800019bc:	00f04030 	bstrpick.d	$r16,$r1,0x30,0x10
800019c0:	10f00000 	addu16i.d	$r0,$r0,15360(0x3c00)
800019c4:	ff101010 	0xff101010
800019c8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
800019cc:	000000f0 	0x000000f0
800019d0:	040f0000 	csrrd	$r0,0x3c0
800019d4:	ff040404 	0xff040404
800019d8:	04040404 	csrrd	$r4,0x101
800019dc:	0000000f 	0x0000000f
800019e0:	fc000000 	0xfc000000
800019e4:	54555654 	bl	-112175788(0x9505554) # 79506f38 <_sidata+0x5d4fd3c8>
800019e8:	fc545454 	0xfc545454
800019ec:	00408000 	slli.w	$r0,$r0,0x0
800019f0:	23424240 	sc.d	$r0,$r18,16960(0x4240)
800019f4:	12122222 	addu16i.d	$r2,$r17,-31608(0x8488)
800019f8:	7f82460a 	0x7f82460a
800019fc:	00000001 	0x00000001
80001a00:	f8608000 	0xf8608000
80001a04:	b0408007 	0xb0408007
80001a08:	8780808e 	0x8780808e
80001a0c:	00806098 	bstrins.d	$r24,$r4,0x0,0x18
80001a10:	ff000001 	0xff000001
80001a14:	30408000 	vldrepl.h	$vr0,$r0,64(0x40)
80001a18:	8040000f 	0x8040000f
80001a1c:	0000007f 	0x0000007f
80001a20:	8282fa02 	0x8282fa02
80001a24:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
80001a28:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
80001a2c:	00402050 	0x00402050
80001a30:	84481808 	0x84481808
80001a34:	44403f44 	bnez	$r26,1065020(0x10403c) # 80105a70 <_edata+0x103fe4>
80001a38:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 80006878 <_edata+0x4dec>
80001a3c:	00404758 	0x00404758
80001a40:	cc424040 	0xcc424040
80001a44:	c4040000 	0xc4040000
80001a48:	04fc0404 	csrrd	$r4,0x3f01
80001a4c:	00040404 	alsl.w	$r4,$r0,$r1,0x1
80001a50:	3f000000 	0x3f000000
80001a54:	7f404810 	0x7f404810
80001a58:	417f4040 	beqz	$r2,98112(0x17f40) # 80019998 <_edata+0x17f0c>
80001a5c:	00404141 	0x00404141

80001a60 <passwordArray>:
80001a60:	000004d2 	0x000004d2
80001a64:	000004d2 	0x000004d2
80001a68:	000004d2 	0x000004d2
80001a6c:	000004d2 	0x000004d2
80001a70:	000004d2 	0x000004d2

80001a74 <IDArray>:
80001a74:	0000000d 	0x0000000d
	...

80001a88 <flag1>:
80001a88:	 	0x00000101

80001a89 <mode>:
80001a89:	Address 0x0000000080001a89 is out of bounds.


Disassembly of section .bss:

80000000 <AS608Para>:
	...

8000000c <USART0_RX_BUF>:
	...

8000019c <Temp>:
_sbss():
8000019c:	00000000 	0x00000000

800001a0 <RF_Buffer>:
	...

800001b4 <UID>:
	...

800001bc <Count>:
800001bc:	00000000 	0x00000000

800001c0 <Password>:
800001c0:	00000000 	0x00000000

Disassembly of section .bss.g_recvBuff:

800001c4 <g_recvBuff>:
	...

Disassembly of section .bss.USART0_RX_STA:

800001d8 <USART0_RX_STA>:
	...

Disassembly of section .bss.KeyNum:

800001d9 <KeyNum>:
	...

Disassembly of section .bss.flag:

800001da <flag>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
