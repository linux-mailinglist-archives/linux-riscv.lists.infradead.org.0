Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D401C84B65
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AwRLtSIOgNapEno8kpICl4g0hY5gEfwfLLKZ29o0MFI=; b=KasXPq6bbrJP8l
	1nlwpoiZGhSky3lTrolXWXYEvSOc1FbVgJBjFH6QgUlpgtht2AhpfWPRTlSh6ctcoG5X1qhYmhWjy
	B+cvsX+rWqa0ipXEnDnt1XTdJ/gjFW8y3V+Bd5IQJrS7ThoEwtX6TbPqUZ0aphpt1muu7C6B1U22W
	btUOGgcm9Q4ucwOAwYYNzU581EMNiA8Sow9/d/dUX9t0UBVJnF23tjeV8hTXB50FHS8alJ0OOfpWt
	yE6RqmD6bPVGxoEL51W2YiWaT6fF1hdUhYqzNfqOhSyhSxseUc7NoPSxXnfY8gZ0Ej6mPnTBDj3Av
	DAjtEAj7Tmi8X6wZF5IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL35-0004ci-5w; Wed, 07 Aug 2019 12:28:11 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL2y-0004bV-Ui
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:28:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180885; x=1596716885;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=hswRFwDPh2S7i/7z7hGTBdSR6j2cn0nCVznBMkLNxyk=;
 b=LRhkZVGqjr+/znQ2J24Vj9F+yMQncNzxkIoGblWk1pAUQTnMbJxRqBX6
 hZWIylxKi5LnnRq+jvJxcbhkD4qPnWxpMR24zR3Tq4sMy4PVT3UdYw4gl
 46XWTqGHALxWy+iUUK8O1qnrOKxLiOTmcnIqlkSByJewWvWudopOx7p6u
 RO5rwbGZNV53qdQuOghrbQEptI6pQOfMOubLwMcdmlU7fxfHbdXB8IhV0
 Twn2HZSU0dyGETxdTFFQPbPAu5aZq7TUavNdO0b9TS6rQ/SK+Bvaxy2Pa
 kG3kWi8Vb96UY8qXx63zbEDdbvz203Iz0HNXAZS+HboZXSqtsf4dCLIbM A==;
IronPort-SDR: XKI3gmO1+ue51oTGKOBjKzb+8eRZhKLDrB8TMur11sK3Zo9ANRA8kjiLsYrx39Azlv9oxucyAn
 QZ2oGFxXoJ14RBqrU3q6zZKk7cCiUgzTp9N4WAwYe5L5gDpTCll4mB/MY86qDB6vfY2gtMk9uR
 UqD6yZJ2rnZTpBhsDYVpfwP9cCK86qUApbE8dvuX+0+KkmIYA4HAeLsNPfNC1b0Csx2GjugIqp
 bKeOt9wKZkx4dwaxCP5gtxaoc44DPcSCy2Ndf+BjfTIGnN0Wvfgl0LSsHXRwhVZZVew3MDjr2S
 R2Y=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="119865500"
Received: from mail-co1nam05lp2055.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.55])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:27:59 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FC4MmVN6HLLxJE06riv75koWOa7jgeKw8henEZcz7aYQYe8v/ZyqwY+7raGCbkJFllaA+ZhU8P9xUfJxTRi6SBGjD6fOKqxogr8QG4C7R7iXXAPh+l9yPdoEsPcBq+lDB5laQ7gjPYoiHYjvrZCCbsDpyEjJKVtlYKhlFenMOe/v9atR+QydRKtpoCXM76M+jzhdbsGY6lKB+UEjhCUKiNx6N/01lZTJI4onQFYnT7y6qZ8ysHGv93UBK8dSjQajwld8X/l44ouwqtwoTYdYf5hGD3eiAF+tulLnL6NLJsHO6AcEQC2EfzVmjYkiBg+ROaXTXnH9aqq2IW3s4w+3MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cmHAzztA/9iTy1ph6vyPPuUExnQNyKAK2TJd2EhiwYk=;
 b=eHvyC27j7Mr/WoI73HnNeX9dVwcEqG2yPg6OCS+1OLZoBO+4EV73quqBqFqfOT0TYBDk6EtwO8WuOiGRrjrxCQT8agXr+y2FhJq+aIrz3eZgvJ+MS5cidRwdKlkeCvc+uLBvVmcI69VPQfqh3Fczp6InBeOAFPI05AVfxEl5iYpFImcmQoh38yf6/k/Wzwha+oPYMiyggqilq87vjP/G3x7Ga7/MK8myTgWKGKWEFbrWFeQvlyQtjmfKbvzX0bv7eBbomfD6MRkdmsCoP5Qg3xxFsSgufVMWclK8Ni1+vww2o34yYCpu8EOq5Hp359+Z5/65xkwCtNxDbsaqrurLFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cmHAzztA/9iTy1ph6vyPPuUExnQNyKAK2TJd2EhiwYk=;
 b=sTywNUPUckkWIDlxdPAKKHouvSqN+Z+fvb8oV49egYmVwArYNRL+nCmokytUujtCovQoqGFNm0RIRZR0KwQCCs9Me3nDoJGtG4VbquafMTwFWxLshz775hkSTjO20Xf0V7/KJJ2YhlLKGfxofSLz8GL5eEOSXsZkLEFMkVHDmZs=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6736.namprd04.prod.outlook.com (10.141.117.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:27:57 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:27:57 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 00/20] KVM RISC-V Support
Thread-Topic: [PATCH v4 00/20] KVM RISC-V Support
Thread-Index: AQHVTRuK1feDNMU6CUGzNrLluIxZVw==
Date: Wed, 7 Aug 2019 12:27:56 +0000
Message-ID: <20190807122726.81544-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0097.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::13)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.52.255]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b1fa3b6-044c-4f40-5595-08d71b32ad2d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6736; 
x-ms-traffictypediagnostic: MN2PR04MB6736:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR04MB6736E88BDD0B8F4EAE46C1768DD40@MN2PR04MB6736.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(386003)(1076003)(3846002)(86362001)(186003)(26005)(52116002)(36756003)(54906003)(6506007)(102836004)(55236004)(2616005)(478600001)(44832011)(66066001)(966005)(110136005)(7416002)(476003)(486006)(8676002)(6436002)(6486002)(6512007)(4326008)(81166006)(6306002)(81156014)(316002)(66476007)(66556008)(305945005)(68736007)(2906002)(53936002)(25786009)(256004)(5660300002)(14454004)(50226002)(7736002)(71190400001)(99286004)(66446008)(6116002)(64756008)(8936002)(71200400001)(66946007)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6736;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Lrn1gSlHnElTIqNShrEFge0JdIrk3VFXl9KPsGf4zszAnNZIBOKSXK/LDE/4MNJUsiF2ByBipJF79QglZVEdQ5f+Nxs9kwNkxdlqxjWGFVo/TkZZyF06X8WXLeTOQEoClt8/2rpUyep3g2TJBZ0FhSWs1FQp5J7eB1dYVXH22zv9itNlug+XH1vJCU4zOWO+HkE/wRJ5BnKWli1s+73NzRtgT0Yb5FgVGhZX9UE7AbEEn9pIOqlmDQbHQeI9t6Emk4L+XvXqw1ikxx3l2ScIN9z7dM1ZlziyrAbcvIAlRV2ei+RC3sQVU5po4EUBeogtc54ElkTbo2rcrSHxaWaTUxNAheu3zR/y6/FZ+qwzovEWikUWcWv3+thX8U0FG6cafCKnbvHTJ2YTD6YBHsIIYrJv/LflDAcMs2/Ma8O+zAc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1fa3b6-044c-4f40-5595-08d71b32ad2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:27:57.0904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G3U8IaZ7vDJILiNxTcODh3NKJtKHwkFLQvEUr57ViSuZCodwZZZG7o4OjVXOA5maFgssj6KtU/s0Y5GrHk/a0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052805_159197_0B8F5A55 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series adds initial KVM RISC-V support. Currently, we are able to boot
RISC-V 64bit Linux Guests with multiple VCPUs.

Few key aspects of KVM RISC-V added by this series are:
1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
3. KVM ONE_REG interface for VCPU register access from user-space.
4. PLIC emulation is done in user-space. In-kernel PLIC emulation, will
   be added in future.
5. Timer and IPI emuation is done in-kernel.
6. MMU notifiers supported.
7. FP lazy save/restore supported.
8. SBI v0.1 emulation for KVM Guest available.

Here's a brief TODO list which we will work upon after this series:
1. Handle trap from unpriv access in reading Guest instruction
2. Handle trap from unpriv access in SBI v0.1 emulation
3. Implement recursive stage2 page table programing
4. SBI v0.2 emulation in-kernel
5. SBI v0.2 hart hotplug emulation in-kernel
6. In-kernel PLIC emulation
7. ..... and more .....

This series can be found in riscv_kvm_v4 branch at:
https//github.com/avpatel/linux.git

Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v1 branch at:
https//github.com/avpatel/kvmtool.git

We need OpenSBI with RISC-V hypervisor extension support which can be
found in hyp_ext_changes_v1 branch at:
https://github.com/riscv/opensbi.git

The QEMU RISC-V hypervisor emulation is done by Alistair and is available
in riscv-hyp-work.next branch at:
https://github.com/alistair23/qemu.git

To play around with KVM RISC-V, here are few reference commands:
1) To cross-compile KVMTOOL:
   $ make lkvm-static
2) To launch RISC-V Host Linux:
   $ qemu-system-riscv64 -monitor null -cpu rv64,h=true -M virt \
   -m 512M -display none -serial mon:stdio \
   -kernel opensbi/build/platform/qemu/virt/firmware/fw_jump.elf \
   -device loader,file=build-riscv64/arch/riscv/boot/Image,addr=0x80200000 \
   -initrd ./rootfs_kvm_riscv64.img \
   -append "root=/dev/ram rw console=ttyS0 earlycon=sbi"
3) To launch RISC-V Guest Linux with 9P rootfs:
   $ ./apps/lkvm-static run -m 128 -c2 --console serial \
   -p "console=ttyS0 earlycon=uart8250,mmio,0x3f8" -k ./apps/Image --debug
4) To launch RISC-V Guest Linux with initrd:
   $ ./apps/lkvm-static run -m 128 -c2 --console serial \
   -p "console=ttyS0 earlycon=uart8250,mmio,0x3f8" -k ./apps/Image \
   -i ./apps/rootfs.img --debug

Changes since v3:
- Moved patch for ISA bitmap from KVM prep series to this series
- Make vsip_shadow as run-time percpu variable instead of compile-time
- Flush Guest TLBs on all Host CPUs whenever we run-out of VMIDs

Changes since v2:
- Removed references of KVM_REQ_IRQ_PENDING from all patches
- Use kvm->srcu within in-kernel KVM run loop
- Added percpu vsip_shadow to track last value programmed in VSIP CSR
- Added comments about irqs_pending and irqs_pending_mask
- Used kvm_arch_vcpu_runnable() in-place-of kvm_riscv_vcpu_has_interrupt()
  in system_opcode_insn()
- Removed unwanted smp_wmb() in kvm_riscv_stage2_vmid_update()
- Use kvm_flush_remote_tlbs() in kvm_riscv_stage2_vmid_update()
- Use READ_ONCE() in kvm_riscv_stage2_update_hgatp() for vmid

Changes since v1:
- Fixed compile errors in building KVM RISC-V as module
- Removed unused kvm_riscv_halt_guest() and kvm_riscv_resume_guest()
- Set KVM_CAP_SYNC_MMU capability only after MMU notifiers are implemented
- Made vmid_version as unsigned long instead of atomic
- Renamed KVM_REQ_UPDATE_PGTBL to KVM_REQ_UPDATE_HGATP
- Renamed kvm_riscv_stage2_update_pgtbl() to kvm_riscv_stage2_update_hgatp()
- Configure HIDELEG and HEDELEG in kvm_arch_hardware_enable()
- Updated ONE_REG interface for CSR access to user-space
- Removed irqs_pending_lock and use atomic bitops instead
- Added separate patch for FP ONE_REG interface
- Added separate patch for updating MAINTAINERS file

Anup Patel (15):
  KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
  RISC-V: Add bitmap reprensenting ISA features common across CPUs
  RISC-V: Add hypervisor extension related CSR defines
  RISC-V: Add initial skeletal KVM support
  RISC-V: KVM: Implement VCPU create, init and destroy functions
  RISC-V: KVM: Implement VCPU interrupts and requests handling
  RISC-V: KVM: Implement KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
  RISC-V: KVM: Implement VCPU world-switch
  RISC-V: KVM: Handle MMIO exits for VCPU
  RISC-V: KVM: Handle WFI exits for VCPU
  RISC-V: KVM: Implement VMID allocator
  RISC-V: KVM: Implement stage2 page table programming
  RISC-V: KVM: Implement MMU notifiers
  RISC-V: Enable VIRTIO drivers in RV64 and RV32 defconfig
  RISC-V: KVM: Add MAINTAINERS entry

Atish Patra (5):
  RISC-V: Export few kernel symbols
  RISC-V: KVM: Add timer functionality
  RISC-V: KVM: FP lazy save/restore
  RISC-V: KVM: Implement ONE REG interface for FP registers
  RISC-V: KVM: Add SBI v0.1 support

 MAINTAINERS                             |  10 +
 arch/riscv/Kconfig                      |   2 +
 arch/riscv/Makefile                     |   2 +
 arch/riscv/configs/defconfig            |  13 +
 arch/riscv/configs/rv32_defconfig       |  13 +
 arch/riscv/include/asm/csr.h            |  58 ++
 arch/riscv/include/asm/hwcap.h          |  26 +
 arch/riscv/include/asm/kvm_host.h       | 246 ++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       |  98 +++
 arch/riscv/kernel/asm-offsets.c         | 148 ++++
 arch/riscv/kernel/cpufeature.c          |  79 +-
 arch/riscv/kernel/smp.c                 |   2 +-
 arch/riscv/kernel/time.c                |   1 +
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  92 +++
 arch/riscv/kvm/mmu.c                    | 905 ++++++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  43 ++
 arch/riscv/kvm/vcpu.c                   | 989 ++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 556 +++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 119 +++
 arch/riscv/kvm/vcpu_switch.S            | 368 +++++++++
 arch/riscv/kvm/vcpu_timer.c             | 106 +++
 arch/riscv/kvm/vm.c                     |  86 +++
 arch/riscv/kvm/vmid.c                   | 123 +++
 drivers/clocksource/timer-riscv.c       |   8 +
 include/clocksource/timer-riscv.h       |  16 +
 include/uapi/linux/kvm.h                |   1 +
 30 files changed, 4187 insertions(+), 4 deletions(-)
 create mode 100644 arch/riscv/include/asm/kvm_host.h
 create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
 create mode 100644 arch/riscv/include/uapi/asm/kvm.h
 create mode 100644 arch/riscv/kvm/Kconfig
 create mode 100644 arch/riscv/kvm/Makefile
 create mode 100644 arch/riscv/kvm/main.c
 create mode 100644 arch/riscv/kvm/mmu.c
 create mode 100644 arch/riscv/kvm/tlb.S
 create mode 100644 arch/riscv/kvm/vcpu.c
 create mode 100644 arch/riscv/kvm/vcpu_exit.c
 create mode 100644 arch/riscv/kvm/vcpu_sbi.c
 create mode 100644 arch/riscv/kvm/vcpu_switch.S
 create mode 100644 arch/riscv/kvm/vcpu_timer.c
 create mode 100644 arch/riscv/kvm/vm.c
 create mode 100644 arch/riscv/kvm/vmid.c
 create mode 100644 include/clocksource/timer-riscv.h

--
2.17.1

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
