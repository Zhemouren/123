
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
1c00000c:	03bb21ef 	ori	$r15,$r15,0xec8
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
1c0000a0:	545a6400 	bl	23140(0x5a64) # 1c005b04 <main>
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
1c001090:	54790400 	bl	30980(0x7904) # 1c008994 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54794400 	bl	31044(0x7944) # 1c0089dc <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5479c800 	bl	31176(0x79c8) # 1c008a68 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5479fc00 	bl	31228(0x79fc) # 1c008aa4 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54781400 	bl	30740(0x7814) # 1c0088c4 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	547ba000 	bl	31648(0x7ba0) # 1c008c58 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	547ab400 	bl	31412(0x7ab4) # 1c008b7c <INTC_Handler>
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
1c001470:	1c00010c 	pcaddu12i	$r12,8(0x8)
1c001474:	02a0818c 	addi.w	$r12,$r12,-2016(0x820)
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
1c001b38:	1400060d 	lu12i.w	$r13,48(0x30)
1c001b3c:	03b501ad 	ori	$r13,$r13,0xd40
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
1c001b70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001b84:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001b88:	0388018c 	ori	$r12,$r12,0x200
1c001b8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b90:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001b94:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001b98:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001b9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ba0:	2880018d 	ld.w	$r13,$r12,0
1c001ba4:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001ba8:	002135cc 	div.wu	$r12,$r14,$r13
1c001bac:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001bb4 <soc_I2C_Init+0x48>
1c001bb0:	002a0007 	break	0x7
1c001bb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bbc:	0044898c 	srli.w	$r12,$r12,0x2
1c001bc0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001bc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001bc8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bcc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001bd0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001bd4:	2900018d 	st.b	$r13,$r12,0
1c001bd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bdc:	0044a18d 	srli.w	$r13,$r12,0x8
1c001be0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001be4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001be8:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001bec:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001bf0:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001bf4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001bf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bfc:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001c00:	40001180 	beqz	$r12,16(0x10) # 1c001c10 <soc_I2C_Init+0xa4>
1c001c04:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c08:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001c0c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c10:	5400e800 	bl	232(0xe8) # 1c001cf8 <soc_I2C_wait>
1c001c14:	03400000 	andi	$r0,$r0,0x0
1c001c18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c24:	4c000020 	jirl	$r0,$r1,0

1c001c28 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001c28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c34:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c3c:	40001580 	beqz	$r12,20(0x14) # 1c001c50 <soc_I2C_GenerateSTART+0x28>
1c001c40:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c44:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001c48:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c4c:	50001000 	b	16(0x10) # 1c001c5c <soc_I2C_GenerateSTART+0x34>
1c001c50:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c54:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001c58:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c5c:	03400000 	andi	$r0,$r0,0x0
1c001c60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c68:	4c000020 	jirl	$r0,$r1,0

1c001c6c <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001c6c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001c70:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001c74:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001c78:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001c7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c80:	40001580 	beqz	$r12,20(0x14) # 1c001c94 <soc_I2C_GenerateSTOP+0x28>
1c001c84:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c88:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001c8c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c90:	50001000 	b	16(0x10) # 1c001ca0 <soc_I2C_GenerateSTOP+0x34>
1c001c94:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c98:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001c9c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001ca0:	03400000 	andi	$r0,$r0,0x0
1c001ca4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001ca8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cac:	4c000020 	jirl	$r0,$r1,0

1c001cb0 <soc_I2C_SendData>:
soc_I2C_SendData():
1c001cb0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cb4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001cb8:	29806076 	st.w	$r22,$r3,24(0x18)
1c001cbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001cc0:	0015008c 	move	$r12,$r4
1c001cc4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001cc8:	54007800 	bl	120(0x78) # 1c001d40 <soc_I2C_Unlock>
1c001ccc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cd0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001cd4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001cd8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cdc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001ce0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001ce4:	03400000 	andi	$r0,$r0,0x0
1c001ce8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001cec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001cf0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001cf4:	4c000020 	jirl	$r0,$r1,0

1c001cf8 <soc_I2C_wait>:
soc_I2C_wait():
1c001cf8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001cfc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d04:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d08:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d0c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001d14:	50001000 	b	16(0x10) # 1c001d24 <soc_I2C_wait+0x2c>
1c001d18:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d1c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d28:	0340098c 	andi	$r12,$r12,0x2
1c001d2c:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001d18 <soc_I2C_wait+0x20>
1c001d30:	03400000 	andi	$r0,$r0,0x0
1c001d34:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d3c:	4c000020 	jirl	$r0,$r1,0

1c001d40 <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001d40:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d44:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d4c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d50:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001d54:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d58:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d5c:	0340118c 	andi	$r12,$r12,0x4
1c001d60:	40001180 	beqz	$r12,16(0x10) # 1c001d70 <soc_I2C_Unlock+0x30>
1c001d64:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d68:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001d6c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d70:	03400000 	andi	$r0,$r0,0x0
1c001d74:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d7c:	4c000020 	jirl	$r0,$r1,0

1c001d80 <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001d80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001d84:	29803076 	st.w	$r22,$r3,12(0xc)
1c001d88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001d8c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d90:	0380c18c 	ori	$r12,$r12,0x30
1c001d94:	29802180 	st.w	$r0,$r12,8(0x8)
1c001d98:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001d9c:	0380c18c 	ori	$r12,$r12,0x30
1c001da0:	140004ed 	lu12i.w	$r13,39(0x27)
1c001da4:	038401ad 	ori	$r13,$r13,0x100
1c001da8:	2980018d 	st.w	$r13,$r12,0
1c001dac:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001db0:	0380c18c 	ori	$r12,$r12,0x30
1c001db4:	03be800d 	ori	$r13,$r0,0xfa0
1c001db8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001dbc:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001dc0:	0380c18c 	ori	$r12,$r12,0x30
1c001dc4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001dc8:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001dcc:	03400000 	andi	$r0,$r0,0x0
1c001dd0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001dd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001dd8:	4c000020 	jirl	$r0,$r1,0

1c001ddc <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001ddc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001de0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001de4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001de8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001dec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001df0:	028c800c 	addi.w	$r12,$r0,800(0x320)
1c001df4:	001c31ae 	mul.w	$r14,$r13,$r12
1c001df8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001dfc:	002031cd 	div.w	$r13,$r14,$r12
1c001e00:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001e08 <pwm_steering_engine_set+0x2c>
1c001e04:	002a0007 	break	0x7
1c001e08:	03be800c 	ori	$r12,$r0,0xfa0
1c001e0c:	001031ad 	add.w	$r13,$r13,$r12
1c001e10:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e14:	0380c18c 	ori	$r12,$r12,0x30
1c001e18:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001e1c:	03400000 	andi	$r0,$r0,0x0
1c001e20:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e24:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e28:	4c000020 	jirl	$r0,$r1,0

1c001e2c <soc_Spi_FreqDiv>:
soc_Spi_FreqDiv():
1c001e2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e30:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001e34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e38:	0015008c 	move	$r12,$r4
1c001e3c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e40:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e44:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001e48:	03400dad 	andi	$r13,$r13,0x3
1c001e4c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e50:	2900018d 	st.b	$r13,$r12,0
1c001e54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e58:	0044898c 	srli.w	$r12,$r12,0x2
1c001e5c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001e60:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001e64:	03400dad 	andi	$r13,$r13,0x3
1c001e68:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001e6c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001e70:	03400000 	andi	$r0,$r0,0x0
1c001e74:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e7c:	4c000020 	jirl	$r0,$r1,0

1c001e80 <soc_Spi_Init>:
soc_Spi_Init():
1c001e80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001e88:	29806076 	st.w	$r22,$r3,24(0x18)
1c001e8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e90:	0015008c 	move	$r12,$r4
1c001e94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e9c:	00150184 	move	$r4,$r12
1c001ea0:	57ff8fff 	bl	-116(0xfffff8c) # 1c001e2c <soc_Spi_FreqDiv>
1c001ea4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ea8:	2a00018c 	ld.bu	$r12,$r12,0
1c001eac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001eb0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001eb4:	038141ad 	ori	$r13,$r13,0x50
1c001eb8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001ebc:	2900018d 	st.b	$r13,$r12,0
1c001ec0:	03400000 	andi	$r0,$r0,0x0
1c001ec4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ec8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ecc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ed0:	0340118c 	andi	$r12,$r12,0x4
1c001ed4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001ec4 <soc_Spi_Init+0x44>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ee0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c001ee4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ee8:	0340058c 	andi	$r12,$r12,0x1
1c001eec:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c001edc <soc_Spi_Init+0x5c>
1c001ef0:	03400000 	andi	$r0,$r0,0x0
1c001ef4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ef8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001efc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001f00:	4c000020 	jirl	$r0,$r1,0

1c001f04 <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001f04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f08:	29803076 	st.w	$r22,$r3,12(0xc)
1c001f0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f10:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f14:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f18:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f1c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f20:	038009ad 	ori	$r13,$r13,0x2
1c001f24:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f28:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f2c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f30:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f34:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001f38:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f3c:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001f40:	0014b5cd 	and	$r13,$r14,$r13
1c001f44:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f48:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f4c:	03400000 	andi	$r0,$r0,0x0
1c001f50:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f58:	4c000020 	jirl	$r0,$r1,0

1c001f5c <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c001f5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f60:	29803076 	st.w	$r22,$r3,12(0xc)
1c001f64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f68:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f6c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f74:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f78:	038009ad 	ori	$r13,$r13,0x2
1c001f7c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f80:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f84:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f88:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f8c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f90:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f94:	038081ad 	ori	$r13,$r13,0x20
1c001f98:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f9c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001fa0:	03400000 	andi	$r0,$r0,0x0
1c001fa4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001fa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fac:	4c000020 	jirl	$r0,$r1,0

1c001fb0 <my_recv_dat_int>:
my_recv_dat_int():
1c001fb0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001fb4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001fb8:	29806076 	st.w	$r22,$r3,24(0x18)
1c001fbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fc0:	0015008c 	move	$r12,$r4
1c001fc4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fc8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001fcc:	2881318c 	ld.w	$r12,$r12,76(0x4c)
1c001fd0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001fd4:	2900018d 	st.b	$r13,$r12,0
1c001fd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001fdc:	00150185 	move	$r5,$r12
1c001fe0:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001fe4:	028dd084 	addi.w	$r4,$r4,884(0x374)
1c001fe8:	543a4000 	bl	14912(0x3a40) # 1c005a28 <Buffer_write>
1c001fec:	03400000 	andi	$r0,$r0,0x0
1c001ff0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001ff4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001ff8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ffc:	4c000020 	jirl	$r0,$r1,0

1c002000 <my_strstr>:
my_strstr():
1c002000:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002004:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002008:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00200c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002010:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002014:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002018:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00201c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002020:	2800018c 	ld.b	$r12,$r12,0
1c002024:	44008580 	bnez	$r12,132(0x84) # 1c0020a8 <my_strstr+0xa8>
1c002028:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00202c:	50008c00 	b	140(0x8c) # 1c0020b8 <my_strstr+0xb8>
1c002030:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002034:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002038:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00203c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002040:	50001c00 	b	28(0x1c) # 1c00205c <my_strstr+0x5c>
1c002044:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002048:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00204c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002050:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002054:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002058:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00205c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002060:	2800018c 	ld.b	$r12,$r12,0
1c002064:	40002580 	beqz	$r12,36(0x24) # 1c002088 <my_strstr+0x88>
1c002068:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00206c:	2800018c 	ld.b	$r12,$r12,0
1c002070:	40001980 	beqz	$r12,24(0x18) # 1c002088 <my_strstr+0x88>
1c002074:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002078:	2800018d 	ld.b	$r13,$r12,0
1c00207c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002080:	2800018c 	ld.b	$r12,$r12,0
1c002084:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c002044 <my_strstr+0x44>
1c002088:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00208c:	2800018c 	ld.b	$r12,$r12,0
1c002090:	44000d80 	bnez	$r12,12(0xc) # 1c00209c <my_strstr+0x9c>
1c002094:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002098:	50002000 	b	32(0x20) # 1c0020b8 <my_strstr+0xb8>
1c00209c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0020a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020ac:	2800018c 	ld.b	$r12,$r12,0
1c0020b0:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c002030 <my_strstr+0x30>
1c0020b4:	0015000c 	move	$r12,$r0
1c0020b8:	00150184 	move	$r4,$r12
1c0020bc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0020c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0020c4:	4c000020 	jirl	$r0,$r1,0

1c0020c8 <MYUSART_SendData>:
MYUSART_SendData():
1c0020c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0020cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0020d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0020d4:	0015008c 	move	$r12,$r4
1c0020d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0020dc:	03400000 	andi	$r0,$r0,0x0
1c0020e0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020e4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0340818c 	andi	$r12,$r12,0x20
1c0020f0:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0020e0 <MYUSART_SendData+0x18>
1c0020f4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0020f8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020fc:	2900018d 	st.b	$r13,$r12,0
1c002100:	03400000 	andi	$r0,$r0,0x0
1c002104:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002108:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00210c:	4c000020 	jirl	$r0,$r1,0

1c002110 <SendHead>:
SendHead():
1c002110:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002114:	29803061 	st.w	$r1,$r3,12(0xc)
1c002118:	29802076 	st.w	$r22,$r3,8(0x8)
1c00211c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002120:	02864006 	addi.w	$r6,$r0,400(0x190)
1c002124:	00150005 	move	$r5,$r0
1c002128:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c00212c:	28bb9084 	ld.w	$r4,$r4,-284(0xee4)
1c002130:	57f64fff 	bl	-2484(0xffff64c) # 1c00177c <memset>
1c002134:	0283bc04 	addi.w	$r4,$r0,239(0xef)
1c002138:	57ff93ff 	bl	-112(0xfffff90) # 1c0020c8 <MYUSART_SendData>
1c00213c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002140:	57ff8bff 	bl	-120(0xfffff88) # 1c0020c8 <MYUSART_SendData>
1c002144:	03400000 	andi	$r0,$r0,0x0
1c002148:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00214c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002154:	4c000020 	jirl	$r0,$r1,0

1c002158 <SendAddr>:
SendAddr():
1c002158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00215c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002160:	29802076 	st.w	$r22,$r3,8(0x8)
1c002164:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002168:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00216c:	02bad18c 	addi.w	$r12,$r12,-332(0xeb4)
1c002170:	2880018c 	ld.w	$r12,$r12,0
1c002174:	0044e18c 	srli.w	$r12,$r12,0x18
1c002178:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00217c:	00150184 	move	$r4,$r12
1c002180:	57ff4bff 	bl	-184(0xfffff48) # 1c0020c8 <MYUSART_SendData>
1c002184:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002188:	02ba618c 	addi.w	$r12,$r12,-360(0xe98)
1c00218c:	2880018c 	ld.w	$r12,$r12,0
1c002190:	0044c18c 	srli.w	$r12,$r12,0x10
1c002194:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002198:	00150184 	move	$r4,$r12
1c00219c:	57ff2fff 	bl	-212(0xfffff2c) # 1c0020c8 <MYUSART_SendData>
1c0021a0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021a4:	02b9f18c 	addi.w	$r12,$r12,-388(0xe7c)
1c0021a8:	2880018c 	ld.w	$r12,$r12,0
1c0021ac:	0044a18c 	srli.w	$r12,$r12,0x8
1c0021b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021b4:	00150184 	move	$r4,$r12
1c0021b8:	57ff13ff 	bl	-240(0xfffff10) # 1c0020c8 <MYUSART_SendData>
1c0021bc:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0021c0:	02b9818c 	addi.w	$r12,$r12,-416(0xe60)
1c0021c4:	2880018c 	ld.w	$r12,$r12,0
1c0021c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0021cc:	00150184 	move	$r4,$r12
1c0021d0:	57fefbff 	bl	-264(0xffffef8) # 1c0020c8 <MYUSART_SendData>
1c0021d4:	03400000 	andi	$r0,$r0,0x0
1c0021d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021e4:	4c000020 	jirl	$r0,$r1,0

1c0021e8 <SendFlag>:
SendFlag():
1c0021e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021f8:	0015008c 	move	$r12,$r4
1c0021fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002200:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002204:	00150184 	move	$r4,$r12
1c002208:	57fec3ff 	bl	-320(0xffffec0) # 1c0020c8 <MYUSART_SendData>
1c00220c:	03400000 	andi	$r0,$r0,0x0
1c002210:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002214:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002218:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00221c:	4c000020 	jirl	$r0,$r1,0

1c002220 <SendLength>:
SendLength():
1c002220:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002224:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002228:	29806076 	st.w	$r22,$r3,24(0x18)
1c00222c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002230:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002234:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002238:	0048a18c 	srai.w	$r12,$r12,0x8
1c00223c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002240:	00150184 	move	$r4,$r12
1c002244:	57fe87ff 	bl	-380(0xffffe84) # 1c0020c8 <MYUSART_SendData>
1c002248:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00224c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002250:	00150184 	move	$r4,$r12
1c002254:	57fe77ff 	bl	-396(0xffffe74) # 1c0020c8 <MYUSART_SendData>
1c002258:	03400000 	andi	$r0,$r0,0x0
1c00225c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002260:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002264:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002268:	4c000020 	jirl	$r0,$r1,0

1c00226c <Sendcmd>:
Sendcmd():
1c00226c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002270:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002274:	29806076 	st.w	$r22,$r3,24(0x18)
1c002278:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00227c:	0015008c 	move	$r12,$r4
1c002280:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002284:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002288:	00150184 	move	$r4,$r12
1c00228c:	57fe3fff 	bl	-452(0xffffe3c) # 1c0020c8 <MYUSART_SendData>
1c002290:	03400000 	andi	$r0,$r0,0x0
1c002294:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002298:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00229c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022a0:	4c000020 	jirl	$r0,$r1,0

1c0022a4 <SendCheck>:
SendCheck():
1c0022a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0022ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0022b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022b4:	0015008c 	move	$r12,$r4
1c0022b8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0022bc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0022c0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0022c4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0022c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022cc:	00150184 	move	$r4,$r12
1c0022d0:	57fdfbff 	bl	-520(0xffffdf8) # 1c0020c8 <MYUSART_SendData>
1c0022d4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0022d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022dc:	00150184 	move	$r4,$r12
1c0022e0:	57fdebff 	bl	-536(0xffffde8) # 1c0020c8 <MYUSART_SendData>
1c0022e4:	03400000 	andi	$r0,$r0,0x0
1c0022e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0022ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0022f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022f4:	4c000020 	jirl	$r0,$r1,0

1c0022f8 <AS608_Check>:
AS608_Check():
1c0022f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002300:	29806076 	st.w	$r22,$r3,24(0x18)
1c002304:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002308:	1400004c 	lu12i.w	$r12,2(0x2)
1c00230c:	039c418c 	ori	$r12,$r12,0x710
1c002310:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002314:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002318:	28b3e18c 	ld.w	$r12,$r12,-776(0xcf8)
1c00231c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002320:	2900258d 	st.b	$r13,$r12,9(0x9)
1c002324:	57fdefff 	bl	-532(0xffffdec) # 1c002110 <SendHead>
1c002328:	57fe33ff 	bl	-464(0xffffe30) # 1c002158 <SendAddr>
1c00232c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002330:	50002c00 	b	44(0x2c) # 1c00235c <AS608_Check+0x64>
1c002334:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002338:	02b3b1ad 	addi.w	$r13,$r13,-788(0xcec)
1c00233c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002340:	001031ac 	add.w	$r12,$r13,$r12
1c002344:	2a00018c 	ld.bu	$r12,$r12,0
1c002348:	00150184 	move	$r4,$r12
1c00234c:	57fd7fff 	bl	-644(0xffffd7c) # 1c0020c8 <MYUSART_SendData>
1c002350:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002354:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002358:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00235c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002360:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002364:	67ffd18d 	bge	$r12,$r13,-48(0x3ffd0) # 1c002334 <AS608_Check+0x3c>
1c002368:	03400000 	andi	$r0,$r0,0x0
1c00236c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002370:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002374:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002378:	0340058c 	andi	$r12,$r12,0x1
1c00237c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00236c <AS608_Check+0x74>
1c002380:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002384:	5000c400 	b	196(0xc4) # 1c002448 <AS608_Check+0x150>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002398:	44002980 	bnez	$r12,40(0x28) # 1c0023c0 <AS608_Check+0xc8>
1c00239c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023a0:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0023a4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0023a8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023ac:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c0023b0:	001535cd 	or	$r13,$r14,$r13
1c0023b4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0023b8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0023bc:	50001800 	b	24(0x18) # 1c0023d4 <AS608_Check+0xdc>
1c0023c0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023c4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023cc:	0340058c 	andi	$r12,$r12,0x1
1c0023d0:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002388 <AS608_Check+0x90>
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	44001d80 	bnez	$r12,28(0x1c) # 1c0023f4 <AS608_Check+0xfc>
1c0023dc:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0023e0:	28b0c1ad 	ld.w	$r13,$r13,-976(0xc30)
1c0023e4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0023e8:	001031ac 	add.w	$r12,$r13,$r12
1c0023ec:	29000180 	st.b	$r0,$r12,0
1c0023f0:	50002400 	b	36(0x24) # 1c002414 <AS608_Check+0x11c>
1c0023f4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0023f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0023fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002400:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c002404:	28b031ce 	ld.w	$r14,$r14,-1012(0xc0c)
1c002408:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00240c:	001031cc 	add.w	$r12,$r14,$r12
1c002410:	2900018d 	st.b	$r13,$r12,0
1c002414:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002418:	28afe1ad 	ld.w	$r13,$r13,-1032(0xbf8)
1c00241c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002420:	001031ac 	add.w	$r12,$r13,$r12
1c002424:	2a00018c 	ld.bu	$r12,$r12,0
1c002428:	00150184 	move	$r4,$r12
1c00242c:	54111400 	bl	4372(0x1114) # 1c003540 <uart_write>
1c002430:	140000ec 	lu12i.w	$r12,7(0x7)
1c002434:	0394c18c 	ori	$r12,$r12,0x530
1c002438:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00243c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002440:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002444:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002448:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00244c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c002450:	6fff718d 	bgeu	$r12,$r13,-144(0x3ff70) # 1c0023c0 <AS608_Check+0xc8>
1c002454:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002458:	28aee18c 	ld.w	$r12,$r12,-1096(0xbb8)
1c00245c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002460:	44000d80 	bnez	$r12,12(0xc) # 1c00246c <AS608_Check+0x174>
1c002464:	0015000c 	move	$r12,$r0
1c002468:	50000800 	b	8(0x8) # 1c002470 <AS608_Check+0x178>
1c00246c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002470:	00150184 	move	$r4,$r12
1c002474:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002478:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00247c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002480:	4c000020 	jirl	$r0,$r1,0

1c002484 <as608_init>:
as608_init():
1c002484:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002488:	29803061 	st.w	$r1,$r3,12(0xc)
1c00248c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002490:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002494:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002498:	5410f000 	bl	4336(0x10f0) # 1c003588 <uart_set_rx_th>
1c00249c:	57fe5fff 	bl	-420(0xffffe5c) # 1c0022f8 <AS608_Check>
1c0024a0:	0015008c 	move	$r12,$r4
1c0024a4:	00150184 	move	$r4,$r12
1c0024a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0024ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0024b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024b4:	4c000020 	jirl	$r0,$r1,0

1c0024b8 <JudgeStr>:
JudgeStr():
1c0024b8:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0024bc:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0024c0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0024c4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0024c8:	0015008c 	move	$r12,$r4
1c0024cc:	297f3acc 	st.h	$r12,$r22,-50(0xfce)
1c0024d0:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c0024d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024d8:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c0024dc:	293f72cc 	st.b	$r12,$r22,-36(0xfdc)
1c0024e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0024e4:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0024e8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024ec:	02acd18c 	addi.w	$r12,$r12,-1228(0xb34)
1c0024f0:	2880018c 	ld.w	$r12,$r12,0
1c0024f4:	0044e18c 	srli.w	$r12,$r12,0x18
1c0024f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024fc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c002500:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002504:	02ac718c 	addi.w	$r12,$r12,-1252(0xb1c)
1c002508:	2880018c 	ld.w	$r12,$r12,0
1c00250c:	0044c18c 	srli.w	$r12,$r12,0x10
1c002510:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002514:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002518:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00251c:	02ac118c 	addi.w	$r12,$r12,-1276(0xb04)
1c002520:	2880018c 	ld.w	$r12,$r12,0
1c002524:	0044a18c 	srli.w	$r12,$r12,0x8
1c002528:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00252c:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c002530:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002534:	02abb18c 	addi.w	$r12,$r12,-1300(0xaec)
1c002538:	2880018c 	ld.w	$r12,$r12,0
1c00253c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002540:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c002544:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c002548:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c00254c:	293f8ec0 	st.b	$r0,$r22,-29(0xfe3)
1c002550:	03400000 	andi	$r0,$r0,0x0
1c002554:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002558:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00255c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002560:	0340058c 	andi	$r12,$r12,0x1
1c002564:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002554 <JudgeStr+0x9c>
1c002568:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00256c:	5000c000 	b	192(0xc0) # 1c00262c <JudgeStr+0x174>
1c002570:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002574:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002578:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00257c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002580:	44002980 	bnez	$r12,40(0x28) # 1c0025a8 <JudgeStr+0xf0>
1c002584:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002588:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c00258c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002590:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002594:	02bef40d 	addi.w	$r13,$r0,-67(0xfbd)
1c002598:	001535cd 	or	$r13,$r14,$r13
1c00259c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0025a0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0025a4:	50001800 	b	24(0x18) # 1c0025bc <JudgeStr+0x104>
1c0025a8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0025ac:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0025b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b4:	0340058c 	andi	$r12,$r12,0x1
1c0025b8:	43ffb99f 	beqz	$r12,-72(0x7fffb8) # 1c002570 <JudgeStr+0xb8>
1c0025bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0025c0:	44001d80 	bnez	$r12,28(0x1c) # 1c0025dc <JudgeStr+0x124>
1c0025c4:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c0025c8:	28a921ad 	ld.w	$r13,$r13,-1464(0xa48)
1c0025cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025d0:	001031ac 	add.w	$r12,$r13,$r12
1c0025d4:	29000180 	st.b	$r0,$r12,0
1c0025d8:	50002400 	b	36(0x24) # 1c0025fc <JudgeStr+0x144>
1c0025dc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0025e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0025e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025e8:	1cc7ffee 	pcaddu12i	$r14,409599(0x63fff)
1c0025ec:	28a891ce 	ld.w	$r14,$r14,-1500(0xa24)
1c0025f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025f4:	001031cc 	add.w	$r12,$r14,$r12
1c0025f8:	2900018d 	st.b	$r13,$r12,0
1c0025fc:	1cc7ffed 	pcaddu12i	$r13,409599(0x63fff)
1c002600:	28a841ad 	ld.w	$r13,$r13,-1520(0xa10)
1c002604:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002608:	001031ac 	add.w	$r12,$r13,$r12
1c00260c:	2a00018c 	ld.bu	$r12,$r12,0
1c002610:	00150184 	move	$r4,$r12
1c002614:	540f2c00 	bl	3884(0xf2c) # 1c003540 <uart_write>
1c002618:	2a7f3acc 	ld.hu	$r12,$r22,-50(0xfce)
1c00261c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002624:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002628:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00262c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002630:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c002634:	6fff758d 	bgeu	$r12,$r13,-140(0x3ff74) # 1c0025a8 <JudgeStr+0xf0>
1c002638:	02bf72cc 	addi.w	$r12,$r22,-36(0xfdc)
1c00263c:	00150185 	move	$r5,$r12
1c002640:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002644:	28a73084 	ld.w	$r4,$r4,-1588(0x9cc)
1c002648:	57f9bbff 	bl	-1608(0xffff9b8) # 1c002000 <my_strstr>
1c00264c:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c002650:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002654:	40000d80 	beqz	$r12,12(0xc) # 1c002660 <JudgeStr+0x1a8>
1c002658:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00265c:	50000800 	b	8(0x8) # 1c002664 <JudgeStr+0x1ac>
1c002660:	0015000c 	move	$r12,$r0
1c002664:	00150184 	move	$r4,$r12
1c002668:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00266c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002670:	02810063 	addi.w	$r3,$r3,64(0x40)
1c002674:	4c000020 	jirl	$r0,$r1,0

1c002678 <PS_GetImage>:
PS_GetImage():
1c002678:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00267c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002680:	29806076 	st.w	$r22,$r3,24(0x18)
1c002684:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002688:	57fa8bff 	bl	-1400(0xffffa88) # 1c002110 <SendHead>
1c00268c:	57facfff 	bl	-1332(0xffffacc) # 1c002158 <SendAddr>
1c002690:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002694:	57fb57ff 	bl	-1196(0xffffb54) # 1c0021e8 <SendFlag>
1c002698:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00269c:	57fb87ff 	bl	-1148(0xffffb84) # 1c002220 <SendLength>
1c0026a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0026a4:	57fbcbff 	bl	-1080(0xffffbc8) # 1c00226c <Sendcmd>
1c0026a8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0026ac:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0026b0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0026b4:	00150184 	move	$r4,$r12
1c0026b8:	57fbefff 	bl	-1044(0xffffbec) # 1c0022a4 <SendCheck>
1c0026bc:	1400004c 	lu12i.w	$r12,2(0x2)
1c0026c0:	039c4184 	ori	$r4,$r12,0x710
1c0026c4:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0024b8 <JudgeStr>
1c0026c8:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	40001580 	beqz	$r12,20(0x14) # 1c0026e4 <PS_GetImage+0x6c>
1c0026d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d8:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0026dc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026e0:	50000c00 	b	12(0xc) # 1c0026ec <PS_GetImage+0x74>
1c0026e4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0026e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026f0:	00150184 	move	$r4,$r12
1c0026f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0026f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0026fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002700:	4c000020 	jirl	$r0,$r1,0

1c002704 <PS_GenChar>:
PS_GenChar():
1c002704:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002708:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00270c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002710:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002714:	0015008c 	move	$r12,$r4
1c002718:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00271c:	57f9f7ff 	bl	-1548(0xffff9f4) # 1c002110 <SendHead>
1c002720:	57fa3bff 	bl	-1480(0xffffa38) # 1c002158 <SendAddr>
1c002724:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002728:	57fac3ff 	bl	-1344(0xffffac0) # 1c0021e8 <SendFlag>
1c00272c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c002730:	57faf3ff 	bl	-1296(0xffffaf0) # 1c002220 <SendLength>
1c002734:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002738:	57fb37ff 	bl	-1228(0xffffb34) # 1c00226c <Sendcmd>
1c00273c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002740:	00150184 	move	$r4,$r12
1c002744:	57f987ff 	bl	-1660(0xffff984) # 1c0020c8 <MYUSART_SendData>
1c002748:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00274c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002750:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c002754:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002758:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c00275c:	00150184 	move	$r4,$r12
1c002760:	57fb47ff 	bl	-1212(0xffffb44) # 1c0022a4 <SendCheck>
1c002764:	1400004c 	lu12i.w	$r12,2(0x2)
1c002768:	039c4184 	ori	$r4,$r12,0x710
1c00276c:	57fd4fff 	bl	-692(0xffffd4c) # 1c0024b8 <JudgeStr>
1c002770:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002774:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002778:	40001580 	beqz	$r12,20(0x14) # 1c00278c <PS_GenChar+0x88>
1c00277c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002780:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002784:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002788:	50000c00 	b	12(0xc) # 1c002794 <PS_GenChar+0x90>
1c00278c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002790:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002794:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002798:	00150184 	move	$r4,$r12
1c00279c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027a0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027a8:	4c000020 	jirl	$r0,$r1,0

1c0027ac <PS_Match>:
PS_Match():
1c0027ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0027b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0027b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027bc:	57f957ff 	bl	-1708(0xffff954) # 1c002110 <SendHead>
1c0027c0:	57f99bff 	bl	-1640(0xffff998) # 1c002158 <SendAddr>
1c0027c4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0027c8:	57fa23ff 	bl	-1504(0xffffa20) # 1c0021e8 <SendFlag>
1c0027cc:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027d0:	57fa53ff 	bl	-1456(0xffffa50) # 1c002220 <SendLength>
1c0027d4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0027d8:	57fa97ff 	bl	-1388(0xffffa94) # 1c00226c <Sendcmd>
1c0027dc:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0027e0:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0027e4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0027e8:	00150184 	move	$r4,$r12
1c0027ec:	57fabbff 	bl	-1352(0xffffab8) # 1c0022a4 <SendCheck>
1c0027f0:	1400004c 	lu12i.w	$r12,2(0x2)
1c0027f4:	039c4184 	ori	$r4,$r12,0x710
1c0027f8:	57fcc3ff 	bl	-832(0xffffcc0) # 1c0024b8 <JudgeStr>
1c0027fc:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002804:	40001580 	beqz	$r12,20(0x14) # 1c002818 <PS_Match+0x6c>
1c002808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00280c:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002810:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002814:	50000c00 	b	12(0xc) # 1c002820 <PS_Match+0x74>
1c002818:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00281c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002820:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002824:	00150184 	move	$r4,$r12
1c002828:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00282c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002830:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002834:	4c000020 	jirl	$r0,$r1,0

1c002838 <PS_RegModel>:
PS_RegModel():
1c002838:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00283c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002840:	29806076 	st.w	$r22,$r3,24(0x18)
1c002844:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002848:	57f8cbff 	bl	-1848(0xffff8c8) # 1c002110 <SendHead>
1c00284c:	57f90fff 	bl	-1780(0xffff90c) # 1c002158 <SendAddr>
1c002850:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002854:	57f997ff 	bl	-1644(0xffff994) # 1c0021e8 <SendFlag>
1c002858:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00285c:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c002220 <SendLength>
1c002860:	02801404 	addi.w	$r4,$r0,5(0x5)
1c002864:	57fa0bff 	bl	-1528(0xffffa08) # 1c00226c <Sendcmd>
1c002868:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c00286c:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002870:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002874:	00150184 	move	$r4,$r12
1c002878:	57fa2fff 	bl	-1492(0xffffa2c) # 1c0022a4 <SendCheck>
1c00287c:	1400004c 	lu12i.w	$r12,2(0x2)
1c002880:	039c4184 	ori	$r4,$r12,0x710
1c002884:	57fc37ff 	bl	-972(0xffffc34) # 1c0024b8 <JudgeStr>
1c002888:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00288c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002890:	40001580 	beqz	$r12,20(0x14) # 1c0028a4 <PS_RegModel+0x6c>
1c002894:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002898:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00289c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028a0:	50000c00 	b	12(0xc) # 1c0028ac <PS_RegModel+0x74>
1c0028a4:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0028a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028ac:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028b0:	00150184 	move	$r4,$r12
1c0028b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0028b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0028bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028c0:	4c000020 	jirl	$r0,$r1,0

1c0028c4 <PS_StoreChar>:
PS_StoreChar():
1c0028c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0028cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0028d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028d4:	0015008c 	move	$r12,$r4
1c0028d8:	001500ad 	move	$r13,$r5
1c0028dc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0028e0:	001501ac 	move	$r12,$r13
1c0028e4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0028e8:	57f82bff 	bl	-2008(0xffff828) # 1c002110 <SendHead>
1c0028ec:	57f86fff 	bl	-1940(0xffff86c) # 1c002158 <SendAddr>
1c0028f0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0028f4:	57f8f7ff 	bl	-1804(0xffff8f4) # 1c0021e8 <SendFlag>
1c0028f8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0028fc:	57f927ff 	bl	-1756(0xffff924) # 1c002220 <SendLength>
1c002900:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002904:	57f96bff 	bl	-1688(0xffff968) # 1c00226c <Sendcmd>
1c002908:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00290c:	00150184 	move	$r4,$r12
1c002910:	57f7bbff 	bl	-2120(0xffff7b8) # 1c0020c8 <MYUSART_SendData>
1c002914:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002918:	0044a18c 	srli.w	$r12,$r12,0x8
1c00291c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002920:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002924:	00150184 	move	$r4,$r12
1c002928:	57f7a3ff 	bl	-2144(0xffff7a0) # 1c0020c8 <MYUSART_SendData>
1c00292c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002930:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002934:	00150184 	move	$r4,$r12
1c002938:	57f793ff 	bl	-2160(0xffff790) # 1c0020c8 <MYUSART_SendData>
1c00293c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002940:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002944:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002948:	0044a18c 	srli.w	$r12,$r12,0x8
1c00294c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002950:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002954:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002958:	001031ac 	add.w	$r12,$r13,$r12
1c00295c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002960:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002964:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002968:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00296c:	001031ac 	add.w	$r12,$r13,$r12
1c002970:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002974:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002978:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00297c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002980:	00150184 	move	$r4,$r12
1c002984:	57f923ff 	bl	-1760(0xffff920) # 1c0022a4 <SendCheck>
1c002988:	1400004c 	lu12i.w	$r12,2(0x2)
1c00298c:	039c4184 	ori	$r4,$r12,0x710
1c002990:	57fb2bff 	bl	-1240(0xffffb28) # 1c0024b8 <JudgeStr>
1c002994:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002998:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00299c:	40001580 	beqz	$r12,20(0x14) # 1c0029b0 <PS_StoreChar+0xec>
1c0029a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0029a4:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0029a8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029ac:	50000c00 	b	12(0xc) # 1c0029b8 <PS_StoreChar+0xf4>
1c0029b0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0029b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0029b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0029bc:	00150184 	move	$r4,$r12
1c0029c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029cc:	4c000020 	jirl	$r0,$r1,0

1c0029d0 <PS_Empty>:
PS_Empty():
1c0029d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029d4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029d8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029dc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029e0:	57f733ff 	bl	-2256(0xffff730) # 1c002110 <SendHead>
1c0029e4:	57f777ff 	bl	-2188(0xffff774) # 1c002158 <SendAddr>
1c0029e8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0029ec:	57f7ffff 	bl	-2052(0xffff7fc) # 1c0021e8 <SendFlag>
1c0029f0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0029f4:	57f82fff 	bl	-2004(0xffff82c) # 1c002220 <SendLength>
1c0029f8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0029fc:	57f873ff 	bl	-1936(0xffff870) # 1c00226c <Sendcmd>
1c002a00:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c002a04:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002a08:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002a0c:	00150184 	move	$r4,$r12
1c002a10:	57f897ff 	bl	-1900(0xffff894) # 1c0022a4 <SendCheck>
1c002a14:	1400004c 	lu12i.w	$r12,2(0x2)
1c002a18:	039c4184 	ori	$r4,$r12,0x710
1c002a1c:	57fa9fff 	bl	-1380(0xffffa9c) # 1c0024b8 <JudgeStr>
1c002a20:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002a24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a28:	40001580 	beqz	$r12,20(0x14) # 1c002a3c <PS_Empty+0x6c>
1c002a2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a30:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002a34:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a38:	50000c00 	b	12(0xc) # 1c002a44 <PS_Empty+0x74>
1c002a3c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002a40:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a44:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a48:	00150184 	move	$r4,$r12
1c002a4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a58:	4c000020 	jirl	$r0,$r1,0

1c002a5c <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c002a5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a6c:	0015008c 	move	$r12,$r4
1c002a70:	001500ae 	move	$r14,$r5
1c002a74:	001500cd 	move	$r13,$r6
1c002a78:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c002a7c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002a80:	001501cc 	move	$r12,$r14
1c002a84:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002a88:	001501ac 	move	$r12,$r13
1c002a8c:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002a90:	57f683ff 	bl	-2432(0xffff680) # 1c002110 <SendHead>
1c002a94:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c002158 <SendAddr>
1c002a98:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a9c:	57f74fff 	bl	-2228(0xffff74c) # 1c0021e8 <SendFlag>
1c002aa0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002aa4:	57f77fff 	bl	-2180(0xffff77c) # 1c002220 <SendLength>
1c002aa8:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c002aac:	57f7c3ff 	bl	-2112(0xffff7c0) # 1c00226c <Sendcmd>
1c002ab0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002ab4:	00150184 	move	$r4,$r12
1c002ab8:	57f613ff 	bl	-2544(0xffff610) # 1c0020c8 <MYUSART_SendData>
1c002abc:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002ac0:	0044a18c 	srli.w	$r12,$r12,0x8
1c002ac4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002ac8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002acc:	00150184 	move	$r4,$r12
1c002ad0:	57f5fbff 	bl	-2568(0xffff5f8) # 1c0020c8 <MYUSART_SendData>
1c002ad4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002adc:	00150184 	move	$r4,$r12
1c002ae0:	57f5ebff 	bl	-2584(0xffff5e8) # 1c0020c8 <MYUSART_SendData>
1c002ae4:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002ae8:	0044a18c 	srli.w	$r12,$r12,0x8
1c002aec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002af0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002af4:	00150184 	move	$r4,$r12
1c002af8:	57f5d3ff 	bl	-2608(0xffff5d0) # 1c0020c8 <MYUSART_SendData>
1c002afc:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b04:	00150184 	move	$r4,$r12
1c002b08:	57f5c3ff 	bl	-2624(0xffff5c0) # 1c0020c8 <MYUSART_SendData>
1c002b0c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002b10:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b14:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002b18:	0044a18c 	srli.w	$r12,$r12,0x8
1c002b1c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b20:	001031ac 	add.w	$r12,$r13,$r12
1c002b24:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b28:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002b2c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b34:	001031ac 	add.w	$r12,$r13,$r12
1c002b38:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b3c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b40:	0044a18c 	srli.w	$r12,$r12,0x8
1c002b44:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b48:	001031ac 	add.w	$r12,$r13,$r12
1c002b4c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002b50:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002b54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002b58:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b5c:	001031ac 	add.w	$r12,$r13,$r12
1c002b60:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002b64:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c002b68:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002b6c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002b70:	00150184 	move	$r4,$r12
1c002b74:	57f733ff 	bl	-2256(0xffff730) # 1c0022a4 <SendCheck>
1c002b78:	1400004c 	lu12i.w	$r12,2(0x2)
1c002b7c:	039c4184 	ori	$r4,$r12,0x710
1c002b80:	57f93bff 	bl	-1736(0xffff938) # 1c0024b8 <JudgeStr>
1c002b84:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002b88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b8c:	40008580 	beqz	$r12,132(0x84) # 1c002c10 <PS_HighSpeedSearch+0x1b4>
1c002b90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b94:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002b98:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ba0:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c002ba4:	2a00018c 	ld.bu	$r12,$r12,0
1c002ba8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bac:	0040a18c 	slli.w	$r12,$r12,0x8
1c002bb0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bb4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bb8:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c002bbc:	2a00018c 	ld.bu	$r12,$r12,0
1c002bc0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bc4:	001031ac 	add.w	$r12,$r13,$r12
1c002bc8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bcc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002bd0:	2940018d 	st.h	$r13,$r12,0
1c002bd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bd8:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c002bdc:	2a00018c 	ld.bu	$r12,$r12,0
1c002be0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002be4:	0040a18c 	slli.w	$r12,$r12,0x8
1c002be8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002bec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bf0:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002bf4:	2a00018c 	ld.bu	$r12,$r12,0
1c002bf8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002bfc:	001031ac 	add.w	$r12,$r13,$r12
1c002c00:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002c04:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002c08:	2940098d 	st.h	$r13,$r12,2(0x2)
1c002c0c:	50000c00 	b	12(0xc) # 1c002c18 <PS_HighSpeedSearch+0x1bc>
1c002c10:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002c14:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002c18:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002c1c:	00150184 	move	$r4,$r12
1c002c20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c2c:	4c000020 	jirl	$r0,$r1,0

1c002c30 <ShowErrMessage>:
ShowErrMessage():
1c002c30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c40:	0015008c 	move	$r12,$r4
1c002c44:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002c48:	54182400 	bl	6180(0x1824) # 1c00446c <OLED_CLS>
1c002c4c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c50:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c58:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002c5c:	541b6000 	bl	7008(0x1b60) # 1c0047bc <OLED_ShowCN_STR>
1c002c60:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c64:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002c68:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c6c:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c70:	541b4c00 	bl	6988(0x1b4c) # 1c0047bc <OLED_ShowCN_STR>
1c002c74:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c002c78:	03bead8c 	ori	$r12,$r12,0xfab
1c002c7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c80:	50001400 	b	20(0x14) # 1c002c94 <ShowErrMessage+0x64>
1c002c84:	03400000 	andi	$r0,$r0,0x0
1c002c88:	03400000 	andi	$r0,$r0,0x0
1c002c8c:	03400000 	andi	$r0,$r0,0x0
1c002c90:	03400000 	andi	$r0,$r0,0x0
1c002c94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c9c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002ca0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c84 <ShowErrMessage+0x54>
1c002ca4:	5417c800 	bl	6088(0x17c8) # 1c00446c <OLED_CLS>
1c002ca8:	02801407 	addi.w	$r7,$r0,5(0x5)
1c002cac:	02812006 	addi.w	$r6,$r0,72(0x48)
1c002cb0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002cb4:	02806404 	addi.w	$r4,$r0,25(0x19)
1c002cb8:	541b0400 	bl	6916(0x1b04) # 1c0047bc <OLED_ShowCN_STR>
1c002cbc:	5417b000 	bl	6064(0x17b0) # 1c00446c <OLED_CLS>
1c002cc0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002cc4:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002cc8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ccc:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002cd0:	541aec00 	bl	6892(0x1aec) # 1c0047bc <OLED_ShowCN_STR>
1c002cd4:	03400000 	andi	$r0,$r0,0x0
1c002cd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002cdc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ce0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ce4:	4c000020 	jirl	$r0,$r1,0

1c002ce8 <Add_FR>:
Add_FR():
1c002ce8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002cf0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cf4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cf8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002cfc:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c002d00:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002d04:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002d08:	680495ac 	bltu	$r13,$r12,1172(0x494) # 1c00319c <Add_FR+0x4b4>
1c002d0c:	0040898d 	slli.w	$r13,$r12,0x2
1c002d10:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c002d14:	028a818c 	addi.w	$r12,$r12,672(0x2a0)
1c002d18:	001031ac 	add.w	$r12,$r13,$r12
1c002d1c:	2880018c 	ld.w	$r12,$r12,0
1c002d20:	4c000180 	jirl	$r0,$r12,0
1c002d24:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002d28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d2c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002d30:	54173c00 	bl	5948(0x173c) # 1c00446c <OLED_CLS>
1c002d34:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002d38:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002d3c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d40:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002d44:	541a7800 	bl	6776(0x1a78) # 1c0047bc <OLED_ShowCN_STR>
1c002d48:	57f933ff 	bl	-1744(0xffff930) # 1c002678 <PS_GetImage>
1c002d4c:	0015008c 	move	$r12,$r4
1c002d50:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002d54:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002d58:	44006980 	bnez	$r12,104(0x68) # 1c002dc0 <Add_FR+0xd8>
1c002d5c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002d60:	57f9a7ff 	bl	-1628(0xffff9a4) # 1c002704 <PS_GenChar>
1c002d64:	0015008c 	move	$r12,$r4
1c002d68:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002d6c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002d70:	44004180 	bnez	$r12,64(0x40) # 1c002db0 <Add_FR+0xc8>
1c002d74:	5416f800 	bl	5880(0x16f8) # 1c00446c <OLED_CLS>
1c002d78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d7c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002d80:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d84:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002d88:	541a3400 	bl	6708(0x1a34) # 1c0047bc <OLED_ShowCN_STR>
1c002d8c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002d90:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002d94:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002d98:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002d9c:	541a2000 	bl	6688(0x1a20) # 1c0047bc <OLED_ShowCN_STR>
1c002da0:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002da4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002da8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002dac:	5003f000 	b	1008(0x3f0) # 1c00319c <Add_FR+0x4b4>
1c002db0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002db4:	00150184 	move	$r4,$r12
1c002db8:	57fe7bff 	bl	-392(0xffffe78) # 1c002c30 <ShowErrMessage>
1c002dbc:	5003e000 	b	992(0x3e0) # 1c00319c <Add_FR+0x4b4>
1c002dc0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002dc4:	00150184 	move	$r4,$r12
1c002dc8:	57fe6bff 	bl	-408(0xffffe68) # 1c002c30 <ShowErrMessage>
1c002dcc:	5003d000 	b	976(0x3d0) # 1c00319c <Add_FR+0x4b4>
1c002dd0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002dd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002dd8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002ddc:	54169000 	bl	5776(0x1690) # 1c00446c <OLED_CLS>
1c002de0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002de4:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002de8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002dec:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002df0:	5419cc00 	bl	6604(0x19cc) # 1c0047bc <OLED_ShowCN_STR>
1c002df4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002df8:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002dfc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e00:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e04:	5419b800 	bl	6584(0x19b8) # 1c0047bc <OLED_ShowCN_STR>
1c002e08:	57f873ff 	bl	-1936(0xffff870) # 1c002678 <PS_GetImage>
1c002e0c:	0015008c 	move	$r12,$r4
1c002e10:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002e14:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e18:	44006980 	bnez	$r12,104(0x68) # 1c002e80 <Add_FR+0x198>
1c002e1c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002e20:	57f8e7ff 	bl	-1820(0xffff8e4) # 1c002704 <PS_GenChar>
1c002e24:	0015008c 	move	$r12,$r4
1c002e28:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002e2c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e30:	44004180 	bnez	$r12,64(0x40) # 1c002e70 <Add_FR+0x188>
1c002e34:	54163800 	bl	5688(0x1638) # 1c00446c <OLED_CLS>
1c002e38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e3c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e44:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002e48:	54197400 	bl	6516(0x1974) # 1c0047bc <OLED_ShowCN_STR>
1c002e4c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e50:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002e54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002e58:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002e5c:	54196000 	bl	6496(0x1960) # 1c0047bc <OLED_ShowCN_STR>
1c002e60:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002e64:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002e68:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002e6c:	50033000 	b	816(0x330) # 1c00319c <Add_FR+0x4b4>
1c002e70:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e74:	00150184 	move	$r4,$r12
1c002e78:	57fdbbff 	bl	-584(0xffffdb8) # 1c002c30 <ShowErrMessage>
1c002e7c:	50032000 	b	800(0x320) # 1c00319c <Add_FR+0x4b4>
1c002e80:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e84:	00150184 	move	$r4,$r12
1c002e88:	57fdabff 	bl	-600(0xffffda8) # 1c002c30 <ShowErrMessage>
1c002e8c:	50031000 	b	784(0x310) # 1c00319c <Add_FR+0x4b4>
1c002e90:	5415dc00 	bl	5596(0x15dc) # 1c00446c <OLED_CLS>
1c002e94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e98:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002e9c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ea0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002ea4:	54191800 	bl	6424(0x1918) # 1c0047bc <OLED_ShowCN_STR>
1c002ea8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002eac:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002eb0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002eb4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002eb8:	54190400 	bl	6404(0x1904) # 1c0047bc <OLED_ShowCN_STR>
1c002ebc:	57f8f3ff 	bl	-1808(0xffff8f0) # 1c0027ac <PS_Match>
1c002ec0:	0015008c 	move	$r12,$r4
1c002ec4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002ec8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002ecc:	44006980 	bnez	$r12,104(0x68) # 1c002f34 <Add_FR+0x24c>
1c002ed0:	54159c00 	bl	5532(0x159c) # 1c00446c <OLED_CLS>
1c002ed4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ed8:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002edc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ee0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002ee4:	5418d800 	bl	6360(0x18d8) # 1c0047bc <OLED_ShowCN_STR>
1c002ee8:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002eec:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002ef0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ef4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002ef8:	5418c400 	bl	6340(0x18c4) # 1c0047bc <OLED_ShowCN_STR>
1c002efc:	54157000 	bl	5488(0x1570) # 1c00446c <OLED_CLS>
1c002f00:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f04:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f08:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f0c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f10:	5418ac00 	bl	6316(0x18ac) # 1c0047bc <OLED_ShowCN_STR>
1c002f14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f18:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002f1c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f20:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f24:	54189800 	bl	6296(0x1898) # 1c0047bc <OLED_ShowCN_STR>
1c002f28:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f2c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002f30:	50004400 	b	68(0x44) # 1c002f74 <Add_FR+0x28c>
1c002f34:	54153800 	bl	5432(0x1538) # 1c00446c <OLED_CLS>
1c002f38:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f3c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002f40:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f44:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002f48:	54187400 	bl	6260(0x1874) # 1c0047bc <OLED_ShowCN_STR>
1c002f4c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002f50:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002f54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002f58:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002f5c:	54186000 	bl	6240(0x1860) # 1c0047bc <OLED_ShowCN_STR>
1c002f60:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002f64:	00150184 	move	$r4,$r12
1c002f68:	57fccbff 	bl	-824(0xffffcc8) # 1c002c30 <ShowErrMessage>
1c002f6c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002f70:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002f74:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002f78:	03bfc98c 	ori	$r12,$r12,0xff2
1c002f7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f80:	50001400 	b	20(0x14) # 1c002f94 <Add_FR+0x2ac>
1c002f84:	03400000 	andi	$r0,$r0,0x0
1c002f88:	03400000 	andi	$r0,$r0,0x0
1c002f8c:	03400000 	andi	$r0,$r0,0x0
1c002f90:	03400000 	andi	$r0,$r0,0x0
1c002f94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f98:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f9c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002fa0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002f84 <Add_FR+0x29c>
1c002fa4:	5001f800 	b	504(0x1f8) # 1c00319c <Add_FR+0x4b4>
1c002fa8:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002fac:	03bfc98c 	ori	$r12,$r12,0xff2
1c002fb0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002fb4:	50001400 	b	20(0x14) # 1c002fc8 <Add_FR+0x2e0>
1c002fb8:	03400000 	andi	$r0,$r0,0x0
1c002fbc:	03400000 	andi	$r0,$r0,0x0
1c002fc0:	03400000 	andi	$r0,$r0,0x0
1c002fc4:	03400000 	andi	$r0,$r0,0x0
1c002fc8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002fcc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002fd0:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002fd4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002fb8 <Add_FR+0x2d0>
1c002fd8:	57f863ff 	bl	-1952(0xffff860) # 1c002838 <PS_RegModel>
1c002fdc:	0015008c 	move	$r12,$r4
1c002fe0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002fe4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002fe8:	44001180 	bnez	$r12,16(0x10) # 1c002ff8 <Add_FR+0x310>
1c002fec:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002ff0:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002ff4:	50001400 	b	20(0x14) # 1c003008 <Add_FR+0x320>
1c002ff8:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002ffc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c003000:	00150184 	move	$r4,$r12
1c003004:	57fc2fff 	bl	-980(0xffffc2c) # 1c002c30 <ShowErrMessage>
1c003008:	14000e2c 	lu12i.w	$r12,113(0x71)
1c00300c:	03bfc98c 	ori	$r12,$r12,0xff2
1c003010:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003014:	50001400 	b	20(0x14) # 1c003028 <Add_FR+0x340>
1c003018:	03400000 	andi	$r0,$r0,0x0
1c00301c:	03400000 	andi	$r0,$r0,0x0
1c003020:	03400000 	andi	$r0,$r0,0x0
1c003024:	03400000 	andi	$r0,$r0,0x0
1c003028:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00302c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003030:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003034:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003018 <Add_FR+0x330>
1c003038:	50016400 	b	356(0x164) # 1c00319c <Add_FR+0x4b4>
1c00303c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003040:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003044:	50009000 	b	144(0x90) # 1c0030d4 <Add_FR+0x3ec>
1c003048:	54061800 	bl	1560(0x618) # 1c003660 <MatrixKey>
1c00304c:	0015008c 	move	$r12,$r4
1c003050:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003054:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003058:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00305c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c003078 <Add_FR+0x390>
1c003060:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003064:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003068:	40001180 	beqz	$r12,16(0x10) # 1c003078 <Add_FR+0x390>
1c00306c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003070:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003074:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c003078:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00307c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003080:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0030a0 <Add_FR+0x3b8>
1c003084:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c003088:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c00308c:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c003090:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c0030a0 <Add_FR+0x3b8>
1c003094:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c003098:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00309c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0030a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0030a4:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c0030a8:	02bc20c6 	addi.w	$r6,$r6,-248(0xf08)
1c0030ac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0030b0:	02808004 	addi.w	$r4,$r0,32(0x20)
1c0030b4:	5413e400 	bl	5092(0x13e4) # 1c004498 <OLED_ShowStr>
1c0030b8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0030bc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0030c0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0030c4:	00150186 	move	$r6,$r12
1c0030c8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0030cc:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c0030d0:	541a3400 	bl	6708(0x1a34) # 1c004b04 <OLED_ShowNum>
1c0030d4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0030d8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0030dc:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c003048 <Add_FR+0x360>
1c0030e0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0030e4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0030e8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0030ec:	00150185 	move	$r5,$r12
1c0030f0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0030f4:	57f7d3ff 	bl	-2096(0xffff7d0) # 1c0028c4 <PS_StoreChar>
1c0030f8:	0015008c 	move	$r12,$r4
1c0030fc:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c003100:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c003104:	44008580 	bnez	$r12,132(0x84) # 1c003188 <Add_FR+0x4a0>
1c003108:	54136400 	bl	4964(0x1364) # 1c00446c <OLED_CLS>
1c00310c:	02801807 	addi.w	$r7,$r0,6(0x6)
1c003110:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c003114:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003118:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00311c:	5416a000 	bl	5792(0x16a0) # 1c0047bc <OLED_ShowCN_STR>
1c003120:	02800807 	addi.w	$r7,$r0,2(0x2)
1c003124:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c003128:	02ba20c6 	addi.w	$r6,$r6,-376(0xe88)
1c00312c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003130:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003134:	54136400 	bl	4964(0x1364) # 1c004498 <OLED_ShowStr>
1c003138:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c00313c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c003140:	02800407 	addi.w	$r7,$r0,1(0x1)
1c003144:	00150186 	move	$r6,$r12
1c003148:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00314c:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c003150:	5419b400 	bl	6580(0x19b4) # 1c004b04 <OLED_ShowNum>
1c003154:	14002aac 	lu12i.w	$r12,341(0x155)
1c003158:	03bf598c 	ori	$r12,$r12,0xfd6
1c00315c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003160:	50001400 	b	20(0x14) # 1c003174 <Add_FR+0x48c>
1c003164:	03400000 	andi	$r0,$r0,0x0
1c003168:	03400000 	andi	$r0,$r0,0x0
1c00316c:	03400000 	andi	$r0,$r0,0x0
1c003170:	03400000 	andi	$r0,$r0,0x0
1c003174:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003178:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00317c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003180:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003164 <Add_FR+0x47c>
1c003184:	50005c00 	b	92(0x5c) # 1c0031e0 <Add_FR+0x4f8>
1c003188:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c00318c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c003190:	00150184 	move	$r4,$r12
1c003194:	57fa9fff 	bl	-1380(0xffffa9c) # 1c002c30 <ShowErrMessage>
1c003198:	03400000 	andi	$r0,$r0,0x0
1c00319c:	14000b6c 	lu12i.w	$r12,91(0x5b)
1c0031a0:	038ca18c 	ori	$r12,$r12,0x328
1c0031a4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0031a8:	50001400 	b	20(0x14) # 1c0031bc <Add_FR+0x4d4>
1c0031ac:	03400000 	andi	$r0,$r0,0x0
1c0031b0:	03400000 	andi	$r0,$r0,0x0
1c0031b4:	03400000 	andi	$r0,$r0,0x0
1c0031b8:	03400000 	andi	$r0,$r0,0x0
1c0031bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0031c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0031c4:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c0031c8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0031ac <Add_FR+0x4c4>
1c0031cc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0031d0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0031d4:	580009ac 	beq	$r13,$r12,8(0x8) # 1c0031dc <Add_FR+0x4f4>
1c0031d8:	53fb2bff 	b	-1240(0xffffb28) # 1c002d00 <Add_FR+0x18>
1c0031dc:	03400000 	andi	$r0,$r0,0x0
1c0031e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031ec:	4c000020 	jirl	$r0,$r1,0

1c0031f0 <press_FR>:
press_FR():
1c0031f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0031f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0031fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003200:	54126c00 	bl	4716(0x126c) # 1c00446c <OLED_CLS>
1c003204:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003208:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c00320c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003210:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003214:	5415a800 	bl	5544(0x15a8) # 1c0047bc <OLED_ShowCN_STR>
1c003218:	57f463ff 	bl	-2976(0xffff460) # 1c002678 <PS_GetImage>
1c00321c:	0015008c 	move	$r12,$r4
1c003220:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003224:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003228:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003218 <press_FR+0x28>
1c00322c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003230:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c002704 <PS_GenChar>
1c003234:	0015008c 	move	$r12,$r4
1c003238:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00323c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003240:	44011d80 	bnez	$r12,284(0x11c) # 1c00335c <press_FR+0x16c>
1c003244:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c003248:	00150187 	move	$r7,$r12
1c00324c:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c003250:	00150005 	move	$r5,$r0
1c003254:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003258:	57f807ff 	bl	-2044(0xffff804) # 1c002a5c <PS_HighSpeedSearch>
1c00325c:	0015008c 	move	$r12,$r4
1c003260:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003264:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003268:	4400b580 	bnez	$r12,180(0xb4) # 1c00331c <press_FR+0x12c>
1c00326c:	54120000 	bl	4608(0x1200) # 1c00446c <OLED_CLS>
1c003270:	02802004 	addi.w	$r4,$r0,8(0x8)
1c003274:	54366800 	bl	13928(0x3668) # 1c0068dc <interface_display>
1c003278:	5401e400 	bl	484(0x1e4) # 1c00345c <SG90_Open>
1c00327c:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c003280:	03bdc58c 	ori	$r12,$r12,0xf71
1c003284:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003288:	50001400 	b	20(0x14) # 1c00329c <press_FR+0xac>
1c00328c:	03400000 	andi	$r0,$r0,0x0
1c003290:	03400000 	andi	$r0,$r0,0x0
1c003294:	03400000 	andi	$r0,$r0,0x0
1c003298:	03400000 	andi	$r0,$r0,0x0
1c00329c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032a0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032a4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0032a8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00328c <press_FR+0x9c>
1c0032ac:	5401dc00 	bl	476(0x1dc) # 1c003488 <SG90_Close>
1c0032b0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0032b4:	54362800 	bl	13864(0x3628) # 1c0068dc <interface_display>
1c0032b8:	14002aac 	lu12i.w	$r12,341(0x155)
1c0032bc:	03bf598c 	ori	$r12,$r12,0xfd6
1c0032c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032c4:	50001400 	b	20(0x14) # 1c0032d8 <press_FR+0xe8>
1c0032c8:	03400000 	andi	$r0,$r0,0x0
1c0032cc:	03400000 	andi	$r0,$r0,0x0
1c0032d0:	03400000 	andi	$r0,$r0,0x0
1c0032d4:	03400000 	andi	$r0,$r0,0x0
1c0032d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0032dc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032e0:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0032e4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0032c8 <press_FR+0xd8>
1c0032e8:	14002aac 	lu12i.w	$r12,341(0x155)
1c0032ec:	03bf598c 	ori	$r12,$r12,0xfd6
1c0032f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0032f4:	50001400 	b	20(0x14) # 1c003308 <press_FR+0x118>
1c0032f8:	03400000 	andi	$r0,$r0,0x0
1c0032fc:	03400000 	andi	$r0,$r0,0x0
1c003300:	03400000 	andi	$r0,$r0,0x0
1c003304:	03400000 	andi	$r0,$r0,0x0
1c003308:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00330c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003310:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003314:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0032f8 <press_FR+0x108>
1c003318:	50006000 	b	96(0x60) # 1c003378 <press_FR+0x188>
1c00331c:	54115000 	bl	4432(0x1150) # 1c00446c <OLED_CLS>
1c003320:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003324:	5435b800 	bl	13752(0x35b8) # 1c0068dc <interface_display>
1c003328:	540c9000 	bl	3216(0xc90) # 1c003fb8 <Buzzer>
1c00332c:	14002aac 	lu12i.w	$r12,341(0x155)
1c003330:	03bf598c 	ori	$r12,$r12,0xfd6
1c003334:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003338:	50001400 	b	20(0x14) # 1c00334c <press_FR+0x15c>
1c00333c:	03400000 	andi	$r0,$r0,0x0
1c003340:	03400000 	andi	$r0,$r0,0x0
1c003344:	03400000 	andi	$r0,$r0,0x0
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003350:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003354:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003358:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00333c <press_FR+0x14c>
1c00335c:	54111000 	bl	4368(0x1110) # 1c00446c <OLED_CLS>
1c003360:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003364:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003368:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00336c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c003370:	54144c00 	bl	5196(0x144c) # 1c0047bc <OLED_ShowCN_STR>
1c003374:	53fea7ff 	b	-348(0xffffea4) # 1c003218 <press_FR+0x28>
1c003378:	03400000 	andi	$r0,$r0,0x0
1c00337c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003380:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003384:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003388:	4c000020 	jirl	$r0,$r1,0

1c00338c <Del_FR_Lib>:
Del_FR_Lib():
1c00338c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003390:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003394:	29806076 	st.w	$r22,$r3,24(0x18)
1c003398:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00339c:	57f637ff 	bl	-2508(0xffff634) # 1c0029d0 <PS_Empty>
1c0033a0:	0015008c 	move	$r12,$r4
1c0033a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0033a8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0033ac:	40001180 	beqz	$r12,16(0x10) # 1c0033bc <Del_FR_Lib+0x30>
1c0033b0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0033b4:	00150184 	move	$r4,$r12
1c0033b8:	57f87bff 	bl	-1928(0xffff878) # 1c002c30 <ShowErrMessage>
1c0033bc:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0033c0:	03bf918c 	ori	$r12,$r12,0xfe4
1c0033c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033c8:	50001400 	b	20(0x14) # 1c0033dc <Del_FR_Lib+0x50>
1c0033cc:	03400000 	andi	$r0,$r0,0x0
1c0033d0:	03400000 	andi	$r0,$r0,0x0
1c0033d4:	03400000 	andi	$r0,$r0,0x0
1c0033d8:	03400000 	andi	$r0,$r0,0x0
1c0033dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0033e4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0033e8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0033cc <Del_FR_Lib+0x40>
1c0033ec:	03400000 	andi	$r0,$r0,0x0
1c0033f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0033f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0033f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033fc:	4c000020 	jirl	$r0,$r1,0

1c003400 <SG90_GetAngle>:
SG90_GetAngle():
1c003400:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003404:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003408:	29806076 	st.w	$r22,$r3,24(0x18)
1c00340c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003410:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003414:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003418:	57e9c7ff 	bl	-5692(0xfffe9c4) # 1c001ddc <pwm_steering_engine_set>
1c00341c:	03400000 	andi	$r0,$r0,0x0
1c003420:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003424:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003428:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00342c:	4c000020 	jirl	$r0,$r1,0

1c003430 <SG90_Init>:
SG90_Init():
1c003430:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003434:	29803061 	st.w	$r1,$r3,12(0xc)
1c003438:	29802076 	st.w	$r22,$r3,8(0x8)
1c00343c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003440:	00150004 	move	$r4,$r0
1c003444:	57ffbfff 	bl	-68(0xfffffbc) # 1c003400 <SG90_GetAngle>
1c003448:	03400000 	andi	$r0,$r0,0x0
1c00344c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003450:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003454:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003458:	4c000020 	jirl	$r0,$r1,0

1c00345c <SG90_Open>:
SG90_Open():
1c00345c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003460:	29803061 	st.w	$r1,$r3,12(0xc)
1c003464:	29802076 	st.w	$r22,$r3,8(0x8)
1c003468:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00346c:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c003470:	57ff93ff 	bl	-112(0xfffff90) # 1c003400 <SG90_GetAngle>
1c003474:	03400000 	andi	$r0,$r0,0x0
1c003478:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00347c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003480:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003484:	4c000020 	jirl	$r0,$r1,0

1c003488 <SG90_Close>:
SG90_Close():
1c003488:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00348c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003490:	29802076 	st.w	$r22,$r3,8(0x8)
1c003494:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003498:	00150004 	move	$r4,$r0
1c00349c:	57ff67ff 	bl	-156(0xfffff64) # 1c003400 <SG90_GetAngle>
1c0034a0:	03400000 	andi	$r0,$r0,0x0
1c0034a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0034a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0034ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0034b0:	4c000020 	jirl	$r0,$r1,0

1c0034b4 <hw_uart_init>:
hw_uart_init():
1c0034b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0034bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034c4:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0034c8:	02ada18c 	addi.w	$r12,$r12,-1176(0xb68)
1c0034cc:	2880018e 	ld.w	$r14,$r12,0
1c0034d0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0034d4:	002135cc 	div.wu	$r12,$r14,$r13
1c0034d8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0034e0 <hw_uart_init+0x2c>
1c0034dc:	002a0007 	break	0x7
1c0034e0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0034e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034e8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0034ec:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c0034f0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0034f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034f8:	0044a18d 	srli.w	$r13,$r12,0x8
1c0034fc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003500:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003504:	2900058d 	st.b	$r13,$r12,1(0x1)
1c003508:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00350c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003510:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003514:	2900018d 	st.b	$r13,$r12,0
1c003518:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00351c:	02bf180d 	addi.w	$r13,$r0,-58(0xfc6)
1c003520:	2900098d 	st.b	$r13,$r12,2(0x2)
1c003524:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00352c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003530:	03400000 	andi	$r0,$r0,0x0
1c003534:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003538:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00353c:	4c000020 	jirl	$r0,$r1,0

1c003540 <uart_write>:
uart_write():
1c003540:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003544:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003548:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00354c:	0015008c 	move	$r12,$r4
1c003550:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003554:	03400000 	andi	$r0,$r0,0x0
1c003558:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00355c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c003560:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003564:	0340818c 	andi	$r12,$r12,0x20
1c003568:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c003558 <uart_write+0x18>
1c00356c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c003570:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003574:	2900018d 	st.b	$r13,$r12,0
1c003578:	03400000 	andi	$r0,$r0,0x0
1c00357c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003580:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003584:	4c000020 	jirl	$r0,$r1,0

1c003588 <uart_set_rx_th>:
uart_set_rx_th():
1c003588:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00358c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003590:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003594:	0015008c 	move	$r12,$r4
1c003598:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00359c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0035a0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0035a4:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0035b0 <uart_set_rx_th+0x28>
1c0035a8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0035ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0035b0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0035b4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0035b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035bc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0035c0:	0340fdad 	andi	$r13,$r13,0x3f
1c0035c4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0035c8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0035cc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0035d0:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0035d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0035d8:	00005d8d 	ext.w.b	$r13,$r12
1c0035dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0035e0:	0040998c 	slli.w	$r12,$r12,0x6
1c0035e4:	00005d8c 	ext.w.b	$r12,$r12
1c0035e8:	001531ac 	or	$r12,$r13,$r12
1c0035ec:	00005d8d 	ext.w.b	$r13,$r12
1c0035f0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0035f4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0035f8:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0035fc:	03400000 	andi	$r0,$r0,0x0
1c003600:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003604:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003608:	4c000020 	jirl	$r0,$r1,0

1c00360c <clkey>:
clkey():
1c00360c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003610:	29803061 	st.w	$r1,$r3,12(0xc)
1c003614:	29802076 	st.w	$r22,$r3,8(0x8)
1c003618:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00361c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003620:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003624:	57e32bff 	bl	-7384(0xfffe328) # 1c00194c <gpio_write>
1c003628:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00362c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003630:	57e31fff 	bl	-7396(0xfffe31c) # 1c00194c <gpio_write>
1c003634:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003638:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00363c:	57e313ff 	bl	-7408(0xfffe310) # 1c00194c <gpio_write>
1c003640:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003644:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003648:	57e307ff 	bl	-7420(0xfffe304) # 1c00194c <gpio_write>
1c00364c:	03400000 	andi	$r0,$r0,0x0
1c003650:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003654:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003658:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00365c:	4c000020 	jirl	$r0,$r1,0

1c003660 <MatrixKey>:
MatrixKey():
1c003660:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c003664:	29827061 	st.w	$r1,$r3,156(0x9c)
1c003668:	29826076 	st.w	$r22,$r3,152(0x98)
1c00366c:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c003670:	57ff9fff 	bl	-100(0xfffff9c) # 1c00360c <clkey>
1c003674:	1400008c 	lu12i.w	$r12,4(0x4)
1c003678:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00367c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003680:	50001400 	b	20(0x14) # 1c003694 <MatrixKey+0x34>
1c003684:	03400000 	andi	$r0,$r0,0x0
1c003688:	03400000 	andi	$r0,$r0,0x0
1c00368c:	03400000 	andi	$r0,$r0,0x0
1c003690:	03400000 	andi	$r0,$r0,0x0
1c003694:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003698:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00369c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0036a0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003684 <MatrixKey+0x24>
1c0036a4:	00150005 	move	$r5,$r0
1c0036a8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0036ac:	57e2a3ff 	bl	-7520(0xfffe2a0) # 1c00194c <gpio_write>
1c0036b0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0036b4:	57e393ff 	bl	-7280(0xfffe390) # 1c001a44 <gpio_read>
1c0036b8:	0015008c 	move	$r12,$r4
1c0036bc:	44008180 	bnez	$r12,128(0x80) # 1c00373c <MatrixKey+0xdc>
1c0036c0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0036c4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0036c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036cc:	50001400 	b	20(0x14) # 1c0036e0 <MatrixKey+0x80>
1c0036d0:	03400000 	andi	$r0,$r0,0x0
1c0036d4:	03400000 	andi	$r0,$r0,0x0
1c0036d8:	03400000 	andi	$r0,$r0,0x0
1c0036dc:	03400000 	andi	$r0,$r0,0x0
1c0036e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036e8:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0036ec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036d0 <MatrixKey+0x70>
1c0036f0:	03400000 	andi	$r0,$r0,0x0
1c0036f4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0036f8:	57e34fff 	bl	-7348(0xfffe34c) # 1c001a44 <gpio_read>
1c0036fc:	0015008c 	move	$r12,$r4
1c003700:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0036f4 <MatrixKey+0x94>
1c003704:	1400008c 	lu12i.w	$r12,4(0x4)
1c003708:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00370c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003710:	50001400 	b	20(0x14) # 1c003724 <MatrixKey+0xc4>
1c003714:	03400000 	andi	$r0,$r0,0x0
1c003718:	03400000 	andi	$r0,$r0,0x0
1c00371c:	03400000 	andi	$r0,$r0,0x0
1c003720:	03400000 	andi	$r0,$r0,0x0
1c003724:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003728:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00372c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c003730:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003714 <MatrixKey+0xb4>
1c003734:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003738:	50086c00 	b	2156(0x86c) # 1c003fa4 <MatrixKey+0x944>
1c00373c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003740:	57e307ff 	bl	-7420(0xfffe304) # 1c001a44 <gpio_read>
1c003744:	0015008c 	move	$r12,$r4
1c003748:	44008180 	bnez	$r12,128(0x80) # 1c0037c8 <MatrixKey+0x168>
1c00374c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003750:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003754:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003758:	50001400 	b	20(0x14) # 1c00376c <MatrixKey+0x10c>
1c00375c:	03400000 	andi	$r0,$r0,0x0
1c003760:	03400000 	andi	$r0,$r0,0x0
1c003764:	03400000 	andi	$r0,$r0,0x0
1c003768:	03400000 	andi	$r0,$r0,0x0
1c00376c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c003770:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003774:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003778:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00375c <MatrixKey+0xfc>
1c00377c:	03400000 	andi	$r0,$r0,0x0
1c003780:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003784:	57e2c3ff 	bl	-7488(0xfffe2c0) # 1c001a44 <gpio_read>
1c003788:	0015008c 	move	$r12,$r4
1c00378c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003780 <MatrixKey+0x120>
1c003790:	1400008c 	lu12i.w	$r12,4(0x4)
1c003794:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003798:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00379c:	50001400 	b	20(0x14) # 1c0037b0 <MatrixKey+0x150>
1c0037a0:	03400000 	andi	$r0,$r0,0x0
1c0037a4:	03400000 	andi	$r0,$r0,0x0
1c0037a8:	03400000 	andi	$r0,$r0,0x0
1c0037ac:	03400000 	andi	$r0,$r0,0x0
1c0037b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037b8:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0037bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037a0 <MatrixKey+0x140>
1c0037c0:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0037c4:	5007e000 	b	2016(0x7e0) # 1c003fa4 <MatrixKey+0x944>
1c0037c8:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0037cc:	57e27bff 	bl	-7560(0xfffe278) # 1c001a44 <gpio_read>
1c0037d0:	0015008c 	move	$r12,$r4
1c0037d4:	44008180 	bnez	$r12,128(0x80) # 1c003854 <MatrixKey+0x1f4>
1c0037d8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0037dc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0037e0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0037e4:	50001400 	b	20(0x14) # 1c0037f8 <MatrixKey+0x198>
1c0037e8:	03400000 	andi	$r0,$r0,0x0
1c0037ec:	03400000 	andi	$r0,$r0,0x0
1c0037f0:	03400000 	andi	$r0,$r0,0x0
1c0037f4:	03400000 	andi	$r0,$r0,0x0
1c0037f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0037fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003800:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003804:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037e8 <MatrixKey+0x188>
1c003808:	03400000 	andi	$r0,$r0,0x0
1c00380c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003810:	57e237ff 	bl	-7628(0xfffe234) # 1c001a44 <gpio_read>
1c003814:	0015008c 	move	$r12,$r4
1c003818:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00380c <MatrixKey+0x1ac>
1c00381c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003820:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003824:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003828:	50001400 	b	20(0x14) # 1c00383c <MatrixKey+0x1dc>
1c00382c:	03400000 	andi	$r0,$r0,0x0
1c003830:	03400000 	andi	$r0,$r0,0x0
1c003834:	03400000 	andi	$r0,$r0,0x0
1c003838:	03400000 	andi	$r0,$r0,0x0
1c00383c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003840:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003844:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003848:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00382c <MatrixKey+0x1cc>
1c00384c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c003850:	50075400 	b	1876(0x754) # 1c003fa4 <MatrixKey+0x944>
1c003854:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003858:	57e1efff 	bl	-7700(0xfffe1ec) # 1c001a44 <gpio_read>
1c00385c:	0015008c 	move	$r12,$r4
1c003860:	44008180 	bnez	$r12,128(0x80) # 1c0038e0 <MatrixKey+0x280>
1c003864:	1400008c 	lu12i.w	$r12,4(0x4)
1c003868:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00386c:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c003870:	50001400 	b	20(0x14) # 1c003884 <MatrixKey+0x224>
1c003874:	03400000 	andi	$r0,$r0,0x0
1c003878:	03400000 	andi	$r0,$r0,0x0
1c00387c:	03400000 	andi	$r0,$r0,0x0
1c003880:	03400000 	andi	$r0,$r0,0x0
1c003884:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c003888:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00388c:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c003890:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003874 <MatrixKey+0x214>
1c003894:	03400000 	andi	$r0,$r0,0x0
1c003898:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00389c:	57e1abff 	bl	-7768(0xfffe1a8) # 1c001a44 <gpio_read>
1c0038a0:	0015008c 	move	$r12,$r4
1c0038a4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003898 <MatrixKey+0x238>
1c0038a8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0038ac:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0038b0:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0038b4:	50001400 	b	20(0x14) # 1c0038c8 <MatrixKey+0x268>
1c0038b8:	03400000 	andi	$r0,$r0,0x0
1c0038bc:	03400000 	andi	$r0,$r0,0x0
1c0038c0:	03400000 	andi	$r0,$r0,0x0
1c0038c4:	03400000 	andi	$r0,$r0,0x0
1c0038c8:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c0038cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0038d0:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c0038d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038b8 <MatrixKey+0x258>
1c0038d8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0038dc:	5006c800 	b	1736(0x6c8) # 1c003fa4 <MatrixKey+0x944>
1c0038e0:	57fd2fff 	bl	-724(0xffffd2c) # 1c00360c <clkey>
1c0038e4:	00150005 	move	$r5,$r0
1c0038e8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0038ec:	57e063ff 	bl	-8096(0xfffe060) # 1c00194c <gpio_write>
1c0038f0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0038f4:	57e153ff 	bl	-7856(0xfffe150) # 1c001a44 <gpio_read>
1c0038f8:	0015008c 	move	$r12,$r4
1c0038fc:	44008180 	bnez	$r12,128(0x80) # 1c00397c <MatrixKey+0x31c>
1c003900:	1400008c 	lu12i.w	$r12,4(0x4)
1c003904:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003908:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c00390c:	50001400 	b	20(0x14) # 1c003920 <MatrixKey+0x2c0>
1c003910:	03400000 	andi	$r0,$r0,0x0
1c003914:	03400000 	andi	$r0,$r0,0x0
1c003918:	03400000 	andi	$r0,$r0,0x0
1c00391c:	03400000 	andi	$r0,$r0,0x0
1c003920:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c003924:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003928:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c00392c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003910 <MatrixKey+0x2b0>
1c003930:	03400000 	andi	$r0,$r0,0x0
1c003934:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003938:	57e10fff 	bl	-7924(0xfffe10c) # 1c001a44 <gpio_read>
1c00393c:	0015008c 	move	$r12,$r4
1c003940:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003934 <MatrixKey+0x2d4>
1c003944:	1400008c 	lu12i.w	$r12,4(0x4)
1c003948:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00394c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c003950:	50001400 	b	20(0x14) # 1c003964 <MatrixKey+0x304>
1c003954:	03400000 	andi	$r0,$r0,0x0
1c003958:	03400000 	andi	$r0,$r0,0x0
1c00395c:	03400000 	andi	$r0,$r0,0x0
1c003960:	03400000 	andi	$r0,$r0,0x0
1c003964:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c003968:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00396c:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c003970:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003954 <MatrixKey+0x2f4>
1c003974:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003978:	50062c00 	b	1580(0x62c) # 1c003fa4 <MatrixKey+0x944>
1c00397c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003980:	57e0c7ff 	bl	-7996(0xfffe0c4) # 1c001a44 <gpio_read>
1c003984:	0015008c 	move	$r12,$r4
1c003988:	44008180 	bnez	$r12,128(0x80) # 1c003a08 <MatrixKey+0x3a8>
1c00398c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003990:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003994:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c003998:	50001400 	b	20(0x14) # 1c0039ac <MatrixKey+0x34c>
1c00399c:	03400000 	andi	$r0,$r0,0x0
1c0039a0:	03400000 	andi	$r0,$r0,0x0
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	03400000 	andi	$r0,$r0,0x0
1c0039ac:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c0039b0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039b4:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c0039b8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00399c <MatrixKey+0x33c>
1c0039bc:	03400000 	andi	$r0,$r0,0x0
1c0039c0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0039c4:	57e083ff 	bl	-8064(0xfffe080) # 1c001a44 <gpio_read>
1c0039c8:	0015008c 	move	$r12,$r4
1c0039cc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0039c0 <MatrixKey+0x360>
1c0039d0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0039d4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0039d8:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c0039dc:	50001400 	b	20(0x14) # 1c0039f0 <MatrixKey+0x390>
1c0039e0:	03400000 	andi	$r0,$r0,0x0
1c0039e4:	03400000 	andi	$r0,$r0,0x0
1c0039e8:	03400000 	andi	$r0,$r0,0x0
1c0039ec:	03400000 	andi	$r0,$r0,0x0
1c0039f0:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c0039f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039f8:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c0039fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0039e0 <MatrixKey+0x380>
1c003a00:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003a04:	5005a000 	b	1440(0x5a0) # 1c003fa4 <MatrixKey+0x944>
1c003a08:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003a0c:	57e03bff 	bl	-8136(0xfffe038) # 1c001a44 <gpio_read>
1c003a10:	0015008c 	move	$r12,$r4
1c003a14:	44008180 	bnez	$r12,128(0x80) # 1c003a94 <MatrixKey+0x434>
1c003a18:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a1c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a20:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c003a24:	50001400 	b	20(0x14) # 1c003a38 <MatrixKey+0x3d8>
1c003a28:	03400000 	andi	$r0,$r0,0x0
1c003a2c:	03400000 	andi	$r0,$r0,0x0
1c003a30:	03400000 	andi	$r0,$r0,0x0
1c003a34:	03400000 	andi	$r0,$r0,0x0
1c003a38:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c003a3c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a40:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c003a44:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a28 <MatrixKey+0x3c8>
1c003a48:	03400000 	andi	$r0,$r0,0x0
1c003a4c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003a50:	57dff7ff 	bl	-8204(0xfffdff4) # 1c001a44 <gpio_read>
1c003a54:	0015008c 	move	$r12,$r4
1c003a58:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003a4c <MatrixKey+0x3ec>
1c003a5c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a60:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a64:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c003a68:	50001400 	b	20(0x14) # 1c003a7c <MatrixKey+0x41c>
1c003a6c:	03400000 	andi	$r0,$r0,0x0
1c003a70:	03400000 	andi	$r0,$r0,0x0
1c003a74:	03400000 	andi	$r0,$r0,0x0
1c003a78:	03400000 	andi	$r0,$r0,0x0
1c003a7c:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c003a80:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a84:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c003a88:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a6c <MatrixKey+0x40c>
1c003a8c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003a90:	50051400 	b	1300(0x514) # 1c003fa4 <MatrixKey+0x944>
1c003a94:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003a98:	57dfafff 	bl	-8276(0xfffdfac) # 1c001a44 <gpio_read>
1c003a9c:	0015008c 	move	$r12,$r4
1c003aa0:	44008180 	bnez	$r12,128(0x80) # 1c003b20 <MatrixKey+0x4c0>
1c003aa4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003aa8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003aac:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c003ab0:	50001400 	b	20(0x14) # 1c003ac4 <MatrixKey+0x464>
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	03400000 	andi	$r0,$r0,0x0
1c003abc:	03400000 	andi	$r0,$r0,0x0
1c003ac0:	03400000 	andi	$r0,$r0,0x0
1c003ac4:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c003ac8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003acc:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c003ad0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003ab4 <MatrixKey+0x454>
1c003ad4:	03400000 	andi	$r0,$r0,0x0
1c003ad8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003adc:	57df6bff 	bl	-8344(0xfffdf68) # 1c001a44 <gpio_read>
1c003ae0:	0015008c 	move	$r12,$r4
1c003ae4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003ad8 <MatrixKey+0x478>
1c003ae8:	1400008c 	lu12i.w	$r12,4(0x4)
1c003aec:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003af0:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c003af4:	50001400 	b	20(0x14) # 1c003b08 <MatrixKey+0x4a8>
1c003af8:	03400000 	andi	$r0,$r0,0x0
1c003afc:	03400000 	andi	$r0,$r0,0x0
1c003b00:	03400000 	andi	$r0,$r0,0x0
1c003b04:	03400000 	andi	$r0,$r0,0x0
1c003b08:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c003b0c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b10:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c003b14:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003af8 <MatrixKey+0x498>
1c003b18:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003b1c:	50048800 	b	1160(0x488) # 1c003fa4 <MatrixKey+0x944>
1c003b20:	57faefff 	bl	-1300(0xffffaec) # 1c00360c <clkey>
1c003b24:	00150005 	move	$r5,$r0
1c003b28:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003b2c:	57de23ff 	bl	-8672(0xfffde20) # 1c00194c <gpio_write>
1c003b30:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003b34:	57df13ff 	bl	-8432(0xfffdf10) # 1c001a44 <gpio_read>
1c003b38:	0015008c 	move	$r12,$r4
1c003b3c:	44008180 	bnez	$r12,128(0x80) # 1c003bbc <MatrixKey+0x55c>
1c003b40:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b44:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b48:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c003b4c:	50001400 	b	20(0x14) # 1c003b60 <MatrixKey+0x500>
1c003b50:	03400000 	andi	$r0,$r0,0x0
1c003b54:	03400000 	andi	$r0,$r0,0x0
1c003b58:	03400000 	andi	$r0,$r0,0x0
1c003b5c:	03400000 	andi	$r0,$r0,0x0
1c003b60:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c003b64:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b68:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c003b6c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b50 <MatrixKey+0x4f0>
1c003b70:	03400000 	andi	$r0,$r0,0x0
1c003b74:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003b78:	57decfff 	bl	-8500(0xfffdecc) # 1c001a44 <gpio_read>
1c003b7c:	0015008c 	move	$r12,$r4
1c003b80:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003b74 <MatrixKey+0x514>
1c003b84:	1400008c 	lu12i.w	$r12,4(0x4)
1c003b88:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003b8c:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c003b90:	50001400 	b	20(0x14) # 1c003ba4 <MatrixKey+0x544>
1c003b94:	03400000 	andi	$r0,$r0,0x0
1c003b98:	03400000 	andi	$r0,$r0,0x0
1c003b9c:	03400000 	andi	$r0,$r0,0x0
1c003ba0:	03400000 	andi	$r0,$r0,0x0
1c003ba4:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c003ba8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bac:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c003bb0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b94 <MatrixKey+0x534>
1c003bb4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003bb8:	5003ec00 	b	1004(0x3ec) # 1c003fa4 <MatrixKey+0x944>
1c003bbc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003bc0:	57de87ff 	bl	-8572(0xfffde84) # 1c001a44 <gpio_read>
1c003bc4:	0015008c 	move	$r12,$r4
1c003bc8:	44008180 	bnez	$r12,128(0x80) # 1c003c48 <MatrixKey+0x5e8>
1c003bcc:	1400008c 	lu12i.w	$r12,4(0x4)
1c003bd0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003bd4:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c003bd8:	50001400 	b	20(0x14) # 1c003bec <MatrixKey+0x58c>
1c003bdc:	03400000 	andi	$r0,$r0,0x0
1c003be0:	03400000 	andi	$r0,$r0,0x0
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	03400000 	andi	$r0,$r0,0x0
1c003bec:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c003bf0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003bf4:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c003bf8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003bdc <MatrixKey+0x57c>
1c003bfc:	03400000 	andi	$r0,$r0,0x0
1c003c00:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003c04:	57de43ff 	bl	-8640(0xfffde40) # 1c001a44 <gpio_read>
1c003c08:	0015008c 	move	$r12,$r4
1c003c0c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003c00 <MatrixKey+0x5a0>
1c003c10:	1400008c 	lu12i.w	$r12,4(0x4)
1c003c14:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c18:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c003c1c:	50001400 	b	20(0x14) # 1c003c30 <MatrixKey+0x5d0>
1c003c20:	03400000 	andi	$r0,$r0,0x0
1c003c24:	03400000 	andi	$r0,$r0,0x0
1c003c28:	03400000 	andi	$r0,$r0,0x0
1c003c2c:	03400000 	andi	$r0,$r0,0x0
1c003c30:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c003c34:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c38:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c003c3c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003c20 <MatrixKey+0x5c0>
1c003c40:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c003c44:	50036000 	b	864(0x360) # 1c003fa4 <MatrixKey+0x944>
1c003c48:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003c4c:	57ddfbff 	bl	-8712(0xfffddf8) # 1c001a44 <gpio_read>
1c003c50:	0015008c 	move	$r12,$r4
1c003c54:	44008180 	bnez	$r12,128(0x80) # 1c003cd4 <MatrixKey+0x674>
1c003c58:	1400008c 	lu12i.w	$r12,4(0x4)
1c003c5c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003c60:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c003c64:	50001400 	b	20(0x14) # 1c003c78 <MatrixKey+0x618>
1c003c68:	03400000 	andi	$r0,$r0,0x0
1c003c6c:	03400000 	andi	$r0,$r0,0x0
1c003c70:	03400000 	andi	$r0,$r0,0x0
1c003c74:	03400000 	andi	$r0,$r0,0x0
1c003c78:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c003c7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003c80:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c003c84:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003c68 <MatrixKey+0x608>
1c003c88:	03400000 	andi	$r0,$r0,0x0
1c003c8c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003c90:	57ddb7ff 	bl	-8780(0xfffddb4) # 1c001a44 <gpio_read>
1c003c94:	0015008c 	move	$r12,$r4
1c003c98:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003c8c <MatrixKey+0x62c>
1c003c9c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ca0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ca4:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c003ca8:	50001400 	b	20(0x14) # 1c003cbc <MatrixKey+0x65c>
1c003cac:	03400000 	andi	$r0,$r0,0x0
1c003cb0:	03400000 	andi	$r0,$r0,0x0
1c003cb4:	03400000 	andi	$r0,$r0,0x0
1c003cb8:	03400000 	andi	$r0,$r0,0x0
1c003cbc:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c003cc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003cc4:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c003cc8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003cac <MatrixKey+0x64c>
1c003ccc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cd0:	5002d400 	b	724(0x2d4) # 1c003fa4 <MatrixKey+0x944>
1c003cd4:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003cd8:	57dd6fff 	bl	-8852(0xfffdd6c) # 1c001a44 <gpio_read>
1c003cdc:	0015008c 	move	$r12,$r4
1c003ce0:	44008180 	bnez	$r12,128(0x80) # 1c003d60 <MatrixKey+0x700>
1c003ce4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ce8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003cec:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c003cf0:	50001400 	b	20(0x14) # 1c003d04 <MatrixKey+0x6a4>
1c003cf4:	03400000 	andi	$r0,$r0,0x0
1c003cf8:	03400000 	andi	$r0,$r0,0x0
1c003cfc:	03400000 	andi	$r0,$r0,0x0
1c003d00:	03400000 	andi	$r0,$r0,0x0
1c003d04:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c003d08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d0c:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c003d10:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003cf4 <MatrixKey+0x694>
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003d1c:	57dd2bff 	bl	-8920(0xfffdd28) # 1c001a44 <gpio_read>
1c003d20:	0015008c 	move	$r12,$r4
1c003d24:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003d18 <MatrixKey+0x6b8>
1c003d28:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d2c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d30:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c003d34:	50001400 	b	20(0x14) # 1c003d48 <MatrixKey+0x6e8>
1c003d38:	03400000 	andi	$r0,$r0,0x0
1c003d3c:	03400000 	andi	$r0,$r0,0x0
1c003d40:	03400000 	andi	$r0,$r0,0x0
1c003d44:	03400000 	andi	$r0,$r0,0x0
1c003d48:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c003d4c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d50:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c003d54:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003d38 <MatrixKey+0x6d8>
1c003d58:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003d5c:	50024800 	b	584(0x248) # 1c003fa4 <MatrixKey+0x944>
1c003d60:	57f8afff 	bl	-1876(0xffff8ac) # 1c00360c <clkey>
1c003d64:	00150005 	move	$r5,$r0
1c003d68:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003d6c:	57dbe3ff 	bl	-9248(0xfffdbe0) # 1c00194c <gpio_write>
1c003d70:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003d74:	57dcd3ff 	bl	-9008(0xfffdcd0) # 1c001a44 <gpio_read>
1c003d78:	0015008c 	move	$r12,$r4
1c003d7c:	44008180 	bnez	$r12,128(0x80) # 1c003dfc <MatrixKey+0x79c>
1c003d80:	1400008c 	lu12i.w	$r12,4(0x4)
1c003d84:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003d88:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c003d8c:	50001400 	b	20(0x14) # 1c003da0 <MatrixKey+0x740>
1c003d90:	03400000 	andi	$r0,$r0,0x0
1c003d94:	03400000 	andi	$r0,$r0,0x0
1c003d98:	03400000 	andi	$r0,$r0,0x0
1c003d9c:	03400000 	andi	$r0,$r0,0x0
1c003da0:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c003da4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003da8:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c003dac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003d90 <MatrixKey+0x730>
1c003db0:	03400000 	andi	$r0,$r0,0x0
1c003db4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003db8:	57dc8fff 	bl	-9076(0xfffdc8c) # 1c001a44 <gpio_read>
1c003dbc:	0015008c 	move	$r12,$r4
1c003dc0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003db4 <MatrixKey+0x754>
1c003dc4:	1400008c 	lu12i.w	$r12,4(0x4)
1c003dc8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003dcc:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c003dd0:	50001400 	b	20(0x14) # 1c003de4 <MatrixKey+0x784>
1c003dd4:	03400000 	andi	$r0,$r0,0x0
1c003dd8:	03400000 	andi	$r0,$r0,0x0
1c003ddc:	03400000 	andi	$r0,$r0,0x0
1c003de0:	03400000 	andi	$r0,$r0,0x0
1c003de4:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c003de8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003dec:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c003df0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003dd4 <MatrixKey+0x774>
1c003df4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c003df8:	5001ac00 	b	428(0x1ac) # 1c003fa4 <MatrixKey+0x944>
1c003dfc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003e00:	57dc47ff 	bl	-9148(0xfffdc44) # 1c001a44 <gpio_read>
1c003e04:	0015008c 	move	$r12,$r4
1c003e08:	44008180 	bnez	$r12,128(0x80) # 1c003e88 <MatrixKey+0x828>
1c003e0c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e10:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e14:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c003e18:	50001400 	b	20(0x14) # 1c003e2c <MatrixKey+0x7cc>
1c003e1c:	03400000 	andi	$r0,$r0,0x0
1c003e20:	03400000 	andi	$r0,$r0,0x0
1c003e24:	03400000 	andi	$r0,$r0,0x0
1c003e28:	03400000 	andi	$r0,$r0,0x0
1c003e2c:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c003e30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003e34:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c003e38:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003e1c <MatrixKey+0x7bc>
1c003e3c:	03400000 	andi	$r0,$r0,0x0
1c003e40:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003e44:	57dc03ff 	bl	-9216(0xfffdc00) # 1c001a44 <gpio_read>
1c003e48:	0015008c 	move	$r12,$r4
1c003e4c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003e40 <MatrixKey+0x7e0>
1c003e50:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e54:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003e58:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c003e5c:	50001400 	b	20(0x14) # 1c003e70 <MatrixKey+0x810>
1c003e60:	03400000 	andi	$r0,$r0,0x0
1c003e64:	03400000 	andi	$r0,$r0,0x0
1c003e68:	03400000 	andi	$r0,$r0,0x0
1c003e6c:	03400000 	andi	$r0,$r0,0x0
1c003e70:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c003e74:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003e78:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c003e7c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003e60 <MatrixKey+0x800>
1c003e80:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c003e84:	50012000 	b	288(0x120) # 1c003fa4 <MatrixKey+0x944>
1c003e88:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003e8c:	57dbbbff 	bl	-9288(0xfffdbb8) # 1c001a44 <gpio_read>
1c003e90:	0015008c 	move	$r12,$r4
1c003e94:	44008180 	bnez	$r12,128(0x80) # 1c003f14 <MatrixKey+0x8b4>
1c003e98:	1400008c 	lu12i.w	$r12,4(0x4)
1c003e9c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ea0:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c003ea4:	50001400 	b	20(0x14) # 1c003eb8 <MatrixKey+0x858>
1c003ea8:	03400000 	andi	$r0,$r0,0x0
1c003eac:	03400000 	andi	$r0,$r0,0x0
1c003eb0:	03400000 	andi	$r0,$r0,0x0
1c003eb4:	03400000 	andi	$r0,$r0,0x0
1c003eb8:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c003ebc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ec0:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c003ec4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003ea8 <MatrixKey+0x848>
1c003ec8:	03400000 	andi	$r0,$r0,0x0
1c003ecc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003ed0:	57db77ff 	bl	-9356(0xfffdb74) # 1c001a44 <gpio_read>
1c003ed4:	0015008c 	move	$r12,$r4
1c003ed8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003ecc <MatrixKey+0x86c>
1c003edc:	1400008c 	lu12i.w	$r12,4(0x4)
1c003ee0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ee4:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c003ee8:	50001400 	b	20(0x14) # 1c003efc <MatrixKey+0x89c>
1c003eec:	03400000 	andi	$r0,$r0,0x0
1c003ef0:	03400000 	andi	$r0,$r0,0x0
1c003ef4:	03400000 	andi	$r0,$r0,0x0
1c003ef8:	03400000 	andi	$r0,$r0,0x0
1c003efc:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c003f00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f04:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c003f08:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003eec <MatrixKey+0x88c>
1c003f0c:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c003f10:	50009400 	b	148(0x94) # 1c003fa4 <MatrixKey+0x944>
1c003f14:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003f18:	57db2fff 	bl	-9428(0xfffdb2c) # 1c001a44 <gpio_read>
1c003f1c:	0015008c 	move	$r12,$r4
1c003f20:	44008180 	bnez	$r12,128(0x80) # 1c003fa0 <MatrixKey+0x940>
1c003f24:	1400008c 	lu12i.w	$r12,4(0x4)
1c003f28:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003f2c:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c003f30:	50001400 	b	20(0x14) # 1c003f44 <MatrixKey+0x8e4>
1c003f34:	03400000 	andi	$r0,$r0,0x0
1c003f38:	03400000 	andi	$r0,$r0,0x0
1c003f3c:	03400000 	andi	$r0,$r0,0x0
1c003f40:	03400000 	andi	$r0,$r0,0x0
1c003f44:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c003f48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f4c:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c003f50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003f34 <MatrixKey+0x8d4>
1c003f54:	03400000 	andi	$r0,$r0,0x0
1c003f58:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003f5c:	57daebff 	bl	-9496(0xfffdae8) # 1c001a44 <gpio_read>
1c003f60:	0015008c 	move	$r12,$r4
1c003f64:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003f58 <MatrixKey+0x8f8>
1c003f68:	1400008c 	lu12i.w	$r12,4(0x4)
1c003f6c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003f70:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c003f74:	50001400 	b	20(0x14) # 1c003f88 <MatrixKey+0x928>
1c003f78:	03400000 	andi	$r0,$r0,0x0
1c003f7c:	03400000 	andi	$r0,$r0,0x0
1c003f80:	03400000 	andi	$r0,$r0,0x0
1c003f84:	03400000 	andi	$r0,$r0,0x0
1c003f88:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c003f8c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003f90:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c003f94:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003f78 <MatrixKey+0x918>
1c003f98:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003f9c:	50000800 	b	8(0x8) # 1c003fa4 <MatrixKey+0x944>
1c003fa0:	0015000c 	move	$r12,$r0
1c003fa4:	00150184 	move	$r4,$r12
1c003fa8:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c003fac:	28826076 	ld.w	$r22,$r3,152(0x98)
1c003fb0:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c003fb4:	4c000020 	jirl	$r0,$r1,0

1c003fb8 <Buzzer>:
Buzzer():
1c003fb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003fbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003fc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003fc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003fc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003fcc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003fd0:	57d97fff 	bl	-9860(0xfffd97c) # 1c00194c <gpio_write>
1c003fd4:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003fd8:	03bfc98c 	ori	$r12,$r12,0xff2
1c003fdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fe0:	50001400 	b	20(0x14) # 1c003ff4 <Buzzer+0x3c>
1c003fe4:	03400000 	andi	$r0,$r0,0x0
1c003fe8:	03400000 	andi	$r0,$r0,0x0
1c003fec:	03400000 	andi	$r0,$r0,0x0
1c003ff0:	03400000 	andi	$r0,$r0,0x0
1c003ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ff8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ffc:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004000:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003fe4 <Buzzer+0x2c>
1c004004:	00150005 	move	$r5,$r0
1c004008:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00400c:	57d943ff 	bl	-9920(0xfffd940) # 1c00194c <gpio_write>
1c004010:	03400000 	andi	$r0,$r0,0x0
1c004014:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004018:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00401c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004020:	4c000020 	jirl	$r0,$r1,0

1c004024 <Buzzer_one>:
Buzzer_one():
1c004024:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004028:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00402c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004030:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004034:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004038:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00403c:	57d913ff 	bl	-9968(0xfffd910) # 1c00194c <gpio_write>
1c004040:	1400088c 	lu12i.w	$r12,68(0x44)
1c004044:	0399798c 	ori	$r12,$r12,0x65e
1c004048:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00404c:	50001400 	b	20(0x14) # 1c004060 <Buzzer_one+0x3c>
1c004050:	03400000 	andi	$r0,$r0,0x0
1c004054:	03400000 	andi	$r0,$r0,0x0
1c004058:	03400000 	andi	$r0,$r0,0x0
1c00405c:	03400000 	andi	$r0,$r0,0x0
1c004060:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004064:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004068:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00406c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004050 <Buzzer_one+0x2c>
1c004070:	00150005 	move	$r5,$r0
1c004074:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004078:	57d8d7ff 	bl	-10028(0xfffd8d4) # 1c00194c <gpio_write>
1c00407c:	03400000 	andi	$r0,$r0,0x0
1c004080:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004084:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004088:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00408c:	4c000020 	jirl	$r0,$r1,0

1c004090 <TIM_GetITStatus>:
TIM_GetITStatus():
1c004090:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004094:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004098:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00409c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0040a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040a4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040a8:	2880018d 	ld.w	$r13,$r12,0
1c0040ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0040b0:	0014b1ac 	and	$r12,$r13,$r12
1c0040b4:	40001180 	beqz	$r12,16(0x10) # 1c0040c4 <TIM_GetITStatus+0x34>
1c0040b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0040bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040c0:	50000800 	b	8(0x8) # 1c0040c8 <TIM_GetITStatus+0x38>
1c0040c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040cc:	00150184 	move	$r4,$r12
1c0040d0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0040d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0040d8:	4c000020 	jirl	$r0,$r1,0

1c0040dc <TIM_ClearIT>:
TIM_ClearIT():
1c0040dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0040e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0040e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0040ec:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040f0:	2880018e 	ld.w	$r14,$r12,0
1c0040f4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040fc:	001535cd 	or	$r13,$r14,$r13
1c004100:	2980018d 	st.w	$r13,$r12,0
1c004104:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004108:	03800d8c 	ori	$r12,$r12,0x3
1c00410c:	2a00018c 	ld.bu	$r12,$r12,0
1c004110:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004114:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004118:	03800d8c 	ori	$r12,$r12,0x3
1c00411c:	038005ad 	ori	$r13,$r13,0x1
1c004120:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004124:	2900018d 	st.b	$r13,$r12,0
1c004128:	03400000 	andi	$r0,$r0,0x0
1c00412c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004130:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004134:	4c000020 	jirl	$r0,$r1,0

1c004138 <WriteCmd>:
WriteCmd():
1c004138:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00413c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004140:	29806076 	st.w	$r22,$r3,24(0x18)
1c004144:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004148:	0015008c 	move	$r12,$r4
1c00414c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004150:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004154:	57dad7ff 	bl	-9516(0xfffdad4) # 1c001c28 <soc_I2C_GenerateSTART>
1c004158:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c00415c:	57db57ff 	bl	-9388(0xfffdb54) # 1c001cb0 <soc_I2C_SendData>
1c004160:	57db9bff 	bl	-9320(0xfffdb98) # 1c001cf8 <soc_I2C_wait>
1c004164:	00150004 	move	$r4,$r0
1c004168:	57db4bff 	bl	-9400(0xfffdb48) # 1c001cb0 <soc_I2C_SendData>
1c00416c:	57db8fff 	bl	-9332(0xfffdb8c) # 1c001cf8 <soc_I2C_wait>
1c004170:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004174:	00150184 	move	$r4,$r12
1c004178:	57db3bff 	bl	-9416(0xfffdb38) # 1c001cb0 <soc_I2C_SendData>
1c00417c:	57db7fff 	bl	-9348(0xfffdb7c) # 1c001cf8 <soc_I2C_wait>
1c004180:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004184:	57daebff 	bl	-9496(0xfffdae8) # 1c001c6c <soc_I2C_GenerateSTOP>
1c004188:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00418c:	57d967ff 	bl	-9884(0xfffd964) # 1c001af0 <soc_I2C_delay>
1c004190:	03400000 	andi	$r0,$r0,0x0
1c004194:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004198:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00419c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041a0:	4c000020 	jirl	$r0,$r1,0

1c0041a4 <WriteDat>:
WriteDat():
1c0041a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0041ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0041b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041b4:	0015008c 	move	$r12,$r4
1c0041b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0041bc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0041c0:	57da6bff 	bl	-9624(0xfffda68) # 1c001c28 <soc_I2C_GenerateSTART>
1c0041c4:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0041c8:	57daebff 	bl	-9496(0xfffdae8) # 1c001cb0 <soc_I2C_SendData>
1c0041cc:	57db2fff 	bl	-9428(0xfffdb2c) # 1c001cf8 <soc_I2C_wait>
1c0041d0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c0041d4:	57dadfff 	bl	-9508(0xfffdadc) # 1c001cb0 <soc_I2C_SendData>
1c0041d8:	57db23ff 	bl	-9440(0xfffdb20) # 1c001cf8 <soc_I2C_wait>
1c0041dc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0041e0:	00150184 	move	$r4,$r12
1c0041e4:	57dacfff 	bl	-9524(0xfffdacc) # 1c001cb0 <soc_I2C_SendData>
1c0041e8:	57db13ff 	bl	-9456(0xfffdb10) # 1c001cf8 <soc_I2C_wait>
1c0041ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0041f0:	57da7fff 	bl	-9604(0xfffda7c) # 1c001c6c <soc_I2C_GenerateSTOP>
1c0041f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0041f8:	57d8fbff 	bl	-9992(0xfffd8f8) # 1c001af0 <soc_I2C_delay>
1c0041fc:	03400000 	andi	$r0,$r0,0x0
1c004200:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004204:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004208:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00420c:	4c000020 	jirl	$r0,$r1,0

1c004210 <OLED_Init>:
OLED_Init():
1c004210:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004214:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004218:	29806076 	st.w	$r22,$r3,24(0x18)
1c00421c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004220:	140016cc 	lu12i.w	$r12,182(0xb6)
1c004224:	0399418c 	ori	$r12,$r12,0x650
1c004228:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00422c:	50001400 	b	20(0x14) # 1c004240 <OLED_Init+0x30>
1c004230:	03400000 	andi	$r0,$r0,0x0
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	03400000 	andi	$r0,$r0,0x0
1c00423c:	03400000 	andi	$r0,$r0,0x0
1c004240:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004244:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004248:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00424c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004230 <OLED_Init+0x20>
1c004250:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c004254:	57fee7ff 	bl	-284(0xffffee4) # 1c004138 <WriteCmd>
1c004258:	02808004 	addi.w	$r4,$r0,32(0x20)
1c00425c:	57fedfff 	bl	-292(0xffffedc) # 1c004138 <WriteCmd>
1c004260:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004264:	57fed7ff 	bl	-300(0xffffed4) # 1c004138 <WriteCmd>
1c004268:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c00426c:	57fecfff 	bl	-308(0xffffecc) # 1c004138 <WriteCmd>
1c004270:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c004274:	57fec7ff 	bl	-316(0xffffec4) # 1c004138 <WriteCmd>
1c004278:	00150004 	move	$r4,$r0
1c00427c:	57febfff 	bl	-324(0xffffebc) # 1c004138 <WriteCmd>
1c004280:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004284:	57feb7ff 	bl	-332(0xffffeb4) # 1c004138 <WriteCmd>
1c004288:	02810004 	addi.w	$r4,$r0,64(0x40)
1c00428c:	57feafff 	bl	-340(0xffffeac) # 1c004138 <WriteCmd>
1c004290:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004294:	57fea7ff 	bl	-348(0xffffea4) # 1c004138 <WriteCmd>
1c004298:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c00429c:	57fe9fff 	bl	-356(0xffffe9c) # 1c004138 <WriteCmd>
1c0042a0:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0042a4:	57fe97ff 	bl	-364(0xffffe94) # 1c004138 <WriteCmd>
1c0042a8:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0042ac:	57fe8fff 	bl	-372(0xffffe8c) # 1c004138 <WriteCmd>
1c0042b0:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0042b4:	57fe87ff 	bl	-380(0xffffe84) # 1c004138 <WriteCmd>
1c0042b8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0042bc:	57fe7fff 	bl	-388(0xffffe7c) # 1c004138 <WriteCmd>
1c0042c0:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0042c4:	57fe77ff 	bl	-396(0xffffe74) # 1c004138 <WriteCmd>
1c0042c8:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0042cc:	57fe6fff 	bl	-404(0xffffe6c) # 1c004138 <WriteCmd>
1c0042d0:	00150004 	move	$r4,$r0
1c0042d4:	57fe67ff 	bl	-412(0xffffe64) # 1c004138 <WriteCmd>
1c0042d8:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c0042dc:	57fe5fff 	bl	-420(0xffffe5c) # 1c004138 <WriteCmd>
1c0042e0:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c0042e4:	57fe57ff 	bl	-428(0xffffe54) # 1c004138 <WriteCmd>
1c0042e8:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c0042ec:	57fe4fff 	bl	-436(0xffffe4c) # 1c004138 <WriteCmd>
1c0042f0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0042f4:	57fe47ff 	bl	-444(0xffffe44) # 1c004138 <WriteCmd>
1c0042f8:	02836804 	addi.w	$r4,$r0,218(0xda)
1c0042fc:	57fe3fff 	bl	-452(0xffffe3c) # 1c004138 <WriteCmd>
1c004300:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004304:	57fe37ff 	bl	-460(0xffffe34) # 1c004138 <WriteCmd>
1c004308:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c00430c:	57fe2fff 	bl	-468(0xffffe2c) # 1c004138 <WriteCmd>
1c004310:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004314:	57fe27ff 	bl	-476(0xffffe24) # 1c004138 <WriteCmd>
1c004318:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c00431c:	57fe1fff 	bl	-484(0xffffe1c) # 1c004138 <WriteCmd>
1c004320:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004324:	57fe17ff 	bl	-492(0xffffe14) # 1c004138 <WriteCmd>
1c004328:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c00432c:	57fe0fff 	bl	-500(0xffffe0c) # 1c004138 <WriteCmd>
1c004330:	03400000 	andi	$r0,$r0,0x0
1c004334:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004338:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00433c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004340:	4c000020 	jirl	$r0,$r1,0

1c004344 <OLED_SetPos>:
OLED_SetPos():
1c004344:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004348:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00434c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004350:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004354:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004358:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00435c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004360:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004364:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c004368:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00436c:	00150184 	move	$r4,$r12
1c004370:	57fdcbff 	bl	-568(0xffffdc8) # 1c004138 <WriteCmd>
1c004374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004378:	0044918c 	srli.w	$r12,$r12,0x4
1c00437c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004380:	03403d8c 	andi	$r12,$r12,0xf
1c004384:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004388:	0380418c 	ori	$r12,$r12,0x10
1c00438c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004390:	00150184 	move	$r4,$r12
1c004394:	57fda7ff 	bl	-604(0xffffda4) # 1c004138 <WriteCmd>
1c004398:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00439c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043a0:	0340398c 	andi	$r12,$r12,0xe
1c0043a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043a8:	0380058c 	ori	$r12,$r12,0x1
1c0043ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043b0:	00150184 	move	$r4,$r12
1c0043b4:	57fd87ff 	bl	-636(0xffffd84) # 1c004138 <WriteCmd>
1c0043b8:	03400000 	andi	$r0,$r0,0x0
1c0043bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0043c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0043c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0043c8:	4c000020 	jirl	$r0,$r1,0

1c0043cc <OLED_Fill>:
OLED_Fill():
1c0043cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0043d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0043d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0043d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0043dc:	0015008c 	move	$r12,$r4
1c0043e0:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0043e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0043e8:	50006400 	b	100(0x64) # 1c00444c <OLED_Fill+0x80>
1c0043ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043f4:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0043f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0043fc:	00150184 	move	$r4,$r12
1c004400:	57fd3bff 	bl	-712(0xffffd38) # 1c004138 <WriteCmd>
1c004404:	00150004 	move	$r4,$r0
1c004408:	57fd33ff 	bl	-720(0xffffd30) # 1c004138 <WriteCmd>
1c00440c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004410:	57fd2bff 	bl	-728(0xffffd28) # 1c004138 <WriteCmd>
1c004414:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004418:	50001c00 	b	28(0x1c) # 1c004434 <OLED_Fill+0x68>
1c00441c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004420:	00150184 	move	$r4,$r12
1c004424:	57fd83ff 	bl	-640(0xffffd80) # 1c0041a4 <WriteDat>
1c004428:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00442c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004430:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004434:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004438:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c00443c:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c00441c <OLED_Fill+0x50>
1c004440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004444:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004448:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00444c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004450:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004454:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c0043ec <OLED_Fill+0x20>
1c004458:	03400000 	andi	$r0,$r0,0x0
1c00445c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004460:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004464:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004468:	4c000020 	jirl	$r0,$r1,0

1c00446c <OLED_CLS>:
OLED_CLS():
1c00446c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004470:	29803061 	st.w	$r1,$r3,12(0xc)
1c004474:	29802076 	st.w	$r22,$r3,8(0x8)
1c004478:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00447c:	00150004 	move	$r4,$r0
1c004480:	57ff4fff 	bl	-180(0xfffff4c) # 1c0043cc <OLED_Fill>
1c004484:	03400000 	andi	$r0,$r0,0x0
1c004488:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00448c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004490:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004494:	4c000020 	jirl	$r0,$r1,0

1c004498 <OLED_ShowStr>:
OLED_ShowStr():
1c004498:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00449c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0044a0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0044a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0044a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0044ac:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0044b0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0044b4:	001500ec 	move	$r12,$r7
1c0044b8:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c0044bc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0044c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0044c4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0044c8:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0044cc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0044d0:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c004584 <OLED_ShowStr+0xec>
1c0044d4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0044d8:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c00469c <OLED_ShowStr+0x204>
1c0044dc:	5001d800 	b	472(0x1d8) # 1c0046b4 <OLED_ShowStr+0x21c>
1c0044e0:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0044e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0044e8:	001031ac 	add.w	$r12,$r13,$r12
1c0044ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0044f0:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0044f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0044f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0044fc:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c004500:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004514 <OLED_ShowStr+0x7c>
1c004504:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004508:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00450c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004510:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004514:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004518:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00451c:	57fe2bff 	bl	-472(0xffffe28) # 1c004344 <OLED_SetPos>
1c004520:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004524:	50003c00 	b	60(0x3c) # 1c004560 <OLED_ShowStr+0xc8>
1c004528:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c00452c:	02aa71ad 	addi.w	$r13,$r13,-1380(0xa9c)
1c004530:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c004534:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004538:	001c31cc 	mul.w	$r12,$r14,$r12
1c00453c:	001031ad 	add.w	$r13,$r13,$r12
1c004540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004544:	001031ac 	add.w	$r12,$r13,$r12
1c004548:	2a00018c 	ld.bu	$r12,$r12,0
1c00454c:	00150184 	move	$r4,$r12
1c004550:	57fc57ff 	bl	-940(0xffffc54) # 1c0041a4 <WriteDat>
1c004554:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004558:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00455c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004560:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004564:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004568:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004528 <OLED_ShowStr+0x90>
1c00456c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004570:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c004574:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004578:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00457c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004580:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004584:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004588:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00458c:	001031ac 	add.w	$r12,$r13,$r12
1c004590:	2a00018c 	ld.bu	$r12,$r12,0
1c004594:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c0044e0 <OLED_ShowStr+0x48>
1c004598:	50011c00 	b	284(0x11c) # 1c0046b4 <OLED_ShowStr+0x21c>
1c00459c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0045a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0045a4:	001031ac 	add.w	$r12,$r13,$r12
1c0045a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0045ac:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0045b0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0045b4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0045b8:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c0045bc:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0045d0 <OLED_ShowStr+0x138>
1c0045c0:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0045c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0045c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045cc:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0045d0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0045d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0045d8:	57fd6fff 	bl	-660(0xffffd6c) # 1c004344 <OLED_SetPos>
1c0045dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0045e0:	50003800 	b	56(0x38) # 1c004618 <OLED_ShowStr+0x180>
1c0045e4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0045e8:	0040918d 	slli.w	$r13,$r12,0x4
1c0045ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045f0:	001031ac 	add.w	$r12,$r13,$r12
1c0045f4:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0045f8:	02afe1ad 	addi.w	$r13,$r13,-1032(0xbf8)
1c0045fc:	001031ac 	add.w	$r12,$r13,$r12
1c004600:	2a00018c 	ld.bu	$r12,$r12,0
1c004604:	00150184 	move	$r4,$r12
1c004608:	57fb9fff 	bl	-1124(0xffffb9c) # 1c0041a4 <WriteDat>
1c00460c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004610:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004614:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004618:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00461c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004620:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0045e4 <OLED_ShowStr+0x14c>
1c004624:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004628:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00462c:	00150185 	move	$r5,$r12
1c004630:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004634:	57fd13ff 	bl	-752(0xffffd10) # 1c004344 <OLED_SetPos>
1c004638:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00463c:	50003c00 	b	60(0x3c) # 1c004678 <OLED_ShowStr+0x1e0>
1c004640:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004644:	0040918d 	slli.w	$r13,$r12,0x4
1c004648:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00464c:	001031ac 	add.w	$r12,$r13,$r12
1c004650:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004654:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004658:	02ae61ad 	addi.w	$r13,$r13,-1128(0xb98)
1c00465c:	001031ac 	add.w	$r12,$r13,$r12
1c004660:	2a00018c 	ld.bu	$r12,$r12,0
1c004664:	00150184 	move	$r4,$r12
1c004668:	57fb3fff 	bl	-1220(0xffffb3c) # 1c0041a4 <WriteDat>
1c00466c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004670:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004674:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004678:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00467c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004680:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004640 <OLED_ShowStr+0x1a8>
1c004684:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004688:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00468c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004690:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004694:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004698:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00469c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0046a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0046a4:	001031ac 	add.w	$r12,$r13,$r12
1c0046a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0046ac:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c00459c <OLED_ShowStr+0x104>
1c0046b0:	03400000 	andi	$r0,$r0,0x0
1c0046b4:	03400000 	andi	$r0,$r0,0x0
1c0046b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0046bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0046c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0046c4:	4c000020 	jirl	$r0,$r1,0

1c0046c8 <OLED_ShowCN>:
OLED_ShowCN():
1c0046c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0046cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0046d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0046d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0046d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0046dc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0046e0:	001500cc 	move	$r12,$r6
1c0046e4:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0046e8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0046ec:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0046f0:	0040958c 	slli.w	$r12,$r12,0x5
1c0046f4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0046f8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0046fc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004700:	57fc47ff 	bl	-956(0xffffc44) # 1c004344 <OLED_SetPos>
1c004704:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004708:	50003800 	b	56(0x38) # 1c004740 <OLED_ShowCN+0x78>
1c00470c:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004710:	02a491ad 	addi.w	$r13,$r13,-1756(0x924)
1c004714:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004718:	001031ac 	add.w	$r12,$r13,$r12
1c00471c:	2a00018c 	ld.bu	$r12,$r12,0
1c004720:	00150184 	move	$r4,$r12
1c004724:	57fa83ff 	bl	-1408(0xffffa80) # 1c0041a4 <WriteDat>
1c004728:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00472c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004730:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004734:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004738:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00473c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004740:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004744:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004748:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c00470c <OLED_ShowCN+0x44>
1c00474c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004750:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004754:	00150185 	move	$r5,$r12
1c004758:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00475c:	57fbebff 	bl	-1048(0xffffbe8) # 1c004344 <OLED_SetPos>
1c004760:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004764:	50003800 	b	56(0x38) # 1c00479c <OLED_ShowCN+0xd4>
1c004768:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c00476c:	02a321ad 	addi.w	$r13,$r13,-1848(0x8c8)
1c004770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004774:	001031ac 	add.w	$r12,$r13,$r12
1c004778:	2a00018c 	ld.bu	$r12,$r12,0
1c00477c:	00150184 	move	$r4,$r12
1c004780:	57fa27ff 	bl	-1500(0xffffa24) # 1c0041a4 <WriteDat>
1c004784:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004788:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00478c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004790:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004794:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004798:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00479c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0047a0:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0047a4:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c004768 <OLED_ShowCN+0xa0>
1c0047a8:	03400000 	andi	$r0,$r0,0x0
1c0047ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0047b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0047b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0047b8:	4c000020 	jirl	$r0,$r1,0

1c0047bc <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c0047bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0047c0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0047c4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0047c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0047cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0047d0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0047d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0047d8:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0047dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0047e0:	50004800 	b	72(0x48) # 1c004828 <OLED_ShowCN_STR+0x6c>
1c0047e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0047e8:	0040918d 	slli.w	$r13,$r12,0x4
1c0047ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0047f0:	001031ae 	add.w	$r14,$r13,$r12
1c0047f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0047f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0047fc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004800:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004804:	001031ac 	add.w	$r12,$r13,$r12
1c004808:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00480c:	00150186 	move	$r6,$r12
1c004810:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004814:	001501c4 	move	$r4,$r14
1c004818:	57feb3ff 	bl	-336(0xffffeb0) # 1c0046c8 <OLED_ShowCN>
1c00481c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004820:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004824:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004828:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00482c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004830:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c0047e4 <OLED_ShowCN_STR+0x28>
1c004834:	03400000 	andi	$r0,$r0,0x0
1c004838:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00483c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004840:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004844:	4c000020 	jirl	$r0,$r1,0

1c004848 <OLED_DrawBMP>:
OLED_DrawBMP():
1c004848:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c00484c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004850:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004854:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004858:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00485c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004860:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004864:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c004868:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c00486c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004870:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004874:	03401d8c 	andi	$r12,$r12,0x7
1c004878:	44001580 	bnez	$r12,20(0x14) # 1c00488c <OLED_DrawBMP+0x44>
1c00487c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004880:	00448d8c 	srli.w	$r12,$r12,0x3
1c004884:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004888:	50001400 	b	20(0x14) # 1c00489c <OLED_DrawBMP+0x54>
1c00488c:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004890:	00448d8c 	srli.w	$r12,$r12,0x3
1c004894:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004898:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00489c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0048a0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0048a4:	50006000 	b	96(0x60) # 1c004904 <OLED_DrawBMP+0xbc>
1c0048a8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0048ac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0048b0:	57fa97ff 	bl	-1388(0xffffa94) # 1c004344 <OLED_SetPos>
1c0048b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0048b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0048bc:	50003000 	b	48(0x30) # 1c0048ec <OLED_DrawBMP+0xa4>
1c0048c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048c4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0048c8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0048cc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0048d0:	001031ac 	add.w	$r12,$r13,$r12
1c0048d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0048d8:	00150184 	move	$r4,$r12
1c0048dc:	57f8cbff 	bl	-1848(0xffff8c8) # 1c0041a4 <WriteDat>
1c0048e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0048e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0048e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0048ec:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0048f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0048f4:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c0048c0 <OLED_DrawBMP+0x78>
1c0048f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0048fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004900:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004904:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c004908:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00490c:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c0048a8 <OLED_DrawBMP+0x60>
1c004910:	03400000 	andi	$r0,$r0,0x0
1c004914:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004918:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00491c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004920:	4c000020 	jirl	$r0,$r1,0

1c004924 <OLED_ShowChar>:
OLED_ShowChar():
1c004924:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004928:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00492c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004930:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004934:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004938:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00493c:	001500cc 	move	$r12,$r6
1c004940:	001500ed 	move	$r13,$r7
1c004944:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c004948:	001501ac 	move	$r12,$r13
1c00494c:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c004950:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004954:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004958:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00495c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004960:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004964:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004968:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c00496c:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004980 <OLED_ShowChar+0x5c>
1c004970:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004974:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004978:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00497c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004980:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c004984:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004988:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c004a44 <OLED_ShowChar+0x120>
1c00498c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004990:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004994:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c004344 <OLED_SetPos>
1c004998:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00499c:	50003800 	b	56(0x38) # 1c0049d4 <OLED_ShowChar+0xb0>
1c0049a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0049a4:	0040918d 	slli.w	$r13,$r12,0x4
1c0049a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049ac:	001031ac 	add.w	$r12,$r13,$r12
1c0049b0:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c0049b4:	02a0f1ad 	addi.w	$r13,$r13,-1988(0x83c)
1c0049b8:	001031ac 	add.w	$r12,$r13,$r12
1c0049bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0049c0:	00150184 	move	$r4,$r12
1c0049c4:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c0041a4 <WriteDat>
1c0049c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0049d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0049d8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0049dc:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0049a0 <OLED_ShowChar+0x7c>
1c0049e0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0049e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0049e8:	00150185 	move	$r5,$r12
1c0049ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0049f0:	57f957ff 	bl	-1708(0xffff954) # 1c004344 <OLED_SetPos>
1c0049f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0049f8:	50003c00 	b	60(0x3c) # 1c004a34 <OLED_ShowChar+0x110>
1c0049fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004a00:	0040918d 	slli.w	$r13,$r12,0x4
1c004a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a08:	001031ac 	add.w	$r12,$r13,$r12
1c004a0c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004a10:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004a14:	029f71ad 	addi.w	$r13,$r13,2012(0x7dc)
1c004a18:	001031ac 	add.w	$r12,$r13,$r12
1c004a1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004a20:	00150184 	move	$r4,$r12
1c004a24:	57f783ff 	bl	-2176(0xffff780) # 1c0041a4 <WriteDat>
1c004a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a38:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004a3c:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c0049fc <OLED_ShowChar+0xd8>
1c004a40:	50005c00 	b	92(0x5c) # 1c004a9c <OLED_ShowChar+0x178>
1c004a44:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004a48:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004a4c:	57f8fbff 	bl	-1800(0xffff8f8) # 1c004344 <OLED_SetPos>
1c004a50:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a54:	50003c00 	b	60(0x3c) # 1c004a90 <OLED_ShowChar+0x16c>
1c004a58:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004a5c:	0295b1ad 	addi.w	$r13,$r13,1388(0x56c)
1c004a60:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c004a64:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004a68:	001c31cc 	mul.w	$r12,$r14,$r12
1c004a6c:	001031ad 	add.w	$r13,$r13,$r12
1c004a70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a74:	001031ac 	add.w	$r12,$r13,$r12
1c004a78:	2a00018c 	ld.bu	$r12,$r12,0
1c004a7c:	00150184 	move	$r4,$r12
1c004a80:	57f727ff 	bl	-2268(0xffff724) # 1c0041a4 <WriteDat>
1c004a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a94:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004a98:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004a58 <OLED_ShowChar+0x134>
1c004a9c:	03400000 	andi	$r0,$r0,0x0
1c004aa0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004aa4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004aa8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004aac:	4c000020 	jirl	$r0,$r1,0

1c004ab0 <oled_pow>:
oled_pow():
1c004ab0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004ab4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004ab8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004abc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004ac0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004ac4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ac8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004acc:	50001400 	b	20(0x14) # 1c004ae0 <oled_pow+0x30>
1c004ad0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ad4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004ad8:	001c31ac 	mul.w	$r12,$r13,$r12
1c004adc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ae0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004ae4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004ae8:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c004aec:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004ad0 <oled_pow+0x20>
1c004af0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004af4:	00150184 	move	$r4,$r12
1c004af8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004afc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004b00:	4c000020 	jirl	$r0,$r1,0

1c004b04 <OLED_ShowNum>:
OLED_ShowNum():
1c004b04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b08:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b0c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004b18:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004b1c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004b20:	001500ec 	move	$r12,$r7
1c004b24:	0015010d 	move	$r13,$r8
1c004b28:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c004b2c:	001501ac 	move	$r12,$r13
1c004b30:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c004b34:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004b38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b3c:	50010400 	b	260(0x104) # 1c004c40 <OLED_ShowNum+0x13c>
1c004b40:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c004b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b48:	001131ac 	sub.w	$r12,$r13,$r12
1c004b4c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004b50:	00150185 	move	$r5,$r12
1c004b54:	02802804 	addi.w	$r4,$r0,10(0xa)
1c004b58:	57ff5bff 	bl	-168(0xfffff58) # 1c004ab0 <oled_pow>
1c004b5c:	0015008d 	move	$r13,$r4
1c004b60:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004b64:	0021358e 	div.wu	$r14,$r12,$r13
1c004b68:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004b70 <OLED_ShowNum+0x6c>
1c004b6c:	002a0007 	break	0x7
1c004b70:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c004b74:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c004b78:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004b80 <OLED_ShowNum+0x7c>
1c004b7c:	002a0007 	break	0x7
1c004b80:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004b88:	44006580 	bnez	$r12,100(0x64) # 1c004bec <OLED_ShowNum+0xe8>
1c004b8c:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c004b90:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004b94:	0015018d 	move	$r13,$r12
1c004b98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b9c:	6c00518d 	bgeu	$r12,$r13,80(0x50) # 1c004bec <OLED_ShowNum+0xe8>
1c004ba0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004ba4:	44004180 	bnez	$r12,64(0x40) # 1c004be4 <OLED_ShowNum+0xe0>
1c004ba8:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c004bac:	0044858c 	srli.w	$r12,$r12,0x1
1c004bb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bb4:	0015018d 	move	$r13,$r12
1c004bb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bbc:	001c31ad 	mul.w	$r13,$r13,$r12
1c004bc0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004bc4:	001031ac 	add.w	$r12,$r13,$r12
1c004bc8:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c004bcc:	001501a7 	move	$r7,$r13
1c004bd0:	02808006 	addi.w	$r6,$r0,32(0x20)
1c004bd4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004bd8:	00150184 	move	$r4,$r12
1c004bdc:	57fd4bff 	bl	-696(0xffffd48) # 1c004924 <OLED_ShowChar>
1c004be0:	50005400 	b	84(0x54) # 1c004c34 <OLED_ShowNum+0x130>
1c004be4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004be8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004bec:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c004bf0:	0044858c 	srli.w	$r12,$r12,0x1
1c004bf4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bf8:	0015018d 	move	$r13,$r12
1c004bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c00:	001c31ad 	mul.w	$r13,$r13,$r12
1c004c04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004c08:	001031ad 	add.w	$r13,$r13,$r12
1c004c0c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004c10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c14:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004c18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c1c:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c004c20:	001501c7 	move	$r7,$r14
1c004c24:	00150186 	move	$r6,$r12
1c004c28:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004c2c:	001501a4 	move	$r4,$r13
1c004c30:	57fcf7ff 	bl	-780(0xffffcf4) # 1c004924 <OLED_ShowChar>
1c004c34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c40:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c004c44:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c48:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c004b40 <OLED_ShowNum+0x3c>
1c004c4c:	03400000 	andi	$r0,$r0,0x0
1c004c50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c5c:	4c000020 	jirl	$r0,$r1,0

1c004c60 <my_GPIO_Init>:
my_GPIO_Init():
1c004c60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c64:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c68:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c74:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004c78:	57cbdfff 	bl	-13348(0xfffcbdc) # 1c001854 <gpio_init>
1c004c7c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c80:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004c84:	57cbd3ff 	bl	-13360(0xfffcbd0) # 1c001854 <gpio_init>
1c004c88:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c8c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004c90:	57cbc7ff 	bl	-13372(0xfffcbc4) # 1c001854 <gpio_init>
1c004c94:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004c98:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c004c9c:	57cbbbff 	bl	-13384(0xfffcbb8) # 1c001854 <gpio_init>
1c004ca0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004ca4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004ca8:	57cbafff 	bl	-13396(0xfffcbac) # 1c001854 <gpio_init>
1c004cac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cb0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004cb4:	57cba3ff 	bl	-13408(0xfffcba0) # 1c001854 <gpio_init>
1c004cb8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cbc:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004cc0:	57cb97ff 	bl	-13420(0xfffcb94) # 1c001854 <gpio_init>
1c004cc4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cc8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c004ccc:	57cb8bff 	bl	-13432(0xfffcb88) # 1c001854 <gpio_init>
1c004cd0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cd4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004cd8:	57cb7fff 	bl	-13444(0xfffcb7c) # 1c001854 <gpio_init>
1c004cdc:	00150005 	move	$r5,$r0
1c004ce0:	02809804 	addi.w	$r4,$r0,38(0x26)
1c004ce4:	57cb73ff 	bl	-13456(0xfffcb70) # 1c001854 <gpio_init>
1c004ce8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004cec:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004cf0:	57cb67ff 	bl	-13468(0xfffcb64) # 1c001854 <gpio_init>
1c004cf4:	00150005 	move	$r5,$r0
1c004cf8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004cfc:	57cb5bff 	bl	-13480(0xfffcb58) # 1c001854 <gpio_init>
1c004d00:	00150005 	move	$r5,$r0
1c004d04:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004d08:	57cb4fff 	bl	-13492(0xfffcb4c) # 1c001854 <gpio_init>
1c004d0c:	00150005 	move	$r5,$r0
1c004d10:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004d14:	57cb43ff 	bl	-13504(0xfffcb40) # 1c001854 <gpio_init>
1c004d18:	00150005 	move	$r5,$r0
1c004d1c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004d20:	57cb37ff 	bl	-13516(0xfffcb34) # 1c001854 <gpio_init>
1c004d24:	14000e2c 	lu12i.w	$r12,113(0x71)
1c004d28:	03bfc98c 	ori	$r12,$r12,0xff2
1c004d2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d30:	50001400 	b	20(0x14) # 1c004d44 <my_GPIO_Init+0xe4>
1c004d34:	03400000 	andi	$r0,$r0,0x0
1c004d38:	03400000 	andi	$r0,$r0,0x0
1c004d3c:	03400000 	andi	$r0,$r0,0x0
1c004d40:	03400000 	andi	$r0,$r0,0x0
1c004d44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d48:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004d4c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004d50:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004d34 <my_GPIO_Init+0xd4>
1c004d54:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d58:	02809004 	addi.w	$r4,$r0,36(0x24)
1c004d5c:	57cbf3ff 	bl	-13328(0xfffcbf0) # 1c00194c <gpio_write>
1c004d60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d64:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004d68:	57cbe7ff 	bl	-13340(0xfffcbe4) # 1c00194c <gpio_write>
1c004d6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d70:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d74:	57cbdbff 	bl	-13352(0xfffcbd8) # 1c00194c <gpio_write>
1c004d78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d7c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004d80:	57cbcfff 	bl	-13364(0xfffcbcc) # 1c00194c <gpio_write>
1c004d84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d88:	02809804 	addi.w	$r4,$r0,38(0x26)
1c004d8c:	57cbc3ff 	bl	-13376(0xfffcbc0) # 1c00194c <gpio_write>
1c004d90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004d94:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004d98:	57cbb7ff 	bl	-13388(0xfffcbb4) # 1c00194c <gpio_write>
1c004d9c:	00150005 	move	$r5,$r0
1c004da0:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c004da4:	57cbabff 	bl	-13400(0xfffcba8) # 1c00194c <gpio_write>
1c004da8:	03400000 	andi	$r0,$r0,0x0
1c004dac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004db0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004db4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004db8:	4c000020 	jirl	$r0,$r1,0

1c004dbc <my_I2C_Init>:
my_I2C_Init():
1c004dbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004dc0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004dc4:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dcc:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004dd0:	00150184 	move	$r4,$r12
1c004dd4:	57cd53ff 	bl	-12976(0xfffcd50) # 1c001b24 <soc_I2C_StructInit>
1c004dd8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004ddc:	00150184 	move	$r4,$r12
1c004de0:	57cd8fff 	bl	-12916(0xfffcd8c) # 1c001b6c <soc_I2C_Init>
1c004de4:	1400016c 	lu12i.w	$r12,11(0xb)
1c004de8:	0399958c 	ori	$r12,$r12,0x665
1c004dec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004df0:	50001400 	b	20(0x14) # 1c004e04 <my_I2C_Init+0x48>
1c004df4:	03400000 	andi	$r0,$r0,0x0
1c004df8:	03400000 	andi	$r0,$r0,0x0
1c004dfc:	03400000 	andi	$r0,$r0,0x0
1c004e00:	03400000 	andi	$r0,$r0,0x0
1c004e04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e0c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004e10:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004df4 <my_I2C_Init+0x38>
1c004e14:	03400000 	andi	$r0,$r0,0x0
1c004e18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e24:	4c000020 	jirl	$r0,$r1,0

1c004e28 <my_PWM_Init>:
my_PWM_Init():
1c004e28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e2c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004e30:	29806076 	st.w	$r22,$r3,24(0x18)
1c004e34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e38:	57cf4bff 	bl	-12472(0xfffcf48) # 1c001d80 <pwm_steering_engine_init>
1c004e3c:	1400016c 	lu12i.w	$r12,11(0xb)
1c004e40:	0399958c 	ori	$r12,$r12,0x665
1c004e44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e48:	50001400 	b	20(0x14) # 1c004e5c <my_PWM_Init+0x34>
1c004e4c:	03400000 	andi	$r0,$r0,0x0
1c004e50:	03400000 	andi	$r0,$r0,0x0
1c004e54:	03400000 	andi	$r0,$r0,0x0
1c004e58:	03400000 	andi	$r0,$r0,0x0
1c004e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004e64:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004e68:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004e4c <my_PWM_Init+0x24>
1c004e6c:	03400000 	andi	$r0,$r0,0x0
1c004e70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e7c:	4c000020 	jirl	$r0,$r1,0

1c004e80 <my_SPI_Init>:
my_SPI_Init():
1c004e80:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e84:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e88:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e8c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e90:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004e94:	57cfefff 	bl	-12308(0xfffcfec) # 1c001e80 <soc_Spi_Init>
1c004e98:	03400000 	andi	$r0,$r0,0x0
1c004e9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ea0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ea4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ea8:	4c000020 	jirl	$r0,$r1,0

1c004eac <Init_main>:
Init_main():
1c004eac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004eb0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004eb4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004eb8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ebc:	57e577ff 	bl	-6796(0xfffe574) # 1c003430 <SG90_Init>
1c004ec0:	57f353ff 	bl	-3248(0xffff350) # 1c004210 <OLED_Init>
1c004ec4:	57f5abff 	bl	-2648(0xffff5a8) # 1c00446c <OLED_CLS>
1c004ec8:	54001c00 	bl	28(0x1c) # 1c004ee4 <RC522_Init>
1c004ecc:	57d5bbff 	bl	-10824(0xfffd5b8) # 1c002484 <as608_init>
1c004ed0:	03400000 	andi	$r0,$r0,0x0
1c004ed4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ed8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004edc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ee0:	4c000020 	jirl	$r0,$r1,0

1c004ee4 <RC522_Init>:
RC522_Init():
1c004ee4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ee8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004eec:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ef0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ef4:	1400016c 	lu12i.w	$r12,11(0xb)
1c004ef8:	0399958c 	ori	$r12,$r12,0x665
1c004efc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f00:	50001400 	b	20(0x14) # 1c004f14 <RC522_Init+0x30>
1c004f04:	03400000 	andi	$r0,$r0,0x0
1c004f08:	03400000 	andi	$r0,$r0,0x0
1c004f0c:	03400000 	andi	$r0,$r0,0x0
1c004f10:	03400000 	andi	$r0,$r0,0x0
1c004f14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f18:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f1c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004f20:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f04 <RC522_Init+0x20>
1c004f24:	5403cc00 	bl	972(0x3cc) # 1c0052f0 <PcdReset>
1c004f28:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f2c:	0391ed8c 	ori	$r12,$r12,0x47b
1c004f30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004f34:	50001400 	b	20(0x14) # 1c004f48 <RC522_Init+0x64>
1c004f38:	03400000 	andi	$r0,$r0,0x0
1c004f3c:	03400000 	andi	$r0,$r0,0x0
1c004f40:	03400000 	andi	$r0,$r0,0x0
1c004f44:	03400000 	andi	$r0,$r0,0x0
1c004f48:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004f4c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f50:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c004f54:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f38 <RC522_Init+0x54>
1c004f58:	54039800 	bl	920(0x398) # 1c0052f0 <PcdReset>
1c004f5c:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f60:	0391ed8c 	ori	$r12,$r12,0x47b
1c004f64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004f68:	50001400 	b	20(0x14) # 1c004f7c <RC522_Init+0x98>
1c004f6c:	03400000 	andi	$r0,$r0,0x0
1c004f70:	03400000 	andi	$r0,$r0,0x0
1c004f74:	03400000 	andi	$r0,$r0,0x0
1c004f78:	03400000 	andi	$r0,$r0,0x0
1c004f7c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004f80:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004f84:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c004f88:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004f6c <RC522_Init+0x88>
1c004f8c:	54051c00 	bl	1308(0x51c) # 1c0054a8 <PcdAntennaOff>
1c004f90:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f94:	0391ed8c 	ori	$r12,$r12,0x47b
1c004f98:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004f9c:	50001400 	b	20(0x14) # 1c004fb0 <RC522_Init+0xcc>
1c004fa0:	03400000 	andi	$r0,$r0,0x0
1c004fa4:	03400000 	andi	$r0,$r0,0x0
1c004fa8:	03400000 	andi	$r0,$r0,0x0
1c004fac:	03400000 	andi	$r0,$r0,0x0
1c004fb0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004fb4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004fb8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c004fbc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004fa0 <RC522_Init+0xbc>
1c004fc0:	54045400 	bl	1108(0x454) # 1c005414 <PcdAntennaOn>
1c004fc4:	03400000 	andi	$r0,$r0,0x0
1c004fc8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004fcc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004fd0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004fd4:	4c000020 	jirl	$r0,$r1,0

1c004fd8 <ReadRawRC>:
ReadRawRC():
1c004fd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004fdc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004fe0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004fe4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004fe8:	0015008c 	move	$r12,$r4
1c004fec:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004ff0:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c004ff4:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004ff8:	0040858c 	slli.w	$r12,$r12,0x1
1c004ffc:	00005d8c 	ext.w.b	$r12,$r12
1c005000:	0341f98c 	andi	$r12,$r12,0x7e
1c005004:	00005d8d 	ext.w.b	$r13,$r12
1c005008:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00500c:	001531ac 	or	$r12,$r13,$r12
1c005010:	00005d8c 	ext.w.b	$r12,$r12
1c005014:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c005018:	57ceefff 	bl	-12564(0xfffceec) # 1c001f04 <soc_Spi_Cs_Down>
1c00501c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005020:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c005024:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005028:	03400000 	andi	$r0,$r0,0x0
1c00502c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005030:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005034:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005038:	0340118c 	andi	$r12,$r12,0x4
1c00503c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00502c <ReadRawRC+0x54>
1c005040:	03400000 	andi	$r0,$r0,0x0
1c005044:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005048:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00504c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005050:	0340058c 	andi	$r12,$r12,0x1
1c005054:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005044 <ReadRawRC+0x6c>
1c005058:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00505c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005060:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005064:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005068:	29000980 	st.b	$r0,$r12,2(0x2)
1c00506c:	03400000 	andi	$r0,$r0,0x0
1c005070:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005074:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005078:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00507c:	0340118c 	andi	$r12,$r12,0x4
1c005080:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c005070 <ReadRawRC+0x98>
1c005084:	03400000 	andi	$r0,$r0,0x0
1c005088:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00508c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005090:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005094:	0340058c 	andi	$r12,$r12,0x1
1c005098:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005088 <ReadRawRC+0xb0>
1c00509c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0050a0:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0050a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0050a8:	57ceb7ff 	bl	-12620(0xfffceb4) # 1c001f5c <soc_Spi_Cs_Up>
1c0050ac:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0050b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0050b4:	50001400 	b	20(0x14) # 1c0050c8 <ReadRawRC+0xf0>
1c0050b8:	03400000 	andi	$r0,$r0,0x0
1c0050bc:	03400000 	andi	$r0,$r0,0x0
1c0050c0:	03400000 	andi	$r0,$r0,0x0
1c0050c4:	03400000 	andi	$r0,$r0,0x0
1c0050c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0050cc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0050d0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0050d4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0050b8 <ReadRawRC+0xe0>
1c0050d8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0050dc:	00150184 	move	$r4,$r12
1c0050e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0050e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0050e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0050ec:	4c000020 	jirl	$r0,$r1,0

1c0050f0 <WriteRawRC>:
WriteRawRC():
1c0050f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0050f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0050f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0050fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005100:	0015008c 	move	$r12,$r4
1c005104:	001500ad 	move	$r13,$r5
1c005108:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00510c:	001501ac 	move	$r12,$r13
1c005110:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005114:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005118:	0040858c 	slli.w	$r12,$r12,0x1
1c00511c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005120:	0341f98c 	andi	$r12,$r12,0x7e
1c005124:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005128:	57cddfff 	bl	-12836(0xfffcddc) # 1c001f04 <soc_Spi_Cs_Down>
1c00512c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005130:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005134:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005138:	03400000 	andi	$r0,$r0,0x0
1c00513c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005140:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005144:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005148:	0340118c 	andi	$r12,$r12,0x4
1c00514c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00513c <WriteRawRC+0x4c>
1c005150:	03400000 	andi	$r0,$r0,0x0
1c005154:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005158:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00515c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005160:	0340058c 	andi	$r12,$r12,0x1
1c005164:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c005154 <WriteRawRC+0x64>
1c005168:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00516c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005170:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c005174:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005178:	2a3f7acd 	ld.bu	$r13,$r22,-34(0xfde)
1c00517c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005180:	03400000 	andi	$r0,$r0,0x0
1c005184:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c005188:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00518c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005190:	0340118c 	andi	$r12,$r12,0x4
1c005194:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c005184 <WriteRawRC+0x94>
1c005198:	03400000 	andi	$r0,$r0,0x0
1c00519c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0051a0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0051a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051a8:	0340058c 	andi	$r12,$r12,0x1
1c0051ac:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c00519c <WriteRawRC+0xac>
1c0051b0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0051b4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c0051b8:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c0051bc:	57cda3ff 	bl	-12896(0xfffcda0) # 1c001f5c <soc_Spi_Cs_Up>
1c0051c0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0051c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0051c8:	50001400 	b	20(0x14) # 1c0051dc <WriteRawRC+0xec>
1c0051cc:	03400000 	andi	$r0,$r0,0x0
1c0051d0:	03400000 	andi	$r0,$r0,0x0
1c0051d4:	03400000 	andi	$r0,$r0,0x0
1c0051d8:	03400000 	andi	$r0,$r0,0x0
1c0051dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0051e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0051e4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0051e8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0051cc <WriteRawRC+0xdc>
1c0051ec:	03400000 	andi	$r0,$r0,0x0
1c0051f0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0051f4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0051f8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0051fc:	4c000020 	jirl	$r0,$r1,0

1c005200 <SetBitMask>:
SetBitMask():
1c005200:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005204:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005208:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00520c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005210:	0015008c 	move	$r12,$r4
1c005214:	001500ad 	move	$r13,$r5
1c005218:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00521c:	001501ac 	move	$r12,$r13
1c005220:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005224:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005228:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00522c:	00150184 	move	$r4,$r12
1c005230:	57fdabff 	bl	-600(0xffffda8) # 1c004fd8 <ReadRawRC>
1c005234:	0015008c 	move	$r12,$r4
1c005238:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00523c:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c005240:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005244:	001531ac 	or	$r12,$r13,$r12
1c005248:	00005d8c 	ext.w.b	$r12,$r12
1c00524c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005250:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005254:	001501a5 	move	$r5,$r13
1c005258:	00150184 	move	$r4,$r12
1c00525c:	57fe97ff 	bl	-364(0xffffe94) # 1c0050f0 <WriteRawRC>
1c005260:	03400000 	andi	$r0,$r0,0x0
1c005264:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005268:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00526c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005270:	4c000020 	jirl	$r0,$r1,0

1c005274 <ClearBitMask>:
ClearBitMask():
1c005274:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005278:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00527c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005280:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005284:	0015008c 	move	$r12,$r4
1c005288:	001500ad 	move	$r13,$r5
1c00528c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005290:	001501ac 	move	$r12,$r13
1c005294:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c005298:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00529c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0052a0:	00150184 	move	$r4,$r12
1c0052a4:	57fd37ff 	bl	-716(0xffffd34) # 1c004fd8 <ReadRawRC>
1c0052a8:	0015008c 	move	$r12,$r4
1c0052ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052b0:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c0052b4:	0014300c 	nor	$r12,$r0,$r12
1c0052b8:	00005d8d 	ext.w.b	$r13,$r12
1c0052bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052c0:	0014b1ac 	and	$r12,$r13,$r12
1c0052c4:	00005d8c 	ext.w.b	$r12,$r12
1c0052c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0052cc:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0052d0:	001501a5 	move	$r5,$r13
1c0052d4:	00150184 	move	$r4,$r12
1c0052d8:	57fe1bff 	bl	-488(0xffffe18) # 1c0050f0 <WriteRawRC>
1c0052dc:	03400000 	andi	$r0,$r0,0x0
1c0052e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0052e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0052e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0052ec:	4c000020 	jirl	$r0,$r1,0

1c0052f0 <PcdReset>:
PcdReset():
1c0052f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052f4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052f8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005300:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005304:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005308:	57c647ff 	bl	-14780(0xfffc644) # 1c00194c <gpio_write>
1c00530c:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c005310:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005314:	50001400 	b	20(0x14) # 1c005328 <PcdReset+0x38>
1c005318:	03400000 	andi	$r0,$r0,0x0
1c00531c:	03400000 	andi	$r0,$r0,0x0
1c005320:	03400000 	andi	$r0,$r0,0x0
1c005324:	03400000 	andi	$r0,$r0,0x0
1c005328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00532c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005330:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005334:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005318 <PcdReset+0x28>
1c005338:	00150005 	move	$r5,$r0
1c00533c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005340:	57c60fff 	bl	-14836(0xfffc60c) # 1c00194c <gpio_write>
1c005344:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c005348:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00534c:	50001400 	b	20(0x14) # 1c005360 <PcdReset+0x70>
1c005350:	03400000 	andi	$r0,$r0,0x0
1c005354:	03400000 	andi	$r0,$r0,0x0
1c005358:	03400000 	andi	$r0,$r0,0x0
1c00535c:	03400000 	andi	$r0,$r0,0x0
1c005360:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005364:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005368:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00536c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005350 <PcdReset+0x60>
1c005370:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005374:	02809404 	addi.w	$r4,$r0,37(0x25)
1c005378:	57c5d7ff 	bl	-14892(0xfffc5d4) # 1c00194c <gpio_write>
1c00537c:	02803c05 	addi.w	$r5,$r0,15(0xf)
1c005380:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005384:	57fd6fff 	bl	-660(0xffffd6c) # 1c0050f0 <WriteRawRC>
1c005388:	028b880c 	addi.w	$r12,$r0,738(0x2e2)
1c00538c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005390:	50001400 	b	20(0x14) # 1c0053a4 <PcdReset+0xb4>
1c005394:	03400000 	andi	$r0,$r0,0x0
1c005398:	03400000 	andi	$r0,$r0,0x0
1c00539c:	03400000 	andi	$r0,$r0,0x0
1c0053a0:	03400000 	andi	$r0,$r0,0x0
1c0053a4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0053a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0053ac:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0053b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005394 <PcdReset+0xa4>
1c0053b4:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0053b8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0053bc:	57fd37ff 	bl	-716(0xffffd34) # 1c0050f0 <WriteRawRC>
1c0053c0:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c0053c4:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c0053c8:	57fd2bff 	bl	-728(0xffffd28) # 1c0050f0 <WriteRawRC>
1c0053cc:	00150005 	move	$r5,$r0
1c0053d0:	0280b004 	addi.w	$r4,$r0,44(0x2c)
1c0053d4:	57fd1fff 	bl	-740(0xffffd1c) # 1c0050f0 <WriteRawRC>
1c0053d8:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0053dc:	0280a804 	addi.w	$r4,$r0,42(0x2a)
1c0053e0:	57fd13ff 	bl	-752(0xffffd10) # 1c0050f0 <WriteRawRC>
1c0053e4:	0280f805 	addi.w	$r5,$r0,62(0x3e)
1c0053e8:	0280ac04 	addi.w	$r4,$r0,43(0x2b)
1c0053ec:	57fd07ff 	bl	-764(0xffffd04) # 1c0050f0 <WriteRawRC>
1c0053f0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0053f4:	02805404 	addi.w	$r4,$r0,21(0x15)
1c0053f8:	57fcfbff 	bl	-776(0xffffcf8) # 1c0050f0 <WriteRawRC>
1c0053fc:	0015000c 	move	$r12,$r0
1c005400:	00150184 	move	$r4,$r12
1c005404:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005408:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00540c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005410:	4c000020 	jirl	$r0,$r1,0

1c005414 <PcdAntennaOn>:
PcdAntennaOn():
1c005414:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005418:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00541c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005420:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005424:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005428:	02805404 	addi.w	$r4,$r0,21(0x15)
1c00542c:	57fcc7ff 	bl	-828(0xffffcc4) # 1c0050f0 <WriteRawRC>
1c005430:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c005434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005438:	50001400 	b	20(0x14) # 1c00544c <PcdAntennaOn+0x38>
1c00543c:	03400000 	andi	$r0,$r0,0x0
1c005440:	03400000 	andi	$r0,$r0,0x0
1c005444:	03400000 	andi	$r0,$r0,0x0
1c005448:	03400000 	andi	$r0,$r0,0x0
1c00544c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005450:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005454:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005458:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00543c <PcdAntennaOn+0x28>
1c00545c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005460:	57fb7bff 	bl	-1160(0xffffb78) # 1c004fd8 <ReadRawRC>
1c005464:	0015008c 	move	$r12,$r4
1c005468:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00546c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c005470:	03400d8c 	andi	$r12,$r12,0x3
1c005474:	44001180 	bnez	$r12,16(0x10) # 1c005484 <PcdAntennaOn+0x70>
1c005478:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00547c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005480:	57fd83ff 	bl	-640(0xffffd80) # 1c005200 <SetBitMask>
1c005484:	02805404 	addi.w	$r4,$r0,21(0x15)
1c005488:	57fb53ff 	bl	-1200(0xffffb50) # 1c004fd8 <ReadRawRC>
1c00548c:	0015008c 	move	$r12,$r4
1c005490:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005494:	03400000 	andi	$r0,$r0,0x0
1c005498:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00549c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0054a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0054a4:	4c000020 	jirl	$r0,$r1,0

1c0054a8 <PcdAntennaOff>:
PcdAntennaOff():
1c0054a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0054ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0054b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0054b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0054b8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0054bc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054c0:	57fdb7ff 	bl	-588(0xffffdb4) # 1c005274 <ClearBitMask>
1c0054c4:	03400000 	andi	$r0,$r0,0x0
1c0054c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0054cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054d4:	4c000020 	jirl	$r0,$r1,0

1c0054d8 <PcdComMF522>:
PcdComMF522():
1c0054d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0054dc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0054e0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0054e4:	29809077 	st.w	$r23,$r3,36(0x24)
1c0054e8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054ec:	0015008c 	move	$r12,$r4
1c0054f0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0054f4:	001500cd 	move	$r13,$r6
1c0054f8:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c0054fc:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c005500:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005504:	001501ac 	move	$r12,$r13
1c005508:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00550c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005510:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005514:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005518:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c00551c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005520:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c005524:	5800218d 	beq	$r12,$r13,32(0x20) # 1c005544 <PcdComMF522+0x6c>
1c005528:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c00552c:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c005558 <PcdComMF522+0x80>
1c005530:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c005534:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005538:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00553c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005540:	50001c00 	b	28(0x1c) # 1c00555c <PcdComMF522+0x84>
1c005544:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c005548:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00554c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c005550:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005554:	50000800 	b	8(0x8) # 1c00555c <PcdComMF522+0x84>
1c005558:	03400000 	andi	$r0,$r0,0x0
1c00555c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005560:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c005564:	001531ac 	or	$r12,$r13,$r12
1c005568:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00556c:	00150185 	move	$r5,$r12
1c005570:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005574:	57fb7fff 	bl	-1156(0xffffb7c) # 1c0050f0 <WriteRawRC>
1c005578:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00557c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005580:	57fcf7ff 	bl	-780(0xffffcf4) # 1c005274 <ClearBitMask>
1c005584:	00150005 	move	$r5,$r0
1c005588:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00558c:	57fb67ff 	bl	-1180(0xffffb64) # 1c0050f0 <WriteRawRC>
1c005590:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005594:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005598:	57fc6bff 	bl	-920(0xffffc68) # 1c005200 <SetBitMask>
1c00559c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0055a0:	50002c00 	b	44(0x2c) # 1c0055cc <PcdComMF522+0xf4>
1c0055a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0055a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0055ac:	001031ac 	add.w	$r12,$r13,$r12
1c0055b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0055b4:	00150185 	move	$r5,$r12
1c0055b8:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0055bc:	57fb37ff 	bl	-1228(0xffffb34) # 1c0050f0 <WriteRawRC>
1c0055c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0055c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0055c8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0055cc:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c0055d0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0055d4:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c0055a4 <PcdComMF522+0xcc>
1c0055d8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0055dc:	00150185 	move	$r5,$r12
1c0055e0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0055e4:	57fb0fff 	bl	-1268(0xffffb0c) # 1c0050f0 <WriteRawRC>
1c0055e8:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0055ec:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0055f0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005600 <PcdComMF522+0x128>
1c0055f4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0055f8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0055fc:	57fc07ff 	bl	-1020(0xffffc04) # 1c005200 <SetBitMask>
1c005600:	1400026c 	lu12i.w	$r12,19(0x13)
1c005604:	03a2018c 	ori	$r12,$r12,0x880
1c005608:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00560c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005610:	57f9cbff 	bl	-1592(0xffff9c8) # 1c004fd8 <ReadRawRC>
1c005614:	0015008c 	move	$r12,$r4
1c005618:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00561c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005620:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005624:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005628:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00562c:	40002580 	beqz	$r12,36(0x24) # 1c005650 <PcdComMF522+0x178>
1c005630:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005634:	0340058c 	andi	$r12,$r12,0x1
1c005638:	44001980 	bnez	$r12,24(0x18) # 1c005650 <PcdComMF522+0x178>
1c00563c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005640:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005644:	0014b1ac 	and	$r12,$r13,$r12
1c005648:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00564c:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c00560c <PcdComMF522+0x134>
1c005650:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005654:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005658:	57fc1fff 	bl	-996(0xffffc1c) # 1c005274 <ClearBitMask>
1c00565c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005660:	40011180 	beqz	$r12,272(0x110) # 1c005770 <PcdComMF522+0x298>
1c005664:	02801804 	addi.w	$r4,$r0,6(0x6)
1c005668:	57f973ff 	bl	-1680(0xffff970) # 1c004fd8 <ReadRawRC>
1c00566c:	0015008c 	move	$r12,$r4
1c005670:	03406d8c 	andi	$r12,$r12,0x1b
1c005674:	4400f580 	bnez	$r12,244(0xf4) # 1c005768 <PcdComMF522+0x290>
1c005678:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00567c:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005680:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005684:	0014b1ac 	and	$r12,$r13,$r12
1c005688:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00568c:	0340058c 	andi	$r12,$r12,0x1
1c005690:	40000d80 	beqz	$r12,12(0xc) # 1c00569c <PcdComMF522+0x1c4>
1c005694:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c005698:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00569c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0056a0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0056a4:	5c00cdac 	bne	$r13,$r12,204(0xcc) # 1c005770 <PcdComMF522+0x298>
1c0056a8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0056ac:	57f92fff 	bl	-1748(0xffff92c) # 1c004fd8 <ReadRawRC>
1c0056b0:	0015008c 	move	$r12,$r4
1c0056b4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0056b8:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0056bc:	57f91fff 	bl	-1764(0xffff91c) # 1c004fd8 <ReadRawRC>
1c0056c0:	0015008c 	move	$r12,$r4
1c0056c4:	03401d8c 	andi	$r12,$r12,0x7
1c0056c8:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0056cc:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0056d0:	40002580 	beqz	$r12,36(0x24) # 1c0056f4 <PcdComMF522+0x21c>
1c0056d4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0056d8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0056dc:	00408d8d 	slli.w	$r13,$r12,0x3
1c0056e0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0056e4:	001031ad 	add.w	$r13,$r13,$r12
1c0056e8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0056ec:	2980018d 	st.w	$r13,$r12,0
1c0056f0:	50001400 	b	20(0x14) # 1c005704 <PcdComMF522+0x22c>
1c0056f4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c0056f8:	00408d8d 	slli.w	$r13,$r12,0x3
1c0056fc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005700:	2980018d 	st.w	$r13,$r12,0
1c005704:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c005708:	44000d80 	bnez	$r12,12(0xc) # 1c005714 <PcdComMF522+0x23c>
1c00570c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005710:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005714:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c005718:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c00571c:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005728 <PcdComMF522+0x250>
1c005720:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c005724:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c005728:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00572c:	50002c00 	b	44(0x2c) # 1c005758 <PcdComMF522+0x280>
1c005730:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005734:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005738:	001031b7 	add.w	$r23,$r13,$r12
1c00573c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c005740:	57f89bff 	bl	-1896(0xffff898) # 1c004fd8 <ReadRawRC>
1c005744:	0015008c 	move	$r12,$r4
1c005748:	290002ec 	st.b	$r12,$r23,0
1c00574c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005750:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005758:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c00575c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005760:	63ffd1ac 	blt	$r13,$r12,-48(0x3ffd0) # 1c005730 <PcdComMF522+0x258>
1c005764:	50000c00 	b	12(0xc) # 1c005770 <PcdComMF522+0x298>
1c005768:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c00576c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005770:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005774:	02803004 	addi.w	$r4,$r0,12(0xc)
1c005778:	57fa8bff 	bl	-1400(0xffffa88) # 1c005200 <SetBitMask>
1c00577c:	00150005 	move	$r5,$r0
1c005780:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005784:	57f96fff 	bl	-1684(0xffff96c) # 1c0050f0 <WriteRawRC>
1c005788:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00578c:	00150184 	move	$r4,$r12
1c005790:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005794:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005798:	28809077 	ld.w	$r23,$r3,36(0x24)
1c00579c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0057a0:	4c000020 	jirl	$r0,$r1,0

1c0057a4 <PcdRequest>:
PcdRequest():
1c0057a4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0057a8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0057ac:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0057b0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0057b4:	0015008c 	move	$r12,$r4
1c0057b8:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c0057bc:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c0057c0:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0057c4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0057c8:	57faafff 	bl	-1364(0xffffaac) # 1c005274 <ClearBitMask>
1c0057cc:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c0057d0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0057d4:	57f91fff 	bl	-1764(0xffff91c) # 1c0050f0 <WriteRawRC>
1c0057d8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0057dc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0057e0:	57fa23ff 	bl	-1504(0xffffa20) # 1c005200 <SetBitMask>
1c0057e4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0057e8:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c0057ec:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0057f0:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0057f4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0057f8:	001501c8 	move	$r8,$r14
1c0057fc:	001501a7 	move	$r7,$r13
1c005800:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005804:	00150185 	move	$r5,$r12
1c005808:	02803004 	addi.w	$r4,$r0,12(0xc)
1c00580c:	57fccfff 	bl	-820(0xffffccc) # 1c0054d8 <PcdComMF522>
1c005810:	0015008c 	move	$r12,$r4
1c005814:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005818:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00581c:	44003180 	bnez	$r12,48(0x30) # 1c00584c <PcdRequest+0xa8>
1c005820:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005824:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005828:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c00584c <PcdRequest+0xa8>
1c00582c:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c005830:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005834:	2900018d 	st.b	$r13,$r12,0
1c005838:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c00583c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005840:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c005844:	2900018d 	st.b	$r13,$r12,0
1c005848:	50000c00 	b	12(0xc) # 1c005854 <PcdRequest+0xb0>
1c00584c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005850:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005854:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005858:	00150184 	move	$r4,$r12
1c00585c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005860:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005864:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005868:	4c000020 	jirl	$r0,$r1,0

1c00586c <PcdAnticoll>:
PcdAnticoll():
1c00586c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005870:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005874:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005878:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00587c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c005880:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005884:	02802005 	addi.w	$r5,$r0,8(0x8)
1c005888:	02802004 	addi.w	$r4,$r0,8(0x8)
1c00588c:	57f9ebff 	bl	-1560(0xffff9e8) # 1c005274 <ClearBitMask>
1c005890:	00150005 	move	$r5,$r0
1c005894:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005898:	57f85bff 	bl	-1960(0xffff858) # 1c0050f0 <WriteRawRC>
1c00589c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0058a0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0058a4:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c005274 <ClearBitMask>
1c0058a8:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c0058ac:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c0058b0:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0058b4:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c0058b8:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c0058bc:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c0058c0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0058c4:	001501c8 	move	$r8,$r14
1c0058c8:	001501a7 	move	$r7,$r13
1c0058cc:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0058d0:	00150185 	move	$r5,$r12
1c0058d4:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0058d8:	57fc03ff 	bl	-1024(0xffffc00) # 1c0054d8 <PcdComMF522>
1c0058dc:	0015008c 	move	$r12,$r4
1c0058e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058e4:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0058e8:	44008180 	bnez	$r12,128(0x80) # 1c005968 <PcdAnticoll+0xfc>
1c0058ec:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0058f0:	50004c00 	b	76(0x4c) # 1c00593c <PcdAnticoll+0xd0>
1c0058f4:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c0058f8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0058fc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c005900:	001031ac 	add.w	$r12,$r13,$r12
1c005904:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005908:	001039ad 	add.w	$r13,$r13,$r14
1c00590c:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c005910:	2900018d 	st.b	$r13,$r12,0
1c005914:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005918:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00591c:	001031ac 	add.w	$r12,$r13,$r12
1c005920:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c005924:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005928:	0015b1ac 	xor	$r12,$r13,$r12
1c00592c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005930:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005934:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005938:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00593c:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005940:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005944:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0058f4 <PcdAnticoll+0x88>
1c005948:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00594c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005950:	001031ac 	add.w	$r12,$r13,$r12
1c005954:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c005958:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c00595c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005968 <PcdAnticoll+0xfc>
1c005960:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005964:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005968:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00596c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005970:	57f893ff 	bl	-1904(0xffff890) # 1c005200 <SetBitMask>
1c005974:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005978:	00150184 	move	$r4,$r12
1c00597c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005980:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005984:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005988:	4c000020 	jirl	$r0,$r1,0

1c00598c <Return_Card>:
Return_Card():
1c00598c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005990:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005994:	29806076 	st.w	$r22,$r3,24(0x18)
1c005998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00599c:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c0059a0:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0059a4:	289990a5 	ld.w	$r5,$r5,1636(0x664)
1c0059a8:	02814804 	addi.w	$r4,$r0,82(0x52)
1c0059ac:	57fdfbff 	bl	-520(0xffffdf8) # 1c0057a4 <PcdRequest>
1c0059b0:	0015008c 	move	$r12,$r4
1c0059b4:	44005d80 	bnez	$r12,92(0x5c) # 1c005a10 <Return_Card+0x84>
1c0059b8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0059bc:	28996084 	ld.w	$r4,$r4,1624(0x658)
1c0059c0:	57feafff 	bl	-340(0xffffeac) # 1c00586c <PcdAnticoll>
1c0059c4:	0015008c 	move	$r12,$r4
1c0059c8:	44004980 	bnez	$r12,72(0x48) # 1c005a10 <Return_Card+0x84>
1c0059cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059d0:	2899118c 	ld.w	$r12,$r12,1604(0x644)
1c0059d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0059d8:	0044918c 	srli.w	$r12,$r12,0x4
1c0059dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059e0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059e4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0059e8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0059ec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059f4:	2898818c 	ld.w	$r12,$r12,1568(0x620)
1c0059f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a00:	03403d8c 	andi	$r12,$r12,0xf
1c005a04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a08:	001031ac 	add.w	$r12,$r13,$r12
1c005a0c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005a10:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005a14:	00150184 	move	$r4,$r12
1c005a18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005a1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005a20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a24:	4c000020 	jirl	$r0,$r1,0

1c005a28 <Buffer_write>:
Buffer_write():
1c005a28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005a30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a34:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005a38:	001500ac 	move	$r12,$r5
1c005a3c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c005a40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a44:	2880018c 	ld.w	$r12,$r12,0
1c005a48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a4c:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c005a50:	0010358c 	add.w	$r12,$r12,$r13
1c005a54:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005a58:	2900018d 	st.b	$r13,$r12,0
1c005a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a60:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005a64:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a6c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c005a70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a74:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c005a78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a7c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005a80:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005a8c <Buffer_write+0x64>
1c005a84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a88:	29803180 	st.w	$r0,$r12,12(0xc)
1c005a8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a90:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c005a94:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a9c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c005aa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005aa4:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c005aa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005aac:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005ab0:	6400458d 	bge	$r12,$r13,68(0x44) # 1c005af4 <Buffer_write+0xcc>
1c005ab4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ab8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c005abc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ac0:	2980418d 	st.w	$r13,$r12,16(0x10)
1c005ac4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ac8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005acc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ad4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c005ad8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005adc:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c005ae0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ae4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c005ae8:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005af4 <Buffer_write+0xcc>
1c005aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af0:	29802180 	st.w	$r0,$r12,8(0x8)
1c005af4:	03400000 	andi	$r0,$r0,0x0
1c005af8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005afc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b00:	4c000020 	jirl	$r0,$r1,0

1c005b04 <main>:
main():
1c005b04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b08:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005b0c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005b10:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b14:	57b617ff 	bl	-18924(0xfffb614) # 1c001128 <EnableInt>
1c005b18:	57f14bff 	bl	-3768(0xffff148) # 1c004c60 <my_GPIO_Init>
1c005b1c:	57f30fff 	bl	-3316(0xffff30c) # 1c004e28 <my_PWM_Init>
1c005b20:	57f29fff 	bl	-3428(0xffff29c) # 1c004dbc <my_I2C_Init>
1c005b24:	57f35fff 	bl	-3236(0xffff35c) # 1c004e80 <my_SPI_Init>
1c005b28:	140001cc 	lu12i.w	$r12,14(0xe)
1c005b2c:	03840184 	ori	$r4,$r12,0x100
1c005b30:	57d987ff 	bl	-9852(0xfffd984) # 1c0034b4 <hw_uart_init>
1c005b34:	14000e2c 	lu12i.w	$r12,113(0x71)
1c005b38:	03bfc98c 	ori	$r12,$r12,0xff2
1c005b3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b40:	50001400 	b	20(0x14) # 1c005b54 <main+0x50>
1c005b44:	03400000 	andi	$r0,$r0,0x0
1c005b48:	03400000 	andi	$r0,$r0,0x0
1c005b4c:	03400000 	andi	$r0,$r0,0x0
1c005b50:	03400000 	andi	$r0,$r0,0x0
1c005b54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b58:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005b5c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c005b60:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005b44 <main+0x40>
1c005b64:	57f34bff 	bl	-3256(0xffff348) # 1c004eac <Init_main>
1c005b68:	14000e2c 	lu12i.w	$r12,113(0x71)
1c005b6c:	03bfc98c 	ori	$r12,$r12,0xff2
1c005b70:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b74:	50001400 	b	20(0x14) # 1c005b88 <main+0x84>
1c005b78:	03400000 	andi	$r0,$r0,0x0
1c005b7c:	03400000 	andi	$r0,$r0,0x0
1c005b80:	03400000 	andi	$r0,$r0,0x0
1c005b84:	03400000 	andi	$r0,$r0,0x0
1c005b88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b8c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005b90:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c005b94:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c005b78 <main+0x74>
1c005b98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b9c:	029f498c 	addi.w	$r12,$r12,2002(0x7d2)
1c005ba0:	29000180 	st.b	$r0,$r12,0
1c005ba4:	57dabfff 	bl	-9540(0xfffdabc) # 1c003660 <MatrixKey>
1c005ba8:	0015008c 	move	$r12,$r4
1c005bac:	0015018d 	move	$r13,$r12
1c005bb0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005bb4:	029ee58c 	addi.w	$r12,$r12,1977(0x7b9)
1c005bb8:	2900018d 	st.b	$r13,$r12,0
1c005bbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bc0:	02bb758c 	addi.w	$r12,$r12,-291(0xedd)
1c005bc4:	2a00018c 	ld.bu	$r12,$r12,0
1c005bc8:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c005bcc:	680c71ac 	bltu	$r13,$r12,3184(0xc70) # 1c00683c <main+0xd38>
1c005bd0:	0040898d 	slli.w	$r13,$r12,0x2
1c005bd4:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c005bd8:	02b5b18c 	addi.w	$r12,$r12,-660(0xd6c)
1c005bdc:	001031ac 	add.w	$r12,$r13,$r12
1c005be0:	2880018c 	ld.w	$r12,$r12,0
1c005be4:	4c000180 	jirl	$r0,$r12,0
1c005be8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bec:	02bac18c 	addi.w	$r12,$r12,-336(0xeb0)
1c005bf0:	2a00018d 	ld.bu	$r13,$r12,0
1c005bf4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005bf8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005c10 <main+0x10c>
1c005bfc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005c00:	540cdc00 	bl	3292(0xcdc) # 1c0068dc <interface_display>
1c005c04:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c08:	02ba518c 	addi.w	$r12,$r12,-364(0xe94)
1c005c0c:	29000180 	st.b	$r0,$r12,0
1c005c10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c14:	029d658c 	addi.w	$r12,$r12,1881(0x759)
1c005c18:	2a00018d 	ld.bu	$r13,$r12,0
1c005c1c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005c20:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005c48 <main+0x144>
1c005c24:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c28:	02b9d58c 	addi.w	$r12,$r12,-395(0xe75)
1c005c2c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005c30:	2900018d 	st.b	$r13,$r12,0
1c005c34:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c38:	02b9918c 	addi.w	$r12,$r12,-412(0xe64)
1c005c3c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005c40:	2900018d 	st.b	$r13,$r12,0
1c005c44:	500c0000 	b	3072(0xc00) # 1c006844 <main+0xd40>
1c005c48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c4c:	029c858c 	addi.w	$r12,$r12,1825(0x721)
1c005c50:	2a00018d 	ld.bu	$r13,$r12,0
1c005c54:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005c58:	5c0bedac 	bne	$r13,$r12,3052(0xbec) # 1c006844 <main+0xd40>
1c005c5c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c60:	02b8f58c 	addi.w	$r12,$r12,-451(0xe3d)
1c005c64:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005c68:	2900018d 	st.b	$r13,$r12,0
1c005c6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c70:	02b8b18c 	addi.w	$r12,$r12,-468(0xe2c)
1c005c74:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005c78:	2900018d 	st.b	$r13,$r12,0
1c005c7c:	500bc800 	b	3016(0xbc8) # 1c006844 <main+0xd40>
1c005c80:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c84:	02b8618c 	addi.w	$r12,$r12,-488(0xe18)
1c005c88:	2a00018d 	ld.bu	$r13,$r12,0
1c005c8c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005c90:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005ca8 <main+0x1a4>
1c005c94:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005c98:	540c4400 	bl	3140(0xc44) # 1c0068dc <interface_display>
1c005c9c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ca0:	02b7f18c 	addi.w	$r12,$r12,-516(0xdfc)
1c005ca4:	29000180 	st.b	$r0,$r12,0
1c005ca8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cac:	029b058c 	addi.w	$r12,$r12,1729(0x6c1)
1c005cb0:	2a00018d 	ld.bu	$r13,$r12,0
1c005cb4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005cb8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005ce0 <main+0x1dc>
1c005cbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cc0:	02b7758c 	addi.w	$r12,$r12,-547(0xddd)
1c005cc4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005cc8:	2900018d 	st.b	$r13,$r12,0
1c005ccc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cd0:	02b7318c 	addi.w	$r12,$r12,-564(0xdcc)
1c005cd4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005cd8:	2900018d 	st.b	$r13,$r12,0
1c005cdc:	500b7000 	b	2928(0xb70) # 1c00684c <main+0xd48>
1c005ce0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ce4:	029a258c 	addi.w	$r12,$r12,1673(0x689)
1c005ce8:	2a00018d 	ld.bu	$r13,$r12,0
1c005cec:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005cf0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005d18 <main+0x214>
1c005cf4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cf8:	02b6958c 	addi.w	$r12,$r12,-603(0xda5)
1c005cfc:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005d00:	2900018d 	st.b	$r13,$r12,0
1c005d04:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d08:	02b6518c 	addi.w	$r12,$r12,-620(0xd94)
1c005d0c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005d10:	2900018d 	st.b	$r13,$r12,0
1c005d14:	500b3800 	b	2872(0xb38) # 1c00684c <main+0xd48>
1c005d18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d1c:	0299458c 	addi.w	$r12,$r12,1617(0x651)
1c005d20:	2a00018d 	ld.bu	$r13,$r12,0
1c005d24:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005d28:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005d50 <main+0x24c>
1c005d2c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d30:	02b5b58c 	addi.w	$r12,$r12,-659(0xd6d)
1c005d34:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005d38:	2900018d 	st.b	$r13,$r12,0
1c005d3c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d40:	02b5718c 	addi.w	$r12,$r12,-676(0xd5c)
1c005d44:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005d48:	2900018d 	st.b	$r13,$r12,0
1c005d4c:	500b0000 	b	2816(0xb00) # 1c00684c <main+0xd48>
1c005d50:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d54:	0298658c 	addi.w	$r12,$r12,1561(0x619)
1c005d58:	2a00018d 	ld.bu	$r13,$r12,0
1c005d5c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005d60:	5c0aedac 	bne	$r13,$r12,2796(0xaec) # 1c00684c <main+0xd48>
1c005d64:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d68:	02b4d58c 	addi.w	$r12,$r12,-715(0xd35)
1c005d6c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d70:	2900018d 	st.b	$r13,$r12,0
1c005d74:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d78:	02b4918c 	addi.w	$r12,$r12,-732(0xd24)
1c005d7c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d80:	2900018d 	st.b	$r13,$r12,0
1c005d84:	500ac800 	b	2760(0xac8) # 1c00684c <main+0xd48>
1c005d88:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d8c:	02b4418c 	addi.w	$r12,$r12,-752(0xd10)
1c005d90:	2a00018d 	ld.bu	$r13,$r12,0
1c005d94:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005d98:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005db0 <main+0x2ac>
1c005d9c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005da0:	540b3c00 	bl	2876(0xb3c) # 1c0068dc <interface_display>
1c005da4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005da8:	02b3d18c 	addi.w	$r12,$r12,-780(0xcf4)
1c005dac:	29000180 	st.b	$r0,$r12,0
1c005db0:	5415c000 	bl	5568(0x15c0) # 1c007370 <Read_ID>
1c005db4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005db8:	0296d58c 	addi.w	$r12,$r12,1461(0x5b5)
1c005dbc:	2a00018d 	ld.bu	$r13,$r12,0
1c005dc0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005dc4:	5c0a91ac 	bne	$r13,$r12,2704(0xa90) # 1c006854 <main+0xd50>
1c005dc8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dcc:	02b3458c 	addi.w	$r12,$r12,-815(0xcd1)
1c005dd0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005dd4:	2900018d 	st.b	$r13,$r12,0
1c005dd8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ddc:	02b3018c 	addi.w	$r12,$r12,-832(0xcc0)
1c005de0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005de4:	2900018d 	st.b	$r13,$r12,0
1c005de8:	500a6c00 	b	2668(0xa6c) # 1c006854 <main+0xd50>
1c005dec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005df0:	02b2b18c 	addi.w	$r12,$r12,-852(0xcac)
1c005df4:	2a00018d 	ld.bu	$r13,$r12,0
1c005df8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005dfc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e14 <main+0x310>
1c005e00:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005e04:	540ad800 	bl	2776(0xad8) # 1c0068dc <interface_display>
1c005e08:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e0c:	02b2418c 	addi.w	$r12,$r12,-880(0xc90)
1c005e10:	29000180 	st.b	$r0,$r12,0
1c005e14:	5416a800 	bl	5800(0x16a8) # 1c0074bc <Key_main>
1c005e18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e1c:	0295458c 	addi.w	$r12,$r12,1361(0x551)
1c005e20:	2a00018d 	ld.bu	$r13,$r12,0
1c005e24:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005e28:	5c0a35ac 	bne	$r13,$r12,2612(0xa34) # 1c00685c <main+0xd58>
1c005e2c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e30:	02b1b58c 	addi.w	$r12,$r12,-915(0xc6d)
1c005e34:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e38:	2900018d 	st.b	$r13,$r12,0
1c005e3c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e40:	02b1718c 	addi.w	$r12,$r12,-932(0xc5c)
1c005e44:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005e48:	2900018d 	st.b	$r13,$r12,0
1c005e4c:	500a1000 	b	2576(0xa10) # 1c00685c <main+0xd58>
1c005e50:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e54:	02b1218c 	addi.w	$r12,$r12,-952(0xc48)
1c005e58:	2a00018d 	ld.bu	$r13,$r12,0
1c005e5c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c005e60:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e78 <main+0x374>
1c005e64:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c005e68:	540a7400 	bl	2676(0xa74) # 1c0068dc <interface_display>
1c005e6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e70:	02b0b18c 	addi.w	$r12,$r12,-980(0xc2c)
1c005e74:	29000180 	st.b	$r0,$r12,0
1c005e78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e7c:	0293c58c 	addi.w	$r12,$r12,1265(0x4f1)
1c005e80:	2a00018d 	ld.bu	$r13,$r12,0
1c005e84:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005e88:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005eb0 <main+0x3ac>
1c005e8c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e90:	02b0358c 	addi.w	$r12,$r12,-1011(0xc0d)
1c005e94:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005e98:	2900018d 	st.b	$r13,$r12,0
1c005e9c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ea0:	02aff18c 	addi.w	$r12,$r12,-1028(0xbfc)
1c005ea4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005ea8:	2900018d 	st.b	$r13,$r12,0
1c005eac:	5009b800 	b	2488(0x9b8) # 1c006864 <main+0xd60>
1c005eb0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005eb4:	0292e58c 	addi.w	$r12,$r12,1209(0x4b9)
1c005eb8:	2a00018d 	ld.bu	$r13,$r12,0
1c005ebc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005ec0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005ee8 <main+0x3e4>
1c005ec4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ec8:	02af558c 	addi.w	$r12,$r12,-1067(0xbd5)
1c005ecc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005ed0:	2900018d 	st.b	$r13,$r12,0
1c005ed4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ed8:	02af118c 	addi.w	$r12,$r12,-1084(0xbc4)
1c005edc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005ee0:	2900018d 	st.b	$r13,$r12,0
1c005ee4:	50098000 	b	2432(0x980) # 1c006864 <main+0xd60>
1c005ee8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005eec:	0292058c 	addi.w	$r12,$r12,1153(0x481)
1c005ef0:	2a00018d 	ld.bu	$r13,$r12,0
1c005ef4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005ef8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005f20 <main+0x41c>
1c005efc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f00:	02ae758c 	addi.w	$r12,$r12,-1123(0xb9d)
1c005f04:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005f08:	2900018d 	st.b	$r13,$r12,0
1c005f0c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f10:	02ae318c 	addi.w	$r12,$r12,-1140(0xb8c)
1c005f14:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005f18:	2900018d 	st.b	$r13,$r12,0
1c005f1c:	50094800 	b	2376(0x948) # 1c006864 <main+0xd60>
1c005f20:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f24:	0291258c 	addi.w	$r12,$r12,1097(0x449)
1c005f28:	2a00018d 	ld.bu	$r13,$r12,0
1c005f2c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005f30:	5c0935ac 	bne	$r13,$r12,2356(0x934) # 1c006864 <main+0xd60>
1c005f34:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f38:	02ad958c 	addi.w	$r12,$r12,-1179(0xb65)
1c005f3c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f40:	2900018d 	st.b	$r13,$r12,0
1c005f44:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f48:	02ad518c 	addi.w	$r12,$r12,-1196(0xb54)
1c005f4c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f50:	2900018d 	st.b	$r13,$r12,0
1c005f54:	50091000 	b	2320(0x910) # 1c006864 <main+0xd60>
1c005f58:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f5c:	02ad018c 	addi.w	$r12,$r12,-1216(0xb40)
1c005f60:	2a00018d 	ld.bu	$r13,$r12,0
1c005f64:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005f68:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005f80 <main+0x47c>
1c005f6c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005f70:	54096c00 	bl	2412(0x96c) # 1c0068dc <interface_display>
1c005f74:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f78:	02ac918c 	addi.w	$r12,$r12,-1244(0xb24)
1c005f7c:	29000180 	st.b	$r0,$r12,0
1c005f80:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f84:	028fa58c 	addi.w	$r12,$r12,1001(0x3e9)
1c005f88:	2a00018d 	ld.bu	$r13,$r12,0
1c005f8c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005f90:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005fb8 <main+0x4b4>
1c005f94:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f98:	02ac158c 	addi.w	$r12,$r12,-1275(0xb05)
1c005f9c:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c005fa0:	2900018d 	st.b	$r13,$r12,0
1c005fa4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fa8:	02abd18c 	addi.w	$r12,$r12,-1292(0xaf4)
1c005fac:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c005fb0:	2900018d 	st.b	$r13,$r12,0
1c005fb4:	5008b800 	b	2232(0x8b8) # 1c00686c <main+0xd68>
1c005fb8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005fbc:	028ec58c 	addi.w	$r12,$r12,945(0x3b1)
1c005fc0:	2a00018d 	ld.bu	$r13,$r12,0
1c005fc4:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005fc8:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c005ff0 <main+0x4ec>
1c005fcc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fd0:	02ab358c 	addi.w	$r12,$r12,-1331(0xacd)
1c005fd4:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005fd8:	2900018d 	st.b	$r13,$r12,0
1c005fdc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005fe0:	02aaf18c 	addi.w	$r12,$r12,-1348(0xabc)
1c005fe4:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005fe8:	2900018d 	st.b	$r13,$r12,0
1c005fec:	50088000 	b	2176(0x880) # 1c00686c <main+0xd68>
1c005ff0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ff4:	028de58c 	addi.w	$r12,$r12,889(0x379)
1c005ff8:	2a00018d 	ld.bu	$r13,$r12,0
1c005ffc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006000:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006028 <main+0x524>
1c006004:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006008:	02aa558c 	addi.w	$r12,$r12,-1387(0xa95)
1c00600c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006010:	2900018d 	st.b	$r13,$r12,0
1c006014:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006018:	02aa118c 	addi.w	$r12,$r12,-1404(0xa84)
1c00601c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006020:	2900018d 	st.b	$r13,$r12,0
1c006024:	50084800 	b	2120(0x848) # 1c00686c <main+0xd68>
1c006028:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00602c:	028d058c 	addi.w	$r12,$r12,833(0x341)
1c006030:	2a00018d 	ld.bu	$r13,$r12,0
1c006034:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006038:	5c0835ac 	bne	$r13,$r12,2100(0x834) # 1c00686c <main+0xd68>
1c00603c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006040:	02a9758c 	addi.w	$r12,$r12,-1443(0xa5d)
1c006044:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006048:	2900018d 	st.b	$r13,$r12,0
1c00604c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006050:	02a9318c 	addi.w	$r12,$r12,-1460(0xa4c)
1c006054:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006058:	2900018d 	st.b	$r13,$r12,0
1c00605c:	50081000 	b	2064(0x810) # 1c00686c <main+0xd68>
1c006060:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006064:	02a8e18c 	addi.w	$r12,$r12,-1480(0xa38)
1c006068:	2a00018d 	ld.bu	$r13,$r12,0
1c00606c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006070:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006088 <main+0x584>
1c006074:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c006078:	54086400 	bl	2148(0x864) # 1c0068dc <interface_display>
1c00607c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006080:	02a8718c 	addi.w	$r12,$r12,-1508(0xa1c)
1c006084:	29000180 	st.b	$r0,$r12,0
1c006088:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00608c:	028b858c 	addi.w	$r12,$r12,737(0x2e1)
1c006090:	2a00018d 	ld.bu	$r13,$r12,0
1c006094:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c006098:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0060c0 <main+0x5bc>
1c00609c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060a0:	02a7f58c 	addi.w	$r12,$r12,-1539(0x9fd)
1c0060a4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0060a8:	2900018d 	st.b	$r13,$r12,0
1c0060ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060b0:	02a7b18c 	addi.w	$r12,$r12,-1556(0x9ec)
1c0060b4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0060b8:	2900018d 	st.b	$r13,$r12,0
1c0060bc:	5007b800 	b	1976(0x7b8) # 1c006874 <main+0xd70>
1c0060c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060c4:	028aa58c 	addi.w	$r12,$r12,681(0x2a9)
1c0060c8:	2a00018d 	ld.bu	$r13,$r12,0
1c0060cc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0060d0:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0060f8 <main+0x5f4>
1c0060d4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060d8:	02a7158c 	addi.w	$r12,$r12,-1595(0x9c5)
1c0060dc:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c0060e0:	2900018d 	st.b	$r13,$r12,0
1c0060e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0060e8:	02a6d18c 	addi.w	$r12,$r12,-1612(0x9b4)
1c0060ec:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c0060f0:	2900018d 	st.b	$r13,$r12,0
1c0060f4:	50078000 	b	1920(0x780) # 1c006874 <main+0xd70>
1c0060f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0060fc:	0289c58c 	addi.w	$r12,$r12,625(0x271)
1c006100:	2a00018d 	ld.bu	$r13,$r12,0
1c006104:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c006108:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006130 <main+0x62c>
1c00610c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006110:	02a6358c 	addi.w	$r12,$r12,-1651(0x98d)
1c006114:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006118:	2900018d 	st.b	$r13,$r12,0
1c00611c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006120:	02a5f18c 	addi.w	$r12,$r12,-1668(0x97c)
1c006124:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006128:	2900018d 	st.b	$r13,$r12,0
1c00612c:	50074800 	b	1864(0x748) # 1c006874 <main+0xd70>
1c006130:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006134:	0288e58c 	addi.w	$r12,$r12,569(0x239)
1c006138:	2a00018d 	ld.bu	$r13,$r12,0
1c00613c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006140:	5c0735ac 	bne	$r13,$r12,1844(0x734) # 1c006874 <main+0xd70>
1c006144:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006148:	02a5558c 	addi.w	$r12,$r12,-1707(0x955)
1c00614c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006150:	2900018d 	st.b	$r13,$r12,0
1c006154:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006158:	02a5118c 	addi.w	$r12,$r12,-1724(0x944)
1c00615c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006160:	2900018d 	st.b	$r13,$r12,0
1c006164:	50071000 	b	1808(0x710) # 1c006874 <main+0xd70>
1c006168:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00616c:	02a4c18c 	addi.w	$r12,$r12,-1744(0x930)
1c006170:	2a00018d 	ld.bu	$r13,$r12,0
1c006174:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006178:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006190 <main+0x68c>
1c00617c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c006180:	54075c00 	bl	1884(0x75c) # 1c0068dc <interface_display>
1c006184:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006188:	02a4518c 	addi.w	$r12,$r12,-1772(0x914)
1c00618c:	29000180 	st.b	$r0,$r12,0
1c006190:	54171c00 	bl	5916(0x171c) # 1c0078ac <Key>
1c006194:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006198:	0287558c 	addi.w	$r12,$r12,469(0x1d5)
1c00619c:	2a00018d 	ld.bu	$r13,$r12,0
1c0061a0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0061a4:	5c06d9ac 	bne	$r13,$r12,1752(0x6d8) # 1c00687c <main+0xd78>
1c0061a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061ac:	02a3c58c 	addi.w	$r12,$r12,-1807(0x8f1)
1c0061b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0061b4:	2900018d 	st.b	$r13,$r12,0
1c0061b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061bc:	02a3818c 	addi.w	$r12,$r12,-1824(0x8e0)
1c0061c0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0061c4:	2900018d 	st.b	$r13,$r12,0
1c0061c8:	5006b400 	b	1716(0x6b4) # 1c00687c <main+0xd78>
1c0061cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061d0:	02a3318c 	addi.w	$r12,$r12,-1844(0x8cc)
1c0061d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0061d8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0061dc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0061f4 <main+0x6f0>
1c0061e0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0061e4:	5406f800 	bl	1784(0x6f8) # 1c0068dc <interface_display>
1c0061e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0061ec:	02a2c18c 	addi.w	$r12,$r12,-1872(0x8b0)
1c0061f0:	29000180 	st.b	$r0,$r12,0
1c0061f4:	540f9800 	bl	3992(0xf98) # 1c00718c <Write_ID>
1c0061f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0061fc:	0285c58c 	addi.w	$r12,$r12,369(0x171)
1c006200:	2a00018d 	ld.bu	$r13,$r12,0
1c006204:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006208:	5c067dac 	bne	$r13,$r12,1660(0x67c) # 1c006884 <main+0xd80>
1c00620c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006210:	02a2358c 	addi.w	$r12,$r12,-1907(0x88d)
1c006214:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006218:	2900018d 	st.b	$r13,$r12,0
1c00621c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006220:	02a1f18c 	addi.w	$r12,$r12,-1924(0x87c)
1c006224:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006228:	2900018d 	st.b	$r13,$r12,0
1c00622c:	50065800 	b	1624(0x658) # 1c006884 <main+0xd80>
1c006230:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006234:	02a1a18c 	addi.w	$r12,$r12,-1944(0x868)
1c006238:	2a00018d 	ld.bu	$r13,$r12,0
1c00623c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006240:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c006258 <main+0x754>
1c006244:	02803404 	addi.w	$r4,$r0,13(0xd)
1c006248:	54069400 	bl	1684(0x694) # 1c0068dc <interface_display>
1c00624c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006250:	02a1318c 	addi.w	$r12,$r12,-1972(0x84c)
1c006254:	29000180 	st.b	$r0,$r12,0
1c006258:	54197800 	bl	6520(0x1978) # 1c007bd0 <Add_Key>
1c00625c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006260:	0284358c 	addi.w	$r12,$r12,269(0x10d)
1c006264:	2a00018d 	ld.bu	$r13,$r12,0
1c006268:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00626c:	5c0621ac 	bne	$r13,$r12,1568(0x620) # 1c00688c <main+0xd88>
1c006270:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006274:	02a0a58c 	addi.w	$r12,$r12,-2007(0x829)
1c006278:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00627c:	2900018d 	st.b	$r13,$r12,0
1c006280:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006284:	02a0618c 	addi.w	$r12,$r12,-2024(0x818)
1c006288:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00628c:	2900018d 	st.b	$r13,$r12,0
1c006290:	5005fc00 	b	1532(0x5fc) # 1c00688c <main+0xd88>
1c006294:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c006298:	02a0118c 	addi.w	$r12,$r12,-2044(0x804)
1c00629c:	2a00018d 	ld.bu	$r13,$r12,0
1c0062a0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0062a4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0062bc <main+0x7b8>
1c0062a8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0062ac:	54063000 	bl	1584(0x630) # 1c0068dc <interface_display>
1c0062b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062b4:	029fa18c 	addi.w	$r12,$r12,2024(0x7e8)
1c0062b8:	29000180 	st.b	$r0,$r12,0
1c0062bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062c0:	0282b58c 	addi.w	$r12,$r12,173(0xad)
1c0062c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0062c8:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0062cc:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0062f4 <main+0x7f0>
1c0062d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062d4:	029f258c 	addi.w	$r12,$r12,1993(0x7c9)
1c0062d8:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0062dc:	2900018d 	st.b	$r13,$r12,0
1c0062e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062e4:	029ee18c 	addi.w	$r12,$r12,1976(0x7b8)
1c0062e8:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c0062ec:	2900018d 	st.b	$r13,$r12,0
1c0062f0:	5005a400 	b	1444(0x5a4) # 1c006894 <main+0xd90>
1c0062f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0062f8:	0281d58c 	addi.w	$r12,$r12,117(0x75)
1c0062fc:	2a00018d 	ld.bu	$r13,$r12,0
1c006300:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006304:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00632c <main+0x828>
1c006308:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00630c:	029e458c 	addi.w	$r12,$r12,1937(0x791)
1c006310:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006314:	2900018d 	st.b	$r13,$r12,0
1c006318:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00631c:	029e018c 	addi.w	$r12,$r12,1920(0x780)
1c006320:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c006324:	2900018d 	st.b	$r13,$r12,0
1c006328:	50056c00 	b	1388(0x56c) # 1c006894 <main+0xd90>
1c00632c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006330:	0280f58c 	addi.w	$r12,$r12,61(0x3d)
1c006334:	2a00018d 	ld.bu	$r13,$r12,0
1c006338:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00633c:	5c0559ac 	bne	$r13,$r12,1368(0x558) # 1c006894 <main+0xd90>
1c006340:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006344:	029d658c 	addi.w	$r12,$r12,1881(0x759)
1c006348:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00634c:	2900018d 	st.b	$r13,$r12,0
1c006350:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006354:	029d218c 	addi.w	$r12,$r12,1864(0x748)
1c006358:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00635c:	2900018d 	st.b	$r13,$r12,0
1c006360:	50053400 	b	1332(0x534) # 1c006894 <main+0xd90>
1c006364:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006368:	029cd18c 	addi.w	$r12,$r12,1844(0x734)
1c00636c:	2a00018d 	ld.bu	$r13,$r12,0
1c006370:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006374:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006390 <main+0x88c>
1c006378:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00637c:	54056000 	bl	1376(0x560) # 1c0068dc <interface_display>
1c006380:	541b2000 	bl	6944(0x1b20) # 1c007ea0 <Delete_key>
1c006384:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006388:	029c518c 	addi.w	$r12,$r12,1812(0x714)
1c00638c:	29000180 	st.b	$r0,$r12,0
1c006390:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006394:	02bf658c 	addi.w	$r12,$r12,-39(0xfd9)
1c006398:	2a00018d 	ld.bu	$r13,$r12,0
1c00639c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0063a0:	5c04fdac 	bne	$r13,$r12,1276(0x4fc) # 1c00689c <main+0xd98>
1c0063a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063a8:	029bd58c 	addi.w	$r12,$r12,1781(0x6f5)
1c0063ac:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0063b0:	2900018d 	st.b	$r13,$r12,0
1c0063b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063b8:	029b918c 	addi.w	$r12,$r12,1764(0x6e4)
1c0063bc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0063c0:	2900018d 	st.b	$r13,$r12,0
1c0063c4:	5004d800 	b	1240(0x4d8) # 1c00689c <main+0xd98>
1c0063c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063cc:	029b418c 	addi.w	$r12,$r12,1744(0x6d0)
1c0063d0:	2a00018d 	ld.bu	$r13,$r12,0
1c0063d4:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0063d8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0063f0 <main+0x8ec>
1c0063dc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0063e0:	5404fc00 	bl	1276(0x4fc) # 1c0068dc <interface_display>
1c0063e4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063e8:	029ad18c 	addi.w	$r12,$r12,1716(0x6b4)
1c0063ec:	29000180 	st.b	$r0,$r12,0
1c0063f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0063f4:	02bde58c 	addi.w	$r12,$r12,-135(0xf79)
1c0063f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0063fc:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c006400:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006428 <main+0x924>
1c006404:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006408:	029a558c 	addi.w	$r12,$r12,1685(0x695)
1c00640c:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006410:	2900018d 	st.b	$r13,$r12,0
1c006414:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006418:	029a118c 	addi.w	$r12,$r12,1668(0x684)
1c00641c:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c006420:	2900018d 	st.b	$r13,$r12,0
1c006424:	50048000 	b	1152(0x480) # 1c0068a4 <main+0xda0>
1c006428:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00642c:	02bd058c 	addi.w	$r12,$r12,-191(0xf41)
1c006430:	2a00018d 	ld.bu	$r13,$r12,0
1c006434:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006438:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006460 <main+0x95c>
1c00643c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006440:	0299758c 	addi.w	$r12,$r12,1629(0x65d)
1c006444:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006448:	2900018d 	st.b	$r13,$r12,0
1c00644c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006450:	0299318c 	addi.w	$r12,$r12,1612(0x64c)
1c006454:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006458:	2900018d 	st.b	$r13,$r12,0
1c00645c:	50044800 	b	1096(0x448) # 1c0068a4 <main+0xda0>
1c006460:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006464:	02bc258c 	addi.w	$r12,$r12,-247(0xf09)
1c006468:	2a00018d 	ld.bu	$r13,$r12,0
1c00646c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006470:	5c0435ac 	bne	$r13,$r12,1076(0x434) # 1c0068a4 <main+0xda0>
1c006474:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006478:	0298958c 	addi.w	$r12,$r12,1573(0x625)
1c00647c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006480:	2900018d 	st.b	$r13,$r12,0
1c006484:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006488:	0298518c 	addi.w	$r12,$r12,1556(0x614)
1c00648c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006490:	2900018d 	st.b	$r13,$r12,0
1c006494:	50041000 	b	1040(0x410) # 1c0068a4 <main+0xda0>
1c006498:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00649c:	0298018c 	addi.w	$r12,$r12,1536(0x600)
1c0064a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0064a4:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0064a8:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0064c4 <main+0x9c0>
1c0064ac:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0064b0:	54042c00 	bl	1068(0x42c) # 1c0068dc <interface_display>
1c0064b4:	540e1800 	bl	3608(0xe18) # 1c0072cc <Delate_ID>
1c0064b8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064bc:	0297818c 	addi.w	$r12,$r12,1504(0x5e0)
1c0064c0:	29000180 	st.b	$r0,$r12,0
1c0064c4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0064c8:	02ba958c 	addi.w	$r12,$r12,-347(0xea5)
1c0064cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0064d0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0064d4:	5c03d9ac 	bne	$r13,$r12,984(0x3d8) # 1c0068ac <main+0xda8>
1c0064d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064dc:	0297058c 	addi.w	$r12,$r12,1473(0x5c1)
1c0064e0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0064e4:	2900018d 	st.b	$r13,$r12,0
1c0064e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0064ec:	0296c18c 	addi.w	$r12,$r12,1456(0x5b0)
1c0064f0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0064f4:	2900018d 	st.b	$r13,$r12,0
1c0064f8:	5003b400 	b	948(0x3b4) # 1c0068ac <main+0xda8>
1c0064fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006500:	0296718c 	addi.w	$r12,$r12,1436(0x59c)
1c006504:	2a00018d 	ld.bu	$r13,$r12,0
1c006508:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00650c:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c006538 <main+0xa34>
1c006510:	02804804 	addi.w	$r4,$r0,18(0x12)
1c006514:	5403c800 	bl	968(0x3c8) # 1c0068dc <interface_display>
1c006518:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00651c:	0296058c 	addi.w	$r12,$r12,1409(0x581)
1c006520:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006524:	2900018d 	st.b	$r13,$r12,0
1c006528:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00652c:	0295c18c 	addi.w	$r12,$r12,1392(0x570)
1c006530:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006534:	2900018d 	st.b	$r13,$r12,0
1c006538:	57ccbbff 	bl	-13128(0xfffccb8) # 1c0031f0 <press_FR>
1c00653c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006540:	02b8b58c 	addi.w	$r12,$r12,-467(0xe2d)
1c006544:	2a00018d 	ld.bu	$r13,$r12,0
1c006548:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00654c:	5c0369ac 	bne	$r13,$r12,872(0x368) # 1c0068b4 <main+0xdb0>
1c006550:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006554:	0295258c 	addi.w	$r12,$r12,1353(0x549)
1c006558:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00655c:	2900018d 	st.b	$r13,$r12,0
1c006560:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006564:	0294e18c 	addi.w	$r12,$r12,1336(0x538)
1c006568:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00656c:	2900018d 	st.b	$r13,$r12,0
1c006570:	50034400 	b	836(0x344) # 1c0068b4 <main+0xdb0>
1c006574:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006578:	0294918c 	addi.w	$r12,$r12,1316(0x524)
1c00657c:	2a00018d 	ld.bu	$r13,$r12,0
1c006580:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006584:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00659c <main+0xa98>
1c006588:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c00658c:	54035000 	bl	848(0x350) # 1c0068dc <interface_display>
1c006590:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006594:	0294218c 	addi.w	$r12,$r12,1288(0x508)
1c006598:	29000180 	st.b	$r0,$r12,0
1c00659c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065a0:	02b7358c 	addi.w	$r12,$r12,-563(0xdcd)
1c0065a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0065a8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0065ac:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c0065d4 <main+0xad0>
1c0065b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065b4:	0293a58c 	addi.w	$r12,$r12,1257(0x4e9)
1c0065b8:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0065bc:	2900018d 	st.b	$r13,$r12,0
1c0065c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065c4:	0293618c 	addi.w	$r12,$r12,1240(0x4d8)
1c0065c8:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c0065cc:	2900018d 	st.b	$r13,$r12,0
1c0065d0:	5002ec00 	b	748(0x2ec) # 1c0068bc <main+0xdb8>
1c0065d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0065d8:	02b6558c 	addi.w	$r12,$r12,-619(0xd95)
1c0065dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0065e0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0065e4:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00660c <main+0xb08>
1c0065e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065ec:	0292c58c 	addi.w	$r12,$r12,1201(0x4b1)
1c0065f0:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c0065f4:	2900018d 	st.b	$r13,$r12,0
1c0065f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0065fc:	0292818c 	addi.w	$r12,$r12,1184(0x4a0)
1c006600:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c006604:	2900018d 	st.b	$r13,$r12,0
1c006608:	5002b400 	b	692(0x2b4) # 1c0068bc <main+0xdb8>
1c00660c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006610:	02b5758c 	addi.w	$r12,$r12,-675(0xd5d)
1c006614:	2a00018d 	ld.bu	$r13,$r12,0
1c006618:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00661c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006644 <main+0xb40>
1c006620:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006624:	0291e58c 	addi.w	$r12,$r12,1145(0x479)
1c006628:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00662c:	2900018d 	st.b	$r13,$r12,0
1c006630:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006634:	0291a18c 	addi.w	$r12,$r12,1128(0x468)
1c006638:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00663c:	2900018d 	st.b	$r13,$r12,0
1c006640:	50027c00 	b	636(0x27c) # 1c0068bc <main+0xdb8>
1c006644:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006648:	02b4958c 	addi.w	$r12,$r12,-731(0xd25)
1c00664c:	2a00018d 	ld.bu	$r13,$r12,0
1c006650:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006654:	5c0269ac 	bne	$r13,$r12,616(0x268) # 1c0068bc <main+0xdb8>
1c006658:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00665c:	0291058c 	addi.w	$r12,$r12,1089(0x441)
1c006660:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006664:	2900018d 	st.b	$r13,$r12,0
1c006668:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00666c:	0290c18c 	addi.w	$r12,$r12,1072(0x430)
1c006670:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006674:	2900018d 	st.b	$r13,$r12,0
1c006678:	50024400 	b	580(0x244) # 1c0068bc <main+0xdb8>
1c00667c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006680:	0290718c 	addi.w	$r12,$r12,1052(0x41c)
1c006684:	2a00018d 	ld.bu	$r13,$r12,0
1c006688:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c00668c:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c0066b8 <main+0xbb4>
1c006690:	02805404 	addi.w	$r4,$r0,21(0x15)
1c006694:	54024800 	bl	584(0x248) # 1c0068dc <interface_display>
1c006698:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00669c:	0290058c 	addi.w	$r12,$r12,1025(0x401)
1c0066a0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0066a4:	2900018d 	st.b	$r13,$r12,0
1c0066a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066ac:	028fc18c 	addi.w	$r12,$r12,1008(0x3f0)
1c0066b0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0066b4:	2900018d 	st.b	$r13,$r12,0
1c0066b8:	57c633ff 	bl	-14800(0xfffc630) # 1c002ce8 <Add_FR>
1c0066bc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0066c0:	02b2b58c 	addi.w	$r12,$r12,-851(0xcad)
1c0066c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0066c8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0066cc:	5c01f9ac 	bne	$r13,$r12,504(0x1f8) # 1c0068c4 <main+0xdc0>
1c0066d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066d4:	028f258c 	addi.w	$r12,$r12,969(0x3c9)
1c0066d8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0066dc:	2900018d 	st.b	$r13,$r12,0
1c0066e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066e4:	028ee18c 	addi.w	$r12,$r12,952(0x3b8)
1c0066e8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0066ec:	2900018d 	st.b	$r13,$r12,0
1c0066f0:	5001d400 	b	468(0x1d4) # 1c0068c4 <main+0xdc0>
1c0066f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066f8:	028e918c 	addi.w	$r12,$r12,932(0x3a4)
1c0066fc:	2a00018d 	ld.bu	$r13,$r12,0
1c006700:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c006704:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00671c <main+0xc18>
1c006708:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00670c:	5401d000 	bl	464(0x1d0) # 1c0068dc <interface_display>
1c006710:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006714:	028e218c 	addi.w	$r12,$r12,904(0x388)
1c006718:	29000180 	st.b	$r0,$r12,0
1c00671c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006720:	02b1358c 	addi.w	$r12,$r12,-947(0xc4d)
1c006724:	2a00018d 	ld.bu	$r13,$r12,0
1c006728:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00672c:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006754 <main+0xc50>
1c006730:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006734:	028da58c 	addi.w	$r12,$r12,873(0x369)
1c006738:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c00673c:	2900018d 	st.b	$r13,$r12,0
1c006740:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006744:	028d618c 	addi.w	$r12,$r12,856(0x358)
1c006748:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c00674c:	2900018d 	st.b	$r13,$r12,0
1c006750:	50017c00 	b	380(0x17c) # 1c0068cc <main+0xdc8>
1c006754:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006758:	02b0558c 	addi.w	$r12,$r12,-1003(0xc15)
1c00675c:	2a00018d 	ld.bu	$r13,$r12,0
1c006760:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c006764:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c00678c <main+0xc88>
1c006768:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00676c:	028cc58c 	addi.w	$r12,$r12,817(0x331)
1c006770:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006774:	2900018d 	st.b	$r13,$r12,0
1c006778:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00677c:	028c818c 	addi.w	$r12,$r12,800(0x320)
1c006780:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006784:	2900018d 	st.b	$r13,$r12,0
1c006788:	50014400 	b	324(0x144) # 1c0068cc <main+0xdc8>
1c00678c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006790:	02af758c 	addi.w	$r12,$r12,-1059(0xbdd)
1c006794:	2a00018d 	ld.bu	$r13,$r12,0
1c006798:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00679c:	5c0131ac 	bne	$r13,$r12,304(0x130) # 1c0068cc <main+0xdc8>
1c0067a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067a4:	028be58c 	addi.w	$r12,$r12,761(0x2f9)
1c0067a8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0067ac:	2900018d 	st.b	$r13,$r12,0
1c0067b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067b4:	028ba18c 	addi.w	$r12,$r12,744(0x2e8)
1c0067b8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0067bc:	2900018d 	st.b	$r13,$r12,0
1c0067c0:	50010c00 	b	268(0x10c) # 1c0068cc <main+0xdc8>
1c0067c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067c8:	028b518c 	addi.w	$r12,$r12,724(0x2d4)
1c0067cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0067d0:	02804c0c 	addi.w	$r12,$r0,19(0x13)
1c0067d4:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c006804 <main+0xd00>
1c0067d8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0067dc:	54010000 	bl	256(0x100) # 1c0068dc <interface_display>
1c0067e0:	57cbafff 	bl	-13396(0xfffcbac) # 1c00338c <Del_FR_Lib>
1c0067e4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067e8:	028ad58c 	addi.w	$r12,$r12,693(0x2b5)
1c0067ec:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0067f0:	2900018d 	st.b	$r13,$r12,0
1c0067f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0067f8:	028a918c 	addi.w	$r12,$r12,676(0x2a4)
1c0067fc:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006800:	2900018d 	st.b	$r13,$r12,0
1c006804:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006808:	02ad958c 	addi.w	$r12,$r12,-1179(0xb65)
1c00680c:	2a00018d 	ld.bu	$r13,$r12,0
1c006810:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c006814:	5c00c1ac 	bne	$r13,$r12,192(0xc0) # 1c0068d4 <main+0xdd0>
1c006818:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00681c:	028a058c 	addi.w	$r12,$r12,641(0x281)
1c006820:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006824:	2900018d 	st.b	$r13,$r12,0
1c006828:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00682c:	0289c18c 	addi.w	$r12,$r12,624(0x270)
1c006830:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c006834:	2900018d 	st.b	$r13,$r12,0
1c006838:	50009c00 	b	156(0x9c) # 1c0068d4 <main+0xdd0>
1c00683c:	03400000 	andi	$r0,$r0,0x0
1c006840:	53f35bff 	b	-3240(0xffff358) # 1c005b98 <main+0x94>
1c006844:	03400000 	andi	$r0,$r0,0x0
1c006848:	53f353ff 	b	-3248(0xffff350) # 1c005b98 <main+0x94>
1c00684c:	03400000 	andi	$r0,$r0,0x0
1c006850:	53f34bff 	b	-3256(0xffff348) # 1c005b98 <main+0x94>
1c006854:	03400000 	andi	$r0,$r0,0x0
1c006858:	53f343ff 	b	-3264(0xffff340) # 1c005b98 <main+0x94>
1c00685c:	03400000 	andi	$r0,$r0,0x0
1c006860:	53f33bff 	b	-3272(0xffff338) # 1c005b98 <main+0x94>
1c006864:	03400000 	andi	$r0,$r0,0x0
1c006868:	53f333ff 	b	-3280(0xffff330) # 1c005b98 <main+0x94>
1c00686c:	03400000 	andi	$r0,$r0,0x0
1c006870:	53f32bff 	b	-3288(0xffff328) # 1c005b98 <main+0x94>
1c006874:	03400000 	andi	$r0,$r0,0x0
1c006878:	53f323ff 	b	-3296(0xffff320) # 1c005b98 <main+0x94>
1c00687c:	03400000 	andi	$r0,$r0,0x0
1c006880:	53f31bff 	b	-3304(0xffff318) # 1c005b98 <main+0x94>
1c006884:	03400000 	andi	$r0,$r0,0x0
1c006888:	53f313ff 	b	-3312(0xffff310) # 1c005b98 <main+0x94>
1c00688c:	03400000 	andi	$r0,$r0,0x0
1c006890:	53f30bff 	b	-3320(0xffff308) # 1c005b98 <main+0x94>
1c006894:	03400000 	andi	$r0,$r0,0x0
1c006898:	53f303ff 	b	-3328(0xffff300) # 1c005b98 <main+0x94>
1c00689c:	03400000 	andi	$r0,$r0,0x0
1c0068a0:	53f2fbff 	b	-3336(0xffff2f8) # 1c005b98 <main+0x94>
1c0068a4:	03400000 	andi	$r0,$r0,0x0
1c0068a8:	53f2f3ff 	b	-3344(0xffff2f0) # 1c005b98 <main+0x94>
1c0068ac:	03400000 	andi	$r0,$r0,0x0
1c0068b0:	53f2ebff 	b	-3352(0xffff2e8) # 1c005b98 <main+0x94>
1c0068b4:	03400000 	andi	$r0,$r0,0x0
1c0068b8:	53f2e3ff 	b	-3360(0xffff2e0) # 1c005b98 <main+0x94>
1c0068bc:	03400000 	andi	$r0,$r0,0x0
1c0068c0:	53f2dbff 	b	-3368(0xffff2d8) # 1c005b98 <main+0x94>
1c0068c4:	03400000 	andi	$r0,$r0,0x0
1c0068c8:	53f2d3ff 	b	-3376(0xffff2d0) # 1c005b98 <main+0x94>
1c0068cc:	03400000 	andi	$r0,$r0,0x0
1c0068d0:	53f2cbff 	b	-3384(0xffff2c8) # 1c005b98 <main+0x94>
1c0068d4:	03400000 	andi	$r0,$r0,0x0
1c0068d8:	53f2c3ff 	b	-3392(0xffff2c0) # 1c005b98 <main+0x94>

1c0068dc <interface_display>:
interface_display():
1c0068dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0068e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0068e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0068e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0068ec:	0015008c 	move	$r12,$r4
1c0068f0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0068f4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0068f8:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c0068fc:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c007178 <interface_display+0x89c>
1c006900:	0040898d 	slli.w	$r13,$r12,0x2
1c006904:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c006908:	0282818c 	addi.w	$r12,$r12,160(0xa0)
1c00690c:	001031ac 	add.w	$r12,$r13,$r12
1c006910:	2880018c 	ld.w	$r12,$r12,0
1c006914:	4c000180 	jirl	$r0,$r12,0
1c006918:	57db57ff 	bl	-9388(0xfffdb54) # 1c00446c <OLED_CLS>
1c00691c:	1c000068 	pcaddu12i	$r8,3(0x3)
1c006920:	02bb0108 	addi.w	$r8,$r8,-320(0xec0)
1c006924:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006928:	02814006 	addi.w	$r6,$r0,80(0x50)
1c00692c:	00150005 	move	$r5,$r0
1c006930:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006934:	57df17ff 	bl	-8428(0xfffdf14) # 1c004848 <OLED_DrawBMP>
1c006938:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c00693c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006940:	00150004 	move	$r4,$r0
1c006944:	57dd87ff 	bl	-8828(0xfffdd84) # 1c0046c8 <OLED_ShowCN>
1c006948:	02802006 	addi.w	$r6,$r0,8(0x8)
1c00694c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006950:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006954:	57dd77ff 	bl	-8844(0xfffdd74) # 1c0046c8 <OLED_ShowCN>
1c006958:	02803406 	addi.w	$r6,$r0,13(0xd)
1c00695c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006960:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c006964:	57dd67ff 	bl	-8860(0xfffdd64) # 1c0046c8 <OLED_ShowCN>
1c006968:	02803806 	addi.w	$r6,$r0,14(0xe)
1c00696c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006970:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c006974:	57dd57ff 	bl	-8876(0xfffdd54) # 1c0046c8 <OLED_ShowCN>
1c006978:	50080000 	b	2048(0x800) # 1c007178 <interface_display+0x89c>
1c00697c:	57daf3ff 	bl	-9488(0xfffdaf0) # 1c00446c <OLED_CLS>
1c006980:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c006984:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c006988:	00150005 	move	$r5,$r0
1c00698c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006990:	57de2fff 	bl	-8660(0xfffde2c) # 1c0047bc <OLED_ShowCN_STR>
1c006994:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006998:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00699c:	02bfe0c6 	addi.w	$r6,$r6,-8(0xff8)
1c0069a0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0069a4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0069a8:	57daf3ff 	bl	-9488(0xfffdaf0) # 1c004498 <OLED_ShowStr>
1c0069ac:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0069b0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0069b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0069b8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0069bc:	57de03ff 	bl	-8704(0xfffde00) # 1c0047bc <OLED_ShowCN_STR>
1c0069c0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0069c8:	02bf40c6 	addi.w	$r6,$r6,-48(0xfd0)
1c0069cc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069d0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0069d4:	57dac7ff 	bl	-9532(0xfffdac4) # 1c004498 <OLED_ShowStr>
1c0069d8:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0069dc:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0069e0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0069e4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0069e8:	57ddd7ff 	bl	-8748(0xfffddd4) # 1c0047bc <OLED_ShowCN_STR>
1c0069ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0069f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0069f4:	02bea0c6 	addi.w	$r6,$r6,-88(0xfa8)
1c0069f8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0069fc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a00:	57da9bff 	bl	-9576(0xfffda98) # 1c004498 <OLED_ShowStr>
1c006a04:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a08:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006a0c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a10:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a14:	57ddabff 	bl	-8792(0xfffdda8) # 1c0047bc <OLED_ShowCN_STR>
1c006a18:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a1c:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c006a20:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006a24:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006a28:	57dd97ff 	bl	-8812(0xfffdd94) # 1c0047bc <OLED_ShowCN_STR>
1c006a2c:	50074c00 	b	1868(0x74c) # 1c007178 <interface_display+0x89c>
1c006a30:	57da3fff 	bl	-9668(0xfffda3c) # 1c00446c <OLED_CLS>
1c006a34:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006a38:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006a3c:	00150005 	move	$r5,$r0
1c006a40:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a44:	57dd7bff 	bl	-8840(0xfffdd78) # 1c0047bc <OLED_ShowCN_STR>
1c006a48:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a4c:	02803406 	addi.w	$r6,$r0,13(0xd)
1c006a50:	00150005 	move	$r5,$r0
1c006a54:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006a58:	57dd67ff 	bl	-8860(0xfffdd64) # 1c0047bc <OLED_ShowCN_STR>
1c006a5c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a60:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006a64:	02bcc0c6 	addi.w	$r6,$r6,-208(0xf30)
1c006a68:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a6c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006a70:	57da2bff 	bl	-9688(0xfffda28) # 1c004498 <OLED_ShowStr>
1c006a74:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006a78:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a7c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006a80:	57dc4bff 	bl	-9144(0xfffdc48) # 1c0046c8 <OLED_ShowCN>
1c006a84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a88:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006a8c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006a90:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006a94:	57dd2bff 	bl	-8920(0xfffdd28) # 1c0047bc <OLED_ShowCN_STR>
1c006a98:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006a9c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006aa0:	02bbe0c6 	addi.w	$r6,$r6,-264(0xef8)
1c006aa4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006aa8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006aac:	57d9efff 	bl	-9748(0xfffd9ec) # 1c004498 <OLED_ShowStr>
1c006ab0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ab4:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006ab8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006abc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006ac0:	57dcffff 	bl	-8964(0xfffdcfc) # 1c0047bc <OLED_ShowCN_STR>
1c006ac4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ac8:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006acc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ad0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006ad4:	57dcebff 	bl	-8984(0xfffdce8) # 1c0047bc <OLED_ShowCN_STR>
1c006ad8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006adc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006ae0:	02baf0c6 	addi.w	$r6,$r6,-324(0xebc)
1c006ae4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006ae8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006aec:	57d9afff 	bl	-9812(0xfffd9ac) # 1c004498 <OLED_ShowStr>
1c006af0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006af4:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006af8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006afc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006b00:	57dcbfff 	bl	-9028(0xfffdcbc) # 1c0047bc <OLED_ShowCN_STR>
1c006b04:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b08:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006b0c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b10:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006b14:	57dcabff 	bl	-9048(0xfffdca8) # 1c0047bc <OLED_ShowCN_STR>
1c006b18:	50066000 	b	1632(0x660) # 1c007178 <interface_display+0x89c>
1c006b1c:	57d953ff 	bl	-9904(0xfffd950) # 1c00446c <OLED_CLS>
1c006b20:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006b24:	00150005 	move	$r5,$r0
1c006b28:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006b2c:	57db9fff 	bl	-9316(0xfffdb9c) # 1c0046c8 <OLED_ShowCN>
1c006b30:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b34:	02808406 	addi.w	$r6,$r0,33(0x21)
1c006b38:	00150005 	move	$r5,$r0
1c006b3c:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c006b40:	57dc7fff 	bl	-9092(0xfffdc7c) # 1c0047bc <OLED_ShowCN_STR>
1c006b44:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006b48:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006b4c:	00150005 	move	$r5,$r0
1c006b50:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c006b54:	57dc6bff 	bl	-9112(0xfffdc68) # 1c0047bc <OLED_ShowCN_STR>
1c006b58:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b5c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006b60:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b64:	00150004 	move	$r4,$r0
1c006b68:	57dc57ff 	bl	-9132(0xfffdc54) # 1c0047bc <OLED_ShowCN_STR>
1c006b6c:	50060c00 	b	1548(0x60c) # 1c007178 <interface_display+0x89c>
1c006b70:	57d8ffff 	bl	-9988(0xfffd8fc) # 1c00446c <OLED_CLS>
1c006b74:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006b78:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006b7c:	00150005 	move	$r5,$r0
1c006b80:	02805004 	addi.w	$r4,$r0,20(0x14)
1c006b84:	57dc3bff 	bl	-9160(0xfffdc38) # 1c0047bc <OLED_ShowCN_STR>
1c006b88:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006b8c:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006b90:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b94:	00150004 	move	$r4,$r0
1c006b98:	57dc27ff 	bl	-9180(0xfffdc24) # 1c0047bc <OLED_ShowCN_STR>
1c006b9c:	5005dc00 	b	1500(0x5dc) # 1c007178 <interface_display+0x89c>
1c006ba0:	57d8cfff 	bl	-10036(0xfffd8cc) # 1c00446c <OLED_CLS>
1c006ba4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006ba8:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c006bac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006bb0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006bb4:	57dc0bff 	bl	-9208(0xfffdc08) # 1c0047bc <OLED_ShowCN_STR>
1c006bb8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006bbc:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c006bc0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006bc4:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c006bc8:	57dbf7ff 	bl	-9228(0xfffdbf4) # 1c0047bc <OLED_ShowCN_STR>
1c006bcc:	5005ac00 	b	1452(0x5ac) # 1c007178 <interface_display+0x89c>
1c006bd0:	57d89fff 	bl	-10084(0xfffd89c) # 1c00446c <OLED_CLS>
1c006bd4:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006bd8:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006bdc:	00150005 	move	$r5,$r0
1c006be0:	00150004 	move	$r4,$r0
1c006be4:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c0047bc <OLED_ShowCN_STR>
1c006be8:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006bec:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006bf0:	00150005 	move	$r5,$r0
1c006bf4:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c006bf8:	57dbc7ff 	bl	-9276(0xfffdbc4) # 1c0047bc <OLED_ShowCN_STR>
1c006bfc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c00:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006c04:	00150005 	move	$r5,$r0
1c006c08:	02818004 	addi.w	$r4,$r0,96(0x60)
1c006c0c:	57dbb3ff 	bl	-9296(0xfffdbb0) # 1c0047bc <OLED_ShowCN_STR>
1c006c10:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c14:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006c18:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006c1c:	00150004 	move	$r4,$r0
1c006c20:	57db9fff 	bl	-9316(0xfffdb9c) # 1c0047bc <OLED_ShowCN_STR>
1c006c24:	50055400 	b	1364(0x554) # 1c007178 <interface_display+0x89c>
1c006c28:	57d847ff 	bl	-10172(0xfffd844) # 1c00446c <OLED_CLS>
1c006c2c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006c30:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c006c34:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c38:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006c3c:	57db83ff 	bl	-9344(0xfffdb80) # 1c0047bc <OLED_ShowCN_STR>
1c006c40:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c006c44:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c48:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c006c4c:	57da7fff 	bl	-9604(0xfffda7c) # 1c0046c8 <OLED_ShowCN>
1c006c50:	02808006 	addi.w	$r6,$r0,32(0x20)
1c006c54:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c58:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c006c5c:	57da6fff 	bl	-9620(0xfffda6c) # 1c0046c8 <OLED_ShowCN>
1c006c60:	50051800 	b	1304(0x518) # 1c007178 <interface_display+0x89c>
1c006c64:	57d80bff 	bl	-10232(0xfffd808) # 1c00446c <OLED_CLS>
1c006c68:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006c6c:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c006c70:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006c74:	02808004 	addi.w	$r4,$r0,32(0x20)
1c006c78:	57db47ff 	bl	-9404(0xfffdb44) # 1c0047bc <OLED_ShowCN_STR>
1c006c7c:	5004fc00 	b	1276(0x4fc) # 1c007178 <interface_display+0x89c>
1c006c80:	57d7efff 	bl	-10260(0xfffd7ec) # 1c00446c <OLED_CLS>
1c006c84:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006c88:	00150005 	move	$r5,$r0
1c006c8c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006c90:	57da3bff 	bl	-9672(0xfffda38) # 1c0046c8 <OLED_ShowCN>
1c006c94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c98:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006c9c:	00150005 	move	$r5,$r0
1c006ca0:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006ca4:	57db1bff 	bl	-9448(0xfffdb18) # 1c0047bc <OLED_ShowCN_STR>
1c006ca8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cb0:	02b390c6 	addi.w	$r6,$r6,-796(0xce4)
1c006cb4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006cb8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006cbc:	57d7dfff 	bl	-10276(0xfffd7dc) # 1c004498 <OLED_ShowStr>
1c006cc0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cc4:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006cc8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ccc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006cd0:	57daefff 	bl	-9492(0xfffdaec) # 1c0047bc <OLED_ShowCN_STR>
1c006cd4:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006cd8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006cdc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006ce0:	57d9ebff 	bl	-9752(0xfffd9e8) # 1c0046c8 <OLED_ShowCN>
1c006ce4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ce8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cec:	02b2b0c6 	addi.w	$r6,$r6,-852(0xcac)
1c006cf0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006cf4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006cf8:	57d7a3ff 	bl	-10336(0xfffd7a0) # 1c004498 <OLED_ShowStr>
1c006cfc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d00:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006d04:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d08:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d0c:	57dab3ff 	bl	-9552(0xfffdab0) # 1c0047bc <OLED_ShowCN_STR>
1c006d10:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006d14:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d18:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006d1c:	57d9afff 	bl	-9812(0xfffd9ac) # 1c0046c8 <OLED_ShowCN>
1c006d20:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006d24:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006d28:	02816004 	addi.w	$r4,$r0,88(0x58)
1c006d2c:	57d99fff 	bl	-9828(0xfffd99c) # 1c0046c8 <OLED_ShowCN>
1c006d30:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d34:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006d38:	02b190c6 	addi.w	$r6,$r6,-924(0xc64)
1c006d3c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006d40:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006d44:	57d757ff 	bl	-10412(0xfffd754) # 1c004498 <OLED_ShowStr>
1c006d48:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d4c:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006d50:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006d54:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d58:	57da67ff 	bl	-9628(0xfffda64) # 1c0047bc <OLED_ShowCN_STR>
1c006d5c:	50041c00 	b	1052(0x41c) # 1c007178 <interface_display+0x89c>
1c006d60:	57d70fff 	bl	-10484(0xfffd70c) # 1c00446c <OLED_CLS>
1c006d64:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d68:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006d6c:	00150005 	move	$r5,$r0
1c006d70:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006d74:	57da4bff 	bl	-9656(0xfffda48) # 1c0047bc <OLED_ShowCN_STR>
1c006d78:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d7c:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006d80:	00150005 	move	$r5,$r0
1c006d84:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006d88:	57da37ff 	bl	-9676(0xfffda34) # 1c0047bc <OLED_ShowCN_STR>
1c006d8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d90:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006d94:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c006d98:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006d9c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006da0:	57d6fbff 	bl	-10504(0xfffd6f8) # 1c004498 <OLED_ShowStr>
1c006da4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006da8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006dac:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006db0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006db4:	57da0bff 	bl	-9720(0xfffda08) # 1c0047bc <OLED_ShowCN_STR>
1c006db8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006dbc:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006dc0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006dc4:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006dc8:	57d9f7ff 	bl	-9740(0xfffd9f4) # 1c0047bc <OLED_ShowCN_STR>
1c006dcc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006dd0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006dd4:	02af10c6 	addi.w	$r6,$r6,-1084(0xbc4)
1c006dd8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006ddc:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006de0:	57d6bbff 	bl	-10568(0xfffd6b8) # 1c004498 <OLED_ShowStr>
1c006de4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006de8:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006dec:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006df0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006df4:	57d9cbff 	bl	-9784(0xfffd9c8) # 1c0047bc <OLED_ShowCN_STR>
1c006df8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006dfc:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006e00:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006e04:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006e08:	57d9b7ff 	bl	-9804(0xfffd9b4) # 1c0047bc <OLED_ShowCN_STR>
1c006e0c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006e10:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006e14:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c006e18:	57d8b3ff 	bl	-10064(0xfffd8b0) # 1c0046c8 <OLED_ShowCN>
1c006e1c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e20:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006e24:	02ade0c6 	addi.w	$r6,$r6,-1160(0xb78)
1c006e28:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006e2c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006e30:	57d66bff 	bl	-10648(0xfffd668) # 1c004498 <OLED_ShowStr>
1c006e34:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e38:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006e3c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006e40:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006e44:	57d97bff 	bl	-9864(0xfffd978) # 1c0047bc <OLED_ShowCN_STR>
1c006e48:	50033000 	b	816(0x330) # 1c007178 <interface_display+0x89c>
1c006e4c:	57d623ff 	bl	-10720(0xfffd620) # 1c00446c <OLED_CLS>
1c006e50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e54:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006e58:	00150005 	move	$r5,$r0
1c006e5c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006e60:	57d95fff 	bl	-9892(0xfffd95c) # 1c0047bc <OLED_ShowCN_STR>
1c006e64:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006e68:	00150005 	move	$r5,$r0
1c006e6c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006e70:	57d85bff 	bl	-10152(0xfffd858) # 1c0046c8 <OLED_ShowCN>
1c006e74:	50030400 	b	772(0x304) # 1c007178 <interface_display+0x89c>
1c006e78:	57d5f7ff 	bl	-10764(0xfffd5f4) # 1c00446c <OLED_CLS>
1c006e7c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e80:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006e84:	00150005 	move	$r5,$r0
1c006e88:	02809004 	addi.w	$r4,$r0,36(0x24)
1c006e8c:	57d933ff 	bl	-9936(0xfffd930) # 1c0047bc <OLED_ShowCN_STR>
1c006e90:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006e94:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006e98:	00150005 	move	$r5,$r0
1c006e9c:	02811004 	addi.w	$r4,$r0,68(0x44)
1c006ea0:	57d91fff 	bl	-9956(0xfffd91c) # 1c0047bc <OLED_ShowCN_STR>
1c006ea4:	5002d400 	b	724(0x2d4) # 1c007178 <interface_display+0x89c>
1c006ea8:	57d5c7ff 	bl	-10812(0xfffd5c4) # 1c00446c <OLED_CLS>
1c006eac:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c006eb0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006eb4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006eb8:	57d813ff 	bl	-10224(0xfffd810) # 1c0046c8 <OLED_ShowCN>
1c006ebc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006ec0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006ec4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ec8:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c006ecc:	57d8f3ff 	bl	-10000(0xfffd8f0) # 1c0047bc <OLED_ShowCN_STR>
1c006ed0:	5002a800 	b	680(0x2a8) # 1c007178 <interface_display+0x89c>
1c006ed4:	57d59bff 	bl	-10856(0xfffd598) # 1c00446c <OLED_CLS>
1c006ed8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006edc:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006ee0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ee4:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006ee8:	57d8d7ff 	bl	-10028(0xfffd8d4) # 1c0047bc <OLED_ShowCN_STR>
1c006eec:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c006ef0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ef4:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006ef8:	57d7d3ff 	bl	-10288(0xfffd7d0) # 1c0046c8 <OLED_ShowCN>
1c006efc:	02808006 	addi.w	$r6,$r0,32(0x20)
1c006f00:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f04:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c006f08:	57d7c3ff 	bl	-10304(0xfffd7c0) # 1c0046c8 <OLED_ShowCN>
1c006f0c:	50026c00 	b	620(0x26c) # 1c007178 <interface_display+0x89c>
1c006f10:	57d55fff 	bl	-10916(0xfffd55c) # 1c00446c <OLED_CLS>
1c006f14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f18:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006f1c:	00150005 	move	$r5,$r0
1c006f20:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006f24:	57d89bff 	bl	-10088(0xfffd898) # 1c0047bc <OLED_ShowCN_STR>
1c006f28:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006f2c:	00150005 	move	$r5,$r0
1c006f30:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c006f34:	57d797ff 	bl	-10348(0xfffd794) # 1c0046c8 <OLED_ShowCN>
1c006f38:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006f3c:	00150005 	move	$r5,$r0
1c006f40:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c006f44:	57d787ff 	bl	-10364(0xfffd784) # 1c0046c8 <OLED_ShowCN>
1c006f48:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006f4c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006f50:	00150004 	move	$r4,$r0
1c006f54:	57d777ff 	bl	-10380(0xfffd774) # 1c0046c8 <OLED_ShowCN>
1c006f58:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006f5c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006f60:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006f64:	57d767ff 	bl	-10396(0xfffd764) # 1c0046c8 <OLED_ShowCN>
1c006f68:	50021000 	b	528(0x210) # 1c007178 <interface_display+0x89c>
1c006f6c:	57d503ff 	bl	-11008(0xfffd500) # 1c00446c <OLED_CLS>
1c006f70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f74:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006f78:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f7c:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006f80:	57d83fff 	bl	-10180(0xfffd83c) # 1c0047bc <OLED_ShowCN_STR>
1c006f84:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f88:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006f8c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f90:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006f94:	57d82bff 	bl	-10200(0xfffd828) # 1c0047bc <OLED_ShowCN_STR>
1c006f98:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006f9c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006fa0:	02816404 	addi.w	$r4,$r0,89(0x59)
1c006fa4:	57d727ff 	bl	-10460(0xfffd724) # 1c0046c8 <OLED_ShowCN>
1c006fa8:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006fac:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006fb0:	00150004 	move	$r4,$r0
1c006fb4:	57d717ff 	bl	-10476(0xfffd714) # 1c0046c8 <OLED_ShowCN>
1c006fb8:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006fbc:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006fc0:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006fc4:	57d707ff 	bl	-10492(0xfffd704) # 1c0046c8 <OLED_ShowCN>
1c006fc8:	5001b000 	b	432(0x1b0) # 1c007178 <interface_display+0x89c>
1c006fcc:	57d4a3ff 	bl	-11104(0xfffd4a0) # 1c00446c <OLED_CLS>
1c006fd0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006fd4:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006fd8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006fdc:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006fe0:	57d7dfff 	bl	-10276(0xfffd7dc) # 1c0047bc <OLED_ShowCN_STR>
1c006fe4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006fe8:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c006fec:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006ff0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006ff4:	57d7cbff 	bl	-10296(0xfffd7c8) # 1c0047bc <OLED_ShowCN_STR>
1c006ff8:	50018000 	b	384(0x180) # 1c007178 <interface_display+0x89c>
1c006ffc:	57d473ff 	bl	-11152(0xfffd470) # 1c00446c <OLED_CLS>
1c007000:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007004:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007008:	00150005 	move	$r5,$r0
1c00700c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007010:	57d7afff 	bl	-10324(0xfffd7ac) # 1c0047bc <OLED_ShowCN_STR>
1c007014:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007018:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00701c:	00150005 	move	$r5,$r0
1c007020:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007024:	57d79bff 	bl	-10344(0xfffd798) # 1c0047bc <OLED_ShowCN_STR>
1c007028:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00702c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007030:	02a590c6 	addi.w	$r6,$r6,-1692(0x964)
1c007034:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007038:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00703c:	57d45fff 	bl	-11172(0xfffd45c) # 1c004498 <OLED_ShowStr>
1c007040:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007044:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007048:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00704c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007050:	57d76fff 	bl	-10388(0xfffd76c) # 1c0047bc <OLED_ShowCN_STR>
1c007054:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007058:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c00705c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007060:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007064:	57d75bff 	bl	-10408(0xfffd758) # 1c0047bc <OLED_ShowCN_STR>
1c007068:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00706c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007070:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c007074:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007078:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00707c:	57d41fff 	bl	-11236(0xfffd41c) # 1c004498 <OLED_ShowStr>
1c007080:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007084:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c007088:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00708c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c007090:	57d72fff 	bl	-10452(0xfffd72c) # 1c0047bc <OLED_ShowCN_STR>
1c007094:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007098:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c00709c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0070a0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0070a4:	57d71bff 	bl	-10472(0xfffd718) # 1c0047bc <OLED_ShowCN_STR>
1c0070a8:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0070ac:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0070b0:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0070b4:	57d617ff 	bl	-10732(0xfffd614) # 1c0046c8 <OLED_ShowCN>
1c0070b8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070bc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0070c0:	02a370c6 	addi.w	$r6,$r6,-1828(0x8dc)
1c0070c4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0070c8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0070cc:	57d3cfff 	bl	-11316(0xfffd3cc) # 1c004498 <OLED_ShowStr>
1c0070d0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070d4:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0070d8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0070dc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0070e0:	57d6dfff 	bl	-10532(0xfffd6dc) # 1c0047bc <OLED_ShowCN_STR>
1c0070e4:	50009400 	b	148(0x94) # 1c007178 <interface_display+0x89c>
1c0070e8:	57d387ff 	bl	-11388(0xfffd384) # 1c00446c <OLED_CLS>
1c0070ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070f0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0070f4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0070f8:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0070fc:	57d6c3ff 	bl	-10560(0xfffd6c0) # 1c0047bc <OLED_ShowCN_STR>
1c007100:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007104:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007108:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00710c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c007110:	57d6afff 	bl	-10580(0xfffd6ac) # 1c0047bc <OLED_ShowCN_STR>
1c007114:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c007118:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00711c:	02816404 	addi.w	$r4,$r0,89(0x59)
1c007120:	57d5abff 	bl	-10840(0xfffd5a8) # 1c0046c8 <OLED_ShowCN>
1c007124:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c007128:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00712c:	00150004 	move	$r4,$r0
1c007130:	57d59bff 	bl	-10856(0xfffd598) # 1c0046c8 <OLED_ShowCN>
1c007134:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c007138:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00713c:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c007140:	57d58bff 	bl	-10872(0xfffd588) # 1c0046c8 <OLED_ShowCN>
1c007144:	50003400 	b	52(0x34) # 1c007178 <interface_display+0x89c>
1c007148:	57d327ff 	bl	-11484(0xfffd324) # 1c00446c <OLED_CLS>
1c00714c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007150:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c007154:	00150005 	move	$r5,$r0
1c007158:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00715c:	57d663ff 	bl	-10656(0xfffd660) # 1c0047bc <OLED_ShowCN_STR>
1c007160:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007164:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c007168:	00150005 	move	$r5,$r0
1c00716c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c007170:	57d64fff 	bl	-10676(0xfffd64c) # 1c0047bc <OLED_ShowCN_STR>
1c007174:	03400000 	andi	$r0,$r0,0x0
1c007178:	03400000 	andi	$r0,$r0,0x0
1c00717c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007180:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007184:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007188:	4c000020 	jirl	$r0,$r1,0

1c00718c <Write_ID>:
Write_ID():
1c00718c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007190:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007194:	29806076 	st.w	$r22,$r3,24(0x18)
1c007198:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00719c:	57e7f3ff 	bl	-6160(0xfffe7f0) # 1c00598c <Return_Card>
1c0071a0:	0015008c 	move	$r12,$r4
1c0071a4:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c0071a8:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c0071ac:	40010d80 	beqz	$r12,268(0x10c) # 1c0072b8 <Write_ID+0x12c>
1c0071b0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0071b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0071b8:	50004400 	b	68(0x44) # 1c0071fc <Write_ID+0x70>
1c0071bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0071c0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0071c4:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0071c8:	02a301ad 	addi.w	$r13,$r13,-1856(0x8c0)
1c0071cc:	0040898c 	slli.w	$r12,$r12,0x2
1c0071d0:	001031ac 	add.w	$r12,$r13,$r12
1c0071d4:	2880018d 	ld.w	$r13,$r12,0
1c0071d8:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c0071dc:	02a2b1ce 	addi.w	$r14,$r14,-1876(0x8ac)
1c0071e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0071e4:	0040898c 	slli.w	$r12,$r12,0x2
1c0071e8:	001031cc 	add.w	$r12,$r14,$r12
1c0071ec:	2980018d 	st.w	$r13,$r12,0
1c0071f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0071f4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0071f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0071fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007200:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c0071bc <Write_ID+0x30>
1c007204:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c007208:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00720c:	02a1f18c 	addi.w	$r12,$r12,-1924(0x87c)
1c007210:	2980018d 	st.w	$r13,$r12,0
1c007214:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c007218:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00721c:	02801407 	addi.w	$r7,$r0,5(0x5)
1c007220:	00150186 	move	$r6,$r12
1c007224:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007228:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00722c:	57d8dbff 	bl	-10024(0xfffd8d8) # 1c004b04 <OLED_ShowNum>
1c007230:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007234:	03bf918c 	ori	$r12,$r12,0xfe4
1c007238:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00723c:	50001400 	b	20(0x14) # 1c007250 <Write_ID+0xc4>
1c007240:	03400000 	andi	$r0,$r0,0x0
1c007244:	03400000 	andi	$r0,$r0,0x0
1c007248:	03400000 	andi	$r0,$r0,0x0
1c00724c:	03400000 	andi	$r0,$r0,0x0
1c007250:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007254:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007258:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00725c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007240 <Write_ID+0xb4>
1c007260:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007264:	57f67bff 	bl	-2440(0xffff678) # 1c0068dc <interface_display>
1c007268:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00726c:	03bf918c 	ori	$r12,$r12,0xfe4
1c007270:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007274:	50001400 	b	20(0x14) # 1c007288 <Write_ID+0xfc>
1c007278:	03400000 	andi	$r0,$r0,0x0
1c00727c:	03400000 	andi	$r0,$r0,0x0
1c007280:	03400000 	andi	$r0,$r0,0x0
1c007284:	03400000 	andi	$r0,$r0,0x0
1c007288:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00728c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007290:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007294:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007278 <Write_ID+0xec>
1c007298:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00729c:	02a0058c 	addi.w	$r12,$r12,-2047(0x801)
1c0072a0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0072a4:	2900018d 	st.b	$r13,$r12,0
1c0072a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072ac:	029fc18c 	addi.w	$r12,$r12,2032(0x7f0)
1c0072b0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0072b4:	2900018d 	st.b	$r13,$r12,0
1c0072b8:	03400000 	andi	$r0,$r0,0x0
1c0072bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0072c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0072c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0072c8:	4c000020 	jirl	$r0,$r1,0

1c0072cc <Delate_ID>:
Delate_ID():
1c0072cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0072d0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0072d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0072d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0072dc:	50002800 	b	40(0x28) # 1c007304 <Delate_ID+0x38>
1c0072e0:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0072e4:	029e91ad 	addi.w	$r13,$r13,1956(0x7a4)
1c0072e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0072ec:	0040898c 	slli.w	$r12,$r12,0x2
1c0072f0:	001031ac 	add.w	$r12,$r13,$r12
1c0072f4:	29800180 	st.w	$r0,$r12,0
1c0072f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0072fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007300:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007304:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007308:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00730c:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c0072e0 <Delate_ID+0x14>
1c007310:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007314:	03bf918c 	ori	$r12,$r12,0xfe4
1c007318:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00731c:	50001400 	b	20(0x14) # 1c007330 <Delate_ID+0x64>
1c007320:	03400000 	andi	$r0,$r0,0x0
1c007324:	03400000 	andi	$r0,$r0,0x0
1c007328:	03400000 	andi	$r0,$r0,0x0
1c00732c:	03400000 	andi	$r0,$r0,0x0
1c007330:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007334:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007338:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00733c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007320 <Delate_ID+0x54>
1c007340:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007344:	029d658c 	addi.w	$r12,$r12,1881(0x759)
1c007348:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00734c:	2900018d 	st.b	$r13,$r12,0
1c007350:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007354:	029d218c 	addi.w	$r12,$r12,1864(0x748)
1c007358:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c00735c:	2900018d 	st.b	$r13,$r12,0
1c007360:	03400000 	andi	$r0,$r0,0x0
1c007364:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007368:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00736c:	4c000020 	jirl	$r0,$r1,0

1c007370 <Read_ID>:
Read_ID():
1c007370:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007374:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c007378:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00737c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007380:	57e60fff 	bl	-6644(0xfffe60c) # 1c00598c <Return_Card>
1c007384:	0015008c 	move	$r12,$r4
1c007388:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c00738c:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c007390:	40011980 	beqz	$r12,280(0x118) # 1c0074a8 <Read_ID+0x138>
1c007394:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c007398:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00739c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0073a0:	6801098d 	bltu	$r12,$r13,264(0x108) # 1c0074a8 <Read_ID+0x138>
1c0073a4:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c0073a8:	1cc7ff4e 	pcaddu12i	$r14,409594(0x63ffa)
1c0073ac:	029b71ce 	addi.w	$r14,$r14,1756(0x6dc)
1c0073b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0073b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0073b8:	001031cc 	add.w	$r12,$r14,$r12
1c0073bc:	2880018c 	ld.w	$r12,$r12,0
1c0073c0:	5c00a1ac 	bne	$r13,$r12,160(0xa0) # 1c007460 <Read_ID+0xf0>
1c0073c4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0073c8:	57f517ff 	bl	-2796(0xffff514) # 1c0068dc <interface_display>
1c0073cc:	57c093ff 	bl	-16240(0xfffc090) # 1c00345c <SG90_Open>
1c0073d0:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c0073d4:	03bdc58c 	ori	$r12,$r12,0xf71
1c0073d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0073dc:	50001400 	b	20(0x14) # 1c0073f0 <Read_ID+0x80>
1c0073e0:	03400000 	andi	$r0,$r0,0x0
1c0073e4:	03400000 	andi	$r0,$r0,0x0
1c0073e8:	03400000 	andi	$r0,$r0,0x0
1c0073ec:	03400000 	andi	$r0,$r0,0x0
1c0073f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0073f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0073f8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0073fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0073e0 <Read_ID+0x70>
1c007400:	57c08bff 	bl	-16248(0xfffc088) # 1c003488 <SG90_Close>
1c007404:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007408:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c0068dc <interface_display>
1c00740c:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007410:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007414:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007418:	50001400 	b	20(0x14) # 1c00742c <Read_ID+0xbc>
1c00741c:	03400000 	andi	$r0,$r0,0x0
1c007420:	03400000 	andi	$r0,$r0,0x0
1c007424:	03400000 	andi	$r0,$r0,0x0
1c007428:	03400000 	andi	$r0,$r0,0x0
1c00742c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007430:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007434:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007438:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00741c <Read_ID+0xac>
1c00743c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007440:	0299718c 	addi.w	$r12,$r12,1628(0x65c)
1c007444:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007448:	2900018d 	st.b	$r13,$r12,0
1c00744c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007450:	0299358c 	addi.w	$r12,$r12,1613(0x64d)
1c007454:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007458:	2900018d 	st.b	$r13,$r12,0
1c00745c:	50004c00 	b	76(0x4c) # 1c0074a8 <Read_ID+0x138>
1c007460:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007464:	57f47bff 	bl	-2952(0xffff478) # 1c0068dc <interface_display>
1c007468:	57cb53ff 	bl	-13488(0xfffcb50) # 1c003fb8 <Buzzer>
1c00746c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007470:	03bf918c 	ori	$r12,$r12,0xfe4
1c007474:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007478:	50001400 	b	20(0x14) # 1c00748c <Read_ID+0x11c>
1c00747c:	03400000 	andi	$r0,$r0,0x0
1c007480:	03400000 	andi	$r0,$r0,0x0
1c007484:	03400000 	andi	$r0,$r0,0x0
1c007488:	03400000 	andi	$r0,$r0,0x0
1c00748c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007490:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007494:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007498:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00747c <Read_ID+0x10c>
1c00749c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0074a0:	57f43fff 	bl	-3012(0xffff43c) # 1c0068dc <interface_display>
1c0074a4:	03400000 	andi	$r0,$r0,0x0
1c0074a8:	03400000 	andi	$r0,$r0,0x0
1c0074ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0074b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0074b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0074b8:	4c000020 	jirl	$r0,$r1,0

1c0074bc <Key_main>:
Key_main():
1c0074bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0074c0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0074c4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0074c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0074cc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0074d0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074d4:	02ba658c 	addi.w	$r12,$r12,-359(0xe99)
1c0074d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0074dc:	4003bd80 	beqz	$r12,956(0x3bc) # 1c007898 <Key_main+0x3dc>
1c0074e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074e4:	02ba258c 	addi.w	$r12,$r12,-375(0xe89)
1c0074e8:	2a00018d 	ld.bu	$r13,$r12,0
1c0074ec:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0074f0:	6801b18d 	bltu	$r12,$r13,432(0x1b0) # 1c0076a0 <Key_main+0x1e4>
1c0074f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074f8:	28ac518c 	ld.w	$r12,$r12,-1260(0xb14)
1c0074fc:	2880018d 	ld.w	$r13,$r12,0
1c007500:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007504:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c007584 <Key_main+0xc8>
1c007508:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00750c:	28ac418c 	ld.w	$r12,$r12,-1264(0xb10)
1c007510:	2880018d 	ld.w	$r13,$r12,0
1c007514:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007518:	001c31ad 	mul.w	$r13,$r13,$r12
1c00751c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007520:	28abf18c 	ld.w	$r12,$r12,-1284(0xafc)
1c007524:	2980018d 	st.w	$r13,$r12,0
1c007528:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00752c:	02b9058c 	addi.w	$r12,$r12,-447(0xe41)
1c007530:	2a00018d 	ld.bu	$r13,$r12,0
1c007534:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007538:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00753c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007544 <Key_main+0x88>
1c007540:	002a0007 	break	0x7
1c007544:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c007548:	0015018d 	move	$r13,$r12
1c00754c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007550:	28ab318c 	ld.w	$r12,$r12,-1332(0xacc)
1c007554:	2880018c 	ld.w	$r12,$r12,0
1c007558:	001031ad 	add.w	$r13,$r13,$r12
1c00755c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007560:	28aaf18c 	ld.w	$r12,$r12,-1348(0xabc)
1c007564:	2980018d 	st.w	$r13,$r12,0
1c007568:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00756c:	28aa818c 	ld.w	$r12,$r12,-1376(0xaa0)
1c007570:	2880018c 	ld.w	$r12,$r12,0
1c007574:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007578:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00757c:	28aa418c 	ld.w	$r12,$r12,-1392(0xa90)
1c007580:	2980018d 	st.w	$r13,$r12,0
1c007584:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007588:	28aa518c 	ld.w	$r12,$r12,-1388(0xa94)
1c00758c:	2880018c 	ld.w	$r12,$r12,0
1c007590:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007594:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007598:	28a9d18c 	ld.w	$r12,$r12,-1420(0xa74)
1c00759c:	2880018c 	ld.w	$r12,$r12,0
1c0075a0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0075a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0075a8:	50006400 	b	100(0x64) # 1c00760c <Key_main+0x150>
1c0075ac:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0075b0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0075b4:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c0075b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0075c0 <Key_main+0x104>
1c0075bc:	002a0007 	break	0x7
1c0075c0:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0075c4:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c0075c8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0075cc:	002135cc 	div.wu	$r12,$r14,$r13
1c0075d0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0075d8 <Key_main+0x11c>
1c0075d4:	002a0007 	break	0x7
1c0075d8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0075dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0075e0:	00408d8c 	slli.w	$r12,$r12,0x3
1c0075e4:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0075e8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0075ec:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0075f0:	28bf42c6 	ld.w	$r6,$r22,-48(0xfd0)
1c0075f4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0075f8:	00150184 	move	$r4,$r12
1c0075fc:	57d50bff 	bl	-11000(0xfffd508) # 1c004b04 <OLED_ShowNum>
1c007600:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007604:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007608:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00760c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007610:	67ff9d80 	bge	$r12,$r0,-100(0x3ff9c) # 1c0075ac <Key_main+0xf0>
1c007614:	140002cc 	lu12i.w	$r12,22(0x16)
1c007618:	03b3298c 	ori	$r12,$r12,0xcca
1c00761c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007620:	50001400 	b	20(0x14) # 1c007634 <Key_main+0x178>
1c007624:	03400000 	andi	$r0,$r0,0x0
1c007628:	03400000 	andi	$r0,$r0,0x0
1c00762c:	03400000 	andi	$r0,$r0,0x0
1c007630:	03400000 	andi	$r0,$r0,0x0
1c007634:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007638:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00763c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c007640:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007624 <Key_main+0x168>
1c007644:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007648:	50004400 	b	68(0x44) # 1c00768c <Key_main+0x1d0>
1c00764c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007650:	28a6f18c 	ld.w	$r12,$r12,-1604(0x9bc)
1c007654:	2880018d 	ld.w	$r13,$r12,0
1c007658:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00765c:	001131ac 	sub.w	$r12,$r13,$r12
1c007660:	00408d8c 	slli.w	$r12,$r12,0x3
1c007664:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c007668:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00766c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007670:	028cc0c6 	addi.w	$r6,$r6,816(0x330)
1c007674:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007678:	00150184 	move	$r4,$r12
1c00767c:	57ce1fff 	bl	-12772(0xfffce1c) # 1c004498 <OLED_ShowStr>
1c007680:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007684:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007688:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00768c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007690:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007694:	28a5e18c 	ld.w	$r12,$r12,-1672(0x978)
1c007698:	2880018c 	ld.w	$r12,$r12,0
1c00769c:	6bffb1ac 	bltu	$r13,$r12,-80(0x3ffb0) # 1c00764c <Key_main+0x190>
1c0076a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0076a4:	50004400 	b	68(0x44) # 1c0076e8 <Key_main+0x22c>
1c0076a8:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0076ac:	028f21ad 	addi.w	$r13,$r13,968(0x3c8)
1c0076b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0076b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0076b8:	001031ac 	add.w	$r12,$r13,$r12
1c0076bc:	2880018d 	ld.w	$r13,$r12,0
1c0076c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076c4:	28a5618c 	ld.w	$r12,$r12,-1704(0x958)
1c0076c8:	2880018c 	ld.w	$r12,$r12,0
1c0076cc:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0076dc <Key_main+0x220>
1c0076d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0076d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0076d8:	50001c00 	b	28(0x1c) # 1c0076f4 <Key_main+0x238>
1c0076dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0076e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0076e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0076e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0076ec:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0076f0:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c0076a8 <Key_main+0x1ec>
1c0076f4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0076f8:	02b1d58c 	addi.w	$r12,$r12,-907(0xc75)
1c0076fc:	2a00018d 	ld.bu	$r13,$r12,0
1c007700:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007704:	5c0125ac 	bne	$r13,$r12,292(0x124) # 1c007828 <Key_main+0x36c>
1c007708:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00770c:	4000bd80 	beqz	$r12,188(0xbc) # 1c0077c8 <Key_main+0x30c>
1c007710:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007714:	57f1cbff 	bl	-3640(0xffff1c8) # 1c0068dc <interface_display>
1c007718:	57bd47ff 	bl	-17084(0xfffbd44) # 1c00345c <SG90_Open>
1c00771c:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007720:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007724:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c007728:	50001400 	b	20(0x14) # 1c00773c <Key_main+0x280>
1c00772c:	03400000 	andi	$r0,$r0,0x0
1c007730:	03400000 	andi	$r0,$r0,0x0
1c007734:	03400000 	andi	$r0,$r0,0x0
1c007738:	03400000 	andi	$r0,$r0,0x0
1c00773c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007740:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007744:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c007748:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00772c <Key_main+0x270>
1c00774c:	57c8dbff 	bl	-14120(0xfffc8d8) # 1c004024 <Buzzer_one>
1c007750:	57bd3bff 	bl	-17096(0xfffbd38) # 1c003488 <SG90_Close>
1c007754:	02802404 	addi.w	$r4,$r0,9(0x9)
1c007758:	57f187ff 	bl	-3708(0xffff184) # 1c0068dc <interface_display>
1c00775c:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007760:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007764:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c007768:	50001400 	b	20(0x14) # 1c00777c <Key_main+0x2c0>
1c00776c:	03400000 	andi	$r0,$r0,0x0
1c007770:	03400000 	andi	$r0,$r0,0x0
1c007774:	03400000 	andi	$r0,$r0,0x0
1c007778:	03400000 	andi	$r0,$r0,0x0
1c00777c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007780:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007784:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c007788:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00776c <Key_main+0x2b0>
1c00778c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007790:	028c318c 	addi.w	$r12,$r12,780(0x30c)
1c007794:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007798:	2900018d 	st.b	$r13,$r12,0
1c00779c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077a0:	028bf58c 	addi.w	$r12,$r12,765(0x2fd)
1c0077a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0077a8:	2900018d 	st.b	$r13,$r12,0
1c0077ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077b0:	28a1b18c 	ld.w	$r12,$r12,-1940(0x86c)
1c0077b4:	29800180 	st.w	$r0,$r12,0
1c0077b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077bc:	28a1418c 	ld.w	$r12,$r12,-1968(0x850)
1c0077c0:	29800180 	st.w	$r0,$r12,0
1c0077c4:	50006400 	b	100(0x64) # 1c007828 <Key_main+0x36c>
1c0077c8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0077cc:	57f113ff 	bl	-3824(0xffff110) # 1c0068dc <interface_display>
1c0077d0:	57c7ebff 	bl	-14360(0xfffc7e8) # 1c003fb8 <Buzzer>
1c0077d4:	57bcb7ff 	bl	-17228(0xfffbcb4) # 1c003488 <SG90_Close>
1c0077d8:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c0077dc:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c0077e0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0077e4:	50001400 	b	20(0x14) # 1c0077f8 <Key_main+0x33c>
1c0077e8:	03400000 	andi	$r0,$r0,0x0
1c0077ec:	03400000 	andi	$r0,$r0,0x0
1c0077f0:	03400000 	andi	$r0,$r0,0x0
1c0077f4:	03400000 	andi	$r0,$r0,0x0
1c0077f8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0077fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007800:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c007804:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0077e8 <Key_main+0x32c>
1c007808:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00780c:	28a0418c 	ld.w	$r12,$r12,-2032(0x810)
1c007810:	29800180 	st.w	$r0,$r12,0
1c007814:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007818:	289fd18c 	ld.w	$r12,$r12,2036(0x7f4)
1c00781c:	29800180 	st.w	$r0,$r12,0
1c007820:	02801404 	addi.w	$r4,$r0,5(0x5)
1c007824:	57f0bbff 	bl	-3912(0xffff0b8) # 1c0068dc <interface_display>
1c007828:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00782c:	02ad058c 	addi.w	$r12,$r12,-1215(0xb41)
1c007830:	2a00018d 	ld.bu	$r13,$r12,0
1c007834:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007838:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007898 <Key_main+0x3dc>
1c00783c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007840:	289f718c 	ld.w	$r12,$r12,2012(0x7dc)
1c007844:	29800180 	st.w	$r0,$r12,0
1c007848:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00784c:	289f018c 	ld.w	$r12,$r12,1984(0x7c0)
1c007850:	29800180 	st.w	$r0,$r12,0
1c007854:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007858:	50003400 	b	52(0x34) # 1c00788c <Key_main+0x3d0>
1c00785c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007860:	00408d8c 	slli.w	$r12,$r12,0x3
1c007864:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007868:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00786c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007870:	0284d0c6 	addi.w	$r6,$r6,308(0x134)
1c007874:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007878:	00150184 	move	$r4,$r12
1c00787c:	57cc1fff 	bl	-13284(0xfffcc1c) # 1c004498 <OLED_ShowStr>
1c007880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007884:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007888:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00788c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007890:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007894:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c00785c <Key_main+0x3a0>
1c007898:	03400000 	andi	$r0,$r0,0x0
1c00789c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0078a0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0078a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0078a8:	4c000020 	jirl	$r0,$r1,0

1c0078ac <Key>:
Key():
1c0078ac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0078b0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0078b4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0078b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0078bc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078c0:	02aab58c 	addi.w	$r12,$r12,-1363(0xaad)
1c0078c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0078c8:	4002f580 	beqz	$r12,756(0x2f4) # 1c007bbc <Key+0x310>
1c0078cc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078d0:	02aa758c 	addi.w	$r12,$r12,-1379(0xa9d)
1c0078d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0078d8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0078dc:	68015d8d 	bltu	$r12,$r13,348(0x15c) # 1c007a38 <Key+0x18c>
1c0078e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078e4:	289ca18c 	ld.w	$r12,$r12,1832(0x728)
1c0078e8:	2880018d 	ld.w	$r13,$r12,0
1c0078ec:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0078f0:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c007970 <Key+0xc4>
1c0078f4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078f8:	289c918c 	ld.w	$r12,$r12,1828(0x724)
1c0078fc:	2880018d 	ld.w	$r13,$r12,0
1c007900:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007904:	001c31ad 	mul.w	$r13,$r13,$r12
1c007908:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00790c:	289c418c 	ld.w	$r12,$r12,1808(0x710)
1c007910:	2980018d 	st.w	$r13,$r12,0
1c007914:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007918:	02a9558c 	addi.w	$r12,$r12,-1451(0xa55)
1c00791c:	2a00018d 	ld.bu	$r13,$r12,0
1c007920:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007924:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007928:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007930 <Key+0x84>
1c00792c:	002a0007 	break	0x7
1c007930:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c007934:	0015018d 	move	$r13,$r12
1c007938:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00793c:	289b818c 	ld.w	$r12,$r12,1760(0x6e0)
1c007940:	2880018c 	ld.w	$r12,$r12,0
1c007944:	001031ad 	add.w	$r13,$r13,$r12
1c007948:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00794c:	289b418c 	ld.w	$r12,$r12,1744(0x6d0)
1c007950:	2980018d 	st.w	$r13,$r12,0
1c007954:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007958:	289ad18c 	ld.w	$r12,$r12,1716(0x6b4)
1c00795c:	2880018c 	ld.w	$r12,$r12,0
1c007960:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007964:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007968:	289a918c 	ld.w	$r12,$r12,1700(0x6a4)
1c00796c:	2980018d 	st.w	$r13,$r12,0
1c007970:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007974:	289aa18c 	ld.w	$r12,$r12,1704(0x6a8)
1c007978:	2880018c 	ld.w	$r12,$r12,0
1c00797c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007980:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007984:	289a218c 	ld.w	$r12,$r12,1672(0x688)
1c007988:	2880018c 	ld.w	$r12,$r12,0
1c00798c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007990:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007994:	50006c00 	b	108(0x6c) # 1c007a00 <Key+0x154>
1c007998:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c00799c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0079a0:	0020b5cc 	mod.w	$r12,$r14,$r13
1c0079a4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0079ac <Key+0x100>
1c0079a8:	002a0007 	break	0x7
1c0079ac:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c0079b0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0079b4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0079b8:	002035cc 	div.w	$r12,$r14,$r13
1c0079bc:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0079c4 <Key+0x118>
1c0079c0:	002a0007 	break	0x7
1c0079c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0079c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079cc:	00408d8c 	slli.w	$r12,$r12,0x3
1c0079d0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0079d4:	0015018d 	move	$r13,$r12
1c0079d8:	283f6ecc 	ld.b	$r12,$r22,-37(0xfdb)
1c0079dc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0079e0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0079e4:	00150186 	move	$r6,$r12
1c0079e8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0079ec:	001501a4 	move	$r4,$r13
1c0079f0:	57d117ff 	bl	-12012(0xfffd114) # 1c004b04 <OLED_ShowNum>
1c0079f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0079f8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0079fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007a00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a04:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007998 <Key+0xec>
1c007a08:	140005ac 	lu12i.w	$r12,45(0x2d)
1c007a0c:	03a6518c 	ori	$r12,$r12,0x994
1c007a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007a14:	50001400 	b	20(0x14) # 1c007a28 <Key+0x17c>
1c007a18:	03400000 	andi	$r0,$r0,0x0
1c007a1c:	03400000 	andi	$r0,$r0,0x0
1c007a20:	03400000 	andi	$r0,$r0,0x0
1c007a24:	03400000 	andi	$r0,$r0,0x0
1c007a28:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007a2c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007a30:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007a34:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007a18 <Key+0x16c>
1c007a38:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a3c:	02a4c58c 	addi.w	$r12,$r12,-1743(0x931)
1c007a40:	2a00018d 	ld.bu	$r13,$r12,0
1c007a44:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007a48:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c007b4c <Key+0x2a0>
1c007a4c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a50:	2897318c 	ld.w	$r12,$r12,1484(0x5cc)
1c007a54:	2880018d 	ld.w	$r13,$r12,0
1c007a58:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c007a5c:	5c0079ac 	bne	$r13,$r12,120(0x78) # 1c007ad4 <Key+0x228>
1c007a60:	02802004 	addi.w	$r4,$r0,8(0x8)
1c007a64:	57ee7bff 	bl	-4488(0xfffee78) # 1c0068dc <interface_display>
1c007a68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a6c:	0280c58c 	addi.w	$r12,$r12,49(0x31)
1c007a70:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007a74:	2900018d 	st.b	$r13,$r12,0
1c007a78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007a7c:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c007a80:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c007a84:	2900018d 	st.b	$r13,$r12,0
1c007a88:	140016cc 	lu12i.w	$r12,182(0xb6)
1c007a8c:	0399418c 	ori	$r12,$r12,0x650
1c007a90:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007a94:	50001400 	b	20(0x14) # 1c007aa8 <Key+0x1fc>
1c007a98:	03400000 	andi	$r0,$r0,0x0
1c007a9c:	03400000 	andi	$r0,$r0,0x0
1c007aa0:	03400000 	andi	$r0,$r0,0x0
1c007aa4:	03400000 	andi	$r0,$r0,0x0
1c007aa8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007aac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007ab0:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c007ab4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007a98 <Key+0x1ec>
1c007ab8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007abc:	2895818c 	ld.w	$r12,$r12,1376(0x560)
1c007ac0:	29800180 	st.w	$r0,$r12,0
1c007ac4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ac8:	2895118c 	ld.w	$r12,$r12,1348(0x544)
1c007acc:	29800180 	st.w	$r0,$r12,0
1c007ad0:	50007c00 	b	124(0x7c) # 1c007b4c <Key+0x2a0>
1c007ad4:	57c99bff 	bl	-13928(0xfffc998) # 1c00446c <OLED_CLS>
1c007ad8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c007adc:	57ee03ff 	bl	-4608(0xfffee00) # 1c0068dc <interface_display>
1c007ae0:	57c4dbff 	bl	-15144(0xfffc4d8) # 1c003fb8 <Buzzer>
1c007ae4:	140016cc 	lu12i.w	$r12,182(0xb6)
1c007ae8:	0399418c 	ori	$r12,$r12,0x650
1c007aec:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c007af0:	50001400 	b	20(0x14) # 1c007b04 <Key+0x258>
1c007af4:	03400000 	andi	$r0,$r0,0x0
1c007af8:	03400000 	andi	$r0,$r0,0x0
1c007afc:	03400000 	andi	$r0,$r0,0x0
1c007b00:	03400000 	andi	$r0,$r0,0x0
1c007b04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c007b08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007b0c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c007b10:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007af4 <Key+0x248>
1c007b14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b18:	02be158c 	addi.w	$r12,$r12,-123(0xf85)
1c007b1c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007b20:	2900018d 	st.b	$r13,$r12,0
1c007b24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007b28:	02bdd18c 	addi.w	$r12,$r12,-140(0xf74)
1c007b2c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007b30:	2900018d 	st.b	$r13,$r12,0
1c007b34:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b38:	2893918c 	ld.w	$r12,$r12,1252(0x4e4)
1c007b3c:	29800180 	st.w	$r0,$r12,0
1c007b40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b44:	2893218c 	ld.w	$r12,$r12,1224(0x4c8)
1c007b48:	29800180 	st.w	$r0,$r12,0
1c007b4c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b50:	02a0758c 	addi.w	$r12,$r12,-2019(0x81d)
1c007b54:	2a00018d 	ld.bu	$r13,$r12,0
1c007b58:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007b5c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007bbc <Key+0x310>
1c007b60:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b64:	2892e18c 	ld.w	$r12,$r12,1208(0x4b8)
1c007b68:	29800180 	st.w	$r0,$r12,0
1c007b6c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007b70:	2892718c 	ld.w	$r12,$r12,1180(0x49c)
1c007b74:	29800180 	st.w	$r0,$r12,0
1c007b78:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007b7c:	50003400 	b	52(0x34) # 1c007bb0 <Key+0x304>
1c007b80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007b84:	00408d8c 	slli.w	$r12,$r12,0x3
1c007b88:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007b8c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007b90:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007b94:	02b840c6 	addi.w	$r6,$r6,-496(0xe10)
1c007b98:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007b9c:	00150184 	move	$r4,$r12
1c007ba0:	57c8fbff 	bl	-14088(0xfffc8f8) # 1c004498 <OLED_ShowStr>
1c007ba4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007ba8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007bac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007bb0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007bb4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007bb8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007b80 <Key+0x2d4>
1c007bbc:	03400000 	andi	$r0,$r0,0x0
1c007bc0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007bc4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007bc8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007bcc:	4c000020 	jirl	$r0,$r1,0

1c007bd0 <Add_Key>:
Add_Key():
1c007bd0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007bd4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007bd8:	29806076 	st.w	$r22,$r3,24(0x18)
1c007bdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007be0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007be4:	029e258c 	addi.w	$r12,$r12,1929(0x789)
1c007be8:	2a00018c 	ld.bu	$r12,$r12,0
1c007bec:	4002a180 	beqz	$r12,672(0x2a0) # 1c007e8c <Add_Key+0x2bc>
1c007bf0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007bf4:	029de58c 	addi.w	$r12,$r12,1913(0x779)
1c007bf8:	2a00018d 	ld.bu	$r13,$r12,0
1c007bfc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c00:	68012d8d 	bltu	$r12,$r13,300(0x12c) # 1c007d2c <Add_Key+0x15c>
1c007c04:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c08:	2890118c 	ld.w	$r12,$r12,1028(0x404)
1c007c0c:	2880018d 	ld.w	$r13,$r12,0
1c007c10:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007c14:	6800818d 	bltu	$r12,$r13,128(0x80) # 1c007c94 <Add_Key+0xc4>
1c007c18:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c1c:	2890018c 	ld.w	$r12,$r12,1024(0x400)
1c007c20:	2880018d 	ld.w	$r13,$r12,0
1c007c24:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c28:	001c31ad 	mul.w	$r13,$r13,$r12
1c007c2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c30:	288fb18c 	ld.w	$r12,$r12,1004(0x3ec)
1c007c34:	2980018d 	st.w	$r13,$r12,0
1c007c38:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c3c:	029cc58c 	addi.w	$r12,$r12,1841(0x731)
1c007c40:	2a00018d 	ld.bu	$r13,$r12,0
1c007c44:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c48:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007c4c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007c54 <Add_Key+0x84>
1c007c50:	002a0007 	break	0x7
1c007c54:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c007c58:	0015018d 	move	$r13,$r12
1c007c5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c60:	288ef18c 	ld.w	$r12,$r12,956(0x3bc)
1c007c64:	2880018c 	ld.w	$r12,$r12,0
1c007c68:	001031ad 	add.w	$r13,$r13,$r12
1c007c6c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c70:	288eb18c 	ld.w	$r12,$r12,940(0x3ac)
1c007c74:	2980018d 	st.w	$r13,$r12,0
1c007c78:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c7c:	288e418c 	ld.w	$r12,$r12,912(0x390)
1c007c80:	2880018c 	ld.w	$r12,$r12,0
1c007c84:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c007c88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c8c:	288e018c 	ld.w	$r12,$r12,896(0x380)
1c007c90:	2980018d 	st.w	$r13,$r12,0
1c007c94:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c98:	288e118c 	ld.w	$r12,$r12,900(0x384)
1c007c9c:	2880018c 	ld.w	$r12,$r12,0
1c007ca0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007ca4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ca8:	288d918c 	ld.w	$r12,$r12,868(0x364)
1c007cac:	2880018c 	ld.w	$r12,$r12,0
1c007cb0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007cb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007cb8:	50006c00 	b	108(0x6c) # 1c007d24 <Add_Key+0x154>
1c007cbc:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007cc0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007cc4:	0020b5cc 	mod.w	$r12,$r14,$r13
1c007cc8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007cd0 <Add_Key+0x100>
1c007ccc:	002a0007 	break	0x7
1c007cd0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c007cd4:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c007cd8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007cdc:	002035cc 	div.w	$r12,$r14,$r13
1c007ce0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007ce8 <Add_Key+0x118>
1c007ce4:	002a0007 	break	0x7
1c007ce8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007cec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007cf0:	00408d8c 	slli.w	$r12,$r12,0x3
1c007cf4:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007cf8:	0015018d 	move	$r13,$r12
1c007cfc:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c007d00:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007d04:	02800407 	addi.w	$r7,$r0,1(0x1)
1c007d08:	00150186 	move	$r6,$r12
1c007d0c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007d10:	001501a4 	move	$r4,$r13
1c007d14:	57cdf3ff 	bl	-12816(0xfffcdf0) # 1c004b04 <OLED_ShowNum>
1c007d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d1c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007d20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d28:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007cbc <Add_Key+0xec>
1c007d2c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007d30:	0298f58c 	addi.w	$r12,$r12,1597(0x63d)
1c007d34:	2a00018d 	ld.bu	$r13,$r12,0
1c007d38:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c007d3c:	5c00e1ac 	bne	$r13,$r12,224(0xe0) # 1c007e1c <Add_Key+0x24c>
1c007d40:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007d44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007d48:	50004400 	b	68(0x44) # 1c007d8c <Add_Key+0x1bc>
1c007d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d50:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007d54:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007d58:	02b471ad 	addi.w	$r13,$r13,-740(0xd1c)
1c007d5c:	0040898c 	slli.w	$r12,$r12,0x2
1c007d60:	001031ac 	add.w	$r12,$r13,$r12
1c007d64:	2880018d 	ld.w	$r13,$r12,0
1c007d68:	1cc7ff4e 	pcaddu12i	$r14,409594(0x63ffa)
1c007d6c:	02b421ce 	addi.w	$r14,$r14,-760(0xd08)
1c007d70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d74:	0040898c 	slli.w	$r12,$r12,0x2
1c007d78:	001031cc 	add.w	$r12,$r14,$r12
1c007d7c:	2980018d 	st.w	$r13,$r12,0
1c007d80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d84:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007d88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007d8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007d90:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c007d4c <Add_Key+0x17c>
1c007d94:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007d98:	288a118c 	ld.w	$r12,$r12,644(0x284)
1c007d9c:	2880018d 	ld.w	$r13,$r12,0
1c007da0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007da4:	02b3418c 	addi.w	$r12,$r12,-816(0xcd0)
1c007da8:	2980018d 	st.w	$r13,$r12,0
1c007dac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007db0:	2889b18c 	ld.w	$r12,$r12,620(0x26c)
1c007db4:	29800180 	st.w	$r0,$r12,0
1c007db8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007dbc:	2889418c 	ld.w	$r12,$r12,592(0x250)
1c007dc0:	29800180 	st.w	$r0,$r12,0
1c007dc4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007dc8:	57eb17ff 	bl	-5356(0xfffeb14) # 1c0068dc <interface_display>
1c007dcc:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c007dd0:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007dd4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007dd8:	50001400 	b	20(0x14) # 1c007dec <Add_Key+0x21c>
1c007ddc:	03400000 	andi	$r0,$r0,0x0
1c007de0:	03400000 	andi	$r0,$r0,0x0
1c007de4:	03400000 	andi	$r0,$r0,0x0
1c007de8:	03400000 	andi	$r0,$r0,0x0
1c007dec:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007df0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007df4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007df8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007ddc <Add_Key+0x20c>
1c007dfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e00:	02b2758c 	addi.w	$r12,$r12,-867(0xc9d)
1c007e04:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e08:	2900018d 	st.b	$r13,$r12,0
1c007e0c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007e10:	02b2318c 	addi.w	$r12,$r12,-884(0xc8c)
1c007e14:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007e18:	2900018d 	st.b	$r13,$r12,0
1c007e1c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007e20:	0295358c 	addi.w	$r12,$r12,1357(0x54d)
1c007e24:	2a00018d 	ld.bu	$r13,$r12,0
1c007e28:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007e2c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c007e8c <Add_Key+0x2bc>
1c007e30:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e34:	2887a18c 	ld.w	$r12,$r12,488(0x1e8)
1c007e38:	29800180 	st.w	$r0,$r12,0
1c007e3c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007e40:	2887318c 	ld.w	$r12,$r12,460(0x1cc)
1c007e44:	29800180 	st.w	$r0,$r12,0
1c007e48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007e4c:	50003400 	b	52(0x34) # 1c007e80 <Add_Key+0x2b0>
1c007e50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007e54:	00408d8c 	slli.w	$r12,$r12,0x3
1c007e58:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007e5c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007e60:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007e64:	02ad00c6 	addi.w	$r6,$r6,-1216(0xb40)
1c007e68:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007e6c:	00150184 	move	$r4,$r12
1c007e70:	57c62bff 	bl	-14808(0xfffc628) # 1c004498 <OLED_ShowStr>
1c007e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007e78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007e7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007e80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007e84:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007e88:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c007e50 <Add_Key+0x280>
1c007e8c:	03400000 	andi	$r0,$r0,0x0
1c007e90:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007e94:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007e98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007e9c:	4c000020 	jirl	$r0,$r1,0

1c007ea0 <Delete_key>:
Delete_key():
1c007ea0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007ea4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007ea8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007eac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c007eb0:	50002800 	b	40(0x28) # 1c007ed8 <Delete_key+0x38>
1c007eb4:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007eb8:	02aef1ad 	addi.w	$r13,$r13,-1092(0xbbc)
1c007ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007ec0:	0040898c 	slli.w	$r12,$r12,0x2
1c007ec4:	001031ac 	add.w	$r12,$r13,$r12
1c007ec8:	29800180 	st.w	$r0,$r12,0
1c007ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007ed0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007ed4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007ed8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007edc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007ee0:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c007eb4 <Delete_key+0x14>
1c007ee4:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007ee8:	03bf918c 	ori	$r12,$r12,0xfe4
1c007eec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007ef0:	50001400 	b	20(0x14) # 1c007f04 <Delete_key+0x64>
1c007ef4:	03400000 	andi	$r0,$r0,0x0
1c007ef8:	03400000 	andi	$r0,$r0,0x0
1c007efc:	03400000 	andi	$r0,$r0,0x0
1c007f00:	03400000 	andi	$r0,$r0,0x0
1c007f04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007f08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007f0c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c007f10:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007ef4 <Delete_key+0x54>
1c007f14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f18:	02ae158c 	addi.w	$r12,$r12,-1147(0xb85)
1c007f1c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007f20:	2900018d 	st.b	$r13,$r12,0
1c007f24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007f28:	02add18c 	addi.w	$r12,$r12,-1164(0xb74)
1c007f2c:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007f30:	2900018d 	st.b	$r13,$r12,0
1c007f34:	03400000 	andi	$r0,$r0,0x0
1c007f38:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007f3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007f40:	4c000020 	jirl	$r0,$r1,0

1c007f44 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c007f44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f48:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007f54:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007f58:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c007f5c:	02805005 	addi.w	$r5,$r0,20(0x14)
1c007f60:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007f64:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c007f68:	579473ff 	bl	-27536(0xfff9470) # 1c0013d8 <myprintf>
1c007f6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007f70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007f74:	03808184 	ori	$r4,$r12,0x20
1c007f78:	57921bff 	bl	-28136(0xfff9218) # 1c001190 <EXTI_ClearITPendingBit>
1c007f7c:	03400000 	andi	$r0,$r0,0x0
1c007f80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007f84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007f88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007f8c:	4c000020 	jirl	$r0,$r1,0

1c007f90 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c007f90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f94:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f98:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007fa0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007fa4:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c007fa8:	02806405 	addi.w	$r5,$r0,25(0x19)
1c007fac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007fb0:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c007fb4:	579427ff 	bl	-27612(0xfff9424) # 1c0013d8 <myprintf>
1c007fb8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007fbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007fc0:	03808184 	ori	$r4,$r12,0x20
1c007fc4:	5791cfff 	bl	-28212(0xfff91cc) # 1c001190 <EXTI_ClearITPendingBit>
1c007fc8:	03400000 	andi	$r0,$r0,0x0
1c007fcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007fd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007fd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007fd8:	4c000020 	jirl	$r0,$r1,0

1c007fdc <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c007fdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007fe0:	29803061 	st.w	$r1,$r3,12(0xc)
1c007fe4:	29802076 	st.w	$r22,$r3,8(0x8)
1c007fe8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007fec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007ff0:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c007ff4:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c007ff8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007ffc:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c008000:	5793dbff 	bl	-27688(0xfff93d8) # 1c0013d8 <myprintf>
1c008004:	02801005 	addi.w	$r5,$r0,4(0x4)
1c008008:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00800c:	03808184 	ori	$r4,$r12,0x20
1c008010:	579183ff 	bl	-28288(0xfff9180) # 1c001190 <EXTI_ClearITPendingBit>
1c008014:	03400000 	andi	$r0,$r0,0x0
1c008018:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00801c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008020:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008024:	4c000020 	jirl	$r0,$r1,0

1c008028 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c008028:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00802c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008030:	29802076 	st.w	$r22,$r3,8(0x8)
1c008034:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008038:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00803c:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c008040:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c008044:	1c000044 	pcaddu12i	$r4,2(0x2)
1c008048:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c00804c:	57938fff 	bl	-27764(0xfff938c) # 1c0013d8 <myprintf>
1c008050:	02802005 	addi.w	$r5,$r0,8(0x8)
1c008054:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008058:	03808184 	ori	$r4,$r12,0x20
1c00805c:	579137ff 	bl	-28364(0xfff9134) # 1c001190 <EXTI_ClearITPendingBit>
1c008060:	03400000 	andi	$r0,$r0,0x0
1c008064:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008068:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00806c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008070:	4c000020 	jirl	$r0,$r1,0

1c008074 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c008074:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008078:	29803061 	st.w	$r1,$r3,12(0xc)
1c00807c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008080:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008084:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008088:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c00808c:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c008090:	1c000044 	pcaddu12i	$r4,2(0x2)
1c008094:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c008098:	579343ff 	bl	-27840(0xfff9340) # 1c0013d8 <myprintf>
1c00809c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0080a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0080a4:	03808184 	ori	$r4,$r12,0x20
1c0080a8:	5790ebff 	bl	-28440(0xfff90e8) # 1c001190 <EXTI_ClearITPendingBit>
1c0080ac:	03400000 	andi	$r0,$r0,0x0
1c0080b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0080b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0080b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0080bc:	4c000020 	jirl	$r0,$r1,0

1c0080c0 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0080c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0080c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0080c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0080cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0080d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0080d4:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c0080d8:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c0080dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0080e0:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c0080e4:	5792f7ff 	bl	-27916(0xfff92f4) # 1c0013d8 <myprintf>
1c0080e8:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0080ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0080f0:	03808184 	ori	$r4,$r12,0x20
1c0080f4:	57909fff 	bl	-28516(0xfff909c) # 1c001190 <EXTI_ClearITPendingBit>
1c0080f8:	03400000 	andi	$r0,$r0,0x0
1c0080fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008100:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008104:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008108:	4c000020 	jirl	$r0,$r1,0

1c00810c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00810c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008110:	29803061 	st.w	$r1,$r3,12(0xc)
1c008114:	29802076 	st.w	$r22,$r3,8(0x8)
1c008118:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00811c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008120:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c008124:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c008128:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00812c:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c008130:	5792abff 	bl	-27992(0xfff92a8) # 1c0013d8 <myprintf>
1c008134:	02810005 	addi.w	$r5,$r0,64(0x40)
1c008138:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00813c:	03808184 	ori	$r4,$r12,0x20
1c008140:	579053ff 	bl	-28592(0xfff9050) # 1c001190 <EXTI_ClearITPendingBit>
1c008144:	03400000 	andi	$r0,$r0,0x0
1c008148:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00814c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008154:	4c000020 	jirl	$r0,$r1,0

1c008158 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c008158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00815c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008160:	29802076 	st.w	$r22,$r3,8(0x8)
1c008164:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008168:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00816c:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c008170:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c008174:	1c000044 	pcaddu12i	$r4,2(0x2)
1c008178:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c00817c:	57925fff 	bl	-28068(0xfff925c) # 1c0013d8 <myprintf>
1c008180:	02820005 	addi.w	$r5,$r0,128(0x80)
1c008184:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008188:	03808184 	ori	$r4,$r12,0x20
1c00818c:	579007ff 	bl	-28668(0xfff9004) # 1c001190 <EXTI_ClearITPendingBit>
1c008190:	03400000 	andi	$r0,$r0,0x0
1c008194:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008198:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00819c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0081a0:	4c000020 	jirl	$r0,$r1,0

1c0081a4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0081a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0081a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0081ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0081b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0081b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0081b8:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c0081bc:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0081c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0081c4:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c0081c8:	579213ff 	bl	-28144(0xfff9210) # 1c0013d8 <myprintf>
1c0081cc:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0081d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0081d4:	03808184 	ori	$r4,$r12,0x20
1c0081d8:	578fbbff 	bl	-28744(0xfff8fb8) # 1c001190 <EXTI_ClearITPendingBit>
1c0081dc:	03400000 	andi	$r0,$r0,0x0
1c0081e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0081e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0081e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0081ec:	4c000020 	jirl	$r0,$r1,0

1c0081f0 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0081f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0081f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0081f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0081fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008200:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008204:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c008208:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c00820c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008210:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c008214:	5791c7ff 	bl	-28220(0xfff91c4) # 1c0013d8 <myprintf>
1c008218:	02880005 	addi.w	$r5,$r0,512(0x200)
1c00821c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008220:	03808184 	ori	$r4,$r12,0x20
1c008224:	578f6fff 	bl	-28820(0xfff8f6c) # 1c001190 <EXTI_ClearITPendingBit>
1c008228:	03400000 	andi	$r0,$r0,0x0
1c00822c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008230:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008234:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008238:	4c000020 	jirl	$r0,$r1,0

1c00823c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c00823c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008240:	29803061 	st.w	$r1,$r3,12(0xc)
1c008244:	29802076 	st.w	$r22,$r3,8(0x8)
1c008248:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00824c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008250:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c008254:	02812405 	addi.w	$r5,$r0,73(0x49)
1c008258:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00825c:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c008260:	57917bff 	bl	-28296(0xfff9178) # 1c0013d8 <myprintf>
1c008264:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c008268:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00826c:	03808184 	ori	$r4,$r12,0x20
1c008270:	578f23ff 	bl	-28896(0xfff8f20) # 1c001190 <EXTI_ClearITPendingBit>
1c008274:	03400000 	andi	$r0,$r0,0x0
1c008278:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00827c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008280:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008284:	4c000020 	jirl	$r0,$r1,0

1c008288 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c008288:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00828c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008290:	29802076 	st.w	$r22,$r3,8(0x8)
1c008294:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008298:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00829c:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c0082a0:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c0082a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0082a8:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c0082ac:	57912fff 	bl	-28372(0xfff912c) # 1c0013d8 <myprintf>
1c0082b0:	03a00005 	ori	$r5,$r0,0x800
1c0082b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0082b8:	03808184 	ori	$r4,$r12,0x20
1c0082bc:	578ed7ff 	bl	-28972(0xfff8ed4) # 1c001190 <EXTI_ClearITPendingBit>
1c0082c0:	03400000 	andi	$r0,$r0,0x0
1c0082c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0082c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0082cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0082d0:	4c000020 	jirl	$r0,$r1,0

1c0082d4 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0082d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0082d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0082dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0082e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0082e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0082e8:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c0082ec:	02815005 	addi.w	$r5,$r0,84(0x54)
1c0082f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0082f4:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c0082f8:	5790e3ff 	bl	-28448(0xfff90e0) # 1c0013d8 <myprintf>
1c0082fc:	14000025 	lu12i.w	$r5,1(0x1)
1c008300:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008304:	03808184 	ori	$r4,$r12,0x20
1c008308:	578e8bff 	bl	-29048(0xfff8e88) # 1c001190 <EXTI_ClearITPendingBit>
1c00830c:	03400000 	andi	$r0,$r0,0x0
1c008310:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008314:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008318:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00831c:	4c000020 	jirl	$r0,$r1,0

1c008320 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c008320:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008324:	29803061 	st.w	$r1,$r3,12(0xc)
1c008328:	29802076 	st.w	$r22,$r3,8(0x8)
1c00832c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008330:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008334:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c008338:	02816405 	addi.w	$r5,$r0,89(0x59)
1c00833c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008340:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c008344:	579097ff 	bl	-28524(0xfff9094) # 1c0013d8 <myprintf>
1c008348:	14000045 	lu12i.w	$r5,2(0x2)
1c00834c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008350:	03808184 	ori	$r4,$r12,0x20
1c008354:	578e3fff 	bl	-29124(0xfff8e3c) # 1c001190 <EXTI_ClearITPendingBit>
1c008358:	03400000 	andi	$r0,$r0,0x0
1c00835c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008360:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008364:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008368:	4c000020 	jirl	$r0,$r1,0

1c00836c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00836c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008370:	29803061 	st.w	$r1,$r3,12(0xc)
1c008374:	29802076 	st.w	$r22,$r3,8(0x8)
1c008378:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00837c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008380:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c008384:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c008388:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00838c:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c008390:	57904bff 	bl	-28600(0xfff9048) # 1c0013d8 <myprintf>
1c008394:	14000085 	lu12i.w	$r5,4(0x4)
1c008398:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00839c:	03808184 	ori	$r4,$r12,0x20
1c0083a0:	578df3ff 	bl	-29200(0xfff8df0) # 1c001190 <EXTI_ClearITPendingBit>
1c0083a4:	03400000 	andi	$r0,$r0,0x0
1c0083a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0083ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0083b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0083b4:	4c000020 	jirl	$r0,$r1,0

1c0083b8 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0083b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0083bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0083c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0083c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0083c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0083cc:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c0083d0:	02819405 	addi.w	$r5,$r0,101(0x65)
1c0083d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0083d8:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c0083dc:	578fffff 	bl	-28676(0xfff8ffc) # 1c0013d8 <myprintf>
1c0083e0:	14000105 	lu12i.w	$r5,8(0x8)
1c0083e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0083e8:	03808184 	ori	$r4,$r12,0x20
1c0083ec:	578da7ff 	bl	-29276(0xfff8da4) # 1c001190 <EXTI_ClearITPendingBit>
1c0083f0:	03400000 	andi	$r0,$r0,0x0
1c0083f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0083f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0083fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008400:	4c000020 	jirl	$r0,$r1,0

1c008404 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c008404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008408:	29803061 	st.w	$r1,$r3,12(0xc)
1c00840c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008410:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008414:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008418:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c00841c:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c008420:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008424:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c008428:	578fb3ff 	bl	-28752(0xfff8fb0) # 1c0013d8 <myprintf>
1c00842c:	14000205 	lu12i.w	$r5,16(0x10)
1c008430:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008434:	03808184 	ori	$r4,$r12,0x20
1c008438:	578d5bff 	bl	-29352(0xfff8d58) # 1c001190 <EXTI_ClearITPendingBit>
1c00843c:	03400000 	andi	$r0,$r0,0x0
1c008440:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008444:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008448:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00844c:	4c000020 	jirl	$r0,$r1,0

1c008450 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c008450:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008454:	29803061 	st.w	$r1,$r3,12(0xc)
1c008458:	29802076 	st.w	$r22,$r3,8(0x8)
1c00845c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008460:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008464:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c008468:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c00846c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008470:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c008474:	578f67ff 	bl	-28828(0xfff8f64) # 1c0013d8 <myprintf>
1c008478:	14000405 	lu12i.w	$r5,32(0x20)
1c00847c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008480:	03808184 	ori	$r4,$r12,0x20
1c008484:	578d0fff 	bl	-29428(0xfff8d0c) # 1c001190 <EXTI_ClearITPendingBit>
1c008488:	03400000 	andi	$r0,$r0,0x0
1c00848c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008490:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008494:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008498:	4c000020 	jirl	$r0,$r1,0

1c00849c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00849c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0084a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0084a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0084a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0084ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0084b0:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c0084b4:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0084b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0084bc:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c0084c0:	578f1bff 	bl	-28904(0xfff8f18) # 1c0013d8 <myprintf>
1c0084c4:	14000805 	lu12i.w	$r5,64(0x40)
1c0084c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0084cc:	03808184 	ori	$r4,$r12,0x20
1c0084d0:	578cc3ff 	bl	-29504(0xfff8cc0) # 1c001190 <EXTI_ClearITPendingBit>
1c0084d4:	03400000 	andi	$r0,$r0,0x0
1c0084d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0084dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0084e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0084e4:	4c000020 	jirl	$r0,$r1,0

1c0084e8 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0084e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0084ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0084f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0084f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0084f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0084fc:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c008500:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c008504:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008508:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c00850c:	578ecfff 	bl	-28980(0xfff8ecc) # 1c0013d8 <myprintf>
1c008510:	14001005 	lu12i.w	$r5,128(0x80)
1c008514:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008518:	03808184 	ori	$r4,$r12,0x20
1c00851c:	578c77ff 	bl	-29580(0xfff8c74) # 1c001190 <EXTI_ClearITPendingBit>
1c008520:	03400000 	andi	$r0,$r0,0x0
1c008524:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008528:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00852c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008530:	4c000020 	jirl	$r0,$r1,0

1c008534 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c008534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00853c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008544:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008548:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c00854c:	02821005 	addi.w	$r5,$r0,132(0x84)
1c008550:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008554:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c008558:	578e83ff 	bl	-29056(0xfff8e80) # 1c0013d8 <myprintf>
1c00855c:	14002005 	lu12i.w	$r5,256(0x100)
1c008560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008564:	03808184 	ori	$r4,$r12,0x20
1c008568:	578c2bff 	bl	-29656(0xfff8c28) # 1c001190 <EXTI_ClearITPendingBit>
1c00856c:	03400000 	andi	$r0,$r0,0x0
1c008570:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008574:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008578:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00857c:	4c000020 	jirl	$r0,$r1,0

1c008580 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c008580:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008584:	29803061 	st.w	$r1,$r3,12(0xc)
1c008588:	29802076 	st.w	$r22,$r3,8(0x8)
1c00858c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008590:	1c000046 	pcaddu12i	$r6,2(0x2)
1c008594:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c008598:	02822405 	addi.w	$r5,$r0,137(0x89)
1c00859c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0085a0:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c0085a4:	578e37ff 	bl	-29132(0xfff8e34) # 1c0013d8 <myprintf>
1c0085a8:	14004005 	lu12i.w	$r5,512(0x200)
1c0085ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0085b0:	03808184 	ori	$r4,$r12,0x20
1c0085b4:	578bdfff 	bl	-29732(0xfff8bdc) # 1c001190 <EXTI_ClearITPendingBit>
1c0085b8:	03400000 	andi	$r0,$r0,0x0
1c0085bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0085c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0085c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0085c8:	4c000020 	jirl	$r0,$r1,0

1c0085cc <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0085cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0085d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0085d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0085d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0085dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0085e0:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c0085e4:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c0085e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0085ec:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c0085f0:	578debff 	bl	-29208(0xfff8de8) # 1c0013d8 <myprintf>
1c0085f4:	14008005 	lu12i.w	$r5,1024(0x400)
1c0085f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0085fc:	03808184 	ori	$r4,$r12,0x20
1c008600:	578b93ff 	bl	-29808(0xfff8b90) # 1c001190 <EXTI_ClearITPendingBit>
1c008604:	03400000 	andi	$r0,$r0,0x0
1c008608:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00860c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008610:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008614:	4c000020 	jirl	$r0,$r1,0

1c008618 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c008618:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00861c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008620:	29802076 	st.w	$r22,$r3,8(0x8)
1c008624:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008628:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00862c:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c008630:	02825005 	addi.w	$r5,$r0,148(0x94)
1c008634:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008638:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c00863c:	578d9fff 	bl	-29284(0xfff8d9c) # 1c0013d8 <myprintf>
1c008640:	14010005 	lu12i.w	$r5,2048(0x800)
1c008644:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008648:	03808184 	ori	$r4,$r12,0x20
1c00864c:	578b47ff 	bl	-29884(0xfff8b44) # 1c001190 <EXTI_ClearITPendingBit>
1c008650:	03400000 	andi	$r0,$r0,0x0
1c008654:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008658:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00865c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008660:	4c000020 	jirl	$r0,$r1,0

1c008664 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c008664:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008668:	29803061 	st.w	$r1,$r3,12(0xc)
1c00866c:	29802076 	st.w	$r22,$r3,8(0x8)
1c008670:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008674:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008678:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c00867c:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c008680:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008684:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c008688:	578d53ff 	bl	-29360(0xfff8d50) # 1c0013d8 <myprintf>
1c00868c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c008690:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008694:	03808184 	ori	$r4,$r12,0x20
1c008698:	578afbff 	bl	-29960(0xfff8af8) # 1c001190 <EXTI_ClearITPendingBit>
1c00869c:	03400000 	andi	$r0,$r0,0x0
1c0086a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0086a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0086a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0086ac:	4c000020 	jirl	$r0,$r1,0

1c0086b0 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0086b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0086b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0086b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0086bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0086c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0086c4:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c0086c8:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0086cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0086d0:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c0086d4:	578d07ff 	bl	-29436(0xfff8d04) # 1c0013d8 <myprintf>
1c0086d8:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0086dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0086e0:	03808184 	ori	$r4,$r12,0x20
1c0086e4:	578aafff 	bl	-30036(0xfff8aac) # 1c001190 <EXTI_ClearITPendingBit>
1c0086e8:	03400000 	andi	$r0,$r0,0x0
1c0086ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0086f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0086f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0086f8:	4c000020 	jirl	$r0,$r1,0

1c0086fc <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0086fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008700:	29803061 	st.w	$r1,$r3,12(0xc)
1c008704:	29802076 	st.w	$r22,$r3,8(0x8)
1c008708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00870c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008710:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c008714:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c008718:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00871c:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c008720:	578cbbff 	bl	-29512(0xfff8cb8) # 1c0013d8 <myprintf>
1c008724:	14080005 	lu12i.w	$r5,16384(0x4000)
1c008728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00872c:	03808184 	ori	$r4,$r12,0x20
1c008730:	578a63ff 	bl	-30112(0xfff8a60) # 1c001190 <EXTI_ClearITPendingBit>
1c008734:	03400000 	andi	$r0,$r0,0x0
1c008738:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00873c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008740:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008744:	4c000020 	jirl	$r0,$r1,0

1c008748 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c008748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00874c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008750:	29802076 	st.w	$r22,$r3,8(0x8)
1c008754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008758:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00875c:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c008760:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c008764:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008768:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c00876c:	578c6fff 	bl	-29588(0xfff8c6c) # 1c0013d8 <myprintf>
1c008770:	14100005 	lu12i.w	$r5,32768(0x8000)
1c008774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008778:	03808184 	ori	$r4,$r12,0x20
1c00877c:	578a17ff 	bl	-30188(0xfff8a14) # 1c001190 <EXTI_ClearITPendingBit>
1c008780:	03400000 	andi	$r0,$r0,0x0
1c008784:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008788:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00878c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008790:	4c000020 	jirl	$r0,$r1,0

1c008794 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c008794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00879c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0087a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0087a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0087a8:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c0087ac:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c0087b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0087b4:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c0087b8:	578c23ff 	bl	-29664(0xfff8c20) # 1c0013d8 <myprintf>
1c0087bc:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0087c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0087c4:	03808184 	ori	$r4,$r12,0x20
1c0087c8:	5789cbff 	bl	-30264(0xfff89c8) # 1c001190 <EXTI_ClearITPendingBit>
1c0087cc:	03400000 	andi	$r0,$r0,0x0
1c0087d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0087d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0087d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0087dc:	4c000020 	jirl	$r0,$r1,0

1c0087e0 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0087e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0087e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0087e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0087ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0087f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0087f4:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c0087f8:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c0087fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008800:	02880084 	addi.w	$r4,$r4,512(0x200)
1c008804:	578bd7ff 	bl	-29740(0xfff8bd4) # 1c0013d8 <myprintf>
1c008808:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00880c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008810:	03808184 	ori	$r4,$r12,0x20
1c008814:	57897fff 	bl	-30340(0xfff897c) # 1c001190 <EXTI_ClearITPendingBit>
1c008818:	03400000 	andi	$r0,$r0,0x0
1c00881c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008820:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008828:	4c000020 	jirl	$r0,$r1,0

1c00882c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00882c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008830:	29803061 	st.w	$r1,$r3,12(0xc)
1c008834:	29802076 	st.w	$r22,$r3,8(0x8)
1c008838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00883c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008840:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c008844:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c008848:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00884c:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c008850:	578b8bff 	bl	-29816(0xfff8b88) # 1c0013d8 <myprintf>
1c008854:	14800005 	lu12i.w	$r5,262144(0x40000)
1c008858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00885c:	03808184 	ori	$r4,$r12,0x20
1c008860:	578933ff 	bl	-30416(0xfff8930) # 1c001190 <EXTI_ClearITPendingBit>
1c008864:	03400000 	andi	$r0,$r0,0x0
1c008868:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00886c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008870:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008874:	4c000020 	jirl	$r0,$r1,0

1c008878 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c008878:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00887c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008880:	29802076 	st.w	$r22,$r3,8(0x8)
1c008884:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008888:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00888c:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c008890:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c008894:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008898:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c00889c:	578b3fff 	bl	-29892(0xfff8b3c) # 1c0013d8 <myprintf>
1c0088a0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0088a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0088a8:	03808184 	ori	$r4,$r12,0x20
1c0088ac:	5788e7ff 	bl	-30492(0xfff88e4) # 1c001190 <EXTI_ClearITPendingBit>
1c0088b0:	03400000 	andi	$r0,$r0,0x0
1c0088b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0088b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0088bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0088c0:	4c000020 	jirl	$r0,$r1,0

1c0088c4 <ext_handler>:
ext_handler():
1c0088c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0088c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0088cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0088d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0088d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0088d8:	0380f18c 	ori	$r12,$r12,0x3c
1c0088dc:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0088e0:	2980018d 	st.w	$r13,$r12,0
1c0088e4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0088e8:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c0088ec:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c0088f0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0088f4:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c0088f8:	578ae3ff 	bl	-29984(0xfff8ae0) # 1c0013d8 <myprintf>
1c0088fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008900:	0380818c 	ori	$r12,$r12,0x20
1c008904:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c008908:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00890c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008910:	0380818c 	ori	$r12,$r12,0x20
1c008914:	2880018c 	ld.w	$r12,$r12,0
1c008918:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00891c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c008920:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008924:	0014b1ac 	and	$r12,$r13,$r12
1c008928:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00892c:	03400000 	andi	$r0,$r0,0x0
1c008930:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c008934:	50004000 	b	64(0x40) # 1c008974 <ext_handler+0xb0>
1c008938:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00893c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008940:	0017b1ac 	srl.w	$r12,$r13,$r12
1c008944:	0340058c 	andi	$r12,$r12,0x1
1c008948:	40002180 	beqz	$r12,32(0x20) # 1c008968 <ext_handler+0xa4>
1c00894c:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c008950:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c008954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008958:	0040898c 	slli.w	$r12,$r12,0x2
1c00895c:	001031ac 	add.w	$r12,$r13,$r12
1c008960:	2880018c 	ld.w	$r12,$r12,0
1c008964:	4c000181 	jirl	$r1,$r12,0
1c008968:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00896c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c008970:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008974:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008978:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00897c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c008938 <ext_handler+0x74>
1c008980:	03400000 	andi	$r0,$r0,0x0
1c008984:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008988:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00898c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008990:	4c000020 	jirl	$r0,$r1,0

1c008994 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c008994:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008998:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00899c:	29806076 	st.w	$r22,$r3,24(0x18)
1c0089a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0089a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0089a8:	0380f18c 	ori	$r12,$r12,0x3c
1c0089ac:	1400020d 	lu12i.w	$r13,16(0x10)
1c0089b0:	2980018d 	st.w	$r13,$r12,0
1c0089b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0089b8:	0380118c 	ori	$r12,$r12,0x4
1c0089bc:	2880018c 	ld.w	$r12,$r12,0
1c0089c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0089c4:	578e67ff 	bl	-29084(0xfff8e64) # 1c001828 <WDG_DogFeed>
1c0089c8:	03400000 	andi	$r0,$r0,0x0
1c0089cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0089d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0089d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0089d8:	4c000020 	jirl	$r0,$r1,0

1c0089dc <TOUCH>:
TOUCH():
1c0089dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0089e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0089e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0089e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0089ec:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0089f0:	0380118c 	ori	$r12,$r12,0x4
1c0089f4:	2880018c 	ld.w	$r12,$r12,0
1c0089f8:	0044c18c 	srli.w	$r12,$r12,0x10
1c0089fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c008a00:	037ffd8c 	andi	$r12,$r12,0xfff
1c008a04:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c008a08:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008a0c:	0380118c 	ori	$r12,$r12,0x4
1c008a10:	2880018c 	ld.w	$r12,$r12,0
1c008a14:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c008a18:	03403d8c 	andi	$r12,$r12,0xf
1c008a1c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c008a20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008a24:	0380f18c 	ori	$r12,$r12,0x3c
1c008a28:	1400040d 	lu12i.w	$r13,32(0x20)
1c008a2c:	2980018d 	st.w	$r13,$r12,0
1c008a30:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008a34:	0380118c 	ori	$r12,$r12,0x4
1c008a38:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c008a3c:	2980018d 	st.w	$r13,$r12,0
1c008a40:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c008a44:	00150185 	move	$r5,$r12
1c008a48:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008a4c:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c008a50:	57898bff 	bl	-30328(0xfff8988) # 1c0013d8 <myprintf>
1c008a54:	03400000 	andi	$r0,$r0,0x0
1c008a58:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008a5c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008a60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008a64:	4c000020 	jirl	$r0,$r1,0

1c008a68 <UART2_INT>:
UART2_INT():
1c008a68:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008a6c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c008a70:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008a74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008a78:	0380f18c 	ori	$r12,$r12,0x3c
1c008a7c:	1400080d 	lu12i.w	$r13,64(0x40)
1c008a80:	2980018d 	st.w	$r13,$r12,0
1c008a84:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c008a88:	0380098c 	ori	$r12,$r12,0x2
1c008a8c:	2a00018c 	ld.bu	$r12,$r12,0
1c008a90:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008a94:	03400000 	andi	$r0,$r0,0x0
1c008a98:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c008a9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008aa0:	4c000020 	jirl	$r0,$r1,0

1c008aa4 <BAT_FAIL>:
BAT_FAIL():
1c008aa4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008aa8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008aac:	29806076 	st.w	$r22,$r3,24(0x18)
1c008ab0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008ab4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008ab8:	0380118c 	ori	$r12,$r12,0x4
1c008abc:	2880018c 	ld.w	$r12,$r12,0
1c008ac0:	0044cd8c 	srli.w	$r12,$r12,0x13
1c008ac4:	03407d8c 	andi	$r12,$r12,0x1f
1c008ac8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008ad0:	0380118c 	ori	$r12,$r12,0x4
1c008ad4:	2880018e 	ld.w	$r14,$r12,0
1c008ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008adc:	0380f18c 	ori	$r12,$r12,0x3c
1c008ae0:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c008ae4:	0014b5cd 	and	$r13,$r14,$r13
1c008ae8:	2980018d 	st.w	$r13,$r12,0
1c008aec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c008af0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008af4:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c008b64 <BAT_FAIL+0xc0>
1c008af8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008afc:	0040898d 	slli.w	$r13,$r12,0x2
1c008b00:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c008b04:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c008b08:	001031ac 	add.w	$r12,$r13,$r12
1c008b0c:	2880018c 	ld.w	$r12,$r12,0
1c008b10:	4c000180 	jirl	$r0,$r12,0
1c008b14:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008b18:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c008b1c:	5788bfff 	bl	-30532(0xfff88bc) # 1c0013d8 <myprintf>
1c008b20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b24:	0380118c 	ori	$r12,$r12,0x4
1c008b28:	29800180 	st.w	$r0,$r12,0
1c008b2c:	50003c00 	b	60(0x3c) # 1c008b68 <BAT_FAIL+0xc4>
1c008b30:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008b34:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c008b38:	5788a3ff 	bl	-30560(0xfff88a0) # 1c0013d8 <myprintf>
1c008b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b40:	0380118c 	ori	$r12,$r12,0x4
1c008b44:	2880018e 	ld.w	$r14,$r12,0
1c008b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008b4c:	0380118c 	ori	$r12,$r12,0x4
1c008b50:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c008b54:	03bffdad 	ori	$r13,$r13,0xfff
1c008b58:	0014b5cd 	and	$r13,$r14,$r13
1c008b5c:	2980018d 	st.w	$r13,$r12,0
1c008b60:	50000800 	b	8(0x8) # 1c008b68 <BAT_FAIL+0xc4>
1c008b64:	03400000 	andi	$r0,$r0,0x0
1c008b68:	03400000 	andi	$r0,$r0,0x0
1c008b6c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008b70:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008b74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008b78:	4c000020 	jirl	$r0,$r1,0

1c008b7c <INTC_Handler>:
INTC_Handler():
1c008b7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008b80:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008b84:	29806076 	st.w	$r22,$r3,24(0x18)
1c008b88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008b8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008b90:	0380158c 	ori	$r12,$r12,0x5
1c008b94:	2a00018c 	ld.bu	$r12,$r12,0
1c008b98:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008b9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008ba0:	0340058c 	andi	$r12,$r12,0x1
1c008ba4:	40002980 	beqz	$r12,40(0x28) # 1c008bcc <INTC_Handler+0x50>
1c008ba8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008bac:	57b4e7ff 	bl	-19228(0xfffb4e4) # 1c004090 <TIM_GetITStatus>
1c008bb0:	0015008c 	move	$r12,$r4
1c008bb4:	40001980 	beqz	$r12,24(0x18) # 1c008bcc <INTC_Handler+0x50>
1c008bb8:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008bbc:	57b523ff 	bl	-19168(0xfffb520) # 1c0040dc <TIM_ClearIT>
1c008bc0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008bc4:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c008bc8:	578813ff 	bl	-30704(0xfff8810) # 1c0013d8 <myprintf>
1c008bcc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008bd0:	0340118c 	andi	$r12,$r12,0x4
1c008bd4:	40002d80 	beqz	$r12,44(0x2c) # 1c008c00 <INTC_Handler+0x84>
1c008bd8:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c008bdc:	2880018c 	ld.w	$r12,$r12,0
1c008be0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c008be4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c008be8:	00150184 	move	$r4,$r12
1c008bec:	5793c7ff 	bl	-27708(0xfff93c4) # 1c001fb0 <my_recv_dat_int>
1c008bf0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008bf4:	03800d8c 	ori	$r12,$r12,0x3
1c008bf8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c008bfc:	2900018d 	st.b	$r13,$r12,0
1c008c00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008c04:	0340218c 	andi	$r12,$r12,0x8
1c008c08:	40002d80 	beqz	$r12,44(0x2c) # 1c008c34 <INTC_Handler+0xb8>
1c008c0c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c008c10:	2880018c 	ld.w	$r12,$r12,0
1c008c14:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c008c18:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c008c1c:	00150184 	move	$r4,$r12
1c008c20:	579393ff 	bl	-27760(0xfff9390) # 1c001fb0 <my_recv_dat_int>
1c008c24:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008c28:	03800d8c 	ori	$r12,$r12,0x3
1c008c2c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c008c30:	2900018d 	st.b	$r13,$r12,0
1c008c34:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008c38:	03800d8c 	ori	$r12,$r12,0x3
1c008c3c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c008c40:	2900018d 	st.b	$r13,$r12,0
1c008c44:	03400000 	andi	$r0,$r0,0x0
1c008c48:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c008c4c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008c50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008c54:	4c000020 	jirl	$r0,$r1,0

1c008c58 <TIMER_HANDLER>:
TIMER_HANDLER():
1c008c58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c008c5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c008c60:	29802076 	st.w	$r22,$r3,8(0x8)
1c008c64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c008c68:	578507ff 	bl	-31484(0xfff8504) # 1c00116c <Set_Timer_clear>
1c008c6c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008c70:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c008c74:	578767ff 	bl	-30876(0xfff8764) # 1c0013d8 <myprintf>
1c008c78:	5784d7ff 	bl	-31532(0xfff84d4) # 1c00114c <Set_Timer_stop>
1c008c7c:	03400000 	andi	$r0,$r0,0x0
1c008c80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008c84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008c88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c008c8c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c008c90 <F6x8-0x334>:
1c008c90:	1c0015f8 	pcaddu12i	$r24,175(0xaf)
1c008c94:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008c98:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008c9c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008ca0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008ca4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008ca8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cac:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cb0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cb4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cb8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cbc:	1c001610 	pcaddu12i	$r16,176(0xb0)
1c008cc0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008cc4:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008cc8:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008ccc:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008cd0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008cd4:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008cd8:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008cdc:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008ce0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c008ce4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008ce8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cec:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cf0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cf4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cf8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008cfc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d00:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d04:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d08:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d0c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d10:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d14:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d18:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d1c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d20:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d24:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d28:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d2c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d30:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d34:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d38:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d3c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d40:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d44:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d48:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d4c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d50:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d54:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d58:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d5c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d60:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d64:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d68:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d6c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d70:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d74:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d78:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d7c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d80:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d84:	1c001588 	pcaddu12i	$r8,172(0xac)
1c008d88:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
1c008d8c:	1c001518 	pcaddu12i	$r24,168(0xa8)
1c008d90:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d94:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d98:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008d9c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008da0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008da4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008da8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008dac:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008db0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008db4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008db8:	1c001550 	pcaddu12i	$r16,170(0xaa)
1c008dbc:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c008dc0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008dc4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008dc8:	1c001484 	pcaddu12i	$r4,164(0xa4)
1c008dcc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008dd0:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
1c008dd4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008dd8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c008ddc:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c008de0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008de4:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c008de8:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c008dec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008df0:	00000000 	0x00000000
1c008df4:	befdca20 	0xbefdca20
1c008df8:	bdfcb0dd 	0xbdfcb0dd
1c008dfc:	b4d5cad3 	0xb4d5cad3
1c008e00:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008e04:	00000000 	0x00000000
1c008e08:	d0b8abb4 	0xd0b8abb4
1c008e0c:	cfc9f7c6 	0xcfc9f7c6
1c008e10:	d0d3bbc3 	0xd0d3bbc3
1c008e14:	b8d6d6ca 	0xb8d6d6ca
1c008e18:	00000000 	0x00000000
1c008e1c:	ebc8bcc2 	0xebc8bcc2
1c008e20:	c6ceb8d6 	0xc6ceb8d6
1c008e24:	f1cfbccd 	0xf1cfbccd
1c008e28:	dcb0a7ca 	0xdcb0a7ca
1c008e2c:	00000000 	0x00000000
1c008e30:	ceb8d620 	0xceb8d620
1c008e34:	b8abccc6 	0xb8abccc6
1c008e38:	ccf2bbc9 	0xccf2bbc9
1c008e3c:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c008e40:	00000000 	0x00000000
1c008e44:	ceb8d620 	0xceb8d620
1c008e48:	caabccc6 	0xcaabccc6
1c008e4c:	ccf2bbaa 	0xccf2bbaa
1c008e50:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c008e54:	00000000 	0x00000000
1c008e58:	b8d62020 	0xb8d62020
1c008e5c:	bccdc6ce 	0xbccdc6ce
1c008e60:	abccf1cf 	0xabccf1cf
1c008e64:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c008e68:	00000000 	0x00000000
1c008e6c:	ceb8d620 	0xceb8d620
1c008e70:	d5d8ccc6 	0xd5d8ccc6
1c008e74:	cce3b5f7 	0xcce3b5f7
1c008e78:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c008e7c:	00000000 	0x00000000
1c008e80:	b8d62020 	0xb8d62020
1c008e84:	bbb2c6ce 	0xbbb2c6ce
1c008e88:	e4c5a5c6 	0xe4c5a5c6
1c008e8c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008e90:	00000000 	0x00000000
1c008e94:	d3bbc320 	0xd3bbc320
1c008e98:	cbd1cbd0 	0xcbd1cbd0
1c008e9c:	d6bdb5f7 	0xd6bdb5f7
1c008ea0:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c008ea4:	00000000 	0x00000000
1c008ea8:	cc202020 	0xcc202020
1c008eac:	baf7d5d8 	0xbaf7d5d8
1c008eb0:	caa2b2cf 	0xcaa2b2cf
1c008eb4:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008eb8:	00000000 	0x00000000
1c008ebc:	b7d6d8b5 	0xb7d6d8b5
1c008ec0:	c5baf2d0 	0xc5baf2d0
1c008ec4:	f6b3acb3 	0xf6b3acb3
1c008ec8:	a7ceb6b7 	0xa7ceb6b7
1c008ecc:	00000000 	0x00000000
1c008ed0:	bec92020 	0xbec92020
1c008ed4:	a3c4fdb3 	0xa3c4fdb3
1c008ed8:	a7cae5b0 	0xa7cae5b0
1c008edc:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c008ee0:	00000000 	0x00000000
1c008ee4:	bfe5c720 	0xbfe5c720
1c008ee8:	ceb8d6d5 	0xceb8d6d5
1c008eec:	cae2bfc6 	0xcae2bfc6
1c008ef0:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008ef4:	00000000 	0x00000000
1c008ef8:	e5b3babb 	0xe5b3babb
1c008efc:	dac4f8c7 	0xdac4f8c7
1c008f00:	d0d3dece 	0xd0d3dece
1c008f04:	bccda7d0 	0xbccda7d0
1c008f08:	00000000 	0x00000000
1c008f0c:	d0c1b620 	0xd0c1b620
1c008f10:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1db54 <_start-0x2e24ac>
1c008f14:	f6b34853 	0xf6b34853
1c008f18:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c008f1c:	00000000 	0x00000000
1c008f20:	ce202020 	0xce202020
1c008f24:	d2a8b6b4 	0xd2a8b6b4
1c008f28:	ceedb4e5 	0xceedb4e5
1c008f2c:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c008f30:	00000000 	0x00000000
1c008f34:	dece2020 	0xdece2020
1c008f38:	c4bca7d0 	0xc4bca7d0
1c008f3c:	f7c6e6b4 	0xf7c6e6b4
1c008f40:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c008f44:	00000000 	0x00000000
1c008f48:	b4c4bc20 	0xb4c4bc20
1c008f4c:	c4f7c6e6 	0xc4f7c6e6
1c008f50:	b4ddc8da 	0xb4ddc8da
1c008f54:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008f58:	00000000 	0x00000000
1c008f5c:	cac7bc20 	0xcac7bc20
1c008f60:	d2beb1c2 	0xd2beb1c2
1c008f64:	b4ebc2b3 	0xb4ebc2b3
1c008f68:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008f6c:	00000000 	0x00000000
1c008f70:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008f74:	c6ceb8d6 	0xc6ceb8d6
1c008f78:	fac2e2bf 	0xfac2e2bf
1c008f7c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008f80:	00000000 	0x00000000
1c008f84:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008f88:	b7d6d8b5 	0xb7d6d8b5
1c008f8c:	f3ceedb4 	0xf3ceedb4
1c008f90:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008f94:	00000000 	0x00000000
1c008f98:	bbb5b720 	0xbbb5b720
1c008f9c:	c8b7c8d8 	0xc8b7c8d8
1c008fa0:	d3ebc2cf 	0xd3ebc2cf
1c008fa4:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c008fa8:	00000000 	0x00000000
1c008fac:	003a4449 	0x003a4449
1c008fb0:	1c002d24 	pcaddu12i	$r4,361(0x169)
1c008fb4:	1c002dd0 	pcaddu12i	$r16,366(0x16e)
1c008fb8:	1c002e90 	pcaddu12i	$r16,372(0x174)
1c008fbc:	1c002fa8 	pcaddu12i	$r8,381(0x17d)
1c008fc0:	1c00303c 	pcaddu12i	$r28,385(0x181)

1c008fc4 <F6x8>:
	...
1c008fcc:	00002f00 	ctz.d	$r0,$r24
1c008fd0:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c008fd4:	14000007 	lu12i.w	$r7,0
1c008fd8:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c008fdc:	7f2a2400 	0x7f2a2400
1c008fe0:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfe8ff0 <_start-0x17010>
1c008fe4:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c008fe8:	55493600 	bl	-134133452(0x8014934) # 1401d91c <_start-0x7fe26e4>
1c008fec:	00005022 	bitrev.w	$r2,$r1
1c008ff0:	00000305 	0x00000305
1c008ff4:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c008ff8:	00000041 	0x00000041
1c008ffc:	001c2241 	mul.w	$r1,$r18,$r8
1c009000:	3e081400 	0x3e081400
1c009004:	08001408 	0x08001408
1c009008:	08083e08 	0x08083e08
1c00900c:	a0000000 	0xa0000000
1c009010:	08000060 	0x08000060
1c009014:	08080808 	0x08080808
1c009018:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c00f018 <_sidata+0x5150>
1c00901c:	20000000 	ll.w	$r0,$r0,0
1c009020:	02040810 	slti	$r16,$r0,258(0x102)
1c009024:	49513e00 	0x49513e00
1c009028:	00003e45 	revb.d	$r5,$r18
1c00902c:	00407f42 	0x00407f42
1c009030:	51614200 	b	-134127296(0x8016140) # 1401f170 <_start-0x7fe0e90>
1c009034:	21004649 	sc.w	$r9,$r18,68(0x44)
1c009038:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c00903c:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c009040:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c009044:	39454545 	0x39454545
1c009048:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01da84 <_sidata+0x13bbc>
1c00904c:	01003049 	0x01003049
1c009050:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c009054:	49493600 	0x49493600
1c009058:	06003649 	cacop	0x9,$r18,13(0xd)
1c00905c:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c009060:	36360000 	0x36360000
1c009064:	00000000 	0x00000000
1c009068:	00003656 	revb.4h	$r22,$r18
1c00906c:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c009070:	14000041 	lu12i.w	$r1,2(0x2)
1c009074:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c009078:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c00907c:	02000814 	slti	$r20,$r0,2(0x2)
1c009080:	06095101 	cacop	0x1,$r8,596(0x254)
1c009084:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01d9b4 <_sidata+0x13aec>
1c009088:	7c003e51 	0x7c003e51
1c00908c:	7c121112 	0x7c121112
1c009090:	49497f00 	0x49497f00
1c009094:	3e003649 	0x3e003649
1c009098:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c00909c:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01d218 <_sidata+0x13350>
1c0090a0:	7f001c22 	0x7f001c22
1c0090a4:	41494949 	beqz	$r10,2443592(0x254948) # 1c25d9ec <_sidata+0x253b24>
1c0090a8:	09097f00 	0x09097f00
1c0090ac:	3e000109 	0x3e000109
1c0090b0:	7a494941 	0x7a494941
1c0090b4:	08087f00 	0x08087f00
1c0090b8:	00007f08 	0x00007f08
1c0090bc:	00417f41 	slli.d	$r1,$r26,0x1f
1c0090c0:	41402000 	beqz	$r0,81952(0x14020) # 1c01d0e0 <_sidata+0x13218>
1c0090c4:	7f00013f 	0x7f00013f
1c0090c8:	41221408 	beqz	$r0,2171412(0x212214) # 1c21b2dc <_sidata+0x211414>
1c0090cc:	40407f00 	beqz	$r24,16508(0x407c) # 1c00d148 <_sidata+0x3280>
1c0090d0:	7f004040 	0x7f004040
1c0090d4:	7f020c02 	0x7f020c02
1c0090d8:	08047f00 	0x08047f00
1c0090dc:	3e007f10 	0x3e007f10
1c0090e0:	3e414141 	0x3e414141
1c0090e4:	09097f00 	0x09097f00
1c0090e8:	3e000609 	0x3e000609
1c0090ec:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfeb23c <_start-0x14dc4>
1c0090f0:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c0090f4:	46004629 	bnez	$r17,2490436(0x260044) # 1c269138 <_sidata+0x25f270>
1c0090f8:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c0090fc:	7f010100 	0x7f010100
1c009100:	3f000101 	0x3f000101
1c009104:	3f404040 	0x3f404040
1c009108:	40201f00 	beqz	$r24,8220(0x201c) # 1c00b124 <_sidata+0x125c>
1c00910c:	3f001f20 	0x3f001f20
1c009110:	3f403840 	0x3f403840
1c009114:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c009118:	07006314 	0x07006314
1c00911c:	07087008 	0x07087008
1c009120:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c01e280 <_sidata+0x143b8>
1c009124:	00004345 	revh.2w	$r5,$r26
1c009128:	0041417f 	slli.d	$r31,$r11,0x10
1c00912c:	552a5500 	bl	67185236(0x4012a54) # 2001bb80 <_sidata+0x4011cb8>
1c009130:	0000552a 	bitrev.d	$r10,$r9
1c009134:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c009138:	01020400 	0x01020400
1c00913c:	40000402 	beqz	$r0,524292(0x80004) # 1c089140 <_sidata+0x7f278>
1c009140:	40404040 	beqz	$r2,16448(0x4040) # 1c00d180 <_sidata+0x32b8>
1c009144:	02010000 	slti	$r0,$r0,64(0x40)
1c009148:	20000004 	ll.w	$r4,$r0,0
1c00914c:	78545454 	0x78545454
1c009150:	44487f00 	bnez	$r24,18556(0x487c) # 1c00d9cc <_sidata+0x3b04>
1c009154:	38003844 	ldx.b	$r4,$r2,$r14
1c009158:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c00915c:	44443800 	bnez	$r0,17464(0x4438) # 1c00d594 <_sidata+0x36cc>
1c009160:	38007f48 	ldx.b	$r8,$r26,$r31
1c009164:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c009168:	097e0800 	0x097e0800
1c00916c:	18000201 	pcaddi	$r1,16(0x10)
1c009170:	7ca4a4a4 	0x7ca4a4a4
1c009174:	04087f00 	csrxchg	$r0,$r24,0x21f
1c009178:	00007804 	0x00007804
1c00917c:	00407d44 	0x00407d44
1c009180:	84804000 	0x84804000
1c009184:	7f00007d 	0x7f00007d
1c009188:	00442810 	0x00442810
1c00918c:	7f410000 	0x7f410000
1c009190:	7c000040 	0x7c000040
1c009194:	78041804 	0x78041804
1c009198:	04087c00 	csrrd	$r0,0x21f
1c00919c:	38007804 	ldx.b	$r4,$r0,$r30
1c0091a0:	38444444 	vstx	$vr4,$r2,$r17
1c0091a4:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c0091a8:	18001824 	pcaddi	$r4,193(0xc1)
1c0091ac:	fc182424 	0xfc182424
1c0091b0:	04087c00 	csrrd	$r0,0x21f
1c0091b4:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c1091bc <_sidata+0xff2f4>
1c0091b8:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c0091bc:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00d0c0 <_sidata+0x31f8>
1c0091c0:	3c002040 	0x3c002040
1c0091c4:	7c204040 	0x7c204040
1c0091c8:	40201c00 	beqz	$r0,8220(0x201c) # 1c00b1e4 <_sidata+0x131c>
1c0091cc:	3c001c20 	0x3c001c20
1c0091d0:	3c403040 	0x3c403040
1c0091d4:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c0091d8:	1c004428 	pcaddu12i	$r8,545(0x221)
1c0091dc:	7ca0a0a0 	0x7ca0a0a0
1c0091e0:	54644400 	bl	25668(0x6444) # 1c00f624 <_sidata+0x575c>
1c0091e4:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c0091e8:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c0091ec <F8X16>:
	...
1c0091fc:	f8000000 	0xf8000000
1c009200:	00000000 	0x00000000
1c009204:	33000000 	0x33000000
1c009208:	00000030 	0x00000030
1c00920c:	060c1000 	cacop	0x0,$r0,772(0x304)
1c009210:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c00921c:	4078c040 	beqz	$r2,30912(0x78c0) # 1c010adc <_sidata+0x6c14>
1c009220:	004078c0 	0x004078c0
1c009224:	04043f04 	csrxchg	$r4,$r24,0x10f
1c009228:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c00922c:	fc887000 	0xfc887000
1c009230:	00003008 	revb.2h	$r8,$r0
1c009234:	ff201800 	0xff201800
1c009238:	00001e21 	ctz.w	$r1,$r17
1c00923c:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c009240:	000018e0 	cto.w	$r0,$r7
1c009244:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c009248:	001e211e 	mulh.d	$r30,$r8,$r8
1c00924c:	8808f000 	0x8808f000
1c009250:	00000070 	0x00000070
1c009254:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c009258:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c00925c:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c00926c:	e0000000 	0xe0000000
1c009270:	00020418 	0x00020418
1c009274:	07000000 	0x07000000
1c009278:	00402018 	0x00402018
1c00927c:	18040200 	pcaddi	$r0,8208(0x2010)
1c009280:	000000e0 	0x000000e0
1c009284:	18204000 	pcaddi	$r0,66048(0x10200)
1c009288:	00000007 	0x00000007
1c00928c:	f0804040 	0xf0804040
1c009290:	00404080 	0x00404080
1c009294:	0f010202 	0x0f010202
1c009298:	00020201 	0x00020201
1c00929c:	f0000000 	0xf0000000
1c0092a0:	00000000 	0x00000000
1c0092a4:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c0092a8:	00010101 	0x00010101
	...
1c0092b4:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c0092c4:	01010100 	fadd.d	$f0,$f8,$f0
1c0092c8:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c0092d4:	00303000 	0x00303000
	...
1c0092e0:	04186080 	csrxchg	$r0,$r4,0x618
1c0092e4:	06186000 	cacop	0x0,$r0,1560(0x618)
1c0092e8:	00000001 	0x00000001
1c0092ec:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c0092f0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0092f4:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c0092f8:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0092fc:	f8101000 	0xf8101000
1c009300:	00000000 	0x00000000
1c009304:	3f202000 	0x3f202000
1c009308:	00002020 	clo.d	$r0,$r1
1c00930c:	08087000 	0x08087000
1c009310:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c009314:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c009318:	00302122 	0x00302122
1c00931c:	88083000 	0x88083000
1c009320:	00304888 	0x00304888
1c009324:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c009328:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00932c:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c009330:	0000f810 	0x0000f810
1c009334:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c009338:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c00933c:	8808f800 	0x8808f800
1c009340:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c009344:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c009348:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00934c:	8810e000 	0x8810e000
1c009350:	00001888 	cto.w	$r8,$r4
1c009354:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c009358:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00935c:	08083800 	0x08083800
1c009360:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c009364:	3f000000 	0x3f000000
1c009368:	00000000 	0x00000000
1c00936c:	08887000 	0x08887000
1c009370:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c009374:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c009378:	001c2221 	mul.w	$r1,$r17,$r8
1c00937c:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c009380:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009384:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c009388:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c00938c:	c0000000 	0xc0000000
1c009390:	000000c0 	0x000000c0
1c009394:	30000000 	0x30000000
1c009398:	00000030 	0x00000030
1c00939c:	80000000 	0x80000000
1c0093a0:	00000000 	0x00000000
1c0093a4:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c0113a4 <_sidata+0x74dc>
1c0093a8:	00000000 	0x00000000
1c0093ac:	40800000 	beqz	$r0,32768(0x8000) # 1c0113ac <_sidata+0x74e4>
1c0093b0:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c0093b4:	04020100 	csrxchg	$r0,$r8,0x80
1c0093b8:	00201008 	div.w	$r8,$r0,$r4
1c0093bc:	40404040 	beqz	$r2,16448(0x4040) # 1c00d3fc <_sidata+0x3534>
1c0093c0:	00404040 	0x00404040
1c0093c4:	04040404 	csrrd	$r4,0x101
1c0093c8:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c0093cc:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c0093d0:	00008040 	0x00008040
1c0093d4:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c0093d8:	00010204 	0x00010204
1c0093dc:	08487000 	0x08487000
1c0093e0:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c0093e4:	30000000 	0x30000000
1c0093e8:	00000136 	0x00000136
1c0093ec:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c0093f0:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c0093f4:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c0093f8:	000b1423 	0x000b1423
1c0093fc:	38c00000 	0x38c00000
1c009400:	000000e0 	0x000000e0
1c009404:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c009408:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c00940c:	8888f808 	0x8888f808
1c009410:	00007088 	0x00007088
1c009414:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009418:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00941c:	080830c0 	0x080830c0
1c009420:	00380808 	0x00380808
1c009424:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c009428:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c00942c:	0808f808 	0x0808f808
1c009430:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009434:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009438:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c00943c:	8888f808 	0x8888f808
1c009440:	001008e8 	add.w	$r8,$r7,$r2
1c009444:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c009448:	00182023 	sra.w	$r3,$r1,$r8
1c00944c:	8888f808 	0x8888f808
1c009450:	001008e8 	add.w	$r8,$r7,$r2
1c009454:	00203f20 	div.w	$r0,$r25,$r15
1c009458:	00000003 	0x00000003
1c00945c:	080830c0 	0x080830c0
1c009460:	00003808 	revb.2w	$r8,$r0
1c009464:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c009468:	00021e22 	0x00021e22
1c00946c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c009470:	08f80800 	0x08f80800
1c009474:	01213f20 	0x01213f20
1c009478:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c00947c:	f8080800 	0xf8080800
1c009480:	00000808 	0x00000808
1c009484:	3f202000 	0x3f202000
1c009488:	00002020 	clo.d	$r0,$r1
1c00948c:	08080000 	0x08080000
1c009490:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c009494:	808080c0 	0x808080c0
1c009498:	0000007f 	0x0000007f
1c00949c:	c088f808 	0xc088f808
1c0094a0:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c0094a4:	01203f20 	0x01203f20
1c0094a8:	00203826 	div.w	$r6,$r1,$r14
1c0094ac:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c0094b0:	00000000 	0x00000000
1c0094b4:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c0094b8:	00302020 	0x00302020
1c0094bc:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c0094c0:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c0094c4:	3f003f20 	0x3f003f20
1c0094c8:	00203f00 	div.w	$r0,$r24,$r15
1c0094cc:	c030f808 	0xc030f808
1c0094d0:	08f80800 	0x08f80800
1c0094d4:	00203f20 	div.w	$r0,$r25,$r15
1c0094d8:	003f1807 	0x003f1807
1c0094dc:	080810e0 	0x080810e0
1c0094e0:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c0094e4:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c0094e8:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c0094ec:	0808f808 	0x0808f808
1c0094f0:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c0094f4:	01213f20 	0x01213f20
1c0094f8:	00000101 	0x00000101
1c0094fc:	080810e0 	0x080810e0
1c009500:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c009504:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c009508:	004f5038 	0x004f5038
1c00950c:	8888f808 	0x8888f808
1c009510:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c009514:	00203f20 	div.w	$r0,$r25,$r15
1c009518:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c00951c:	08887000 	0x08887000
1c009520:	00380808 	0x00380808
1c009524:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c009528:	001c2221 	mul.w	$r1,$r17,$r8
1c00952c:	f8080818 	0xf8080818
1c009530:	00180808 	sra.w	$r8,$r0,$r2
1c009534:	3f200000 	0x3f200000
1c009538:	00000020 	0x00000020
1c00953c:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c009540:	08f80800 	0x08f80800
1c009544:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c009548:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c00954c:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c009550:	0838c800 	0x0838c800
1c009554:	38070000 	0x38070000
1c009558:	0000010e 	0x0000010e
1c00955c:	f80008f8 	0xf80008f8
1c009560:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c009564:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c009568:	00033c07 	0x00033c07
1c00956c:	80681808 	0x80681808
1c009570:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c009574:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c009578:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c00957c:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c009580:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c009584:	3f200000 	0x3f200000
1c009588:	00000020 	0x00000020
1c00958c:	08080810 	0x08080810
1c009590:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c009594:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c009598:	00182020 	sra.w	$r0,$r1,$r8
1c00959c:	fe000000 	0xfe000000
1c0095a0:	00020202 	0x00020202
1c0095a4:	7f000000 	0x7f000000
1c0095a8:	00404040 	0x00404040
1c0095ac:	c0300c00 	0xc0300c00
1c0095b0:	00000000 	0x00000000
1c0095b4:	01000000 	0x01000000
1c0095b8:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c0095bc:	02020200 	slti	$r0,$r16,128(0x80)
1c0095c0:	000000fe 	0x000000fe
1c0095c4:	40404000 	beqz	$r0,16448(0x4040) # 1c00d604 <_sidata+0x373c>
1c0095c8:	0000007f 	0x0000007f
1c0095cc:	02040000 	slti	$r0,$r0,256(0x100)
1c0095d0:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c0095e4:	80808080 	0x80808080
1c0095e8:	80808080 	0x80808080
1c0095ec:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c0095fc:	80800000 	0x80800000
1c009600:	00008080 	0x00008080
1c009604:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c009608:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c00960c:	8000f808 	0x8000f808
1c009610:	00000080 	0x00000080
1c009614:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c009618:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c00961c:	80000000 	0x80000000
1c009620:	00008080 	0x00008080
1c009624:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c009628:	00112020 	sub.w	$r0,$r1,$r8
1c00962c:	80000000 	0x80000000
1c009630:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c009634:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c009638:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00963c:	80800000 	0x80800000
1c009640:	00008080 	0x00008080
1c009644:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c009648:	00132222 	maskeqz	$r2,$r17,$r8
1c00964c:	f0808000 	0xf0808000
1c009650:	18888888 	pcaddi	$r8,279620(0x44444)
1c009654:	3f202000 	0x3f202000
1c009658:	00002020 	clo.d	$r0,$r1
1c00965c:	80800000 	0x80800000
1c009660:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009664:	94946b00 	0x94946b00
1c009668:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c00966c:	8000f808 	0x8000f808
1c009670:	00008080 	0x00008080
1c009674:	00213f20 	div.wu	$r0,$r25,$r15
1c009678:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c00967c:	98988000 	0x98988000
1c009680:	00000000 	0x00000000
1c009684:	3f202000 	0x3f202000
1c009688:	00002020 	clo.d	$r0,$r1
1c00968c:	80000000 	0x80000000
1c009690:	00009898 	0x00009898
1c009694:	8080c000 	0x8080c000
1c009698:	00007f80 	0x00007f80
1c00969c:	0000f808 	0x0000f808
1c0096a0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0096a4:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c0096a8:	0020302d 	div.w	$r13,$r1,$r12
1c0096ac:	f8080800 	0xf8080800
1c0096b0:	00000000 	0x00000000
1c0096b4:	3f202000 	0x3f202000
1c0096b8:	00002020 	clo.d	$r0,$r1
1c0096bc:	80808080 	0x80808080
1c0096c0:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c0096c4:	00203f20 	div.w	$r0,$r25,$r15
1c0096c8:	3f00203f 	0x3f00203f
1c0096cc:	80008080 	0x80008080
1c0096d0:	00008080 	0x00008080
1c0096d4:	00213f20 	div.wu	$r0,$r25,$r15
1c0096d8:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c0096dc:	80800000 	0x80800000
1c0096e0:	00008080 	0x00008080
1c0096e4:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c0096e8:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c0096ec:	80008080 	0x80008080
1c0096f0:	00000080 	0x00000080
1c0096f4:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c0096f8:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c0096fc:	80000000 	0x80000000
1c009700:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009704:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c009708:	80ffa020 	0x80ffa020
1c00970c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009710:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009714:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c009718:	00010020 	asrtle.d	$r1,$r0
1c00971c:	80800000 	0x80800000
1c009720:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009724:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c009728:	00192424 	srl.d	$r4,$r1,$r9
1c00972c:	e0808000 	0xe0808000
1c009730:	00008080 	0x00008080
1c009734:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c009738:	00002020 	clo.d	$r0,$r1
1c00973c:	00008080 	0x00008080
1c009740:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c009744:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c009748:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c00974c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009750:	80808000 	0x80808000
1c009754:	300e0100 	0x300e0100
1c009758:	00010608 	0x00010608
1c00975c:	80008080 	0x80008080
1c009760:	80808000 	0x80808000
1c009764:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c009768:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c00976c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c009770:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009774:	2e312000 	0x2e312000
1c009778:	0020310e 	div.w	$r14,$r8,$r12
1c00977c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009780:	80808000 	0x80808000
1c009784:	708e8180 	0x708e8180
1c009788:	00010618 	0x00010618
1c00978c:	80808000 	0x80808000
1c009790:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c009794:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c009798:	00302122 	0x00302122
1c00979c:	00000000 	0x00000000
1c0097a0:	02027c80 	slti	$r0,$r4,159(0x9f)
1c0097a4:	00000000 	0x00000000
1c0097a8:	40403f00 	beqz	$r24,16444(0x403c) # 1c00d7e4 <_sidata+0x391c>
1c0097ac:	00000000 	0x00000000
1c0097b0:	000000ff 	0x000000ff
1c0097b4:	00000000 	0x00000000
1c0097b8:	000000ff 	0x000000ff
1c0097bc:	7c020200 	0x7c020200
1c0097c0:	00000080 	0x00000080
1c0097c4:	3f404000 	0x3f404000
1c0097c8:	00000000 	0x00000000
1c0097cc:	01010600 	fadd.d	$f0,$f16,$f1
1c0097d0:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c0097dc <gImage_cc>:
	...
1c009828:	c0c08080 	0xc0c08080
1c00982c:	80c0c0c0 	0x80c0c0c0
1c009830:	00000080 	0x00000080
	...
1c009858:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c00985c:	01000101 	0x01000101
1c009860:	ff070301 	0xff070301
1c009864:	0000f0fe 	0x0000f0fe
	...
1c009884:	fe000000 	0xfe000000
1c009888:	ffffffff 	0xffffffff
1c00988c:	0f9fffff 	0x0f9fffff
1c009890:	ff9f0f0f 	0xff9f0f0f
1c009894:	ffffffff 	0xffffffff
1c009898:	0000feff 	0x0000feff
	...
1c0098b8:	3f1f0700 	0x3f1f0700
1c0098bc:	ffff7f7f 	0xffff7f7f
1c0098c0:	f8f8ffff 	0xf8f8ffff
1c0098c4:	7fffffff 	0x7fffffff
1c0098c8:	071f3f7f 	0x071f3f7f
	...
1c009940:	1c00683c 	pcaddu12i	$r28,833(0x341)
1c009944:	1c005be8 	pcaddu12i	$r8,735(0x2df)
1c009948:	1c005c80 	pcaddu12i	$r0,740(0x2e4)
1c00994c:	1c005d88 	pcaddu12i	$r8,748(0x2ec)
1c009950:	1c005dec 	pcaddu12i	$r12,751(0x2ef)
1c009954:	1c005e50 	pcaddu12i	$r16,754(0x2f2)
1c009958:	1c005f58 	pcaddu12i	$r24,762(0x2fa)
1c00995c:	1c006060 	pcaddu12i	$r0,771(0x303)
1c009960:	1c006168 	pcaddu12i	$r8,779(0x30b)
1c009964:	1c0061cc 	pcaddu12i	$r12,782(0x30e)
1c009968:	1c006230 	pcaddu12i	$r16,785(0x311)
1c00996c:	1c006294 	pcaddu12i	$r20,788(0x314)
1c009970:	1c006364 	pcaddu12i	$r4,795(0x31b)
1c009974:	1c0063c8 	pcaddu12i	$r8,798(0x31e)
1c009978:	1c006498 	pcaddu12i	$r24,804(0x324)
1c00997c:	1c0064fc 	pcaddu12i	$r28,807(0x327)
1c009980:	1c006574 	pcaddu12i	$r20,811(0x32b)
1c009984:	1c00667c 	pcaddu12i	$r28,819(0x333)
1c009988:	1c0066f4 	pcaddu12i	$r20,823(0x337)
1c00998c:	1c0067c4 	pcaddu12i	$r4,830(0x33e)
1c009990:	00002e31 	ctz.d	$r17,$r17
1c009994:	00002e32 	ctz.d	$r18,$r17
1c009998:	00002e33 	ctz.d	$r19,$r17
1c00999c:	0000002a 	0x0000002a
1c0099a0:	00000020 	0x00000020
1c0099a4:	1c007178 	pcaddu12i	$r24,907(0x38b)
1c0099a8:	1c006918 	pcaddu12i	$r24,840(0x348)
1c0099ac:	1c00697c 	pcaddu12i	$r28,843(0x34b)
1c0099b0:	1c006a30 	pcaddu12i	$r16,849(0x351)
1c0099b4:	1c006b1c 	pcaddu12i	$r28,856(0x358)
1c0099b8:	1c006b70 	pcaddu12i	$r16,859(0x35b)
1c0099bc:	1c006ba0 	pcaddu12i	$r0,861(0x35d)
1c0099c0:	1c006bd0 	pcaddu12i	$r16,862(0x35e)
1c0099c4:	1c006c28 	pcaddu12i	$r8,865(0x361)
1c0099c8:	1c006c64 	pcaddu12i	$r4,867(0x363)
1c0099cc:	1c006c80 	pcaddu12i	$r0,868(0x364)
1c0099d0:	1c006d60 	pcaddu12i	$r0,875(0x36b)
1c0099d4:	1c006e4c 	pcaddu12i	$r12,882(0x372)
1c0099d8:	1c006e78 	pcaddu12i	$r24,883(0x373)
1c0099dc:	1c006ea8 	pcaddu12i	$r8,885(0x375)
1c0099e0:	1c006ed4 	pcaddu12i	$r20,886(0x376)
1c0099e4:	1c006f10 	pcaddu12i	$r16,888(0x378)
1c0099e8:	1c006f6c 	pcaddu12i	$r12,891(0x37b)
1c0099ec:	1c006fcc 	pcaddu12i	$r12,894(0x37e)
1c0099f0:	1c006ffc 	pcaddu12i	$r28,895(0x37f)
1c0099f4:	1c0070e8 	pcaddu12i	$r8,903(0x387)
1c0099f8:	1c007148 	pcaddu12i	$r8,906(0x38a)
1c0099fc:	3c200a0d 	0x3c200a0d
1c009a00:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c020620 <_sidata+0x16758>
1c009a04:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c009a08:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeba6c <_start-0x14594>
1c009a0c:	3a636e75 	0x3a636e75
1c009a10:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c009a14:	0a0d3e20 	0x0a0d3e20
1c009a18:	00000000 	0x00000000
1c009a1c:	2e2e2e0a 	0x2e2e2e0a
1c009a20:	2e2e2e2e 	0x2e2e2e2e
1c009a24:	2e2e2e2e 	0x2e2e2e2e
1c009a28:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c009a2c:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19f980 <_sidata+0x195ab8>
1c009a30:	2e2e544e 	0x2e2e544e
1c009a34:	2e2e2e2e 	0x2e2e2e2e
1c009a38:	2e2e2e2e 	0x2e2e2e2e
1c009a3c:	2e2e2e2e 	0x2e2e2e2e
1c009a40:	00000d0a 	0x00000d0a
1c009a44:	2d2d2d0a 	0x2d2d2d0a
1c009a48:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000fb4 <cpu_wait+0xf0c>
1c009a4c:	746e4968 	0x746e4968
1c009a50:	79654b3a 	0x79654b3a
1c009a54:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfefbbc <_start-0x10444>
1c009a58:	3a6c656e 	0x3a6c656e
1c009a5c:	78257830 	0x78257830
1c009a60:	0000000a 	0x0000000a
1c009a64:	2e2e2e0a 	0x2e2e2e0a
1c009a68:	2e2e2e2e 	0x2e2e2e2e
1c009a6c:	2e2e2e2e 	0x2e2e2e2e
1c009a70:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39dc9c <_sidata+0x393dd4>
1c009a74:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1e0d0 <_start-0x2e1f30>
1c009a78:	2e2e4c49 	0x2e2e4c49
1c009a7c:	2e2e2e2e 	0x2e2e2e2e
1c009a80:	2e2e2e2e 	0x2e2e2e2e
1c009a84:	2e2e2e2e 	0x2e2e2e2e
1c009a88:	00000d0a 	0x00000d0a
1c009a8c:	2e2e2e0a 	0x2e2e2e0a
1c009a90:	2e2e2e2e 	0x2e2e2e2e
1c009a94:	2e2e2e2e 	0x2e2e2e2e
1c009a98:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38dbc4 <_sidata+0x383cfc>
1c009a9c:	2e2e2e43 	0x2e2e2e43
1c009aa0:	2e2e2e2e 	0x2e2e2e2e
1c009aa4:	2e2e2e2e 	0x2e2e2e2e
1c009aa8:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c009aac:	0000000d 	0x0000000d
1c009ab0:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c020d14 <_sidata+0x16e4c>
1c009ab4:	72656870 	0x72656870
1c009ab8:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c009abc:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c020824 <_sidata+0x1695c>
1c009ac0:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00fde0 <_sidata+0x5f18>
1c009ac4:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c009ac8:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c020f34 <_sidata+0x1706c>
1c009acc:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c009ad0:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c009ad4:	00000000 	0x00000000
1c009ad8:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c020d44 <_sidata+0x16e7c>
1c009adc:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c020430 <_sidata+0x16568>
1c009ae0:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffbb50 <_start-0x44b0>
1c009ae4:	7261656c 	0x7261656c
1c009ae8:	746e6920 	0x746e6920
1c009aec:	75727265 	0x75727265
1c009af0:	2e2e7470 	0x2e2e7470
1c009af4:	0000000a 	0x0000000a

1c009af8 <Ext_IrqHandle>:
1c009af8:	1c007f44 	pcaddu12i	$r4,1018(0x3fa)
1c009afc:	1c007f90 	pcaddu12i	$r16,1020(0x3fc)
1c009b00:	1c007fdc 	pcaddu12i	$r28,1022(0x3fe)
1c009b04:	1c008028 	pcaddu12i	$r8,1025(0x401)
1c009b08:	1c008074 	pcaddu12i	$r20,1027(0x403)
1c009b0c:	1c0080c0 	pcaddu12i	$r0,1030(0x406)
1c009b10:	1c00810c 	pcaddu12i	$r12,1032(0x408)
1c009b14:	1c008158 	pcaddu12i	$r24,1034(0x40a)
1c009b18:	1c0081a4 	pcaddu12i	$r4,1037(0x40d)
1c009b1c:	1c0081f0 	pcaddu12i	$r16,1039(0x40f)
1c009b20:	1c00823c 	pcaddu12i	$r28,1041(0x411)
1c009b24:	1c008288 	pcaddu12i	$r8,1044(0x414)
1c009b28:	1c0082d4 	pcaddu12i	$r20,1046(0x416)
1c009b2c:	1c008320 	pcaddu12i	$r0,1049(0x419)
1c009b30:	1c00836c 	pcaddu12i	$r12,1051(0x41b)
1c009b34:	1c0083b8 	pcaddu12i	$r24,1053(0x41d)
1c009b38:	1c008404 	pcaddu12i	$r4,1056(0x420)
1c009b3c:	1c008450 	pcaddu12i	$r16,1058(0x422)
1c009b40:	1c00849c 	pcaddu12i	$r28,1060(0x424)
1c009b44:	1c0084e8 	pcaddu12i	$r8,1063(0x427)
1c009b48:	1c008534 	pcaddu12i	$r20,1065(0x429)
1c009b4c:	1c008580 	pcaddu12i	$r0,1068(0x42c)
1c009b50:	1c0085cc 	pcaddu12i	$r12,1070(0x42e)
1c009b54:	1c008618 	pcaddu12i	$r24,1072(0x430)
1c009b58:	1c008664 	pcaddu12i	$r4,1075(0x433)
1c009b5c:	1c0086b0 	pcaddu12i	$r16,1077(0x435)
1c009b60:	1c0086fc 	pcaddu12i	$r28,1079(0x437)
1c009b64:	1c008748 	pcaddu12i	$r8,1082(0x43a)
1c009b68:	1c008794 	pcaddu12i	$r20,1084(0x43c)
1c009b6c:	1c0087e0 	pcaddu12i	$r0,1087(0x43f)
1c009b70:	1c00882c 	pcaddu12i	$r12,1089(0x441)
1c009b74:	1c008878 	pcaddu12i	$r24,1091(0x443)
1c009b78:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b7c:	1c008b14 	pcaddu12i	$r20,1112(0x458)
1c009b80:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b84:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b88:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b8c:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b90:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b94:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b98:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009b9c:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009ba0:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009ba4:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009ba8:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009bac:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009bb0:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009bb4:	1c008b64 	pcaddu12i	$r4,1115(0x45b)
1c009bb8:	1c008b30 	pcaddu12i	$r16,1113(0x459)

1c009bbc <__FUNCTION__.1751>:
1c009bbc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021034 <_sidata+0x1716c>
1c009bc0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c24 <_sidata+0x16d5c>
1c009bc4:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffcc24 <_start-0x33dc>
1c009bc8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d38 <cpu_wait+0xc90>
1c009bcc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a2c <_sidata+0x6b64>
1c009bd0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009bd4 <__FUNCTION__.1755>:
1c009bd4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02104c <_sidata+0x17184>
1c009bd8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c3c <_sidata+0x16d74>
1c009bdc:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffcd3c <_start-0x32c4>
1c009be0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d50 <cpu_wait+0xca8>
1c009be4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a44 <_sidata+0x6b7c>
1c009be8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009bec <__FUNCTION__.1759>:
1c009bec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021064 <_sidata+0x1719c>
1c009bf0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c54 <_sidata+0x16d8c>
1c009bf4:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffce54 <_start-0x31ac>
1c009bf8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d68 <cpu_wait+0xcc0>
1c009bfc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a5c <_sidata+0x6b94>
1c009c00:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c04 <__FUNCTION__.1763>:
1c009c04:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02107c <_sidata+0x171b4>
1c009c08:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c6c <_sidata+0x16da4>
1c009c0c:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffcf6c <_start-0x3094>
1c009c10:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d80 <cpu_wait+0xcd8>
1c009c14:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a74 <_sidata+0x6bac>
1c009c18:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c1c <__FUNCTION__.1767>:
1c009c1c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021094 <_sidata+0x171cc>
1c009c20:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c84 <_sidata+0x16dbc>
1c009c24:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffd084 <_start-0x2f7c>
1c009c28:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000d98 <cpu_wait+0xcf0>
1c009c2c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010a8c <_sidata+0x6bc4>
1c009c30:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c34 <__FUNCTION__.1771>:
1c009c34:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210ac <_sidata+0x171e4>
1c009c38:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020c9c <_sidata+0x16dd4>
1c009c3c:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffd19c <_start-0x2e64>
1c009c40:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000db0 <cpu_wait+0xd08>
1c009c44:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010aa4 <_sidata+0x6bdc>
1c009c48:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c4c <__FUNCTION__.1775>:
1c009c4c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210c4 <_sidata+0x171fc>
1c009c50:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020cb4 <_sidata+0x16dec>
1c009c54:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffd2b4 <_start-0x2d4c>
1c009c58:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000dc8 <cpu_wait+0xd20>
1c009c5c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010abc <_sidata+0x6bf4>
1c009c60:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c64 <__FUNCTION__.1779>:
1c009c64:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210dc <_sidata+0x17214>
1c009c68:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ccc <_sidata+0x16e04>
1c009c6c:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffd3cc <_start-0x2c34>
1c009c70:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000de0 <cpu_wait+0xd38>
1c009c74:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ad4 <_sidata+0x6c0c>
1c009c78:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c7c <__FUNCTION__.1783>:
1c009c7c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0210f4 <_sidata+0x1722c>
1c009c80:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ce4 <_sidata+0x16e1c>
1c009c84:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffcce4 <_start-0x331c>
1c009c88:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000df8 <cpu_wait+0xd50>
1c009c8c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010aec <_sidata+0x6c24>
1c009c90:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009c94 <__FUNCTION__.1787>:
1c009c94:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02110c <_sidata+0x17244>
1c009c98:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020cfc <_sidata+0x16e34>
1c009c9c:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffcdfc <_start-0x3204>
1c009ca0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e10 <cpu_wait+0xd68>
1c009ca4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b04 <_sidata+0x6c3c>
1c009ca8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cac <__FUNCTION__.1791>:
1c009cac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021124 <_sidata+0x1725c>
1c009cb0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d14 <_sidata+0x16e4c>
1c009cb4:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffcf14 <_start-0x30ec>
1c009cb8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e28 <cpu_wait+0xd80>
1c009cbc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b1c <_sidata+0x6c54>
1c009cc0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cc4 <__FUNCTION__.1795>:
1c009cc4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02113c <_sidata+0x17274>
1c009cc8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d2c <_sidata+0x16e64>
1c009ccc:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffd02c <_start-0x2fd4>
1c009cd0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e40 <cpu_wait+0xd98>
1c009cd4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b34 <_sidata+0x6c6c>
1c009cd8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cdc <__FUNCTION__.1799>:
1c009cdc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021154 <_sidata+0x1728c>
1c009ce0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d44 <_sidata+0x16e7c>
1c009ce4:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffd144 <_start-0x2ebc>
1c009ce8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e58 <cpu_wait+0xdb0>
1c009cec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b4c <_sidata+0x6c84>
1c009cf0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009cf4 <__FUNCTION__.1803>:
1c009cf4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02116c <_sidata+0x172a4>
1c009cf8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d5c <_sidata+0x16e94>
1c009cfc:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffd25c <_start-0x2da4>
1c009d00:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e70 <cpu_wait+0xdc8>
1c009d04:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b64 <_sidata+0x6c9c>
1c009d08:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d0c <__FUNCTION__.1807>:
1c009d0c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021184 <_sidata+0x172bc>
1c009d10:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d74 <_sidata+0x16eac>
1c009d14:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffd374 <_start-0x2c8c>
1c009d18:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000e88 <cpu_wait+0xde0>
1c009d1c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b7c <_sidata+0x6cb4>
1c009d20:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d24 <__FUNCTION__.1811>:
1c009d24:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02119c <_sidata+0x172d4>
1c009d28:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020d8c <_sidata+0x16ec4>
1c009d2c:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffd48c <_start-0x2b74>
1c009d30:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ea0 <cpu_wait+0xdf8>
1c009d34:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010b94 <_sidata+0x6ccc>
1c009d38:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d3c <__FUNCTION__.1815>:
1c009d3c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211b4 <_sidata+0x172ec>
1c009d40:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020da4 <_sidata+0x16edc>
1c009d44:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffcda4 <_start-0x325c>
1c009d48:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000eb8 <cpu_wait+0xe10>
1c009d4c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bac <_sidata+0x6ce4>
1c009d50:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d54 <__FUNCTION__.1819>:
1c009d54:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211cc <_sidata+0x17304>
1c009d58:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020dbc <_sidata+0x16ef4>
1c009d5c:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffcebc <_start-0x3144>
1c009d60:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ed0 <cpu_wait+0xe28>
1c009d64:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bc4 <_sidata+0x6cfc>
1c009d68:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d6c <__FUNCTION__.1823>:
1c009d6c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211e4 <_sidata+0x1731c>
1c009d70:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020dd4 <_sidata+0x16f0c>
1c009d74:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffcfd4 <_start-0x302c>
1c009d78:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ee8 <cpu_wait+0xe40>
1c009d7c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bdc <_sidata+0x6d14>
1c009d80:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d84 <__FUNCTION__.1827>:
1c009d84:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0211fc <_sidata+0x17334>
1c009d88:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020dec <_sidata+0x16f24>
1c009d8c:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffd0ec <_start-0x2f14>
1c009d90:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f00 <cpu_wait+0xe58>
1c009d94:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010bf4 <_sidata+0x6d2c>
1c009d98:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009d9c <__FUNCTION__.1831>:
1c009d9c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021214 <_sidata+0x1734c>
1c009da0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e04 <_sidata+0x16f3c>
1c009da4:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffd204 <_start-0x2dfc>
1c009da8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f18 <cpu_wait+0xe70>
1c009dac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c0c <_sidata+0x6d44>
1c009db0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009db4 <__FUNCTION__.1835>:
1c009db4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02122c <_sidata+0x17364>
1c009db8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e1c <_sidata+0x16f54>
1c009dbc:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffd31c <_start-0x2ce4>
1c009dc0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f30 <cpu_wait+0xe88>
1c009dc4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c24 <_sidata+0x6d5c>
1c009dc8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009dcc <__FUNCTION__.1839>:
1c009dcc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021244 <_sidata+0x1737c>
1c009dd0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e34 <_sidata+0x16f6c>
1c009dd4:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffd434 <_start-0x2bcc>
1c009dd8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f48 <cpu_wait+0xea0>
1c009ddc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c3c <_sidata+0x6d74>
1c009de0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009de4 <__FUNCTION__.1843>:
1c009de4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02125c <_sidata+0x17394>
1c009de8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e4c <_sidata+0x16f84>
1c009dec:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffd54c <_start-0x2ab4>
1c009df0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f60 <cpu_wait+0xeb8>
1c009df4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c54 <_sidata+0x6d8c>
1c009df8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009dfc <__FUNCTION__.1847>:
1c009dfc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021274 <_sidata+0x173ac>
1c009e00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e64 <_sidata+0x16f9c>
1c009e04:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffce68 <_start-0x3198>
1c009e08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f78 <cpu_wait+0xed0>
1c009e0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c6c <_sidata+0x6da4>
1c009e10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e14 <__FUNCTION__.1851>:
1c009e14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02128c <_sidata+0x173c4>
1c009e18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e7c <_sidata+0x16fb4>
1c009e1c:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffcf80 <_start-0x3080>
1c009e20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000f90 <cpu_wait+0xee8>
1c009e24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c84 <_sidata+0x6dbc>
1c009e28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e2c <__FUNCTION__.1855>:
1c009e2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212a4 <_sidata+0x173dc>
1c009e30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020e94 <_sidata+0x16fcc>
1c009e34:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffd098 <_start-0x2f68>
1c009e38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fa8 <cpu_wait+0xf00>
1c009e3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010c9c <_sidata+0x6dd4>
1c009e40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e44 <__FUNCTION__.1859>:
1c009e44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212bc <_sidata+0x173f4>
1c009e48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020eac <_sidata+0x16fe4>
1c009e4c:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffd1b0 <_start-0x2e50>
1c009e50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fc0 <cpu_wait+0xf18>
1c009e54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010cb4 <_sidata+0x6dec>
1c009e58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e5c <__FUNCTION__.1863>:
1c009e5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212d4 <_sidata+0x1740c>
1c009e60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ec4 <_sidata+0x16ffc>
1c009e64:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffd2c8 <_start-0x2d38>
1c009e68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000fd8 <cpu_wait+0xf30>
1c009e6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ccc <_sidata+0x6e04>
1c009e70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e74 <__FUNCTION__.1867>:
1c009e74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0212ec <_sidata+0x17424>
1c009e78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020edc <_sidata+0x17014>
1c009e7c:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffd3e0 <_start-0x2c20>
1c009e80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000ff0 <cpu_wait+0xf48>
1c009e84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010ce4 <_sidata+0x6e1c>
1c009e88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009e8c <__FUNCTION__.1871>:
1c009e8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c021304 <_sidata+0x1743c>
1c009e90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020ef4 <_sidata+0x1702c>
1c009e94:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffd4f8 <_start-0x2b08>
1c009e98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001008 <DEFAULT_INT_HANDLER+0x8>
1c009e9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010cfc <_sidata+0x6e34>
1c009ea0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ea4 <__FUNCTION__.1875>:
1c009ea4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c02131c <_sidata+0x17454>
1c009ea8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020f0c <_sidata+0x17044>
1c009eac:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffd610 <_start-0x29f0>
1c009eb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c001020 <DEFAULT_INT_HANDLER+0x20>
1c009eb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010d14 <_sidata+0x6e4c>
1c009eb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009ebc <__FUNCTION__.1884>:
1c009ebc:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c001334 <printbase+0x12c>
1c009ec0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010d20 <_sidata+0x6e58>
1c009ec4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

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
800010b4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb358 <_sidata+0x63fe1490>
800010b8:	81091121 	0x81091121
800010bc:	00000001 	0x00000001
800010c0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010c4:	7e82420b 	0x7e82420b
800010c8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010cc:	00004623 	revh.d	$r3,$r17
800010d0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbd00 <_sidata+0x63ff1e38>
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
800011e4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3526c <_sidata+0x63c2b3a4>
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
80001218:	54547f54 	bl	-45067140(0xd50547c) # 7d506694 <_sidata+0x614fc7cc>
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
800012f8:	54547f54 	bl	-45067140(0xd50547c) # 7d506774 <_sidata+0x614fc8ac>
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
80001328:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1424 <_sidata+0x63fe755c>
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
80001404:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09468 <_sidata+0x63bff5a0>
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
80001468:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55594 <_sidata+0x63c4b6cc>
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
800014c4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054d4 <_sidata+0x63bfb60c>
800014c8:	447f4444 	bnez	$r2,1081156(0x107f44) # 8010940c <_edata+0x107970>
800014cc:	00404444 	0x00404444
800014d0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4d0 <_sidata+0x63fe3608>
800014d4:	52525252 	b	-112569776(0x94a5250) # 794a6724 <_sidata+0x5d49c85c>
800014d8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6728 <_sidata+0x63fdc860>
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
80001638:	52321e32 	b	-120966628(0x8ca321c) # 78ca4854 <_sidata+0x5cc9a98c>
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
80001698:	54547f54 	bl	-45067140(0xd50547c) # 7d506b14 <_sidata+0x614fcc4c>
8000169c:	00404454 	0x00404454
800016a0:	017e0404 	0x017e0404
800016a4:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
800016a8:	95551515 	0x95551515
800016ac:	0000007f 	0x0000007f
800016b0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe39ac <_sidata+0x63fd9ae4>
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
80001750:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc380 <_sidata+0x63ff24b8>
80001754:	f8080810 	0xf8080810
80001758:	f8080e09 	0xf8080e09
8000175c:	00000808 	0x00000808
80001760:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001764:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001768:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000176c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001770:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001774:	54544400 	bl	21572(0x5444) # 80006bb8 <_edata+0x511c>
80001778:	54547f54 	bl	-45067140(0xd50547c) # 7d506bf4 <_sidata+0x614fcd2c>
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
80001850:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc480 <_sidata+0x63ff25b8>
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
800018e4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09948 <_sidata+0x63bffa80>
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
80001938:	54547f54 	bl	-45067140(0xd50547c) # 7d506db4 <_sidata+0x614fceec>
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
800019f4:	54555654 	bl	-112175788(0x9505554) # 79506f48 <_sidata+0x5d4fd080>
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
