Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A063129555
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 12:36:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A9MkJ5HERSKOsNADhAFkUau1i/tobLTknnVLJrC3q2s=; b=KrBc76F1mh4zRXVOOwXOTiKgX
	V1qjdS4WmIGv8ZWRikPloC8Fj1CmfWZBwgVJz1nxrz+B2Ta4sYvNSCHd/f/7wpUPhDRJ1B9IC1zjG
	deuwwuIQlMky4PJ04i0oxKXSm72NRm5W8jDwfpf+2Lz3UnmvDhJeqhurNwmo7HAhM4RN1x7fbUOOk
	ZYOAyjhIIaPRClZ2ZrJumhZ9+YTDQJ8GifwInXS04xjnQHJfQqgS9hOQkoDDABxp75gUu5LeqgE8m
	QGu/BfaAQ64iMFVp7FwNkuD5BAEb2QQJO0iVbJLBH1eW+ZqFo6hr8Br1kOyMi8wtyiZqPv9XMh6x4
	sRDByAP4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijM0H-0000Zx-Ke; Mon, 23 Dec 2019 11:36:01 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijM0D-0000Xv-DH; Mon, 23 Dec 2019 11:35:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577100957; x=1608636957;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7TZQe1SVXHwqC9XE1Lctg70D2GyJ+pmHxTXnQtHYyjw=;
 b=b2gZ8baA7YNofJ0FCPRg/BT2N88EVrSdwGkUL49tNwve050pYzE0/cQR
 h+u4VEGPS8adlgEZWqNLLc8rnzZqbjkiyxqpuDNSUnOFgK0diVBuw2s+i
 YNYXFR9AjNbOEVyfPL8wHi6Liboik/a6oEkYHGpFpKwZNoaXlVC7nfwPb
 9cxVx6O9gMoxxB3a3CzaSTcCEGH6h2DmM3maG54prQqSgItfMJd+jYWNE
 7PWqm0d983NFdyiqabZR1+ALddGk07SfcTfDc3Km42d8Q8tt43jsQEg76
 VQRhpK5eSWJR6RByILMoAz1JSRyv6UG0IOcIdf60WvDf9wKLsOjwPD9Az A==;
IronPort-SDR: rUuOosL1fkzw9oI/0U83lo158V4N6nxeZ3NEsiKKI63Z5gvJYBmKxTjFZrdOX6xUU4CSvL2YAj
 xkcJ2YsMSxmnd5xCma6NOTdcY6rfXDxEJ+87Bars7DqlEZz+W0y5wCjRNie4+t2NwUsrzdP4zn
 gw4YQR8gTdtqTDL6reQLEUZlhuF7DWsiK4sqP+Rrfw81Z2z4TarPi3yWMGPEdi1CBo0vzdd62X
 teEInsMq0mmBTWxMVh7Uq5KlDd/+Kq0ZlE5JqG15eWUg9j5T8dNqO/dISRhw1IEr5y1xZQJT3h
 95M=
X-IronPort-AV: E=Sophos;i="5.69,347,1571673600"; d="scan'208";a="130393059"
Received: from mail-bn7nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.103])
 by ob1.hgst.iphmx.com with ESMTP; 23 Dec 2019 19:35:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GxXMWgiFhWC2wlFytz/aqTFNCFSCn2UVzK9nQ+UX76OaT6qVFYa4CKVDTNq4F0yqkcJHIaqVRog+K8opTtykB4b+DfINGKNb5Rjpz5wzUYEUsMq2fgSsCHyvdPYiow6JII6qPj9HEXfoDMtTWOtUacoR4dVKG6AK9AdoZHnMhJxP7e5EBMurO9H/uae+1W2jJkGLi1T5KfZGK1FFaDJkuE0EdAe94f2qIRDqeIZbBurjGsZj9bnVNIpRRL0Mtd+8RjHF0LPOHKuzifbTpXbZ25eEjycAw67bs2JRBfplGvEshTcKmSrxif4W4RcBakBlC9NYK2AYa0WKVHtoycsgxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9MkJ5HERSKOsNADhAFkUau1i/tobLTknnVLJrC3q2s=;
 b=KPmrbsKwNZu1gWdq4flGwFxBh7NNyPgxvGnGQrd1x5gtcGKa2+xlKdqz9xQx3qfTJry440CZKNzBx7tGvVC5WKfXbKWO1ujItPfuIUR+/ALxi0ghma3niN3w8qRmNXVFN6qJGyh6AxIQmHZBBLgpgtAkYGcgHgoXAteFSSesKhAlsXq1vSjsFsMn2BPVcMqgydRM2TQxFL6wgR7ZtxuYhH0cIF6Q92Oi+hGGGLjK9kJmHgZqw042WIXmXp8Ba7sscJqSYTvZLZt/OqN/IpifRrnTc53PCXf8VHQeerH84SI1TX12XcWjOEwRce3TqtXlQiG9yQ4mxpeuQ3wYJJdHuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A9MkJ5HERSKOsNADhAFkUau1i/tobLTknnVLJrC3q2s=;
 b=WosGh1KCjlQLwT7+pARAlvoUfAfZOkrPFff6umZteht3Lp0uIzBEHgvBdRT4CM9Nwu1q6QtyA+WAdgro4q+UZO0XNVsvxBzYEcFczunZGbrwYkuYJmleXSdN/HvFKE9iEa3307JgWU9uadiP1A46gBdQfai5WFuN2sQC8wXueRg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7072.namprd04.prod.outlook.com (10.186.146.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Mon, 23 Dec 2019 11:35:55 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:35:55 +0000
Received: from wdc.com (106.51.20.238) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 23 Dec 2019 11:35:49 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini
 <pbonzini@redhat.com>, Radim K <rkrcmar@redhat.com>
Subject: [PATCH v10 05/19] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
Thread-Topic: [PATCH v10 05/19] RISC-V: KVM: Implement VCPU create, init and
 destroy functions
Thread-Index: AQHVuYUjdWvBgA+kvUWSKxjLcPh8lA==
Date: Mon, 23 Dec 2019 11:35:55 +0000
Message-ID: <20191223113443.68969-6-anup.patel@wdc.com>
References: <20191223113443.68969-1-anup.patel@wdc.com>
In-Reply-To: <20191223113443.68969-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 38195aa0-fa39-4706-e6eb-08d7879c45a6
x-ms-traffictypediagnostic: MN2PR04MB7072:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB7072FCF070CB482844D62EEE8D2E0@MN2PR04MB7072.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:454;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(199004)(189003)(8886007)(478600001)(52116002)(316002)(16526019)(2906002)(8936002)(1076003)(7696005)(36756003)(66946007)(66476007)(86362001)(66446008)(26005)(64756008)(66556008)(4326008)(5660300002)(8676002)(186003)(7416002)(81156014)(2616005)(956004)(71200400001)(55016002)(44832011)(55236004)(81166006)(1006002)(54906003)(110136005)(6666004)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7072;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T6XDBtyXrU4175Z9wt0kRR5l26hB+Lu1O9nzI2Gs6SDnHZoZEL0hxKkpOKXM30ypuS55xhC/U0gCjr1/Tu0Q+/DEb4V2kM+g9UldwLk3yoQ+tkxZHg4KuJ78JnWkJIJzP6qn0YwLVPOdcrIBRihTl6/YFHEFiV8nTtPwqjywRLTBJkB8hbNcaxaUrKuMolVhgyskaWuDb3c0dQ8Btdmv7/Pc7uhjFH+tyBEGMutODI72Lyijz74rGfGODNtmsq+J0gom6KHxykjr4NJI8YjOqHrsvlBv+19HDC0h1etWgJ8ArQhPYOCi02O7cJnLVqnSYxpepsGPwu7QUn5kLc6ET3ZHCoXbCI274NerN/iKNqFrK/pjZy9CroMjTEvPNJ0bq9PaM7amaVxOAYDvtbPMFYYKu8sGIy8CJesrPdbDnzYM0mkpcTDpTWQn+lx5ExGIrkOLBdiQrTNGP7R/2pBExMLiwaIYf4sp2MxNxmr+0EOoZC+TP/d349casqbDP8JE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38195aa0-fa39-4706-e6eb-08d7879c45a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:35:55.2177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VlArBiz67ZnR53Vt5mzVzAeYZwS0m5XOuZQ4rVzG6TUTOTBvSH+myZ7o74ibR7i2/bYqu9h+NKjqMBDH/dRiDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033557_471690_07E7090A 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "kvm-riscv@lists.infradead.org" <kvm-riscv@lists.infradead.org>,
 Alexander Graf <graf@amazon.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch implements VCPU create, init and destroy functions
required by generic KVM module. We don't have much dynamic
resources in struct kvm_vcpu_arch so these functions are quite
simple for KVM RISC-V.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/include/asm/kvm_host.h | 68 +++++++++++++++++++++++++++++++
 arch/riscv/kvm/vcpu.c             | 68 +++++++++++++++++++++++++++++--
 2 files changed, 132 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm=
_host.h
index e0b633f616a4..297431660be6 100644
--- a/arch/riscv/include/asm/kvm_host.h
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -53,7 +53,75 @@ struct kvm_arch {
 	phys_addr_t pgd_phys;
 };
=20
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
+	unsigned long hie;
+	unsigned long vstvec;
+	unsigned long vsscratch;
+	unsigned long vsepc;
+	unsigned long vscause;
+	unsigned long vstval;
+	unsigned long hip;
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
=20
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index bd7d6b154f61..cf8ca8d4a9ea 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -31,10 +31,48 @@ struct kvm_stats_debugfs_item debugfs_entries[] =3D {
 	{ NULL }
 };
=20
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
+	struct kvm_vcpu_csr *csr =3D &vcpu->arch.guest_csr;
+	struct kvm_vcpu_csr *reset_csr =3D &vcpu->arch.guest_reset_csr;
+	struct kvm_cpu_context *cntx =3D &vcpu->arch.guest_context;
+	struct kvm_cpu_context *reset_cntx =3D &vcpu->arch.guest_reset_context;
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
+	vcpu =3D kmem_cache_zalloc(kvm_vcpu_cache, GFP_KERNEL);
+	if (!vcpu) {
+		err =3D -ENOMEM;
+		goto out;
+	}
+
+	err =3D kvm_vcpu_init(vcpu, kvm, id);
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
=20
 int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
@@ -48,13 +86,32 @@ void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
=20
 int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	struct kvm_cpu_context *cntx;
+
+	/* Mark this VCPU never ran */
+	vcpu->arch.ran_atleast_once =3D false;
+
+	/* Setup ISA features available to VCPU */
+	vcpu->arch.isa =3D riscv_isa_extension_base(NULL) & KVM_RISCV_ISA_ALLOWED=
;
+
+	/* Setup reset state of shadow SSTATUS and HSTATUS CSRs */
+	cntx =3D &vcpu->arch.guest_reset_context;
+	cntx->sstatus =3D SR_SPP | SR_SPIE;
+	cntx->hstatus =3D 0;
+	cntx->hstatus |=3D HSTATUS_SP2V;
+	cntx->hstatus |=3D HSTATUS_SP2P;
+	cntx->hstatus |=3D HSTATUS_SPV;
+
+	/* Reset VCPU */
+	kvm_riscv_reset_vcpu(vcpu);
+
 	return 0;
 }
=20
 void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
 {
-	/* TODO: */
+	kvm_riscv_stage2_flush_cache(vcpu);
+	kmem_cache_free(kvm_vcpu_cache, vcpu);
 }
=20
 int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
@@ -199,6 +256,9 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, stru=
ct kvm_run *run)
 	int ret;
 	unsigned long scause, stval, htval, htinst;
=20
+	/* Mark this VCPU ran atleast once */
+	vcpu->arch.ran_atleast_once =3D true;
+
 	vcpu->arch.srcu_idx =3D srcu_read_lock(&vcpu->kvm->srcu);
=20
 	/* Process MMIO value returned from user-space */
--=20
2.17.1


