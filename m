Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116DC78B05
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 13:56:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dromvKFCrOq+zVgGpSexhuxHV3aaadPRG1905Vj5qr4=; b=sNR0sBkZ+Ppnjc
	nXcF+r/C+nMiVDOmKHsUfcYHjX6l2w0UVntVTgMhc2586Q0eqp9Dv11GbkcP0y7dIkop+F/enA+Eo
	hUAvGJgTuKi+yEbuoworuq7+/6hV5K0vHkvLDxjcWGYvuYUv/BYuVQwlFujVz/K+yGpxsWyXlGZM2
	fzfSUGjxxXpxD6EOuTEggW75wnzWSSf3dbDSa1Rz9zkj2zWHSZ7nGM8NBAo9ajdJaRKH14P4J+LQr
	bYf6+gw95YJzda66ot/wyCOHfwbCYDGBc10JaQS58V8mGbgh+HpZpNroSl9nnRbWzkj9ImzSAxAWt
	DNvGxyW+8gLxJ7z7E6+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4Gr-0002VM-L2; Mon, 29 Jul 2019 11:56:53 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4Go-0002TV-1f
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 11:56:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564401432; x=1595937432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9Wy9dcL5rq/dXA1ehdGpkqZUlQKAK0ZrddRv+2Qleb4=;
 b=GQ+oNJfUnj6brPdaGxwUbYZOrmAAdNar3YbkpSMlXVYnJJBObwt9x5s+
 vBiboZm7/M8ve6tLvk9D6WVeWBMMAGOR71URnsWDpRphAm85cR5Synz/d
 LP+cKOnwsXVdNfEgwqvPbcxk7QG/WK/B2yhKoLCYk+BZY5vyN3SePoVxH
 /wxBCw2xk85FIhJrsj6vj2tMfMwdmlqk5Os7yE3+DudyJZiSrDMMX5E6+
 Cfgr1Kq6kyW3tj4iXoLYTY8r0+il4P6z7a53Ie9Yko8Z/W287CFCfKrU7
 OB0cjIcY5P9VFKS6znwG7a6WMsNbB7IPOUhdZUiJ0lbKQnOG60lsk/1Os w==;
IronPort-SDR: 4OaK7ZFf0PrHiIi0s+mUXicvC4ANSdlyk2ROSzGsICPw5jxeNYAsCsCDYs3ble3ehFi0JX717d
 gd8yrdnTyQ2a7C3PuLTK/dcTJ/pBTb02n8p6VCVfwPVqnuzaHPO92b2c5CpLapShzQRQaCOE3y
 33H5qwErydqs/zHfTxPuwd06sXl5/uQ8DJUBiVWa0GB+V0KJRMfTwt+MfT05qGF8EYdPwJk0gR
 M+RanvjRk9H6T09wjK0BwKi4+ATffYBsqKeblHuNcWzc7YEajOWt0ceBBBk2MpUKMuOjZ4bNf4
 M6o=
X-IronPort-AV: E=Sophos;i="5.64,322,1559491200"; d="scan'208";a="214553071"
Received: from mail-by2nam01lp2056.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.56])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jul 2019 19:57:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6Ukcd1dz3l0HOUfHp1hLVqOFRBODdEgXrsZRZ0hOcoyFOe5gi78VVmYHZ6oNOpdeGBqVQo+znHanvppSINSiJTJImPf6D0TroY5R3xgpF9MEmsokgG7lXDPFINSYRkpUFY2/PzoLeSvvy4IQpSU6XB8JEqvI2izWsNlQcdpIHcBWn5LSNZQKzi7LTmOcF9Snup2VafME/7y1DR2NgwrGUlH8KxOijOj4jI5+t6E2xkHvLTVDYkWvTDfvA2s0AuanBEfMohDyW8zzytQjMmAtx3oF0D4/6p4ge6jwucWGsURy++f/S8zyqrAzBHCNGeZYZDQVJAK7A625bCWdVCKQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yiPo2+keeX3moredVziA7E0nHI9JO4m7lsLDn4yxJXQ=;
 b=c+2eMdBAB6a3HSYUoOeYisvBKivVX5jd/S9+FQGKzNOqmHdvbCq+EqQ78suvMRJB2RV/iTsVlM2G6nBeb5NMYQnqmjjlw09ntYn+1D1CyMpJ5NbJM2HRvpImZjsAkuXhuXrjfdr81gK7HF+XEIQXxRqaNb/l8pkiRvX+Uj8Sjp2tiW2u2B7vRa9j4a65kCGFXnywEl7h9jS5KoBT/CAsQFcc9Qj88KyVf4me2kdhjoOFYMqHi0mU4Gm6sAOEEfdNIZLpEiWepmV2nNPxmagx7GqJoJgE/NUkOqJsik4rFTJywAvyBVa8dX6Mh5anm/S1p97kC0DibN6n9AFfLR8UUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yiPo2+keeX3moredVziA7E0nHI9JO4m7lsLDn4yxJXQ=;
 b=NmSN8+se2kCDBVJMwtXxIMq1MmIxD+SconIcY5nkQf15WtmoC6XApLqgmKO5Vz6J2J6fvN7fBHI55rAvfFdvJXcL2jBi2h9t6RaSb37Fg2pb+Ezv64mYEpGR04C6BW7e31nnmZiiYOjCw46+BqPwwq/QRwCFlPnSOMohRZ4YN48=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5678.namprd04.prod.outlook.com (20.179.21.211) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Mon, 29 Jul 2019 11:56:47 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2115.005; Mon, 29 Jul 2019
 11:56:47 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [RFC PATCH 04/16] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
Thread-Topic: [RFC PATCH 04/16] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
Thread-Index: AQHVRgSyv/KrR5DDqU2SV6sMLYuTwg==
Date: Mon, 29 Jul 2019 11:56:46 +0000
Message-ID: <20190729115544.17895-5-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 034d01e3-aee1-41dc-934a-08d7141bd515
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5678; 
x-ms-traffictypediagnostic: MN2PR04MB5678:
x-microsoft-antispam-prvs: <MN2PR04MB56787762245FFE15122622588DDD0@MN2PR04MB5678.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:187;
x-forefront-prvs: 01136D2D90
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(39860400002)(136003)(366004)(396003)(346002)(199004)(189003)(7416002)(52116002)(6436002)(6486002)(7736002)(476003)(2616005)(2906002)(5660300002)(66066001)(4326008)(446003)(68736007)(11346002)(81156014)(81166006)(14454004)(53936002)(26005)(186003)(78486014)(99286004)(36756003)(44832011)(486006)(305945005)(8676002)(54906003)(110136005)(25786009)(8936002)(478600001)(76176011)(102836004)(71200400001)(6512007)(1076003)(66446008)(64756008)(66946007)(256004)(55236004)(316002)(9456002)(86362001)(66476007)(50226002)(66556008)(6506007)(386003)(71190400001)(14444005)(6116002)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5678;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1VimpCGYqUvax3UI1LBqR/Fe4zkjfoPiHZGJzY/O3Hs3W3K8KRoMPUbjf8sAZz7maEzMc867nfxQRbJXM29Pi17jfD6IFdpddims0ZXt1Ls165gEGvyinOBFTe8FaAbmXFzU8o7kRoFSaRrAV0ISHWepeNAO9e++ElNuxFCiTp5NC2MZzuRPeykcftlfPVphlWDlWXOmNEUfDw1hrilQRoVGnA6dy9EjSX8Y1fnKMjKGU7GXzzIiT920WVeJ2UjheDfuIbZWrARHn16rcL0XZtpMt3SMXkKoW/eAbGFWl7duFTPYw7M8R9V5TML2j38oHmK0xeRFbPn9WGryKb6YRxoxa+CIGMRO/6s+qAV3auAEooOFj7vI0wBE4j2HdpAH2aBDEXJsTXYuKvfFIknG/su40iEQ56vvSq423rKpWTQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 034d01e3-aee1-41dc-934a-08d7141bd515
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2019 11:56:46.9766 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_045650_141463_5E8C1C86 
X-CRM114-Status: GOOD (  14.75  )
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

This patch implements VCPU create, init and destroy functions
required by generic KVM module. We don't have much dynamic
resources in struct kvm_vcpu_arch so thest functions are quite
simple for KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/include/asm/kvm_host.h | 70 ++++++++++++++++++++++++++
 arch/riscv/kvm/vcpu.c             | 83 +++++++++++++++++++++++++++++--
 2 files changed, 149 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
index 81acfb307d5c..244eabe62710 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -54,7 +54,77 @@ struct kvm_arch {
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
+	unsigned long hedeleg;
+	unsigned long hideleg;
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
 };
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index 9fea9128d964..1ae806f28c0e 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -31,10 +31,48 @@ struct kvm_stats_debugfs_item debugfs_entries[] = {
 	{ NULL }
 };
 
+#define KVM_RISCV_ISA_ALLOWED	(RISCV_ISA_EXT_A | \
+				 RISCV_ISA_EXT_C | \
+				 RISCV_ISA_EXT_D | \
+				 RISCV_ISA_EXT_F | \
+				 RISCV_ISA_EXT_I | \
+				 RISCV_ISA_EXT_M | \
+				 RISCV_ISA_EXT_S | \
+				 RISCV_ISA_EXT_U)
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
@@ -48,13 +86,47 @@ void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
 
 int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	struct kvm_cpu_context *cntx;
+	struct kvm_vcpu_csr *csr;
+
+	/* Mark this VCPU never ran */
+	vcpu->arch.ran_atleast_once = false;
+
+	/* Setup ISA features available to VCPU */
+	vcpu->arch.isa = riscv_isa & KVM_RISCV_ISA_ALLOWED;
+
+	/* Setup reset state of shadow SSTATUS and HSTATUS CSRs */
+	cntx = &vcpu->arch.guest_reset_context;
+	cntx->sstatus = SR_SPP | SR_SPIE;
+	cntx->hstatus = 0;
+	cntx->hstatus |= HSTATUS_SP2V;
+	cntx->hstatus |= HSTATUS_SP2P;
+	cntx->hstatus |= HSTATUS_SPV;
+
+	/* Setup reset state of HEDELEG and HIDELEG CSRs */
+	csr = &vcpu->arch.guest_reset_csr;
+	csr->hedeleg = 0;
+	csr->hedeleg |= (1UL << EXC_INST_MISALIGNED);
+	csr->hedeleg |= (1UL << EXC_BREAKPOINT);
+	csr->hedeleg |= (1UL << EXC_SYSCALL);
+	csr->hedeleg |= (1UL << EXC_INST_PAGE_FAULT);
+	csr->hedeleg |= (1UL << EXC_LOAD_PAGE_FAULT);
+	csr->hedeleg |= (1UL << EXC_STORE_PAGE_FAULT);
+	csr->hideleg = 0;
+	csr->hideleg |= SIE_SSIE;
+	csr->hideleg |= SIE_STIE;
+	csr->hideleg |= SIE_SEIE;
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
@@ -207,6 +279,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	int ret;
 	unsigned long scause, stval;
 
+	/* Mark this VCPU ran atleast once */
+	vcpu->arch.ran_atleast_once = true;
+
 	/* Process MMIO value returned from user-space */
 	if (run->exit_reason == KVM_EXIT_MMIO) {
 		ret = kvm_riscv_vcpu_mmio_return(vcpu, vcpu->run);
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
