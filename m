Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F8B7EDE9
	for <lists+linux-riscv@lfdr.de>; Fri,  2 Aug 2019 09:48:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P19Qea4CuS0o+J0LReas2KUEcdm0bUWafJJEK1jVuNg=; b=Kw5FrQKW1V+JXh
	8oPuPP+BAUio6v5Qe1PX8v/cvbFGYa0ztjSnnTINmlkRKPuQir6I9saxTQ/IhktDOXI87/wDQHxkH
	DItGqO5WPvLVtSAMlnyLXhRspkU/wRJ9IJC5tVEUYSW2/5RpA6BHwrvoYMRDm7+qAJ629JnAvrH54
	57A4dt7SmJjCWLfdACSxIPxg5T8xBU420L5rzGzLSbCKoQ6fU9vnt0+ua/IT3d17IUYnBHjTmTbSq
	+8c2l9qfXdRyF8m15QBcWhVVpL89WjN1WVRNRRnsamsd3KnegN9CrEZYQ83k23Z6cJD430xNq3/J2
	VX+sXkfdDVF7aWdbmCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htSIT-0003Zp-8q; Fri, 02 Aug 2019 07:48:17 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htSIN-0003OC-Q7
 for linux-riscv@lists.infradead.org; Fri, 02 Aug 2019 07:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564732092; x=1596268092;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wU5ejr7Jxy0A6tKAy9ToC/wbOIVhdBE8HyiR1MLJm4c=;
 b=cfHiXX3j6AC3txP9o+5aXkLxYxve8pqJjzS24q/FSZ/u60Z3CxzZCjRP
 jNCGqAkt5H5TGUkYLFfCQih5mGaSfwtuPNTiJismWaymj4p9D3izbxISS
 lOHffnw+dLFWqRNj3+f856P5LbCO4l0xCL3YcSlybx4om9Hg+2Mloewqg
 gy/GB8KJl2Z39R9lR6gVlmLRdGTVJO4mv3NgnEBz7A1G9S55hkG5mvdS6
 4vJPBAzijdU1+gxrtcE1jXTHxJAUrC3DpWnz3isWYnqO6iqAEjDU21qMg
 WO0aQH/fwS6AvkPyTodGL639G6zPiI71aSR5OlGVJc7pTYt5DYWaO256O w==;
IronPort-SDR: Ks8a+AexDl+aqM4lTaK02I7ACyAp2fbaQbLH8Pf0I5nluuO3AMNhEo7OA2dIBpGQhT3Ad3ULqC
 i+UCtghyOgAeMSzzJFJz/zLNrHcKQvUsgM1Kp8cetHLotwElP4ou2CnjJSFpn/TfrSVZ+7bbgJ
 DhjN3NV4SfBFXXORahu8LXP23HW2XNoLH8ymmNvEfobEIMekoBAIaJPeX5bHQwbJPONW/TivBt
 +c3R1jPufnxhvB8Yn8NJWXqKir7nL391XUU3jt2SkPvAzl+xkmw5QODAGvKvLFFcpQVf9nymqu
 78Q=
X-IronPort-AV: E=Sophos;i="5.64,337,1559491200"; d="scan'208";a="114783248"
Received: from mail-by2nam01lp2055.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.55])
 by ob1.hgst.iphmx.com with ESMTP; 02 Aug 2019 15:48:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ALrod0IR5nIdktgkxD+9EVHtDaGXMPcxsP7gszfNrvHs05KOpnTLWGXQEDMW2xijdTjddfxvENeSMsE7gQ91xubAPO7V5IsqhrQ6DVkxayfuBcUMX+yVf97b/09Z7m05l5ZIlSe+N6i39fWS1PwckblMw2EaVxA6/1mZnEhigON9aNgleTeuDqR+gB/40qPDXoNZ3YrL8UwDtimQa1LFIlGl5YpJD2+6OjCJpsDel+GR3I4rNoXWXex9PBFDZ9W7ARRHU7P5FZj9vMv6KZDtKs2DOtQeEizZ3GQdH3PczJY9sAnmFX7sADX6Eal40wNaxBnm+sF/wrH8U6K7QjZlZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6m4JpeeNkJw7C9MwCZGLk8Ez0XfDbYzZ4N+jhVH8t9c=;
 b=OXpgvUR159tz2H3L8yQgDiu98+bIV/gxWNIDbI6uSIyHp2KIyBr/GlonOAxEZfukQvrQAPqLz2iAXk9gKCsCGfoTw+gVVHhzt3hIX4Pw8ZBtCRElvPMtt4twsis6hfO2ddN/HRSdUM0b1rz5+zEGeXwrDe3DEH1N3ABp+Uxsl/N3KnaJsVha8kmzbvxvfVKc1l7EU97sNJB4b9rriy2R1JpmoshysCkl7mPFbVQjQh9fxGsvNgn43zoY/iopxrYXHM6l7I2k5SlN9b2pSuOdIm1g8LQnnJZGZIkM6WlBVhF5Y/2nKqEcW0g1lZL6FPTXsvMOe8it89uh8Yw9oqQXuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6m4JpeeNkJw7C9MwCZGLk8Ez0XfDbYzZ4N+jhVH8t9c=;
 b=PCFQGTmnebAmF6LA4h6OiO91BLV9aLbbAoGycxAhbQYgknNeTvniB7Nmqw91vr3HJKd63HlP9qLs+oqDWYOuqpNOhRtPKxscjZvQ8dJ48biSqq9bNyN8yAUKnCI5Eovo3Hj3vef0MFx8jLTqM9v57/SYDJrCcz3RTqkai5EAirQ=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5566.namprd04.prod.outlook.com (20.178.248.217) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Fri, 2 Aug 2019 07:48:09 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.010; Fri, 2 Aug 2019
 07:48:09 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH v2 12/19] RISC-V: KVM: Implement stage2 page table
 programming
Thread-Topic: [RFC PATCH v2 12/19] RISC-V: KVM: Implement stage2 page table
 programming
Thread-Index: AQHVSQagyZMEH2oG5USv0u30rcwsuA==
Date: Fri, 2 Aug 2019 07:48:09 +0000
Message-ID: <20190802074620.115029-13-anup.patel@wdc.com>
References: <20190802074620.115029-1-anup.patel@wdc.com>
In-Reply-To: <20190802074620.115029-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0111.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::27)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.161]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03eb5545-ca18-43a0-44b6-08d7171dc300
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB5566; 
x-ms-traffictypediagnostic: MN2PR04MB5566:
x-microsoft-antispam-prvs: <MN2PR04MB556608D81E1ED82A5154AA418DD90@MN2PR04MB5566.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 011787B9DD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(39850400004)(136003)(366004)(396003)(189003)(199004)(36756003)(14454004)(7736002)(54906003)(6116002)(102836004)(110136005)(71190400001)(446003)(4326008)(3846002)(5660300002)(52116002)(66066001)(2906002)(25786009)(6486002)(53946003)(6506007)(386003)(55236004)(76176011)(316002)(53936002)(6436002)(305945005)(9456002)(81156014)(64756008)(66476007)(78486014)(86362001)(66556008)(66946007)(30864003)(8936002)(11346002)(476003)(68736007)(81166006)(2616005)(478600001)(486006)(26005)(1076003)(99286004)(50226002)(14444005)(256004)(71200400001)(66446008)(186003)(6512007)(44832011)(8676002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5566;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VJrpPJ2CrwGNl+P/GI9D3tbUiB27/G2ey1U7/yXb/GPQj45jCnwrIqjAtR/ZE+9dJ1YgRWVaQ0ZkYe/jJYA+YC4XHxDXMSX+dzI/Wy9rPaxYWBcxtlATQnLin4EdaT2qMnQRqz7i270xySGePyUdEX0eqssqjTLP8FKaCuBCwODHLtibArgXLSN7SpqfTcTjmpleCkKARuxRS/H8ARn2Y7Gn923IQIP3cJdq2pN5ndcm99vFe/A0XGUGMf7zu6K9WN25LjMjLMSTL/z6/17Qi3jOPjCwB32tT10ww7Iqhu8d9eil1xKWMqjgZzw5A8q0DzpGk2N8AIJFeZPK6bdZ5lL2GTlzBZDGoDb+oRkZNR3tPJ9D6NlO42bOiYBGT+I05B4XdHE3aUVXG4xAAvS84QpFydugYZEJn6BmqgEvTLQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03eb5545-ca18-43a0-44b6-08d7171dc300
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2019 07:48:09.1608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5566
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_004812_003232_1BBF2CF5 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.20.161 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index ca2b4f2b558c..a13531d151e0 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -68,6 +68,13 @@ struct kvm_mmio_decode {
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
@@ -151,6 +158,9 @@ struct kvm_vcpu_arch {
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
index 2b965f9aac07..4e3dfa86b867 100644
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
 
 void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu)
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
