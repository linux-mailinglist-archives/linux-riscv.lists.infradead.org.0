Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D3D3C979F
	for <lists+linux-riscv@lfdr.de>; Thu,  3 Oct 2019 07:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ffX02MqwPpXwpoE1zQC14dAPMnettkiLNsKN4iM6dF8=; b=j/EyKa4eYJeC3p
	YorU9rbJQSlcqUnRy8N5YWarFrZCdnxsgMPgtRbcJNvGRBCt1mI+XiXrP6GV8hAVp6Vvk409QQFK1
	j8CQV3pocmo1myh+sBytCvs7wny9GkcpOdolC5U5LXCD8V3gnBEEdEHlh/M21CGpBB5OjNzCSQKQo
	zRqXZ/skS1YpNF5lvzkWVFz4MKaaVeU73sWFp/9tyGDat2mV/PAqdJjGu6bTeDXA7G7BAMSjQ7Ubz
	aSRBKO4SQiuHvjkry5IjHoBQ9x6fBAbnpq6oFeF8pjdB7tg7HXmfuFRG86HlFmBglmlwFpza0Q9IT
	+NvYFeGUpsenwCI7NLLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtKI-0003Dz-2l; Thu, 03 Oct 2019 05:06:54 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtKC-0003AN-IQ
 for linux-riscv@lists.infradead.org; Thu, 03 Oct 2019 05:06:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570079209; x=1601615209;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=PIEuOeu7U/Kt1Kj4de+aysu6dAD4lAg836SUqf4HZKs=;
 b=rHrExKwukBdAp2YwV0lPd1AIYwxRziQ6k263w5+WjNnB1EwiY8ewSdob
 nWgt1nTdI7P8ScIP6Lq4tE4KSQrqMOtud2RgekQEWx2e9yTaNLQ3dxRQu
 lTM2PGbfnSA7NvMfNCsp/55hjjaeia+98vH6EgZrRQp8/fupJ8L0ph5Tn
 A8yojHW/Guw9VNc7TNIvZU/X9EQ2DeGJMnnC1ijqTXH/oPfhWMGccIbaU
 IBJz/pfJ5JJzqSylFNTTBUNr4Gt5u4doG0f0zgYm//oCUiVTY3sn7Buh0
 qxQ8QWzn90ybKVyl79TyBFeHjFb54xiV1EOOBjqEE6LIEgF0TM+bfQVU7 Q==;
IronPort-SDR: 8aEVDO10LywIJEQMq5nLkL7QFpozJGUFmaHDME19WPd91FuyT50z3k2tdNmdG6qHTMK3cqswNb
 SiYhgU9t7BSSOoXr6fQTimjvH9JfwFbvRcYDc6nR6FBc6QTnI9fzIgVILuHnQHcDh+pv41jT4K
 Mg/Ucu/yflX4PDWS5TSHijmCtbNjhVoSsspSSvSONkp1UugPrrUVLU4ju6RnmX0x3uTdnajfPz
 AnVQGsChDPTAQSd0gZc8ILrJUsk/fhGbYW5FM9BZ3nO0jOyeEWrURHF8q2tLxOKx63+0p2fIo1
 sGw=
X-IronPort-AV: E=Sophos;i="5.67,251,1566835200"; d="scan'208";a="120461277"
Received: from mail-co1nam03lp2057.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.57])
 by ob1.hgst.iphmx.com with ESMTP; 03 Oct 2019 13:06:30 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8HEn7mgBAoLM6o3LrLdPSm3hic0XqCLKc7y2wwiBSSjJJ7ROmTGx2ncrbQ1SkmhqoIgTQaaETpEo4jX1BH0ATN2th/z0NB4zkWYWldPak8hWM3vsTCLZm9Pb/ZR74ecVNUMyCMHjMgKoUVo93aWNl9qdX98nWMNO7chsZS6i6Libi78VLJ7ilngi6bu9jF0LFqDnNmzKUBBeH45VH2RUZO+wN7C/iA9AA2sjevzHOQs167AKGFgrRQSg883zNGei8OgpbKwiZRp07cCx5Sa2IVt8mYYKqThUlUw4WdDUTdniC/yC+29C2GHuEsCGYgdydwWKOADkUXcQz4GDyz4Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ooYuGa/Sijxs9VtSmp1l7kG4pwbuyGv+5FMmGy7ct+4=;
 b=WpoU0selQwM2ByYzOEqrJpOfSAetdPdV03CWT7auXudEeexAIW4jF1dKNBY5eCgez38fw2VSuyKYGToBrM+vqGF/kxEji4czwLJAGY16X+J9ECrBaZuE9Q1G6estKhEeofmRZY6PCfUM2Y8VLzcZ2Keq3ezlKc3DRBPLRaJI0YqVFgj8ZPQuhb/swTmWiqLqhxEI6in5M6xKoxIPkuAY0hoYpVXKADkLMREr213ZfynNYN08KFaOSzVJMF2g78NVL7GqlfBYjnYyxTzNQQ4qLANNumVm+hoDMSib5s9PIA5gP+Sn20Br4cnQlLFTotw8WFT7SEg/i4tTmvwmII/76A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ooYuGa/Sijxs9VtSmp1l7kG4pwbuyGv+5FMmGy7ct+4=;
 b=PTarw0x7u61/QYtDiHg++rfYAI6PCg0rWsDttzA7E3dI77Olqb+2g+myz8+qcrlfQNZVfzedEFtIeOqTgC2tp4y0CtoFI4G4NoiWHeeSnZHPniiSAbPWkW3JdcJkT1CwjYkfug1HQEm7N58LeUuob0l2WjHCjCtB1pqDeHDTc/Q=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.18; Thu, 3 Oct 2019 05:06:29 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 05:06:29 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v8 00/19] KVM RISC-V Support
Thread-Topic: [PATCH v8 00/19] KVM RISC-V Support
Thread-Index: AQHVeahQgwihNAIJEEKPI5RCfSwzzA==
Date: Thu, 3 Oct 2019 05:06:29 +0000
Message-ID: <20191003050558.9031-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0030.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:c::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [111.235.74.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 225bdbcf-ebe5-4764-54bd-08d747bf730c
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6991:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6991B602B0D5F5EE0AFFB6FC8D9F0@MN2PR04MB6991.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:277;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(189003)(199004)(7416002)(52116002)(25786009)(102836004)(54906003)(6506007)(1076003)(386003)(7736002)(44832011)(6436002)(486006)(66066001)(71190400001)(71200400001)(6116002)(3846002)(476003)(2616005)(26005)(305945005)(6512007)(36756003)(186003)(6306002)(14454004)(110136005)(5660300002)(6486002)(66446008)(66476007)(8936002)(966005)(66556008)(256004)(64756008)(14444005)(66946007)(86362001)(8676002)(81156014)(81166006)(99286004)(316002)(4326008)(2906002)(478600001)(50226002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6991;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gR9ZDyA/0BYzGeddDD6gVBxFOmNKgNkuOPexW4H4MRGnyF5jgB+VqcSsCkldSsVJPkIcfVEaPuwTIk/UDollFAk/KAdY+VkwkyTXxWtmWU7MB/Kt1kXmklenNbbZoK+B2tNI8pc+WMNuitZURsA5rexHbr/IbysQvnDbr29CE2u6UM81bjT+e5EyuuEzv/Hm2UK5ot1nXoRivV1c0OuDhVzVoOVxvtuhxzZYNO4xVRG58ipuDqQ0UBpLjJ3BKgasgQ0uSL4t57rwPtm+JT4swDswZo0wsWwZ9JU3RGovYLDTJPKkmeARveOvZ9MJkNUyudfvFZ7Li4iF7PrhHdW1YhcYHSq+ZkJElgoY9vprRwTyV9dlcE92vSj48mHiKfKlcVZm0DU/Yunj1cdJrMrH37idvub0wK1NwHXnZFrGv/3Bck7e/3SyTm1fh9TcWH672c3coce56dshwOqhW9h8hw==
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 225bdbcf-ebe5-4764-54bd-08d747bf730c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 05:06:29.4166 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q+JLqBmwd1EpAM8r+6NbMAiGhUC2Neyen8V4KxwRmYHwAvRaW/QB3KPf7sInWsFgYzhvtWj8nvfVfj4KfUoxfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6991
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_220648_622488_975F1A32 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
9. Forward unhandled SBI calls to KVM userspace.

Here's a brief TODO list which we will work upon after this series:
1. Implement recursive stage2 page table programing
2. SBI v0.2 emulation in-kernel
3. SBI v0.2 hart hotplug emulation in-kernel
4. In-kernel PLIC emulation
5. ..... and more .....

This series can be found in riscv_kvm_v8 branch at:
https//github.com/avpatel/linux.git

Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v1 branch at:
https//github.com/avpatel/kvmtool.git

The QEMU RISC-V hypervisor emulation is done by Alistair and is available
in riscv-hyp-work.next branch at:
https://github.com/alistair23/qemu.git

To play around with KVM RISC-V, refer KVM RISC-V wiki at:
https://github.com/kvm-riscv/howto/wiki
https://github.com/kvm-riscv/howto/wiki/KVM-RISCV64-on-QEMU

Changes since v7:
- Rebased series on Linux-5.4-rc1 and Atish's SBI v0.2 patches
- Removed PATCH1, PATCH3, and PATCH20 because these already merged
- Use kernel doc style comments for ISA bitmap functions
- Don't parse X, Y, and Z extension in riscv_fill_hwcap() because it will
  be added in-future
- Mark KVM RISC-V kconfig option as EXPERIMENTAL
- Typo fix in commit description of PATCH6 of v7 series
- Use separate structs for CORE and CSR registers of ONE_REG interface
- Explicitly include asm/sbi.h in kvm/vcpu_sbi.c
- Removed implicit switch-case fall-through in kvm_riscv_vcpu_exit()
- No need to set VSSTATUS.MXR bit in kvm_riscv_vcpu_unpriv_read()
- Removed register for instruction length in kvm_riscv_vcpu_unpriv_read()
- Added defines for checking/decoding instruction length
- Added separate patch to forward unhandled SBI calls to userspace tool

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

Anup Patel (15):
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
  RISC-V: KVM: Forward unhandled SBI calls to userspace
  RISC-V: KVM: Document RISC-V specific parts of KVM API.
  RISC-V: KVM: Add MAINTAINERS entry

Atish Patra (4):
  RISC-V: KVM: Add timer functionality
  RISC-V: KVM: FP lazy save/restore
  RISC-V: KVM: Implement ONE REG interface for FP registers
  RISC-V: KVM: Add SBI v0.1 support

 Documentation/virt/kvm/api.txt          |  158 +++-
 MAINTAINERS                             |   10 +
 arch/riscv/Kconfig                      |    2 +
 arch/riscv/Makefile                     |    2 +
 arch/riscv/include/asm/csr.h            |   58 ++
 arch/riscv/include/asm/hwcap.h          |   22 +
 arch/riscv/include/asm/kvm_host.h       |  263 ++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |   30 +
 arch/riscv/include/asm/pgtable-bits.h   |    1 +
 arch/riscv/include/uapi/asm/kvm.h       |  111 +++
 arch/riscv/kernel/asm-offsets.c         |  148 ++++
 arch/riscv/kernel/cpufeature.c          |   83 +-
 arch/riscv/kvm/Kconfig                  |   34 +
 arch/riscv/kvm/Makefile                 |   14 +
 arch/riscv/kvm/main.c                   |   92 +++
 arch/riscv/kvm/mmu.c                    |  911 ++++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |   43 +
 arch/riscv/kvm/vcpu.c                   | 1011 +++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              |  610 ++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               |  149 ++++
 arch/riscv/kvm/vcpu_switch.S            |  382 +++++++++
 arch/riscv/kvm/vcpu_timer.c             |  113 +++
 arch/riscv/kvm/vm.c                     |   86 ++
 arch/riscv/kvm/vmid.c                   |  123 +++
 drivers/clocksource/timer-riscv.c       |    8 +
 include/clocksource/timer-riscv.h       |   16 +
 include/uapi/linux/kvm.h                |    8 +
 27 files changed, 4478 insertions(+), 10 deletions(-)
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
