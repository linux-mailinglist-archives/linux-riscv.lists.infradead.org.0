Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BA9A1C1C
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 15:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryn0KglFVUDi0QLPQXVWDrqkzwyEM9QmjDTx/lyNi5k=; b=ShRodLWDr489S0
	TH5kOn5YOOBoQnFvebwohU8/zSEemRKA2RyeNvETxKHUrAM+FP96si4V7vx6CH11iI9BOgesEMNFE
	WoOCLAgCcwKIi1ir5RF74zrdhXluk5eBH7mcaxBXTm76FAFdVlEw60eNv3sviO1dGvB45azzddDWZ
	wYBRjdqqpPFA55dqMsUtc+n/Kk2PtCgzTicJCqlrgFBVDPQAuLJmV7kZhtDb2EEwDYwWyPXEBjIR9
	RflBKjANCP5QRw9lqKsnc+qtvVngj9oI5yMFoml0rDSE3BgoX3LTLrL/k7tIa7geuNxcCUlgW9xY4
	iCFDaxfBpW2zqk14EVlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ku8-0002P7-KU; Thu, 29 Aug 2019 13:56:00 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ku4-0002KM-C8
 for linux-riscv@lists.infradead.org; Thu, 29 Aug 2019 13:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567086956; x=1598622956;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dyrF6izOq5sqcNAw3cJtmFoiEXCoEfPHdpn8K0kiMXA=;
 b=cSw4Ff0liZaipad5p841jO+9tJ8mRw21KzuRb+twfYfsw4VQ3qfeTu6P
 wssW0NiAEaiTPeHIqaCpcEFloUQjaAaa2l3ARSM5bmCkXO2xRHnTembp6
 4jyDvDIk9YEVKpefMuRDRSlRxO3ZYRGdxU+gAPF9TU7ZABxS37QpbJfWJ
 XP7STrCWSex1yKc21BjlCus/NPIoePmX+FysVNLgJOxnpy1/HX+ymMs5c
 zgdN1Uk8YBDxJjUCIVHO6a27ryqkdI0Dhi8B48hP6NhB+Zqgt9XlLgt7U
 2nxgRmyM2jDP2ctnyCOGqiZo8FSgOOWp4aEHZ46eD+Bkytj2LuswHpDqz w==;
IronPort-SDR: vaJ+CDYBXu0eUx1j0u1lQ5Dnea2EPNDp4d2c9vd7Lp4ih23YRT8GQiAgh4o6appQYTqo8ITrOP
 a/un6GrhC62oYxymqc/FPKezWV7X5EFySez7IzEDvSPnl97BUULaEQAUMlYaOaAZbr4qwcwUTh
 wytY5DziZYKJXOO1zuUNbAKDKI8lD+BHEFtG9aNOxH1Z3jvg1BIaSjWYUBjNdbIf4FRqOl6JQ1
 JdYwl3IRx7x6C+7FtHLwuAsn61Vl7L5abyadbGdrAgdHxHRH5LtmGpLyjPHbXOCIWVBs1wwZuG
 9VQ=
X-IronPort-AV: E=Sophos;i="5.64,443,1559491200"; d="scan'208";a="116951636"
Received: from mail-by2nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.59])
 by ob1.hgst.iphmx.com with ESMTP; 29 Aug 2019 21:55:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVJwVm7W8Ic+lhJb1m2mwYJx+F+kmAUNWReiXI/hAqNVRGkLxpmNDwsLW+ExZUiN7Lp0TScaXr4KhM8FbbSPqrB/V6I0kV6Mj4hbDxqHqcDHxyiYgfGJQUhKZP8BFuKxnz4wcHr/nW/u9Eb/tn+jrroXzyYKquvKGIj3vWyObPZxxfDwQ0b3v9XaQFP/ipk3iPL7FjdWJeePCOxbhSr0bx/GU1yNkU8/s5jk3btjWf0uRFpfd6cqj8kONDg8sdyivf+jLhoaX1j8QA9I/chetwpJoC+yZhkdPuSpHcOrQTFSs7gqslfWwH1O8WfqH1RwOTcVrxy0SzKNpawjWV9jBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ur4t1q5QEmIXmlJHmmVTaWWmvsOpi2JJsk+lUDL39BM=;
 b=Jj82UkSjCRC9UJkcOlE7Fa/jGNgnvqPLoPZ3A2Qs8gjgyaVrjeR7fmKsNYaGbj60Ka1LaxPZdJczDSwYfL18bSlOkeqVFuzAUqd0Hyv0szr1nR/ShBP1Q1IGplk0CFqLfDSS9Fgm21G6dh2cP1/oMyWrARvHr/3ORGJqszjJa6bHkh/lovZuYBWJRhrIvB/HJERMAw1hZrWr3B1YmRMrLJdBCZE7qJ1fhHUuSDNFyuVD8jZDqDzrlAmzkpBtDZAnPpqYUIVerlvfMF2qtYMdBo2pwZOjKo6iFEddjn2F2Pv5JBLXDQn47kXrBdDNLFinkpLB4rckOlRuBpLEBCkzBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ur4t1q5QEmIXmlJHmmVTaWWmvsOpi2JJsk+lUDL39BM=;
 b=JiD2weFwdsqVMoT4bwTZQ473DxTD2s0SMB9K/vL/wUjuizsh54GBd5cgjZMHRxY2UYZA31b3wJDtBudynAaUicpF3eKNcw/0750TxZOmuD83OVf0TK4SX42YccBXlrEXH9n4cFzjlELBpy8xb8WkKNlDq3d3WVkWn34bN+A6dwY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5616.namprd04.prod.outlook.com (20.179.22.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 13:55:53 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 13:55:53 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v6 06/21] RISC-V: KVM: Implement VCPU create, init and destroy
 functions
Thread-Topic: [PATCH v6 06/21] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
Thread-Index: AQHVXnF56Fw5V/wIH0qXs56XFqN+Fw==
Date: Thu, 29 Aug 2019 13:55:53 +0000
Message-ID: <20190829135427.47808-7-anup.patel@wdc.com>
References: <20190829135427.47808-1-anup.patel@wdc.com>
In-Reply-To: <20190829135427.47808-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR0101CA0072.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:e::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.51.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97683b6b-8249-4e10-64c3-08d72c889b52
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5616; 
x-ms-traffictypediagnostic: MN2PR04MB5616:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5616D898421C045873E686BF8DA20@MN2PR04MB5616.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(189003)(199004)(7416002)(52116002)(81166006)(316002)(6506007)(386003)(25786009)(7736002)(81156014)(305945005)(2906002)(36756003)(71190400001)(14454004)(99286004)(1076003)(256004)(14444005)(4326008)(66946007)(76176011)(66446008)(64756008)(66556008)(66476007)(102836004)(6116002)(50226002)(55236004)(476003)(6512007)(3846002)(71200400001)(5660300002)(26005)(186003)(44832011)(86362001)(66066001)(6436002)(446003)(8936002)(6486002)(110136005)(54906003)(2616005)(486006)(53936002)(11346002)(478600001)(8676002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5616;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BPoM89mwmbC1xvGGvZf5qZ17Wrql7X5LFtptm/Qx9irS7oc1o52tagblZX8fX8ozmV1OkQLbbG/PM8IDceZ13/JxqZsakH7atzWSyi8YybWmGqwZZPPlbZw3TWM903Lp5bMTD9EaatrbwgGi8G8yex35VwMVrmRlYmgwOGqC2xP7YxoHNUAqDr8iNEV0bhh7O+UUHUYc2nflTOrXHJd1QufArJfUFgo4n8OvmHCuvjN+lBv9ql1BuusKoSdnXxKjpEd1eQGa4Pd6nXb0DvGqQx68IVlI89c+lCNS+2n+KwivgDSC5NJ3gTGWoLOVW92gSuUNmboQ99qxSCKizApS2lTHcmlbJXatAbGu0AHWAhfxjn7dfGKMdyby5IKFBGvHgkgouhIAA8mkYB0N/ZKPgqIVBRYswumzyPDTOpVYF3o=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97683b6b-8249-4e10-64c3-08d72c889b52
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 13:55:53.3404 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u/4I5ZJqzHujwOTx7tg5SeGYMagJqGRrum/7MzqpTc71SdcFh4+/KumAUNYWEBEHjJcNKJWf4ntaY3IRacZ+sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_065556_506777_8C3FF181 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This patch implements VCPU create, init and destroy functions
required by generic KVM module. We don't have much dynamic
resources in struct kvm_vcpu_arch so thest functions are quite
simple for KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
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
