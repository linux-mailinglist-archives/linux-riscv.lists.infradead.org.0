Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A82D968A
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3CYbTCItSjFwr1jVDz51W1YTOkR/VPdfdK4au3y7YY=; b=KI+o3StVG+R3aN
	VbJAJCXcp9/AiWMc6wkh5B1DnKrTX1+adc7pFDYFT6u3/eiEXHP92O+cUc0/17/QwzhNkC++yMMYy
	Ti7V4d5ymYgTM9FFj+sbDH8ikEsV5IYVq6iV3BBydo59wv/V2pxK9rFMdX0KuRCSGwXBy7hCXsxpl
	kHhz1FjF9Nwt0sSGITylQfhWcoGsmNPzd0KEuokeWRBLCTv1E2NcHzKU3QUd+3lewu88uopbSHp3F
	RlesDOYKwqcGKurtks8hCPVhPZkL7/sOMyBDe7q8Lt9WhFIsvg3SzA71tmG6TYO/BaXnVRDE6KGAi
	h2lp09wBSw6a6WFQVENA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKlsP-0001Cm-GG; Wed, 16 Oct 2019 16:10:17 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKlsL-0001A3-Al
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:10:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242214; x=1602778214;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbudxdERSIasxuZX1e1k6TtaTIBoWf/ssHRSMXgqGrs=;
 b=qdvIju+tJEzsRQ/dNzUWhauwkVfRHnAem2r4LnTkoQReUTmoS37sJ9ZH
 NepNK6djwaIKKoMsLoPvnpH8GtYn+zGM9Zag0KFiNdszqu3u2gOw97pMQ
 EXMytcO4PFVEKDbwleBhlzQKGhjJn40elf6BjRER1R2SUDvUQEHchCm4v
 XIu3V21+ZPQ0wr3tQMZ1nojSKqOGZimGDZZu3bk1UBjIvAm2TdGY5N7uI
 npIL0qeq2pAC2whOLgJ/5Y6lbJVHorie3A/4X9/p73igxkMKl9sznoVev
 9Zp7VE1xveK1t2w0gXQX5DCUCDq8Jou4kVIDjV3OrSA8N0wE9Oqeh2fv+ w==;
IronPort-SDR: RY0R4/GwZhKxvOXh1FZCNzFkN21J828u54aDrChGI4Sq80ZeV+g11AwyFqykXGd9dLHMWFsvV4
 JlLRi/W12KDF/IL6VPnbas49sPPctxkzqJsmqQ99AwatNW1GZiJFoBsNPpoVEyvvl1MQfIW2Jh
 Sku2ZEhp8jLLcZbqyuwxxV2zAnyikKDkTQCU5u5V4uFBmmAOE+CPxvpwqJAm2xtId/yGFtlUuT
 AfMsnC77jQJqkrI0nSHI6r6lBrE1OfTpwj7LNRhkDZRBdRxn+Ucbdh8ucUvC7K2RBYU7lXZ1CY
 pfE=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="122255564"
Received: from mail-by2nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.53])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:10:12 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7dhY4zunhWe7ObXo9vpNsia57pz0pnDmqITfkPBOzmdKZ7iTb2Djg6Y5soohFSPZyCxQm8uwbqHxlXK2hW6S/C9xKxI9Vvc6aLgjskvQ5vFN8bL0IvSebIHbNAn+ucobTT5G+2J49A3JJN+uuBbsqzh2ZMJlfg1S/BYpZS5WLUoIbR/AqD56YMD8SZi+kpH/pvvbrVVIeGoKIv7cK+xltM+hQ38lI9MAa+dRDqgw+GkAdIfzOLAoVk8J9dGypot26IGVxJp/wpfsqvjRmQKQcId09itr7aeQ3MmRk+4Vr5doC9TpWrLrW3PB9+lBoeYNI7CexSOB62DMitjAN/N4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gY9cjNBmhtJgaayyuoSlDajvo3/krxmE7bhAum4vAP0=;
 b=M8/9LfnaUeEOJoVDhhhq13v+rpS/muM9wSCnzn2ovXaSoiXjIgclBndOjSc2gEHEupT5b7tAjtlZwysemUCveSQiZxKDR3L5NzgC9wr/CddQADZuxGlLg76GkCV4JyLx1qaRyiM+MvqprNj5R4abOSg3OM+MF0rE7+6nyRaXzCTRKa69YI5pW4639CUFE87okeVMWT5c3kfAE6TY+tpeiJIWUO8csWROOhNEj4uYzeA6Qbxs1XZmFZG+ZZPytUJ2EFDzD5mBCpPtGYFcOBkL/3lrwJg/V9CrIgzFxOG8eTCUmiuAihsDYb9PjfyKLucLY3abl1rh/wokGkX+mC4h3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gY9cjNBmhtJgaayyuoSlDajvo3/krxmE7bhAum4vAP0=;
 b=tyNjG8Gzsfyr105w3fHRsRR6NoAXUoqG7UzyFa+hCyn6kgMu5Ip4mIWF/P04UYAeDEwyE6HkJ9GOZTt5K0XX92Pwcx2KVZIqE2To8RmJmgVUayxlpLSXFGe4rubbyy85RTVuJkhbwWWpziHY7lcAptjh3wEcIqC4wCBIV6ZZYQI=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7038.namprd04.prod.outlook.com (10.186.146.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 16 Oct 2019 16:10:10 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:10:10 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 10/22] RISC-V: KVM: Implement VMID allocator
Thread-Topic: [PATCH v9 10/22] RISC-V: KVM: Implement VMID allocator
Thread-Index: AQHVhDwvdVSG6izVTkGpa9g+kpxwTQ==
Date: Wed, 16 Oct 2019 16:10:10 +0000
Message-ID: <20191016160649.24622-11-anup.patel@wdc.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
In-Reply-To: <20191016160649.24622-1-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: c3984718-fdd6-4e36-9757-08d7525351c8
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB7038:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB7038F02EF696B9AE4203D20A8D920@MN2PR04MB7038.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(396003)(136003)(346002)(39860400002)(199004)(189003)(102836004)(44832011)(486006)(2616005)(476003)(386003)(25786009)(446003)(52116002)(99286004)(186003)(76176011)(55236004)(66066001)(26005)(6506007)(5660300002)(36756003)(11346002)(64756008)(6436002)(66946007)(66446008)(66476007)(66556008)(86362001)(6486002)(4326008)(6512007)(1076003)(305945005)(14454004)(256004)(7736002)(7416002)(478600001)(6116002)(71190400001)(3846002)(54906003)(110136005)(2906002)(316002)(71200400001)(8936002)(9456002)(50226002)(81156014)(81166006)(8676002)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7038;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /PPYzD0ksySsYVPv2qcdzaAOituA2qLjjM2pkz20uefpSr4p3MNZtKdCdagyjldr6zglAkXbh3wiQIn1JAYsoAvlngR86oCep/oo/AhkTmGJDqxmdQGFlrUU3jsAgjTt98UarSjoNE+RmlOBvjRC+xeF5CrPSOr1d5qLA/TUXHgzXkOOyPmOw8SOzjn8ZoiEo5uWy2XouK+D/4XDvGqWnYWdxyFwFRvlEbJmYY/Y979aATfyitEetOr5T09EA5JiyEy3FcAWAHFGVx3I/dtj7TVH0aBvAsQ7woNKNb5j5FORaoWXS/5Syo2aNITqW8aZHVibXAidB1pLVH80A1D4jM/Hi0bZw+/+zfnAKGHM/vH27qT8HM3H/H8XTLnWQPNQofaxrc5M0acF6JCb8v1d/CCbmIMIx/1ALJ0inBEKuT0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3984718-fdd6-4e36-9757-08d7525351c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:10:10.6366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hKz4N8ExDY8svq7L8u4EiM8r0sIYcja4JAzAHqjyVcRfbjZZKPesN4wvtscOROj98ijU6CPmjgXGkoudtHgVzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091013_435411_97A906DF 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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

We implement a simple VMID allocator for Guests/VMs which:
1. Detects number of VMID bits at boot-time
2. Uses atomic number to track VMID version and increments
   VMID version whenever we run-out of VMIDs
3. Flushes Guest TLBs on all host CPUs whenever we run-out
   of VMIDs
4. Force updates HW Stage2 VMID for each Guest VCPU whenever
   VMID changes using VCPU request KVM_REQ_UPDATE_HGATP

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h |  25 ++++++
 arch/riscv/kvm/Makefile           |   3 +-
 arch/riscv/kvm/main.c             |   4 +
 arch/riscv/kvm/tlb.S              |  43 +++++++++++
 arch/riscv/kvm/vcpu.c             |   9 +++
 arch/riscv/kvm/vm.c               |   6 ++
 arch/riscv/kvm/vmid.c             | 123 ++++++++++++++++++++++++++++++
 7 files changed, 212 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/kvm/tlb.S
 create mode 100644 arch/riscv/kvm/vmid.c

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 7041d2a9304a..9410468678ae 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -27,6 +27,7 @@
 #define KVM_REQ_SLEEP \
 	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
 #define KVM_REQ_VCPU_RESET		KVM_ARCH_REQ(1)
+#define KVM_REQ_UPDATE_HGATP		KVM_ARCH_REQ(2)
 
 struct kvm_vm_stat {
 	ulong remote_tlb_flush;
@@ -47,7 +48,19 @@ struct kvm_vcpu_stat {
 struct kvm_arch_memory_slot {
 };
 
+struct kvm_vmid {
+	/*
+	 * Writes to vmid_version and vmid happen with vmid_lock held
+	 * whereas reads happen without any lock held.
+	 */
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
@@ -170,6 +183,12 @@ static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 int kvm_riscv_setup_vsip(void);
 void kvm_riscv_cleanup_vsip(void);
 
+void __kvm_riscv_hfence_gvma_vmid_gpa(unsigned long vmid,
+				      unsigned long gpa);
+void __kvm_riscv_hfence_gvma_vmid(unsigned long vmid);
+void __kvm_riscv_hfence_gvma_gpa(unsigned long gpa);
+void __kvm_riscv_hfence_gvma_all(void);
+
 int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 			 bool is_write);
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
@@ -177,6 +196,12 @@ int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
 void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu);
 
+void kvm_riscv_stage2_vmid_detect(void);
+unsigned long kvm_riscv_stage2_vmid_bits(void);
+int kvm_riscv_stage2_vmid_init(struct kvm *kvm);
+bool kvm_riscv_stage2_vmid_ver_changed(struct kvm_vmid *vmid);
+void kvm_riscv_stage2_vmid_update(struct kvm_vcpu *vcpu);
+
 void __kvm_riscv_unpriv_trap(void);
 
 unsigned long kvm_riscv_vcpu_unpriv_read(struct kvm_vcpu *vcpu,
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
index d088247843c5..55df85184241 100644
--- a/arch/riscv/kvm/main.c
+++ b/arch/riscv/kvm/main.c
@@ -72,8 +72,12 @@ int kvm_arch_init(void *opaque)
 	if (ret)
 		return ret;
 
+	kvm_riscv_stage2_vmid_detect();
+
 	kvm_info("hypervisor extension available\n");
 
+	kvm_info("host has %ld VMID bits\n", kvm_riscv_stage2_vmid_bits());
+
 	return 0;
 }
 
diff --git a/arch/riscv/kvm/tlb.S b/arch/riscv/kvm/tlb.S
new file mode 100644
index 000000000000..453fca8d7940
--- /dev/null
+++ b/arch/riscv/kvm/tlb.S
@@ -0,0 +1,43 @@
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
+	.option norelax
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
index 9a720a08675e..36957802fed4 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -640,6 +640,12 @@ static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
 
 		if (kvm_check_request(KVM_REQ_VCPU_RESET, vcpu))
 			kvm_riscv_reset_vcpu(vcpu);
+
+		if (kvm_check_request(KVM_REQ_UPDATE_HGATP, vcpu))
+			kvm_riscv_stage2_update_hgatp(vcpu);
+
+		if (kvm_check_request(KVM_REQ_TLB_FLUSH, vcpu))
+			__kvm_riscv_hfence_gvma_all();
 	}
 }
 
@@ -702,6 +708,8 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		/* Check conditions before entering the guest */
 		cond_resched();
 
+		kvm_riscv_stage2_vmid_update(vcpu);
+
 		kvm_riscv_check_vcpu_requests(vcpu);
 
 		preempt_disable();
@@ -738,6 +746,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		kvm_riscv_update_vsip(vcpu);
 
 		if (ret <= 0 ||
+		    kvm_riscv_stage2_vmid_ver_changed(&vcpu->kvm->arch.vmid) ||
 		    kvm_request_pending(vcpu)) {
 			vcpu->mode = OUTSIDE_GUEST_MODE;
 			local_irq_enable();
diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
index ac0211820521..c5aab5478c38 100644
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
index 000000000000..69f770fa4f46
--- /dev/null
+++ b/arch/riscv/kvm/vmid.c
@@ -0,0 +1,123 @@
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
+static unsigned long vmid_version = 1;
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
+static void local_guest_tlb_flush_all(void *info)
+{
+	__kvm_riscv_hfence_gvma_all();
+}
+
+bool kvm_riscv_stage2_vmid_ver_changed(struct kvm_vmid *vmid)
+{
+	if (!vmid_bits)
+		return false;
+
+	return unlikely(READ_ONCE(vmid->vmid_version) !=
+			READ_ONCE(vmid_version));
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
+		WRITE_ONCE(vmid_version, READ_ONCE(vmid_version) + 1);
+		vmid_next = 1;
+
+		/*
+		 * We ran out of VMIDs so we increment vmid_version and
+		 * start assigning VMIDs from 1.
+		 *
+		 * This also means existing VMIDs assignement to all Guest
+		 * instances is invalid and we have force VMID re-assignement
+		 * for all Guest instances. The Guest instances that were not
+		 * running will automatically pick-up new VMIDs because will
+		 * call kvm_riscv_stage2_vmid_update() whenever they enter
+		 * in-kernel run loop. For Guest instances that are already
+		 * running, we force VM exits on all host CPUs using IPI and
+		 * flush all Guest TLBs.
+		 */
+		smp_call_function_many(cpu_online_mask,
+				       local_guest_tlb_flush_all, NULL, true);
+	}
+
+	vmid->vmid = vmid_next;
+	vmid_next++;
+	vmid_next &= (1 << vmid_bits) - 1;
+
+	WRITE_ONCE(vmid->vmid_version, READ_ONCE(vmid_version));
+
+	spin_unlock(&vmid_lock);
+
+	/* Request stage2 page table update for all VCPUs */
+	kvm_for_each_vcpu(i, v, vcpu->kvm)
+		kvm_make_request(KVM_REQ_UPDATE_HGATP, v);
+}
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
