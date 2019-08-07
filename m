Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32AA84B67
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTwGj/eCF7Jonlho0AWuQjcvOQH5Ef8dY0V936vF564=; b=KdD9L1YX2drxR1
	lpu9tkXTdhJcXA4tqiUZTRJvmlJhyYITnupePk5sLqxPdcbhIEVnql/Gtg94WgO6lfMlXUOlIZaZ/
	QfjiCoZIdysKNS8VwpkcbYzYJJdZPapWpD9D4Q2O/8p3CYkpDAIFO3tOyRDvwHa4LrMhHZe+jcgrr
	VRIXF68seQ0ZdpPfMsmJ5RNYcawMQkpcaS/rbFnQvEcK/KPCmmFejkT5W5kJR6BdBtnWlnUsZ3P7Q
	91et9fjPqsY6hE6ARqPf4S79/k2cIFb0Vg7QcQpgH4MHh9dAJjk8A3f0ggA7MDxXdvVnIuXmqmYRt
	LDKGkspXxH2OhByQcjTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL38-0004dW-4f; Wed, 07 Aug 2019 12:28:14 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL32-0004bt-8M
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180942; x=1596716942;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=71PGVc9pxZZcZppnRkuckXk1U2lv7j4PsK4oBP562io=;
 b=V28WQEmymcQmwOKD/YICTWZyJTDtZTP2Nl5NTIrVCzpOUrl70FCiuuED
 ipSQ62gxIzZdbJsP8xlTVdRJ/+Pw5Oj25Yo1jzkNBuT9s4y25OyHJBO2K
 cgkD5y+J7m9hz7Ck/2cICvSV7hvGFkFdxPh+jmZgK/rkynwVUXYUnBZha
 wy2Y4oRIKmuM3c0z2Qv33QBcSz4YQc2Ej4+69hLJ4n3NSQVmZ9oLBpl43
 14Xfi/Gq4V43p3tyFO/jkS1D/VrEVYGc0t7n2UelYGV6MbX8wywZeCyby
 2FQhcOBFK8FR9ZaFzy7SvwF/LpU0BQYu6ESwUdwaKMR4/xM+gYOu+n6A3 Q==;
IronPort-SDR: yajgdgFBMTgzyrUPAfEfe6B+S5KohwkSzPvztzN+OLjg6Gw8IbtFuej7MNl07uGZT2E0O30F79
 85h89IH/Gc4jnZqXv0bEFm+QtuKJE1YsfPlt2CnijnIe5hquUxSfTmMnKDkWt4nE/THX/mOXNg
 xURkE+VNdZXdvAfM+RyEVBle24d8RC3FvM4qmzXzPymbPt3M9E0vLk9avC1pF92rWLUdUirobo
 SUBJ3plmvLNWIiqs9nwoBmJvh47Yz+OodHdSrN7qF2nzaHtbhx9Epe7FK0Dcj1qGq0N3fA27qy
 NBY=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="215532216"
Received: from mail-co1nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.51])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:28:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwv4grMtd+foO1GgH5c3jSuSOVF0mTho+Aljg4SVWX+h8vEqHOybH1X2U6tqec/DSCBF7/pCdXdjLx8BCTzSNC9xdnEZOYDllbriLy6cDZ7J4j52kLrP4vZ+5wg/T974SH77M1iCNRwHXndT833tr2epPUkTmOgFBAxbJuoVVG5htoIvVLTaPV2B4giRQITiFSXU3tXuI/2nkv0Z+e0S149a6Q5+iyd9KgCd8TKLuqIlMY4T5h8bPpPsRCndkRdZOx8FUF7V5LFcaUDP4e7BsZfe+MC1QFVpnH0vBtauJjVq6PLqjs8dTj9N36BOS8KWMycGhTMKAr2xNp3R9u4E7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyOTVUpilWpgvsgWDa70MrkgbiTndFWkKtVgmRK4xrg=;
 b=JQi8i4m6N+VfLVOPHaMkfz7YIB8qSqciRIA9yxKh4HCnJDVbm8ZHcRpEAZhMARemB9Y6HX7h+Zuk4O36lb0bTASqFALQlOEyUQzwdARPZhihjaZwhl8nW2u4zRrOzeNbLgrsWyRw9EKa0IfHkM3pReH7KhFM0awCqb3cC5/VTe2JaaLZ+Bftc2AfWnMsk8epwOJSCoOMR9HIhsEoGXpHIyUWqqAa++rls7L2y4J+9vBZQu6E/dGsyF7HwoJCYZL676Fj+UuZVSl7sCh9uGdnJCzLuTwY84arvnTwG8o52mOpmA1b+1U9NvENABGt5sz1RYEdTRwFHdXXQgnwGVqL7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fyOTVUpilWpgvsgWDa70MrkgbiTndFWkKtVgmRK4xrg=;
 b=vTK09yRDqN+y8BybqPjLDcq+XwlgJP0c69clCDsS0Ova6fB+Bq4PKTHqGZOfItg3PaKaGL4PX1ou4ONhnpb1/dW1w5a8sExi5x0wkGdtSiOGPIblnmCBB19usIntSXHSRyCKx39BQvYoOEQKtxGTpJGYA3NNxjsFz2m4v/mpiOY=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6736.namprd04.prod.outlook.com (10.141.117.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:28:03 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:28:03 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 01/20] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG interface
Thread-Topic: [PATCH v4 01/20] KVM: RISC-V: Add KVM_REG_RISCV for ONE_REG
 interface
Thread-Index: AQHVTRuOg3JoDU/ZhE2IceP6cSrjLg==
Date: Wed, 7 Aug 2019 12:28:03 +0000
Message-ID: <20190807122726.81544-2-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 00e50cb1-4da4-49c3-a1f9-08d71b32b0ed
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6736; 
x-ms-traffictypediagnostic: MN2PR04MB6736:
x-microsoft-antispam-prvs: <MN2PR04MB6736CDE20537E031B7A7B9F08DD40@MN2PR04MB6736.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(386003)(4744005)(1076003)(3846002)(446003)(86362001)(186003)(26005)(11346002)(76176011)(52116002)(36756003)(54906003)(6506007)(102836004)(55236004)(2616005)(478600001)(44832011)(66066001)(110136005)(7416002)(476003)(486006)(8676002)(6436002)(6486002)(6512007)(4326008)(81166006)(81156014)(316002)(66476007)(66556008)(305945005)(68736007)(2906002)(53936002)(25786009)(256004)(5660300002)(14454004)(50226002)(7736002)(71190400001)(99286004)(66446008)(6116002)(64756008)(8936002)(71200400001)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6736;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WXgiPP76yqAKfX+Hu4zdgxIzwsGwJXXmeWrcTeGHUU4I/ILLAYHov89aF3uiGURhwLBFervYANLiauc5gydRElxHNTnbTL09QbXc+5Q24zTj8jRQ5mdbCiebJuvSUZSISyES/7odTuKbHTm/eVcu46aJFWN9/jyexOhBK/ktIxeVEEfG3BxDR+EllNYhEyUDQyHmWGvNx0JiFG7j8mmkhWP0paYw7KnSElUAA95V4w9+1nigLIoaQVViF9i9mkJq4YGqjnjQSGmMFWGMDWfaORUxSZ8IG+KppuZyUFOL654j20XPPkD68bpuTgCx7MBaw0YlYwjopg5OBPWRBgUZyvFKGvP0/OGxuWyQwzkIOpBUcKco5EOT2S2LG11UwWzXZgO4PW/hmNpfgh9V9HkKj/fdPb3UOmaVfV92sS2uhEc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e50cb1-4da4-49c3-a1f9-08d71b32b0ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:28:03.2709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dfnsR8PuY46AhGlKeNDFZB6Pq+L/C+Qm5VGybc1yoph/3Jx7TUBRK18oZJi2lKSuO50WygsXfMQdZDYhZZILSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052808_336314_630E2B08 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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

We will be using ONE_REG interface accessing VCPU registers from
user-space hence we add KVM_REG_RISCV for RISC-V VCPU registers.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 include/uapi/linux/kvm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 5e3f12d5359e..fcaea3c2fc7e 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -1142,6 +1142,7 @@ struct kvm_dirty_tlb {
 #define KVM_REG_S390		0x5000000000000000ULL
 #define KVM_REG_ARM64		0x6000000000000000ULL
 #define KVM_REG_MIPS		0x7000000000000000ULL
+#define KVM_REG_RISCV		0x8000000000000000ULL
 
 #define KVM_REG_SIZE_SHIFT	52
 #define KVM_REG_SIZE_MASK	0x00f0000000000000ULL
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
