
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
1c00000c:	038701ef 	ori	$r15,$r15,0x1c0
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
1c000030:	038001ef 	ori	$r15,$r15,0x0
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
1c0000a0:	541d7000 	bl	7536(0x1d70) # 1c001e10 <main>
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
1c001090:	5417fc00 	bl	6140(0x17fc) # 1c00288c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54183c00 	bl	6204(0x183c) # 1c0028d4 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	5418c000 	bl	6336(0x18c0) # 1c002960 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	5418f400 	bl	6388(0x18f4) # 1c00299c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54170c00 	bl	5900(0x170c) # 1c0027bc <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	541aa000 	bl	6816(0x1aa0) # 1c002b58 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5419ac00 	bl	6572(0x19ac) # 1c002a74 <intc_handler>
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
1c001470:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c001474:	029c818c 	addi.w	$r12,$r12,1824(0x720)
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

1c0019e4 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0019e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0019e8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0019ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0019f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0019f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0019f8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0019fc:	2880018d 	ld.w	$r13,$r12,0
1c001a00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a04:	0014b1ac 	and	$r12,$r13,$r12
1c001a08:	40001180 	beqz	$r12,16(0x10) # 1c001a18 <TIM_GetITStatus+0x34>
1c001a0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001a10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a14:	50000800 	b	8(0x8) # 1c001a1c <TIM_GetITStatus+0x38>
1c001a18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a20:	00150184 	move	$r4,$r12
1c001a24:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001a28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a2c:	4c000020 	jirl	$r0,$r1,0

1c001a30 <TIM_ClearIT>:
TIM_ClearIT():
1c001a30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001a34:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001a38:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001a3c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001a40:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001a44:	2880018e 	ld.w	$r14,$r12,0
1c001a48:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c001a4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a50:	001535cd 	or	$r13,$r14,$r13
1c001a54:	2980018d 	st.w	$r13,$r12,0
1c001a58:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001a5c:	03800d8c 	ori	$r12,$r12,0x3
1c001a60:	2a00018c 	ld.bu	$r12,$r12,0
1c001a64:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001a68:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c001a6c:	03800d8c 	ori	$r12,$r12,0x3
1c001a70:	038005ad 	ori	$r13,$r13,0x1
1c001a74:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001a78:	2900018d 	st.b	$r13,$r12,0
1c001a7c:	03400000 	andi	$r0,$r0,0x0
1c001a80:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001a84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a88:	4c000020 	jirl	$r0,$r1,0

1c001a8c <GPIO_test>:
GPIO_test():
1c001a8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001a90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001a94:	29806076 	st.w	$r22,$r3,24(0x18)
1c001a98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001a9c:	57f68fff 	bl	-2420(0xffff68c) # 1c001128 <EnableInt>
1c001aa0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001aa4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001aa8:	57fd4fff 	bl	-692(0xffffd4c) # 1c0017f4 <gpio_init>
1c001aac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ab0:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ab4:	57fd43ff 	bl	-704(0xffffd40) # 1c0017f4 <gpio_init>
1c001ab8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001abc:	02804804 	addi.w	$r4,$r0,18(0x12)
1c001ac0:	57fd37ff 	bl	-716(0xffffd34) # 1c0017f4 <gpio_init>
1c001ac4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ac8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c001acc:	57fd2bff 	bl	-728(0xffffd28) # 1c0017f4 <gpio_init>
1c001ad0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ad4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c001ad8:	57fd1fff 	bl	-740(0xffffd1c) # 1c0017f4 <gpio_init>
1c001adc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ae0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c001ae4:	57fd13ff 	bl	-752(0xffffd10) # 1c0017f4 <gpio_init>
1c001ae8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001aec:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c001af0:	57fd07ff 	bl	-764(0xffffd04) # 1c0017f4 <gpio_init>
1c001af4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001af8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c001afc:	57fcfbff 	bl	-776(0xffffcf8) # 1c0017f4 <gpio_init>
1c001b00:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b04:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001b08:	57fcefff 	bl	-788(0xffffcec) # 1c0017f4 <gpio_init>
1c001b0c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b10:	02809804 	addi.w	$r4,$r0,38(0x26)
1c001b14:	57fce3ff 	bl	-800(0xffffce0) # 1c0017f4 <gpio_init>
1c001b18:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b1c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001b20:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0017f4 <gpio_init>
1c001b24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b28:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c001b2c:	57fccbff 	bl	-824(0xffffcc8) # 1c0017f4 <gpio_init>
1c001b30:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c001b34:	03bf918c 	ori	$r12,$r12,0xfe4
1c001b38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b3c:	50001400 	b	20(0x14) # 1c001b50 <GPIO_test+0xc4>
1c001b40:	03400000 	andi	$r0,$r0,0x0
1c001b44:	03400000 	andi	$r0,$r0,0x0
1c001b48:	03400000 	andi	$r0,$r0,0x0
1c001b4c:	03400000 	andi	$r0,$r0,0x0
1c001b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001b58:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001b5c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001b40 <GPIO_test+0xb4>
1c001b60:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b64:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001b68:	57fd87ff 	bl	-636(0xffffd84) # 1c0018ec <gpio_write>
1c001b6c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b70:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b74:	57fd7bff 	bl	-648(0xffffd78) # 1c0018ec <gpio_write>
1c001b78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b7c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c001b80:	57fd6fff 	bl	-660(0xffffd6c) # 1c0018ec <gpio_write>
1c001b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b88:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c001b8c:	57fd63ff 	bl	-672(0xffffd60) # 1c0018ec <gpio_write>
1c001b90:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001b94:	02805004 	addi.w	$r4,$r0,20(0x14)
1c001b98:	57fd57ff 	bl	-684(0xffffd54) # 1c0018ec <gpio_write>
1c001b9c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001ba0:	02808804 	addi.w	$r4,$r0,34(0x22)
1c001ba4:	57fd4bff 	bl	-696(0xffffd48) # 1c0018ec <gpio_write>
1c001ba8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001bac:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c001bb0:	57fd3fff 	bl	-708(0xffffd3c) # 1c0018ec <gpio_write>
1c001bb4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001bb8:	02809004 	addi.w	$r4,$r0,36(0x24)
1c001bbc:	57fd33ff 	bl	-720(0xffffd30) # 1c0018ec <gpio_write>
1c001bc0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001bc4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001bc8:	57fd27ff 	bl	-732(0xffffd24) # 1c0018ec <gpio_write>
1c001bcc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001bd0:	02809804 	addi.w	$r4,$r0,38(0x26)
1c001bd4:	57fd1bff 	bl	-744(0xffffd18) # 1c0018ec <gpio_write>
1c001bd8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001bdc:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001be0:	57fd0fff 	bl	-756(0xffffd0c) # 1c0018ec <gpio_write>
1c001be4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001be8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c001bec:	57fd03ff 	bl	-768(0xffffd00) # 1c0018ec <gpio_write>
1c001bf0:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c001bf4:	03bf918c 	ori	$r12,$r12,0xfe4
1c001bf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bfc:	50001400 	b	20(0x14) # 1c001c10 <GPIO_test+0x184>
1c001c00:	03400000 	andi	$r0,$r0,0x0
1c001c04:	03400000 	andi	$r0,$r0,0x0
1c001c08:	03400000 	andi	$r0,$r0,0x0
1c001c0c:	03400000 	andi	$r0,$r0,0x0
1c001c10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c14:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001c18:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c001c1c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001c00 <GPIO_test+0x174>
1c001c20:	00150005 	move	$r5,$r0
1c001c24:	02800404 	addi.w	$r4,$r0,1(0x1)
1c001c28:	57fcc7ff 	bl	-828(0xffffcc4) # 1c0018ec <gpio_write>
1c001c2c:	00150005 	move	$r5,$r0
1c001c30:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001c34:	57fcbbff 	bl	-840(0xffffcb8) # 1c0018ec <gpio_write>
1c001c38:	00150005 	move	$r5,$r0
1c001c3c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c001c40:	57fcafff 	bl	-852(0xffffcac) # 1c0018ec <gpio_write>
1c001c44:	00150005 	move	$r5,$r0
1c001c48:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c001c4c:	57fca3ff 	bl	-864(0xffffca0) # 1c0018ec <gpio_write>
1c001c50:	00150005 	move	$r5,$r0
1c001c54:	02805004 	addi.w	$r4,$r0,20(0x14)
1c001c58:	57fc97ff 	bl	-876(0xffffc94) # 1c0018ec <gpio_write>
1c001c5c:	00150005 	move	$r5,$r0
1c001c60:	02808804 	addi.w	$r4,$r0,34(0x22)
1c001c64:	57fc8bff 	bl	-888(0xffffc88) # 1c0018ec <gpio_write>
1c001c68:	00150005 	move	$r5,$r0
1c001c6c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c001c70:	57fc7fff 	bl	-900(0xffffc7c) # 1c0018ec <gpio_write>
1c001c74:	00150005 	move	$r5,$r0
1c001c78:	02809004 	addi.w	$r4,$r0,36(0x24)
1c001c7c:	57fc73ff 	bl	-912(0xffffc70) # 1c0018ec <gpio_write>
1c001c80:	00150005 	move	$r5,$r0
1c001c84:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001c88:	57fc67ff 	bl	-924(0xffffc64) # 1c0018ec <gpio_write>
1c001c8c:	00150005 	move	$r5,$r0
1c001c90:	02809804 	addi.w	$r4,$r0,38(0x26)
1c001c94:	57fc5bff 	bl	-936(0xffffc58) # 1c0018ec <gpio_write>
1c001c98:	00150005 	move	$r5,$r0
1c001c9c:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c001ca0:	57fc4fff 	bl	-948(0xffffc4c) # 1c0018ec <gpio_write>
1c001ca4:	00150005 	move	$r5,$r0
1c001ca8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c001cac:	57fc43ff 	bl	-960(0xffffc40) # 1c0018ec <gpio_write>
1c001cb0:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c001cb4:	03bf918c 	ori	$r12,$r12,0xfe4
1c001cb8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001cbc:	50001400 	b	20(0x14) # 1c001cd0 <GPIO_test+0x244>
1c001cc0:	03400000 	andi	$r0,$r0,0x0
1c001cc4:	03400000 	andi	$r0,$r0,0x0
1c001cc8:	03400000 	andi	$r0,$r0,0x0
1c001ccc:	03400000 	andi	$r0,$r0,0x0
1c001cd0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001cd4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001cd8:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c001cdc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c001cc0 <GPIO_test+0x234>
1c001ce0:	53fe83ff 	b	-384(0xffffe80) # 1c001b60 <GPIO_test+0xd4>

1c001ce4 <recv_dat_int>:
recv_dat_int():
1c001ce4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ce8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001cec:	29806076 	st.w	$r22,$r3,24(0x18)
1c001cf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001cf4:	0015008c 	move	$r12,$r4
1c001cf8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001cfc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c001d00:	028c118c 	addi.w	$r12,$r12,772(0x304)
1c001d04:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001d08:	2980018d 	st.w	$r13,$r12,0
1c001d0c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001d10:	00150185 	move	$r5,$r12
1c001d14:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001d18:	028bc084 	addi.w	$r4,$r4,752(0x2f0)
1c001d1c:	54001800 	bl	24(0x18) # 1c001d34 <Buffer_write>
1c001d20:	03400000 	andi	$r0,$r0,0x0
1c001d24:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001d28:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001d2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d30:	4c000020 	jirl	$r0,$r1,0

1c001d34 <Buffer_write>:
Buffer_write():
1c001d34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d38:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d40:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001d44:	001500ac 	move	$r12,$r5
1c001d48:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d50:	2880018c 	ld.w	$r12,$r12,0
1c001d54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001d58:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c001d5c:	0010358c 	add.w	$r12,$r12,$r13
1c001d60:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001d64:	2900018d 	st.b	$r13,$r12,0
1c001d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d6c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c001d70:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d78:	2980318d 	st.w	$r13,$r12,12(0xc)
1c001d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d80:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c001d84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d88:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001d8c:	60000dac 	blt	$r13,$r12,12(0xc) # 1c001d98 <Buffer_write+0x64>
1c001d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d94:	29803180 	st.w	$r0,$r12,12(0xc)
1c001d98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d9c:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c001da0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	2980418d 	st.w	$r13,$r12,16(0x10)
1c001dac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db0:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c001db4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db8:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001dbc:	6400458d 	bge	$r12,$r13,68(0x44) # 1c001e00 <Buffer_write+0xcc>
1c001dc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dcc:	2980418d 	st.w	$r13,$r12,16(0x10)
1c001dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd4:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c001dd8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c001ddc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de8:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001df4:	60000dac 	blt	$r13,$r12,12(0xc) # 1c001e00 <Buffer_write+0xcc>
1c001df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dfc:	29802180 	st.w	$r0,$r12,8(0x8)
1c001e00:	03400000 	andi	$r0,$r0,0x0
1c001e04:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e0c:	4c000020 	jirl	$r0,$r1,0

1c001e10 <main>:
main():
1c001e10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e14:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e18:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e20:	57fc6fff 	bl	-916(0xffffc6c) # 1c001a8c <GPIO_test>
1c001e24:	0015000c 	move	$r12,$r0
1c001e28:	00150184 	move	$r4,$r12
1c001e2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e38:	4c000020 	jirl	$r0,$r1,0

1c001e3c <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c001e3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e40:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e44:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e4c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e50:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c001e54:	02805005 	addi.w	$r5,$r0,20(0x14)
1c001e58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001e5c:	02ba2084 	addi.w	$r4,$r4,-376(0xe88)
1c001e60:	57f57bff 	bl	-2696(0xffff578) # 1c0013d8 <myprintf>
1c001e64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c001e68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001e6c:	03808184 	ori	$r4,$r12,0x20
1c001e70:	57f323ff 	bl	-3296(0xffff320) # 1c001190 <EXTI_ClearITPendingBit>
1c001e74:	03400000 	andi	$r0,$r0,0x0
1c001e78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001e7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001e80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e84:	4c000020 	jirl	$r0,$r1,0

1c001e88 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c001e88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c001e90:	29802076 	st.w	$r22,$r3,8(0x8)
1c001e94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e98:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001e9c:	0280d0c6 	addi.w	$r6,$r6,52(0x34)
1c001ea0:	02806405 	addi.w	$r5,$r0,25(0x19)
1c001ea4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ea8:	02b8f084 	addi.w	$r4,$r4,-452(0xe3c)
1c001eac:	57f52fff 	bl	-2772(0xffff52c) # 1c0013d8 <myprintf>
1c001eb0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c001eb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001eb8:	03808184 	ori	$r4,$r12,0x20
1c001ebc:	57f2d7ff 	bl	-3372(0xffff2d4) # 1c001190 <EXTI_ClearITPendingBit>
1c001ec0:	03400000 	andi	$r0,$r0,0x0
1c001ec4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ec8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ecc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001ed0:	4c000020 	jirl	$r0,$r1,0

1c001ed4 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c001ed4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001ed8:	29803061 	st.w	$r1,$r3,12(0xc)
1c001edc:	29802076 	st.w	$r22,$r3,8(0x8)
1c001ee0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ee4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001ee8:	028000c6 	addi.w	$r6,$r6,0
1c001eec:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c001ef0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001ef4:	02b7c084 	addi.w	$r4,$r4,-528(0xdf0)
1c001ef8:	57f4e3ff 	bl	-2848(0xffff4e0) # 1c0013d8 <myprintf>
1c001efc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c001f00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f04:	03808184 	ori	$r4,$r12,0x20
1c001f08:	57f28bff 	bl	-3448(0xffff288) # 1c001190 <EXTI_ClearITPendingBit>
1c001f0c:	03400000 	andi	$r0,$r0,0x0
1c001f10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f1c:	4c000020 	jirl	$r0,$r1,0

1c001f20 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c001f20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f24:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f28:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f30:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f34:	02bf30c6 	addi.w	$r6,$r6,-52(0xfcc)
1c001f38:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c001f3c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f40:	02b69084 	addi.w	$r4,$r4,-604(0xda4)
1c001f44:	57f497ff 	bl	-2924(0xffff494) # 1c0013d8 <myprintf>
1c001f48:	02802005 	addi.w	$r5,$r0,8(0x8)
1c001f4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f50:	03808184 	ori	$r4,$r12,0x20
1c001f54:	57f23fff 	bl	-3524(0xffff23c) # 1c001190 <EXTI_ClearITPendingBit>
1c001f58:	03400000 	andi	$r0,$r0,0x0
1c001f5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001f60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001f64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f68:	4c000020 	jirl	$r0,$r1,0

1c001f6c <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c001f6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f70:	29803061 	st.w	$r1,$r3,12(0xc)
1c001f74:	29802076 	st.w	$r22,$r3,8(0x8)
1c001f78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f7c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001f80:	02be60c6 	addi.w	$r6,$r6,-104(0xf98)
1c001f84:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c001f88:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001f8c:	02b56084 	addi.w	$r4,$r4,-680(0xd58)
1c001f90:	57f44bff 	bl	-3000(0xffff448) # 1c0013d8 <myprintf>
1c001f94:	02804005 	addi.w	$r5,$r0,16(0x10)
1c001f98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001f9c:	03808184 	ori	$r4,$r12,0x20
1c001fa0:	57f1f3ff 	bl	-3600(0xffff1f0) # 1c001190 <EXTI_ClearITPendingBit>
1c001fa4:	03400000 	andi	$r0,$r0,0x0
1c001fa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001fac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001fb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001fb4:	4c000020 	jirl	$r0,$r1,0

1c001fb8 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c001fb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001fbc:	29803061 	st.w	$r1,$r3,12(0xc)
1c001fc0:	29802076 	st.w	$r22,$r3,8(0x8)
1c001fc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001fc8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c001fcc:	02bd90c6 	addi.w	$r6,$r6,-156(0xf64)
1c001fd0:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001fd4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c001fd8:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c001fdc:	57f3ffff 	bl	-3076(0xffff3fc) # 1c0013d8 <myprintf>
1c001fe0:	02808005 	addi.w	$r5,$r0,32(0x20)
1c001fe4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001fe8:	03808184 	ori	$r4,$r12,0x20
1c001fec:	57f1a7ff 	bl	-3676(0xffff1a4) # 1c001190 <EXTI_ClearITPendingBit>
1c001ff0:	03400000 	andi	$r0,$r0,0x0
1c001ff4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c001ff8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c001ffc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002000:	4c000020 	jirl	$r0,$r1,0

1c002004 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c002004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00200c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002014:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002018:	02bcc0c6 	addi.w	$r6,$r6,-208(0xf30)
1c00201c:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c002020:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002024:	02b30084 	addi.w	$r4,$r4,-832(0xcc0)
1c002028:	57f3b3ff 	bl	-3152(0xffff3b0) # 1c0013d8 <myprintf>
1c00202c:	02810005 	addi.w	$r5,$r0,64(0x40)
1c002030:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002034:	03808184 	ori	$r4,$r12,0x20
1c002038:	57f15bff 	bl	-3752(0xffff158) # 1c001190 <EXTI_ClearITPendingBit>
1c00203c:	03400000 	andi	$r0,$r0,0x0
1c002040:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002044:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002048:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00204c:	4c000020 	jirl	$r0,$r1,0

1c002050 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c002050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002054:	29803061 	st.w	$r1,$r3,12(0xc)
1c002058:	29802076 	st.w	$r22,$r3,8(0x8)
1c00205c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002060:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002064:	02bbf0c6 	addi.w	$r6,$r6,-260(0xefc)
1c002068:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c00206c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002070:	02b1d084 	addi.w	$r4,$r4,-908(0xc74)
1c002074:	57f367ff 	bl	-3228(0xffff364) # 1c0013d8 <myprintf>
1c002078:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00207c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002080:	03808184 	ori	$r4,$r12,0x20
1c002084:	57f10fff 	bl	-3828(0xffff10c) # 1c001190 <EXTI_ClearITPendingBit>
1c002088:	03400000 	andi	$r0,$r0,0x0
1c00208c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002090:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002094:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002098:	4c000020 	jirl	$r0,$r1,0

1c00209c <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c00209c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0020a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0020a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020ac:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020b0:	02bb20c6 	addi.w	$r6,$r6,-312(0xec8)
1c0020b4:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c0020b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0020bc:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c0020c0:	57f31bff 	bl	-3304(0xffff318) # 1c0013d8 <myprintf>
1c0020c4:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0020c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0020cc:	03808184 	ori	$r4,$r12,0x20
1c0020d0:	57f0c3ff 	bl	-3904(0xffff0c0) # 1c001190 <EXTI_ClearITPendingBit>
1c0020d4:	03400000 	andi	$r0,$r0,0x0
1c0020d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0020dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0020e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0020e4:	4c000020 	jirl	$r0,$r1,0

1c0020e8 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0020e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0020ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0020f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0020f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020f8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0020fc:	02ba50c6 	addi.w	$r6,$r6,-364(0xe94)
1c002100:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c002104:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002108:	02af7084 	addi.w	$r4,$r4,-1060(0xbdc)
1c00210c:	57f2cfff 	bl	-3380(0xffff2cc) # 1c0013d8 <myprintf>
1c002110:	02880005 	addi.w	$r5,$r0,512(0x200)
1c002114:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002118:	03808184 	ori	$r4,$r12,0x20
1c00211c:	57f077ff 	bl	-3980(0xffff074) # 1c001190 <EXTI_ClearITPendingBit>
1c002120:	03400000 	andi	$r0,$r0,0x0
1c002124:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002128:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00212c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002130:	4c000020 	jirl	$r0,$r1,0

1c002134 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c002134:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002138:	29803061 	st.w	$r1,$r3,12(0xc)
1c00213c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002140:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002144:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002148:	02b980c6 	addi.w	$r6,$r6,-416(0xe60)
1c00214c:	02812405 	addi.w	$r5,$r0,73(0x49)
1c002150:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002154:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c002158:	57f283ff 	bl	-3456(0xffff280) # 1c0013d8 <myprintf>
1c00215c:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c002160:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002164:	03808184 	ori	$r4,$r12,0x20
1c002168:	57f02bff 	bl	-4056(0xffff028) # 1c001190 <EXTI_ClearITPendingBit>
1c00216c:	03400000 	andi	$r0,$r0,0x0
1c002170:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002174:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002178:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00217c:	4c000020 	jirl	$r0,$r1,0

1c002180 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c002180:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002184:	29803061 	st.w	$r1,$r3,12(0xc)
1c002188:	29802076 	st.w	$r22,$r3,8(0x8)
1c00218c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002190:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002194:	02b8b0c6 	addi.w	$r6,$r6,-468(0xe2c)
1c002198:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c00219c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0021a0:	02ad1084 	addi.w	$r4,$r4,-1212(0xb44)
1c0021a4:	57f237ff 	bl	-3532(0xffff234) # 1c0013d8 <myprintf>
1c0021a8:	03a00005 	ori	$r5,$r0,0x800
1c0021ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0021b0:	03808184 	ori	$r4,$r12,0x20
1c0021b4:	57efdfff 	bl	-4132(0xfffefdc) # 1c001190 <EXTI_ClearITPendingBit>
1c0021b8:	03400000 	andi	$r0,$r0,0x0
1c0021bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0021c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0021c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0021c8:	4c000020 	jirl	$r0,$r1,0

1c0021cc <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0021cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0021d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0021d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0021d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0021dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0021e0:	02b7e0c6 	addi.w	$r6,$r6,-520(0xdf8)
1c0021e4:	02815005 	addi.w	$r5,$r0,84(0x54)
1c0021e8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0021ec:	02abe084 	addi.w	$r4,$r4,-1288(0xaf8)
1c0021f0:	57f1ebff 	bl	-3608(0xffff1e8) # 1c0013d8 <myprintf>
1c0021f4:	14000025 	lu12i.w	$r5,1(0x1)
1c0021f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0021fc:	03808184 	ori	$r4,$r12,0x20
1c002200:	57ef93ff 	bl	-4208(0xfffef90) # 1c001190 <EXTI_ClearITPendingBit>
1c002204:	03400000 	andi	$r0,$r0,0x0
1c002208:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00220c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002210:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002214:	4c000020 	jirl	$r0,$r1,0

1c002218 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c002218:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00221c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002220:	29802076 	st.w	$r22,$r3,8(0x8)
1c002224:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002228:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00222c:	02b710c6 	addi.w	$r6,$r6,-572(0xdc4)
1c002230:	02816405 	addi.w	$r5,$r0,89(0x59)
1c002234:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002238:	02aab084 	addi.w	$r4,$r4,-1364(0xaac)
1c00223c:	57f19fff 	bl	-3684(0xffff19c) # 1c0013d8 <myprintf>
1c002240:	14000045 	lu12i.w	$r5,2(0x2)
1c002244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002248:	03808184 	ori	$r4,$r12,0x20
1c00224c:	57ef47ff 	bl	-4284(0xfffef44) # 1c001190 <EXTI_ClearITPendingBit>
1c002250:	03400000 	andi	$r0,$r0,0x0
1c002254:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002258:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00225c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002260:	4c000020 	jirl	$r0,$r1,0

1c002264 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c002264:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002268:	29803061 	st.w	$r1,$r3,12(0xc)
1c00226c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002274:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002278:	02b640c6 	addi.w	$r6,$r6,-624(0xd90)
1c00227c:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c002280:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002284:	02a98084 	addi.w	$r4,$r4,-1440(0xa60)
1c002288:	57f153ff 	bl	-3760(0xffff150) # 1c0013d8 <myprintf>
1c00228c:	14000085 	lu12i.w	$r5,4(0x4)
1c002290:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002294:	03808184 	ori	$r4,$r12,0x20
1c002298:	57eefbff 	bl	-4360(0xfffeef8) # 1c001190 <EXTI_ClearITPendingBit>
1c00229c:	03400000 	andi	$r0,$r0,0x0
1c0022a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0022a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022ac:	4c000020 	jirl	$r0,$r1,0

1c0022b0 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0022b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0022b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0022b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0022bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0022c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0022c4:	02b570c6 	addi.w	$r6,$r6,-676(0xd5c)
1c0022c8:	02819405 	addi.w	$r5,$r0,101(0x65)
1c0022cc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0022d0:	02a85084 	addi.w	$r4,$r4,-1516(0xa14)
1c0022d4:	57f107ff 	bl	-3836(0xffff104) # 1c0013d8 <myprintf>
1c0022d8:	14000105 	lu12i.w	$r5,8(0x8)
1c0022dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0022e0:	03808184 	ori	$r4,$r12,0x20
1c0022e4:	57eeafff 	bl	-4436(0xfffeeac) # 1c001190 <EXTI_ClearITPendingBit>
1c0022e8:	03400000 	andi	$r0,$r0,0x0
1c0022ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0022f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0022f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0022f8:	4c000020 	jirl	$r0,$r1,0

1c0022fc <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0022fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002300:	29803061 	st.w	$r1,$r3,12(0xc)
1c002304:	29802076 	st.w	$r22,$r3,8(0x8)
1c002308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00230c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002310:	02b4a0c6 	addi.w	$r6,$r6,-728(0xd28)
1c002314:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c002318:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00231c:	02a72084 	addi.w	$r4,$r4,-1592(0x9c8)
1c002320:	57f0bbff 	bl	-3912(0xffff0b8) # 1c0013d8 <myprintf>
1c002324:	14000205 	lu12i.w	$r5,16(0x10)
1c002328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00232c:	03808184 	ori	$r4,$r12,0x20
1c002330:	57ee63ff 	bl	-4512(0xfffee60) # 1c001190 <EXTI_ClearITPendingBit>
1c002334:	03400000 	andi	$r0,$r0,0x0
1c002338:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00233c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002340:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002344:	4c000020 	jirl	$r0,$r1,0

1c002348 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c002348:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00234c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002350:	29802076 	st.w	$r22,$r3,8(0x8)
1c002354:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002358:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00235c:	02b3d0c6 	addi.w	$r6,$r6,-780(0xcf4)
1c002360:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c002364:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002368:	02a5f084 	addi.w	$r4,$r4,-1668(0x97c)
1c00236c:	57f06fff 	bl	-3988(0xffff06c) # 1c0013d8 <myprintf>
1c002370:	14000405 	lu12i.w	$r5,32(0x20)
1c002374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002378:	03808184 	ori	$r4,$r12,0x20
1c00237c:	57ee17ff 	bl	-4588(0xfffee14) # 1c001190 <EXTI_ClearITPendingBit>
1c002380:	03400000 	andi	$r0,$r0,0x0
1c002384:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002388:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00238c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002390:	4c000020 	jirl	$r0,$r1,0

1c002394 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c002394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00239c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0023a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0023a4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0023a8:	02b300c6 	addi.w	$r6,$r6,-832(0xcc0)
1c0023ac:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c0023b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0023b4:	02a4c084 	addi.w	$r4,$r4,-1744(0x930)
1c0023b8:	57f023ff 	bl	-4064(0xffff020) # 1c0013d8 <myprintf>
1c0023bc:	14000805 	lu12i.w	$r5,64(0x40)
1c0023c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0023c4:	03808184 	ori	$r4,$r12,0x20
1c0023c8:	57edcbff 	bl	-4664(0xfffedc8) # 1c001190 <EXTI_ClearITPendingBit>
1c0023cc:	03400000 	andi	$r0,$r0,0x0
1c0023d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0023d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0023d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0023dc:	4c000020 	jirl	$r0,$r1,0

1c0023e0 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0023e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0023e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0023e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0023ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0023f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0023f4:	02b230c6 	addi.w	$r6,$r6,-884(0xc8c)
1c0023f8:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c0023fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002400:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c002404:	57efd7ff 	bl	-4140(0xfffefd4) # 1c0013d8 <myprintf>
1c002408:	14001005 	lu12i.w	$r5,128(0x80)
1c00240c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002410:	03808184 	ori	$r4,$r12,0x20
1c002414:	57ed7fff 	bl	-4740(0xfffed7c) # 1c001190 <EXTI_ClearITPendingBit>
1c002418:	03400000 	andi	$r0,$r0,0x0
1c00241c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002420:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002424:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002428:	4c000020 	jirl	$r0,$r1,0

1c00242c <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c00242c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002430:	29803061 	st.w	$r1,$r3,12(0xc)
1c002434:	29802076 	st.w	$r22,$r3,8(0x8)
1c002438:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00243c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002440:	02b160c6 	addi.w	$r6,$r6,-936(0xc58)
1c002444:	02821005 	addi.w	$r5,$r0,132(0x84)
1c002448:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00244c:	02a26084 	addi.w	$r4,$r4,-1896(0x898)
1c002450:	57ef8bff 	bl	-4216(0xfffef88) # 1c0013d8 <myprintf>
1c002454:	14002005 	lu12i.w	$r5,256(0x100)
1c002458:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00245c:	03808184 	ori	$r4,$r12,0x20
1c002460:	57ed33ff 	bl	-4816(0xfffed30) # 1c001190 <EXTI_ClearITPendingBit>
1c002464:	03400000 	andi	$r0,$r0,0x0
1c002468:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00246c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002470:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002474:	4c000020 	jirl	$r0,$r1,0

1c002478 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c002478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00247c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002480:	29802076 	st.w	$r22,$r3,8(0x8)
1c002484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002488:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00248c:	02b090c6 	addi.w	$r6,$r6,-988(0xc24)
1c002490:	02822405 	addi.w	$r5,$r0,137(0x89)
1c002494:	1c000024 	pcaddu12i	$r4,1(0x1)
1c002498:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c00249c:	57ef3fff 	bl	-4292(0xfffef3c) # 1c0013d8 <myprintf>
1c0024a0:	14004005 	lu12i.w	$r5,512(0x200)
1c0024a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024a8:	03808184 	ori	$r4,$r12,0x20
1c0024ac:	57ece7ff 	bl	-4892(0xfffece4) # 1c001190 <EXTI_ClearITPendingBit>
1c0024b0:	03400000 	andi	$r0,$r0,0x0
1c0024b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0024b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0024bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024c0:	4c000020 	jirl	$r0,$r1,0

1c0024c4 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0024c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0024c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0024cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0024d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0024d4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0024d8:	02afc0c6 	addi.w	$r6,$r6,-1040(0xbf0)
1c0024dc:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c0024e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0024e4:	02a00084 	addi.w	$r4,$r4,-2048(0x800)
1c0024e8:	57eef3ff 	bl	-4368(0xfffeef0) # 1c0013d8 <myprintf>
1c0024ec:	14008005 	lu12i.w	$r5,1024(0x400)
1c0024f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0024f4:	03808184 	ori	$r4,$r12,0x20
1c0024f8:	57ec9bff 	bl	-4968(0xfffec98) # 1c001190 <EXTI_ClearITPendingBit>
1c0024fc:	03400000 	andi	$r0,$r0,0x0
1c002500:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002504:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002508:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00250c:	4c000020 	jirl	$r0,$r1,0

1c002510 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c002510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002514:	29803061 	st.w	$r1,$r3,12(0xc)
1c002518:	29802076 	st.w	$r22,$r3,8(0x8)
1c00251c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002520:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002524:	02aef0c6 	addi.w	$r6,$r6,-1092(0xbbc)
1c002528:	02825005 	addi.w	$r5,$r0,148(0x94)
1c00252c:	1c000004 	pcaddu12i	$r4,0
1c002530:	029ed084 	addi.w	$r4,$r4,1972(0x7b4)
1c002534:	57eea7ff 	bl	-4444(0xfffeea4) # 1c0013d8 <myprintf>
1c002538:	14010005 	lu12i.w	$r5,2048(0x800)
1c00253c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002540:	03808184 	ori	$r4,$r12,0x20
1c002544:	57ec4fff 	bl	-5044(0xfffec4c) # 1c001190 <EXTI_ClearITPendingBit>
1c002548:	03400000 	andi	$r0,$r0,0x0
1c00254c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002550:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002558:	4c000020 	jirl	$r0,$r1,0

1c00255c <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c00255c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002560:	29803061 	st.w	$r1,$r3,12(0xc)
1c002564:	29802076 	st.w	$r22,$r3,8(0x8)
1c002568:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00256c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002570:	02ae20c6 	addi.w	$r6,$r6,-1144(0xb88)
1c002574:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c002578:	1c000004 	pcaddu12i	$r4,0
1c00257c:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c002580:	57ee5bff 	bl	-4520(0xfffee58) # 1c0013d8 <myprintf>
1c002584:	14020005 	lu12i.w	$r5,4096(0x1000)
1c002588:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00258c:	03808184 	ori	$r4,$r12,0x20
1c002590:	57ec03ff 	bl	-5120(0xfffec00) # 1c001190 <EXTI_ClearITPendingBit>
1c002594:	03400000 	andi	$r0,$r0,0x0
1c002598:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00259c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0025a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0025a4:	4c000020 	jirl	$r0,$r1,0

1c0025a8 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0025a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0025ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0025b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0025b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0025b8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0025bc:	02ad50c6 	addi.w	$r6,$r6,-1196(0xb54)
1c0025c0:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c0025c4:	1c000004 	pcaddu12i	$r4,0
1c0025c8:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c0025cc:	57ee0fff 	bl	-4596(0xfffee0c) # 1c0013d8 <myprintf>
1c0025d0:	14040005 	lu12i.w	$r5,8192(0x2000)
1c0025d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025d8:	03808184 	ori	$r4,$r12,0x20
1c0025dc:	57ebb7ff 	bl	-5196(0xfffebb4) # 1c001190 <EXTI_ClearITPendingBit>
1c0025e0:	03400000 	andi	$r0,$r0,0x0
1c0025e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0025e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0025ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0025f0:	4c000020 	jirl	$r0,$r1,0

1c0025f4 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0025f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0025f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0025fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c002600:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002604:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002608:	02ac80c6 	addi.w	$r6,$r6,-1248(0xb20)
1c00260c:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c002610:	1c000004 	pcaddu12i	$r4,0
1c002614:	029b4084 	addi.w	$r4,$r4,1744(0x6d0)
1c002618:	57edc3ff 	bl	-4672(0xfffedc0) # 1c0013d8 <myprintf>
1c00261c:	14080005 	lu12i.w	$r5,16384(0x4000)
1c002620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002624:	03808184 	ori	$r4,$r12,0x20
1c002628:	57eb6bff 	bl	-5272(0xfffeb68) # 1c001190 <EXTI_ClearITPendingBit>
1c00262c:	03400000 	andi	$r0,$r0,0x0
1c002630:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002634:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002638:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00263c:	4c000020 	jirl	$r0,$r1,0

1c002640 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c002640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002644:	29803061 	st.w	$r1,$r3,12(0xc)
1c002648:	29802076 	st.w	$r22,$r3,8(0x8)
1c00264c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002650:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002654:	02abb0c6 	addi.w	$r6,$r6,-1300(0xaec)
1c002658:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c00265c:	1c000004 	pcaddu12i	$r4,0
1c002660:	029a1084 	addi.w	$r4,$r4,1668(0x684)
1c002664:	57ed77ff 	bl	-4748(0xfffed74) # 1c0013d8 <myprintf>
1c002668:	14100005 	lu12i.w	$r5,32768(0x8000)
1c00266c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002670:	03808184 	ori	$r4,$r12,0x20
1c002674:	57eb1fff 	bl	-5348(0xfffeb1c) # 1c001190 <EXTI_ClearITPendingBit>
1c002678:	03400000 	andi	$r0,$r0,0x0
1c00267c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002680:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002688:	4c000020 	jirl	$r0,$r1,0

1c00268c <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c00268c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002690:	29803061 	st.w	$r1,$r3,12(0xc)
1c002694:	29802076 	st.w	$r22,$r3,8(0x8)
1c002698:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00269c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0026a0:	02aae0c6 	addi.w	$r6,$r6,-1352(0xab8)
1c0026a4:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c0026a8:	1c000004 	pcaddu12i	$r4,0
1c0026ac:	0298e084 	addi.w	$r4,$r4,1592(0x638)
1c0026b0:	57ed2bff 	bl	-4824(0xfffed28) # 1c0013d8 <myprintf>
1c0026b4:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0026b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026bc:	03808184 	ori	$r4,$r12,0x20
1c0026c0:	57ead3ff 	bl	-5424(0xfffead0) # 1c001190 <EXTI_ClearITPendingBit>
1c0026c4:	03400000 	andi	$r0,$r0,0x0
1c0026c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0026cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0026d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0026d4:	4c000020 	jirl	$r0,$r1,0

1c0026d8 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0026d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0026dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0026e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0026e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0026e8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0026ec:	02aa10c6 	addi.w	$r6,$r6,-1404(0xa84)
1c0026f0:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c0026f4:	1c000004 	pcaddu12i	$r4,0
1c0026f8:	0297b084 	addi.w	$r4,$r4,1516(0x5ec)
1c0026fc:	57ecdfff 	bl	-4900(0xfffecdc) # 1c0013d8 <myprintf>
1c002700:	14400005 	lu12i.w	$r5,131072(0x20000)
1c002704:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002708:	03808184 	ori	$r4,$r12,0x20
1c00270c:	57ea87ff 	bl	-5500(0xfffea84) # 1c001190 <EXTI_ClearITPendingBit>
1c002710:	03400000 	andi	$r0,$r0,0x0
1c002714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00271c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002720:	4c000020 	jirl	$r0,$r1,0

1c002724 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c002724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00272c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002734:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002738:	02a940c6 	addi.w	$r6,$r6,-1456(0xa50)
1c00273c:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c002740:	1c000004 	pcaddu12i	$r4,0
1c002744:	02968084 	addi.w	$r4,$r4,1440(0x5a0)
1c002748:	57ec93ff 	bl	-4976(0xfffec90) # 1c0013d8 <myprintf>
1c00274c:	14800005 	lu12i.w	$r5,262144(0x40000)
1c002750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002754:	03808184 	ori	$r4,$r12,0x20
1c002758:	57ea3bff 	bl	-5576(0xfffea38) # 1c001190 <EXTI_ClearITPendingBit>
1c00275c:	03400000 	andi	$r0,$r0,0x0
1c002760:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002764:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002768:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00276c:	4c000020 	jirl	$r0,$r1,0

1c002770 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c002770:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002774:	29803061 	st.w	$r1,$r3,12(0xc)
1c002778:	29802076 	st.w	$r22,$r3,8(0x8)
1c00277c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002780:	1c000026 	pcaddu12i	$r6,1(0x1)
1c002784:	02a870c6 	addi.w	$r6,$r6,-1508(0xa1c)
1c002788:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c00278c:	1c000004 	pcaddu12i	$r4,0
1c002790:	02955084 	addi.w	$r4,$r4,1364(0x554)
1c002794:	57ec47ff 	bl	-5052(0xfffec44) # 1c0013d8 <myprintf>
1c002798:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c00279c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027a0:	03808184 	ori	$r4,$r12,0x20
1c0027a4:	57e9efff 	bl	-5652(0xfffe9ec) # 1c001190 <EXTI_ClearITPendingBit>
1c0027a8:	03400000 	andi	$r0,$r0,0x0
1c0027ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0027b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0027b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0027b8:	4c000020 	jirl	$r0,$r1,0

1c0027bc <ext_handler>:
ext_handler():
1c0027bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0027c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0027c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027d0:	0380f18c 	ori	$r12,$r12,0x3c
1c0027d4:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0027d8:	2980018d 	st.w	$r13,$r12,0
1c0027dc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0027e0:	02a760c6 	addi.w	$r6,$r6,-1576(0x9d8)
1c0027e4:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c0027e8:	1c000004 	pcaddu12i	$r4,0
1c0027ec:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c0027f0:	57ebebff 	bl	-5144(0xfffebe8) # 1c0013d8 <myprintf>
1c0027f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0027f8:	0380818c 	ori	$r12,$r12,0x20
1c0027fc:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c002800:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002804:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002808:	0380818c 	ori	$r12,$r12,0x20
1c00280c:	2880018c 	ld.w	$r12,$r12,0
1c002810:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002814:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002818:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00281c:	0014b1ac 	and	$r12,$r13,$r12
1c002820:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002824:	03400000 	andi	$r0,$r0,0x0
1c002828:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00282c:	50004000 	b	64(0x40) # 1c00286c <ext_handler+0xb0>
1c002830:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002834:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002838:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00283c:	0340058c 	andi	$r12,$r12,0x1
1c002840:	40002180 	beqz	$r12,32(0x20) # 1c002860 <ext_handler+0xa4>
1c002844:	1c00000d 	pcaddu12i	$r13,0
1c002848:	0296b1ad 	addi.w	$r13,$r13,1452(0x5ac)
1c00284c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002850:	0040898c 	slli.w	$r12,$r12,0x2
1c002854:	001031ac 	add.w	$r12,$r13,$r12
1c002858:	2880018c 	ld.w	$r12,$r12,0
1c00285c:	4c000181 	jirl	$r1,$r12,0
1c002860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002864:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002868:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00286c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002870:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002874:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c002830 <ext_handler+0x74>
1c002878:	03400000 	andi	$r0,$r0,0x0
1c00287c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002880:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002884:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002894:	29806076 	st.w	$r22,$r3,24(0x18)
1c002898:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00289c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028a0:	0380f18c 	ori	$r12,$r12,0x3c
1c0028a4:	1400020d 	lu12i.w	$r13,16(0x10)
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028b0:	0380118c 	ori	$r12,$r12,0x4
1c0028b4:	2880018c 	ld.w	$r12,$r12,0
1c0028b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0028bc:	57ef0fff 	bl	-4340(0xfffef0c) # 1c0017c8 <WDG_DogFeed>
1c0028c0:	03400000 	andi	$r0,$r0,0x0
1c0028c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0028c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0028cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028d0:	4c000020 	jirl	$r0,$r1,0

1c0028d4 <TOUCH>:
TOUCH():
1c0028d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0028d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0028dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0028e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0028e4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0028e8:	0380118c 	ori	$r12,$r12,0x4
1c0028ec:	2880018c 	ld.w	$r12,$r12,0
1c0028f0:	0044c18c 	srli.w	$r12,$r12,0x10
1c0028f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028f8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0028fc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c002900:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c002904:	0380118c 	ori	$r12,$r12,0x4
1c002908:	2880018c 	ld.w	$r12,$r12,0
1c00290c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002910:	03403d8c 	andi	$r12,$r12,0xf
1c002914:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00291c:	0380f18c 	ori	$r12,$r12,0x3c
1c002920:	1400040d 	lu12i.w	$r13,32(0x20)
1c002924:	2980018d 	st.w	$r13,$r12,0
1c002928:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00292c:	0380118c 	ori	$r12,$r12,0x4
1c002930:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002934:	2980018d 	st.w	$r13,$r12,0
1c002938:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00293c:	00150185 	move	$r5,$r12
1c002940:	1c000004 	pcaddu12i	$r4,0
1c002944:	028fa084 	addi.w	$r4,$r4,1000(0x3e8)
1c002948:	57ea93ff 	bl	-5488(0xfffea90) # 1c0013d8 <myprintf>
1c00294c:	03400000 	andi	$r0,$r0,0x0
1c002950:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002954:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002958:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00295c:	4c000020 	jirl	$r0,$r1,0

1c002960 <UART2_INT>:
UART2_INT():
1c002960:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002964:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002968:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00296c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002970:	0380f18c 	ori	$r12,$r12,0x3c
1c002974:	1400080d 	lu12i.w	$r13,64(0x40)
1c002978:	2980018d 	st.w	$r13,$r12,0
1c00297c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002980:	0380098c 	ori	$r12,$r12,0x2
1c002984:	2a00018c 	ld.bu	$r12,$r12,0
1c002988:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00298c:	03400000 	andi	$r0,$r0,0x0
1c002990:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002994:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002998:	4c000020 	jirl	$r0,$r1,0

1c00299c <BAT_FAIL>:
BAT_FAIL():
1c00299c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0029a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0029a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029b0:	0380118c 	ori	$r12,$r12,0x4
1c0029b4:	2880018c 	ld.w	$r12,$r12,0
1c0029b8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c0029bc:	03407d8c 	andi	$r12,$r12,0x1f
1c0029c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0029c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029c8:	0380118c 	ori	$r12,$r12,0x4
1c0029cc:	2880018e 	ld.w	$r14,$r12,0
1c0029d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029d4:	0380f18c 	ori	$r12,$r12,0x3c
1c0029d8:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c0029dc:	0014b5cd 	and	$r13,$r14,$r13
1c0029e0:	2980018d 	st.w	$r13,$r12,0
1c0029e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0029e8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0029ec:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c002a5c <BAT_FAIL+0xc0>
1c0029f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029f4:	0040898d 	slli.w	$r13,$r12,0x2
1c0029f8:	1c00000c 	pcaddu12i	$r12,0
1c0029fc:	0291e18c 	addi.w	$r12,$r12,1144(0x478)
1c002a00:	001031ac 	add.w	$r12,$r13,$r12
1c002a04:	2880018c 	ld.w	$r12,$r12,0
1c002a08:	4c000180 	jirl	$r0,$r12,0
1c002a0c:	1c000004 	pcaddu12i	$r4,0
1c002a10:	028cf084 	addi.w	$r4,$r4,828(0x33c)
1c002a14:	57e9c7ff 	bl	-5692(0xfffe9c4) # 1c0013d8 <myprintf>
1c002a18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a1c:	0380118c 	ori	$r12,$r12,0x4
1c002a20:	29800180 	st.w	$r0,$r12,0
1c002a24:	50003c00 	b	60(0x3c) # 1c002a60 <BAT_FAIL+0xc4>
1c002a28:	1c000004 	pcaddu12i	$r4,0
1c002a2c:	028d2084 	addi.w	$r4,$r4,840(0x348)
1c002a30:	57e9abff 	bl	-5720(0xfffe9a8) # 1c0013d8 <myprintf>
1c002a34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a38:	0380118c 	ori	$r12,$r12,0x4
1c002a3c:	2880018e 	ld.w	$r14,$r12,0
1c002a40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a44:	0380118c 	ori	$r12,$r12,0x4
1c002a48:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c002a4c:	03bffdad 	ori	$r13,$r13,0xfff
1c002a50:	0014b5cd 	and	$r13,$r14,$r13
1c002a54:	2980018d 	st.w	$r13,$r12,0
1c002a58:	50000800 	b	8(0x8) # 1c002a60 <BAT_FAIL+0xc4>
1c002a5c:	03400000 	andi	$r0,$r0,0x0
1c002a60:	03400000 	andi	$r0,$r0,0x0
1c002a64:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a68:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a6c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a70:	4c000020 	jirl	$r0,$r1,0

1c002a74 <intc_handler>:
intc_handler():
1c002a74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a78:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a7c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a84:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a88:	0380158c 	ori	$r12,$r12,0x5
1c002a8c:	2a00018c 	ld.bu	$r12,$r12,0
1c002a90:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a98:	0340058c 	andi	$r12,$r12,0x1
1c002a9c:	40002980 	beqz	$r12,40(0x28) # 1c002ac4 <intc_handler+0x50>
1c002aa0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002aa4:	57ef43ff 	bl	-4288(0xfffef40) # 1c0019e4 <TIM_GetITStatus>
1c002aa8:	0015008c 	move	$r12,$r4
1c002aac:	40001980 	beqz	$r12,24(0x18) # 1c002ac4 <intc_handler+0x50>
1c002ab0:	02840004 	addi.w	$r4,$r0,256(0x100)
1c002ab4:	57ef7fff 	bl	-4228(0xfffef7c) # 1c001a30 <TIM_ClearIT>
1c002ab8:	1c000004 	pcaddu12i	$r4,0
1c002abc:	028b7084 	addi.w	$r4,$r4,732(0x2dc)
1c002ac0:	57e91bff 	bl	-5864(0xfffe918) # 1c0013d8 <myprintf>
1c002ac4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ac8:	0340118c 	andi	$r12,$r12,0x4
1c002acc:	40003580 	beqz	$r12,52(0x34) # 1c002b00 <intc_handler+0x8c>
1c002ad0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002ad4:	2a00018c 	ld.bu	$r12,$r12,0
1c002ad8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002adc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002ae0:	00150185 	move	$r5,$r12
1c002ae4:	1c000004 	pcaddu12i	$r4,0
1c002ae8:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c002aec:	57e8efff 	bl	-5908(0xfffe8ec) # 1c0013d8 <myprintf>
1c002af0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002af4:	03800d8c 	ori	$r12,$r12,0x3
1c002af8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c002afc:	2900018d 	st.b	$r13,$r12,0
1c002b00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b04:	0340218c 	andi	$r12,$r12,0x8
1c002b08:	40002d80 	beqz	$r12,44(0x2c) # 1c002b34 <intc_handler+0xc0>
1c002b0c:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002b10:	2a00018c 	ld.bu	$r12,$r12,0
1c002b14:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002b18:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002b1c:	00150184 	move	$r4,$r12
1c002b20:	57f1c7ff 	bl	-3644(0xffff1c4) # 1c001ce4 <recv_dat_int>
1c002b24:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b28:	03800d8c 	ori	$r12,$r12,0x3
1c002b2c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c002b30:	2900018d 	st.b	$r13,$r12,0
1c002b34:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b38:	03800d8c 	ori	$r12,$r12,0x3
1c002b3c:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c002b40:	2900018d 	st.b	$r13,$r12,0
1c002b44:	03400000 	andi	$r0,$r0,0x0
1c002b48:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b4c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b54:	4c000020 	jirl	$r0,$r1,0

1c002b58 <TIMER_HANDLER>:
TIMER_HANDLER():
1c002b58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002b60:	29802076 	st.w	$r22,$r3,8(0x8)
1c002b64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b68:	57e607ff 	bl	-6652(0xfffe604) # 1c00116c <Set_Timer_clear>
1c002b6c:	1c000004 	pcaddu12i	$r4,0
1c002b70:	02899084 	addi.w	$r4,$r4,612(0x264)
1c002b74:	57e867ff 	bl	-6044(0xfffe864) # 1c0013d8 <myprintf>
1c002b78:	57e5d7ff 	bl	-6700(0xfffe5d4) # 1c00114c <Set_Timer_stop>
1c002b7c:	03400000 	andi	$r0,$r0,0x0
1c002b80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002b84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002b88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b8c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c002b90 <Ext_IrqHandle-0x260>:
1c002b90:	1c0015f8 	pcaddu12i	$r24,175(0xaf)
1c002b94:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002b98:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002b9c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002ba0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002ba4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002ba8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bac:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bb0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bb4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bb8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bbc:	1c001610 	pcaddu12i	$r16,176(0xb0)
1c002bc0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bc4:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bc8:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bcc:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bd0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bd4:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bd8:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002bdc:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002be0:	1c001698 	pcaddu12i	$r24,180(0xb4)
1c002be4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002be8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bec:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bf0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bf4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bf8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002bfc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c00:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c04:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c08:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c0c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c10:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c14:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c18:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c1c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c20:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c24:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c28:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c2c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c30:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c34:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c38:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c3c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c40:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c44:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c48:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c4c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c50:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c54:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c58:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c5c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c60:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c64:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c68:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c6c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c70:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c74:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c78:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c7c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c80:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c84:	1c001588 	pcaddu12i	$r8,172(0xac)
1c002c88:	1c0014b0 	pcaddu12i	$r16,165(0xa5)
1c002c8c:	1c001518 	pcaddu12i	$r24,168(0xa8)
1c002c90:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c94:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c98:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002c9c:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002ca0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002ca4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002ca8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cac:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cb0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cb4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cb8:	1c001550 	pcaddu12i	$r16,170(0xaa)
1c002cbc:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c002cc0:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cc4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cc8:	1c001484 	pcaddu12i	$r4,164(0xa4)
1c002ccc:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cd0:	1c0014e0 	pcaddu12i	$r0,167(0xa7)
1c002cd4:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cd8:	1c001714 	pcaddu12i	$r20,184(0xb8)
1c002cdc:	1c0015c0 	pcaddu12i	$r0,174(0xae)
1c002ce0:	3c200a0d 	0x3c200a0d
1c002ce4:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c019904 <_sidata+0x16744>
1c002ce8:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c002cec:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfe4d50 <_start-0x1b2b0>
1c002cf0:	3a636e75 	0x3a636e75
1c002cf4:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c002cf8:	0a0d3e20 	0x0a0d3e20
1c002cfc:	00000000 	0x00000000
1c002d00:	2e2e2e0a 	0x2e2e2e0a
1c002d04:	2e2e2e2e 	0x2e2e2e2e
1c002d08:	2e2e2e2e 	0x2e2e2e2e
1c002d0c:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c002d10:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c198c64 <_sidata+0x195aa4>
1c002d14:	2e2e544e 	0x2e2e544e
1c002d18:	2e2e2e2e 	0x2e2e2e2e
1c002d1c:	2e2e2e2e 	0x2e2e2e2e
1c002d20:	2e2e2e2e 	0x2e2e2e2e
1c002d24:	00000d0a 	0x00000d0a
1c002d28:	2d2d2d0a 	0x2d2d2d0a
1c002d2c:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bffa298 <_start-0x5d68>
1c002d30:	746e4968 	0x746e4968
1c002d34:	79654b3a 	0x79654b3a
1c002d38:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfe8ea0 <_start-0x17160>
1c002d3c:	3a6c656e 	0x3a6c656e
1c002d40:	78257830 	0x78257830
1c002d44:	0000000a 	0x0000000a
1c002d48:	2e2e2e0a 	0x2e2e2e0a
1c002d4c:	2e2e2e2e 	0x2e2e2e2e
1c002d50:	2e2e2e2e 	0x2e2e2e2e
1c002d54:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c396f80 <_sidata+0x393dc0>
1c002d58:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd173b4 <_start-0x2e8c4c>
1c002d5c:	2e2e4c49 	0x2e2e4c49
1c002d60:	2e2e2e2e 	0x2e2e2e2e
1c002d64:	2e2e2e2e 	0x2e2e2e2e
1c002d68:	2e2e2e2e 	0x2e2e2e2e
1c002d6c:	00000d0a 	0x00000d0a
1c002d70:	2e2e2e0a 	0x2e2e2e0a
1c002d74:	2e2e2e2e 	0x2e2e2e2e
1c002d78:	2e2e2e2e 	0x2e2e2e2e
1c002d7c:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c386ea8 <_sidata+0x383ce8>
1c002d80:	2e2e2e43 	0x2e2e2e43
1c002d84:	2e2e2e2e 	0x2e2e2e2e
1c002d88:	2e2e2e2e 	0x2e2e2e2e
1c002d8c:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c002d90:	0000000d 	0x0000000d
1c002d94:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c019ff8 <_sidata+0x16e38>
1c002d98:	72656870 	0x72656870
1c002d9c:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c002da0:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c019b08 <_sidata+0x16948>
1c002da4:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c0090c4 <_sidata+0x5f04>
1c002da8:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c002dac:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01a218 <_sidata+0x17058>
1c002db0:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c002db4:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c002db8:	00000000 	0x00000000
1c002dbc:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c002dc0:	65722031 	bge	$r1,$r17,94752(0x17220) # 1c019fe0 <_sidata+0x16e20>
1c002dc4:	303a7663 	0x303a7663
1c002dc8:	0a782578 	0x0a782578
1c002dcc:	00000000 	0x00000000
1c002dd0:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c01a03c <_sidata+0x16e7c>
1c002dd4:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c019728 <_sidata+0x16568>
1c002dd8:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bff4e48 <_start-0xb1b8>
1c002ddc:	7261656c 	0x7261656c
1c002de0:	746e6920 	0x746e6920
1c002de4:	75727265 	0x75727265
1c002de8:	2e2e7470 	0x2e2e7470
1c002dec:	0000000a 	0x0000000a

1c002df0 <Ext_IrqHandle>:
1c002df0:	1c001e3c 	pcaddu12i	$r28,241(0xf1)
1c002df4:	1c001e88 	pcaddu12i	$r8,244(0xf4)
1c002df8:	1c001ed4 	pcaddu12i	$r20,246(0xf6)
1c002dfc:	1c001f20 	pcaddu12i	$r0,249(0xf9)
1c002e00:	1c001f6c 	pcaddu12i	$r12,251(0xfb)
1c002e04:	1c001fb8 	pcaddu12i	$r24,253(0xfd)
1c002e08:	1c002004 	pcaddu12i	$r4,256(0x100)
1c002e0c:	1c002050 	pcaddu12i	$r16,258(0x102)
1c002e10:	1c00209c 	pcaddu12i	$r28,260(0x104)
1c002e14:	1c0020e8 	pcaddu12i	$r8,263(0x107)
1c002e18:	1c002134 	pcaddu12i	$r20,265(0x109)
1c002e1c:	1c002180 	pcaddu12i	$r0,268(0x10c)
1c002e20:	1c0021cc 	pcaddu12i	$r12,270(0x10e)
1c002e24:	1c002218 	pcaddu12i	$r24,272(0x110)
1c002e28:	1c002264 	pcaddu12i	$r4,275(0x113)
1c002e2c:	1c0022b0 	pcaddu12i	$r16,277(0x115)
1c002e30:	1c0022fc 	pcaddu12i	$r28,279(0x117)
1c002e34:	1c002348 	pcaddu12i	$r8,282(0x11a)
1c002e38:	1c002394 	pcaddu12i	$r20,284(0x11c)
1c002e3c:	1c0023e0 	pcaddu12i	$r0,287(0x11f)
1c002e40:	1c00242c 	pcaddu12i	$r12,289(0x121)
1c002e44:	1c002478 	pcaddu12i	$r24,291(0x123)
1c002e48:	1c0024c4 	pcaddu12i	$r4,294(0x126)
1c002e4c:	1c002510 	pcaddu12i	$r16,296(0x128)
1c002e50:	1c00255c 	pcaddu12i	$r28,298(0x12a)
1c002e54:	1c0025a8 	pcaddu12i	$r8,301(0x12d)
1c002e58:	1c0025f4 	pcaddu12i	$r20,303(0x12f)
1c002e5c:	1c002640 	pcaddu12i	$r0,306(0x132)
1c002e60:	1c00268c 	pcaddu12i	$r12,308(0x134)
1c002e64:	1c0026d8 	pcaddu12i	$r24,310(0x136)
1c002e68:	1c002724 	pcaddu12i	$r4,313(0x139)
1c002e6c:	1c002770 	pcaddu12i	$r16,315(0x13b)
1c002e70:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e74:	1c002a0c 	pcaddu12i	$r12,336(0x150)
1c002e78:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e7c:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e80:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e84:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e88:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e8c:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e90:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e94:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e98:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002e9c:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002ea0:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002ea4:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002ea8:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002eac:	1c002a5c 	pcaddu12i	$r28,338(0x152)
1c002eb0:	1c002a28 	pcaddu12i	$r8,337(0x151)

1c002eb4 <__FUNCTION__.1575>:
1c002eb4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a32c <_sidata+0x1716c>
1c002eb8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019f1c <_sidata+0x16d5c>
1c002ebc:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff5f1c <_start-0xa0e4>
1c002ec0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa030 <_start-0x5fd0>
1c002ec4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009d24 <_sidata+0x6b64>
1c002ec8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ecc <__FUNCTION__.1579>:
1c002ecc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a344 <_sidata+0x17184>
1c002ed0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019f34 <_sidata+0x16d74>
1c002ed4:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff6034 <_start-0x9fcc>
1c002ed8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa048 <_start-0x5fb8>
1c002edc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009d3c <_sidata+0x6b7c>
1c002ee0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002ee4 <__FUNCTION__.1583>:
1c002ee4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a35c <_sidata+0x1719c>
1c002ee8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019f4c <_sidata+0x16d8c>
1c002eec:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff614c <_start-0x9eb4>
1c002ef0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa060 <_start-0x5fa0>
1c002ef4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009d54 <_sidata+0x6b94>
1c002ef8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002efc <__FUNCTION__.1587>:
1c002efc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a374 <_sidata+0x171b4>
1c002f00:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019f64 <_sidata+0x16da4>
1c002f04:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff6264 <_start-0x9d9c>
1c002f08:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa078 <_start-0x5f88>
1c002f0c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009d6c <_sidata+0x6bac>
1c002f10:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002f14 <__FUNCTION__.1591>:
1c002f14:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a38c <_sidata+0x171cc>
1c002f18:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019f7c <_sidata+0x16dbc>
1c002f1c:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff637c <_start-0x9c84>
1c002f20:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa090 <_start-0x5f70>
1c002f24:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009d84 <_sidata+0x6bc4>
1c002f28:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002f2c <__FUNCTION__.1595>:
1c002f2c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a3a4 <_sidata+0x171e4>
1c002f30:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019f94 <_sidata+0x16dd4>
1c002f34:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff6494 <_start-0x9b6c>
1c002f38:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa0a8 <_start-0x5f58>
1c002f3c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009d9c <_sidata+0x6bdc>
1c002f40:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002f44 <__FUNCTION__.1599>:
1c002f44:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a3bc <_sidata+0x171fc>
1c002f48:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019fac <_sidata+0x16dec>
1c002f4c:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff65ac <_start-0x9a54>
1c002f50:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa0c0 <_start-0x5f40>
1c002f54:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009db4 <_sidata+0x6bf4>
1c002f58:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002f5c <__FUNCTION__.1603>:
1c002f5c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a3d4 <_sidata+0x17214>
1c002f60:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019fc4 <_sidata+0x16e04>
1c002f64:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff66c4 <_start-0x993c>
1c002f68:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa0d8 <_start-0x5f28>
1c002f6c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009dcc <_sidata+0x6c0c>
1c002f70:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002f74 <__FUNCTION__.1607>:
1c002f74:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a3ec <_sidata+0x1722c>
1c002f78:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019fdc <_sidata+0x16e1c>
1c002f7c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff5fdc <_start-0xa024>
1c002f80:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa0f0 <_start-0x5f10>
1c002f84:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009de4 <_sidata+0x6c24>
1c002f88:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002f8c <__FUNCTION__.1611>:
1c002f8c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a404 <_sidata+0x17244>
1c002f90:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c019ff4 <_sidata+0x16e34>
1c002f94:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff60f4 <_start-0x9f0c>
1c002f98:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa108 <_start-0x5ef8>
1c002f9c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009dfc <_sidata+0x6c3c>
1c002fa0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002fa4 <__FUNCTION__.1615>:
1c002fa4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a41c <_sidata+0x1725c>
1c002fa8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a00c <_sidata+0x16e4c>
1c002fac:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff620c <_start-0x9df4>
1c002fb0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa120 <_start-0x5ee0>
1c002fb4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009e14 <_sidata+0x6c54>
1c002fb8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002fbc <__FUNCTION__.1619>:
1c002fbc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a434 <_sidata+0x17274>
1c002fc0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a024 <_sidata+0x16e64>
1c002fc4:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff6324 <_start-0x9cdc>
1c002fc8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa138 <_start-0x5ec8>
1c002fcc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009e2c <_sidata+0x6c6c>
1c002fd0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002fd4 <__FUNCTION__.1623>:
1c002fd4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a44c <_sidata+0x1728c>
1c002fd8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a03c <_sidata+0x16e7c>
1c002fdc:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff643c <_start-0x9bc4>
1c002fe0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa150 <_start-0x5eb0>
1c002fe4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009e44 <_sidata+0x6c84>
1c002fe8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c002fec <__FUNCTION__.1627>:
1c002fec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a464 <_sidata+0x172a4>
1c002ff0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a054 <_sidata+0x16e94>
1c002ff4:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff6554 <_start-0x9aac>
1c002ff8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa168 <_start-0x5e98>
1c002ffc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009e5c <_sidata+0x6c9c>
1c003000:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003004 <__FUNCTION__.1631>:
1c003004:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a47c <_sidata+0x172bc>
1c003008:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a06c <_sidata+0x16eac>
1c00300c:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff666c <_start-0x9994>
1c003010:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa180 <_start-0x5e80>
1c003014:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009e74 <_sidata+0x6cb4>
1c003018:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00301c <__FUNCTION__.1635>:
1c00301c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a494 <_sidata+0x172d4>
1c003020:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a084 <_sidata+0x16ec4>
1c003024:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff6784 <_start-0x987c>
1c003028:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa198 <_start-0x5e68>
1c00302c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009e8c <_sidata+0x6ccc>
1c003030:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003034 <__FUNCTION__.1639>:
1c003034:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a4ac <_sidata+0x172ec>
1c003038:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a09c <_sidata+0x16edc>
1c00303c:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff609c <_start-0x9f64>
1c003040:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa1b0 <_start-0x5e50>
1c003044:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ea4 <_sidata+0x6ce4>
1c003048:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00304c <__FUNCTION__.1643>:
1c00304c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a4c4 <_sidata+0x17304>
1c003050:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a0b4 <_sidata+0x16ef4>
1c003054:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff61b4 <_start-0x9e4c>
1c003058:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa1c8 <_start-0x5e38>
1c00305c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ebc <_sidata+0x6cfc>
1c003060:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003064 <__FUNCTION__.1647>:
1c003064:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a4dc <_sidata+0x1731c>
1c003068:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a0cc <_sidata+0x16f0c>
1c00306c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff62cc <_start-0x9d34>
1c003070:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa1e0 <_start-0x5e20>
1c003074:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ed4 <_sidata+0x6d14>
1c003078:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00307c <__FUNCTION__.1651>:
1c00307c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a4f4 <_sidata+0x17334>
1c003080:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a0e4 <_sidata+0x16f24>
1c003084:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff63e4 <_start-0x9c1c>
1c003088:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa1f8 <_start-0x5e08>
1c00308c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009eec <_sidata+0x6d2c>
1c003090:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003094 <__FUNCTION__.1655>:
1c003094:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a50c <_sidata+0x1734c>
1c003098:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a0fc <_sidata+0x16f3c>
1c00309c:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff64fc <_start-0x9b04>
1c0030a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa210 <_start-0x5df0>
1c0030a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f04 <_sidata+0x6d44>
1c0030a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0030ac <__FUNCTION__.1659>:
1c0030ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a524 <_sidata+0x17364>
1c0030b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a114 <_sidata+0x16f54>
1c0030b4:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff6614 <_start-0x99ec>
1c0030b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa228 <_start-0x5dd8>
1c0030bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f1c <_sidata+0x6d5c>
1c0030c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0030c4 <__FUNCTION__.1663>:
1c0030c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a53c <_sidata+0x1737c>
1c0030c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a12c <_sidata+0x16f6c>
1c0030cc:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff672c <_start-0x98d4>
1c0030d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa240 <_start-0x5dc0>
1c0030d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f34 <_sidata+0x6d74>
1c0030d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0030dc <__FUNCTION__.1667>:
1c0030dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a554 <_sidata+0x17394>
1c0030e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a144 <_sidata+0x16f84>
1c0030e4:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff6844 <_start-0x97bc>
1c0030e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa258 <_start-0x5da8>
1c0030ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f4c <_sidata+0x6d8c>
1c0030f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0030f4 <__FUNCTION__.1671>:
1c0030f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a56c <_sidata+0x173ac>
1c0030f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a15c <_sidata+0x16f9c>
1c0030fc:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff6160 <_start-0x9ea0>
1c003100:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa270 <_start-0x5d90>
1c003104:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f64 <_sidata+0x6da4>
1c003108:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00310c <__FUNCTION__.1675>:
1c00310c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a584 <_sidata+0x173c4>
1c003110:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a174 <_sidata+0x16fb4>
1c003114:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff6278 <_start-0x9d88>
1c003118:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa288 <_start-0x5d78>
1c00311c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f7c <_sidata+0x6dbc>
1c003120:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003124 <__FUNCTION__.1679>:
1c003124:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a59c <_sidata+0x173dc>
1c003128:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a18c <_sidata+0x16fcc>
1c00312c:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff6390 <_start-0x9c70>
1c003130:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa2a0 <_start-0x5d60>
1c003134:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009f94 <_sidata+0x6dd4>
1c003138:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00313c <__FUNCTION__.1683>:
1c00313c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a5b4 <_sidata+0x173f4>
1c003140:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a1a4 <_sidata+0x16fe4>
1c003144:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff64a8 <_start-0x9b58>
1c003148:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa2b8 <_start-0x5d48>
1c00314c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009fac <_sidata+0x6dec>
1c003150:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003154 <__FUNCTION__.1687>:
1c003154:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a5cc <_sidata+0x1740c>
1c003158:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a1bc <_sidata+0x16ffc>
1c00315c:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff65c0 <_start-0x9a40>
1c003160:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa2d0 <_start-0x5d30>
1c003164:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009fc4 <_sidata+0x6e04>
1c003168:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00316c <__FUNCTION__.1691>:
1c00316c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a5e4 <_sidata+0x17424>
1c003170:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a1d4 <_sidata+0x17014>
1c003174:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff66d8 <_start-0x9928>
1c003178:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa2e8 <_start-0x5d18>
1c00317c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009fdc <_sidata+0x6e1c>
1c003180:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c003184 <__FUNCTION__.1695>:
1c003184:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a5fc <_sidata+0x1743c>
1c003188:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a1ec <_sidata+0x1702c>
1c00318c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff67f0 <_start-0x9810>
1c003190:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa300 <_start-0x5d00>
1c003194:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c009ff4 <_sidata+0x6e34>
1c003198:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00319c <__FUNCTION__.1699>:
1c00319c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01a614 <_sidata+0x17454>
1c0031a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01a204 <_sidata+0x17044>
1c0031a4:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff6908 <_start-0x96f8>
1c0031a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffa318 <_start-0x5ce8>
1c0031ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a00c <_sidata+0x6e4c>
1c0031b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0031b4 <__FUNCTION__.1708>:
1c0031b4:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1bffa62c <_start-0x59d4>
1c0031b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00a018 <_sidata+0x6e58>
1c0031bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .bss.g_recv_flag:

80000000 <g_recv_flag>:
80000000:	00000000 	0x00000000

Disassembly of section .bss.g_recvBuff:

80000004 <g_recvBuff>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
