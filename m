Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06F684B71
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y9LX80N4vV3ug9ABs1bmLEM0C+wd8IUYqHZH7XNIUJA=; b=LoTfPq0/EJp7Cq
	yszLVBiCk6iZDGq8kivO8Dax2MQb1TJVGUIdbXAe76SN5DZAzELrP42FgUTaxQK2Di2meXN850HNr
	1CkkZLMPcfI6Tcoiy3qsAHnij5Yb5pnhF04h4WrEDbQ4m2lBJj1GlU45xeeIgEOYLkwfiugUh1CsI
	NvfbhFKXP6HmsOkl3/WqcSkyREru4/jf1ktTtuX261cSo0dl4W3hpRcaZBivR2zTvDyo0o3CK2/OI
	JEZYpJZqhru2NxU3dwJMva3WJ/6ECAUAre8Q2Urk/qsajUXnh1OXKiV/5mHjOu379dY9UVv92VH70
	So2sgB2rspCTHDyilOyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL3Y-0004zQ-IM; Wed, 07 Aug 2019 12:28:40 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL3S-0004wK-JW
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180915; x=1596716915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kFhMXG3pkVtZJrYb6d+3l3iexTxc96m2ja4M6W7ep9A=;
 b=WcjMt/kGmlmz3Zi3co1imJzSRrNVF8MEm5Y5I12YDpTw8ARlA9Bpj9z5
 kUgg12Ve2M/HN6WEz+tprdC/n8zfXTJKhnnmdUBwX2ZWazTjhdHAie1s3
 QE/IMMVfOsPLuQFfjpFhlpo2hkS8XQQZzJDfP8vycmAR5bxiv+JeJynbB
 50mxNYEz+WMJaklmNzLd63Fr8iExYC3HhjBuPCWSXPpgvE5XKWX1pbuDB
 G9vST3SXAK7QLWAi9CV6XqqlSTFshfsxDl9L9o2RTWMYsYw4b4Bcbl5rs
 pfGOK0GY33C5ujPXNmdKb7ZqfbnwQHVTjWHs5VZxWXwDngwZpbsl1c62u w==;
IronPort-SDR: mySy6OCA49cuBdaokwjgTi0UhiKSo7feIwRg/p3YaF3aSwH9+hfZSG6o77vdCQ9Bni4FUa2Cil
 6dI5C8OKs2CdlpRYPlVMoYxsw8vT40Py+Hr1W3Nu5Zm6VrrCVdh0+PwXwSM7CeuHmeZA46ksXE
 KcYfUNOK1b1yRb7ISM10bevF7rWhQ93lw8DxLctpazeVTHdqkG1lgYLBT9UUDWk8iOZsN+33I2
 Yj/ukA1ShAuxcT61gvJWPyAiIa1Cvo9Q2CxNeJTn72cbYsqzgEiLTuExvC6BymVfHT6f4/duze
 VOs=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="119865531"
Received: from mail-co1nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.50])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:28:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c6PzMaEGYNJxGaId+oYvGPvB4KpoB25NEyAU2p2cNNeHZsbSNlkX39Ka3b9sVCtCHjbgZv4fyNON1y8qFcVjzxeSidUpmsvEkbU8+GkrmbzDjH7DPZklDUpBNf/ElWlO0FwBg04/lFHrq3ykWA3CWl/YI1QuvOB6pkMwx0GCHgedKnOkhMYUIu5SC6lH/kWwsSbOTsTnMSIWLJDeBcKVb/7V5eIb1XTZKyFQTpJpx+ZQ9JlySgzUeb7jRRnfeteJpSccJmroTUuk/78vuQ5M/dABiP4nEmGORbcqv5ID/aBslJ8V0/uRtFoX7j3tyyj6pB3KZ618uFwm0XRlmGUmYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3bM57xL/ucrcUkCHbRYZSIniavXwECEzkj11N/0NWn4=;
 b=WZLQe40HJ7UiXC7dK61UizBCOeX774Xu6u8RVAr/ZaD+gEEUkyq2HCxjEAGTwjqv5evkCPNDcO9YI25eCLdp3DRnXMpkB5PExc/7LEVcer7Zb/Cua9XTtdS6Bcr+dkhWse6Ci81d+Df108QM9Dbp//OTiHTypn9LyB2baw2VY5Ktm9QXWtzADk+6LtJ/49gsloi/Hb2cULxkdhG+aF2gJ5KwDe2hisfZKtvjceucA0M1pq+JEjEQ5kNwOBBcuEIcUcDz0vNpEvhGIwoabheFvHwAB32j1PxEDF3rZ82U+952tyLLj1lHWpHqgWB9XrKRVgd5/6DlbxchjVyPLiNXCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3bM57xL/ucrcUkCHbRYZSIniavXwECEzkj11N/0NWn4=;
 b=IScnUskUDp7eKxFcfoVAxEBTq6afStsiEvq58GFGToK6/g/bfcmNHDyAXMY1+5VcnNjnlQ/2E2BYmiMJ/NuWFqvR/+wDJhqZJMb1lfcqX5AeTGCz6Gbcgcw4K/dz7JiKuatvy6iJc7AL9TNT/a9g1iHDzBjLK7VkGnI9rqhbTpg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6736.namprd04.prod.outlook.com (10.141.117.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:28:31 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:28:31 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 06/20] RISC-V: KVM: Implement VCPU create, init and destroy
 functions
Thread-Topic: [PATCH v4 06/20] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
Thread-Index: AQHVTRufabDzARcYWUqhjaAV7o/wXw==
Date: Wed, 7 Aug 2019 12:28:31 +0000
Message-ID: <20190807122726.81544-7-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 0a09c8c6-f838-472a-658c-08d71b32c233
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6736; 
x-ms-traffictypediagnostic: MN2PR04MB6736:
x-microsoft-antispam-prvs: <MN2PR04MB6736ECDB98C0A056D86FFC8A8DD40@MN2PR04MB6736.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(386003)(1076003)(3846002)(446003)(86362001)(186003)(26005)(11346002)(76176011)(52116002)(36756003)(54906003)(6506007)(102836004)(55236004)(2616005)(478600001)(44832011)(66066001)(110136005)(7416002)(476003)(486006)(8676002)(6436002)(6486002)(6512007)(4326008)(81166006)(81156014)(316002)(66476007)(66556008)(305945005)(68736007)(2906002)(53936002)(25786009)(256004)(5660300002)(14454004)(50226002)(7736002)(71190400001)(99286004)(66446008)(6116002)(64756008)(8936002)(71200400001)(66946007)(14444005)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6736;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JSmyUoDoZdVVSyI2MIk4xLYvr8BxdekjuqfMDfFKaR86MWjzgjdDVhw/I71YO6wM/uNpfqcPmerRmAZmRZ4yF+9Ptqf/bfqylRbjj1PLeodiX/bL3FgbJzICTURNJNGyzl5iGS9Lkq2yzUnCbOJvMzPObo0UDdUPa1gxWf31IXaJr/9lnzXbyxy9NYSNoiJXPi2K/lqvGfAbEgigaIMLPRa6q4r4tJYV4ufouu2J3CyF3M1nZLmH/ISZRG6R1leXJKLjGvAzT1GteMeMP0n+Zmps9/p49fXb0WIrMApJKkmj9Rk3T8Ti1AEFZDIUGhviDV0sPrHEGBMJcr0h+ld+6ZdgkkGQzVQ9oxdaiuVAJ3UfU3y6NNKI9y+pOyC9yDEVy4ApFk7J3qrwxKS74cUyWcBPRB3HCYV57UAtqcmdFjY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a09c8c6-f838-472a-658c-08d71b32c233
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:28:31.8666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x6ZgdHsHBa2FukX/kd5/Hux1ZlYBcfN2ax4PacF9XQbrmssF5hWjcHA759kxgD+Rr9zLmrJhSFgqPKdKFMULgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052834_799180_985F1B31 
X-CRM114-Status: GOOD (  14.76  )
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

This patch implements VCPU create, init and destroy functions
required by generic KVM module. We don't have much dynamic
resources in struct kvm_vcpu_arch so thest functions are quite
simple for KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h | 68 +++++++++++++++++++++++++++++++
 arch/riscv/kvm/vcpu.c             | 68 +++++++++++++++++++++++++++++--
 2 files changed, 132 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 9459709656be..dab32c9c3470 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -53,7 +53,75 @@ struct kvm_arch {
 	phys_addr_t pgd_phys;
 };
 
+struct kvm_cpu_context {
+	unsigned long zero;
+	unsigned long ra;
+	unsigned long sp;
+	unsigned long gp;
+	unsigned long tp;
+	unsigned long t0;
+	unsigned long t1;
+	unsigned long t2;
+	unsigned long s0;
+	unsigned long s1;
+	unsigned long a0;
+	unsigned long a1;
+	unsigned long a2;
+	unsigned long a3;
+	unsigned long a4;
+	unsigned long a5;
+	unsigned long a6;
+	unsigned long a7;
+	unsigned long s2;
+	unsigned long s3;
+	unsigned long s4;
+	unsigned long s5;
+	unsigned long s6;
+	unsigned long s7;
+	unsigned long s8;
+	unsigned long s9;
+	unsigned long s10;
+	unsigned long s11;
+	unsigned long t3;
+	unsigned long t4;
+	unsigned long t5;
+	unsigned long t6;
+	unsigned long sepc;
+	unsigned long sstatus;
+	unsigned long hstatus;
+};
+
+struct kvm_vcpu_csr {
+	unsigned long vsstatus;
+	unsigned long vsie;
+	unsigned long vstvec;
+	unsigned long vsscratch;
+	unsigned long vsepc;
+	unsigned long vscause;
+	unsigned long vstval;
+	unsigned long vsip;
+	unsigned long vsatp;
+};
+
 struct kvm_vcpu_arch {
+	/* VCPU ran atleast once */
+	bool ran_atleast_once;
+
+	/* ISA feature bits (similar to MISA) */
+	unsigned long isa;
+
+	/* CPU context of Guest VCPU */
+	struct kvm_cpu_context guest_context;
+
+	/* CPU CSR context of Guest VCPU */
+	struct kvm_vcpu_csr guest_csr;
+
+	/* CPU context upon Guest VCPU reset */
+	struct kvm_cpu_context guest_reset_context;
+
+	/* CPU CSR context upon Guest VCPU reset */
+	struct kvm_vcpu_csr guest_reset_csr;
+
 	/* Don't run the VCPU (blocked) */
 	bool pause;
 
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 48536cb0c8e7..8272b05d6ce4 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -31,10 +31,48 @@ struct kvm_stats_debugfs_item debugfs_entries[] = {
 	{ NULL }
 };
 
+#define KVM_RISCV_ISA_ALLOWED	(riscv_isa_extension_mask(a) | \
+				 riscv_isa_extension_mask(c) | \
+				 riscv_isa_extension_mask(d) | \
+				 riscv_isa_extension_mask(f) | \
+				 riscv_isa_extension_mask(i) | \
+				 riscv_isa_extension_mask(m) | \
+				 riscv_isa_extension_mask(s) | \
+				 riscv_isa_extension_mask(u))
+
+static void kvm_riscv_reset_vcpu(struct kvm_vcpu *vcpu)
+{
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
+	struct kvm_vcpu_csr *reset_csr = &vcpu->arch.guest_reset_csr;
+	struct kvm_cpu_context *cntx = &vcpu->arch.guest_context;
+	struct kvm_cpu_context *reset_cntx = &vcpu->arch.guest_reset_context;
+
+	memcpy(csr, reset_csr, sizeof(*csr));
+
+	memcpy(cntx, reset_cntx, sizeof(*cntx));
+}
+
 struct kvm_vcpu *kvm_arch_vcpu_create(struct kvm *kvm, unsigned int id)
 {
-	/* TODO: */
-	return NULL;
+	int err;
+	struct kvm_vcpu *vcpu;
+
+	vcpu = kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
+	if (!vcpu) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	err = kvm_vcpu_init(vcpu, kvm, id);
+	if (err)
+		goto free_vcpu;
+
+	return vcpu;
+
+free_vcpu:
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
+out:
+	return ERR_PTR(err);
 }
 
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
@@ -48,13 +86,32 @@ void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
 
 int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	struct kvm_cpu_context *cntx;
+
+	/* Mark this VCPU never ran */
+	vcpu->arch.ran_atleast_once = false;
+
+	/* Setup ISA features available to VCPU */
+	vcpu->arch.isa = riscv_isa_extension_base(NULL) & KVM_RISCV_ISA_ALLOWED;
+
+	/* Setup reset state of shadow SSTATUS and HSTATUS CSRs */
+	cntx = &vcpu->arch.guest_reset_context;
+	cntx->sstatus = SR_SPP | SR_SPIE;
+	cntx->hstatus = 0;
+	cntx->hstatus |= HSTATUS_SP2V;
+	cntx->hstatus |= HSTATUS_SP2P;
+	cntx->hstatus |= HSTATUS_SPV;
+
+	/* Reset VCPU */
+	kvm_riscv_reset_vcpu(vcpu);
+
 	return 0;
 }
 
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	kvm_riscv_stage2_flush_cache(vcpu);
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
 
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
@@ -199,6 +256,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	int ret;
 	unsigned long scause, stval;
 
+	/* Mark this VCPU ran atleast once */
+	vcpu->arch.ran_atleast_once = true;
+
 	vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
 
 	/* Process MMIO value returned from user-space */
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
