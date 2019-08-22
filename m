Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853DD98DFD
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 10:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Kv21P062v9X+tOPDOhEY0WeuDh9PL1NAlD44EjzVXM=; b=O9kopFLf1alFxC
	Ey1EqaOdMpO2hEFkPciMAEFzhF3sKxpqNG/IsYNdVCRGokRcvwmI8rcA+0V5lHlzu5I4+KVhQQBpz
	r7BE0TF06zRYKxjGqcDHW0fIDRktore2CXYophzVthC06BnqYDWVggFZJu/mm/I8C7zJbrSNZkXhY
	OqVSR6AIMhqGellXqEP6BJ6PqFifOTA0dnl5kD1bux4ixIoNH8ihodI0tv3vRK3W/JOBmyvaOIg1l
	JPEBjU4cBnos7KEBdkvvVnd0EitFpFai0T/pwBmXNoIQzp3W26cWhyDLVgryDVVtVKds6kuD4tE4B
	/AUDUVhAunl5CSgYybNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ifp-0005nQ-VH; Thu, 22 Aug 2019 08:42:26 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ifj-0005jf-LB
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 08:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566463339; x=1597999339;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=tiJDHw3R0ElQHisEyA1tcJWi0gH1vjpsflBTqtxnm+I=;
 b=pAK7NZMnVvAj+YFSsTXvIqazN9+KBPDX+5Kzg4QlZ3NwSpZq+iPcs+YK
 xXvvleWUaK5LaUH523m0rKuOxZh5Uj04EK7mXWYcxbVeVR2Lgz02caotD
 srUjYlL2F2NM/46CcrGvrnTdCnzcPT7aV3rZp2AU5Us0OmEY7ci4g60l4
 g1f9VG8b3vkMCuW8CwHGeIiycfO5kUPHQVl7fyEi3umtZB6wL3OxVyAaq
 jFSf7J91fn18K0diYvizag1cdkbVXwDekN2q8S+SqpBjIB9tsa7/jnOM0
 zFxUtDAbVuwa0DBUvzAzHN0IUG1kQO/lW1TATjPpLerPtN28uWgEgTewU w==;
IronPort-SDR: jKdpRnWILlbw8AXjWhBl5qQL7PE0ufc4ALUq0VhOzmB0T2FPS3e5DnNjopvX8DNQmLSc2so3Fc
 E7XNWZo4GWBB+eZr0G9zxjAqpiHs4VJ42aKwvfBqjh12cwoX6HuhFoiljo+cn1VYofn6tQuI+s
 aqyfKKPNpmvOD2IY/x0z0NkOsWbCiiCQL0lZkEl0y16Hv07/ZnTRag2yaiTispMSOAo0cFp4fk
 MNZFbec/rL12RUx+to34lMekKhyNzQaqJj3eVeAVJCAohMLAbgkNAeBjrs0QD/ZmAoBrBXBRYW
 EYo=
X-IronPort-AV: E=Sophos;i="5.64,416,1559491200"; d="scan'208";a="116400153"
Received: from mail-bl2nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.58])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 16:42:17 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AAM6q7GOzB+HH+E6+bzvZh5Gy4iiunacR1BwN3qDzA4Xd6sL+4XJi5mvDYhshiNbeGvcqOKoWR27+SNsMyBGDF2LzOLKKVq7MGc5+U4x0Ga7GpaaXRjAujdsy7ysVj7NPV35GZVJxIZxUi6ATi9op/AWDcQi+0U25S3fIkGeUfQXJLroNWR6CG+lLry1tqyGPYi3Gl5Lt77c/LBfsgpy/5XZ1kwymbuwbrCAy+Eao46owfFbJpYXFCzhsqXvNRB886m13sViixhYHvioAkqaw6rsTMSUUdI1EuK+OQz5ErNRKje1MsE8InraB/MrKXuAadpGdxyK+UKF6NVH/yGSOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRsyx/0OoFBE/gqJuauuqNnvPTRIG4NYzPVf5drpJOo=;
 b=beqvkHqqqwoFt+LFYn76InLXB/J6h7dCdq8aKZLAHG9wpONvyPfpOiU5oNtdEjC3Eo8MF8UN5Sefrd/Z4KYtTVZy1UQ/+S5rwXS4pIEdR5eztOIX+MaomGjK834MnaxmDKwJxdgrf6iC14phZ2SD/IkVF+XVk9jRxGFNWWpA3ed61b7OF57kibf57FKD0GiCYugVXNLAXRhTcVc4PVSMIFUEMyBCiOxUQ/IY6SFXPqVDvuCykSBljaV3SFfiaWfvdylF5Tf95uvno6FsxuSMbCEZf/1x9wPZ+bsF9WxtAAe8jkvew4jDCl8jmI6cr4wjbOFdgn0w5UZ+ve5CnSOrqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRsyx/0OoFBE/gqJuauuqNnvPTRIG4NYzPVf5drpJOo=;
 b=s6BROLqnGJJ+jz0MF7uggy8KKKvARK6kMbh4bJWjOpBwz0HKryfiiey3TzsQJq3h3OHyZC59dv/U4/jWBdWs7w3OPMzh6uRkYl3tZKwBtXXvehEM9OTIz9/Lm6BFZ+wlOjEwioTTpKk92gryZqB+L2LN9Tlgfo2V0VR5jXpS9j8=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7070.namprd04.prod.outlook.com (10.186.146.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 08:42:14 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 08:42:14 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v5 00/20] KVM RISC-V Support
Thread-Topic: [PATCH v5 00/20] KVM RISC-V Support
Thread-Index: AQHVWMV/Y81q5mZfDUeb7P9RvQNpQw==
Date: Thu, 22 Aug 2019 08:42:14 +0000
Message-ID: <20190822084131.114764-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b433738-a201-4364-e7d2-08d726dca153
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB7070; 
x-ms-traffictypediagnostic: MN2PR04MB7070:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB7070035753F8F1D803FC70438DA50@MN2PR04MB7070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(189003)(199004)(86362001)(25786009)(110136005)(486006)(316002)(52116002)(54906003)(476003)(36756003)(14454004)(8676002)(44832011)(14444005)(6506007)(81166006)(256004)(386003)(2906002)(966005)(99286004)(2616005)(66446008)(81156014)(66556008)(64756008)(66476007)(3846002)(6512007)(4326008)(1076003)(305945005)(7736002)(50226002)(66946007)(53936002)(186003)(26005)(478600001)(6436002)(102836004)(6486002)(5660300002)(71200400001)(6306002)(6116002)(8936002)(66066001)(71190400001)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7070;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dBbA6OfUrR4NHLR/JNmwuBTKFiqh9Z9TU6KDosoWq+KlKJe+/qwQBylEAp78d7kUd3ZvfhkWB8iANbduAWmxSG/3MpZPTDAFCovJSWtPBUYrHm/qS7k4sZdAnwpwzkZLNQs9U5Zj1J97+sfGm7guJEfMm0gk6BXTUHUGvRb0RY04hOg4boOWTppy/11fx0odqAX+rLeyEJeVc8XwGnWBT7SzArf46pMg+jFz8EtVwgE62XzmRoZt5v7KrqWGjZCPWBJwP1LG2ZCkr57rThKYmMXiaeXJw7ecXQwvEbCiGBn+vzg57Ks2Po+c+Lxzkv7zpgpDStJIZwxSgwnYfoKDJFzFkGl91i+egw4+CPnjOvvzqziMH5YFIW9j2UFFj3iR6Ds1VkX3nuzSWSA0E2hl76rcRCqjkznfdvLFmmPi8ZE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b433738-a201-4364-e7d2-08d726dca153
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:42:14.6250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /jEFuUUE0yI3LirmB1s2WWr58hNJauNiaP84bAOVZHwNHTPxgaSa5GMhANT1I8Wy8qqKI/LJxAB8snXh4t7m6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014219_821231_63CDB1B8 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This series can be found in riscv_kvm_v5 branch at:
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

Changes since v4:
- Rebased patches on Linux-5.3-rc5
- Added Paolo's Acked-by and Reviewed-by
- Updated mailing list in MAINTAINERS entry

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
 arch/riscv/configs/defconfig            |  11 +
 arch/riscv/configs/rv32_defconfig       |  11 +
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
 30 files changed, 4183 insertions(+), 4 deletions(-)
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
