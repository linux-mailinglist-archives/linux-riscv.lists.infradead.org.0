Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71C2A8664
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HGtNEkNj7mpcWfU4fYfccNzFvgCG1byRGAHlMIe7YDk=; b=uS/G7cNKk1lNjQ
	41HMrzvMVxyV0HPQKJ03grrf1kaYHZ6Bq9CBfvPejzmSpUPEafmgp79aiyXsMyReYWbp2j5XJYEl/
	MjZXEuM8xDR2t3J6RqqolGQjL7qe7be1YI+gZJ+YtYC4smp3wNftFtPsYu6x5UIl9Bo7JAZjgy0Ja
	VYGaMd9/ViSXiPf3ZZmZqWbo20Un1M+rgSwKa8qM4EwR2lxxHa2/0FdAqFoMMjFYrLDTgFmPrTYRX
	WLlGVCgXzZeBGIJUk+kWhLCtx0ns5Das1ltC6kPBS4TYgcDS1sgz9a2laIdLievHCJG9069TGFlQY
	y53K+5vlwDpZi4r+DAQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XuQ-0000g1-Nt; Wed, 04 Sep 2019 16:13:26 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XuN-0000fL-EE
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:13:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613604; x=1599149604;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=CEJXn/Ju4H/MErkNTLsM4XX050EUmKAwz4FXqK1Ryro=;
 b=N1jDc49ThRnebZd6GnPJGyA/6hN3HN6hdXZHWyexjvq0337Elnqz8ZD6
 diU6b2ihIN2pbIEii6OwkT9skreG68SYXq8NWzS4jL1nP9AjdWKC/Bvkp
 Of4kzA4yp/Ee8wivNr1E1pu+THJeZRWojWJdWGaQMc1Eb18OzSS8PvZ3D
 lU4WBEZtT7iaTPCxv/+nrQZ63cMN96jNtY48z+azc4PMgM1Tu8iOG9mc6
 Q88fTVayU1fmLdLUEATIPTTVKJd01pzbnmyViVIrb3UmqcRt20Z5i92jz
 wjjbMkSIISHWFoQfdTKPV32AlKxtKXsh5X8e+Jtcj9CatslT5afaBNkTO w==;
IronPort-SDR: xhz7x+FFkkor3jGE/rN2hWNDoYtXloLRy9j7kDbspCCePbivblP6wH5W1r5DCMzyBPoJprFNUd
 5yjflF122JPKbZDVLX1abxadB0RfWAzkIiu0Z2IjHBBfxly7IewS4vJ0F8AJ4DEkTJflCxaVu0
 njPnTMDacCH2wyipv/sCDo5kwZsQgwG7c1tQEFwI2NAngXFy1wzQTv4qbyhuGkNtQhs7sVwfop
 rWJMEpmjpoM7rxpKJL3llI3+XfhbGZ3ZK6T2NNYwlMTTmvD/gBUxCaDx724yGagtl038Rx+iMf
 qVU=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="118323682"
Received: from mail-dm3nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.52])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:13:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e5gOlx1+oyhwOc8+IPGaUZR3Fe6y9B3UUfh11oRqy8EXZwmBZf9JV5qVnvYo0SHMv0/dH4KNn5TKvrJfnPN4Ea0fi4reah0Tx/RdbJEYQEoJuY6SkaFIeHRTZNChPeZtPIzEEQadT3L96Us9qO3Gcv8pCW3OSqD+ig/0CvYzK242B0rtvjmO+2LUY0wkbdml8osZWZnsr0pyMl5KKaDLDSIeQ/Qmr4MU1i+A6fU93DhRjiG4V8l5QOdDhwkXLkwpwrYL/FldAFrFocFQ+CPrjF7Y2sF66sFzOmH2+XsJELiHRgzTvh3lKG/3X6ZX+pe2FNJGFiH3Q4zWXSHRB8u0Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+6R2dTZKRagaVpYFf5y7/cnzKNja7pUVOaQfpTag04=;
 b=Q8J4bZnig/V09CpsD1qaTgNAUw7S0ESihY7FOo4hA/PrRfAdWbQS80OLcSEgxWZ2sxfqA0a/9l2CSRMuc8yw9+Rblnv+Kk+Wl2TkB7qPkPusfy7sSh9q+mkS6GVO94BGQAAcg+/07V+4XMvN6cSaMOyFMJv0gIGb6V5Qe6ChGnqlCdi/5wtGrWd7Jlknxb/nYDAX/KxfNZPuv+5NTKnMyQEInIz80B25h+LOh/XpNuynirn5Yum4YFMpS0hvwbPP6PRxGZ6VHhOPZrWiCy+5wNnyBj0+kFhP+ngCCKH+VOjU6sx98WVakDYkLgeKydUi3X7BKd4AwjsEn+oZrLqWFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u+6R2dTZKRagaVpYFf5y7/cnzKNja7pUVOaQfpTag04=;
 b=JsFyqgNclkXMJo4ALUmcWaT3m76L2AquenFqkq0pYDXFlF7fU6o9LtXuOn+9CMgyDwjbhKBNkMB+HSwQyOTkRfRFiAHpEBQirouJ3tIwjVtStEnAfKwnyDFv3UkJ1Wuq6UjsqbzAU4BctAb3gvhAaT7NIplEV0VsoKSQ0MjJbNk=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:13:17 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:13:17 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 00/21] KVM RISC-V Support
Thread-Topic: [PATCH v7 00/21] KVM RISC-V Support
Thread-Index: AQHVYzup7UjOJOzJOkmagvBOHGzFdQ==
Date: Wed, 4 Sep 2019 16:13:17 +0000
Message-ID: <20190904161245.111924-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0084.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::24)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.53.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: afccc673-423b-4e90-da9f-08d73152cbf6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-purlcount: 4
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5504B94DECC64106E1BB14438DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(966005)(25786009)(386003)(66946007)(99286004)(256004)(14444005)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6306002)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(2616005)(66066001)(44832011)(4326008)(2906002)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gRLcvomCvDWjS0ThogvN94yiUxqKM5248/e54GGXAQ/naqg13joSITAcfFz6RwGikzDe2NTvLScrprdz97VoFaozQWpTSCUjCvhGrFAZJUZe+ZUO4u8eHI6Bf2JRJ7LA8giuSFQfjKx1V0xnuLdAU+JxjaOaEROyda0tloe0o4GX1a2a6va3017IXVgSWaxF4W+w+wWjREqasUIAzainNwvKl0bBIj1vGCgA3LOocZH9lPJFdmi5srVgXwLHCI6QRHDfzCG4JGDbh+DErzP7Y3aak3yG7ma0+N5RXCiA2lg/B58UuSP5Yty0vndpuD+pGJ3mp/94xpgFy/dloncgspIf0NZIi9taQXzmM/FTXm8wBNFlVigGytZ/1ynLfDwZUyFqNLkZnnhjnpmCDJGqOLr03V/gRsfRTKrHCn85JKU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afccc673-423b-4e90-da9f-08d73152cbf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:13:17.6475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Uq1Or3zPQWhWmIpuxiW2cOUyVLZEPpRswPo+VcGLGysnXRdPUYXFCtbJbeEvk8Uwq5oeTDrY7u+e6SOSKTBNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091323_747243_7EB7E0A3 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
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
4. PLIC emulation is done in user-space.
5. Timer and IPI emuation is done in-kernel.
6. MMU notifiers supported.
7. FP lazy save/restore supported.
8. SBI v0.1 emulation for KVM Guest available.

Here's a brief TODO list which we will work upon after this series:
1. Implement recursive stage2 page table programing
2. SBI v0.2 emulation in-kernel
3. SBI v0.2 hart hotplug emulation in-kernel
4. In-kernel PLIC emulation
5. ..... and more .....

This series can be found in riscv_kvm_v7 branch at:
https//github.com/avpatel/linux.git

Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v1 branch at:
https//github.com/avpatel/kvmtool.git

We need OpenSBI with RISC-V hypervisor extension support which can be
found in hyp_ext_changes_v1 branch at:
https://github.com/riscv/opensbi.git

The QEMU RISC-V hypervisor emulation is done by Alistair and is available
in riscv-hyp-work.next branch at:
https://github.com/alistair23/qemu.git

To play around with KVM RISC-V, refer KVM RISC-V wiki at:
https://github.com/kvm-riscv/howto/wiki
https://github.com/kvm-riscv/howto/wiki/KVM-RISCV64-on-QEMU

Changes since v6:
- Rebased patches on Linux-5.3-rc7
- Added "return_handled" in struct kvm_mmio_decode to ensure that
  kvm_riscv_vcpu_mmio_return() updates SEPC only once
- Removed trap_stval parameter from kvm_riscv_vcpu_unpriv_read()
- Updated git repo URL in MAINTAINERS entry

Changes since v5:
- Renamed KVM_REG_RISCV_CONFIG_TIMEBASE register to
  KVM_REG_RISCV_CONFIG_TBFREQ register in ONE_REG interface
- Update SPEC in kvm_riscv_vcpu_mmio_return() for MMIO exits
- Use switch case instead of illegal instruction opcode table for simplicity
- Improve comments in stage2_remote_tlb_flush() for a potential remote TLB
  flush optimization
- Handle all unsupported SBI calls in default case of
  kvm_riscv_vcpu_sbi_ecall() function
- Fixed kvm_riscv_vcpu_sync_interrupts() for software interrupts
- Improved unprivilege reads to handle traps due to Guest stage1 page table
- Added separate patch to document RISC-V specific things in
  Documentation/virt/kvm/api.txt

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

Anup Patel (16):
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
  RISC-V: KVM: Document RISC-V specific parts of KVM API.
  RISC-V: Enable VIRTIO drivers in RV64 and RV32 defconfig
  RISC-V: KVM: Add MAINTAINERS entry

Atish Patra (5):
  RISC-V: Export few kernel symbols
  RISC-V: KVM: Add timer functionality
  RISC-V: KVM: FP lazy save/restore
  RISC-V: KVM: Implement ONE REG interface for FP registers
  RISC-V: KVM: Add SBI v0.1 support

 Documentation/virt/kvm/api.txt          | 141 +++-
 MAINTAINERS                             |  10 +
 arch/riscv/Kconfig                      |   2 +
 arch/riscv/Makefile                     |   2 +
 arch/riscv/configs/defconfig            |  11 +
 arch/riscv/configs/rv32_defconfig       |  11 +
 arch/riscv/include/asm/csr.h            |  58 ++
 arch/riscv/include/asm/hwcap.h          |  26 +
 arch/riscv/include/asm/kvm_host.h       | 255 ++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  30 +
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       | 104 +++
 arch/riscv/kernel/asm-offsets.c         | 148 ++++
 arch/riscv/kernel/cpufeature.c          |  79 +-
 arch/riscv/kernel/smp.c                 |   2 +-
 arch/riscv/kernel/time.c                |   1 +
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  92 +++
 arch/riscv/kvm/mmu.c                    | 911 +++++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  43 +
 arch/riscv/kvm/vcpu.c                   | 998 ++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 616 +++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 104 +++
 arch/riscv/kvm/vcpu_switch.S            | 376 +++++++++
 arch/riscv/kvm/vcpu_timer.c             | 113 +++
 arch/riscv/kvm/vm.c                     |  86 ++
 arch/riscv/kvm/vmid.c                   | 123 +++
 drivers/clocksource/timer-riscv.c       |   8 +
 include/clocksource/timer-riscv.h       |  16 +
 include/uapi/linux/kvm.h                |   1 +
 31 files changed, 4405 insertions(+), 11 deletions(-)
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
