Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFE11BB7BB
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 09:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bi4CKPPKanvO3/FdyuFppwxmfrpeST2rMegv4/xnhaQ=; b=HOczGutwWVbJiOTpCv5upOmgA
	GMRPfw6ucvqmSIOzR6TN+VdX977MwlkZAbuec6m60opu/nLIN96vnDCONu8IXx3XS/8puFLHC87p9
	Ub+YIBhMURRjBVMvom27MoBYdP0SHzU0jJ5bBYDXRUiqh3YciJC30oo03ndnjG5N25wnrurCdcxOi
	xNTs2O//Y8jOETOqred8caKALsuXHaoEiEPh90xyKq2kkuzJw3RuRHEhKkd0vPLn3i5qE0HvY+/DQ
	wicFj1uWTCtyTMolER+AqmZ7TMvjhvHuBE1Vq4TX8lMB/hYdOydUO5J5ECXVapiNEzgr97PqAt591
	AEAnAr2bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKmY-0000g9-T0; Tue, 28 Apr 2020 07:35:54 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKlu-0007fL-Af; Tue, 28 Apr 2020 07:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588059318; x=1619595318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AUZ5srbZc0+7PaM5W0o459FCIsO/vvdk8UIi4GNRMRc=;
 b=omtjY82pqTs7TKcY5TNbbxG3Z0ZWUw+ES9DPAkKfRU0gKGM6cjJ7ab1C
 vB0vDbamGghEuN/t2nQ0NqcVB3n22kPFxfPAuZRMUYkQoO2H5ojewAFdP
 UTTacAayBmfZQQmvEDjy1lQLy6LUV5WWwK7TsaCy3eRhsicnSCk/NaVCk
 CEGxvWEh9Bm5gHPB64xnWNLaewvfjKNv7DQIZSCahyzjaVki+MfdjWrev
 lWQT6Wrpb7NPG+jtqXcJhuW03ltOHgAealxHGGbjgV+zXNxxbOh796xf2
 PhPKqBe8Brz1LoCP0qxglXIXZ61rHC7cNiWKWsN27pc5TXGij5Gc28/8f w==;
IronPort-SDR: nSmCovFmDb8f43xxp8DmzKAvFcU04GA0PJ4KWwFCl/cN4FtBaFnzffHLUcOmTHkgu9RnwTkWp4
 qQZCtH3z5IwSTQca4XAK3VkIUsUNGArUe5qSDpGdVczlpGg/5sLckn6Ot90p5Mn9YFIIlLA2+G
 I7EH+L46NV+2R19IC8ZiPzUEM1+3ldXNLn74LiSng1dFs7QB+XHLOReVtxPUIvVgfSEUEZuyfi
 VuFGm49W9atI/xfSgifUqkx+DSa3afT1C+la2sbFpiVdu2nNQk7YJ0chijiXpUqTAQfdyjJy1t
 1wA=
X-IronPort-AV: E=Sophos;i="5.73,327,1583164800"; d="scan'208";a="238865908"
Received: from mail-dm6nam11lp2169.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.169])
 by ob1.hgst.iphmx.com with ESMTP; 28 Apr 2020 15:35:14 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSk0J2Ny87Vt0Zv2bjR/z6gNgWXDT2EDuYWLVCdkOEBLPaoz+ximVmJbOcBITmhbN6e9eVM4QRuSaz77Tkn4iL9iW2dQH8EtUYmbc21Y1v5LP9HRhJODIWHRVtH7d9NNhucNw8j3/+P0Y8GBGkx6P0LdGKNr9ZBwuBRirwOeFVhm+TmH8vwZjfDtGSFbYuBqkmD4lYvO2nSBNQWEGDpxb8fnsv81nRwoEpvKmkVqKj+VwP9oI0Doa5uxcfGPyG8PU9F3WBUBIfrLd++iOsea6DpzgqgNERDiJ7Kq85TlDtHX3wHd6YXpMqu3HxGygv56RKmQqgBaiSIyLE+9tdGocQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bi4CKPPKanvO3/FdyuFppwxmfrpeST2rMegv4/xnhaQ=;
 b=iAaXvh3zOoTLJwzK9zTGCEHFZNBzx40BHAycdY+/+5mNoyZ7MbMARiRsg9NgCkGyJ2KMIVLiuD5NFTcZl3TI8xHJ6AZnGBX7GfycUbWNupfxKZAPgZw6SovES2aZKucWqpOfCk8U2uydk9KVI1rC9vAXe6KnY1ePjSnOgvcEoemx6Ho07rS4O5QuwWXq6PncpG6AKnOpFvQSYly/Bnvk/jgkM4MRrIVu2ri5YwKuhwffEb7jbYFpVmLJYF16uh0BGnp9vBe9VWs4gnmGGd70sZJztDYHL8Ln9Rtksg4KJk9QeYRPIG4i4COHh9XcZKFwLNiFR0gzG2vzl3VLKhsBug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bi4CKPPKanvO3/FdyuFppwxmfrpeST2rMegv4/xnhaQ=;
 b=Cob+1W4O0UsY2wDgmDzvQuSPkL3zCUHV4oRNZ8u/wmAuBpoWnwQyOfqUI3JztBEGhxmn1/LzummUj3mKAYC/tie/fnPSmgRmuGhksHhYOaS1qIS6lS17iVTTa+ntEJMeSfN8JB7NMV5dlXmDPWrTcQLWgmI8HEDPJVBLlC6aobw=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB5929.namprd04.prod.outlook.com (2603:10b6:5:170::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Tue, 28 Apr
 2020 07:35:10 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 07:35:10 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v12 11/17] RISC-V: KVM: Implement MMU notifiers
Date: Tue, 28 Apr 2020 13:03:06 +0530
Message-Id: <20200428073312.324684-12-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200428073312.324684-1-anup.patel@wdc.com>
References: <20200428073312.324684-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.31.156) by
 MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Tue, 28 Apr 2020 07:35:04 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.31.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8ec26da3-2805-47eb-5057-08d7eb46ae7c
X-MS-TrafficTypeDiagnostic: DM6PR04MB5929:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB59292D22F89DDC66EA7A74268DAC0@DM6PR04MB5929.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2733;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(396003)(39860400002)(366004)(376002)(1076003)(66946007)(2906002)(5660300002)(66556008)(66476007)(7416002)(86362001)(478600001)(55236004)(55016002)(186003)(8936002)(316002)(4326008)(7696005)(36756003)(956004)(110136005)(8886007)(2616005)(26005)(16526019)(54906003)(44832011)(52116002)(81156014)(1006002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YYvhyocIbbXYL2jFPi4XSXrJQc1v2bwsVMfZ1RLMeMPK6i/N/3Wx+basB5HiCAe4d9I7caJymsp5faXaiB697pZtp7RaFqr6aPFZeM5SSC4sCKqeC/g1oa3os7RV25b+Lov3wlHksUYXDUO12A2btMLaW6SB6KM9ExEaSdbZgc5xd4DnXuWK5DB4PhJw4cm5oyVzGhnMCN5xVGAl19YguEKcBYhLS5A6v1mrzg4/tj2VsO1KI+TYJ/Q9km/ygsZV+Dfj3X6h2TSVOqjvWzOr3zR4op8rcujCX96F0UPJcKF0IhvdI1KDmj24Ae4ZZ04Bjz/NCGKoTtVhaXi3Br9yAkGpcxeCABQSRIvWyBdMxa++5LHJFe26RdhF5fMasKMqFHRDbOAhoapmtqgEctUOos5ORWYjM54A+oHaJ8O4vXRp8b5gG6lSegxI+EJehvLi
X-MS-Exchange-AntiSpam-MessageData: TnWQi5pZaSgfEepBY6CbKx0/7PVh/Yg8ZfC6EbHDsYZns83idsQwaI25eEkVmnIrXnj0UmL9Xs1iDgPTBuxSSI9CPmtltNcTOB48xIDLqK6z5dJ5WRsBTLI7jqU4GhL3olQ2Dx5EH1toUFTAnKhiVOLUXEOBCKghqol1p9DFEiKbTyFCQ4AgNAwpa/qmCW/7H2tvT8U3TN5Wtwov8X31FYGe2pu+++SPC/egaCAj8NUpL6CdoLl8r2EhuKjQr+tUINVaW/6C36eyiI+QXg0k9VKsMzIAhICpp8zYh039EbtB9mgJEmqhUPVZQ1/fcW7qOPND2kx5DYBxMYGFcbij6zmDpiEk8NZgIcfhpLc/BPdxReY+Ff8PqCVtucW0vrGwTx30jLNMAl95CGOaPBZAn5bCyjWABtpbobOBfGeiDqqkgy74eRkMbm0haC/HYGeI9u0RWCDF6O1oLygdmNAnAqUmO6h3oFfUldy53rSyl7zuo7geq8yj3QBsoNW2QhMWTJfdmUXpso0J0F6h5QWdLnML5gihwAtLLSM0UYIXYbXR5yq4brot1wv6ehWMYMD3ewkSAJKkaDZw5dvdRRbWCACiXmiGWdVhP5A3+gOUefTkdt3aUy/dcULVCu1OrKKOez6/cOc5qDDSZ0YMIqNZcdyPfOerfTfhjxjaRImALVLeEEIuL5P7Nh4DKqbfEENFm6VMTlx1EWEAYSnLncVBzz9ulQ+97U2aFCtnZhpbtKzzkq00a9tSEtzVfk/9QLDWZeNzyn0UOFy8RcFpo0aTOPaiknJ7CnDduVKJyBI+VpQ=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ec26da3-2805-47eb-5057-08d7eb46ae7c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 07:35:10.5723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4V8OPYiAR1nrEb/23i7IiijhFmeUku2FnurODJp5LCkeYJJ4nQv5zU6qmiBDrc9BZMBrqQYbPDm8YAdthcS09w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_003514_708184_49C6525E 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, kvm@vger.kernel.org,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, kvm-riscv@lists.infradead.org,
 Alexander Graf <graf@amazon.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements MMU notifiers for KVM RISC-V so that Guest
physical address space is in-sync with Host physical address space.

This will allow swapping, page migration, etc to work transparently
with KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h |   7 ++
 arch/riscv/kvm/Kconfig            |   1 +
 arch/riscv/kvm/mmu.c              | 129 +++++++++++++++++++++++++++++-
 arch/riscv/kvm/vm.c               |   1 +
 4 files changed, 137 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index a75778665546..642fd817c29b 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -198,6 +198,13 @@ static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
 static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
 static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
 
+#define KVM_ARCH_WANT_MMU_NOTIFIER
+int kvm_unmap_hva_range(struct kvm *kvm,
+			unsigned long start, unsigned long end);
+int kvm_set_spte_hva(struct kvm *kvm, unsigned long hva, pte_t pte);
+int kvm_age_hva(struct kvm *kvm, unsigned long start, unsigned long end);
+int kvm_test_age_hva(struct kvm *kvm, unsigned long hva);
+
 void __kvm_riscv_hfence_gvma_vmid_gpa(unsigned long vmid,
 				      unsigned long gpa);
 void __kvm_riscv_hfence_gvma_vmid(unsigned long vmid);
diff --git a/arch/riscv/kvm/Kconfig b/arch/riscv/kvm/Kconfig
index 88edd477b3a8..2356dc52ebb3 100644
--- a/arch/riscv/kvm/Kconfig
+++ b/arch/riscv/kvm/Kconfig
@@ -20,6 +20,7 @@ if VIRTUALIZATION
 config KVM
 	tristate "Kernel-based Virtual Machine (KVM) support (EXPERIMENTAL)"
 	depends on RISCV_SBI && MMU
+	select MMU_NOTIFIER
 	select PREEMPT_NOTIFIERS
 	select ANON_INODES
 	select KVM_MMIO
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
index 9daeb4a051e7..692141ce9bfc 100644
--- a/arch/riscv/kvm/mmu.c
+++ b/arch/riscv/kvm/mmu.c
@@ -369,6 +369,38 @@ int stage2_ioremap(struct kvm *kvm, gpa_t gpa, phys_addr_t hpa,
 
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
 void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
 }
@@ -504,6 +536,95 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
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
+	stage2_set_pte(kvm, 0, NULL, gpa, pte);
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
+	pte_t *ptep;
+	u32 ptep_level = 0;
+
+	WARN_ON(size != PAGE_SIZE && size != PMD_SIZE && size != PGDIR_SIZE);
+
+	if (!stage2_get_leaf_entry(kvm, gpa, &ptep, &ptep_level))
+		return 0;
+
+	return ptep_test_and_clear_young(NULL, 0, ptep);
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
+	pte_t *ptep;
+	u32 ptep_level = 0;
+
+	WARN_ON(size != PAGE_SIZE && size != PMD_SIZE);
+	if (!stage2_get_leaf_entry(kvm, gpa, &ptep, &ptep_level))
+		return 0;
+
+	return pte_young(*ptep);
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
 int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu,
 			 struct kvm_memory_slot *memslot,
 			 gpa_t gpa, unsigned long hva, bool is_write)
@@ -518,7 +639,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu,
 	struct kvm_mmu_page_cache *pcache = &vcpu->arch.mmu_page_cache;
 	bool logging = (memslot->dirty_bitmap &&
 			!(memslot->flags & KVM_MEM_READONLY)) ? true : false;
-	unsigned long vma_pagesize;
+	unsigned long vma_pagesize, mmu_seq;
 
 	down_read(&current->mm->mmap_sem);
 
@@ -557,6 +678,8 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu,
 		return ret;
 	}
 
+	mmu_seq = kvm->mmu_notifier_seq;
+
 	hfn = gfn_to_pfn_prot(kvm, gfn, is_write, &writeable);
 	if (hfn == KVM_PFN_ERR_HWPOISON) {
 		send_sig_mceerr(BUS_MCEERR_AR, (void __user *)hva,
@@ -575,6 +698,9 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu,
 
 	spin_lock(&kvm->mmu_lock);
 
+	if (mmu_notifier_retry(kvm, mmu_seq))
+		goto out_unlock;
+
 	if (writeable) {
 		kvm_set_pfn_dirty(hfn);
 		mark_page_dirty(kvm, gfn);
@@ -588,6 +714,7 @@ int kvm_riscv_stage2_map(struct kvm_vcpu *vcpu,
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
2.25.1


