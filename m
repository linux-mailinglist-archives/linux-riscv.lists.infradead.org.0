Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C335081DAF
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VThElzz03pd2IpjumK66ikteTFxsGNpn2rd3xRyf9E4=; b=Oc7HAjsFtb9IAS
	cUZaFhVfuT31UAsc2HHNC3cc4DJtWbknhYdBbWD/7bjIkKx+I2ESgozHzfhVjjJVXMgzU2+7+eEis
	w8yDbskyuQ1Axv9wudBA09vJ1AqGSxk7yNZy3Z1ViVZbG4dSiZnPUl/Tc3TUJedO0WQ64S6K1RQ4b
	KOIFD7snE7XkYcWAJMsg97NIIuUqgVwDYk27oYbsRN6fDKE7wrvYSFYKAAdKXYmiBZL5QBVGKt1xs
	9W1xVLDOk6tamBObfRUE5Wzkw/CUGqkGScHA891dFDygjKqiAbZc+a0WSOu9t/kEhgY75qC3o/1SE
	ktlxpBIjkhZODCjIOOdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudHQ-0002PW-Cz; Mon, 05 Aug 2019 13:44:04 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudHM-0002Ne-SN
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012642; x=1596548642;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m7HeaPZC4fkVfXUmnGQl6a9NM4RiLqYdJRteDTpKbvU=;
 b=hHgnxscLvrnna6m6yE8ovC9lA4cb3DWDxX1RhhFWWuVpHX2OAfnGlRqB
 CbuQq5VDIOsjI5tkoN2/cL2B1AB6HgIgtsrOJKtQhKAj17ElkZlJtinA5
 7jNrSER0oeEEXmGuj2bvoH+nexBobSV0//a5yFIbF6YF9SUj9JDMSgX0j
 fzuTPHsFuZY50DXouJWJybkqLJJIusJcVZJaQtS2wAoYqdX2ohONkZ8ZW
 QsNSTHdGPKmy0dqYJ3pDlTN3QKP4nexzR9yif2bBsaVSVmcAueB6gzQ8Y
 UGQJ2VD/bwBQbjRfx5cnCBKmX4QTpkB1TInytXTpi63/wf+OZunK5lgeO g==;
IronPort-SDR: glo7G/FDFPHyHulaOZaTcOJRaK8svpA2Z4wj4qIbXVJnUWXtpoPKfJZCQG71rFJPedlSYTTmoI
 yXnXVkDb1ILv4f/gW5gIF0ceNsAPeBgN8lxn0+WnLq038QEb09HLJy/7LBfmhbimJnFt2cZ/HV
 npGVnUjlqd/S8Y+zph2lW7J799lcknRJdxfDSN+K+vGNYpJbDaZozbinvq9G4KdXTozD/oqtTl
 sx1/xenjRA+jsLnmUm6Jc9YrkoUUmo5TFH2eBYZt2yyUD7yjFZPaRlWjb+IjCm3IpBfc0+iMG8
 If4=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="115996682"
Received: from mail-by2nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.58])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:44:00 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7wbf/dCViz/FWK73rkKEGU99VYYLqlFHxuKjcNFvOfx/u9dOMWTVdfNvOoOjvgfmnjLDUnUfLvsYUvxkT1R+cqNbOkEPrQ2oNxRiK0163AaWMk2gnX3UY1rFjvODCP3g27z+gKZr1ER587kf4lxhNzeQWiMFhPZDCAohX0eAesmtKpu5rZVhG46KlKaZka1m3M8LGLJhB61wKK+40PYIUL7id5X2yv9QG0vqbizp2Xnl1pmkzxyTIqABGqw4CUEOlKugK5TCTuqDLCRbZIY0ILQeayrfVRrhHDGmNzHq5jbQpl9l51KadI/02YA+VJpEH074iL4r8c1HewUX1GzQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imM25OebKaUw1PCxTH889b/571oOu8hsM9PI2NqSdsQ=;
 b=Mqh7xdoX5t3TcSO/hIpX9P9/K9fBz9xyEygsHPibyUyWC4aqt0U8Ze7uS9cB+Fwkqed/Ns9cvl0n2/sHKoeYKEYq06AiiRMqZziEPKZ+d/ntCOVV6wgyjjES066Fl4rqNhCgigQPc3Ul+giptKFi+95Pwo25evhKN5BqYw8p5079jTI5P4eJFIcmLgjJ7d5nr9lmUW1es/R2cSRDA85RTSW0s1npr3Mzk9l2L2jTOwdO/krOOHmdTv/SiEHMmrK3Je8dAFt64ICrZCVYHj0B/q08+pnepH2t/I5NQmnhpfKcMsaPQJDmXnSm+j0Nc4ayEtoyVIwM9qtdoSIELZENGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imM25OebKaUw1PCxTH889b/571oOu8hsM9PI2NqSdsQ=;
 b=G3meNKrjj6hoeSJ6353D50fvaskUtiB441uDeNt2puFax14AFFz/bwIekvyMbA1byU+5qmcWbBNQCUBHKnS34CmcAQvShuHqZaeGSByFBXaBe3s8w3UnqVHg4GWzzZWkm4KHz5wWQIctFUlT0uRd8iGa1YVfpEwguZLo3NXFLJs=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6159.namprd04.prod.outlook.com (20.178.249.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 13:43:57 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:43:57 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 13/19] RISC-V: KVM: Implement MMU notifiers
Thread-Topic: [PATCH v3 13/19] RISC-V: KVM: Implement MMU notifiers
Thread-Index: AQHVS5PU0Fh+ZcYRV0mw18rBqxgeeA==
Date: Mon, 5 Aug 2019 13:43:57 +0000
Message-ID: <20190805134201.2814-14-anup.patel@wdc.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
In-Reply-To: <20190805134201.2814-1-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: a37a665d-3a27-4e62-02ba-08d719aaf6bf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6159; 
x-ms-traffictypediagnostic: MN2PR04MB6159:
x-microsoft-antispam-prvs: <MN2PR04MB61596D853A72A83B98EBCA0B8DDA0@MN2PR04MB6159.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(396003)(376002)(346002)(189003)(199004)(66556008)(66476007)(71190400001)(71200400001)(110136005)(54906003)(66946007)(66446008)(64756008)(86362001)(5660300002)(102836004)(52116002)(55236004)(14454004)(99286004)(386003)(78486014)(316002)(256004)(14444005)(6506007)(76176011)(2616005)(6486002)(8676002)(9456002)(8936002)(36756003)(3846002)(6116002)(6512007)(4326008)(2906002)(476003)(305945005)(44832011)(81156014)(81166006)(26005)(186003)(486006)(11346002)(25786009)(7736002)(1076003)(50226002)(478600001)(68736007)(446003)(53936002)(66066001)(6436002)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6159;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q6s0+Du3zXz3UASKwOF164AB7GPkJ2UpwKQcdy5xNcmPpCKpyUDhmfKoVe4cAnIjrmcGH2MxsFa1KuE01x7fVn3Y+tRnUZ8iOGUWhjn+mtI0aKoJybjbOkHre6JBUZHOE5WeB9NBCcq/dcVNveLTkG8bk6y5UvrLbjWaDryUxzRtKEAqU7KbpZLW4kgWg/S82Ry2gkzmPnHYd0RuxdyZsalPIeLk4JtXf3XMWoqZc2fKjG+xMd+1Fk+jTtTkmFHecDhAFjtLqxL+vHE8W3wQVxMzzkWOBVmklPc/Ak1mGHUgORj8VzQdBAIdY81HqwDZBxHBooRWtA2QLohc7MfpjVXO/uqOocIYVs20Fh7ZVhzH0yglKDCtJB07ctKOHl1nYKMTA+RO0BsUvpygl22n8pScXnMFKRDe4ZoQnSk6ARI=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a37a665d-3a27-4e62-02ba-08d719aaf6bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:43:57.5599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064401_094233_8964B397 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
index e1af3e02832d..d6ee69023a83 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -189,6 +189,13 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 
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
