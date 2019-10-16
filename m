Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60742D96A8
	for <lists+linux-riscv@lfdr.de>; Wed, 16 Oct 2019 18:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNPcu/AWd1hknNBKaAG+9sDPwjz+IEhESu/YGzqNwss=; b=nzJ+86g2OPIP6k
	CWTIto9yOksZf7bfPCzoLU3IbMKFhV/IDbEfPQUQ7QLxWJGO8zDB3bj8ssCrto6vfXfErAN9VT827
	HXU2VDLYbjosGVDETNd5fmBofR4+Pkd5r3RECbw9kmauJyg1HlSIMAgkB8kcMAkUdAxWm/pYeszB+
	c3ySK1dpoBy6jKFMSLvc20wVJXpWFnwqTq4F5vd7R2p1XphTix+T/XLS4nnLWKD4koqgQ8WP5t26S
	Kn1JNK5KgNdQKm6k0R6BiOkE3e1EwNmv2WQe1AFh99G6M7Cx3+zsKKEyx1gfF6Zb+Ko2e5N4guBAU
	j1RMiWp24nm2S2+4+5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKluN-00022E-Du; Wed, 16 Oct 2019 16:12:19 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKluJ-00021k-MM
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 16:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571242348; x=1602778348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MYzsWujPTyqFNuhWNIttGaB1fb8duCiE7wUe0/Mgqf0=;
 b=pqUqS8DpBO3+q1tD5kXnpIef1inS39wOyCiAK5oOWP+ajZHRFsd6SFBh
 iBdnsThP6KkzrIkYTkd4wl+xUBsMC9LQ/54Km3xmhedRaNsk53dTfcArj
 VNTC4iLijGRXi6/fCwd/qs3xtsktBwR6bFWjD3ld6cq5qVG/HEbgKJWBG
 if7jYEYq4dbAaN2kbxjCVEtb4Bb5lU/U5bQx/FepbFsgDM5EmLCulUADj
 vWbUeOjXE7rxfYFSv3vLCEdkvOaip24A0fHcneoZBhcCC6nQhzGeJ0sCW
 pqxBjlbzKWaomJ4p/sYSLZLEKC9pgY5BM22BuFK5U3CGpElN/nwELPRbZ g==;
IronPort-SDR: qPCvZeNA7du2iR+E8H3KvMGMLEPC0P5TVYfG1I6Jo4pkbBNCyQ/UWjUmN/7gp3P0BaQMpUURRk
 poxFPpEBUvwcM9I2JbZ2AF3lOu9Hf0rfotGx8VzRbysHfAOB2PrMtJ7rqJZzJOcWGcDfS8Gc53
 pM6hT51C0RxXsQVpTIVtWn8PtSTKJc4Enps0rj2oVGfXxmhQykg9Zn49ZKUAfRD/IGL22oLYAK
 wg+t46UZHm/ZwbApdJ/UfAxFM6SGfipd+nCB6UNeZW8eS4eCmFhA71Ht71RMwE096uP4skLIgu
 7no=
X-IronPort-AV: E=Sophos;i="5.67,304,1566835200"; d="scan'208";a="221734918"
Received: from mail-by2nam01lp2054.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.54])
 by ob1.hgst.iphmx.com with ESMTP; 17 Oct 2019 00:12:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZ7i9jANXOB4uAl6Gay36BsUMp0K5sRRO9E7zr5I8Dw8+ZFIiyfYaWaa2O0aETSSHNnDslFszQxuyrdUAKnp0uN0PbZ4UCjNxwD6ekmSf3cD1EJtuvzTCAVUOYxyE7PICPSRIq8gu6CfTRHfqpTx6VCLd8gWqpMW72PeEfKO789qlfe00QOf768fwJQiZNLEr07TBRPjq1ia44Z7yyENeoOO/HYAk4q8mNQzDp/rav/HFoLWULYDOehFr8ibi3PNgbB+39sfovc8rnUgRwpLp4vyvVDBKz7Q/x2kqQP2yuZiek4UDbNJDO6Xtf76vRKmvdbQxLKEKeteuSrsR6o3cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s1bQ+vXEdG46UxcCGXn4FnF1OpEFr4y48ttDDSxITcM=;
 b=cR7xwj/StyVv/laYJazPN1VOC9XSMAg1vwHN7OSYVqYlchjimLoXBjYdtbESf8VAwrbRajUQAk11XGE4/vSyalkR0QhgtxWITvoJS5UA1F+0v6R/WaaCkc2NdBYL6VS5BJLqg89A46K7T4+BCG3jMIikkgNMXAXzQ37vHdmyCMqtktY4B/bS2OXdid0by9YADq6d48Y7YE8lWctoreqJ8CKbRxDCWoTUegWEk98kKDAJrgc7FHBhLNfCcM8sqCD4T2vv8f7f1O+GsV0G30OMeBkXYrx09lImmcoTYyEC8AGrCebgKTx6KIm6FF34Fp2vIx2Rtz3TA7i0kDx1HKYl1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s1bQ+vXEdG46UxcCGXn4FnF1OpEFr4y48ttDDSxITcM=;
 b=C5okF4RL5Bjrue+tgdVPoW1rL0faRisWPhNNJxjMkwZjVDd9PPKaeJxD0uHyrc0vOlbDvdKNB6vJCLqIs2E43qqtgS9VuZ8l3CPpG6KgJ4x/DXXiDWAQNSdw3wEIMwpaL7UJCqAg7+kZ09ajv/3wTRd93BNhpqJyD+iMYzyyMoI=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6397.namprd04.prod.outlook.com (52.132.170.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Wed, 16 Oct 2019 16:12:13 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::1454:87a:13b0:d3a%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:12:13 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v9 20/22] RISC-V: KVM: Fix race-condition in
 kvm_riscv_vcpu_sync_interrupts()
Thread-Topic: [PATCH v9 20/22] RISC-V: KVM: Fix race-condition in
 kvm_riscv_vcpu_sync_interrupts()
Thread-Index: AQHVhDx46fm8fRcOYUC/zsYHJwPs5w==
Date: Wed, 16 Oct 2019 16:12:12 +0000
Message-ID: <20191016160649.24622-21-anup.patel@wdc.com>
References: <20191016160649.24622-1-anup.patel@wdc.com>
In-Reply-To: <20191016160649.24622-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.27.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 807ae80b-09ee-42f8-17c1-08d752539aaf
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR04MB6397:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6397869BE6DE9E2B84A523C58D920@MN2PR04MB6397.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39860400002)(376002)(396003)(346002)(366004)(189003)(199004)(81166006)(102836004)(316002)(44832011)(486006)(55236004)(110136005)(305945005)(7736002)(8676002)(11346002)(2616005)(446003)(54906003)(476003)(86362001)(6512007)(6436002)(386003)(6506007)(81156014)(2906002)(6486002)(1076003)(8936002)(186003)(26005)(50226002)(5660300002)(9456002)(36756003)(66946007)(64756008)(66446008)(66476007)(71200400001)(71190400001)(66556008)(52116002)(7416002)(99286004)(256004)(25786009)(76176011)(14454004)(4326008)(478600001)(3846002)(6116002)(14444005)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6397;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xY6lIG39DZpGdfVN6dkQcJiI/lrv569kkdsinnj+mrPSfkrQj3SPbcCPnNZzBErPgKaxvICRtd96QQZSHV46Q58O1FkuA0DknH3VAC0h+KJpVoK1ar2qPt9Gb6MMJqLF+J8zXPi5yWLPB7QeK547GJeIaqxT4IjmQ50H/JlkgrJVXAxxFt/4Z/ND5yYaWJw5ZCMQHLf/7shcsx02cOLyyl/BY+jyuLe2cUm0zihs0siaC0K1EMOGPnuxJHmmwjCWHD3B2sXwhVrZU8dm7yjfMVkUseO3t+83u43sQFdbPieqvuTHRJocnZoOdKcrOuS5bv1J9RSALfP4O8bG7ZyV/1iYZFtxSuhLa9Veuc8RUx1wcVhd564uPjLCW/eSX2R4CdYnu0fqp7YiBZ0ZXcYlpA8DsgtovaYp+RYf3KVtmtQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 807ae80b-09ee-42f8-17c1-08d752539aaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:12:12.9492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JsVsfRIYr/YkfitTZKva6aUMjlXbWFDCvk+U8LIQnnWDLPU7iM37qHX28vqHmngFu4Syx/qeyyUwrHuXqvLAuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091215_807208_A6C7141D 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexander Graf <graf@amazon.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, we sync-up Guest VSIP and VSIE CSRs with HW state upon
VM-exit. This helps us track enable/disable state of interrupts
and VSIP.SSIP bit updates by Guest.

Unfortunately, the implementation of kvm_riscv_vcpu_sync_interrupts()
is racey when running SMP Guest on SMP Host because it can happen
that IRQ_S_SOFT is already queued from other Host CPU and we might
accidentally clear a valid pending IRQ_S_SOFT.

To fix this, we use test_and_set_bit() to update irqs_pending_mask
in kvm_riscv_vcpu_sync_interrupts() instead of directly calling
kvm_riscv_vcpu_set/unset_interrupt() functions.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 arch/riscv/kvm/vcpu.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
index f1a218d3a8cf..844542dd13e4 100644
--- a/arch/riscv/kvm/vcpu.c
+++ b/arch/riscv/kvm/vcpu.c
@@ -662,15 +662,22 @@ void kvm_riscv_vcpu_flush_interrupts(struct kvm_vcpu *vcpu)
 
 void kvm_riscv_vcpu_sync_interrupts(struct kvm_vcpu *vcpu)
 {
-	vcpu->arch.guest_csr.vsip = csr_read(CSR_VSIP);
-	vcpu->arch.guest_csr.vsie = csr_read(CSR_VSIE);
+	unsigned long vsip;
+	struct kvm_vcpu_arch *v = &vcpu->arch;
+	struct kvm_vcpu_csr *csr = &vcpu->arch.guest_csr;
 
-	/* Guest can directly update VSIP software interrupt bits */
-	if (vcpu->arch.guest_csr.vsip ^ READ_ONCE(vcpu->arch.irqs_pending)) {
-		if (vcpu->arch.guest_csr.vsip & (1UL << IRQ_S_SOFT))
-			kvm_riscv_vcpu_set_interrupt(vcpu, IRQ_S_SOFT);
-		else
-			kvm_riscv_vcpu_unset_interrupt(vcpu, IRQ_S_SOFT);
+	/* Read current VSIP and VSIE CSRs */
+	vsip = csr_read(CSR_VSIP);
+	csr->vsie = csr_read(CSR_VSIE);
+
+	/* Sync-up VSIP.SSIP bit changes does by Guest */
+	if ((csr->vsip ^ vsip) & (1UL << IRQ_S_SOFT)) {
+		if (!test_and_set_bit(IRQ_S_SOFT, &v->irqs_pending_mask)) {
+			if (vsip & (1UL << IRQ_S_SOFT))
+				set_bit(IRQ_S_SOFT, &v->irqs_pending);
+			else
+				clear_bit(IRQ_S_SOFT, &v->irqs_pending);
+		}
 	}
 }
 
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
