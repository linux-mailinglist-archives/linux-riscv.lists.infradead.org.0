Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27E878B14
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9U/h6kEYF4bjC5vf+7f83GbsCas1BMnpyz0cyZgzxs=; b=fWbrrXElJjXETz
	KKgZPjBBA3ISV3Mk2JuGKGcoUSk8Gfr0ZYSJotFJJ5AJJkE7naZJxUAdwa9u5C/aOP60QRX7l3Rrk
	m9wW/f9uHmmBVqL339WPp5gz91pJkBgHbm0B03LyE8/IwyAG/gCJIbOydHuH1+4Lr6zDtoZyCtuai
	LhCySU4VuYCLXqSVYQKM8Fdfd90xV3BwMqMmuYWWVJiz6PD7qvT2qvqDefehByfRyk1ONFd/FsYza
	2Y1MT6DFw94KbKutqSCt77qRTSCUJeaJGp+lYah+MsxLnXK50vLdW7cdcPTa92wf6mie7/qtWnXur
	ckgdIrPqSa/H7idIiPqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4HZ-0002yp-Fw; Mon, 29 Jul 2019 11:57:37 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4HU-0002vU-JB
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401496; x=1595937496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9TtH9E8Bk3v3JNyHLxqJzJnl52zb+9YRDc0iPmjrjew=;
 b=SKzUfMHhIdCFapfg4RyoKb6h4qORIkUYf418W4a0P1YggEVzMneyNVFI
 m51Dgh6aBR8ynDatP3kC5a5FYQ44ZuKTHwxoAbe3KpQyeJrgw9kaXWyfo
 +0Yy9cW59c+fDL8ni1kbrpXMlQkWx+B50VAivJ4m9Bh9nloiZCH2jep/+
 PoQ0XtUvp22kn7+fM0podi7IxZeE02BNNwpXnlpERVvifAeKQntEmJMbB
 SuALP0dss69R8zPeWu3qI03+dVKt4dq4R3zHLC8Qm88/XnuxjA0qm3zGV
 y733PVsdQBocTmW/d2xPZ33fJ2dOQmTpOB1Y6bvsHAj9scnOnEqavRq7t Q==;
IronPort-SDR: qE5oVM3M3p5SMqCPYnLy/jgGdvuA9I+1OxXWR86/lQbIAl01wwbmtMSbi8QeEza8GPmksbc/Ac
 //JHb9LM6JI5TJGGBlz6Te9BfQuXgXPJP9pKB04mZ6H4xp0fGoRYD1iEXyHKAwyWg8l0HNssBq
 PnwcQB652gv+FVXVHpcIBzLelq6i2UMwIaz+jiA9fQG/krzRkfSZAlqTgC0n5+XdvbuvYM+Zx9
 3Zl2rTGskzZl+cng2AExJ1TtTgme0/paQho2+h4C4NIIPfhjv+/VmsUSOOKKqy+oUrz++Q2Vsl
 Ku4=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="214553150"
Received: from mail-by2nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.51])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:58:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eX4ll9ZO/nX3lNwnt+A8xS+gSZJQsPDVY/ckVl5s2twZTsvLsWGwFC8C35N00/RJf4yFrR7mNoxe/rAaP59AHCQp4pjuhuMycPHCXQr6Mwl9MOK7Os9udUcv47+RvECgDIipKYF/MxF5IJp1ffT6GcqqUMJvzS0gfHxjjASE6hOZaP7xnkZO+dzDsBGRF3x+iLeZkVpBxdYNNak6qhkJHZ0s3F64sRuuZInaO0b4AovCzk4ZOsoLuR5lJSN7mGZciDLUTVSjtg8bKTqn/FGbxDwpIOanOt0Nqn43cwoVM/2QuE0PDEMyqrxW09rg1OuFk97cVLCgiP1EKCA4c1d8sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yBRBhW5YKHj3jAlMQDx+Ooj/mkK5nIb8WtMGBuEk1rQ=;
 b=HvryuH6P2ZlP0ZoUzKQWixPzUp8D9nqLM7EIbJyZfwc/aFC9pLE3E6/DERfjbY9sAHWRTsISGaw0dVmR8r/bURETX97jc4bUclTNjmpcrvXV5amti2FCHJa+2dgR4V6Jr/V2JNGMTZg3w8K5naR0AyHZj6+t8ozr3Fo7O33fcWunJtelG09oRN4mrZcK03R66/a3QfHPE09Fif5RMMWCwb/mTWPCibsjlq8TIf5zgFmkkMdgrnGZLGZfec7HKyefGYfWCCuWhsLNIQeLe+63JBk633zNiBRrQX0oEkCrZ01TJYinmXmFAyP8FwMTTlHpOBj2fsYMpDNY7zMqqkmbbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yBRBhW5YKHj3jAlMQDx+Ooj/mkK5nIb8WtMGBuEk1rQ=;
 b=WCWoIW+lrR4dFJfFiN1mkfDb2YJM7N64Dz/vjiQmcwiFf2pzocOn9tlJl6/4V4AH2nlDpBvObt4JWThpTAZvbsftVLMZRLpmdqA8v3npYCX2d+5zcTDFZyEAAL07V5jle0AIRyA2CAbvaVwGMDcvZBxl4wYvGLqFKXQwozN41Is=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5678.namprd04.prod.outlook.com (20.179.21.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 11:57:29 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:57:29 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 11/16] RISC-V: KVM: Implement stage2 page table programming
Thread-Topic: [RFC PATCH 11/16] RISC-V: KVM: Implement stage2 page table
 programming
Thread-Index: AQHVRgTMjvWB0tfM1UmiHgwTo4JEWA==
Date: Mon, 29 Jul 2019 11:57:29 +0000
Message-ID: <20190729115544.17895-12-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 0d2a246b-32ec-4369-2bbc-08d7141bee80
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5678; 
x-ms-traffictypediagnostic: MN2PR04MB5678:
x-microsoft-antispam-prvs: <MN2PR04MB567878CFCCE0C1BB28208C2E8DDD0@MN2PR04MB5678.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(199004)(189003)(7416002)(52116002)(6436002)(6486002)(7736002)(476003)(2616005)(2906002)(5660300002)(66066001)(4326008)(446003)(53946003)(68736007)(11346002)(81156014)(81166006)(14454004)(53936002)(26005)(186003)(78486014)(99286004)(36756003)(44832011)(486006)(305945005)(8676002)(54906003)(110136005)(25786009)(8936002)(478600001)(76176011)(102836004)(71200400001)(30864003)(6512007)(1076003)(66446008)(64756008)(66946007)(256004)(55236004)(316002)(9456002)(86362001)(66476007)(50226002)(66556008)(6506007)(386003)(71190400001)(14444005)(6116002)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5678;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6NKxQx/kfG+WuOj+P1eG/GjJxW0Z0MiLEwCBAz/10R2PCeOGImirkcX5Q8aS2EVxR0z47jdLG+tuxw4wqkObnMfo+Souyv9WZw/UflFquWviJZgwcZezs+TfoIvvljNN6mXwKiIJlKvY41kCpxrwF4Id11m0DfcU3jxKyE610zF1Pzy0UUqIiY/Uk5HCOKEHzrmgzcb+kQ/cChlPBP/ylg6rvT5lGF5X2tMAT5CzdXEwz59KbmhCSWLPxRa/lNUXrw+y6WoCxyQ42ZCY/Nu/j39vqw6yIg+j+tP7h7bvPyzc+1zGFjysFSAS4HN9YtwPNbVuAgzbyJ6UThkH4QoVpr0w/2V2ZfSJiWLzql3PpgnCadMuE5dACYLSojuJkpyBYe2QgV5BnCIslnz9VsWcxOoDgFJnZvzVNa8NJ7XTnhs=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d2a246b-32ec-4369-2bbc-08d7141bee80
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:57:29.7022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045732_707244_514F3241 
X-CRM114-Status: GOOD (  18.61  )
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

This patch implements all required functions for programming
the stage2 page table for each Guest/VM.

At high-level, the flow of stage2 related functions is similar
from KVM ARM/ARM64 implementation but the stage2 page table
format is quite different for KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h     |  10 +
 arch/riscv/include/asm/pgtable-bits.h |   1 +
 arch/riscv/kvm/mmu.c                  | 636 +++++++++++++++++++++++++-
 3 files changed, 637 insertions(+), 10 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index dcc31f9ca13d..354d179c43cf 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -69,6 +69,13 @@ struct kvm_mmio_decode {
 	int shift;
 };
 
+#define KVM_MMU_PAGE_CACHE_NR_OBJS	32
+
+struct kvm_mmu_page_cache {
+	int nobjs;
+	void *objects[KVM_MMU_PAGE_CACHE_NR_OBJS];
+};
+
 struct kvm_cpu_context {
 	unsigned long zero;
 	unsigned long ra;
@@ -154,6 +161,9 @@ struct kvm_vcpu_arch {
 	/* MMIO instruction details */
 	struct kvm_mmio_decode mmio_decode;
 
+	/* Cache pages needed to program page tables with spinlock held */
+	struct kvm_mmu_page_cache mmu_page_cache;
+
 	/* VCPU power-off state */
 	bool power_off;
 
diff --git a/arch/riscv/include/asm/pgtable-bits.h b/arch/riscv/include/asm/pgtable-bits.h
index bbaeb5d35842..be49d62fcc2b 100644
--- a/arch/riscv/include/asm/pgtable-bits.h
+++ b/arch/riscv/include/asm/pgtable-bits.h
@@ -26,6 +26,7 @@
 
 #define _PAGE_SPECIAL   _PAGE_SOFT
 #define _PAGE_TABLE     _PAGE_PRESENT
+#define _PAGE_LEAF      (_PAGE_READ | _PAGE_WRITE | _PAGE_EXEC)
 
 /*
  * _PAGE_PROT_NONE is set on not-present pages (and ignored by the hardware) to
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
index 963f3c373781..9561c5e85f75 100644
--- a/arch/riscv/kvm/mmu.c
+++ b/arch/riscv/kvm/mmu.c
@@ -18,6 +18,432 @@
 #include <asm/page.h>
 #include <asm/pgtable.h>
 
+#ifdef CONFIG_64BIT
+#define stage2_have_pmd		true
+#define stage2_gpa_size		((phys_addr_t)(1ULL << 39))
+#define stage2_cache_min_pages	2
+#else
+#define pmd_index(x)		0
+#define pfn_pmd(x, y)		({ pmd_t __x = { 0 }; __x; })
+#define stage2_have_pmd		false
+#define stage2_gpa_size		((phys_addr_t)(1ULL << 32))
+#define stage2_cache_min_pages	1
+#endif
+
+static int stage2_cache_topup(struct kvm_mmu_page_cache *pcache,
+			      int min, int max)
+{
+	void *page;
+
+	BUG_ON(max > KVM_MMU_PAGE_CACHE_NR_OBJS);
+	if (pcache->nobjs >= min)
+		return 0;
+	while (pcache->nobjs < max) {
+		page = (void *)__get_free_page(GFP_KERNEL | __GFP_ZERO);
+		if (!page)
+			return -ENOMEM;
+		pcache->objects[pcache->nobjs++] = page;
+	}
+
+	return 0;
+}
+
+static void stage2_cache_flush(struct kvm_mmu_page_cache *pcache)
+{
+	while (pcache && pcache->nobjs)
+		free_page((unsigned long)pcache->objects[--pcache->nobjs]);
+}
+
+static void *stage2_cache_alloc(struct kvm_mmu_page_cache *pcache)
+{
+	void *p;
+
+	if (!pcache)
+		return NULL;
+
+	BUG_ON(!pcache->nobjs);
+	p = pcache->objects[--pcache->nobjs];
+
+	return p;
+}
+
+struct local_guest_tlb_info {
+	struct kvm_vmid *vmid;
+	gpa_t addr;
+};
+
+static void local_guest_tlb_flush_vmid_gpa(void *info)
+{
+	struct local_guest_tlb_info *infop = info;
+
+	__kvm_riscv_hfence_gvma_vmid_gpa(READ_ONCE(infop->vmid->vmid_version),
+					 infop->addr);
+}
+
+static void stage2_remote_tlb_flush(struct kvm *kvm, gpa_t addr)
+{
+	struct local_guest_tlb_info info;
+	struct kvm_vmid *vmid = &kvm->arch.vmid;
+
+	/* TODO: This should be SBI call */
+	info.vmid = vmid;
+	info.addr = addr;
+	preempt_disable();
+	smp_call_function_many(cpu_all_mask, local_guest_tlb_flush_vmid_gpa,
+			       &info, true);
+	preempt_enable();
+}
+
+static int stage2_set_pgd(struct kvm *kvm, gpa_t addr, const pgd_t *new_pgd)
+{
+	pgd_t *pgdp = &kvm->arch.pgd[pgd_index(addr)];
+
+	*pgdp = *new_pgd;
+	if (pgd_val(*pgdp) & _PAGE_LEAF)
+		stage2_remote_tlb_flush(kvm, addr);
+
+	return 0;
+}
+
+static int stage2_set_pmd(struct kvm *kvm, struct kvm_mmu_page_cache *pcache,
+			  gpa_t addr, const pmd_t *new_pmd)
+{
+	int rc;
+	pmd_t *pmdp;
+	pgd_t new_pgd;
+	pgd_t *pgdp = &kvm->arch.pgd[pgd_index(addr)];
+
+	if (!pgd_val(*pgdp)) {
+		pmdp = stage2_cache_alloc(pcache);
+		if (!pmdp)
+			return -ENOMEM;
+		new_pgd = pfn_pgd(PFN_DOWN(__pa(pmdp)), __pgprot(_PAGE_TABLE));
+		rc = stage2_set_pgd(kvm, addr, &new_pgd);
+		if (rc)
+			return rc;
+	}
+
+	if (pgd_val(*pgdp) & _PAGE_LEAF)
+		return -EEXIST;
+
+	pmdp = (void *)pgd_page_vaddr(*pgdp);
+	pmdp = &pmdp[pmd_index(addr)];
+
+	*pmdp = *new_pmd;
+	if (pmd_val(*pmdp) & _PAGE_LEAF)
+		stage2_remote_tlb_flush(kvm, addr);
+
+	return 0;
+}
+
+static int stage2_set_pte(struct kvm *kvm,
+			  struct kvm_mmu_page_cache *pcache,
+			  gpa_t addr, const pte_t *new_pte)
+{
+	int rc;
+	pte_t *ptep;
+	pmd_t new_pmd;
+	pmd_t *pmdp;
+	pgd_t new_pgd;
+	pgd_t *pgdp = &kvm->arch.pgd[pgd_index(addr)];
+
+	if (!pgd_val(*pgdp)) {
+		pmdp = stage2_cache_alloc(pcache);
+		if (!pmdp)
+			return -ENOMEM;
+		new_pgd = pfn_pgd(PFN_DOWN(__pa(pmdp)), __pgprot(_PAGE_TABLE));
+		rc = stage2_set_pgd(kvm, addr, &new_pgd);
+		if (rc)
+			return rc;
+	}
+
+	if (pgd_val(*pgdp) & _PAGE_LEAF)
+		return -EEXIST;
+
+	if (stage2_have_pmd) {
+		pmdp = (void *)pgd_page_vaddr(*pgdp);
+		pmdp = &pmdp[pmd_index(addr)];
+		if (!pmd_present(*pmdp)) {
+			ptep = stage2_cache_alloc(pcache);
+			if (!ptep)
+				return -ENOMEM;
+			new_pmd = pfn_pmd(PFN_DOWN(__pa(ptep)),
+					  __pgprot(_PAGE_TABLE));
+			rc = stage2_set_pmd(kvm, pcache, addr, &new_pmd);
+			if (rc)
+				return rc;
+		}
+
+		if (pmd_val(*pmdp) & _PAGE_LEAF)
+			return -EEXIST;
+
+		ptep = (void *)pmd_page_vaddr(*pmdp);
+	} else {
+		ptep = (void *)pgd_page_vaddr(*pgdp);
+	}
+
+	ptep = &ptep[pte_index(addr)];
+
+	*ptep = *new_pte;
+	if (pte_val(*ptep) & _PAGE_LEAF)
+		stage2_remote_tlb_flush(kvm, addr);
+
+	return 0;
+}
+
+static int stage2_map_page(struct kvm *kvm,
+			   struct kvm_mmu_page_cache *pcache,
+			   gpa_t gpa, phys_addr_t hpa,
+			   unsigned long page_size, pgprot_t prot)
+{
+	pte_t new_pte;
+	pmd_t new_pmd;
+	pgd_t new_pgd;
+
+	if (page_size == PAGE_SIZE) {
+		new_pte = pfn_pte(PFN_DOWN(hpa), prot);
+		return stage2_set_pte(kvm, pcache, gpa, &new_pte);
+	}
+
+	if (stage2_have_pmd && page_size == PMD_SIZE) {
+		new_pmd = pfn_pmd(PFN_DOWN(hpa), prot);
+		return stage2_set_pmd(kvm, pcache, gpa, &new_pmd);
+	}
+
+	if (page_size == PGDIR_SIZE) {
+		new_pgd = pfn_pgd(PFN_DOWN(hpa), prot);
+		return stage2_set_pgd(kvm, gpa, &new_pgd);
+	}
+
+	return -EINVAL;
+}
+
+enum stage2_op {
+	STAGE2_OP_NOP = 0,	/* Nothing */
+	STAGE2_OP_CLEAR,	/* Clear/Unmap */
+	STAGE2_OP_WP,		/* Write-protect */
+};
+
+static void stage2_op_pte(struct kvm *kvm, gpa_t addr, pte_t *ptep,
+			  enum stage2_op op)
+{
+	BUG_ON(addr & (PAGE_SIZE - 1));
+
+	if (!pte_present(*ptep))
+		return;
+
+	if (op == STAGE2_OP_CLEAR)
+		set_pte(ptep, __pte(0));
+	else if (op == STAGE2_OP_WP)
+		set_pte(ptep, __pte(pte_val(*ptep) & ~_PAGE_WRITE));
+	stage2_remote_tlb_flush(kvm, addr);
+}
+
+static void stage2_op_pmd(struct kvm *kvm, gpa_t addr, pmd_t *pmdp,
+			  enum stage2_op op)
+{
+	int i;
+	pte_t *ptep;
+
+	BUG_ON(addr & (PMD_SIZE - 1));
+
+	if (!pmd_present(*pmdp))
+		return;
+
+	if (pmd_val(*pmdp) & _PAGE_LEAF)
+		ptep = NULL;
+	else
+		ptep = (pte_t *)pmd_page_vaddr(*pmdp);
+
+	if (op == STAGE2_OP_CLEAR)
+		set_pmd(pmdp, __pmd(0));
+
+	if (ptep) {
+		for (i = 0; i < PTRS_PER_PTE; i++)
+			stage2_op_pte(kvm, addr + i * PAGE_SIZE, &ptep[i], op);
+		if (op == STAGE2_OP_CLEAR)
+			put_page(virt_to_page(ptep));
+	} else {
+		if (op == STAGE2_OP_WP)
+			set_pmd(pmdp, __pmd(pmd_val(*pmdp) & ~_PAGE_WRITE));
+		stage2_remote_tlb_flush(kvm, addr);
+	}
+}
+
+static void stage2_op_pgd(struct kvm *kvm, gpa_t addr, pgd_t *pgdp,
+			  enum stage2_op op)
+{
+	int i;
+	pte_t *ptep;
+	pmd_t *pmdp;
+
+	BUG_ON(addr & (PGDIR_SIZE - 1));
+
+	if (!pgd_val(*pgdp))
+		return;
+
+	ptep = NULL;
+	pmdp = NULL;
+	if (!(pgd_val(*pgdp) & _PAGE_LEAF)) {
+		if (stage2_have_pmd)
+			pmdp = (pmd_t *)pgd_page_vaddr(*pgdp);
+		else
+			ptep = (pte_t *)pgd_page_vaddr(*pgdp);
+	}
+
+	if (op == STAGE2_OP_CLEAR)
+		set_pgd(pgdp, __pgd(0));
+
+	if (pmdp) {
+		for (i = 0; i < PTRS_PER_PMD; i++)
+			stage2_op_pmd(kvm, addr + i * PMD_SIZE, &pmdp[i], op);
+		if (op == STAGE2_OP_CLEAR)
+			put_page(virt_to_page(pmdp));
+	} else if (ptep) {
+		for (i = 0; i < PTRS_PER_PTE; i++)
+			stage2_op_pte(kvm, addr + i * PAGE_SIZE, &ptep[i], op);
+		if (op == STAGE2_OP_CLEAR)
+			put_page(virt_to_page(ptep));
+	} else {
+		if (op == STAGE2_OP_WP)
+			set_pgd(pgdp, __pgd(pgd_val(*pgdp) & ~_PAGE_WRITE));
+		stage2_remote_tlb_flush(kvm, addr);
+	}
+}
+
+static void stage2_unmap_range(struct kvm *kvm, gpa_t start, gpa_t size)
+{
+	pmd_t *pmdp;
+	pte_t *ptep;
+	pgd_t *pgdp;
+	gpa_t addr = start, end = start + size;
+
+	while (addr < end) {
+		pgdp = &kvm->arch.pgd[pgd_index(addr)];
+		if (!pgd_val(*pgdp)) {
+			addr += PGDIR_SIZE;
+			continue;
+		} else if (!(addr & (PGDIR_SIZE - 1)) &&
+			  ((end - addr) >= PGDIR_SIZE)) {
+			stage2_op_pgd(kvm, addr, pgdp, STAGE2_OP_CLEAR);
+			addr += PGDIR_SIZE;
+			continue;
+		}
+
+		if (stage2_have_pmd) {
+			pmdp = (pmd_t *)pgd_page_vaddr(*pgdp);
+			if (!pmd_present(*pmdp)) {
+				addr += PMD_SIZE;
+				continue;
+			} else if (!(addr & (PMD_SIZE - 1)) &&
+				   ((end - addr) >= PMD_SIZE)) {
+				stage2_op_pmd(kvm, addr, pmdp,
+					      STAGE2_OP_CLEAR);
+				addr += PMD_SIZE;
+				continue;
+			}
+			ptep = (pte_t *)pmd_page_vaddr(*pmdp);
+		} else {
+			ptep = (pte_t *)pgd_page_vaddr(*pgdp);
+		}
+
+		stage2_op_pte(kvm, addr, ptep, STAGE2_OP_CLEAR);
+		addr += PAGE_SIZE;
+	}
+}
+
+static void stage2_wp_range(struct kvm *kvm, gpa_t start, gpa_t end)
+{
+	pmd_t *pmdp;
+	pte_t *ptep;
+	pgd_t *pgdp;
+	gpa_t addr = start;
+
+	while (addr < end) {
+		pgdp = &kvm->arch.pgd[pgd_index(addr)];
+		if (!pgd_val(*pgdp)) {
+			addr += PGDIR_SIZE;
+			continue;
+		} else if (!(addr & (PGDIR_SIZE - 1)) &&
+			   ((end - addr) >= PGDIR_SIZE)) {
+			stage2_op_pgd(kvm, addr, pgdp, STAGE2_OP_WP);
+			addr += PGDIR_SIZE;
+			continue;
+		}
+
+		if (stage2_have_pmd) {
+			pmdp = (pmd_t *)pgd_page_vaddr(*pgdp);
+			if (!pmd_present(*pmdp)) {
+				addr += PMD_SIZE;
+				continue;
+			} else if (!(addr & (PMD_SIZE - 1)) &&
+				   ((end - addr) >= PMD_SIZE)) {
+				stage2_op_pmd(kvm, addr, pmdp, STAGE2_OP_WP);
+				addr += PMD_SIZE;
+				continue;
+			}
+			ptep = (pte_t *)pmd_page_vaddr(*pmdp);
+		} else {
+			ptep = (pte_t *)pgd_page_vaddr(*pgdp);
+		}
+
+		stage2_op_pte(kvm, addr, ptep, STAGE2_OP_WP);
+		addr += PAGE_SIZE;
+	}
+}
+
+void stage2_wp_memory_region(struct kvm *kvm, int slot)
+{
+	struct kvm_memslots *slots = kvm_memslots(kvm);
+	struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
+	phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
+	phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
+
+	spin_lock(&kvm->mmu_lock);
+	stage2_wp_range(kvm, start, end);
+	spin_unlock(&kvm->mmu_lock);
+	kvm_flush_remote_tlbs(kvm);
+}
+
+int stage2_ioremap(struct kvm *kvm, gpa_t gpa, phys_addr_t hpa,
+		   unsigned long size, bool writable)
+{
+	pte_t pte;
+	int ret = 0;
+	unsigned long pfn;
+	phys_addr_t addr, end;
+	struct kvm_mmu_page_cache pcache = { 0, };
+
+	end = (gpa + size + PAGE_SIZE - 1) & PAGE_MASK;
+	pfn = __phys_to_pfn(hpa);
+
+	for (addr = gpa; addr < end; addr += PAGE_SIZE) {
+		pte = pfn_pte(pfn, PAGE_KERNEL);
+
+		if (!writable)
+			pte = pte_wrprotect(pte);
+
+		ret = stage2_cache_topup(&pcache,
+					 stage2_cache_min_pages,
+					 KVM_MMU_PAGE_CACHE_NR_OBJS);
+		if (ret)
+			goto out;
+
+		spin_lock(&kvm->mmu_lock);
+		ret = stage2_set_pte(kvm, &pcache, addr, &pte);
+		spin_unlock(&kvm->mmu_lock);
+		if (ret)
+			goto out;
+
+		pfn++;
+	}
+
+out:
+	stage2_cache_flush(&pcache);
+	return ret;
+
+}
+
 void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free,
 			   struct kvm_memory_slot *dont)
 {
@@ -35,7 +461,7 @@ void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen)
 
 void kvm_arch_flush_shadow_all(struct kvm *kvm)
 {
-	/* TODO: */
+	kvm_riscv_stage2_free_pgd(kvm);
 }
 
 void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
@@ -49,7 +475,13 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 				const struct kvm_memory_slot *new,
 				enum kvm_mr_change change)
 {
-	/* TODO: */
+	/*
+	 * At this point memslot has been committed and there is an
+	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
+	 * memory slot is write protected.
+	 */
+	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
+		stage2_wp_memory_region(kvm, mem->slot);
 }
 
 int kvm_arch_prepare_memory_region(struct kvm *kvm,
@@ -57,34 +489,218 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 				const struct kvm_userspace_memory_region *mem,
 				enum kvm_mr_change change)
 {
-	/* TODO: */
-	return 0;
+	hva_t hva = mem->userspace_addr;
+	hva_t reg_end = hva + mem->memory_size;
+	bool writable = !(mem->flags & KVM_MEM_READONLY);
+	int ret = 0;
+
+	if (change != KVM_MR_CREATE && change != KVM_MR_MOVE &&
+			change != KVM_MR_FLAGS_ONLY)
+		return 0;
+
+	/*
+	 * Prevent userspace from creating a memory region outside of the GPA
+	 * space addressable by the KVM guest GPA space.
+	 */
+	if ((memslot->base_gfn + memslot->npages) >=
+	    (stage2_gpa_size >> PAGE_SHIFT))
+		return -EFAULT;
+
+	down_read(&current->mm->mmap_sem);
+
+	/*
+	 * A memory region could potentially cover multiple VMAs, and
+	 * any holes between them, so iterate over all of them to find
+	 * out if we can map any of them right now.
+	 *
+	 *     +--------------------------------------------+
+	 * +---------------+----------------+   +----------------+
+	 * |   : VMA 1     |      VMA 2     |   |    VMA 3  :    |
+	 * +---------------+----------------+   +----------------+
+	 *     |               memory region                |
+	 *     +--------------------------------------------+
+	 */
+	do {
+		struct vm_area_struct *vma = find_vma(current->mm, hva);
+		hva_t vm_start, vm_end;
+
+		if (!vma || vma->vm_start >= reg_end)
+			break;
+
+		/*
+		 * Mapping a read-only VMA is only allowed if the
+		 * memory region is configured as read-only.
+		 */
+		if (writable && !(vma->vm_flags & VM_WRITE)) {
+			ret = -EPERM;
+			break;
+		}
+
+		/* Take the intersection of this VMA with the memory region */
+		vm_start = max(hva, vma->vm_start);
+		vm_end = min(reg_end, vma->vm_end);
+
+		if (vma->vm_flags & VM_PFNMAP) {
+			gpa_t gpa = mem->guest_phys_addr +
+				    (vm_start - mem->userspace_addr);
+			phys_addr_t pa;
+
+			pa = (phys_addr_t)vma->vm_pgoff << PAGE_SHIFT;
+			pa += vm_start - vma->vm_start;
+
+			/* IO region dirty page logging not allowed */
+			if (memslot->flags & KVM_MEM_LOG_DIRTY_PAGES) {
+				ret = -EINVAL;
+				goto out;
+			}
+
+			ret = stage2_ioremap(kvm, gpa, pa,
+					     vm_end - vm_start, writable);
+			if (ret)
+				break;
+		}
+		hva = vm_end;
+	} while (hva < reg_end);
+
+	if (change == KVM_MR_FLAGS_ONLY)
+		goto out;
+
+	spin_lock(&kvm->mmu_lock);
+	if (ret)
+		stage2_unmap_range(kvm, mem->guest_phys_addr,
+				   mem->memory_size);
+	spin_unlock(&kvm->mmu_lock);
+
+out:
+	up_read(&current->mm->mmap_sem);
+	return ret;
 }
 
 int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu, gpa_t gpa, unsigned long hva,
 			 bool is_write)
 {
-	/* TODO: */
-	return 0;
+	int ret;
+	short lsb;
+	kvm_pfn_t hfn;
+	bool writeable;
+	gfn_t gfn = gpa >> PAGE_SHIFT;
+	struct vm_area_struct *vma;
+	struct kvm *kvm = vcpu->kvm;
+	struct kvm_mmu_page_cache *pcache = &vcpu->arch.mmu_page_cache;
+	unsigned long vma_pagesize;
+
+	down_read(&current->mm->mmap_sem);
+
+	vma = find_vma_intersection(current->mm, hva, hva + 1);
+	if (unlikely(!vma)) {
+		kvm_err("Failed to find VMA for hva 0x%lx\n", hva);
+		up_read(&current->mm->mmap_sem);
+		return -EFAULT;
+	}
+
+	vma_pagesize = vma_kernel_pagesize(vma);
+
+	up_read(&current->mm->mmap_sem);
+
+	if (vma_pagesize != PGDIR_SIZE &&
+	    vma_pagesize != PMD_SIZE &&
+	    vma_pagesize != PAGE_SIZE) {
+		kvm_err("Invalid VMA page size 0x%lx\n", vma_pagesize);
+		return -EFAULT;
+	}
+
+	/* We need minimum second+third level pages */
+	ret = stage2_cache_topup(pcache, stage2_cache_min_pages,
+				 KVM_MMU_PAGE_CACHE_NR_OBJS);
+	if (ret) {
+		kvm_err("Failed to topup stage2 cache\n");
+		return ret;
+	}
+
+	hfn = gfn_to_pfn_prot(kvm, gfn, is_write, &writeable);
+	if (hfn == KVM_PFN_ERR_HWPOISON) {
+		if (is_vm_hugetlb_page(vma))
+			lsb = huge_page_shift(hstate_vma(vma));
+		else
+			lsb = PAGE_SHIFT;
+
+		send_sig_mceerr(BUS_MCEERR_AR, (void __user *)hva,
+				lsb, current);
+		return 0;
+	}
+	if (is_error_noslot_pfn(hfn))
+		return -EFAULT;
+	if (!writeable && is_write)
+		return -EPERM;
+
+	spin_lock(&kvm->mmu_lock);
+
+	if (writeable) {
+		kvm_set_pfn_dirty(hfn);
+		ret = stage2_map_page(kvm, pcache, gpa, hfn << PAGE_SHIFT,
+				      vma_pagesize, PAGE_WRITE_EXEC);
+	} else {
+		ret = stage2_map_page(kvm, pcache, gpa, hfn << PAGE_SHIFT,
+				      vma_pagesize, PAGE_READ_EXEC);
+	}
+
+	if (ret)
+		kvm_err("Failed to map in stage2\n");
+
+	spin_unlock(&kvm->mmu_lock);
+	kvm_set_pfn_accessed(hfn);
+	kvm_release_pfn_clean(hfn);
+	return ret;
 }
 
 void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	stage2_cache_flush(&vcpu->arch.mmu_page_cache);
 }
 
 int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm)
 {
-	/* TODO: */
+	if (kvm->arch.pgd != NULL) {
+		kvm_err("kvm_arch already initialized?\n");
+		return -EINVAL;
+	}
+
+	kvm->arch.pgd = alloc_pages_exact(PAGE_SIZE, GFP_KERNEL | __GFP_ZERO);
+	if (!kvm->arch.pgd)
+		return -ENOMEM;
+	kvm->arch.pgd_phys = virt_to_phys(kvm->arch.pgd);
+
 	return 0;
 }
 
 void kvm_riscv_stage2_free_pgd(struct kvm *kvm)
 {
-	/* TODO: */
+	void *pgd = NULL;
+
+	spin_lock(&kvm->mmu_lock);
+	if (kvm->arch.pgd) {
+		stage2_unmap_range(kvm, 0UL, stage2_gpa_size);
+		pgd = READ_ONCE(kvm->arch.pgd);
+		kvm->arch.pgd = NULL;
+		kvm->arch.pgd_phys = 0;
+	}
+	spin_unlock(&kvm->mmu_lock);
+
+	/* Free the HW pgd, one page at a time */
+	if (pgd)
+		free_pages_exact(pgd, PAGE_SIZE);
 }
 
 void kvm_riscv_stage2_update_pgtbl(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	unsigned long hgatp = HGATP_MODE;
+	struct kvm_arch *k = &vcpu->kvm->arch;
+
+	hgatp |= (k->vmid.vmid << HGATP_VMID_SHIFT) & HGATP_VMID_MASK;
+	hgatp |= (k->pgd_phys >> PAGE_SHIFT) & HGATP_PPN;
+
+	csr_write(CSR_HGATP, hgatp);
+
+	if (!kvm_riscv_stage2_vmid_bits())
+		__kvm_riscv_hfence_gvma_all();
 }
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
