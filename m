Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3CD81D7C
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X/1tXsVfezBDrrZSvPMwEhZ41ZV3+2MEd5ewyi2oYmA=; b=gwQIJEpjoq3sXl
	DORbeKeWuxZQvKHZlVNgD3ZNkdnScaZ5M67SRFExKYngX5lu5JlfAjgQi1VmqMY1vq+xXx5fLYcS5
	LNgZ6MR0OW4VfRhOW0pHQVIbgr2BwxbWK9iMcXBKF0Mgq+nk/Hgbm5oVWuAbXsRTIi1YQkx0x78gh
	ps86vTK5/TyvKA1xaTtFu6Rk92gDwwJTCgVFhFNA7gxVP2cpRIDuyO4eTC0aWVwNeEChSww0jX5RI
	M44CMujBJzsELk5TbTgYsCLjIDaNFMo5cyei4Dx64hr0jV9Es8Dr4fHDRphI1DRq4E1kpefooas2m
	aax8iHpX/qh6uAQm+Odw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudG7-0001Df-Hw; Mon, 05 Aug 2019 13:42:43 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudG3-0001DI-Vc
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012560; x=1596548560;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=fv6HOldhv+uAcYSJiFK2qcTFyU+k0TE8fn4n13mVPNE=;
 b=aaMulHh1CWBnXVvcRmu3sOq4HP2m+IrjzGndQWpIQ0OLKEdJRpKPpWZu
 sv++QEb3/G+MiZUe26SrMOtBXbW+SZj55RwDNdMJhVV2S2nvamBXKoMK+
 ze03bBT5S/MMaoorvaBBG0NglUO9YrO71BJ+sn45xt0Z2YlQvtTRVKy5O
 uuQ2EI9lN5O7Hd3cZVSmKR40WDwNytR4ueNZfu9D3IcOs0PWh8ASYJAQD
 CjuF+rlf1oArk/t/CALFpdLWPTmCTESYXS9y66tzthmJXNXqQaWcl+Asi
 RpCdvHSzFY6wgS6s4hHyIV8jd2YuSiftlCyCDBDTxKzZQW29x7L/G1ucZ w==;
IronPort-SDR: g3FW/cA82R6FPNyiaNHtvAZAoRTtaSDQYg5f2OV4kHHIinxQNqC9nK8WEzmAwbAme1uCFRSbtN
 YbKFqtEdAU5oR6A6taTfXmI43X5o1wX3FbZ+yxzxUs5yx72pqoZiXxgN0tTMYpbxTtg4mGXbN9
 yfLM7RrBj1RWNoSy7OkLAI8qJykLEm8yHfgu0v5QqCYhw5/prqEYWlD5T6+LXBQ/whcaDCTuk7
 aJCTivw1YtxsODLUC3souDzNiTMMYl+FGkR+MqS5dY9z3q6FKY6xSXDiOKmcmjwYDmEDy7RlDO
 sQ4=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="115017029"
Received: from mail-co1nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.52])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:42:36 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q321ZMrXSyPCOSIuPUtpVKwxvGdli/PqjiIMkgbVFArqEKF7J3Bb1KFdfgNQ2cmAPL22fZ67QSZJpScLLdImjCajaEtDg3Kn4SUXz+DSdMOzoUxCICKrHTpn0wAKFituQVDrIsSYEj630egaapdKyqeewvHpqNqZYtP7hTyiYl8jYaiP7Tt8+UxmIjsLi2otFPqwRZP3ago7K+D+BP7EAAu24zZs2/yrx6D8fHbaBPhjKZWV/2a322mAdCkx821GEplOGnnqjRBSTrz4ErqNGuEzIHBtm1uGRrneIYgNqDYj210bjlgcZBAMuiHx8jU5Cic7HWGJVkkg8H1wJR6VAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMdgTeVUFgElwWyPKULSXH+nJYgQ18at3eVQABijB6A=;
 b=S2sAqZ8u2hj+sSamDjG/QOazXWsFS0QmhqrORVIwJvlqT+8NHSa49G9fqBQqvyK4PItC1mnUkCqEOTZVVWTH1Frm2njVG7qfHIKBmVLlZialApmQSC83Uc/YbVSF5GStpfI+UQOH4QIs1ke59zb7P1CqykPsxbsFZdpMZ9w4K7D2LCGRYDVmVuaGylRp3PTKSCOttywxPxk+WNi04HeRmpQB2WXeJJ+nEAoEBbNqapehgKhr8KFOnopbxVh3NPn5GZetc0PVh1eAaWFeGeDH3S6jbcH8F7xPAQtcI1wnyMl8qIBhvJgf8XIkQij8WTht0dpR5RdZ9PeQ5xfBzW4A9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NMdgTeVUFgElwWyPKULSXH+nJYgQ18at3eVQABijB6A=;
 b=PUC5Yos1qyiRukpSgcVckiqSVsTGu4fHNoIgKRZ+6+j4oi1gyEzsteJYw+tXPVsPUUKJD10PXzrdyM8oCg5MM3CHcb+yrF0NCmVLbtTm/hP8v0B8gnRoLUlNdEgP8UT0haKC+Yj+OJByyMEREMUEknHcoffIwJO/4MDNPVOAgWg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6446.namprd04.prod.outlook.com (52.132.169.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 13:42:33 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:42:33 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 00/19] KVM RISC-V Support
Thread-Topic: [PATCH v3 00/19] KVM RISC-V Support
Thread-Index: AQHVS5OiO2/2R/gnDkij9tcny5bgtw==
Date: Mon, 5 Aug 2019 13:42:33 +0000
Message-ID: <20190805134201.2814-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::27) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18af8681-3259-47ab-c66f-08d719aac4d8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6446; 
x-ms-traffictypediagnostic: MN2PR04MB6446:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MN2PR04MB6446A2D9F446E0309AA5716D8DDA0@MN2PR04MB6446.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(189003)(199004)(102836004)(55236004)(386003)(25786009)(4326008)(6506007)(7416002)(53936002)(2906002)(6306002)(478600001)(966005)(3846002)(6116002)(44832011)(2616005)(476003)(86362001)(486006)(1076003)(6436002)(256004)(110136005)(6512007)(316002)(54906003)(14444005)(6486002)(14454004)(66946007)(66476007)(66556008)(36756003)(305945005)(81166006)(5660300002)(71200400001)(71190400001)(68736007)(64756008)(66446008)(81156014)(7736002)(8676002)(8936002)(78486014)(99286004)(66066001)(50226002)(52116002)(186003)(9456002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6446;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0GZg38gg5fLB79QJ4NCLgpwBVC90qd9PW97ZUzYXhgIem4Z77xLI4YDO8M4oFZAaoIluiqot/E+/aXnrmoeRhk2exU/Lg2pc04PL9E75talLp3tY4Qyb2aotozyNOhRt5gR5V98PZiQ6rhf7lpjG6ApqOTW1lZE/4B/czVc8tzITlsvIR4Q+2aklfZenwWo2picwZ7tdRaUGnPIUMpPyTWfe2a9Z4sLNQKjlB5Axd6ucqaOLZYL0RDbpwUKjXvvq67d8VprZfIoCX9GPd4aXt1IAqxKv05KT0DUUqcWFs9/N2Xon0uNP2U1gBVjgdnELaCSUNDy3+/yCBIN5Z/OQa6kxSvrYkKhKnEXCm8z0HbvVYLHjdqpzpjVBZQbSfq7uP48GWfop5nv8rGr8zFORU2DxVe6J4ayCvlZ8lEJr28k=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18af8681-3259-47ab-c66f-08d719aac4d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:42:33.6658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064240_137952_F73C3437 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This series is based upon KVM pre-patches sent by Atish earlier
(https://lkml.org/lkml/2019/8/3/3) and it can be found in
riscv_kvm_v3 branch at:
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

Anup Patel (14):
  KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
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
 arch/riscv/include/asm/kvm_host.h       | 243 ++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       |  98 +++
 arch/riscv/kernel/asm-offsets.c         | 148 ++++
 arch/riscv/kernel/smp.c                 |   2 +-
 arch/riscv/kernel/time.c                |   1 +
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  86 +++
 arch/riscv/kvm/mmu.c                    | 905 ++++++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  43 ++
 arch/riscv/kvm/vcpu.c                   | 969 ++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 556 ++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 119 +++
 arch/riscv/kvm/vcpu_switch.S            | 368 +++++++++
 arch/riscv/kvm/vcpu_timer.c             | 106 +++
 arch/riscv/kvm/vm.c                     |  86 +++
 arch/riscv/kvm/vmid.c                   | 111 +++
 drivers/clocksource/timer-riscv.c       |   8 +
 include/clocksource/timer-riscv.h       |  16 +
 include/uapi/linux/kvm.h                |   1 +
 28 files changed, 4044 insertions(+), 1 deletion(-)
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
