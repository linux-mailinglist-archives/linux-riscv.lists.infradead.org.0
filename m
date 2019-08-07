Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8280884B8A
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lROWvFjYJdeOC3Cj3NVTB2gQzoa36JcaQflmYz5HX+8=; b=fql/lPfm29BOVV
	QCoFbqSnU/Xnn5sIW3PXj4teuJ7WvuneWAneWbMplBkFT4gA5ZNj9ftCkY/7fzpEWHwVWvjVGtusd
	OliDPmW46nemTjc2/akeZ9dZflweCWObBX2ORO4NLoBrprI6MZp8Zqv7CBCowmU+pj312rFHnsRV+
	EzVN54u5QdHlJOlCexwMGlILRYjUBIFU0mUq7OeIG8WOBxBecGz5rD0jSsNzFiNsSWrMZfYclknEq
	zeaKV9Bmbkn3LekiLdY3XL7qV4IilB2U0z/fgeplSVTnnr7VfmbgjAQJuf1CRSzWsyKuGlSE+f69n
	E0gjKj5jTkp257yX/cPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL4C-0005U2-B2; Wed, 07 Aug 2019 12:29:20 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL46-0005Pl-JS
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:29:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180955; x=1596716955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2/w20wGT6lxpQkAHY3YVbkIhMstba2T8u48Ogw9z0DU=;
 b=oXrMJv1s8V8mYjgnJ61KoKtq1+CCwd8hyfa6mzZQPK2jHZtS71ldtP2l
 acrqoUxqvuaep9/Eq5caYYBDjX4xfhcGy16fPOTyKuaDX5s+xOIolR+UU
 Rpp21tEO/Dpty1m2DwLb/KFAfyaE+Ds2NyQkj+p0U83ssJGUSNAAmr5/Z
 QpPg75EFW1BJveVGg3c4k4XUcOjWDbMoNBuCGtCJAjPVotHbjhFMuUad+
 7Sh4m0Uns2wGBR3mk34Cwo914mGcq2924RPA+cfWsg70CZDkq10E9Nfzs
 h/MZUTJAEZfFsssJvQA1FUQ2RsTjyg/BKf3U3U7bsEvKCljsSULXaBbdw g==;
IronPort-SDR: MkV4h1K1LcLgiyrzeARWYqVPgsq9YRLDEm51k6fDyliP0PowW3JXBvcoNE7hb1INtsu3dkTdHE
 FmB+QGtxTyRwtbp9iX/FmbzG8PYLjsIPPX5oZLyz4isRQdO56A5MpCpNZFTeURKt4HtzF24G/f
 GZW93uJH6JYRqjaIcxk/mL/pXnG2tcfQ/UDl3hMlUZhkZsYPXdaR92P59f6zYgam+Wu8/p5Vr5
 vReJA7Da5kCyQZCwgpW6ZTDRLCRUwN5ZgjZXXkoRbZ+3TumxHHByHsWnvddTEG9K9PUu1JYwUa
 AkA=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="116203152"
Received: from mail-sn1nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.53])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:29:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dfnsUaE9ICEA361+JNVaSZ40AU3FzzQUH2BTIGxwMES//t2UK0HrtcgREmvPTuPrR7EVjc6X7El6z2M3NpwjAHTnWWg0ulAZLlF84mLD1YGjmCMbJzCWRKLOrvGk9OrYmuKp7+A4eBASIGQFL7AMr8fteKD0X6etuexdcr+nvWKzImS0Tg6EXXSkniIkd19oQ/JwGb4bZwE87qs8rYT6wg9D8uYRI4QucOrN8aJ8sKe/G6fApHWEgAA5ejpaJLkbWGfJEyaMqTiJUaSc+1wiwQcLfRccpx9J0r/UfAGdQkWlghHQDKu44Aao1cFFhlaQPZULBl3Oni4OUAKuSr2TOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IZBWNx0ezV4/LwrIDMyyX2wWHnYnCNAA+qO9kqW4cd8=;
 b=RSYyx2Kc3+wtZSzgOnx+84czLGVn+3EJo+DJ/DhBW8LK7ocNoZUXBjz3/ZnrNmVi9Z7VBmP0yi9j3xXlrfHVWmgbs3R0LGcTz7Kg267hWyteMp2KV5Ok+SLVKqiaLz7dWI70XIWT+BCWMCXRfVfgoUAby5K6OjBPDxdX+mDP39NSqnu7b5nl8WifVwb+Tqes2YR/lvUBtx6nlhlMcjR4ko7tveL+14BU053gxqJzN0EGxaASUEoL9lmPom+AqvIw7dy0BC5O2BbEnjo9oVtxTmtqo4V2Vpf4wNJhJ6/8dQUzIMxKpvpnwrBnbS3Zu81UltHuZpnZ9GurfLw8nkXtrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IZBWNx0ezV4/LwrIDMyyX2wWHnYnCNAA+qO9kqW4cd8=;
 b=NEKdD2FN3J58CG19kSiykur51rPWJaNqPPpRGjRN+RPMBu40vm1ss5wyQt4KWZ/B5DW4EZKm5GkxqcdLOpbNk96DrcmiGSo5632ny8s8ZLjgc9pAbdgX/4MMjgbk24YuXJOUMtUYretu1hOD/UKopnyvC1NgAuwFBgnMF+AzEbw=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6736.namprd04.prod.outlook.com (10.141.117.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:29:11 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:29:11 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 13/20] RISC-V: KVM: Implement stage2 page table programming
Thread-Topic: [PATCH v4 13/20] RISC-V: KVM: Implement stage2 page table
 programming
Thread-Index: AQHVTRu3u4HxmIjx2UOJpaYxi2Ii9A==
Date: Wed, 7 Aug 2019 12:29:11 +0000
Message-ID: <20190807122726.81544-14-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 39ae41b0-1dbc-447e-6cc9-08d71b32d9e5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6736; 
x-ms-traffictypediagnostic: MN2PR04MB6736:
x-microsoft-antispam-prvs: <MN2PR04MB67360A527EC41C89FA221E9A8DD40@MN2PR04MB6736.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(386003)(1076003)(3846002)(446003)(86362001)(186003)(26005)(11346002)(76176011)(52116002)(36756003)(54906003)(6506007)(102836004)(55236004)(2616005)(478600001)(44832011)(66066001)(110136005)(7416002)(476003)(486006)(8676002)(6436002)(53946003)(6486002)(6512007)(4326008)(81166006)(81156014)(316002)(66476007)(66556008)(305945005)(68736007)(2906002)(53936002)(25786009)(256004)(5660300002)(30864003)(14454004)(50226002)(7736002)(71190400001)(99286004)(66446008)(6116002)(64756008)(8936002)(71200400001)(66946007)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6736;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xAmh8zOodl4Tx2rn2uuUDb+0wnGslba9ELyPF69W8s9rcA8wgcd/squpO4JvTGpi5AoEcGvNvNwx3Xu3cGPaaNc7KedpMcIBQQKQRxeRc/klvlMKDGVdmYxz4HMo013bVNMcAjNv1lR53VWFkuH9uugMK/9yIEkfT+bfn4TIV1DwZfEMQ4y5VVGqY+gDY5AZUEES/+l03h36+EsptBo17JQUnlrnGKhgSONbxLSgXSRMkRX1Yf+azk2N8mACrBXnIdNHkqMouQ/CLojzJ7/1QRCtdgw3Yc3qxgoBORhZIn9KBewGMDUEP+Z+GTVNmOte6OINKMwUuWhGdT5FPdG52ZW/KwL1fC8V9u/h/JJy7S3K00ljIssYVDzucmOJnH33rEOsd9vc72QMS6/NU4OfyefT0Rhmrjmfxc8xjSEYWbM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39ae41b0-1dbc-447e-6cc9-08d71b32d9e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:29:11.6489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iPRZ/UQIin+R0sfeXeqrRVVFAGRqSk6/k7m5qEzsA4Alr3etascI/WsnJSOilWemmq3gxv5IA3Q5JrOAv1Z11g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052914_893171_8E5DB6C1 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

This patch implements all required functions for programming
the stage2 page table for each Guest/VM.

At high-level, the flow of stage2 related functions is similar
from KVM ARM/ARM64 implementation but the stage2 page table
format is quite different for KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h     |  10 +
 arch/riscv/include/asm/pgtable-bits.h |   1 +
 arch/riscv/kvm/mmu.c                  | 637 +++++++++++++++++++++++++-
 3 files changed, 638 insertions(+), 10 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 3b09158f80f2..a37775c92586 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -72,6 +72,13 @@ struct kvm_mmio_decode {
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
@@ -163,6 +170,9 @@ struct kvm_vcpu_arch {
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
index 2b965f9aac07..9e95ab6769f6 100644
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
@@ -57,34 +489,219 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
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
+	hgatp |= (READ_ONCE(k->vmid.vmid) << HGATP_VMID_SHIFT) &
+		 HGATP_VMID_MASK;
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
