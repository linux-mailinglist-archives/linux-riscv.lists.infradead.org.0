Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D48D9662
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GVwmE2ZaMbyIa7+ou8rS2AE4x6b58MxGpB+3r/C43Mc=; b=NnVyYETbXcXXw8
	o3Np17cqn/l2HJS2K7dsBbHgx+0mQmEgWEDJXjAClWfbcor5YnlX1xpg6ifO3EmDovDd/URVjSVDD
	9sVTtARbw3MkQ81cmis0q9D1HlckHYsVMOdK7bCSaI06gmslJ0rO+J3FwCP8u0O61XuIVc43oM8jc
	vIZ55KR/qydyTfHXUVOnxRm+dSQd+WJza0umG2YDa05+ph94g30zLXIBy5KTV5HYXeHRdRzX8lEof
	OcxAswTZENW83DjaLpjMF8YVXArnpcaJ7bLiyjWf37NKiRDkl8SB3s4JCjCxFxRp1RPb2dj1Jx4jo
	oOf4E6Kag0g0fkchvjHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlqN-0007CU-Ge; Wed, 16 Oct 2019 16:08:11 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlqJ-0007Bk-Ts
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:08:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242088; x=1602778088;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=dfLLuN+la3iKy6ZX8Z5xrKNppveTKZfMpAZXhDH99yg=;
 b=HqQWo22nRGQaYhJmKiJNhVgI1uDFNJmjUrPrjkow2QVfy20H7t1zHLBy
 wuZJtOGp4IKAYpoeU0yU4oReLcmd3Wnipd6L0SaueOMfvKYd8B+2vXqM4
 Wb+8Vp0xRNtYidRnl8TeQ07kTEq6Jafpwf/RcWpEpAZTnJAxGmqXXdnNC
 cfZS+geNQnFwpPSCUUFenV+WKRlLUZMuIPqKGhKdRFEj7glnnTFaOukaA
 Gy8CfcVi0OLs2Vmhi6DIaBMmqiJ60cB8CrraIRLTnDbsRFOH5sRwm8Nm+
 +rD5A3NnxcvWZZqG9NX9HaCJGUWbrvINbQi3gwQ4AtNxCtByxeOXW38QU A==;
IronPort-SDR: PyR8FXrA+Oo/TUxPkU/9BwGytWTeQhrkCIDMl1ai5zGXxvzBI6qQ42ZYyUBayq7SGwx79WMQ6u
 zkLb2T+Jhl9+CmykdoVBe8BWu+eW2whTKnNL2N1Lxv1nLWOI16OFxw+5/6/c5yKLRVPkkMt58k
 D49V6fi4BmzvTxYwVKcdafMDfB5IQCRvcduv7U403+M9nh5tJezd9DZMoM643GkyLtrjrXm2AH
 tZWMq2j72so9e08LuZxWs4CVBE+HjYWcOvIuSBfmGg4JKYmY0rwq8sZWP0S8U2EtpZxBq8b2N7
 biM=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="121448168"
Received: from mail-dm3nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.52])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:08:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f9YB1nY9fFoo/i2Ev2Ti0T1YDvbnTFY3AntianmfnjVAdBQZ15FE/MEBIudsrIFpBym9JlhJox1ngA9Dra7DYAbeIoQPpVvUjQu2wok4WwdwwKpb4SWQ48DGV32O6YGcuzv/3eixJ4ZvSnB1mGE9ypF5kwM2VkDNObA/T6sp9ViTOQlCnUjOK8TtBu6YUMYBxReWo4cuj85PvHFiaml/YosyekoO2umw+7yQreesCEjdGazp/hAQLVGUBzwA8nK2R0fzTm921FUMQjPxRt5Ux0/QnKoz/ByQtmDb+iXWjFIsoVWmyH4+DBrSVDF/W/QPL0iDpoyr/eoIATyH+AyikA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J91KfnOUqoFoWj199Ik90adrRRo0HPquPXLjl2e7yRY=;
 b=BuqFPWADAVIS223UIFGRNAJjZ75FuQ15wyao9EU7rbKBtDBS3Pa1lYxcqmBa7I4gG64ssLRq8OR2WBUr9NO6TkGkZk0yBQLRtcpS1T5pI7p6v6AHJqqrs8GmLqFztZqlmN8LiZ21QtNEVwGDkowZCLL9SAf+Yc+KGlq78k5EAUNGKJLe9XbEX58fV7uqqiV5g66leUM9BdcoCZ/IAiM+zAVwrBw6eXUNCxkxN/lUaKA1P2wRUVR5+Ktdbek1Cr8/6/KlA79iwgfXnAJAiVOymb7L3YnYsqiVM36Ft711wGqKh1cZzm2alN3W8vSnC6fUqQiqQpOS/STRAMKVrigRDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J91KfnOUqoFoWj199Ik90adrRRo0HPquPXLjl2e7yRY=;
 b=FjpPncGwPMwNJG/1G4DOprGiW/Iinf+b9F4Kv+iyMf1nfp+MMn3X9qgAZdq4eq2CR97drqRWcd7jlmD0QNYiKMmLtvDmY5/NBOrbrY3gNCayNFk3UEU3MH/9Oxipshj2GDdSpVQmjofK9cp6WWfxlScSRpj0IdSljTjWHn25RdM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6397.namprd04.prod.outlook.com (52.132.170.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Wed, 16 Oct 2019 16:08:02 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:08:02 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 00/22] KVM RISC-V Support
Thread-Topic: [PATCH v9 00/22] KVM RISC-V Support
Thread-Index: AQHVhDvjgWUSb1QOnEOpmdfhfnPxUQ==
Date: Wed, 16 Oct 2019 16:08:02 +0000
Message-ID: <20191016160649.24622-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.27.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 261cb235-cf59-4666-6d9f-08d75253057c
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6397:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB639769652E62FDC250C1244F8D920@MN2PR04MB6397.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:277;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(71190400001)(71200400001)(66556008)(66476007)(66446008)(64756008)(66946007)(6116002)(3846002)(14444005)(66066001)(52116002)(256004)(99286004)(25786009)(7416002)(14454004)(4326008)(478600001)(966005)(7736002)(8676002)(305945005)(110136005)(476003)(54906003)(86362001)(2616005)(316002)(102836004)(81166006)(486006)(55236004)(44832011)(6306002)(5660300002)(50226002)(26005)(9456002)(186003)(8936002)(36756003)(1076003)(6436002)(6512007)(2906002)(6486002)(386003)(81156014)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6397;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hpblZSej8o99pKKGUio2DnS/CuEHzt/vAZgGcbH7s/aFraIjTeeWKuU0RolJAeI1IGG47ZF7rSmTivIAc44cnCC7NJLJ6sdxi4cSSRpR9I3xGjLmSkr/fS4HelYJhU7NevcgjxwCGNCUM3e4rS/cW10/zYnXgKJs9kufHD65hGS1eA5RJbNUk8qvMH7Up9048Y+PLkJ0Ah8GAq7Hd5QAQfLnpmrG9Pb6x8Ut86TTAOF6TJEvDwz5rzzatw4/i5xaH4ogm1lkMg1rLYKbzFjHwtMu4eouw7vXzqA9uCI5r3UdELD8KZTSsiPYdugZi38eNwl9kAapqpjyuUyAbzA95AB7FuGwF7l+O5Q/cVlV8a/tYwk41fn4EUfTxSH8DNe9qLjaIWfqGojtQR7d9WLKdxff0C/CPo0qQW/4vvL0Ne+vxEC3HLw2Dhpm1ShR2UlMos/atmw/GQO4dy6XourizQ==
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 261cb235-cf59-4666-6d9f-08d75253057c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:08:02.6107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WHOI3wvyQYz8gSHma6FaSJdWpE8MtiZartrjwyX3rRIAVlLcAn67exp/k2SX4DbOt1R+h76So10b/Iu7DB88nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_090808_152407_CB1B705B 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
9. Forward unhandled SBI calls to KVM userspace.
10. Hugepage support for Guest/VM

Here's a brief TODO list which we will work upon after this series:
1. SBI v0.2 emulation in-kernel
2. SBI v0.2 hart hotplug emulation in-kernel
3. In-kernel PLIC emulation
4. ..... and more .....

This series can be found in riscv_kvm_v9 branch at:
https//github.com/avpatel/linux.git

Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v1 branch at:
https//github.com/avpatel/kvmtool.git

The QEMU RISC-V hypervisor emulation is done by Alistair and is available
in mainline/alistair/riscv-hyp-ext-v0.4.1 branch at:
https://github.com/kvm-riscv/qemu.git

To play around with KVM RISC-V, refer KVM RISC-V wiki at:
https://github.com/kvm-riscv/howto/wiki
https://github.com/kvm-riscv/howto/wiki/KVM-RISCV64-on-QEMU

Changes since v8:
 - Rebased series on Linux-5.4-rc3 and Atish's SBI v0.2 patches
 - Use HRTIMER_MODE_REL instead of HRTIMER_MODE_ABS in timer emulation
 - Fixed kvm_riscv_stage2_map() to handle hugepages
 - Added patch to forward unhandled SBI calls to user-space
 - Added patch for iterative/recursive stage2 page table programming
 - Added patch to remove per-CPU vsip_shadow variable
 - Added patch to fix race-condition in kvm_riscv_vcpu_sync_interrupts()

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

Anup Patel (18):
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
  RISC-V: KVM: Simplify stage2 page table programming
  RISC-V: KVM: Remove per-CPU vsip_shadow variable
  RISC-V: KVM: Fix race-condition in kvm_riscv_vcpu_sync_interrupts()
  RISC-V: KVM: Document RISC-V specific parts of KVM API.
  RISC-V: KVM: Add MAINTAINERS entry

Atish Patra (4):
  RISC-V: KVM: Add timer functionality
  RISC-V: KVM: FP lazy save/restore
  RISC-V: KVM: Implement ONE REG interface for FP registers
  RISC-V: KVM: Add SBI v0.1 support

 Documentation/virt/kvm/api.txt          | 158 +++-
 MAINTAINERS                             |  10 +
 arch/riscv/Kconfig                      |   2 +
 arch/riscv/Makefile                     |   2 +
 arch/riscv/include/asm/csr.h            |  58 ++
 arch/riscv/include/asm/hwcap.h          |  22 +
 arch/riscv/include/asm/kvm_host.h       | 260 +++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  30 +
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       | 111 +++
 arch/riscv/kernel/asm-offsets.c         | 148 ++++
 arch/riscv/kernel/cpufeature.c          |  83 +-
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  86 ++
 arch/riscv/kvm/mmu.c                    | 773 ++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  43 +
 arch/riscv/kvm/vcpu.c                   | 995 ++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 610 +++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 151 ++++
 arch/riscv/kvm/vcpu_switch.S            | 382 +++++++++
 arch/riscv/kvm/vcpu_timer.c             | 110 +++
 arch/riscv/kvm/vm.c                     |  86 ++
 arch/riscv/kvm/vmid.c                   | 123 +++
 drivers/clocksource/timer-riscv.c       |   8 +
 include/clocksource/timer-riscv.h       |  16 +
 include/uapi/linux/kvm.h                |   8 +
 27 files changed, 4314 insertions(+), 10 deletions(-)
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
