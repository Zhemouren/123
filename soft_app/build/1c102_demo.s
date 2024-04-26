
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
1c00000c:	038df1ef 	ori	$r15,$r15,0x37c
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
1c0000a0:	54488400 	bl	18564(0x4884) # 1c004924 <main>
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
1c001090:	54689400 	bl	26772(0x6894) # 1c007924 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5468d400 	bl	26836(0x68d4) # 1c00796c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54695800 	bl	26968(0x6958) # 1c0079f8 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54698c00 	bl	27020(0x698c) # 1c007a34 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5467a400 	bl	26532(0x67a4) # 1c007854 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	546b3800 	bl	27448(0x6b38) # 1c007bf0 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	546a4400 	bl	27204(0x6a44) # 1c007b0c <intc_handler>
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

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b5f084 	ld.w	$r4,$r4,-644(0xd7c)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <DisableInt>:
DisableInt():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803076 	st.w	$r22,$r3,12(0xc)
1c001334:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001338:	0380100c 	ori	$r12,$r0,0x4
1c00133c:	04000180 	csrxchg	$r0,$r12,0x0
1c001340:	03400000 	andi	$r0,$r0,0x0
1c001344:	28803076 	ld.w	$r22,$r3,12(0xc)
1c001348:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00134c:	4c000020 	jirl	$r0,$r1,0

1c001350 <EnableInt>:
EnableInt():
1c001350:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001354:	29803076 	st.w	$r22,$r3,12(0xc)
1c001358:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00135c:	0380100c 	ori	$r12,$r0,0x4
1c001360:	0400018c 	csrxchg	$r12,$r12,0x0
1c001364:	03400000 	andi	$r0,$r0,0x0
1c001368:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00136c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001370:	4c000020 	jirl	$r0,$r1,0

1c001374 <Set_Timer_stop>:
Set_Timer_stop():
1c001374:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001378:	29803076 	st.w	$r22,$r3,12(0xc)
1c00137c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c001380:	04010420 	csrwr	$r0,0x41
1c001384:	03400000 	andi	$r0,$r0,0x0
1c001388:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00138c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c001390:	4c000020 	jirl	$r0,$r1,0

1c001394 <Set_Timer_clear>:
Set_Timer_clear():
1c001394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001398:	29803076 	st.w	$r22,$r3,12(0xc)
1c00139c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0013a0:	0380040c 	ori	$r12,$r0,0x1
1c0013a4:	0401102c 	csrwr	$r12,0x44
1c0013a8:	03400000 	andi	$r0,$r0,0x0
1c0013ac:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0013b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013b4:	4c000020 	jirl	$r0,$r1,0

1c0013b8 <Set_Timer_Init>:
Set_Timer_Init():
1c0013b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0013c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0013c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0013cc:	0401040c 	csrrd	$r12,0x41
1c0013d0:	03800dac 	ori	$r12,$r13,0x3
1c0013d4:	0401042c 	csrwr	$r12,0x41
1c0013d8:	03400000 	andi	$r0,$r0,0x0
1c0013dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0013e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0013e4:	4c000020 	jirl	$r0,$r1,0

1c0013e8 <Wake_Set>:
Wake_Set():
1c0013e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0013ec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0013f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0013f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0013f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0013fc:	40006980 	beqz	$r12,104(0x68) # 1c001464 <Wake_Set+0x7c>
1c001400:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001404:	0040a18c 	slli.w	$r12,$r12,0x8
1c001408:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00140c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001410:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001414:	0380218c 	ori	$r12,$r12,0x8
1c001418:	2880018d 	ld.w	$r13,$r12,0
1c00141c:	14001fec 	lu12i.w	$r12,255(0xff)
1c001420:	03bffd8c 	ori	$r12,$r12,0xfff
1c001424:	0014b1ac 	and	$r12,$r13,$r12
1c001428:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00142c:	001031ac 	add.w	$r12,$r13,$r12
1c001430:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001434:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001438:	0380318c 	ori	$r12,$r12,0xc
1c00143c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001440:	2980018d 	st.w	$r13,$r12,0
1c001444:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001448:	0380118c 	ori	$r12,$r12,0x4
1c00144c:	2880018d 	ld.w	$r13,$r12,0
1c001450:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001454:	0380118c 	ori	$r12,$r12,0x4
1c001458:	038601ad 	ori	$r13,$r13,0x180
1c00145c:	2980018d 	st.w	$r13,$r12,0
1c001460:	50002400 	b	36(0x24) # 1c001484 <Wake_Set+0x9c>
1c001464:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001468:	0380118c 	ori	$r12,$r12,0x4
1c00146c:	2880018e 	ld.w	$r14,$r12,0
1c001470:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001474:	0380118c 	ori	$r12,$r12,0x4
1c001478:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c00147c:	0014b5cd 	and	$r13,$r14,$r13
1c001480:	2980018d 	st.w	$r13,$r12,0
1c001484:	03400000 	andi	$r0,$r0,0x0
1c001488:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00148c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001490:	4c000020 	jirl	$r0,$r1,0

1c001494 <EXTI_Init>:
EXTI_Init():
1c001494:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001498:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00149c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0014a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0014b0:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0014b4:	40014180 	beqz	$r12,320(0x140) # 1c0015f4 <EXTI_Init+0x160>
1c0014b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0014bc:	0380118c 	ori	$r12,$r12,0x4
1c0014c0:	2880018e 	ld.w	$r14,$r12,0
1c0014c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0014c8:	0380118c 	ori	$r12,$r12,0x4
1c0014cc:	15fbffed 	lu12i.w	$r13,-8193(0xfdfff)
1c0014d0:	03bffdad 	ori	$r13,$r13,0xfff
1c0014d4:	0014b5cd 	and	$r13,$r14,$r13
1c0014d8:	2980018d 	st.w	$r13,$r12,0
1c0014dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0014e0:	0380118c 	ori	$r12,$r12,0x4
1c0014e4:	2880018e 	ld.w	$r14,$r12,0
1c0014e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0014ec:	0380118c 	ori	$r12,$r12,0x4
1c0014f0:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c0014f4:	001535cd 	or	$r13,$r14,$r13
1c0014f8:	2980018d 	st.w	$r13,$r12,0
1c0014fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001500:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c001504:	44002980 	bnez	$r12,40(0x28) # 1c00152c <EXTI_Init+0x98>
1c001508:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00150c:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c001510:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001514:	2880018c 	ld.w	$r12,$r12,0
1c001518:	0014300c 	nor	$r12,$r0,$r12
1c00151c:	0014b1ad 	and	$r13,$r13,$r12
1c001520:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001524:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001528:	50002000 	b	32(0x20) # 1c001548 <EXTI_Init+0xb4>
1c00152c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001530:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c001534:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001538:	2880018c 	ld.w	$r12,$r12,0
1c00153c:	001531ad 	or	$r13,$r13,$r12
1c001540:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001544:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001548:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00154c:	2880018d 	ld.w	$r13,$r12,0
1c001550:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001554:	2880018c 	ld.w	$r12,$r12,0
1c001558:	001531ad 	or	$r13,$r13,$r12
1c00155c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001560:	2980018d 	st.w	$r13,$r12,0
1c001564:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001568:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00156c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001570:	2880018c 	ld.w	$r12,$r12,0
1c001574:	0014300c 	nor	$r12,$r0,$r12
1c001578:	0014b1ad 	and	$r13,$r13,$r12
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001584:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001588:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c00158c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001590:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0015b4 <EXTI_Init+0x120>
1c001594:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001598:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00159c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0015a0:	2880018c 	ld.w	$r12,$r12,0
1c0015a4:	001531ad 	or	$r13,$r13,$r12
1c0015a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015ac:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0015b0:	50002400 	b	36(0x24) # 1c0015d4 <EXTI_Init+0x140>
1c0015b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015b8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0015bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0015c0:	2880018c 	ld.w	$r12,$r12,0
1c0015c4:	0014300c 	nor	$r12,$r0,$r12
1c0015c8:	0014b1ad 	and	$r13,$r13,$r12
1c0015cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015d0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0015d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015d8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0015dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0015e0:	2880018c 	ld.w	$r12,$r12,0
1c0015e4:	001531ad 	or	$r13,$r13,$r12
1c0015e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015ec:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0015f0:	50002400 	b	36(0x24) # 1c001614 <EXTI_Init+0x180>
1c0015f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0015f8:	2880018d 	ld.w	$r13,$r12,0
1c0015fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001600:	2880018c 	ld.w	$r12,$r12,0
1c001604:	0014300c 	nor	$r12,$r0,$r12
1c001608:	0014b1ad 	and	$r13,$r13,$r12
1c00160c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001610:	2980018d 	st.w	$r13,$r12,0
1c001614:	03400000 	andi	$r0,$r0,0x0
1c001618:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00161c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001620:	4c000020 	jirl	$r0,$r1,0

1c001624 <EXTI_StructInit>:
EXTI_StructInit():
1c001624:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001628:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00162c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001630:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001634:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001638:	29800180 	st.w	$r0,$r12,0
1c00163c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001640:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001644:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001648:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00164c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c001650:	2980218d 	st.w	$r13,$r12,8(0x8)
1c001654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001658:	29803180 	st.w	$r0,$r12,12(0xc)
1c00165c:	03400000 	andi	$r0,$r0,0x0
1c001660:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001664:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001668:	4c000020 	jirl	$r0,$r1,0

1c00166c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c00166c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001670:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001674:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001678:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00167c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c001680:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001684:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c001688:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00168c:	001531ad 	or	$r13,$r13,$r12
1c001690:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001694:	2980318d 	st.w	$r13,$r12,12(0xc)
1c001698:	03400000 	andi	$r0,$r0,0x0
1c00169c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0016a0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0016a4:	4c000020 	jirl	$r0,$r1,0

1c0016a8 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0016a8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0016ac:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0016b0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0016b4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0016b8:	001500ac 	move	$r12,$r5
1c0016bc:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0016c0:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0016c4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0016c8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0016cc:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0016d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0016d4:	2880018c 	ld.w	$r12,$r12,0
1c0016d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0016dc:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0016e0:	50006c00 	b	108(0x6c) # 1c00174c <AFIO_RemapConfig+0xa4>
1c0016e4:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c0016e8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0016ec:	001831ac 	sra.w	$r12,$r13,$r12
1c0016f0:	0340058c 	andi	$r12,$r12,0x1
1c0016f4:	40004d80 	beqz	$r12,76(0x4c) # 1c001740 <AFIO_RemapConfig+0x98>
1c0016f8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0016fc:	0040858c 	slli.w	$r12,$r12,0x1
1c001700:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001704:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001708:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00170c:	001731ac 	sll.w	$r12,$r13,$r12
1c001710:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001714:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001718:	0014300c 	nor	$r12,$r0,$r12
1c00171c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001720:	0014b1ac 	and	$r12,$r13,$r12
1c001724:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001728:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00172c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001730:	001731ac 	sll.w	$r12,$r13,$r12
1c001734:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001738:	001531ac 	or	$r12,$r13,$r12
1c00173c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001740:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001744:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001748:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00174c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001750:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001754:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0016e4 <AFIO_RemapConfig+0x3c>
1c001758:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00175c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001760:	2980018d 	st.w	$r13,$r12,0
1c001764:	03400000 	andi	$r0,$r0,0x0
1c001768:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00176c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001770:	4c000020 	jirl	$r0,$r1,0

1c001774 <get_count>:
get_count():
1c001774:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001778:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00177c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001780:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001784:	0000600c 	rdtimel.w	$r12,$r0
1c001788:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00178c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001790:	00150184 	move	$r4,$r12
1c001794:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001798:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00179c:	4c000020 	jirl	$r0,$r1,0

1c0017a0 <open_count>:
open_count():
1c0017a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017a4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0017a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0017ac:	0380400c 	ori	$r12,$r0,0x10
1c0017b0:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0017b4:	03400000 	andi	$r0,$r0,0x0
1c0017b8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0017bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017c0:	4c000020 	jirl	$r0,$r1,0

1c0017c4 <close_count>:
close_count():
1c0017c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0017c8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0017cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0017d0:	0380400c 	ori	$r12,$r0,0x10
1c0017d4:	0402bd8c 	csrxchg	$r12,$r12,0xaf
1c0017d8:	03400000 	andi	$r0,$r0,0x0
1c0017dc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0017e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0017e4:	4c000020 	jirl	$r0,$r1,0

1c0017e8 <start_count>:
start_count():
1c0017e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0017ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0017f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0017f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0017f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0017fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001800:	29800180 	st.w	$r0,$r12,0
1c001804:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001808:	29801180 	st.w	$r0,$r12,4(0x4)
1c00180c:	57ff6bff 	bl	-152(0xfffff68) # 1c001774 <get_count>
1c001810:	0015008d 	move	$r13,$r4
1c001814:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001818:	2980018d 	st.w	$r13,$r12,0
1c00181c:	03400000 	andi	$r0,$r0,0x0
1c001820:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001824:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001828:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00182c:	4c000020 	jirl	$r0,$r1,0

1c001830 <stop_count>:
stop_count():
1c001830:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001834:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001838:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00183c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001840:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001844:	57ff33ff 	bl	-208(0xfffff30) # 1c001774 <get_count>
1c001848:	0015008d 	move	$r13,$r4
1c00184c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001850:	2980118d 	st.w	$r13,$r12,4(0x4)
1c001854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001858:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00185c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001860:	2880018c 	ld.w	$r12,$r12,0
1c001864:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c001880 <stop_count+0x50>
1c001868:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00186c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001870:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001874:	2880018c 	ld.w	$r12,$r12,0
1c001878:	001131ac 	sub.w	$r12,$r13,$r12
1c00187c:	50002800 	b	40(0x28) # 1c0018a4 <stop_count+0x74>
1c001880:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00188c:	2880018c 	ld.w	$r12,$r12,0
1c001890:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001894:	001131ad 	sub.w	$r13,$r13,$r12
1c001898:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00189c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0018a0:	001031ac 	add.w	$r12,$r13,$r12
1c0018a4:	00150184 	move	$r4,$r12
1c0018a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0018ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0018b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0018b4:	4c000020 	jirl	$r0,$r1,0

1c0018b8 <delay_cycle>:
delay_cycle():
1c0018b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0018bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0018c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0018c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0018c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0018cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0018d0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0018d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0018d8:	57fecbff 	bl	-312(0xffffec8) # 1c0017a0 <open_count>
1c0018dc:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0018e0:	00150184 	move	$r4,$r12
1c0018e4:	57ff07ff 	bl	-252(0xfffff04) # 1c0017e8 <start_count>
1c0018e8:	50001400 	b	20(0x14) # 1c0018fc <delay_cycle+0x44>
1c0018ec:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0018f0:	00150184 	move	$r4,$r12
1c0018f4:	57ff3fff 	bl	-196(0xfffff3c) # 1c001830 <stop_count>
1c0018f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0018fc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001900:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001904:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0018ec <delay_cycle+0x34>
1c001908:	57febfff 	bl	-324(0xffffebc) # 1c0017c4 <close_count>
1c00190c:	03400000 	andi	$r0,$r0,0x0
1c001910:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001914:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001918:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00191c:	4c000020 	jirl	$r0,$r1,0

1c001920 <delay_us>:
delay_us():
1c001920:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001924:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001928:	29806076 	st.w	$r22,$r3,24(0x18)
1c00192c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001930:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001938:	00408d8c 	slli.w	$r12,$r12,0x3
1c00193c:	00150184 	move	$r4,$r12
1c001940:	57ff7bff 	bl	-136(0xfffff78) # 1c0018b8 <delay_cycle>
1c001944:	03400000 	andi	$r0,$r0,0x0
1c001948:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00194c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001950:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001954:	4c000020 	jirl	$r0,$r1,0

1c001958 <delay_ms>:
delay_ms():
1c001958:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00195c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001960:	29806076 	st.w	$r22,$r3,24(0x18)
1c001964:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001968:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00196c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001970:	1400002c 	lu12i.w	$r12,1(0x1)
1c001974:	03bd018c 	ori	$r12,$r12,0xf40
1c001978:	001c31ac 	mul.w	$r12,$r13,$r12
1c00197c:	00150184 	move	$r4,$r12
1c001980:	57ff3bff 	bl	-200(0xfffff38) # 1c0018b8 <delay_cycle>
1c001984:	03400000 	andi	$r0,$r0,0x0
1c001988:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00198c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001990:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001994:	4c000020 	jirl	$r0,$r1,0

1c001998 <delay_s>:
delay_s():
1c001998:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00199c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0019a0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019a4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0019ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0019b0:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0019b4:	001c31ac 	mul.w	$r12,$r13,$r12
1c0019b8:	00150184 	move	$r4,$r12
1c0019bc:	57ff9fff 	bl	-100(0xfffff9c) # 1c001958 <delay_ms>
1c0019c0:	03400000 	andi	$r0,$r0,0x0
1c0019c4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019c8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019d0:	4c000020 	jirl	$r0,$r1,0

1c0019d4 <myputchar>:
myputchar():
1c0019d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0019d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0019dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0019e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0019e4:	0015008c 	move	$r12,$r4
1c0019e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019ec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019f0:	00150185 	move	$r5,$r12
1c0019f4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0019f8:	540f2c00 	bl	3884(0xf2c) # 1c002924 <UART_SendData>
1c0019fc:	03400000 	andi	$r0,$r0,0x0
1c001a00:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001a04:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001a08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001a0c:	4c000020 	jirl	$r0,$r1,0

1c001a10 <printbase>:
printbase():
1c001a10:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c001a14:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c001a18:	2981a076 	st.w	$r22,$r3,104(0x68)
1c001a1c:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c001a20:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001a24:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a28:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a2c:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a30:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001a34:	40002580 	beqz	$r12,36(0x24) # 1c001a58 <printbase+0x48>
1c001a38:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a3c:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a58 <printbase+0x48>
1c001a40:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a44:	0011300c 	sub.w	$r12,$r0,$r12
1c001a48:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a4c:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a50:	57ff87ff 	bl	-124(0xfffff84) # 1c0019d4 <myputchar>
1c001a54:	50000c00 	b	12(0xc) # 1c001a60 <printbase+0x50>
1c001a58:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a5c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a60:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a64:	50005000 	b	80(0x50) # 1c001ab4 <printbase+0xa4>
1c001a68:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a6c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a70:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a74:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a7c <printbase+0x6c>
1c001a78:	002a0007 	break	0x7
1c001a7c:	00005dcc 	ext.w.b	$r12,$r14
1c001a80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a84:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a88:	001035cd 	add.w	$r13,$r14,$r13
1c001a8c:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a90:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a94:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a98:	002135cc 	div.wu	$r12,$r14,$r13
1c001a9c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001aa4 <printbase+0x94>
1c001aa0:	002a0007 	break	0x7
1c001aa4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001aa8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001aac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ab0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ab4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001ab8:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a68 <printbase+0x58>
1c001abc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001ac0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ac4:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001ac8:	001231ad 	slt	$r13,$r13,$r12
1c001acc:	0013b5ce 	masknez	$r14,$r14,$r13
1c001ad0:	0013358c 	maskeqz	$r12,$r12,$r13
1c001ad4:	001531cc 	or	$r12,$r14,$r12
1c001ad8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001adc:	50007400 	b	116(0x74) # 1c001b50 <printbase+0x140>
1c001ae0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae8:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b04 <printbase+0xf4>
1c001aec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001af0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001af4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001af8:	001031ac 	add.w	$r12,$r13,$r12
1c001afc:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b00:	50000800 	b	8(0x8) # 1c001b08 <printbase+0xf8>
1c001b04:	0015000c 	move	$r12,$r0
1c001b08:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b0c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b10:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b14:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b2c <printbase+0x11c>
1c001b18:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b20:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b28:	50001400 	b	20(0x14) # 1c001b3c <printbase+0x12c>
1c001b2c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b34:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b3c:	00150184 	move	$r4,$r12
1c001b40:	57fe97ff 	bl	-364(0xffffe94) # 1c0019d4 <myputchar>
1c001b44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b48:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b54:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001ae0 <printbase+0xd0>
1c001b58:	0015000c 	move	$r12,$r0
1c001b5c:	00150184 	move	$r4,$r12
1c001b60:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b64:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b68:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b6c:	4c000020 	jirl	$r0,$r1,0

1c001b70 <ls1x_puts>:
ls1x_puts():
1c001b70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b74:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b78:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b7c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b80:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b84:	50003000 	b	48(0x30) # 1c001bb4 <ls1x_puts+0x44>
1c001b88:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b8c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b90:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b9c <ls1x_puts+0x2c>
1c001b94:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b98:	57fe3fff 	bl	-452(0xffffe3c) # 1c0019d4 <myputchar>
1c001b9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001ba0:	00150184 	move	$r4,$r12
1c001ba4:	57fe33ff 	bl	-464(0xffffe30) # 1c0019d4 <myputchar>
1c001ba8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bb0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bb8:	2a00018c 	ld.bu	$r12,$r12,0
1c001bbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001bc0:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001bc4:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b88 <ls1x_puts+0x18>
1c001bc8:	0015000c 	move	$r12,$r0
1c001bcc:	00150184 	move	$r4,$r12
1c001bd0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001bd4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001bd8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001bdc:	4c000020 	jirl	$r0,$r1,0

1c001be0 <myprintf>:
myprintf():
1c001be0:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001be4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001be8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001bec:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001bf0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001bf4:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bf8:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bfc:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001c00:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001c04:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001c08:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001c0c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001c10:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001c14:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001c18:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001c1c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001c28:	50033000 	b	816(0x330) # 1c001f58 <myprintf+0x378>
1c001c2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c30:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2a00018c 	ld.bu	$r12,$r12,0
1c001c3c:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001c40:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001c44:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001c48:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001f2c <myprintf+0x34c>
1c001c4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c50:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c5c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c60:	001031ac 	add.w	$r12,$r13,$r12
1c001c64:	2800018c 	ld.b	$r12,$r12,0
1c001c68:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c6c:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c70:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001f1c <myprintf+0x33c>
1c001c74:	0040898d 	slli.w	$r13,$r12,0x2
1c001c78:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c001c7c:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001c80:	001031ac 	add.w	$r12,$r13,$r12
1c001c84:	2880018c 	ld.w	$r12,$r12,0
1c001c88:	4c000180 	jirl	$r0,$r12,0
1c001c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c90:	2880018c 	ld.w	$r12,$r12,0
1c001c94:	00150184 	move	$r4,$r12
1c001c98:	57fedbff 	bl	-296(0xffffed8) # 1c001b70 <ls1x_puts>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ca4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ca8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001cb0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cb4:	50029800 	b	664(0x298) # 1c001f4c <myprintf+0x36c>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	2880018c 	ld.w	$r12,$r12,0
1c001cc0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001cc4:	00150184 	move	$r4,$r12
1c001cc8:	57fd0fff 	bl	-756(0xffffd0c) # 1c0019d4 <myputchar>
1c001ccc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cdc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ce0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ce4:	50026800 	b	616(0x268) # 1c001f4c <myprintf+0x36c>
1c001ce8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cec:	2880018c 	ld.w	$r12,$r12,0
1c001cf0:	00150007 	move	$r7,$r0
1c001cf4:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cf8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cfc:	00150184 	move	$r4,$r12
1c001d00:	57fd13ff 	bl	-752(0xffffd10) # 1c001a10 <printbase>
1c001d04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d08:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d1c:	50023000 	b	560(0x230) # 1c001f4c <myprintf+0x36c>
1c001d20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d24:	2880018c 	ld.w	$r12,$r12,0
1c001d28:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001d2c:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001d30:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d34:	00150184 	move	$r4,$r12
1c001d38:	57fcdbff 	bl	-808(0xffffcd8) # 1c001a10 <printbase>
1c001d3c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d40:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d54:	5001f800 	b	504(0x1f8) # 1c001f4c <myprintf+0x36c>
1c001d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d5c:	2880018c 	ld.w	$r12,$r12,0
1c001d60:	00150007 	move	$r7,$r0
1c001d64:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d68:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d6c:	00150184 	move	$r4,$r12
1c001d70:	57fca3ff 	bl	-864(0xffffca0) # 1c001a10 <printbase>
1c001d74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d78:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d8c:	5001c000 	b	448(0x1c0) # 1c001f4c <myprintf+0x36c>
1c001d90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d94:	2880018c 	ld.w	$r12,$r12,0
1c001d98:	00150007 	move	$r7,$r0
1c001d9c:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001da0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001da4:	00150184 	move	$r4,$r12
1c001da8:	57fc6bff 	bl	-920(0xffffc68) # 1c001a10 <printbase>
1c001dac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001db0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001db4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001db8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc4:	50018800 	b	392(0x188) # 1c001f4c <myprintf+0x36c>
1c001dc8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dcc:	2880018c 	ld.w	$r12,$r12,0
1c001dd0:	00150007 	move	$r7,$r0
1c001dd4:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001dd8:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ddc:	00150184 	move	$r4,$r12
1c001de0:	57fc33ff 	bl	-976(0xffffc30) # 1c001a10 <printbase>
1c001de4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001de8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dfc:	50015000 	b	336(0x150) # 1c001f4c <myprintf+0x36c>
1c001e00:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001e04:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c0019d4 <myputchar>
1c001e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e14:	50013800 	b	312(0x138) # 1c001f4c <myprintf+0x36c>
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e24:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e28:	50003c00 	b	60(0x3c) # 1c001e64 <myprintf+0x284>
1c001e2c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e30:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e34:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e40:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e44:	001031cc 	add.w	$r12,$r14,$r12
1c001e48:	2800018c 	ld.b	$r12,$r12,0
1c001e4c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e50:	001031ac 	add.w	$r12,$r13,$r12
1c001e54:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e6c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e70:	001031ac 	add.w	$r12,$r13,$r12
1c001e74:	2800018d 	ld.b	$r13,$r12,0
1c001e78:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e7c:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c54 <myprintf+0x74>
1c001e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e88:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e8c:	001031ac 	add.w	$r12,$r13,$r12
1c001e90:	2800018d 	ld.b	$r13,$r12,0
1c001e94:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e98:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e2c <myprintf+0x24c>
1c001e9c:	53fdbbff 	b	-584(0xffffdb8) # 1c001c54 <myprintf+0x74>
1c001ea0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ea4:	50003c00 	b	60(0x3c) # 1c001ee0 <myprintf+0x300>
1c001ea8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001eac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001eb0:	001c31ad 	mul.w	$r13,$r13,$r12
1c001eb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ebc:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001ec0:	001031cc 	add.w	$r12,$r14,$r12
1c001ec4:	2800018c 	ld.b	$r12,$r12,0
1c001ec8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001ecc:	001031ac 	add.w	$r12,$r13,$r12
1c001ed0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001edc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ee4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ee8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001eec:	001031ac 	add.w	$r12,$r13,$r12
1c001ef0:	2800018d 	ld.b	$r13,$r12,0
1c001ef4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001ef8:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c54 <myprintf+0x74>
1c001efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f04:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f08:	001031ac 	add.w	$r12,$r13,$r12
1c001f0c:	2800018d 	ld.b	$r13,$r12,0
1c001f10:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f14:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001ea8 <myprintf+0x2c8>
1c001f18:	53fd3fff 	b	-708(0xffffd3c) # 1c001c54 <myprintf+0x74>
1c001f1c:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001f20:	57fab7ff 	bl	-1356(0xffffab4) # 1c0019d4 <myputchar>
1c001f24:	03400000 	andi	$r0,$r0,0x0
1c001f28:	50002400 	b	36(0x24) # 1c001f4c <myprintf+0x36c>
1c001f2c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001f30:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f34:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001f40 <myprintf+0x360>
1c001f38:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001f3c:	57fa9bff 	bl	-1384(0xffffa98) # 1c0019d4 <myputchar>
1c001f40:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f44:	00150184 	move	$r4,$r12
1c001f48:	57fa8fff 	bl	-1396(0xffffa8c) # 1c0019d4 <myputchar>
1c001f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f5c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f60:	001031ac 	add.w	$r12,$r13,$r12
1c001f64:	2800018c 	ld.b	$r12,$r12,0
1c001f68:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001c2c <myprintf+0x4c>
1c001f6c:	0015000c 	move	$r12,$r0
1c001f70:	00150184 	move	$r4,$r12
1c001f74:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f78:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f7c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f80:	4c000020 	jirl	$r0,$r1,0

1c001f84 <Rtc_Read>:
Rtc_Read():
1c001f84:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f88:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001f8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f94:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001f98:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001f9c:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c001fa0:	0380318c 	ori	$r12,$r12,0xc
1c001fa4:	2880018c 	ld.w	$r12,$r12,0
1c001fa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fac:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c001fb0:	0380218c 	ori	$r12,$r12,0x8
1c001fb4:	2880018c 	ld.w	$r12,$r12,0
1c001fb8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	0044a58c 	srli.w	$r12,$r12,0x9
1c001fc4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fc8:	0341fd8c 	andi	$r12,$r12,0x7f
1c001fcc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fd4:	2900158d 	st.b	$r13,$r12,5(0x5)
1c001fd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fdc:	0044958c 	srli.w	$r12,$r12,0x5
1c001fe0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001fe4:	03403d8c 	andi	$r12,$r12,0xf
1c001fe8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c001fec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001ff0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001ff4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ff8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ffc:	03407d8c 	andi	$r12,$r12,0x1f
1c002000:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002004:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002008:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00200c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002010:	0044c18c 	srli.w	$r12,$r12,0x10
1c002014:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002018:	03407d8c 	andi	$r12,$r12,0x1f
1c00201c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002020:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002024:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002028:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00202c:	0044a98c 	srli.w	$r12,$r12,0xa
1c002030:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002034:	0340fd8c 	andi	$r12,$r12,0x3f
1c002038:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00203c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002040:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002044:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002048:	0044918c 	srli.w	$r12,$r12,0x4
1c00204c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002050:	0340fd8c 	andi	$r12,$r12,0x3f
1c002054:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002058:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00205c:	2900018d 	st.b	$r13,$r12,0
1c002060:	03400000 	andi	$r0,$r0,0x0
1c002064:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002068:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00206c:	4c000020 	jirl	$r0,$r1,0

1c002070 <Rtc_Write>:
Rtc_Write():
1c002070:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002074:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002078:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00207c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002080:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002084:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c002088:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c00208c:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c00209c <Rtc_Write+0x2c>
1c002090:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002094:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002098:	44001180 	bnez	$r12,16(0x10) # 1c0020a8 <Rtc_Write+0x38>
1c00209c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020a0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0020a4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0020a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020ac:	2a000d8d 	ld.bu	$r13,$r12,3(0x3)
1c0020b0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0020b4:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c0020c4 <Rtc_Write+0x54>
1c0020b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020bc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0020c0:	44001180 	bnez	$r12,16(0x10) # 1c0020d0 <Rtc_Write+0x60>
1c0020c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020c8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0020cc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0020d0:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c0020d4:	1410000d 	lu12i.w	$r13,32768(0x8000)
1c0020d8:	2980018d 	st.w	$r13,$r12,0
1c0020dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020e0:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c0020e4:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c0020e8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0020ec:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0020f4 <Rtc_Write+0x84>
1c0020f0:	002a0007 	break	0x7
1c0020f4:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0020f8:	0040c18d 	slli.w	$r13,$r12,0x10
1c0020fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002100:	2a00058e 	ld.bu	$r14,$r12,1(0x1)
1c002104:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c002108:	0021b1cf 	mod.wu	$r15,$r14,$r12
1c00210c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002114 <Rtc_Write+0xa4>
1c002110:	002a0007 	break	0x7
1c002114:	006781ec 	bstrpick.w	$r12,$r15,0x7,0x0
1c002118:	0040a98c 	slli.w	$r12,$r12,0xa
1c00211c:	001531ad 	or	$r13,$r13,$r12
1c002120:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002124:	2a00018e 	ld.bu	$r14,$r12,0
1c002128:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c00212c:	0021b1cf 	mod.wu	$r15,$r14,$r12
1c002130:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002138 <Rtc_Write+0xc8>
1c002134:	002a0007 	break	0x7
1c002138:	006781ec 	bstrpick.w	$r12,$r15,0x7,0x0
1c00213c:	0040918c 	slli.w	$r12,$r12,0x4
1c002140:	001531ac 	or	$r12,$r13,$r12
1c002144:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002148:	2a0019ae 	ld.bu	$r14,$r13,6(0x6)
1c00214c:	0281900d 	addi.w	$r13,$r0,100(0x64)
1c002150:	0021b5cf 	mod.wu	$r15,$r14,$r13
1c002154:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00215c <Rtc_Write+0xec>
1c002158:	002a0007 	break	0x7
1c00215c:	006781ed 	bstrpick.w	$r13,$r15,0x7,0x0
1c002160:	0015358d 	or	$r13,$r12,$r13
1c002164:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c002168:	0380218c 	ori	$r12,$r12,0x8
1c00216c:	2980018d 	st.w	$r13,$r12,0
1c002170:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002174:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002178:	0040a58d 	slli.w	$r13,$r12,0x9
1c00217c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002180:	2a00118e 	ld.bu	$r14,$r12,4(0x4)
1c002184:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c002188:	0021b1cf 	mod.wu	$r15,$r14,$r12
1c00218c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002194 <Rtc_Write+0x124>
1c002190:	002a0007 	break	0x7
1c002194:	006781ec 	bstrpick.w	$r12,$r15,0x7,0x0
1c002198:	0040958c 	slli.w	$r12,$r12,0x5
1c00219c:	001531ad 	or	$r13,$r13,$r12
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021a8:	03407d8c 	andi	$r12,$r12,0x1f
1c0021ac:	001531ad 	or	$r13,$r13,$r12
1c0021b0:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c0021b4:	0380318c 	ori	$r12,$r12,0xc
1c0021b8:	2980018d 	st.w	$r13,$r12,0
1c0021bc:	157fd70c 	lu12i.w	$r12,-262472(0xbfeb8)
1c0021c0:	0380118c 	ori	$r12,$r12,0x4
1c0021c4:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c0021c8:	2980018d 	st.w	$r13,$r12,0
1c0021cc:	03400000 	andi	$r0,$r0,0x0
1c0021d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0021d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0021d8:	4c000020 	jirl	$r0,$r1,0

1c0021dc <RtcUpdateData>:
RtcUpdateData():
1c0021dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0021e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0021e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0021e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0021ec:	0015008c 	move	$r12,$r4
1c0021f0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0021f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0021f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0021fc:	40001180 	beqz	$r12,16(0x10) # 1c00220c <RtcUpdateData+0x30>
1c002200:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c002204:	57fd83ff 	bl	-640(0xffffd80) # 1c001f84 <Rtc_Read>
1c002208:	50000c00 	b	12(0xc) # 1c002214 <RtcUpdateData+0x38>
1c00220c:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c002210:	57fe63ff 	bl	-416(0xffffe60) # 1c002070 <Rtc_Write>
1c002214:	03400000 	andi	$r0,$r0,0x0
1c002218:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00221c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002220:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002224:	4c000020 	jirl	$r0,$r1,0

1c002228 <Spi_Write_Read_1to4>:
Spi_Write_Read_1to4():
1c002228:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00222c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002230:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002234:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002238:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00223c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002240:	50002800 	b	40(0x28) # 1c002268 <Spi_Write_Read_1to4+0x40>
1c002244:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002248:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00224c:	001031ad 	add.w	$r13,$r13,$r12
1c002250:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002254:	2a0001ad 	ld.bu	$r13,$r13,0
1c002258:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00225c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002260:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002264:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002268:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00226c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002270:	6bffd5ac 	bltu	$r13,$r12,-44(0x3ffd4) # 1c002244 <Spi_Write_Read_1to4+0x1c>
1c002274:	03400000 	andi	$r0,$r0,0x0
1c002278:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00227c:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002280:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002284:	0340118c 	andi	$r12,$r12,0x4
1c002288:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002278 <Spi_Write_Read_1to4+0x50>
1c00228c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002290:	50002c00 	b	44(0x2c) # 1c0022bc <Spi_Write_Read_1to4+0x94>
1c002294:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c002298:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00229c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a0:	001031cc 	add.w	$r12,$r14,$r12
1c0022a4:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c0022a8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0022ac:	2900018d 	st.b	$r13,$r12,0
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0022c0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0022c4:	0015018d 	move	$r13,$r12
1c0022c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022cc:	6bffc98d 	bltu	$r12,$r13,-56(0x3ffc8) # 1c002294 <Spi_Write_Read_1to4+0x6c>
1c0022d0:	03400000 	andi	$r0,$r0,0x0
1c0022d4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0022d8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0022dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0022e0:	0340058c 	andi	$r12,$r12,0x1
1c0022e4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0022d4 <Spi_Write_Read_1to4+0xac>
1c0022e8:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c0022ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0022f0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0022f4:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0022f8:	001031cc 	add.w	$r12,$r14,$r12
1c0022fc:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c002300:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002304:	2900018d 	st.b	$r13,$r12,0
1c002308:	03400000 	andi	$r0,$r0,0x0
1c00230c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002310:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002314:	4c000020 	jirl	$r0,$r1,0

1c002318 <Spi_Write_Read_N>:
Spi_Write_Read_N():
1c002318:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00231c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002320:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002324:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002328:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00232c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002330:	50002800 	b	40(0x28) # 1c002358 <Spi_Write_Read_N+0x40>
1c002334:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002338:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00233c:	001031ad 	add.w	$r13,$r13,$r12
1c002340:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002344:	2a0001ad 	ld.bu	$r13,$r13,0
1c002348:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00234c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002350:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002354:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002358:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00235c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002360:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c002334 <Spi_Write_Read_N+0x1c>
1c002364:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002368:	50006800 	b	104(0x68) # 1c0023d0 <Spi_Write_Read_N+0xb8>
1c00236c:	03400000 	andi	$r0,$r0,0x0
1c002370:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002374:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002378:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00237c:	0340058c 	andi	$r12,$r12,0x1
1c002380:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c002370 <Spi_Write_Read_N+0x58>
1c002384:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c002388:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00238c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002390:	001031cc 	add.w	$r12,$r14,$r12
1c002394:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c002398:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00239c:	2900018d 	st.b	$r13,$r12,0
1c0023a0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0023a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023a8:	001031ad 	add.w	$r13,$r13,$r12
1c0023ac:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0023b0:	2a0001ad 	ld.bu	$r13,$r13,0
1c0023b4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0023b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023c0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0023c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0023d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0023d8:	6bff95ac 	bltu	$r13,$r12,-108(0x3ff94) # 1c00236c <Spi_Write_Read_N+0x54>
1c0023dc:	50004400 	b	68(0x44) # 1c002420 <Spi_Write_Read_N+0x108>
1c0023e0:	03400000 	andi	$r0,$r0,0x0
1c0023e4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0023e8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0023ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023f0:	0340058c 	andi	$r12,$r12,0x1
1c0023f4:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0023e4 <Spi_Write_Read_N+0xcc>
1c0023f8:	157fce0d 	lu12i.w	$r13,-262544(0xbfe70)
1c0023fc:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c002400:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002404:	001031cc 	add.w	$r12,$r14,$r12
1c002408:	2a0009ad 	ld.bu	$r13,$r13,2(0x2)
1c00240c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002410:	2900018d 	st.b	$r13,$r12,0
1c002414:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002418:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00241c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002420:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002424:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002428:	6bffb9ac 	bltu	$r13,$r12,-72(0x3ffb8) # 1c0023e0 <Spi_Write_Read_N+0xc8>
1c00242c:	03400000 	andi	$r0,$r0,0x0
1c002430:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002434:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002438:	4c000020 	jirl	$r0,$r1,0

1c00243c <Spi_Cs_Down>:
Spi_Cs_Down():
1c00243c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002440:	29803076 	st.w	$r22,$r3,12(0xc)
1c002444:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002448:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c00244c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002450:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002454:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002458:	038005ad 	ori	$r13,$r13,0x1
1c00245c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002460:	2900158d 	st.b	$r13,$r12,5(0x5)
1c002464:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002468:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00246c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c002470:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c002474:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002478:	0014b5cd 	and	$r13,$r14,$r13
1c00247c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002480:	2900158d 	st.b	$r13,$r12,5(0x5)
1c002484:	03400000 	andi	$r0,$r0,0x0
1c002488:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00248c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002490:	4c000020 	jirl	$r0,$r1,0

1c002494 <Spi_Cs_Up>:
Spi_Cs_Up():
1c002494:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002498:	29803076 	st.w	$r22,$r3,12(0xc)
1c00249c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0024a0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0024a4:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0024a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0024ac:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0024b0:	038005ad 	ori	$r13,$r13,0x1
1c0024b4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0024b8:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0024bc:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0024c0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0024c4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0024c8:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0024cc:	038041ad 	ori	$r13,$r13,0x10
1c0024d0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0024d4:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0024d8:	03400000 	andi	$r0,$r0,0x0
1c0024dc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0024e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0024e4:	4c000020 	jirl	$r0,$r1,0

1c0024e8 <Spiflash_Rdsr>:
Spiflash_Rdsr():
1c0024e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0024ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0024f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0024f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0024f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0024fc:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c002500:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002504:	57ff3bff 	bl	-200(0xfffff38) # 1c00243c <Spi_Cs_Down>
1c002508:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c00250c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002510:	00150184 	move	$r4,$r12
1c002514:	57fd17ff 	bl	-748(0xffffd14) # 1c002228 <Spi_Write_Read_1to4>
1c002518:	57ff7fff 	bl	-132(0xfffff7c) # 1c002494 <Spi_Cs_Up>
1c00251c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c002520:	00150184 	move	$r4,$r12
1c002524:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002528:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00252c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002530:	4c000020 	jirl	$r0,$r1,0

1c002534 <Spiflash_Wait_Wip_Zero>:
Spiflash_Wait_Wip_Zero():
1c002534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00253c:	29802076 	st.w	$r22,$r3,8(0x8)
1c002540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002544:	03400000 	andi	$r0,$r0,0x0
1c002548:	57ffa3ff 	bl	-96(0xfffffa0) # 1c0024e8 <Spiflash_Rdsr>
1c00254c:	0015008c 	move	$r12,$r4
1c002550:	0340058c 	andi	$r12,$r12,0x1
1c002554:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002548 <Spiflash_Wait_Wip_Zero+0x14>
1c002558:	03400000 	andi	$r0,$r0,0x0
1c00255c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002560:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002564:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002568:	4c000020 	jirl	$r0,$r1,0

1c00256c <Spiflash_Wren>:
Spiflash_Wren():
1c00256c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002570:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002574:	29806076 	st.w	$r22,$r3,24(0x18)
1c002578:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00257c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002580:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c002584:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002588:	57ffafff 	bl	-84(0xfffffac) # 1c002534 <Spiflash_Wait_Wip_Zero>
1c00258c:	57feb3ff 	bl	-336(0xffffeb0) # 1c00243c <Spi_Cs_Down>
1c002590:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c002594:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002598:	00150184 	move	$r4,$r12
1c00259c:	57fc8fff 	bl	-884(0xffffc8c) # 1c002228 <Spi_Write_Read_1to4>
1c0025a0:	57fef7ff 	bl	-268(0xffffef4) # 1c002494 <Spi_Cs_Up>
1c0025a4:	03400000 	andi	$r0,$r0,0x0
1c0025a8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0025ac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0025b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0025b4:	4c000020 	jirl	$r0,$r1,0

1c0025b8 <Spiflash_Rdid>:
Spiflash_Rdid():
1c0025b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0025bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0025c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0025c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0025c8:	02be400c 	addi.w	$r12,$r0,-112(0xf90)
1c0025cc:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0025d0:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c0025d4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0025d8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0025dc:	57fe63ff 	bl	-416(0xffffe60) # 1c00243c <Spi_Cs_Down>
1c0025e0:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0025e4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0025e8:	00150184 	move	$r4,$r12
1c0025ec:	57fc3fff 	bl	-964(0xffffc3c) # 1c002228 <Spi_Write_Read_1to4>
1c0025f0:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0025f4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0025f8:	00150184 	move	$r4,$r12
1c0025fc:	57fc2fff 	bl	-980(0xffffc2c) # 1c002228 <Spi_Write_Read_1to4>
1c002600:	57fe97ff 	bl	-364(0xffffe94) # 1c002494 <Spi_Cs_Up>
1c002604:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c002608:	2a40018c 	ld.hu	$r12,$r12,0
1c00260c:	00150184 	move	$r4,$r12
1c002610:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002614:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002618:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00261c:	4c000020 	jirl	$r0,$r1,0

1c002620 <Spiflash_Block64k_Erase>:
Spiflash_Block64k_Erase():
1c002620:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002624:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002628:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00262c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002630:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002634:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002638:	02bf600c 	addi.w	$r12,$r0,-40(0xfd8)
1c00263c:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c002640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002644:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002648:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00264c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002650:	0044a18c 	srli.w	$r12,$r12,0x8
1c002654:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002658:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00265c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002660:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c002664:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002668:	0044a18c 	srli.w	$r12,$r12,0x8
1c00266c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002674:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002678:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c00267c:	57fef3ff 	bl	-272(0xffffef0) # 1c00256c <Spiflash_Wren>
1c002680:	57fdbfff 	bl	-580(0xffffdbc) # 1c00243c <Spi_Cs_Down>
1c002684:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c002688:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00268c:	00150184 	move	$r4,$r12
1c002690:	57fb9bff 	bl	-1128(0xffffb98) # 1c002228 <Spi_Write_Read_1to4>
1c002694:	57fe03ff 	bl	-512(0xffffe00) # 1c002494 <Spi_Cs_Up>
1c002698:	57fe9fff 	bl	-356(0xffffe9c) # 1c002534 <Spiflash_Wait_Wip_Zero>
1c00269c:	03400000 	andi	$r0,$r0,0x0
1c0026a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0026a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0026a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0026ac:	4c000020 	jirl	$r0,$r1,0

1c0026b0 <Spiflash_Page_Program>:
Spiflash_Page_Program():
1c0026b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0026b4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026b8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0026c4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0026c8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0026cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0026d0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0026d4:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c0026d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0026e0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0026e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0026ec:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0026f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0026f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0026fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002700:	0044a18c 	srli.w	$r12,$r12,0x8
1c002704:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002708:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00270c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002710:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c002714:	57fe5bff 	bl	-424(0xffffe58) # 1c00256c <Spiflash_Wren>
1c002718:	57fd27ff 	bl	-732(0xffffd24) # 1c00243c <Spi_Cs_Down>
1c00271c:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c002720:	02801005 	addi.w	$r5,$r0,4(0x4)
1c002724:	00150184 	move	$r4,$r12
1c002728:	57fb03ff 	bl	-1280(0xffffb00) # 1c002228 <Spi_Write_Read_1to4>
1c00272c:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c002730:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c002734:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c002318 <Spi_Write_Read_N>
1c002738:	57fd5fff 	bl	-676(0xffffd5c) # 1c002494 <Spi_Cs_Up>
1c00273c:	57fdfbff 	bl	-520(0xffffdf8) # 1c002534 <Spiflash_Wait_Wip_Zero>
1c002740:	03400000 	andi	$r0,$r0,0x0
1c002744:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002748:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00274c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002750:	4c000020 	jirl	$r0,$r1,0

1c002754 <Spiflash_Read_Bytes>:
Spiflash_Read_Bytes():
1c002754:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002758:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00275c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002760:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002764:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002768:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00276c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002770:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002774:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002778:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c00277c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002788:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00278c:	0044a18c 	srli.w	$r12,$r12,0x8
1c002790:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00279c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0027a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a4:	0044a18c 	srli.w	$r12,$r12,0x8
1c0027a8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0027ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0027b4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0027b8:	57fc87ff 	bl	-892(0xffffc84) # 1c00243c <Spi_Cs_Down>
1c0027bc:	02bfb2cc 	addi.w	$r12,$r22,-20(0xfec)
1c0027c0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0027c4:	00150184 	move	$r4,$r12
1c0027c8:	57fa63ff 	bl	-1440(0xffffa60) # 1c002228 <Spi_Write_Read_1to4>
1c0027cc:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c0027d0:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c0027d4:	57fb47ff 	bl	-1212(0xffffb44) # 1c002318 <Spi_Write_Read_N>
1c0027d8:	57fcbfff 	bl	-836(0xffffcbc) # 1c002494 <Spi_Cs_Up>
1c0027dc:	03400000 	andi	$r0,$r0,0x0
1c0027e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027ec:	4c000020 	jirl	$r0,$r1,0

1c0027f0 <strcmp>:
strcmp():
1c0027f0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027f4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027fc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002800:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002804:	50002000 	b	32(0x20) # 1c002824 <strcmp+0x34>
1c002808:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00280c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002810:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002814:	2800018c 	ld.b	$r12,$r12,0
1c002818:	44000d80 	bnez	$r12,12(0xc) # 1c002824 <strcmp+0x34>
1c00281c:	0015000c 	move	$r12,$r0
1c002820:	50004400 	b	68(0x44) # 1c002864 <strcmp+0x74>
1c002824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002828:	2800018d 	ld.b	$r13,$r12,0
1c00282c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002830:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c002834:	29bfa2ce 	st.w	$r14,$r22,-24(0xfe8)
1c002838:	2800018c 	ld.b	$r12,$r12,0
1c00283c:	5bffcdac 	beq	$r13,$r12,-52(0x3ffcc) # 1c002808 <strcmp+0x18>
1c002840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002844:	2a00018c 	ld.bu	$r12,$r12,0
1c002848:	0015018d 	move	$r13,$r12
1c00284c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002850:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002854:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002858:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00285c:	2a00018c 	ld.bu	$r12,$r12,0
1c002860:	001131ac 	sub.w	$r12,$r13,$r12
1c002864:	00150184 	move	$r4,$r12
1c002868:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00286c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002870:	4c000020 	jirl	$r0,$r1,0

1c002874 <Uart_init>:
Uart_init():
1c002874:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002878:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00287c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002880:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002884:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002888:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00288c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002890:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002894:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002898:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00289c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0028a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0028a4:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0028a8:	001531ac 	or	$r12,$r13,$r12
1c0028ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0028b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028b4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0028b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028bc:	02bf280d 	addi.w	$r13,$r0,-54(0xfca)
1c0028c0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0028c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028c8:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c0028cc:	2900018d 	st.b	$r13,$r12,0
1c0028d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d4:	29000580 	st.b	$r0,$r12,1(0x1)
1c0028d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028dc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0028e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028e4:	0341fd8c 	andi	$r12,$r12,0x7f
1c0028e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0028ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028f0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0028f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028f8:	29000580 	st.b	$r0,$r12,1(0x1)
1c0028fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002900:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c002904:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002908:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00290c:	2a00018c 	ld.bu	$r12,$r12,0
1c002910:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002914:	03400000 	andi	$r0,$r0,0x0
1c002918:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00291c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002920:	4c000020 	jirl	$r0,$r1,0

1c002924 <UART_SendData>:
UART_SendData():
1c002924:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002928:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00292c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002930:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002934:	001500ac 	move	$r12,$r5
1c002938:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00293c:	03400000 	andi	$r0,$r0,0x0
1c002940:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002944:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002948:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00294c:	0340818c 	andi	$r12,$r12,0x20
1c002950:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002940 <UART_SendData+0x1c>
1c002954:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002958:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00295c:	2900018d 	st.b	$r13,$r12,0
1c002960:	03400000 	andi	$r0,$r0,0x0
1c002964:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002968:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00296c:	4c000020 	jirl	$r0,$r1,0

1c002970 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c002970:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002974:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002978:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00297c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002980:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002984:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c002988:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00298c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c002990:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002994:	0014300c 	nor	$r12,$r0,$r12
1c002998:	0040c18e 	slli.w	$r14,$r12,0x10
1c00299c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0029a4:	001535cd 	or	$r13,$r14,$r13
1c0029a8:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0029ac:	03400000 	andi	$r0,$r0,0x0
1c0029b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029b8:	4c000020 	jirl	$r0,$r1,0

1c0029bc <WDG_DogFeed>:
WDG_DogFeed():
1c0029bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0029c0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0029c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0029c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0029cc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0029d0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0029d4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0029d8:	03400000 	andi	$r0,$r0,0x0
1c0029dc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0029e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0029e4:	4c000020 	jirl	$r0,$r1,0

1c0029e8 <gpio_init>:
gpio_init():
1c0029e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029ec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0029f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029f8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0029fc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002a00:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002a04:	6000698d 	blt	$r12,$r13,104(0x68) # 1c002a6c <gpio_init+0x84>
1c002a08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a10:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002a14:	44003180 	bnez	$r12,48(0x30) # 1c002a44 <gpio_init+0x5c>
1c002a18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a1c:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c002a20:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002a24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a28:	001731cc 	sll.w	$r12,$r14,$r12
1c002a2c:	0014300c 	nor	$r12,$r0,$r12
1c002a30:	0015018e 	move	$r14,$r12
1c002a34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a38:	0014b9ad 	and	$r13,$r13,$r14
1c002a3c:	2981018d 	st.w	$r13,$r12,64(0x40)
1c002a40:	50009000 	b	144(0x90) # 1c002ad0 <gpio_init+0xe8>
1c002a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a48:	2881018d 	ld.w	$r13,$r12,64(0x40)
1c002a4c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002a50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a54:	001731cc 	sll.w	$r12,$r14,$r12
1c002a58:	0015018e 	move	$r14,$r12
1c002a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a60:	001539ad 	or	$r13,$r13,$r14
1c002a64:	2981018d 	st.w	$r13,$r12,64(0x40)
1c002a68:	50006800 	b	104(0x68) # 1c002ad0 <gpio_init+0xe8>
1c002a6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a70:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c002a74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a78:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002a7c:	44003180 	bnez	$r12,48(0x30) # 1c002aac <gpio_init+0xc4>
1c002a80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002a84:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c002a88:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002a8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a90:	001731cc 	sll.w	$r12,$r14,$r12
1c002a94:	0014300c 	nor	$r12,$r0,$r12
1c002a98:	0015018e 	move	$r14,$r12
1c002a9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002aa0:	0014b9ad 	and	$r13,$r13,$r14
1c002aa4:	2981418d 	st.w	$r13,$r12,80(0x50)
1c002aa8:	50002800 	b	40(0x28) # 1c002ad0 <gpio_init+0xe8>
1c002aac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ab0:	2881418d 	ld.w	$r13,$r12,80(0x50)
1c002ab4:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002ab8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002abc:	001731cc 	sll.w	$r12,$r14,$r12
1c002ac0:	0015018e 	move	$r14,$r12
1c002ac4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ac8:	001539ad 	or	$r13,$r13,$r14
1c002acc:	2981418d 	st.w	$r13,$r12,80(0x50)
1c002ad0:	03400000 	andi	$r0,$r0,0x0
1c002ad4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002ad8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002adc:	4c000020 	jirl	$r0,$r1,0

1c002ae0 <gpio_write>:
gpio_write():
1c002ae0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ae4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002ae8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002aec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002af0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002af4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002af8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c002afc:	6000698d 	blt	$r12,$r13,104(0x68) # 1c002b64 <gpio_write+0x84>
1c002b00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b08:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002b0c:	44003180 	bnez	$r12,48(0x30) # 1c002b3c <gpio_write+0x5c>
1c002b10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b14:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c002b18:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002b1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b20:	001731cc 	sll.w	$r12,$r14,$r12
1c002b24:	0014300c 	nor	$r12,$r0,$r12
1c002b28:	0015018e 	move	$r14,$r12
1c002b2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b30:	0014b9ad 	and	$r13,$r13,$r14
1c002b34:	2981118d 	st.w	$r13,$r12,68(0x44)
1c002b38:	50009000 	b	144(0x90) # 1c002bc8 <gpio_write+0xe8>
1c002b3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b40:	2881118d 	ld.w	$r13,$r12,68(0x44)
1c002b44:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002b48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b4c:	001731cc 	sll.w	$r12,$r14,$r12
1c002b50:	0015018e 	move	$r14,$r12
1c002b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b58:	001539ad 	or	$r13,$r13,$r14
1c002b5c:	2981118d 	st.w	$r13,$r12,68(0x44)
1c002b60:	50006800 	b	104(0x68) # 1c002bc8 <gpio_write+0xe8>
1c002b64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b68:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c002b6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b70:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002b74:	44003180 	bnez	$r12,48(0x30) # 1c002ba4 <gpio_write+0xc4>
1c002b78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b7c:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c002b80:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002b84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b88:	001731cc 	sll.w	$r12,$r14,$r12
1c002b8c:	0014300c 	nor	$r12,$r0,$r12
1c002b90:	0015018e 	move	$r14,$r12
1c002b94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b98:	0014b9ad 	and	$r13,$r13,$r14
1c002b9c:	2981518d 	st.w	$r13,$r12,84(0x54)
1c002ba0:	50002800 	b	40(0x28) # 1c002bc8 <gpio_write+0xe8>
1c002ba4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba8:	2881518d 	ld.w	$r13,$r12,84(0x54)
1c002bac:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c002bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bb4:	001731cc 	sll.w	$r12,$r14,$r12
1c002bb8:	0015018e 	move	$r14,$r12
1c002bbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc0:	001539ad 	or	$r13,$r13,$r14
1c002bc4:	2981518d 	st.w	$r13,$r12,84(0x54)
1c002bc8:	03400000 	andi	$r0,$r0,0x0
1c002bcc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002bd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002bd4:	4c000020 	jirl	$r0,$r1,0

1c002bd8 <soc_myputchar>:
soc_myputchar():
1c002bd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002bdc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002be0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002be4:	0015008c 	move	$r12,$r4
1c002be8:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002bec:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002bf0:	0380118c 	ori	$r12,$r12,0x4
1c002bf4:	2880018c 	ld.w	$r12,$r12,0
1c002bf8:	00005d8c 	ext.w.b	$r12,$r12
1c002bfc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002c00:	03400000 	andi	$r0,$r0,0x0
1c002c04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002c08:	00005d8c 	ext.w.b	$r12,$r12
1c002c0c:	0340098d 	andi	$r13,$r12,0x2
1c002c10:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002c14:	5bfff1ac 	beq	$r13,$r12,-16(0x3fff0) # 1c002c04 <soc_myputchar+0x2c>
1c002c18:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002c1c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c002c20:	2980018d 	st.w	$r13,$r12,0
1c002c24:	03400000 	andi	$r0,$r0,0x0
1c002c28:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002c2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c30:	4c000020 	jirl	$r0,$r1,0

1c002c34 <soc_puts>:
soc_puts():
1c002c34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c44:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c48:	50003000 	b	48(0x30) # 1c002c78 <soc_puts+0x44>
1c002c4c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c002c50:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002c54:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c002c60 <soc_puts+0x2c>
1c002c58:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002c5c:	57ff7fff 	bl	-132(0xfffff7c) # 1c002bd8 <soc_myputchar>
1c002c60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002c64:	00150184 	move	$r4,$r12
1c002c68:	57ff73ff 	bl	-144(0xfffff70) # 1c002bd8 <soc_myputchar>
1c002c6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002c74:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002c78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c7c:	2a00018c 	ld.bu	$r12,$r12,0
1c002c80:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002c84:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c002c88:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c002c4c <soc_puts+0x18>
1c002c8c:	0015000c 	move	$r12,$r0
1c002c90:	00150184 	move	$r4,$r12
1c002c94:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002c98:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002c9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ca0:	4c000020 	jirl	$r0,$r1,0

1c002ca4 <soc_printbase>:
soc_printbase():
1c002ca4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c002ca8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c002cac:	2981a076 	st.w	$r22,$r3,104(0x68)
1c002cb0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c002cb4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002cb8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c002cbc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c002cc0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c002cc4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002cc8:	40002580 	beqz	$r12,36(0x24) # 1c002cec <soc_printbase+0x48>
1c002ccc:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002cd0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c002cec <soc_printbase+0x48>
1c002cd4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002cd8:	0011300c 	sub.w	$r12,$r0,$r12
1c002cdc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ce0:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c002ce4:	57fef7ff 	bl	-268(0xffffef4) # 1c002bd8 <soc_myputchar>
1c002ce8:	50000c00 	b	12(0xc) # 1c002cf4 <soc_printbase+0x50>
1c002cec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002cf0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002cf4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cf8:	50005000 	b	80(0x50) # 1c002d48 <soc_printbase+0xa4>
1c002cfc:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c002d00:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002d04:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002d08:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002d10 <soc_printbase+0x6c>
1c002d0c:	002a0007 	break	0x7
1c002d10:	00005dcc 	ext.w.b	$r12,$r14
1c002d14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002d18:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002d1c:	001035cd 	add.w	$r13,$r14,$r13
1c002d20:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c002d24:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c002d28:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002d2c:	002135cc 	div.wu	$r12,$r14,$r13
1c002d30:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002d38 <soc_printbase+0x94>
1c002d34:	002a0007 	break	0x7
1c002d38:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002d44:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d48:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d4c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002cfc <soc_printbase+0x58>
1c002d50:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002d54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002d58:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002d5c:	001231ad 	slt	$r13,$r13,$r12
1c002d60:	0013b5ce 	masknez	$r14,$r14,$r13
1c002d64:	0013358c 	maskeqz	$r12,$r12,$r13
1c002d68:	001531cc 	or	$r12,$r14,$r12
1c002d6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d70:	50007400 	b	116(0x74) # 1c002de4 <soc_printbase+0x140>
1c002d74:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d7c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c002d98 <soc_printbase+0xf4>
1c002d80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d84:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002d88:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c002d8c:	001031ac 	add.w	$r12,$r13,$r12
1c002d90:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c002d94:	50000800 	b	8(0x8) # 1c002d9c <soc_printbase+0xf8>
1c002d98:	0015000c 	move	$r12,$r0
1c002d9c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002da0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c002da4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c002da8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c002dc0 <soc_printbase+0x11c>
1c002dac:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002db0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002db4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c002db8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002dbc:	50001400 	b	20(0x14) # 1c002dd0 <soc_printbase+0x12c>
1c002dc0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002dc4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002dc8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002dcc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002dd0:	00150184 	move	$r4,$r12
1c002dd4:	57fe07ff 	bl	-508(0xffffe04) # 1c002bd8 <soc_myputchar>
1c002dd8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ddc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002de0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002de4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002de8:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c002d74 <soc_printbase+0xd0>
1c002dec:	0015000c 	move	$r12,$r0
1c002df0:	00150184 	move	$r4,$r12
1c002df4:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c002df8:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c002dfc:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c002e00:	4c000020 	jirl	$r0,$r1,0

1c002e04 <soc_myprintf>:
soc_myprintf():
1c002e04:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002e08:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002e0c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c002e10:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002e14:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c002e18:	298012c5 	st.w	$r5,$r22,4(0x4)
1c002e1c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002e20:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002e24:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002e28:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002e2c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002e30:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002e34:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002e38:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c002e3c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c002e40:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002e44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002e48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e4c:	50038000 	b	896(0x380) # 1c0031cc <soc_myprintf+0x3c8>
1c002e50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e54:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002e58:	001031ac 	add.w	$r12,$r13,$r12
1c002e5c:	2a00018c 	ld.bu	$r12,$r12,0
1c002e60:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c002e64:	283f7ecd 	ld.b	$r13,$r22,-33(0xfdf)
1c002e68:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002e6c:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c003150 <soc_myprintf+0x34c>
1c002e70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e74:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002e78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002e80:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002e84:	001031ac 	add.w	$r12,$r13,$r12
1c002e88:	2800018c 	ld.b	$r12,$r12,0
1c002e8c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c002e90:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c002e94:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c003140 <soc_myprintf+0x33c>
1c002e98:	0040898d 	slli.w	$r13,$r12,0x2
1c002e9c:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c002ea0:	02bc418c 	addi.w	$r12,$r12,-240(0xf10)
1c002ea4:	001031ac 	add.w	$r12,$r13,$r12
1c002ea8:	2880018c 	ld.w	$r12,$r12,0
1c002eac:	4c000180 	jirl	$r0,$r12,0
1c002eb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002eb4:	2880018c 	ld.w	$r12,$r12,0
1c002eb8:	00150184 	move	$r4,$r12
1c002ebc:	57fd7bff 	bl	-648(0xffffd78) # 1c002c34 <soc_puts>
1c002ec0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ec4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002ec8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002ed4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ed8:	50029800 	b	664(0x298) # 1c003170 <soc_myprintf+0x36c>
1c002edc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ee0:	2880018c 	ld.w	$r12,$r12,0
1c002ee4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002ee8:	00150184 	move	$r4,$r12
1c002eec:	57fcefff 	bl	-788(0xffffcec) # 1c002bd8 <soc_myputchar>
1c002ef0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ef4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002ef8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f08:	50026800 	b	616(0x268) # 1c003170 <soc_myprintf+0x36c>
1c002f0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f10:	2880018c 	ld.w	$r12,$r12,0
1c002f14:	00150007 	move	$r7,$r0
1c002f18:	02802806 	addi.w	$r6,$r0,10(0xa)
1c002f1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002f20:	00150184 	move	$r4,$r12
1c002f24:	57fd83ff 	bl	-640(0xffffd80) # 1c002ca4 <soc_printbase>
1c002f28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002f30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f40:	50023000 	b	560(0x230) # 1c003170 <soc_myprintf+0x36c>
1c002f44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f48:	2880018c 	ld.w	$r12,$r12,0
1c002f4c:	02800407 	addi.w	$r7,$r0,1(0x1)
1c002f50:	02802806 	addi.w	$r6,$r0,10(0xa)
1c002f54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002f58:	00150184 	move	$r4,$r12
1c002f5c:	57fd4bff 	bl	-696(0xffffd48) # 1c002ca4 <soc_printbase>
1c002f60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002f68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002f74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f78:	5001f800 	b	504(0x1f8) # 1c003170 <soc_myprintf+0x36c>
1c002f7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f80:	2880018c 	ld.w	$r12,$r12,0
1c002f84:	00150007 	move	$r7,$r0
1c002f88:	02802006 	addi.w	$r6,$r0,8(0x8)
1c002f8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002f90:	00150184 	move	$r4,$r12
1c002f94:	57fd13ff 	bl	-752(0xffffd10) # 1c002ca4 <soc_printbase>
1c002f98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002f9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002fa0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fa8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002fac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002fb0:	5001c000 	b	448(0x1c0) # 1c003170 <soc_myprintf+0x36c>
1c002fb4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002fb8:	2880018c 	ld.w	$r12,$r12,0
1c002fbc:	00150007 	move	$r7,$r0
1c002fc0:	02800806 	addi.w	$r6,$r0,2(0x2)
1c002fc4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c002fc8:	00150184 	move	$r4,$r12
1c002fcc:	57fcdbff 	bl	-808(0xffffcd8) # 1c002ca4 <soc_printbase>
1c002fd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002fd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002fd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002fdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fe0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002fe4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002fe8:	50018800 	b	392(0x188) # 1c003170 <soc_myprintf+0x36c>
1c002fec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002ff0:	2880018c 	ld.w	$r12,$r12,0
1c002ff4:	00150007 	move	$r7,$r0
1c002ff8:	02804006 	addi.w	$r6,$r0,16(0x10)
1c002ffc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c003000:	00150184 	move	$r4,$r12
1c003004:	57fca3ff 	bl	-864(0xffffca0) # 1c002ca4 <soc_printbase>
1c003008:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00300c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c003010:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003014:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003018:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00301c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003020:	50015000 	b	336(0x150) # 1c003170 <soc_myprintf+0x36c>
1c003024:	02809404 	addi.w	$r4,$r0,37(0x25)
1c003028:	57fbb3ff 	bl	-1104(0xffffbb0) # 1c002bd8 <soc_myputchar>
1c00302c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003030:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003034:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003038:	50013800 	b	312(0x138) # 1c003170 <soc_myprintf+0x36c>
1c00303c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003040:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003044:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003048:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00304c:	50003c00 	b	60(0x3c) # 1c003088 <soc_myprintf+0x284>
1c003050:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c003054:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003058:	001c31ad 	mul.w	$r13,$r13,$r12
1c00305c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003060:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003064:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c003068:	001031cc 	add.w	$r12,$r14,$r12
1c00306c:	2800018c 	ld.b	$r12,$r12,0
1c003070:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c003074:	001031ac 	add.w	$r12,$r13,$r12
1c003078:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00307c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003080:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003084:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003088:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00308c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003090:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003094:	001031ac 	add.w	$r12,$r13,$r12
1c003098:	2800018d 	ld.b	$r13,$r12,0
1c00309c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0030a0:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c002e78 <soc_myprintf+0x74>
1c0030a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030ac:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0030b0:	001031ac 	add.w	$r12,$r13,$r12
1c0030b4:	2800018d 	ld.b	$r13,$r12,0
1c0030b8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0030bc:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c003050 <soc_myprintf+0x24c>
1c0030c0:	53fdbbff 	b	-584(0xffffdb8) # 1c002e78 <soc_myprintf+0x74>
1c0030c4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0030c8:	50003c00 	b	60(0x3c) # 1c003104 <soc_myprintf+0x300>
1c0030cc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0030d0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0030d4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0030d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0030e0:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c0030e4:	001031cc 	add.w	$r12,$r14,$r12
1c0030e8:	2800018c 	ld.b	$r12,$r12,0
1c0030ec:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0030f0:	001031ac 	add.w	$r12,$r13,$r12
1c0030f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003100:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003104:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003108:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00310c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003110:	001031ac 	add.w	$r12,$r13,$r12
1c003114:	2800018d 	ld.b	$r13,$r12,0
1c003118:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c00311c:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c002e78 <soc_myprintf+0x74>
1c003120:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003124:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003128:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00312c:	001031ac 	add.w	$r12,$r13,$r12
1c003130:	2800018d 	ld.b	$r13,$r12,0
1c003134:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c003138:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0030cc <soc_myprintf+0x2c8>
1c00313c:	53fd3fff 	b	-708(0xffffd3c) # 1c002e78 <soc_myprintf+0x74>
1c003140:	02809404 	addi.w	$r4,$r0,37(0x25)
1c003144:	57fa97ff 	bl	-1388(0xffffa94) # 1c002bd8 <soc_myputchar>
1c003148:	03400000 	andi	$r0,$r0,0x0
1c00314c:	50002400 	b	36(0x24) # 1c003170 <soc_myprintf+0x36c>
1c003150:	283f7ecd 	ld.b	$r13,$r22,-33(0xfdf)
1c003154:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003158:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c003164 <soc_myprintf+0x360>
1c00315c:	02803404 	addi.w	$r4,$r0,13(0xd)
1c003160:	57fa7bff 	bl	-1416(0xffffa78) # 1c002bd8 <soc_myputchar>
1c003164:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c003168:	00150184 	move	$r4,$r12
1c00316c:	57fa6fff 	bl	-1428(0xffffa6c) # 1c002bd8 <soc_myputchar>
1c003170:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003174:	40004d80 	beqz	$r12,76(0x4c) # 1c0031c0 <soc_myprintf+0x3bc>
1c003178:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c00317c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c003180:	0020b5cc 	mod.w	$r12,$r14,$r13
1c003184:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00318c <soc_myprintf+0x388>
1c003188:	002a0007 	break	0x7
1c00318c:	44003580 	bnez	$r12,52(0x34) # 1c0031c0 <soc_myprintf+0x3bc>
1c003190:	140000ac 	lu12i.w	$r12,5(0x5)
1c003194:	03accd8c 	ori	$r12,$r12,0xb33
1c003198:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00319c:	50001400 	b	20(0x14) # 1c0031b0 <soc_myprintf+0x3ac>
1c0031a0:	03400000 	andi	$r0,$r0,0x0
1c0031a4:	03400000 	andi	$r0,$r0,0x0
1c0031a8:	03400000 	andi	$r0,$r0,0x0
1c0031ac:	03400000 	andi	$r0,$r0,0x0
1c0031b0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0031b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0031b8:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c0031bc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0031a0 <soc_myprintf+0x39c>
1c0031c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0031c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0031d0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0031d4:	001031ac 	add.w	$r12,$r13,$r12
1c0031d8:	2800018c 	ld.b	$r12,$r12,0
1c0031dc:	47fc759f 	bnez	$r12,-908(0x7ffc74) # 1c002e50 <soc_myprintf+0x4c>
1c0031e0:	0015000c 	move	$r12,$r0
1c0031e4:	00150184 	move	$r4,$r12
1c0031e8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0031ec:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0031f0:	02818063 	addi.w	$r3,$r3,96(0x60)
1c0031f4:	4c000020 	jirl	$r0,$r1,0

1c0031f8 <I2C_Init>:
I2C_Init():
1c0031f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003200:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003204:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003208:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00320c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003210:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003214:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c003218:	0388018c 	ori	$r12,$r12,0x200
1c00321c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003220:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003224:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003228:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00322c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003230:	2880018d 	ld.w	$r13,$r12,0
1c003234:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c003238:	002135cc 	div.wu	$r12,$r14,$r13
1c00323c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003244 <I2C_Init+0x4c>
1c003240:	002a0007 	break	0x7
1c003244:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003248:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00324c:	0044898c 	srli.w	$r12,$r12,0x2
1c003250:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c003254:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003258:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00325c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003260:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003264:	2900018d 	st.b	$r13,$r12,0
1c003268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00326c:	0044a18c 	srli.w	$r12,$r12,0x8
1c003270:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003274:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003278:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00327c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003280:	2a00118d 	ld.bu	$r13,$r12,4(0x4)
1c003284:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003288:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c00328c:	001531ac 	or	$r12,$r13,$r12
1c003290:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003294:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003298:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c00329c:	001531ac 	or	$r12,$r13,$r12
1c0032a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0032a4:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0032a8:	001531ac 	or	$r12,$r13,$r12
1c0032ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0032b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032b4:	2900098d 	st.b	$r13,$r12,2(0x2)
1c0032b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0032bc:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c0032c0:	40001180 	beqz	$r12,16(0x10) # 1c0032d0 <I2C_Init+0xd8>
1c0032c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032c8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0032cc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0032d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0032d4:	2a00158d 	ld.bu	$r13,$r12,5(0x5)
1c0032d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0032dc:	29001d8d 	st.b	$r13,$r12,7(0x7)
1c0032e0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0032e4:	54023c00 	bl	572(0x23c) # 1c003520 <I2C_wait>
1c0032e8:	03400000 	andi	$r0,$r0,0x0
1c0032ec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0032f0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0032f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032f8:	4c000020 	jirl	$r0,$r1,0

1c0032fc <I2C_StructInit>:
I2C_StructInit():
1c0032fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003300:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003304:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003308:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00330c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003310:	1400030d 	lu12i.w	$r13,24(0x18)
1c003314:	039a81ad 	ori	$r13,$r13,0x6a0
1c003318:	2980018d 	st.w	$r13,$r12,0
1c00331c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003320:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c003324:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00332c:	0280a80d 	addi.w	$r13,$r0,42(0x2a)
1c003330:	2900158d 	st.b	$r13,$r12,5(0x5)
1c003334:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003338:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00333c:	2900198d 	st.b	$r13,$r12,6(0x6)
1c003340:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003344:	29001d80 	st.b	$r0,$r12,7(0x7)
1c003348:	03400000 	andi	$r0,$r0,0x0
1c00334c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003350:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003354:	4c000020 	jirl	$r0,$r1,0

1c003358 <I2C_GenerateSTOP>:
I2C_GenerateSTOP():
1c003358:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00335c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003360:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003364:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003368:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00336c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003370:	40002580 	beqz	$r12,36(0x24) # 1c003394 <I2C_GenerateSTOP+0x3c>
1c003374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003378:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00337c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003380:	0381018c 	ori	$r12,$r12,0x40
1c003384:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00338c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003390:	50002400 	b	36(0x24) # 1c0033b4 <I2C_GenerateSTOP+0x5c>
1c003394:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003398:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00339c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0033a0:	02befc0c 	addi.w	$r12,$r0,-65(0xfbf)
1c0033a4:	0014b1ac 	and	$r12,$r13,$r12
1c0033a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0033ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0033b4:	03400000 	andi	$r0,$r0,0x0
1c0033b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033c0:	4c000020 	jirl	$r0,$r1,0

1c0033c4 <I2C_SendData>:
I2C_SendData():
1c0033c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0033cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0033d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033d8:	001500ac 	move	$r12,$r5
1c0033dc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0033e0:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0033e4:	54018400 	bl	388(0x184) # 1c003568 <I2C_Unlock>
1c0033e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033ec:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0033f0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0033f4:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c0033f8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0033fc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003400:	03400000 	andi	$r0,$r0,0x0
1c003404:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003408:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00340c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003410:	4c000020 	jirl	$r0,$r1,0

1c003414 <I2C_ReceiveData>:
I2C_ReceiveData():
1c003414:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003418:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00341c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003420:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003424:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003428:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00342c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c003430:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003434:	54013400 	bl	308(0x134) # 1c003568 <I2C_Unlock>
1c003438:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00343c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003440:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003444:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003448:	001531ac 	or	$r12,$r13,$r12
1c00344c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003450:	0380818c 	ori	$r12,$r12,0x20
1c003454:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003458:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00345c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c003460:	03400000 	andi	$r0,$r0,0x0
1c003464:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003468:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00346c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003470:	4c000020 	jirl	$r0,$r1,0

1c003474 <I2C_Send7bitAddress>:
I2C_Send7bitAddress():
1c003474:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003478:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00347c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003480:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003484:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003488:	001500ac 	move	$r12,$r5
1c00348c:	001500cd 	move	$r13,$r6
1c003490:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003494:	001501ac 	move	$r12,$r13
1c003498:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00349c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0034a0:	5400c800 	bl	200(0xc8) # 1c003568 <I2C_Unlock>
1c0034a4:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c0034a8:	40002980 	beqz	$r12,40(0x28) # 1c0034d0 <I2C_Send7bitAddress+0x5c>
1c0034ac:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034b0:	0380058c 	ori	$r12,$r12,0x1
1c0034b4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0034b8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034bc:	00150185 	move	$r5,$r12
1c0034c0:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0034c4:	02a8f084 	addi.w	$r4,$r4,-1476(0xa3c)
1c0034c8:	57e71bff 	bl	-6376(0xfffe718) # 1c001be0 <myprintf>
1c0034cc:	50002800 	b	40(0x28) # 1c0034f4 <I2C_Send7bitAddress+0x80>
1c0034d0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0034d4:	02bff80c 	addi.w	$r12,$r0,-2(0xffe)
1c0034d8:	0014b1ac 	and	$r12,$r13,$r12
1c0034dc:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0034e0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0034e4:	00150185 	move	$r5,$r12
1c0034e8:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0034ec:	02a8c084 	addi.w	$r4,$r4,-1488(0xa30)
1c0034f0:	57e6f3ff 	bl	-6416(0xfffe6f0) # 1c001be0 <myprintf>
1c0034f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034f8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0034fc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c003500:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003504:	02be400d 	addi.w	$r13,$r0,-112(0xf90)
1c003508:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00350c:	03400000 	andi	$r0,$r0,0x0
1c003510:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003514:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003518:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00351c:	4c000020 	jirl	$r0,$r1,0

1c003520 <I2C_wait>:
I2C_wait():
1c003520:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003524:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003528:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00352c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003530:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003534:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003538:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00353c:	50001000 	b	16(0x10) # 1c00354c <I2C_wait+0x2c>
1c003540:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003544:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003548:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00354c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003550:	0340098c 	andi	$r12,$r12,0x2
1c003554:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003540 <I2C_wait+0x20>
1c003558:	03400000 	andi	$r0,$r0,0x0
1c00355c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003560:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003564:	4c000020 	jirl	$r0,$r1,0

1c003568 <I2C_Unlock>:
I2C_Unlock():
1c003568:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00356c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003570:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003574:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003578:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00357c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003580:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003584:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003588:	0340118c 	andi	$r12,$r12,0x4
1c00358c:	40002180 	beqz	$r12,32(0x20) # 1c0035ac <I2C_Unlock+0x44>
1c003590:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003594:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003598:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00359c:	0380118c 	ori	$r12,$r12,0x4
1c0035a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035a8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0035ac:	03400000 	andi	$r0,$r0,0x0
1c0035b0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035b8:	4c000020 	jirl	$r0,$r1,0

1c0035bc <CAT24_Write>:
CAT24_Write():
1c0035bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035c0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0035c4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0035c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035cc:	0015008c 	move	$r12,$r4
1c0035d0:	001500ad 	move	$r13,$r5
1c0035d4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0035d8:	001501ac 	move	$r12,$r13
1c0035dc:	293f76cc 	st.b	$r12,$r22,-35(0xfdd)
1c0035e0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0035e4:	035ffd8c 	andi	$r12,$r12,0x7ff
1c0035e8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0035ec:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0035f0:	00449d8c 	srli.w	$r12,$r12,0x7
1c0035f4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0035f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0035fc:	02be818c 	addi.w	$r12,$r12,-96(0xfa0)
1c003600:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003604:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003608:	2a3f76cd 	ld.bu	$r13,$r22,-35(0xfdd)
1c00360c:	001501a6 	move	$r6,$r13
1c003610:	00150185 	move	$r5,$r12
1c003614:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003618:	02a47084 	addi.w	$r4,$r4,-1764(0x91c)
1c00361c:	57e5c7ff 	bl	-6716(0xfffe5c4) # 1c001be0 <myprintf>
1c003620:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003624:	00150006 	move	$r6,$r0
1c003628:	00150185 	move	$r5,$r12
1c00362c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003630:	57fe47ff 	bl	-444(0xffffe44) # 1c003474 <I2C_Send7bitAddress>
1c003634:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003638:	57feebff 	bl	-280(0xffffee8) # 1c003520 <I2C_wait>
1c00363c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003640:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003644:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003648:	00005d8c 	ext.w.b	$r12,$r12
1c00364c:	64001180 	bge	$r12,$r0,16(0x10) # 1c00365c <CAT24_Write+0xa0>
1c003650:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003654:	02a42084 	addi.w	$r4,$r4,-1784(0x908)
1c003658:	57e58bff 	bl	-6776(0xfffe588) # 1c001be0 <myprintf>
1c00365c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003660:	0343fd8c 	andi	$r12,$r12,0xff
1c003664:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003668:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00366c:	00150185 	move	$r5,$r12
1c003670:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003674:	02a3f084 	addi.w	$r4,$r4,-1796(0x8fc)
1c003678:	57e56bff 	bl	-6808(0xfffe568) # 1c001be0 <myprintf>
1c00367c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003680:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003684:	00150185 	move	$r5,$r12
1c003688:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c00368c:	57fd3bff 	bl	-712(0xffffd38) # 1c0033c4 <I2C_SendData>
1c003690:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003694:	57fe8fff 	bl	-372(0xffffe8c) # 1c003520 <I2C_wait>
1c003698:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c00369c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0036a0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0036a4:	00005d8c 	ext.w.b	$r12,$r12
1c0036a8:	64001180 	bge	$r12,$r0,16(0x10) # 1c0036b8 <CAT24_Write+0xfc>
1c0036ac:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0036b0:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c0036b4:	57e52fff 	bl	-6868(0xfffe52c) # 1c001be0 <myprintf>
1c0036b8:	2a3f76cc 	ld.bu	$r12,$r22,-35(0xfdd)
1c0036bc:	00150185 	move	$r5,$r12
1c0036c0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0036c4:	57fd03ff 	bl	-768(0xffffd00) # 1c0033c4 <I2C_SendData>
1c0036c8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0036cc:	57fe57ff 	bl	-428(0xffffe54) # 1c003520 <I2C_wait>
1c0036d0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c0036d4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0036d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0036dc:	00005d8c 	ext.w.b	$r12,$r12
1c0036e0:	64001180 	bge	$r12,$r0,16(0x10) # 1c0036f0 <CAT24_Write+0x134>
1c0036e4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0036e8:	02a1d084 	addi.w	$r4,$r4,-1932(0x874)
1c0036ec:	57e4f7ff 	bl	-6924(0xfffe4f4) # 1c001be0 <myprintf>
1c0036f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0036f4:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0036f8:	57fc63ff 	bl	-928(0xffffc60) # 1c003358 <I2C_GenerateSTOP>
1c0036fc:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003700:	57fe23ff 	bl	-480(0xffffe20) # 1c003520 <I2C_wait>
1c003704:	03400000 	andi	$r0,$r0,0x0
1c003708:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00370c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003710:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003714:	4c000020 	jirl	$r0,$r1,0

1c003718 <CAT24_Read>:
CAT24_Read():
1c003718:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00371c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003720:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003724:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003728:	0015008c 	move	$r12,$r4
1c00372c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003730:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003734:	035ffd8c 	andi	$r12,$r12,0x7ff
1c003738:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00373c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c003740:	00449d8c 	srli.w	$r12,$r12,0x7
1c003744:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003748:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00374c:	02be818c 	addi.w	$r12,$r12,-96(0xfa0)
1c003750:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003754:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003758:	00150185 	move	$r5,$r12
1c00375c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003760:	02a07084 	addi.w	$r4,$r4,-2020(0x81c)
1c003764:	57e47fff 	bl	-7044(0xfffe47c) # 1c001be0 <myprintf>
1c003768:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00376c:	00150006 	move	$r6,$r0
1c003770:	00150185 	move	$r5,$r12
1c003774:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003778:	57fcffff 	bl	-772(0xffffcfc) # 1c003474 <I2C_Send7bitAddress>
1c00377c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003780:	57fda3ff 	bl	-608(0xffffda0) # 1c003520 <I2C_wait>
1c003784:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003788:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00378c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003790:	00005d8c 	ext.w.b	$r12,$r12
1c003794:	64001180 	bge	$r12,$r0,16(0x10) # 1c0037a4 <CAT24_Read+0x8c>
1c003798:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00379c:	029ff084 	addi.w	$r4,$r4,2044(0x7fc)
1c0037a0:	57e443ff 	bl	-7104(0xfffe440) # 1c001be0 <myprintf>
1c0037a4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0037a8:	00150185 	move	$r5,$r12
1c0037ac:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037b0:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c0037b4:	57e42fff 	bl	-7124(0xfffe42c) # 1c001be0 <myprintf>
1c0037b8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0037bc:	0343fd8c 	andi	$r12,$r12,0xff
1c0037c0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0037c4:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0037c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0037cc:	00150185 	move	$r5,$r12
1c0037d0:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0037d4:	57fbf3ff 	bl	-1040(0xffffbf0) # 1c0033c4 <I2C_SendData>
1c0037d8:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c0037dc:	57fd47ff 	bl	-700(0xffffd44) # 1c003520 <I2C_wait>
1c0037e0:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c0037e4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0037e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0037ec:	00005d8c 	ext.w.b	$r12,$r12
1c0037f0:	64001180 	bge	$r12,$r0,16(0x10) # 1c003800 <CAT24_Read+0xe8>
1c0037f4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0037f8:	029e8084 	addi.w	$r4,$r4,1952(0x7a0)
1c0037fc:	57e3e7ff 	bl	-7196(0xfffe3e4) # 1c001be0 <myprintf>
1c003800:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003804:	02800406 	addi.w	$r6,$r0,1(0x1)
1c003808:	00150185 	move	$r5,$r12
1c00380c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003810:	57fc67ff 	bl	-924(0xffffc64) # 1c003474 <I2C_Send7bitAddress>
1c003814:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003818:	57fd0bff 	bl	-760(0xffffd08) # 1c003520 <I2C_wait>
1c00381c:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003820:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003824:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003828:	00005d8c 	ext.w.b	$r12,$r12
1c00382c:	64001180 	bge	$r12,$r0,16(0x10) # 1c00383c <CAT24_Read+0x124>
1c003830:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003834:	029d9084 	addi.w	$r4,$r4,1892(0x764)
1c003838:	57e3abff 	bl	-7256(0xfffe3a8) # 1c001be0 <myprintf>
1c00383c:	02810006 	addi.w	$r6,$r0,64(0x40)
1c003840:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003844:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003848:	57fbcfff 	bl	-1076(0xffffbcc) # 1c003414 <I2C_ReceiveData>
1c00384c:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c003850:	57fcd3ff 	bl	-816(0xffffcd0) # 1c003520 <I2C_wait>
1c003854:	157fd20c 	lu12i.w	$r12,-262512(0xbfe90)
1c003858:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00385c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003860:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003864:	00150184 	move	$r4,$r12
1c003868:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00386c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003870:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003874:	4c000020 	jirl	$r0,$r1,0

1c003878 <TIM_Init>:
TIM_Init():
1c003878:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00387c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003880:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003884:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003888:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00388c:	29800180 	st.w	$r0,$r12,0
1c003890:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003894:	0380118c 	ori	$r12,$r12,0x4
1c003898:	29800180 	st.w	$r0,$r12,0
1c00389c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0038a0:	0380218c 	ori	$r12,$r12,0x8
1c0038a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038a8:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c0038ac:	2980018d 	st.w	$r13,$r12,0
1c0038b0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0038b4:	0380318c 	ori	$r12,$r12,0xc
1c0038b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038bc:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c0038c0:	2980018d 	st.w	$r13,$r12,0
1c0038c4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0038c8:	2880018e 	ld.w	$r14,$r12,0
1c0038cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c0038d4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0038d8:	001535cd 	or	$r13,$r14,$r13
1c0038dc:	2980018d 	st.w	$r13,$r12,0
1c0038e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038e4:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c0038e8:	40002180 	beqz	$r12,32(0x20) # 1c003908 <TIM_Init+0x90>
1c0038ec:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0038f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0038f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0038f8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0038fc:	038005ad 	ori	$r13,$r13,0x1
1c003900:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003904:	2900018d 	st.b	$r13,$r12,0
1c003908:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00390c:	2880018e 	ld.w	$r14,$r12,0
1c003910:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003914:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003918:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00391c:	001535cd 	or	$r13,$r14,$r13
1c003920:	2980018d 	st.w	$r13,$r12,0
1c003924:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003928:	2880018e 	ld.w	$r14,$r12,0
1c00392c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003930:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003934:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003938:	001535cd 	or	$r13,$r14,$r13
1c00393c:	2980018d 	st.w	$r13,$r12,0
1c003940:	03400000 	andi	$r0,$r0,0x0
1c003944:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003948:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00394c:	4c000020 	jirl	$r0,$r1,0

1c003950 <TIM_StructInit>:
TIM_StructInit():
1c003950:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003954:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003958:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00395c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003960:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003964:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003968:	038801ad 	ori	$r13,$r13,0x200
1c00396c:	2980018d 	st.w	$r13,$r12,0
1c003970:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003974:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003978:	2980618d 	st.w	$r13,$r12,24(0x18)
1c00397c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003980:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003984:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00398c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003990:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003998:	1400002d 	lu12i.w	$r13,1(0x1)
1c00399c:	03bcfdad 	ori	$r13,$r13,0xf3f
1c0039a0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0039a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a8:	1400026d 	lu12i.w	$r13,19(0x13)
1c0039ac:	03a201ad 	ori	$r13,$r13,0x880
1c0039b0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0039b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b8:	29803180 	st.w	$r0,$r12,12(0xc)
1c0039bc:	03400000 	andi	$r0,$r0,0x0
1c0039c0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039c8:	4c000020 	jirl	$r0,$r1,0

1c0039cc <TIM_Cmd>:
TIM_Cmd():
1c0039cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039d0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039d8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e0:	40001d80 	beqz	$r12,28(0x1c) # 1c0039fc <TIM_Cmd+0x30>
1c0039e4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0039e8:	2880018d 	ld.w	$r13,$r12,0
1c0039ec:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0039f0:	038005ad 	ori	$r13,$r13,0x1
1c0039f4:	2980018d 	st.w	$r13,$r12,0
1c0039f8:	50001800 	b	24(0x18) # 1c003a10 <TIM_Cmd+0x44>
1c0039fc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a00:	2880018d 	ld.w	$r13,$r12,0
1c003a04:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a08:	0343f9ad 	andi	$r13,$r13,0xfe
1c003a0c:	2980018d 	st.w	$r13,$r12,0
1c003a10:	03400000 	andi	$r0,$r0,0x0
1c003a14:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a1c:	4c000020 	jirl	$r0,$r1,0

1c003a20 <TIM_ITConfig>:
TIM_ITConfig():
1c003a20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a2c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a34:	40003980 	beqz	$r12,56(0x38) # 1c003a6c <TIM_ITConfig+0x4c>
1c003a38:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a3c:	2880018d 	ld.w	$r13,$r12,0
1c003a40:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a44:	038009ad 	ori	$r13,$r13,0x2
1c003a48:	2980018d 	st.w	$r13,$r12,0
1c003a4c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003a50:	2a00018c 	ld.bu	$r12,$r12,0
1c003a54:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003a58:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003a5c:	038005ad 	ori	$r13,$r13,0x1
1c003a60:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003a64:	2900018d 	st.b	$r13,$r12,0
1c003a68:	50003800 	b	56(0x38) # 1c003aa0 <TIM_ITConfig+0x80>
1c003a6c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a70:	2880018d 	ld.w	$r13,$r12,0
1c003a74:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003a78:	0343f5ad 	andi	$r13,$r13,0xfd
1c003a7c:	2980018d 	st.w	$r13,$r12,0
1c003a80:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003a84:	2a00018c 	ld.bu	$r12,$r12,0
1c003a88:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003a8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003a90:	02bff80d 	addi.w	$r13,$r0,-2(0xffe)
1c003a94:	0014b5cd 	and	$r13,$r14,$r13
1c003a98:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003a9c:	2900018d 	st.b	$r13,$r12,0
1c003aa0:	03400000 	andi	$r0,$r0,0x0
1c003aa4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003aa8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003aac:	4c000020 	jirl	$r0,$r1,0

1c003ab0 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003ab0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ab4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ab8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003abc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ac0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ac4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ac8:	2880018d 	ld.w	$r13,$r12,0
1c003acc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003ad0:	0014b1ac 	and	$r12,$r13,$r12
1c003ad4:	40001180 	beqz	$r12,16(0x10) # 1c003ae4 <TIM_GetITStatus+0x34>
1c003ad8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003adc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ae0:	50000800 	b	8(0x8) # 1c003ae8 <TIM_GetITStatus+0x38>
1c003ae4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ae8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003aec:	00150184 	move	$r4,$r12
1c003af0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003af4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003af8:	4c000020 	jirl	$r0,$r1,0

1c003afc <TIM_ClearIT>:
TIM_ClearIT():
1c003afc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b00:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b04:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b08:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b0c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b10:	2880018e 	ld.w	$r14,$r12,0
1c003b14:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003b18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b1c:	001535cd 	or	$r13,$r14,$r13
1c003b20:	2980018d 	st.w	$r13,$r12,0
1c003b24:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003b28:	03800d8c 	ori	$r12,$r12,0x3
1c003b2c:	2a00018c 	ld.bu	$r12,$r12,0
1c003b30:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003b34:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003b38:	03800d8c 	ori	$r12,$r12,0x3
1c003b3c:	038005ad 	ori	$r13,$r13,0x1
1c003b40:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003b44:	2900018d 	st.b	$r13,$r12,0
1c003b48:	03400000 	andi	$r0,$r0,0x0
1c003b4c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b54:	4c000020 	jirl	$r0,$r1,0

1c003b58 <Touch_CountBaseInit>:
Touch_CountBaseInit():
1c003b58:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b5c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b60:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b64:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c003b70:	0040e18d 	slli.w	$r13,$r12,0x18
1c003b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b78:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003b7c:	0040c18c 	slli.w	$r12,$r12,0x10
1c003b80:	001531ad 	or	$r13,$r13,$r12
1c003b84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b88:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003b8c:	0040bd8e 	slli.w	$r14,$r12,0xf
1c003b90:	140001ec 	lu12i.w	$r12,15(0xf)
1c003b94:	03bffd8c 	ori	$r12,$r12,0xfff
1c003b98:	0014b1cc 	and	$r12,$r14,$r12
1c003b9c:	001531ad 	or	$r13,$r13,$r12
1c003ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ba4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003ba8:	0040a18e 	slli.w	$r14,$r12,0x8
1c003bac:	1400002c 	lu12i.w	$r12,1(0x1)
1c003bb0:	03bc018c 	ori	$r12,$r12,0xf00
1c003bb4:	0014b1cc 	and	$r12,$r14,$r12
1c003bb8:	001531ad 	or	$r13,$r13,$r12
1c003bbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003bc4:	03403d8c 	andi	$r12,$r12,0xf
1c003bc8:	001531ad 	or	$r13,$r13,$r12
1c003bcc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003bd0:	0380218c 	ori	$r12,$r12,0x8
1c003bd4:	2980018d 	st.w	$r13,$r12,0
1c003bd8:	03400000 	andi	$r0,$r0,0x0
1c003bdc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003be0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003be4:	4c000020 	jirl	$r0,$r1,0

1c003be8 <Touch_PerformInit>:
Touch_PerformInit():
1c003be8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003bec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003bf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003bf4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003bf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bfc:	2a00018c 	ld.bu	$r12,$r12,0
1c003c00:	0040e18d 	slli.w	$r13,$r12,0x18
1c003c04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c08:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c003c0c:	0040d98e 	slli.w	$r14,$r12,0x16
1c003c10:	1401800c 	lu12i.w	$r12,3072(0xc00)
1c003c14:	0014b1cc 	and	$r12,$r14,$r12
1c003c18:	001531ad 	or	$r13,$r13,$r12
1c003c1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c20:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003c24:	0040c18e 	slli.w	$r14,$r12,0x10
1c003c28:	14007e0c 	lu12i.w	$r12,1008(0x3f0)
1c003c2c:	0014b1cc 	and	$r12,$r14,$r12
1c003c30:	001531ad 	or	$r13,$r13,$r12
1c003c34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c38:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003c3c:	0040a18c 	slli.w	$r12,$r12,0x8
1c003c40:	037c018c 	andi	$r12,$r12,0xf00
1c003c44:	001531ac 	or	$r12,$r13,$r12
1c003c48:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c4c:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c003c50:	0015358d 	or	$r13,$r12,$r13
1c003c54:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c58:	0380318c 	ori	$r12,$r12,0xc
1c003c5c:	2980018d 	st.w	$r13,$r12,0
1c003c60:	03400000 	andi	$r0,$r0,0x0
1c003c64:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003c68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003c6c:	4c000020 	jirl	$r0,$r1,0

1c003c70 <Touch_ControlConfig>:
Touch_ControlConfig():
1c003c70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c74:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c78:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c84:	2a40018c 	ld.hu	$r12,$r12,0
1c003c88:	0040c18d 	slli.w	$r13,$r12,0x10
1c003c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c90:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c003c94:	0040bd8e 	slli.w	$r14,$r12,0xf
1c003c98:	140001ec 	lu12i.w	$r12,15(0xf)
1c003c9c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003ca0:	0014b1cc 	and	$r12,$r14,$r12
1c003ca4:	001531ad 	or	$r13,$r13,$r12
1c003ca8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cac:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c003cb0:	0040b18e 	slli.w	$r14,$r12,0xc
1c003cb4:	140000ec 	lu12i.w	$r12,7(0x7)
1c003cb8:	0014b1cc 	and	$r12,$r14,$r12
1c003cbc:	001531ad 	or	$r13,$r13,$r12
1c003cc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cc4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c003cc8:	0040ad8c 	slli.w	$r12,$r12,0xb
1c003ccc:	0360018c 	andi	$r12,$r12,0x800
1c003cd0:	001531ad 	or	$r13,$r13,$r12
1c003cd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cd8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c003cdc:	0040a18c 	slli.w	$r12,$r12,0x8
1c003ce0:	034c018c 	andi	$r12,$r12,0x300
1c003ce4:	001531ad 	or	$r13,$r13,$r12
1c003ce8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cec:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c003cf0:	0040918c 	slli.w	$r12,$r12,0x4
1c003cf4:	0343fd8c 	andi	$r12,$r12,0xff
1c003cf8:	001531ad 	or	$r13,$r13,$r12
1c003cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d00:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c003d04:	0040858c 	slli.w	$r12,$r12,0x1
1c003d08:	0340098c 	andi	$r12,$r12,0x2
1c003d0c:	001531ad 	or	$r13,$r13,$r12
1c003d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d14:	2a00218c 	ld.bu	$r12,$r12,8(0x8)
1c003d18:	0340058c 	andi	$r12,$r12,0x1
1c003d1c:	001531ad 	or	$r13,$r13,$r12
1c003d20:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003d24:	2980018d 	st.w	$r13,$r12,0
1c003d28:	03400000 	andi	$r0,$r0,0x0
1c003d2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d34:	4c000020 	jirl	$r0,$r1,0

1c003d38 <TOUCH_Cmd>:
TOUCH_Cmd():
1c003d38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d3c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003d48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d4c:	40002580 	beqz	$r12,36(0x24) # 1c003d70 <TOUCH_Cmd+0x38>
1c003d50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d54:	0380118c 	ori	$r12,$r12,0x4
1c003d58:	2880018d 	ld.w	$r13,$r12,0
1c003d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d60:	0380118c 	ori	$r12,$r12,0x4
1c003d64:	038801ad 	ori	$r13,$r13,0x200
1c003d68:	2980018d 	st.w	$r13,$r12,0
1c003d6c:	50002400 	b	36(0x24) # 1c003d90 <TOUCH_Cmd+0x58>
1c003d70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d74:	0380118c 	ori	$r12,$r12,0x4
1c003d78:	2880018e 	ld.w	$r14,$r12,0
1c003d7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d80:	0380118c 	ori	$r12,$r12,0x4
1c003d84:	02b7fc0d 	addi.w	$r13,$r0,-513(0xdff)
1c003d88:	0014b5cd 	and	$r13,$r14,$r13
1c003d8c:	2980018d 	st.w	$r13,$r12,0
1c003d90:	03400000 	andi	$r0,$r0,0x0
1c003d94:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d9c:	4c000020 	jirl	$r0,$r1,0

1c003da0 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003da0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003da4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003da8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003dac:	0015008c 	move	$r12,$r4
1c003db0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003db4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003db8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dbc:	0015018d 	move	$r13,$r12
1c003dc0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003dc4:	0381018c 	ori	$r12,$r12,0x40
1c003dc8:	001031ac 	add.w	$r12,$r13,$r12
1c003dcc:	2880018c 	ld.w	$r12,$r12,0
1c003dd0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003dd4:	037ffd8c 	andi	$r12,$r12,0xfff
1c003dd8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ddc:	00150184 	move	$r4,$r12
1c003de0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003de4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003de8:	4c000020 	jirl	$r0,$r1,0

1c003dec <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003dec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003df0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003df4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003df8:	0015008c 	move	$r12,$r4
1c003dfc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003e00:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003e04:	0040898c 	slli.w	$r12,$r12,0x2
1c003e08:	0015018d 	move	$r13,$r12
1c003e0c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003e10:	0382018c 	ori	$r12,$r12,0x80
1c003e14:	001031ac 	add.w	$r12,$r13,$r12
1c003e18:	2880018c 	ld.w	$r12,$r12,0
1c003e1c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e20:	037ffd8c 	andi	$r12,$r12,0xfff
1c003e24:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e28:	00150184 	move	$r4,$r12
1c003e2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e34:	4c000020 	jirl	$r0,$r1,0

1c003e38 <TOUCH_EnablePollScan>:
TOUCH_EnablePollScan():
1c003e38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e3c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003e40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e44:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003e48:	2880018d 	ld.w	$r13,$r12,0
1c003e4c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003e50:	038009ad 	ori	$r13,$r13,0x2
1c003e54:	2980018d 	st.w	$r13,$r12,0
1c003e58:	03400000 	andi	$r0,$r0,0x0
1c003e5c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003e60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e64:	4c000020 	jirl	$r0,$r1,0

1c003e68 <TOUCH_EnableSingleScan>:
TOUCH_EnableSingleScan():
1c003e68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e6c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003e70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e74:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003e78:	2880018d 	ld.w	$r13,$r12,0
1c003e7c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003e80:	038005ad 	ori	$r13,$r13,0x1
1c003e84:	2980018d 	st.w	$r13,$r12,0
1c003e88:	03400000 	andi	$r0,$r0,0x0
1c003e8c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003e90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e94:	4c000020 	jirl	$r0,$r1,0

1c003e98 <TOUCH_SetDownTh>:
TOUCH_SetDownTh():
1c003e98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003ea0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ea4:	0015008c 	move	$r12,$r4
1c003ea8:	001500ad 	move	$r13,$r5
1c003eac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003eb0:	001501ac 	move	$r12,$r13
1c003eb4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003eb8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ebc:	0040898c 	slli.w	$r12,$r12,0x2
1c003ec0:	0015018d 	move	$r13,$r12
1c003ec4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003ec8:	0381018c 	ori	$r12,$r12,0x40
1c003ecc:	001031ac 	add.w	$r12,$r13,$r12
1c003ed0:	2880018c 	ld.w	$r12,$r12,0
1c003ed4:	037ffd8c 	andi	$r12,$r12,0xfff
1c003ed8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c003edc:	0040e1ad 	slli.w	$r13,$r13,0x18
1c003ee0:	001501ae 	move	$r14,$r13
1c003ee4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003ee8:	004089ad 	slli.w	$r13,$r13,0x2
1c003eec:	001501af 	move	$r15,$r13
1c003ef0:	157fd68d 	lu12i.w	$r13,-262476(0xbfeb4)
1c003ef4:	038101ad 	ori	$r13,$r13,0x40
1c003ef8:	001035ed 	add.w	$r13,$r15,$r13
1c003efc:	0015398c 	or	$r12,$r12,$r14
1c003f00:	298001ac 	st.w	$r12,$r13,0
1c003f04:	03400000 	andi	$r0,$r0,0x0
1c003f08:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f10:	4c000020 	jirl	$r0,$r1,0

1c003f14 <TOUCH_SetChnAttr>:
TOUCH_SetChnAttr():
1c003f14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f18:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f20:	0015008c 	move	$r12,$r4
1c003f24:	001500ad 	move	$r13,$r5
1c003f28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003f2c:	001501ac 	move	$r12,$r13
1c003f30:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c003f34:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c003f38:	0040e18c 	slli.w	$r12,$r12,0x18
1c003f3c:	0015018e 	move	$r14,$r12
1c003f40:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003f44:	0040898c 	slli.w	$r12,$r12,0x2
1c003f48:	0015018d 	move	$r13,$r12
1c003f4c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003f50:	0382018c 	ori	$r12,$r12,0x80
1c003f54:	001031ac 	add.w	$r12,$r13,$r12
1c003f58:	2880018c 	ld.w	$r12,$r12,0
1c003f5c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003f60:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c003f64:	004089ad 	slli.w	$r13,$r13,0x2
1c003f68:	001501af 	move	$r15,$r13
1c003f6c:	157fd68d 	lu12i.w	$r13,-262476(0xbfeb4)
1c003f70:	038101ad 	ori	$r13,$r13,0x40
1c003f74:	001035ed 	add.w	$r13,$r15,$r13
1c003f78:	001531cc 	or	$r12,$r14,$r12
1c003f7c:	298001ac 	st.w	$r12,$r13,0
1c003f80:	03400000 	andi	$r0,$r0,0x0
1c003f84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f8c:	4c000020 	jirl	$r0,$r1,0

1c003f90 <TOUCH_SetAllChnAttr>:
TOUCH_SetAllChnAttr():
1c003f90:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f94:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003f98:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003f9c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003fa0:	0015008c 	move	$r12,$r4
1c003fa4:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c003fa8:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003fac:	50002800 	b	40(0x28) # 1c003fd4 <TOUCH_SetAllChnAttr+0x44>
1c003fb0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003fb4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003fb8:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c003fbc:	001501a5 	move	$r5,$r13
1c003fc0:	00150184 	move	$r4,$r12
1c003fc4:	57ff53ff 	bl	-176(0xfffff50) # 1c003f14 <TOUCH_SetChnAttr>
1c003fc8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003fd0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003fd4:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003fd8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003fdc:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c003fb0 <TOUCH_SetAllChnAttr+0x20>
1c003fe0:	03400000 	andi	$r0,$r0,0x0
1c003fe4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003fe8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003fec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ff0:	4c000020 	jirl	$r0,$r1,0

1c003ff4 <TOUCH_Init>:
TOUCH_Init():
1c003ff4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003ff8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003ffc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004000:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004004:	0015008c 	move	$r12,$r4
1c004008:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c00400c:	0281400c 	addi.w	$r12,$r0,80(0x50)
1c004010:	293fa2cc 	st.b	$r12,$r22,-24(0xfe8)
1c004014:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004018:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c00401c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004020:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c004024:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004028:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00402c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004030:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c004034:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c004038:	00150184 	move	$r4,$r12
1c00403c:	57fb1fff 	bl	-1252(0xffffb1c) # 1c003b58 <Touch_CountBaseInit>
1c004040:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004044:	293f82cc 	st.b	$r12,$r22,-32(0xfe0)
1c004048:	293f86c0 	st.b	$r0,$r22,-31(0xfe1)
1c00404c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004050:	293f8acc 	st.b	$r12,$r22,-30(0xfe2)
1c004054:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004058:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00405c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c004060:	293f92cc 	st.b	$r12,$r22,-28(0xfe4)
1c004064:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c004068:	00150184 	move	$r4,$r12
1c00406c:	57fb7fff 	bl	-1156(0xffffb7c) # 1c003be8 <Touch_PerformInit>
1c004070:	03bffc0c 	ori	$r12,$r0,0xfff
1c004074:	297f52cc 	st.h	$r12,$r22,-44(0xfd4)
1c004078:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00407c:	293f5acc 	st.b	$r12,$r22,-42(0xfd6)
1c004080:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004084:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c004088:	293f62c0 	st.b	$r0,$r22,-40(0xfd8)
1c00408c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004090:	293f66cc 	st.b	$r12,$r22,-39(0xfd9)
1c004094:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004098:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c00409c:	293f6ec0 	st.b	$r0,$r22,-37(0xfdb)
1c0040a0:	293f72c0 	st.b	$r0,$r22,-36(0xfdc)
1c0040a4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0040a8:	00150184 	move	$r4,$r12
1c0040ac:	57fbc7ff 	bl	-1084(0xffffbc4) # 1c003c70 <Touch_ControlConfig>
1c0040b0:	57fdbbff 	bl	-584(0xffffdb8) # 1c003e68 <TOUCH_EnableSingleScan>
1c0040b4:	03400000 	andi	$r0,$r0,0x0
1c0040b8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0040bc:	2880018c 	ld.w	$r12,$r12,0
1c0040c0:	0340058c 	andi	$r12,$r12,0x1
1c0040c4:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c0040b8 <TOUCH_Init+0xc4>
1c0040c8:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0040cc:	00150184 	move	$r4,$r12
1c0040d0:	57fec3ff 	bl	-320(0xffffec0) # 1c003f90 <TOUCH_SetAllChnAttr>
1c0040d4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0040d8:	57fc63ff 	bl	-928(0xffffc60) # 1c003d38 <TOUCH_Cmd>
1c0040dc:	03400000 	andi	$r0,$r0,0x0
1c0040e0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0040e4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0040e8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0040ec:	4c000020 	jirl	$r0,$r1,0

1c0040f0 <Printf_CountVal>:
Printf_CountVal():
1c0040f0:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c0040f4:	29813061 	st.w	$r1,$r3,76(0x4c)
1c0040f8:	29812076 	st.w	$r22,$r3,72(0x48)
1c0040fc:	02814076 	addi.w	$r22,$r3,80(0x50)
1c004100:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004104:	50003c00 	b	60(0x3c) # 1c004140 <Printf_CountVal+0x50>
1c004108:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00410c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004110:	00150184 	move	$r4,$r12
1c004114:	57fcdbff 	bl	-808(0xffffcd8) # 1c003dec <TOUCH_GetCountValue>
1c004118:	0015008c 	move	$r12,$r4
1c00411c:	0015018d 	move	$r13,$r12
1c004120:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004124:	0040898c 	slli.w	$r12,$r12,0x2
1c004128:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00412c:	001031cc 	add.w	$r12,$r14,$r12
1c004130:	29bf218d 	st.w	$r13,$r12,-56(0xfc8)
1c004134:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004138:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00413c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004140:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004144:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004148:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c004108 <Printf_CountVal+0x18>
1c00414c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004150:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c004154:	57da8fff 	bl	-9588(0xfffda8c) # 1c001be0 <myprintf>
1c004158:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00415c:	50003400 	b	52(0x34) # 1c004190 <Printf_CountVal+0xa0>
1c004160:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004164:	0040898c 	slli.w	$r12,$r12,0x2
1c004168:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00416c:	001031ac 	add.w	$r12,$r13,$r12
1c004170:	28bf218c 	ld.w	$r12,$r12,-56(0xfc8)
1c004174:	00150185 	move	$r5,$r12
1c004178:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00417c:	02ba6084 	addi.w	$r4,$r4,-360(0xe98)
1c004180:	57da63ff 	bl	-9632(0xfffda60) # 1c001be0 <myprintf>
1c004184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004188:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00418c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004190:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004194:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004198:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c004160 <Printf_CountVal+0x70>
1c00419c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0041a0:	0380118c 	ori	$r12,$r12,0x4
1c0041a4:	2880018c 	ld.w	$r12,$r12,0
1c0041a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0041ac:	03403d8c 	andi	$r12,$r12,0xf
1c0041b0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0041b4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0041b8:	00150185 	move	$r5,$r12
1c0041bc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0041c0:	02ba0084 	addi.w	$r4,$r4,-384(0xe80)
1c0041c4:	57da1fff 	bl	-9700(0xfffda1c) # 1c001be0 <myprintf>
1c0041c8:	03400000 	andi	$r0,$r0,0x0
1c0041cc:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c0041d0:	28812076 	ld.w	$r22,$r3,72(0x48)
1c0041d4:	02814063 	addi.w	$r3,$r3,80(0x50)
1c0041d8:	4c000020 	jirl	$r0,$r1,0

1c0041dc <dma_reset>:
dma_reset():
1c0041dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0041e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041e8:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0041ec:	0380218c 	ori	$r12,$r12,0x8
1c0041f0:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c0041f4:	2980018d 	st.w	$r13,$r12,0
1c0041f8:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0041fc:	0380218c 	ori	$r12,$r12,0x8
1c004200:	2880018c 	ld.w	$r12,$r12,0
1c004204:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004208:	50001400 	b	20(0x14) # 1c00421c <dma_reset+0x40>
1c00420c:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c004210:	0380218c 	ori	$r12,$r12,0x8
1c004214:	2880018c 	ld.w	$r12,$r12,0
1c004218:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00421c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004220:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004224:	5fffe9ac 	bne	$r13,$r12,-24(0x3ffe8) # 1c00420c <dma_reset+0x30>
1c004228:	03400000 	andi	$r0,$r0,0x0
1c00422c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004230:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004234:	4c000020 	jirl	$r0,$r1,0

1c004238 <dma_start>:
dma_start():
1c004238:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00423c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004240:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004244:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004248:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00424c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c004250:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c004254:	0380218c 	ori	$r12,$r12,0x8
1c004258:	2880018c 	ld.w	$r12,$r12,0
1c00425c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004260:	50001400 	b	20(0x14) # 1c004274 <dma_start+0x3c>
1c004264:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c004268:	0380218c 	ori	$r12,$r12,0x8
1c00426c:	2880018c 	ld.w	$r12,$r12,0
1c004270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004274:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004278:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00427c:	5fffe9ac 	bne	$r13,$r12,-24(0x3ffe8) # 1c004264 <dma_start+0x2c>
1c004280:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c004284:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c004288:	143fffed 	lu12i.w	$r13,131071(0x1ffff)
1c00428c:	03bffdad 	ori	$r13,$r13,0xfff
1c004290:	0014b5cd 	and	$r13,$r14,$r13
1c004294:	2980018d 	st.w	$r13,$r12,0
1c004298:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c00429c:	0380118c 	ori	$r12,$r12,0x4
1c0042a0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0042a4:	2980018d 	st.w	$r13,$r12,0
1c0042a8:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c0042ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0042b0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0042c8 <dma_start+0x90>
1c0042b4:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0042b8:	0380218c 	ori	$r12,$r12,0x8
1c0042bc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0042c0:	2980018d 	st.w	$r13,$r12,0
1c0042c4:	50001400 	b	20(0x14) # 1c0042d8 <dma_start+0xa0>
1c0042c8:	157fd80c 	lu12i.w	$r12,-262464(0xbfec0)
1c0042cc:	0380218c 	ori	$r12,$r12,0x8
1c0042d0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0042d4:	2980018d 	st.w	$r13,$r12,0
1c0042d8:	03400000 	andi	$r0,$r0,0x0
1c0042dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0042e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0042e4:	4c000020 	jirl	$r0,$r1,0

1c0042e8 <do_exit>:
do_exit():
1c0042e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0042f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0042f8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0042fc:	03400000 	andi	$r0,$r0,0x0
1c004300:	00150184 	move	$r4,$r12
1c004304:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004308:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00430c:	4c000020 	jirl	$r0,$r1,0

1c004310 <do_help>:
do_help():
1c004310:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004314:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004318:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00431c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004320:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004324:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004328:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00432c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004330:	580015ac 	beq	$r13,$r12,20(0x14) # 1c004344 <do_help+0x34>
1c004334:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004338:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00433c:	580091ac 	beq	$r13,$r12,144(0x90) # 1c0043cc <do_help+0xbc>
1c004340:	5001ac00 	b	428(0x1ac) # 1c0044ec <do_help+0x1dc>
1c004344:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004348:	0288b084 	addi.w	$r4,$r4,556(0x22c)
1c00434c:	57d897ff 	bl	-10092(0xfffd894) # 1c001be0 <myprintf>
1c004350:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004354:	50004400 	b	68(0x44) # 1c004398 <do_help+0x88>
1c004358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00435c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c004360:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004364:	0280c1ad 	addi.w	$r13,$r13,48(0x30)
1c004368:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00436c:	0040918c 	slli.w	$r12,$r12,0x4
1c004370:	001031ac 	add.w	$r12,$r13,$r12
1c004374:	2880018c 	ld.w	$r12,$r12,0
1c004378:	00150186 	move	$r6,$r12
1c00437c:	001501c5 	move	$r5,$r14
1c004380:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004384:	02880084 	addi.w	$r4,$r4,512(0x200)
1c004388:	57d85bff 	bl	-10152(0xfffd858) # 1c001be0 <myprintf>
1c00438c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004390:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004394:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004398:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c00439c:	02bfe1ad 	addi.w	$r13,$r13,-8(0xff8)
1c0043a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043a4:	0040918c 	slli.w	$r12,$r12,0x4
1c0043a8:	001031ac 	add.w	$r12,$r13,$r12
1c0043ac:	2880018c 	ld.w	$r12,$r12,0
1c0043b0:	00150185 	move	$r5,$r12
1c0043b4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0043b8:	02bf3084 	addi.w	$r4,$r4,-52(0xfcc)
1c0043bc:	57e437ff 	bl	-7116(0xfffe434) # 1c0027f0 <strcmp>
1c0043c0:	0015008c 	move	$r12,$r4
1c0043c4:	47ff959f 	bnez	$r12,-108(0x7fff94) # 1c004358 <do_help+0x48>
1c0043c8:	50013800 	b	312(0x138) # 1c004500 <do_help+0x1f0>
1c0043cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0043d0:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0043d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0043d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0043dc:	5000a000 	b	160(0xa0) # 1c00447c <do_help+0x16c>
1c0043e0:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0043e4:	02bec1ad 	addi.w	$r13,$r13,-80(0xfb0)
1c0043e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0043ec:	0040918c 	slli.w	$r12,$r12,0x4
1c0043f0:	001031ac 	add.w	$r12,$r13,$r12
1c0043f4:	2880018c 	ld.w	$r12,$r12,0
1c0043f8:	00150185 	move	$r5,$r12
1c0043fc:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c004400:	57e3f3ff 	bl	-7184(0xfffe3f0) # 1c0027f0 <strcmp>
1c004404:	0015008c 	move	$r12,$r4
1c004408:	44006980 	bnez	$r12,104(0x68) # 1c004470 <do_help+0x160>
1c00440c:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004410:	02be11ad 	addi.w	$r13,$r13,-124(0xf84)
1c004414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004418:	0040918c 	slli.w	$r12,$r12,0x4
1c00441c:	001031ac 	add.w	$r12,$r13,$r12
1c004420:	2880018e 	ld.w	$r14,$r12,0
1c004424:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004428:	02bdb1ad 	addi.w	$r13,$r13,-148(0xf6c)
1c00442c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004430:	0040918c 	slli.w	$r12,$r12,0x4
1c004434:	001031ac 	add.w	$r12,$r13,$r12
1c004438:	2880218f 	ld.w	$r15,$r12,8(0x8)
1c00443c:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004440:	02bd51ad 	addi.w	$r13,$r13,-172(0xf54)
1c004444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004448:	0040918c 	slli.w	$r12,$r12,0x4
1c00444c:	001031ac 	add.w	$r12,$r13,$r12
1c004450:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004454:	00150187 	move	$r7,$r12
1c004458:	001501e6 	move	$r6,$r15
1c00445c:	001501c5 	move	$r5,$r14
1c004460:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004464:	0284b084 	addi.w	$r4,$r4,300(0x12c)
1c004468:	57d77bff 	bl	-10376(0xfffd778) # 1c001be0 <myprintf>
1c00446c:	50004000 	b	64(0x40) # 1c0044ac <do_help+0x19c>
1c004470:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004474:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004478:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00447c:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c004480:	02bc51ad 	addi.w	$r13,$r13,-236(0xf14)
1c004484:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004488:	0040918c 	slli.w	$r12,$r12,0x4
1c00448c:	001031ac 	add.w	$r12,$r13,$r12
1c004490:	2880018c 	ld.w	$r12,$r12,0
1c004494:	00150185 	move	$r5,$r12
1c004498:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00449c:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c0044a0:	57e353ff 	bl	-7344(0xfffe350) # 1c0027f0 <strcmp>
1c0044a4:	0015008c 	move	$r12,$r4
1c0044a8:	47ff399f 	bnez	$r12,-200(0x7fff38) # 1c0043e0 <do_help+0xd0>
1c0044ac:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0044b0:	02bb91ad 	addi.w	$r13,$r13,-284(0xee4)
1c0044b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0044b8:	0040918c 	slli.w	$r12,$r12,0x4
1c0044bc:	001031ac 	add.w	$r12,$r13,$r12
1c0044c0:	2880018c 	ld.w	$r12,$r12,0
1c0044c4:	00150185 	move	$r5,$r12
1c0044c8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044cc:	02bae084 	addi.w	$r4,$r4,-328(0xeb8)
1c0044d0:	57e323ff 	bl	-7392(0xfffe320) # 1c0027f0 <strcmp>
1c0044d4:	0015008c 	move	$r12,$r4
1c0044d8:	44002580 	bnez	$r12,36(0x24) # 1c0044fc <do_help+0x1ec>
1c0044dc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044e0:	0282f084 	addi.w	$r4,$r4,188(0xbc)
1c0044e4:	57d6ffff 	bl	-10500(0xfffd6fc) # 1c001be0 <myprintf>
1c0044e8:	50001400 	b	20(0x14) # 1c0044fc <do_help+0x1ec>
1c0044ec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044f0:	02833084 	addi.w	$r4,$r4,204(0xcc)
1c0044f4:	57d6efff 	bl	-10516(0xfffd6ec) # 1c001be0 <myprintf>
1c0044f8:	50000800 	b	8(0x8) # 1c004500 <do_help+0x1f0>
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	0015000c 	move	$r12,$r0
1c004504:	00150184 	move	$r4,$r12
1c004508:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00450c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004510:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004514:	4c000020 	jirl	$r0,$r1,0

1c004518 <uart_test>:
uart_test():
1c004518:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c00451c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004520:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004524:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004528:	57ce2bff 	bl	-12760(0xfffce28) # 1c001350 <EnableInt>
1c00452c:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c004530:	0380118c 	ori	$r12,$r12,0x4
1c004534:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c004538:	2980018d 	st.w	$r13,$r12,0
1c00453c:	140038ec 	lu12i.w	$r12,455(0x1c7)
1c004540:	03bf1d8c 	ori	$r12,$r12,0xfc7
1c004544:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004548:	50001400 	b	20(0x14) # 1c00455c <uart_test+0x44>
1c00454c:	03400000 	andi	$r0,$r0,0x0
1c004550:	03400000 	andi	$r0,$r0,0x0
1c004554:	03400000 	andi	$r0,$r0,0x0
1c004558:	03400000 	andi	$r0,$r0,0x0
1c00455c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004560:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004564:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c004568:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00454c <uart_test+0x34>
1c00456c:	140000ac 	lu12i.w	$r12,5(0x5)
1c004570:	03accd8c 	ori	$r12,$r12,0xb33
1c004574:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004578:	50001400 	b	20(0x14) # 1c00458c <uart_test+0x74>
1c00457c:	03400000 	andi	$r0,$r0,0x0
1c004580:	03400000 	andi	$r0,$r0,0x0
1c004584:	03400000 	andi	$r0,$r0,0x0
1c004588:	03400000 	andi	$r0,$r0,0x0
1c00458c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004590:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004594:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c004598:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00457c <uart_test+0x64>
1c00459c:	1400016c 	lu12i.w	$r12,11(0xb)
1c0045a0:	0399958c 	ori	$r12,$r12,0x665
1c0045a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0045a8:	50001400 	b	20(0x14) # 1c0045bc <uart_test+0xa4>
1c0045ac:	03400000 	andi	$r0,$r0,0x0
1c0045b0:	03400000 	andi	$r0,$r0,0x0
1c0045b4:	03400000 	andi	$r0,$r0,0x0
1c0045b8:	03400000 	andi	$r0,$r0,0x0
1c0045bc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0045c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0045c4:	29bf92cd 	st.w	$r13,$r22,-28(0xfe4)
1c0045c8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0045ac <uart_test+0x94>
1c0045cc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0045d0:	02802084 	addi.w	$r4,$r4,8(0x8)
1c0045d4:	57e833ff 	bl	-6096(0xfffe830) # 1c002e04 <soc_myprintf>
1c0045d8:	1400016c 	lu12i.w	$r12,11(0xb)
1c0045dc:	0399958c 	ori	$r12,$r12,0x665
1c0045e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0045e4:	50001400 	b	20(0x14) # 1c0045f8 <uart_test+0xe0>
1c0045e8:	03400000 	andi	$r0,$r0,0x0
1c0045ec:	03400000 	andi	$r0,$r0,0x0
1c0045f0:	03400000 	andi	$r0,$r0,0x0
1c0045f4:	03400000 	andi	$r0,$r0,0x0
1c0045f8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0045fc:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004600:	29bf82cd 	st.w	$r13,$r22,-32(0xfe0)
1c004604:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0045e8 <uart_test+0xd0>
1c004608:	1400016c 	lu12i.w	$r12,11(0xb)
1c00460c:	0399958c 	ori	$r12,$r12,0x665
1c004610:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004614:	50001400 	b	20(0x14) # 1c004628 <uart_test+0x110>
1c004618:	03400000 	andi	$r0,$r0,0x0
1c00461c:	03400000 	andi	$r0,$r0,0x0
1c004620:	03400000 	andi	$r0,$r0,0x0
1c004624:	03400000 	andi	$r0,$r0,0x0
1c004628:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00462c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004630:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c004634:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004618 <uart_test+0x100>
1c004638:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00463c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004640:	57e3abff 	bl	-7256(0xfffe3a8) # 1c0029e8 <gpio_init>
1c004644:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004648:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00464c:	57e39fff 	bl	-7268(0xfffe39c) # 1c0029e8 <gpio_init>
1c004650:	140000ac 	lu12i.w	$r12,5(0x5)
1c004654:	03accd8c 	ori	$r12,$r12,0xb33
1c004658:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00465c:	50001400 	b	20(0x14) # 1c004670 <uart_test+0x158>
1c004660:	03400000 	andi	$r0,$r0,0x0
1c004664:	03400000 	andi	$r0,$r0,0x0
1c004668:	03400000 	andi	$r0,$r0,0x0
1c00466c:	03400000 	andi	$r0,$r0,0x0
1c004670:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004674:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004678:	29bf62cd 	st.w	$r13,$r22,-40(0xfd8)
1c00467c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004660 <uart_test+0x148>
1c004680:	14000e2c 	lu12i.w	$r12,113(0x71)
1c004684:	03bfc98c 	ori	$r12,$r12,0xff2
1c004688:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c00468c:	50001400 	b	20(0x14) # 1c0046a0 <uart_test+0x188>
1c004690:	03400000 	andi	$r0,$r0,0x0
1c004694:	03400000 	andi	$r0,$r0,0x0
1c004698:	03400000 	andi	$r0,$r0,0x0
1c00469c:	03400000 	andi	$r0,$r0,0x0
1c0046a0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0046a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046a8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0046ac:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004690 <uart_test+0x178>
1c0046b0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0046b4:	02bcd084 	addi.w	$r4,$r4,-204(0xf34)
1c0046b8:	57e74fff 	bl	-6324(0xfffe74c) # 1c002e04 <soc_myprintf>
1c0046bc:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0046c0:	03bfc98c 	ori	$r12,$r12,0xff2
1c0046c4:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0046c8:	50001400 	b	20(0x14) # 1c0046dc <uart_test+0x1c4>
1c0046cc:	03400000 	andi	$r0,$r0,0x0
1c0046d0:	03400000 	andi	$r0,$r0,0x0
1c0046d4:	03400000 	andi	$r0,$r0,0x0
1c0046d8:	03400000 	andi	$r0,$r0,0x0
1c0046dc:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c0046e0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0046e4:	29bf42cd 	st.w	$r13,$r22,-48(0xfd0)
1c0046e8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0046cc <uart_test+0x1b4>
1c0046ec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0046f0:	02bc1084 	addi.w	$r4,$r4,-252(0xf04)
1c0046f4:	57e713ff 	bl	-6384(0xfffe710) # 1c002e04 <soc_myprintf>
1c0046f8:	14000e2c 	lu12i.w	$r12,113(0x71)
1c0046fc:	03bfc98c 	ori	$r12,$r12,0xff2
1c004700:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c004704:	50001400 	b	20(0x14) # 1c004718 <uart_test+0x200>
1c004708:	03400000 	andi	$r0,$r0,0x0
1c00470c:	03400000 	andi	$r0,$r0,0x0
1c004710:	03400000 	andi	$r0,$r0,0x0
1c004714:	03400000 	andi	$r0,$r0,0x0
1c004718:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c00471c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004720:	29bf32cd 	st.w	$r13,$r22,-52(0xfcc)
1c004724:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004708 <uart_test+0x1f0>
1c004728:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00472c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004730:	57e3b3ff 	bl	-7248(0xfffe3b0) # 1c002ae0 <gpio_write>
1c004734:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004738:	02bb2084 	addi.w	$r4,$r4,-312(0xec8)
1c00473c:	57e6cbff 	bl	-6456(0xfffe6c8) # 1c002e04 <soc_myprintf>
1c004740:	14000e2c 	lu12i.w	$r12,113(0x71)
1c004744:	03bfc98c 	ori	$r12,$r12,0xff2
1c004748:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c00474c:	50001400 	b	20(0x14) # 1c004760 <uart_test+0x248>
1c004750:	03400000 	andi	$r0,$r0,0x0
1c004754:	03400000 	andi	$r0,$r0,0x0
1c004758:	03400000 	andi	$r0,$r0,0x0
1c00475c:	03400000 	andi	$r0,$r0,0x0
1c004760:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c004764:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c004768:	29bf22cd 	st.w	$r13,$r22,-56(0xfc8)
1c00476c:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004750 <uart_test+0x238>
1c004770:	00150005 	move	$r5,$r0
1c004774:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004778:	57e36bff 	bl	-7320(0xfffe368) # 1c002ae0 <gpio_write>
1c00477c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004780:	02ba3084 	addi.w	$r4,$r4,-372(0xe8c)
1c004784:	57e683ff 	bl	-6528(0xfffe680) # 1c002e04 <soc_myprintf>
1c004788:	14000e2c 	lu12i.w	$r12,113(0x71)
1c00478c:	03bfc98c 	ori	$r12,$r12,0xff2
1c004790:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c004794:	50001400 	b	20(0x14) # 1c0047a8 <uart_test+0x290>
1c004798:	03400000 	andi	$r0,$r0,0x0
1c00479c:	03400000 	andi	$r0,$r0,0x0
1c0047a0:	03400000 	andi	$r0,$r0,0x0
1c0047a4:	03400000 	andi	$r0,$r0,0x0
1c0047a8:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c0047ac:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0047b0:	29bf12cd 	st.w	$r13,$r22,-60(0xfc4)
1c0047b4:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c004798 <uart_test+0x280>
1c0047b8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0047bc:	02b87084 	addi.w	$r4,$r4,-484(0xe1c)
1c0047c0:	57e647ff 	bl	-6588(0xfffe644) # 1c002e04 <soc_myprintf>
1c0047c4:	1400016c 	lu12i.w	$r12,11(0xb)
1c0047c8:	0399958c 	ori	$r12,$r12,0x665
1c0047cc:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c0047d0:	50001400 	b	20(0x14) # 1c0047e4 <uart_test+0x2cc>
1c0047d4:	03400000 	andi	$r0,$r0,0x0
1c0047d8:	03400000 	andi	$r0,$r0,0x0
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	03400000 	andi	$r0,$r0,0x0
1c0047e4:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c0047e8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0047ec:	29bf02cd 	st.w	$r13,$r22,-64(0xfc0)
1c0047f0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0047d4 <uart_test+0x2bc>
1c0047f4:	53fe8fff 	b	-372(0xffffe8c) # 1c004680 <uart_test+0x168>

1c0047f8 <recv_dat_int>:
recv_dat_int():
1c0047f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0047fc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004800:	29806076 	st.w	$r22,$r3,24(0x18)
1c004804:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004808:	0015008c 	move	$r12,$r4
1c00480c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004810:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004814:	029fc18c 	addi.w	$r12,$r12,2032(0x7f0)
1c004818:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00481c:	2980018d 	st.w	$r13,$r12,0
1c004820:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004824:	00150185 	move	$r5,$r12
1c004828:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00482c:	029f7084 	addi.w	$r4,$r4,2012(0x7dc)
1c004830:	54001800 	bl	24(0x18) # 1c004848 <Buffer_write>
1c004834:	03400000 	andi	$r0,$r0,0x0
1c004838:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00483c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004840:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004844:	4c000020 	jirl	$r0,$r1,0

1c004848 <Buffer_write>:
Buffer_write():
1c004848:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00484c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004850:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004854:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004858:	001500ac 	move	$r12,$r5
1c00485c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004864:	2880018c 	ld.w	$r12,$r12,0
1c004868:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00486c:	288031ad 	ld.w	$r13,$r13,12(0xc)
1c004870:	0010358c 	add.w	$r12,$r12,$r13
1c004874:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004878:	2900018d 	st.b	$r13,$r12,0
1c00487c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004880:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004884:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c004888:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00488c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c004890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004894:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c004898:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00489c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0048a0:	60000dac 	blt	$r13,$r12,12(0xc) # 1c0048ac <Buffer_write+0x64>
1c0048a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048a8:	29803180 	st.w	$r0,$r12,12(0xc)
1c0048ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048b0:	2880418c 	ld.w	$r12,$r12,16(0x10)
1c0048b4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0048b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048bc:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0048c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048c4:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0048c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048cc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0048d0:	6400458d 	bge	$r12,$r13,68(0x44) # 1c004914 <Buffer_write+0xcc>
1c0048d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048d8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0048dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048e0:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0048e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048e8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0048ec:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0048f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048f4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0048f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0048fc:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c004900:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004904:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c004908:	60000dac 	blt	$r13,$r12,12(0xc) # 1c004914 <Buffer_write+0xcc>
1c00490c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004910:	29802180 	st.w	$r0,$r12,8(0x8)
1c004914:	03400000 	andi	$r0,$r0,0x0
1c004918:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00491c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004920:	4c000020 	jirl	$r0,$r1,0

1c004924 <main>:
main():
1c004924:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004928:	29803061 	st.w	$r1,$r3,12(0xc)
1c00492c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004930:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004934:	57fbe7ff 	bl	-1052(0xffffbe4) # 1c004518 <uart_test>
1c004938:	0015000c 	move	$r12,$r0
1c00493c:	00150184 	move	$r4,$r12
1c004940:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004944:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004948:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00494c:	4c000020 	jirl	$r0,$r1,0

1c004950 <do_nothing>:
do_nothing():
1c004950:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004954:	29803076 	st.w	$r22,$r3,12(0xc)
1c004958:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00495c:	0015000c 	move	$r12,$r0
1c004960:	00150184 	move	$r4,$r12
1c004964:	28803076 	ld.w	$r22,$r3,12(0xc)
1c004968:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00496c:	4c000020 	jirl	$r0,$r1,0

1c004970 <do_d1>:
do_d1():
1c004970:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004974:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004978:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00497c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004980:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004984:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004988:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00498c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004990:	6400118d 	bge	$r12,$r13,16(0x10) # 1c0049a0 <do_d1+0x30>
1c004994:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004998:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00499c:	6400198d 	bge	$r12,$r13,24(0x18) # 1c0049b4 <do_d1+0x44>
1c0049a0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0049a4:	02b1e084 	addi.w	$r4,$r4,-904(0xc78)
1c0049a8:	57d23bff 	bl	-11720(0xfffd238) # 1c001be0 <myprintf>
1c0049ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0049b0:	5000c000 	b	192(0xc0) # 1c004a70 <do_d1+0x100>
1c0049b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0049b8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0049bc:	2880018c 	ld.w	$r12,$r12,0
1c0049c0:	00150184 	move	$r4,$r12
1c0049c4:	5402fc00 	bl	764(0x2fc) # 1c004cc0 <str2num>
1c0049c8:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0049cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0049d0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0049d4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0049e4 <do_d1+0x74>
1c0049d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0049dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049e0:	50002000 	b	32(0x20) # 1c004a00 <do_d1+0x90>
1c0049e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0049e8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0049ec:	2880018c 	ld.w	$r12,$r12,0
1c0049f0:	00150184 	move	$r4,$r12
1c0049f4:	5402cc00 	bl	716(0x2cc) # 1c004cc0 <str2num>
1c0049f8:	0015008c 	move	$r12,$r4
1c0049fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a00:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a04:	50005c00 	b	92(0x5c) # 1c004a60 <do_d1+0xf0>
1c004a08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a0c:	03401d8c 	andi	$r12,$r12,0x7
1c004a10:	44002180 	bnez	$r12,32(0x20) # 1c004a30 <do_d1+0xc0>
1c004a14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a18:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a1c:	001031ac 	add.w	$r12,$r13,$r12
1c004a20:	00150185 	move	$r5,$r12
1c004a24:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004a28:	02b05084 	addi.w	$r4,$r4,-1004(0xc14)
1c004a2c:	57d1b7ff 	bl	-11852(0xfffd1b4) # 1c001be0 <myprintf>
1c004a30:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a34:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a38:	001031ac 	add.w	$r12,$r13,$r12
1c004a3c:	2a00018c 	ld.bu	$r12,$r12,0
1c004a40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004a44:	00150185 	move	$r5,$r12
1c004a48:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004a4c:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c004a50:	57d193ff 	bl	-11888(0xfffd190) # 1c001be0 <myprintf>
1c004a54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a58:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a60:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004a68:	63ffa1ac 	blt	$r13,$r12,-96(0x3ffa0) # 1c004a08 <do_d1+0x98>
1c004a6c:	0015000c 	move	$r12,$r0
1c004a70:	00150184 	move	$r4,$r12
1c004a74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004a78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004a7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004a80:	4c000020 	jirl	$r0,$r1,0

1c004a84 <do_d4>:
do_d4():
1c004a84:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004a88:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004a8c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004a90:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004a94:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004a98:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004a9c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004aa0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004aa4:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004ab4 <do_d4+0x30>
1c004aa8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004aac:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004ab0:	6400198d 	bge	$r12,$r13,24(0x18) # 1c004ac8 <do_d4+0x44>
1c004ab4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004ab8:	02ae6084 	addi.w	$r4,$r4,-1128(0xb98)
1c004abc:	57d127ff 	bl	-11996(0xfffd124) # 1c001be0 <myprintf>
1c004ac0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ac4:	5000cc00 	b	204(0xcc) # 1c004b90 <do_d4+0x10c>
1c004ac8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004acc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004ad0:	2880018c 	ld.w	$r12,$r12,0
1c004ad4:	00150184 	move	$r4,$r12
1c004ad8:	5401e800 	bl	488(0x1e8) # 1c004cc0 <str2num>
1c004adc:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c004ae0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004ae4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004ae8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004af8 <do_d4+0x74>
1c004aec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004af0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004af4:	50002000 	b	32(0x20) # 1c004b14 <do_d4+0x90>
1c004af8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004afc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004b00:	2880018c 	ld.w	$r12,$r12,0
1c004b04:	00150184 	move	$r4,$r12
1c004b08:	5401b800 	bl	440(0x1b8) # 1c004cc0 <str2num>
1c004b0c:	0015008c 	move	$r12,$r4
1c004b10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b18:	50006800 	b	104(0x68) # 1c004b80 <do_d4+0xfc>
1c004b1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b20:	03400d8c 	andi	$r12,$r12,0x3
1c004b24:	44002980 	bnez	$r12,40(0x28) # 1c004b4c <do_d4+0xc8>
1c004b28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b2c:	0040898c 	slli.w	$r12,$r12,0x2
1c004b30:	0015018d 	move	$r13,$r12
1c004b34:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004b38:	001031ac 	add.w	$r12,$r13,$r12
1c004b3c:	00150185 	move	$r5,$r12
1c004b40:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004b44:	02aca084 	addi.w	$r4,$r4,-1240(0xb28)
1c004b48:	57d09bff 	bl	-12136(0xfffd098) # 1c001be0 <myprintf>
1c004b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b50:	0040898c 	slli.w	$r12,$r12,0x2
1c004b54:	0015018d 	move	$r13,$r12
1c004b58:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004b5c:	001031ac 	add.w	$r12,$r13,$r12
1c004b60:	2880018c 	ld.w	$r12,$r12,0
1c004b64:	00150185 	move	$r5,$r12
1c004b68:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004b6c:	02ac3084 	addi.w	$r4,$r4,-1268(0xb0c)
1c004b70:	57d073ff 	bl	-12176(0xfffd070) # 1c001be0 <myprintf>
1c004b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004b88:	63ff95ac 	blt	$r13,$r12,-108(0x3ff94) # 1c004b1c <do_d4+0x98>
1c004b8c:	0015000c 	move	$r12,$r0
1c004b90:	00150184 	move	$r4,$r12
1c004b94:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004b98:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004b9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004ba0:	4c000020 	jirl	$r0,$r1,0

1c004ba4 <do_m1>:
do_m1():
1c004ba4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004ba8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004bac:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004bb0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004bb4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004bb8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004bbc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004bc0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004bc4:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004bdc <do_m1+0x38>
1c004bc8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004bcc:	02aad084 	addi.w	$r4,$r4,-1356(0xab4)
1c004bd0:	57d013ff 	bl	-12272(0xfffd010) # 1c001be0 <myprintf>
1c004bd4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004bd8:	50004800 	b	72(0x48) # 1c004c20 <do_m1+0x7c>
1c004bdc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004be0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004be4:	2880018c 	ld.w	$r12,$r12,0
1c004be8:	00150184 	move	$r4,$r12
1c004bec:	5400d400 	bl	212(0xd4) # 1c004cc0 <str2num>
1c004bf0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004bf4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004bf8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004bfc:	2880018c 	ld.w	$r12,$r12,0
1c004c00:	00150184 	move	$r4,$r12
1c004c04:	5400bc00 	bl	188(0xbc) # 1c004cc0 <str2num>
1c004c08:	0015008c 	move	$r12,$r4
1c004c0c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c004c10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c14:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c004c18:	2900018d 	st.b	$r13,$r12,0
1c004c1c:	0015000c 	move	$r12,$r0
1c004c20:	00150184 	move	$r4,$r12
1c004c24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004c28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004c2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004c30:	4c000020 	jirl	$r0,$r1,0

1c004c34 <do_m4>:
do_m4():
1c004c34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004c38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004c3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004c40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004c44:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004c48:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004c4c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004c50:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004c54:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004c6c <do_m4+0x38>
1c004c58:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004c5c:	02a91084 	addi.w	$r4,$r4,-1468(0xa44)
1c004c60:	57cf83ff 	bl	-12416(0xfffcf80) # 1c001be0 <myprintf>
1c004c64:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004c68:	50004400 	b	68(0x44) # 1c004cac <do_m4+0x78>
1c004c6c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004c70:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004c74:	2880018c 	ld.w	$r12,$r12,0
1c004c78:	00150184 	move	$r4,$r12
1c004c7c:	54004400 	bl	68(0x44) # 1c004cc0 <str2num>
1c004c80:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004c84:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004c88:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004c8c:	2880018c 	ld.w	$r12,$r12,0
1c004c90:	00150184 	move	$r4,$r12
1c004c94:	54002c00 	bl	44(0x2c) # 1c004cc0 <str2num>
1c004c98:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c004c9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ca0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004ca4:	2980018d 	st.w	$r13,$r12,0
1c004ca8:	0015000c 	move	$r12,$r0
1c004cac:	00150184 	move	$r4,$r12
1c004cb0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004cb4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004cb8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004cbc:	4c000020 	jirl	$r0,$r1,0

1c004cc0 <str2num>:
str2num():
1c004cc0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004cc4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004cc8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004ccc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004cd0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004cd4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004cd8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004cdc:	2a00018d 	ld.bu	$r13,$r12,0
1c004ce0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004ce4:	5c0041ac 	bne	$r13,$r12,64(0x40) # 1c004d24 <str2num+0x64>
1c004ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004cec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cf0:	2a00018d 	ld.bu	$r13,$r12,0
1c004cf4:	0281e00c 	addi.w	$r12,$r0,120(0x78)
1c004cf8:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004d10 <str2num+0x50>
1c004cfc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d04:	2a00018d 	ld.bu	$r13,$r12,0
1c004d08:	0281600c 	addi.w	$r12,$r0,88(0x58)
1c004d0c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c004d24 <str2num+0x64>
1c004d10:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004d14:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004d18:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004d1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004d20:	50003400 	b	52(0x34) # 1c004d54 <str2num+0x94>
1c004d24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004d28:	2a00018d 	ld.bu	$r13,$r12,0
1c004d2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c004d30:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c004d48 <str2num+0x88>
1c004d34:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004d38:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004d3c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004d40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004d44:	50016400 	b	356(0x164) # 1c004ea8 <str2num+0x1e8>
1c004d48:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c004d4c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d50:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004d54:	50015400 	b	340(0x154) # 1c004ea8 <str2num+0x1e8>
1c004d58:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004d5c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004d60:	001031ac 	add.w	$r12,$r13,$r12
1c004d64:	2a00018c 	ld.bu	$r12,$r12,0
1c004d68:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c004d6c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004d70:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004d74:	5800ddac 	beq	$r13,$r12,220(0xdc) # 1c004e50 <str2num+0x190>
1c004d78:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004d7c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004d80:	580015ac 	beq	$r13,$r12,20(0x14) # 1c004d94 <str2num+0xd4>
1c004d84:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004d88:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c004d8c:	5800c5ac 	beq	$r13,$r12,196(0xc4) # 1c004e50 <str2num+0x190>
1c004d90:	50010c00 	b	268(0x10c) # 1c004e9c <str2num+0x1dc>
1c004d94:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004d98:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c004d9c:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004dcc <str2num+0x10c>
1c004da0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004da4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c004da8:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004dcc <str2num+0x10c>
1c004dac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004db0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004db4:	001c31ad 	mul.w	$r13,$r13,$r12
1c004db8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004dbc:	001031ac 	add.w	$r12,$r13,$r12
1c004dc0:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c004dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004dc8:	50008400 	b	132(0x84) # 1c004e4c <str2num+0x18c>
1c004dcc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004dd0:	0281800c 	addi.w	$r12,$r0,96(0x60)
1c004dd4:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004e04 <str2num+0x144>
1c004dd8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004ddc:	0281980c 	addi.w	$r12,$r0,102(0x66)
1c004de0:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004e04 <str2num+0x144>
1c004de4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004de8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004dec:	001c31ad 	mul.w	$r13,$r13,$r12
1c004df0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004df4:	001031ac 	add.w	$r12,$r13,$r12
1c004df8:	02bea58c 	addi.w	$r12,$r12,-87(0xfa9)
1c004dfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e00:	50004c00 	b	76(0x4c) # 1c004e4c <str2num+0x18c>
1c004e04:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004e08:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c004e0c:	6c00318d 	bgeu	$r12,$r13,48(0x30) # 1c004e3c <str2num+0x17c>
1c004e10:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004e14:	0281180c 	addi.w	$r12,$r0,70(0x46)
1c004e18:	6800258d 	bltu	$r12,$r13,36(0x24) # 1c004e3c <str2num+0x17c>
1c004e1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004e20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004e24:	001c31ad 	mul.w	$r13,$r13,$r12
1c004e28:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004e2c:	001031ac 	add.w	$r12,$r13,$r12
1c004e30:	02bf258c 	addi.w	$r12,$r12,-55(0xfc9)
1c004e34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e38:	50001400 	b	20(0x14) # 1c004e4c <str2num+0x18c>
1c004e3c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004e40:	02a20084 	addi.w	$r4,$r4,-1920(0x880)
1c004e44:	57cd9fff 	bl	-12900(0xfffcd9c) # 1c001be0 <myprintf>
1c004e48:	50005400 	b	84(0x54) # 1c004e9c <str2num+0x1dc>
1c004e4c:	50005000 	b	80(0x50) # 1c004e9c <str2num+0x1dc>
1c004e50:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004e54:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c004e58:	6c00358d 	bgeu	$r12,$r13,52(0x34) # 1c004e8c <str2num+0x1cc>
1c004e5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004e60:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004e64:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c004e68:	6c0025ac 	bgeu	$r13,$r12,36(0x24) # 1c004e8c <str2num+0x1cc>
1c004e6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004e70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c004e74:	001c31ad 	mul.w	$r13,$r13,$r12
1c004e78:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c004e7c:	001031ac 	add.w	$r12,$r13,$r12
1c004e80:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c004e84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e88:	50001000 	b	16(0x10) # 1c004e98 <str2num+0x1d8>
1c004e8c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004e90:	02a12084 	addi.w	$r4,$r4,-1976(0x848)
1c004e94:	57cd4fff 	bl	-12980(0xfffcd4c) # 1c001be0 <myprintf>
1c004e98:	03400000 	andi	$r0,$r0,0x0
1c004e9c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004ea0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ea4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004ea8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004eac:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004eb0:	001031ac 	add.w	$r12,$r13,$r12
1c004eb4:	2a00018c 	ld.bu	$r12,$r12,0
1c004eb8:	47fea19f 	bnez	$r12,-352(0x7ffea0) # 1c004d58 <str2num+0x98>
1c004ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ec0:	00150184 	move	$r4,$r12
1c004ec4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004ec8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004ecc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004ed0:	4c000020 	jirl	$r0,$r1,0

1c004ed4 <v_play>:
v_play():
1c004ed4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004ed8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004edc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004ee0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004ee4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004ee8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004eec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004ef0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c004ef4:	580019ac 	beq	$r13,$r12,24(0x18) # 1c004f0c <v_play+0x38>
1c004ef8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004efc:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c004f00:	57cce3ff 	bl	-13088(0xfffcce0) # 1c001be0 <myprintf>
1c004f04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f08:	50006400 	b	100(0x64) # 1c004f6c <v_play+0x98>
1c004f0c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004f10:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c004f14:	2880018c 	ld.w	$r12,$r12,0
1c004f18:	00150184 	move	$r4,$r12
1c004f1c:	57fda7ff 	bl	-604(0xffffda4) # 1c004cc0 <str2num>
1c004f20:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004f24:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c004f28:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c004f2c:	2880018c 	ld.w	$r12,$r12,0
1c004f30:	00150184 	move	$r4,$r12
1c004f34:	57fd8fff 	bl	-628(0xffffd8c) # 1c004cc0 <str2num>
1c004f38:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c004f3c:	57f2a3ff 	bl	-3424(0xffff2a0) # 1c0041dc <dma_reset>
1c004f40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f44:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c004f48:	57cc9bff 	bl	-13160(0xfffcc98) # 1c001be0 <myprintf>
1c004f4c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004f50:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c004f54:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c004f58:	57f2e3ff 	bl	-3360(0xffff2e0) # 1c004238 <dma_start>
1c004f5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f60:	029f1084 	addi.w	$r4,$r4,1988(0x7c4)
1c004f64:	57cc7fff 	bl	-13188(0xfffcc7c) # 1c001be0 <myprintf>
1c004f68:	0015000c 	move	$r12,$r0
1c004f6c:	00150184 	move	$r4,$r12
1c004f70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f74:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f7c:	4c000020 	jirl	$r0,$r1,0

1c004f80 <touch_reg_show>:
touch_reg_show():
1c004f80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f88:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f94:	029ea084 	addi.w	$r4,$r4,1960(0x7a8)
1c004f98:	57cc4bff 	bl	-13240(0xfffcc48) # 1c001be0 <myprintf>
1c004f9c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004fa0:	2880018c 	ld.w	$r12,$r12,0
1c004fa4:	00150185 	move	$r5,$r12
1c004fa8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fac:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c004fb0:	57cc33ff 	bl	-13264(0xfffcc30) # 1c001be0 <myprintf>
1c004fb4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004fb8:	0380218c 	ori	$r12,$r12,0x8
1c004fbc:	2880018c 	ld.w	$r12,$r12,0
1c004fc0:	00150185 	move	$r5,$r12
1c004fc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fc8:	029e5084 	addi.w	$r4,$r4,1940(0x794)
1c004fcc:	57cc17ff 	bl	-13292(0xfffcc14) # 1c001be0 <myprintf>
1c004fd0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004fd4:	0380318c 	ori	$r12,$r12,0xc
1c004fd8:	2880018c 	ld.w	$r12,$r12,0
1c004fdc:	00150185 	move	$r5,$r12
1c004fe0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004fe4:	029e3084 	addi.w	$r4,$r4,1932(0x78c)
1c004fe8:	57cbfbff 	bl	-13320(0xfffcbf8) # 1c001be0 <myprintf>
1c004fec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ff0:	029e5084 	addi.w	$r4,$r4,1940(0x794)
1c004ff4:	57cbefff 	bl	-13332(0xfffcbec) # 1c001be0 <myprintf>
1c004ff8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004ffc:	50006000 	b	96(0x60) # 1c00505c <touch_reg_show+0xdc>
1c005000:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005004:	0040898c 	slli.w	$r12,$r12,0x2
1c005008:	0015018d 	move	$r13,$r12
1c00500c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c005010:	0381018c 	ori	$r12,$r12,0x40
1c005014:	001031ac 	add.w	$r12,$r13,$r12
1c005018:	2880018d 	ld.w	$r13,$r12,0
1c00501c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005020:	0040898c 	slli.w	$r12,$r12,0x2
1c005024:	0015018e 	move	$r14,$r12
1c005028:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00502c:	0382018c 	ori	$r12,$r12,0x80
1c005030:	001031cc 	add.w	$r12,$r14,$r12
1c005034:	2880018c 	ld.w	$r12,$r12,0
1c005038:	00150187 	move	$r7,$r12
1c00503c:	001501a6 	move	$r6,$r13
1c005040:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c005044:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005048:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c00504c:	57cb97ff 	bl	-13420(0xfffcb94) # 1c001be0 <myprintf>
1c005050:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005054:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005058:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00505c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005060:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005064:	67ff9d8d 	bge	$r12,$r13,-100(0x3ff9c) # 1c005000 <touch_reg_show+0x80>
1c005068:	0015000c 	move	$r12,$r0
1c00506c:	00150184 	move	$r4,$r12
1c005070:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005074:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005078:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00507c:	4c000020 	jirl	$r0,$r1,0

1c005080 <touch_value_show>:
touch_value_show():
1c005080:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005084:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005088:	29806076 	st.w	$r22,$r3,24(0x18)
1c00508c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005090:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005094:	029ca084 	addi.w	$r4,$r4,1832(0x728)
1c005098:	57cb4bff 	bl	-13496(0xfffcb48) # 1c001be0 <myprintf>
1c00509c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050a0:	029d9084 	addi.w	$r4,$r4,1892(0x764)
1c0050a4:	57cb3fff 	bl	-13508(0xfffcb3c) # 1c001be0 <myprintf>
1c0050a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0050ac:	50003400 	b	52(0x34) # 1c0050e0 <touch_value_show+0x60>
1c0050b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0050b4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0050b8:	00150184 	move	$r4,$r12
1c0050bc:	57ece7ff 	bl	-4892(0xfffece4) # 1c003da0 <TOUCH_GetBaseVal>
1c0050c0:	0015008c 	move	$r12,$r4
1c0050c4:	00150185 	move	$r5,$r12
1c0050c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050cc:	029d0084 	addi.w	$r4,$r4,1856(0x740)
1c0050d0:	57cb13ff 	bl	-13552(0xfffcb10) # 1c001be0 <myprintf>
1c0050d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0050d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0050e0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0050e4:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0050e8:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c0050b0 <touch_value_show+0x30>
1c0050ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0050f0:	029c9084 	addi.w	$r4,$r4,1828(0x724)
1c0050f4:	57caefff 	bl	-13588(0xfffcaec) # 1c001be0 <myprintf>
1c0050f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0050fc:	50003400 	b	52(0x34) # 1c005130 <touch_value_show+0xb0>
1c005100:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005104:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005108:	00150184 	move	$r4,$r12
1c00510c:	57ece3ff 	bl	-4896(0xfffece0) # 1c003dec <TOUCH_GetCountValue>
1c005110:	0015008c 	move	$r12,$r4
1c005114:	00150185 	move	$r5,$r12
1c005118:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00511c:	029bc084 	addi.w	$r4,$r4,1776(0x6f0)
1c005120:	57cac3ff 	bl	-13632(0xfffcac0) # 1c001be0 <myprintf>
1c005124:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005128:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00512c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005130:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005134:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c005138:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c005100 <touch_value_show+0x80>
1c00513c:	0015000c 	move	$r12,$r0
1c005140:	00150184 	move	$r4,$r12
1c005144:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005148:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00514c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005150:	4c000020 	jirl	$r0,$r1,0

1c005154 <touch_test>:
touch_test():
1c005154:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005158:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00515c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005160:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005164:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005168:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00516c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005170:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005174:	2880018c 	ld.w	$r12,$r12,0
1c005178:	00150185 	move	$r5,$r12
1c00517c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005180:	029a7084 	addi.w	$r4,$r4,1692(0x69c)
1c005184:	57d66fff 	bl	-10644(0xfffd66c) # 1c0027f0 <strcmp>
1c005188:	0015008c 	move	$r12,$r4
1c00518c:	44005d80 	bnez	$r12,92(0x5c) # 1c0051e8 <touch_test+0x94>
1c005190:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005194:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005198:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0051b0 <touch_test+0x5c>
1c00519c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0051a0:	029a1084 	addi.w	$r4,$r4,1668(0x684)
1c0051a4:	57ca3fff 	bl	-13764(0xfffca3c) # 1c001be0 <myprintf>
1c0051a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0051ac:	50024800 	b	584(0x248) # 1c0053f4 <touch_test+0x2a0>
1c0051b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0051b4:	029a2084 	addi.w	$r4,$r4,1672(0x688)
1c0051b8:	57ca2bff 	bl	-13784(0xfffca28) # 1c001be0 <myprintf>
1c0051bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0051c0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0051c4:	2880018c 	ld.w	$r12,$r12,0
1c0051c8:	00150184 	move	$r4,$r12
1c0051cc:	57faf7ff 	bl	-1292(0xffffaf4) # 1c004cc0 <str2num>
1c0051d0:	0015008c 	move	$r12,$r4
1c0051d4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0051d8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0051dc:	00150184 	move	$r4,$r12
1c0051e0:	57ee17ff 	bl	-4588(0xfffee14) # 1c003ff4 <TOUCH_Init>
1c0051e4:	50020c00 	b	524(0x20c) # 1c0053f0 <touch_test+0x29c>
1c0051e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0051ec:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0051f0:	2880018c 	ld.w	$r12,$r12,0
1c0051f4:	00150185 	move	$r5,$r12
1c0051f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0051fc:	02994084 	addi.w	$r4,$r4,1616(0x650)
1c005200:	57d5f3ff 	bl	-10768(0xfffd5f0) # 1c0027f0 <strcmp>
1c005204:	0015008c 	move	$r12,$r4
1c005208:	0240058c 	sltui	$r12,$r12,1(0x1)
1c00520c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005210:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005214:	03c0098c 	xori	$r12,$r12,0x2
1c005218:	0240058c 	sltui	$r12,$r12,1(0x1)
1c00521c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005220:	0014b1ac 	and	$r12,$r13,$r12
1c005224:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005228:	40001d80 	beqz	$r12,28(0x1c) # 1c005244 <touch_test+0xf0>
1c00522c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005230:	02989084 	addi.w	$r4,$r4,1572(0x624)
1c005234:	57c9afff 	bl	-13908(0xfffc9ac) # 1c001be0 <myprintf>
1c005238:	57ec33ff 	bl	-5072(0xfffec30) # 1c003e68 <TOUCH_EnableSingleScan>
1c00523c:	57eeb7ff 	bl	-4428(0xfffeeb4) # 1c0040f0 <Printf_CountVal>
1c005240:	5001b000 	b	432(0x1b0) # 1c0053f0 <touch_test+0x29c>
1c005244:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005248:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00524c:	2880018c 	ld.w	$r12,$r12,0
1c005250:	00150185 	move	$r5,$r12
1c005254:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005258:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c00525c:	57d597ff 	bl	-10860(0xfffd594) # 1c0027f0 <strcmp>
1c005260:	0015008c 	move	$r12,$r4
1c005264:	4400c580 	bnez	$r12,196(0xc4) # 1c005328 <touch_test+0x1d4>
1c005268:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00526c:	02980084 	addi.w	$r4,$r4,1536(0x600)
1c005270:	57c973ff 	bl	-13968(0xfffc970) # 1c001be0 <myprintf>
1c005274:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005278:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00527c:	2880018c 	ld.w	$r12,$r12,0
1c005280:	00150184 	move	$r4,$r12
1c005284:	57fa3fff 	bl	-1476(0xffffa3c) # 1c004cc0 <str2num>
1c005288:	0015008c 	move	$r12,$r4
1c00528c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c005290:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005294:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005298:	5c003dac 	bne	$r13,$r12,60(0x3c) # 1c0052d4 <touch_test+0x180>
1c00529c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052a0:	50002400 	b	36(0x24) # 1c0052c4 <touch_test+0x170>
1c0052a4:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c0052a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052ac:	001501a5 	move	$r5,$r13
1c0052b0:	00150184 	move	$r4,$r12
1c0052b4:	57ebe7ff 	bl	-5148(0xfffebe4) # 1c003e98 <TOUCH_SetDownTh>
1c0052b8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0052c0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0052c8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0052cc:	6fffd98d 	bgeu	$r12,$r13,-40(0x3ffd8) # 1c0052a4 <touch_test+0x150>
1c0052d0:	50012000 	b	288(0x120) # 1c0053f0 <touch_test+0x29c>
1c0052d4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0052d8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0052dc:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c005314 <touch_test+0x1c0>
1c0052e0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0052e4:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0052e8:	2880018c 	ld.w	$r12,$r12,0
1c0052ec:	00150184 	move	$r4,$r12
1c0052f0:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c004cc0 <str2num>
1c0052f4:	0015008c 	move	$r12,$r4
1c0052f8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052fc:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c005300:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005304:	001501a5 	move	$r5,$r13
1c005308:	00150184 	move	$r4,$r12
1c00530c:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c003e98 <TOUCH_SetDownTh>
1c005310:	5000e000 	b	224(0xe0) # 1c0053f0 <touch_test+0x29c>
1c005314:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005318:	02959084 	addi.w	$r4,$r4,1380(0x564)
1c00531c:	57c8c7ff 	bl	-14140(0xfffc8c4) # 1c001be0 <myprintf>
1c005320:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005324:	5000d000 	b	208(0xd0) # 1c0053f4 <touch_test+0x2a0>
1c005328:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00532c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005330:	2880018c 	ld.w	$r12,$r12,0
1c005334:	00150185 	move	$r5,$r12
1c005338:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00533c:	02959084 	addi.w	$r4,$r4,1380(0x564)
1c005340:	57d4b3ff 	bl	-11088(0xfffd4b0) # 1c0027f0 <strcmp>
1c005344:	0015008c 	move	$r12,$r4
1c005348:	0240058c 	sltui	$r12,$r12,1(0x1)
1c00534c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005350:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005354:	03c0098c 	xori	$r12,$r12,0x2
1c005358:	0240058c 	sltui	$r12,$r12,1(0x1)
1c00535c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005360:	0014b1ac 	and	$r12,$r13,$r12
1c005364:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005368:	40001980 	beqz	$r12,24(0x18) # 1c005380 <touch_test+0x22c>
1c00536c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005370:	0294e084 	addi.w	$r4,$r4,1336(0x538)
1c005374:	57c86fff 	bl	-14228(0xfffc86c) # 1c001be0 <myprintf>
1c005378:	57eac3ff 	bl	-5440(0xfffeac0) # 1c003e38 <TOUCH_EnablePollScan>
1c00537c:	50007400 	b	116(0x74) # 1c0053f0 <touch_test+0x29c>
1c005380:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005384:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005388:	2880018c 	ld.w	$r12,$r12,0
1c00538c:	00150185 	move	$r5,$r12
1c005390:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005394:	02949084 	addi.w	$r4,$r4,1316(0x524)
1c005398:	57d45bff 	bl	-11176(0xfffd458) # 1c0027f0 <strcmp>
1c00539c:	0015008c 	move	$r12,$r4
1c0053a0:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0053a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0053a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0053ac:	03c0098c 	xori	$r12,$r12,0x2
1c0053b0:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0053b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0053b8:	0014b1ac 	and	$r12,$r13,$r12
1c0053bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0053c0:	40001180 	beqz	$r12,16(0x10) # 1c0053d0 <touch_test+0x27c>
1c0053c4:	57fbbfff 	bl	-1092(0xffffbbc) # 1c004f80 <touch_reg_show>
1c0053c8:	57fcbbff 	bl	-840(0xffffcb8) # 1c005080 <touch_value_show>
1c0053cc:	50002400 	b	36(0x24) # 1c0053f0 <touch_test+0x29c>
1c0053d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0053d4:	0293b084 	addi.w	$r4,$r4,1260(0x4ec)
1c0053d8:	57c80bff 	bl	-14328(0xfffc808) # 1c001be0 <myprintf>
1c0053dc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0053e0:	0293c084 	addi.w	$r4,$r4,1264(0x4f0)
1c0053e4:	57c7ffff 	bl	-14340(0xfffc7fc) # 1c001be0 <myprintf>
1c0053e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0053ec:	50000800 	b	8(0x8) # 1c0053f4 <touch_test+0x2a0>
1c0053f0:	0015000c 	move	$r12,$r0
1c0053f4:	00150184 	move	$r4,$r12
1c0053f8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0053fc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005400:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005404:	4c000020 	jirl	$r0,$r1,0

1c005408 <hpet>:
hpet():
1c005408:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c00540c:	29813061 	st.w	$r1,$r3,76(0x4c)
1c005410:	29812076 	st.w	$r22,$r3,72(0x48)
1c005414:	02814076 	addi.w	$r22,$r3,80(0x50)
1c005418:	29bef2c4 	st.w	$r4,$r22,-68(0xfbc)
1c00541c:	29bee2c5 	st.w	$r5,$r22,-72(0xfb8)
1c005420:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005424:	0294e084 	addi.w	$r4,$r4,1336(0x538)
1c005428:	57c7bbff 	bl	-14408(0xfffc7b8) # 1c001be0 <myprintf>
1c00542c:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005430:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005434:	6000298d 	blt	$r12,$r13,40(0x28) # 1c00545c <hpet+0x54>
1c005438:	00150004 	move	$r4,$r0
1c00543c:	57e593ff 	bl	-6768(0xfffe590) # 1c0039cc <TIM_Cmd>
1c005440:	00150004 	move	$r4,$r0
1c005444:	57e5dfff 	bl	-6692(0xfffe5dc) # 1c003a20 <TIM_ITConfig>
1c005448:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00544c:	0294b084 	addi.w	$r4,$r4,1324(0x52c)
1c005450:	57c793ff 	bl	-14448(0xfffc790) # 1c001be0 <myprintf>
1c005454:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005458:	50009c00 	b	156(0x9c) # 1c0054f4 <hpet+0xec>
1c00545c:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005460:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005464:	2880018c 	ld.w	$r12,$r12,0
1c005468:	00150184 	move	$r4,$r12
1c00546c:	57f857ff 	bl	-1964(0xffff854) # 1c004cc0 <str2num>
1c005470:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005474:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005478:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00547c:	2880018c 	ld.w	$r12,$r12,0
1c005480:	00150184 	move	$r4,$r12
1c005484:	57f83fff 	bl	-1988(0xffff83c) # 1c004cc0 <str2num>
1c005488:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c00548c:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005490:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c005494:	2880018c 	ld.w	$r12,$r12,0
1c005498:	00150184 	move	$r4,$r12
1c00549c:	57f827ff 	bl	-2012(0xffff824) # 1c004cc0 <str2num>
1c0054a0:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0054a4:	02bf22cc 	addi.w	$r12,$r22,-56(0xfc8)
1c0054a8:	00150184 	move	$r4,$r12
1c0054ac:	57e4a7ff 	bl	-7004(0xfffe4a4) # 1c003950 <TIM_StructInit>
1c0054b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054b4:	0040898c 	slli.w	$r12,$r12,0x2
1c0054b8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0054bc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0054c0:	1400002c 	lu12i.w	$r12,1(0x1)
1c0054c4:	03bcfd8c 	ori	$r12,$r12,0xf3f
1c0054c8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0054cc:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c0054d0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0054d4:	1400f42c 	lu12i.w	$r12,1953(0x7a1)
1c0054d8:	0388018c 	ori	$r12,$r12,0x200
1c0054dc:	001c31ac 	mul.w	$r12,$r13,$r12
1c0054e0:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c0054e4:	02bf22cc 	addi.w	$r12,$r22,-56(0xfc8)
1c0054e8:	00150184 	move	$r4,$r12
1c0054ec:	57e38fff 	bl	-7284(0xfffe38c) # 1c003878 <TIM_Init>
1c0054f0:	0015000c 	move	$r12,$r0
1c0054f4:	00150184 	move	$r4,$r12
1c0054f8:	28813061 	ld.w	$r1,$r3,76(0x4c)
1c0054fc:	28812076 	ld.w	$r22,$r3,72(0x48)
1c005500:	02814063 	addi.w	$r3,$r3,80(0x50)
1c005504:	4c000020 	jirl	$r0,$r1,0

1c005508 <latimer>:
latimer():
1c005508:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00550c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005510:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005514:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005518:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00551c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005520:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005524:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005528:	0291f084 	addi.w	$r4,$r4,1148(0x47c)
1c00552c:	57c6b7ff 	bl	-14668(0xfffc6b4) # 1c001be0 <myprintf>
1c005530:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005534:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005538:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c005554 <latimer+0x4c>
1c00553c:	57be3bff 	bl	-16840(0xfffbe38) # 1c001374 <Set_Timer_stop>
1c005540:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005544:	02920084 	addi.w	$r4,$r4,1152(0x480)
1c005548:	57c69bff 	bl	-14696(0xfffc698) # 1c001be0 <myprintf>
1c00554c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005550:	50003800 	b	56(0x38) # 1c005588 <latimer+0x80>
1c005554:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005558:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00555c:	2880018c 	ld.w	$r12,$r12,0
1c005560:	00150184 	move	$r4,$r12
1c005564:	57f75fff 	bl	-2212(0xffff75c) # 1c004cc0 <str2num>
1c005568:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00556c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005570:	1401458c 	lu12i.w	$r12,2604(0xa2c)
1c005574:	038fe18c 	ori	$r12,$r12,0x3f8
1c005578:	001c31ac 	mul.w	$r12,$r13,$r12
1c00557c:	00150184 	move	$r4,$r12
1c005580:	57be3bff 	bl	-16840(0xfffbe38) # 1c0013b8 <Set_Timer_Init>
1c005584:	0015000c 	move	$r12,$r0
1c005588:	00150184 	move	$r4,$r12
1c00558c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005590:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005594:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005598:	4c000020 	jirl	$r0,$r1,0

1c00559c <delay>:
delay():
1c00559c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055a0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055a4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055a8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055ac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0055b0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0055b4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0055b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0055bc:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0055d4 <delay+0x38>
1c0055c0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0055c4:	02906084 	addi.w	$r4,$r4,1048(0x418)
1c0055c8:	57c61bff 	bl	-14824(0xfffc618) # 1c001be0 <myprintf>
1c0055cc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0055d0:	5000bc00 	b	188(0xbc) # 1c00568c <delay+0xf0>
1c0055d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0055d8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0055dc:	2880018c 	ld.w	$r12,$r12,0
1c0055e0:	00150184 	move	$r4,$r12
1c0055e4:	57f6dfff 	bl	-2340(0xffff6dc) # 1c004cc0 <str2num>
1c0055e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0055ec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0055f0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0055f4:	2880018c 	ld.w	$r12,$r12,0
1c0055f8:	00150184 	move	$r4,$r12
1c0055fc:	57f6c7ff 	bl	-2364(0xffff6c4) # 1c004cc0 <str2num>
1c005600:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c005604:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005608:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00560c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00562c <delay+0x90>
1c005610:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c005614:	57c30fff 	bl	-15604(0xfffc30c) # 1c001920 <delay_us>
1c005618:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c00561c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005620:	028fa084 	addi.w	$r4,$r4,1000(0x3e8)
1c005624:	57c5bfff 	bl	-14916(0xfffc5bc) # 1c001be0 <myprintf>
1c005628:	50006000 	b	96(0x60) # 1c005688 <delay+0xec>
1c00562c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005630:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005634:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005654 <delay+0xb8>
1c005638:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c00563c:	57c31fff 	bl	-15588(0xfffc31c) # 1c001958 <delay_ms>
1c005640:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c005644:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005648:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c00564c:	57c597ff 	bl	-14956(0xfffc594) # 1c001be0 <myprintf>
1c005650:	50003800 	b	56(0x38) # 1c005688 <delay+0xec>
1c005654:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005658:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00565c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00567c <delay+0xe0>
1c005660:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c005664:	57c337ff 	bl	-15564(0xfffc334) # 1c001998 <delay_s>
1c005668:	28bfa2c5 	ld.w	$r5,$r22,-24(0xfe8)
1c00566c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005670:	028ea084 	addi.w	$r4,$r4,936(0x3a8)
1c005674:	57c56fff 	bl	-14996(0xfffc56c) # 1c001be0 <myprintf>
1c005678:	50001000 	b	16(0x10) # 1c005688 <delay+0xec>
1c00567c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005680:	028d7084 	addi.w	$r4,$r4,860(0x35c)
1c005684:	57c55fff 	bl	-15012(0xfffc55c) # 1c001be0 <myprintf>
1c005688:	0015000c 	move	$r12,$r0
1c00568c:	00150184 	move	$r4,$r12
1c005690:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005694:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005698:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00569c:	4c000020 	jirl	$r0,$r1,0

1c0056a0 <wakeup>:
wakeup():
1c0056a0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0056a4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0056a8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0056ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0056b0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0056b4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0056b8:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c0056bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0056c0:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c0056c4:	57c51fff 	bl	-15076(0xfffc51c) # 1c001be0 <myprintf>
1c0056c8:	57bc67ff 	bl	-17308(0xfffbc64) # 1c00132c <DisableInt>
1c0056cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0056d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056d4:	6000218d 	blt	$r12,$r13,32(0x20) # 1c0056f4 <wakeup+0x54>
1c0056d8:	00150004 	move	$r4,$r0
1c0056dc:	57bd0fff 	bl	-17140(0xfffbd0c) # 1c0013e8 <Wake_Set>
1c0056e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0056e4:	028d8084 	addi.w	$r4,$r4,864(0x360)
1c0056e8:	57c4fbff 	bl	-15112(0xfffc4f8) # 1c001be0 <myprintf>
1c0056ec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0056f0:	50002c00 	b	44(0x2c) # 1c00571c <wakeup+0x7c>
1c0056f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0056f8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0056fc:	2880018c 	ld.w	$r12,$r12,0
1c005700:	00150184 	move	$r4,$r12
1c005704:	57f5bfff 	bl	-2628(0xffff5bc) # 1c004cc0 <str2num>
1c005708:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00570c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005710:	57bcdbff 	bl	-17192(0xfffbcd8) # 1c0013e8 <Wake_Set>
1c005714:	57bad3ff 	bl	-17712(0xfffbad0) # 1c0011e4 <cpu_sleep>
1c005718:	0015000c 	move	$r12,$r0
1c00571c:	00150184 	move	$r4,$r12
1c005720:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005724:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005728:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00572c:	4c000020 	jirl	$r0,$r1,0

1c005730 <a_to_n>:
a_to_n():
1c005730:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005734:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005738:	29806076 	st.w	$r22,$r3,24(0x18)
1c00573c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005740:	0015008c 	move	$r12,$r4
1c005744:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005748:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00574c:	0280bc0c 	addi.w	$r12,$r0,47(0x2f)
1c005750:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c005760 <a_to_n+0x30>
1c005754:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005758:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00575c:	6c00198d 	bgeu	$r12,$r13,24(0x18) # 1c005774 <a_to_n+0x44>
1c005760:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005764:	028be084 	addi.w	$r4,$r4,760(0x2f8)
1c005768:	57c47bff 	bl	-15240(0xfffc478) # 1c001be0 <myprintf>
1c00576c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c005770:	50000c00 	b	12(0xc) # 1c00577c <a_to_n+0x4c>
1c005774:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005778:	03403d8c 	andi	$r12,$r12,0xf
1c00577c:	00150184 	move	$r4,$r12
1c005780:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005784:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005788:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00578c:	4c000020 	jirl	$r0,$r1,0

1c005790 <date>:
date():
1c005790:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c005794:	2982b061 	st.w	$r1,$r3,172(0xac)
1c005798:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c00579c:	29829077 	st.w	$r23,$r3,164(0xa4)
1c0057a0:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0057a4:	29bd72c4 	st.w	$r4,$r22,-164(0xf5c)
1c0057a8:	29bd62c5 	st.w	$r5,$r22,-168(0xf58)
1c0057ac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0057b0:	028b2084 	addi.w	$r4,$r4,712(0x2c8)
1c0057b4:	57c42fff 	bl	-15316(0xfffc42c) # 1c001be0 <myprintf>
1c0057b8:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c0057bc:	028fe18c 	addi.w	$r12,$r12,1016(0x3f8)
1c0057c0:	2880018f 	ld.w	$r15,$r12,0
1c0057c4:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c0057c8:	2880218d 	ld.w	$r13,$r12,8(0x8)
1c0057cc:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0057d0:	29bde2cf 	st.w	$r15,$r22,-136(0xf78)
1c0057d4:	29bdf2ce 	st.w	$r14,$r22,-132(0xf7c)
1c0057d8:	29be02cd 	st.w	$r13,$r22,-128(0xf80)
1c0057dc:	29be12cc 	st.w	$r12,$r22,-124(0xf84)
1c0057e0:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c0057e4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0057e8:	2880018c 	ld.w	$r12,$r12,0
1c0057ec:	28bde2cd 	ld.w	$r13,$r22,-136(0xf78)
1c0057f0:	001501a5 	move	$r5,$r13
1c0057f4:	00150184 	move	$r4,$r12
1c0057f8:	57cffbff 	bl	-12296(0xfffcff8) # 1c0027f0 <strcmp>
1c0057fc:	0015008c 	move	$r12,$r4
1c005800:	44003d80 	bnez	$r12,60(0x3c) # 1c00583c <date+0xac>
1c005804:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005808:	0289d084 	addi.w	$r4,$r4,628(0x274)
1c00580c:	57c3d7ff 	bl	-15404(0xfffc3d4) # 1c001be0 <myprintf>
1c005810:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005814:	028a1084 	addi.w	$r4,$r4,644(0x284)
1c005818:	57c3cbff 	bl	-15416(0xfffc3c8) # 1c001be0 <myprintf>
1c00581c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005820:	028a9084 	addi.w	$r4,$r4,676(0x2a4)
1c005824:	57c3bfff 	bl	-15428(0xfffc3bc) # 1c001be0 <myprintf>
1c005828:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00582c:	028b0084 	addi.w	$r4,$r4,704(0x2c0)
1c005830:	57c3b3ff 	bl	-15440(0xfffc3b0) # 1c001be0 <myprintf>
1c005834:	0015000c 	move	$r12,$r0
1c005838:	50066000 	b	1632(0x660) # 1c005e98 <date+0x708>
1c00583c:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005840:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005844:	2880018c 	ld.w	$r12,$r12,0
1c005848:	28bdf2cd 	ld.w	$r13,$r22,-132(0xf7c)
1c00584c:	001501a5 	move	$r5,$r13
1c005850:	00150184 	move	$r4,$r12
1c005854:	57cf9fff 	bl	-12388(0xfffcf9c) # 1c0027f0 <strcmp>
1c005858:	0015008c 	move	$r12,$r4
1c00585c:	4402a180 	bnez	$r12,672(0x2a0) # 1c005afc <date+0x36c>
1c005860:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c005864:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005868:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005880 <date+0xf0>
1c00586c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005870:	028ae084 	addi.w	$r4,$r4,696(0x2b8)
1c005874:	57c36fff 	bl	-15508(0xfffc36c) # 1c001be0 <myprintf>
1c005878:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00587c:	50061c00 	b	1564(0x61c) # 1c005e98 <date+0x708>
1c005880:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005884:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005888:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00588c:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005890:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005894:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005898:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00589c:	2a00018c 	ld.bu	$r12,$r12,0
1c0058a0:	00150184 	move	$r4,$r12
1c0058a4:	57fe8fff 	bl	-372(0xffffe8c) # 1c005730 <a_to_n>
1c0058a8:	0015008d 	move	$r13,$r4
1c0058ac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0058b0:	001c31b7 	mul.w	$r23,$r13,$r12
1c0058b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0058c0:	00150184 	move	$r4,$r12
1c0058c4:	57fe6fff 	bl	-404(0xffffe6c) # 1c005730 <a_to_n>
1c0058c8:	0015008c 	move	$r12,$r4
1c0058cc:	001032ec 	add.w	$r12,$r23,$r12
1c0058d0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0058d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058d8:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0058dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0058e0:	00150184 	move	$r4,$r12
1c0058e4:	57fe4fff 	bl	-436(0xffffe4c) # 1c005730 <a_to_n>
1c0058e8:	0015008d 	move	$r13,$r4
1c0058ec:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0058f0:	001c31b7 	mul.w	$r23,$r13,$r12
1c0058f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058f8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0058fc:	2a00018c 	ld.bu	$r12,$r12,0
1c005900:	00150184 	move	$r4,$r12
1c005904:	57fe2fff 	bl	-468(0xffffe2c) # 1c005730 <a_to_n>
1c005908:	0015008c 	move	$r12,$r4
1c00590c:	001032ec 	add.w	$r12,$r23,$r12
1c005910:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c005914:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005918:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c00591c:	2a00018c 	ld.bu	$r12,$r12,0
1c005920:	00150184 	move	$r4,$r12
1c005924:	57fe0fff 	bl	-500(0xffffe0c) # 1c005730 <a_to_n>
1c005928:	0015008d 	move	$r13,$r4
1c00592c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005930:	001c31b7 	mul.w	$r23,$r13,$r12
1c005934:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005938:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c00593c:	2a00018c 	ld.bu	$r12,$r12,0
1c005940:	00150184 	move	$r4,$r12
1c005944:	57fdefff 	bl	-532(0xffffdec) # 1c005730 <a_to_n>
1c005948:	0015008c 	move	$r12,$r4
1c00594c:	001032ec 	add.w	$r12,$r23,$r12
1c005950:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c005954:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005958:	2a00018c 	ld.bu	$r12,$r12,0
1c00595c:	00150184 	move	$r4,$r12
1c005960:	57fdd3ff 	bl	-560(0xffffdd0) # 1c005730 <a_to_n>
1c005964:	0015008d 	move	$r13,$r4
1c005968:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00596c:	001c31b7 	mul.w	$r23,$r13,$r12
1c005970:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005974:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005978:	2a00018c 	ld.bu	$r12,$r12,0
1c00597c:	00150184 	move	$r4,$r12
1c005980:	57fdb3ff 	bl	-592(0xffffdb0) # 1c005730 <a_to_n>
1c005984:	0015008c 	move	$r12,$r4
1c005988:	001032ec 	add.w	$r12,$r23,$r12
1c00598c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c005990:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005994:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005998:	2a00018c 	ld.bu	$r12,$r12,0
1c00599c:	00150184 	move	$r4,$r12
1c0059a0:	57fd93ff 	bl	-624(0xffffd90) # 1c005730 <a_to_n>
1c0059a4:	0015008d 	move	$r13,$r4
1c0059a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0059ac:	001c31b7 	mul.w	$r23,$r13,$r12
1c0059b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0059b4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0059b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059bc:	00150184 	move	$r4,$r12
1c0059c0:	57fd73ff 	bl	-656(0xffffd70) # 1c005730 <a_to_n>
1c0059c4:	0015008c 	move	$r12,$r4
1c0059c8:	001032ec 	add.w	$r12,$r23,$r12
1c0059cc:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0059d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0059d4:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c0059d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059dc:	00150184 	move	$r4,$r12
1c0059e0:	57fd53ff 	bl	-688(0xffffd50) # 1c005730 <a_to_n>
1c0059e4:	0015008d 	move	$r13,$r4
1c0059e8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0059ec:	001c31b7 	mul.w	$r23,$r13,$r12
1c0059f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0059f4:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c0059f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059fc:	00150184 	move	$r4,$r12
1c005a00:	57fd33ff 	bl	-720(0xffffd30) # 1c005730 <a_to_n>
1c005a04:	0015008c 	move	$r12,$r4
1c005a08:	001032ec 	add.w	$r12,$r23,$r12
1c005a0c:	29bf42cc 	st.w	$r12,$r22,-48(0xfd0)
1c005a10:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c005a14:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005a18:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c005a74 <date+0x2e4>
1c005a1c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005a20:	40005580 	beqz	$r12,84(0x54) # 1c005a74 <date+0x2e4>
1c005a24:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005a28:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005a2c:	6800498d 	bltu	$r12,$r13,72(0x48) # 1c005a74 <date+0x2e4>
1c005a30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005a34:	40004180 	beqz	$r12,64(0x40) # 1c005a74 <date+0x2e4>
1c005a38:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c005a3c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005a40:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005a50 <date+0x2c0>
1c005a44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005a48:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005a4c:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c005a74 <date+0x2e4>
1c005a50:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005a54:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c005a58:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c005a74 <date+0x2e4>
1c005a5c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c005a60:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005a64:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c005a74 <date+0x2e4>
1c005a68:	28bf42cd 	ld.w	$r13,$r22,-48(0xfd0)
1c005a6c:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005a70:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005a7c <date+0x2ec>
1c005a74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a78:	50000800 	b	8(0x8) # 1c005a80 <date+0x2f0>
1c005a7c:	0015000c 	move	$r12,$r0
1c005a80:	29bf32cc 	st.w	$r12,$r22,-52(0xfcc)
1c005a84:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c005a88:	40001980 	beqz	$r12,24(0x18) # 1c005aa0 <date+0x310>
1c005a8c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005a90:	0282b084 	addi.w	$r4,$r4,172(0xac)
1c005a94:	57c14fff 	bl	-16052(0xfffc14c) # 1c001be0 <myprintf>
1c005a98:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005a9c:	5003fc00 	b	1020(0x3fc) # 1c005e98 <date+0x708>
1c005aa0:	28bf42cc 	ld.w	$r12,$r22,-48(0xfd0)
1c005aa4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005aa8:	293dc2cc 	st.b	$r12,$r22,-144(0xf70)
1c005aac:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005ab0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ab4:	293dc6cc 	st.b	$r12,$r22,-143(0xf71)
1c005ab8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005abc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ac0:	293dcacc 	st.b	$r12,$r22,-142(0xf72)
1c005ac4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ac8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005acc:	293dcecc 	st.b	$r12,$r22,-141(0xf73)
1c005ad0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005ad4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ad8:	293dd2cc 	st.b	$r12,$r22,-140(0xf74)
1c005adc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005ae0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005ae4:	293dd6cc 	st.b	$r12,$r22,-139(0xf75)
1c005ae8:	02bdc2cc 	addi.w	$r12,$r22,-144(0xf70)
1c005aec:	00150185 	move	$r5,$r12
1c005af0:	00150004 	move	$r4,$r0
1c005af4:	57c6ebff 	bl	-14616(0xfffc6e8) # 1c0021dc <RtcUpdateData>
1c005af8:	5003a000 	b	928(0x3a0) # 1c005e98 <date+0x708>
1c005afc:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005b00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005b04:	2880018c 	ld.w	$r12,$r12,0
1c005b08:	28be02cd 	ld.w	$r13,$r22,-128(0xf80)
1c005b0c:	001501a5 	move	$r5,$r13
1c005b10:	00150184 	move	$r4,$r12
1c005b14:	57ccdfff 	bl	-13092(0xfffccdc) # 1c0027f0 <strcmp>
1c005b18:	0015008c 	move	$r12,$r4
1c005b1c:	44024980 	bnez	$r12,584(0x248) # 1c005d64 <date+0x5d4>
1c005b20:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c005b24:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005b28:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005b40 <date+0x3b0>
1c005b2c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005b30:	02bfe084 	addi.w	$r4,$r4,-8(0xff8)
1c005b34:	57c0afff 	bl	-16212(0xfffc0ac) # 1c001be0 <myprintf>
1c005b38:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b3c:	50035c00 	b	860(0x35c) # 1c005e98 <date+0x708>
1c005b40:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005b44:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c005b48:	29bf22cc 	st.w	$r12,$r22,-56(0xfc8)
1c005b4c:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005b50:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005b54:	29bf12cc 	st.w	$r12,$r22,-60(0xfc4)
1c005b58:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005b5c:	2a00018c 	ld.bu	$r12,$r12,0
1c005b60:	00150184 	move	$r4,$r12
1c005b64:	57fbcfff 	bl	-1076(0xffffbcc) # 1c005730 <a_to_n>
1c005b68:	0015008d 	move	$r13,$r4
1c005b6c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005b70:	001c31b7 	mul.w	$r23,$r13,$r12
1c005b74:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005b78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b7c:	2a00018c 	ld.bu	$r12,$r12,0
1c005b80:	00150184 	move	$r4,$r12
1c005b84:	57fbafff 	bl	-1108(0xffffbac) # 1c005730 <a_to_n>
1c005b88:	0015008c 	move	$r12,$r4
1c005b8c:	001032ec 	add.w	$r12,$r23,$r12
1c005b90:	29bf02cc 	st.w	$r12,$r22,-64(0xfc0)
1c005b94:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005b98:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005b9c:	2a00018c 	ld.bu	$r12,$r12,0
1c005ba0:	00150184 	move	$r4,$r12
1c005ba4:	57fb8fff 	bl	-1140(0xffffb8c) # 1c005730 <a_to_n>
1c005ba8:	0015008d 	move	$r13,$r4
1c005bac:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005bb0:	001c31b7 	mul.w	$r23,$r13,$r12
1c005bb4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c005bb8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005bbc:	2a00018c 	ld.bu	$r12,$r12,0
1c005bc0:	00150184 	move	$r4,$r12
1c005bc4:	57fb6fff 	bl	-1172(0xffffb6c) # 1c005730 <a_to_n>
1c005bc8:	0015008c 	move	$r12,$r4
1c005bcc:	001032ec 	add.w	$r12,$r23,$r12
1c005bd0:	29bef2cc 	st.w	$r12,$r22,-68(0xfbc)
1c005bd4:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005bd8:	2a00018c 	ld.bu	$r12,$r12,0
1c005bdc:	00150184 	move	$r4,$r12
1c005be0:	57fb53ff 	bl	-1200(0xffffb50) # 1c005730 <a_to_n>
1c005be4:	0015008d 	move	$r13,$r4
1c005be8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005bec:	001c31b7 	mul.w	$r23,$r13,$r12
1c005bf0:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005bf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bf8:	2a00018c 	ld.bu	$r12,$r12,0
1c005bfc:	00150184 	move	$r4,$r12
1c005c00:	57fb33ff 	bl	-1232(0xffffb30) # 1c005730 <a_to_n>
1c005c04:	0015008c 	move	$r12,$r4
1c005c08:	001032ec 	add.w	$r12,$r23,$r12
1c005c0c:	29bee2cc 	st.w	$r12,$r22,-72(0xfb8)
1c005c10:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005c14:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c005c18:	2a00018c 	ld.bu	$r12,$r12,0
1c005c1c:	00150184 	move	$r4,$r12
1c005c20:	57fb13ff 	bl	-1264(0xffffb10) # 1c005730 <a_to_n>
1c005c24:	0015008d 	move	$r13,$r4
1c005c28:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005c2c:	001c31b7 	mul.w	$r23,$r13,$r12
1c005c30:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005c34:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005c38:	2a00018c 	ld.bu	$r12,$r12,0
1c005c3c:	00150184 	move	$r4,$r12
1c005c40:	57faf3ff 	bl	-1296(0xffffaf0) # 1c005730 <a_to_n>
1c005c44:	0015008c 	move	$r12,$r4
1c005c48:	001032ec 	add.w	$r12,$r23,$r12
1c005c4c:	29bed2cc 	st.w	$r12,$r22,-76(0xfb4)
1c005c50:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005c54:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005c58:	2a00018c 	ld.bu	$r12,$r12,0
1c005c5c:	00150184 	move	$r4,$r12
1c005c60:	57fad3ff 	bl	-1328(0xffffad0) # 1c005730 <a_to_n>
1c005c64:	0015008d 	move	$r13,$r4
1c005c68:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005c6c:	001c31b7 	mul.w	$r23,$r13,$r12
1c005c70:	28bf12cc 	ld.w	$r12,$r22,-60(0xfc4)
1c005c74:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005c78:	2a00018c 	ld.bu	$r12,$r12,0
1c005c7c:	00150184 	move	$r4,$r12
1c005c80:	57fab3ff 	bl	-1360(0xffffab0) # 1c005730 <a_to_n>
1c005c84:	0015008c 	move	$r12,$r4
1c005c88:	001032ec 	add.w	$r12,$r23,$r12
1c005c8c:	29bec2cc 	st.w	$r12,$r22,-80(0xfb0)
1c005c90:	28bf02cd 	ld.w	$r13,$r22,-64(0xfc0)
1c005c94:	0280300c 	addi.w	$r12,$r0,12(0xc)
1c005c98:	68005d8d 	bltu	$r12,$r13,92(0x5c) # 1c005cf4 <date+0x564>
1c005c9c:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c005ca0:	40005580 	beqz	$r12,84(0x54) # 1c005cf4 <date+0x564>
1c005ca4:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005ca8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005cac:	6800498d 	bltu	$r12,$r13,72(0x48) # 1c005cf4 <date+0x564>
1c005cb0:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c005cb4:	40004180 	beqz	$r12,64(0x40) # 1c005cf4 <date+0x564>
1c005cb8:	28bf02cd 	ld.w	$r13,$r22,-64(0xfc0)
1c005cbc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005cc0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005cd0 <date+0x540>
1c005cc4:	28bef2cd 	ld.w	$r13,$r22,-68(0xfbc)
1c005cc8:	0280740c 	addi.w	$r12,$r0,29(0x1d)
1c005ccc:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c005cf4 <date+0x564>
1c005cd0:	28bee2cd 	ld.w	$r13,$r22,-72(0xfb8)
1c005cd4:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c005cd8:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c005cf4 <date+0x564>
1c005cdc:	28bed2cd 	ld.w	$r13,$r22,-76(0xfb4)
1c005ce0:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005ce4:	6800118d 	bltu	$r12,$r13,16(0x10) # 1c005cf4 <date+0x564>
1c005ce8:	28bec2cd 	ld.w	$r13,$r22,-80(0xfb0)
1c005cec:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c005cf0:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005cfc <date+0x56c>
1c005cf4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005cf8:	50000800 	b	8(0x8) # 1c005d00 <date+0x570>
1c005cfc:	0015000c 	move	$r12,$r0
1c005d00:	29beb2cc 	st.w	$r12,$r22,-84(0xfac)
1c005d04:	28beb2cc 	ld.w	$r12,$r22,-84(0xfac)
1c005d08:	40001980 	beqz	$r12,24(0x18) # 1c005d20 <date+0x590>
1c005d0c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005d10:	02b8b084 	addi.w	$r4,$r4,-468(0xe2c)
1c005d14:	57becfff 	bl	-16692(0xfffbecc) # 1c001be0 <myprintf>
1c005d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d1c:	50017c00 	b	380(0x17c) # 1c005e98 <date+0x708>
1c005d20:	28bec2cc 	ld.w	$r12,$r22,-80(0xfb0)
1c005d24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d28:	293da2cc 	st.b	$r12,$r22,-152(0xf68)
1c005d2c:	28bed2cc 	ld.w	$r12,$r22,-76(0xfb4)
1c005d30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d34:	293da6cc 	st.b	$r12,$r22,-151(0xf69)
1c005d38:	28bee2cc 	ld.w	$r12,$r22,-72(0xfb8)
1c005d3c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d40:	293daacc 	st.b	$r12,$r22,-150(0xf6a)
1c005d44:	28bef2cc 	ld.w	$r12,$r22,-68(0xfbc)
1c005d48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d4c:	293daecc 	st.b	$r12,$r22,-149(0xf6b)
1c005d50:	28bf02cc 	ld.w	$r12,$r22,-64(0xfc0)
1c005d54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d58:	293db2cc 	st.b	$r12,$r22,-148(0xf6c)
1c005d5c:	0015000c 	move	$r12,$r0
1c005d60:	50013800 	b	312(0x138) # 1c005e98 <date+0x708>
1c005d64:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005d68:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005d6c:	2880018c 	ld.w	$r12,$r12,0
1c005d70:	28be12cd 	ld.w	$r13,$r22,-124(0xf84)
1c005d74:	001501a5 	move	$r5,$r13
1c005d78:	00150184 	move	$r4,$r12
1c005d7c:	57ca77ff 	bl	-13708(0xfffca74) # 1c0027f0 <strcmp>
1c005d80:	0015008c 	move	$r12,$r4
1c005d84:	44008980 	bnez	$r12,136(0x88) # 1c005e0c <date+0x67c>
1c005d88:	28bd62cc 	ld.w	$r12,$r22,-168(0xf58)
1c005d8c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005d90:	2880018c 	ld.w	$r12,$r12,0
1c005d94:	00150184 	move	$r4,$r12
1c005d98:	57ef2bff 	bl	-4312(0xfffef28) # 1c004cc0 <str2num>
1c005d9c:	29bea2c4 	st.w	$r4,$r22,-88(0xfa8)
1c005da0:	28bea2cd 	ld.w	$r13,$r22,-88(0xfa8)
1c005da4:	140000ec 	lu12i.w	$r12,7(0x7)
1c005da8:	0394c18c 	ori	$r12,$r12,0x530
1c005dac:	0012b1ac 	sltu	$r12,$r13,$r12
1c005db0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005db4:	28bea2ce 	ld.w	$r14,$r22,-88(0xfa8)
1c005db8:	1400018c 	lu12i.w	$r12,12(0xc)
1c005dbc:	038d458c 	ori	$r12,$r12,0x351
1c005dc0:	0012b1cc 	sltu	$r12,$r14,$r12
1c005dc4:	03c0058c 	xori	$r12,$r12,0x1
1c005dc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005dcc:	001531ac 	or	$r12,$r13,$r12
1c005dd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005dd4:	40001980 	beqz	$r12,24(0x18) # 1c005dec <date+0x65c>
1c005dd8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005ddc:	02b5c084 	addi.w	$r4,$r4,-656(0xd70)
1c005de0:	57be03ff 	bl	-16896(0xfffbe00) # 1c001be0 <myprintf>
1c005de4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005de8:	5000b000 	b	176(0xb0) # 1c005e98 <date+0x708>
1c005dec:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c005df0:	0044918c 	srli.w	$r12,$r12,0x4
1c005df4:	29be92cc 	st.w	$r12,$r22,-92(0xfa4)
1c005df8:	28bea2cc 	ld.w	$r12,$r22,-88(0xfa8)
1c005dfc:	03403d8c 	andi	$r12,$r12,0xf
1c005e00:	29be82cc 	st.w	$r12,$r22,-96(0xfa0)
1c005e04:	0015000c 	move	$r12,$r0
1c005e08:	50009000 	b	144(0x90) # 1c005e98 <date+0x708>
1c005e0c:	28bd72cd 	ld.w	$r13,$r22,-164(0xf5c)
1c005e10:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e14:	580011ac 	beq	$r13,$r12,16(0x10) # 1c005e24 <date+0x694>
1c005e18:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e1c:	02b54084 	addi.w	$r4,$r4,-688(0xd50)
1c005e20:	57bdc3ff 	bl	-16960(0xfffbdc0) # 1c001be0 <myprintf>
1c005e24:	02bd82cc 	addi.w	$r12,$r22,-160(0xf60)
1c005e28:	00150185 	move	$r5,$r12
1c005e2c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005e30:	57c3afff 	bl	-15444(0xfffc3ac) # 1c0021dc <RtcUpdateData>
1c005e34:	2a3d96cc 	ld.bu	$r12,$r22,-155(0xf65)
1c005e38:	29be72cc 	st.w	$r12,$r22,-100(0xf9c)
1c005e3c:	2a3d92cc 	ld.bu	$r12,$r22,-156(0xf64)
1c005e40:	29be62cc 	st.w	$r12,$r22,-104(0xf98)
1c005e44:	2a3d8ecc 	ld.bu	$r12,$r22,-157(0xf63)
1c005e48:	29be52cc 	st.w	$r12,$r22,-108(0xf94)
1c005e4c:	2a3d8acc 	ld.bu	$r12,$r22,-158(0xf62)
1c005e50:	29be42cc 	st.w	$r12,$r22,-112(0xf90)
1c005e54:	2a3d86cc 	ld.bu	$r12,$r22,-159(0xf61)
1c005e58:	29be32cc 	st.w	$r12,$r22,-116(0xf8c)
1c005e5c:	2a3d82cc 	ld.bu	$r12,$r22,-160(0xf60)
1c005e60:	29be22cc 	st.w	$r12,$r22,-120(0xf88)
1c005e64:	28be52c7 	ld.w	$r7,$r22,-108(0xf94)
1c005e68:	28be62c6 	ld.w	$r6,$r22,-104(0xf98)
1c005e6c:	28be72c5 	ld.w	$r5,$r22,-100(0xf9c)
1c005e70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e74:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c005e78:	57bd6bff 	bl	-17048(0xfffbd68) # 1c001be0 <myprintf>
1c005e7c:	28be22c7 	ld.w	$r7,$r22,-120(0xf88)
1c005e80:	28be32c6 	ld.w	$r6,$r22,-116(0xf8c)
1c005e84:	28be42c5 	ld.w	$r5,$r22,-112(0xf90)
1c005e88:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005e8c:	02b42084 	addi.w	$r4,$r4,-760(0xd08)
1c005e90:	57bd53ff 	bl	-17072(0xfffbd50) # 1c001be0 <myprintf>
1c005e94:	0015000c 	move	$r12,$r0
1c005e98:	00150184 	move	$r4,$r12
1c005e9c:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c005ea0:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c005ea4:	28829077 	ld.w	$r23,$r3,164(0xa4)
1c005ea8:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c005eac:	4c000020 	jirl	$r0,$r1,0

1c005eb0 <watch_dog>:
watch_dog():
1c005eb0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005eb4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005eb8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ebc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ec0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005ec4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005ec8:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c005ecc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005ed0:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c005ed4:	57bd0fff 	bl	-17140(0xfffbd0c) # 1c001be0 <myprintf>
1c005ed8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005edc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ee0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c005efc <watch_dog+0x4c>
1c005ee4:	57cadbff 	bl	-13608(0xfffcad8) # 1c0029bc <WDG_DogFeed>
1c005ee8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005eec:	02b3e084 	addi.w	$r4,$r4,-776(0xcf8)
1c005ef0:	57bcf3ff 	bl	-17168(0xfffbcf0) # 1c001be0 <myprintf>
1c005ef4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005ef8:	50002800 	b	40(0x28) # 1c005f20 <watch_dog+0x70>
1c005efc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005f00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005f04:	2880018c 	ld.w	$r12,$r12,0
1c005f08:	00150184 	move	$r4,$r12
1c005f0c:	57edb7ff 	bl	-4684(0xfffedb4) # 1c004cc0 <str2num>
1c005f10:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005f14:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c005f18:	57ca5bff 	bl	-13736(0xfffca58) # 1c002970 <WDG_SetWatchDog>
1c005f1c:	0015000c 	move	$r12,$r0
1c005f20:	00150184 	move	$r4,$r12
1c005f24:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f28:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f2c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f30:	4c000020 	jirl	$r0,$r1,0

1c005f34 <i2cp>:
i2cp():
1c005f34:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f38:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f3c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f44:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f48:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f4c:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005f50:	00150184 	move	$r4,$r12
1c005f54:	57d3abff 	bl	-11352(0xfffd3a8) # 1c0032fc <I2C_StructInit>
1c005f58:	02bfa2cc 	addi.w	$r12,$r22,-24(0xfe8)
1c005f5c:	00150185 	move	$r5,$r12
1c005f60:	157fd204 	lu12i.w	$r4,-262512(0xbfe90)
1c005f64:	57d297ff 	bl	-11628(0xfffd294) # 1c0031f8 <I2C_Init>
1c005f68:	03400000 	andi	$r0,$r0,0x0
1c005f6c:	00150184 	move	$r4,$r12
1c005f70:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f74:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f78:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f7c:	4c000020 	jirl	$r0,$r1,0

1c005f80 <i2cw>:
i2cw():
1c005f80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f84:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005f88:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005f8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f94:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005f98:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005f9c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005fa0:	580019ac 	beq	$r13,$r12,24(0x18) # 1c005fb8 <i2cw+0x38>
1c005fa4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005fa8:	02b14084 	addi.w	$r4,$r4,-944(0xc50)
1c005fac:	57bc37ff 	bl	-17356(0xfffbc34) # 1c001be0 <myprintf>
1c005fb0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005fb4:	5000c400 	b	196(0xc4) # 1c006078 <i2cw+0xf8>
1c005fb8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c005fbc:	02aaf084 	addi.w	$r4,$r4,-1348(0xabc)
1c005fc0:	57bc23ff 	bl	-17376(0xfffbc20) # 1c001be0 <myprintf>
1c005fc4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005fc8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005fcc:	2880018c 	ld.w	$r12,$r12,0
1c005fd0:	00150184 	move	$r4,$r12
1c005fd4:	57ecefff 	bl	-4884(0xfffecec) # 1c004cc0 <str2num>
1c005fd8:	0015008c 	move	$r12,$r4
1c005fdc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005fe0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005fe4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005fe8:	2880018c 	ld.w	$r12,$r12,0
1c005fec:	00150184 	move	$r4,$r12
1c005ff0:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c004cc0 <str2num>
1c005ff4:	0015008c 	move	$r12,$r4
1c005ff8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005ffc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006000:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c006004:	2880018c 	ld.w	$r12,$r12,0
1c006008:	00150184 	move	$r4,$r12
1c00600c:	57ecb7ff 	bl	-4940(0xfffecb4) # 1c004cc0 <str2num>
1c006010:	0015008c 	move	$r12,$r4
1c006014:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006018:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00601c:	00409d8c 	slli.w	$r12,$r12,0x7
1c006020:	0000598d 	ext.w.h	$r13,$r12
1c006024:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c006028:	0000598c 	ext.w.h	$r12,$r12
1c00602c:	001531ac 	or	$r12,$r13,$r12
1c006030:	0000598c 	ext.w.h	$r12,$r12
1c006034:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c006038:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c00603c:	00150185 	move	$r5,$r12
1c006040:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006044:	02af8084 	addi.w	$r4,$r4,-1056(0xbe0)
1c006048:	57bb9bff 	bl	-17512(0xfffbb98) # 1c001be0 <myprintf>
1c00604c:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006050:	00150185 	move	$r5,$r12
1c006054:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006058:	02af6084 	addi.w	$r4,$r4,-1064(0xbd8)
1c00605c:	57bb87ff 	bl	-17532(0xfffbb84) # 1c001be0 <myprintf>
1c006060:	2a3fb6cd 	ld.bu	$r13,$r22,-19(0xfed)
1c006064:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c006068:	001501a5 	move	$r5,$r13
1c00606c:	00150184 	move	$r4,$r12
1c006070:	57d54fff 	bl	-10932(0xfffd54c) # 1c0035bc <CAT24_Write>
1c006074:	0015000c 	move	$r12,$r0
1c006078:	00150184 	move	$r4,$r12
1c00607c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006080:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006084:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006088:	4c000020 	jirl	$r0,$r1,0

1c00608c <i2cr>:
i2cr():
1c00608c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006090:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006094:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006098:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00609c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0060a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0060a4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0060a8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0060ac:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0060c4 <i2cr+0x38>
1c0060b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0060b4:	02ae2084 	addi.w	$r4,$r4,-1144(0xb88)
1c0060b8:	57bb2bff 	bl	-17624(0xfffbb28) # 1c001be0 <myprintf>
1c0060bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0060c0:	50009800 	b	152(0x98) # 1c006158 <i2cr+0xcc>
1c0060c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0060c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0060cc:	2880018c 	ld.w	$r12,$r12,0
1c0060d0:	00150184 	move	$r4,$r12
1c0060d4:	57ebefff 	bl	-5140(0xfffebec) # 1c004cc0 <str2num>
1c0060d8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0060dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0060e0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0060e4:	2880018c 	ld.w	$r12,$r12,0
1c0060e8:	00150184 	move	$r4,$r12
1c0060ec:	57ebd7ff 	bl	-5164(0xfffebd4) # 1c004cc0 <str2num>
1c0060f0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0060f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0060f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0060fc:	00409d8c 	slli.w	$r12,$r12,0x7
1c006100:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006104:	140000ec 	lu12i.w	$r12,7(0x7)
1c006108:	03be018c 	ori	$r12,$r12,0xf80
1c00610c:	0014b1ac 	and	$r12,$r13,$r12
1c006110:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006114:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006118:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00611c:	0343fd8c 	andi	$r12,$r12,0xff
1c006120:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006124:	001531ac 	or	$r12,$r13,$r12
1c006128:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c00612c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c006130:	00150184 	move	$r4,$r12
1c006134:	57d5e7ff 	bl	-10780(0xfffd5e4) # 1c003718 <CAT24_Read>
1c006138:	0015008c 	move	$r12,$r4
1c00613c:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c006140:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c006144:	00150185 	move	$r5,$r12
1c006148:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00614c:	02ac5084 	addi.w	$r4,$r4,-1260(0xb14)
1c006150:	57ba93ff 	bl	-17776(0xfffba90) # 1c001be0 <myprintf>
1c006154:	0015000c 	move	$r12,$r0
1c006158:	00150184 	move	$r4,$r12
1c00615c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006160:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006164:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006168:	4c000020 	jirl	$r0,$r1,0

1c00616c <adc>:
adc():
1c00616c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006170:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006174:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006178:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00617c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006180:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c006184:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006188:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00618c:	2880018c 	ld.w	$r12,$r12,0
1c006190:	00150184 	move	$r4,$r12
1c006194:	57eb2fff 	bl	-5332(0xfffeb2c) # 1c004cc0 <str2num>
1c006198:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00619c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0061a0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0061a4:	2880018c 	ld.w	$r12,$r12,0
1c0061a8:	00150184 	move	$r4,$r12
1c0061ac:	57eb17ff 	bl	-5356(0xfffeb14) # 1c004cc0 <str2num>
1c0061b0:	29bfa2c4 	st.w	$r4,$r22,-24(0xfe8)
1c0061b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061b8:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0061bc:	6800298d 	bltu	$r12,$r13,40(0x28) # 1c0061e4 <adc+0x78>
1c0061c0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0061c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0061c8:	68001d8d 	bltu	$r12,$r13,28(0x1c) # 1c0061e4 <adc+0x78>
1c0061cc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0061d0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0061d4:	6400118d 	bge	$r12,$r13,16(0x10) # 1c0061e4 <adc+0x78>
1c0061d8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0061dc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0061e0:	64000d8d 	bge	$r12,$r13,12(0xc) # 1c0061ec <adc+0x80>
1c0061e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0061e8:	50000800 	b	8(0x8) # 1c0061f0 <adc+0x84>
1c0061ec:	0015000c 	move	$r12,$r0
1c0061f0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0061f4:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c0061f8:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0061fc:	2880018c 	ld.w	$r12,$r12,0
1c006200:	00150184 	move	$r4,$r12
1c006204:	57eabfff 	bl	-5444(0xfffeabc) # 1c004cc0 <str2num>
1c006208:	0015008c 	move	$r12,$r4
1c00620c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c006210:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006214:	40003180 	beqz	$r12,48(0x30) # 1c006244 <adc+0xd8>
1c006218:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00621c:	02a96084 	addi.w	$r4,$r4,-1448(0xa58)
1c006220:	57b9c3ff 	bl	-17984(0xfffb9c0) # 1c001be0 <myprintf>
1c006224:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006228:	02a9a084 	addi.w	$r4,$r4,-1432(0xa68)
1c00622c:	57b9b7ff 	bl	-17996(0xfffb9b4) # 1c001be0 <myprintf>
1c006230:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006234:	02aae084 	addi.w	$r4,$r4,-1352(0xab8)
1c006238:	57b9abff 	bl	-18008(0xfffb9a8) # 1c001be0 <myprintf>
1c00623c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006240:	5000bc00 	b	188(0xbc) # 1c0062fc <adc+0x190>
1c006244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006248:	0380118c 	ori	$r12,$r12,0x4
1c00624c:	1400010d 	lu12i.w	$r13,8(0x8)
1c006250:	2980018d 	st.w	$r13,$r12,0
1c006254:	50007800 	b	120(0x78) # 1c0062cc <adc+0x160>
1c006258:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00625c:	0040918e 	slli.w	$r14,$r12,0x4
1c006260:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006264:	0381b18c 	ori	$r12,$r12,0x6c
1c006268:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00626c:	001035cd 	add.w	$r13,$r14,$r13
1c006270:	2980018d 	st.w	$r13,$r12,0
1c006274:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006278:	0381b18c 	ori	$r12,$r12,0x6c
1c00627c:	2880018d 	ld.w	$r13,$r12,0
1c006280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006284:	0381b18c 	ori	$r12,$r12,0x6c
1c006288:	038401ad 	ori	$r13,$r13,0x100
1c00628c:	2980018d 	st.w	$r13,$r12,0
1c006290:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006294:	0381c18c 	ori	$r12,$r12,0x70
1c006298:	2880018c 	ld.w	$r12,$r12,0
1c00629c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0062a0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0062a4:	03b4580c 	ori	$r12,$r0,0xd16
1c0062a8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0062ac:	0044b18c 	srli.w	$r12,$r12,0xc
1c0062b0:	00150185 	move	$r5,$r12
1c0062b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0062b8:	02a92084 	addi.w	$r4,$r4,-1464(0xa48)
1c0062bc:	57b927ff 	bl	-18140(0xfffb924) # 1c001be0 <myprintf>
1c0062c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0062c4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0062c8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0062cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0062d0:	47ff899f 	bnez	$r12,-120(0x7fff88) # 1c006258 <adc+0xec>
1c0062d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062d8:	0380118c 	ori	$r12,$r12,0x4
1c0062dc:	2880018e 	ld.w	$r14,$r12,0
1c0062e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0062e4:	0380118c 	ori	$r12,$r12,0x4
1c0062e8:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c0062ec:	03bffdad 	ori	$r13,$r13,0xfff
1c0062f0:	0014b5cd 	and	$r13,$r14,$r13
1c0062f4:	2980018d 	st.w	$r13,$r12,0
1c0062f8:	0015000c 	move	$r12,$r0
1c0062fc:	00150184 	move	$r4,$r12
1c006300:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006304:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006308:	02810063 	addi.w	$r3,$r3,64(0x40)
1c00630c:	4c000020 	jirl	$r0,$r1,0

1c006310 <batdet>:
batdet():
1c006310:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006314:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006318:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00631c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006320:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006324:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006328:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00632c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006330:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006348 <batdet+0x38>
1c006334:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006338:	02a76084 	addi.w	$r4,$r4,-1576(0x9d8)
1c00633c:	57b8a7ff 	bl	-18268(0xfffb8a4) # 1c001be0 <myprintf>
1c006340:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006344:	50012800 	b	296(0x128) # 1c00646c <batdet+0x15c>
1c006348:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00634c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006350:	2880018c 	ld.w	$r12,$r12,0
1c006354:	00150184 	move	$r4,$r12
1c006358:	57e96bff 	bl	-5784(0xfffe968) # 1c004cc0 <str2num>
1c00635c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006360:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006364:	44001d80 	bnez	$r12,28(0x1c) # 1c006380 <batdet+0x70>
1c006368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00636c:	2880018e 	ld.w	$r14,$r12,0
1c006370:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006374:	1400040d 	lu12i.w	$r13,32(0x20)
1c006378:	001535cd 	or	$r13,$r14,$r13
1c00637c:	2980018d 	st.w	$r13,$r12,0
1c006380:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006384:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006388:	6800bd8d 	bltu	$r12,$r13,188(0xbc) # 1c006444 <batdet+0x134>
1c00638c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006390:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006394:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c0063d0 <batdet+0xc0>
1c006398:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00639c:	40001580 	beqz	$r12,20(0x14) # 1c0063b0 <batdet+0xa0>
1c0063a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0063a4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0063a8:	580061ac 	beq	$r13,$r12,96(0x60) # 1c006408 <batdet+0xf8>
1c0063ac:	5000ac00 	b	172(0xac) # 1c006458 <batdet+0x148>
1c0063b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0063b4:	2880018e 	ld.w	$r14,$r12,0
1c0063b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0063bc:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c0063c0:	03bffdad 	ori	$r13,$r13,0xfff
1c0063c4:	0014b5cd 	and	$r13,$r14,$r13
1c0063c8:	2980018d 	st.w	$r13,$r12,0
1c0063cc:	50008c00 	b	140(0x8c) # 1c006458 <batdet+0x148>
1c0063d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0063d4:	2880018e 	ld.w	$r14,$r12,0
1c0063d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0063dc:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c0063e0:	03bffdad 	ori	$r13,$r13,0xfff
1c0063e4:	0014b5cd 	and	$r13,$r14,$r13
1c0063e8:	2980018d 	st.w	$r13,$r12,0
1c0063ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0063f0:	2880018e 	ld.w	$r14,$r12,0
1c0063f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0063f8:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c0063fc:	001535cd 	or	$r13,$r14,$r13
1c006400:	2980018d 	st.w	$r13,$r12,0
1c006404:	50005400 	b	84(0x54) # 1c006458 <batdet+0x148>
1c006408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00640c:	2880018e 	ld.w	$r14,$r12,0
1c006410:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006414:	15f9ffed 	lu12i.w	$r13,-12289(0xfcfff)
1c006418:	03bffdad 	ori	$r13,$r13,0xfff
1c00641c:	0014b5cd 	and	$r13,$r14,$r13
1c006420:	2980018d 	st.w	$r13,$r12,0
1c006424:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006428:	2880018e 	ld.w	$r14,$r12,0
1c00642c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006430:	1406000d 	lu12i.w	$r13,12288(0x3000)
1c006434:	001535cd 	or	$r13,$r14,$r13
1c006438:	2980018d 	st.w	$r13,$r12,0
1c00643c:	03400000 	andi	$r0,$r0,0x0
1c006440:	50001800 	b	24(0x18) # 1c006458 <batdet+0x148>
1c006444:	1c000064 	pcaddu12i	$r4,3(0x3)
1c006448:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c00644c:	57b797ff 	bl	-18540(0xfffb794) # 1c001be0 <myprintf>
1c006450:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006454:	50001800 	b	24(0x18) # 1c00646c <batdet+0x15c>
1c006458:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00645c:	0380118c 	ori	$r12,$r12,0x4
1c006460:	03a0000d 	ori	$r13,$r0,0x800
1c006464:	2980018d 	st.w	$r13,$r12,0
1c006468:	0015000c 	move	$r12,$r0
1c00646c:	00150184 	move	$r4,$r12
1c006470:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006474:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006478:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00647c:	4c000020 	jirl	$r0,$r1,0

1c006480 <copy>:
copy():
1c006480:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006484:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006488:	29806076 	st.w	$r22,$r3,24(0x18)
1c00648c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006490:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006494:	0380118c 	ori	$r12,$r12,0x4
1c006498:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c00649c:	2980018d 	st.w	$r13,$r12,0
1c0064a0:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0064a4:	0380218c 	ori	$r12,$r12,0x8
1c0064a8:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0064ac:	2980018d 	st.w	$r13,$r12,0
1c0064b0:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0064b4:	0380618c 	ori	$r12,$r12,0x18
1c0064b8:	0280400d 	addi.w	$r13,$r0,16(0x10)
1c0064bc:	2980018d 	st.w	$r13,$r12,0
1c0064c0:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c0064c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064c8:	5000b000 	b	176(0xb0) # 1c006578 <copy+0xf8>
1c0064cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0064d0:	140007ec 	lu12i.w	$r12,63(0x3f)
1c0064d4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0064d8:	0014b1ae 	and	$r14,$r13,$r12
1c0064dc:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c0064e0:	1540000d 	lu12i.w	$r13,-393216(0xa0000)
1c0064e4:	001535cd 	or	$r13,$r14,$r13
1c0064e8:	2980018d 	st.w	$r13,$r12,0
1c0064ec:	57c4d3ff 	bl	-15152(0xfffc4d0) # 1c0029bc <WDG_DogFeed>
1c0064f0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0064f4:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c0064f8:	57b6ebff 	bl	-18712(0xfffb6e8) # 1c001be0 <myprintf>
1c0064fc:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006500:	1480000d 	lu12i.w	$r13,262144(0x40000)
1c006504:	2980018d 	st.w	$r13,$r12,0
1c006508:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00650c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006510:	50002c00 	b	44(0x2c) # 1c00653c <copy+0xbc>
1c006514:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006518:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c00651c:	001031ac 	add.w	$r12,$r13,$r12
1c006520:	0015018d 	move	$r13,$r12
1c006524:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006528:	288001ad 	ld.w	$r13,$r13,0
1c00652c:	2980018d 	st.w	$r13,$r12,0
1c006530:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006534:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006538:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00653c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006540:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c006544:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006548:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c006514 <copy+0x94>
1c00654c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006550:	140007ec 	lu12i.w	$r12,63(0x3f)
1c006554:	03bffd8c 	ori	$r12,$r12,0xfff
1c006558:	0014b1ae 	and	$r14,$r13,$r12
1c00655c:	157fcc0c 	lu12i.w	$r12,-262560(0xbfe60)
1c006560:	15c0000d 	lu12i.w	$r13,-131072(0xe0000)
1c006564:	001535cd 	or	$r13,$r14,$r13
1c006568:	2980018d 	st.w	$r13,$r12,0
1c00656c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006570:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c006574:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006578:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00657c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c006580:	6bff4dac 	bltu	$r13,$r12,-180(0x3ff4c) # 1c0064cc <copy+0x4c>
1c006584:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006588:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00658c:	50006000 	b	96(0x60) # 1c0065ec <copy+0x16c>
1c006590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006594:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006598:	50003800 	b	56(0x38) # 1c0065d0 <copy+0x150>
1c00659c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0065a0:	2880018d 	ld.w	$r13,$r12,0
1c0065a4:	28bfa2ce 	ld.w	$r14,$r22,-24(0xfe8)
1c0065a8:	15fe000c 	lu12i.w	$r12,-4096(0xff000)
1c0065ac:	001031cc 	add.w	$r12,$r14,$r12
1c0065b0:	2880018c 	ld.w	$r12,$r12,0
1c0065b4:	580011ac 	beq	$r13,$r12,16(0x10) # 1c0065c4 <copy+0x144>
1c0065b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0065bc:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c0065c0:	57b623ff 	bl	-18912(0xfffb620) # 1c001be0 <myprintf>
1c0065c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0065c8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0065cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0065d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0065d4:	0281fd8c 	addi.w	$r12,$r12,127(0x7f)
1c0065d8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0065dc:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c00659c <copy+0x11c>
1c0065e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0065e4:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c0065e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0065ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0065f0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0065f4:	6bff9dac 	bltu	$r13,$r12,-100(0x3ff9c) # 1c006590 <copy+0x110>
1c0065f8:	0015000c 	move	$r12,$r0
1c0065fc:	00150184 	move	$r4,$r12
1c006600:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006604:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006608:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00660c:	4c000020 	jirl	$r0,$r1,0

1c006610 <uart_init>:
uart_init():
1c006610:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006614:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006618:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00661c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006620:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006624:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006628:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00662c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006630:	580019ac 	beq	$r13,$r12,24(0x18) # 1c006648 <uart_init+0x38>
1c006634:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006638:	029cb084 	addi.w	$r4,$r4,1836(0x72c)
1c00663c:	57b5a7ff 	bl	-19036(0xfffb5a4) # 1c001be0 <myprintf>
1c006640:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006644:	50006400 	b	100(0x64) # 1c0066a8 <uart_init+0x98>
1c006648:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00664c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006650:	2880018c 	ld.w	$r12,$r12,0
1c006654:	00150184 	move	$r4,$r12
1c006658:	57e66bff 	bl	-6552(0xfffe668) # 1c004cc0 <str2num>
1c00665c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006660:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006664:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006668:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006678 <uart_init+0x68>
1c00666c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c006670:	57c207ff 	bl	-15868(0xfffc204) # 1c002874 <Uart_init>
1c006674:	50003000 	b	48(0x30) # 1c0066a4 <uart_init+0x94>
1c006678:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00667c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006680:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006690 <uart_init+0x80>
1c006684:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c006688:	57c1efff 	bl	-15892(0xfffc1ec) # 1c002874 <Uart_init>
1c00668c:	50001800 	b	24(0x18) # 1c0066a4 <uart_init+0x94>
1c006690:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006694:	029b4084 	addi.w	$r4,$r4,1744(0x6d0)
1c006698:	57b54bff 	bl	-19128(0xfffb548) # 1c001be0 <myprintf>
1c00669c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066a0:	50000800 	b	8(0x8) # 1c0066a8 <uart_init+0x98>
1c0066a4:	0015000c 	move	$r12,$r0
1c0066a8:	00150184 	move	$r4,$r12
1c0066ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0066b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0066b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0066b8:	4c000020 	jirl	$r0,$r1,0

1c0066bc <spi_init>:
spi_init():
1c0066bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0066c0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0066c4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0066c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0066cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0066d0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0066d4:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0066d8:	0281480d 	addi.w	$r13,$r0,82(0x52)
1c0066dc:	2900018d 	st.b	$r13,$r12,0
1c0066e0:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c0066e4:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0066e8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0066ec:	57becfff 	bl	-16692(0xfffbecc) # 1c0025b8 <Spiflash_Rdid>
1c0066f0:	0015008c 	move	$r12,$r4
1c0066f4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0066f8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0066fc:	00150185 	move	$r5,$r12
1c006700:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006704:	0299e084 	addi.w	$r4,$r4,1656(0x678)
1c006708:	57b4dbff 	bl	-19240(0xfffb4d8) # 1c001be0 <myprintf>
1c00670c:	03400000 	andi	$r0,$r0,0x0
1c006710:	00150184 	move	$r4,$r12
1c006714:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006718:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00671c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006720:	4c000020 	jirl	$r0,$r1,0

1c006724 <spi_write>:
spi_write():
1c006724:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006728:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00672c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006730:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006734:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006738:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c00673c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006740:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006744:	580019ac 	beq	$r13,$r12,24(0x18) # 1c00675c <spi_write+0x38>
1c006748:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00674c:	0298f084 	addi.w	$r4,$r4,1596(0x63c)
1c006750:	57b493ff 	bl	-19312(0xfffb490) # 1c001be0 <myprintf>
1c006754:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006758:	5000e800 	b	232(0xe8) # 1c006840 <spi_write+0x11c>
1c00675c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006760:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006764:	2880018c 	ld.w	$r12,$r12,0
1c006768:	00150184 	move	$r4,$r12
1c00676c:	57e557ff 	bl	-6828(0xfffe554) # 1c004cc0 <str2num>
1c006770:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c006774:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006778:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00677c:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c006780:	57b463ff 	bl	-19360(0xfffb460) # 1c001be0 <myprintf>
1c006784:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006788:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00678c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006790:	50009400 	b	148(0x94) # 1c006824 <spi_write+0x100>
1c006794:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006798:	0040a18c 	slli.w	$r12,$r12,0x8
1c00679c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0067a0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0067a4:	50004000 	b	64(0x40) # 1c0067e4 <spi_write+0xc0>
1c0067a8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0067ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067b0:	001031ad 	add.w	$r13,$r13,$r12
1c0067b4:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c0067b8:	001031ac 	add.w	$r12,$r13,$r12
1c0067bc:	0015018e 	move	$r14,$r12
1c0067c0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0067c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067c8:	001031ac 	add.w	$r12,$r13,$r12
1c0067cc:	2a0001cd 	ld.bu	$r13,$r14,0
1c0067d0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0067d4:	2900018d 	st.b	$r13,$r12,0
1c0067d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0067e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0067e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0067e8:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0067ec:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0067a8 <spi_write+0x84>
1c0067f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0067f4:	02970084 	addi.w	$r4,$r4,1472(0x5c0)
1c0067f8:	57b3ebff 	bl	-19480(0xfffb3e8) # 1c001be0 <myprintf>
1c0067fc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006800:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006804:	001031ac 	add.w	$r12,$r13,$r12
1c006808:	02840006 	addi.w	$r6,$r0,256(0x100)
1c00680c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c006810:	00150184 	move	$r4,$r12
1c006814:	57be9fff 	bl	-16740(0xfffbe9c) # 1c0026b0 <Spiflash_Page_Program>
1c006818:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00681c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006820:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006824:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006828:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00682c:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c006794 <spi_write+0x70>
1c006830:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006834:	02961084 	addi.w	$r4,$r4,1412(0x584)
1c006838:	57b3abff 	bl	-19544(0xfffb3a8) # 1c001be0 <myprintf>
1c00683c:	0015000c 	move	$r12,$r0
1c006840:	00150184 	move	$r4,$r12
1c006844:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006848:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00684c:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006850:	4c000020 	jirl	$r0,$r1,0

1c006854 <spi_read>:
spi_read():
1c006854:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006858:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00685c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006860:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006864:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006868:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c00686c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c006870:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006874:	580019ac 	beq	$r13,$r12,24(0x18) # 1c00688c <spi_read+0x38>
1c006878:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00687c:	02950084 	addi.w	$r4,$r4,1344(0x540)
1c006880:	57b363ff 	bl	-19616(0xfffb360) # 1c001be0 <myprintf>
1c006884:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006888:	50012800 	b	296(0x128) # 1c0069b0 <spi_read+0x15c>
1c00688c:	28bf22cc 	ld.w	$r12,$r22,-56(0xfc8)
1c006890:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006894:	2880018c 	ld.w	$r12,$r12,0
1c006898:	00150184 	move	$r4,$r12
1c00689c:	57e427ff 	bl	-7132(0xfffe424) # 1c004cc0 <str2num>
1c0068a0:	29bf92c4 	st.w	$r4,$r22,-28(0xfe4)
1c0068a4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0068a8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0068ac:	0294a084 	addi.w	$r4,$r4,1320(0x528)
1c0068b0:	57b333ff 	bl	-19664(0xfffb330) # 1c001be0 <myprintf>
1c0068b4:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c0068b8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0068bc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0068c0:	5000d400 	b	212(0xd4) # 1c006994 <spi_read+0x140>
1c0068c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0068c8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0068cc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0068d0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0068d4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0068d8:	001031ac 	add.w	$r12,$r13,$r12
1c0068dc:	02840006 	addi.w	$r6,$r0,256(0x100)
1c0068e0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0068e4:	00150184 	move	$r4,$r12
1c0068e8:	57be6fff 	bl	-16788(0xfffbe6c) # 1c002754 <Spiflash_Read_Bytes>
1c0068ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0068f0:	50008000 	b	128(0x80) # 1c006970 <spi_read+0x11c>
1c0068f4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0068f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068fc:	001031ac 	add.w	$r12,$r13,$r12
1c006900:	2a00018d 	ld.bu	$r13,$r12,0
1c006904:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006908:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00690c:	001031ce 	add.w	$r14,$r14,$r12
1c006910:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006914:	001031cc 	add.w	$r12,$r14,$r12
1c006918:	2a00018c 	ld.bu	$r12,$r12,0
1c00691c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006920:	580045ac 	beq	$r13,$r12,68(0x44) # 1c006964 <spi_read+0x110>
1c006924:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00692c:	001031ac 	add.w	$r12,$r13,$r12
1c006930:	2a00018c 	ld.bu	$r12,$r12,0
1c006934:	0015018e 	move	$r14,$r12
1c006938:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c00693c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006940:	001031ad 	add.w	$r13,$r13,$r12
1c006944:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006948:	001031ac 	add.w	$r12,$r13,$r12
1c00694c:	00150186 	move	$r6,$r12
1c006950:	001501c5 	move	$r5,$r14
1c006954:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006958:	02923084 	addi.w	$r4,$r4,1164(0x48c)
1c00695c:	57b287ff 	bl	-19836(0xfffb284) # 1c001be0 <myprintf>
1c006960:	50001c00 	b	28(0x1c) # 1c00697c <spi_read+0x128>
1c006964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006968:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00696c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006970:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006974:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006978:	6fff7d8d 	bgeu	$r12,$r13,-132(0x3ff7c) # 1c0068f4 <spi_read+0xa0>
1c00697c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006980:	0290d084 	addi.w	$r4,$r4,1076(0x434)
1c006984:	57b25fff 	bl	-19876(0xfffb25c) # 1c001be0 <myprintf>
1c006988:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00698c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006990:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006994:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006998:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00699c:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c0068c4 <spi_read+0x70>
1c0069a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069a4:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c0069a8:	57b23bff 	bl	-19912(0xfffb238) # 1c001be0 <myprintf>
1c0069ac:	0015000c 	move	$r12,$r0
1c0069b0:	00150184 	move	$r4,$r12
1c0069b4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0069b8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0069bc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0069c0:	4c000020 	jirl	$r0,$r1,0

1c0069c4 <spi_erase>:
spi_erase():
1c0069c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0069c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0069cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0069d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0069d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0069d8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0069dc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0069e0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0069e4:	580019ac 	beq	$r13,$r12,24(0x18) # 1c0069fc <spi_erase+0x38>
1c0069e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0069ec:	02906084 	addi.w	$r4,$r4,1048(0x418)
1c0069f0:	57b1f3ff 	bl	-19984(0xfffb1f0) # 1c001be0 <myprintf>
1c0069f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069f8:	50004800 	b	72(0x48) # 1c006a40 <spi_erase+0x7c>
1c0069fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006a00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006a04:	2880018c 	ld.w	$r12,$r12,0
1c006a08:	00150184 	move	$r4,$r12
1c006a0c:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c004cc0 <str2num>
1c006a10:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006a14:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006a18:	02902084 	addi.w	$r4,$r4,1032(0x408)
1c006a1c:	57b1c7ff 	bl	-20028(0xfffb1c4) # 1c001be0 <myprintf>
1c006a20:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c006a24:	57bbffff 	bl	-17412(0xfffbbfc) # 1c002620 <Spiflash_Block64k_Erase>
1c006a28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a2c:	1400020c 	lu12i.w	$r12,16(0x10)
1c006a30:	001031ac 	add.w	$r12,$r13,$r12
1c006a34:	00150184 	move	$r4,$r12
1c006a38:	57bbebff 	bl	-17432(0xfffbbe8) # 1c002620 <Spiflash_Block64k_Erase>
1c006a3c:	0015000c 	move	$r12,$r0
1c006a40:	00150184 	move	$r4,$r12
1c006a44:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006a48:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006a4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006a50:	4c000020 	jirl	$r0,$r1,0

1c006a54 <spi_flash>:
spi_flash():
1c006a54:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c006a58:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c006a5c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c006a60:	02810076 	addi.w	$r22,$r3,64(0x40)
1c006a64:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c006a68:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c006a6c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006a70:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c006a74:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006a78:	0281480d 	addi.w	$r13,$r0,82(0x52)
1c006a7c:	2900018d 	st.b	$r13,$r12,0
1c006a80:	157fce0c 	lu12i.w	$r12,-262544(0xbfe70)
1c006a84:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c006a88:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006a8c:	57bb2fff 	bl	-17620(0xfffbb2c) # 1c0025b8 <Spiflash_Rdid>
1c006a90:	0015008c 	move	$r12,$r4
1c006a94:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c006a98:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006a9c:	00150185 	move	$r5,$r12
1c006aa0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006aa4:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c006aa8:	57b13bff 	bl	-20168(0xfffb138) # 1c001be0 <myprintf>
1c006aac:	28bf92c4 	ld.w	$r4,$r22,-28(0xfe4)
1c006ab0:	57bb73ff 	bl	-17552(0xfffbb70) # 1c002620 <Spiflash_Block64k_Erase>
1c006ab4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006ab8:	1400020c 	lu12i.w	$r12,16(0x10)
1c006abc:	001031ac 	add.w	$r12,$r13,$r12
1c006ac0:	00150184 	move	$r4,$r12
1c006ac4:	57bb5fff 	bl	-17572(0xfffbb5c) # 1c002620 <Spiflash_Block64k_Erase>
1c006ac8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006acc:	028d9084 	addi.w	$r4,$r4,868(0x364)
1c006ad0:	57b113ff 	bl	-20208(0xfffb110) # 1c001be0 <myprintf>
1c006ad4:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006ad8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006adc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006ae0:	50009400 	b	148(0x94) # 1c006b74 <spi_flash+0x120>
1c006ae4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006ae8:	0040a18c 	slli.w	$r12,$r12,0x8
1c006aec:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006af0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006af4:	50004000 	b	64(0x40) # 1c006b34 <spi_flash+0xe0>
1c006af8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006afc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b00:	001031ad 	add.w	$r13,$r13,$r12
1c006b04:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006b08:	001031ac 	add.w	$r12,$r13,$r12
1c006b0c:	0015018e 	move	$r14,$r12
1c006b10:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006b14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b18:	001031ac 	add.w	$r12,$r13,$r12
1c006b1c:	2a0001cd 	ld.bu	$r13,$r14,0
1c006b20:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c006b24:	2900018d 	st.b	$r13,$r12,0
1c006b28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006b2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006b34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006b38:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006b3c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c006af8 <spi_flash+0xa4>
1c006b40:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006b44:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006b48:	001031ac 	add.w	$r12,$r13,$r12
1c006b4c:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006b50:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006b54:	00150184 	move	$r4,$r12
1c006b58:	57bb5bff 	bl	-17576(0xfffbb58) # 1c0026b0 <Spiflash_Page_Program>
1c006b5c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006b60:	02895084 	addi.w	$r4,$r4,596(0x254)
1c006b64:	57b07fff 	bl	-20356(0xfffb07c) # 1c001be0 <myprintf>
1c006b68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006b6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b70:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006b74:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006b78:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006b7c:	6bff69ac 	bltu	$r13,$r12,-152(0x3ff68) # 1c006ae4 <spi_flash+0x90>
1c006b80:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006b84:	028af084 	addi.w	$r4,$r4,700(0x2bc)
1c006b88:	57b05bff 	bl	-20392(0xfffb058) # 1c001be0 <myprintf>
1c006b8c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006b90:	028b0084 	addi.w	$r4,$r4,704(0x2c0)
1c006b94:	57b04fff 	bl	-20404(0xfffb04c) # 1c001be0 <myprintf>
1c006b98:	0288000c 	addi.w	$r12,$r0,512(0x200)
1c006b9c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006ba0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006ba4:	5000d400 	b	212(0xd4) # 1c006c78 <spi_flash+0x224>
1c006ba8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006bac:	0040a18c 	slli.w	$r12,$r12,0x8
1c006bb0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006bb4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006bb8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c006bbc:	001031ac 	add.w	$r12,$r13,$r12
1c006bc0:	02840006 	addi.w	$r6,$r0,256(0x100)
1c006bc4:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006bc8:	00150184 	move	$r4,$r12
1c006bcc:	57bb8bff 	bl	-17528(0xfffbb88) # 1c002754 <Spiflash_Read_Bytes>
1c006bd0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006bd4:	50008000 	b	128(0x80) # 1c006c54 <spi_flash+0x200>
1c006bd8:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006be0:	001031ac 	add.w	$r12,$r13,$r12
1c006be4:	2a00018d 	ld.bu	$r13,$r12,0
1c006be8:	28bf82ce 	ld.w	$r14,$r22,-32(0xfe0)
1c006bec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bf0:	001031ce 	add.w	$r14,$r14,$r12
1c006bf4:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006bf8:	001031cc 	add.w	$r12,$r14,$r12
1c006bfc:	2a00018c 	ld.bu	$r12,$r12,0
1c006c00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006c04:	580045ac 	beq	$r13,$r12,68(0x44) # 1c006c48 <spi_flash+0x1f4>
1c006c08:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c006c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c10:	001031ac 	add.w	$r12,$r13,$r12
1c006c14:	2a00018c 	ld.bu	$r12,$r12,0
1c006c18:	0015018e 	move	$r14,$r12
1c006c1c:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c006c20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c24:	001031ad 	add.w	$r13,$r13,$r12
1c006c28:	157e000c 	lu12i.w	$r12,-266240(0xbf000)
1c006c2c:	001031ac 	add.w	$r12,$r13,$r12
1c006c30:	00150186 	move	$r6,$r12
1c006c34:	001501c5 	move	$r5,$r14
1c006c38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006c3c:	0286a084 	addi.w	$r4,$r4,424(0x1a8)
1c006c40:	57afa3ff 	bl	-20576(0xfffafa0) # 1c001be0 <myprintf>
1c006c44:	50001c00 	b	28(0x1c) # 1c006c60 <spi_flash+0x20c>
1c006c48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c4c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c58:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c006c5c:	6fff7d8d 	bgeu	$r12,$r13,-132(0x3ff7c) # 1c006bd8 <spi_flash+0x184>
1c006c60:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006c64:	02854084 	addi.w	$r4,$r4,336(0x150)
1c006c68:	57af7bff 	bl	-20616(0xfffaf78) # 1c001be0 <myprintf>
1c006c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c74:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006c78:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006c7c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006c80:	6bff29ac 	bltu	$r13,$r12,-216(0x3ff28) # 1c006ba8 <spi_flash+0x154>
1c006c84:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006c88:	02877084 	addi.w	$r4,$r4,476(0x1dc)
1c006c8c:	57af57ff 	bl	-20652(0xfffaf54) # 1c001be0 <myprintf>
1c006c90:	0015000c 	move	$r12,$r0
1c006c94:	00150184 	move	$r4,$r12
1c006c98:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c006c9c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c006ca0:	02810063 	addi.w	$r3,$r3,64(0x40)
1c006ca4:	4c000020 	jirl	$r0,$r1,0

1c006ca8 <gpio_int_test>:
gpio_int_test():
1c006ca8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006cac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006cb0:	29806076 	st.w	$r22,$r3,24(0x18)
1c006cb4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006cb8:	00150006 	move	$r6,$r0
1c006cbc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006cc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006cc4:	03804184 	ori	$r4,$r12,0x10
1c006cc8:	57a9e3ff 	bl	-22048(0xfffa9e0) # 1c0016a8 <AFIO_RemapConfig>
1c006ccc:	00150006 	move	$r6,$r0
1c006cd0:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006cd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006cd8:	03806184 	ori	$r4,$r12,0x18
1c006cdc:	57a9cfff 	bl	-22068(0xfffa9cc) # 1c0016a8 <AFIO_RemapConfig>
1c006ce0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c006ce4:	00150184 	move	$r4,$r12
1c006ce8:	57a93fff 	bl	-22212(0xfffa93c) # 1c001624 <EXTI_StructInit>
1c006cec:	1400100c 	lu12i.w	$r12,128(0x80)
1c006cf0:	0380098c 	ori	$r12,$r12,0x2
1c006cf4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c006cf8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006cfc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006d00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006d04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006d08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006d0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006d10:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c006d14:	00150185 	move	$r5,$r12
1c006d18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006d1c:	03808184 	ori	$r4,$r12,0x20
1c006d20:	57a777ff 	bl	-22668(0xfffa774) # 1c001494 <EXTI_Init>
1c006d24:	03400000 	andi	$r0,$r0,0x0
1c006d28:	00150184 	move	$r4,$r12
1c006d2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006d30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006d34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006d38:	4c000020 	jirl	$r0,$r1,0

1c006d3c <gpio_int>:
gpio_int():
1c006d3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006d40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006d44:	29806076 	st.w	$r22,$r3,24(0x18)
1c006d48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006d4c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006d50:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c006d54:	57ff57ff 	bl	-172(0xfffff54) # 1c006ca8 <gpio_int_test>
1c006d58:	0015000c 	move	$r12,$r0
1c006d5c:	00150184 	move	$r4,$r12
1c006d60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006d64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006d68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006d6c:	4c000020 	jirl	$r0,$r1,0

1c006d70 <tmp>:
tmp():
1c006d70:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006d74:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006d78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006d7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006d80:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006d84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006d88:	0015000c 	move	$r12,$r0
1c006d8c:	00150184 	move	$r4,$r12
1c006d90:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006d94:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006d98:	4c000020 	jirl	$r0,$r1,0

1c006d9c <copy_iram>:
copy_iram():
1c006d9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006da0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006da4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006da8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006dac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006db0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006db4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006db8:	0282f084 	addi.w	$r4,$r4,188(0xbc)
1c006dbc:	57ae27ff 	bl	-20956(0xfffae24) # 1c001be0 <myprintf>
1c006dc0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006dc4:	50002000 	b	32(0x20) # 1c006de4 <copy_iram+0x48>
1c006dc8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006dcc:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006dd0:	001031ac 	add.w	$r12,$r13,$r12
1c006dd4:	29800180 	st.w	$r0,$r12,0
1c006dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ddc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006de4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006de8:	1400004c 	lu12i.w	$r12,2(0x2)
1c006dec:	6bffddac 	bltu	$r13,$r12,-36(0x3ffdc) # 1c006dc8 <copy_iram+0x2c>
1c006df0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006df4:	50003800 	b	56(0x38) # 1c006e2c <copy_iram+0x90>
1c006df8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006dfc:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006e00:	001031ac 	add.w	$r12,$r13,$r12
1c006e04:	0015018e 	move	$r14,$r12
1c006e08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e0c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006e10:	001031ac 	add.w	$r12,$r13,$r12
1c006e14:	0015018d 	move	$r13,$r12
1c006e18:	288001cc 	ld.w	$r12,$r14,0
1c006e1c:	298001ac 	st.w	$r12,$r13,0
1c006e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e24:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006e28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006e2c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e30:	1400004c 	lu12i.w	$r12,2(0x2)
1c006e34:	6bffc5ac 	bltu	$r13,$r12,-60(0x3ffc4) # 1c006df8 <copy_iram+0x5c>
1c006e38:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006e3c:	50006c00 	b	108(0x6c) # 1c006ea8 <copy_iram+0x10c>
1c006e40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e44:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006e48:	001031ac 	add.w	$r12,$r13,$r12
1c006e4c:	2880018d 	ld.w	$r13,$r12,0
1c006e50:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c006e54:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006e58:	001031cc 	add.w	$r12,$r14,$r12
1c006e5c:	2880018c 	ld.w	$r12,$r12,0
1c006e60:	58003dac 	beq	$r13,$r12,60(0x3c) # 1c006e9c <copy_iram+0x100>
1c006e64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e68:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006e6c:	001031ac 	add.w	$r12,$r13,$r12
1c006e70:	2880018e 	ld.w	$r14,$r12,0
1c006e74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e78:	157c020c 	lu12i.w	$r12,-270320(0xbe010)
1c006e7c:	001031ac 	add.w	$r12,$r13,$r12
1c006e80:	2880018c 	ld.w	$r12,$r12,0
1c006e84:	00150187 	move	$r7,$r12
1c006e88:	001501c6 	move	$r6,$r14
1c006e8c:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c006e90:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006e94:	02bfd084 	addi.w	$r4,$r4,-12(0xff4)
1c006e98:	57ad4bff 	bl	-21176(0xfffad48) # 1c001be0 <myprintf>
1c006e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ea0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006ea4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006ea8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006eac:	1400004c 	lu12i.w	$r12,2(0x2)
1c006eb0:	6bff91ac 	bltu	$r13,$r12,-112(0x3ff90) # 1c006e40 <copy_iram+0xa4>
1c006eb4:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c006eb8:	4c000180 	jirl	$r0,$r12,0
1c006ebc:	0015000c 	move	$r12,$r0
1c006ec0:	00150184 	move	$r4,$r12
1c006ec4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006ec8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006ecc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006ed0:	4c000020 	jirl	$r0,$r1,0

1c006ed4 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c006ed4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ed8:	29803061 	st.w	$r1,$r3,12(0xc)
1c006edc:	29802076 	st.w	$r22,$r3,8(0x8)
1c006ee0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ee4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006ee8:	028630c6 	addi.w	$r6,$r6,396(0x18c)
1c006eec:	02804c05 	addi.w	$r5,$r0,19(0x13)
1c006ef0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006ef4:	02beb084 	addi.w	$r4,$r4,-84(0xfac)
1c006ef8:	57acebff 	bl	-21272(0xffface8) # 1c001be0 <myprintf>
1c006efc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006f00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f04:	03808184 	ori	$r4,$r12,0x20
1c006f08:	57a767ff 	bl	-22684(0xfffa764) # 1c00166c <EXTI_ClearITPendingBit>
1c006f0c:	03400000 	andi	$r0,$r0,0x0
1c006f10:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f14:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f18:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f1c:	4c000020 	jirl	$r0,$r1,0

1c006f20 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c006f20:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f24:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f28:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f2c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f30:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f34:	028560c6 	addi.w	$r6,$r6,344(0x158)
1c006f38:	02806005 	addi.w	$r5,$r0,24(0x18)
1c006f3c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f40:	02bd8084 	addi.w	$r4,$r4,-160(0xf60)
1c006f44:	57ac9fff 	bl	-21348(0xfffac9c) # 1c001be0 <myprintf>
1c006f48:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006f4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f50:	03808184 	ori	$r4,$r12,0x20
1c006f54:	57a71bff 	bl	-22760(0xfffa718) # 1c00166c <EXTI_ClearITPendingBit>
1c006f58:	03400000 	andi	$r0,$r0,0x0
1c006f5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f68:	4c000020 	jirl	$r0,$r1,0

1c006f6c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c006f6c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f70:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f74:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f78:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f7c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006f80:	028490c6 	addi.w	$r6,$r6,292(0x124)
1c006f84:	02807405 	addi.w	$r5,$r0,29(0x1d)
1c006f88:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006f8c:	02bc5084 	addi.w	$r4,$r4,-236(0xf14)
1c006f90:	57ac53ff 	bl	-21424(0xfffac50) # 1c001be0 <myprintf>
1c006f94:	02801005 	addi.w	$r5,$r0,4(0x4)
1c006f98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006f9c:	03808184 	ori	$r4,$r12,0x20
1c006fa0:	57a6cfff 	bl	-22836(0xfffa6cc) # 1c00166c <EXTI_ClearITPendingBit>
1c006fa4:	03400000 	andi	$r0,$r0,0x0
1c006fa8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006fac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006fb0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006fb4:	4c000020 	jirl	$r0,$r1,0

1c006fb8 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c006fb8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006fbc:	29803061 	st.w	$r1,$r3,12(0xc)
1c006fc0:	29802076 	st.w	$r22,$r3,8(0x8)
1c006fc4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006fc8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006fcc:	0283c0c6 	addi.w	$r6,$r6,240(0xf0)
1c006fd0:	02808805 	addi.w	$r5,$r0,34(0x22)
1c006fd4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006fd8:	02bb2084 	addi.w	$r4,$r4,-312(0xec8)
1c006fdc:	57ac07ff 	bl	-21500(0xfffac04) # 1c001be0 <myprintf>
1c006fe0:	02802005 	addi.w	$r5,$r0,8(0x8)
1c006fe4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c006fe8:	03808184 	ori	$r4,$r12,0x20
1c006fec:	57a683ff 	bl	-22912(0xfffa680) # 1c00166c <EXTI_ClearITPendingBit>
1c006ff0:	03400000 	andi	$r0,$r0,0x0
1c006ff4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ff8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ffc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007000:	4c000020 	jirl	$r0,$r1,0

1c007004 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c007004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00700c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007014:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007018:	0282f0c6 	addi.w	$r6,$r6,188(0xbc)
1c00701c:	02809c05 	addi.w	$r5,$r0,39(0x27)
1c007020:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007024:	02b9f084 	addi.w	$r4,$r4,-388(0xe7c)
1c007028:	57abbbff 	bl	-21576(0xfffabb8) # 1c001be0 <myprintf>
1c00702c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c007030:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007034:	03808184 	ori	$r4,$r12,0x20
1c007038:	57a637ff 	bl	-22988(0xfffa634) # 1c00166c <EXTI_ClearITPendingBit>
1c00703c:	03400000 	andi	$r0,$r0,0x0
1c007040:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007044:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007048:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00704c:	4c000020 	jirl	$r0,$r1,0

1c007050 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c007050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007054:	29803061 	st.w	$r1,$r3,12(0xc)
1c007058:	29802076 	st.w	$r22,$r3,8(0x8)
1c00705c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007060:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007064:	028220c6 	addi.w	$r6,$r6,136(0x88)
1c007068:	0280b005 	addi.w	$r5,$r0,44(0x2c)
1c00706c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007070:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c007074:	57ab6fff 	bl	-21652(0xfffab6c) # 1c001be0 <myprintf>
1c007078:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00707c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007080:	03808184 	ori	$r4,$r12,0x20
1c007084:	57a5ebff 	bl	-23064(0xfffa5e8) # 1c00166c <EXTI_ClearITPendingBit>
1c007088:	03400000 	andi	$r0,$r0,0x0
1c00708c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007090:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007094:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007098:	4c000020 	jirl	$r0,$r1,0

1c00709c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00709c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0070a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0070a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0070a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0070ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0070b0:	028150c6 	addi.w	$r6,$r6,84(0x54)
1c0070b4:	0280c405 	addi.w	$r5,$r0,49(0x31)
1c0070b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0070bc:	02b79084 	addi.w	$r4,$r4,-540(0xde4)
1c0070c0:	57ab23ff 	bl	-21728(0xfffab20) # 1c001be0 <myprintf>
1c0070c4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0070c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0070cc:	03808184 	ori	$r4,$r12,0x20
1c0070d0:	57a59fff 	bl	-23140(0xfffa59c) # 1c00166c <EXTI_ClearITPendingBit>
1c0070d4:	03400000 	andi	$r0,$r0,0x0
1c0070d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0070dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0070e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0070e4:	4c000020 	jirl	$r0,$r1,0

1c0070e8 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0070e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0070ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0070f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0070f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0070f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0070fc:	028080c6 	addi.w	$r6,$r6,32(0x20)
1c007100:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c007104:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007108:	02b66084 	addi.w	$r4,$r4,-616(0xd98)
1c00710c:	57aad7ff 	bl	-21804(0xfffaad4) # 1c001be0 <myprintf>
1c007110:	02820005 	addi.w	$r5,$r0,128(0x80)
1c007114:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007118:	03808184 	ori	$r4,$r12,0x20
1c00711c:	57a553ff 	bl	-23216(0xfffa550) # 1c00166c <EXTI_ClearITPendingBit>
1c007120:	03400000 	andi	$r0,$r0,0x0
1c007124:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007128:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00712c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007130:	4c000020 	jirl	$r0,$r1,0

1c007134 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c007134:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007138:	29803061 	st.w	$r1,$r3,12(0xc)
1c00713c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007140:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007144:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007148:	02bfb0c6 	addi.w	$r6,$r6,-20(0xfec)
1c00714c:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c007150:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007154:	02b53084 	addi.w	$r4,$r4,-692(0xd4c)
1c007158:	57aa8bff 	bl	-21880(0xfffaa88) # 1c001be0 <myprintf>
1c00715c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c007160:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007164:	03808184 	ori	$r4,$r12,0x20
1c007168:	57a507ff 	bl	-23292(0xfffa504) # 1c00166c <EXTI_ClearITPendingBit>
1c00716c:	03400000 	andi	$r0,$r0,0x0
1c007170:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007174:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007178:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00717c:	4c000020 	jirl	$r0,$r1,0

1c007180 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c007180:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007184:	29803061 	st.w	$r1,$r3,12(0xc)
1c007188:	29802076 	st.w	$r22,$r3,8(0x8)
1c00718c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007190:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007194:	02bee0c6 	addi.w	$r6,$r6,-72(0xfb8)
1c007198:	02810805 	addi.w	$r5,$r0,66(0x42)
1c00719c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0071a0:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c0071a4:	57aa3fff 	bl	-21956(0xfffaa3c) # 1c001be0 <myprintf>
1c0071a8:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0071ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0071b0:	03808184 	ori	$r4,$r12,0x20
1c0071b4:	57a4bbff 	bl	-23368(0xfffa4b8) # 1c00166c <EXTI_ClearITPendingBit>
1c0071b8:	03400000 	andi	$r0,$r0,0x0
1c0071bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0071c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0071c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0071c8:	4c000020 	jirl	$r0,$r1,0

1c0071cc <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0071cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0071d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0071d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0071d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0071dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0071e0:	02be10c6 	addi.w	$r6,$r6,-124(0xf84)
1c0071e4:	02812005 	addi.w	$r5,$r0,72(0x48)
1c0071e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0071ec:	02b2d084 	addi.w	$r4,$r4,-844(0xcb4)
1c0071f0:	57a9f3ff 	bl	-22032(0xfffa9f0) # 1c001be0 <myprintf>
1c0071f4:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0071f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0071fc:	03808184 	ori	$r4,$r12,0x20
1c007200:	57a46fff 	bl	-23444(0xfffa46c) # 1c00166c <EXTI_ClearITPendingBit>
1c007204:	03400000 	andi	$r0,$r0,0x0
1c007208:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00720c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007210:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007214:	4c000020 	jirl	$r0,$r1,0

1c007218 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c007218:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00721c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007220:	29802076 	st.w	$r22,$r3,8(0x8)
1c007224:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007228:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00722c:	02bd40c6 	addi.w	$r6,$r6,-176(0xf50)
1c007230:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c007234:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007238:	02b1a084 	addi.w	$r4,$r4,-920(0xc68)
1c00723c:	57a9a7ff 	bl	-22108(0xfffa9a4) # 1c001be0 <myprintf>
1c007240:	03a00005 	ori	$r5,$r0,0x800
1c007244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007248:	03808184 	ori	$r4,$r12,0x20
1c00724c:	57a423ff 	bl	-23520(0xfffa420) # 1c00166c <EXTI_ClearITPendingBit>
1c007250:	03400000 	andi	$r0,$r0,0x0
1c007254:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007258:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00725c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007260:	4c000020 	jirl	$r0,$r1,0

1c007264 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c007264:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007268:	29803061 	st.w	$r1,$r3,12(0xc)
1c00726c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007274:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007278:	02bc70c6 	addi.w	$r6,$r6,-228(0xf1c)
1c00727c:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c007280:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007284:	02b07084 	addi.w	$r4,$r4,-996(0xc1c)
1c007288:	57a95bff 	bl	-22184(0xfffa958) # 1c001be0 <myprintf>
1c00728c:	14000025 	lu12i.w	$r5,1(0x1)
1c007290:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007294:	03808184 	ori	$r4,$r12,0x20
1c007298:	57a3d7ff 	bl	-23596(0xfffa3d4) # 1c00166c <EXTI_ClearITPendingBit>
1c00729c:	03400000 	andi	$r0,$r0,0x0
1c0072a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0072a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0072a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0072ac:	4c000020 	jirl	$r0,$r1,0

1c0072b0 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0072b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0072b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0072b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0072bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0072c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0072c4:	02bba0c6 	addi.w	$r6,$r6,-280(0xee8)
1c0072c8:	02816005 	addi.w	$r5,$r0,88(0x58)
1c0072cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0072d0:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c0072d4:	57a90fff 	bl	-22260(0xfffa90c) # 1c001be0 <myprintf>
1c0072d8:	14000045 	lu12i.w	$r5,2(0x2)
1c0072dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0072e0:	03808184 	ori	$r4,$r12,0x20
1c0072e4:	57a38bff 	bl	-23672(0xfffa388) # 1c00166c <EXTI_ClearITPendingBit>
1c0072e8:	03400000 	andi	$r0,$r0,0x0
1c0072ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0072f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0072f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0072f8:	4c000020 	jirl	$r0,$r1,0

1c0072fc <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0072fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007300:	29803061 	st.w	$r1,$r3,12(0xc)
1c007304:	29802076 	st.w	$r22,$r3,8(0x8)
1c007308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00730c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007310:	02bad0c6 	addi.w	$r6,$r6,-332(0xeb4)
1c007314:	02817805 	addi.w	$r5,$r0,94(0x5e)
1c007318:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00731c:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c007320:	57a8c3ff 	bl	-22336(0xfffa8c0) # 1c001be0 <myprintf>
1c007324:	14000085 	lu12i.w	$r5,4(0x4)
1c007328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00732c:	03808184 	ori	$r4,$r12,0x20
1c007330:	57a33fff 	bl	-23748(0xfffa33c) # 1c00166c <EXTI_ClearITPendingBit>
1c007334:	03400000 	andi	$r0,$r0,0x0
1c007338:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00733c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007340:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007344:	4c000020 	jirl	$r0,$r1,0

1c007348 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c007348:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00734c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007350:	29802076 	st.w	$r22,$r3,8(0x8)
1c007354:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007358:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00735c:	02ba00c6 	addi.w	$r6,$r6,-384(0xe80)
1c007360:	02819005 	addi.w	$r5,$r0,100(0x64)
1c007364:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007368:	02ace084 	addi.w	$r4,$r4,-1224(0xb38)
1c00736c:	57a877ff 	bl	-22412(0xfffa874) # 1c001be0 <myprintf>
1c007370:	14000105 	lu12i.w	$r5,8(0x8)
1c007374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007378:	03808184 	ori	$r4,$r12,0x20
1c00737c:	57a2f3ff 	bl	-23824(0xfffa2f0) # 1c00166c <EXTI_ClearITPendingBit>
1c007380:	03400000 	andi	$r0,$r0,0x0
1c007384:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007388:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00738c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007390:	4c000020 	jirl	$r0,$r1,0

1c007394 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c007394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00739c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0073a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0073a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0073a8:	02b930c6 	addi.w	$r6,$r6,-436(0xe4c)
1c0073ac:	0281ac05 	addi.w	$r5,$r0,107(0x6b)
1c0073b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0073b4:	02abb084 	addi.w	$r4,$r4,-1300(0xaec)
1c0073b8:	57a82bff 	bl	-22488(0xfffa828) # 1c001be0 <myprintf>
1c0073bc:	14000205 	lu12i.w	$r5,16(0x10)
1c0073c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0073c4:	03808184 	ori	$r4,$r12,0x20
1c0073c8:	57a2a7ff 	bl	-23900(0xfffa2a4) # 1c00166c <EXTI_ClearITPendingBit>
1c0073cc:	03400000 	andi	$r0,$r0,0x0
1c0073d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0073d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0073d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0073dc:	4c000020 	jirl	$r0,$r1,0

1c0073e0 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0073e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0073e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0073e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0073ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0073f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0073f4:	02b860c6 	addi.w	$r6,$r6,-488(0xe18)
1c0073f8:	0281c405 	addi.w	$r5,$r0,113(0x71)
1c0073fc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007400:	02aa8084 	addi.w	$r4,$r4,-1376(0xaa0)
1c007404:	57a7dfff 	bl	-22564(0xfffa7dc) # 1c001be0 <myprintf>
1c007408:	14000405 	lu12i.w	$r5,32(0x20)
1c00740c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007410:	03808184 	ori	$r4,$r12,0x20
1c007414:	57a25bff 	bl	-23976(0xfffa258) # 1c00166c <EXTI_ClearITPendingBit>
1c007418:	03400000 	andi	$r0,$r0,0x0
1c00741c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007420:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007424:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007428:	4c000020 	jirl	$r0,$r1,0

1c00742c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00742c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007430:	29803061 	st.w	$r1,$r3,12(0xc)
1c007434:	29802076 	st.w	$r22,$r3,8(0x8)
1c007438:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00743c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007440:	02b790c6 	addi.w	$r6,$r6,-540(0xde4)
1c007444:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c007448:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00744c:	02a95084 	addi.w	$r4,$r4,-1452(0xa54)
1c007450:	57a793ff 	bl	-22640(0xfffa790) # 1c001be0 <myprintf>
1c007454:	14000805 	lu12i.w	$r5,64(0x40)
1c007458:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00745c:	03808184 	ori	$r4,$r12,0x20
1c007460:	57a20fff 	bl	-24052(0xfffa20c) # 1c00166c <EXTI_ClearITPendingBit>
1c007464:	03400000 	andi	$r0,$r0,0x0
1c007468:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00746c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007470:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007474:	4c000020 	jirl	$r0,$r1,0

1c007478 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c007478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00747c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007480:	29802076 	st.w	$r22,$r3,8(0x8)
1c007484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007488:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00748c:	02b6c0c6 	addi.w	$r6,$r6,-592(0xdb0)
1c007490:	0281f405 	addi.w	$r5,$r0,125(0x7d)
1c007494:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007498:	02a82084 	addi.w	$r4,$r4,-1528(0xa08)
1c00749c:	57a747ff 	bl	-22716(0xfffa744) # 1c001be0 <myprintf>
1c0074a0:	14001005 	lu12i.w	$r5,128(0x80)
1c0074a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0074a8:	03808184 	ori	$r4,$r12,0x20
1c0074ac:	57a1c3ff 	bl	-24128(0xfffa1c0) # 1c00166c <EXTI_ClearITPendingBit>
1c0074b0:	03400000 	andi	$r0,$r0,0x0
1c0074b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0074b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0074bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0074c0:	4c000020 	jirl	$r0,$r1,0

1c0074c4 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0074c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0074c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0074cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0074d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0074d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0074d8:	02b5f0c6 	addi.w	$r6,$r6,-644(0xd7c)
1c0074dc:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c0074e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0074e4:	02a6f084 	addi.w	$r4,$r4,-1604(0x9bc)
1c0074e8:	57a6fbff 	bl	-22792(0xfffa6f8) # 1c001be0 <myprintf>
1c0074ec:	14002005 	lu12i.w	$r5,256(0x100)
1c0074f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0074f4:	03808184 	ori	$r4,$r12,0x20
1c0074f8:	57a177ff 	bl	-24204(0xfffa174) # 1c00166c <EXTI_ClearITPendingBit>
1c0074fc:	03400000 	andi	$r0,$r0,0x0
1c007500:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007504:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007508:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00750c:	4c000020 	jirl	$r0,$r1,0

1c007510 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c007510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007514:	29803061 	st.w	$r1,$r3,12(0xc)
1c007518:	29802076 	st.w	$r22,$r3,8(0x8)
1c00751c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007520:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007524:	02b520c6 	addi.w	$r6,$r6,-696(0xd48)
1c007528:	02822005 	addi.w	$r5,$r0,136(0x88)
1c00752c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007530:	02a5c084 	addi.w	$r4,$r4,-1680(0x970)
1c007534:	57a6afff 	bl	-22868(0xfffa6ac) # 1c001be0 <myprintf>
1c007538:	14004005 	lu12i.w	$r5,512(0x200)
1c00753c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007540:	03808184 	ori	$r4,$r12,0x20
1c007544:	57a12bff 	bl	-24280(0xfffa128) # 1c00166c <EXTI_ClearITPendingBit>
1c007548:	03400000 	andi	$r0,$r0,0x0
1c00754c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007550:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007558:	4c000020 	jirl	$r0,$r1,0

1c00755c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00755c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007560:	29803061 	st.w	$r1,$r3,12(0xc)
1c007564:	29802076 	st.w	$r22,$r3,8(0x8)
1c007568:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00756c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007570:	02b450c6 	addi.w	$r6,$r6,-748(0xd14)
1c007574:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c007578:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00757c:	02a49084 	addi.w	$r4,$r4,-1756(0x924)
1c007580:	57a663ff 	bl	-22944(0xfffa660) # 1c001be0 <myprintf>
1c007584:	14008005 	lu12i.w	$r5,1024(0x400)
1c007588:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00758c:	03808184 	ori	$r4,$r12,0x20
1c007590:	57a0dfff 	bl	-24356(0xfffa0dc) # 1c00166c <EXTI_ClearITPendingBit>
1c007594:	03400000 	andi	$r0,$r0,0x0
1c007598:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00759c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0075a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0075a4:	4c000020 	jirl	$r0,$r1,0

1c0075a8 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0075a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0075ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0075b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0075b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0075b8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0075bc:	02b380c6 	addi.w	$r6,$r6,-800(0xce0)
1c0075c0:	02824c05 	addi.w	$r5,$r0,147(0x93)
1c0075c4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0075c8:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c0075cc:	57a617ff 	bl	-23020(0xfffa614) # 1c001be0 <myprintf>
1c0075d0:	14010005 	lu12i.w	$r5,2048(0x800)
1c0075d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0075d8:	03808184 	ori	$r4,$r12,0x20
1c0075dc:	57a093ff 	bl	-24432(0xfffa090) # 1c00166c <EXTI_ClearITPendingBit>
1c0075e0:	03400000 	andi	$r0,$r0,0x0
1c0075e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0075e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0075ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0075f0:	4c000020 	jirl	$r0,$r1,0

1c0075f4 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0075f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0075f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0075fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c007600:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007604:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007608:	02b2b0c6 	addi.w	$r6,$r6,-852(0xcac)
1c00760c:	02826405 	addi.w	$r5,$r0,153(0x99)
1c007610:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007614:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c007618:	57a5cbff 	bl	-23096(0xfffa5c8) # 1c001be0 <myprintf>
1c00761c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c007620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007624:	03808184 	ori	$r4,$r12,0x20
1c007628:	57a047ff 	bl	-24508(0xfffa044) # 1c00166c <EXTI_ClearITPendingBit>
1c00762c:	03400000 	andi	$r0,$r0,0x0
1c007630:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007634:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007638:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00763c:	4c000020 	jirl	$r0,$r1,0

1c007640 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c007640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007644:	29803061 	st.w	$r1,$r3,12(0xc)
1c007648:	29802076 	st.w	$r22,$r3,8(0x8)
1c00764c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007650:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007654:	02b1e0c6 	addi.w	$r6,$r6,-904(0xc78)
1c007658:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c00765c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c007660:	02a10084 	addi.w	$r4,$r4,-1984(0x840)
1c007664:	57a57fff 	bl	-23172(0xfffa57c) # 1c001be0 <myprintf>
1c007668:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00766c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007670:	03808184 	ori	$r4,$r12,0x20
1c007674:	579ffbff 	bl	-24584(0xfff9ff8) # 1c00166c <EXTI_ClearITPendingBit>
1c007678:	03400000 	andi	$r0,$r0,0x0
1c00767c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007680:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007688:	4c000020 	jirl	$r0,$r1,0

1c00768c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c00768c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007690:	29803061 	st.w	$r1,$r3,12(0xc)
1c007694:	29802076 	st.w	$r22,$r3,8(0x8)
1c007698:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00769c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0076a0:	02b110c6 	addi.w	$r6,$r6,-956(0xc44)
1c0076a4:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0076a8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0076ac:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c0076b0:	57a533ff 	bl	-23248(0xfffa530) # 1c001be0 <myprintf>
1c0076b4:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0076b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0076bc:	03808184 	ori	$r4,$r12,0x20
1c0076c0:	579fafff 	bl	-24660(0xfff9fac) # 1c00166c <EXTI_ClearITPendingBit>
1c0076c4:	03400000 	andi	$r0,$r0,0x0
1c0076c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0076cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0076d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0076d4:	4c000020 	jirl	$r0,$r1,0

1c0076d8 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c0076d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0076dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0076e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0076e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0076e8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0076ec:	02b040c6 	addi.w	$r6,$r6,-1008(0xc10)
1c0076f0:	0282ac05 	addi.w	$r5,$r0,171(0xab)
1c0076f4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0076f8:	029ea084 	addi.w	$r4,$r4,1960(0x7a8)
1c0076fc:	57a4e7ff 	bl	-23324(0xfffa4e4) # 1c001be0 <myprintf>
1c007700:	14100005 	lu12i.w	$r5,32768(0x8000)
1c007704:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007708:	03808184 	ori	$r4,$r12,0x20
1c00770c:	579f63ff 	bl	-24736(0xfff9f60) # 1c00166c <EXTI_ClearITPendingBit>
1c007710:	03400000 	andi	$r0,$r0,0x0
1c007714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00771c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007720:	4c000020 	jirl	$r0,$r1,0

1c007724 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c007724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00772c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007734:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007738:	02af70c6 	addi.w	$r6,$r6,-1060(0xbdc)
1c00773c:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c007740:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007744:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c007748:	57a49bff 	bl	-23400(0xfffa498) # 1c001be0 <myprintf>
1c00774c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c007750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007754:	03808184 	ori	$r4,$r12,0x20
1c007758:	579f17ff 	bl	-24812(0xfff9f14) # 1c00166c <EXTI_ClearITPendingBit>
1c00775c:	03400000 	andi	$r0,$r0,0x0
1c007760:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007764:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007768:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00776c:	4c000020 	jirl	$r0,$r1,0

1c007770 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c007770:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007774:	29803061 	st.w	$r1,$r3,12(0xc)
1c007778:	29802076 	st.w	$r22,$r3,8(0x8)
1c00777c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007780:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007784:	02aea0c6 	addi.w	$r6,$r6,-1112(0xba8)
1c007788:	0282e005 	addi.w	$r5,$r0,184(0xb8)
1c00778c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007790:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c007794:	57a44fff 	bl	-23476(0xfffa44c) # 1c001be0 <myprintf>
1c007798:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00779c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077a0:	03808184 	ori	$r4,$r12,0x20
1c0077a4:	579ecbff 	bl	-24888(0xfff9ec8) # 1c00166c <EXTI_ClearITPendingBit>
1c0077a8:	03400000 	andi	$r0,$r0,0x0
1c0077ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0077b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0077b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0077b8:	4c000020 	jirl	$r0,$r1,0

1c0077bc <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0077bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0077c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0077c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0077c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0077cc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0077d0:	02add0c6 	addi.w	$r6,$r6,-1164(0xb74)
1c0077d4:	0282f805 	addi.w	$r5,$r0,190(0xbe)
1c0077d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0077dc:	029b1084 	addi.w	$r4,$r4,1732(0x6c4)
1c0077e0:	57a403ff 	bl	-23552(0xfffa400) # 1c001be0 <myprintf>
1c0077e4:	14800005 	lu12i.w	$r5,262144(0x40000)
1c0077e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0077ec:	03808184 	ori	$r4,$r12,0x20
1c0077f0:	579e7fff 	bl	-24964(0xfff9e7c) # 1c00166c <EXTI_ClearITPendingBit>
1c0077f4:	03400000 	andi	$r0,$r0,0x0
1c0077f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0077fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007800:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007804:	4c000020 	jirl	$r0,$r1,0

1c007808 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c007808:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00780c:	29803061 	st.w	$r1,$r3,12(0xc)
1c007810:	29802076 	st.w	$r22,$r3,8(0x8)
1c007814:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007818:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00781c:	02ad00c6 	addi.w	$r6,$r6,-1216(0xb40)
1c007820:	02831005 	addi.w	$r5,$r0,196(0xc4)
1c007824:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007828:	0299e084 	addi.w	$r4,$r4,1656(0x678)
1c00782c:	57a3b7ff 	bl	-23628(0xfffa3b4) # 1c001be0 <myprintf>
1c007830:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c007834:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007838:	03808184 	ori	$r4,$r12,0x20
1c00783c:	579e33ff 	bl	-25040(0xfff9e30) # 1c00166c <EXTI_ClearITPendingBit>
1c007840:	03400000 	andi	$r0,$r0,0x0
1c007844:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007848:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00784c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007850:	4c000020 	jirl	$r0,$r1,0

1c007854 <ext_handler>:
ext_handler():
1c007854:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007858:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00785c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007860:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007868:	0380f18c 	ori	$r12,$r12,0x3c
1c00786c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c007870:	2980018d 	st.w	$r13,$r12,0
1c007874:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007878:	02abf0c6 	addi.w	$r6,$r6,-1284(0xafc)
1c00787c:	0283c005 	addi.w	$r5,$r0,240(0xf0)
1c007880:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007884:	02987084 	addi.w	$r4,$r4,1564(0x61c)
1c007888:	57a35bff 	bl	-23720(0xfffa358) # 1c001be0 <myprintf>
1c00788c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007890:	0380818c 	ori	$r12,$r12,0x20
1c007894:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c007898:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00789c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0078a0:	0380818c 	ori	$r12,$r12,0x20
1c0078a4:	2880018c 	ld.w	$r12,$r12,0
1c0078a8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0078ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0078b0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0078b4:	0014b1ac 	and	$r12,$r13,$r12
1c0078b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0078bc:	03400000 	andi	$r0,$r0,0x0
1c0078c0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0078c4:	50004000 	b	64(0x40) # 1c007904 <ext_handler+0xb0>
1c0078c8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0078cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0078d0:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0078d4:	0340058c 	andi	$r12,$r12,0x1
1c0078d8:	40002180 	beqz	$r12,32(0x20) # 1c0078f8 <ext_handler+0xa4>
1c0078dc:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0078e0:	029b41ad 	addi.w	$r13,$r13,1744(0x6d0)
1c0078e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0078e8:	0040898c 	slli.w	$r12,$r12,0x2
1c0078ec:	001031ac 	add.w	$r12,$r13,$r12
1c0078f0:	2880018c 	ld.w	$r12,$r12,0
1c0078f4:	4c000181 	jirl	$r1,$r12,0
1c0078f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0078fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007900:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007904:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007908:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c00790c:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0078c8 <ext_handler+0x74>
1c007910:	03400000 	andi	$r0,$r0,0x0
1c007914:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007918:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00791c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007920:	4c000020 	jirl	$r0,$r1,0

1c007924 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c007924:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007928:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00792c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007930:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007934:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007938:	0380f18c 	ori	$r12,$r12,0x3c
1c00793c:	1400020d 	lu12i.w	$r13,16(0x10)
1c007940:	2980018d 	st.w	$r13,$r12,0
1c007944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007948:	0380118c 	ori	$r12,$r12,0x4
1c00794c:	2880018c 	ld.w	$r12,$r12,0
1c007950:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007954:	57b06bff 	bl	-20376(0xfffb068) # 1c0029bc <WDG_DogFeed>
1c007958:	03400000 	andi	$r0,$r0,0x0
1c00795c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007960:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007964:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007968:	4c000020 	jirl	$r0,$r1,0

1c00796c <TOUCH>:
TOUCH():
1c00796c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007970:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007974:	29806076 	st.w	$r22,$r3,24(0x18)
1c007978:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00797c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c007980:	0380118c 	ori	$r12,$r12,0x4
1c007984:	2880018c 	ld.w	$r12,$r12,0
1c007988:	0044c18c 	srli.w	$r12,$r12,0x10
1c00798c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007990:	037ffd8c 	andi	$r12,$r12,0xfff
1c007994:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c007998:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00799c:	0380118c 	ori	$r12,$r12,0x4
1c0079a0:	2880018c 	ld.w	$r12,$r12,0
1c0079a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0079a8:	03403d8c 	andi	$r12,$r12,0xf
1c0079ac:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c0079b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0079b4:	0380f18c 	ori	$r12,$r12,0x3c
1c0079b8:	1400040d 	lu12i.w	$r13,32(0x20)
1c0079bc:	2980018d 	st.w	$r13,$r12,0
1c0079c0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0079c4:	0380118c 	ori	$r12,$r12,0x4
1c0079c8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0079cc:	2980018d 	st.w	$r13,$r12,0
1c0079d0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0079d4:	00150185 	move	$r5,$r12
1c0079d8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0079dc:	02943084 	addi.w	$r4,$r4,1292(0x50c)
1c0079e0:	57a203ff 	bl	-24064(0xfffa200) # 1c001be0 <myprintf>
1c0079e4:	03400000 	andi	$r0,$r0,0x0
1c0079e8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0079ec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0079f0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0079f4:	4c000020 	jirl	$r0,$r1,0

1c0079f8 <UART2_INT>:
UART2_INT():
1c0079f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0079fc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c007a00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007a04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a08:	0380f18c 	ori	$r12,$r12,0x3c
1c007a0c:	1400080d 	lu12i.w	$r13,64(0x40)
1c007a10:	2980018d 	st.w	$r13,$r12,0
1c007a14:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c007a18:	0380098c 	ori	$r12,$r12,0x2
1c007a1c:	2a00018c 	ld.bu	$r12,$r12,0
1c007a20:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007a24:	03400000 	andi	$r0,$r0,0x0
1c007a28:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c007a2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007a30:	4c000020 	jirl	$r0,$r1,0

1c007a34 <BAT_FAIL>:
BAT_FAIL():
1c007a34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007a38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007a3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c007a40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a48:	0380118c 	ori	$r12,$r12,0x4
1c007a4c:	2880018c 	ld.w	$r12,$r12,0
1c007a50:	0044cd8c 	srli.w	$r12,$r12,0x13
1c007a54:	03407d8c 	andi	$r12,$r12,0x1f
1c007a58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c007a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a60:	0380118c 	ori	$r12,$r12,0x4
1c007a64:	2880018e 	ld.w	$r14,$r12,0
1c007a68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007a6c:	0380f18c 	ori	$r12,$r12,0x3c
1c007a70:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c007a74:	0014b5cd 	and	$r13,$r14,$r13
1c007a78:	2980018d 	st.w	$r13,$r12,0
1c007a7c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c007a80:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c007a84:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c007af4 <BAT_FAIL+0xc0>
1c007a88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c007a8c:	0040898d 	slli.w	$r13,$r12,0x2
1c007a90:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c007a94:	0296718c 	addi.w	$r12,$r12,1436(0x59c)
1c007a98:	001031ac 	add.w	$r12,$r13,$r12
1c007a9c:	2880018c 	ld.w	$r12,$r12,0
1c007aa0:	4c000180 	jirl	$r0,$r12,0
1c007aa4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007aa8:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c007aac:	57a137ff 	bl	-24268(0xfffa134) # 1c001be0 <myprintf>
1c007ab0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007ab4:	0380118c 	ori	$r12,$r12,0x4
1c007ab8:	29800180 	st.w	$r0,$r12,0
1c007abc:	50003c00 	b	60(0x3c) # 1c007af8 <BAT_FAIL+0xc4>
1c007ac0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007ac4:	0291b084 	addi.w	$r4,$r4,1132(0x46c)
1c007ac8:	57a11bff 	bl	-24296(0xfffa118) # 1c001be0 <myprintf>
1c007acc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007ad0:	0380118c 	ori	$r12,$r12,0x4
1c007ad4:	2880018e 	ld.w	$r14,$r12,0
1c007ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c007adc:	0380118c 	ori	$r12,$r12,0x4
1c007ae0:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c007ae4:	03bffdad 	ori	$r13,$r13,0xfff
1c007ae8:	0014b5cd 	and	$r13,$r14,$r13
1c007aec:	2980018d 	st.w	$r13,$r12,0
1c007af0:	50000800 	b	8(0x8) # 1c007af8 <BAT_FAIL+0xc4>
1c007af4:	03400000 	andi	$r0,$r0,0x0
1c007af8:	03400000 	andi	$r0,$r0,0x0
1c007afc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007b00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007b04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007b08:	4c000020 	jirl	$r0,$r1,0

1c007b0c <intc_handler>:
intc_handler():
1c007b0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007b10:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007b14:	29806076 	st.w	$r22,$r3,24(0x18)
1c007b18:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007b1c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007b20:	0380158c 	ori	$r12,$r12,0x5
1c007b24:	2a00018c 	ld.bu	$r12,$r12,0
1c007b28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c007b2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007b30:	0340058c 	andi	$r12,$r12,0x1
1c007b34:	40002980 	beqz	$r12,40(0x28) # 1c007b5c <intc_handler+0x50>
1c007b38:	02840004 	addi.w	$r4,$r0,256(0x100)
1c007b3c:	57bf77ff 	bl	-16524(0xfffbf74) # 1c003ab0 <TIM_GetITStatus>
1c007b40:	0015008c 	move	$r12,$r4
1c007b44:	40001980 	beqz	$r12,24(0x18) # 1c007b5c <intc_handler+0x50>
1c007b48:	02840004 	addi.w	$r4,$r0,256(0x100)
1c007b4c:	57bfb3ff 	bl	-16464(0xfffbfb0) # 1c003afc <TIM_ClearIT>
1c007b50:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007b54:	02900084 	addi.w	$r4,$r4,1024(0x400)
1c007b58:	57a08bff 	bl	-24440(0xfffa088) # 1c001be0 <myprintf>
1c007b5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007b60:	0340118c 	andi	$r12,$r12,0x4
1c007b64:	40003580 	beqz	$r12,52(0x34) # 1c007b98 <intc_handler+0x8c>
1c007b68:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c007b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c007b70:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c007b74:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c007b78:	00150185 	move	$r5,$r12
1c007b7c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007b80:	028ff084 	addi.w	$r4,$r4,1020(0x3fc)
1c007b84:	57a05fff 	bl	-24484(0xfffa05c) # 1c001be0 <myprintf>
1c007b88:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007b8c:	03800d8c 	ori	$r12,$r12,0x3
1c007b90:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c007b94:	2900018d 	st.b	$r13,$r12,0
1c007b98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c007b9c:	0340218c 	andi	$r12,$r12,0x8
1c007ba0:	40002d80 	beqz	$r12,44(0x2c) # 1c007bcc <intc_handler+0xc0>
1c007ba4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c007ba8:	2a00018c 	ld.bu	$r12,$r12,0
1c007bac:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c007bb0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c007bb4:	00150184 	move	$r4,$r12
1c007bb8:	57cc43ff 	bl	-13248(0xfffcc40) # 1c0047f8 <recv_dat_int>
1c007bbc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007bc0:	03800d8c 	ori	$r12,$r12,0x3
1c007bc4:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c007bc8:	2900018d 	st.b	$r13,$r12,0
1c007bcc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c007bd0:	03800d8c 	ori	$r12,$r12,0x3
1c007bd4:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c007bd8:	2900018d 	st.b	$r13,$r12,0
1c007bdc:	03400000 	andi	$r0,$r0,0x0
1c007be0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c007be4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c007be8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c007bec:	4c000020 	jirl	$r0,$r1,0

1c007bf0 <TIMER_HANDLER>:
TIMER_HANDLER():
1c007bf0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007bf4:	29803061 	st.w	$r1,$r3,12(0xc)
1c007bf8:	29802076 	st.w	$r22,$r3,8(0x8)
1c007bfc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007c00:	579797ff 	bl	-26732(0xfff9794) # 1c001394 <Set_Timer_clear>
1c007c04:	1c000024 	pcaddu12i	$r4,1(0x1)
1c007c08:	028e2084 	addi.w	$r4,$r4,904(0x388)
1c007c0c:	579fd7ff 	bl	-24620(0xfff9fd4) # 1c001be0 <myprintf>
1c007c10:	579767ff 	bl	-26780(0xfff9764) # 1c001374 <Set_Timer_stop>
1c007c14:	03400000 	andi	$r0,$r0,0x0
1c007c18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007c1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007c20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007c24:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007c40 <msg_wakeup>:
msg_wakeup():
1c007c40:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01e7a0 <_sidata+0x15424>
1c007c44:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007c49 <hexdecarr>:
hexdecarr():
1c007c49:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c007c4d:	37363534 	0x37363534
1c007c51:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfedd89 <_start-0x12277>
1c007c55:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfee1b9 <_start-0x11e47>
1c007c59:	00000000 	0x00000000
1c007c5d:	1c1c001e 	pcaddu12i	$r30,57344(0xe000)
1c007c61:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c65:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c69:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c6d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c71:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c75:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c79:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c7d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c81:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007c85:	181c001f 	pcaddi	$r31,57344(0xe000)
1c007c89:	a01c001e 	0xa01c001e
1c007c8d:	a01c001e 	0xa01c001e
1c007c91:	a01c001e 	0xa01c001e
1c007c95:	a01c001e 	0xa01c001e
1c007c99:	a01c001e 	0xa01c001e
1c007c9d:	a01c001e 	0xa01c001e
1c007ca1:	a01c001e 	0xa01c001e
1c007ca5:	a01c001e 	0xa01c001e
1c007ca9:	a01c001e 	0xa01c001e
1c007cad:	1c1c001e 	pcaddu12i	$r30,57344(0xe000)
1c007cb1:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cb5:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cb9:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cbd:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cc1:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cc5:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cc9:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007ccd:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cd1:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cd5:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cd9:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cdd:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007ce1:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007ce5:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007ce9:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007ced:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cf1:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cf5:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cf9:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007cfd:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d01:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d05:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d09:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d0d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d11:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d15:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d19:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d1d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d21:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d25:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d29:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d2d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d31:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d35:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d39:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d3d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d41:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d45:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d49:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d4d:	901c001f 	0x901c001f
1c007d51:	b81c001d 	0xb81c001d
1c007d55:	201c001c 	ll.w	$r28,$r0,7168(0x1c00)
1c007d59:	1c1c001d 	pcaddu12i	$r29,57344(0xe000)
1c007d5d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d61:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d65:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d69:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d6d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d71:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d75:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d79:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d7d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d81:	581c001f 	beq	$r0,$r31,7168(0x1c00) # 1c009981 <_sidata+0x605>
1c007d85:	c81c001d 	0xc81c001d
1c007d89:	1c1c001d 	pcaddu12i	$r29,57344(0xe000)
1c007d8d:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007d91:	8c1c001f 	0x8c1c001f
1c007d95:	1c1c001c 	pcaddu12i	$r28,57344(0xe000)
1c007d99:	e81c001f 	0xe81c001f
1c007d9d:	1c1c001c 	pcaddu12i	$r28,57344(0xe000)
1c007da1:	1c1c001f 	pcaddu12i	$r31,57344(0xe000)
1c007da5:	c81c001f 	0xc81c001f
1c007da9:	241c001d 	ldptr.w	$r29,$r0,7168(0x1c00)
1c007dad:	401c0030 	beqz	$r1,-4187136(0x401c00) # 1bc099ad <_start-0x3f6653>
1c007db1:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499b1 <_start-0x3b664f>
1c007db5:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499b5 <_start-0x3b664b>
1c007db9:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499b9 <_start-0x3b6647>
1c007dbd:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499bd <_start-0x3b6643>
1c007dc1:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499c1 <_start-0x3b663f>
1c007dc5:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499c5 <_start-0x3b663b>
1c007dc9:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499c9 <_start-0x3b6637>
1c007dcd:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499cd <_start-0x3b6633>
1c007dd1:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc499d1 <_start-0x3b662f>
1c007dd5:	3c1c0031 	0x3c1c0031
1c007dd9:	c41c0030 	0xc41c0030
1c007ddd:	c41c0030 	0xc41c0030
1c007de1:	c41c0030 	0xc41c0030
1c007de5:	c41c0030 	0xc41c0030
1c007de9:	c41c0030 	0xc41c0030
1c007ded:	c41c0030 	0xc41c0030
1c007df1:	c41c0030 	0xc41c0030
1c007df5:	c41c0030 	0xc41c0030
1c007df9:	c41c0030 	0xc41c0030
1c007dfd:	401c0030 	beqz	$r1,-4187136(0x401c00) # 1bc099fd <_start-0x3f6603>
1c007e01:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a01 <_start-0x3b65ff>
1c007e05:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a05 <_start-0x3b65fb>
1c007e09:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a09 <_start-0x3b65f7>
1c007e0d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a0d <_start-0x3b65f3>
1c007e11:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a11 <_start-0x3b65ef>
1c007e15:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a15 <_start-0x3b65eb>
1c007e19:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a19 <_start-0x3b65e7>
1c007e1d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a1d <_start-0x3b65e3>
1c007e21:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a21 <_start-0x3b65df>
1c007e25:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a25 <_start-0x3b65db>
1c007e29:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a29 <_start-0x3b65d7>
1c007e2d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a2d <_start-0x3b65d3>
1c007e31:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a31 <_start-0x3b65cf>
1c007e35:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a35 <_start-0x3b65cb>
1c007e39:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a39 <_start-0x3b65c7>
1c007e3d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a3d <_start-0x3b65c3>
1c007e41:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a41 <_start-0x3b65bf>
1c007e45:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a45 <_start-0x3b65bb>
1c007e49:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a49 <_start-0x3b65b7>
1c007e4d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a4d <_start-0x3b65b3>
1c007e51:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a51 <_start-0x3b65af>
1c007e55:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a55 <_start-0x3b65ab>
1c007e59:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a59 <_start-0x3b65a7>
1c007e5d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a5d <_start-0x3b65a3>
1c007e61:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a61 <_start-0x3b659f>
1c007e65:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a65 <_start-0x3b659b>
1c007e69:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a69 <_start-0x3b6597>
1c007e6d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a6d <_start-0x3b6593>
1c007e71:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a71 <_start-0x3b658f>
1c007e75:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a75 <_start-0x3b658b>
1c007e79:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a79 <_start-0x3b6587>
1c007e7d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a7d <_start-0x3b6583>
1c007e81:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a81 <_start-0x3b657f>
1c007e85:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a85 <_start-0x3b657b>
1c007e89:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a89 <_start-0x3b6577>
1c007e8d:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a8d <_start-0x3b6573>
1c007e91:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a91 <_start-0x3b656f>
1c007e95:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a95 <_start-0x3b656b>
1c007e99:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49a99 <_start-0x3b6567>
1c007e9d:	b41c0031 	0xb41c0031
1c007ea1:	dc1c002f 	0xdc1c002f
1c007ea5:	441c002e 	bnez	$r1,3677184(0x381c00) # 1c389aa5 <_sidata+0x380729>
1c007ea9:	401c002f 	beqz	$r1,3939328(0x3c1c00) # 1c3c9aa9 <_sidata+0x3c072d>
1c007ead:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49aad <_start-0x3b6553>
1c007eb1:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49ab1 <_start-0x3b654f>
1c007eb5:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49ab5 <_start-0x3b654b>
1c007eb9:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49ab9 <_start-0x3b6547>
1c007ebd:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49abd <_start-0x3b6543>
1c007ec1:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49ac1 <_start-0x3b653f>
1c007ec5:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49ac5 <_start-0x3b653b>
1c007ec9:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49ac9 <_start-0x3b6537>
1c007ecd:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49acd <_start-0x3b6533>
1c007ed1:	7c1c0031 	0x7c1c0031
1c007ed5:	ec1c002f 	0xec1c002f
1c007ed9:	401c002f 	beqz	$r1,3939328(0x3c1c00) # 1c3c9ad9 <_sidata+0x3c075d>
1c007edd:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49add <_start-0x3b6523>
1c007ee1:	b01c0031 	0xb01c0031
1c007ee5:	401c002e 	beqz	$r1,3677184(0x381c00) # 1c389ae5 <_sidata+0x380769>
1c007ee9:	0c1c0031 	0x0c1c0031
1c007eed:	401c002f 	beqz	$r1,3939328(0x3c1c00) # 1c3c9aed <_sidata+0x3c0771>
1c007ef1:	401c0031 	beqz	$r1,-3924992(0x441c00) # 1bc49af1 <_start-0x3b650f>
1c007ef5:	ec1c0031 	0xec1c0031
1c007ef9:	0d1c002f 	vbitsel.v	$vr15,$vr1,$vr0,$vr24
1c007efd:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01f11d <_sidata+0x15da1>
1c007f01:	76696563 	0x76696563
1c007f05:	64612065 	bge	$r3,$r5,24864(0x6120) # 1c00e025 <_sidata+0x4ca9>
1c007f09:	30207264 	vldrepl.w	$vr4,$r19,112(0x70)
1c007f0d:	32302578 	0x32302578
1c007f11:	000a0d78 	0x000a0d78
1c007f15:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007f19:	7274200a 	0x7274200a
1c007f1d:	20736e61 	ll.w	$r1,$r19,29548(0x736c)
1c007f21:	72646461 	0x72646461
1c007f25:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c007f29:	0d783230 	0x0d783230
1c007f2d:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c007f31:	6544200a 	bge	$r0,$r10,82976(0x14420) # 1c01c351 <_sidata+0x12fd5>
1c007f35:	65636976 	bge	$r11,$r22,90984(0x16368) # 1c01e29d <_sidata+0x14f21>
1c007f39:	6464415f 	bge	$r10,$r31,25664(0x6440) # 1c00e379 <_sidata+0x4ffd>
1c007f3d:	78303d72 	0x78303d72
1c007f41:	20783225 	ll.w	$r5,$r17,30768(0x7830)
1c007f45:	6454202c 	bge	$r1,$r12,21536(0x5420) # 1c00d365 <_sidata+0x3fe9>
1c007f49:	20617461 	ll.w	$r1,$r3,24948(0x6174)
1c007f4d:	7830203d 	0x7830203d
1c007f51:	00783225 	bstrins.w	$r5,$r17,0x18,0xc
1c007f55:	2d000000 	0x2d000000
1c007f59:	2d2d2d2d 	0x2d2d2d2d
1c007f5d:	61206f6e 	blt	$r27,$r14,73836(0x1206c) # 1c019fc9 <_sidata+0x10c4d>
1c007f61:	2d2d6b63 	0x2d2d6b63
1c007f65:	0d2d2d2d 	xvbitsel.v	$xr13,$xr9,$xr11,$xr26
1c007f69:	5700000a 	bl	2818048(0x2b0000) # 1c2b7f69 <_sidata+0x2aebed>
1c007f6d:	72646461 	0x72646461
1c007f71:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c007f75:	0d000078 	fsel	$f24,$f3,$f0,$fcc0
1c007f79:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01f199 <_sidata+0x15e1d>
1c007f7d:	44206461 	bnez	$r3,270436(0x42064) # 1c049fe1 <_sidata+0x40c65>
1c007f81:	63697665 	blt	$r19,$r5,-38540(0x36974) # 1bffe8f5 <_start-0x170b>
1c007f85:	64415f65 	bge	$r27,$r5,16732(0x415c) # 1c00c0e1 <_sidata+0x2d65>
1c007f89:	303d7264 	0x303d7264
1c007f8d:	78322578 	0x78322578
1c007f91:	0a000020 	0x0a000020
1c007f95:	206f6e20 	ll.w	$r0,$r17,28524(0x6f6c)
1c007f99:	206b6361 	ll.w	$r1,$r27,27488(0x6b60)
1c007f9d:	5200000a 	b	2752512(0x2a0000) # 1c2a7f9d <_sidata+0x29ec21>
1c007fa1:	72646461 	0x72646461
1c007fa5:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c007fa9:	09000078 	0x09000078
1c007fad:	0a006425 	0x0a006425
1c007fb1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007fb5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007fb9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007fbd:	0050550a 	0x0050550a
1c007fc1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007fc5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00f511 <_sidata+0x6195>
1c007fc9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c007fcd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007fd1:	756f430a 	0x756f430a
1c007fd5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007fd9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c007fdd:	3030090a 	0x3030090a
1c007fe1:	09313009 	0x09313009
1c007fe5:	30093230 	0x30093230
1c007fe9:	34300933 	0x34300933
1c007fed:	09353009 	0x09353009
1c007ff1:	30093630 	0x30093630
1c007ff5:	38300937 	fldx.s	$f23,$r9,$r2
1c007ff9:	09393009 	0x09393009
1c007ffd:	31093031 	0x31093031
1c008001:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c008005:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c008009:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00e15d <_sidata+0x4de1>
1c00800d:	09000000 	0x09000000
1c008011:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c008015:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c008019:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfef569 <_start-0x10a97>
1c00801d:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c008021:	09000000 	0x09000000
1c008025:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c008029:	09000000 	0x09000000
1c00802d:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c008031:	0a000000 	0x0a000000
1c008035:	56746e43 	bl	-116493204(0x90e746c) # 150ef4a1 <_start-0x6f10b5f>
1c008039:	2d006c61 	0x2d006c61
1c00803d:	4b2d2d2d 	bcnez	$fcc1,3616044(0x372d2c) # 1c37ad69 <_sidata+0x3719ed>
1c008041:	79547965 	0x79547965
1c008045:	203a6570 	ll.w	$r16,$r11,14948(0x3a64)
1c008049:	78257830 	0x78257830
1c00804d:	65000000 	bge	$r0,$r0,65536(0x10000) # 1c01804d <_sidata+0xecd1>
1c008051:	00746978 	bstrins.w	$r24,$r11,0x14,0x1a
1c008055:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8055 <_start-0x7fab>
1c008059:	74697865 	xvavgr.w	$xr5,$xr3,$xr30
1c00805d:	0000005d 	0x0000005d
1c008061:	64000000 	bge	$r0,$r0,0 # 1c008061 <hexdecarr+0x418>
1c008065:	5b000031 	beq	$r1,$r17,-65536(0x30000) # 1bff8065 <_start-0x7f9b>
1c008069:	3c203164 	0x3c203164
1c00806d:	72646461 	0x72646461
1c008071:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfebc91 <_start-0x1436f>
1c008075:	5d3e6d75 	bne	$r11,$r21,81516(0x13e6c) # 1c01bee1 <_sidata+0x12b65>
1c008079:	2d000000 	0x2d000000
1c00807d:	6d75642d 	bgeu	$r1,$r13,95588(0x17564) # 1c01f5e1 <_sidata+0x16265>
1c008081:	64612070 	bge	$r3,$r16,24864(0x6120) # 1c00e1a1 <_sidata+0x4e25>
1c008085:	73657264 	vssrani.wu.d	$vr4,$vr19,0x1c
1c008089:	79622073 	0x79622073
1c00808d:	64006574 	bge	$r11,$r20,100(0x64) # 1c0080f1 <hexdecarr+0x4a8>
1c008091:	5b000034 	beq	$r1,$r20,-65536(0x30000) # 1bff8091 <_start-0x7f6f>
1c008095:	3c203464 	0x3c203464
1c008099:	72646461 	0x72646461
1c00809d:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfebcbd <_start-0x14343>
1c0080a1:	5d3e6d75 	bne	$r11,$r21,81516(0x13e6c) # 1c01bf0d <_sidata+0x12b91>
1c0080a5:	2d000000 	0x2d000000
1c0080a9:	6d75642d 	bgeu	$r1,$r13,95588(0x17564) # 1c01f60d <_sidata+0x16291>
1c0080ad:	64612070 	bge	$r3,$r16,24864(0x6120) # 1c00e1cd <_sidata+0x4e51>
1c0080b1:	73657264 	vssrani.wu.d	$vr4,$vr19,0x1c
1c0080b5:	6f772073 	bgeu	$r3,$r19,-35040(0x37720) # 1bfff7d5 <_start-0x82b>
1c0080b9:	68006472 	bltu	$r3,$r18,100(0x64) # 1c00811d <hexdecarr+0x4d4>
1c0080bd:	00706c65 	bstrins.w	$r5,$r3,0x10,0x1b
1c0080c1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff80c1 <_start-0x7f3f>
1c0080c5:	706c6568 	0x706c6568
1c0080c9:	6f633c20 	bgeu	$r1,$r0,-40132(0x3633c) # 1bffe405 <_start-0x1bfb>
1c0080cd:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # 1bfee239 <_start-0x11dc7>
1c0080d1:	005d3e64 	0x005d3e64
1c0080d5:	2d000000 	0x2d000000
1c0080d9:	646d632d 	bge	$r25,$r13,28000(0x6d60) # 1c00ee39 <_sidata+0x5abd>
1c0080dd:	73696c20 	vssrarni.w.d	$vr0,$vr1,0x1b
1c0080e1:	6d000074 	bgeu	$r3,$r20,65536(0x10000) # 1c0180e1 <_sidata+0xed65>
1c0080e5:	5b000031 	beq	$r1,$r17,-65536(0x30000) # 1bff80e5 <_start-0x7f1b>
1c0080e9:	3c20316d 	0x3c20316d
1c0080ed:	72646461 	0x72646461
1c0080f1:	763c203e 	0x763c203e
1c0080f5:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c01f661 <_sidata+0x162e5>
1c0080f9:	2d005d3e 	0x2d005d3e
1c0080fd:	646f6d2d 	bge	$r9,$r13,28524(0x6f6c) # 1c00f069 <_sidata+0x5ced>
1c008101:	20796669 	ll.w	$r9,$r19,31076(0x7964)
1c008105:	72646461 	0x72646461
1c008109:	20737365 	ll.w	$r5,$r27,29552(0x7370)
1c00810d:	65747962 	bge	$r11,$r2,95352(0x17478) # 1c01f585 <_sidata+0x16209>
1c008111:	6d000000 	bgeu	$r0,$r0,65536(0x10000) # 1c018111 <_sidata+0xed95>
1c008115:	5b000034 	beq	$r1,$r20,-65536(0x30000) # 1bff8115 <_start-0x7eeb>
1c008119:	3c20346d 	0x3c20346d
1c00811d:	72646461 	0x72646461
1c008121:	763c203e 	0x763c203e
1c008125:	65756c61 	bge	$r3,$r1,95596(0x1756c) # 1c01f691 <_sidata+0x16315>
1c008129:	2d005d3e 	0x2d005d3e
1c00812d:	646f6d2d 	bge	$r9,$r13,28524(0x6f6c) # 1c00f099 <_sidata+0x5d1d>
1c008131:	20796669 	ll.w	$r9,$r19,31076(0x7964)
1c008135:	72646461 	0x72646461
1c008139:	20737365 	ll.w	$r5,$r27,29552(0x7370)
1c00813d:	64726f77 	bge	$r27,$r23,29292(0x726c) # 1c00f3a9 <_sidata+0x602d>
1c008141:	76000000 	0x76000000
1c008145:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8145 <_start-0x7ebb>
1c008149:	2d005d76 	0x2d005d76
1c00814d:	0031762d 	0x0031762d
1c008151:	74000000 	xvseq.b	$xr0,$xr0,$xr0
1c008155:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00e4c9 <_sidata+0x514d>
1c008159:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8159 <_start-0x7ea7>
1c00815d:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfff6c9 <_start-0x937>
1c008161:	68005d68 	bltu	$r11,$r8,92(0x5c) # 1c0081bd <hexdecarr+0x574>
1c008165:	00746570 	bstrins.w	$r16,$r11,0x14,0x19
1c008169:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8169 <_start-0x7e97>
1c00816d:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01eed5 <_sidata+0x15b59>
1c008171:	65742072 	bge	$r3,$r18,95264(0x17420) # 1c01f591 <_sidata+0x16215>
1c008175:	005d7473 	0x005d7473
1c008179:	6c000000 	bgeu	$r0,$r0,0 # 1c008179 <hexdecarr+0x530>
1c00817d:	6d697461 	bgeu	$r3,$r1,92532(0x16974) # 1c01eaf1 <_sidata+0x15775>
1c008181:	5b007265 	beq	$r19,$r5,-65424(0x30070) # 1bff81f1 <_start-0x7e0f>
1c008185:	65726f63 	bge	$r27,$r3,94828(0x1726c) # 1c01f3f1 <_sidata+0x16075>
1c008189:	6d697420 	bgeu	$r1,$r0,92532(0x16974) # 1c01eafd <_sidata+0x15781>
1c00818d:	74207265 	xvsubwev.h.b	$xr5,$xr19,$xr28
1c008191:	5d747365 	bne	$r27,$r5,95344(0x17470) # 1c01f601 <_sidata+0x16285>
1c008195:	64000000 	bge	$r0,$r0,0 # 1c008195 <hexdecarr+0x54c>
1c008199:	79616c65 	0x79616c65
1c00819d:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff819d <_start-0x7e63>
1c0081a1:	616c6564 	blt	$r11,$r4,93284(0x16c64) # 1c01ee05 <_sidata+0x15a89>
1c0081a5:	65742079 	bge	$r3,$r25,95264(0x17420) # 1c01f5c5 <_sidata+0x16249>
1c0081a9:	005d7473 	0x005d7473
1c0081ad:	77000000 	0x77000000
1c0081b1:	75656b61 	0x75656b61
1c0081b5:	5b000070 	beq	$r3,$r16,-65536(0x30000) # 1bff81b5 <_start-0x7e4b>
1c0081b9:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01ed19 <_sidata+0x1599d>
1c0081bd:	74207075 	xvsubwev.h.b	$xr21,$xr3,$xr28
1c0081c1:	5d747365 	bne	$r27,$r5,95344(0x17470) # 1c01f631 <_sidata+0x162b5>
1c0081c5:	64000000 	bge	$r0,$r0,0 # 1c0081c5 <hexdecarr+0x57c>
1c0081c9:	00657461 	bstrins.w	$r1,$r3,0x5,0x1d
1c0081cd:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff81cd <_start-0x7e33>
1c0081d1:	20637472 	ll.w	$r18,$r3,25460(0x6374)
1c0081d5:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0081d9:	7700005d 	0x7700005d
1c0081dd:	5b006764 	beq	$r27,$r4,-65436(0x30064) # 1bff8241 <_start-0x7dbf>
1c0081e1:	20676477 	ll.w	$r23,$r3,26468(0x6764)
1c0081e5:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c0081e9:	6900005d 	bltu	$r2,$r29,65536(0x10000) # 1c0181e9 <_sidata+0xee6d>
1c0081ed:	00706332 	bstrins.w	$r18,$r25,0x10,0x18
1c0081f1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff81f1 <_start-0x7e0f>
1c0081f5:	70633269 	vabsd.wu	$vr9,$vr19,$vr12
1c0081f9:	72703c20 	0x72703c20
1c0081fd:	61637365 	blt	$r27,$r5,90992(0x16370) # 1c01e56d <_sidata+0x151f1>
1c008201:	5d3e656c 	bne	$r11,$r12,81508(0x13e64) # 1c01c065 <_sidata+0x12ce9>
1c008205:	2d000000 	0x2d000000
1c008209:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb471 <_start-0x4b8f>
1c00820d:	65727020 	bge	$r1,$r0,94832(0x17270) # 1c01f47d <_sidata+0x16101>
1c008211:	6c616373 	bgeu	$r27,$r19,24928(0x6160) # 1c00e371 <_sidata+0x4ff5>
1c008215:	69000065 	bltu	$r3,$r5,65536(0x10000) # 1c018215 <_sidata+0xee99>
1c008219:	00776332 	bstrins.w	$r18,$r25,0x17,0x18
1c00821d:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff821d <_start-0x7de3>
1c008221:	77633269 	xvssrani.d.q	$xr9,$xr19,0x4c
1c008225:	68633c20 	bltu	$r1,$r0,25404(0x633c) # 1c00e561 <_sidata+0x51e5>
1c008229:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00e399 <_sidata+0x501d>
1c00822d:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c008231:	6765723c 	bge	$r17,$r28,-39568(0x36570) # 1bffe7a1 <_start-0x185f>
1c008235:	72646461 	0x72646461
1c008239:	773c203e 	0x773c203e
1c00823d:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c01f69d <_sidata+0x16321>
1c008241:	2d005d3e 	0x2d005d3e
1c008245:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb4ad <_start-0x4b53>
1c008249:	69727720 	bltu	$r25,$r0,94836(0x17274) # 1c01f4bd <_sidata+0x16141>
1c00824d:	69006574 	bltu	$r11,$r20,65636(0x10064) # 1c0182b1 <_sidata+0xef35>
1c008251:	00726332 	bstrins.w	$r18,$r25,0x12,0x18
1c008255:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8255 <_start-0x7dab>
1c008259:	72633269 	0x72633269
1c00825d:	68633c20 	bltu	$r1,$r0,25404(0x633c) # 1c00e599 <_sidata+0x521d>
1c008261:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00e3d1 <_sidata+0x5055>
1c008265:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c008269:	6765723c 	bge	$r17,$r28,-39568(0x36570) # 1bffe7d9 <_start-0x1827>
1c00826d:	72646461 	0x72646461
1c008271:	2d005d3e 	0x2d005d3e
1c008275:	6332692d 	blt	$r9,$r13,-52632(0x33268) # 1bffb4dd <_start-0x4b23>
1c008279:	61657220 	blt	$r17,$r0,91504(0x16570) # 1c01e7e9 <_sidata+0x1546d>
1c00827d:	61000064 	blt	$r3,$r4,65536(0x10000) # 1c01827d <_sidata+0xef01>
1c008281:	5b006364 	beq	$r27,$r4,-65440(0x30060) # 1bff82e1 <_start-0x7d1f>
1c008285:	5d636461 	bne	$r3,$r1,90980(0x16364) # 1c01e5e9 <_sidata+0x1526d>
1c008289:	2d000000 	0x2d000000
1c00828d:	6364612d 	blt	$r9,$r13,-39840(0x36460) # 1bffe6ed <_start-0x1913>
1c008291:	62000000 	blt	$r0,$r0,-131072(0x20000) # 1bfe8291 <_start-0x17d6f>
1c008295:	65647461 	bge	$r3,$r1,91252(0x16474) # 1c01e709 <_sidata+0x1538d>
1c008299:	5b000074 	beq	$r3,$r20,-65536(0x30000) # 1bff8299 <_start-0x7d67>
1c00829d:	64746162 	bge	$r11,$r2,29792(0x7460) # 1c00f6fd <_sidata+0x6381>
1c0082a1:	3c207465 	0x3c207465
1c0082a5:	005d3e6e 	0x005d3e6e
1c0082a9:	63000000 	blt	$r0,$r0,-65536(0x30000) # 1bff82a9 <_start-0x7d57>
1c0082ad:	0079706f 	bstrins.w	$r15,$r3,0x19,0x1c
1c0082b1:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff82b1 <_start-0x7d4f>
1c0082b5:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffec25 <_start-0x13db>
1c0082b9:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c0082bd:	693e3d68 	bltu	$r11,$r8,81468(0x13e3c) # 1c01c0f9 <_sidata+0x12d7d>
1c0082c1:	6c665f6e 	bgeu	$r27,$r14,26204(0x665c) # 1c00e91d <_sidata+0x55a1>
1c0082c5:	5d687361 	bne	$r27,$r1,92272(0x16870) # 1c01eb35 <_sidata+0x157b9>
1c0082c9:	63000000 	blt	$r0,$r0,-65536(0x30000) # 1bff82c9 <_start-0x7d37>
1c0082cd:	5f79706f 	bne	$r3,$r15,-34448(0x37970) # 1bfffc3d <_start-0x3c3>
1c0082d1:	6d617269 	bgeu	$r19,$r9,90480(0x16170) # 1c01e441 <_sidata+0x150c5>
1c0082d5:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff82d5 <_start-0x7d2b>
1c0082d9:	79706f63 	0x79706f63
1c0082dd:	2d00005d 	0x2d00005d
1c0082e1:	7461622d 	xvabsd.w	$xr13,$xr17,$xr24
1c0082e5:	20746564 	ll.w	$r4,$r11,29796(0x7464)
1c0082e9:	003e6e3c 	0x003e6e3c
1c0082ed:	75000000 	0x75000000
1c0082f1:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c0082f5:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff82f5 <_start-0x7d0b>
1c0082f9:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c0082fd:	696e6920 	bltu	$r9,$r0,93800(0x16e68) # 1c01f165 <_sidata+0x15de9>
1c008301:	73005d74 	0x73005d74
1c008305:	696e6970 	bltu	$r11,$r16,93800(0x16e68) # 1c01f16d <_sidata+0x15df1>
1c008309:	5b000074 	beq	$r3,$r20,-65536(0x30000) # 1bff8309 <_start-0x7cf7>
1c00830d:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffec7d <_start-0x1383>
1c008311:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c008315:	7300005d 	0x7300005d
1c008319:	61726570 	blt	$r11,$r16,94820(0x17264) # 1c01f57d <_sidata+0x16201>
1c00831d:	5b006573 	beq	$r11,$r19,-65436(0x30064) # 1bff8381 <_start-0x7c7f>
1c008321:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffec91 <_start-0x136f>
1c008325:	73617265 	vssrani.w.d	$vr5,$vr19,0x1c
1c008329:	73005d65 	0x73005d65
1c00832d:	00727770 	bstrins.w	$r16,$r27,0x12,0x1d
1c008331:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8331 <_start-0x7ccf>
1c008335:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeca5 <_start-0x135b>
1c008339:	74697277 	xvavgr.w	$xr23,$xr19,$xr28
1c00833d:	73005d65 	0x73005d65
1c008341:	00647270 	bstrins.w	$r16,$r19,0x4,0x1c
1c008345:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8345 <_start-0x7cbb>
1c008349:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffecb9 <_start-0x1347>
1c00834d:	64616572 	bge	$r11,$r18,24932(0x6164) # 1c00e4b1 <_sidata+0x5135>
1c008351:	7300005d 	0x7300005d
1c008355:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c008359:	5b000068 	beq	$r3,$r8,-65536(0x30000) # 1bff8359 <_start-0x7ca7>
1c00835d:	5f697073 	bne	$r3,$r19,-38544(0x36970) # 1bffeccd <_start-0x1333>
1c008361:	73616c66 	vssrani.w.d	$vr6,$vr3,0x1b
1c008365:	67005d68 	bge	$r11,$r8,-65444(0x3005c) # 1bff83c1 <_start-0x7c3f>
1c008369:	5f6f6970 	bne	$r11,$r16,-37016(0x36f68) # 1bfff2d1 <_start-0xd2f>
1c00836d:	00746e69 	bstrins.w	$r9,$r19,0x14,0x1b
1c008371:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8371 <_start-0x7c8f>
1c008375:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f7ed <_sidata+0x16471>
1c008379:	7400005d 	xvseq.b	$xr29,$xr2,$xr0
1c00837d:	4e000000 	jirl	$r0,$r0,-131072(0x20000)
1c008381:	004c4c55 	0x004c4c55
1c008385:	5b000000 	beq	$r0,$r0,-65536(0x30000) # 1bff8385 <_start-0x7c7b>
1c008389:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c00838d:	 	b	24379392(0x1740000) # 1d74838d <_sidata+0x173f011>

1c008390 <cmd>:
1c008390:	1c008050 	pcaddu12i	$r16,1026(0x402)
1c008394:	1c0042e8 	pcaddu12i	$r8,535(0x217)
1c008398:	1c008058 	pcaddu12i	$r24,1026(0x402)
1c00839c:	1c008060 	pcaddu12i	$r0,1027(0x403)
1c0083a0:	1c008064 	pcaddu12i	$r4,1027(0x403)
1c0083a4:	1c004970 	pcaddu12i	$r16,587(0x24b)
1c0083a8:	1c008068 	pcaddu12i	$r8,1027(0x403)
1c0083ac:	1c00807c 	pcaddu12i	$r28,1027(0x403)
1c0083b0:	1c008090 	pcaddu12i	$r16,1028(0x404)
1c0083b4:	1c004a84 	pcaddu12i	$r4,596(0x254)
1c0083b8:	1c008094 	pcaddu12i	$r20,1028(0x404)
1c0083bc:	1c0080a8 	pcaddu12i	$r8,1029(0x405)
1c0083c0:	1c0080bc 	pcaddu12i	$r28,1029(0x405)
1c0083c4:	1c004310 	pcaddu12i	$r16,536(0x218)
1c0083c8:	1c0080c4 	pcaddu12i	$r4,1030(0x406)
1c0083cc:	1c0080d8 	pcaddu12i	$r24,1030(0x406)
1c0083d0:	1c0080e4 	pcaddu12i	$r4,1031(0x407)
1c0083d4:	1c004ba4 	pcaddu12i	$r4,605(0x25d)
1c0083d8:	1c0080e8 	pcaddu12i	$r8,1031(0x407)
1c0083dc:	1c0080fc 	pcaddu12i	$r28,1031(0x407)
1c0083e0:	1c008114 	pcaddu12i	$r20,1032(0x408)
1c0083e4:	1c004c34 	pcaddu12i	$r20,609(0x261)
1c0083e8:	1c008118 	pcaddu12i	$r24,1032(0x408)
1c0083ec:	1c00812c 	pcaddu12i	$r12,1033(0x409)
1c0083f0:	1c008144 	pcaddu12i	$r4,1034(0x40a)
1c0083f4:	1c004ed4 	pcaddu12i	$r20,630(0x276)
1c0083f8:	1c008148 	pcaddu12i	$r8,1034(0x40a)
1c0083fc:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008400:	1c008154 	pcaddu12i	$r20,1034(0x40a)
1c008404:	1c005154 	pcaddu12i	$r20,650(0x28a)
1c008408:	1c00815c 	pcaddu12i	$r28,1034(0x40a)
1c00840c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008410:	1c008164 	pcaddu12i	$r4,1035(0x40b)
1c008414:	1c005408 	pcaddu12i	$r8,672(0x2a0)
1c008418:	1c00816c 	pcaddu12i	$r12,1035(0x40b)
1c00841c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008420:	1c00817c 	pcaddu12i	$r28,1035(0x40b)
1c008424:	1c005508 	pcaddu12i	$r8,680(0x2a8)
1c008428:	1c008184 	pcaddu12i	$r4,1036(0x40c)
1c00842c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008430:	1c008198 	pcaddu12i	$r24,1036(0x40c)
1c008434:	1c00559c 	pcaddu12i	$r28,684(0x2ac)
1c008438:	1c0081a0 	pcaddu12i	$r0,1037(0x40d)
1c00843c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008440:	1c0081b0 	pcaddu12i	$r16,1037(0x40d)
1c008444:	1c0056a0 	pcaddu12i	$r0,693(0x2b5)
1c008448:	1c0081b8 	pcaddu12i	$r24,1037(0x40d)
1c00844c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008450:	1c0081c8 	pcaddu12i	$r8,1038(0x40e)
1c008454:	1c005790 	pcaddu12i	$r16,700(0x2bc)
1c008458:	1c0081d0 	pcaddu12i	$r16,1038(0x40e)
1c00845c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008460:	1c0081dc 	pcaddu12i	$r28,1038(0x40e)
1c008464:	1c005eb0 	pcaddu12i	$r16,757(0x2f5)
1c008468:	1c0081e0 	pcaddu12i	$r0,1039(0x40f)
1c00846c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008470:	1c0081ec 	pcaddu12i	$r12,1039(0x40f)
1c008474:	1c005f34 	pcaddu12i	$r20,761(0x2f9)
1c008478:	1c0081f4 	pcaddu12i	$r20,1039(0x40f)
1c00847c:	1c008208 	pcaddu12i	$r8,1040(0x410)
1c008480:	1c008218 	pcaddu12i	$r24,1040(0x410)
1c008484:	1c005f80 	pcaddu12i	$r0,764(0x2fc)
1c008488:	1c008220 	pcaddu12i	$r0,1041(0x411)
1c00848c:	1c008244 	pcaddu12i	$r4,1042(0x412)
1c008490:	1c008250 	pcaddu12i	$r16,1042(0x412)
1c008494:	1c00608c 	pcaddu12i	$r12,772(0x304)
1c008498:	1c008258 	pcaddu12i	$r24,1042(0x412)
1c00849c:	1c008274 	pcaddu12i	$r20,1043(0x413)
1c0084a0:	1c008280 	pcaddu12i	$r0,1044(0x414)
1c0084a4:	1c00616c 	pcaddu12i	$r12,779(0x30b)
1c0084a8:	1c008284 	pcaddu12i	$r4,1044(0x414)
1c0084ac:	1c00828c 	pcaddu12i	$r12,1044(0x414)
1c0084b0:	1c008294 	pcaddu12i	$r20,1044(0x414)
1c0084b4:	1c006310 	pcaddu12i	$r16,792(0x318)
1c0084b8:	1c00829c 	pcaddu12i	$r28,1044(0x414)
1c0084bc:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c0084c0:	1c0082ac 	pcaddu12i	$r12,1045(0x415)
1c0084c4:	1c006480 	pcaddu12i	$r0,804(0x324)
1c0084c8:	1c0082b4 	pcaddu12i	$r20,1045(0x415)
1c0084cc:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c0084d0:	1c0082cc 	pcaddu12i	$r12,1046(0x416)
1c0084d4:	1c006d9c 	pcaddu12i	$r28,876(0x36c)
1c0084d8:	1c0082d8 	pcaddu12i	$r24,1046(0x416)
1c0084dc:	1c0082e0 	pcaddu12i	$r0,1047(0x417)
1c0084e0:	1c0082f0 	pcaddu12i	$r16,1047(0x417)
1c0084e4:	1c006610 	pcaddu12i	$r16,816(0x330)
1c0084e8:	1c0082f8 	pcaddu12i	$r24,1047(0x417)
1c0084ec:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c0084f0:	1c008304 	pcaddu12i	$r4,1048(0x418)
1c0084f4:	1c0066bc 	pcaddu12i	$r28,821(0x335)
1c0084f8:	1c00830c 	pcaddu12i	$r12,1048(0x418)
1c0084fc:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008500:	1c008318 	pcaddu12i	$r24,1048(0x418)
1c008504:	1c0069c4 	pcaddu12i	$r4,846(0x34e)
1c008508:	1c008320 	pcaddu12i	$r0,1049(0x419)
1c00850c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008510:	1c00832c 	pcaddu12i	$r12,1049(0x419)
1c008514:	1c006724 	pcaddu12i	$r4,825(0x339)
1c008518:	1c008334 	pcaddu12i	$r20,1049(0x419)
1c00851c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008520:	1c008340 	pcaddu12i	$r0,1050(0x41a)
1c008524:	1c006854 	pcaddu12i	$r20,834(0x342)
1c008528:	1c008348 	pcaddu12i	$r8,1050(0x41a)
1c00852c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008530:	1c008354 	pcaddu12i	$r20,1050(0x41a)
1c008534:	1c006a54 	pcaddu12i	$r20,850(0x352)
1c008538:	1c00835c 	pcaddu12i	$r28,1050(0x41a)
1c00853c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008540:	1c008368 	pcaddu12i	$r8,1051(0x41b)
1c008544:	1c006d3c 	pcaddu12i	$r28,873(0x369)
1c008548:	1c008374 	pcaddu12i	$r20,1051(0x41b)
1c00854c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008550:	1c00837c 	pcaddu12i	$r28,1051(0x41b)
1c008554:	1c006d70 	pcaddu12i	$r16,875(0x36b)
1c008558:	1c008374 	pcaddu12i	$r20,1051(0x41b)
1c00855c:	1c00814c 	pcaddu12i	$r12,1034(0x40a)
1c008560:	1c008380 	pcaddu12i	$r0,1052(0x41c)
1c008564:	1c004950 	pcaddu12i	$r16,586(0x24a)
1c008568:	1c008388 	pcaddu12i	$r8,1052(0x41c)
1c00856c:	1c008380 	pcaddu12i	$r0,1052(0x41c)
1c008570:	6d6f630a 	bgeu	$r24,$r10,94048(0x16f60) # 1c01f4d0 <_sidata+0x16154>
1c008574:	646e616d 	bge	$r11,$r13,28256(0x6e60) # 1c00f3d4 <_sidata+0x6058>
1c008578:	0a0a3a73 	0x0a0a3a73
1c00857c:	00000000 	0x00000000
1c008580:	32252009 	xvldrepl.w	$xr9,$r0,1312(0x520)
1c008584:	73253a64 	vsat.d	$vr4,$vr19,0xe
1c008588:	00000d0a 	0x00000d0a
1c00858c:	7325090a 	vsat.d	$vr10,$vr8,0x2
1c008590:	09732509 	0x09732509
1c008594:	000a7325 	0x000a7325
1c008598:	5245090a 	b	69879048(0x42a4508) # 202acaa0 <_sidata+0x42a3724>
1c00859c:	3a524f52 	0x3a524f52
1c0085a0:	646e7520 	bge	$r9,$r0,28276(0x6e74) # 1c00f414 <_sidata+0x6098>
1c0085a4:	6e696665 	bgeu	$r19,$r5,-104092(0x26964) # 1bfeef08 <_start-0x110f8>
1c0085a8:	6f632065 	bgeu	$r3,$r5,-40160(0x36320) # 1bffe8c8 <_start-0x1738>
1c0085ac:	6e616d6d 	bgeu	$r11,$r13,-106132(0x2616c) # 1bfee718 <_start-0x118e8>
1c0085b0:	21212164 	sc.w	$r4,$r11,8480(0x2120)
1c0085b4:	0000000a 	0x0000000a
1c0085b8:	7375200a 	0x7375200a
1c0085bc:	3a656761 	0x3a656761
1c0085c0:	6c656820 	bgeu	$r1,$r0,25960(0x6568) # 1c00eb28 <_sidata+0x57ac>
1c0085c4:	3c202070 	0x3c202070
1c0085c8:	3e646d63 	0x3e646d63
1c0085cc:	00000d0a 	0x00000d0a
1c0085d0:	0020240a 	div.w	$r10,$r0,$r9
1c0085d4:	68686868 	bltu	$r3,$r8,26728(0x6868) # 1c00ee3c <_sidata+0x5ac0>
1c0085d8:	79797968 	0x79797968
1c0085dc:	79797979 	0x79797979
1c0085e0:	0000000a 	0x0000000a
1c0085e4:	70707070 	vmax.b	$vr16,$vr3,$vr28
1c0085e8:	6f6f6f70 	bgeu	$r27,$r16,-37012(0x36f6c) # 1bfff554 <_start-0xaac>
1c0085ec:	000a6f6f 	0x000a6f6f
1c0085f0:	36363636 	0x36363636
1c0085f4:	0a363636 	0x0a363636
1c0085f8:	00000000 	0x00000000
1c0085fc:	6e6e6e6e 	bgeu	$r19,$r14,-102804(0x26e6c) # 1bfef468 <_start-0x10b98>
1c008600:	6d6d6d6e 	bgeu	$r11,$r14,93548(0x16d6c) # 1c01f36c <_sidata+0x15ff0>
1c008604:	000a6d6d 	0x000a6d6d
1c008608:	61616161 	blt	$r11,$r1,90464(0x16160) # 1c01e768 <_sidata+0x153ec>
1c00860c:	62626161 	blt	$r11,$r1,-105888(0x26260) # 1bfee86c <_start-0x11794>
1c008610:	62626262 	blt	$r19,$r2,-105888(0x26260) # 1bfee870 <_start-0x11790>
1c008614:	0000000a 	0x0000000a
1c008618:	7375200a 	0x7375200a
1c00861c:	3a656761 	0x3a656761
1c008620:	20316420 	ll.w	$r0,$r1,12644(0x3164)
1c008624:	64613c20 	bge	$r1,$r0,24892(0x613c) # 1c00e760 <_sidata+0x53e4>
1c008628:	203e7264 	ll.w	$r4,$r19,15984(0x3e70)
1c00862c:	756e3c20 	0x756e3c20
1c008630:	0d0a3e6d 	0x0d0a3e6d
1c008634:	00000000 	0x00000000
1c008638:	7830200a 	0x7830200a
1c00863c:	78383025 	0x78383025
1c008640:	0000093a 	0x0000093a
1c008644:	32302520 	0x32302520
1c008648:	00002078 	clo.d	$r24,$r3
1c00864c:	7375200a 	0x7375200a
1c008650:	3a656761 	0x3a656761
1c008654:	20346420 	ll.w	$r0,$r1,13412(0x3464)
1c008658:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00eab8 <_sidata+0x573c>
1c00865c:	3c203e72 	0x3c203e72
1c008660:	3e6d756e 	0x3e6d756e
1c008664:	00000d0a 	0x00000d0a
1c008668:	2578300a 	stptr.w	$r10,$r0,30768(0x7830)
1c00866c:	3a783830 	0x3a783830
1c008670:	00000009 	0x00000009
1c008674:	38302520 	fldx.s	$f0,$r9,$r9
1c008678:	00002078 	clo.d	$r24,$r3
1c00867c:	7375200a 	0x7375200a
1c008680:	3a656761 	0x3a656761
1c008684:	20316d20 	ll.w	$r0,$r9,12652(0x316c)
1c008688:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00eae8 <_sidata+0x576c>
1c00868c:	3c203e72 	0x3c203e72
1c008690:	756c6176 	0x756c6176
1c008694:	0d0a3e65 	0x0d0a3e65
1c008698:	00000000 	0x00000000
1c00869c:	7375200a 	0x7375200a
1c0086a0:	3a656761 	0x3a656761
1c0086a4:	20346d20 	ll.w	$r0,$r9,13420(0x346c)
1c0086a8:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00eb08 <_sidata+0x578c>
1c0086ac:	3c203e72 	0x3c203e72
1c0086b0:	756c6176 	0x756c6176
1c0086b4:	0d0a3e65 	0x0d0a3e65
1c0086b8:	00000000 	0x00000000
1c0086bc:	656c6c69 	bge	$r3,$r9,93292(0x16c6c) # 1c01f328 <_sidata+0x15fac>
1c0086c0:	206c6167 	ll.w	$r7,$r11,27744(0x6c60)
1c0086c4:	20786568 	ll.w	$r8,$r11,30820(0x7864)
1c0086c8:	626d756e 	blt	$r11,$r14,-103052(0x26d74) # 1bfef43c <_start-0x10bc4>
1c0086cc:	2e2e7265 	0x2e2e7265
1c0086d0:	00000a2e 	0x00000a2e
1c0086d4:	656c6c69 	bge	$r3,$r9,93292(0x16c6c) # 1c01f340 <_sidata+0x15fc4>
1c0086d8:	206c6167 	ll.w	$r7,$r11,27744(0x6c60)
1c0086dc:	626d756e 	blt	$r11,$r14,-103052(0x26d74) # 1bfef450 <_start-0x10bb0>
1c0086e0:	2e2e7265 	0x2e2e7265
1c0086e4:	00000a2e 	0x00000a2e
1c0086e8:	7375200a 	0x7375200a
1c0086ec:	3a656761 	0x3a656761
1c0086f0:	3c207620 	0x3c207620
1c0086f4:	72646461 	0x72646461
1c0086f8:	6e3c203e 	bgeu	$r1,$r30,-115680(0x23c20) # 1bfec318 <_start-0x13ce8>
1c0086fc:	0a3e6d75 	0x0a3e6d75
1c008700:	0000000d 	0x0000000d
1c008704:	4d575056 	jirl	$r22,$r2,87888(0x15750)
1c008708:	616d6420 	blt	$r1,$r0,93540(0x16d64) # 1c01f46c <_sidata+0x160f0>
1c00870c:	20646120 	ll.w	$r0,$r9,25696(0x6460)
1c008710:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c008714:	61747320 	blt	$r25,$r0,95344(0x17470) # 1c01fb84 <_sidata+0x16808>
1c008718:	64657472 	bge	$r3,$r18,25972(0x6574) # 1c00ec8c <_sidata+0x5910>
1c00871c:	00000a20 	0x00000a20
1c008720:	4d575056 	jirl	$r22,$r2,87888(0x15750)
1c008724:	616d6420 	blt	$r1,$r0,93540(0x16d64) # 1c01f488 <_sidata+0x1610c>
1c008728:	20646120 	ll.w	$r0,$r9,25696(0x6460)
1c00872c:	74736574 	xvmin.w	$xr20,$xr11,$xr25
1c008730:	646e6520 	bge	$r9,$r0,28260(0x6e64) # 1c00f594 <_sidata+0x6218>
1c008734:	0000000a 	0x0000000a
1c008738:	6573540a 	bge	$r0,$r10,95060(0x17354) # 1c01fa8c <_sidata+0x16710>
1c00873c:	726f736e 	0x726f736e
1c008740:	00000a3a 	0x00000a3a
1c008744:	435f5354 	beqz	$r26,-2924720(0x535f50) # 1bd3e694 <_start-0x2c196c>
1c008748:	206c7274 	ll.w	$r20,$r19,27760(0x6c70)
1c00874c:	3d202020 	0x3d202020
1c008750:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008754:	000a7838 	0x000a7838
1c008758:	4f5f5354 	jirl	$r20,$r26,-41136(0x35f50)
1c00875c:	68546373 	bltu	$r27,$r19,21600(0x5460) # 1c00dbbc <_sidata+0x4840>
1c008760:	3d202020 	0x3d202020
1c008764:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008768:	000a7838 	0x000a7838
1c00876c:	505f5354 	b	-45064368(0xd505f50) # 1950e6bc <_start-0x2af1944>
1c008770:	546c6c6f 	bl	29125740(0x1bc6c6c) # 1dbcf3dc <_sidata+0x1bc6060>
1c008774:	3d206d69 	0x3d206d69
1c008778:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c00877c:	000a7838 	0x000a7838
1c008780:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008784:	43202020 	beqz	$r1,204832(0x32020) # 1c03a7a4 <_sidata+0x31428>
1c008788:	74416e68 	xvaddwod.d.wu.w	$xr8,$xr19,$xr27
1c00878c:	20207274 	ll.w	$r20,$r19,8304(0x2070)
1c008790:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008794:	746e4320 	0x746e4320
1c008798:	0a736552 	0x0a736552
1c00879c:	00000000 	0x00000000
1c0087a0:	6432255b 	bge	$r10,$r27,12836(0x3224) # 1c00b9c4 <_sidata+0x2648>
1c0087a4:	203d205d 	ll.w	$r29,$r2,15648(0x3d20)
1c0087a8:	38257830 	0x38257830
1c0087ac:	20202078 	ll.w	$r24,$r3,8224(0x2020)
1c0087b0:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c0087b4:	000a7838 	0x000a7838
1c0087b8:	2020200a 	ll.w	$r10,$r0,8224(0x2020)
1c0087bc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0087c0:	30302020 	0x30302020
1c0087c4:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c0087c8:	20202031 	ll.w	$r17,$r1,8224(0x2020)
1c0087cc:	20203230 	ll.w	$r16,$r17,8240(0x2030)
1c0087d0:	20333020 	ll.w	$r0,$r1,13104(0x3330)
1c0087d4:	34302020 	0x34302020
1c0087d8:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c0087dc:	20202035 	ll.w	$r21,$r1,8224(0x2020)
1c0087e0:	20203630 	ll.w	$r16,$r17,8244(0x2034)
1c0087e4:	20373020 	ll.w	$r0,$r1,14128(0x3730)
1c0087e8:	38302020 	fldx.s	$f0,$r1,$r8
1c0087ec:	30202020 	vldrepl.w	$vr0,$r1,32(0x20)
1c0087f0:	20202039 	ll.w	$r25,$r1,8224(0x2020)
1c0087f4:	20203031 	ll.w	$r17,$r1,8240(0x2030)
1c0087f8:	0a313120 	0x0a313120
1c0087fc:	00000000 	0x00000000
1c008800:	76736162 	0x76736162
1c008804:	00006c61 	cpucfg	$r1,$r3
1c008808:	64342520 	bge	$r9,$r0,13348(0x3424) # 1c00bc2c <_sidata+0x28b0>
1c00880c:	00000000 	0x00000000
1c008810:	746e630a 	0x746e630a
1c008814:	006c6176 	bstrins.w	$r22,$r11,0xc,0x18
1c008818:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c00881c:	00000000 	0x00000000
1c008820:	6f74200a 	bgeu	$r0,$r10,-35808(0x37420) # 1bfffc40 <_start-0x3c0>
1c008824:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008828:	74696e69 	xvavgr.w	$xr9,$xr19,$xr27
1c00882c:	6f643c20 	bgeu	$r1,$r0,-39876(0x3643c) # 1bffec68 <_start-0x1398>
1c008830:	745f6e77 	0x745f6e77
1c008834:	002e3e68 	0x002e3e68
1c008838:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdc58 <_start-0x23a8>
1c00883c:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008840:	74696e49 	xvavgr.w	$xr9,$xr18,$xr27
1c008844:	00000000 	0x00000000
1c008848:	6e616373 	bgeu	$r27,$r19,-106144(0x26160) # 1bfee9a8 <_start-0x11658>
1c00884c:	00000000 	0x00000000
1c008850:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdc70 <_start-0x2390>
1c008854:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008858:	6e616353 	bgeu	$r26,$r19,-106144(0x26160) # 1bfee9b8 <_start-0x11648>
1c00885c:	00000000 	0x00000000
1c008860:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfeffcc <_start-0x10034>
1c008864:	00000000 	0x00000000
1c008868:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdc88 <_start-0x2378>
1c00886c:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008870:	6e776f44 	bgeu	$r26,$r4,-100500(0x2776c) # 1bfeffdc <_start-0x10024>
1c008874:	00006854 	rdtime.d	$r20,$r2
1c008878:	6f74200a 	bgeu	$r0,$r10,-35808(0x37420) # 1bfffc98 <_start-0x368>
1c00887c:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c008880:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bfeffec <_start-0x10014>
1c008884:	6f643c20 	bgeu	$r1,$r0,-39876(0x3643c) # 1bffecc0 <_start-0x1340>
1c008888:	745f6e77 	0x745f6e77
1c00888c:	3c203e68 	0x3c203e68
1c008890:	6e616863 	bgeu	$r3,$r3,-106136(0x26168) # 1bfee9f8 <_start-0x11608>
1c008894:	3e6c656e 	0x3e6c656e
1c008898:	00000000 	0x00000000
1c00889c:	6c6c6f70 	bgeu	$r27,$r16,27756(0x6c6c) # 1c00f508 <_sidata+0x618c>
1c0088a0:	00000000 	0x00000000
1c0088a4:	6f54200a 	bgeu	$r0,$r10,-44000(0x35420) # 1bffdcc4 <_start-0x233c>
1c0088a8:	20686375 	ll.w	$r21,$r27,26720(0x6860)
1c0088ac:	6c6c6f50 	bgeu	$r26,$r16,27756(0x6c6c) # 1c00f518 <_sidata+0x619c>
1c0088b0:	0000002e 	0x0000002e
1c0088b4:	776f6873 	xvssrarni.du.q	$xr19,$xr3,0x5a
1c0088b8:	00000000 	0x00000000
1c0088bc:	6e49200a 	bgeu	$r0,$r10,-112352(0x24920) # 1bfed1dc <_start-0x12e24>
1c0088c0:	20747570 	ll.w	$r16,$r11,29812(0x7474)
1c0088c4:	6f727245 	bgeu	$r18,$r5,-36240(0x37270) # 1bfffb34 <_start-0x4cc>
1c0088c8:	00002e72 	ctz.d	$r18,$r19
1c0088cc:	6173550a 	blt	$r8,$r10,95060(0x17354) # 1c01fc20 <_sidata+0x168a4>
1c0088d0:	203a6567 	ll.w	$r7,$r11,14948(0x3a64)
1c0088d4:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfffe40 <_start-0x1c0>
1c0088d8:	6e692068 	bgeu	$r3,$r8,-104160(0x26920) # 1bfef1f8 <_start-0x10e08>
1c0088dc:	3c207469 	0x3c207469
1c0088e0:	6e776f64 	bgeu	$r27,$r4,-100500(0x2776c) # 1bff004c <_start-0xffb4>
1c0088e4:	3e68745f 	0x3e68745f
1c0088e8:	0a090920 	0x0a090920
1c0088ec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0088f0:	74202020 	xvsubwev.h.b	$xr0,$xr1,$xr8
1c0088f4:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00ec68 <_sidata+0x58ec>
1c0088f8:	776f6420 	xvssrarni.du.q	$xr0,$xr1,0x59
1c0088fc:	643c206e 	bge	$r3,$r14,15392(0x3c20) # 1c00c51c <_sidata+0x31a0>
1c008900:	5f6e776f 	bne	$r27,$r15,-37260(0x36e74) # 1bfff774 <_start-0x88c>
1c008904:	203e6874 	ll.w	$r20,$r3,15976(0x3e68)
1c008908:	6168633c 	blt	$r25,$r28,92256(0x16860) # 1c01f168 <_sidata+0x15dec>
1c00890c:	6c656e6e 	bgeu	$r19,$r14,25964(0x656c) # 1c00ee78 <_sidata+0x5afc>
1c008910:	2009203e 	ll.w	$r30,$r1,2336(0x920)
1c008914:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008918:	0a202020 	xvfmadd.d	$xr0,$xr1,$xr8,$xr0
1c00891c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008920:	74202020 	xvsubwev.h.b	$xr0,$xr1,$xr8
1c008924:	6863756f 	bltu	$r11,$r15,25460(0x6374) # 1c00ec98 <_sidata+0x591c>
1c008928:	61637320 	blt	$r25,$r0,90992(0x16370) # 1c01ec98 <_sidata+0x1591c>
1c00892c:	0909206e 	0x0909206e
1c008930:	2020200a 	ll.w	$r10,$r0,8224(0x2020)
1c008934:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008938:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1bfffea4 <_start-0x15c>
1c00893c:	6f702068 	bgeu	$r3,$r8,-36832(0x37020) # 1bfff95c <_start-0x6a4>
1c008940:	09206c6c 	vfmadd.d	$vr12,$vr3,$vr27,$vr0
1c008944:	20200a09 	ll.w	$r9,$r16,8200(0x2008)
1c008948:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00894c:	756f7420 	0x756f7420
1c008950:	73206863 	0x73206863
1c008954:	00776f68 	bstrins.w	$r8,$r27,0x17,0x1b
1c008958:	68200a0d 	bltu	$r16,$r13,8200(0x2008) # 1c00a960 <_sidata+0x15e4>
1c00895c:	20746570 	ll.w	$r16,$r11,29796(0x7464)
1c008960:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f6c8 <_sidata+0x1634c>
1c008964:	74732072 	xvmin.w	$xr18,$xr3,$xr8
1c008968:	2e747261 	0x2e747261
1c00896c:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c008970:	00000000 	0x00000000
1c008974:	55200a0d 	bl	-130736120(0x8352008) # 1435a97c <_start-0x7ca5684>
1c008978:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f0d8 <_sidata+0x15d5c>
1c00897c:	7068203a 	vavgr.b	$vr26,$vr1,$vr8
1c008980:	3c207465 	0x3c207465
1c008984:	69726570 	bltu	$r11,$r16,94820(0x17264) # 1c01fbe8 <_sidata+0x1686c>
1c008988:	6369646f 	blt	$r3,$r15,-38556(0x36964) # 1bfff2ec <_start-0xd14>
1c00898c:	733c203e 	0x733c203e
1c008990:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008994:	3e736d5f 	0x3e736d5f
1c008998:	65733c20 	bge	$r1,$r0,95036(0x1733c) # 1c01fcd4 <_sidata+0x16958>
1c00899c:	00003e63 	revb.d	$r3,$r19
1c0089a0:	63200a0d 	blt	$r16,$r13,-57336(0x32008) # 1bffa9a8 <_start-0x5658>
1c0089a4:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0089a8:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f710 <_sidata+0x16394>
1c0089ac:	74732072 	xvmin.w	$xr18,$xr3,$xr8
1c0089b0:	2e747261 	0x2e747261
1c0089b4:	612e2e2e 	blt	$r17,$r14,77356(0x12e2c) # 1c01b7e0 <_sidata+0x12464>
1c0089b8:	3a636772 	0x3a636772
1c0089bc:	000a6425 	0x000a6425
1c0089c0:	55200a0d 	bl	-130736120(0x8352008) # 1435a9c8 <_start-0x7ca5638>
1c0089c4:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f124 <_sidata+0x15da8>
1c0089c8:	616c203a 	blt	$r1,$r26,93216(0x16c20) # 1c01f5e8 <_sidata+0x1626c>
1c0089cc:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f734 <_sidata+0x163b8>
1c0089d0:	733c2072 	0x733c2072
1c0089d4:	003e6365 	0x003e6365
1c0089d8:	55200a0d 	bl	-130736120(0x8352008) # 1435a9e0 <_start-0x7ca5620>
1c0089dc:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f13c <_sidata+0x15dc0>
1c0089e0:	6564203a 	bge	$r1,$r26,91168(0x16420) # 1c01ee00 <_sidata+0x15a84>
1c0089e4:	2079616c 	ll.w	$r12,$r11,31072(0x7960)
1c0089e8:	646f6d3c 	bge	$r9,$r28,28524(0x6f6c) # 1c00f954 <_sidata+0x65d8>
1c0089ec:	3a313a65 	0x3a313a65
1c0089f0:	322c7375 	xvldrepl.w	$xr21,$r27,-912(0xc70)
1c0089f4:	2c736d3a 	vst	$vr26,$r9,-805(0xcdb)
1c0089f8:	3e733a33 	0x3e733a33
1c0089fc:	61763c20 	blt	$r1,$r0,95804(0x1763c) # 1c020038 <_sidata+0x16cbc>
1c008a00:	00003e6c 	revb.d	$r12,$r19
1c008a04:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00af0c <_sidata+0x1b90>
1c008a08:	00007375 	0x00007375
1c008a0c:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00af14 <_sidata+0x1b98>
1c008a10:	0000736d 	0x0000736d
1c008a14:	64250a0d 	bge	$r16,$r13,9480(0x2508) # 1c00af1c <_sidata+0x1ba0>
1c008a18:	00000073 	0x00000073
1c008a1c:	69540a0d 	bltu	$r16,$r13,87048(0x15408) # 1c01de24 <_sidata+0x14aa8>
1c008a20:	2072656d 	ll.w	$r13,$r11,29284(0x7264)
1c008a24:	656b6157 	bge	$r10,$r23,93024(0x16b60) # 1c01f584 <_sidata+0x16208>
1c008a28:	20705520 	ll.w	$r0,$r9,28756(0x7054)
1c008a2c:	72617473 	0x72617473
1c008a30:	2e2e2e74 	0x2e2e2e74
1c008a34:	6772612e 	bge	$r9,$r14,-36256(0x37260) # 1bfffc94 <_start-0x36c>
1c008a38:	64253a63 	bge	$r19,$r3,9528(0x2538) # 1c00af70 <_sidata+0x1bf4>
1c008a3c:	0000000a 	0x0000000a
1c008a40:	55200a0d 	bl	-130736120(0x8352008) # 1435aa48 <_start-0x7ca55b8>
1c008a44:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f1a4 <_sidata+0x15e28>
1c008a48:	6177203a 	blt	$r1,$r26,96032(0x17720) # 1c020168 <_sidata+0x16dec>
1c008a4c:	7075656b 	vmax.wu	$vr11,$vr11,$vr25
1c008a50:	65733c20 	bge	$r1,$r0,95036(0x1733c) # 1c01fd8c <_sidata+0x16a10>
1c008a54:	00003e63 	revb.d	$r3,$r19
1c008a58:	72770a0d 	0x72770a0d
1c008a5c:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
1c008a60:	676e6172 	bge	$r11,$r18,-37280(0x36e60) # 1bfff8c0 <_start-0x740>
1c008a64:	666f2065 	bge	$r3,$r5,-102624(0x26f20) # 1bfef984 <_start-0x1067c>
1c008a68:	6d756e20 	bgeu	$r17,$r0,95596(0x1756c) # 1c01ffd4 <_sidata+0x16c58>
1c008a6c:	21726562 	sc.w	$r2,$r11,29284(0x7264)
1c008a70:	00000a0d 	0x00000a0d
1c008a74:	00000a0d 	0x00000a0d
1c008a78:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fed8 <_sidata+0x16b5c>
1c008a7c:	206f7420 	ll.w	$r0,$r1,28532(0x6f74)
1c008a80:	70736964 	vmin.w	$vr4,$vr11,$vr26
1c008a84:	2079616c 	ll.w	$r12,$r11,31072(0x7960)
1c008a88:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01f7f0 <_sidata+0x16474>
1c008a8c:	0a0d202e 	0x0a0d202e
1c008a90:	00000000 	0x00000000
1c008a94:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01fef4 <_sidata+0x16b78>
1c008a98:	20732d20 	ll.w	$r0,$r9,29484(0x732c)
1c008a9c:	6d2d7979 	bgeu	$r11,$r25,77176(0x12d78) # 1c01b814 <_sidata+0x12498>
1c008aa0:	64642d6d 	bge	$r11,$r13,25644(0x642c) # 1c00eecc <_sidata+0x5b50>
1c008aa4:	3a686820 	0x3a686820
1c008aa8:	733a6d6d 	0x733a6d6d
1c008aac:	6f742073 	bgeu	$r3,$r19,-35808(0x37420) # 1bfffecc <_start-0x134>
1c008ab0:	74657320 	xvavg.w	$xr0,$xr25,$xr28
1c008ab4:	6d697420 	bgeu	$r1,$r0,92532(0x16974) # 1c01f428 <_sidata+0x160ac>
1c008ab8:	0a0d2e65 	0x0a0d2e65
1c008abc:	00000000 	0x00000000
1c008ac0:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01ff20 <_sidata+0x16ba4>
1c008ac4:	20692d20 	ll.w	$r0,$r9,26924(0x692c)
1c008ac8:	642d6d6d 	bge	$r11,$r13,11628(0x2d6c) # 1c00b834 <_sidata+0x24b8>
1c008acc:	68682064 	bltu	$r3,$r4,26656(0x6820) # 1c00f2ec <_sidata+0x5f70>
1c008ad0:	3a6d6d3a 	0x3a6d6d3a
1c008ad4:	74207373 	xvsubwev.h.b	$xr19,$xr27,$xr28
1c008ad8:	6573206f 	bge	$r3,$r15,95008(0x17320) # 1c01fdf8 <_sidata+0x16a7c>
1c008adc:	6e692074 	bgeu	$r3,$r20,-104160(0x26920) # 1bfef3fc <_start-0x10c04>
1c008ae0:	0a0d2e74 	0x0a0d2e74
1c008ae4:	00000000 	0x00000000
1c008ae8:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01ff48 <_sidata+0x16bcc>
1c008aec:	20662d20 	ll.w	$r0,$r9,26156(0x662c)
1c008af0:	3a207a48 	0x3a207a48
1c008af4:	75706e69 	0x75706e69
1c008af8:	72662074 	0x72662074
1c008afc:	6e657165 	bgeu	$r11,$r5,-105104(0x26570) # 1bfef06c <_start-0x10f94>
1c008b00:	69207963 	bltu	$r11,$r3,73848(0x12078) # 1c01ab78 <_sidata+0x117fc>
1c008b04:	6e69206e 	bgeu	$r3,$r14,-104160(0x26920) # 1bfef424 <_start-0x10bdc>
1c008b08:	65676574 	bge	$r11,$r20,92004(0x16764) # 1c01f26c <_sidata+0x15ef0>
1c008b0c:	6f742072 	bgeu	$r3,$r18,-35808(0x37420) # 1bffff2c <_start-0xd4>
1c008b10:	74657320 	xvavg.w	$xr0,$xr25,$xr28
1c008b14:	65727020 	bge	$r1,$r0,94832(0x17270) # 1c01fd84 <_sidata+0x16a08>
1c008b18:	6c616373 	bgeu	$r27,$r19,24928(0x6160) # 1c00ec78 <_sidata+0x58fc>
1c008b1c:	0a0d2e65 	0x0a0d2e65
1c008b20:	00000000 	0x00000000
1c008b24:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1bfff08c <_start-0xf74>
1c008b28:	6170206b 	blt	$r3,$r11,94240(0x17020) # 1c01fb48 <_sidata+0x167cc>
1c008b2c:	656d6172 	bge	$r11,$r18,93536(0x16d60) # 1c01f88c <_sidata+0x16510>
1c008b30:	0d726574 	0x0d726574
1c008b34:	0000000a 	0x0000000a
1c008b38:	61766e69 	blt	$r19,$r9,95852(0x1766c) # 1c0201a4 <_sidata+0x16e28>
1c008b3c:	2064696c 	ll.w	$r12,$r11,25704(0x6468)
1c008b40:	61726170 	blt	$r11,$r16,94816(0x17260) # 1c01fda0 <_sidata+0x16a24>
1c008b44:	0000006d 	0x0000006d
1c008b48:	68730a0d 	bltu	$r16,$r13,29448(0x7308) # 1c00fe50 <_sidata+0x6ad4>
1c008b4c:	646c756f 	bge	$r11,$r15,27764(0x6c74) # 1c00f7c0 <_sidata+0x6444>
1c008b50:	20656220 	ll.w	$r0,$r17,25952(0x6560)
1c008b54:	736f6c63 	vssrarni.du.q	$vr3,$vr3,0x5b
1c008b58:	6f742065 	bgeu	$r3,$r5,-35808(0x37420) # 1bffff78 <_start-0x88>
1c008b5c:	37323320 	0x37323320
1c008b60:	48203836 	bceqz	$fcc1,-2613192(0x582038) # 1bd8ab98 <_start-0x275468>
1c008b64:	000a0d7a 	0x000a0d7a
1c008b68:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01ffc8 <_sidata+0x16c4c>
1c008b6c:	20682d20 	ll.w	$r0,$r9,26668(0x682c)
1c008b70:	20726f66 	ll.w	$r6,$r27,29292(0x726c)
1c008b74:	67617375 	bge	$r27,$r21,-40592(0x36170) # 1bffece4 <_start-0x131c>
1c008b78:	000a0d65 	0x000a0d65
1c008b7c:	30253032 	vldrepl.w	$vr18,$r1,1328(0x530)
1c008b80:	252d6432 	stptr.w	$r18,$r1,11620(0x2d64)
1c008b84:	2d643230 	0x2d643230
1c008b88:	64323025 	bge	$r1,$r5,12848(0x3230) # 1c00bdb8 <_sidata+0x2a3c>
1c008b8c:	00000020 	0x00000020
1c008b90:	64323025 	bge	$r1,$r5,12848(0x3230) # 1c00bdc0 <_sidata+0x2a44>
1c008b94:	3230253a 	0x3230253a
1c008b98:	30253a64 	vldrepl.w	$vr4,$r19,1336(0x538)
1c008b9c:	00006432 	rdtimeh.w	$r18,$r1
1c008ba0:	0000682d 	rdtime.d	$r13,$r1
1c008ba4:	0000732d 	0x0000732d
1c008ba8:	0000692d 	rdtime.d	$r13,$r9
1c008bac:	0000662d 	rdtimeh.w	$r13,$r17
1c008bb0:	1c008ba0 	pcaddu12i	$r0,1117(0x45d)
1c008bb4:	1c008ba4 	pcaddu12i	$r4,1117(0x45d)
1c008bb8:	1c008ba8 	pcaddu12i	$r8,1117(0x45d)
1c008bbc:	1c008bac 	pcaddu12i	$r12,1117(0x45d)
1c008bc0:	64770a0d 	bge	$r16,$r13,30472(0x7708) # 1c0102c8 <_sidata+0x6f4c>
1c008bc4:	65742067 	bge	$r3,$r7,95264(0x17420) # 1c01ffe4 <_sidata+0x16c68>
1c008bc8:	73207473 	0x73207473
1c008bcc:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008bd0:	2e2e2e2e 	0x2e2e2e2e
1c008bd4:	63677261 	blt	$r19,$r1,-39056(0x36770) # 1bfff344 <_start-0xcbc>
1c008bd8:	0a64253a 	xvfmsub.d	$xr26,$xr9,$xr9,$xr8
1c008bdc:	00000000 	0x00000000
1c008be0:	55200a0d 	bl	-130736120(0x8352008) # 1435abe8 <_start-0x7ca5418>
1c008be4:	65676173 	bge	$r11,$r19,92000(0x16760) # 1c01f344 <_sidata+0x15fc8>
1c008be8:	6477203a 	bge	$r1,$r26,30496(0x7720) # 1c010308 <_sidata+0x6f8c>
1c008bec:	733c2067 	0x733c2067
1c008bf0:	003e6365 	0x003e6365
1c008bf4:	7375200a 	0x7375200a
1c008bf8:	3a656761 	0x3a656761
1c008bfc:	63326920 	blt	$r9,$r0,-52632(0x33268) # 1bffbe64 <_start-0x419c>
1c008c00:	633c2077 	blt	$r3,$r23,-50144(0x33c20) # 1bffc820 <_start-0x37e0>
1c008c04:	61706968 	blt	$r11,$r8,94312(0x17068) # 1c01fc6c <_sidata+0x168f0>
1c008c08:	3e726464 	0x3e726464
1c008c0c:	65723c20 	bge	$r1,$r0,94780(0x1723c) # 1c01fe48 <_sidata+0x16acc>
1c008c10:	64646167 	bge	$r11,$r7,25696(0x6460) # 1c00f070 <_sidata+0x5cf4>
1c008c14:	3c203e72 	0x3c203e72
1c008c18:	74616477 	xvabsd.w	$xr23,$xr3,$xr25
1c008c1c:	000a3e61 	0x000a3e61
1c008c20:	74616477 	xvabsd.w	$xr23,$xr3,$xr25
1c008c24:	78303d61 	0x78303d61
1c008c28:	00007825 	0x00007825
1c008c2c:	72646461 	0x72646461
1c008c30:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c008c34:	00000078 	0x00000078
1c008c38:	7375200a 	0x7375200a
1c008c3c:	3a656761 	0x3a656761
1c008c40:	63326920 	blt	$r9,$r0,-52632(0x33268) # 1bffbea8 <_start-0x4158>
1c008c44:	68633c72 	bltu	$r3,$r18,25404(0x633c) # 1c00ef80 <_sidata+0x5c04>
1c008c48:	64617069 	bge	$r3,$r9,24944(0x6170) # 1c00edb8 <_sidata+0x5a3c>
1c008c4c:	3c3e7264 	0x3c3e7264
1c008c50:	61676572 	blt	$r11,$r18,92004(0x16764) # 1c01f3b4 <_sidata+0x16038>
1c008c54:	3e726464 	0x3e726464
1c008c58:	0000000a 	0x0000000a
1c008c5c:	72200a0d 	0x72200a0d
1c008c60:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c0200c0 <_sidata+0x16d44>
1c008c64:	25783020 	stptr.w	$r0,$r1,30768(0x7830)
1c008c68:	0d783230 	0x0d783230
1c008c6c:	0000000a 	0x0000000a
1c008c70:	44410a0d 	bnez	$r16,3424520(0x344108) # 1c34cd78 <_sidata+0x3439fc>
1c008c74:	733c2043 	0x733c2043
1c008c78:	203e6c65 	ll.w	$r5,$r3,15980(0x3e6c)
1c008c7c:	7669643c 	0x7669643c
1c008c80:	743c203e 	0x743c203e
1c008c84:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c008c88:	0000003e 	0x0000003e
1c008c8c:	65730a0d 	bge	$r16,$r13,94984(0x17308) # 1c01ff94 <_sidata+0x16c18>
1c008c90:	28203a6c 	ld.b	$r12,$r19,-2034(0x80e)
1c008c94:	44412930 	bnez	$r9,-4177624(0x404128) # 1bc0cdbc <_start-0x3f3244>
1c008c98:	30495f43 	vldrepl.h	$vr3,$r26,1198(0x4ae)
1c008c9c:	3128202c 	vstelm.w	$vr12,$r1,32(0x20),0x2
1c008ca0:	43444129 	beqz	$r9,2573376(0x274440) # 1c27d0e0 <_sidata+0x273d64>
1c008ca4:	2c31495f 	vld	$vr31,$r10,-942(0xc52)
1c008ca8:	29322820 	st.b	$r0,$r1,-886(0xc8a)
1c008cac:	41435256 	beqz	$r18,-2538672(0x594350) # 1bd9cffc <_start-0x263004>
1c008cb0:	28202c50 	ld.b	$r16,$r2,-2037(0x80b)
1c008cb4:	2e312933 	0x2e312933
1c008cb8:	202c5630 	ll.w	$r16,$r17,11348(0x2c54)
1c008cbc:	56293428 	bl	10627380(0xa22934) # 1ca2b5f0 <_sidata+0xa22274>
1c008cc0:	54554f52 	bl	-45591220(0xd48554c) # 1948e20c <_start-0x2b71df4>
1c008cc4:	3528202c 	0x3528202c
1c008cc8:	302e3129 	vldrepl.w	$vr9,$r9,-464(0xe30)
1c008ccc:	72762856 	0x72762856
1c008cd0:	202c2931 	ll.w	$r17,$r9,11304(0x2c28)
1c008cd4:	76293628 	0x76293628
1c008cd8:	2c666572 	vst	$vr18,$r11,-1639(0x999)
1c008cdc:	29372820 	st.b	$r0,$r1,-566(0xdca)
1c008ce0:	61636164 	blt	$r11,$r4,90976(0x16360) # 1c01f040 <_sidata+0x15cc4>
1c008ce4:	0000636d 	rdtimel.w	$r13,$r27
1c008ce8:	69640a0d 	bltu	$r16,$r13,91144(0x16408) # 1c01f0f0 <_sidata+0x15d74>
1c008cec:	30203a76 	vldrepl.w	$vr22,$r19,56(0x38)
1c008cf0:	3264203a 	0x3264203a
1c008cf4:	3a31202c 	0x3a31202c
1c008cf8:	00346420 	0x00346420
1c008cfc:	61630a0d 	blt	$r16,$r13,90888(0x16308) # 1c01f004 <_sidata+0x15c88>
1c008d00:	6c75636c 	bgeu	$r27,$r12,30048(0x7560) # 1c010260 <_sidata+0x6ee4>
1c008d04:	25657461 	stptr.w	$r1,$r3,25972(0x6574)
1c008d08:	00000064 	0x00000064
1c008d0c:	7375200a 	0x7375200a
1c008d10:	3a656761 	0x3a656761
1c008d14:	74616220 	xvabsd.w	$xr0,$xr17,$xr24
1c008d18:	20746564 	ll.w	$r4,$r11,29796(0x7464)
1c008d1c:	203e6e3c 	ll.w	$r28,$r17,15980(0x3e6c)
1c008d20:	44412030 	bnez	$r1,-4177632(0x404120) # 1bc0ce40 <_start-0x3f31c0>
1c008d24:	30495f43 	vldrepl.h	$vr3,$r26,1198(0x4ae)
1c008d28:	2031202c 	ll.w	$r12,$r1,12576(0x3120)
1c008d2c:	4f495047 	jirl	$r7,$r2,-46768(0x34950)
1c008d30:	32202c30 	xvldrepl.w	$xr16,$r1,44(0x2c)
1c008d34:	49504720 	0x49504720
1c008d38:	000a314f 	0x000a314f
1c008d3c:	72770a0d 	0x72770a0d
1c008d40:	20676e6f 	ll.w	$r15,$r19,26476(0x676c)
1c008d44:	61726170 	blt	$r11,$r16,94816(0x17260) # 1c01ffa4 <_sidata+0x16c28>
1c008d48:	6574656d 	bge	$r11,$r13,95332(0x17464) # 1c0201ac <_sidata+0x16e30>
1c008d4c:	00000072 	0x00000072
1c008d50:	0000002e 	0x0000002e
1c008d54:	79706f63 	0x79706f63
1c008d58:	72726520 	0x72726520
1c008d5c:	000a726f 	0x000a726f
1c008d60:	7375200a 	0x7375200a
1c008d64:	3a656761 	0x3a656761
1c008d68:	6e697520 	bgeu	$r9,$r0,-104076(0x26974) # 1bfef6dc <_start-0x10924>
1c008d6c:	3c207469 	0x3c207469
1c008d70:	3e322f31 	0x3e322f31
1c008d74:	00000a20 	0x00000a20
1c008d78:	64690a0d 	bge	$r16,$r13,26888(0x6908) # 1c00f680 <_sidata+0x6304>
1c008d7c:	2578303d 	stptr.w	$r29,$r1,30768(0x7830)
1c008d80:	000a0d78 	0x000a0d78
1c008d84:	7375200a 	0x7375200a
1c008d88:	3a656761 	0x3a656761
1c008d8c:	72777320 	0x72777320
1c008d90:	20657469 	ll.w	$r9,$r3,25972(0x6574)
1c008d94:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00f1f4 <_sidata+0x5e78>
1c008d98:	0a203e72 	xvfmadd.d	$xr18,$xr19,$xr15,$xr0
1c008d9c:	00000000 	0x00000000
1c008da0:	7277200a 	0x7277200a
1c008da4:	20657469 	ll.w	$r9,$r3,25972(0x6574)
1c008da8:	72617473 	0x72617473
1c008dac:	00000a74 	0x00000a74
1c008db0:	0000202e 	clo.d	$r14,$r1
1c008db4:	0000000a 	0x0000000a
1c008db8:	7375200a 	0x7375200a
1c008dbc:	3a656761 	0x3a656761
1c008dc0:	65727320 	bge	$r25,$r0,94832(0x17270) # 1c020030 <_sidata+0x16cb4>
1c008dc4:	3c206461 	0x3c206461
1c008dc8:	72646461 	0x72646461
1c008dcc:	000a203e 	0x000a203e
1c008dd0:	6572200a 	bge	$r0,$r10,94752(0x17220) # 1c01fff0 <_sidata+0x16c74>
1c008dd4:	73206461 	0x73206461
1c008dd8:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008ddc:	0000000a 	0x0000000a
1c008de0:	6568630a 	bge	$r24,$r10,92256(0x16860) # 1c01f640 <_sidata+0x162c4>
1c008de4:	65206b63 	bge	$r27,$r3,73832(0x12068) # 1c01ae4c <_sidata+0x11ad0>
1c008de8:	726f7272 	0x726f7272
1c008dec:	61647220 	blt	$r17,$r0,91248(0x16470) # 1c01f25c <_sidata+0x15ee0>
1c008df0:	253d6174 	stptr.w	$r20,$r11,15712(0x3d60)
1c008df4:	61692078 	blt	$r3,$r24,92448(0x16920) # 1c01f714 <_sidata+0x16398>
1c008df8:	3d726464 	0x3d726464
1c008dfc:	000a7825 	0x000a7825
1c008e00:	7375200a 	0x7375200a
1c008e04:	3a656761 	0x3a656761
1c008e08:	72657320 	0x72657320
1c008e0c:	20657361 	ll.w	$r1,$r27,25968(0x6570)
1c008e10:	6464613c 	bge	$r9,$r28,25696(0x6460) # 1c00f270 <_sidata+0x5ef4>
1c008e14:	0a203e72 	xvfmadd.d	$xr18,$xr19,$xr15,$xr0
1c008e18:	00000000 	0x00000000
1c008e1c:	7265200a 	0x7265200a
1c008e20:	20657361 	ll.w	$r1,$r27,25968(0x6570)
1c008e24:	72617473 	0x72617473
1c008e28:	00000a74 	0x00000a74
1c008e2c:	676f7270 	bge	$r19,$r16,-37008(0x36f70) # 1bfffd9c <_start-0x264>
1c008e30:	206d6172 	ll.w	$r18,$r11,28000(0x6d60)
1c008e34:	72617473 	0x72617473
1c008e38:	00000a74 	0x00000a74
1c008e3c:	72700a0d 	0x72700a0d
1c008e40:	6172676f 	blt	$r27,$r15,94820(0x17264) # 1c0200a4 <_sidata+0x16d28>
1c008e44:	6f64206d 	bgeu	$r3,$r13,-39904(0x36420) # 1bfff264 <_start-0xd9c>
1c008e48:	000a656e 	0x000a656e
1c008e4c:	68630a0d 	bltu	$r16,$r13,25352(0x6308) # 1c00f154 <_sidata+0x5dd8>
1c008e50:	6f6b6365 	bgeu	$r27,$r5,-38048(0x36b60) # 1bfff9b0 <_start-0x650>
1c008e54:	73207475 	0x73207475
1c008e58:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008e5c:	0000000a 	0x0000000a
1c008e60:	68630a0d 	bltu	$r16,$r13,25352(0x6308) # 1c00f168 <_sidata+0x5dec>
1c008e64:	206b6365 	ll.w	$r5,$r27,27488(0x6b60)
1c008e68:	656e6f64 	bge	$r27,$r4,93804(0x16e6c) # 1c01fcd4 <_sidata+0x16958>
1c008e6c:	0000000a 	0x0000000a
1c008e70:	6f630a0d 	bgeu	$r16,$r13,-40184(0x36308) # 1bfff178 <_start-0xe88>
1c008e74:	72697970 	0x72697970
1c008e78:	73206d61 	0x73206d61
1c008e7c:	74726174 	xvmin.b	$xr20,$xr11,$xr24
1c008e80:	00000a0d 	0x00000a0d
1c008e84:	79706f63 	0x79706f63
1c008e88:	72726520 	0x72726520
1c008e8c:	2520726f 	stptr.w	$r15,$r19,8304(0x2070)
1c008e90:	78252c78 	0x78252c78
1c008e94:	0a78252c 	0x0a78252c
1c008e98:	00000000 	0x00000000
1c008e9c:	3c200a0d 	0x3c200a0d
1c008ea0:	696c2020 	bltu	$r1,$r0,93216(0x16c20) # 1c01fac0 <_sidata+0x16744>
1c008ea4:	203a656e 	ll.w	$r14,$r11,14948(0x3a64)
1c008ea8:	66206425 	bge	$r1,$r5,-122780(0x22064) # 1bfeaf0c <_start-0x150f4>
1c008eac:	3a636e75 	0x3a636e75
1c008eb0:	20207325 	ll.w	$r5,$r25,8304(0x2070)
1c008eb4:	0a0d3e20 	0x0a0d3e20
1c008eb8:	00000000 	0x00000000
1c008ebc:	2e2e2e0a 	0x2e2e2e0a
1c008ec0:	2e2e2e2e 	0x2e2e2e2e
1c008ec4:	2e2e2e2e 	0x2e2e2e2e
1c008ec8:	4f532e2e 	jirl	$r14,$r17,-44244(0x3532c)
1c008ecc:	495f5446 	bceqz	$fcc2,1662804(0x195f54) # 1c19ee20 <_sidata+0x195aa4>
1c008ed0:	2e2e544e 	0x2e2e544e
1c008ed4:	2e2e2e2e 	0x2e2e2e2e
1c008ed8:	2e2e2e2e 	0x2e2e2e2e
1c008edc:	2e2e2e2e 	0x2e2e2e2e
1c008ee0:	00000d0a 	0x00000d0a
1c008ee4:	2d2d2d0a 	0x2d2d2d0a
1c008ee8:	63756f74 	blt	$r27,$r20,-35476(0x3756c) # 1c000454 <cpu_wait+0x3ac>
1c008eec:	746e4968 	0x746e4968
1c008ef0:	79654b3a 	0x79654b3a
1c008ef4:	6e616843 	bgeu	$r2,$r3,-106136(0x26168) # 1bfef05c <_start-0x10fa4>
1c008ef8:	3a6c656e 	0x3a6c656e
1c008efc:	78257830 	0x78257830
1c008f00:	0000000a 	0x0000000a
1c008f04:	2e2e2e0a 	0x2e2e2e0a
1c008f08:	2e2e2e2e 	0x2e2e2e2e
1c008f0c:	2e2e2e2e 	0x2e2e2e2e
1c008f10:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39d13c <_sidata+0x393dc0>
1c008f14:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1d570 <_start-0x2e2a90>
1c008f18:	2e2e4c49 	0x2e2e4c49
1c008f1c:	2e2e2e2e 	0x2e2e2e2e
1c008f20:	2e2e2e2e 	0x2e2e2e2e
1c008f24:	2e2e2e2e 	0x2e2e2e2e
1c008f28:	00000d0a 	0x00000d0a
1c008f2c:	2e2e2e0a 	0x2e2e2e0a
1c008f30:	2e2e2e2e 	0x2e2e2e2e
1c008f34:	2e2e2e2e 	0x2e2e2e2e
1c008f38:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38d064 <_sidata+0x383ce8>
1c008f3c:	2e2e2e43 	0x2e2e2e43
1c008f40:	2e2e2e2e 	0x2e2e2e2e
1c008f44:	2e2e2e2e 	0x2e2e2e2e
1c008f48:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c008f4c:	0000000d 	0x0000000d
1c008f50:	69726550 	bltu	$r10,$r16,94820(0x17264) # 1c0201b4 <_sidata+0x16e38>
1c008f54:	72656870 	0x72656870
1c008f58:	20736c61 	ll.w	$r1,$r3,29548(0x736c)
1c008f5c:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01fcc4 <_sidata+0x16948>
1c008f60:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00f280 <_sidata+0x5f04>
1c008f64:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c008f68:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c0203d4 <_sidata+0x17058>
1c008f6c:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c008f70:	0a2e2e74 	xvfmadd.d	$xr20,$xr19,$xr11,$xr28
1c008f74:	00000000 	0x00000000
1c008f78:	74726175 	xvmin.b	$xr21,$xr11,$xr24
1c008f7c:	65722031 	bge	$r1,$r17,94752(0x17220) # 1c02019c <_sidata+0x16e20>
1c008f80:	303a7663 	0x303a7663
1c008f84:	0a782578 	0x0a782578
1c008f88:	00000000 	0x00000000
1c008f8c:	65726f43 	bge	$r26,$r3,94828(0x1726c) # 1c0201f8 <_sidata+0x16e7c>
1c008f90:	6d695420 	bgeu	$r1,$r0,92500(0x16954) # 1c01f8e4 <_sidata+0x16568>
1c008f94:	63207265 	blt	$r19,$r5,-57232(0x32070) # 1bffb004 <_start-0x4ffc>
1c008f98:	7261656c 	0x7261656c
1c008f9c:	746e6920 	0x746e6920
1c008fa0:	75727265 	0x75727265
1c008fa4:	2e2e7470 	0x2e2e7470
1c008fa8:	0000000a 	0x0000000a

1c008fac <Ext_IrqHandle>:
1c008fac:	1c006ed4 	pcaddu12i	$r20,886(0x376)
1c008fb0:	1c006f20 	pcaddu12i	$r0,889(0x379)
1c008fb4:	1c006f6c 	pcaddu12i	$r12,891(0x37b)
1c008fb8:	1c006fb8 	pcaddu12i	$r24,893(0x37d)
1c008fbc:	1c007004 	pcaddu12i	$r4,896(0x380)
1c008fc0:	1c007050 	pcaddu12i	$r16,898(0x382)
1c008fc4:	1c00709c 	pcaddu12i	$r28,900(0x384)
1c008fc8:	1c0070e8 	pcaddu12i	$r8,903(0x387)
1c008fcc:	1c007134 	pcaddu12i	$r20,905(0x389)
1c008fd0:	1c007180 	pcaddu12i	$r0,908(0x38c)
1c008fd4:	1c0071cc 	pcaddu12i	$r12,910(0x38e)
1c008fd8:	1c007218 	pcaddu12i	$r24,912(0x390)
1c008fdc:	1c007264 	pcaddu12i	$r4,915(0x393)
1c008fe0:	1c0072b0 	pcaddu12i	$r16,917(0x395)
1c008fe4:	1c0072fc 	pcaddu12i	$r28,919(0x397)
1c008fe8:	1c007348 	pcaddu12i	$r8,922(0x39a)
1c008fec:	1c007394 	pcaddu12i	$r20,924(0x39c)
1c008ff0:	1c0073e0 	pcaddu12i	$r0,927(0x39f)
1c008ff4:	1c00742c 	pcaddu12i	$r12,929(0x3a1)
1c008ff8:	1c007478 	pcaddu12i	$r24,931(0x3a3)
1c008ffc:	1c0074c4 	pcaddu12i	$r4,934(0x3a6)
1c009000:	1c007510 	pcaddu12i	$r16,936(0x3a8)
1c009004:	1c00755c 	pcaddu12i	$r28,938(0x3aa)
1c009008:	1c0075a8 	pcaddu12i	$r8,941(0x3ad)
1c00900c:	1c0075f4 	pcaddu12i	$r20,943(0x3af)
1c009010:	1c007640 	pcaddu12i	$r0,946(0x3b2)
1c009014:	1c00768c 	pcaddu12i	$r12,948(0x3b4)
1c009018:	1c0076d8 	pcaddu12i	$r24,950(0x3b6)
1c00901c:	1c007724 	pcaddu12i	$r4,953(0x3b9)
1c009020:	1c007770 	pcaddu12i	$r16,955(0x3bb)
1c009024:	1c0077bc 	pcaddu12i	$r28,957(0x3bd)
1c009028:	1c007808 	pcaddu12i	$r8,960(0x3c0)
1c00902c:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009030:	1c007aa4 	pcaddu12i	$r4,981(0x3d5)
1c009034:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009038:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c00903c:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009040:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009044:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009048:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c00904c:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009050:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009054:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009058:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c00905c:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009060:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009064:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c009068:	1c007af4 	pcaddu12i	$r20,983(0x3d7)
1c00906c:	1c007ac0 	pcaddu12i	$r0,982(0x3d6)

1c009070 <__FUNCTION__.1570>:
1c009070:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0204e8 <_sidata+0x1716c>
1c009074:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200d8 <_sidata+0x16d5c>
1c009078:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffc0d8 <_start-0x3f28>
1c00907c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0001ec <cpu_wait+0x144>
1c009080:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fee0 <_sidata+0x6b64>
1c009084:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009088 <__FUNCTION__.1574>:
1c009088:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020500 <_sidata+0x17184>
1c00908c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0200f0 <_sidata+0x16d74>
1c009090:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffc1f0 <_start-0x3e10>
1c009094:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000204 <cpu_wait+0x15c>
1c009098:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00fef8 <_sidata+0x6b7c>
1c00909c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090a0 <__FUNCTION__.1578>:
1c0090a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020518 <_sidata+0x1719c>
1c0090a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020108 <_sidata+0x16d8c>
1c0090a8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffc308 <_start-0x3cf8>
1c0090ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00021c <cpu_wait+0x174>
1c0090b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff10 <_sidata+0x6b94>
1c0090b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090b8 <__FUNCTION__.1582>:
1c0090b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020530 <_sidata+0x171b4>
1c0090bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020120 <_sidata+0x16da4>
1c0090c0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffc420 <_start-0x3be0>
1c0090c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000234 <cpu_wait+0x18c>
1c0090c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff28 <_sidata+0x6bac>
1c0090cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090d0 <__FUNCTION__.1586>:
1c0090d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020548 <_sidata+0x171cc>
1c0090d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020138 <_sidata+0x16dbc>
1c0090d8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffc538 <_start-0x3ac8>
1c0090dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00024c <cpu_wait+0x1a4>
1c0090e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff40 <_sidata+0x6bc4>
1c0090e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0090e8 <__FUNCTION__.1590>:
1c0090e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020560 <_sidata+0x171e4>
1c0090ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020150 <_sidata+0x16dd4>
1c0090f0:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffc650 <_start-0x39b0>
1c0090f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000264 <cpu_wait+0x1bc>
1c0090f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff58 <_sidata+0x6bdc>
1c0090fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009100 <__FUNCTION__.1594>:
1c009100:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020578 <_sidata+0x171fc>
1c009104:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020168 <_sidata+0x16dec>
1c009108:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffc768 <_start-0x3898>
1c00910c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00027c <cpu_wait+0x1d4>
1c009110:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff70 <_sidata+0x6bf4>
1c009114:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009118 <__FUNCTION__.1598>:
1c009118:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020590 <_sidata+0x17214>
1c00911c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020180 <_sidata+0x16e04>
1c009120:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffc880 <_start-0x3780>
1c009124:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000294 <cpu_wait+0x1ec>
1c009128:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ff88 <_sidata+0x6c0c>
1c00912c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009130 <__FUNCTION__.1602>:
1c009130:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205a8 <_sidata+0x1722c>
1c009134:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020198 <_sidata+0x16e1c>
1c009138:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffc198 <_start-0x3e68>
1c00913c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002ac <cpu_wait+0x204>
1c009140:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffa0 <_sidata+0x6c24>
1c009144:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009148 <__FUNCTION__.1606>:
1c009148:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205c0 <_sidata+0x17244>
1c00914c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201b0 <_sidata+0x16e34>
1c009150:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffc2b0 <_start-0x3d50>
1c009154:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002c4 <cpu_wait+0x21c>
1c009158:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffb8 <_sidata+0x6c3c>
1c00915c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009160 <__FUNCTION__.1610>:
1c009160:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205d8 <_sidata+0x1725c>
1c009164:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201c8 <_sidata+0x16e4c>
1c009168:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffc3c8 <_start-0x3c38>
1c00916c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002dc <cpu_wait+0x234>
1c009170:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffd0 <_sidata+0x6c54>
1c009174:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009178 <__FUNCTION__.1614>:
1c009178:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0205f0 <_sidata+0x17274>
1c00917c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201e0 <_sidata+0x16e64>
1c009180:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffc4e0 <_start-0x3b20>
1c009184:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0002f4 <cpu_wait+0x24c>
1c009188:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ffe8 <_sidata+0x6c6c>
1c00918c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009190 <__FUNCTION__.1618>:
1c009190:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020608 <_sidata+0x1728c>
1c009194:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0201f8 <_sidata+0x16e7c>
1c009198:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffc5f8 <_start-0x3a08>
1c00919c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00030c <cpu_wait+0x264>
1c0091a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010000 <_sidata+0x6c84>
1c0091a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091a8 <__FUNCTION__.1622>:
1c0091a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020620 <_sidata+0x172a4>
1c0091ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020210 <_sidata+0x16e94>
1c0091b0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffc710 <_start-0x38f0>
1c0091b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000324 <cpu_wait+0x27c>
1c0091b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010018 <_sidata+0x6c9c>
1c0091bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091c0 <__FUNCTION__.1626>:
1c0091c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020638 <_sidata+0x172bc>
1c0091c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020228 <_sidata+0x16eac>
1c0091c8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffc828 <_start-0x37d8>
1c0091cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00033c <cpu_wait+0x294>
1c0091d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010030 <_sidata+0x6cb4>
1c0091d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091d8 <__FUNCTION__.1630>:
1c0091d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020650 <_sidata+0x172d4>
1c0091dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020240 <_sidata+0x16ec4>
1c0091e0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffc940 <_start-0x36c0>
1c0091e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000354 <cpu_wait+0x2ac>
1c0091e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010048 <_sidata+0x6ccc>
1c0091ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0091f0 <__FUNCTION__.1634>:
1c0091f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020668 <_sidata+0x172ec>
1c0091f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020258 <_sidata+0x16edc>
1c0091f8:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffc258 <_start-0x3da8>
1c0091fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00036c <cpu_wait+0x2c4>
1c009200:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010060 <_sidata+0x6ce4>
1c009204:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009208 <__FUNCTION__.1638>:
1c009208:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020680 <_sidata+0x17304>
1c00920c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020270 <_sidata+0x16ef4>
1c009210:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffc370 <_start-0x3c90>
1c009214:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000384 <cpu_wait+0x2dc>
1c009218:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010078 <_sidata+0x6cfc>
1c00921c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009220 <__FUNCTION__.1642>:
1c009220:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020698 <_sidata+0x1731c>
1c009224:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020288 <_sidata+0x16f0c>
1c009228:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffc488 <_start-0x3b78>
1c00922c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00039c <cpu_wait+0x2f4>
1c009230:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010090 <_sidata+0x6d14>
1c009234:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009238 <__FUNCTION__.1646>:
1c009238:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206b0 <_sidata+0x17334>
1c00923c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0202a0 <_sidata+0x16f24>
1c009240:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffc5a0 <_start-0x3a60>
1c009244:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003b4 <cpu_wait+0x30c>
1c009248:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100a8 <_sidata+0x6d2c>
1c00924c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009250 <__FUNCTION__.1650>:
1c009250:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206c8 <_sidata+0x1734c>
1c009254:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0202b8 <_sidata+0x16f3c>
1c009258:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffc6b8 <_start-0x3948>
1c00925c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003cc <cpu_wait+0x324>
1c009260:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100c0 <_sidata+0x6d44>
1c009264:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009268 <__FUNCTION__.1654>:
1c009268:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206e0 <_sidata+0x17364>
1c00926c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0202d0 <_sidata+0x16f54>
1c009270:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffc7d0 <_start-0x3830>
1c009274:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003e4 <cpu_wait+0x33c>
1c009278:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100d8 <_sidata+0x6d5c>
1c00927c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009280 <__FUNCTION__.1658>:
1c009280:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0206f8 <_sidata+0x1737c>
1c009284:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0202e8 <_sidata+0x16f6c>
1c009288:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffc8e8 <_start-0x3718>
1c00928c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0003fc <cpu_wait+0x354>
1c009290:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0100f0 <_sidata+0x6d74>
1c009294:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009298 <__FUNCTION__.1662>:
1c009298:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020710 <_sidata+0x17394>
1c00929c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020300 <_sidata+0x16f84>
1c0092a0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffca00 <_start-0x3600>
1c0092a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000414 <cpu_wait+0x36c>
1c0092a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010108 <_sidata+0x6d8c>
1c0092ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0092b0 <__FUNCTION__.1666>:
1c0092b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020728 <_sidata+0x173ac>
1c0092b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020318 <_sidata+0x16f9c>
1c0092b8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffc31c <_start-0x3ce4>
1c0092bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00042c <cpu_wait+0x384>
1c0092c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010120 <_sidata+0x6da4>
1c0092c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0092c8 <__FUNCTION__.1670>:
1c0092c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020740 <_sidata+0x173c4>
1c0092cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020330 <_sidata+0x16fb4>
1c0092d0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffc434 <_start-0x3bcc>
1c0092d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000444 <cpu_wait+0x39c>
1c0092d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010138 <_sidata+0x6dbc>
1c0092dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0092e0 <__FUNCTION__.1674>:
1c0092e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020758 <_sidata+0x173dc>
1c0092e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020348 <_sidata+0x16fcc>
1c0092e8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffc54c <_start-0x3ab4>
1c0092ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00045c <cpu_wait+0x3b4>
1c0092f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010150 <_sidata+0x6dd4>
1c0092f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0092f8 <__FUNCTION__.1678>:
1c0092f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020770 <_sidata+0x173f4>
1c0092fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020360 <_sidata+0x16fe4>
1c009300:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffc664 <_start-0x399c>
1c009304:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c000474 <cpu_wait+0x3cc>
1c009308:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010168 <_sidata+0x6dec>
1c00930c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009310 <__FUNCTION__.1682>:
1c009310:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c020788 <_sidata+0x1740c>
1c009314:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020378 <_sidata+0x16ffc>
1c009318:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffc77c <_start-0x3884>
1c00931c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c00048c <cpu_wait+0x3e4>
1c009320:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010180 <_sidata+0x6e04>
1c009324:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009328 <__FUNCTION__.1686>:
1c009328:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207a0 <_sidata+0x17424>
1c00932c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c020390 <_sidata+0x17014>
1c009330:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffc894 <_start-0x376c>
1c009334:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004a4 <cpu_wait+0x3fc>
1c009338:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c010198 <_sidata+0x6e1c>
1c00933c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009340 <__FUNCTION__.1690>:
1c009340:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207b8 <_sidata+0x1743c>
1c009344:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0203a8 <_sidata+0x1702c>
1c009348:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffc9ac <_start-0x3654>
1c00934c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004bc <cpu_wait+0x414>
1c009350:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101b0 <_sidata+0x6e34>
1c009354:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009358 <__FUNCTION__.1694>:
1c009358:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c0207d0 <_sidata+0x17454>
1c00935c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c0203c0 <_sidata+0x17044>
1c009360:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffcac4 <_start-0x353c>
1c009364:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1c0004d4 <cpu_wait+0x42c>
1c009368:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101c8 <_sidata+0x6e4c>
1c00936c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c009370 <__FUNCTION__.1703>:
1c009370:	5f747865 	bne	$r3,$r5,-35720(0x37478) # 1c0007e8 <cpu_wait+0x740>
1c009374:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c0101d4 <_sidata+0x6e58>
1c009378:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007c49 	pcaddu12i	$r9,994(0x3e2)
80001008:	1c007c40 	pcaddu12i	$r0,994(0x3e2)

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
