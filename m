Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2AC78B13
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6WQmNQOLg3OaLyKEDfdBeA73qK+bs2vxYp/Nxs2hvo=; b=q6oPzYK4LcA8RD
	gvbMRGArgGelw1IA72/RCJ4npbWF+G6IiU1Ct+t71BoqR1oa62G6EkRSKm37V29uu4I6+ylL9dCSU
	qWxK7vxK8JvH95nUrHH/Wgh49kYw6ZgOaJnxBbxK33slhGu2nTVyiGBlB6IFGvSzKrDPUPmuZBL+F
	OmhevsMZM2O6xYZY/AP/PuD4ac/RqGL5cH/zi7tmnq68vXEjnc9PHmDKEy71vhC12hE9JsPjO0JpA
	WGrl/VG+XC+Mi7ZNj78xj7hmSSM5A8mmgk037iRMn3qupF4hQFuAEsaOCq69HNGLS3nzmHpFHQH77
	zV39CWt9e++m3EX5hgnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4HT-0002rZ-KW; Mon, 29 Jul 2019 11:57:31 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4HO-0002kM-FE
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401487; x=1595937487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qO3iV8UjB5qokmzezR5QIinfyt759MU1YwVuBI+pyqE=;
 b=dcMyyxcRGHsx1cZj6ZLMLAwvA+buqoS8R/ldv8IfxW3WcHtHqvtWy7Ps
 k2Xbb8Fv8ShE93AOguXLV8uwhb8ipsVJyh4rWQG7Z4rvYRnkjw9/Zmf2b
 fWn6dqQxVMHLi0uNp8E2uKpYf6X0zMHbCgJAWAUUWhakcHbque9X4GlUp
 iFuBTzygZoR6g8Hqgk2ybC9iTpFFyETOpa2FnlNi3NYnNxXAzTkjdsImY
 KTh6rKvAMWaqxZOydvScOwKpqgSpWwMQd7BNZvyUEfGKaQDC9SDIbnpOJ
 q/dvJePBva+f2WZqgOusMQI6pJSBGps9m4iH2glv+O+of+RQJ043LSpnE A==;
IronPort-SDR: nFdGaX8W3xGMunvCBSNXSMZ1pRSg54mvLeOvf+vzKXISEMToSJ7Gf/XPuUEs+yQfuSV648KvbJ
 1k/scs95hycNw5nkZfl7nGPcqNv3T/UD/yPRcE8Z53lDuBOFqekYptw4rINr2h1URMQjmZl4EN
 h2wWotH1gj6dC+RLJqtJ0z0mpXwn9LBDTw8efq8R+nqXL5b6JmsHxYUyQUQvYKmXrSdSET6pKW
 NQOBEElroK1AMgcwp/AGKaW4ssXFNsIB2BWMckrCK5ul6v31h79Reafz0q/fx6Iv9W2XNAf4M2
 GMw=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="214553121"
Received: from mail-sn1nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.50])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:58:05 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DQQg97YAQSMyIchSB2y//yrHFtIEV5Rb7YMJ7gbUf2jaq17qWpptOOvh+BH4yHKlVlO4nY1F32/qR4E4MiN2sXDlyuejsrq3xnZ/PyTGF7hp5RxJWUPFwYPE9oAJizVaGN8M2wxNqevAbGVqFvvT4cPuS25qptDNb8CaWulvpt3vtDgqCA6IZTWtrJ4LD+6fG+Xwj7H1oub02Qj8oxV2ukxM94XD8zwcSwFaWddjUUZ4rXLAWodPNGdXARaXlUypZ0XFCNTm4X4vLoOUlWzQ35nvl/PmTck5MXIalHOJXaEDc2P72+6JBJK44gsnu98WSx1NXyLxiv3GWOSkGU+Ycg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JhfuskpawPkTszGKUWYP2xaunO7zZGCJLwgP8J1alEY=;
 b=fdb6TPw9I7s0tjyd1unr5JQkRO5DmXS4OGeuSvFp+/YkpN2zQ0okkV/FquolBbashAAK5fWAWqyvfERmW7xy9iAVNlxWdZS6IdMUMGIvOI7VaIjQ4Xm84zNZofxTUD/9cPtFaMS/Jy26yjxbY/iqx+y52nKSoeAiBUWPJVQOvx4Nx+2ImEHbhf2DTXYldfAuidD0V37HDpI/Aesn0bizwsz8G7xrXLhC2RzYF3zI4eEDANJiF9FMwqef7uADIgmfYpzo3bHFddX5EPlVZHJCBHsnPj1LdxsBxW2Syi0e1k7b7b0+w/1pF3cIDV5evnWGL/9ghksC8DCAAvqI+Ckb8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JhfuskpawPkTszGKUWYP2xaunO7zZGCJLwgP8J1alEY=;
 b=zxjvNcgQLtgtLGZ9OL1eh1eWJPBidky8H2ruLhR1RW8/uECA7MVi/rq+1IRefBJ1fPH9TE4DnYvItn6IOCijszEMZMH0hVYpl5+PPb3uhOf/Nw7OIPeJA31F5sMnnz9QCMny93KUesSd/H6chvZQRA8p4E07X3IrkRNxqHmBiSc=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5952.namprd04.prod.outlook.com (20.179.21.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Mon, 29 Jul 2019 11:57:24 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:57:24 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 10/16] RISC-V: KVM: Implement VMID allocator
Thread-Topic: [RFC PATCH 10/16] RISC-V: KVM: Implement VMID allocator
Thread-Index: AQHVRgTIvu0BuDm2IkeysZXr8CQ0bw==
Date: Mon, 29 Jul 2019 11:57:23 +0000
Message-ID: <20190729115544.17895-11-anup.patel@wdc.com>
References: <20190729115544.17895-1-anup.patel@wdc.com>
In-Reply-To: <20190729115544.17895-1-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 2e525f40-1054-4093-fc9c-08d7141beb12
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5952; 
x-ms-traffictypediagnostic: MN2PR04MB5952:
x-microsoft-antispam-prvs: <MN2PR04MB59526E2398ECA2B162784B578DDD0@MN2PR04MB5952.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(136003)(366004)(396003)(376002)(39860400002)(199004)(189003)(66446008)(25786009)(305945005)(66066001)(52116002)(3846002)(6116002)(68736007)(6486002)(99286004)(1076003)(256004)(7416002)(14444005)(66476007)(66556008)(64756008)(5660300002)(66946007)(110136005)(14454004)(316002)(86362001)(54906003)(53936002)(36756003)(6436002)(6512007)(486006)(11346002)(2616005)(44832011)(478600001)(2906002)(446003)(50226002)(8676002)(81156014)(81166006)(26005)(7736002)(9456002)(8936002)(186003)(55236004)(102836004)(78486014)(6506007)(386003)(71190400001)(4326008)(76176011)(476003)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5952;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UHjERth1QFd5jkzMk3HkGb/Lz3AhZ4WtwpZcdLh4bg3KWez1pmwX7IBOOMj2hMY3njdqQmlTvx7zCb5LlK6hfA3DUkzlrRnv4PGw4+jbHLoCifRvUJmhXaplbZi3JqnciYlQ+0Ugx1dRlE3afvLdzBvKXdiyt3kWQNR/NlpwcvI25yoVy0Y5/mvx4zrIRRpOf95ua3sq3AeD9QIyYPNUle8kCdNkcRykh9jnfDkyOW6rNJewmfrNqhd4uJrnKHcd16i9T7cOnY6nMhVJhQ5XeQzcE3QixT2XMg1x++Bq7ZaAT225I4hAwH/niHXqvXDBeBvC88vcD6cq5+EQUwBlj8bYzwxi0ePeuLOtYgO5SqBOL66+iguZnONdmHpPKpNXERrJL2wZqE/LM+BhCt4Mk8756zmP5y4saVlmt04WA3w=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e525f40-1054-4093-fc9c-08d7141beb12
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:57:23.8835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5952
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045726_573219_7DF2AA36 
X-CRM114-Status: GOOD (  18.60  )
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

We implement a simple VMID allocator for Guests/VMs which:
1. Detects number of VMID bits at boot-time
2. Uses atomic number to track VMID version and increments
   VMID version whenever we run-out of VMIDs
3. Flushes Guest TLBs on all host CPUs whenever we run-out
   of VMIDs
4. Force updates HW Stage2 VMID for each Guest VCPU whenever
   VMID changes using VCPU request KVM_REQ_UPDATE_PGTBL

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h |  21 +++++
 arch/riscv/kvm/Makefile           |   3 +-
 arch/riscv/kvm/main.c             |   4 +
 arch/riscv/kvm/tlb.S              |  42 ++++++++++
 arch/riscv/kvm/vcpu.c             |   6 ++
 arch/riscv/kvm/vm.c               |   6 ++
 arch/riscv/kvm/vmid.c             | 130 ++++++++++++++++++++++++++++++
 7 files changed, 211 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kvm/tlb.S
 create mode 100644 arch/riscv/kvm/vmid.c

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 82e568ae0260..dcc31f9ca13d 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -28,6 +28,7 @@
 	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
 #define KVM_REQ_IRQ_PENDING		KVM_ARCH_REQ(1)
 #define KVM_REQ_VCPU_RESET		KVM_ARCH_REQ(2)
+#define KVM_REQ_UPDATE_PGTBL		KVM_ARCH_REQ(3)
 
 struct kvm_vm_stat {
 	ulong remote_tlb_flush;
@@ -48,7 +49,15 @@ struct kvm_vcpu_stat {
 struct kvm_arch_memory_slot {
 };
 
+struct kvm_vmid {
+	unsigned long vmid_version;
+	unsigned long vmid;
+};
+
 struct kvm_arch {
+	/* stage2 vmid */
+	struct kvm_vmid vmid;
+
 	/* stage2 page table */
 	pgd_t *pgd;
 	phys_addr_t pgd_phys;
@@ -158,6 +167,12 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 
+extern void __kvm_riscv_hfence_gvma_vmid_gpa(unsigned long vmid,
+					     unsigned long gpa);
+extern void __kvm_riscv_hfence_gvma_vmid(unsigned long vmid);
+extern void __kvm_riscv_hfence_gvma_gpa(unsigned long gpa);
+extern void __kvm_riscv_hfence_gvma_all(void);
+
 int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 			 bool is_write);
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
@@ -165,6 +180,12 @@ int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_update_pgtbl(struct kvm_vcpu *vcpu);
 
+void kvm_riscv_stage2_vmid_detect(void);
+unsigned long kvm_riscv_stage2_vmid_bits(void);
+int kvm_riscv_stage2_vmid_init(struct kvm *kvm);
+bool kvm_riscv_stage2_vmid_ver_changed(struct kvm_vmid *vmid);
+void kvm_riscv_stage2_vmid_update(struct kvm_vcpu *vcpu);
+
 int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
 int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long scause, unsigned long stval);
diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
index 845579273727..c0f57f26c13d 100644
--- a/arch/riscv/kvm/Makefile
+++ b/arch/riscv/kvm/Makefile
@@ -8,6 +8,7 @@ ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
 
 kvm-objs := $(common-objs-y)
 
-kvm-objs += main.o vm.o mmu.o vcpu.o vcpu_exit.o vcpu_switch.o
+kvm-objs += main.o vm.o vmid.o tlb.o mmu.o
+kvm-objs += vcpu.o vcpu_exit.o vcpu_switch.o
 
 obj-$(CONFIG_KVM)	+= kvm.o
diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
index 8cac0571a264..c029686100e4 100644
--- a/arch/riscv/kvm/main.c
+++ b/arch/riscv/kvm/main.c
@@ -44,8 +44,12 @@ int kvm_arch_init(void *opaque)
 		return -ENODEV;
 	}
 
+	kvm_riscv_stage2_vmid_detect();
+
 	kvm_info("hypervisor extension available\n");
 
+	kvm_info("host has %ld VMID bits\n", kvm_riscv_stage2_vmid_bits());
+
 	return 0;
 }
 
diff --git a/arch/riscv/kvm/tlb.S b/arch/riscv/kvm/tlb.S
new file mode 100644
index 000000000000..13740d8020f5
--- /dev/null
+++ b/arch/riscv/kvm/tlb.S
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/linkage.h>
+#include <asm/asm.h>
+
+	.text
+	.altmacro
+
+	/*
+	 * Instruction encoding of hfence.gvma is:
+	 * 0110001 rs2(5) rs1(5) 000 00000 1110011
+	 */
+
+ENTRY(__kvm_riscv_hfence_gvma_vmid_gpa)
+	/* hfence.gvma a1, a0 */
+	.word 0x62a60073
+	ret
+ENDPROC(__kvm_riscv_hfence_gvma_vmid_gpa)
+
+ENTRY(__kvm_riscv_hfence_gvma_vmid)
+	/* hfence.gvma zero, a0 */
+	.word 0x62a00073
+	ret
+ENDPROC(__kvm_riscv_hfence_gvma_vmid)
+
+ENTRY(__kvm_riscv_hfence_gvma_gpa)
+	/* hfence.gvma a0 */
+	.word 0x62050073
+	ret
+ENDPROC(__kvm_riscv_hfence_gvma_gpa)
+
+ENTRY(__kvm_riscv_hfence_gvma_all)
+	/* hfence.gvma */
+	.word 0x62000073
+	ret
+ENDPROC(__kvm_riscv_hfence_gvma_all)
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 4ab9f803536e..f3b0cadc1973 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -607,6 +607,9 @@ static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
 		if (kvm_check_request(KVM_REQ_VCPU_RESET, vcpu))
 			kvm_riscv_reset_vcpu(vcpu);
 
+		if (kvm_check_request(KVM_REQ_UPDATE_PGTBL, vcpu))
+			kvm_riscv_stage2_update_pgtbl(vcpu);
+
 		/*
 		 * Clear IRQ_PENDING requests that were made to guarantee
 		 * that a VCPU sees new virtual interrupts.
@@ -643,6 +646,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		/* Check conditions before entering the guest */
 		cond_resched();
 
+		kvm_riscv_stage2_vmid_update(vcpu);
+
 		kvm_riscv_check_vcpu_requests(vcpu);
 
 		preempt_disable();
@@ -673,6 +678,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		smp_store_mb(vcpu->mode, IN_GUEST_MODE);
 
 		if (ret <= 0 ||
+		    kvm_riscv_stage2_vmid_ver_changed(&vcpu->kvm->arch.vmid) ||
 		    kvm_request_pending(vcpu)) {
 			vcpu->mode = OUTSIDE_GUEST_MODE;
 			local_irq_enable();
diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
index 66904def2f93..4bc97ebc4b6e 100644
--- a/arch/riscv/kvm/vm.c
+++ b/arch/riscv/kvm/vm.c
@@ -26,6 +26,12 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
 	if (r)
 		return r;
 
+	r = kvm_riscv_stage2_vmid_init(kvm);
+	if (r) {
+		kvm_riscv_stage2_free_pgd(kvm);
+		return r;
+	}
+
 	return 0;
 }
 
diff --git a/arch/riscv/kvm/vmid.c b/arch/riscv/kvm/vmid.c
new file mode 100644
index 000000000000..a2b026fad1bd
--- /dev/null
+++ b/arch/riscv/kvm/vmid.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/cpumask.h>
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/kvm_host.h>
+#include <asm/csr.h>
+
+static atomic_long_t vmid_version = ATOMIC_LONG_INIT(1);
+static unsigned long vmid_next;
+static unsigned long vmid_bits;
+static DEFINE_SPINLOCK(vmid_lock);
+
+void kvm_riscv_stage2_vmid_detect(void)
+{
+	unsigned long old;
+
+	/* Figure-out number of VMID bits in HW */
+	old = csr_read(CSR_HGATP);
+	csr_write(CSR_HGATP, old | HGATP_VMID_MASK);
+	vmid_bits = csr_read(CSR_HGATP);
+	vmid_bits = (vmid_bits & HGATP_VMID_MASK) >> HGATP_VMID_SHIFT;
+	vmid_bits = fls_long(vmid_bits);
+	csr_write(CSR_HGATP, old);
+
+	/* We polluted local TLB so flush all guest TLB */
+	__kvm_riscv_hfence_gvma_all();
+
+	/* We don't use VMID bits if they are not sufficient */
+	if ((1UL << vmid_bits) < num_possible_cpus())
+		vmid_bits = 0;
+}
+
+unsigned long kvm_riscv_stage2_vmid_bits(void)
+{
+	return vmid_bits;
+}
+
+int kvm_riscv_stage2_vmid_init(struct kvm *kvm)
+{
+	/* Mark the initial VMID and VMID version invalid */
+	kvm->arch.vmid.vmid_version = 0;
+	kvm->arch.vmid.vmid = 0;
+
+	return 0;
+}
+
+static void local_guest_tlb_flush(void *info)
+{
+	__kvm_riscv_hfence_gvma_all();
+}
+
+static void force_exit_and_guest_tlb_flush(const cpumask_t *mask)
+{
+	preempt_disable();
+	smp_call_function_many(mask, local_guest_tlb_flush, NULL, true);
+	preempt_enable();
+}
+
+bool kvm_riscv_stage2_vmid_ver_changed(struct kvm_vmid *vmid)
+{
+	ulong cur_vmid_version;
+
+	if (!vmid_bits)
+		return false;
+
+	cur_vmid_version = atomic_long_read(&vmid_version);
+
+	/* Ensure atomic read to VMID version is completed */
+	smp_rmb();
+
+	return unlikely(READ_ONCE(vmid->vmid_version) != cur_vmid_version);
+}
+
+void kvm_riscv_stage2_vmid_update(struct kvm_vcpu *vcpu)
+{
+	int i;
+	struct kvm_vcpu *v;
+	struct kvm_vmid *vmid = &vcpu->kvm->arch.vmid;
+
+	if (!kvm_riscv_stage2_vmid_ver_changed(vmid))
+		return;
+
+	spin_lock(&vmid_lock);
+
+	/*
+	 * We need to re-check the vmid_version here to ensure that if
+	 * another vcpu already allocated a valid vmid for this vm.
+	 */
+	if (!kvm_riscv_stage2_vmid_ver_changed(vmid)) {
+		spin_unlock(&vmid_lock);
+		return;
+	}
+
+	/* First user of a new VMID version? */
+	if (unlikely(vmid_next == 0)) {
+		atomic_long_inc(&vmid_version);
+		vmid_next = 1;
+
+		/*
+		 * On SMP we know no other CPUs can use this CPU's or
+		 * each other's VMID after forced exit returns since the
+		 * vmid_lock blocks them from re-entry to the guest.
+		 */
+		force_exit_and_guest_tlb_flush(cpu_all_mask);
+	}
+
+	vmid->vmid = vmid_next;
+	vmid_next++;
+	vmid_next &= (1 << vmid_bits) - 1;
+
+	/* Ensure VMID next update is completed */
+	smp_wmb();
+
+	WRITE_ONCE(vmid->vmid_version, atomic_long_read(&vmid_version));
+
+	spin_unlock(&vmid_lock);
+
+	/* Request stage2 page table update for all VCPUs */
+	kvm_for_each_vcpu(i, v, vcpu->kvm)
+		kvm_make_request(KVM_REQ_UPDATE_PGTBL, v);
+}
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
