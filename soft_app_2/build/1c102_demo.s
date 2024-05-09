
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
1c00000c:	0398d1ef 	ori	$r15,$r15,0x634
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
1c000030:	03a9e1ef 	ori	$r15,$r15,0xa78
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038701ad 	ori	$r13,$r13,0x1c0
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
1c0000a0:	54524000 	bl	21056(0x5240) # 1c0052e0 <main>
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
1c001090:	54707000 	bl	28784(0x7070) # 1c008100 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5470b000 	bl	28848(0x70b0) # 1c008148 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54713400 	bl	28980(0x7134) # 1c0081d4 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54716800 	bl	29032(0x7168) # 1c008210 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	546f8000 	bl	28544(0x6f80) # 1c008030 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54730c00 	bl	29452(0x730c) # 1c0083c4 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	54722000 	bl	29216(0x7220) # 1c0082e8 <INTC_Handler>
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
1c0011cc:	5406cc00 	bl	1740(0x6cc) # 1c001898 <UART_SendData>
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
1c00144c:	1c0000ec 	pcaddu12i	$r12,7(0x7)
1c001450:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
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

1c0017b8 <strstr>:
strstr():
1c0017b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0017bc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0017c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0017c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0017c8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0017cc:	001500cc 	move	$r12,$r6
1c0017d0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c0017d4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0017d8:	5000a000 	b	160(0xa0) # 1c001878 <strstr+0xc0>
1c0017dc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0017e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0017e4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0017e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0017ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0017f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017f4:	2a00018d 	ld.bu	$r13,$r12,0
1c0017f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0017fc:	2a00018c 	ld.bu	$r12,$r12,0
1c001800:	5c006dac 	bne	$r13,$r12,108(0x6c) # 1c00186c <strstr+0xb4>
1c001804:	50003c00 	b	60(0x3c) # 1c001840 <strstr+0x88>
1c001808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00180c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001810:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001814:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001818:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00181c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001820:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001824:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001828:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00182c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001830:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c001834:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001840 <strstr+0x88>
1c001838:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00183c:	50004c00 	b	76(0x4c) # 1c001888 <strstr+0xd0>
1c001840:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001844:	2a00018c 	ld.bu	$r12,$r12,0
1c001848:	40002580 	beqz	$r12,36(0x24) # 1c00186c <strstr+0xb4>
1c00184c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001850:	2a00018c 	ld.bu	$r12,$r12,0
1c001854:	40001980 	beqz	$r12,24(0x18) # 1c00186c <strstr+0xb4>
1c001858:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00185c:	2a00018d 	ld.bu	$r13,$r12,0
1c001860:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001864:	2a00018c 	ld.bu	$r12,$r12,0
1c001868:	5bffa1ac 	beq	$r13,$r12,-96(0x3ffa0) # 1c001808 <strstr+0x50>
1c00186c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001870:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001874:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00187c:	2a00018c 	ld.bu	$r12,$r12,0
1c001880:	47ff5d9f 	bnez	$r12,-164(0x7fff5c) # 1c0017dc <strstr+0x24>
1c001884:	0015000c 	move	$r12,$r0
1c001888:	00150184 	move	$r4,$r12
1c00188c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001890:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001894:	4c000020 	jirl	$r0,$r1,0

1c001898 <UART_SendData>:
UART_SendData():
1c001898:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00189c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0018a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0018a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0018a8:	001500ac 	move	$r12,$r5
1c0018ac:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0018b0:	03400000 	andi	$r0,$r0,0x0
1c0018b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018b8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0018bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0018c0:	0340818c 	andi	$r12,$r12,0x20
1c0018c4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0018b4 <UART_SendData+0x1c>
1c0018c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018cc:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0018d0:	2900018d 	st.b	$r13,$r12,0
1c0018d4:	03400000 	andi	$r0,$r0,0x0
1c0018d8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0018dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018e0:	4c000020 	jirl	$r0,$r1,0

1c0018e4 <WDG_DogFeed>:
WDG_DogFeed():
1c0018e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0018e8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0018ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0018f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018f4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0018f8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0018fc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c001900:	03400000 	andi	$r0,$r0,0x0
1c001904:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00190c:	4c000020 	jirl	$r0,$r1,0

1c001910 <gpio_init>:
gpio_init():
1c001910:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001914:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001918:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00191c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001920:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001924:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001928:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00192c:	6000698d 	blt	$r12,$r13,104(0x68) # 1c001994 <gpio_init+0x84>
1c001930:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001934:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001938:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00193c:	44003180 	bnez	$r12,48(0x30) # 1c00196c <gpio_init+0x5c>
1c001940:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001944:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001948:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c00194c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001950:	001731cc 	sll.w	$r12,$r14,$r12
1c001954:	0014300c 	nor	$r12,$r0,$r12
1c001958:	0015018e 	move	$r14,$r12
1c00195c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001960:	0014b9ad 	and	$r13,$r13,$r14
1c001964:	2981018d 	st.w	$r13,$r12,64(0x40)
1c001968:	50009000 	b	144(0x90) # 1c0019f8 <gpio_init+0xe8>
1c00196c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001970:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c001974:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00197c:	001731cc 	sll.w	$r12,$r14,$r12
1c001980:	0015018e 	move	$r14,$r12
1c001984:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001988:	001539ad 	or	$r13,$r13,$r14
1c00198c:	2981018d 	st.w	$r13,$r12,64(0x40)
1c001990:	50006800 	b	104(0x68) # 1c0019f8 <gpio_init+0xe8>
1c001994:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001998:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00199c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0019a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0019a4:	44003180 	bnez	$r12,48(0x30) # 1c0019d4 <gpio_init+0xc4>
1c0019a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019ac:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0019b0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019b8:	001731cc 	sll.w	$r12,$r14,$r12
1c0019bc:	0014300c 	nor	$r12,$r0,$r12
1c0019c0:	0015018e 	move	$r14,$r12
1c0019c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019c8:	0014b9ad 	and	$r13,$r13,$r14
1c0019cc:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0019d0:	50002800 	b	40(0x28) # 1c0019f8 <gpio_init+0xe8>
1c0019d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019d8:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c0019dc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0019e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0019e8:	0015018e 	move	$r14,$r12
1c0019ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0019f0:	001539ad 	or	$r13,$r13,$r14
1c0019f4:	2981418d 	st.w	$r13,$r12,80(0x50)
1c0019f8:	03400000 	andi	$r0,$r0,0x0
1c0019fc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001a00:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001a04:	4c000020 	jirl	$r0,$r1,0

1c001a08 <gpio_write>:
gpio_write():
1c001a08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001a0c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001a10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001a14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001a18:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001a1c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001a20:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001a24:	6000698d 	blt	$r12,$r13,104(0x68) # 1c001a8c <gpio_write+0x84>
1c001a28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a30:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001a34:	44003180 	bnez	$r12,48(0x30) # 1c001a64 <gpio_write+0x5c>
1c001a38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a3c:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001a40:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a48:	001731cc 	sll.w	$r12,$r14,$r12
1c001a4c:	0014300c 	nor	$r12,$r0,$r12
1c001a50:	0015018e 	move	$r14,$r12
1c001a54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a58:	0014b9ad 	and	$r13,$r13,$r14
1c001a5c:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001a60:	50009000 	b	144(0x90) # 1c001af0 <gpio_write+0xe8>
1c001a64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a68:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c001a6c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001a70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a74:	001731cc 	sll.w	$r12,$r14,$r12
1c001a78:	0015018e 	move	$r14,$r12
1c001a7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001a80:	001539ad 	or	$r13,$r13,$r14
1c001a84:	2981118d 	st.w	$r13,$r12,68(0x44)
1c001a88:	50006800 	b	104(0x68) # 1c001af0 <gpio_write+0xe8>
1c001a8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001a90:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001a94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a98:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001a9c:	44003180 	bnez	$r12,48(0x30) # 1c001acc <gpio_write+0xc4>
1c001aa0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001aa4:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001aa8:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ab0:	001731cc 	sll.w	$r12,$r14,$r12
1c001ab4:	0014300c 	nor	$r12,$r0,$r12
1c001ab8:	0015018e 	move	$r14,$r12
1c001abc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ac0:	0014b9ad 	and	$r13,$r13,$r14
1c001ac4:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001ac8:	50002800 	b	40(0x28) # 1c001af0 <gpio_write+0xe8>
1c001acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ad0:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c001ad4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001ad8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001adc:	001731cc 	sll.w	$r12,$r14,$r12
1c001ae0:	0015018e 	move	$r14,$r12
1c001ae4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001ae8:	001539ad 	or	$r13,$r13,$r14
1c001aec:	2981518d 	st.w	$r13,$r12,84(0x54)
1c001af0:	03400000 	andi	$r0,$r0,0x0
1c001af4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001af8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001afc:	4c000020 	jirl	$r0,$r1,0

1c001b00 <gpio_read>:
gpio_read():
1c001b00:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b04:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001b08:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b0c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b10:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001b14:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001b18:	6000458d 	blt	$r12,$r13,68(0x44) # 1c001b5c <gpio_read+0x5c>
1c001b1c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b28:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c001b2c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b34:	001735cd 	sll.w	$r13,$r14,$r13
1c001b38:	0014b58c 	and	$r12,$r12,$r13
1c001b3c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b44:	001735cd 	sll.w	$r13,$r14,$r13
1c001b48:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001b54 <gpio_read+0x54>
1c001b4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001b50:	50004c00 	b	76(0x4c) # 1c001b9c <gpio_read+0x9c>
1c001b54:	0015000c 	move	$r12,$r0
1c001b58:	50004400 	b	68(0x44) # 1c001b9c <gpio_read+0x9c>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001b64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001b68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001b6c:	2881618c 	ld.w	$r12,$r12,88(0x58)
1c001b70:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b78:	001735cd 	sll.w	$r13,$r14,$r13
1c001b7c:	0014b58c 	and	$r12,$r12,$r13
1c001b80:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001b84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b88:	001735cd 	sll.w	$r13,$r14,$r13
1c001b8c:	5c000d8d 	bne	$r12,$r13,12(0xc) # 1c001b98 <gpio_read+0x98>
1c001b90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001b94:	50000800 	b	8(0x8) # 1c001b9c <gpio_read+0x9c>
1c001b98:	0015000c 	move	$r12,$r0
1c001b9c:	00150184 	move	$r4,$r12
1c001ba0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001ba4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ba8:	4c000020 	jirl	$r0,$r1,0

1c001bac <soc_I2C_delay>:
soc_I2C_delay():
1c001bac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001bb0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001bb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bb8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001bbc:	03400000 	andi	$r0,$r0,0x0
1c001bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bc4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c001bc8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c001bcc:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c001bc0 <soc_I2C_delay+0x14>
1c001bd0:	03400000 	andi	$r0,$r0,0x0
1c001bd4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001bd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001bdc:	4c000020 	jirl	$r0,$r1,0

1c001be0 <soc_I2C_StructInit>:
soc_I2C_StructInit():
1c001be0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001be4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001be8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001bec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001bf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001bf4:	1400060d 	lu12i.w	$r13,48(0x30)
1c001bf8:	03b501ad 	ori	$r13,$r13,0xd40
1c001bfc:	2980018d 	st.w	$r13,$r12,0
1c001c00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c04:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001c08:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c10:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c001c14:	2900198d 	st.b	$r13,$r12,6(0x6)
1c001c18:	03400000 	andi	$r0,$r0,0x0
1c001c1c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001c20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001c24:	4c000020 	jirl	$r0,$r1,0

1c001c28 <soc_I2C_Init>:
soc_I2C_Init():
1c001c28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001c3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001c40:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c001c44:	0388018c 	ori	$r12,$r12,0x200
1c001c48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c4c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c50:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c001c54:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001c58:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c5c:	2880018d 	ld.w	$r13,$r12,0
1c001c60:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c001c64:	002135cc 	div.wu	$r12,$r14,$r13
1c001c68:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001c70 <soc_I2C_Init+0x48>
1c001c6c:	002a0007 	break	0x7
1c001c70:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c78:	0044898c 	srli.w	$r12,$r12,0x2
1c001c7c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001c80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c84:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001c88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001c8c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001c90:	2900018d 	st.b	$r13,$r12,0
1c001c94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c98:	0044a18d 	srli.w	$r13,$r12,0x8
1c001c9c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001ca0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001ca4:	2900058d 	st.b	$r13,$r12,1(0x1)
1c001ca8:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cac:	02be880d 	addi.w	$r13,$r0,-94(0xfa2)
1c001cb0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c001cb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cb8:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c001cbc:	40001180 	beqz	$r12,16(0x10) # 1c001ccc <soc_I2C_Init+0xa4>
1c001cc0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001cc4:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001cc8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001ccc:	5400e800 	bl	232(0xe8) # 1c001db4 <soc_I2C_wait>
1c001cd0:	03400000 	andi	$r0,$r0,0x0
1c001cd4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001cd8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001cdc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ce0:	4c000020 	jirl	$r0,$r1,0

1c001ce4 <soc_I2C_GenerateSTART>:
soc_I2C_GenerateSTART():
1c001ce4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001ce8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001cec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001cf0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001cf4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cf8:	40001580 	beqz	$r12,20(0x14) # 1c001d0c <soc_I2C_GenerateSTART+0x28>
1c001cfc:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d00:	02be000d 	addi.w	$r13,$r0,-128(0xf80)
1c001d04:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d08:	50001000 	b	16(0x10) # 1c001d18 <soc_I2C_GenerateSTART+0x34>
1c001d0c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d10:	0281fc0d 	addi.w	$r13,$r0,127(0x7f)
1c001d14:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d18:	03400000 	andi	$r0,$r0,0x0
1c001d1c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d24:	4c000020 	jirl	$r0,$r1,0

1c001d28 <soc_I2C_GenerateSTOP>:
soc_I2C_GenerateSTOP():
1c001d28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d2c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001d30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d34:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d3c:	40001580 	beqz	$r12,20(0x14) # 1c001d50 <soc_I2C_GenerateSTOP+0x28>
1c001d40:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d44:	0281000d 	addi.w	$r13,$r0,64(0x40)
1c001d48:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d4c:	50001000 	b	16(0x10) # 1c001d5c <soc_I2C_GenerateSTOP+0x34>
1c001d50:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d54:	02befc0d 	addi.w	$r13,$r0,-65(0xfbf)
1c001d58:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001d5c:	03400000 	andi	$r0,$r0,0x0
1c001d60:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001d64:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001d68:	4c000020 	jirl	$r0,$r1,0

1c001d6c <soc_I2C_SendData>:
soc_I2C_SendData():
1c001d6c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001d70:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001d74:	29806076 	st.w	$r22,$r3,24(0x18)
1c001d78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001d7c:	0015008c 	move	$r12,$r4
1c001d80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001d84:	54007800 	bl	120(0x78) # 1c001dfc <soc_I2C_Unlock>
1c001d88:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d8c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001d90:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001d94:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001d98:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c001d9c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001da0:	03400000 	andi	$r0,$r0,0x0
1c001da4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001da8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001dac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001db0:	4c000020 	jirl	$r0,$r1,0

1c001db4 <soc_I2C_wait>:
soc_I2C_wait():
1c001db4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001db8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001dbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001dc0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001dc4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001dc8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001dcc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001dd0:	50001000 	b	16(0x10) # 1c001de0 <soc_I2C_wait+0x2c>
1c001dd4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001dd8:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001ddc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001de0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001de4:	0340098c 	andi	$r12,$r12,0x2
1c001de8:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c001dd4 <soc_I2C_wait+0x20>
1c001dec:	03400000 	andi	$r0,$r0,0x0
1c001df0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001df4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001df8:	4c000020 	jirl	$r0,$r1,0

1c001dfc <soc_I2C_Unlock>:
soc_I2C_Unlock():
1c001dfc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001e04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001e08:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001e0c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001e10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001e14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001e18:	0340118c 	andi	$r12,$r12,0x4
1c001e1c:	40001180 	beqz	$r12,16(0x10) # 1c001e2c <soc_I2C_Unlock+0x30>
1c001e20:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c001e24:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c001e28:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001e2c:	03400000 	andi	$r0,$r0,0x0
1c001e30:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001e34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001e38:	4c000020 	jirl	$r0,$r1,0

1c001e3c <pwm_steering_engine_init>:
pwm_steering_engine_init():
1c001e3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001e40:	29803076 	st.w	$r22,$r3,12(0xc)
1c001e44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001e48:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e4c:	0380c18c 	ori	$r12,$r12,0x30
1c001e50:	29802180 	st.w	$r0,$r12,8(0x8)
1c001e54:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e58:	0380c18c 	ori	$r12,$r12,0x30
1c001e5c:	140004ed 	lu12i.w	$r13,39(0x27)
1c001e60:	038401ad 	ori	$r13,$r13,0x100
1c001e64:	2980018d 	st.w	$r13,$r12,0
1c001e68:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e6c:	0380c18c 	ori	$r12,$r12,0x30
1c001e70:	03be800d 	ori	$r13,$r0,0xfa0
1c001e74:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001e78:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001e7c:	0380c18c 	ori	$r12,$r12,0x30
1c001e80:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001e84:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001e88:	03400000 	andi	$r0,$r0,0x0
1c001e8c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001e90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001e94:	4c000020 	jirl	$r0,$r1,0

1c001e98 <pwm_steering_engine_set>:
pwm_steering_engine_set():
1c001e98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001e9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001ea0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001ea4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001ea8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001eac:	028c800c 	addi.w	$r12,$r0,800(0x320)
1c001eb0:	001c31ae 	mul.w	$r14,$r13,$r12
1c001eb4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001eb8:	002031cd 	div.w	$r13,$r14,$r12
1c001ebc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ec4 <pwm_steering_engine_set+0x2c>
1c001ec0:	002a0007 	break	0x7
1c001ec4:	03be800c 	ori	$r12,$r0,0xfa0
1c001ec8:	001031ad 	add.w	$r13,$r13,$r12
1c001ecc:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c001ed0:	0380c18c 	ori	$r12,$r12,0x30
1c001ed4:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001ee0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001ee4:	4c000020 	jirl	$r0,$r1,0

1c001ee8 <soc_Spi_Cs_Down>:
soc_Spi_Cs_Down():
1c001ee8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001eec:	29803076 	st.w	$r22,$r3,12(0xc)
1c001ef0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001ef4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001ef8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001efc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f00:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f04:	038009ad 	ori	$r13,$r13,0x2
1c001f08:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f0c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f10:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f14:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f18:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c001f1c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f20:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c001f24:	0014b5cd 	and	$r13,$r14,$r13
1c001f28:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f2c:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f30:	03400000 	andi	$r0,$r0,0x0
1c001f34:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f3c:	4c000020 	jirl	$r0,$r1,0

1c001f40 <soc_Spi_Cs_Up>:
soc_Spi_Cs_Up():
1c001f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001f44:	29803076 	st.w	$r22,$r3,12(0xc)
1c001f48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001f4c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f50:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f58:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f5c:	038009ad 	ori	$r13,$r13,0x2
1c001f60:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f64:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f68:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f6c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c001f70:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001f74:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c001f78:	038081ad 	ori	$r13,$r13,0x20
1c001f7c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c001f80:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001f84:	03400000 	andi	$r0,$r0,0x0
1c001f88:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001f8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001f90:	4c000020 	jirl	$r0,$r1,0

1c001f94 <my_recv_dat_int>:
my_recv_dat_int():
1c001f94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001f9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c001fa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001fa4:	0015008c 	move	$r12,$r4
1c001fa8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fac:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c001fb0:	2881a18c 	ld.w	$r12,$r12,104(0x68)
1c001fb4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001fb8:	2900018d 	st.b	$r13,$r12,0
1c001fbc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001fc0:	00150185 	move	$r5,$r12
1c001fc4:	1cc7ffc4 	pcaddu12i	$r4,409598(0x63ffe)
1c001fc8:	0287f084 	addi.w	$r4,$r4,508(0x1fc)
1c001fcc:	54323800 	bl	12856(0x3238) # 1c005204 <Buffer_write>
1c001fd0:	03400000 	andi	$r0,$r0,0x0
1c001fd4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001fd8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001fdc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fe0:	4c000020 	jirl	$r0,$r1,0

1c001fe4 <MYUSART_SendData>:
MYUSART_SendData():
1c001fe4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001fe8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001fec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001ff0:	0015008c 	move	$r12,$r4
1c001ff4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001ff8:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001ffc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c002000:	2980018d 	st.w	$r13,$r12,0
1c002004:	140000ac 	lu12i.w	$r12,5(0x5)
1c002008:	03accd8c 	ori	$r12,$r12,0xb33
1c00200c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002010:	50001400 	b	20(0x14) # 1c002024 <MYUSART_SendData+0x40>
1c002014:	03400000 	andi	$r0,$r0,0x0
1c002018:	03400000 	andi	$r0,$r0,0x0
1c00201c:	03400000 	andi	$r0,$r0,0x0
1c002020:	03400000 	andi	$r0,$r0,0x0
1c002024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002028:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00202c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002030:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002014 <MYUSART_SendData+0x30>
1c002034:	0015000c 	move	$r12,$r0
1c002038:	00150184 	move	$r4,$r12
1c00203c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002040:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002044:	4c000020 	jirl	$r0,$r1,0

1c002048 <SendHead>:
SendHead():
1c002048:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00204c:	29803061 	st.w	$r1,$r3,12(0xc)
1c002050:	29802076 	st.w	$r22,$r3,8(0x8)
1c002054:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002058:	02864006 	addi.w	$r6,$r0,400(0x190)
1c00205c:	00150005 	move	$r5,$r0
1c002060:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c002064:	28beb084 	ld.w	$r4,$r4,-84(0xfac)
1c002068:	57f6f3ff 	bl	-2320(0xffff6f0) # 1c001758 <memset>
1c00206c:	0283bc04 	addi.w	$r4,$r0,239(0xef)
1c002070:	57ff77ff 	bl	-140(0xfffff74) # 1c001fe4 <MYUSART_SendData>
1c002074:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002078:	57ff6fff 	bl	-148(0xfffff6c) # 1c001fe4 <MYUSART_SendData>
1c00207c:	03400000 	andi	$r0,$r0,0x0
1c002080:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002084:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002088:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00208c:	4c000020 	jirl	$r0,$r1,0

1c002090 <SendAddr>:
SendAddr():
1c002090:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002094:	29803061 	st.w	$r1,$r3,12(0xc)
1c002098:	29802076 	st.w	$r22,$r3,8(0x8)
1c00209c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0020a0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0020a4:	02bdf18c 	addi.w	$r12,$r12,-132(0xf7c)
1c0020a8:	2880018c 	ld.w	$r12,$r12,0
1c0020ac:	0044e18c 	srli.w	$r12,$r12,0x18
1c0020b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020b4:	00150184 	move	$r4,$r12
1c0020b8:	57ff2fff 	bl	-212(0xfffff2c) # 1c001fe4 <MYUSART_SendData>
1c0020bc:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0020c0:	02bd818c 	addi.w	$r12,$r12,-160(0xf60)
1c0020c4:	2880018c 	ld.w	$r12,$r12,0
1c0020c8:	0044c18c 	srli.w	$r12,$r12,0x10
1c0020cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020d0:	00150184 	move	$r4,$r12
1c0020d4:	57ff13ff 	bl	-240(0xfffff10) # 1c001fe4 <MYUSART_SendData>
1c0020d8:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0020dc:	02bd118c 	addi.w	$r12,$r12,-188(0xf44)
1c0020e0:	2880018c 	ld.w	$r12,$r12,0
1c0020e4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	00150184 	move	$r4,$r12
1c0020f0:	57fef7ff 	bl	-268(0xffffef4) # 1c001fe4 <MYUSART_SendData>
1c0020f4:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0020f8:	02bca18c 	addi.w	$r12,$r12,-216(0xf28)
1c0020fc:	2880018c 	ld.w	$r12,$r12,0
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	00150184 	move	$r4,$r12
1c002108:	57fedfff 	bl	-292(0xffffedc) # 1c001fe4 <MYUSART_SendData>
1c00210c:	03400000 	andi	$r0,$r0,0x0
1c002110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002114:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00211c:	4c000020 	jirl	$r0,$r1,0

1c002120 <SendFlag>:
SendFlag():
1c002120:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002124:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002128:	29806076 	st.w	$r22,$r3,24(0x18)
1c00212c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002130:	0015008c 	move	$r12,$r4
1c002134:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002138:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00213c:	00150184 	move	$r4,$r12
1c002140:	57fea7ff 	bl	-348(0xffffea4) # 1c001fe4 <MYUSART_SendData>
1c002144:	03400000 	andi	$r0,$r0,0x0
1c002148:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00214c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002150:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002154:	4c000020 	jirl	$r0,$r1,0

1c002158 <SendLength>:
SendLength():
1c002158:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00215c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002160:	29806076 	st.w	$r22,$r3,24(0x18)
1c002164:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002168:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00216c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002170:	0048a18c 	srai.w	$r12,$r12,0x8
1c002174:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002178:	00150184 	move	$r4,$r12
1c00217c:	57fe6bff 	bl	-408(0xffffe68) # 1c001fe4 <MYUSART_SendData>
1c002180:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002184:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002188:	00150184 	move	$r4,$r12
1c00218c:	57fe5bff 	bl	-424(0xffffe58) # 1c001fe4 <MYUSART_SendData>
1c002190:	03400000 	andi	$r0,$r0,0x0
1c002194:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002198:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00219c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0021a0:	4c000020 	jirl	$r0,$r1,0

1c0021a4 <Sendcmd>:
Sendcmd():
1c0021a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021b4:	0015008c 	move	$r12,$r4
1c0021b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0021c0:	00150184 	move	$r4,$r12
1c0021c4:	57fe23ff 	bl	-480(0xffffe20) # 1c001fe4 <MYUSART_SendData>
1c0021c8:	03400000 	andi	$r0,$r0,0x0
1c0021cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0021d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0021d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0021d8:	4c000020 	jirl	$r0,$r1,0

1c0021dc <SendCheck>:
SendCheck():
1c0021dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021ec:	0015008c 	move	$r12,$r4
1c0021f0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0021f4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0021f8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0021fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002200:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002204:	00150184 	move	$r4,$r12
1c002208:	57fddfff 	bl	-548(0xffffddc) # 1c001fe4 <MYUSART_SendData>
1c00220c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c002210:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002214:	00150184 	move	$r4,$r12
1c002218:	57fdcfff 	bl	-564(0xffffdcc) # 1c001fe4 <MYUSART_SendData>
1c00221c:	03400000 	andi	$r0,$r0,0x0
1c002220:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002224:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002228:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00222c:	4c000020 	jirl	$r0,$r1,0

1c002230 <JudgeStr>:
JudgeStr():
1c002230:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002234:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002238:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00223c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002240:	0015008c 	move	$r12,$r4
1c002244:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c002248:	02bfbc0c 	addi.w	$r12,$r0,-17(0xfef)
1c00224c:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c002250:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002254:	293f86cc 	st.b	$r12,$r22,-31(0xfe1)
1c002258:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00225c:	02b7118c 	addi.w	$r12,$r12,-572(0xdc4)
1c002260:	2880018c 	ld.w	$r12,$r12,0
1c002264:	0044e18c 	srli.w	$r12,$r12,0x18
1c002268:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00226c:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c002270:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c002274:	02b6b18c 	addi.w	$r12,$r12,-596(0xdac)
1c002278:	2880018c 	ld.w	$r12,$r12,0
1c00227c:	0044c18c 	srli.w	$r12,$r12,0x10
1c002280:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002284:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c002288:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00228c:	02b6518c 	addi.w	$r12,$r12,-620(0xd94)
1c002290:	2880018c 	ld.w	$r12,$r12,0
1c002294:	0044a18c 	srli.w	$r12,$r12,0x8
1c002298:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00229c:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c0022a0:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0022a4:	02b5f18c 	addi.w	$r12,$r12,-644(0xd7c)
1c0022a8:	2880018c 	ld.w	$r12,$r12,0
1c0022ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022b0:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c0022b4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0022b8:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c0022bc:	293f9ec0 	st.b	$r0,$r22,-25(0xfe7)
1c0022c0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0022c4:	02bc518c 	addi.w	$r12,$r12,-236(0xf14)
1c0022c8:	29000180 	st.b	$r0,$r12,0
1c0022cc:	50008000 	b	128(0x80) # 1c00234c <JudgeStr+0x11c>
1c0022d0:	028e980c 	addi.w	$r12,$r0,934(0x3a6)
1c0022d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022d8:	50001400 	b	20(0x14) # 1c0022ec <JudgeStr+0xbc>
1c0022dc:	03400000 	andi	$r0,$r0,0x0
1c0022e0:	03400000 	andi	$r0,$r0,0x0
1c0022e4:	03400000 	andi	$r0,$r0,0x0
1c0022e8:	03400000 	andi	$r0,$r0,0x0
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0022f4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0022f8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0022dc <JudgeStr+0xac>
1c0022fc:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002300:	02bb618c 	addi.w	$r12,$r12,-296(0xed8)
1c002304:	2a00018c 	ld.bu	$r12,$r12,0
1c002308:	40004580 	beqz	$r12,68(0x44) # 1c00234c <JudgeStr+0x11c>
1c00230c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002310:	02bb218c 	addi.w	$r12,$r12,-312(0xec8)
1c002314:	29000180 	st.b	$r0,$r12,0
1c002318:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00231c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002320:	02802006 	addi.w	$r6,$r0,8(0x8)
1c002324:	00150185 	move	$r5,$r12
1c002328:	1cc7ffe4 	pcaddu12i	$r4,409599(0x63fff)
1c00232c:	28b39084 	ld.w	$r4,$r4,-796(0xce4)
1c002330:	57f48bff 	bl	-2936(0xffff488) # 1c0017b8 <strstr>
1c002334:	0015008c 	move	$r12,$r4
1c002338:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00233c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002340:	40000d80 	beqz	$r12,12(0xc) # 1c00234c <JudgeStr+0x11c>
1c002344:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002348:	50001c00 	b	28(0x1c) # 1c002364 <JudgeStr+0x134>
1c00234c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c002350:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002354:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c002358:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00235c:	47ff759f 	bnez	$r12,-140(0x7fff74) # 1c0022d0 <JudgeStr+0xa0>
1c002360:	0015000c 	move	$r12,$r0
1c002364:	00150184 	move	$r4,$r12
1c002368:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00236c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002370:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002374:	4c000020 	jirl	$r0,$r1,0

1c002378 <PS_GetImage>:
PS_GetImage():
1c002378:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00237c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002380:	29806076 	st.w	$r22,$r3,24(0x18)
1c002384:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002388:	57fcc3ff 	bl	-832(0xffffcc0) # 1c002048 <SendHead>
1c00238c:	57fd07ff 	bl	-764(0xffffd04) # 1c002090 <SendAddr>
1c002390:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002394:	57fd8fff 	bl	-628(0xffffd8c) # 1c002120 <SendFlag>
1c002398:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c00239c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002158 <SendLength>
1c0023a0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0023a4:	57fe03ff 	bl	-512(0xffffe00) # 1c0021a4 <Sendcmd>
1c0023a8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0023ac:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0023b0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0023b4:	00150184 	move	$r4,$r12
1c0023b8:	57fe27ff 	bl	-476(0xffffe24) # 1c0021dc <SendCheck>
1c0023bc:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c0023c0:	57fe73ff 	bl	-400(0xffffe70) # 1c002230 <JudgeStr>
1c0023c4:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0023c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023cc:	40001580 	beqz	$r12,20(0x14) # 1c0023e0 <PS_GetImage+0x68>
1c0023d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023d4:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c0023d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0023dc:	50000c00 	b	12(0xc) # 1c0023e8 <PS_GetImage+0x70>
1c0023e0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0023e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0023e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0023ec:	00150184 	move	$r4,$r12
1c0023f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0023f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0023f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0023fc:	4c000020 	jirl	$r0,$r1,0

1c002400 <PS_GenChar>:
PS_GenChar():
1c002400:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002404:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002408:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00240c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002410:	0015008c 	move	$r12,$r4
1c002414:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002418:	57fc33ff 	bl	-976(0xffffc30) # 1c002048 <SendHead>
1c00241c:	57fc77ff 	bl	-908(0xffffc74) # 1c002090 <SendAddr>
1c002420:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002424:	57fcffff 	bl	-772(0xffffcfc) # 1c002120 <SendFlag>
1c002428:	02801004 	addi.w	$r4,$r0,4(0x4)
1c00242c:	57fd2fff 	bl	-724(0xffffd2c) # 1c002158 <SendLength>
1c002430:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002434:	57fd73ff 	bl	-656(0xffffd70) # 1c0021a4 <Sendcmd>
1c002438:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c00243c:	00150184 	move	$r4,$r12
1c002440:	57fba7ff 	bl	-1116(0xffffba4) # 1c001fe4 <MYUSART_SendData>
1c002444:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002448:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00244c:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c002450:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002454:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002458:	00150184 	move	$r4,$r12
1c00245c:	57fd83ff 	bl	-640(0xffffd80) # 1c0021dc <SendCheck>
1c002460:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002464:	57fdcfff 	bl	-564(0xffffdcc) # 1c002230 <JudgeStr>
1c002468:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00246c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002470:	40001580 	beqz	$r12,20(0x14) # 1c002484 <PS_GenChar+0x84>
1c002474:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002478:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00247c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002480:	50000c00 	b	12(0xc) # 1c00248c <PS_GenChar+0x8c>
1c002484:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002488:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00248c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002490:	00150184 	move	$r4,$r12
1c002494:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002498:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00249c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0024a0:	4c000020 	jirl	$r0,$r1,0

1c0024a4 <PS_Match>:
PS_Match():
1c0024a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0024a8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0024ac:	29806076 	st.w	$r22,$r3,24(0x18)
1c0024b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0024b4:	57fb97ff 	bl	-1132(0xffffb94) # 1c002048 <SendHead>
1c0024b8:	57fbdbff 	bl	-1064(0xffffbd8) # 1c002090 <SendAddr>
1c0024bc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0024c0:	57fc63ff 	bl	-928(0xffffc60) # 1c002120 <SendFlag>
1c0024c4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0024c8:	57fc93ff 	bl	-880(0xffffc90) # 1c002158 <SendLength>
1c0024cc:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0024d0:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0021a4 <Sendcmd>
1c0024d4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0024d8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0024dc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0024e0:	00150184 	move	$r4,$r12
1c0024e4:	57fcfbff 	bl	-776(0xffffcf8) # 1c0021dc <SendCheck>
1c0024e8:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c0024ec:	57fd47ff 	bl	-700(0xffffd44) # 1c002230 <JudgeStr>
1c0024f0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0024f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0024f8:	40001580 	beqz	$r12,20(0x14) # 1c00250c <PS_Match+0x68>
1c0024fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002500:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002504:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002508:	50000c00 	b	12(0xc) # 1c002514 <PS_Match+0x70>
1c00250c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002510:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002514:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002518:	00150184 	move	$r4,$r12
1c00251c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002520:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002524:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002528:	4c000020 	jirl	$r0,$r1,0

1c00252c <PS_RegModel>:
PS_RegModel():
1c00252c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002530:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002534:	29806076 	st.w	$r22,$r3,24(0x18)
1c002538:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00253c:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002048 <SendHead>
1c002540:	57fb53ff 	bl	-1200(0xffffb50) # 1c002090 <SendAddr>
1c002544:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002548:	57fbdbff 	bl	-1064(0xffffbd8) # 1c002120 <SendFlag>
1c00254c:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c002550:	57fc0bff 	bl	-1016(0xffffc08) # 1c002158 <SendLength>
1c002554:	02801404 	addi.w	$r4,$r0,5(0x5)
1c002558:	57fc4fff 	bl	-948(0xffffc4c) # 1c0021a4 <Sendcmd>
1c00255c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002560:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002564:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002568:	00150184 	move	$r4,$r12
1c00256c:	57fc73ff 	bl	-912(0xffffc70) # 1c0021dc <SendCheck>
1c002570:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002574:	57fcbfff 	bl	-836(0xffffcbc) # 1c002230 <JudgeStr>
1c002578:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00257c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002580:	40001580 	beqz	$r12,20(0x14) # 1c002594 <PS_RegModel+0x68>
1c002584:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002588:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00258c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002590:	50000c00 	b	12(0xc) # 1c00259c <PS_RegModel+0x70>
1c002594:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002598:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00259c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025a0:	00150184 	move	$r4,$r12
1c0025a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0025a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0025ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0025b0:	4c000020 	jirl	$r0,$r1,0

1c0025b4 <PS_StoreChar>:
PS_StoreChar():
1c0025b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0025b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0025bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0025c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0025c4:	0015008c 	move	$r12,$r4
1c0025c8:	001500ad 	move	$r13,$r5
1c0025cc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c0025d0:	001501ac 	move	$r12,$r13
1c0025d4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0025d8:	57fa73ff 	bl	-1424(0xffffa70) # 1c002048 <SendHead>
1c0025dc:	57fab7ff 	bl	-1356(0xffffab4) # 1c002090 <SendAddr>
1c0025e0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0025e4:	57fb3fff 	bl	-1220(0xffffb3c) # 1c002120 <SendFlag>
1c0025e8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0025ec:	57fb6fff 	bl	-1172(0xffffb6c) # 1c002158 <SendLength>
1c0025f0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0025f4:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c0021a4 <Sendcmd>
1c0025f8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0025fc:	00150184 	move	$r4,$r12
1c002600:	57f9e7ff 	bl	-1564(0xffff9e4) # 1c001fe4 <MYUSART_SendData>
1c002604:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002608:	0044a18c 	srli.w	$r12,$r12,0x8
1c00260c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002610:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002614:	00150184 	move	$r4,$r12
1c002618:	57f9cfff 	bl	-1588(0xffff9cc) # 1c001fe4 <MYUSART_SendData>
1c00261c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002620:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002624:	00150184 	move	$r4,$r12
1c002628:	57f9bfff 	bl	-1604(0xffff9bc) # 1c001fe4 <MYUSART_SendData>
1c00262c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002630:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002634:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c002638:	0044a18c 	srli.w	$r12,$r12,0x8
1c00263c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002640:	001031ac 	add.w	$r12,$r13,$r12
1c002644:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002648:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00264c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002650:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002654:	001031ac 	add.w	$r12,$r13,$r12
1c002658:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00265c:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c002660:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c002664:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002668:	00150184 	move	$r4,$r12
1c00266c:	57fb73ff 	bl	-1168(0xffffb70) # 1c0021dc <SendCheck>
1c002670:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c002674:	57fbbfff 	bl	-1092(0xffffbbc) # 1c002230 <JudgeStr>
1c002678:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	40001580 	beqz	$r12,20(0x14) # 1c002694 <PS_StoreChar+0xe0>
1c002684:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002688:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c00268c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002690:	50000c00 	b	12(0xc) # 1c00269c <PS_StoreChar+0xe8>
1c002694:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002698:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00269c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026a0:	00150184 	move	$r4,$r12
1c0026a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0026a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0026ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0026b0:	4c000020 	jirl	$r0,$r1,0

1c0026b4 <PS_Empty>:
PS_Empty():
1c0026b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0026b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0026bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0026c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0026c4:	57f987ff 	bl	-1660(0xffff984) # 1c002048 <SendHead>
1c0026c8:	57f9cbff 	bl	-1592(0xffff9c8) # 1c002090 <SendAddr>
1c0026cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0026d0:	57fa53ff 	bl	-1456(0xffffa50) # 1c002120 <SendFlag>
1c0026d4:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0026d8:	57fa83ff 	bl	-1408(0xffffa80) # 1c002158 <SendLength>
1c0026dc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0026e0:	57fac7ff 	bl	-1340(0xffffac4) # 1c0021a4 <Sendcmd>
1c0026e4:	0280440c 	addi.w	$r12,$r0,17(0x11)
1c0026e8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c0026ec:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0026f0:	00150184 	move	$r4,$r12
1c0026f4:	57faebff 	bl	-1304(0xffffae8) # 1c0021dc <SendCheck>
1c0026f8:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c0026fc:	57fb37ff 	bl	-1228(0xffffb34) # 1c002230 <JudgeStr>
1c002700:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002704:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002708:	40001580 	beqz	$r12,20(0x14) # 1c00271c <PS_Empty+0x68>
1c00270c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002710:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002714:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002718:	50000c00 	b	12(0xc) # 1c002724 <PS_Empty+0x70>
1c00271c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002720:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002724:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002728:	00150184 	move	$r4,$r12
1c00272c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002730:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002734:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002738:	4c000020 	jirl	$r0,$r1,0

1c00273c <PS_HighSpeedSearch>:
PS_HighSpeedSearch():
1c00273c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002740:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002744:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002748:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00274c:	0015008c 	move	$r12,$r4
1c002750:	001500ae 	move	$r14,$r5
1c002754:	001500cd 	move	$r13,$r6
1c002758:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c00275c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002760:	001501cc 	move	$r12,$r14
1c002764:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c002768:	001501ac 	move	$r12,$r13
1c00276c:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c002770:	57f8dbff 	bl	-1832(0xffff8d8) # 1c002048 <SendHead>
1c002774:	57f91fff 	bl	-1764(0xffff91c) # 1c002090 <SendAddr>
1c002778:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00277c:	57f9a7ff 	bl	-1628(0xffff9a4) # 1c002120 <SendFlag>
1c002780:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002784:	57f9d7ff 	bl	-1580(0xffff9d4) # 1c002158 <SendLength>
1c002788:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c00278c:	57fa1bff 	bl	-1512(0xffffa18) # 1c0021a4 <Sendcmd>
1c002790:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002794:	00150184 	move	$r4,$r12
1c002798:	57f84fff 	bl	-1972(0xffff84c) # 1c001fe4 <MYUSART_SendData>
1c00279c:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0027a0:	0044a18c 	srli.w	$r12,$r12,0x8
1c0027a4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0027a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027ac:	00150184 	move	$r4,$r12
1c0027b0:	57f837ff 	bl	-1996(0xffff834) # 1c001fe4 <MYUSART_SendData>
1c0027b4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0027b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027bc:	00150184 	move	$r4,$r12
1c0027c0:	57f827ff 	bl	-2012(0xffff824) # 1c001fe4 <MYUSART_SendData>
1c0027c4:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c0027c8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0027cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0027d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027d4:	00150184 	move	$r4,$r12
1c0027d8:	57f80fff 	bl	-2036(0xffff80c) # 1c001fe4 <MYUSART_SendData>
1c0027dc:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c0027e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027e4:	00150184 	move	$r4,$r12
1c0027e8:	57f7ffff 	bl	-2052(0xffff7fc) # 1c001fe4 <MYUSART_SendData>
1c0027ec:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c0027f0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0027f4:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0027f8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0027fc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002800:	001031ac 	add.w	$r12,$r13,$r12
1c002804:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002808:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c00280c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002810:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002814:	001031ac 	add.w	$r12,$r13,$r12
1c002818:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00281c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002820:	0044a18c 	srli.w	$r12,$r12,0x8
1c002824:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002828:	001031ac 	add.w	$r12,$r13,$r12
1c00282c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002830:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c002834:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002838:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00283c:	001031ac 	add.w	$r12,$r13,$r12
1c002840:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002844:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c002848:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c00284c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c002850:	00150184 	move	$r4,$r12
1c002854:	57f98bff 	bl	-1656(0xffff988) # 1c0021dc <SendCheck>
1c002858:	029f4004 	addi.w	$r4,$r0,2000(0x7d0)
1c00285c:	57f9d7ff 	bl	-1580(0xffff9d4) # 1c002230 <JudgeStr>
1c002860:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c002864:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002868:	40008580 	beqz	$r12,132(0x84) # 1c0028ec <PS_HighSpeedSearch+0x1b0>
1c00286c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002870:	2a00258c 	ld.bu	$r12,$r12,9(0x9)
1c002874:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002878:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00287c:	0280298c 	addi.w	$r12,$r12,10(0xa)
1c002880:	2a00018c 	ld.bu	$r12,$r12,0
1c002884:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002888:	0040a18c 	slli.w	$r12,$r12,0x8
1c00288c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c002890:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002894:	02802d8c 	addi.w	$r12,$r12,11(0xb)
1c002898:	2a00018c 	ld.bu	$r12,$r12,0
1c00289c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028a0:	001031ac 	add.w	$r12,$r13,$r12
1c0028a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0028a8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0028ac:	2940018d 	st.h	$r13,$r12,0
1c0028b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0028b4:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0028b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0028bc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028c0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0028c4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0028c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0028cc:	0280358c 	addi.w	$r12,$r12,13(0xd)
1c0028d0:	2a00018c 	ld.bu	$r12,$r12,0
1c0028d4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0028d8:	001031ac 	add.w	$r12,$r13,$r12
1c0028dc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0028e0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0028e4:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0028e8:	50000c00 	b	12(0xc) # 1c0028f4 <PS_HighSpeedSearch+0x1b8>
1c0028ec:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0028f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028f4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028f8:	00150184 	move	$r4,$r12
1c0028fc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002900:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002904:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002908:	4c000020 	jirl	$r0,$r1,0

1c00290c <ShowErrMessage>:
ShowErrMessage():
1c00290c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002910:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002914:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002918:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00291c:	0015008c 	move	$r12,$r4
1c002920:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002924:	54166000 	bl	5728(0x1660) # 1c003f84 <OLED_CLS>
1c002928:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00292c:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002930:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002934:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002938:	54199c00 	bl	6556(0x199c) # 1c0042d4 <OLED_ShowCN_STR>
1c00293c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002940:	02811806 	addi.w	$r6,$r0,70(0x46)
1c002944:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002948:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c00294c:	54198800 	bl	6536(0x1988) # 1c0042d4 <OLED_ShowCN_STR>
1c002950:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c002954:	03bead8c 	ori	$r12,$r12,0xfab
1c002958:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00295c:	50001400 	b	20(0x14) # 1c002970 <ShowErrMessage+0x64>
1c002960:	03400000 	andi	$r0,$r0,0x0
1c002964:	03400000 	andi	$r0,$r0,0x0
1c002968:	03400000 	andi	$r0,$r0,0x0
1c00296c:	03400000 	andi	$r0,$r0,0x0
1c002970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002974:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002978:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00297c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002960 <ShowErrMessage+0x54>
1c002980:	54160400 	bl	5636(0x1604) # 1c003f84 <OLED_CLS>
1c002984:	02801407 	addi.w	$r7,$r0,5(0x5)
1c002988:	02812006 	addi.w	$r6,$r0,72(0x48)
1c00298c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002990:	02806404 	addi.w	$r4,$r0,25(0x19)
1c002994:	54194000 	bl	6464(0x1940) # 1c0042d4 <OLED_ShowCN_STR>
1c002998:	5415ec00 	bl	5612(0x15ec) # 1c003f84 <OLED_CLS>
1c00299c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0029a0:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c0029a4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0029a8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0029ac:	54192800 	bl	6440(0x1928) # 1c0042d4 <OLED_ShowCN_STR>
1c0029b0:	03400000 	andi	$r0,$r0,0x0
1c0029b4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029b8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029c0:	4c000020 	jirl	$r0,$r1,0

1c0029c4 <Add_FR>:
Add_FR():
1c0029c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029d4:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0029d8:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c0029dc:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0029e0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0029e4:	680495ac 	bltu	$r13,$r12,1172(0x494) # 1c002e78 <Add_FR+0x4b4>
1c0029e8:	0040898d 	slli.w	$r13,$r12,0x2
1c0029ec:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c0029f0:	02b4c18c 	addi.w	$r12,$r12,-720(0xd30)
1c0029f4:	001031ac 	add.w	$r12,$r13,$r12
1c0029f8:	2880018c 	ld.w	$r12,$r12,0
1c0029fc:	4c000180 	jirl	$r0,$r12,0
1c002a00:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002a04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a08:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002a0c:	54157800 	bl	5496(0x1578) # 1c003f84 <OLED_CLS>
1c002a10:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002a14:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002a18:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a1c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002a20:	5418b400 	bl	6324(0x18b4) # 1c0042d4 <OLED_ShowCN_STR>
1c002a24:	57f957ff 	bl	-1708(0xffff954) # 1c002378 <PS_GetImage>
1c002a28:	0015008c 	move	$r12,$r4
1c002a2c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002a30:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002a34:	44006980 	bnez	$r12,104(0x68) # 1c002a9c <Add_FR+0xd8>
1c002a38:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002a3c:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c002400 <PS_GenChar>
1c002a40:	0015008c 	move	$r12,$r4
1c002a44:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002a48:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002a4c:	44004180 	bnez	$r12,64(0x40) # 1c002a8c <Add_FR+0xc8>
1c002a50:	54153400 	bl	5428(0x1534) # 1c003f84 <OLED_CLS>
1c002a54:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002a58:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002a5c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a60:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002a64:	54187000 	bl	6256(0x1870) # 1c0042d4 <OLED_ShowCN_STR>
1c002a68:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002a6c:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002a70:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a74:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002a78:	54185c00 	bl	6236(0x185c) # 1c0042d4 <OLED_ShowCN_STR>
1c002a7c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002a80:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002a84:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002a88:	5003f000 	b	1008(0x3f0) # 1c002e78 <Add_FR+0x4b4>
1c002a8c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002a90:	00150184 	move	$r4,$r12
1c002a94:	57fe7bff 	bl	-392(0xffffe78) # 1c00290c <ShowErrMessage>
1c002a98:	5003e000 	b	992(0x3e0) # 1c002e78 <Add_FR+0x4b4>
1c002a9c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002aa0:	00150184 	move	$r4,$r12
1c002aa4:	57fe6bff 	bl	-408(0xffffe68) # 1c00290c <ShowErrMessage>
1c002aa8:	5003d000 	b	976(0x3d0) # 1c002e78 <Add_FR+0x4b4>
1c002aac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c002ab0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ab4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002ab8:	5414cc00 	bl	5324(0x14cc) # 1c003f84 <OLED_CLS>
1c002abc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002ac0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002ac4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ac8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002acc:	54180800 	bl	6152(0x1808) # 1c0042d4 <OLED_ShowCN_STR>
1c002ad0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002ad4:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002ad8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002adc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002ae0:	5417f400 	bl	6132(0x17f4) # 1c0042d4 <OLED_ShowCN_STR>
1c002ae4:	57f897ff 	bl	-1900(0xffff894) # 1c002378 <PS_GetImage>
1c002ae8:	0015008c 	move	$r12,$r4
1c002aec:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002af0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002af4:	44006980 	bnez	$r12,104(0x68) # 1c002b5c <Add_FR+0x198>
1c002af8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002afc:	57f907ff 	bl	-1788(0xffff904) # 1c002400 <PS_GenChar>
1c002b00:	0015008c 	move	$r12,$r4
1c002b04:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002b08:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b0c:	44004180 	bnez	$r12,64(0x40) # 1c002b4c <Add_FR+0x188>
1c002b10:	54147400 	bl	5236(0x1474) # 1c003f84 <OLED_CLS>
1c002b14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002b18:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002b1c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b20:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002b24:	5417b000 	bl	6064(0x17b0) # 1c0042d4 <OLED_ShowCN_STR>
1c002b28:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002b2c:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002b30:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b34:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002b38:	54179c00 	bl	6044(0x179c) # 1c0042d4 <OLED_ShowCN_STR>
1c002b3c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002b40:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002b44:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002b48:	50033000 	b	816(0x330) # 1c002e78 <Add_FR+0x4b4>
1c002b4c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b50:	00150184 	move	$r4,$r12
1c002b54:	57fdbbff 	bl	-584(0xffffdb8) # 1c00290c <ShowErrMessage>
1c002b58:	50032000 	b	800(0x320) # 1c002e78 <Add_FR+0x4b4>
1c002b5c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002b60:	00150184 	move	$r4,$r12
1c002b64:	57fdabff 	bl	-600(0xffffda8) # 1c00290c <ShowErrMessage>
1c002b68:	50031000 	b	784(0x310) # 1c002e78 <Add_FR+0x4b4>
1c002b6c:	54141800 	bl	5144(0x1418) # 1c003f84 <OLED_CLS>
1c002b70:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002b74:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002b78:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b7c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002b80:	54175400 	bl	5972(0x1754) # 1c0042d4 <OLED_ShowCN_STR>
1c002b84:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002b88:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002b8c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002b90:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002b94:	54174000 	bl	5952(0x1740) # 1c0042d4 <OLED_ShowCN_STR>
1c002b98:	57f90fff 	bl	-1780(0xffff90c) # 1c0024a4 <PS_Match>
1c002b9c:	0015008c 	move	$r12,$r4
1c002ba0:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002ba4:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002ba8:	44006980 	bnez	$r12,104(0x68) # 1c002c10 <Add_FR+0x24c>
1c002bac:	5413d800 	bl	5080(0x13d8) # 1c003f84 <OLED_CLS>
1c002bb0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002bb4:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002bb8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002bbc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c002bc0:	54171400 	bl	5908(0x1714) # 1c0042d4 <OLED_ShowCN_STR>
1c002bc4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002bc8:	02813406 	addi.w	$r6,$r0,77(0x4d)
1c002bcc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002bd0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c002bd4:	54170000 	bl	5888(0x1700) # 1c0042d4 <OLED_ShowCN_STR>
1c002bd8:	5413ac00 	bl	5036(0x13ac) # 1c003f84 <OLED_CLS>
1c002bdc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002be0:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002be4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002be8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002bec:	5416e800 	bl	5864(0x16e8) # 1c0042d4 <OLED_ShowCN_STR>
1c002bf0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002bf4:	02810806 	addi.w	$r6,$r0,66(0x42)
1c002bf8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002bfc:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c00:	5416d400 	bl	5844(0x16d4) # 1c0042d4 <OLED_ShowCN_STR>
1c002c04:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002c08:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002c0c:	50004400 	b	68(0x44) # 1c002c50 <Add_FR+0x28c>
1c002c10:	54137400 	bl	4980(0x1374) # 1c003f84 <OLED_CLS>
1c002c14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c18:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002c1c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c20:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002c24:	5416b000 	bl	5808(0x16b0) # 1c0042d4 <OLED_ShowCN_STR>
1c002c28:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002c2c:	02811006 	addi.w	$r6,$r0,68(0x44)
1c002c30:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002c34:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c002c38:	54169c00 	bl	5788(0x169c) # 1c0042d4 <OLED_ShowCN_STR>
1c002c3c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002c40:	00150184 	move	$r4,$r12
1c002c44:	57fccbff 	bl	-824(0xffffcc8) # 1c00290c <ShowErrMessage>
1c002c48:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c002c4c:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002c50:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002c54:	03bfc98c 	ori	$r12,$r12,0xff2
1c002c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c5c:	50001400 	b	20(0x14) # 1c002c70 <Add_FR+0x2ac>
1c002c60:	03400000 	andi	$r0,$r0,0x0
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	03400000 	andi	$r0,$r0,0x0
1c002c70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c74:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c78:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c7c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c60 <Add_FR+0x29c>
1c002c80:	5001f800 	b	504(0x1f8) # 1c002e78 <Add_FR+0x4b4>
1c002c84:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002c88:	03bfc98c 	ori	$r12,$r12,0xff2
1c002c8c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c90:	50001400 	b	20(0x14) # 1c002ca4 <Add_FR+0x2e0>
1c002c94:	03400000 	andi	$r0,$r0,0x0
1c002c98:	03400000 	andi	$r0,$r0,0x0
1c002c9c:	03400000 	andi	$r0,$r0,0x0
1c002ca0:	03400000 	andi	$r0,$r0,0x0
1c002ca4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002ca8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cac:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002cb0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c94 <Add_FR+0x2d0>
1c002cb4:	57f87bff 	bl	-1928(0xffff878) # 1c00252c <PS_RegModel>
1c002cb8:	0015008c 	move	$r12,$r4
1c002cbc:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002cc0:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002cc4:	44001180 	bnez	$r12,16(0x10) # 1c002cd4 <Add_FR+0x310>
1c002cc8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c002ccc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002cd0:	50001400 	b	20(0x14) # 1c002ce4 <Add_FR+0x320>
1c002cd4:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002cd8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002cdc:	00150184 	move	$r4,$r12
1c002ce0:	57fc2fff 	bl	-980(0xffffc2c) # 1c00290c <ShowErrMessage>
1c002ce4:	14000e2c 	lu12i.w	$r12,113(0x71)
1c002ce8:	03bfc98c 	ori	$r12,$r12,0xff2
1c002cec:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002cf0:	50001400 	b	20(0x14) # 1c002d04 <Add_FR+0x340>
1c002cf4:	03400000 	andi	$r0,$r0,0x0
1c002cf8:	03400000 	andi	$r0,$r0,0x0
1c002cfc:	03400000 	andi	$r0,$r0,0x0
1c002d00:	03400000 	andi	$r0,$r0,0x0
1c002d04:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002d08:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d0c:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c002d10:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cf4 <Add_FR+0x330>
1c002d14:	50016400 	b	356(0x164) # 1c002e78 <Add_FR+0x4b4>
1c002d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d1c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002d20:	50009000 	b	144(0x90) # 1c002db0 <Add_FR+0x3ec>
1c002d24:	5404c000 	bl	1216(0x4c0) # 1c0031e4 <MatrixKey>
1c002d28:	0015008c 	move	$r12,$r4
1c002d2c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002d30:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002d34:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c002d38:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c002d54 <Add_FR+0x390>
1c002d3c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002d40:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002d44:	40001180 	beqz	$r12,16(0x10) # 1c002d54 <Add_FR+0x390>
1c002d48:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002d4c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002d50:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002d54:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002d58:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c002d5c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c002d7c <Add_FR+0x3b8>
1c002d60:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002d64:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c002d68:	02831c0c 	addi.w	$r12,$r0,199(0xc7)
1c002d6c:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c002d7c <Add_FR+0x3b8>
1c002d70:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002d74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d78:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002d7c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002d80:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c002d84:	02a660c6 	addi.w	$r6,$r6,-1640(0x998)
1c002d88:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002d8c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002d90:	54122000 	bl	4640(0x1220) # 1c003fb0 <OLED_ShowStr>
1c002d94:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002d98:	02804008 	addi.w	$r8,$r0,16(0x10)
1c002d9c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002da0:	00150186 	move	$r6,$r12
1c002da4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002da8:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c002dac:	54187000 	bl	6256(0x1870) # 1c00461c <OLED_ShowNum>
1c002db0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002db4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002db8:	5fff6dac 	bne	$r13,$r12,-148(0x3ff6c) # 1c002d24 <Add_FR+0x360>
1c002dbc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002dc0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002dc4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c002dc8:	00150185 	move	$r5,$r12
1c002dcc:	02800804 	addi.w	$r4,$r0,2(0x2)
1c002dd0:	57f7e7ff 	bl	-2076(0xffff7e4) # 1c0025b4 <PS_StoreChar>
1c002dd4:	0015008c 	move	$r12,$r4
1c002dd8:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c002ddc:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002de0:	44008580 	bnez	$r12,132(0x84) # 1c002e64 <Add_FR+0x4a0>
1c002de4:	5411a000 	bl	4512(0x11a0) # 1c003f84 <OLED_CLS>
1c002de8:	02801807 	addi.w	$r7,$r0,6(0x6)
1c002dec:	0280f806 	addi.w	$r6,$r0,62(0x3e)
1c002df0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002df4:	02802804 	addi.w	$r4,$r0,10(0xa)
1c002df8:	5414dc00 	bl	5340(0x14dc) # 1c0042d4 <OLED_ShowCN_STR>
1c002dfc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002e00:	1c0000c6 	pcaddu12i	$r6,6(0x6)
1c002e04:	02a460c6 	addi.w	$r6,$r6,-1768(0x918)
1c002e08:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002e0c:	02808004 	addi.w	$r4,$r0,32(0x20)
1c002e10:	5411a000 	bl	4512(0x11a0) # 1c003fb0 <OLED_ShowStr>
1c002e14:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c002e18:	02804008 	addi.w	$r8,$r0,16(0x10)
1c002e1c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002e20:	00150186 	move	$r6,$r12
1c002e24:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002e28:	0280f004 	addi.w	$r4,$r0,60(0x3c)
1c002e2c:	5417f000 	bl	6128(0x17f0) # 1c00461c <OLED_ShowNum>
1c002e30:	14002aac 	lu12i.w	$r12,341(0x155)
1c002e34:	03bf598c 	ori	$r12,$r12,0xfd6
1c002e38:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002e3c:	50001400 	b	20(0x14) # 1c002e50 <Add_FR+0x48c>
1c002e40:	03400000 	andi	$r0,$r0,0x0
1c002e44:	03400000 	andi	$r0,$r0,0x0
1c002e48:	03400000 	andi	$r0,$r0,0x0
1c002e4c:	03400000 	andi	$r0,$r0,0x0
1c002e50:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e54:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002e58:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c002e5c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002e40 <Add_FR+0x47c>
1c002e60:	50005c00 	b	92(0x5c) # 1c002ebc <Add_FR+0x4f8>
1c002e64:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c002e68:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c002e6c:	00150184 	move	$r4,$r12
1c002e70:	57fa9fff 	bl	-1380(0xffffa9c) # 1c00290c <ShowErrMessage>
1c002e74:	03400000 	andi	$r0,$r0,0x0
1c002e78:	14000b6c 	lu12i.w	$r12,91(0x5b)
1c002e7c:	038ca18c 	ori	$r12,$r12,0x328
1c002e80:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002e84:	50001400 	b	20(0x14) # 1c002e98 <Add_FR+0x4d4>
1c002e88:	03400000 	andi	$r0,$r0,0x0
1c002e8c:	03400000 	andi	$r0,$r0,0x0
1c002e90:	03400000 	andi	$r0,$r0,0x0
1c002e94:	03400000 	andi	$r0,$r0,0x0
1c002e98:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e9c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002ea0:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c002ea4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002e88 <Add_FR+0x4c4>
1c002ea8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c002eac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002eb0:	580009ac 	beq	$r13,$r12,8(0x8) # 1c002eb8 <Add_FR+0x4f4>
1c002eb4:	53fb2bff 	b	-1240(0xffffb28) # 1c0029dc <Add_FR+0x18>
1c002eb8:	03400000 	andi	$r0,$r0,0x0
1c002ebc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ec0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ec4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ec8:	4c000020 	jirl	$r0,$r1,0

1c002ecc <press_FR>:
press_FR():
1c002ecc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ed0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ed4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ed8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002edc:	5410a800 	bl	4264(0x10a8) # 1c003f84 <OLED_CLS>
1c002ee0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c002ee4:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c002ee8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002eec:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c002ef0:	5413e400 	bl	5092(0x13e4) # 1c0042d4 <OLED_ShowCN_STR>
1c002ef4:	57f487ff 	bl	-2940(0xffff484) # 1c002378 <PS_GetImage>
1c002ef8:	0015008c 	move	$r12,$r4
1c002efc:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002f00:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f04:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002ef4 <press_FR+0x28>
1c002f08:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002f0c:	57f4f7ff 	bl	-2828(0xffff4f4) # 1c002400 <PS_GenChar>
1c002f10:	0015008c 	move	$r12,$r4
1c002f14:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002f18:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f1c:	44011d80 	bnez	$r12,284(0x11c) # 1c003038 <press_FR+0x16c>
1c002f20:	02bf62cc 	addi.w	$r12,$r22,-40(0xfd8)
1c002f24:	00150187 	move	$r7,$r12
1c002f28:	02818c06 	addi.w	$r6,$r0,99(0x63)
1c002f2c:	00150005 	move	$r5,$r0
1c002f30:	02800404 	addi.w	$r4,$r0,1(0x1)
1c002f34:	57f80bff 	bl	-2040(0xffff808) # 1c00273c <PS_HighSpeedSearch>
1c002f38:	0015008c 	move	$r12,$r4
1c002f3c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002f40:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c002f44:	4400b580 	bnez	$r12,180(0xb4) # 1c002ff8 <press_FR+0x12c>
1c002f48:	54103c00 	bl	4156(0x103c) # 1c003f84 <OLED_CLS>
1c002f4c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002f50:	5430a800 	bl	12456(0x30a8) # 1c005ff8 <interface_display>
1c002f54:	5401e400 	bl	484(0x1e4) # 1c003138 <SG90_Open>
1c002f58:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c002f5c:	03bdc58c 	ori	$r12,$r12,0xf71
1c002f60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f64:	50001400 	b	20(0x14) # 1c002f78 <press_FR+0xac>
1c002f68:	03400000 	andi	$r0,$r0,0x0
1c002f6c:	03400000 	andi	$r0,$r0,0x0
1c002f70:	03400000 	andi	$r0,$r0,0x0
1c002f74:	03400000 	andi	$r0,$r0,0x0
1c002f78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f80:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002f84:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002f68 <press_FR+0x9c>
1c002f88:	5401dc00 	bl	476(0x1dc) # 1c003164 <SG90_Close>
1c002f8c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002f90:	54306800 	bl	12392(0x3068) # 1c005ff8 <interface_display>
1c002f94:	14002aac 	lu12i.w	$r12,341(0x155)
1c002f98:	03bf598c 	ori	$r12,$r12,0xfd6
1c002f9c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fa0:	50001400 	b	20(0x14) # 1c002fb4 <press_FR+0xe8>
1c002fa4:	03400000 	andi	$r0,$r0,0x0
1c002fa8:	03400000 	andi	$r0,$r0,0x0
1c002fac:	03400000 	andi	$r0,$r0,0x0
1c002fb0:	03400000 	andi	$r0,$r0,0x0
1c002fb4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002fb8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002fbc:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002fc0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002fa4 <press_FR+0xd8>
1c002fc4:	14002aac 	lu12i.w	$r12,341(0x155)
1c002fc8:	03bf598c 	ori	$r12,$r12,0xfd6
1c002fcc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002fd0:	50001400 	b	20(0x14) # 1c002fe4 <press_FR+0x118>
1c002fd4:	03400000 	andi	$r0,$r0,0x0
1c002fd8:	03400000 	andi	$r0,$r0,0x0
1c002fdc:	03400000 	andi	$r0,$r0,0x0
1c002fe0:	03400000 	andi	$r0,$r0,0x0
1c002fe4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002fe8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002fec:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c002ff0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002fd4 <press_FR+0x108>
1c002ff4:	50006000 	b	96(0x60) # 1c003054 <press_FR+0x188>
1c002ff8:	540f8c00 	bl	3980(0xf8c) # 1c003f84 <OLED_CLS>
1c002ffc:	02801804 	addi.w	$r4,$r0,6(0x6)
1c003000:	542ff800 	bl	12280(0x2ff8) # 1c005ff8 <interface_display>
1c003004:	540b3800 	bl	2872(0xb38) # 1c003b3c <Buzzer>
1c003008:	14002aac 	lu12i.w	$r12,341(0x155)
1c00300c:	03bf598c 	ori	$r12,$r12,0xfd6
1c003010:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c003014:	50001400 	b	20(0x14) # 1c003028 <press_FR+0x15c>
1c003018:	03400000 	andi	$r0,$r0,0x0
1c00301c:	03400000 	andi	$r0,$r0,0x0
1c003020:	03400000 	andi	$r0,$r0,0x0
1c003024:	03400000 	andi	$r0,$r0,0x0
1c003028:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00302c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003030:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c003034:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003018 <press_FR+0x14c>
1c003038:	540f4c00 	bl	3916(0xf4c) # 1c003f84 <OLED_CLS>
1c00303c:	02801007 	addi.w	$r7,$r0,4(0x4)
1c003040:	0280e806 	addi.w	$r6,$r0,58(0x3a)
1c003044:	02800805 	addi.w	$r5,$r0,2(0x2)
1c003048:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00304c:	54128800 	bl	4744(0x1288) # 1c0042d4 <OLED_ShowCN_STR>
1c003050:	53fea7ff 	b	-348(0xffffea4) # 1c002ef4 <press_FR+0x28>
1c003054:	03400000 	andi	$r0,$r0,0x0
1c003058:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00305c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003060:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003064:	4c000020 	jirl	$r0,$r1,0

1c003068 <Del_FR_Lib>:
Del_FR_Lib():
1c003068:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00306c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003070:	29806076 	st.w	$r22,$r3,24(0x18)
1c003074:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003078:	57f63fff 	bl	-2500(0xffff63c) # 1c0026b4 <PS_Empty>
1c00307c:	0015008c 	move	$r12,$r4
1c003080:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003084:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003088:	40001180 	beqz	$r12,16(0x10) # 1c003098 <Del_FR_Lib+0x30>
1c00308c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003090:	00150184 	move	$r4,$r12
1c003094:	57f87bff 	bl	-1928(0xffff878) # 1c00290c <ShowErrMessage>
1c003098:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c00309c:	03bf918c 	ori	$r12,$r12,0xfe4
1c0030a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030a4:	50001400 	b	20(0x14) # 1c0030b8 <Del_FR_Lib+0x50>
1c0030a8:	03400000 	andi	$r0,$r0,0x0
1c0030ac:	03400000 	andi	$r0,$r0,0x0
1c0030b0:	03400000 	andi	$r0,$r0,0x0
1c0030b4:	03400000 	andi	$r0,$r0,0x0
1c0030b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030bc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0030c0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0030c4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0030a8 <Del_FR_Lib+0x40>
1c0030c8:	03400000 	andi	$r0,$r0,0x0
1c0030cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0030d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0030d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030d8:	4c000020 	jirl	$r0,$r1,0

1c0030dc <SG90_GetAngle>:
SG90_GetAngle():
1c0030dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0030e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0030e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030ec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0030f0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0030f4:	57eda7ff 	bl	-4700(0xfffeda4) # 1c001e98 <pwm_steering_engine_set>
1c0030f8:	03400000 	andi	$r0,$r0,0x0
1c0030fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003100:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003104:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003108:	4c000020 	jirl	$r0,$r1,0

1c00310c <SG90_Init>:
SG90_Init():
1c00310c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003110:	29803061 	st.w	$r1,$r3,12(0xc)
1c003114:	29802076 	st.w	$r22,$r3,8(0x8)
1c003118:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00311c:	00150004 	move	$r4,$r0
1c003120:	57ffbfff 	bl	-68(0xfffffbc) # 1c0030dc <SG90_GetAngle>
1c003124:	03400000 	andi	$r0,$r0,0x0
1c003128:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00312c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003130:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003134:	4c000020 	jirl	$r0,$r1,0

1c003138 <SG90_Open>:
SG90_Open():
1c003138:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00313c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003140:	29802076 	st.w	$r22,$r3,8(0x8)
1c003144:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003148:	0282d004 	addi.w	$r4,$r0,180(0xb4)
1c00314c:	57ff93ff 	bl	-112(0xfffff90) # 1c0030dc <SG90_GetAngle>
1c003150:	03400000 	andi	$r0,$r0,0x0
1c003154:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003158:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00315c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003160:	4c000020 	jirl	$r0,$r1,0

1c003164 <SG90_Close>:
SG90_Close():
1c003164:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003168:	29803061 	st.w	$r1,$r3,12(0xc)
1c00316c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003170:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003174:	00150004 	move	$r4,$r0
1c003178:	57ff67ff 	bl	-156(0xfffff64) # 1c0030dc <SG90_GetAngle>
1c00317c:	03400000 	andi	$r0,$r0,0x0
1c003180:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003184:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003188:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00318c:	4c000020 	jirl	$r0,$r1,0

1c003190 <clkey>:
clkey():
1c003190:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003194:	29803061 	st.w	$r1,$r3,12(0xc)
1c003198:	29802076 	st.w	$r22,$r3,8(0x8)
1c00319c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0031a4:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0031a8:	57e863ff 	bl	-6048(0xfffe860) # 1c001a08 <gpio_write>
1c0031ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0031b0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0031b4:	57e857ff 	bl	-6060(0xfffe854) # 1c001a08 <gpio_write>
1c0031b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0031bc:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0031c0:	57e84bff 	bl	-6072(0xfffe848) # 1c001a08 <gpio_write>
1c0031c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0031c8:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0031cc:	57e83fff 	bl	-6084(0xfffe83c) # 1c001a08 <gpio_write>
1c0031d0:	03400000 	andi	$r0,$r0,0x0
1c0031d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0031d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0031dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031e0:	4c000020 	jirl	$r0,$r1,0

1c0031e4 <MatrixKey>:
MatrixKey():
1c0031e4:	02bd8063 	addi.w	$r3,$r3,-160(0xf60)
1c0031e8:	29827061 	st.w	$r1,$r3,156(0x9c)
1c0031ec:	29826076 	st.w	$r22,$r3,152(0x98)
1c0031f0:	02828076 	addi.w	$r22,$r3,160(0xa0)
1c0031f4:	57ff9fff 	bl	-100(0xfffff9c) # 1c003190 <clkey>
1c0031f8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0031fc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003204:	50001400 	b	20(0x14) # 1c003218 <MatrixKey+0x34>
1c003208:	03400000 	andi	$r0,$r0,0x0
1c00320c:	03400000 	andi	$r0,$r0,0x0
1c003210:	03400000 	andi	$r0,$r0,0x0
1c003214:	03400000 	andi	$r0,$r0,0x0
1c003218:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00321c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003220:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003224:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003208 <MatrixKey+0x24>
1c003228:	00150005 	move	$r5,$r0
1c00322c:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003230:	57e7dbff 	bl	-6184(0xfffe7d8) # 1c001a08 <gpio_write>
1c003234:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003238:	57e8cbff 	bl	-5944(0xfffe8c8) # 1c001b00 <gpio_read>
1c00323c:	0015008c 	move	$r12,$r4
1c003240:	44008180 	bnez	$r12,128(0x80) # 1c0032c0 <MatrixKey+0xdc>
1c003244:	1400008c 	lu12i.w	$r12,4(0x4)
1c003248:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00324c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003250:	50001400 	b	20(0x14) # 1c003264 <MatrixKey+0x80>
1c003254:	03400000 	andi	$r0,$r0,0x0
1c003258:	03400000 	andi	$r0,$r0,0x0
1c00325c:	03400000 	andi	$r0,$r0,0x0
1c003260:	03400000 	andi	$r0,$r0,0x0
1c003264:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003268:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00326c:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c003270:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003254 <MatrixKey+0x70>
1c003274:	03400000 	andi	$r0,$r0,0x0
1c003278:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00327c:	57e887ff 	bl	-6012(0xfffe884) # 1c001b00 <gpio_read>
1c003280:	0015008c 	move	$r12,$r4
1c003284:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003278 <MatrixKey+0x94>
1c003288:	1400008c 	lu12i.w	$r12,4(0x4)
1c00328c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003290:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003294:	50001400 	b	20(0x14) # 1c0032a8 <MatrixKey+0xc4>
1c003298:	03400000 	andi	$r0,$r0,0x0
1c00329c:	03400000 	andi	$r0,$r0,0x0
1c0032a0:	03400000 	andi	$r0,$r0,0x0
1c0032a4:	03400000 	andi	$r0,$r0,0x0
1c0032a8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0032ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032b0:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0032b4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003298 <MatrixKey+0xb4>
1c0032b8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032bc:	50086c00 	b	2156(0x86c) # 1c003b28 <MatrixKey+0x944>
1c0032c0:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0032c4:	57e83fff 	bl	-6084(0xfffe83c) # 1c001b00 <gpio_read>
1c0032c8:	0015008c 	move	$r12,$r4
1c0032cc:	44008180 	bnez	$r12,128(0x80) # 1c00334c <MatrixKey+0x168>
1c0032d0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0032d4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0032d8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0032dc:	50001400 	b	20(0x14) # 1c0032f0 <MatrixKey+0x10c>
1c0032e0:	03400000 	andi	$r0,$r0,0x0
1c0032e4:	03400000 	andi	$r0,$r0,0x0
1c0032e8:	03400000 	andi	$r0,$r0,0x0
1c0032ec:	03400000 	andi	$r0,$r0,0x0
1c0032f0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0032f4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0032f8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0032fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0032e0 <MatrixKey+0xfc>
1c003300:	03400000 	andi	$r0,$r0,0x0
1c003304:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003308:	57e7fbff 	bl	-6152(0xfffe7f8) # 1c001b00 <gpio_read>
1c00330c:	0015008c 	move	$r12,$r4
1c003310:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003304 <MatrixKey+0x120>
1c003314:	1400008c 	lu12i.w	$r12,4(0x4)
1c003318:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00331c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003320:	50001400 	b	20(0x14) # 1c003334 <MatrixKey+0x150>
1c003324:	03400000 	andi	$r0,$r0,0x0
1c003328:	03400000 	andi	$r0,$r0,0x0
1c00332c:	03400000 	andi	$r0,$r0,0x0
1c003330:	03400000 	andi	$r0,$r0,0x0
1c003334:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003338:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00333c:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003340:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003324 <MatrixKey+0x140>
1c003344:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c003348:	5007e000 	b	2016(0x7e0) # 1c003b28 <MatrixKey+0x944>
1c00334c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003350:	57e7b3ff 	bl	-6224(0xfffe7b0) # 1c001b00 <gpio_read>
1c003354:	0015008c 	move	$r12,$r4
1c003358:	44008180 	bnez	$r12,128(0x80) # 1c0033d8 <MatrixKey+0x1f4>
1c00335c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003360:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003364:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003368:	50001400 	b	20(0x14) # 1c00337c <MatrixKey+0x198>
1c00336c:	03400000 	andi	$r0,$r0,0x0
1c003370:	03400000 	andi	$r0,$r0,0x0
1c003374:	03400000 	andi	$r0,$r0,0x0
1c003378:	03400000 	andi	$r0,$r0,0x0
1c00337c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003380:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003384:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c003388:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00336c <MatrixKey+0x188>
1c00338c:	03400000 	andi	$r0,$r0,0x0
1c003390:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003394:	57e76fff 	bl	-6292(0xfffe76c) # 1c001b00 <gpio_read>
1c003398:	0015008c 	move	$r12,$r4
1c00339c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003390 <MatrixKey+0x1ac>
1c0033a0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0033a4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0033a8:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0033ac:	50001400 	b	20(0x14) # 1c0033c0 <MatrixKey+0x1dc>
1c0033b0:	03400000 	andi	$r0,$r0,0x0
1c0033b4:	03400000 	andi	$r0,$r0,0x0
1c0033b8:	03400000 	andi	$r0,$r0,0x0
1c0033bc:	03400000 	andi	$r0,$r0,0x0
1c0033c0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0033c4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0033c8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0033cc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0033b0 <MatrixKey+0x1cc>
1c0033d0:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0033d4:	50075400 	b	1876(0x754) # 1c003b28 <MatrixKey+0x944>
1c0033d8:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0033dc:	57e727ff 	bl	-6364(0xfffe724) # 1c001b00 <gpio_read>
1c0033e0:	0015008c 	move	$r12,$r4
1c0033e4:	44008180 	bnez	$r12,128(0x80) # 1c003464 <MatrixKey+0x280>
1c0033e8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0033ec:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0033f0:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0033f4:	50001400 	b	20(0x14) # 1c003408 <MatrixKey+0x224>
1c0033f8:	03400000 	andi	$r0,$r0,0x0
1c0033fc:	03400000 	andi	$r0,$r0,0x0
1c003400:	03400000 	andi	$r0,$r0,0x0
1c003404:	03400000 	andi	$r0,$r0,0x0
1c003408:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00340c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003410:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c003414:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0033f8 <MatrixKey+0x214>
1c003418:	03400000 	andi	$r0,$r0,0x0
1c00341c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003420:	57e6e3ff 	bl	-6432(0xfffe6e0) # 1c001b00 <gpio_read>
1c003424:	0015008c 	move	$r12,$r4
1c003428:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00341c <MatrixKey+0x238>
1c00342c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003430:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003434:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c003438:	50001400 	b	20(0x14) # 1c00344c <MatrixKey+0x268>
1c00343c:	03400000 	andi	$r0,$r0,0x0
1c003440:	03400000 	andi	$r0,$r0,0x0
1c003444:	03400000 	andi	$r0,$r0,0x0
1c003448:	03400000 	andi	$r0,$r0,0x0
1c00344c:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c003450:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003454:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c003458:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00343c <MatrixKey+0x258>
1c00345c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c003460:	5006c800 	b	1736(0x6c8) # 1c003b28 <MatrixKey+0x944>
1c003464:	57fd2fff 	bl	-724(0xffffd2c) # 1c003190 <clkey>
1c003468:	00150005 	move	$r5,$r0
1c00346c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003470:	57e59bff 	bl	-6760(0xfffe598) # 1c001a08 <gpio_write>
1c003474:	02803804 	addi.w	$r4,$r0,14(0xe)
1c003478:	57e68bff 	bl	-6520(0xfffe688) # 1c001b00 <gpio_read>
1c00347c:	0015008c 	move	$r12,$r4
1c003480:	44008180 	bnez	$r12,128(0x80) # 1c003500 <MatrixKey+0x31c>
1c003484:	1400008c 	lu12i.w	$r12,4(0x4)
1c003488:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00348c:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c003490:	50001400 	b	20(0x14) # 1c0034a4 <MatrixKey+0x2c0>
1c003494:	03400000 	andi	$r0,$r0,0x0
1c003498:	03400000 	andi	$r0,$r0,0x0
1c00349c:	03400000 	andi	$r0,$r0,0x0
1c0034a0:	03400000 	andi	$r0,$r0,0x0
1c0034a4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0034a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034ac:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c0034b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003494 <MatrixKey+0x2b0>
1c0034b4:	03400000 	andi	$r0,$r0,0x0
1c0034b8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0034bc:	57e647ff 	bl	-6588(0xfffe644) # 1c001b00 <gpio_read>
1c0034c0:	0015008c 	move	$r12,$r4
1c0034c4:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0034b8 <MatrixKey+0x2d4>
1c0034c8:	1400008c 	lu12i.w	$r12,4(0x4)
1c0034cc:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0034d0:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c0034d4:	50001400 	b	20(0x14) # 1c0034e8 <MatrixKey+0x304>
1c0034d8:	03400000 	andi	$r0,$r0,0x0
1c0034dc:	03400000 	andi	$r0,$r0,0x0
1c0034e0:	03400000 	andi	$r0,$r0,0x0
1c0034e4:	03400000 	andi	$r0,$r0,0x0
1c0034e8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c0034ec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0034f0:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c0034f4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0034d8 <MatrixKey+0x2f4>
1c0034f8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0034fc:	50062c00 	b	1580(0x62c) # 1c003b28 <MatrixKey+0x944>
1c003500:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003504:	57e5ffff 	bl	-6660(0xfffe5fc) # 1c001b00 <gpio_read>
1c003508:	0015008c 	move	$r12,$r4
1c00350c:	44008180 	bnez	$r12,128(0x80) # 1c00358c <MatrixKey+0x3a8>
1c003510:	1400008c 	lu12i.w	$r12,4(0x4)
1c003514:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003518:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c00351c:	50001400 	b	20(0x14) # 1c003530 <MatrixKey+0x34c>
1c003520:	03400000 	andi	$r0,$r0,0x0
1c003524:	03400000 	andi	$r0,$r0,0x0
1c003528:	03400000 	andi	$r0,$r0,0x0
1c00352c:	03400000 	andi	$r0,$r0,0x0
1c003530:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c003534:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003538:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c00353c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003520 <MatrixKey+0x33c>
1c003540:	03400000 	andi	$r0,$r0,0x0
1c003544:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003548:	57e5bbff 	bl	-6728(0xfffe5b8) # 1c001b00 <gpio_read>
1c00354c:	0015008c 	move	$r12,$r4
1c003550:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003544 <MatrixKey+0x360>
1c003554:	1400008c 	lu12i.w	$r12,4(0x4)
1c003558:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00355c:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c003560:	50001400 	b	20(0x14) # 1c003574 <MatrixKey+0x390>
1c003564:	03400000 	andi	$r0,$r0,0x0
1c003568:	03400000 	andi	$r0,$r0,0x0
1c00356c:	03400000 	andi	$r0,$r0,0x0
1c003570:	03400000 	andi	$r0,$r0,0x0
1c003574:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c003578:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00357c:	29bef2cd 	st.w	$r13,$r22,-68(0xfbc)
1c003580:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003564 <MatrixKey+0x380>
1c003584:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003588:	5005a000 	b	1440(0x5a0) # 1c003b28 <MatrixKey+0x944>
1c00358c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003590:	57e573ff 	bl	-6800(0xfffe570) # 1c001b00 <gpio_read>
1c003594:	0015008c 	move	$r12,$r4
1c003598:	44008180 	bnez	$r12,128(0x80) # 1c003618 <MatrixKey+0x434>
1c00359c:	1400008c 	lu12i.w	$r12,4(0x4)
1c0035a0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0035a4:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c0035a8:	50001400 	b	20(0x14) # 1c0035bc <MatrixKey+0x3d8>
1c0035ac:	03400000 	andi	$r0,$r0,0x0
1c0035b0:	03400000 	andi	$r0,$r0,0x0
1c0035b4:	03400000 	andi	$r0,$r0,0x0
1c0035b8:	03400000 	andi	$r0,$r0,0x0
1c0035bc:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c0035c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035c4:	29bee2cd 	st.w	$r13,$r22,-72(0xfb8)
1c0035c8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0035ac <MatrixKey+0x3c8>
1c0035cc:	03400000 	andi	$r0,$r0,0x0
1c0035d0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0035d4:	57e52fff 	bl	-6868(0xfffe52c) # 1c001b00 <gpio_read>
1c0035d8:	0015008c 	move	$r12,$r4
1c0035dc:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0035d0 <MatrixKey+0x3ec>
1c0035e0:	1400008c 	lu12i.w	$r12,4(0x4)
1c0035e4:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0035e8:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c0035ec:	50001400 	b	20(0x14) # 1c003600 <MatrixKey+0x41c>
1c0035f0:	03400000 	andi	$r0,$r0,0x0
1c0035f4:	03400000 	andi	$r0,$r0,0x0
1c0035f8:	03400000 	andi	$r0,$r0,0x0
1c0035fc:	03400000 	andi	$r0,$r0,0x0
1c003600:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c003604:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003608:	29bed2cd 	st.w	$r13,$r22,-76(0xfb4)
1c00360c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0035f0 <MatrixKey+0x40c>
1c003610:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003614:	50051400 	b	1300(0x514) # 1c003b28 <MatrixKey+0x944>
1c003618:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00361c:	57e4e7ff 	bl	-6940(0xfffe4e4) # 1c001b00 <gpio_read>
1c003620:	0015008c 	move	$r12,$r4
1c003624:	44008180 	bnez	$r12,128(0x80) # 1c0036a4 <MatrixKey+0x4c0>
1c003628:	1400008c 	lu12i.w	$r12,4(0x4)
1c00362c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003630:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c003634:	50001400 	b	20(0x14) # 1c003648 <MatrixKey+0x464>
1c003638:	03400000 	andi	$r0,$r0,0x0
1c00363c:	03400000 	andi	$r0,$r0,0x0
1c003640:	03400000 	andi	$r0,$r0,0x0
1c003644:	03400000 	andi	$r0,$r0,0x0
1c003648:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c00364c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003650:	29bec2cd 	st.w	$r13,$r22,-80(0xfb0)
1c003654:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003638 <MatrixKey+0x454>
1c003658:	03400000 	andi	$r0,$r0,0x0
1c00365c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003660:	57e4a3ff 	bl	-7008(0xfffe4a0) # 1c001b00 <gpio_read>
1c003664:	0015008c 	move	$r12,$r4
1c003668:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00365c <MatrixKey+0x478>
1c00366c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003670:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003674:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c003678:	50001400 	b	20(0x14) # 1c00368c <MatrixKey+0x4a8>
1c00367c:	03400000 	andi	$r0,$r0,0x0
1c003680:	03400000 	andi	$r0,$r0,0x0
1c003684:	03400000 	andi	$r0,$r0,0x0
1c003688:	03400000 	andi	$r0,$r0,0x0
1c00368c:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c003690:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003694:	29beb2cd 	st.w	$r13,$r22,-84(0xfac)
1c003698:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00367c <MatrixKey+0x498>
1c00369c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0036a0:	50048800 	b	1160(0x488) # 1c003b28 <MatrixKey+0x944>
1c0036a4:	57faefff 	bl	-1300(0xffffaec) # 1c003190 <clkey>
1c0036a8:	00150005 	move	$r5,$r0
1c0036ac:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0036b0:	57e35bff 	bl	-7336(0xfffe358) # 1c001a08 <gpio_write>
1c0036b4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0036b8:	57e44bff 	bl	-7096(0xfffe448) # 1c001b00 <gpio_read>
1c0036bc:	0015008c 	move	$r12,$r4
1c0036c0:	44008180 	bnez	$r12,128(0x80) # 1c003740 <MatrixKey+0x55c>
1c0036c4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0036c8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0036cc:	29bea2cc 	st.w	$r12,$r22,-88(0xfa8)
1c0036d0:	50001400 	b	20(0x14) # 1c0036e4 <MatrixKey+0x500>
1c0036d4:	03400000 	andi	$r0,$r0,0x0
1c0036d8:	03400000 	andi	$r0,$r0,0x0
1c0036dc:	03400000 	andi	$r0,$r0,0x0
1c0036e0:	03400000 	andi	$r0,$r0,0x0
1c0036e4:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c0036e8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0036ec:	29bea2cd 	st.w	$r13,$r22,-88(0xfa8)
1c0036f0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0036d4 <MatrixKey+0x4f0>
1c0036f4:	03400000 	andi	$r0,$r0,0x0
1c0036f8:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0036fc:	57e407ff 	bl	-7164(0xfffe404) # 1c001b00 <gpio_read>
1c003700:	0015008c 	move	$r12,$r4
1c003704:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0036f8 <MatrixKey+0x514>
1c003708:	1400008c 	lu12i.w	$r12,4(0x4)
1c00370c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003710:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c003714:	50001400 	b	20(0x14) # 1c003728 <MatrixKey+0x544>
1c003718:	03400000 	andi	$r0,$r0,0x0
1c00371c:	03400000 	andi	$r0,$r0,0x0
1c003720:	03400000 	andi	$r0,$r0,0x0
1c003724:	03400000 	andi	$r0,$r0,0x0
1c003728:	28be92cc 	ld.w	$r12,$r22,-92(0xfa4)
1c00372c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003730:	29be92cd 	st.w	$r13,$r22,-92(0xfa4)
1c003734:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003718 <MatrixKey+0x534>
1c003738:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00373c:	5003ec00 	b	1004(0x3ec) # 1c003b28 <MatrixKey+0x944>
1c003740:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003744:	57e3bfff 	bl	-7236(0xfffe3bc) # 1c001b00 <gpio_read>
1c003748:	0015008c 	move	$r12,$r4
1c00374c:	44008180 	bnez	$r12,128(0x80) # 1c0037cc <MatrixKey+0x5e8>
1c003750:	1400008c 	lu12i.w	$r12,4(0x4)
1c003754:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003758:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c00375c:	50001400 	b	20(0x14) # 1c003770 <MatrixKey+0x58c>
1c003760:	03400000 	andi	$r0,$r0,0x0
1c003764:	03400000 	andi	$r0,$r0,0x0
1c003768:	03400000 	andi	$r0,$r0,0x0
1c00376c:	03400000 	andi	$r0,$r0,0x0
1c003770:	28be82cc 	ld.w	$r12,$r22,-96(0xfa0)
1c003774:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003778:	29be82cd 	st.w	$r13,$r22,-96(0xfa0)
1c00377c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003760 <MatrixKey+0x57c>
1c003780:	03400000 	andi	$r0,$r0,0x0
1c003784:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003788:	57e37bff 	bl	-7304(0xfffe378) # 1c001b00 <gpio_read>
1c00378c:	0015008c 	move	$r12,$r4
1c003790:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003784 <MatrixKey+0x5a0>
1c003794:	1400008c 	lu12i.w	$r12,4(0x4)
1c003798:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00379c:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c0037a0:	50001400 	b	20(0x14) # 1c0037b4 <MatrixKey+0x5d0>
1c0037a4:	03400000 	andi	$r0,$r0,0x0
1c0037a8:	03400000 	andi	$r0,$r0,0x0
1c0037ac:	03400000 	andi	$r0,$r0,0x0
1c0037b0:	03400000 	andi	$r0,$r0,0x0
1c0037b4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0037b8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037bc:	29be72cd 	st.w	$r13,$r22,-100(0xf9c)
1c0037c0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037a4 <MatrixKey+0x5c0>
1c0037c4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0037c8:	50036000 	b	864(0x360) # 1c003b28 <MatrixKey+0x944>
1c0037cc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0037d0:	57e333ff 	bl	-7376(0xfffe330) # 1c001b00 <gpio_read>
1c0037d4:	0015008c 	move	$r12,$r4
1c0037d8:	44008180 	bnez	$r12,128(0x80) # 1c003858 <MatrixKey+0x674>
1c0037dc:	1400008c 	lu12i.w	$r12,4(0x4)
1c0037e0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0037e4:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c0037e8:	50001400 	b	20(0x14) # 1c0037fc <MatrixKey+0x618>
1c0037ec:	03400000 	andi	$r0,$r0,0x0
1c0037f0:	03400000 	andi	$r0,$r0,0x0
1c0037f4:	03400000 	andi	$r0,$r0,0x0
1c0037f8:	03400000 	andi	$r0,$r0,0x0
1c0037fc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c003800:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003804:	29be62cd 	st.w	$r13,$r22,-104(0xf98)
1c003808:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037ec <MatrixKey+0x608>
1c00380c:	03400000 	andi	$r0,$r0,0x0
1c003810:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003814:	57e2efff 	bl	-7444(0xfffe2ec) # 1c001b00 <gpio_read>
1c003818:	0015008c 	move	$r12,$r4
1c00381c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003810 <MatrixKey+0x62c>
1c003820:	1400008c 	lu12i.w	$r12,4(0x4)
1c003824:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003828:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c00382c:	50001400 	b	20(0x14) # 1c003840 <MatrixKey+0x65c>
1c003830:	03400000 	andi	$r0,$r0,0x0
1c003834:	03400000 	andi	$r0,$r0,0x0
1c003838:	03400000 	andi	$r0,$r0,0x0
1c00383c:	03400000 	andi	$r0,$r0,0x0
1c003840:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c003844:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003848:	29be52cd 	st.w	$r13,$r22,-108(0xf94)
1c00384c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003830 <MatrixKey+0x64c>
1c003850:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003854:	5002d400 	b	724(0x2d4) # 1c003b28 <MatrixKey+0x944>
1c003858:	02804404 	addi.w	$r4,$r0,17(0x11)
1c00385c:	57e2a7ff 	bl	-7516(0xfffe2a4) # 1c001b00 <gpio_read>
1c003860:	0015008c 	move	$r12,$r4
1c003864:	44008180 	bnez	$r12,128(0x80) # 1c0038e4 <MatrixKey+0x700>
1c003868:	1400008c 	lu12i.w	$r12,4(0x4)
1c00386c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003870:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c003874:	50001400 	b	20(0x14) # 1c003888 <MatrixKey+0x6a4>
1c003878:	03400000 	andi	$r0,$r0,0x0
1c00387c:	03400000 	andi	$r0,$r0,0x0
1c003880:	03400000 	andi	$r0,$r0,0x0
1c003884:	03400000 	andi	$r0,$r0,0x0
1c003888:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c00388c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003890:	29be42cd 	st.w	$r13,$r22,-112(0xf90)
1c003894:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003878 <MatrixKey+0x694>
1c003898:	03400000 	andi	$r0,$r0,0x0
1c00389c:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0038a0:	57e263ff 	bl	-7584(0xfffe260) # 1c001b00 <gpio_read>
1c0038a4:	0015008c 	move	$r12,$r4
1c0038a8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c00389c <MatrixKey+0x6b8>
1c0038ac:	1400008c 	lu12i.w	$r12,4(0x4)
1c0038b0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0038b4:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c0038b8:	50001400 	b	20(0x14) # 1c0038cc <MatrixKey+0x6e8>
1c0038bc:	03400000 	andi	$r0,$r0,0x0
1c0038c0:	03400000 	andi	$r0,$r0,0x0
1c0038c4:	03400000 	andi	$r0,$r0,0x0
1c0038c8:	03400000 	andi	$r0,$r0,0x0
1c0038cc:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c0038d0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0038d4:	29be32cd 	st.w	$r13,$r22,-116(0xf8c)
1c0038d8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038bc <MatrixKey+0x6d8>
1c0038dc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0038e0:	50024800 	b	584(0x248) # 1c003b28 <MatrixKey+0x944>
1c0038e4:	57f8afff 	bl	-1876(0xffff8ac) # 1c003190 <clkey>
1c0038e8:	00150005 	move	$r5,$r0
1c0038ec:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0038f0:	57e11bff 	bl	-7912(0xfffe118) # 1c001a08 <gpio_write>
1c0038f4:	02803804 	addi.w	$r4,$r0,14(0xe)
1c0038f8:	57e20bff 	bl	-7672(0xfffe208) # 1c001b00 <gpio_read>
1c0038fc:	0015008c 	move	$r12,$r4
1c003900:	44008180 	bnez	$r12,128(0x80) # 1c003980 <MatrixKey+0x79c>
1c003904:	1400008c 	lu12i.w	$r12,4(0x4)
1c003908:	03a3d98c 	ori	$r12,$r12,0x8f6
1c00390c:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c003910:	50001400 	b	20(0x14) # 1c003924 <MatrixKey+0x740>
1c003914:	03400000 	andi	$r0,$r0,0x0
1c003918:	03400000 	andi	$r0,$r0,0x0
1c00391c:	03400000 	andi	$r0,$r0,0x0
1c003920:	03400000 	andi	$r0,$r0,0x0
1c003924:	28be22cc 	ld.w	$r12,$r22,-120(0xf88)
1c003928:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00392c:	29be22cd 	st.w	$r13,$r22,-120(0xf88)
1c003930:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003914 <MatrixKey+0x730>
1c003934:	03400000 	andi	$r0,$r0,0x0
1c003938:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00393c:	57e1c7ff 	bl	-7740(0xfffe1c4) # 1c001b00 <gpio_read>
1c003940:	0015008c 	move	$r12,$r4
1c003944:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003938 <MatrixKey+0x754>
1c003948:	1400008c 	lu12i.w	$r12,4(0x4)
1c00394c:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003950:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c003954:	50001400 	b	20(0x14) # 1c003968 <MatrixKey+0x784>
1c003958:	03400000 	andi	$r0,$r0,0x0
1c00395c:	03400000 	andi	$r0,$r0,0x0
1c003960:	03400000 	andi	$r0,$r0,0x0
1c003964:	03400000 	andi	$r0,$r0,0x0
1c003968:	28be12cc 	ld.w	$r12,$r22,-124(0xf84)
1c00396c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003970:	29be12cd 	st.w	$r13,$r22,-124(0xf84)
1c003974:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003958 <MatrixKey+0x774>
1c003978:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00397c:	5001ac00 	b	428(0x1ac) # 1c003b28 <MatrixKey+0x944>
1c003980:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c003984:	57e17fff 	bl	-7812(0xfffe17c) # 1c001b00 <gpio_read>
1c003988:	0015008c 	move	$r12,$r4
1c00398c:	44008180 	bnez	$r12,128(0x80) # 1c003a0c <MatrixKey+0x828>
1c003990:	1400008c 	lu12i.w	$r12,4(0x4)
1c003994:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003998:	29be02cc 	st.w	$r12,$r22,-128(0xf80)
1c00399c:	50001400 	b	20(0x14) # 1c0039b0 <MatrixKey+0x7cc>
1c0039a0:	03400000 	andi	$r0,$r0,0x0
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	03400000 	andi	$r0,$r0,0x0
1c0039ac:	03400000 	andi	$r0,$r0,0x0
1c0039b0:	28be02cc 	ld.w	$r12,$r22,-128(0xf80)
1c0039b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039b8:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c0039bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0039a0 <MatrixKey+0x7bc>
1c0039c0:	03400000 	andi	$r0,$r0,0x0
1c0039c4:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0039c8:	57e13bff 	bl	-7880(0xfffe138) # 1c001b00 <gpio_read>
1c0039cc:	0015008c 	move	$r12,$r4
1c0039d0:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c0039c4 <MatrixKey+0x7e0>
1c0039d4:	1400008c 	lu12i.w	$r12,4(0x4)
1c0039d8:	03a3d98c 	ori	$r12,$r12,0x8f6
1c0039dc:	29bdf2cc 	st.w	$r12,$r22,-132(0xf7c)
1c0039e0:	50001400 	b	20(0x14) # 1c0039f4 <MatrixKey+0x810>
1c0039e4:	03400000 	andi	$r0,$r0,0x0
1c0039e8:	03400000 	andi	$r0,$r0,0x0
1c0039ec:	03400000 	andi	$r0,$r0,0x0
1c0039f0:	03400000 	andi	$r0,$r0,0x0
1c0039f4:	28bdf2cc 	ld.w	$r12,$r22,-132(0xf7c)
1c0039f8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0039fc:	29bdf2cd 	st.w	$r13,$r22,-132(0xf7c)
1c003a00:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0039e4 <MatrixKey+0x800>
1c003a04:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c003a08:	50012000 	b	288(0x120) # 1c003b28 <MatrixKey+0x944>
1c003a0c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003a10:	57e0f3ff 	bl	-7952(0xfffe0f0) # 1c001b00 <gpio_read>
1c003a14:	0015008c 	move	$r12,$r4
1c003a18:	44008180 	bnez	$r12,128(0x80) # 1c003a98 <MatrixKey+0x8b4>
1c003a1c:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a20:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a24:	29bde2cc 	st.w	$r12,$r22,-136(0xf78)
1c003a28:	50001400 	b	20(0x14) # 1c003a3c <MatrixKey+0x858>
1c003a2c:	03400000 	andi	$r0,$r0,0x0
1c003a30:	03400000 	andi	$r0,$r0,0x0
1c003a34:	03400000 	andi	$r0,$r0,0x0
1c003a38:	03400000 	andi	$r0,$r0,0x0
1c003a3c:	28bde2cc 	ld.w	$r12,$r22,-136(0xf78)
1c003a40:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a44:	29bde2cd 	st.w	$r13,$r22,-136(0xf78)
1c003a48:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a2c <MatrixKey+0x848>
1c003a4c:	03400000 	andi	$r0,$r0,0x0
1c003a50:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003a54:	57e0afff 	bl	-8020(0xfffe0ac) # 1c001b00 <gpio_read>
1c003a58:	0015008c 	move	$r12,$r4
1c003a5c:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003a50 <MatrixKey+0x86c>
1c003a60:	1400008c 	lu12i.w	$r12,4(0x4)
1c003a64:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003a68:	29bdd2cc 	st.w	$r12,$r22,-140(0xf74)
1c003a6c:	50001400 	b	20(0x14) # 1c003a80 <MatrixKey+0x89c>
1c003a70:	03400000 	andi	$r0,$r0,0x0
1c003a74:	03400000 	andi	$r0,$r0,0x0
1c003a78:	03400000 	andi	$r0,$r0,0x0
1c003a7c:	03400000 	andi	$r0,$r0,0x0
1c003a80:	28bdd2cc 	ld.w	$r12,$r22,-140(0xf74)
1c003a84:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003a88:	29bdd2cd 	st.w	$r13,$r22,-140(0xf74)
1c003a8c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003a70 <MatrixKey+0x88c>
1c003a90:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c003a94:	50009400 	b	148(0x94) # 1c003b28 <MatrixKey+0x944>
1c003a98:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003a9c:	57e067ff 	bl	-8092(0xfffe064) # 1c001b00 <gpio_read>
1c003aa0:	0015008c 	move	$r12,$r4
1c003aa4:	44008180 	bnez	$r12,128(0x80) # 1c003b24 <MatrixKey+0x940>
1c003aa8:	1400008c 	lu12i.w	$r12,4(0x4)
1c003aac:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003ab0:	29bdc2cc 	st.w	$r12,$r22,-144(0xf70)
1c003ab4:	50001400 	b	20(0x14) # 1c003ac8 <MatrixKey+0x8e4>
1c003ab8:	03400000 	andi	$r0,$r0,0x0
1c003abc:	03400000 	andi	$r0,$r0,0x0
1c003ac0:	03400000 	andi	$r0,$r0,0x0
1c003ac4:	03400000 	andi	$r0,$r0,0x0
1c003ac8:	28bdc2cc 	ld.w	$r12,$r22,-144(0xf70)
1c003acc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003ad0:	29bdc2cd 	st.w	$r13,$r22,-144(0xf70)
1c003ad4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003ab8 <MatrixKey+0x8d4>
1c003ad8:	03400000 	andi	$r0,$r0,0x0
1c003adc:	02804404 	addi.w	$r4,$r0,17(0x11)
1c003ae0:	57e023ff 	bl	-8160(0xfffe020) # 1c001b00 <gpio_read>
1c003ae4:	0015008c 	move	$r12,$r4
1c003ae8:	43fff59f 	beqz	$r12,-12(0x7ffff4) # 1c003adc <MatrixKey+0x8f8>
1c003aec:	1400008c 	lu12i.w	$r12,4(0x4)
1c003af0:	03a3d98c 	ori	$r12,$r12,0x8f6
1c003af4:	29bdb2cc 	st.w	$r12,$r22,-148(0xf6c)
1c003af8:	50001400 	b	20(0x14) # 1c003b0c <MatrixKey+0x928>
1c003afc:	03400000 	andi	$r0,$r0,0x0
1c003b00:	03400000 	andi	$r0,$r0,0x0
1c003b04:	03400000 	andi	$r0,$r0,0x0
1c003b08:	03400000 	andi	$r0,$r0,0x0
1c003b0c:	28bdb2cc 	ld.w	$r12,$r22,-148(0xf6c)
1c003b10:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b14:	29bdb2cd 	st.w	$r13,$r22,-148(0xf6c)
1c003b18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003afc <MatrixKey+0x918>
1c003b1c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c003b20:	50000800 	b	8(0x8) # 1c003b28 <MatrixKey+0x944>
1c003b24:	0015000c 	move	$r12,$r0
1c003b28:	00150184 	move	$r4,$r12
1c003b2c:	28827061 	ld.w	$r1,$r3,156(0x9c)
1c003b30:	28826076 	ld.w	$r22,$r3,152(0x98)
1c003b34:	02828063 	addi.w	$r3,$r3,160(0xa0)
1c003b38:	4c000020 	jirl	$r0,$r1,0

1c003b3c <Buzzer>:
Buzzer():
1c003b3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b44:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b4c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c003b50:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003b54:	57deb7ff 	bl	-8524(0xfffdeb4) # 1c001a08 <gpio_write>
1c003b58:	14000e2c 	lu12i.w	$r12,113(0x71)
1c003b5c:	03bfc98c 	ori	$r12,$r12,0xff2
1c003b60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b64:	50001400 	b	20(0x14) # 1c003b78 <Buzzer+0x3c>
1c003b68:	03400000 	andi	$r0,$r0,0x0
1c003b6c:	03400000 	andi	$r0,$r0,0x0
1c003b70:	03400000 	andi	$r0,$r0,0x0
1c003b74:	03400000 	andi	$r0,$r0,0x0
1c003b78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003b80:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003b84:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003b68 <Buzzer+0x2c>
1c003b88:	00150005 	move	$r5,$r0
1c003b8c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c003b90:	57de7bff 	bl	-8584(0xfffde78) # 1c001a08 <gpio_write>
1c003b94:	03400000 	andi	$r0,$r0,0x0
1c003b98:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b9c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ba0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ba4:	4c000020 	jirl	$r0,$r1,0

1c003ba8 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003ba8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bac:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003bb0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003bb4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003bb8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003bbc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003bc0:	2880018d 	ld.w	$r13,$r12,0
1c003bc4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003bc8:	0014b1ac 	and	$r12,$r13,$r12
1c003bcc:	40001180 	beqz	$r12,16(0x10) # 1c003bdc <TIM_GetITStatus+0x34>
1c003bd0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003bd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003bd8:	50000800 	b	8(0x8) # 1c003be0 <TIM_GetITStatus+0x38>
1c003bdc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003be4:	00150184 	move	$r4,$r12
1c003be8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003bec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003bf0:	4c000020 	jirl	$r0,$r1,0

1c003bf4 <TIM_ClearIT>:
TIM_ClearIT():
1c003bf4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bf8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003bfc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c00:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003c04:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003c08:	2880018e 	ld.w	$r14,$r12,0
1c003c0c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003c10:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c14:	001535cd 	or	$r13,$r14,$r13
1c003c18:	2980018d 	st.w	$r13,$r12,0
1c003c1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003c20:	03800d8c 	ori	$r12,$r12,0x3
1c003c24:	2a00018c 	ld.bu	$r12,$r12,0
1c003c28:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003c2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003c30:	03800d8c 	ori	$r12,$r12,0x3
1c003c34:	038005ad 	ori	$r13,$r13,0x1
1c003c38:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003c3c:	2900018d 	st.b	$r13,$r12,0
1c003c40:	03400000 	andi	$r0,$r0,0x0
1c003c44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c4c:	4c000020 	jirl	$r0,$r1,0

1c003c50 <WriteCmd>:
WriteCmd():
1c003c50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c54:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c58:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c60:	0015008c 	move	$r12,$r4
1c003c64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003c68:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003c6c:	57e07bff 	bl	-8072(0xfffe078) # 1c001ce4 <soc_I2C_GenerateSTART>
1c003c70:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c003c74:	57e0fbff 	bl	-7944(0xfffe0f8) # 1c001d6c <soc_I2C_SendData>
1c003c78:	57e13fff 	bl	-7876(0xfffe13c) # 1c001db4 <soc_I2C_wait>
1c003c7c:	00150004 	move	$r4,$r0
1c003c80:	57e0efff 	bl	-7956(0xfffe0ec) # 1c001d6c <soc_I2C_SendData>
1c003c84:	57e133ff 	bl	-7888(0xfffe130) # 1c001db4 <soc_I2C_wait>
1c003c88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c8c:	00150184 	move	$r4,$r12
1c003c90:	57e0dfff 	bl	-7972(0xfffe0dc) # 1c001d6c <soc_I2C_SendData>
1c003c94:	57e123ff 	bl	-7904(0xfffe120) # 1c001db4 <soc_I2C_wait>
1c003c98:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003c9c:	57e08fff 	bl	-8052(0xfffe08c) # 1c001d28 <soc_I2C_GenerateSTOP>
1c003ca0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003ca4:	57df0bff 	bl	-8440(0xfffdf08) # 1c001bac <soc_I2C_delay>
1c003ca8:	03400000 	andi	$r0,$r0,0x0
1c003cac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003cb0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003cb4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003cb8:	4c000020 	jirl	$r0,$r1,0

1c003cbc <WriteDat>:
WriteDat():
1c003cbc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cc0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003cc4:	29806076 	st.w	$r22,$r3,24(0x18)
1c003cc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ccc:	0015008c 	move	$r12,$r4
1c003cd0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003cd4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003cd8:	57e00fff 	bl	-8180(0xfffe00c) # 1c001ce4 <soc_I2C_GenerateSTART>
1c003cdc:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c003ce0:	57e08fff 	bl	-8052(0xfffe08c) # 1c001d6c <soc_I2C_SendData>
1c003ce4:	57e0d3ff 	bl	-7984(0xfffe0d0) # 1c001db4 <soc_I2C_wait>
1c003ce8:	02810004 	addi.w	$r4,$r0,64(0x40)
1c003cec:	57e083ff 	bl	-8064(0xfffe080) # 1c001d6c <soc_I2C_SendData>
1c003cf0:	57e0c7ff 	bl	-7996(0xfffe0c4) # 1c001db4 <soc_I2C_wait>
1c003cf4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003cf8:	00150184 	move	$r4,$r12
1c003cfc:	57e073ff 	bl	-8080(0xfffe070) # 1c001d6c <soc_I2C_SendData>
1c003d00:	57e0b7ff 	bl	-8012(0xfffe0b4) # 1c001db4 <soc_I2C_wait>
1c003d04:	02800404 	addi.w	$r4,$r0,1(0x1)
1c003d08:	57e023ff 	bl	-8160(0xfffe020) # 1c001d28 <soc_I2C_GenerateSTOP>
1c003d0c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003d10:	57de9fff 	bl	-8548(0xfffde9c) # 1c001bac <soc_I2C_delay>
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003d1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003d20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d24:	4c000020 	jirl	$r0,$r1,0

1c003d28 <OLED_Init>:
OLED_Init():
1c003d28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d2c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003d30:	29806076 	st.w	$r22,$r3,24(0x18)
1c003d34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d38:	140016cc 	lu12i.w	$r12,182(0xb6)
1c003d3c:	0399418c 	ori	$r12,$r12,0x650
1c003d40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d44:	50001400 	b	20(0x14) # 1c003d58 <OLED_Init+0x30>
1c003d48:	03400000 	andi	$r0,$r0,0x0
1c003d4c:	03400000 	andi	$r0,$r0,0x0
1c003d50:	03400000 	andi	$r0,$r0,0x0
1c003d54:	03400000 	andi	$r0,$r0,0x0
1c003d58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d5c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003d60:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003d64:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003d48 <OLED_Init+0x20>
1c003d68:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c003d6c:	57fee7ff 	bl	-284(0xffffee4) # 1c003c50 <WriteCmd>
1c003d70:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003d74:	57fedfff 	bl	-292(0xffffedc) # 1c003c50 <WriteCmd>
1c003d78:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003d7c:	57fed7ff 	bl	-300(0xffffed4) # 1c003c50 <WriteCmd>
1c003d80:	0282c004 	addi.w	$r4,$r0,176(0xb0)
1c003d84:	57fecfff 	bl	-308(0xffffecc) # 1c003c50 <WriteCmd>
1c003d88:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c003d8c:	57fec7ff 	bl	-316(0xffffec4) # 1c003c50 <WriteCmd>
1c003d90:	00150004 	move	$r4,$r0
1c003d94:	57febfff 	bl	-324(0xffffebc) # 1c003c50 <WriteCmd>
1c003d98:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003d9c:	57feb7ff 	bl	-332(0xffffeb4) # 1c003c50 <WriteCmd>
1c003da0:	02810004 	addi.w	$r4,$r0,64(0x40)
1c003da4:	57feafff 	bl	-340(0xffffeac) # 1c003c50 <WriteCmd>
1c003da8:	02820404 	addi.w	$r4,$r0,129(0x81)
1c003dac:	57fea7ff 	bl	-348(0xffffea4) # 1c003c50 <WriteCmd>
1c003db0:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c003db4:	57fe9fff 	bl	-356(0xffffe9c) # 1c003c50 <WriteCmd>
1c003db8:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c003dbc:	57fe97ff 	bl	-364(0xffffe94) # 1c003c50 <WriteCmd>
1c003dc0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c003dc4:	57fe8fff 	bl	-372(0xffffe8c) # 1c003c50 <WriteCmd>
1c003dc8:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c003dcc:	57fe87ff 	bl	-380(0xffffe84) # 1c003c50 <WriteCmd>
1c003dd0:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c003dd4:	57fe7fff 	bl	-388(0xffffe7c) # 1c003c50 <WriteCmd>
1c003dd8:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c003ddc:	57fe77ff 	bl	-396(0xffffe74) # 1c003c50 <WriteCmd>
1c003de0:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c003de4:	57fe6fff 	bl	-404(0xffffe6c) # 1c003c50 <WriteCmd>
1c003de8:	00150004 	move	$r4,$r0
1c003dec:	57fe67ff 	bl	-412(0xffffe64) # 1c003c50 <WriteCmd>
1c003df0:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c003df4:	57fe5fff 	bl	-420(0xffffe5c) # 1c003c50 <WriteCmd>
1c003df8:	0283c004 	addi.w	$r4,$r0,240(0xf0)
1c003dfc:	57fe57ff 	bl	-428(0xffffe54) # 1c003c50 <WriteCmd>
1c003e00:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c003e04:	57fe4fff 	bl	-436(0xffffe4c) # 1c003c50 <WriteCmd>
1c003e08:	02808804 	addi.w	$r4,$r0,34(0x22)
1c003e0c:	57fe47ff 	bl	-444(0xffffe44) # 1c003c50 <WriteCmd>
1c003e10:	02836804 	addi.w	$r4,$r0,218(0xda)
1c003e14:	57fe3fff 	bl	-452(0xffffe3c) # 1c003c50 <WriteCmd>
1c003e18:	02804804 	addi.w	$r4,$r0,18(0x12)
1c003e1c:	57fe37ff 	bl	-460(0xffffe34) # 1c003c50 <WriteCmd>
1c003e20:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c003e24:	57fe2fff 	bl	-468(0xffffe2c) # 1c003c50 <WriteCmd>
1c003e28:	02808004 	addi.w	$r4,$r0,32(0x20)
1c003e2c:	57fe27ff 	bl	-476(0xffffe24) # 1c003c50 <WriteCmd>
1c003e30:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c003e34:	57fe1fff 	bl	-484(0xffffe1c) # 1c003c50 <WriteCmd>
1c003e38:	02805004 	addi.w	$r4,$r0,20(0x14)
1c003e3c:	57fe17ff 	bl	-492(0xffffe14) # 1c003c50 <WriteCmd>
1c003e40:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c003e44:	57fe0fff 	bl	-500(0xffffe0c) # 1c003c50 <WriteCmd>
1c003e48:	03400000 	andi	$r0,$r0,0x0
1c003e4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e58:	4c000020 	jirl	$r0,$r1,0

1c003e5c <OLED_SetPos>:
OLED_SetPos():
1c003e5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003e64:	29806076 	st.w	$r22,$r3,24(0x18)
1c003e68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e6c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e70:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003e74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003e78:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e7c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c003e80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e84:	00150184 	move	$r4,$r12
1c003e88:	57fdcbff 	bl	-568(0xffffdc8) # 1c003c50 <WriteCmd>
1c003e8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e90:	0044918c 	srli.w	$r12,$r12,0x4
1c003e94:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003e98:	03403d8c 	andi	$r12,$r12,0xf
1c003e9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003ea0:	0380418c 	ori	$r12,$r12,0x10
1c003ea4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003ea8:	00150184 	move	$r4,$r12
1c003eac:	57fda7ff 	bl	-604(0xffffda4) # 1c003c50 <WriteCmd>
1c003eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003eb8:	0340398c 	andi	$r12,$r12,0xe
1c003ebc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003ec0:	0380058c 	ori	$r12,$r12,0x1
1c003ec4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003ec8:	00150184 	move	$r4,$r12
1c003ecc:	57fd87ff 	bl	-636(0xffffd84) # 1c003c50 <WriteCmd>
1c003ed0:	03400000 	andi	$r0,$r0,0x0
1c003ed4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003ed8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003edc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ee0:	4c000020 	jirl	$r0,$r1,0

1c003ee4 <OLED_Fill>:
OLED_Fill():
1c003ee4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ee8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003eec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003ef0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ef4:	0015008c 	move	$r12,$r4
1c003ef8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003efc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f00:	50006400 	b	100(0x64) # 1c003f64 <OLED_Fill+0x80>
1c003f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003f0c:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c003f10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003f14:	00150184 	move	$r4,$r12
1c003f18:	57fd3bff 	bl	-712(0xffffd38) # 1c003c50 <WriteCmd>
1c003f1c:	00150004 	move	$r4,$r0
1c003f20:	57fd33ff 	bl	-720(0xffffd30) # 1c003c50 <WriteCmd>
1c003f24:	02804004 	addi.w	$r4,$r0,16(0x10)
1c003f28:	57fd2bff 	bl	-728(0xffffd28) # 1c003c50 <WriteCmd>
1c003f2c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003f30:	50001c00 	b	28(0x1c) # 1c003f4c <OLED_Fill+0x68>
1c003f34:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003f38:	00150184 	move	$r4,$r12
1c003f3c:	57fd83ff 	bl	-640(0xffffd80) # 1c003cbc <WriteDat>
1c003f40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003f44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003f4c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003f50:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c003f54:	6fffe18d 	bgeu	$r12,$r13,-32(0x3ffe0) # 1c003f34 <OLED_Fill+0x50>
1c003f58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f68:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c003f6c:	6fff998d 	bgeu	$r12,$r13,-104(0x3ff98) # 1c003f04 <OLED_Fill+0x20>
1c003f70:	03400000 	andi	$r0,$r0,0x0
1c003f74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003f78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003f7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f80:	4c000020 	jirl	$r0,$r1,0

1c003f84 <OLED_CLS>:
OLED_CLS():
1c003f84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f88:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f94:	00150004 	move	$r4,$r0
1c003f98:	57ff4fff 	bl	-180(0xfffff4c) # 1c003ee4 <OLED_Fill>
1c003f9c:	03400000 	andi	$r0,$r0,0x0
1c003fa0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fa4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fa8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fac:	4c000020 	jirl	$r0,$r1,0

1c003fb0 <OLED_ShowStr>:
OLED_ShowStr():
1c003fb0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003fb4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003fb8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003fbc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003fc0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003fc4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003fc8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003fcc:	001500ec 	move	$r12,$r7
1c003fd0:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c003fd4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003fd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fdc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003fe0:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c003fe4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003fe8:	5800b58d 	beq	$r12,$r13,180(0xb4) # 1c00409c <OLED_ShowStr+0xec>
1c003fec:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003ff0:	5801c58d 	beq	$r12,$r13,452(0x1c4) # 1c0041b4 <OLED_ShowStr+0x204>
1c003ff4:	5001d800 	b	472(0x1d8) # 1c0041cc <OLED_ShowStr+0x21c>
1c003ff8:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c003ffc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004000:	001031ac 	add.w	$r12,$r13,$r12
1c004004:	2a00018c 	ld.bu	$r12,$r12,0
1c004008:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c00400c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004010:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004014:	0281f80c 	addi.w	$r12,$r0,126(0x7e)
1c004018:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c00402c <OLED_ShowStr+0x7c>
1c00401c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c004020:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004024:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004028:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00402c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004030:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004034:	57fe2bff 	bl	-472(0xffffe28) # 1c003e5c <OLED_SetPos>
1c004038:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00403c:	50003c00 	b	60(0x3c) # 1c004078 <OLED_ShowStr+0xc8>
1c004040:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004044:	029bc1ad 	addi.w	$r13,$r13,1776(0x6f0)
1c004048:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c00404c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004050:	001c31cc 	mul.w	$r12,$r14,$r12
1c004054:	001031ad 	add.w	$r13,$r13,$r12
1c004058:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00405c:	001031ac 	add.w	$r12,$r13,$r12
1c004060:	2a00018c 	ld.bu	$r12,$r12,0
1c004064:	00150184 	move	$r4,$r12
1c004068:	57fc57ff 	bl	-940(0xffffc54) # 1c003cbc <WriteDat>
1c00406c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004070:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004074:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004078:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00407c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004080:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004040 <OLED_ShowStr+0x90>
1c004084:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004088:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c00408c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004090:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004094:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004098:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00409c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0040a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0040a4:	001031ac 	add.w	$r12,$r13,$r12
1c0040a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0040ac:	47ff4d9f 	bnez	$r12,-180(0x7fff4c) # 1c003ff8 <OLED_ShowStr+0x48>
1c0040b0:	50011c00 	b	284(0x11c) # 1c0041cc <OLED_ShowStr+0x21c>
1c0040b4:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0040b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0040bc:	001031ac 	add.w	$r12,$r13,$r12
1c0040c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0040c4:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c0040c8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0040cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0040d0:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c0040d4:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c0040e8 <OLED_ShowStr+0x138>
1c0040d8:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0040dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0040e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040e4:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0040e8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0040ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0040f0:	57fd6fff 	bl	-660(0xffffd6c) # 1c003e5c <OLED_SetPos>
1c0040f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040f8:	50003800 	b	56(0x38) # 1c004130 <OLED_ShowStr+0x180>
1c0040fc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004100:	0040918d 	slli.w	$r13,$r12,0x4
1c004104:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004108:	001031ac 	add.w	$r12,$r13,$r12
1c00410c:	1c0000ad 	pcaddu12i	$r13,5(0x5)
1c004110:	02a131ad 	addi.w	$r13,$r13,-1972(0x84c)
1c004114:	001031ac 	add.w	$r12,$r13,$r12
1c004118:	2a00018c 	ld.bu	$r12,$r12,0
1c00411c:	00150184 	move	$r4,$r12
1c004120:	57fb9fff 	bl	-1124(0xffffb9c) # 1c003cbc <WriteDat>
1c004124:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004128:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00412c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004130:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004134:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004138:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0040fc <OLED_ShowStr+0x14c>
1c00413c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004140:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004144:	00150185 	move	$r5,$r12
1c004148:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00414c:	57fd13ff 	bl	-752(0xffffd10) # 1c003e5c <OLED_SetPos>
1c004150:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004154:	50003c00 	b	60(0x3c) # 1c004190 <OLED_ShowStr+0x1e0>
1c004158:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00415c:	0040918d 	slli.w	$r13,$r12,0x4
1c004160:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004164:	001031ac 	add.w	$r12,$r13,$r12
1c004168:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00416c:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004170:	029fb1ad 	addi.w	$r13,$r13,2028(0x7ec)
1c004174:	001031ac 	add.w	$r12,$r13,$r12
1c004178:	2a00018c 	ld.bu	$r12,$r12,0
1c00417c:	00150184 	move	$r4,$r12
1c004180:	57fb3fff 	bl	-1220(0xffffb3c) # 1c003cbc <WriteDat>
1c004184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004188:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00418c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004190:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004194:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004198:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004158 <OLED_ShowStr+0x1a8>
1c00419c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0041a0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0041a4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0041a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0041ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0041b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0041b4:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0041b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0041bc:	001031ac 	add.w	$r12,$r13,$r12
1c0041c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0041c4:	47fef19f 	bnez	$r12,-272(0x7ffef0) # 1c0040b4 <OLED_ShowStr+0x104>
1c0041c8:	03400000 	andi	$r0,$r0,0x0
1c0041cc:	03400000 	andi	$r0,$r0,0x0
1c0041d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0041d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0041d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0041dc:	4c000020 	jirl	$r0,$r1,0

1c0041e0 <OLED_ShowCN>:
OLED_ShowCN():
1c0041e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0041e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0041e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0041ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0041f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0041f4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0041f8:	001500cc 	move	$r12,$r6
1c0041fc:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c004200:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004204:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c004208:	0040958c 	slli.w	$r12,$r12,0x5
1c00420c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004210:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004214:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004218:	57fc47ff 	bl	-956(0xffffc44) # 1c003e5c <OLED_SetPos>
1c00421c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004220:	50003800 	b	56(0x38) # 1c004258 <OLED_ShowCN+0x78>
1c004224:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004228:	02b7f1ad 	addi.w	$r13,$r13,-516(0xdfc)
1c00422c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004230:	001031ac 	add.w	$r12,$r13,$r12
1c004234:	2a00018c 	ld.bu	$r12,$r12,0
1c004238:	00150184 	move	$r4,$r12
1c00423c:	57fa83ff 	bl	-1408(0xffffa80) # 1c003cbc <WriteDat>
1c004240:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004244:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004248:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00424c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004250:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004254:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004258:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00425c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c004260:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c004224 <OLED_ShowCN+0x44>
1c004264:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004268:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00426c:	00150185 	move	$r5,$r12
1c004270:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004274:	57fbebff 	bl	-1048(0xffffbe8) # 1c003e5c <OLED_SetPos>
1c004278:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00427c:	50003800 	b	56(0x38) # 1c0042b4 <OLED_ShowCN+0xd4>
1c004280:	1cc7ffad 	pcaddu12i	$r13,409597(0x63ffd)
1c004284:	02b681ad 	addi.w	$r13,$r13,-608(0xda0)
1c004288:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00428c:	001031ac 	add.w	$r12,$r13,$r12
1c004290:	2a00018c 	ld.bu	$r12,$r12,0
1c004294:	00150184 	move	$r4,$r12
1c004298:	57fa27ff 	bl	-1500(0xffffa24) # 1c003cbc <WriteDat>
1c00429c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0042a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0042a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0042a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0042ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0042b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0042b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0042b8:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0042bc:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c004280 <OLED_ShowCN+0xa0>
1c0042c0:	03400000 	andi	$r0,$r0,0x0
1c0042c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0042c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0042cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0042d0:	4c000020 	jirl	$r0,$r1,0

1c0042d4 <OLED_ShowCN_STR>:
OLED_ShowCN_STR():
1c0042d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0042d8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0042dc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0042e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0042e4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0042e8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0042ec:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0042f0:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c0042f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0042f8:	50004800 	b	72(0x48) # 1c004340 <OLED_ShowCN_STR+0x6c>
1c0042fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004300:	0040918d 	slli.w	$r13,$r12,0x4
1c004304:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004308:	001031ae 	add.w	$r14,$r13,$r12
1c00430c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004310:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004314:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c004318:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00431c:	001031ac 	add.w	$r12,$r13,$r12
1c004320:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004324:	00150186 	move	$r6,$r12
1c004328:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00432c:	001501c4 	move	$r4,$r14
1c004330:	57feb3ff 	bl	-336(0xffffeb0) # 1c0041e0 <OLED_ShowCN>
1c004334:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004338:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00433c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004340:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004344:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004348:	6bffb5ac 	bltu	$r13,$r12,-76(0x3ffb4) # 1c0042fc <OLED_ShowCN_STR+0x28>
1c00434c:	03400000 	andi	$r0,$r0,0x0
1c004350:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004354:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004358:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00435c:	4c000020 	jirl	$r0,$r1,0

1c004360 <OLED_DrawBMP>:
OLED_DrawBMP():
1c004360:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004364:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004368:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00436c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004370:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004374:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004378:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00437c:	29bf42c7 	st.w	$r7,$r22,-48(0xfd0)
1c004380:	29bf32c8 	st.w	$r8,$r22,-52(0xfcc)
1c004384:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004388:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c00438c:	03401d8c 	andi	$r12,$r12,0x7
1c004390:	44001580 	bnez	$r12,20(0x14) # 1c0043a4 <OLED_DrawBMP+0x44>
1c004394:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004398:	00448d8c 	srli.w	$r12,$r12,0x3
1c00439c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0043a0:	50001400 	b	20(0x14) # 1c0043b4 <OLED_DrawBMP+0x54>
1c0043a4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0043a8:	00448d8c 	srli.w	$r12,$r12,0x3
1c0043ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0043b0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0043b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0043b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0043bc:	50006000 	b	96(0x60) # 1c00441c <OLED_DrawBMP+0xbc>
1c0043c0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c0043c4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0043c8:	57fa97ff 	bl	-1388(0xffffa94) # 1c003e5c <OLED_SetPos>
1c0043cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0043d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0043d4:	50003000 	b	48(0x30) # 1c004404 <OLED_DrawBMP+0xa4>
1c0043d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043dc:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0043e0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0043e4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0043e8:	001031ac 	add.w	$r12,$r13,$r12
1c0043ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0043f0:	00150184 	move	$r4,$r12
1c0043f4:	57f8cbff 	bl	-1848(0xffff8c8) # 1c003cbc <WriteDat>
1c0043f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0043fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004400:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004404:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004408:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00440c:	6bffcdac 	bltu	$r13,$r12,-52(0x3ffcc) # 1c0043d8 <OLED_DrawBMP+0x78>
1c004410:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004414:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004418:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00441c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c004420:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004424:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c0043c0 <OLED_DrawBMP+0x60>
1c004428:	03400000 	andi	$r0,$r0,0x0
1c00442c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c004430:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004434:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004438:	4c000020 	jirl	$r0,$r1,0

1c00443c <OLED_ShowChar>:
OLED_ShowChar():
1c00443c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004440:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004444:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004448:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00444c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004450:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004454:	001500cc 	move	$r12,$r6
1c004458:	001500ed 	move	$r13,$r7
1c00445c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c004460:	001501ac 	move	$r12,$r13
1c004464:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c004468:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00446c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004470:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c004474:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c004478:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00447c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004480:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c004484:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c004498 <OLED_ShowChar+0x5c>
1c004488:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c00448c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004490:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c004494:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c004498:	2a3f5acd 	ld.bu	$r13,$r22,-42(0xfd6)
1c00449c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0044a0:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c00455c <OLED_ShowChar+0x120>
1c0044a4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0044a8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0044ac:	57f9b3ff 	bl	-1616(0xffff9b0) # 1c003e5c <OLED_SetPos>
1c0044b0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0044b4:	50003800 	b	56(0x38) # 1c0044ec <OLED_ShowChar+0xb0>
1c0044b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0044bc:	0040918d 	slli.w	$r13,$r12,0x4
1c0044c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044c4:	001031ac 	add.w	$r12,$r13,$r12
1c0044c8:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0044cc:	029241ad 	addi.w	$r13,$r13,1168(0x490)
1c0044d0:	001031ac 	add.w	$r12,$r13,$r12
1c0044d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0044d8:	00150184 	move	$r4,$r12
1c0044dc:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c003cbc <WriteDat>
1c0044e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0044e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0044ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0044f0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0044f4:	6fffc58d 	bgeu	$r12,$r13,-60(0x3ffc4) # 1c0044b8 <OLED_ShowChar+0x7c>
1c0044f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0044fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004500:	00150185 	move	$r5,$r12
1c004504:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004508:	57f957ff 	bl	-1708(0xffff954) # 1c003e5c <OLED_SetPos>
1c00450c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004510:	50003c00 	b	60(0x3c) # 1c00454c <OLED_ShowChar+0x110>
1c004514:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004518:	0040918d 	slli.w	$r13,$r12,0x4
1c00451c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004520:	001031ac 	add.w	$r12,$r13,$r12
1c004524:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004528:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c00452c:	0290c1ad 	addi.w	$r13,$r13,1072(0x430)
1c004530:	001031ac 	add.w	$r12,$r13,$r12
1c004534:	2a00018c 	ld.bu	$r12,$r12,0
1c004538:	00150184 	move	$r4,$r12
1c00453c:	57f783ff 	bl	-2176(0xffff780) # 1c003cbc <WriteDat>
1c004540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004544:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00454c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004550:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004554:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004514 <OLED_ShowChar+0xd8>
1c004558:	50005c00 	b	92(0x5c) # 1c0045b4 <OLED_ShowChar+0x178>
1c00455c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004560:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004564:	57f8fbff 	bl	-1800(0xffff8f8) # 1c003e5c <OLED_SetPos>
1c004568:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00456c:	50003c00 	b	60(0x3c) # 1c0045a8 <OLED_ShowChar+0x16c>
1c004570:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004574:	028701ad 	addi.w	$r13,$r13,448(0x1c0)
1c004578:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c00457c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c004580:	001c31cc 	mul.w	$r12,$r14,$r12
1c004584:	001031ad 	add.w	$r13,$r13,$r12
1c004588:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00458c:	001031ac 	add.w	$r12,$r13,$r12
1c004590:	2a00018c 	ld.bu	$r12,$r12,0
1c004594:	00150184 	move	$r4,$r12
1c004598:	57f727ff 	bl	-2268(0xffff724) # 1c003cbc <WriteDat>
1c00459c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0045a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0045ac:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0045b0:	6fffc18d 	bgeu	$r12,$r13,-64(0x3ffc0) # 1c004570 <OLED_ShowChar+0x134>
1c0045b4:	03400000 	andi	$r0,$r0,0x0
1c0045b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0045bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0045c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0045c4:	4c000020 	jirl	$r0,$r1,0

1c0045c8 <oled_pow>:
oled_pow():
1c0045c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0045cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0045d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0045d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0045d8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0045dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0045e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045e4:	50001400 	b	20(0x14) # 1c0045f8 <oled_pow+0x30>
1c0045e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0045ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0045f0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0045f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0045fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004600:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c004604:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0045e8 <oled_pow+0x20>
1c004608:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00460c:	00150184 	move	$r4,$r12
1c004610:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004614:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004618:	4c000020 	jirl	$r0,$r1,0

1c00461c <OLED_ShowNum>:
OLED_ShowNum():
1c00461c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004620:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004624:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004628:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00462c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004630:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004634:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004638:	001500ec 	move	$r12,$r7
1c00463c:	0015010d 	move	$r13,$r8
1c004640:	293f4ecc 	st.b	$r12,$r22,-45(0xfd3)
1c004644:	001501ac 	move	$r12,$r13
1c004648:	293f4acc 	st.b	$r12,$r22,-46(0xfd2)
1c00464c:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004650:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004654:	50010400 	b	260(0x104) # 1c004758 <OLED_ShowNum+0x13c>
1c004658:	2a3f4ecd 	ld.bu	$r13,$r22,-45(0xfd3)
1c00465c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004660:	001131ac 	sub.w	$r12,$r13,$r12
1c004664:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004668:	00150185 	move	$r5,$r12
1c00466c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c004670:	57ff5bff 	bl	-168(0xfffff58) # 1c0045c8 <oled_pow>
1c004674:	0015008d 	move	$r13,$r4
1c004678:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00467c:	0021358e 	div.wu	$r14,$r12,$r13
1c004680:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004688 <OLED_ShowNum+0x6c>
1c004684:	002a0007 	break	0x7
1c004688:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00468c:	0021b5cc 	mod.wu	$r12,$r14,$r13
1c004690:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c004698 <OLED_ShowNum+0x7c>
1c004694:	002a0007 	break	0x7
1c004698:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00469c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0046a0:	44006580 	bnez	$r12,100(0x64) # 1c004704 <OLED_ShowNum+0xe8>
1c0046a4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0046a8:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c0046ac:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0046b0:	640055ac 	bge	$r13,$r12,84(0x54) # 1c004704 <OLED_ShowNum+0xe8>
1c0046b4:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c0046b8:	44004580 	bnez	$r12,68(0x44) # 1c0046fc <OLED_ShowNum+0xe0>
1c0046bc:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c0046c0:	0044858c 	srli.w	$r12,$r12,0x1
1c0046c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0046c8:	0015018d 	move	$r13,$r12
1c0046cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0046d0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0046d4:	0015018d 	move	$r13,$r12
1c0046d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0046dc:	001031ac 	add.w	$r12,$r13,$r12
1c0046e0:	2a3f4acd 	ld.bu	$r13,$r22,-46(0xfd2)
1c0046e4:	001501a7 	move	$r7,$r13
1c0046e8:	02808006 	addi.w	$r6,$r0,32(0x20)
1c0046ec:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0046f0:	00150184 	move	$r4,$r12
1c0046f4:	57fd4bff 	bl	-696(0xffffd48) # 1c00443c <OLED_ShowChar>
1c0046f8:	50005400 	b	84(0x54) # 1c00474c <OLED_ShowNum+0x130>
1c0046fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004700:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004704:	2a3f4acc 	ld.bu	$r12,$r22,-46(0xfd2)
1c004708:	0044858c 	srli.w	$r12,$r12,0x1
1c00470c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004710:	0015018d 	move	$r13,$r12
1c004714:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004718:	001c31ac 	mul.w	$r12,$r13,$r12
1c00471c:	0015018d 	move	$r13,$r12
1c004720:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004724:	001031ad 	add.w	$r13,$r13,$r12
1c004728:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00472c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004730:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004734:	2a3f4ace 	ld.bu	$r14,$r22,-46(0xfd2)
1c004738:	001501c7 	move	$r7,$r14
1c00473c:	00150186 	move	$r6,$r12
1c004740:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c004744:	001501a4 	move	$r4,$r13
1c004748:	57fcf7ff 	bl	-780(0xffffcf4) # 1c00443c <OLED_ShowChar>
1c00474c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004750:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004754:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004758:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00475c:	2a3f4ecc 	ld.bu	$r12,$r22,-45(0xfd3)
1c004760:	6bfef9ac 	bltu	$r13,$r12,-264(0x3fef8) # 1c004658 <OLED_ShowNum+0x3c>
1c004764:	03400000 	andi	$r0,$r0,0x0
1c004768:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00476c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004770:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004774:	4c000020 	jirl	$r0,$r1,0

1c004778 <my_GPIO_Init>:
my_GPIO_Init():
1c004778:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00477c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004780:	29806076 	st.w	$r22,$r3,24(0x18)
1c004784:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004788:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00478c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004790:	57d183ff 	bl	-11904(0xfffd180) # 1c001910 <gpio_init>
1c004794:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004798:	02803404 	addi.w	$r4,$r0,13(0xd)
1c00479c:	57d177ff 	bl	-11916(0xfffd174) # 1c001910 <gpio_init>
1c0047a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047a4:	02804804 	addi.w	$r4,$r0,18(0x12)
1c0047a8:	57d16bff 	bl	-11928(0xfffd168) # 1c001910 <gpio_init>
1c0047ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047b0:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c0047b4:	57d15fff 	bl	-11940(0xfffd15c) # 1c001910 <gpio_init>
1c0047b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047bc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0047c0:	57d153ff 	bl	-11952(0xfffd150) # 1c001910 <gpio_init>
1c0047c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047c8:	02808804 	addi.w	$r4,$r0,34(0x22)
1c0047cc:	57d147ff 	bl	-11964(0xfffd144) # 1c001910 <gpio_init>
1c0047d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047d4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0047d8:	57d13bff 	bl	-11976(0xfffd138) # 1c001910 <gpio_init>
1c0047dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047e0:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0047e4:	57d12fff 	bl	-11988(0xfffd12c) # 1c001910 <gpio_init>
1c0047e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047ec:	02809404 	addi.w	$r4,$r0,37(0x25)
1c0047f0:	57d123ff 	bl	-12000(0xfffd120) # 1c001910 <gpio_init>
1c0047f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0047f8:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0047fc:	57d117ff 	bl	-12012(0xfffd114) # 1c001910 <gpio_init>
1c004800:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004804:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c004808:	57d10bff 	bl	-12024(0xfffd108) # 1c001910 <gpio_init>
1c00480c:	00150005 	move	$r5,$r0
1c004810:	02803804 	addi.w	$r4,$r0,14(0xe)
1c004814:	57d0ffff 	bl	-12036(0xfffd0fc) # 1c001910 <gpio_init>
1c004818:	00150005 	move	$r5,$r0
1c00481c:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c004820:	57d0f3ff 	bl	-12048(0xfffd0f0) # 1c001910 <gpio_init>
1c004824:	00150005 	move	$r5,$r0
1c004828:	02804004 	addi.w	$r4,$r0,16(0x10)
1c00482c:	57d0e7ff 	bl	-12060(0xfffd0e4) # 1c001910 <gpio_init>
1c004830:	00150005 	move	$r5,$r0
1c004834:	02804404 	addi.w	$r4,$r0,17(0x11)
1c004838:	57d0dbff 	bl	-12072(0xfffd0d8) # 1c001910 <gpio_init>
1c00483c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c004840:	03bf918c 	ori	$r12,$r12,0xfe4
1c004844:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004848:	50001400 	b	20(0x14) # 1c00485c <my_GPIO_Init+0xe4>
1c00484c:	03400000 	andi	$r0,$r0,0x0
1c004850:	03400000 	andi	$r0,$r0,0x0
1c004854:	03400000 	andi	$r0,$r0,0x0
1c004858:	03400000 	andi	$r0,$r0,0x0
1c00485c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004860:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004864:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004868:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00484c <my_GPIO_Init+0xd4>
1c00486c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004870:	02809004 	addi.w	$r4,$r0,36(0x24)
1c004874:	57d197ff 	bl	-11884(0xfffd194) # 1c001a08 <gpio_write>
1c004878:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00487c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c004880:	57d18bff 	bl	-11896(0xfffd188) # 1c001a08 <gpio_write>
1c004884:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c004888:	03bf918c 	ori	$r12,$r12,0xfe4
1c00488c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004890:	50001400 	b	20(0x14) # 1c0048a4 <my_GPIO_Init+0x12c>
1c004894:	03400000 	andi	$r0,$r0,0x0
1c004898:	03400000 	andi	$r0,$r0,0x0
1c00489c:	03400000 	andi	$r0,$r0,0x0
1c0048a0:	03400000 	andi	$r0,$r0,0x0
1c0048a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0048a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0048ac:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0048b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004894 <my_GPIO_Init+0x11c>
1c0048b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0048b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0048bc:	57d14fff 	bl	-11956(0xfffd14c) # 1c001a08 <gpio_write>
1c0048c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0048c4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c0048c8:	57d143ff 	bl	-11968(0xfffd140) # 1c001a08 <gpio_write>
1c0048cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0048d0:	02809804 	addi.w	$r4,$r0,38(0x26)
1c0048d4:	57d137ff 	bl	-11980(0xfffd134) # 1c001a08 <gpio_write>
1c0048d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0048dc:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c0048e0:	57d12bff 	bl	-11992(0xfffd128) # 1c001a08 <gpio_write>
1c0048e4:	00150005 	move	$r5,$r0
1c0048e8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0048ec:	57d11fff 	bl	-12004(0xfffd11c) # 1c001a08 <gpio_write>
1c0048f0:	03400000 	andi	$r0,$r0,0x0
1c0048f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0048f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0048fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004900:	4c000020 	jirl	$r0,$r1,0

1c004904 <my_I2C_Init>:
my_I2C_Init():
1c004904:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004908:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00490c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004914:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004918:	00150184 	move	$r4,$r12
1c00491c:	57d2c7ff 	bl	-11580(0xfffd2c4) # 1c001be0 <soc_I2C_StructInit>
1c004920:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c004924:	00150184 	move	$r4,$r12
1c004928:	57d303ff 	bl	-11520(0xfffd300) # 1c001c28 <soc_I2C_Init>
1c00492c:	1400016c 	lu12i.w	$r12,11(0xb)
1c004930:	0399958c 	ori	$r12,$r12,0x665
1c004934:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004938:	50001400 	b	20(0x14) # 1c00494c <my_I2C_Init+0x48>
1c00493c:	03400000 	andi	$r0,$r0,0x0
1c004940:	03400000 	andi	$r0,$r0,0x0
1c004944:	03400000 	andi	$r0,$r0,0x0
1c004948:	03400000 	andi	$r0,$r0,0x0
1c00494c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004950:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004954:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004958:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00493c <my_I2C_Init+0x38>
1c00495c:	03400000 	andi	$r0,$r0,0x0
1c004960:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004964:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004968:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00496c:	4c000020 	jirl	$r0,$r1,0

1c004970 <my_PWM_Init>:
my_PWM_Init():
1c004970:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004974:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004978:	29806076 	st.w	$r22,$r3,24(0x18)
1c00497c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004980:	57d4bfff 	bl	-11076(0xfffd4bc) # 1c001e3c <pwm_steering_engine_init>
1c004984:	1400016c 	lu12i.w	$r12,11(0xb)
1c004988:	0399958c 	ori	$r12,$r12,0x665
1c00498c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004990:	50001400 	b	20(0x14) # 1c0049a4 <my_PWM_Init+0x34>
1c004994:	03400000 	andi	$r0,$r0,0x0
1c004998:	03400000 	andi	$r0,$r0,0x0
1c00499c:	03400000 	andi	$r0,$r0,0x0
1c0049a0:	03400000 	andi	$r0,$r0,0x0
1c0049a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049a8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0049ac:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0049b0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004994 <my_PWM_Init+0x24>
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <Init_main>:
Init_main():
1c0049c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d8:	57e737ff 	bl	-6348(0xfffe734) # 1c00310c <SG90_Init>
1c0049dc:	57f34fff 	bl	-3252(0xffff34c) # 1c003d28 <OLED_Init>
1c0049e0:	57f5a7ff 	bl	-2652(0xffff5a4) # 1c003f84 <OLED_CLS>
1c0049e4:	03400000 	andi	$r0,$r0,0x0
1c0049e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049f4:	4c000020 	jirl	$r0,$r1,0

1c0049f8 <RC522_ReadWriteByte>:
RC522_ReadWriteByte():
1c0049f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0049fc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004a00:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004a04:	0015008c 	move	$r12,$r4
1c004a08:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004a0c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004a10:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c004a14:	2900098d 	st.b	$r13,$r12,2(0x2)
1c004a18:	03400000 	andi	$r0,$r0,0x0
1c004a1c:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004a20:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004a24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a28:	0340118c 	andi	$r12,$r12,0x4
1c004a2c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c004a1c <RC522_ReadWriteByte+0x24>
1c004a30:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004a34:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c004a38:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004a3c:	03400000 	andi	$r0,$r0,0x0
1c004a40:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c004a44:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c004a48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a4c:	0340058c 	andi	$r12,$r12,0x1
1c004a50:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004a40 <RC522_ReadWriteByte+0x48>
1c004a54:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004a58:	00150184 	move	$r4,$r12
1c004a5c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004a60:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004a64:	4c000020 	jirl	$r0,$r1,0

1c004a68 <ReadRawRC>:
ReadRawRC():
1c004a68:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004a6c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004a70:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004a74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004a78:	0015008c 	move	$r12,$r4
1c004a7c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004a80:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c004a84:	57d467ff 	bl	-11164(0xfffd464) # 1c001ee8 <soc_Spi_Cs_Down>
1c004a88:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004a8c:	0040858c 	slli.w	$r12,$r12,0x1
1c004a90:	00005d8c 	ext.w.b	$r12,$r12
1c004a94:	0341f98c 	andi	$r12,$r12,0x7e
1c004a98:	00005d8d 	ext.w.b	$r13,$r12
1c004a9c:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c004aa0:	001531ac 	or	$r12,$r13,$r12
1c004aa4:	00005d8c 	ext.w.b	$r12,$r12
1c004aa8:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004aac:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c004ab0:	00150184 	move	$r4,$r12
1c004ab4:	57ff47ff 	bl	-188(0xfffff44) # 1c0049f8 <RC522_ReadWriteByte>
1c004ab8:	00150004 	move	$r4,$r0
1c004abc:	57ff3fff 	bl	-196(0xfffff3c) # 1c0049f8 <RC522_ReadWriteByte>
1c004ac0:	0015008c 	move	$r12,$r4
1c004ac4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004ac8:	57d47bff 	bl	-11144(0xfffd478) # 1c001f40 <soc_Spi_Cs_Up>
1c004acc:	1400004c 	lu12i.w	$r12,2(0x2)
1c004ad0:	0391ed8c 	ori	$r12,$r12,0x47b
1c004ad4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ad8:	50001400 	b	20(0x14) # 1c004aec <ReadRawRC+0x84>
1c004adc:	03400000 	andi	$r0,$r0,0x0
1c004ae0:	03400000 	andi	$r0,$r0,0x0
1c004ae4:	03400000 	andi	$r0,$r0,0x0
1c004ae8:	03400000 	andi	$r0,$r0,0x0
1c004aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004af0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004af4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004af8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004adc <ReadRawRC+0x74>
1c004afc:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004b00:	00150184 	move	$r4,$r12
1c004b04:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004b08:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004b0c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004b10:	4c000020 	jirl	$r0,$r1,0

1c004b14 <WriteRawRC>:
WriteRawRC():
1c004b14:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004b18:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004b1c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004b20:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004b24:	0015008c 	move	$r12,$r4
1c004b28:	001500ad 	move	$r13,$r5
1c004b2c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004b30:	001501ac 	move	$r12,$r13
1c004b34:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004b38:	57d3b3ff 	bl	-11344(0xfffd3b0) # 1c001ee8 <soc_Spi_Cs_Down>
1c004b3c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004b40:	0040858c 	slli.w	$r12,$r12,0x1
1c004b44:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b48:	0341f98c 	andi	$r12,$r12,0x7e
1c004b4c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004b50:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c004b54:	00150184 	move	$r4,$r12
1c004b58:	57fea3ff 	bl	-352(0xffffea0) # 1c0049f8 <RC522_ReadWriteByte>
1c004b5c:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c004b60:	00150184 	move	$r4,$r12
1c004b64:	57fe97ff 	bl	-364(0xffffe94) # 1c0049f8 <RC522_ReadWriteByte>
1c004b68:	57d3dbff 	bl	-11304(0xfffd3d8) # 1c001f40 <soc_Spi_Cs_Up>
1c004b6c:	1400004c 	lu12i.w	$r12,2(0x2)
1c004b70:	0391ed8c 	ori	$r12,$r12,0x47b
1c004b74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b78:	50001400 	b	20(0x14) # 1c004b8c <WriteRawRC+0x78>
1c004b7c:	03400000 	andi	$r0,$r0,0x0
1c004b80:	03400000 	andi	$r0,$r0,0x0
1c004b84:	03400000 	andi	$r0,$r0,0x0
1c004b88:	03400000 	andi	$r0,$r0,0x0
1c004b8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b90:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004b94:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004b98:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004b7c <WriteRawRC+0x68>
1c004b9c:	03400000 	andi	$r0,$r0,0x0
1c004ba0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ba4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004ba8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004bac:	4c000020 	jirl	$r0,$r1,0

1c004bb0 <SetBitMask>:
SetBitMask():
1c004bb0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004bb4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004bb8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004bbc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004bc0:	0015008c 	move	$r12,$r4
1c004bc4:	001500ad 	move	$r13,$r5
1c004bc8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004bcc:	001501ac 	move	$r12,$r13
1c004bd0:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004bd4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004bd8:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004bdc:	00150184 	move	$r4,$r12
1c004be0:	57fe8bff 	bl	-376(0xffffe88) # 1c004a68 <ReadRawRC>
1c004be4:	0015008c 	move	$r12,$r4
1c004be8:	0015018d 	move	$r13,$r12
1c004bec:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c004bf0:	001531ac 	or	$r12,$r13,$r12
1c004bf4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004bf8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004bfc:	283f7acd 	ld.b	$r13,$r22,-34(0xfde)
1c004c00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c04:	001531ac 	or	$r12,$r13,$r12
1c004c08:	00005d8c 	ext.w.b	$r12,$r12
1c004c0c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004c10:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004c14:	001501a5 	move	$r5,$r13
1c004c18:	00150184 	move	$r4,$r12
1c004c1c:	57fefbff 	bl	-264(0xffffef8) # 1c004b14 <WriteRawRC>
1c004c20:	03400000 	andi	$r0,$r0,0x0
1c004c24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c30:	4c000020 	jirl	$r0,$r1,0

1c004c34 <ClearBitMask>:
ClearBitMask():
1c004c34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c44:	0015008c 	move	$r12,$r4
1c004c48:	001500ad 	move	$r13,$r5
1c004c4c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004c50:	001501ac 	move	$r12,$r13
1c004c54:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004c58:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004c5c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004c60:	00150184 	move	$r4,$r12
1c004c64:	57fe07ff 	bl	-508(0xffffe04) # 1c004a68 <ReadRawRC>
1c004c68:	0015008c 	move	$r12,$r4
1c004c6c:	00005d8d 	ext.w.b	$r13,$r12
1c004c70:	283f7acc 	ld.b	$r12,$r22,-34(0xfde)
1c004c74:	0014300c 	nor	$r12,$r0,$r12
1c004c78:	00005d8c 	ext.w.b	$r12,$r12
1c004c7c:	0014b1ac 	and	$r12,$r13,$r12
1c004c80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c84:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004c88:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004c8c:	001501a5 	move	$r5,$r13
1c004c90:	00150184 	move	$r4,$r12
1c004c94:	57fe83ff 	bl	-384(0xffffe80) # 1c004b14 <WriteRawRC>
1c004c98:	03400000 	andi	$r0,$r0,0x0
1c004c9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ca0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004ca4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004ca8:	4c000020 	jirl	$r0,$r1,0

1c004cac <PcdComMF522>:
PcdComMF522():
1c004cac:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004cb0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004cb4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004cb8:	29809077 	st.w	$r23,$r3,36(0x24)
1c004cbc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004cc0:	0015008c 	move	$r12,$r4
1c004cc4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004cc8:	001500cd 	move	$r13,$r6
1c004ccc:	29bf52c7 	st.w	$r7,$r22,-44(0xfd4)
1c004cd0:	29bf42c8 	st.w	$r8,$r22,-48(0xfd0)
1c004cd4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004cd8:	001501ac 	move	$r12,$r13
1c004cdc:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c004ce0:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c004ce4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ce8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004cec:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c004cf0:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004cf4:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c004cf8:	5800218d 	beq	$r12,$r13,32(0x20) # 1c004d18 <PcdComMF522+0x6c>
1c004cfc:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c004d00:	5c002d8d 	bne	$r12,$r13,44(0x2c) # 1c004d2c <PcdComMF522+0x80>
1c004d04:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c004d08:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004d0c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004d10:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004d14:	50001c00 	b	28(0x1c) # 1c004d30 <PcdComMF522+0x84>
1c004d18:	0281dc0c 	addi.w	$r12,$r0,119(0x77)
1c004d1c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004d20:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004d24:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004d28:	50000800 	b	8(0x8) # 1c004d30 <PcdComMF522+0x84>
1c004d2c:	03400000 	andi	$r0,$r0,0x0
1c004d30:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c004d34:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c004d38:	001531ac 	or	$r12,$r13,$r12
1c004d3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d40:	00150185 	move	$r5,$r12
1c004d44:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004d48:	57fdcfff 	bl	-564(0xffffdcc) # 1c004b14 <WriteRawRC>
1c004d4c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004d50:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004d54:	57fee3ff 	bl	-288(0xffffee0) # 1c004c34 <ClearBitMask>
1c004d58:	00150005 	move	$r5,$r0
1c004d5c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004d60:	57fdb7ff 	bl	-588(0xffffdb4) # 1c004b14 <WriteRawRC>
1c004d64:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004d68:	02802804 	addi.w	$r4,$r0,10(0xa)
1c004d6c:	57fe47ff 	bl	-444(0xffffe44) # 1c004bb0 <SetBitMask>
1c004d70:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004d74:	50002c00 	b	44(0x2c) # 1c004da0 <PcdComMF522+0xf4>
1c004d78:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004d80:	001031ac 	add.w	$r12,$r13,$r12
1c004d84:	2a00018c 	ld.bu	$r12,$r12,0
1c004d88:	00150185 	move	$r5,$r12
1c004d8c:	02802404 	addi.w	$r4,$r0,9(0x9)
1c004d90:	57fd87ff 	bl	-636(0xffffd84) # 1c004b14 <WriteRawRC>
1c004d94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004d98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d9c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004da0:	2a3f7acc 	ld.bu	$r12,$r22,-34(0xfde)
1c004da4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004da8:	6bffd1ac 	bltu	$r13,$r12,-48(0x3ffd0) # 1c004d78 <PcdComMF522+0xcc>
1c004dac:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004db0:	00150185 	move	$r5,$r12
1c004db4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004db8:	57fd5fff 	bl	-676(0xffffd5c) # 1c004b14 <WriteRawRC>
1c004dbc:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c004dc0:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c004dc4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004dd4 <PcdComMF522+0x128>
1c004dc8:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004dcc:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004dd0:	57fde3ff 	bl	-544(0xffffde0) # 1c004bb0 <SetBitMask>
1c004dd4:	1400002c 	lu12i.w	$r12,1(0x1)
1c004dd8:	039dc18c 	ori	$r12,$r12,0x770
1c004ddc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004de0:	02801004 	addi.w	$r4,$r0,4(0x4)
1c004de4:	57fc87ff 	bl	-892(0xffffc84) # 1c004a68 <ReadRawRC>
1c004de8:	0015008c 	move	$r12,$r4
1c004dec:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c004df0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004df4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004df8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004dfc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004e00:	40002580 	beqz	$r12,36(0x24) # 1c004e24 <PcdComMF522+0x178>
1c004e04:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c004e08:	0340058c 	andi	$r12,$r12,0x1
1c004e0c:	44001980 	bnez	$r12,24(0x18) # 1c004e24 <PcdComMF522+0x178>
1c004e10:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c004e14:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004e18:	0014b1ac 	and	$r12,$r13,$r12
1c004e1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e20:	43ffc19f 	beqz	$r12,-64(0x7fffc0) # 1c004de0 <PcdComMF522+0x134>
1c004e24:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004e28:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004e2c:	57fe0bff 	bl	-504(0xffffe08) # 1c004c34 <ClearBitMask>
1c004e30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004e34:	40011980 	beqz	$r12,280(0x118) # 1c004f4c <PcdComMF522+0x2a0>
1c004e38:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004e3c:	57fc2fff 	bl	-980(0xffffc2c) # 1c004a68 <ReadRawRC>
1c004e40:	0015008c 	move	$r12,$r4
1c004e44:	03406d8c 	andi	$r12,$r12,0x1b
1c004e48:	4400fd80 	bnez	$r12,252(0xfc) # 1c004f44 <PcdComMF522+0x298>
1c004e4c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004e50:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c004e54:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004e58:	0014b1ac 	and	$r12,$r13,$r12
1c004e5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e60:	0340058c 	andi	$r12,$r12,0x1
1c004e64:	40000d80 	beqz	$r12,12(0xc) # 1c004e70 <PcdComMF522+0x1c4>
1c004e68:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c004e6c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004e70:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c004e74:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c004e78:	5c00d5ac 	bne	$r13,$r12,212(0xd4) # 1c004f4c <PcdComMF522+0x2a0>
1c004e7c:	02802804 	addi.w	$r4,$r0,10(0xa)
1c004e80:	57fbebff 	bl	-1048(0xffffbe8) # 1c004a68 <ReadRawRC>
1c004e84:	0015008c 	move	$r12,$r4
1c004e88:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c004e8c:	02803004 	addi.w	$r4,$r0,12(0xc)
1c004e90:	57fbdbff 	bl	-1064(0xffffbd8) # 1c004a68 <ReadRawRC>
1c004e94:	0015008c 	move	$r12,$r4
1c004e98:	03401d8c 	andi	$r12,$r12,0x7
1c004e9c:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c004ea0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c004ea4:	40002980 	beqz	$r12,40(0x28) # 1c004ecc <PcdComMF522+0x220>
1c004ea8:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c004eac:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004eb0:	00408d8d 	slli.w	$r13,$r12,0x3
1c004eb4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c004eb8:	001031ac 	add.w	$r12,$r13,$r12
1c004ebc:	0015018d 	move	$r13,$r12
1c004ec0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004ec4:	2980018d 	st.w	$r13,$r12,0
1c004ec8:	50001800 	b	24(0x18) # 1c004ee0 <PcdComMF522+0x234>
1c004ecc:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c004ed0:	00408d8c 	slli.w	$r12,$r12,0x3
1c004ed4:	0015018d 	move	$r13,$r12
1c004ed8:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c004edc:	2980018d 	st.w	$r13,$r12,0
1c004ee0:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c004ee4:	44000d80 	bnez	$r12,12(0xc) # 1c004ef0 <PcdComMF522+0x244>
1c004ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004eec:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c004ef0:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c004ef4:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c004ef8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c004f04 <PcdComMF522+0x258>
1c004efc:	0280480c 	addi.w	$r12,$r0,18(0x12)
1c004f00:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c004f04:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c004f08:	50002c00 	b	44(0x2c) # 1c004f34 <PcdComMF522+0x288>
1c004f0c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c004f10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004f14:	001031b7 	add.w	$r23,$r13,$r12
1c004f18:	02802404 	addi.w	$r4,$r0,9(0x9)
1c004f1c:	57fb4fff 	bl	-1204(0xffffb4c) # 1c004a68 <ReadRawRC>
1c004f20:	0015008c 	move	$r12,$r4
1c004f24:	290002ec 	st.b	$r12,$r23,0
1c004f28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004f2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004f34:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c004f38:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004f3c:	6bffd1ac 	bltu	$r13,$r12,-48(0x3ffd0) # 1c004f0c <PcdComMF522+0x260>
1c004f40:	50000c00 	b	12(0xc) # 1c004f4c <PcdComMF522+0x2a0>
1c004f44:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c004f48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f4c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004f50:	02803004 	addi.w	$r4,$r0,12(0xc)
1c004f54:	57fc5fff 	bl	-932(0xffffc5c) # 1c004bb0 <SetBitMask>
1c004f58:	00150005 	move	$r5,$r0
1c004f5c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f60:	57fbb7ff 	bl	-1100(0xffffbb4) # 1c004b14 <WriteRawRC>
1c004f64:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004f68:	00150184 	move	$r4,$r12
1c004f6c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f70:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f74:	28809077 	ld.w	$r23,$r3,36(0x24)
1c004f78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f7c:	4c000020 	jirl	$r0,$r1,0

1c004f80 <PcdRequest>:
PcdRequest():
1c004f80:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004f84:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004f88:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004f8c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004f90:	0015008c 	move	$r12,$r4
1c004f94:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c004f98:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c004f9c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004fa0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c004fa4:	57fc93ff 	bl	-880(0xffffc90) # 1c004c34 <ClearBitMask>
1c004fa8:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c004fac:	02803404 	addi.w	$r4,$r0,13(0xd)
1c004fb0:	57fb67ff 	bl	-1180(0xffffb64) # 1c004b14 <WriteRawRC>
1c004fb4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c004fb8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004fbc:	57fbf7ff 	bl	-1036(0xffffbf4) # 1c004bb0 <SetBitMask>
1c004fc0:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c004fc4:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c004fc8:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c004fcc:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c004fd0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c004fd4:	001501c8 	move	$r8,$r14
1c004fd8:	001501a7 	move	$r7,$r13
1c004fdc:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004fe0:	00150185 	move	$r5,$r12
1c004fe4:	02803004 	addi.w	$r4,$r0,12(0xc)
1c004fe8:	57fcc7ff 	bl	-828(0xffffcc4) # 1c004cac <PcdComMF522>
1c004fec:	0015008c 	move	$r12,$r4
1c004ff0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004ff4:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c004ff8:	44003180 	bnez	$r12,48(0x30) # 1c005028 <PcdRequest+0xa8>
1c004ffc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005000:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005004:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005028 <PcdRequest+0xa8>
1c005008:	2a3f52cd 	ld.bu	$r13,$r22,-44(0xfd4)
1c00500c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005010:	2900018d 	st.b	$r13,$r12,0
1c005014:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005018:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00501c:	2a3f56cd 	ld.bu	$r13,$r22,-43(0xfd5)
1c005020:	2900018d 	st.b	$r13,$r12,0
1c005024:	50000c00 	b	12(0xc) # 1c005030 <PcdRequest+0xb0>
1c005028:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c00502c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005030:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005034:	00150184 	move	$r4,$r12
1c005038:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00503c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005040:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005044:	4c000020 	jirl	$r0,$r1,0

1c005048 <PcdAnticoll>:
PcdAnticoll():
1c005048:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c00504c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005050:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005054:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005058:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c00505c:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005060:	02802005 	addi.w	$r5,$r0,8(0x8)
1c005064:	02802004 	addi.w	$r4,$r0,8(0x8)
1c005068:	57fbcfff 	bl	-1076(0xffffbcc) # 1c004c34 <ClearBitMask>
1c00506c:	00150005 	move	$r5,$r0
1c005070:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005074:	57faa3ff 	bl	-1376(0xffffaa0) # 1c004b14 <WriteRawRC>
1c005078:	02820005 	addi.w	$r5,$r0,128(0x80)
1c00507c:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005080:	57fbb7ff 	bl	-1100(0xffffbb4) # 1c004c34 <ClearBitMask>
1c005084:	02be4c0c 	addi.w	$r12,$r0,-109(0xf93)
1c005088:	293f52cc 	st.b	$r12,$r22,-44(0xfd4)
1c00508c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c005090:	293f56cc 	st.b	$r12,$r22,-43(0xfd5)
1c005094:	02bfa2ce 	addi.w	$r14,$r22,-24(0xfe8)
1c005098:	02bf52cd 	addi.w	$r13,$r22,-44(0xfd4)
1c00509c:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0050a0:	001501c8 	move	$r8,$r14
1c0050a4:	001501a7 	move	$r7,$r13
1c0050a8:	02800806 	addi.w	$r6,$r0,2(0x2)
1c0050ac:	00150185 	move	$r5,$r12
1c0050b0:	02803004 	addi.w	$r4,$r0,12(0xc)
1c0050b4:	57fbfbff 	bl	-1032(0xffffbf8) # 1c004cac <PcdComMF522>
1c0050b8:	0015008c 	move	$r12,$r4
1c0050bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050c0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0050c4:	44008180 	bnez	$r12,128(0x80) # 1c005144 <PcdAnticoll+0xfc>
1c0050c8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0050cc:	50004c00 	b	76(0x4c) # 1c005118 <PcdAnticoll+0xd0>
1c0050d0:	2a3fbace 	ld.bu	$r14,$r22,-18(0xfee)
1c0050d4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0050d8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0050dc:	001031ac 	add.w	$r12,$r13,$r12
1c0050e0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0050e4:	001039ad 	add.w	$r13,$r13,$r14
1c0050e8:	2a3f91ad 	ld.bu	$r13,$r13,-28(0xfe4)
1c0050ec:	2900018d 	st.b	$r13,$r12,0
1c0050f0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0050f4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0050f8:	001031ac 	add.w	$r12,$r13,$r12
1c0050fc:	2a3f918d 	ld.bu	$r13,$r12,-28(0xfe4)
1c005100:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005104:	0015b1ac 	xor	$r12,$r13,$r12
1c005108:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00510c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005110:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005114:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005118:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c00511c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005120:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c0050d0 <PcdAnticoll+0x88>
1c005124:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005128:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00512c:	001031ac 	add.w	$r12,$r13,$r12
1c005130:	2a3f918c 	ld.bu	$r12,$r12,-28(0xfe4)
1c005134:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005138:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005144 <PcdAnticoll+0xfc>
1c00513c:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c005140:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005144:	02820005 	addi.w	$r5,$r0,128(0x80)
1c005148:	02803804 	addi.w	$r4,$r0,14(0xe)
1c00514c:	57fa67ff 	bl	-1436(0xffffa64) # 1c004bb0 <SetBitMask>
1c005150:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005154:	00150184 	move	$r4,$r12
1c005158:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00515c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005160:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005164:	4c000020 	jirl	$r0,$r1,0

1c005168 <Return_Card>:
Return_Card():
1c005168:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00516c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005170:	29806076 	st.w	$r22,$r3,24(0x18)
1c005174:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005178:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00517c:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005180:	28ba20a5 	ld.w	$r5,$r5,-376(0xe88)
1c005184:	02814804 	addi.w	$r4,$r0,82(0x52)
1c005188:	57fdfbff 	bl	-520(0xffffdf8) # 1c004f80 <PcdRequest>
1c00518c:	0015008c 	move	$r12,$r4
1c005190:	44005d80 	bnez	$r12,92(0x5c) # 1c0051ec <Return_Card+0x84>
1c005194:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005198:	28b9f084 	ld.w	$r4,$r4,-388(0xe7c)
1c00519c:	57feafff 	bl	-340(0xffffeac) # 1c005048 <PcdAnticoll>
1c0051a0:	0015008c 	move	$r12,$r4
1c0051a4:	44004980 	bnez	$r12,72(0x48) # 1c0051ec <Return_Card+0x84>
1c0051a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051ac:	28b9a18c 	ld.w	$r12,$r12,-408(0xe68)
1c0051b0:	2a00018c 	ld.bu	$r12,$r12,0
1c0051b4:	0044918c 	srli.w	$r12,$r12,0x4
1c0051b8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0051c0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0051c4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0051c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0051cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051d0:	28b9118c 	ld.w	$r12,$r12,-444(0xe44)
1c0051d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0051d8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0051dc:	03403d8c 	andi	$r12,$r12,0xf
1c0051e0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0051e4:	001031ac 	add.w	$r12,$r13,$r12
1c0051e8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0051ec:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0051f0:	00150184 	move	$r4,$r12
1c0051f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0051f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0051fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005200:	4c000020 	jirl	$r0,$r1,0

1c005204 <Buffer_write>:
Buffer_write():
1c005204:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005208:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00520c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005210:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005214:	001500ac 	move	$r12,$r5
1c005218:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00521c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005220:	2880018c 	ld.w	$r12,$r12,0
1c005224:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005228:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c00522c:	0010358c 	add.w	$r12,$r12,$r13
1c005230:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c005234:	2900018d 	st.b	$r13,$r12,0
1c005238:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00523c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005240:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005244:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005248:	2980318d 	st.w	$r13,$r12,12(0xc)
1c00524c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005250:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c005254:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005258:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00525c:	60000dac 	blt	$r13,$r12,12(0xc) # 1c005268 <Buffer_write+0x64>
1c005260:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005264:	29803180 	st.w	$r0,$r12,12(0xc)
1c005268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00526c:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c005270:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005274:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005278:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00527c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005280:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c005284:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005288:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00528c:	6400458d 	bge	$r12,$r13,68(0x44) # 1c0052d0 <Buffer_write+0xcc>
1c005290:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005294:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c005298:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00529c:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0052a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052a4:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0052a8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0052ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052b0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0052b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052b8:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c0052bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052c0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0052c4:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0052d0 <Buffer_write+0xcc>
1c0052c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052cc:	29802180 	st.w	$r0,$r12,8(0x8)
1c0052d0:	03400000 	andi	$r0,$r0,0x0
1c0052d4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0052d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0052dc:	4c000020 	jirl	$r0,$r1,0

1c0052e0 <main>:
main():
1c0052e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052f0:	57f48bff 	bl	-2936(0xffff488) # 1c004778 <my_GPIO_Init>
1c0052f4:	57f613ff 	bl	-2544(0xffff610) # 1c004904 <my_I2C_Init>
1c0052f8:	57f67bff 	bl	-2440(0xffff678) # 1c004970 <my_PWM_Init>
1c0052fc:	57f6cfff 	bl	-2356(0xffff6cc) # 1c0049c8 <Init_main>
1c005300:	57dee7ff 	bl	-8476(0xfffdee4) # 1c0031e4 <MatrixKey>
1c005304:	0015008c 	move	$r12,$r4
1c005308:	0015018d 	move	$r13,$r12
1c00530c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005310:	02bb258c 	addi.w	$r12,$r12,-311(0xec9)
1c005314:	2900018d 	st.b	$r13,$r12,0
1c005318:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00531c:	029d798c 	addi.w	$r12,$r12,1886(0x75e)
1c005320:	2a00018c 	ld.bu	$r12,$r12,0
1c005324:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c005328:	680c39ac 	bltu	$r13,$r12,3128(0xc38) # 1c005f60 <main+0xc80>
1c00532c:	0040898d 	slli.w	$r13,$r12,0x2
1c005330:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c005334:	02b5f18c 	addi.w	$r12,$r12,-644(0xd7c)
1c005338:	001031ac 	add.w	$r12,$r13,$r12
1c00533c:	2880018c 	ld.w	$r12,$r12,0
1c005340:	4c000180 	jirl	$r0,$r12,0
1c005344:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005348:	029ccd8c 	addi.w	$r12,$r12,1843(0x733)
1c00534c:	2a00018d 	ld.bu	$r13,$r12,0
1c005350:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005354:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00536c <main+0x8c>
1c005358:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00535c:	540c9c00 	bl	3228(0xc9c) # 1c005ff8 <interface_display>
1c005360:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005364:	029c5d8c 	addi.w	$r12,$r12,1815(0x717)
1c005368:	29000180 	st.b	$r0,$r12,0
1c00536c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005370:	02b9a58c 	addi.w	$r12,$r12,-407(0xe69)
1c005374:	2a00018d 	ld.bu	$r13,$r12,0
1c005378:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c00537c:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0053a0 <main+0xc0>
1c005380:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005384:	029bd98c 	addi.w	$r12,$r12,1782(0x6f6)
1c005388:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00538c:	2900018d 	st.b	$r13,$r12,0
1c005390:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005394:	02b9198c 	addi.w	$r12,$r12,-442(0xe46)
1c005398:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00539c:	2900018d 	st.b	$r13,$r12,0
1c0053a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053a4:	02b8d58c 	addi.w	$r12,$r12,-459(0xe35)
1c0053a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0053ac:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0053b0:	5c0bb9ac 	bne	$r13,$r12,3000(0xbb8) # 1c005f68 <main+0xc88>
1c0053b4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053b8:	029b098c 	addi.w	$r12,$r12,1730(0x6c2)
1c0053bc:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0053c0:	2900018d 	st.b	$r13,$r12,0
1c0053c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053c8:	02b8618c 	addi.w	$r12,$r12,-488(0xe18)
1c0053cc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0053d0:	2900018d 	st.b	$r13,$r12,0
1c0053d4:	500b9400 	b	2964(0xb94) # 1c005f68 <main+0xc88>
1c0053d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053dc:	02b7f98c 	addi.w	$r12,$r12,-514(0xdfe)
1c0053e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0053e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0053e8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005400 <main+0x120>
1c0053ec:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0053f0:	540c0800 	bl	3080(0xc08) # 1c005ff8 <interface_display>
1c0053f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0053f8:	02b7898c 	addi.w	$r12,$r12,-542(0xde2)
1c0053fc:	29000180 	st.b	$r0,$r12,0
1c005400:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005404:	02b7558c 	addi.w	$r12,$r12,-555(0xdd5)
1c005408:	2a00018d 	ld.bu	$r13,$r12,0
1c00540c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005410:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005434 <main+0x154>
1c005414:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005418:	0299898c 	addi.w	$r12,$r12,1634(0x662)
1c00541c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c005420:	2900018d 	st.b	$r13,$r12,0
1c005424:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005428:	02b6cd8c 	addi.w	$r12,$r12,-589(0xdb3)
1c00542c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005430:	2900018d 	st.b	$r13,$r12,0
1c005434:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005438:	02b6858c 	addi.w	$r12,$r12,-607(0xda1)
1c00543c:	2a00018d 	ld.bu	$r13,$r12,0
1c005440:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005444:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005468 <main+0x188>
1c005448:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00544c:	0298b98c 	addi.w	$r12,$r12,1582(0x62e)
1c005450:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005454:	2900018d 	st.b	$r13,$r12,0
1c005458:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00545c:	02b6018c 	addi.w	$r12,$r12,-640(0xd80)
1c005460:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005464:	2900018d 	st.b	$r13,$r12,0
1c005468:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00546c:	02b5b58c 	addi.w	$r12,$r12,-659(0xd6d)
1c005470:	2a00018d 	ld.bu	$r13,$r12,0
1c005474:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005478:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c00549c <main+0x1bc>
1c00547c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005480:	0297e98c 	addi.w	$r12,$r12,1530(0x5fa)
1c005484:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005488:	2900018d 	st.b	$r13,$r12,0
1c00548c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005490:	02b55d8c 	addi.w	$r12,$r12,-681(0xd57)
1c005494:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005498:	2900018d 	st.b	$r13,$r12,0
1c00549c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054a0:	02b4e58c 	addi.w	$r12,$r12,-711(0xd39)
1c0054a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0054a8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0054ac:	5c0ac5ac 	bne	$r13,$r12,2756(0xac4) # 1c005f70 <main+0xc90>
1c0054b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054b4:	0297198c 	addi.w	$r12,$r12,1478(0x5c6)
1c0054b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0054bc:	2900018d 	st.b	$r13,$r12,0
1c0054c0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0054c4:	0296dd8c 	addi.w	$r12,$r12,1463(0x5b7)
1c0054c8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0054cc:	2900018d 	st.b	$r13,$r12,0
1c0054d0:	500aa000 	b	2720(0xaa0) # 1c005f70 <main+0xc90>
1c0054d4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054d8:	02b40d8c 	addi.w	$r12,$r12,-765(0xd03)
1c0054dc:	2a00018d 	ld.bu	$r13,$r12,0
1c0054e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0054e4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0054fc <main+0x21c>
1c0054e8:	02801004 	addi.w	$r4,$r0,4(0x4)
1c0054ec:	540b0c00 	bl	2828(0xb0c) # 1c005ff8 <interface_display>
1c0054f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0054f4:	02b39d8c 	addi.w	$r12,$r12,-793(0xce7)
1c0054f8:	29000180 	st.b	$r0,$r12,0
1c0054fc:	54154400 	bl	5444(0x1544) # 1c006a40 <Read_ID>
1c005500:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005504:	02b3558c 	addi.w	$r12,$r12,-811(0xcd5)
1c005508:	2a00018d 	ld.bu	$r13,$r12,0
1c00550c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005510:	5c0a69ac 	bne	$r13,$r12,2664(0xa68) # 1c005f78 <main+0xc98>
1c005514:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005518:	0295898c 	addi.w	$r12,$r12,1378(0x562)
1c00551c:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005520:	2900018d 	st.b	$r13,$r12,0
1c005524:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005528:	02b2c98c 	addi.w	$r12,$r12,-846(0xcb2)
1c00552c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005530:	2900018d 	st.b	$r13,$r12,0
1c005534:	500a4400 	b	2628(0xa44) # 1c005f78 <main+0xc98>
1c005538:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00553c:	02b2818c 	addi.w	$r12,$r12,-864(0xca0)
1c005540:	2a00018d 	ld.bu	$r13,$r12,0
1c005544:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005548:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005560 <main+0x280>
1c00554c:	02801404 	addi.w	$r4,$r0,5(0x5)
1c005550:	540aa800 	bl	2728(0xaa8) # 1c005ff8 <interface_display>
1c005554:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005558:	02b2118c 	addi.w	$r12,$r12,-892(0xc84)
1c00555c:	29000180 	st.b	$r0,$r12,0
1c005560:	54162c00 	bl	5676(0x162c) # 1c006b8c <Key_main>
1c005564:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005568:	02b1c58c 	addi.w	$r12,$r12,-911(0xc71)
1c00556c:	2a00018d 	ld.bu	$r13,$r12,0
1c005570:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005574:	5c0a0dac 	bne	$r13,$r12,2572(0xa0c) # 1c005f80 <main+0xca0>
1c005578:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00557c:	0293f98c 	addi.w	$r12,$r12,1278(0x4fe)
1c005580:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005584:	2900018d 	st.b	$r13,$r12,0
1c005588:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00558c:	02b1398c 	addi.w	$r12,$r12,-946(0xc4e)
1c005590:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005594:	2900018d 	st.b	$r13,$r12,0
1c005598:	5009e800 	b	2536(0x9e8) # 1c005f80 <main+0xca0>
1c00559c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055a0:	02b0f58c 	addi.w	$r12,$r12,-963(0xc3d)
1c0055a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0055a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0055ac:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0055c4 <main+0x2e4>
1c0055b0:	02800c04 	addi.w	$r4,$r0,3(0x3)
1c0055b4:	540a4400 	bl	2628(0xa44) # 1c005ff8 <interface_display>
1c0055b8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055bc:	02b0858c 	addi.w	$r12,$r12,-991(0xc21)
1c0055c0:	29000180 	st.b	$r0,$r12,0
1c0055c4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055c8:	02b0458c 	addi.w	$r12,$r12,-1007(0xc11)
1c0055cc:	2a00018d 	ld.bu	$r13,$r12,0
1c0055d0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0055d4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0055f8 <main+0x318>
1c0055d8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0055dc:	0292798c 	addi.w	$r12,$r12,1182(0x49e)
1c0055e0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0055e4:	2900018d 	st.b	$r13,$r12,0
1c0055e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055ec:	02afc98c 	addi.w	$r12,$r12,-1038(0xbf2)
1c0055f0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0055f4:	2900018d 	st.b	$r13,$r12,0
1c0055f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0055fc:	02af758c 	addi.w	$r12,$r12,-1059(0xbdd)
1c005600:	2a00018d 	ld.bu	$r13,$r12,0
1c005604:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005608:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c00562c <main+0x34c>
1c00560c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005610:	0291a98c 	addi.w	$r12,$r12,1130(0x46a)
1c005614:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005618:	2900018d 	st.b	$r13,$r12,0
1c00561c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005620:	02aefd8c 	addi.w	$r12,$r12,-1089(0xbbf)
1c005624:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005628:	2900018d 	st.b	$r13,$r12,0
1c00562c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005630:	02aea58c 	addi.w	$r12,$r12,-1111(0xba9)
1c005634:	2a00018d 	ld.bu	$r13,$r12,0
1c005638:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00563c:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005660 <main+0x380>
1c005640:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005644:	0290d98c 	addi.w	$r12,$r12,1078(0x436)
1c005648:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c00564c:	2900018d 	st.b	$r13,$r12,0
1c005650:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005654:	02ae518c 	addi.w	$r12,$r12,-1132(0xb94)
1c005658:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00565c:	2900018d 	st.b	$r13,$r12,0
1c005660:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005664:	02add58c 	addi.w	$r12,$r12,-1163(0xb75)
1c005668:	2a00018d 	ld.bu	$r13,$r12,0
1c00566c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005670:	5c0919ac 	bne	$r13,$r12,2328(0x918) # 1c005f88 <main+0xca8>
1c005674:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005678:	0290098c 	addi.w	$r12,$r12,1026(0x402)
1c00567c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005680:	2900018d 	st.b	$r13,$r12,0
1c005684:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005688:	028fcd8c 	addi.w	$r12,$r12,1011(0x3f3)
1c00568c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005690:	2900018d 	st.b	$r13,$r12,0
1c005694:	5008f400 	b	2292(0x8f4) # 1c005f88 <main+0xca8>
1c005698:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00569c:	02ad098c 	addi.w	$r12,$r12,-1214(0xb42)
1c0056a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0056a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056a8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0056c0 <main+0x3e0>
1c0056ac:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0056b0:	54094800 	bl	2376(0x948) # 1c005ff8 <interface_display>
1c0056b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0056b8:	02ac998c 	addi.w	$r12,$r12,-1242(0xb26)
1c0056bc:	29000180 	st.b	$r0,$r12,0
1c0056c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0056c4:	02ac558c 	addi.w	$r12,$r12,-1259(0xb15)
1c0056c8:	2a00018d 	ld.bu	$r13,$r12,0
1c0056cc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0056d0:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0056f4 <main+0x414>
1c0056d4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056d8:	028e898c 	addi.w	$r12,$r12,930(0x3a2)
1c0056dc:	0280240d 	addi.w	$r13,$r0,9(0x9)
1c0056e0:	2900018d 	st.b	$r13,$r12,0
1c0056e4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0056e8:	02abe58c 	addi.w	$r12,$r12,-1287(0xaf9)
1c0056ec:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0056f0:	2900018d 	st.b	$r13,$r12,0
1c0056f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0056f8:	02ab858c 	addi.w	$r12,$r12,-1311(0xae1)
1c0056fc:	2a00018d 	ld.bu	$r13,$r12,0
1c005700:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005704:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005728 <main+0x448>
1c005708:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00570c:	028db98c 	addi.w	$r12,$r12,878(0x36e)
1c005710:	0280340d 	addi.w	$r13,$r0,13(0xd)
1c005714:	2900018d 	st.b	$r13,$r12,0
1c005718:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00571c:	02ab258c 	addi.w	$r12,$r12,-1335(0xac9)
1c005720:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005724:	2900018d 	st.b	$r13,$r12,0
1c005728:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00572c:	02aab58c 	addi.w	$r12,$r12,-1363(0xaad)
1c005730:	2a00018d 	ld.bu	$r13,$r12,0
1c005734:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005738:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c00575c <main+0x47c>
1c00573c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005740:	028ce98c 	addi.w	$r12,$r12,826(0x33a)
1c005744:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005748:	2900018d 	st.b	$r13,$r12,0
1c00574c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005750:	02aa358c 	addi.w	$r12,$r12,-1395(0xa8d)
1c005754:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005758:	2900018d 	st.b	$r13,$r12,0
1c00575c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005760:	02a9e58c 	addi.w	$r12,$r12,-1415(0xa79)
1c005764:	2a00018d 	ld.bu	$r13,$r12,0
1c005768:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00576c:	5c0825ac 	bne	$r13,$r12,2084(0x824) # 1c005f90 <main+0xcb0>
1c005770:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005774:	028c198c 	addi.w	$r12,$r12,774(0x306)
1c005778:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00577c:	2900018d 	st.b	$r13,$r12,0
1c005780:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005784:	02a9658c 	addi.w	$r12,$r12,-1447(0xa59)
1c005788:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00578c:	2900018d 	st.b	$r13,$r12,0
1c005790:	50080000 	b	2048(0x800) # 1c005f90 <main+0xcb0>
1c005794:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005798:	02a91d8c 	addi.w	$r12,$r12,-1465(0xa47)
1c00579c:	2a00018d 	ld.bu	$r13,$r12,0
1c0057a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0057a4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0057bc <main+0x4dc>
1c0057a8:	02802c04 	addi.w	$r4,$r0,11(0xb)
1c0057ac:	54084c00 	bl	2124(0x84c) # 1c005ff8 <interface_display>
1c0057b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0057b4:	02a8ad8c 	addi.w	$r12,$r12,-1493(0xa2b)
1c0057b8:	29000180 	st.b	$r0,$r12,0
1c0057bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0057c0:	02a8658c 	addi.w	$r12,$r12,-1511(0xa19)
1c0057c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0057c8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0057cc:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0057f0 <main+0x510>
1c0057d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057d4:	028a998c 	addi.w	$r12,$r12,678(0x2a6)
1c0057d8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0057dc:	2900018d 	st.b	$r13,$r12,0
1c0057e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0057e4:	02a7f98c 	addi.w	$r12,$r12,-1538(0x9fe)
1c0057e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0057ec:	2900018d 	st.b	$r13,$r12,0
1c0057f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0057f4:	02a7958c 	addi.w	$r12,$r12,-1563(0x9e5)
1c0057f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0057fc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005800:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005824 <main+0x544>
1c005804:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005808:	0289c98c 	addi.w	$r12,$r12,626(0x272)
1c00580c:	02802c0d 	addi.w	$r13,$r0,11(0xb)
1c005810:	2900018d 	st.b	$r13,$r12,0
1c005814:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005818:	02a72d8c 	addi.w	$r12,$r12,-1589(0x9cb)
1c00581c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005820:	2900018d 	st.b	$r13,$r12,0
1c005824:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005828:	02a6c58c 	addi.w	$r12,$r12,-1615(0x9b1)
1c00582c:	2a00018d 	ld.bu	$r13,$r12,0
1c005830:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005834:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005858 <main+0x578>
1c005838:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00583c:	0288f98c 	addi.w	$r12,$r12,574(0x23e)
1c005840:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005844:	2900018d 	st.b	$r13,$r12,0
1c005848:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00584c:	02a6458c 	addi.w	$r12,$r12,-1647(0x991)
1c005850:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005854:	2900018d 	st.b	$r13,$r12,0
1c005858:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00585c:	02a5f58c 	addi.w	$r12,$r12,-1667(0x97d)
1c005860:	2a00018d 	ld.bu	$r13,$r12,0
1c005864:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005868:	5c0731ac 	bne	$r13,$r12,1840(0x730) # 1c005f98 <main+0xcb8>
1c00586c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005870:	0288298c 	addi.w	$r12,$r12,522(0x20a)
1c005874:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005878:	2900018d 	st.b	$r13,$r12,0
1c00587c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005880:	02a5758c 	addi.w	$r12,$r12,-1699(0x95d)
1c005884:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005888:	2900018d 	st.b	$r13,$r12,0
1c00588c:	50070c00 	b	1804(0x70c) # 1c005f98 <main+0xcb8>
1c005890:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005894:	02a5318c 	addi.w	$r12,$r12,-1716(0x94c)
1c005898:	2a00018d 	ld.bu	$r13,$r12,0
1c00589c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058a0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0058b8 <main+0x5d8>
1c0058a4:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0058a8:	54075000 	bl	1872(0x750) # 1c005ff8 <interface_display>
1c0058ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058b0:	02a4c18c 	addi.w	$r12,$r12,-1744(0x930)
1c0058b4:	29000180 	st.b	$r0,$r12,0
1c0058b8:	5416e400 	bl	5860(0x16e4) # 1c006f9c <Key>
1c0058bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058c0:	02a4658c 	addi.w	$r12,$r12,-1767(0x919)
1c0058c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0058c8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0058cc:	5c06d5ac 	bne	$r13,$r12,1748(0x6d4) # 1c005fa0 <main+0xcc0>
1c0058d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0058d4:	0286998c 	addi.w	$r12,$r12,422(0x1a6)
1c0058d8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0058dc:	2900018d 	st.b	$r13,$r12,0
1c0058e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0058e4:	02865d8c 	addi.w	$r12,$r12,407(0x197)
1c0058e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0058ec:	2900018d 	st.b	$r13,$r12,0
1c0058f0:	5006b000 	b	1712(0x6b0) # 1c005fa0 <main+0xcc0>
1c0058f4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058f8:	02a3a58c 	addi.w	$r12,$r12,-1815(0x8e9)
1c0058fc:	2a00018d 	ld.bu	$r13,$r12,0
1c005900:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005904:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00591c <main+0x63c>
1c005908:	02803004 	addi.w	$r4,$r0,12(0xc)
1c00590c:	5406ec00 	bl	1772(0x6ec) # 1c005ff8 <interface_display>
1c005910:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005914:	02a3358c 	addi.w	$r12,$r12,-1843(0x8cd)
1c005918:	29000180 	st.b	$r0,$r12,0
1c00591c:	540f8c00 	bl	3980(0xf8c) # 1c0068a8 <Write_ID>
1c005920:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005924:	02a2d58c 	addi.w	$r12,$r12,-1867(0x8b5)
1c005928:	2a00018d 	ld.bu	$r13,$r12,0
1c00592c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005930:	5c0679ac 	bne	$r13,$r12,1656(0x678) # 1c005fa8 <main+0xcc8>
1c005934:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005938:	0285098c 	addi.w	$r12,$r12,322(0x142)
1c00593c:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005940:	2900018d 	st.b	$r13,$r12,0
1c005944:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005948:	02a2598c 	addi.w	$r12,$r12,-1898(0x896)
1c00594c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005950:	2900018d 	st.b	$r13,$r12,0
1c005954:	50065400 	b	1620(0x654) # 1c005fa8 <main+0xcc8>
1c005958:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00595c:	02a2198c 	addi.w	$r12,$r12,-1914(0x886)
1c005960:	2a00018d 	ld.bu	$r13,$r12,0
1c005964:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005968:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005980 <main+0x6a0>
1c00596c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c005970:	54068800 	bl	1672(0x688) # 1c005ff8 <interface_display>
1c005974:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005978:	02a1a98c 	addi.w	$r12,$r12,-1942(0x86a)
1c00597c:	29000180 	st.b	$r0,$r12,0
1c005980:	5419b000 	bl	6576(0x19b0) # 1c007330 <Add_Key>
1c005984:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005988:	02a1458c 	addi.w	$r12,$r12,-1967(0x851)
1c00598c:	2a00018d 	ld.bu	$r13,$r12,0
1c005990:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005994:	5c061dac 	bne	$r13,$r12,1564(0x61c) # 1c005fb0 <main+0xcd0>
1c005998:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00599c:	0283798c 	addi.w	$r12,$r12,222(0xde)
1c0059a0:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c0059a4:	2900018d 	st.b	$r13,$r12,0
1c0059a8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059ac:	02a0cd8c 	addi.w	$r12,$r12,-1997(0x833)
1c0059b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0059b4:	2900018d 	st.b	$r13,$r12,0
1c0059b8:	5005f800 	b	1528(0x5f8) # 1c005fb0 <main+0xcd0>
1c0059bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059c0:	02a08d8c 	addi.w	$r12,$r12,-2013(0x823)
1c0059c4:	2a00018d 	ld.bu	$r13,$r12,0
1c0059c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0059cc:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0059e4 <main+0x704>
1c0059d0:	02804404 	addi.w	$r4,$r0,17(0x11)
1c0059d4:	54062400 	bl	1572(0x624) # 1c005ff8 <interface_display>
1c0059d8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059dc:	02a01d8c 	addi.w	$r12,$r12,-2041(0x807)
1c0059e0:	29000180 	st.b	$r0,$r12,0
1c0059e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0059e8:	029fc58c 	addi.w	$r12,$r12,2033(0x7f1)
1c0059ec:	2a00018d 	ld.bu	$r13,$r12,0
1c0059f0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0059f4:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005a18 <main+0x738>
1c0059f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0059fc:	0281f98c 	addi.w	$r12,$r12,126(0x7e)
1c005a00:	0280300d 	addi.w	$r13,$r0,12(0xc)
1c005a04:	2900018d 	st.b	$r13,$r12,0
1c005a08:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a0c:	029f618c 	addi.w	$r12,$r12,2008(0x7d8)
1c005a10:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005a14:	2900018d 	st.b	$r13,$r12,0
1c005a18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a1c:	029ef58c 	addi.w	$r12,$r12,1981(0x7bd)
1c005a20:	2a00018d 	ld.bu	$r13,$r12,0
1c005a24:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005a28:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005a4c <main+0x76c>
1c005a2c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a30:	0281298c 	addi.w	$r12,$r12,74(0x4a)
1c005a34:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005a38:	2900018d 	st.b	$r13,$r12,0
1c005a3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a40:	029e7d8c 	addi.w	$r12,$r12,1951(0x79f)
1c005a44:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005a48:	2900018d 	st.b	$r13,$r12,0
1c005a4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a50:	029e258c 	addi.w	$r12,$r12,1929(0x789)
1c005a54:	2a00018d 	ld.bu	$r13,$r12,0
1c005a58:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005a5c:	5c055dac 	bne	$r13,$r12,1372(0x55c) # 1c005fb8 <main+0xcd8>
1c005a60:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005a64:	0280598c 	addi.w	$r12,$r12,22(0x16)
1c005a68:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005a6c:	2900018d 	st.b	$r13,$r12,0
1c005a70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a74:	029dad8c 	addi.w	$r12,$r12,1899(0x76b)
1c005a78:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005a7c:	2900018d 	st.b	$r13,$r12,0
1c005a80:	50053800 	b	1336(0x538) # 1c005fb8 <main+0xcd8>
1c005a84:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005a88:	029d718c 	addi.w	$r12,$r12,1884(0x75c)
1c005a8c:	2a00018d 	ld.bu	$r13,$r12,0
1c005a90:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a94:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005ab0 <main+0x7d0>
1c005a98:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005a9c:	54055c00 	bl	1372(0x55c) # 1c005ff8 <interface_display>
1c005aa0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005aa4:	029d018c 	addi.w	$r12,$r12,1856(0x740)
1c005aa8:	29000180 	st.b	$r0,$r12,0
1c005aac:	541b6000 	bl	7008(0x1b60) # 1c00760c <Delete_key>
1c005ab0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ab4:	029c958c 	addi.w	$r12,$r12,1829(0x725)
1c005ab8:	2a00018d 	ld.bu	$r13,$r12,0
1c005abc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005ac0:	5c0501ac 	bne	$r13,$r12,1280(0x500) # 1c005fc0 <main+0xce0>
1c005ac4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ac8:	02bec98c 	addi.w	$r12,$r12,-78(0xfb2)
1c005acc:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c005ad0:	2900018d 	st.b	$r13,$r12,0
1c005ad4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ad8:	029c1d8c 	addi.w	$r12,$r12,1799(0x707)
1c005adc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005ae0:	2900018d 	st.b	$r13,$r12,0
1c005ae4:	5004dc00 	b	1244(0x4dc) # 1c005fc0 <main+0xce0>
1c005ae8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005aec:	029be58c 	addi.w	$r12,$r12,1785(0x6f9)
1c005af0:	2a00018d 	ld.bu	$r13,$r12,0
1c005af4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005af8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005b10 <main+0x830>
1c005afc:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005b00:	5404f800 	bl	1272(0x4f8) # 1c005ff8 <interface_display>
1c005b04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b08:	029b758c 	addi.w	$r12,$r12,1757(0x6dd)
1c005b0c:	29000180 	st.b	$r0,$r12,0
1c005b10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b14:	029b158c 	addi.w	$r12,$r12,1733(0x6c5)
1c005b18:	2a00018d 	ld.bu	$r13,$r12,0
1c005b1c:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005b20:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005b44 <main+0x864>
1c005b24:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b28:	02bd498c 	addi.w	$r12,$r12,-174(0xf52)
1c005b2c:	0280380d 	addi.w	$r13,$r0,14(0xe)
1c005b30:	2900018d 	st.b	$r13,$r12,0
1c005b34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b38:	029ab98c 	addi.w	$r12,$r12,1710(0x6ae)
1c005b3c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005b40:	2900018d 	st.b	$r13,$r12,0
1c005b44:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b48:	029a458c 	addi.w	$r12,$r12,1681(0x691)
1c005b4c:	2a00018d 	ld.bu	$r13,$r12,0
1c005b50:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005b54:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005b78 <main+0x898>
1c005b58:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b5c:	02bc798c 	addi.w	$r12,$r12,-226(0xf1e)
1c005b60:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005b64:	2900018d 	st.b	$r13,$r12,0
1c005b68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b6c:	0299c98c 	addi.w	$r12,$r12,1650(0x672)
1c005b70:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005b74:	2900018d 	st.b	$r13,$r12,0
1c005b78:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005b7c:	0299758c 	addi.w	$r12,$r12,1629(0x65d)
1c005b80:	2a00018d 	ld.bu	$r13,$r12,0
1c005b84:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005b88:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005bac <main+0x8cc>
1c005b8c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005b90:	02bba98c 	addi.w	$r12,$r12,-278(0xeea)
1c005b94:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005b98:	2900018d 	st.b	$r13,$r12,0
1c005b9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ba0:	0298f98c 	addi.w	$r12,$r12,1598(0x63e)
1c005ba4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005ba8:	2900018d 	st.b	$r13,$r12,0
1c005bac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005bb0:	0298d98c 	addi.w	$r12,$r12,1590(0x636)
1c005bb4:	2a00018d 	ld.bu	$r13,$r12,0
1c005bb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005bbc:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005bd8 <main+0x8f8>
1c005bc0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005bc4:	54043400 	bl	1076(0x434) # 1c005ff8 <interface_display>
1c005bc8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005bcc:	0298698c 	addi.w	$r12,$r12,1562(0x61a)
1c005bd0:	29000180 	st.b	$r0,$r12,0
1c005bd4:	540dc800 	bl	3528(0xdc8) # 1c00699c <Delate_ID>
1c005bd8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005bdc:	0297f58c 	addi.w	$r12,$r12,1533(0x5fd)
1c005be0:	2a00018d 	ld.bu	$r13,$r12,0
1c005be4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005be8:	5c03e1ac 	bne	$r13,$r12,992(0x3e0) # 1c005fc8 <main+0xce8>
1c005bec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005bf0:	02ba298c 	addi.w	$r12,$r12,-374(0xe8a)
1c005bf4:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005bf8:	2900018d 	st.b	$r13,$r12,0
1c005bfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c00:	02977d8c 	addi.w	$r12,$r12,1503(0x5df)
1c005c04:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c005c08:	2900018d 	st.b	$r13,$r12,0
1c005c0c:	5003bc00 	b	956(0x3bc) # 1c005fc8 <main+0xce8>
1c005c10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c14:	02974d8c 	addi.w	$r12,$r12,1491(0x5d3)
1c005c18:	2a00018d 	ld.bu	$r13,$r12,0
1c005c1c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005c20:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005c38 <main+0x958>
1c005c24:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005c28:	5403d000 	bl	976(0x3d0) # 1c005ff8 <interface_display>
1c005c2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c30:	0296dd8c 	addi.w	$r12,$r12,1463(0x5b7)
1c005c34:	29000180 	st.b	$r0,$r12,0
1c005c38:	57d297ff 	bl	-11628(0xfffd294) # 1c002ecc <press_FR>
1c005c3c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c40:	02b8ed8c 	addi.w	$r12,$r12,-453(0xe3b)
1c005c44:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005c48:	2900018d 	st.b	$r13,$r12,0
1c005c4c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c50:	02b8a98c 	addi.w	$r12,$r12,-470(0xe2a)
1c005c54:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005c58:	2900018d 	st.b	$r13,$r12,0
1c005c5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c60:	0295e58c 	addi.w	$r12,$r12,1401(0x579)
1c005c64:	2a00018d 	ld.bu	$r13,$r12,0
1c005c68:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005c6c:	5c0365ac 	bne	$r13,$r12,868(0x364) # 1c005fd0 <main+0xcf0>
1c005c70:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005c74:	02b8198c 	addi.w	$r12,$r12,-506(0xe06)
1c005c78:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c005c7c:	2900018d 	st.b	$r13,$r12,0
1c005c80:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c84:	0295598c 	addi.w	$r12,$r12,1366(0x556)
1c005c88:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005c8c:	2900018d 	st.b	$r13,$r12,0
1c005c90:	50034000 	b	832(0x340) # 1c005fd0 <main+0xcf0>
1c005c94:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005c98:	0295418c 	addi.w	$r12,$r12,1360(0x550)
1c005c9c:	2a00018d 	ld.bu	$r13,$r12,0
1c005ca0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ca4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005cbc <main+0x9dc>
1c005ca8:	02804c04 	addi.w	$r4,$r0,19(0x13)
1c005cac:	54034c00 	bl	844(0x34c) # 1c005ff8 <interface_display>
1c005cb0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cb4:	0294d18c 	addi.w	$r12,$r12,1332(0x534)
1c005cb8:	29000180 	st.b	$r0,$r12,0
1c005cbc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cc0:	0294658c 	addi.w	$r12,$r12,1305(0x519)
1c005cc4:	2a00018d 	ld.bu	$r13,$r12,0
1c005cc8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005ccc:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005cf0 <main+0xa10>
1c005cd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005cd4:	02b6998c 	addi.w	$r12,$r12,-602(0xda6)
1c005cd8:	0280440d 	addi.w	$r13,$r0,17(0x11)
1c005cdc:	2900018d 	st.b	$r13,$r12,0
1c005ce0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ce4:	0294158c 	addi.w	$r12,$r12,1285(0x505)
1c005ce8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005cec:	2900018d 	st.b	$r13,$r12,0
1c005cf0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005cf4:	0293958c 	addi.w	$r12,$r12,1253(0x4e5)
1c005cf8:	2a00018d 	ld.bu	$r13,$r12,0
1c005cfc:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005d00:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005d24 <main+0xa44>
1c005d04:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d08:	02b5c98c 	addi.w	$r12,$r12,-654(0xd72)
1c005d0c:	0280480d 	addi.w	$r13,$r0,18(0x12)
1c005d10:	2900018d 	st.b	$r13,$r12,0
1c005d14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d18:	0293498c 	addi.w	$r12,$r12,1234(0x4d2)
1c005d1c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d20:	2900018d 	st.b	$r13,$r12,0
1c005d24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d28:	0292c58c 	addi.w	$r12,$r12,1201(0x4b1)
1c005d2c:	2a00018d 	ld.bu	$r13,$r12,0
1c005d30:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005d34:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005d58 <main+0xa78>
1c005d38:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d3c:	02b4f98c 	addi.w	$r12,$r12,-706(0xd3e)
1c005d40:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005d44:	2900018d 	st.b	$r13,$r12,0
1c005d48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d4c:	0292458c 	addi.w	$r12,$r12,1169(0x491)
1c005d50:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d54:	2900018d 	st.b	$r13,$r12,0
1c005d58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d5c:	0291f58c 	addi.w	$r12,$r12,1149(0x47d)
1c005d60:	2a00018d 	ld.bu	$r13,$r12,0
1c005d64:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005d68:	5c0271ac 	bne	$r13,$r12,624(0x270) # 1c005fd8 <main+0xcf8>
1c005d6c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005d70:	02b4298c 	addi.w	$r12,$r12,-758(0xd0a)
1c005d74:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005d78:	2900018d 	st.b	$r13,$r12,0
1c005d7c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d80:	0291758c 	addi.w	$r12,$r12,1117(0x45d)
1c005d84:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005d88:	2900018d 	st.b	$r13,$r12,0
1c005d8c:	50024c00 	b	588(0x24c) # 1c005fd8 <main+0xcf8>
1c005d90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005d94:	0291558c 	addi.w	$r12,$r12,1109(0x455)
1c005d98:	2a00018d 	ld.bu	$r13,$r12,0
1c005d9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005da0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005db8 <main+0xad8>
1c005da4:	02805404 	addi.w	$r4,$r0,21(0x15)
1c005da8:	54025000 	bl	592(0x250) # 1c005ff8 <interface_display>
1c005dac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005db0:	0290e58c 	addi.w	$r12,$r12,1081(0x439)
1c005db4:	29000180 	st.b	$r0,$r12,0
1c005db8:	57cc0fff 	bl	-13300(0xfffcc0c) # 1c0029c4 <Add_FR>
1c005dbc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005dc0:	02b2e98c 	addi.w	$r12,$r12,-838(0xcba)
1c005dc4:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005dc8:	2900018d 	st.b	$r13,$r12,0
1c005dcc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005dd0:	0290618c 	addi.w	$r12,$r12,1048(0x418)
1c005dd4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005dd8:	2900018d 	st.b	$r13,$r12,0
1c005ddc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005de0:	028fe58c 	addi.w	$r12,$r12,1017(0x3f9)
1c005de4:	2a00018d 	ld.bu	$r13,$r12,0
1c005de8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005dec:	5c01f5ac 	bne	$r13,$r12,500(0x1f4) # 1c005fe0 <main+0xd00>
1c005df0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005df4:	02b2198c 	addi.w	$r12,$r12,-890(0xc86)
1c005df8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005dfc:	2900018d 	st.b	$r13,$r12,0
1c005e00:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e04:	028f918c 	addi.w	$r12,$r12,996(0x3e4)
1c005e08:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005e0c:	2900018d 	st.b	$r13,$r12,0
1c005e10:	5001d000 	b	464(0x1d0) # 1c005fe0 <main+0xd00>
1c005e14:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e18:	028f498c 	addi.w	$r12,$r12,978(0x3d2)
1c005e1c:	2a00018d 	ld.bu	$r13,$r12,0
1c005e20:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e24:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c005e3c <main+0xb5c>
1c005e28:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005e2c:	5401cc00 	bl	460(0x1cc) # 1c005ff8 <interface_display>
1c005e30:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e34:	028ed98c 	addi.w	$r12,$r12,950(0x3b6)
1c005e38:	29000180 	st.b	$r0,$r12,0
1c005e3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e40:	028e658c 	addi.w	$r12,$r12,921(0x399)
1c005e44:	2a00018d 	ld.bu	$r13,$r12,0
1c005e48:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c005e4c:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005e70 <main+0xb90>
1c005e50:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e54:	02b0998c 	addi.w	$r12,$r12,-986(0xc26)
1c005e58:	02804c0d 	addi.w	$r13,$r0,19(0x13)
1c005e5c:	2900018d 	st.b	$r13,$r12,0
1c005e60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e64:	028e1d8c 	addi.w	$r12,$r12,903(0x387)
1c005e68:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005e6c:	2900018d 	st.b	$r13,$r12,0
1c005e70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e74:	028d958c 	addi.w	$r12,$r12,869(0x365)
1c005e78:	2a00018d 	ld.bu	$r13,$r12,0
1c005e7c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c005e80:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c005ea4 <main+0xbc4>
1c005e84:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005e88:	02afc98c 	addi.w	$r12,$r12,-1038(0xbf2)
1c005e8c:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005e90:	2900018d 	st.b	$r13,$r12,0
1c005e94:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005e98:	028d418c 	addi.w	$r12,$r12,848(0x350)
1c005e9c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005ea0:	2900018d 	st.b	$r13,$r12,0
1c005ea4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ea8:	028cc58c 	addi.w	$r12,$r12,817(0x331)
1c005eac:	2a00018d 	ld.bu	$r13,$r12,0
1c005eb0:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005eb4:	5c0135ac 	bne	$r13,$r12,308(0x134) # 1c005fe8 <main+0xd08>
1c005eb8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005ebc:	02aef98c 	addi.w	$r12,$r12,-1090(0xbbe)
1c005ec0:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005ec4:	2900018d 	st.b	$r13,$r12,0
1c005ec8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ecc:	028c718c 	addi.w	$r12,$r12,796(0x31c)
1c005ed0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005ed4:	2900018d 	st.b	$r13,$r12,0
1c005ed8:	50011000 	b	272(0x110) # 1c005fe8 <main+0xd08>
1c005edc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005ee0:	028c2d8c 	addi.w	$r12,$r12,779(0x30b)
1c005ee4:	2a00018d 	ld.bu	$r13,$r12,0
1c005ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005eec:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005f08 <main+0xc28>
1c005ef0:	02803804 	addi.w	$r4,$r0,14(0xe)
1c005ef4:	54010400 	bl	260(0x104) # 1c005ff8 <interface_display>
1c005ef8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005efc:	028bbd8c 	addi.w	$r12,$r12,751(0x2ef)
1c005f00:	29000180 	st.b	$r0,$r12,0
1c005f04:	57d167ff 	bl	-11932(0xfffd164) # 1c003068 <Del_FR_Lib>
1c005f08:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f0c:	02adb98c 	addi.w	$r12,$r12,-1170(0xb6e)
1c005f10:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005f14:	2900018d 	st.b	$r13,$r12,0
1c005f18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f1c:	028b318c 	addi.w	$r12,$r12,716(0x2cc)
1c005f20:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f24:	2900018d 	st.b	$r13,$r12,0
1c005f28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f2c:	028ab58c 	addi.w	$r12,$r12,685(0x2ad)
1c005f30:	2a00018d 	ld.bu	$r13,$r12,0
1c005f34:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005f38:	5c00b9ac 	bne	$r13,$r12,184(0xb8) # 1c005ff0 <main+0xd10>
1c005f3c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005f40:	02ace98c 	addi.w	$r12,$r12,-1222(0xb3a)
1c005f44:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c005f48:	2900018d 	st.b	$r13,$r12,0
1c005f4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c005f50:	028a618c 	addi.w	$r12,$r12,664(0x298)
1c005f54:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f58:	2900018d 	st.b	$r13,$r12,0
1c005f5c:	50009400 	b	148(0x94) # 1c005ff0 <main+0xd10>
1c005f60:	03400000 	andi	$r0,$r0,0x0
1c005f64:	53f39fff 	b	-3172(0xffff39c) # 1c005300 <main+0x20>
1c005f68:	03400000 	andi	$r0,$r0,0x0
1c005f6c:	53f397ff 	b	-3180(0xffff394) # 1c005300 <main+0x20>
1c005f70:	03400000 	andi	$r0,$r0,0x0
1c005f74:	53f38fff 	b	-3188(0xffff38c) # 1c005300 <main+0x20>
1c005f78:	03400000 	andi	$r0,$r0,0x0
1c005f7c:	53f387ff 	b	-3196(0xffff384) # 1c005300 <main+0x20>
1c005f80:	03400000 	andi	$r0,$r0,0x0
1c005f84:	53f37fff 	b	-3204(0xffff37c) # 1c005300 <main+0x20>
1c005f88:	03400000 	andi	$r0,$r0,0x0
1c005f8c:	53f377ff 	b	-3212(0xffff374) # 1c005300 <main+0x20>
1c005f90:	03400000 	andi	$r0,$r0,0x0
1c005f94:	53f36fff 	b	-3220(0xffff36c) # 1c005300 <main+0x20>
1c005f98:	03400000 	andi	$r0,$r0,0x0
1c005f9c:	53f367ff 	b	-3228(0xffff364) # 1c005300 <main+0x20>
1c005fa0:	03400000 	andi	$r0,$r0,0x0
1c005fa4:	53f35fff 	b	-3236(0xffff35c) # 1c005300 <main+0x20>
1c005fa8:	03400000 	andi	$r0,$r0,0x0
1c005fac:	53f357ff 	b	-3244(0xffff354) # 1c005300 <main+0x20>
1c005fb0:	03400000 	andi	$r0,$r0,0x0
1c005fb4:	53f34fff 	b	-3252(0xffff34c) # 1c005300 <main+0x20>
1c005fb8:	03400000 	andi	$r0,$r0,0x0
1c005fbc:	53f347ff 	b	-3260(0xffff344) # 1c005300 <main+0x20>
1c005fc0:	03400000 	andi	$r0,$r0,0x0
1c005fc4:	53f33fff 	b	-3268(0xffff33c) # 1c005300 <main+0x20>
1c005fc8:	03400000 	andi	$r0,$r0,0x0
1c005fcc:	53f337ff 	b	-3276(0xffff334) # 1c005300 <main+0x20>
1c005fd0:	03400000 	andi	$r0,$r0,0x0
1c005fd4:	53f32fff 	b	-3284(0xffff32c) # 1c005300 <main+0x20>
1c005fd8:	03400000 	andi	$r0,$r0,0x0
1c005fdc:	53f327ff 	b	-3292(0xffff324) # 1c005300 <main+0x20>
1c005fe0:	03400000 	andi	$r0,$r0,0x0
1c005fe4:	53f31fff 	b	-3300(0xffff31c) # 1c005300 <main+0x20>
1c005fe8:	03400000 	andi	$r0,$r0,0x0
1c005fec:	53f317ff 	b	-3308(0xffff314) # 1c005300 <main+0x20>
1c005ff0:	03400000 	andi	$r0,$r0,0x0
1c005ff4:	53f30fff 	b	-3316(0xffff30c) # 1c005300 <main+0x20>

1c005ff8 <interface_display>:
interface_display():
1c005ff8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ffc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006000:	29806076 	st.w	$r22,$r3,24(0x18)
1c006004:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006008:	0015008c 	move	$r12,$r4
1c00600c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006010:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006014:	0280540d 	addi.w	$r13,$r0,21(0x15)
1c006018:	68087dac 	bltu	$r13,$r12,2172(0x87c) # 1c006894 <interface_display+0x89c>
1c00601c:	0040898d 	slli.w	$r13,$r12,0x2
1c006020:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c006024:	0283c18c 	addi.w	$r12,$r12,240(0xf0)
1c006028:	001031ac 	add.w	$r12,$r13,$r12
1c00602c:	2880018c 	ld.w	$r12,$r12,0
1c006030:	4c000180 	jirl	$r0,$r12,0
1c006034:	57df53ff 	bl	-8368(0xfffdf50) # 1c003f84 <OLED_CLS>
1c006038:	1c000068 	pcaddu12i	$r8,3(0x3)
1c00603c:	02bc4108 	addi.w	$r8,$r8,-240(0xf10)
1c006040:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006044:	02814006 	addi.w	$r6,$r0,80(0x50)
1c006048:	00150005 	move	$r5,$r0
1c00604c:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006050:	57e313ff 	bl	-7408(0xfffe310) # 1c004360 <OLED_DrawBMP>
1c006054:	02801c06 	addi.w	$r6,$r0,7(0x7)
1c006058:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00605c:	00150004 	move	$r4,$r0
1c006060:	57e183ff 	bl	-7808(0xfffe180) # 1c0041e0 <OLED_ShowCN>
1c006064:	02802006 	addi.w	$r6,$r0,8(0x8)
1c006068:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00606c:	02804004 	addi.w	$r4,$r0,16(0x10)
1c006070:	57e173ff 	bl	-7824(0xfffe170) # 1c0041e0 <OLED_ShowCN>
1c006074:	02803406 	addi.w	$r6,$r0,13(0xd)
1c006078:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00607c:	02817804 	addi.w	$r4,$r0,94(0x5e)
1c006080:	57e163ff 	bl	-7840(0xfffe160) # 1c0041e0 <OLED_ShowCN>
1c006084:	02803806 	addi.w	$r6,$r0,14(0xe)
1c006088:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00608c:	0281b804 	addi.w	$r4,$r0,110(0x6e)
1c006090:	57e153ff 	bl	-7856(0xfffe150) # 1c0041e0 <OLED_ShowCN>
1c006094:	50080000 	b	2048(0x800) # 1c006894 <interface_display+0x89c>
1c006098:	57deefff 	bl	-8468(0xfffdeec) # 1c003f84 <OLED_CLS>
1c00609c:	02801c07 	addi.w	$r7,$r0,7(0x7)
1c0060a0:	02803c06 	addi.w	$r6,$r0,15(0xf)
1c0060a4:	00150005 	move	$r5,$r0
1c0060a8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0060ac:	57e22bff 	bl	-7640(0xfffe228) # 1c0042d4 <OLED_ShowCN_STR>
1c0060b0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0060b4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0060b8:	028120c6 	addi.w	$r6,$r6,72(0x48)
1c0060bc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0060c0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0060c4:	57deefff 	bl	-8468(0xfffdeec) # 1c003fb0 <OLED_ShowStr>
1c0060c8:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0060cc:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0060d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0060d4:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0060d8:	57e1ffff 	bl	-7684(0xfffe1fc) # 1c0042d4 <OLED_ShowCN_STR>
1c0060dc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0060e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0060e4:	028080c6 	addi.w	$r6,$r6,32(0x20)
1c0060e8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0060ec:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0060f0:	57dec3ff 	bl	-8512(0xfffdec0) # 1c003fb0 <OLED_ShowStr>
1c0060f4:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0060f8:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0060fc:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006100:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006104:	57e1d3ff 	bl	-7728(0xfffe1d0) # 1c0042d4 <OLED_ShowCN_STR>
1c006108:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00610c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006110:	02bfe0c6 	addi.w	$r6,$r6,-8(0xff8)
1c006114:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006118:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00611c:	57de97ff 	bl	-8556(0xfffde94) # 1c003fb0 <OLED_ShowStr>
1c006120:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006124:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006128:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00612c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006130:	57e1a7ff 	bl	-7772(0xfffe1a4) # 1c0042d4 <OLED_ShowCN_STR>
1c006134:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006138:	02802c06 	addi.w	$r6,$r0,11(0xb)
1c00613c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006140:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006144:	57e193ff 	bl	-7792(0xfffe190) # 1c0042d4 <OLED_ShowCN_STR>
1c006148:	50074c00 	b	1868(0x74c) # 1c006894 <interface_display+0x89c>
1c00614c:	57de3bff 	bl	-8648(0xfffde38) # 1c003f84 <OLED_CLS>
1c006150:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006154:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006158:	00150005 	move	$r5,$r0
1c00615c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006160:	57e177ff 	bl	-7820(0xfffe174) # 1c0042d4 <OLED_ShowCN_STR>
1c006164:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006168:	02803406 	addi.w	$r6,$r0,13(0xd)
1c00616c:	00150005 	move	$r5,$r0
1c006170:	02811804 	addi.w	$r4,$r0,70(0x46)
1c006174:	57e163ff 	bl	-7840(0xfffe160) # 1c0042d4 <OLED_ShowCN_STR>
1c006178:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00617c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006180:	02be00c6 	addi.w	$r6,$r6,-128(0xf80)
1c006184:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006188:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00618c:	57de27ff 	bl	-8668(0xfffde24) # 1c003fb0 <OLED_ShowStr>
1c006190:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006194:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006198:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00619c:	57e047ff 	bl	-8124(0xfffe044) # 1c0041e0 <OLED_ShowCN>
1c0061a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0061a4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0061a8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0061ac:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0061b0:	57e127ff 	bl	-7900(0xfffe124) # 1c0042d4 <OLED_ShowCN_STR>
1c0061b4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0061b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0061bc:	02bd20c6 	addi.w	$r6,$r6,-184(0xf48)
1c0061c0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0061c4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0061c8:	57ddebff 	bl	-8728(0xfffdde8) # 1c003fb0 <OLED_ShowStr>
1c0061cc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0061d0:	02802406 	addi.w	$r6,$r0,9(0x9)
1c0061d4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0061d8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0061dc:	57e0fbff 	bl	-7944(0xfffe0f8) # 1c0042d4 <OLED_ShowCN_STR>
1c0061e0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0061e4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0061e8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0061ec:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0061f0:	57e0e7ff 	bl	-7964(0xfffe0e4) # 1c0042d4 <OLED_ShowCN_STR>
1c0061f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0061f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0061fc:	02bc30c6 	addi.w	$r6,$r6,-244(0xf0c)
1c006200:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006204:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006208:	57ddabff 	bl	-8792(0xfffdda8) # 1c003fb0 <OLED_ShowStr>
1c00620c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006210:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006214:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006218:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00621c:	57e0bbff 	bl	-8008(0xfffe0b8) # 1c0042d4 <OLED_ShowCN_STR>
1c006220:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006224:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006228:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00622c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006230:	57e0a7ff 	bl	-8028(0xfffe0a4) # 1c0042d4 <OLED_ShowCN_STR>
1c006234:	50066000 	b	1632(0x660) # 1c006894 <interface_display+0x89c>
1c006238:	57dd4fff 	bl	-8884(0xfffdd4c) # 1c003f84 <OLED_CLS>
1c00623c:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006240:	00150005 	move	$r5,$r0
1c006244:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006248:	57df9bff 	bl	-8296(0xfffdf98) # 1c0041e0 <OLED_ShowCN>
1c00624c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006250:	02808406 	addi.w	$r6,$r0,33(0x21)
1c006254:	00150005 	move	$r5,$r0
1c006258:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c00625c:	57e07bff 	bl	-8072(0xfffe078) # 1c0042d4 <OLED_ShowCN_STR>
1c006260:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006264:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006268:	00150005 	move	$r5,$r0
1c00626c:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c006270:	57e067ff 	bl	-8092(0xfffe064) # 1c0042d4 <OLED_ShowCN_STR>
1c006274:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006278:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c00627c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006280:	00150004 	move	$r4,$r0
1c006284:	57e053ff 	bl	-8112(0xfffe050) # 1c0042d4 <OLED_ShowCN_STR>
1c006288:	50060c00 	b	1548(0x60c) # 1c006894 <interface_display+0x89c>
1c00628c:	57dcfbff 	bl	-8968(0xfffdcf8) # 1c003f84 <OLED_CLS>
1c006290:	02801407 	addi.w	$r7,$r0,5(0x5)
1c006294:	02805806 	addi.w	$r6,$r0,22(0x16)
1c006298:	00150005 	move	$r5,$r0
1c00629c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0062a0:	57e037ff 	bl	-8140(0xfffe034) # 1c0042d4 <OLED_ShowCN_STR>
1c0062a4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0062a8:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c0062ac:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0062b0:	00150004 	move	$r4,$r0
1c0062b4:	57e023ff 	bl	-8160(0xfffe020) # 1c0042d4 <OLED_ShowCN_STR>
1c0062b8:	5005dc00 	b	1500(0x5dc) # 1c006894 <interface_display+0x89c>
1c0062bc:	57dccbff 	bl	-9016(0xfffdcc8) # 1c003f84 <OLED_CLS>
1c0062c0:	02801007 	addi.w	$r7,$r0,4(0x4)
1c0062c4:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c0062c8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0062cc:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c0062d0:	57e007ff 	bl	-8188(0xfffe004) # 1c0042d4 <OLED_ShowCN_STR>
1c0062d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0062d8:	02807406 	addi.w	$r6,$r0,29(0x1d)
1c0062dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0062e0:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c0062e4:	57dff3ff 	bl	-8208(0xfffdff0) # 1c0042d4 <OLED_ShowCN_STR>
1c0062e8:	5005ac00 	b	1452(0x5ac) # 1c006894 <interface_display+0x89c>
1c0062ec:	57dc9bff 	bl	-9064(0xfffdc98) # 1c003f84 <OLED_CLS>
1c0062f0:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c0062f4:	02805806 	addi.w	$r6,$r0,22(0x16)
1c0062f8:	00150005 	move	$r5,$r0
1c0062fc:	00150004 	move	$r4,$r0
1c006300:	57dfd7ff 	bl	-8236(0xfffdfd4) # 1c0042d4 <OLED_ShowCN_STR>
1c006304:	02800c07 	addi.w	$r7,$r0,3(0x3)
1c006308:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00630c:	00150005 	move	$r5,$r0
1c006310:	0280c004 	addi.w	$r4,$r0,48(0x30)
1c006314:	57dfc3ff 	bl	-8256(0xfffdfc0) # 1c0042d4 <OLED_ShowCN_STR>
1c006318:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00631c:	02806406 	addi.w	$r6,$r0,25(0x19)
1c006320:	00150005 	move	$r5,$r0
1c006324:	02818004 	addi.w	$r4,$r0,96(0x60)
1c006328:	57dfafff 	bl	-8276(0xfffdfac) # 1c0042d4 <OLED_ShowCN_STR>
1c00632c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006330:	0280b806 	addi.w	$r6,$r0,46(0x2e)
1c006334:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006338:	00150004 	move	$r4,$r0
1c00633c:	57df9bff 	bl	-8296(0xfffdf98) # 1c0042d4 <OLED_ShowCN_STR>
1c006340:	50055400 	b	1364(0x554) # 1c006894 <interface_display+0x89c>
1c006344:	57dc43ff 	bl	-9152(0xfffdc40) # 1c003f84 <OLED_CLS>
1c006348:	02801007 	addi.w	$r7,$r0,4(0x4)
1c00634c:	02813806 	addi.w	$r6,$r0,78(0x4e)
1c006350:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006354:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006358:	57df7fff 	bl	-8324(0xfffdf7c) # 1c0042d4 <OLED_ShowCN_STR>
1c00635c:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c006360:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006364:	02813c04 	addi.w	$r4,$r0,79(0x4f)
1c006368:	57de7bff 	bl	-8584(0xfffde78) # 1c0041e0 <OLED_ShowCN>
1c00636c:	02808006 	addi.w	$r6,$r0,32(0x20)
1c006370:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006374:	02817c04 	addi.w	$r4,$r0,95(0x5f)
1c006378:	57de6bff 	bl	-8600(0xfffde68) # 1c0041e0 <OLED_ShowCN>
1c00637c:	50051800 	b	1304(0x518) # 1c006894 <interface_display+0x89c>
1c006380:	57dc07ff 	bl	-9212(0xfffdc04) # 1c003f84 <OLED_CLS>
1c006384:	02801007 	addi.w	$r7,$r0,4(0x4)
1c006388:	0280a806 	addi.w	$r6,$r0,42(0x2a)
1c00638c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006390:	02808004 	addi.w	$r4,$r0,32(0x20)
1c006394:	57df43ff 	bl	-8384(0xfffdf40) # 1c0042d4 <OLED_ShowCN_STR>
1c006398:	5004fc00 	b	1276(0x4fc) # 1c006894 <interface_display+0x89c>
1c00639c:	57dbebff 	bl	-9240(0xfffdbe8) # 1c003f84 <OLED_CLS>
1c0063a0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0063a4:	00150005 	move	$r5,$r0
1c0063a8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0063ac:	57de37ff 	bl	-8652(0xfffde34) # 1c0041e0 <OLED_ShowCN>
1c0063b0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0063b4:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c0063b8:	00150005 	move	$r5,$r0
1c0063bc:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0063c0:	57df17ff 	bl	-8428(0xfffdf14) # 1c0042d4 <OLED_ShowCN_STR>
1c0063c4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0063c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0063cc:	02b4d0c6 	addi.w	$r6,$r6,-716(0xd34)
1c0063d0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0063d4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0063d8:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c003fb0 <OLED_ShowStr>
1c0063dc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0063e0:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0063e4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0063e8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0063ec:	57deebff 	bl	-8472(0xfffdee8) # 1c0042d4 <OLED_ShowCN_STR>
1c0063f0:	02801806 	addi.w	$r6,$r0,6(0x6)
1c0063f4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0063f8:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0063fc:	57dde7ff 	bl	-8732(0xfffdde4) # 1c0041e0 <OLED_ShowCN>
1c006400:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006404:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006408:	02b3f0c6 	addi.w	$r6,$r6,-772(0xcfc)
1c00640c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006410:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006414:	57db9fff 	bl	-9316(0xfffdb9c) # 1c003fb0 <OLED_ShowStr>
1c006418:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00641c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006420:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006424:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006428:	57deafff 	bl	-8532(0xfffdeac) # 1c0042d4 <OLED_ShowCN_STR>
1c00642c:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006430:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006434:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006438:	57ddabff 	bl	-8792(0xfffdda8) # 1c0041e0 <OLED_ShowCN>
1c00643c:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006440:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006444:	02816004 	addi.w	$r4,$r0,88(0x58)
1c006448:	57dd9bff 	bl	-8808(0xfffdd98) # 1c0041e0 <OLED_ShowCN>
1c00644c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006450:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006454:	02b2d0c6 	addi.w	$r6,$r6,-844(0xcb4)
1c006458:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00645c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006460:	57db53ff 	bl	-9392(0xfffdb50) # 1c003fb0 <OLED_ShowStr>
1c006464:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006468:	02809806 	addi.w	$r6,$r0,38(0x26)
1c00646c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006470:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006474:	57de63ff 	bl	-8608(0xfffde60) # 1c0042d4 <OLED_ShowCN_STR>
1c006478:	50041c00 	b	1052(0x41c) # 1c006894 <interface_display+0x89c>
1c00647c:	57db0bff 	bl	-9464(0xfffdb08) # 1c003f84 <OLED_CLS>
1c006480:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006484:	02802406 	addi.w	$r6,$r0,9(0x9)
1c006488:	00150005 	move	$r5,$r0
1c00648c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006490:	57de47ff 	bl	-8636(0xfffde44) # 1c0042d4 <OLED_ShowCN_STR>
1c006494:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006498:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c00649c:	00150005 	move	$r5,$r0
1c0064a0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0064a4:	57de33ff 	bl	-8656(0xfffde30) # 1c0042d4 <OLED_ShowCN_STR>
1c0064a8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0064ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0064b0:	02b140c6 	addi.w	$r6,$r6,-944(0xc50)
1c0064b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0064b8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0064bc:	57daf7ff 	bl	-9484(0xfffdaf4) # 1c003fb0 <OLED_ShowStr>
1c0064c0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0064c4:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0064c8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0064cc:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0064d0:	57de07ff 	bl	-8700(0xfffde04) # 1c0042d4 <OLED_ShowCN_STR>
1c0064d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0064d8:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0064dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0064e0:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0064e4:	57ddf3ff 	bl	-8720(0xfffddf0) # 1c0042d4 <OLED_ShowCN_STR>
1c0064e8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0064ec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0064f0:	02b050c6 	addi.w	$r6,$r6,-1004(0xc14)
1c0064f4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0064f8:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0064fc:	57dab7ff 	bl	-9548(0xfffdab4) # 1c003fb0 <OLED_ShowStr>
1c006500:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006504:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006508:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00650c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006510:	57ddc7ff 	bl	-8764(0xfffddc4) # 1c0042d4 <OLED_ShowCN_STR>
1c006514:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006518:	02806406 	addi.w	$r6,$r0,25(0x19)
1c00651c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006520:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006524:	57ddb3ff 	bl	-8784(0xfffddb0) # 1c0042d4 <OLED_ShowCN_STR>
1c006528:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c00652c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006530:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c006534:	57dcafff 	bl	-9044(0xfffdcac) # 1c0041e0 <OLED_ShowCN>
1c006538:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00653c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006540:	02af20c6 	addi.w	$r6,$r6,-1080(0xbc8)
1c006544:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006548:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00654c:	57da67ff 	bl	-9628(0xfffda64) # 1c003fb0 <OLED_ShowStr>
1c006550:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006554:	02809806 	addi.w	$r6,$r0,38(0x26)
1c006558:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00655c:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006560:	57dd77ff 	bl	-8844(0xfffdd74) # 1c0042d4 <OLED_ShowCN_STR>
1c006564:	50033000 	b	816(0x330) # 1c006894 <interface_display+0x89c>
1c006568:	57da1fff 	bl	-9700(0xfffda1c) # 1c003f84 <OLED_CLS>
1c00656c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006570:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006574:	00150005 	move	$r5,$r0
1c006578:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00657c:	57dd5bff 	bl	-8872(0xfffdd58) # 1c0042d4 <OLED_ShowCN_STR>
1c006580:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006584:	00150005 	move	$r5,$r0
1c006588:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00658c:	57dc57ff 	bl	-9132(0xfffdc54) # 1c0041e0 <OLED_ShowCN>
1c006590:	50030400 	b	772(0x304) # 1c006894 <interface_display+0x89c>
1c006594:	57d9f3ff 	bl	-9744(0xfffd9f0) # 1c003f84 <OLED_CLS>
1c006598:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00659c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0065a0:	00150005 	move	$r5,$r0
1c0065a4:	02809004 	addi.w	$r4,$r0,36(0x24)
1c0065a8:	57dd2fff 	bl	-8916(0xfffdd2c) # 1c0042d4 <OLED_ShowCN_STR>
1c0065ac:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0065b0:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0065b4:	00150005 	move	$r5,$r0
1c0065b8:	02811004 	addi.w	$r4,$r0,68(0x44)
1c0065bc:	57dd1bff 	bl	-8936(0xfffdd18) # 1c0042d4 <OLED_ShowCN_STR>
1c0065c0:	5002d400 	b	724(0x2d4) # 1c006894 <interface_display+0x89c>
1c0065c4:	57d9c3ff 	bl	-9792(0xfffd9c0) # 1c003f84 <OLED_CLS>
1c0065c8:	0280d406 	addi.w	$r6,$r0,53(0x35)
1c0065cc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0065d0:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0065d4:	57dc0fff 	bl	-9204(0xfffdc0c) # 1c0041e0 <OLED_ShowCN>
1c0065d8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0065dc:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0065e0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0065e4:	0280e004 	addi.w	$r4,$r0,56(0x38)
1c0065e8:	57dcefff 	bl	-8980(0xfffdcec) # 1c0042d4 <OLED_ShowCN_STR>
1c0065ec:	5002a800 	b	680(0x2a8) # 1c006894 <interface_display+0x89c>
1c0065f0:	57d997ff 	bl	-9836(0xfffd994) # 1c003f84 <OLED_CLS>
1c0065f4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0065f8:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c0065fc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006600:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006604:	57dcd3ff 	bl	-9008(0xfffdcd0) # 1c0042d4 <OLED_ShowCN_STR>
1c006608:	02807c06 	addi.w	$r6,$r0,31(0x1f)
1c00660c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006610:	0280f804 	addi.w	$r4,$r0,62(0x3e)
1c006614:	57dbcfff 	bl	-9268(0xfffdbcc) # 1c0041e0 <OLED_ShowCN>
1c006618:	02808006 	addi.w	$r6,$r0,32(0x20)
1c00661c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006620:	02813804 	addi.w	$r4,$r0,78(0x4e)
1c006624:	57dbbfff 	bl	-9284(0xfffdbbc) # 1c0041e0 <OLED_ShowCN>
1c006628:	50026c00 	b	620(0x26c) # 1c006894 <interface_display+0x89c>
1c00662c:	57d95bff 	bl	-9896(0xfffd958) # 1c003f84 <OLED_CLS>
1c006630:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006634:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006638:	00150005 	move	$r5,$r0
1c00663c:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c006640:	57dc97ff 	bl	-9068(0xfffdc94) # 1c0042d4 <OLED_ShowCN_STR>
1c006644:	02801806 	addi.w	$r6,$r0,6(0x6)
1c006648:	00150005 	move	$r5,$r0
1c00664c:	02810c04 	addi.w	$r4,$r0,67(0x43)
1c006650:	57db93ff 	bl	-9328(0xfffdb90) # 1c0041e0 <OLED_ShowCN>
1c006654:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006658:	00150005 	move	$r5,$r0
1c00665c:	02814c04 	addi.w	$r4,$r0,83(0x53)
1c006660:	57db83ff 	bl	-9344(0xfffdb80) # 1c0041e0 <OLED_ShowCN>
1c006664:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006668:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00666c:	00150004 	move	$r4,$r0
1c006670:	57db73ff 	bl	-9360(0xfffdb70) # 1c0041e0 <OLED_ShowCN>
1c006674:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006678:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00667c:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c006680:	57db63ff 	bl	-9376(0xfffdb60) # 1c0041e0 <OLED_ShowCN>
1c006684:	50021000 	b	528(0x210) # 1c006894 <interface_display+0x89c>
1c006688:	57d8ffff 	bl	-9988(0xfffd8fc) # 1c003f84 <OLED_CLS>
1c00668c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006690:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006694:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006698:	02806404 	addi.w	$r4,$r0,25(0x19)
1c00669c:	57dc3bff 	bl	-9160(0xfffdc38) # 1c0042d4 <OLED_ShowCN_STR>
1c0066a0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066a4:	02806406 	addi.w	$r6,$r0,25(0x19)
1c0066a8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0066ac:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0066b0:	57dc27ff 	bl	-9180(0xfffdc24) # 1c0042d4 <OLED_ShowCN_STR>
1c0066b4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0066b8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0066bc:	02816404 	addi.w	$r4,$r0,89(0x59)
1c0066c0:	57db23ff 	bl	-9440(0xfffdb20) # 1c0041e0 <OLED_ShowCN>
1c0066c4:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c0066c8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0066cc:	00150004 	move	$r4,$r0
1c0066d0:	57db13ff 	bl	-9456(0xfffdb10) # 1c0041e0 <OLED_ShowCN>
1c0066d4:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c0066d8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0066dc:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c0066e0:	57db03ff 	bl	-9472(0xfffdb00) # 1c0041e0 <OLED_ShowCN>
1c0066e4:	5001b000 	b	432(0x1b0) # 1c006894 <interface_display+0x89c>
1c0066e8:	57d89fff 	bl	-10084(0xfffd89c) # 1c003f84 <OLED_CLS>
1c0066ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0066f0:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0066f4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0066f8:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0066fc:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c0042d4 <OLED_ShowCN_STR>
1c006700:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006704:	02806c06 	addi.w	$r6,$r0,27(0x1b)
1c006708:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00670c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c006710:	57dbc7ff 	bl	-9276(0xfffdbc4) # 1c0042d4 <OLED_ShowCN_STR>
1c006714:	50018000 	b	384(0x180) # 1c006894 <interface_display+0x89c>
1c006718:	57d86fff 	bl	-10132(0xfffd86c) # 1c003f84 <OLED_CLS>
1c00671c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006720:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006724:	00150005 	move	$r5,$r0
1c006728:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00672c:	57dbabff 	bl	-9304(0xfffdba8) # 1c0042d4 <OLED_ShowCN_STR>
1c006730:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006734:	02808c06 	addi.w	$r6,$r0,35(0x23)
1c006738:	00150005 	move	$r5,$r0
1c00673c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006740:	57db97ff 	bl	-9324(0xfffdb94) # 1c0042d4 <OLED_ShowCN_STR>
1c006744:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006748:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00674c:	02a6d0c6 	addi.w	$r6,$r6,-1612(0x9b4)
1c006750:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006754:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006758:	57d85bff 	bl	-10152(0xfffd858) # 1c003fb0 <OLED_ShowStr>
1c00675c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006760:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006764:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006768:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c00676c:	57db6bff 	bl	-9368(0xfffdb68) # 1c0042d4 <OLED_ShowCN_STR>
1c006770:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006774:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006778:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00677c:	02812004 	addi.w	$r4,$r0,72(0x48)
1c006780:	57db57ff 	bl	-9388(0xfffdb54) # 1c0042d4 <OLED_ShowCN_STR>
1c006784:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006788:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00678c:	02a5e0c6 	addi.w	$r6,$r6,-1672(0x978)
1c006790:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006794:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006798:	57d81bff 	bl	-10216(0xfffd818) # 1c003fb0 <OLED_ShowStr>
1c00679c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0067a0:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c0067a4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0067a8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0067ac:	57db2bff 	bl	-9432(0xfffdb28) # 1c0042d4 <OLED_ShowCN_STR>
1c0067b0:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0067b4:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c0067b8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0067bc:	02812004 	addi.w	$r4,$r0,72(0x48)
1c0067c0:	57db17ff 	bl	-9452(0xfffdb14) # 1c0042d4 <OLED_ShowCN_STR>
1c0067c4:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c0067c8:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0067cc:	0281a004 	addi.w	$r4,$r0,104(0x68)
1c0067d0:	57da13ff 	bl	-9712(0xfffda10) # 1c0041e0 <OLED_ShowCN>
1c0067d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0067d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0067dc:	02a4b0c6 	addi.w	$r6,$r6,-1748(0x92c)
1c0067e0:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0067e4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0067e8:	57d7cbff 	bl	-10296(0xfffd7c8) # 1c003fb0 <OLED_ShowStr>
1c0067ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0067f0:	02809806 	addi.w	$r6,$r0,38(0x26)
1c0067f4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0067f8:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c0067fc:	57dadbff 	bl	-9512(0xfffdad8) # 1c0042d4 <OLED_ShowCN_STR>
1c006800:	50009400 	b	148(0x94) # 1c006894 <interface_display+0x89c>
1c006804:	57d783ff 	bl	-10368(0xfffd780) # 1c003f84 <OLED_CLS>
1c006808:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00680c:	0280cc06 	addi.w	$r6,$r0,51(0x33)
1c006810:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006814:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006818:	57dabfff 	bl	-9540(0xfffdabc) # 1c0042d4 <OLED_ShowCN_STR>
1c00681c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006820:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006824:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006828:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00682c:	57daabff 	bl	-9560(0xfffdaa8) # 1c0042d4 <OLED_ShowCN_STR>
1c006830:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006834:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006838:	02816404 	addi.w	$r4,$r0,89(0x59)
1c00683c:	57d9a7ff 	bl	-9820(0xfffd9a4) # 1c0041e0 <OLED_ShowCN>
1c006840:	0280d806 	addi.w	$r6,$r0,54(0x36)
1c006844:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006848:	00150004 	move	$r4,$r0
1c00684c:	57d997ff 	bl	-9836(0xfffd994) # 1c0041e0 <OLED_ShowCN>
1c006850:	0280dc06 	addi.w	$r6,$r0,55(0x37)
1c006854:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006858:	0281b004 	addi.w	$r4,$r0,108(0x6c)
1c00685c:	57d987ff 	bl	-9852(0xfffd984) # 1c0041e0 <OLED_ShowCN>
1c006860:	50003400 	b	52(0x34) # 1c006894 <interface_display+0x89c>
1c006864:	57d723ff 	bl	-10464(0xfffd720) # 1c003f84 <OLED_CLS>
1c006868:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00686c:	0280c006 	addi.w	$r6,$r0,48(0x30)
1c006870:	00150005 	move	$r5,$r0
1c006874:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c006878:	57da5fff 	bl	-9636(0xfffda5c) # 1c0042d4 <OLED_ShowCN_STR>
1c00687c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006880:	0280e006 	addi.w	$r6,$r0,56(0x38)
1c006884:	00150005 	move	$r5,$r0
1c006888:	02812004 	addi.w	$r4,$r0,72(0x48)
1c00688c:	57da4bff 	bl	-9656(0xfffda48) # 1c0042d4 <OLED_ShowCN_STR>
1c006890:	03400000 	andi	$r0,$r0,0x0
1c006894:	03400000 	andi	$r0,$r0,0x0
1c006898:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00689c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0068a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0068a4:	4c000020 	jirl	$r0,$r1,0

1c0068a8 <Write_ID>:
Write_ID():
1c0068a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0068ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0068b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0068b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0068b8:	57e8b3ff 	bl	-5968(0xfffe8b0) # 1c005168 <Return_Card>
1c0068bc:	0015008c 	move	$r12,$r4
1c0068c0:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0068c4:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c0068c8:	4000c180 	beqz	$r12,192(0xc0) # 1c006988 <Write_ID+0xe0>
1c0068cc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0068d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0068d4:	50004400 	b	68(0x44) # 1c006918 <Write_ID+0x70>
1c0068d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068dc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0068e0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0068e4:	028631ad 	addi.w	$r13,$r13,396(0x18c)
1c0068e8:	0040858c 	slli.w	$r12,$r12,0x1
1c0068ec:	001031ac 	add.w	$r12,$r13,$r12
1c0068f0:	2a40018d 	ld.hu	$r13,$r12,0
1c0068f4:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c0068f8:	0285e1ce 	addi.w	$r14,$r14,376(0x178)
1c0068fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006900:	0040858c 	slli.w	$r12,$r12,0x1
1c006904:	001031cc 	add.w	$r12,$r14,$r12
1c006908:	2940018d 	st.h	$r13,$r12,0
1c00690c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006910:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00691c:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c0068d8 <Write_ID+0x30>
1c006920:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006924:	0285318c 	addi.w	$r12,$r12,332(0x14c)
1c006928:	2a7f9acd 	ld.hu	$r13,$r22,-26(0xfe6)
1c00692c:	2940018d 	st.h	$r13,$r12,0
1c006930:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c006934:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c005ff8 <interface_display>
1c006938:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c00693c:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c006940:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006944:	50001400 	b	20(0x14) # 1c006958 <Write_ID+0xb0>
1c006948:	03400000 	andi	$r0,$r0,0x0
1c00694c:	03400000 	andi	$r0,$r0,0x0
1c006950:	03400000 	andi	$r0,$r0,0x0
1c006954:	03400000 	andi	$r0,$r0,0x0
1c006958:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00695c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006960:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006964:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006948 <Write_ID+0xa0>
1c006968:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00696c:	0284398c 	addi.w	$r12,$r12,270(0x10e)
1c006970:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006974:	2900018d 	st.b	$r13,$r12,0
1c006978:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00697c:	02a1898c 	addi.w	$r12,$r12,-1950(0x862)
1c006980:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006984:	2900018d 	st.b	$r13,$r12,0
1c006988:	03400000 	andi	$r0,$r0,0x0
1c00698c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006990:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006994:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006998:	4c000020 	jirl	$r0,$r1,0

1c00699c <Delate_ID>:
Delate_ID():
1c00699c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0069a0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0069a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0069a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0069ac:	50002800 	b	40(0x28) # 1c0069d4 <Delate_ID+0x38>
1c0069b0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c0069b4:	0282f1ad 	addi.w	$r13,$r13,188(0xbc)
1c0069b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0069bc:	0040858c 	slli.w	$r12,$r12,0x1
1c0069c0:	001031ac 	add.w	$r12,$r13,$r12
1c0069c4:	29400180 	st.h	$r0,$r12,0
1c0069c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0069cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0069d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0069d8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0069dc:	67ffd58d 	bge	$r12,$r13,-44(0x3ffd4) # 1c0069b0 <Delate_ID+0x14>
1c0069e0:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0069e4:	03bf918c 	ori	$r12,$r12,0xfe4
1c0069e8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0069ec:	50001400 	b	20(0x14) # 1c006a00 <Delate_ID+0x64>
1c0069f0:	03400000 	andi	$r0,$r0,0x0
1c0069f4:	03400000 	andi	$r0,$r0,0x0
1c0069f8:	03400000 	andi	$r0,$r0,0x0
1c0069fc:	03400000 	andi	$r0,$r0,0x0
1c006a00:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006a04:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006a08:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006a0c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0069f0 <Delate_ID+0x54>
1c006a10:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006a14:	0281998c 	addi.w	$r12,$r12,102(0x66)
1c006a18:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c006a1c:	2900018d 	st.b	$r13,$r12,0
1c006a20:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006a24:	029ee98c 	addi.w	$r12,$r12,1978(0x7ba)
1c006a28:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006a2c:	2900018d 	st.b	$r13,$r12,0
1c006a30:	03400000 	andi	$r0,$r0,0x0
1c006a34:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006a38:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006a3c:	4c000020 	jirl	$r0,$r1,0

1c006a40 <Read_ID>:
Read_ID():
1c006a40:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a44:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006a48:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006a4c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006a50:	57e71bff 	bl	-6376(0xfffe718) # 1c005168 <Return_Card>
1c006a54:	0015008c 	move	$r12,$r4
1c006a58:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c006a5c:	2a7f8acc 	ld.hu	$r12,$r22,-30(0xfe2)
1c006a60:	40011980 	beqz	$r12,280(0x118) # 1c006b78 <Read_ID+0x138>
1c006a64:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c006a68:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006a6c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006a70:	6001098d 	blt	$r12,$r13,264(0x108) # 1c006b78 <Read_ID+0x138>
1c006a74:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c006a78:	02bfe1ad 	addi.w	$r13,$r13,-8(0xff8)
1c006a7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a80:	0040858c 	slli.w	$r12,$r12,0x1
1c006a84:	001031ac 	add.w	$r12,$r13,$r12
1c006a88:	2a40018c 	ld.hu	$r12,$r12,0
1c006a8c:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c006a90:	5c00a1ac 	bne	$r13,$r12,160(0xa0) # 1c006b30 <Read_ID+0xf0>
1c006a94:	02802004 	addi.w	$r4,$r0,8(0x8)
1c006a98:	57f563ff 	bl	-2720(0xffff560) # 1c005ff8 <interface_display>
1c006a9c:	57c69fff 	bl	-14692(0xfffc69c) # 1c003138 <SG90_Open>
1c006aa0:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c006aa4:	03bdc58c 	ori	$r12,$r12,0xf71
1c006aa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006aac:	50001400 	b	20(0x14) # 1c006ac0 <Read_ID+0x80>
1c006ab0:	03400000 	andi	$r0,$r0,0x0
1c006ab4:	03400000 	andi	$r0,$r0,0x0
1c006ab8:	03400000 	andi	$r0,$r0,0x0
1c006abc:	03400000 	andi	$r0,$r0,0x0
1c006ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ac4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006ac8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c006acc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006ab0 <Read_ID+0x70>
1c006ad0:	57c697ff 	bl	-14700(0xfffc694) # 1c003164 <SG90_Close>
1c006ad4:	02802404 	addi.w	$r4,$r0,9(0x9)
1c006ad8:	57f523ff 	bl	-2784(0xffff520) # 1c005ff8 <interface_display>
1c006adc:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c006ae0:	03bead8c 	ori	$r12,$r12,0xfab
1c006ae4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006ae8:	50001400 	b	20(0x14) # 1c006afc <Read_ID+0xbc>
1c006aec:	03400000 	andi	$r0,$r0,0x0
1c006af0:	03400000 	andi	$r0,$r0,0x0
1c006af4:	03400000 	andi	$r0,$r0,0x0
1c006af8:	03400000 	andi	$r0,$r0,0x0
1c006afc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006b04:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c006b08:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006aec <Read_ID+0xac>
1c006b0c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006b10:	02bdad8c 	addi.w	$r12,$r12,-149(0xf6b)
1c006b14:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006b18:	2900018d 	st.b	$r13,$r12,0
1c006b1c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006b20:	02bd698c 	addi.w	$r12,$r12,-166(0xf5a)
1c006b24:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006b28:	2900018d 	st.b	$r13,$r12,0
1c006b2c:	50004c00 	b	76(0x4c) # 1c006b78 <Read_ID+0x138>
1c006b30:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006b34:	57f4c7ff 	bl	-2876(0xffff4c4) # 1c005ff8 <interface_display>
1c006b38:	57d007ff 	bl	-12284(0xfffd004) # 1c003b3c <Buzzer>
1c006b3c:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c006b40:	03bf918c 	ori	$r12,$r12,0xfe4
1c006b44:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006b48:	50001400 	b	20(0x14) # 1c006b5c <Read_ID+0x11c>
1c006b4c:	03400000 	andi	$r0,$r0,0x0
1c006b50:	03400000 	andi	$r0,$r0,0x0
1c006b54:	03400000 	andi	$r0,$r0,0x0
1c006b58:	03400000 	andi	$r0,$r0,0x0
1c006b5c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006b60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006b64:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c006b68:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006b4c <Read_ID+0x10c>
1c006b6c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c006b70:	57f48bff 	bl	-2936(0xffff488) # 1c005ff8 <interface_display>
1c006b74:	03400000 	andi	$r0,$r0,0x0
1c006b78:	03400000 	andi	$r0,$r0,0x0
1c006b7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b88:	4c000020 	jirl	$r0,$r1,0

1c006b8c <Key_main>:
Key_main():
1c006b8c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006b90:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006b94:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006b98:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006b9c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c006ba0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ba4:	0298d58c 	addi.w	$r12,$r12,1589(0x635)
1c006ba8:	2a00018c 	ld.bu	$r12,$r12,0
1c006bac:	4003dd80 	beqz	$r12,988(0x3dc) # 1c006f88 <Key_main+0x3fc>
1c006bb0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006bb4:	0298958c 	addi.w	$r12,$r12,1573(0x625)
1c006bb8:	2a00018d 	ld.bu	$r13,$r12,0
1c006bbc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006bc0:	6801cd8d 	bltu	$r12,$r13,460(0x1cc) # 1c006d8c <Key_main+0x200>
1c006bc4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006bc8:	2891118c 	ld.w	$r12,$r12,1092(0x444)
1c006bcc:	2a40018d 	ld.hu	$r13,$r12,0
1c006bd0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006bd4:	68008d8d 	bltu	$r12,$r13,140(0x8c) # 1c006c60 <Key_main+0xd4>
1c006bd8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006bdc:	2891018c 	ld.w	$r12,$r12,1088(0x440)
1c006be0:	2a40018d 	ld.hu	$r13,$r12,0
1c006be4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006be8:	001c31ac 	mul.w	$r12,$r13,$r12
1c006bec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006bf0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006bf4:	2890a18c 	ld.w	$r12,$r12,1064(0x428)
1c006bf8:	2940018d 	st.h	$r13,$r12,0
1c006bfc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006c00:	0297658c 	addi.w	$r12,$r12,1497(0x5d9)
1c006c04:	2a00018d 	ld.bu	$r13,$r12,0
1c006c08:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006c0c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006c10:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006c18 <Key_main+0x8c>
1c006c14:	002a0007 	break	0x7
1c006c18:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c006c1c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c20:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c24:	288fe18c 	ld.w	$r12,$r12,1016(0x3f8)
1c006c28:	2a40018c 	ld.hu	$r12,$r12,0
1c006c2c:	001031ac 	add.w	$r12,$r13,$r12
1c006c30:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c38:	288f918c 	ld.w	$r12,$r12,996(0x3e4)
1c006c3c:	2940018d 	st.h	$r13,$r12,0
1c006c40:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c44:	288f218c 	ld.w	$r12,$r12,968(0x3c8)
1c006c48:	2a40018c 	ld.hu	$r12,$r12,0
1c006c4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c50:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c58:	288ed18c 	ld.w	$r12,$r12,948(0x3b4)
1c006c5c:	2940018d 	st.h	$r13,$r12,0
1c006c60:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c64:	288ee18c 	ld.w	$r12,$r12,952(0x3b8)
1c006c68:	2a40018c 	ld.hu	$r12,$r12,0
1c006c6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006c70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c74:	288e618c 	ld.w	$r12,$r12,920(0x398)
1c006c78:	2a40018c 	ld.hu	$r12,$r12,0
1c006c7c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006c80:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006c84:	50006c00 	b	108(0x6c) # 1c006cf0 <Key_main+0x164>
1c006c88:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c006c8c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c006c90:	0020b5cc 	mod.w	$r12,$r14,$r13
1c006c94:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006c9c <Key_main+0x110>
1c006c98:	002a0007 	break	0x7
1c006c9c:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c006ca0:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c006ca4:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c006ca8:	002035cc 	div.w	$r12,$r14,$r13
1c006cac:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c006cb4 <Key_main+0x128>
1c006cb0:	002a0007 	break	0x7
1c006cb4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006cb8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006cbc:	00408d8c 	slli.w	$r12,$r12,0x3
1c006cc0:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c006cc4:	0015018d 	move	$r13,$r12
1c006cc8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c006ccc:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006cd0:	02800407 	addi.w	$r7,$r0,1(0x1)
1c006cd4:	00150186 	move	$r6,$r12
1c006cd8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006cdc:	001501a4 	move	$r4,$r13
1c006ce0:	57d93fff 	bl	-9924(0xfffd93c) # 1c00461c <OLED_ShowNum>
1c006ce4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006ce8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006cec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006cf0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006cf4:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c006c88 <Key_main+0xfc>
1c006cf8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c006cfc:	03bf918c 	ori	$r12,$r12,0xfe4
1c006d00:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006d04:	50001400 	b	20(0x14) # 1c006d18 <Key_main+0x18c>
1c006d08:	03400000 	andi	$r0,$r0,0x0
1c006d0c:	03400000 	andi	$r0,$r0,0x0
1c006d10:	03400000 	andi	$r0,$r0,0x0
1c006d14:	03400000 	andi	$r0,$r0,0x0
1c006d18:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006d1c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006d20:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c006d24:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006d08 <Key_main+0x17c>
1c006d28:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c006d2c:	50004800 	b	72(0x48) # 1c006d74 <Key_main+0x1e8>
1c006d30:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006d34:	288b618c 	ld.w	$r12,$r12,728(0x2d8)
1c006d38:	2a40018c 	ld.hu	$r12,$r12,0
1c006d3c:	0015018d 	move	$r13,$r12
1c006d40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006d44:	001131ac 	sub.w	$r12,$r13,$r12
1c006d48:	00408d8c 	slli.w	$r12,$r12,0x3
1c006d4c:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c006d50:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d54:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006d58:	028ed0c6 	addi.w	$r6,$r6,948(0x3b4)
1c006d5c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006d60:	00150184 	move	$r4,$r12
1c006d64:	57d24fff 	bl	-11700(0xfffd24c) # 1c003fb0 <OLED_ShowStr>
1c006d68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006d6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d70:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006d74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006d78:	288a518c 	ld.w	$r12,$r12,660(0x294)
1c006d7c:	2a40018c 	ld.hu	$r12,$r12,0
1c006d80:	0015018d 	move	$r13,$r12
1c006d84:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006d88:	63ffa98d 	blt	$r12,$r13,-88(0x3ffa8) # 1c006d30 <Key_main+0x1a4>
1c006d8c:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c006d90:	50004400 	b	68(0x44) # 1c006dd4 <Key_main+0x248>
1c006d94:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c006d98:	02b331ad 	addi.w	$r13,$r13,-820(0xccc)
1c006d9c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006da0:	0040858c 	slli.w	$r12,$r12,0x1
1c006da4:	001031ac 	add.w	$r12,$r13,$r12
1c006da8:	2a40018d 	ld.hu	$r13,$r12,0
1c006dac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006db0:	2889b18c 	ld.w	$r12,$r12,620(0x26c)
1c006db4:	2a40018c 	ld.hu	$r12,$r12,0
1c006db8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006dc8 <Key_main+0x23c>
1c006dbc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006dc0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006dc4:	50001c00 	b	28(0x1c) # 1c006de0 <Key_main+0x254>
1c006dc8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006dcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006dd0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006dd4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006dd8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006ddc:	6fffb98d 	bgeu	$r12,$r13,-72(0x3ffb8) # 1c006d94 <Key_main+0x208>
1c006de0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006de4:	028fd58c 	addi.w	$r12,$r12,1013(0x3f5)
1c006de8:	2a00018d 	ld.bu	$r13,$r12,0
1c006dec:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c006df0:	5c0129ac 	bne	$r13,$r12,296(0x128) # 1c006f18 <Key_main+0x38c>
1c006df4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006df8:	4000bd80 	beqz	$r12,188(0xbc) # 1c006eb4 <Key_main+0x328>
1c006dfc:	57d18bff 	bl	-11896(0xfffd188) # 1c003f84 <OLED_CLS>
1c006e00:	02802004 	addi.w	$r4,$r0,8(0x8)
1c006e04:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c005ff8 <interface_display>
1c006e08:	57c333ff 	bl	-15568(0xfffc330) # 1c003138 <SG90_Open>
1c006e0c:	14008e6c 	lu12i.w	$r12,1139(0x473)
1c006e10:	03bdc58c 	ori	$r12,$r12,0xf71
1c006e14:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c006e18:	50001400 	b	20(0x14) # 1c006e2c <Key_main+0x2a0>
1c006e1c:	03400000 	andi	$r0,$r0,0x0
1c006e20:	03400000 	andi	$r0,$r0,0x0
1c006e24:	03400000 	andi	$r0,$r0,0x0
1c006e28:	03400000 	andi	$r0,$r0,0x0
1c006e2c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006e30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006e34:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c006e38:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006e1c <Key_main+0x290>
1c006e3c:	57c32bff 	bl	-15576(0xfffc328) # 1c003164 <SG90_Close>
1c006e40:	02802404 	addi.w	$r4,$r0,9(0x9)
1c006e44:	57f1b7ff 	bl	-3660(0xffff1b4) # 1c005ff8 <interface_display>
1c006e48:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c006e4c:	03bead8c 	ori	$r12,$r12,0xfab
1c006e50:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c006e54:	50001400 	b	20(0x14) # 1c006e68 <Key_main+0x2dc>
1c006e58:	03400000 	andi	$r0,$r0,0x0
1c006e5c:	03400000 	andi	$r0,$r0,0x0
1c006e60:	03400000 	andi	$r0,$r0,0x0
1c006e64:	03400000 	andi	$r0,$r0,0x0
1c006e68:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c006e6c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006e70:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c006e74:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006e58 <Key_main+0x2cc>
1c006e78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e7c:	02affd8c 	addi.w	$r12,$r12,-1025(0xbff)
1c006e80:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006e84:	2900018d 	st.b	$r13,$r12,0
1c006e88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006e8c:	02afb98c 	addi.w	$r12,$r12,-1042(0xbee)
1c006e90:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006e94:	2900018d 	st.b	$r13,$r12,0
1c006e98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e9c:	2886018c 	ld.w	$r12,$r12,384(0x180)
1c006ea0:	29400180 	st.h	$r0,$r12,0
1c006ea4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ea8:	2885918c 	ld.w	$r12,$r12,356(0x164)
1c006eac:	29400180 	st.h	$r0,$r12,0
1c006eb0:	50006800 	b	104(0x68) # 1c006f18 <Key_main+0x38c>
1c006eb4:	57d0d3ff 	bl	-12080(0xfffd0d0) # 1c003f84 <OLED_CLS>
1c006eb8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c006ebc:	57f13fff 	bl	-3780(0xffff13c) # 1c005ff8 <interface_display>
1c006ec0:	57cc7fff 	bl	-13188(0xfffcc7c) # 1c003b3c <Buzzer>
1c006ec4:	57c2a3ff 	bl	-15712(0xfffc2a0) # 1c003164 <SG90_Close>
1c006ec8:	1400556c 	lu12i.w	$r12,683(0x2ab)
1c006ecc:	03bead8c 	ori	$r12,$r12,0xfab
1c006ed0:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c006ed4:	50001400 	b	20(0x14) # 1c006ee8 <Key_main+0x35c>
1c006ed8:	03400000 	andi	$r0,$r0,0x0
1c006edc:	03400000 	andi	$r0,$r0,0x0
1c006ee0:	03400000 	andi	$r0,$r0,0x0
1c006ee4:	03400000 	andi	$r0,$r0,0x0
1c006ee8:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c006eec:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c006ef0:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c006ef4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c006ed8 <Key_main+0x34c>
1c006ef8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006efc:	2884818c 	ld.w	$r12,$r12,288(0x120)
1c006f00:	29400180 	st.h	$r0,$r12,0
1c006f04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006f08:	2884118c 	ld.w	$r12,$r12,260(0x104)
1c006f0c:	29400180 	st.h	$r0,$r12,0
1c006f10:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006f14:	57f0e7ff 	bl	-3868(0xffff0e4) # 1c005ff8 <interface_display>
1c006f18:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f1c:	028af58c 	addi.w	$r12,$r12,701(0x2bd)
1c006f20:	2a00018d 	ld.bu	$r13,$r12,0
1c006f24:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c006f28:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c006f88 <Key_main+0x3fc>
1c006f2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006f30:	2883b18c 	ld.w	$r12,$r12,236(0xec)
1c006f34:	29400180 	st.h	$r0,$r12,0
1c006f38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006f3c:	2883418c 	ld.w	$r12,$r12,208(0xd0)
1c006f40:	29400180 	st.h	$r0,$r12,0
1c006f44:	29bf22c0 	st.w	$r0,$r22,-56(0xfc8)
1c006f48:	50003400 	b	52(0x34) # 1c006f7c <Key_main+0x3f0>
1c006f4c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006f50:	00408d8c 	slli.w	$r12,$r12,0x3
1c006f54:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c006f58:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006f5c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f60:	0286c0c6 	addi.w	$r6,$r6,432(0x1b0)
1c006f64:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006f68:	00150184 	move	$r4,$r12
1c006f6c:	57d047ff 	bl	-12220(0xfffd044) # 1c003fb0 <OLED_ShowStr>
1c006f70:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006f74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f78:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c006f7c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c006f80:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006f84:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c006f4c <Key_main+0x3c0>
1c006f88:	03400000 	andi	$r0,$r0,0x0
1c006f8c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006f90:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006f94:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006f98:	4c000020 	jirl	$r0,$r1,0

1c006f9c <Key>:
Key():
1c006f9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006fa0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006fa4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006fa8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006fac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fb0:	0288a58c 	addi.w	$r12,$r12,553(0x229)
1c006fb4:	2a00018c 	ld.bu	$r12,$r12,0
1c006fb8:	40036580 	beqz	$r12,868(0x364) # 1c00731c <Key+0x380>
1c006fbc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fc0:	0288658c 	addi.w	$r12,$r12,537(0x219)
1c006fc4:	2a00018d 	ld.bu	$r13,$r12,0
1c006fc8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006fcc:	6801cd8d 	bltu	$r12,$r13,460(0x1cc) # 1c007198 <Key+0x1fc>
1c006fd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006fd4:	2880e18c 	ld.w	$r12,$r12,56(0x38)
1c006fd8:	2a40018d 	ld.hu	$r13,$r12,0
1c006fdc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006fe0:	68008d8d 	bltu	$r12,$r13,140(0x8c) # 1c00706c <Key+0xd0>
1c006fe4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006fe8:	2880d18c 	ld.w	$r12,$r12,52(0x34)
1c006fec:	2a40018d 	ld.hu	$r13,$r12,0
1c006ff0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006ff4:	001c31ac 	mul.w	$r12,$r13,$r12
1c006ff8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006ffc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007000:	2880718c 	ld.w	$r12,$r12,28(0x1c)
1c007004:	2940018d 	st.h	$r13,$r12,0
1c007008:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00700c:	0287358c 	addi.w	$r12,$r12,461(0x1cd)
1c007010:	2a00018d 	ld.bu	$r13,$r12,0
1c007014:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007018:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00701c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007024 <Key+0x88>
1c007020:	002a0007 	break	0x7
1c007024:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c007028:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00702c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007030:	28bfb18c 	ld.w	$r12,$r12,-20(0xfec)
1c007034:	2a40018c 	ld.hu	$r12,$r12,0
1c007038:	001031ac 	add.w	$r12,$r13,$r12
1c00703c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c007040:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007044:	28bf618c 	ld.w	$r12,$r12,-40(0xfd8)
1c007048:	2940018d 	st.h	$r13,$r12,0
1c00704c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007050:	28bef18c 	ld.w	$r12,$r12,-68(0xfbc)
1c007054:	2a40018c 	ld.hu	$r12,$r12,0
1c007058:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00705c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c007060:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007064:	28bea18c 	ld.w	$r12,$r12,-88(0xfa8)
1c007068:	2940018d 	st.h	$r13,$r12,0
1c00706c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007070:	28beb18c 	ld.w	$r12,$r12,-84(0xfac)
1c007074:	2a40018c 	ld.hu	$r12,$r12,0
1c007078:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00707c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007080:	28be318c 	ld.w	$r12,$r12,-116(0xf8c)
1c007084:	2a40018c 	ld.hu	$r12,$r12,0
1c007088:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00708c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007090:	50006c00 	b	108(0x6c) # 1c0070fc <Key+0x160>
1c007094:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c007098:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00709c:	0020b5cc 	mod.w	$r12,$r14,$r13
1c0070a0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0070a8 <Key+0x10c>
1c0070a4:	002a0007 	break	0x7
1c0070a8:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0070ac:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0070b0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0070b4:	002035cc 	div.w	$r12,$r14,$r13
1c0070b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0070c0 <Key+0x124>
1c0070bc:	002a0007 	break	0x7
1c0070c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0070c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0070c8:	00408d8c 	slli.w	$r12,$r12,0x3
1c0070cc:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0070d0:	0015018d 	move	$r13,$r12
1c0070d4:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0070d8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0070dc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c0070e0:	00150186 	move	$r6,$r12
1c0070e4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0070e8:	001501a4 	move	$r4,$r13
1c0070ec:	57d533ff 	bl	-10960(0xfffd530) # 1c00461c <OLED_ShowNum>
1c0070f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0070f4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0070f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0070fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007100:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007094 <Key+0xf8>
1c007104:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007108:	03bf918c 	ori	$r12,$r12,0xfe4
1c00710c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c007110:	50001400 	b	20(0x14) # 1c007124 <Key+0x188>
1c007114:	03400000 	andi	$r0,$r0,0x0
1c007118:	03400000 	andi	$r0,$r0,0x0
1c00711c:	03400000 	andi	$r0,$r0,0x0
1c007120:	03400000 	andi	$r0,$r0,0x0
1c007124:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c007128:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00712c:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c007130:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007114 <Key+0x178>
1c007134:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c007138:	50004800 	b	72(0x48) # 1c007180 <Key+0x1e4>
1c00713c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007140:	28bb318c 	ld.w	$r12,$r12,-308(0xecc)
1c007144:	2a40018c 	ld.hu	$r12,$r12,0
1c007148:	0015018d 	move	$r13,$r12
1c00714c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007150:	001131ac 	sub.w	$r12,$r13,$r12
1c007154:	00408d8c 	slli.w	$r12,$r12,0x3
1c007158:	0280958c 	addi.w	$r12,$r12,37(0x25)
1c00715c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007160:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007164:	02bea0c6 	addi.w	$r6,$r6,-88(0xfa8)
1c007168:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00716c:	00150184 	move	$r4,$r12
1c007170:	57ce43ff 	bl	-12736(0xfffce40) # 1c003fb0 <OLED_ShowStr>
1c007174:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007178:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00717c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007180:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007184:	28ba218c 	ld.w	$r12,$r12,-376(0xe88)
1c007188:	2a40018c 	ld.hu	$r12,$r12,0
1c00718c:	0015018d 	move	$r13,$r12
1c007190:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c007194:	63ffa98d 	blt	$r12,$r13,-88(0x3ffa8) # 1c00713c <Key+0x1a0>
1c007198:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00719c:	0280f58c 	addi.w	$r12,$r12,61(0x3d)
1c0071a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0071a4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0071a8:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c0072ac <Key+0x310>
1c0071ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071b0:	28b9b18c 	ld.w	$r12,$r12,-404(0xe6c)
1c0071b4:	2a40018d 	ld.hu	$r13,$r12,0
1c0071b8:	02915c0c 	addi.w	$r12,$r0,1111(0x457)
1c0071bc:	5c0079ac 	bne	$r13,$r12,120(0x78) # 1c007234 <Key+0x298>
1c0071c0:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0071c4:	57ee37ff 	bl	-4556(0xfffee34) # 1c005ff8 <interface_display>
1c0071c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0071cc:	02a2b98c 	addi.w	$r12,$r12,-1874(0x8ae)
1c0071d0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0071d4:	2900018d 	st.b	$r13,$r12,0
1c0071d8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0071dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0071e0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0071e4:	2900018d 	st.b	$r13,$r12,0
1c0071e8:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c0071ec:	03bf918c 	ori	$r12,$r12,0xfe4
1c0071f0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0071f4:	50001400 	b	20(0x14) # 1c007208 <Key+0x26c>
1c0071f8:	03400000 	andi	$r0,$r0,0x0
1c0071fc:	03400000 	andi	$r0,$r0,0x0
1c007200:	03400000 	andi	$r0,$r0,0x0
1c007204:	03400000 	andi	$r0,$r0,0x0
1c007208:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00720c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007210:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c007214:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0071f8 <Key+0x25c>
1c007218:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00721c:	28b8018c 	ld.w	$r12,$r12,-512(0xe00)
1c007220:	29400180 	st.h	$r0,$r12,0
1c007224:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007228:	28b7918c 	ld.w	$r12,$r12,-540(0xde4)
1c00722c:	29400180 	st.h	$r0,$r12,0
1c007230:	50007c00 	b	124(0x7c) # 1c0072ac <Key+0x310>
1c007234:	57cd53ff 	bl	-12976(0xfffcd50) # 1c003f84 <OLED_CLS>
1c007238:	02801804 	addi.w	$r4,$r0,6(0x6)
1c00723c:	57edbfff 	bl	-4676(0xfffedbc) # 1c005ff8 <interface_display>
1c007240:	57c8ffff 	bl	-14084(0xfffc8fc) # 1c003b3c <Buzzer>
1c007244:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007248:	03bf918c 	ori	$r12,$r12,0xfe4
1c00724c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c007250:	50001400 	b	20(0x14) # 1c007264 <Key+0x2c8>
1c007254:	03400000 	andi	$r0,$r0,0x0
1c007258:	03400000 	andi	$r0,$r0,0x0
1c00725c:	03400000 	andi	$r0,$r0,0x0
1c007260:	03400000 	andi	$r0,$r0,0x0
1c007264:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c007268:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00726c:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c007270:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007254 <Key+0x2b8>
1c007274:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c007278:	02a0098c 	addi.w	$r12,$r12,-2046(0x802)
1c00727c:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007280:	2900018d 	st.b	$r13,$r12,0
1c007284:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007288:	02bd618c 	addi.w	$r12,$r12,-168(0xf58)
1c00728c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007290:	2900018d 	st.b	$r13,$r12,0
1c007294:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007298:	28b6118c 	ld.w	$r12,$r12,-636(0xd84)
1c00729c:	29400180 	st.h	$r0,$r12,0
1c0072a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072a4:	28b5a18c 	ld.w	$r12,$r12,-664(0xd68)
1c0072a8:	29400180 	st.h	$r0,$r12,0
1c0072ac:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0072b0:	02bca58c 	addi.w	$r12,$r12,-215(0xf29)
1c0072b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0072b8:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c0072bc:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00731c <Key+0x380>
1c0072c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072c4:	28b5618c 	ld.w	$r12,$r12,-680(0xd58)
1c0072c8:	29400180 	st.h	$r0,$r12,0
1c0072cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072d0:	28b4f18c 	ld.w	$r12,$r12,-708(0xd3c)
1c0072d4:	29400180 	st.h	$r0,$r12,0
1c0072d8:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c0072dc:	50003400 	b	52(0x34) # 1c007310 <Key+0x374>
1c0072e0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0072e4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0072e8:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0072ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0072f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0072f4:	02b870c6 	addi.w	$r6,$r6,-484(0xe1c)
1c0072f8:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0072fc:	00150184 	move	$r4,$r12
1c007300:	57ccb3ff 	bl	-13136(0xfffccb0) # 1c003fb0 <OLED_ShowStr>
1c007304:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c007308:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00730c:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c007310:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c007314:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007318:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0072e0 <Key+0x344>
1c00731c:	03400000 	andi	$r0,$r0,0x0
1c007320:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007324:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007328:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00732c:	4c000020 	jirl	$r0,$r1,0

1c007330 <Add_Key>:
Add_Key():
1c007330:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c007334:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c007338:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00733c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c007340:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007344:	02ba558c 	addi.w	$r12,$r12,-363(0xe95)
1c007348:	2a00018c 	ld.bu	$r12,$r12,0
1c00734c:	4002ad80 	beqz	$r12,684(0x2ac) # 1c0075f8 <Add_Key+0x2c8>
1c007350:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007354:	02ba158c 	addi.w	$r12,$r12,-379(0xe85)
1c007358:	2a00018d 	ld.bu	$r13,$r12,0
1c00735c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007360:	6801398d 	bltu	$r12,$r13,312(0x138) # 1c007498 <Add_Key+0x168>
1c007364:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007368:	28b2918c 	ld.w	$r12,$r12,-860(0xca4)
1c00736c:	2a40018d 	ld.hu	$r13,$r12,0
1c007370:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007374:	68008d8d 	bltu	$r12,$r13,140(0x8c) # 1c007400 <Add_Key+0xd0>
1c007378:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00737c:	28b2818c 	ld.w	$r12,$r12,-864(0xca0)
1c007380:	2a40018d 	ld.hu	$r13,$r12,0
1c007384:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007388:	001c31ac 	mul.w	$r12,$r13,$r12
1c00738c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c007390:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007394:	28b2218c 	ld.w	$r12,$r12,-888(0xc88)
1c007398:	2940018d 	st.h	$r13,$r12,0
1c00739c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0073a0:	02b8e58c 	addi.w	$r12,$r12,-455(0xe39)
1c0073a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0073a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0073ac:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0073b0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0073b8 <Add_Key+0x88>
1c0073b4:	002a0007 	break	0x7
1c0073b8:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0073bc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0073c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073c4:	28b1618c 	ld.w	$r12,$r12,-936(0xc58)
1c0073c8:	2a40018c 	ld.hu	$r12,$r12,0
1c0073cc:	001031ac 	add.w	$r12,$r13,$r12
1c0073d0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0073d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073d8:	28b1118c 	ld.w	$r12,$r12,-956(0xc44)
1c0073dc:	2940018d 	st.h	$r13,$r12,0
1c0073e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073e4:	28b0a18c 	ld.w	$r12,$r12,-984(0xc28)
1c0073e8:	2a40018c 	ld.hu	$r12,$r12,0
1c0073ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0073f0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0073f4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073f8:	28b0518c 	ld.w	$r12,$r12,-1004(0xc14)
1c0073fc:	2940018d 	st.h	$r13,$r12,0
1c007400:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007404:	28b0618c 	ld.w	$r12,$r12,-1000(0xc18)
1c007408:	2a40018c 	ld.hu	$r12,$r12,0
1c00740c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007410:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007414:	28afe18c 	ld.w	$r12,$r12,-1032(0xbf8)
1c007418:	2a40018c 	ld.hu	$r12,$r12,0
1c00741c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007420:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007424:	50006c00 	b	108(0x6c) # 1c007490 <Add_Key+0x160>
1c007428:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00742c:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007430:	0020b5cc 	mod.w	$r12,$r14,$r13
1c007434:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00743c <Add_Key+0x10c>
1c007438:	002a0007 	break	0x7
1c00743c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c007440:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c007444:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c007448:	002035cc 	div.w	$r12,$r14,$r13
1c00744c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c007454 <Add_Key+0x124>
1c007450:	002a0007 	break	0x7
1c007454:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007458:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00745c:	00408d8c 	slli.w	$r12,$r12,0x3
1c007460:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c007464:	0015018d 	move	$r13,$r12
1c007468:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00746c:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007470:	02800407 	addi.w	$r7,$r0,1(0x1)
1c007474:	00150186 	move	$r6,$r12
1c007478:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c00747c:	001501a4 	move	$r4,$r13
1c007480:	57d19fff 	bl	-11876(0xfffd19c) # 1c00461c <OLED_ShowNum>
1c007484:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007488:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00748c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c007490:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007494:	67ff9580 	bge	$r12,$r0,-108(0x3ff94) # 1c007428 <Add_Key+0xf8>
1c007498:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00749c:	02b4f58c 	addi.w	$r12,$r12,-707(0xd3d)
1c0074a0:	2a00018d 	ld.bu	$r13,$r12,0
1c0074a4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0074a8:	5c00e1ac 	bne	$r13,$r12,224(0xe0) # 1c007588 <Add_Key+0x258>
1c0074ac:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0074b0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0074b4:	50004400 	b	68(0x44) # 1c0074f8 <Add_Key+0x1c8>
1c0074b8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0074bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0074c0:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c0074c4:	029681ad 	addi.w	$r13,$r13,1440(0x5a0)
1c0074c8:	0040858c 	slli.w	$r12,$r12,0x1
1c0074cc:	001031ac 	add.w	$r12,$r13,$r12
1c0074d0:	2a40018d 	ld.hu	$r13,$r12,0
1c0074d4:	1cc7ff4e 	pcaddu12i	$r14,409594(0x63ffa)
1c0074d8:	029631ce 	addi.w	$r14,$r14,1420(0x58c)
1c0074dc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0074e0:	0040858c 	slli.w	$r12,$r12,0x1
1c0074e4:	001031cc 	add.w	$r12,$r14,$r12
1c0074e8:	2940018d 	st.h	$r13,$r12,0
1c0074ec:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0074f0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0074f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0074f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0074fc:	63ffbc0c 	blt	$r0,$r12,-68(0x3ffbc) # 1c0074b8 <Add_Key+0x188>
1c007500:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007504:	28ac618c 	ld.w	$r12,$r12,-1256(0xb18)
1c007508:	2a40018d 	ld.hu	$r13,$r12,0
1c00750c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007510:	0295518c 	addi.w	$r12,$r12,1364(0x554)
1c007514:	2940018d 	st.h	$r13,$r12,0
1c007518:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00751c:	28ac018c 	ld.w	$r12,$r12,-1280(0xb00)
1c007520:	29400180 	st.h	$r0,$r12,0
1c007524:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007528:	28ab918c 	ld.w	$r12,$r12,-1308(0xae4)
1c00752c:	29400180 	st.h	$r0,$r12,0
1c007530:	02803c04 	addi.w	$r4,$r0,15(0xf)
1c007534:	57eac7ff 	bl	-5436(0xfffeac4) # 1c005ff8 <interface_display>
1c007538:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c00753c:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c007540:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c007544:	50001400 	b	20(0x14) # 1c007558 <Add_Key+0x228>
1c007548:	03400000 	andi	$r0,$r0,0x0
1c00754c:	03400000 	andi	$r0,$r0,0x0
1c007550:	03400000 	andi	$r0,$r0,0x0
1c007554:	03400000 	andi	$r0,$r0,0x0
1c007558:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00755c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007560:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c007564:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007548 <Add_Key+0x218>
1c007568:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00756c:	0294398c 	addi.w	$r12,$r12,1294(0x50e)
1c007570:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c007574:	2900018d 	st.b	$r13,$r12,0
1c007578:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00757c:	02b18d8c 	addi.w	$r12,$r12,-925(0xc63)
1c007580:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007584:	2900018d 	st.b	$r13,$r12,0
1c007588:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00758c:	02b1358c 	addi.w	$r12,$r12,-947(0xc4d)
1c007590:	2a00018d 	ld.bu	$r13,$r12,0
1c007594:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c007598:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c0075f8 <Add_Key+0x2c8>
1c00759c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075a0:	28a9f18c 	ld.w	$r12,$r12,-1412(0xa7c)
1c0075a4:	29400180 	st.h	$r0,$r12,0
1c0075a8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075ac:	28a9818c 	ld.w	$r12,$r12,-1440(0xa60)
1c0075b0:	29400180 	st.h	$r0,$r12,0
1c0075b4:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0075b8:	50003400 	b	52(0x34) # 1c0075ec <Add_Key+0x2bc>
1c0075bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0075c0:	00408d8c 	slli.w	$r12,$r12,0x3
1c0075c4:	0280b58c 	addi.w	$r12,$r12,45(0x2d)
1c0075c8:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0075cc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0075d0:	02ad00c6 	addi.w	$r6,$r6,-1216(0xb40)
1c0075d4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0075d8:	00150184 	move	$r4,$r12
1c0075dc:	57c9d7ff 	bl	-13868(0xfffc9d4) # 1c003fb0 <OLED_ShowStr>
1c0075e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0075e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0075e8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0075ec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0075f0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0075f4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0075bc <Add_Key+0x28c>
1c0075f8:	03400000 	andi	$r0,$r0,0x0
1c0075fc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c007600:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c007604:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c007608:	4c000020 	jirl	$r0,$r1,0

1c00760c <Delete_key>:
Delete_key():
1c00760c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007610:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007614:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007618:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00761c:	50002800 	b	40(0x28) # 1c007644 <Delete_key+0x38>
1c007620:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c007624:	029101ad 	addi.w	$r13,$r13,1088(0x440)
1c007628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00762c:	0040858c 	slli.w	$r12,$r12,0x1
1c007630:	001031ac 	add.w	$r12,$r13,$r12
1c007634:	29400180 	st.h	$r0,$r12,0
1c007638:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00763c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007640:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007644:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007648:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00764c:	67ffd58d 	bge	$r12,$r13,-44(0x3ffd4) # 1c007620 <Delete_key+0x14>
1c007650:	14001c6c 	lu12i.w	$r12,227(0xe3)
1c007654:	03bf918c 	ori	$r12,$r12,0xfe4
1c007658:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00765c:	50001400 	b	20(0x14) # 1c007670 <Delete_key+0x64>
1c007660:	03400000 	andi	$r0,$r0,0x0
1c007664:	03400000 	andi	$r0,$r0,0x0
1c007668:	03400000 	andi	$r0,$r0,0x0
1c00766c:	03400000 	andi	$r0,$r0,0x0
1c007670:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c007674:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c007678:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c00767c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c007660 <Delete_key+0x54>
1c007680:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007684:	028fd98c 	addi.w	$r12,$r12,1014(0x3f6)
1c007688:	02801c0d 	addi.w	$r13,$r0,7(0x7)
1c00768c:	2900018d 	st.b	$r13,$r12,0
1c007690:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007694:	02ad2d8c 	addi.w	$r12,$r12,-1205(0xb4b)
1c007698:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00769c:	2900018d 	st.b	$r13,$r12,0
1c0076a0:	03400000 	andi	$r0,$r0,0x0
1c0076a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0076a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0076ac:	4c000020 	jirl	$r0,$r1,0

1c0076b0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c0076b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0076b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0076b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0076bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0076c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0076c4:	02b1a0c6 	addi.w	$r6,$r6,-920(0xc68)
1c0076c8:	02805005 	addi.w	$r5,$r0,20(0x14)
1c0076cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0076d0:	02aa7084 	addi.w	$r4,$r4,-1380(0xa9c)
1c0076d4:	579ce3ff 	bl	-25376(0xfff9ce0) # 1c0013b4 <myprintf>
1c0076d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0076dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0076e0:	03808184 	ori	$r4,$r12,0x20
1c0076e4:	579a8bff 	bl	-25976(0xfff9a88) # 1c00116c <EXTI_ClearITPendingBit>
1c0076e8:	03400000 	andi	$r0,$r0,0x0
1c0076ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0076f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0076f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0076f8:	4c000020 	jirl	$r0,$r1,0

1c0076fc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0076fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007700:	29803061 	st.w	$r1,$r3,12(0xc)
1c007704:	29802076 	st.w	$r22,$r3,8(0x8)
1c007708:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00770c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007710:	02b0d0c6 	addi.w	$r6,$r6,-972(0xc34)
1c007714:	02806405 	addi.w	$r5,$r0,25(0x19)
1c007718:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00771c:	02a94084 	addi.w	$r4,$r4,-1456(0xa50)
1c007720:	579c97ff 	bl	-25452(0xfff9c94) # 1c0013b4 <myprintf>
1c007724:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00772c:	03808184 	ori	$r4,$r12,0x20
1c007730:	579a3fff 	bl	-26052(0xfff9a3c) # 1c00116c <EXTI_ClearITPendingBit>
1c007734:	03400000 	andi	$r0,$r0,0x0
1c007738:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00773c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007740:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007744:	4c000020 	jirl	$r0,$r1,0

1c007748 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c007748:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00774c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007750:	29802076 	st.w	$r22,$r3,8(0x8)
1c007754:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007758:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00775c:	02b000c6 	addi.w	$r6,$r6,-1024(0xc00)
1c007760:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c007764:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007768:	02a81084 	addi.w	$r4,$r4,-1532(0xa04)
1c00776c:	579c4bff 	bl	-25528(0xfff9c48) # 1c0013b4 <myprintf>
1c007770:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007774:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007778:	03808184 	ori	$r4,$r12,0x20
1c00777c:	5799f3ff 	bl	-26128(0xfff99f0) # 1c00116c <EXTI_ClearITPendingBit>
1c007780:	03400000 	andi	$r0,$r0,0x0
1c007784:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007788:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00778c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007790:	4c000020 	jirl	$r0,$r1,0

1c007794 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c007794:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007798:	29803061 	st.w	$r1,$r3,12(0xc)
1c00779c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0077a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0077a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0077a8:	02af30c6 	addi.w	$r6,$r6,-1076(0xbcc)
1c0077ac:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c0077b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0077b4:	02a6e084 	addi.w	$r4,$r4,-1608(0x9b8)
1c0077b8:	579bffff 	bl	-25604(0xfff9bfc) # 1c0013b4 <myprintf>
1c0077bc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0077c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077c4:	03808184 	ori	$r4,$r12,0x20
1c0077c8:	5799a7ff 	bl	-26204(0xfff99a4) # 1c00116c <EXTI_ClearITPendingBit>
1c0077cc:	03400000 	andi	$r0,$r0,0x0
1c0077d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0077d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0077d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0077dc:	4c000020 	jirl	$r0,$r1,0

1c0077e0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0077e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0077e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0077e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0077ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0077f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0077f4:	02ae60c6 	addi.w	$r6,$r6,-1128(0xb98)
1c0077f8:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0077fc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007800:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c007804:	579bb3ff 	bl	-25680(0xfff9bb0) # 1c0013b4 <myprintf>
1c007808:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00780c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007810:	03808184 	ori	$r4,$r12,0x20
1c007814:	57995bff 	bl	-26280(0xfff9958) # 1c00116c <EXTI_ClearITPendingBit>
1c007818:	03400000 	andi	$r0,$r0,0x0
1c00781c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007820:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007824:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007828:	4c000020 	jirl	$r0,$r1,0

1c00782c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00782c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007830:	29803061 	st.w	$r1,$r3,12(0xc)
1c007834:	29802076 	st.w	$r22,$r3,8(0x8)
1c007838:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00783c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007840:	02ad90c6 	addi.w	$r6,$r6,-1180(0xb64)
1c007844:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c007848:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00784c:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c007850:	579b67ff 	bl	-25756(0xfff9b64) # 1c0013b4 <myprintf>
1c007854:	02808005 	addi.w	$r5,$r0,32(0x20)
1c007858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00785c:	03808184 	ori	$r4,$r12,0x20
1c007860:	57990fff 	bl	-26356(0xfff990c) # 1c00116c <EXTI_ClearITPendingBit>
1c007864:	03400000 	andi	$r0,$r0,0x0
1c007868:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00786c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007870:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007874:	4c000020 	jirl	$r0,$r1,0

1c007878 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c007878:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00787c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007880:	29802076 	st.w	$r22,$r3,8(0x8)
1c007884:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007888:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00788c:	02acc0c6 	addi.w	$r6,$r6,-1232(0xb30)
1c007890:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c007894:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007898:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c00789c:	579b1bff 	bl	-25832(0xfff9b18) # 1c0013b4 <myprintf>
1c0078a0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0078a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078a8:	03808184 	ori	$r4,$r12,0x20
1c0078ac:	5798c3ff 	bl	-26432(0xfff98c0) # 1c00116c <EXTI_ClearITPendingBit>
1c0078b0:	03400000 	andi	$r0,$r0,0x0
1c0078b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0078b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0078bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0078c0:	4c000020 	jirl	$r0,$r1,0

1c0078c4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0078c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0078c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0078cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0078d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0078d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0078d8:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c0078dc:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c0078e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0078e4:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c0078e8:	579acfff 	bl	-25908(0xfff9acc) # 1c0013b4 <myprintf>
1c0078ec:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0078f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078f4:	03808184 	ori	$r4,$r12,0x20
1c0078f8:	579877ff 	bl	-26508(0xfff9874) # 1c00116c <EXTI_ClearITPendingBit>
1c0078fc:	03400000 	andi	$r0,$r0,0x0
1c007900:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007904:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007908:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00790c:	4c000020 	jirl	$r0,$r1,0

1c007910 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c007910:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007914:	29803061 	st.w	$r1,$r3,12(0xc)
1c007918:	29802076 	st.w	$r22,$r3,8(0x8)
1c00791c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007920:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007924:	02ab20c6 	addi.w	$r6,$r6,-1336(0xac8)
1c007928:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c00792c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007930:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c007934:	579a83ff 	bl	-25984(0xfff9a80) # 1c0013b4 <myprintf>
1c007938:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00793c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007940:	03808184 	ori	$r4,$r12,0x20
1c007944:	57982bff 	bl	-26584(0xfff9828) # 1c00116c <EXTI_ClearITPendingBit>
1c007948:	03400000 	andi	$r0,$r0,0x0
1c00794c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007950:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007954:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007958:	4c000020 	jirl	$r0,$r1,0

1c00795c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00795c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007960:	29803061 	st.w	$r1,$r3,12(0xc)
1c007964:	29802076 	st.w	$r22,$r3,8(0x8)
1c007968:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00796c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007970:	02aa50c6 	addi.w	$r6,$r6,-1388(0xa94)
1c007974:	02810c05 	addi.w	$r5,$r0,67(0x43)
1c007978:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00797c:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c007980:	579a37ff 	bl	-26060(0xfff9a34) # 1c0013b4 <myprintf>
1c007984:	02880005 	addi.w	$r5,$r0,512(0x200)
1c007988:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00798c:	03808184 	ori	$r4,$r12,0x20
1c007990:	5797dfff 	bl	-26660(0xfff97dc) # 1c00116c <EXTI_ClearITPendingBit>
1c007994:	03400000 	andi	$r0,$r0,0x0
1c007998:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00799c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0079a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0079a4:	4c000020 	jirl	$r0,$r1,0

1c0079a8 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0079a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0079ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0079b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0079b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0079b8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0079bc:	02a980c6 	addi.w	$r6,$r6,-1440(0xa60)
1c0079c0:	02812405 	addi.w	$r5,$r0,73(0x49)
1c0079c4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0079c8:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c0079cc:	5799ebff 	bl	-26136(0xfff99e8) # 1c0013b4 <myprintf>
1c0079d0:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0079d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0079d8:	03808184 	ori	$r4,$r12,0x20
1c0079dc:	579793ff 	bl	-26736(0xfff9790) # 1c00116c <EXTI_ClearITPendingBit>
1c0079e0:	03400000 	andi	$r0,$r0,0x0
1c0079e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0079e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0079ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0079f0:	4c000020 	jirl	$r0,$r1,0

1c0079f4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0079f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0079f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0079fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c007a00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007a04:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007a08:	02a8b0c6 	addi.w	$r6,$r6,-1492(0xa2c)
1c007a0c:	02813c05 	addi.w	$r5,$r0,79(0x4f)
1c007a10:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007a14:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c007a18:	57999fff 	bl	-26212(0xfff999c) # 1c0013b4 <myprintf>
1c007a1c:	03a00005 	ori	$r5,$r0,0x800
1c007a20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a24:	03808184 	ori	$r4,$r12,0x20
1c007a28:	579747ff 	bl	-26812(0xfff9744) # 1c00116c <EXTI_ClearITPendingBit>
1c007a2c:	03400000 	andi	$r0,$r0,0x0
1c007a30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007a34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007a38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007a3c:	4c000020 	jirl	$r0,$r1,0

1c007a40 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c007a40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007a44:	29803061 	st.w	$r1,$r3,12(0xc)
1c007a48:	29802076 	st.w	$r22,$r3,8(0x8)
1c007a4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007a50:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007a54:	02a7e0c6 	addi.w	$r6,$r6,-1544(0x9f8)
1c007a58:	02815005 	addi.w	$r5,$r0,84(0x54)
1c007a5c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007a60:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c007a64:	579953ff 	bl	-26288(0xfff9950) # 1c0013b4 <myprintf>
1c007a68:	14000025 	lu12i.w	$r5,1(0x1)
1c007a6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a70:	03808184 	ori	$r4,$r12,0x20
1c007a74:	5796fbff 	bl	-26888(0xfff96f8) # 1c00116c <EXTI_ClearITPendingBit>
1c007a78:	03400000 	andi	$r0,$r0,0x0
1c007a7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007a80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007a84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007a88:	4c000020 	jirl	$r0,$r1,0

1c007a8c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c007a8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007a90:	29803061 	st.w	$r1,$r3,12(0xc)
1c007a94:	29802076 	st.w	$r22,$r3,8(0x8)
1c007a98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007a9c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007aa0:	02a710c6 	addi.w	$r6,$r6,-1596(0x9c4)
1c007aa4:	02816405 	addi.w	$r5,$r0,89(0x59)
1c007aa8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007aac:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c007ab0:	579907ff 	bl	-26364(0xfff9904) # 1c0013b4 <myprintf>
1c007ab4:	14000045 	lu12i.w	$r5,2(0x2)
1c007ab8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007abc:	03808184 	ori	$r4,$r12,0x20
1c007ac0:	5796afff 	bl	-26964(0xfff96ac) # 1c00116c <EXTI_ClearITPendingBit>
1c007ac4:	03400000 	andi	$r0,$r0,0x0
1c007ac8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007acc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007ad0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007ad4:	4c000020 	jirl	$r0,$r1,0

1c007ad8 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c007ad8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007adc:	29803061 	st.w	$r1,$r3,12(0xc)
1c007ae0:	29802076 	st.w	$r22,$r3,8(0x8)
1c007ae4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ae8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007aec:	02a640c6 	addi.w	$r6,$r6,-1648(0x990)
1c007af0:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c007af4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007af8:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c007afc:	5798bbff 	bl	-26440(0xfff98b8) # 1c0013b4 <myprintf>
1c007b00:	14000085 	lu12i.w	$r5,4(0x4)
1c007b04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007b08:	03808184 	ori	$r4,$r12,0x20
1c007b0c:	579663ff 	bl	-27040(0xfff9660) # 1c00116c <EXTI_ClearITPendingBit>
1c007b10:	03400000 	andi	$r0,$r0,0x0
1c007b14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007b18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007b1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007b20:	4c000020 	jirl	$r0,$r1,0

1c007b24 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c007b24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007b28:	29803061 	st.w	$r1,$r3,12(0xc)
1c007b2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007b30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007b34:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007b38:	02a570c6 	addi.w	$r6,$r6,-1700(0x95c)
1c007b3c:	02819405 	addi.w	$r5,$r0,101(0x65)
1c007b40:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007b44:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c007b48:	57986fff 	bl	-26516(0xfff986c) # 1c0013b4 <myprintf>
1c007b4c:	14000105 	lu12i.w	$r5,8(0x8)
1c007b50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007b54:	03808184 	ori	$r4,$r12,0x20
1c007b58:	579617ff 	bl	-27116(0xfff9614) # 1c00116c <EXTI_ClearITPendingBit>
1c007b5c:	03400000 	andi	$r0,$r0,0x0
1c007b60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007b64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007b68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007b6c:	4c000020 	jirl	$r0,$r1,0

1c007b70 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c007b70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007b74:	29803061 	st.w	$r1,$r3,12(0xc)
1c007b78:	29802076 	st.w	$r22,$r3,8(0x8)
1c007b7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007b80:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007b84:	02a4a0c6 	addi.w	$r6,$r6,-1752(0x928)
1c007b88:	0281b005 	addi.w	$r5,$r0,108(0x6c)
1c007b8c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007b90:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c007b94:	579823ff 	bl	-26592(0xfff9820) # 1c0013b4 <myprintf>
1c007b98:	14000205 	lu12i.w	$r5,16(0x10)
1c007b9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007ba0:	03808184 	ori	$r4,$r12,0x20
1c007ba4:	5795cbff 	bl	-27192(0xfff95c8) # 1c00116c <EXTI_ClearITPendingBit>
1c007ba8:	03400000 	andi	$r0,$r0,0x0
1c007bac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007bb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007bb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007bb8:	4c000020 	jirl	$r0,$r1,0

1c007bbc <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c007bbc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007bc0:	29803061 	st.w	$r1,$r3,12(0xc)
1c007bc4:	29802076 	st.w	$r22,$r3,8(0x8)
1c007bc8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007bcc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007bd0:	02a3d0c6 	addi.w	$r6,$r6,-1804(0x8f4)
1c007bd4:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c007bd8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007bdc:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c007be0:	5797d7ff 	bl	-26668(0xfff97d4) # 1c0013b4 <myprintf>
1c007be4:	14000405 	lu12i.w	$r5,32(0x20)
1c007be8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007bec:	03808184 	ori	$r4,$r12,0x20
1c007bf0:	57957fff 	bl	-27268(0xfff957c) # 1c00116c <EXTI_ClearITPendingBit>
1c007bf4:	03400000 	andi	$r0,$r0,0x0
1c007bf8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007bfc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c04:	4c000020 	jirl	$r0,$r1,0

1c007c08 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c007c08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007c0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007c10:	29802076 	st.w	$r22,$r3,8(0x8)
1c007c14:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c18:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007c1c:	02a300c6 	addi.w	$r6,$r6,-1856(0x8c0)
1c007c20:	0281e005 	addi.w	$r5,$r0,120(0x78)
1c007c24:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007c28:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c007c2c:	57978bff 	bl	-26744(0xfff9788) # 1c0013b4 <myprintf>
1c007c30:	14000805 	lu12i.w	$r5,64(0x40)
1c007c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007c38:	03808184 	ori	$r4,$r12,0x20
1c007c3c:	579533ff 	bl	-27344(0xfff9530) # 1c00116c <EXTI_ClearITPendingBit>
1c007c40:	03400000 	andi	$r0,$r0,0x0
1c007c44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007c48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c50:	4c000020 	jirl	$r0,$r1,0

1c007c54 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c007c54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007c58:	29803061 	st.w	$r1,$r3,12(0xc)
1c007c5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007c60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c64:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007c68:	02a230c6 	addi.w	$r6,$r6,-1908(0x88c)
1c007c6c:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c007c70:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007c74:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c007c78:	57973fff 	bl	-26820(0xfff973c) # 1c0013b4 <myprintf>
1c007c7c:	14001005 	lu12i.w	$r5,128(0x80)
1c007c80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007c84:	03808184 	ori	$r4,$r12,0x20
1c007c88:	5794e7ff 	bl	-27420(0xfff94e4) # 1c00116c <EXTI_ClearITPendingBit>
1c007c8c:	03400000 	andi	$r0,$r0,0x0
1c007c90:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007c94:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c98:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c9c:	4c000020 	jirl	$r0,$r1,0

1c007ca0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c007ca0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007ca4:	29803061 	st.w	$r1,$r3,12(0xc)
1c007ca8:	29802076 	st.w	$r22,$r3,8(0x8)
1c007cac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007cb0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007cb4:	02a160c6 	addi.w	$r6,$r6,-1960(0x858)
1c007cb8:	02821005 	addi.w	$r5,$r0,132(0x84)
1c007cbc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007cc0:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c007cc4:	5796f3ff 	bl	-26896(0xfff96f0) # 1c0013b4 <myprintf>
1c007cc8:	14002005 	lu12i.w	$r5,256(0x100)
1c007ccc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007cd0:	03808184 	ori	$r4,$r12,0x20
1c007cd4:	57949bff 	bl	-27496(0xfff9498) # 1c00116c <EXTI_ClearITPendingBit>
1c007cd8:	03400000 	andi	$r0,$r0,0x0
1c007cdc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007ce0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007ce4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007ce8:	4c000020 	jirl	$r0,$r1,0

1c007cec <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c007cec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007cf0:	29803061 	st.w	$r1,$r3,12(0xc)
1c007cf4:	29802076 	st.w	$r22,$r3,8(0x8)
1c007cf8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007cfc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007d00:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c007d04:	02822405 	addi.w	$r5,$r0,137(0x89)
1c007d08:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007d0c:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c007d10:	5796a7ff 	bl	-26972(0xfff96a4) # 1c0013b4 <myprintf>
1c007d14:	14004005 	lu12i.w	$r5,512(0x200)
1c007d18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007d1c:	03808184 	ori	$r4,$r12,0x20
1c007d20:	57944fff 	bl	-27572(0xfff944c) # 1c00116c <EXTI_ClearITPendingBit>
1c007d24:	03400000 	andi	$r0,$r0,0x0
1c007d28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007d2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007d30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007d34:	4c000020 	jirl	$r0,$r1,0

1c007d38 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c007d38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007d3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007d40:	29802076 	st.w	$r22,$r3,8(0x8)
1c007d44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007d48:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007d4c:	029fc0c6 	addi.w	$r6,$r6,2032(0x7f0)
1c007d50:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c007d54:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007d58:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c007d5c:	57965bff 	bl	-27048(0xfff9658) # 1c0013b4 <myprintf>
1c007d60:	14008005 	lu12i.w	$r5,1024(0x400)
1c007d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007d68:	03808184 	ori	$r4,$r12,0x20
1c007d6c:	579403ff 	bl	-27648(0xfff9400) # 1c00116c <EXTI_ClearITPendingBit>
1c007d70:	03400000 	andi	$r0,$r0,0x0
1c007d74:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007d78:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007d7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007d80:	4c000020 	jirl	$r0,$r1,0

1c007d84 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c007d84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007d88:	29803061 	st.w	$r1,$r3,12(0xc)
1c007d8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007d90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007d94:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007d98:	029ef0c6 	addi.w	$r6,$r6,1980(0x7bc)
1c007d9c:	02825005 	addi.w	$r5,$r0,148(0x94)
1c007da0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007da4:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c007da8:	57960fff 	bl	-27124(0xfff960c) # 1c0013b4 <myprintf>
1c007dac:	14010005 	lu12i.w	$r5,2048(0x800)
1c007db0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007db4:	03808184 	ori	$r4,$r12,0x20
1c007db8:	5793b7ff 	bl	-27724(0xfff93b4) # 1c00116c <EXTI_ClearITPendingBit>
1c007dbc:	03400000 	andi	$r0,$r0,0x0
1c007dc0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007dc4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007dc8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007dcc:	4c000020 	jirl	$r0,$r1,0

1c007dd0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c007dd0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007dd4:	29803061 	st.w	$r1,$r3,12(0xc)
1c007dd8:	29802076 	st.w	$r22,$r3,8(0x8)
1c007ddc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007de0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007de4:	029e20c6 	addi.w	$r6,$r6,1928(0x788)
1c007de8:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c007dec:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007df0:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c007df4:	5795c3ff 	bl	-27200(0xfff95c0) # 1c0013b4 <myprintf>
1c007df8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c007dfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007e00:	03808184 	ori	$r4,$r12,0x20
1c007e04:	57936bff 	bl	-27800(0xfff9368) # 1c00116c <EXTI_ClearITPendingBit>
1c007e08:	03400000 	andi	$r0,$r0,0x0
1c007e0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007e10:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007e14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007e18:	4c000020 	jirl	$r0,$r1,0

1c007e1c <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c007e1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007e20:	29803061 	st.w	$r1,$r3,12(0xc)
1c007e24:	29802076 	st.w	$r22,$r3,8(0x8)
1c007e28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007e2c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007e30:	029d50c6 	addi.w	$r6,$r6,1876(0x754)
1c007e34:	02828005 	addi.w	$r5,$r0,160(0xa0)
1c007e38:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007e3c:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c007e40:	579577ff 	bl	-27276(0xfff9574) # 1c0013b4 <myprintf>
1c007e44:	14040005 	lu12i.w	$r5,8192(0x2000)
1c007e48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007e4c:	03808184 	ori	$r4,$r12,0x20
1c007e50:	57931fff 	bl	-27876(0xfff931c) # 1c00116c <EXTI_ClearITPendingBit>
1c007e54:	03400000 	andi	$r0,$r0,0x0
1c007e58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007e5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007e60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007e64:	4c000020 	jirl	$r0,$r1,0

1c007e68 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c007e68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007e6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007e70:	29802076 	st.w	$r22,$r3,8(0x8)
1c007e74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007e78:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007e7c:	029c80c6 	addi.w	$r6,$r6,1824(0x720)
1c007e80:	02829805 	addi.w	$r5,$r0,166(0xa6)
1c007e84:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007e88:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c007e8c:	57952bff 	bl	-27352(0xfff9528) # 1c0013b4 <myprintf>
1c007e90:	14080005 	lu12i.w	$r5,16384(0x4000)
1c007e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007e98:	03808184 	ori	$r4,$r12,0x20
1c007e9c:	5792d3ff 	bl	-27952(0xfff92d0) # 1c00116c <EXTI_ClearITPendingBit>
1c007ea0:	03400000 	andi	$r0,$r0,0x0
1c007ea4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007ea8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007eac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007eb0:	4c000020 	jirl	$r0,$r1,0

1c007eb4 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c007eb4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007eb8:	29803061 	st.w	$r1,$r3,12(0xc)
1c007ebc:	29802076 	st.w	$r22,$r3,8(0x8)
1c007ec0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ec4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007ec8:	029bb0c6 	addi.w	$r6,$r6,1772(0x6ec)
1c007ecc:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c007ed0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007ed4:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c007ed8:	5794dfff 	bl	-27428(0xfff94dc) # 1c0013b4 <myprintf>
1c007edc:	14100005 	lu12i.w	$r5,32768(0x8000)
1c007ee0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007ee4:	03808184 	ori	$r4,$r12,0x20
1c007ee8:	579287ff 	bl	-28028(0xfff9284) # 1c00116c <EXTI_ClearITPendingBit>
1c007eec:	03400000 	andi	$r0,$r0,0x0
1c007ef0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007ef4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007ef8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007efc:	4c000020 	jirl	$r0,$r1,0

1c007f00 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c007f00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f04:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f08:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007f10:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007f14:	029ae0c6 	addi.w	$r6,$r6,1720(0x6b8)
1c007f18:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c007f1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007f20:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c007f24:	579493ff 	bl	-27504(0xfff9490) # 1c0013b4 <myprintf>
1c007f28:	14200005 	lu12i.w	$r5,65536(0x10000)
1c007f2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007f30:	03808184 	ori	$r4,$r12,0x20
1c007f34:	57923bff 	bl	-28104(0xfff9238) # 1c00116c <EXTI_ClearITPendingBit>
1c007f38:	03400000 	andi	$r0,$r0,0x0
1c007f3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007f40:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007f44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007f48:	4c000020 	jirl	$r0,$r1,0

1c007f4c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c007f4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f50:	29803061 	st.w	$r1,$r3,12(0xc)
1c007f54:	29802076 	st.w	$r22,$r3,8(0x8)
1c007f58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007f5c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007f60:	029a10c6 	addi.w	$r6,$r6,1668(0x684)
1c007f64:	0282e405 	addi.w	$r5,$r0,185(0xb9)
1c007f68:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007f6c:	02880084 	addi.w	$r4,$r4,512(0x200)
1c007f70:	579447ff 	bl	-27580(0xfff9444) # 1c0013b4 <myprintf>
1c007f74:	14400005 	lu12i.w	$r5,131072(0x20000)
1c007f78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007f7c:	03808184 	ori	$r4,$r12,0x20
1c007f80:	5791efff 	bl	-28180(0xfff91ec) # 1c00116c <EXTI_ClearITPendingBit>
1c007f84:	03400000 	andi	$r0,$r0,0x0
1c007f88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007f8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007f90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007f94:	4c000020 	jirl	$r0,$r1,0

1c007f98 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c007f98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007f9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007fa0:	29802076 	st.w	$r22,$r3,8(0x8)
1c007fa4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007fa8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007fac:	029940c6 	addi.w	$r6,$r6,1616(0x650)
1c007fb0:	0282fc05 	addi.w	$r5,$r0,191(0xbf)
1c007fb4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007fb8:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c007fbc:	5793fbff 	bl	-27656(0xfff93f8) # 1c0013b4 <myprintf>
1c007fc0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c007fc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007fc8:	03808184 	ori	$r4,$r12,0x20
1c007fcc:	5791a3ff 	bl	-28256(0xfff91a0) # 1c00116c <EXTI_ClearITPendingBit>
1c007fd0:	03400000 	andi	$r0,$r0,0x0
1c007fd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007fd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007fdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007fe0:	4c000020 	jirl	$r0,$r1,0

1c007fe4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c007fe4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007fe8:	29803061 	st.w	$r1,$r3,12(0xc)
1c007fec:	29802076 	st.w	$r22,$r3,8(0x8)
1c007ff0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007ff4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c007ff8:	029870c6 	addi.w	$r6,$r6,1564(0x61c)
1c007ffc:	02831405 	addi.w	$r5,$r0,197(0xc5)
1c008000:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008004:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c008008:	5793afff 	bl	-27732(0xfff93ac) # 1c0013b4 <myprintf>
1c00800c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c008010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008014:	03808184 	ori	$r4,$r12,0x20
1c008018:	579157ff 	bl	-28332(0xfff9154) # 1c00116c <EXTI_ClearITPendingBit>
1c00801c:	03400000 	andi	$r0,$r0,0x0
1c008020:	28803061 	ld.w	$r1,$r3,12(0xc)
1c008024:	28802076 	ld.w	$r22,$r3,8(0x8)
1c008028:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00802c:	4c000020 	jirl	$r0,$r1,0

1c008030 <ext_handler>:
ext_handler():
1c008030:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008034:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008038:	29806076 	st.w	$r22,$r3,24(0x18)
1c00803c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008040:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008044:	0380f18c 	ori	$r12,$r12,0x3c
1c008048:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c00804c:	2980018d 	st.w	$r13,$r12,0
1c008050:	1c000026 	pcaddu12i	$r6,1(0x1)
1c008054:	029760c6 	addi.w	$r6,$r6,1496(0x5d8)
1c008058:	0283c405 	addi.w	$r5,$r0,241(0xf1)
1c00805c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008060:	02843084 	addi.w	$r4,$r4,268(0x10c)
1c008064:	579353ff 	bl	-27824(0xfff9350) # 1c0013b4 <myprintf>
1c008068:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00806c:	0380818c 	ori	$r12,$r12,0x20
1c008070:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c008074:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008078:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00807c:	0380818c 	ori	$r12,$r12,0x20
1c008080:	2880018c 	ld.w	$r12,$r12,0
1c008084:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c008088:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00808c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c008090:	0014b1ac 	and	$r12,$r13,$r12
1c008094:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c008098:	03400000 	andi	$r0,$r0,0x0
1c00809c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0080a0:	50004000 	b	64(0x40) # 1c0080e0 <ext_handler+0xb0>
1c0080a4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0080a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0080ac:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0080b0:	0340058c 	andi	$r12,$r12,0x1
1c0080b4:	40002180 	beqz	$r12,32(0x20) # 1c0080d4 <ext_handler+0xa4>
1c0080b8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0080bc:	0286b1ad 	addi.w	$r13,$r13,428(0x1ac)
1c0080c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0080c4:	0040898c 	slli.w	$r12,$r12,0x2
1c0080c8:	001031ac 	add.w	$r12,$r13,$r12
1c0080cc:	2880018c 	ld.w	$r12,$r12,0
1c0080d0:	4c000181 	jirl	$r1,$r12,0
1c0080d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0080d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0080dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0080e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0080e4:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0080e8:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0080a4 <ext_handler+0x74>
1c0080ec:	03400000 	andi	$r0,$r0,0x0
1c0080f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0080f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0080f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0080fc:	4c000020 	jirl	$r0,$r1,0

1c008100 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c008100:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008104:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008108:	29806076 	st.w	$r22,$r3,24(0x18)
1c00810c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008110:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008114:	0380f18c 	ori	$r12,$r12,0x3c
1c008118:	1400020d 	lu12i.w	$r13,16(0x10)
1c00811c:	2980018d 	st.w	$r13,$r12,0
1c008120:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008124:	0380118c 	ori	$r12,$r12,0x4
1c008128:	2880018c 	ld.w	$r12,$r12,0
1c00812c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008130:	5797b7ff 	bl	-26700(0xfff97b4) # 1c0018e4 <WDG_DogFeed>
1c008134:	03400000 	andi	$r0,$r0,0x0
1c008138:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00813c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c008140:	02808063 	addi.w	$r3,$r3,32(0x20)
1c008144:	4c000020 	jirl	$r0,$r1,0

1c008148 <TOUCH>:
TOUCH():
1c008148:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00814c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008150:	29806076 	st.w	$r22,$r3,24(0x18)
1c008154:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008158:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00815c:	0380118c 	ori	$r12,$r12,0x4
1c008160:	2880018c 	ld.w	$r12,$r12,0
1c008164:	0044c18c 	srli.w	$r12,$r12,0x10
1c008168:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00816c:	037ffd8c 	andi	$r12,$r12,0xfff
1c008170:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c008174:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c008178:	0380118c 	ori	$r12,$r12,0x4
1c00817c:	2880018c 	ld.w	$r12,$r12,0
1c008180:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c008184:	03403d8c 	andi	$r12,$r12,0xf
1c008188:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00818c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008190:	0380f18c 	ori	$r12,$r12,0x3c
1c008194:	1400040d 	lu12i.w	$r13,32(0x20)
1c008198:	2980018d 	st.w	$r13,$r12,0
1c00819c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0081a0:	0380118c 	ori	$r12,$r12,0x4
1c0081a4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0081a8:	2980018d 	st.w	$r13,$r12,0
1c0081ac:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0081b0:	00150185 	move	$r5,$r12
1c0081b4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0081b8:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c0081bc:	5791fbff 	bl	-28168(0xfff91f8) # 1c0013b4 <myprintf>
1c0081c0:	03400000 	andi	$r0,$r0,0x0
1c0081c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0081c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0081cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0081d0:	4c000020 	jirl	$r0,$r1,0

1c0081d4 <UART2_INT>:
UART2_INT():
1c0081d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0081d8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0081dc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0081e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0081e4:	0380f18c 	ori	$r12,$r12,0x3c
1c0081e8:	1400080d 	lu12i.w	$r13,64(0x40)
1c0081ec:	2980018d 	st.w	$r13,$r12,0
1c0081f0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0081f4:	0380098c 	ori	$r12,$r12,0x2
1c0081f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0081fc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008200:	03400000 	andi	$r0,$r0,0x0
1c008204:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c008208:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00820c:	4c000020 	jirl	$r0,$r1,0

1c008210 <BAT_FAIL>:
BAT_FAIL():
1c008210:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c008214:	29807061 	st.w	$r1,$r3,28(0x1c)
1c008218:	29806076 	st.w	$r22,$r3,24(0x18)
1c00821c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c008220:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008224:	0380118c 	ori	$r12,$r12,0x4
1c008228:	2880018c 	ld.w	$r12,$r12,0
1c00822c:	0044cd8c 	srli.w	$r12,$r12,0x13
1c008230:	03407d8c 	andi	$r12,$r12,0x1f
1c008234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c008238:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00823c:	0380118c 	ori	$r12,$r12,0x4
1c008240:	2880018e 	ld.w	$r14,$r12,0
1c008244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008248:	0380f18c 	ori	$r12,$r12,0x3c
1c00824c:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c008250:	0014b5cd 	and	$r13,$r14,$r13
1c008254:	2980018d 	st.w	$r13,$r12,0
1c008258:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00825c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c008260:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c0082d0 <BAT_FAIL+0xc0>
1c008264:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c008268:	0040898d 	slli.w	$r13,$r12,0x2
1c00826c:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c008270:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c008274:	001031ac 	add.w	$r12,$r13,$r12
1c008278:	2880018c 	ld.w	$r12,$r12,0
1c00827c:	4c000180 	jirl	$r0,$r12,0
1c008280:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008284:	02bd4084 	addi.w	$r4,$r4,-176(0xf50)
1c008288:	57912fff 	bl	-28372(0xfff912c) # 1c0013b4 <myprintf>
1c00828c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c008290:	0380118c 	ori	$r12,$r12,0x4
1c008294:	29800180 	st.w	$r0,$r12,0
1c008298:	50003c00 	b	60(0x3c) # 1c0082d4 <BAT_FAIL+0xc4>
1c00829c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0082a0:	02bd7084 	addi.w	$r4,$r4,-164(0xf5c)
1c0082a4:	579113ff 	bl	-28400(0xfff9110) # 1c0013b4 <myprintf>
1c0082a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0082ac:	0380118c 	ori	$r12,$r12,0x4
1c0082b0:	2880018e 	ld.w	$r14,$r12,0
1c0082b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0082b8:	0380118c 	ori	$r12,$r12,0x4
1c0082bc:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0082c0:	03bffdad 	ori	$r13,$r13,0xfff
1c0082c4:	0014b5cd 	and	$r13,$r14,$r13
1c0082c8:	2980018d 	st.w	$r13,$r12,0
1c0082cc:	50000800 	b	8(0x8) # 1c0082d4 <BAT_FAIL+0xc4>
1c0082d0:	03400000 	andi	$r0,$r0,0x0
1c0082d4:	03400000 	andi	$r0,$r0,0x0
1c0082d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0082dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0082e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0082e4:	4c000020 	jirl	$r0,$r1,0

1c0082e8 <INTC_Handler>:
INTC_Handler():
1c0082e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0082ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0082f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0082f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0082f8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0082fc:	0380158c 	ori	$r12,$r12,0x5
1c008300:	2a00018c 	ld.bu	$r12,$r12,0
1c008304:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c008308:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00830c:	0340058c 	andi	$r12,$r12,0x1
1c008310:	40002980 	beqz	$r12,40(0x28) # 1c008338 <INTC_Handler+0x50>
1c008314:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008318:	57b893ff 	bl	-18288(0xfffb890) # 1c003ba8 <TIM_GetITStatus>
1c00831c:	0015008c 	move	$r12,$r4
1c008320:	40001980 	beqz	$r12,24(0x18) # 1c008338 <INTC_Handler+0x50>
1c008324:	02840004 	addi.w	$r4,$r0,256(0x100)
1c008328:	57b8cfff 	bl	-18228(0xfffb8cc) # 1c003bf4 <TIM_ClearIT>
1c00832c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c008330:	02bbc084 	addi.w	$r4,$r4,-272(0xef0)
1c008334:	579083ff 	bl	-28544(0xfff9080) # 1c0013b4 <myprintf>
1c008338:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00833c:	0340118c 	andi	$r12,$r12,0x4
1c008340:	40002d80 	beqz	$r12,44(0x2c) # 1c00836c <INTC_Handler+0x84>
1c008344:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c008348:	2880018c 	ld.w	$r12,$r12,0
1c00834c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c008350:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c008354:	00150184 	move	$r4,$r12
1c008358:	579c3fff 	bl	-25540(0xfff9c3c) # 1c001f94 <my_recv_dat_int>
1c00835c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008360:	03800d8c 	ori	$r12,$r12,0x3
1c008364:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c008368:	2900018d 	st.b	$r13,$r12,0
1c00836c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c008370:	0340218c 	andi	$r12,$r12,0x8
1c008374:	40002d80 	beqz	$r12,44(0x2c) # 1c0083a0 <INTC_Handler+0xb8>
1c008378:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00837c:	2880018c 	ld.w	$r12,$r12,0
1c008380:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c008384:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c008388:	00150184 	move	$r4,$r12
1c00838c:	579c0bff 	bl	-25592(0xfff9c08) # 1c001f94 <my_recv_dat_int>
1c008390:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c008394:	03800d8c 	ori	$r12,$r12,0x3
1c008398:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c00839c:	2900018d 	st.b	$r13,$r12,0
1c0083a0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0083a4:	03800d8c 	ori	$r12,$r12,0x3
1c0083a8:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0083ac:	2900018d 	st.b	$r13,$r12,0
1c0083b0:	03400000 	andi	$r0,$r0,0x0
1c0083b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0083b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0083bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0083c0:	4c000020 	jirl	$r0,$r1,0

1c0083c4 <TIMER_HANDLER>:
TIMER_HANDLER():
1c0083c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0083c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0083cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0083d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0083d4:	578d77ff 	bl	-29324(0xfff8d74) # 1c001148 <Set_Timer_clear>
1c0083d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0083dc:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c0083e0:	578fd7ff 	bl	-28716(0xfff8fd4) # 1c0013b4 <myprintf>
1c0083e4:	578d47ff 	bl	-29372(0xfff8d44) # 1c001128 <Set_Timer_stop>
1c0083e8:	03400000 	andi	$r0,$r0,0x0
1c0083ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0083f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0083f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0083f8:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0083fc <F6x8-0x334>:
1c0083fc:	1c0015d4 	pcaddu12i	$r20,174(0xae)
1c008400:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008404:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008408:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00840c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008410:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008414:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008418:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00841c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008420:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008424:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008428:	1c0015ec 	pcaddu12i	$r12,175(0xaf)
1c00842c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008430:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008434:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008438:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00843c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008440:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008444:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008448:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c00844c:	1c001674 	pcaddu12i	$r20,179(0xb3)
1c008450:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008454:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008458:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00845c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008460:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008464:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008468:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00846c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008470:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008474:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008478:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00847c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008480:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008484:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008488:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00848c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008490:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008494:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008498:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00849c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084a0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084a4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084a8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084ac:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084b0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084b4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084b8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084bc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084c0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084c4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084c8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084cc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084d0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084d4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084d8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084dc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084e0:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084e4:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084e8:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084ec:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c0084f0:	1c001564 	pcaddu12i	$r4,171(0xab)
1c0084f4:	1c00148c 	pcaddu12i	$r12,164(0xa4)
1c0084f8:	1c0014f4 	pcaddu12i	$r20,167(0xa7)
1c0084fc:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008500:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008504:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008508:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00850c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008510:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008514:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008518:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00851c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008520:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008524:	1c00152c 	pcaddu12i	$r12,169(0xa9)
1c008528:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00852c:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008530:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008534:	1c001460 	pcaddu12i	$r0,163(0xa3)
1c008538:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c00853c:	1c0014bc 	pcaddu12i	$r28,165(0xa5)
1c008540:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008544:	1c0016f0 	pcaddu12i	$r16,183(0xb7)
1c008548:	1c00159c 	pcaddu12i	$r28,172(0xac)
1c00854c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008550:	4f202020 	jirl	$r0,$r1,-57312(0x32020)
1c008554:	2020204b 	ll.w	$r11,$r2,8224(0x2020)
1c008558:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00855c:	00000000 	0x00000000
1c008560:	befdca20 	0xbefdca20
1c008564:	bdfcb0dd 	0xbdfcb0dd
1c008568:	b4d5cad3 	0xb4d5cad3
1c00856c:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c008570:	00000000 	0x00000000
1c008574:	d0b8abb4 	0xd0b8abb4
1c008578:	cfc9f7c6 	0xcfc9f7c6
1c00857c:	d0d3bbc3 	0xd0d3bbc3
1c008580:	b8d6d6ca 	0xb8d6d6ca
1c008584:	00000000 	0x00000000
1c008588:	ebc8bcc2 	0xebc8bcc2
1c00858c:	c6ceb8d6 	0xc6ceb8d6
1c008590:	f1cfbccd 	0xf1cfbccd
1c008594:	dcb0a7ca 	0xdcb0a7ca
1c008598:	00000000 	0x00000000
1c00859c:	ceb8d620 	0xceb8d620
1c0085a0:	b8abccc6 	0xb8abccc6
1c0085a4:	ccf2bbc9 	0xccf2bbc9
1c0085a8:	20adb5ab 	ll.w	$r11,$r13,-21068(0xadb4)
1c0085ac:	00000000 	0x00000000
1c0085b0:	ceb8d620 	0xceb8d620
1c0085b4:	caabccc6 	0xcaabccc6
1c0085b8:	ccf2bbaa 	0xccf2bbaa
1c0085bc:	20fdbaab 	ll.w	$r11,$r21,-584(0xfdb8)
1c0085c0:	00000000 	0x00000000
1c0085c4:	b8d62020 	0xb8d62020
1c0085c8:	bccdc6ce 	0xbccdc6ce
1c0085cc:	abccf1cf 	0xabccf1cf
1c0085d0:	2020d2c2 	ll.w	$r2,$r22,8400(0x20d0)
1c0085d4:	00000000 	0x00000000
1c0085d8:	ceb8d620 	0xceb8d620
1c0085dc:	d5d8ccc6 	0xd5d8ccc6
1c0085e0:	cce3b5f7 	0xcce3b5f7
1c0085e4:	20d9c9ab 	ll.w	$r11,$r13,-9784(0xd9c8)
1c0085e8:	00000000 	0x00000000
1c0085ec:	b8d62020 	0xb8d62020
1c0085f0:	bbb2c6ce 	0xbbb2c6ce
1c0085f4:	e4c5a5c6 	0xe4c5a5c6
1c0085f8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0085fc:	00000000 	0x00000000
1c008600:	d3bbc320 	0xd3bbc320
1c008604:	cbd1cbd0 	0xcbd1cbd0
1c008608:	d6bdb5f7 	0xd6bdb5f7
1c00860c:	20c6ceb8 	ll.w	$r24,$r21,-14644(0xc6cc)
1c008610:	00000000 	0x00000000
1c008614:	cc202020 	0xcc202020
1c008618:	baf7d5d8 	0xbaf7d5d8
1c00861c:	caa2b2cf 	0xcaa2b2cf
1c008620:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008624:	00000000 	0x00000000
1c008628:	b7d6d8b5 	0xb7d6d8b5
1c00862c:	c5baf2d0 	0xc5baf2d0
1c008630:	f6b3acb3 	0xf6b3acb3
1c008634:	a7ceb6b7 	0xa7ceb6b7
1c008638:	00000000 	0x00000000
1c00863c:	bec92020 	0xbec92020
1c008640:	a3c4fdb3 	0xa3c4fdb3
1c008644:	a7cae5b0 	0xa7cae5b0
1c008648:	2020dcb0 	ll.w	$r16,$r5,8412(0x20dc)
1c00864c:	00000000 	0x00000000
1c008650:	bfe5c720 	0xbfe5c720
1c008654:	ceb8d6d5 	0xceb8d6d5
1c008658:	cae2bfc6 	0xcae2bfc6
1c00865c:	20dcb0a7 	ll.w	$r7,$r5,-9040(0xdcb0)
1c008660:	00000000 	0x00000000
1c008664:	e5b3babb 	0xe5b3babb
1c008668:	dac4f8c7 	0xdac4f8c7
1c00866c:	d0d3dece 	0xd0d3dece
1c008670:	bccda7d0 	0xbccda7d0
1c008674:	00000000 	0x00000000
1c008678:	d0c1b620 	0xd0c1b620
1c00867c:	414c46b4 	beqz	$r21,-3060668(0x514c44) # 1bd1d2c0 <_start-0x2e2d40>
1c008680:	f6b34853 	0xf6b34853
1c008684:	2020edb4 	ll.w	$r20,$r13,8428(0x20ec)
1c008688:	00000000 	0x00000000
1c00868c:	ce202020 	0xce202020
1c008690:	d2a8b6b4 	0xd2a8b6b4
1c008694:	ceedb4e5 	0xceedb4e5
1c008698:	202020f3 	ll.w	$r19,$r7,8224(0x2020)
1c00869c:	00000000 	0x00000000
1c0086a0:	dece2020 	0xdece2020
1c0086a4:	c4bca7d0 	0xc4bca7d0
1c0086a8:	f7c6e6b4 	0xf7c6e6b4
1c0086ac:	2020c5ba 	ll.w	$r26,$r13,8388(0x20c4)
1c0086b0:	00000000 	0x00000000
1c0086b4:	b4c4bc20 	0xb4c4bc20
1c0086b8:	c4f7c6e6 	0xc4f7c6e6
1c0086bc:	b4ddc8da 	0xb4ddc8da
1c0086c0:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c0086c4:	00000000 	0x00000000
1c0086c8:	cac7bc20 	0xcac7bc20
1c0086cc:	d2beb1c2 	0xd2beb1c2
1c0086d0:	b4ebc2b3 	0xb4ebc2b3
1c0086d4:	20f3ceed 	ll.w	$r13,$r23,-3124(0xf3cc)
1c0086d8:	00000000 	0x00000000
1c0086dc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086e0:	c6ceb8d6 	0xc6ceb8d6
1c0086e4:	fac2e2bf 	0xfac2e2bf
1c0086e8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086ec:	00000000 	0x00000000
1c0086f0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0086f4:	b7d6d8b5 	0xb7d6d8b5
1c0086f8:	f3ceedb4 	0xf3ceedb4
1c0086fc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008700:	00000000 	0x00000000
1c008704:	bbb5b720 	0xbbb5b720
1c008708:	c8b7c8d8 	0xc8b7c8d8
1c00870c:	d3ebc2cf 	0xd3ebc2cf
1c008710:	20f3ced0 	ll.w	$r16,$r22,-3124(0xf3cc)
1c008714:	00000000 	0x00000000
1c008718:	003a4449 	0x003a4449
1c00871c:	1c002a00 	pcaddu12i	$r0,336(0x150)
1c008720:	1c002aac 	pcaddu12i	$r12,341(0x155)
1c008724:	1c002b6c 	pcaddu12i	$r12,347(0x15b)
1c008728:	1c002c84 	pcaddu12i	$r4,356(0x164)
1c00872c:	1c002d18 	pcaddu12i	$r24,360(0x168)

1c008730 <F6x8>:
	...
1c008738:	00002f00 	ctz.d	$r0,$r24
1c00873c:	00070000 	alsl.wu	$r0,$r0,$r0,0x3
1c008740:	14000007 	lu12i.w	$r7,0
1c008744:	147f147f 	lu12i.w	$r31,260259(0x3f8a3)
1c008748:	7f2a2400 	0x7f2a2400
1c00874c:	6200122a 	blt	$r17,$r10,-131056(0x20010) # 1bfe875c <_start-0x178a4>
1c008750:	23130864 	sc.d	$r4,$r3,4872(0x1308)
1c008754:	55493600 	bl	-134133452(0x8014934) # 1401d088 <_start-0x7fe2f78>
1c008758:	00005022 	bitrev.w	$r2,$r1
1c00875c:	00000305 	0x00000305
1c008760:	221c0000 	ll.d	$r0,$r0,7168(0x1c00)
1c008764:	00000041 	0x00000041
1c008768:	001c2241 	mul.w	$r1,$r18,$r8
1c00876c:	3e081400 	0x3e081400
1c008770:	08001408 	0x08001408
1c008774:	08083e08 	0x08083e08
1c008778:	a0000000 	0xa0000000
1c00877c:	08000060 	0x08000060
1c008780:	08080808 	0x08080808
1c008784:	60600000 	blt	$r0,$r0,24576(0x6000) # 1c00e784 <_sidata+0x5150>
1c008788:	20000000 	ll.w	$r0,$r0,0
1c00878c:	02040810 	slti	$r16,$r0,258(0x102)
1c008790:	49513e00 	0x49513e00
1c008794:	00003e45 	revb.d	$r5,$r18
1c008798:	00407f42 	0x00407f42
1c00879c:	51614200 	b	-134127296(0x8016140) # 1401e8dc <_start-0x7fe1724>
1c0087a0:	21004649 	sc.w	$r9,$r18,68(0x44)
1c0087a4:	314b4541 	vstelm.h	$vr1,$r10,-94(0x1a2),0x2
1c0087a8:	12141800 	addu16i.d	$r0,$r0,-31482(0x8506)
1c0087ac:	2700107f 	stptr.d	$r31,$r3,16(0x10)
1c0087b0:	39454545 	0x39454545
1c0087b4:	494a3c00 	bceqz	$fcc0,84540(0x14a3c) # 1c01d1f0 <_sidata+0x13bbc>
1c0087b8:	01003049 	0x01003049
1c0087bc:	03050971 	lu52i.d	$r17,$r11,322(0x142)
1c0087c0:	49493600 	0x49493600
1c0087c4:	06003649 	cacop	0x9,$r18,13(0xd)
1c0087c8:	1e294949 	pcaddu18i	$r9,84554(0x14a4a)
1c0087cc:	36360000 	0x36360000
1c0087d0:	00000000 	0x00000000
1c0087d4:	00003656 	revb.4h	$r22,$r18
1c0087d8:	22140800 	ll.d	$r0,$r0,5128(0x1408)
1c0087dc:	14000041 	lu12i.w	$r1,2(0x2)
1c0087e0:	14141414 	lu12i.w	$r20,41120(0xa0a0)
1c0087e4:	22410000 	ll.d	$r0,$r0,16640(0x4100)
1c0087e8:	02000814 	slti	$r20,$r0,2(0x2)
1c0087ec:	06095101 	cacop	0x1,$r8,596(0x254)
1c0087f0:	59493200 	beq	$r16,$r0,84272(0x14930) # 1c01d120 <_sidata+0x13aec>
1c0087f4:	7c003e51 	0x7c003e51
1c0087f8:	7c121112 	0x7c121112
1c0087fc:	49497f00 	0x49497f00
1c008800:	3e003649 	0x3e003649
1c008804:	22414141 	ll.d	$r1,$r10,16704(0x4140)
1c008808:	41417f00 	beqz	$r24,82300(0x1417c) # 1c01c984 <_sidata+0x13350>
1c00880c:	7f001c22 	0x7f001c22
1c008810:	41494949 	beqz	$r10,2443592(0x254948) # 1c25d158 <_sidata+0x253b24>
1c008814:	09097f00 	0x09097f00
1c008818:	3e000109 	0x3e000109
1c00881c:	7a494941 	0x7a494941
1c008820:	08087f00 	0x08087f00
1c008824:	00007f08 	0x00007f08
1c008828:	00417f41 	slli.d	$r1,$r26,0x1f
1c00882c:	41402000 	beqz	$r0,81952(0x14020) # 1c01c84c <_sidata+0x13218>
1c008830:	7f00013f 	0x7f00013f
1c008834:	41221408 	beqz	$r0,2171412(0x212214) # 1c21aa48 <_sidata+0x211414>
1c008838:	40407f00 	beqz	$r24,16508(0x407c) # 1c00c8b4 <_sidata+0x3280>
1c00883c:	7f004040 	0x7f004040
1c008840:	7f020c02 	0x7f020c02
1c008844:	08047f00 	0x08047f00
1c008848:	3e007f10 	0x3e007f10
1c00884c:	3e414141 	0x3e414141
1c008850:	09097f00 	0x09097f00
1c008854:	3e000609 	0x3e000609
1c008858:	5e215141 	bne	$r10,$r1,-122544(0x22150) # 1bfea9a8 <_start-0x15658>
1c00885c:	19097f00 	pcaddi	$r0,-504840(0x84bf8)
1c008860:	46004629 	bnez	$r17,2490436(0x260044) # 1c2688a4 <_sidata+0x25f270>
1c008864:	31494949 	vstelm.h	$vr9,$r10,164(0xa4),0x2
1c008868:	7f010100 	0x7f010100
1c00886c:	3f000101 	0x3f000101
1c008870:	3f404040 	0x3f404040
1c008874:	40201f00 	beqz	$r24,8220(0x201c) # 1c00a890 <_sidata+0x125c>
1c008878:	3f001f20 	0x3f001f20
1c00887c:	3f403840 	0x3f403840
1c008880:	08146300 	fmadd.s	$f0,$f24,$f24,$f8
1c008884:	07006314 	0x07006314
1c008888:	07087008 	0x07087008
1c00888c:	49516100 	bcnez	$fcc0,86368(0x15160) # 1c01d9ec <_sidata+0x143b8>
1c008890:	00004345 	revh.2w	$r5,$r26
1c008894:	0041417f 	slli.d	$r31,$r11,0x10
1c008898:	552a5500 	bl	67185236(0x4012a54) # 2001b2ec <_sidata+0x4011cb8>
1c00889c:	0000552a 	bitrev.d	$r10,$r9
1c0088a0:	007f4141 	bstrins.w	$r1,$r10,0x1f,0x10
1c0088a4:	01020400 	0x01020400
1c0088a8:	40000402 	beqz	$r0,524292(0x80004) # 1c0888ac <_sidata+0x7f278>
1c0088ac:	40404040 	beqz	$r2,16448(0x4040) # 1c00c8ec <_sidata+0x32b8>
1c0088b0:	02010000 	slti	$r0,$r0,64(0x40)
1c0088b4:	20000004 	ll.w	$r4,$r0,0
1c0088b8:	78545454 	0x78545454
1c0088bc:	44487f00 	bnez	$r24,18556(0x487c) # 1c00d138 <_sidata+0x3b04>
1c0088c0:	38003844 	ldx.b	$r4,$r2,$r14
1c0088c4:	20444444 	ll.w	$r4,$r2,17476(0x4444)
1c0088c8:	44443800 	bnez	$r0,17464(0x4438) # 1c00cd00 <_sidata+0x36cc>
1c0088cc:	38007f48 	ldx.b	$r8,$r26,$r31
1c0088d0:	18545454 	pcaddi	$r20,172706(0x2a2a2)
1c0088d4:	097e0800 	0x097e0800
1c0088d8:	18000201 	pcaddi	$r1,16(0x10)
1c0088dc:	7ca4a4a4 	0x7ca4a4a4
1c0088e0:	04087f00 	csrxchg	$r0,$r24,0x21f
1c0088e4:	00007804 	0x00007804
1c0088e8:	00407d44 	0x00407d44
1c0088ec:	84804000 	0x84804000
1c0088f0:	7f00007d 	0x7f00007d
1c0088f4:	00442810 	0x00442810
1c0088f8:	7f410000 	0x7f410000
1c0088fc:	7c000040 	0x7c000040
1c008900:	78041804 	0x78041804
1c008904:	04087c00 	csrrd	$r0,0x21f
1c008908:	38007804 	ldx.b	$r4,$r0,$r30
1c00890c:	38444444 	vstx	$vr4,$r2,$r17
1c008910:	2424fc00 	ldptr.w	$r0,$r0,9468(0x24fc)
1c008914:	18001824 	pcaddi	$r4,193(0xc1)
1c008918:	fc182424 	0xfc182424
1c00891c:	04087c00 	csrrd	$r0,0x21f
1c008920:	48000804 	bceqz	$fcc0,1048584(0x100008) # 1c108928 <_sidata+0xff2f4>
1c008924:	20545454 	ll.w	$r20,$r2,21588(0x5454)
1c008928:	443f0400 	bnez	$r0,16132(0x3f04) # 1c00c82c <_sidata+0x31f8>
1c00892c:	3c002040 	0x3c002040
1c008930:	7c204040 	0x7c204040
1c008934:	40201c00 	beqz	$r0,8220(0x201c) # 1c00a950 <_sidata+0x131c>
1c008938:	3c001c20 	0x3c001c20
1c00893c:	3c403040 	0x3c403040
1c008940:	10284400 	addu16i.d	$r0,$r0,2577(0xa11)
1c008944:	1c004428 	pcaddu12i	$r8,545(0x221)
1c008948:	7ca0a0a0 	0x7ca0a0a0
1c00894c:	54644400 	bl	25668(0x6444) # 1c00ed90 <_sidata+0x575c>
1c008950:	1414444c 	lu12i.w	$r12,41506(0xa222)
1c008954:	14141414 	lu12i.w	$r20,41120(0xa0a0)

1c008958 <F8X16>:
	...
1c008968:	f8000000 	0xf8000000
1c00896c:	00000000 	0x00000000
1c008970:	33000000 	0x33000000
1c008974:	00000030 	0x00000030
1c008978:	060c1000 	cacop	0x0,$r0,772(0x304)
1c00897c:	00060c10 	alsl.wu	$r16,$r0,$r3,0x1
	...
1c008988:	4078c040 	beqz	$r2,30912(0x78c0) # 1c010248 <_sidata+0x6c14>
1c00898c:	004078c0 	0x004078c0
1c008990:	04043f04 	csrxchg	$r4,$r24,0x10f
1c008994:	0004043f 	alsl.w	$r31,$r1,$r1,0x1
1c008998:	fc887000 	0xfc887000
1c00899c:	00003008 	revb.2h	$r8,$r0
1c0089a0:	ff201800 	0xff201800
1c0089a4:	00001e21 	ctz.w	$r1,$r17
1c0089a8:	00f008f0 	bstrpick.d	$r16,$r7,0x30,0x2
1c0089ac:	000018e0 	cto.w	$r0,$r7
1c0089b0:	031c2100 	lu52i.d	$r0,$r8,1800(0x708)
1c0089b4:	001e211e 	mulh.d	$r30,$r8,$r8
1c0089b8:	8808f000 	0x8808f000
1c0089bc:	00000070 	0x00000070
1c0089c0:	2423211e 	ldptr.w	$r30,$r8,8992(0x2320)
1c0089c4:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c0089c8:	000e1610 	bytepick.d	$r16,$r16,$r5,0x4
	...
1c0089d8:	e0000000 	0xe0000000
1c0089dc:	00020418 	0x00020418
1c0089e0:	07000000 	0x07000000
1c0089e4:	00402018 	0x00402018
1c0089e8:	18040200 	pcaddi	$r0,8208(0x2010)
1c0089ec:	000000e0 	0x000000e0
1c0089f0:	18204000 	pcaddi	$r0,66048(0x10200)
1c0089f4:	00000007 	0x00000007
1c0089f8:	f0804040 	0xf0804040
1c0089fc:	00404080 	0x00404080
1c008a00:	0f010202 	0x0f010202
1c008a04:	00020201 	0x00020201
1c008a08:	f0000000 	0xf0000000
1c008a0c:	00000000 	0x00000000
1c008a10:	1f010101 	pcaddu18i	$r1,-522232(0x80808)
1c008a14:	00010101 	0x00010101
	...
1c008a20:	0070b080 	bstrpick.w	$r0,$r4,0x10,0xc
	...
1c008a30:	01010100 	fadd.d	$f0,$f8,$f0
1c008a34:	01010101 	fadd.d	$f1,$f8,$f0
	...
1c008a40:	00303000 	0x00303000
	...
1c008a4c:	04186080 	csrxchg	$r0,$r4,0x618
1c008a50:	06186000 	cacop	0x0,$r0,1560(0x618)
1c008a54:	00000001 	0x00000001
1c008a58:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c008a5c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008a60:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c008a64:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008a68:	f8101000 	0xf8101000
1c008a6c:	00000000 	0x00000000
1c008a70:	3f202000 	0x3f202000
1c008a74:	00002020 	clo.d	$r0,$r1
1c008a78:	08087000 	0x08087000
1c008a7c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c008a80:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c008a84:	00302122 	0x00302122
1c008a88:	88083000 	0x88083000
1c008a8c:	00304888 	0x00304888
1c008a90:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c008a94:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008a98:	20c00000 	ll.w	$r0,$r0,-16384(0xc000)
1c008a9c:	0000f810 	0x0000f810
1c008aa0:	24040700 	ldptr.w	$r0,$r24,1028(0x404)
1c008aa4:	00243f24 	crc.w.b.w	$r4,$r25,$r15
1c008aa8:	8808f800 	0x8808f800
1c008aac:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c008ab0:	20211900 	ll.w	$r0,$r8,8472(0x2118)
1c008ab4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008ab8:	8810e000 	0x8810e000
1c008abc:	00001888 	cto.w	$r8,$r4
1c008ac0:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c008ac4:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008ac8:	08083800 	0x08083800
1c008acc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008ad0:	3f000000 	0x3f000000
1c008ad4:	00000000 	0x00000000
1c008ad8:	08887000 	0x08887000
1c008adc:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c008ae0:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c008ae4:	001c2221 	mul.w	$r1,$r17,$r8
1c008ae8:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c008aec:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008af0:	22310000 	ll.d	$r0,$r0,12544(0x3100)
1c008af4:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c008af8:	c0000000 	0xc0000000
1c008afc:	000000c0 	0x000000c0
1c008b00:	30000000 	0x30000000
1c008b04:	00000030 	0x00000030
1c008b08:	80000000 	0x80000000
1c008b0c:	00000000 	0x00000000
1c008b10:	60800000 	blt	$r0,$r0,32768(0x8000) # 1c010b10 <_sidata+0x74dc>
1c008b14:	00000000 	0x00000000
1c008b18:	40800000 	beqz	$r0,32768(0x8000) # 1c010b18 <_sidata+0x74e4>
1c008b1c:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c008b20:	04020100 	csrxchg	$r0,$r8,0x80
1c008b24:	00201008 	div.w	$r8,$r0,$r4
1c008b28:	40404040 	beqz	$r2,16448(0x4040) # 1c00cb68 <_sidata+0x3534>
1c008b2c:	00404040 	0x00404040
1c008b30:	04040404 	csrrd	$r4,0x101
1c008b34:	00040404 	alsl.w	$r4,$r0,$r1,0x1
1c008b38:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008b3c:	00008040 	0x00008040
1c008b40:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c008b44:	00010204 	0x00010204
1c008b48:	08487000 	0x08487000
1c008b4c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c008b50:	30000000 	0x30000000
1c008b54:	00000136 	0x00000136
1c008b58:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c008b5c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c008b60:	24271807 	ldptr.w	$r7,$r0,10008(0x2718)
1c008b64:	000b1423 	0x000b1423
1c008b68:	38c00000 	0x38c00000
1c008b6c:	000000e0 	0x000000e0
1c008b70:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c008b74:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c008b78:	8888f808 	0x8888f808
1c008b7c:	00007088 	0x00007088
1c008b80:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008b84:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008b88:	080830c0 	0x080830c0
1c008b8c:	00380808 	0x00380808
1c008b90:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c008b94:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c008b98:	0808f808 	0x0808f808
1c008b9c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008ba0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008ba4:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008ba8:	8888f808 	0x8888f808
1c008bac:	001008e8 	add.w	$r8,$r7,$r2
1c008bb0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008bb4:	00182023 	sra.w	$r3,$r1,$r8
1c008bb8:	8888f808 	0x8888f808
1c008bbc:	001008e8 	add.w	$r8,$r7,$r2
1c008bc0:	00203f20 	div.w	$r0,$r25,$r15
1c008bc4:	00000003 	0x00000003
1c008bc8:	080830c0 	0x080830c0
1c008bcc:	00003808 	revb.2w	$r8,$r0
1c008bd0:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c008bd4:	00021e22 	0x00021e22
1c008bd8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008bdc:	08f80800 	0x08f80800
1c008be0:	01213f20 	0x01213f20
1c008be4:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c008be8:	f8080800 	0xf8080800
1c008bec:	00000808 	0x00000808
1c008bf0:	3f202000 	0x3f202000
1c008bf4:	00002020 	clo.d	$r0,$r1
1c008bf8:	08080000 	0x08080000
1c008bfc:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c008c00:	808080c0 	0x808080c0
1c008c04:	0000007f 	0x0000007f
1c008c08:	c088f808 	0xc088f808
1c008c0c:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c008c10:	01203f20 	0x01203f20
1c008c14:	00203826 	div.w	$r6,$r1,$r14
1c008c18:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008c1c:	00000000 	0x00000000
1c008c20:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008c24:	00302020 	0x00302020
1c008c28:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c008c2c:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c008c30:	3f003f20 	0x3f003f20
1c008c34:	00203f00 	div.w	$r0,$r24,$r15
1c008c38:	c030f808 	0xc030f808
1c008c3c:	08f80800 	0x08f80800
1c008c40:	00203f20 	div.w	$r0,$r25,$r15
1c008c44:	003f1807 	0x003f1807
1c008c48:	080810e0 	0x080810e0
1c008c4c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008c50:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c008c54:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008c58:	0808f808 	0x0808f808
1c008c5c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c008c60:	01213f20 	0x01213f20
1c008c64:	00000101 	0x00000101
1c008c68:	080810e0 	0x080810e0
1c008c6c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008c70:	2424180f 	ldptr.w	$r15,$r0,9240(0x2418)
1c008c74:	004f5038 	0x004f5038
1c008c78:	8888f808 	0x8888f808
1c008c7c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c008c80:	00203f20 	div.w	$r0,$r25,$r15
1c008c84:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c008c88:	08887000 	0x08887000
1c008c8c:	00380808 	0x00380808
1c008c90:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c008c94:	001c2221 	mul.w	$r1,$r17,$r8
1c008c98:	f8080818 	0xf8080818
1c008c9c:	00180808 	sra.w	$r8,$r0,$r2
1c008ca0:	3f200000 	0x3f200000
1c008ca4:	00000020 	0x00000020
1c008ca8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008cac:	08f80800 	0x08f80800
1c008cb0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008cb4:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008cb8:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c008cbc:	0838c800 	0x0838c800
1c008cc0:	38070000 	0x38070000
1c008cc4:	0000010e 	0x0000010e
1c008cc8:	f80008f8 	0xf80008f8
1c008ccc:	00f80800 	bstrpick.d	$r0,$r0,0x38,0x2
1c008cd0:	00073c03 	alsl.wu	$r3,$r0,$r15,0x3
1c008cd4:	00033c07 	0x00033c07
1c008cd8:	80681808 	0x80681808
1c008cdc:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c008ce0:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c008ce4:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c008ce8:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c008cec:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008cf0:	3f200000 	0x3f200000
1c008cf4:	00000020 	0x00000020
1c008cf8:	08080810 	0x08080810
1c008cfc:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008d00:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c008d04:	00182020 	sra.w	$r0,$r1,$r8
1c008d08:	fe000000 	0xfe000000
1c008d0c:	00020202 	0x00020202
1c008d10:	7f000000 	0x7f000000
1c008d14:	00404040 	0x00404040
1c008d18:	c0300c00 	0xc0300c00
1c008d1c:	00000000 	0x00000000
1c008d20:	01000000 	0x01000000
1c008d24:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c008d28:	02020200 	slti	$r0,$r16,128(0x80)
1c008d2c:	000000fe 	0x000000fe
1c008d30:	40404000 	beqz	$r0,16448(0x4040) # 1c00cd70 <_sidata+0x373c>
1c008d34:	0000007f 	0x0000007f
1c008d38:	02040000 	slti	$r0,$r0,256(0x100)
1c008d3c:	00040202 	alsl.w	$r2,$r16,$r0,0x1
	...
1c008d50:	80808080 	0x80808080
1c008d54:	80808080 	0x80808080
1c008d58:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c008d68:	80800000 	0x80800000
1c008d6c:	00008080 	0x00008080
1c008d70:	22241900 	ll.d	$r0,$r8,9240(0x2418)
1c008d74:	203f2222 	ll.w	$r2,$r17,16160(0x3f20)
1c008d78:	8000f808 	0x8000f808
1c008d7c:	00000080 	0x00000080
1c008d80:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c008d84:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008d88:	80000000 	0x80000000
1c008d8c:	00008080 	0x00008080
1c008d90:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008d94:	00112020 	sub.w	$r0,$r1,$r8
1c008d98:	80000000 	0x80000000
1c008d9c:	00f88880 	bstrpick.d	$r0,$r4,0x38,0x22
1c008da0:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008da4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008da8:	80800000 	0x80800000
1c008dac:	00008080 	0x00008080
1c008db0:	22221f00 	ll.d	$r0,$r24,8732(0x221c)
1c008db4:	00132222 	maskeqz	$r2,$r17,$r8
1c008db8:	f0808000 	0xf0808000
1c008dbc:	18888888 	pcaddi	$r8,279620(0x44444)
1c008dc0:	3f202000 	0x3f202000
1c008dc4:	00002020 	clo.d	$r0,$r1
1c008dc8:	80800000 	0x80800000
1c008dcc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008dd0:	94946b00 	0x94946b00
1c008dd4:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c008dd8:	8000f808 	0x8000f808
1c008ddc:	00008080 	0x00008080
1c008de0:	00213f20 	div.wu	$r0,$r25,$r15
1c008de4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008de8:	98988000 	0x98988000
1c008dec:	00000000 	0x00000000
1c008df0:	3f202000 	0x3f202000
1c008df4:	00002020 	clo.d	$r0,$r1
1c008df8:	80000000 	0x80000000
1c008dfc:	00009898 	0x00009898
1c008e00:	8080c000 	0x8080c000
1c008e04:	00007f80 	0x00007f80
1c008e08:	0000f808 	0x0000f808
1c008e0c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e10:	02243f20 	slti	$r0,$r25,-1777(0x90f)
1c008e14:	0020302d 	div.w	$r13,$r1,$r12
1c008e18:	f8080800 	0xf8080800
1c008e1c:	00000000 	0x00000000
1c008e20:	3f202000 	0x3f202000
1c008e24:	00002020 	clo.d	$r0,$r1
1c008e28:	80808080 	0x80808080
1c008e2c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e30:	00203f20 	div.w	$r0,$r25,$r15
1c008e34:	3f00203f 	0x3f00203f
1c008e38:	80008080 	0x80008080
1c008e3c:	00008080 	0x00008080
1c008e40:	00213f20 	div.wu	$r0,$r25,$r15
1c008e44:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008e48:	80800000 	0x80800000
1c008e4c:	00008080 	0x00008080
1c008e50:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008e54:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008e58:	80008080 	0x80008080
1c008e5c:	00000080 	0x00000080
1c008e60:	20a1ff80 	ll.w	$r0,$r28,-24068(0xa1fc)
1c008e64:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008e68:	80000000 	0x80000000
1c008e6c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e70:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008e74:	80ffa020 	0x80ffa020
1c008e78:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e7c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e80:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c008e84:	00010020 	asrtle.d	$r1,$r0
1c008e88:	80800000 	0x80800000
1c008e8c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e90:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c008e94:	00192424 	srl.d	$r4,$r1,$r9
1c008e98:	e0808000 	0xe0808000
1c008e9c:	00008080 	0x00008080
1c008ea0:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c008ea4:	00002020 	clo.d	$r0,$r1
1c008ea8:	00008080 	0x00008080
1c008eac:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008eb0:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008eb4:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008eb8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008ebc:	80808000 	0x80808000
1c008ec0:	300e0100 	0x300e0100
1c008ec4:	00010608 	0x00010608
1c008ec8:	80008080 	0x80008080
1c008ecc:	80808000 	0x80808000
1c008ed0:	030c300f 	lu52i.d	$r15,$r0,780(0x30c)
1c008ed4:	000f300c 	bytepick.d	$r12,$r0,$r12,0x6
1c008ed8:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008edc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008ee0:	2e312000 	0x2e312000
1c008ee4:	0020310e 	div.w	$r14,$r8,$r12
1c008ee8:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008eec:	80808000 	0x80808000
1c008ef0:	708e8180 	0x708e8180
1c008ef4:	00010618 	0x00010618
1c008ef8:	80808000 	0x80808000
1c008efc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008f00:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c008f04:	00302122 	0x00302122
1c008f08:	00000000 	0x00000000
1c008f0c:	02027c80 	slti	$r0,$r4,159(0x9f)
1c008f10:	00000000 	0x00000000
1c008f14:	40403f00 	beqz	$r24,16444(0x403c) # 1c00cf50 <_sidata+0x391c>
1c008f18:	00000000 	0x00000000
1c008f1c:	000000ff 	0x000000ff
1c008f20:	00000000 	0x00000000
1c008f24:	000000ff 	0x000000ff
1c008f28:	7c020200 	0x7c020200
1c008f2c:	00000080 	0x00000080
1c008f30:	3f404000 	0x3f404000
1c008f34:	00000000 	0x00000000
1c008f38:	01010600 	fadd.d	$f0,$f16,$f1
1c008f3c:	04040202 	csrxchg	$r2,$r16,0x100
	...

1c008f48 <gImage_cc>:
	...
1c008f94:	c0c08080 	0xc0c08080
1c008f98:	80c0c0c0 	0x80c0c0c0
1c008f9c:	00000080 	0x00000080
	...
1c008fc4:	0307fffc 	lu52i.d	$r28,$r31,511(0x1ff)
1c008fc8:	01000101 	0x01000101
1c008fcc:	ff070301 	0xff070301
1c008fd0:	0000f0fe 	0x0000f0fe
	...
1c008ff0:	fe000000 	0xfe000000
1c008ff4:	ffffffff 	0xffffffff
1c008ff8:	0f9fffff 	0x0f9fffff
1c008ffc:	ff9f0f0f 	0xff9f0f0f
1c009000:	ffffffff 	0xffffffff
1c009004:	0000feff 	0x0000feff
	...
1c009024:	3f1f0700 	0x3f1f0700
1c009028:	ffff7f7f 	0xffff7f7f
1c00902c:	f8f8ffff 	0xf8f8ffff
1c009030:	7fffffff 	0x7fffffff
1c009034:	071f3f7f 	0x071f3f7f
	...
1c0090ac:	1c005f60 	pcaddu12i	$r0,763(0x2fb)
1c0090b0:	1c005344 	pcaddu12i	$r4,666(0x29a)
1c0090b4:	1c0053d8 	pcaddu12i	$r24,670(0x29e)
1c0090b8:	1c0054d4 	pcaddu12i	$r20,678(0x2a6)
1c0090bc:	1c005538 	pcaddu12i	$r24,681(0x2a9)
1c0090c0:	1c00559c 	pcaddu12i	$r28,684(0x2ac)
1c0090c4:	1c005698 	pcaddu12i	$r24,692(0x2b4)
1c0090c8:	1c005794 	pcaddu12i	$r20,700(0x2bc)
1c0090cc:	1c005890 	pcaddu12i	$r16,708(0x2c4)
1c0090d0:	1c0058f4 	pcaddu12i	$r20,711(0x2c7)
1c0090d4:	1c005958 	pcaddu12i	$r24,714(0x2ca)
1c0090d8:	1c0059bc 	pcaddu12i	$r28,717(0x2cd)
1c0090dc:	1c005a84 	pcaddu12i	$r4,724(0x2d4)
1c0090e0:	1c005ae8 	pcaddu12i	$r8,727(0x2d7)
1c0090e4:	1c005bac 	pcaddu12i	$r12,733(0x2dd)
1c0090e8:	1c005c10 	pcaddu12i	$r16,736(0x2e0)
1c0090ec:	1c005c94 	pcaddu12i	$r20,740(0x2e4)
1c0090f0:	1c005d90 	pcaddu12i	$r16,748(0x2ec)
1c0090f4:	1c005e14 	pcaddu12i	$r20,752(0x2f0)
1c0090f8:	1c005edc 	pcaddu12i	$r28,758(0x2f6)
1c0090fc:	00002e31 	ctz.d	$r17,$r17
1c009100:	00002e32 	ctz.d	$r18,$r17
1c009104:	00002e33 	ctz.d	$r19,$r17
1c009108:	0000002a 	0x0000002a
1c00910c:	00000020 	0x00000020
1c009110:	1c006894 	pcaddu12i	$r20,836(0x344)
1c009114:	1c006034 	pcaddu12i	$r20,769(0x301)
1c009118:	1c006098 	pcaddu12i	$r24,772(0x304)
1c00911c:	1c00614c 	pcaddu12i	$r12,778(0x30a)
1c009120:	1c006238 	pcaddu12i	$r24,785(0x311)
1c009124:	1c00628c 	pcaddu12i	$r12,788(0x314)
1c009128:	1c0062bc 	pcaddu12i	$r28,789(0x315)
1c00912c:	1c0062ec 	pcaddu12i	$r12,791(0x317)
1c009130:	1c006344 	pcaddu12i	$r4,794(0x31a)
1c009134:	1c006380 	pcaddu12i	$r0,796(0x31c)
1c009138:	1c00639c 	pcaddu12i	$r28,796(0x31c)
1c00913c:	1c00647c 	pcaddu12i	$r28,803(0x323)
1c009140:	1c006568 	pcaddu12i	$r8,811(0x32b)
1c009144:	1c006594 	pcaddu12i	$r20,812(0x32c)
1c009148:	1c0065c4 	pcaddu12i	$r4,814(0x32e)
1c00914c:	1c0065f0 	pcaddu12i	$r16,815(0x32f)
1c009150:	1c00662c 	pcaddu12i	$r12,817(0x331)
1c009154:	1c006688 	pcaddu12i	$r8,820(0x334)
1c009158:	1c0066e8 	pcaddu12i	$r8,823(0x337)
1c00915c:	1c006718 	pcaddu12i	$r24,824(0x338)
1c009160:	1c006804 	pcaddu12i	$r4,832(0x340)
1c009164:	1c006864 	pcaddu12i	$r4,835(0x343)
1c009168:	3c200a0d 	0x3c200a0d
1c00916c:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01fd8c <_sidata+0x16758>
1c009170:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c009174:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeb1d8 <_start-0x14e28>
1c009178:	3a636e75 	0x3a636e75
1c00917c:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c009180:	0a0d3e20 	0x0a0d3e20
1c009184:	00000000 	0x00000000
1c009188:	2e2e2e0a 	0x2e2e2e0a
1c00918c:	2e2e2e2e 	0x2e2e2e2e
1c009190:	2e2e2e2e 	0x2e2e2e2e
1c009194:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c009198:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19f0ec <_sidata+0x195ab8>
1c00919c:	2e2e544e 	0x2e2e544e
1c0091a0:	2e2e2e2e 	0x2e2e2e2e
1c0091a4:	2e2e2e2e 	0x2e2e2e2e
1c0091a8:	2e2e2e2e 	0x2e2e2e2e
1c0091ac:	00000d0a 	0x00000d0a
1c0091b0:	2d2d2d0a 	0x2d2d2d0a
1c0091b4:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000720 <cpu_wait+0x678>
1c0091b8:	746e4968 	0x746e4968
1c0091bc:	79654b3a 	0x79654b3a
1c0091c0:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfef328 <_start-0x10cd8>
1c0091c4:	3a6c656e 	0x3a6c656e
1c0091c8:	78257830 	0x78257830
1c0091cc:	0000000a 	0x0000000a
1c0091d0:	2e2e2e0a 	0x2e2e2e0a
1c0091d4:	2e2e2e2e 	0x2e2e2e2e
1c0091d8:	2e2e2e2e 	0x2e2e2e2e
1c0091dc:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39d408 <_sidata+0x393dd4>
1c0091e0:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1d83c <_start-0x2e27c4>
1c0091e4:	2e2e4c49 	0x2e2e4c49
1c0091e8:	2e2e2e2e 	0x2e2e2e2e
1c0091ec:	2e2e2e2e 	0x2e2e2e2e
1c0091f0:	2e2e2e2e 	0x2e2e2e2e
1c0091f4:	00000d0a 	0x00000d0a
1c0091f8:	2e2e2e0a 	0x2e2e2e0a
1c0091fc:	2e2e2e2e 	0x2e2e2e2e
1c009200:	2e2e2e2e 	0x2e2e2e2e
1c009204:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38d330 <_sidata+0x383cfc>
1c009208:	2e2e2e43 	0x2e2e2e43
1c00920c:	2e2e2e2e 	0x2e2e2e2e
1c009210:	2e2e2e2e 	0x2e2e2e2e
1c009214:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c009218:	0000000d 	0x0000000d
1c00921c:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c020480 <_sidata+0x16e4c>
1c009220:	72656870 	0x72656870
1c009224:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c009228:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01ff90 <_sidata+0x1695c>
1c00922c:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00f54c <_sidata+0x5f18>
1c009230:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c009234:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c0206a0 <_sidata+0x1706c>
1c009238:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00923c:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c009240:	00000000 	0x00000000
1c009244:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c0204b0 <_sidata+0x16e7c>
1c009248:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01fb9c <_sidata+0x16568>
1c00924c:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffb2bc <_start-0x4d44>
1c009250:	7261656c 	0x7261656c
1c009254:	746e6920 	0x746e6920
1c009258:	75727265 	0x75727265
1c00925c:	2e2e7470 	0x2e2e7470
1c009260:	0000000a 	0x0000000a

1c009264 <Ext_IrqHandle>:
1c009264:	1c0076b0 	pcaddu12i	$r16,949(0x3b5)
1c009268:	1c0076fc 	pcaddu12i	$r28,951(0x3b7)
1c00926c:	1c007748 	pcaddu12i	$r8,954(0x3ba)
1c009270:	1c007794 	pcaddu12i	$r20,956(0x3bc)
1c009274:	1c0077e0 	pcaddu12i	$r0,959(0x3bf)
1c009278:	1c00782c 	pcaddu12i	$r12,961(0x3c1)
1c00927c:	1c007878 	pcaddu12i	$r24,963(0x3c3)
1c009280:	1c0078c4 	pcaddu12i	$r4,966(0x3c6)
1c009284:	1c007910 	pcaddu12i	$r16,968(0x3c8)
1c009288:	1c00795c 	pcaddu12i	$r28,970(0x3ca)
1c00928c:	1c0079a8 	pcaddu12i	$r8,973(0x3cd)
1c009290:	1c0079f4 	pcaddu12i	$r20,975(0x3cf)
1c009294:	1c007a40 	pcaddu12i	$r0,978(0x3d2)
1c009298:	1c007a8c 	pcaddu12i	$r12,980(0x3d4)
1c00929c:	1c007ad8 	pcaddu12i	$r24,982(0x3d6)
1c0092a0:	1c007b24 	pcaddu12i	$r4,985(0x3d9)
1c0092a4:	1c007b70 	pcaddu12i	$r16,987(0x3db)
1c0092a8:	1c007bbc 	pcaddu12i	$r28,989(0x3dd)
1c0092ac:	1c007c08 	pcaddu12i	$r8,992(0x3e0)
1c0092b0:	1c007c54 	pcaddu12i	$r20,994(0x3e2)
1c0092b4:	1c007ca0 	pcaddu12i	$r0,997(0x3e5)
1c0092b8:	1c007cec 	pcaddu12i	$r12,999(0x3e7)
1c0092bc:	1c007d38 	pcaddu12i	$r24,1001(0x3e9)
1c0092c0:	1c007d84 	pcaddu12i	$r4,1004(0x3ec)
1c0092c4:	1c007dd0 	pcaddu12i	$r16,1006(0x3ee)
1c0092c8:	1c007e1c 	pcaddu12i	$r28,1008(0x3f0)
1c0092cc:	1c007e68 	pcaddu12i	$r8,1011(0x3f3)
1c0092d0:	1c007eb4 	pcaddu12i	$r20,1013(0x3f5)
1c0092d4:	1c007f00 	pcaddu12i	$r0,1016(0x3f8)
1c0092d8:	1c007f4c 	pcaddu12i	$r12,1018(0x3fa)
1c0092dc:	1c007f98 	pcaddu12i	$r24,1020(0x3fc)
1c0092e0:	1c007fe4 	pcaddu12i	$r4,1023(0x3ff)
1c0092e4:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c0092e8:	1c008280 	pcaddu12i	$r0,1044(0x414)
1c0092ec:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c0092f0:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c0092f4:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c0092f8:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c0092fc:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009300:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009304:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009308:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c00930c:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009310:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009314:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009318:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c00931c:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009320:	1c0082d0 	pcaddu12i	$r16,1046(0x416)
1c009324:	1c00829c 	pcaddu12i	$r28,1044(0x414)

1c009328 <__FUNCTION__.1731>:
1c009328:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207a0 <_sidata+0x1716c>
1c00932c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020390 <_sidata+0x16d5c>
1c009330:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffc390 <_start-0x3c70>
1c009334:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004a4 <cpu_wait+0x3fc>
1c009338:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010198 <_sidata+0x6b64>
1c00933c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009340 <__FUNCTION__.1735>:
1c009340:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207b8 <_sidata+0x17184>
1c009344:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0203a8 <_sidata+0x16d74>
1c009348:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffc4a8 <_start-0x3b58>
1c00934c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004bc <cpu_wait+0x414>
1c009350:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101b0 <_sidata+0x6b7c>
1c009354:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009358 <__FUNCTION__.1739>:
1c009358:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207d0 <_sidata+0x1719c>
1c00935c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0203c0 <_sidata+0x16d8c>
1c009360:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffc5c0 <_start-0x3a40>
1c009364:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004d4 <cpu_wait+0x42c>
1c009368:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101c8 <_sidata+0x6b94>
1c00936c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009370 <__FUNCTION__.1743>:
1c009370:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207e8 <_sidata+0x171b4>
1c009374:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0203d8 <_sidata+0x16da4>
1c009378:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffc6d8 <_start-0x3928>
1c00937c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004ec <cpu_wait+0x444>
1c009380:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101e0 <_sidata+0x6bac>
1c009384:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009388 <__FUNCTION__.1747>:
1c009388:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020800 <_sidata+0x171cc>
1c00938c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0203f0 <_sidata+0x16dbc>
1c009390:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffc7f0 <_start-0x3810>
1c009394:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000504 <cpu_wait+0x45c>
1c009398:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101f8 <_sidata+0x6bc4>
1c00939c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0093a0 <__FUNCTION__.1751>:
1c0093a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020818 <_sidata+0x171e4>
1c0093a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020408 <_sidata+0x16dd4>
1c0093a8:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffc908 <_start-0x36f8>
1c0093ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00051c <cpu_wait+0x474>
1c0093b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010210 <_sidata+0x6bdc>
1c0093b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0093b8 <__FUNCTION__.1755>:
1c0093b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020830 <_sidata+0x171fc>
1c0093bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020420 <_sidata+0x16dec>
1c0093c0:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffca20 <_start-0x35e0>
1c0093c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000534 <cpu_wait+0x48c>
1c0093c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010228 <_sidata+0x6bf4>
1c0093cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0093d0 <__FUNCTION__.1759>:
1c0093d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020848 <_sidata+0x17214>
1c0093d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020438 <_sidata+0x16e04>
1c0093d8:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffcb38 <_start-0x34c8>
1c0093dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00054c <cpu_wait+0x4a4>
1c0093e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010240 <_sidata+0x6c0c>
1c0093e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0093e8 <__FUNCTION__.1763>:
1c0093e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020860 <_sidata+0x1722c>
1c0093ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020450 <_sidata+0x16e1c>
1c0093f0:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffc450 <_start-0x3bb0>
1c0093f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000564 <cpu_wait+0x4bc>
1c0093f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010258 <_sidata+0x6c24>
1c0093fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009400 <__FUNCTION__.1767>:
1c009400:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020878 <_sidata+0x17244>
1c009404:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020468 <_sidata+0x16e34>
1c009408:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffc568 <_start-0x3a98>
1c00940c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00057c <cpu_wait+0x4d4>
1c009410:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010270 <_sidata+0x6c3c>
1c009414:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009418 <__FUNCTION__.1771>:
1c009418:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020890 <_sidata+0x1725c>
1c00941c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020480 <_sidata+0x16e4c>
1c009420:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffc680 <_start-0x3980>
1c009424:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000594 <cpu_wait+0x4ec>
1c009428:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010288 <_sidata+0x6c54>
1c00942c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009430 <__FUNCTION__.1775>:
1c009430:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0208a8 <_sidata+0x17274>
1c009434:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020498 <_sidata+0x16e64>
1c009438:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffc798 <_start-0x3868>
1c00943c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0005ac <cpu_wait+0x504>
1c009440:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0102a0 <_sidata+0x6c6c>
1c009444:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009448 <__FUNCTION__.1779>:
1c009448:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0208c0 <_sidata+0x1728c>
1c00944c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0204b0 <_sidata+0x16e7c>
1c009450:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffc8b0 <_start-0x3750>
1c009454:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0005c4 <cpu_wait+0x51c>
1c009458:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0102b8 <_sidata+0x6c84>
1c00945c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009460 <__FUNCTION__.1783>:
1c009460:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0208d8 <_sidata+0x172a4>
1c009464:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0204c8 <_sidata+0x16e94>
1c009468:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffc9c8 <_start-0x3638>
1c00946c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0005dc <cpu_wait+0x534>
1c009470:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0102d0 <_sidata+0x6c9c>
1c009474:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009478 <__FUNCTION__.1787>:
1c009478:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0208f0 <_sidata+0x172bc>
1c00947c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0204e0 <_sidata+0x16eac>
1c009480:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffcae0 <_start-0x3520>
1c009484:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0005f4 <cpu_wait+0x54c>
1c009488:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0102e8 <_sidata+0x6cb4>
1c00948c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009490 <__FUNCTION__.1791>:
1c009490:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020908 <_sidata+0x172d4>
1c009494:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0204f8 <_sidata+0x16ec4>
1c009498:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffcbf8 <_start-0x3408>
1c00949c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00060c <cpu_wait+0x564>
1c0094a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010300 <_sidata+0x6ccc>
1c0094a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0094a8 <__FUNCTION__.1795>:
1c0094a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020920 <_sidata+0x172ec>
1c0094ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020510 <_sidata+0x16edc>
1c0094b0:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffc510 <_start-0x3af0>
1c0094b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000624 <cpu_wait+0x57c>
1c0094b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010318 <_sidata+0x6ce4>
1c0094bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0094c0 <__FUNCTION__.1799>:
1c0094c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020938 <_sidata+0x17304>
1c0094c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020528 <_sidata+0x16ef4>
1c0094c8:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffc628 <_start-0x39d8>
1c0094cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00063c <cpu_wait+0x594>
1c0094d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010330 <_sidata+0x6cfc>
1c0094d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0094d8 <__FUNCTION__.1803>:
1c0094d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020950 <_sidata+0x1731c>
1c0094dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020540 <_sidata+0x16f0c>
1c0094e0:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffc740 <_start-0x38c0>
1c0094e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000654 <cpu_wait+0x5ac>
1c0094e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010348 <_sidata+0x6d14>
1c0094ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0094f0 <__FUNCTION__.1807>:
1c0094f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020968 <_sidata+0x17334>
1c0094f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020558 <_sidata+0x16f24>
1c0094f8:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffc858 <_start-0x37a8>
1c0094fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00066c <cpu_wait+0x5c4>
1c009500:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010360 <_sidata+0x6d2c>
1c009504:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009508 <__FUNCTION__.1811>:
1c009508:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020980 <_sidata+0x1734c>
1c00950c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020570 <_sidata+0x16f3c>
1c009510:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffc970 <_start-0x3690>
1c009514:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000684 <cpu_wait+0x5dc>
1c009518:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010378 <_sidata+0x6d44>
1c00951c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009520 <__FUNCTION__.1815>:
1c009520:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020998 <_sidata+0x17364>
1c009524:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020588 <_sidata+0x16f54>
1c009528:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffca88 <_start-0x3578>
1c00952c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00069c <cpu_wait+0x5f4>
1c009530:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010390 <_sidata+0x6d5c>
1c009534:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009538 <__FUNCTION__.1819>:
1c009538:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0209b0 <_sidata+0x1737c>
1c00953c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0205a0 <_sidata+0x16f6c>
1c009540:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffcba0 <_start-0x3460>
1c009544:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0006b4 <cpu_wait+0x60c>
1c009548:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0103a8 <_sidata+0x6d74>
1c00954c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009550 <__FUNCTION__.1823>:
1c009550:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0209c8 <_sidata+0x17394>
1c009554:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0205b8 <_sidata+0x16f84>
1c009558:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffccb8 <_start-0x3348>
1c00955c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0006cc <cpu_wait+0x624>
1c009560:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0103c0 <_sidata+0x6d8c>
1c009564:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009568 <__FUNCTION__.1827>:
1c009568:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0209e0 <_sidata+0x173ac>
1c00956c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0205d0 <_sidata+0x16f9c>
1c009570:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffc5d4 <_start-0x3a2c>
1c009574:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0006e4 <cpu_wait+0x63c>
1c009578:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0103d8 <_sidata+0x6da4>
1c00957c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009580 <__FUNCTION__.1831>:
1c009580:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0209f8 <_sidata+0x173c4>
1c009584:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0205e8 <_sidata+0x16fb4>
1c009588:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffc6ec <_start-0x3914>
1c00958c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0006fc <cpu_wait+0x654>
1c009590:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0103f0 <_sidata+0x6dbc>
1c009594:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009598 <__FUNCTION__.1835>:
1c009598:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020a10 <_sidata+0x173dc>
1c00959c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020600 <_sidata+0x16fcc>
1c0095a0:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffc804 <_start-0x37fc>
1c0095a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000714 <cpu_wait+0x66c>
1c0095a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010408 <_sidata+0x6dd4>
1c0095ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0095b0 <__FUNCTION__.1839>:
1c0095b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020a28 <_sidata+0x173f4>
1c0095b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020618 <_sidata+0x16fe4>
1c0095b8:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffc91c <_start-0x36e4>
1c0095bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00072c <cpu_wait+0x684>
1c0095c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010420 <_sidata+0x6dec>
1c0095c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0095c8 <__FUNCTION__.1843>:
1c0095c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020a40 <_sidata+0x1740c>
1c0095cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020630 <_sidata+0x16ffc>
1c0095d0:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffca34 <_start-0x35cc>
1c0095d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000744 <cpu_wait+0x69c>
1c0095d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010438 <_sidata+0x6e04>
1c0095dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0095e0 <__FUNCTION__.1847>:
1c0095e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020a58 <_sidata+0x17424>
1c0095e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020648 <_sidata+0x17014>
1c0095e8:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffcb4c <_start-0x34b4>
1c0095ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00075c <cpu_wait+0x6b4>
1c0095f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010450 <_sidata+0x6e1c>
1c0095f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0095f8 <__FUNCTION__.1851>:
1c0095f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020a70 <_sidata+0x1743c>
1c0095fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020660 <_sidata+0x1702c>
1c009600:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffcc64 <_start-0x339c>
1c009604:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000774 <cpu_wait+0x6cc>
1c009608:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010468 <_sidata+0x6e34>
1c00960c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009610 <__FUNCTION__.1855>:
1c009610:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020a88 <_sidata+0x17454>
1c009614:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020678 <_sidata+0x17044>
1c009618:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffcd7c <_start-0x3284>
1c00961c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00078c <cpu_wait+0x6e4>
1c009620:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010480 <_sidata+0x6e4c>
1c009624:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009628 <__FUNCTION__.1864>:
1c009628:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c000aa0 <cpu_wait+0x9f8>
1c00962c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c01048c <_sidata+0x6e58>
1c009630:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	8000019c 	0x8000019c
80001008:	800001ba 	0x800001ba
8000100c:	8000000c 	0x8000000c
80001010:	800001b4 	0x800001b4
80001014:	800001d4 	0x800001d4
80001018:	800001bc 	0x800001bc

8000101c <AS608Addr>:
8000101c:	ffffffff 	0xffffffff

80001020 <F16x16>:
80001020:	32539410 	xvldrepl.h	$xr16,$r0,-1590(0x9ca)
80001024:	1052321e 	addu16i.d	$r30,$r16,5260(0x148c)
80001028:	42427e00 	beqz	$r16,148092(0x2427c) # 800252a4 <_edata+0x2382c>
8000102c:	00007e42 	0x00007e42
80001030:	ff000000 	0xff000000
80001034:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025597c <_edata+0x253f04>
80001038:	ff494949 	0xff494949
8000103c:	00000000 	0x00000000
80001040:	494acc08 	bceqz	$fcc0,2181836(0x214acc) # 80215b0c <_edata+0x214094>
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
800010a4:	62a2a62a 	blt	$r17,$r10,-89436(0x2a2a4) # 7ffeb348 <_sidata+0x63fe1d14>
800010a8:	81091121 	0x81091121
800010ac:	00000001 	0x00000001
800010b0:	13224200 	addu16i.d	$r0,$r16,-14192(0xc890)
800010b4:	7e82420b 	0x7e82420b
800010b8:	120a0202 	addu16i.d	$r2,$r16,-32128(0x8280)
800010bc:	00004623 	revh.d	$r3,$r17
800010c0:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffbcf0 <_sidata+0x63ff26bc>
800010c4:	c8880030 	0xc8880030
800010c8:	888e99a8 	0x888e99a8
800010cc:	0088c8a8 	bstrins.d	$r8,$r5,0x8,0x32
800010d0:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
800010d4:	30408012 	vldrepl.h	$vr18,$r0,64(0x40)
800010d8:	3f00000f 	0x3f00000f
800010dc:	00714040 	bstrins.w	$r0,$r2,0x11,0x10
800010e0:	40404040 	beqz	$r2,16448(0x4040) # 80005120 <_edata+0x36a8>
800010e4:	44ff4040 	bnez	$r2,65344(0xff40) # 80011024 <_edata+0xf5ac>
800010e8:	44444444 	bnez	$r2,1066052(0x104444) # 8010552c <_edata+0x103ab4>
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
80001150:	417a0202 	beqz	$r16,621056(0x97a00) # 80098b50 <_edata+0x970d8>
80001154:	7e424341 	0x7e424341
80001158:	43424242 	beqz	$r18,737856(0xb4240) # 800b5398 <_edata+0xb3920>
8000115c:	000000f8 	0x000000f8
80001160:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f5e4 <_edata+0xdb6c>
80001164:	0200c444 	slti	$r4,$r2,49(0x31)
80001168:	828282f2 	0x828282f2
8000116c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001170:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001174:	08003f10 	0x08003f10
80001178:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201980 <_edata+0x1fff08>
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
800011d4:	43408890 	beqz	$r4,-3981176(0x434088) # 7fc3525c <_sidata+0x63c2bc28>
800011d8:	4628102c 	bnez	$r1,3287056(0x322810) # 803239e8 <_edata+0x321f70>
800011dc:	00808041 	bstrins.d	$r1,$r2,0x0,0x20
800011e0:	d5151700 	0xd5151700
800011e4:	7d555755 	0x7d555755
800011e8:	d5555755 	0xd5555755
800011ec:	00001715 	clz.w	$r21,$r24
800011f0:	7f404040 	0x7f404040
800011f4:	55555555 	bl	89478484(0x5555554) # 85556748 <_edata+0x5554cd0>
800011f8:	7f555555 	0x7f555555
800011fc:	00404040 	0x00404040
80001200:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001204:	54544400 	bl	21572(0x5444) # 80006648 <_edata+0x4bd0>
80001208:	54547f54 	bl	-45067140(0xd50547c) # 7d506684 <_sidata+0x614fd050>
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
80001234:	434c5020 	beqz	$r1,216144(0x34c50) # 80035e84 <_edata+0x3440c>
80001238:	504f4040 	b	16797504(0x1004f40) # 81006178 <_edata+0x1004700>
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
800012e4:	54544400 	bl	21572(0x5444) # 80006728 <_edata+0x4cb0>
800012e8:	54547f54 	bl	-45067140(0xd50547c) # 7d506764 <_sidata+0x614fd130>
800012ec:	00404454 	0x00404454
800012f0:	207f0000 	ll.w	$r0,$r0,32512(0x7f00)
800012f4:	15ff0010 	lu12i.w	$r16,-2048(0xff800)
800012f8:	95551515 	0x95551515
800012fc:	0000007f 	0x0000007f
80001300:	c81f6888 	0xc81f6888
80001304:	54c81008 	bl	2148368(0x20c810) # 8020db14 <_edata+0x20c09c>
80001308:	9412d152 	0x9412d152
8000130c:	0010d008 	add.d	$r8,$r0,$r20
80001310:	ff091909 	0xff091909
80001314:	12ff0005 	addu16i.d	$r5,$r0,-16448(0xbfc0)
80001318:	5f00ff92 	bne	$r28,$r18,-65284(0x300fc) # 7fff1414 <_sidata+0x63fe7de0>
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
80001350:	417a0202 	beqz	$r16,621056(0x97a00) # 80098d50 <_edata+0x972d8>
80001354:	7e424341 	0x7e424341
80001358:	43424242 	beqz	$r18,737856(0xb4240) # 800b5598 <_edata+0xb3b20>
8000135c:	000000f8 	0x000000f8
80001360:	5ce48404 	bne	$r0,$r4,58500(0xe484) # 8000f7e4 <_edata+0xdd6c>
80001364:	0200c444 	slti	$r4,$r2,49(0x31)
80001368:	828282f2 	0x828282f2
8000136c:	008080fe 	bstrins.d	$r30,$r7,0x0,0x20
80001370:	107f0102 	addu16i.d	$r2,$r8,8128(0x1fc0)
80001374:	08003f10 	0x08003f10
80001378:	48080808 	bceqz	$fcc0,2099208(0x200808) # 80201b80 <_edata+0x200108>
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
800013f4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09458 <_sidata+0x63bffe24>
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
80001458:	41412f11 	beqz	$r24,-3849940(0x45412c) # 7fc55584 <_sidata+0x63c4bf50>
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
800014b4:	44401010 	bnez	$r0,-4177904(0x404010) # 7fc054c4 <_sidata+0x63bfbe90>
800014b8:	447f4444 	bnez	$r2,1081156(0x107f44) # 801093fc <_edata+0x107984>
800014bc:	00404444 	0x00404444
800014c0:	5ec00000 	bne	$r0,$r0,-81920(0x2c000) # 7ffed4c0 <_sidata+0x63fe3e8c>
800014c4:	52525252 	b	-112569776(0x94a5250) # 794a6714 <_sidata+0x5d49d0e0>
800014c8:	5e525252 	bne	$r18,$r18,-110000(0x25250) # 7ffe6718 <_sidata+0x63fdd0e4>
800014cc:	000000c0 	0x000000c0
800014d0:	408f8080 	beqz	$r4,36736(0x8f80) # 8000a450 <_edata+0x89d8>
800014d4:	0e102040 	0x0e102040
800014d8:	20201010 	ll.w	$r16,$r0,8208(0x2010)
800014dc:	0000804f 	0x0000804f
800014e0:	cc424040 	0xcc424040
800014e4:	49ff0000 	bceqz	$fcc0,130816(0x1ff00) # 800213e4 <_edata+0x1f96c>
800014e8:	4949c949 	bcnez	$fcc2,2443720(0x2549c8) # 80255eb0 <_edata+0x254438>
800014ec:	0000807f 	0x0000807f
800014f0:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
800014f4:	485f4020 	bceqz	$fcc1,24384(0x5f40) # 80007434 <_edata+0x59bc>
800014f8:	42414044 	beqz	$r2,1196352(0x124140) # 80125638 <_edata+0x123bc0>
800014fc:	00405845 	0x00405845
80001500:	407c0000 	beqz	$r0,31744(0x7c00) # 80009100 <_edata+0x7688>
80001504:	ff404040 	0xff404040
80001508:	40404040 	beqz	$r2,16448(0x4040) # 80005548 <_edata+0x3ad0>
8000150c:	000000fc 	0x000000fc
80001510:	40407c00 	beqz	$r0,16508(0x407c) # 8000558c <_edata+0x3b14>
80001514:	7f404040 	0x7f404040
80001518:	40404040 	beqz	$r2,16448(0x4040) # 80005558 <_edata+0x3ae0>
8000151c:	0000fc40 	0x0000fc40
80001520:	cc424040 	0xcc424040
80001524:	24fc0000 	ldptr.w	$r0,$r0,-1024(0xfc00)
80001528:	222224a4 	ll.d	$r4,$r5,8740(0x2224)
8000152c:	000062a3 	rdtimel.w	$r3,$r21
80001530:	1f204000 	pcaddu18i	$r0,-458240(0x90200)
80001534:	50475820 	b	8406872(0x804758) # 80805c8c <_edata+0x804214>
80001538:	45424548 	bnez	$r10,2179652(0x214244) # 8021577c <_edata+0x213d04>
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
80001594:	444f4020 	bnez	$r1,20288(0x4f40) # 800064d4 <_edata+0x4a5c>
80001598:	427f4042 	beqz	$r2,687936(0xa7f40) # 800a94d8 <_edata+0xa7a60>
8000159c:	00404344 	0x00404344
800015a0:	44424040 	bnez	$r2,16960(0x4240) # 800057e0 <_edata+0x3d68>
800015a4:	7f40c058 	0x7f40c058
800015a8:	4850c040 	bceqz	$fcc2,20672(0x50c0) # 80006668 <_edata+0x4bf0>
800015ac:	00404046 	0x00404046
800015b0:	20408080 	ll.w	$r0,$r4,16512(0x4080)
800015b4:	00000718 	0x00000718
800015b8:	40403f00 	beqz	$r24,16444(0x403c) # 800055f4 <_edata+0x3b7c>
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
800015f4:	50475820 	b	8406872(0x804758) # 80805d4c <_edata+0x8042d4>
800015f8:	45424548 	bnez	$r10,2179652(0x214244) # 8021583c <_edata+0x213dc4>
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
80001624:	52921000 	b	168464(0x29210) # 8002a834 <_edata+0x28dbc>
80001628:	52321e32 	b	-120966628(0x8ca321c) # 78ca4844 <_sidata+0x5cc9b210>
8000162c:	00101292 	add.w	$r18,$r20,$r4
80001630:	017e0404 	0x017e0404
80001634:	40182100 	beqz	$r8,6176(0x1820) # 80002e54 <_edata+0x13dc>
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
80001684:	54544400 	bl	21572(0x5444) # 80006ac8 <_edata+0x5050>
80001688:	54547f54 	bl	-45067140(0xd50547c) # 7d506b04 <_sidata+0x614fd4d0>
8000168c:	00404454 	0x00404454
80001690:	017e0404 	0x017e0404
80001694:	15ff0000 	lu12i.w	$r0,-2048(0xff800)
80001698:	95551515 	0x95551515
8000169c:	0000007f 	0x0000007f
800016a0:	5a22fe00 	beq	$r16,$r0,-122116(0x222fc) # 7ffe399c <_sidata+0x63fda368>
800016a4:	28102086 	ld.b	$r6,$r4,1032(0x408)
800016a8:	2824e324 	ld.b	$r4,$r25,-1736(0x938)
800016ac:	00202010 	div.w	$r16,$r0,$r8
800016b0:	0804ff00 	0x0804ff00
800016b4:	410d1127 	beqz	$r9,1903888(0x1d0d10) # 801d23c4 <_edata+0x1d094c>
800016b8:	05017f81 	0x05017f81
800016bc:	00003109 	revb.2h	$r9,$r8
800016c0:	82e20000 	0x82e20000
800016c4:	82828282 	0x82828282
800016c8:	fe828282 	0xfe828282
800016cc:	00000000 	0x00000000
800016d0:	403f0000 	beqz	$r0,16128(0x3f00) # 800055d0 <_edata+0x3b58>
800016d4:	40404040 	beqz	$r2,16448(0x4040) # 80005714 <_edata+0x3c9c>
800016d8:	40404040 	beqz	$r2,16448(0x4040) # 80005718 <_edata+0x3ca0>
800016dc:	00007840 	0x00007840
800016e0:	7f000000 	0x7f000000
800016e4:	49494949 	bcnez	$fcc2,2443592(0x254948) # 8025602c <_edata+0x2545b4>
800016e8:	7f494949 	0x7f494949
800016ec:	00000000 	0x00000000
800016f0:	1d214181 	pcaddu12i	$r1,-456180(0x90a0c)
800016f4:	ff814121 	0xff814121
800016f8:	89898989 	0x89898989
800016fc:	00818189 	bstrins.d	$r9,$r12,0x1,0x20
80001700:	82820200 	0x82820200
80001704:	fa122242 	0xfa122242
80001708:	42222206 	beqz	$r16,1712672(0x1a2220) # 801a3928 <_edata+0x1a1eb0>
8000170c:	00008242 	0x00008242
80001710:	fc000101 	0xfc000101
80001714:	45444444 	bnez	$r2,1131588(0x114444) # 80115b58 <_edata+0x1140e0>
80001718:	fc444444 	0xfc444444
8000171c:	00010000 	asrtle.d	$r0,$r0
80001720:	ff101010 	0xff101010
80001724:	3f009010 	0x3f009010
80001728:	44444848 	bnez	$r2,2114632(0x204448) # 80205b70 <_edata+0x2040f8>
8000172c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001730:	7f824404 	0x7f824404
80001734:	ff000001 	0xff000001
80001738:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256080 <_edata+0x254608>
8000173c:	0000ff49 	0x0000ff49
80001740:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc370 <_sidata+0x63ff2d3c>
80001744:	f8080810 	0xf8080810
80001748:	f8080e09 	0xf8080e09
8000174c:	00000808 	0x00000808
80001750:	12226722 	addu16i.d	$r2,$r25,-30567(0x8899)
80001754:	21408092 	sc.w	$r18,$r4,16512(0x4080)
80001758:	21160816 	sc.w	$r22,$r0,5640(0x1608)
8000175c:	00808040 	bstrins.d	$r0,$r2,0x0,0x20
80001760:	00cc4240 	bstrpick.d	$r0,$r18,0xc,0x10
80001764:	54544400 	bl	21572(0x5444) # 80006ba8 <_edata+0x5130>
80001768:	54547f54 	bl	-45067140(0xd50547c) # 7d506be4 <_sidata+0x614fd5b0>
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
800017c8:	44444848 	bnez	$r2,2114632(0x204448) # 80205c10 <_edata+0x204198>
800017cc:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
800017d0:	7f824404 	0x7f824404
800017d4:	ff000001 	0xff000001
800017d8:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256120 <_edata+0x2546a8>
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
80001828:	44444848 	bnez	$r2,2114632(0x204448) # 80205c70 <_edata+0x2041f8>
8000182c:	00704244 	bstrins.w	$r4,$r18,0x10,0x10
80001830:	7f824404 	0x7f824404
80001834:	ff000001 	0xff000001
80001838:	49494949 	bcnez	$fcc2,2443592(0x254948) # 80256180 <_edata+0x254708>
8000183c:	0000ff49 	0x0000ff49
80001840:	63ac3020 	blt	$r1,$r0,-21456(0x3ac30) # 7fffc470 <_sidata+0x63ff2e3c>
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
800018d4:	40806710 	beqz	$r24,-4161436(0x408064) # 7fc09938 <_sidata+0x63c00304>
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
80001924:	54544400 	bl	21572(0x5444) # 80006d68 <_edata+0x52f0>
80001928:	54547f54 	bl	-45067140(0xd50547c) # 7d506da4 <_sidata+0x614fd770>
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
80001958:	49090909 	bcnez	$fcc0,2427144(0x250908) # 80252260 <_edata+0x2507e8>
8000195c:	00007f89 	0x00007f89
80001960:	fc000000 	0xfc000000
80001964:	24242424 	ldptr.w	$r4,$r1,9252(0x2424)
80001968:	23222222 	sc.d	$r2,$r17,8736(0x2220)
8000196c:	00202022 	div.w	$r2,$r1,$r8
80001970:	07182040 	0x07182040
80001974:	4242fe00 	beqz	$r16,148220(0x242fc) # 80025c70 <_edata+0x241f8>
80001978:	42424242 	beqz	$r18,672320(0xa4240) # 800a5bb8 <_edata+0xa4140>
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
800019e4:	54555654 	bl	-112175788(0x9505554) # 79506f38 <_sidata+0x5d4fd904>
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
80001a34:	44403f44 	bnez	$r26,1065020(0x10403c) # 80105a70 <_edata+0x103ff8>
80001a38:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 80006878 <_edata+0x4e00>
80001a3c:	00404758 	0x00404758
80001a40:	cc424040 	0xcc424040
80001a44:	c4040000 	0xc4040000
80001a48:	04fc0404 	csrrd	$r4,0x3f01
80001a4c:	00040404 	alsl.w	$r4,$r0,$r1,0x1
80001a50:	3f000000 	0x3f000000
80001a54:	7f404810 	0x7f404810
80001a58:	417f4040 	beqz	$r2,98112(0x17f40) # 80019998 <_edata+0x17f20>
80001a5c:	00404141 	0x00404141

80001a60 <passwordArray>:
80001a60:	04d204d2 	csrxchg	$r18,$r6,0x3481
80001a64:	04d204d2 	csrxchg	$r18,$r6,0x3481
80001a68:	000004d2 	0x000004d2

80001a6c <IDArray>:
80001a6c:	00000078 	0x00000078
80001a70:	00000000 	0x00000000
	...

80001a76 <mode>:
80001a76:	Address 0x0000000080001a76 is out of bounds.


80001a77 <flag1>:
80001a77:	Address 0x0000000080001a77 is out of bounds.


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
800001b4:	00000000 	0x00000000
	...

800001ba <Count>:
	...

800001bc <Password>:
800001bc:	00000000 	0x00000000

Disassembly of section .bss.g_recvBuff:

800001c0 <g_recvBuff>:
	...

Disassembly of section .bss.USART0_RX_STA:

800001d4 <USART0_RX_STA>:
	...

Disassembly of section .bss.KeyNum:

800001d5 <KeyNum>:
	...

Disassembly of section .bss.flag2:

800001d6 <flag2>:
	...

Disassembly of section .bss.flag3:

800001d7 <flag3>:
	...

Disassembly of section .bss.flag4:

800001d8 <flag4>:
	...

Disassembly of section .bss.flag5:

800001d9 <flag5>:
	...

Disassembly of section .bss.flag6:

800001da <flag6>:
	...

Disassembly of section .bss.flag7:

800001db <flag7>:
	...

Disassembly of section .bss.flag8:

800001dc <flag8>:
	...

Disassembly of section .bss.flag9:

800001dd <flag9>:
	...

Disassembly of section .bss.flag10:

800001de <flag10>:
	...

Disassembly of section .bss.flag11:

800001df <flag11>:
	...

Disassembly of section .bss.flag12:

800001e0 <flag12>:
	...

Disassembly of section .bss.flag13:

800001e1 <flag13>:
	...

Disassembly of section .bss.flag14:

800001e2 <flag14>:
	...

Disassembly of section .bss.flag15:

800001e3 <flag15>:
	...

Disassembly of section .bss.flag16:

800001e4 <flag16>:
	...

Disassembly of section .bss.flag17:

800001e5 <flag17>:
	...

Disassembly of section .bss.flag18:

800001e6 <flag18>:
	...

Disassembly of section .bss.flag19:

800001e7 <flag19>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
