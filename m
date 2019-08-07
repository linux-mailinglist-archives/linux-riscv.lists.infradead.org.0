Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFC684B8B
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ll3Vr7iDQZ6NYRHV8kXIV48LOWKfD+XBmK6vQvs8MhI=; b=IteOrSSay23zCm
	1VAxLzo9B6Tq77Tu7F5KJZg5fDQCMWGxa7T2bLW3ZqQOdh2TgTy4LtVZQM3fqan4JOPjDQn/n/rrG
	/KI1Ci+lsaEOTAfXMAyyeAPTn9I2jY+VA1I88g2GdO33FXEN3vdazhW6AqCAPuCkmYbNI9ekv+rmW
	x4VBJ8Zy7L7plFouLMWkPFuQeUNNSSHJ/Ny0+mojg13VHCLQzcuMIO98XCVzEXapi1TDnqpHbluGL
	29kQRj1HBcW2QN2RPAlR2Cmk5Q7k8wN+79OIFHMbnmJPWHpYtDgx3PbP1ketZAksA3RV9RGsshOIW
	vaQwJTU+Rb2qWsiU69kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL4H-0005Zp-7M; Wed, 07 Aug 2019 12:29:25 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL4C-0005Wh-Ex
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:29:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180960; x=1596716960;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9xZie2Z1Z2z3P46tUtOthwFlaaMFdpZjmCvNNhE9U38=;
 b=ZkNTsNtOx8BG0jwtl4JbtvLKUWqMjgl2XjYgDlbs70QP4bfa/HF3/e0r
 c24psDgazHRRnf29m4nZqzfykt0T8gRjOP2LheQeaK1xEhveFjCjBYbi8
 z+JjQq1AufO0yushm+z+VJtBGJuKLMuyfsbBzNHok1yyl+IMSj4Wqn+f5
 z9olyEUKcaP6MfJGANY57XbahWyIOTMM++xW0Pf/BmFx4BEhiaSeBJkBG
 v9teksaiWC2yiFmhThYvEE+4WgdBH5KtHKnM8fSp0ZNSNeJoPyR/1F4l4
 XtOWn62r0VKGzgQrfm4iVkDVMyKwaQLCNpwtBXNGOCAwrXiXnmMe48aF9 g==;
IronPort-SDR: UonAFFuBWGJoyQVvcUWeZusAWTDtnl7mEMiKCxaNPITfMIK/vDTjWqtkZrI+lpcmQb35WyWflm
 F2bOoY0z9/yP7s9deww32exN2anTJgQ6t1EOfxaoW+nMaxT//ZK5JtAE5Rsc8JV76m3ScE9wky
 oMrzz7NOn86Js6pZr7u7YDz5tn96/H7j2zkb9fW1ZSLrqrSnUPQn7Hsn+QYACyrh5cFoq1z0H0
 /5xzbReu0zqdKYvG8Oe89dskBdvzttEMRytXLxqjGslKiVC+ugYOGHXUBaEmeWxq3N0UyNDNdq
 K9s=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="119865571"
Received: from mail-dm3nam03lp2052.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.52])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:29:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MN14uLkcBfTMf/hogJHy+mLfzMfhgWvdFFUTou2SLRrrT/yVqyh3HvGPCY/o88nUx/HnjxHTBUqslYOlbNb4/upMt9XFCQVqvEdgAw+c5OY8OxTy8QnGm0y2sUeMqjuXoqdhQEDwhGfgO+Jv/gyWCH9+/HLl1w+lVi0x0Q6t5Rv0jcxRkSWJh5bkuDi8s9MKABmnslP42VVN86kLBDJO3B/AVgDIIq9aKeC3hesC3lBiCM07DpIW50qD5JtekwBrfL2LjCqYTxLo8gtiBnt7aSKqcIHqhtJ2RL7uE/UL0Qpg9Le4BiKc2l8PKA6ZtfgvGtoeUbCzMWoF4zRafvc98g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99aTzjVPREpbautTqE3Eu3kQJeqntGKY8mDqvWdB4T4=;
 b=kpCNQqiBSctqzZxF5nQbBBKz5P2XIWqrLsfpMU/YoOdDm468aCDoaQRwLJ2falb4rUG0aZ+EqaXEZo2uN65ayq0zrUEY0eIsG2aMnb7VZaBQYwOjr9k/kxhylESvsiIU/nzhuNMx/BJnlwLOeze7Ui0PdVTyBoVEhEwBi+KMqQ9cSDNSTocUUUHWpGTQ2VWp8AzvnLHmbOk02XDBvfxSbclwkm8KFbW/ol/O+yprC3edOnUO4XutfhXl5it1bt3H3Yy7s5kehBv4VPWMkqvnovwt61jV+Dk1nVXxtF+mEqGhoAHSDtsXTsYTpJQD6jaH6TupCXEp/2GfikF0KyxFqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=99aTzjVPREpbautTqE3Eu3kQJeqntGKY8mDqvWdB4T4=;
 b=STQIxnR0WCHaqX1ufC5b28H3XW3Cnchrq2LEgf+BL9D/LkK/ewN6NMj7H/0L7hUaupdyX3LGXz4chb7uTnZAbXHvvrKhzVvUPLsfewhjahSieto1Mp8/+LCe11rei3fDdNG5eWLC2FC6M7sqPFNqyNV+vEfaq43/0+YvJwVWtC0=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5821.namprd04.prod.outlook.com (20.179.22.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:29:17 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:29:17 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 14/20] RISC-V: KVM: Implement MMU notifiers
Thread-Topic: [PATCH v4 14/20] RISC-V: KVM: Implement MMU notifiers
Thread-Index: AQHVTRu6BEMGe/C72kir7GvnwNtHJQ==
Date: Wed, 7 Aug 2019 12:29:17 +0000
Message-ID: <20190807122726.81544-15-anup.patel@wdc.com>
References: <20190807122726.81544-1-anup.patel@wdc.com>
In-Reply-To: <20190807122726.81544-1-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: fee79fb7-c142-4f5d-3daa-08d71b32dd34
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5821; 
x-ms-traffictypediagnostic: MN2PR04MB5821:
x-microsoft-antispam-prvs: <MN2PR04MB582119CD28D329394DACAF268DD40@MN2PR04MB5821.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(189003)(110136005)(1076003)(71190400001)(6486002)(71200400001)(50226002)(186003)(53936002)(2906002)(25786009)(66066001)(8676002)(36756003)(54906003)(81156014)(7736002)(81166006)(6436002)(316002)(6512007)(8936002)(26005)(4326008)(305945005)(66446008)(6506007)(64756008)(66556008)(66476007)(66946007)(11346002)(68736007)(478600001)(2616005)(86362001)(476003)(55236004)(102836004)(486006)(446003)(76176011)(14454004)(14444005)(52116002)(3846002)(6116002)(256004)(5660300002)(7416002)(44832011)(386003)(99286004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5821;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jfEwkhGoLZ4kBz5WKa+SWO47U+IaWDFxGHg67PrdELl5Jiem+QuEieI4Jz+WhZ/1L1qz5++L9ESxnJk6p96eBMzSBAsZGnL1U9Ur0qFmbQdIA6dbmyn7axkvF7chqRENVqcPW33Rxjkcqkm88kk275LX00hfvGlRbLIPWRjn2T/c3LoaucKtw4MrH3nhn+HqZs1aiRUrQ+xpOhh+R4E4+Vc+sC2+mIK1+EQhC6lwry9zKrEz8UkmJTFReukkauBNcF1B1ACooJKZqyKZEqRLPzVzwhGm108dyj9WR9UPhRDYXC4mf2/SHGiG5e8Dkz7163wKbg2BTNCCYm05enf/k0C1zzRz3IKtqSfft63Ft6OBJvGXZSHsaLv3OnhFA77G3YuhdnmO7znvwXwLvi/WwJ31Sr1879NOw7TDIFBFCAE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fee79fb7-c142-4f5d-3daa-08d71b32dd34
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:29:17.1866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hhjZz79zNCZ2sX9NEOVEvyw/zKHY8MrKX9rWw+tgNGqgORn8i090zpdpw4n72mUbSybTWpTvI4kADBO/F9jBJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052920_773812_D8D50467 
X-CRM114-Status: GOOD (  17.42  )
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

This patch implements MMU notifiers for KVM RISC-V so that Guest
physical address space is in-sync with Host physical address space.

This will allow swapping, page migration, etc to work transparently
with KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h |   7 ++
 arch/riscv/kvm/Kconfig            |   1 +
 arch/riscv/kvm/mmu.c              | 200 +++++++++++++++++++++++++++++-
 arch/riscv/kvm/vm.c               |   1 +
 4 files changed, 208 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index a37775c92586..ab33e59a3d88 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -192,6 +192,13 @@ static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 int kvm_riscv_setup_vsip(void);
 void kvm_riscv_cleanup_vsip(void);
 
+#define KVM_ARCH_WANT_MMU_NOTIFIER
+int kvm_unmap_hva_range(struct kvm *kvm,
+			unsigned long start, unsigned long end);
+int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
+int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
+int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
+
 extern void __kvm_riscv_hfence_gvma_vmid_gpa(unsigned long vmid,
 					     unsigned long gpa);
 extern void __kvm_riscv_hfence_gvma_vmid(unsigned long vmid);
diff --git a/arch/riscv/kvm/Kconfig b/arch/riscv/kvm/Kconfig
index 35fd30d0e432..002e14ee37f6 100644
--- a/arch/riscv/kvm/Kconfig
+++ b/arch/riscv/kvm/Kconfig
@@ -20,6 +20,7 @@ if VIRTUALIZATION
 config KVM
 	tristate "Kernel-based Virtual Machine (KVM) support"
 	depends on OF
+	select MMU_NOTIFIER
 	select PREEMPT_NOTIFIERS
 	select ANON_INODES
 	select KVM_MMIO
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
index 9e95ab6769f6..0b8e46aebb02 100644
--- a/arch/riscv/kvm/mmu.c
+++ b/arch/riscv/kvm/mmu.c
@@ -67,6 +67,66 @@ static void *stage2_cache_alloc(struct kvm_mmu_page_cache *pcache)
 	return p;
 }
 
+static int stage2_pgdp_test_and_clear_young(pgd_t *pgd)
+{
+	return ptep_test_and_clear_young(NULL, 0, (pte_t *)pgd);
+}
+
+static int stage2_pmdp_test_and_clear_young(pmd_t *pmd)
+{
+	return ptep_test_and_clear_young(NULL, 0, (pte_t *)pmd);
+}
+
+static int stage2_ptep_test_and_clear_young(pte_t *pte)
+{
+	return ptep_test_and_clear_young(NULL, 0, pte);
+}
+
+static bool stage2_get_leaf_entry(struct kvm *kvm, gpa_t addr,
+				  pgd_t **pgdpp, pmd_t **pmdpp, pte_t **ptepp)
+{
+	pgd_t *pgdp;
+	pmd_t *pmdp;
+	pte_t *ptep;
+
+	*pgdpp = NULL;
+	*pmdpp = NULL;
+	*ptepp = NULL;
+
+	pgdp = &kvm->arch.pgd[pgd_index(addr)];
+	if (!pgd_val(*pgdp))
+		return false;
+	if (pgd_val(*pgdp) & _PAGE_LEAF) {
+		*pgdpp = pgdp;
+		return true;
+	}
+
+	if (stage2_have_pmd) {
+		pmdp = (void *)pgd_page_vaddr(*pgdp);
+		pmdp = &pmdp[pmd_index(addr)];
+		if (!pmd_present(*pmdp))
+			return false;
+		if (pmd_val(*pmdp) & _PAGE_LEAF) {
+			*pmdpp = pmdp;
+			return true;
+		}
+
+		ptep = (void *)pmd_page_vaddr(*pmdp);
+	} else {
+		ptep = (void *)pgd_page_vaddr(*pgdp);
+	}
+
+	ptep = &ptep[pte_index(addr)];
+	if (!pte_present(*ptep))
+		return false;
+	if (pte_val(*ptep) & _PAGE_LEAF) {
+		*ptepp = ptep;
+		return true;
+	}
+
+	return false;
+}
+
 struct local_guest_tlb_info {
 	struct kvm_vmid *vmid;
 	gpa_t addr;
@@ -444,6 +504,38 @@ int stage2_ioremap(struct kvm *kvm, gpa_t gpa, phys_addr_t hpa,
 
 }
 
+static int handle_hva_to_gpa(struct kvm *kvm,
+			     unsigned long start,
+			     unsigned long end,
+			     int (*handler)(struct kvm *kvm,
+					    gpa_t gpa, u64 size,
+					    void *data),
+			     void *data)
+{
+	struct kvm_memslots *slots;
+	struct kvm_memory_slot *memslot;
+	int ret = 0;
+
+	slots = kvm_memslots(kvm);
+
+	/* we only care about the pages that the guest sees */
+	kvm_for_each_memslot(memslot, slots) {
+		unsigned long hva_start, hva_end;
+		gfn_t gpa;
+
+		hva_start = max(start, memslot->userspace_addr);
+		hva_end = min(end, memslot->userspace_addr +
+					(memslot->npages << PAGE_SHIFT));
+		if (hva_start >= hva_end)
+			continue;
+
+		gpa = hva_to_gfn_memslot(hva_start, memslot) << PAGE_SHIFT;
+		ret |= handler(kvm, gpa, (u64)(hva_end - hva_start), data);
+	}
+
+	return ret;
+}
+
 void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
 			   struct kvm_memory_slot *dont)
 {
@@ -576,6 +668,106 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 	return ret;
 }
 
+static int kvm_unmap_hva_handler(struct kvm *kvm,
+				 gpa_t gpa, u64 size, void *data)
+{
+	stage2_unmap_range(kvm, gpa, size);
+	return 0;
+}
+
+int kvm_unmap_hva_range(struct kvm *kvm,
+			unsigned long start, unsigned long end)
+{
+	if (!kvm->arch.pgd)
+		return 0;
+
+	handle_hva_to_gpa(kvm, start, end,
+			  &kvm_unmap_hva_handler, NULL);
+	return 0;
+}
+
+static int kvm_set_spte_handler(struct kvm *kvm,
+				gpa_t gpa, u64 size, void *data)
+{
+	pte_t *pte = (pte_t *)data;
+
+	WARN_ON(size != PAGE_SIZE);
+	stage2_set_pte(kvm, NULL, gpa, pte);
+
+	return 0;
+}
+
+int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte)
+{
+	unsigned long end = hva + PAGE_SIZE;
+	kvm_pfn_t pfn = pte_pfn(pte);
+	pte_t stage2_pte;
+
+	if (!kvm->arch.pgd)
+		return 0;
+
+	stage2_pte = pfn_pte(pfn, PAGE_WRITE_EXEC);
+	handle_hva_to_gpa(kvm, hva, end,
+			  &kvm_set_spte_handler, &stage2_pte);
+
+	return 0;
+}
+
+static int kvm_age_hva_handler(struct kvm *kvm,
+				gpa_t gpa, u64 size, void *data)
+{
+	pgd_t *pgd;
+	pmd_t *pmd;
+	pte_t *pte;
+
+	WARN_ON(size != PAGE_SIZE && size != PMD_SIZE && size != PGDIR_SIZE);
+	if (!stage2_get_leaf_entry(kvm, gpa, &pgd, &pmd, &pte))
+		return 0;
+
+	if (pgd)
+		return stage2_pgdp_test_and_clear_young(pgd);
+	else if (pmd)
+		return stage2_pmdp_test_and_clear_young(pmd);
+	else
+		return stage2_ptep_test_and_clear_young(pte);
+}
+
+int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end)
+{
+	if (!kvm->arch.pgd)
+		return 0;
+
+	return handle_hva_to_gpa(kvm, start, end, kvm_age_hva_handler, NULL);
+}
+
+static int kvm_test_age_hva_handler(struct kvm *kvm,
+				    gpa_t gpa, u64 size, void *data)
+{
+	pgd_t *pgd;
+	pmd_t *pmd;
+	pte_t *pte;
+
+	WARN_ON(size != PAGE_SIZE && size != PMD_SIZE);
+	if (!stage2_get_leaf_entry(kvm, gpa, &pgd, &pmd, &pte))
+		return 0;
+
+	if (pgd)
+		return pte_young(*((pte_t *)pgd));
+	else if (pmd)
+		return pte_young(*((pte_t *)pmd));
+	else
+		return pte_young(*pte);
+}
+
+int kvm_test_age_hva(struct kvm *kvm, unsigned long hva)
+{
+	if (!kvm->arch.pgd)
+		return 0;
+
+	return handle_hva_to_gpa(kvm, hva, hva,
+				 kvm_test_age_hva_handler, NULL);
+}
+
 int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 			 bool is_write)
 {
@@ -587,7 +779,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 	struct vm_area_struct *vma;
 	struct kvm *kvm = vcpu->kvm;
 	struct kvm_mmu_page_cache *pcache = &vcpu->arch.mmu_page_cache;
-	unsigned long vma_pagesize;
+	unsigned long vma_pagesize, mmu_seq;
 
 	down_read(&current->mm->mmap_sem);
 
@@ -617,6 +809,8 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 		return ret;
 	}
 
+	mmu_seq = kvm->mmu_notifier_seq;
+
 	hfn = gfn_to_pfn_prot(kvm, gfn, is_write, &writeable);
 	if (hfn == KVM_PFN_ERR_HWPOISON) {
 		if (is_vm_hugetlb_page(vma))
@@ -635,6 +829,9 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 
 	spin_lock(&kvm->mmu_lock);
 
+	if (mmu_notifier_retry(kvm, mmu_seq))
+		goto out_unlock;
+
 	if (writeable) {
 		kvm_set_pfn_dirty(hfn);
 		ret = stage2_map_page(kvm, pcache, gpa, hfn << PAGE_SHIFT,
@@ -647,6 +844,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 	if (ret)
 		kvm_err("Failed to map in stage2\n");
 
+out_unlock:
 	spin_unlock(&kvm->mmu_lock);
 	kvm_set_pfn_accessed(hfn);
 	kvm_release_pfn_clean(hfn);
diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
index c5aab5478c38..fd84b4d914dc 100644
--- a/arch/riscv/kvm/vm.c
+++ b/arch/riscv/kvm/vm.c
@@ -54,6 +54,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	switch (ext) {
 	case KVM_CAP_DEVICE_CTRL:
 	case KVM_CAP_USER_MEMORY:
+	case KVM_CAP_SYNC_MMU:
 	case KVM_CAP_DESTROY_MEMORY_REGION_WORKS:
 	case KVM_CAP_ONE_REG:
 	case KVM_CAP_READONLY_MEM:
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
