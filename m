Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B286978AFC
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0zNCbEEtq1bba7NqqV2UhUlWVhKxP9K9iVZKv1vM71Y=; b=T+UJ5A28fDy7eP
	aSl/u/V5TnlCqouJ2rotEu7Bcy2gihoXlUjmoygH5lcp7dyut3+90wBCuXcbWDbxUq3LvpVhm7qNS
	KQ1DK5wYTW3yRE/P5iG55Mfj9vGdCCZ4xWLAaNWNGxWAzbXmIYfOv7phYK6ArndtGiTuBJUBhsizd
	z4MV90rppDQjmFeUTi6qKuh8AzG6+pgqu/NTEjSZsAaoNcmxCz0vPo/HBFVgTiedoKdRhdvX0Xhbr
	fmz71vntzK/N4JogE4kS/pWtk2NKm469k4ARMoUJDC1iPwPH7P4aTzTkq2Gvz+SMN1xA89eRuobat
	hNVMctKAVsWl5O2i+xaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4GT-0002G7-Gf; Mon, 29 Jul 2019 11:56:29 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4GQ-0002Es-5c
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401396; x=1595937396;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=1w8+KdjZoQbDyZTswnKPIFaNkOHkAqJAgl5ucvJJ8fk=;
 b=O9ADV+z451mOO2qDno6OFdqo+8//5XraWT+Ss0w+ez3vFVPJ1RLGDVUl
 PD+xmQsuSsI9MKkndpAzitu6goTYsbxxXFcq1gfHBHpJ1eh836B9U4t6U
 boTZmugVj60XKekVB2uMNeOwKiGSGAtOcC9kTtFElHB98Y8S6QChpHFX/
 qKlyXufQbQfCe5k1Wb4MQ4mUOPbHA5AQuWDGzUbOd2JFW1BqF4Z6VcW5k
 gYXsY/rPEgQytMI0o4cCpvtETNlCL/ICEWTMoAhQySneJR4qDydeCvAMV
 ll+wGZJanAnb3qeg5G7n/SQsro8JIC6xHGWCVDJi0M/K9WGIZOI/8/X05 g==;
IronPort-SDR: bncCUDA+z6dv7C/d/uC758MT5EfV7PWDwURq/S780CfVXefcyrtwfBveyQAH5r6ku6cIWiBa9R
 TGn8QWzb/gCd2fIUWknz1d2mW52uUQoV7f0VDEEZKwnwzwdVMnNIZDtf9qFPl7FcooBJzto27Q
 PYKEpKHdeToK+7/ppXbRp+Np9kZ7xiNL9xhmPxDpmaYb9sEjG17gqeTWvoBDqhFLVK3ZZJYkG0
 8rrPxjqSW91AybfaGhS4pa7IxgeYzhrLof4sYEgB/8OBTTYI/aqzHF2CYxBXuUnODNyp6elSD6
 OKU=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="214553044"
Received: from mail-sn1nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.57])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:56:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oUTRaRvGjwSjtQdLNy0t21QyhqKsLDIAg2KJt4eJXKz4fHClFsLXrAvpdjKvR/mzxHT5UA0i24s1DOPG1YPMNHJJ+/rBUbJ0vDBpv0jNeSLa+oMMlBRB1XDYCjW1kPavhv0LUWIv+Ns7v/Jr+q6rICAE6Sgz/TNJJKhXH+fx48ZDAh3aokgYGwEb0k5YPcPpKFFH9s1UuaJygqT6TKlZGkqRu0teB4+buNL3Mjj8IbHywt1zjMaEE81kQWmPSSmvds6h8WRaxi2SB+VhpVq8Ghc8lRpFaKqes/phoWziYZAU7G5bjaEdL6qopmIXwBamC/N5woK+WT+bR//WeJeUpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4R1fAgBtm/P4noUaDa5HAqUibITEOBaYk9JDAsExLQM=;
 b=bjL7uZnK/0Zfw8hHcVeTJkD6FeSvJDmb9qazrZwbfyH+28b+JU0iq27TkPvFYIfBJCjk8QN3WuXOSwstubZ3Wb+Xj/6wHLCQghGCQqX+mCKCFilccTI7i73c30Xcq7NHkQPE9jer5VwGvl9jFS41+P0lNg3rRwZ55low1MZ5M959To6BDZdzwatLvksV58s8y9gtx4iPgtkZqMm3CpTJfHZjMAIGjZTD6DVjPkjkzPj7J1/OgFMiowwpPHqsi9wHQn6ug2ffEUHF2E51I6EbYTnndWMUrcgCr1z4F2UmiNqd/J7yXuyZrVaiw89M4Gq9nYM4zFo4ajHvX0uCbZVqZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4R1fAgBtm/P4noUaDa5HAqUibITEOBaYk9JDAsExLQM=;
 b=QfWTUrrCkYh2N4ADABxbPBb8ajm4Te0GKTAgfi80ZQbX7ISPTYY/9WDsMgX8Ly2IEnPc0dQgbC95PQaULafANDYcuJc054jy2aoTxrNra3/Id4+3lOCHM8UyycbHxSZ5yGSi3T36gt+gcDFvwrVbnS3hFh/XWkmNOJnDSyfWDZI=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5952.namprd04.prod.outlook.com (20.179.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 11:56:19 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:56:19 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 00/16] KVM RISC-V Support
Thread-Topic: [RFC PATCH 00/16] KVM RISC-V Support
Thread-Index: AQHVRgSiwwiv+vb1mEmL735Or1vKMg==
Date: Mon, 29 Jul 2019 11:56:19 +0000
Message-ID: <20190729115544.17895-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0116.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::32)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.23.101]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 325ef1f5-8903-4ed5-2b12-08d7141bc45f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5952; 
x-ms-traffictypediagnostic: MN2PR04MB5952:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MN2PR04MB59522AB858AF1B73B7F8DB248DDD0@MN2PR04MB5952.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(189003)(199004)(966005)(478600001)(2906002)(6436002)(486006)(6512007)(6306002)(53936002)(36756003)(2616005)(44832011)(78486014)(386003)(6506007)(102836004)(55236004)(4326008)(71200400001)(476003)(71190400001)(9456002)(7736002)(26005)(50226002)(81166006)(81156014)(8676002)(8936002)(186003)(99286004)(6486002)(68736007)(14444005)(1076003)(256004)(7416002)(305945005)(66446008)(25786009)(66066001)(6116002)(3846002)(52116002)(14454004)(316002)(54906003)(86362001)(66556008)(66476007)(110136005)(66946007)(5660300002)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5952;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qhShs2lhk2k9H7LAF68MRqvN1BifUmWrfBSqaRZSY29BJg/McN7xy10B77A8xAiIdUG0a21hSYtgUfMOiVMEOTwiFhgMsIAxYzcjyDXB0KRk0wowPMMyWTIh8UyXjExSrMr2Wp3traZXDawH6puuwDsIX1XoVF0WCVHJ0BaGbHkS0gClMUx0PylU/pBJDDD0nlOLJnJticXDMNsz80GCC2BszG2dQlWUDsbE+uVdcl68cP6vcJQmcnNJjS/QNQ9fPN1nvjhPl7EVh9dM9/szczRPXK1ENi3F/6DYXuSmrY4kHwXQEQ/PRD9bRxNQ3eOy6S7h+xSI6psPflPvm/JE33OgwlgwGGh1XvVWDKayT9hqui70DqR83LTOBQ6IJ9FQ2xOtfB07Gn2yKO+3F6hHd4nDk3xbC9AzHrkdnYtNJxc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 325ef1f5-8903-4ed5-2b12-08d7141bc45f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:56:19.1595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045626_303558_0B94EE39 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

More feature additions and enhancments will follow after this series and
eventually KVM RISC-V will be at-par with other architectures.

This series is based upon KVM pre-patches sent by Atish earlier
(https://lkml.org/lkml/2019/7/26/1271) and it can be found in
riscv_kvm_v1 branch at:
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

Anup Patel (13):
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

Atish Patra (3):
  RISC-V: KVM: Add timer functionality
  RISC-V: KVM: FP lazy save/restore
  RISC-V: KVM: Add SBI v0.1 support

 arch/riscv/Kconfig                      |   2 +
 arch/riscv/Makefile                     |   2 +
 arch/riscv/configs/defconfig            |  23 +-
 arch/riscv/configs/rv32_defconfig       |  13 +
 arch/riscv/include/asm/csr.h            |  58 ++
 arch/riscv/include/asm/kvm_host.h       | 232 ++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  32 +
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       |  74 ++
 arch/riscv/kernel/asm-offsets.c         | 148 ++++
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  64 ++
 arch/riscv/kvm/mmu.c                    | 904 ++++++++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  42 ++
 arch/riscv/kvm/vcpu.c                   | 817 +++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 553 +++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 118 ++++
 arch/riscv/kvm/vcpu_switch.S            | 367 ++++++++++
 arch/riscv/kvm/vcpu_timer.c             | 106 +++
 arch/riscv/kvm/vm.c                     | 107 +++
 arch/riscv/kvm/vmid.c                   | 130 ++++
 drivers/clocksource/timer-riscv.c       |   6 +
 include/clocksource/timer-riscv.h       |  14 +
 include/uapi/linux/kvm.h                |   1 +
 25 files changed, 3857 insertions(+), 5 deletions(-)
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
