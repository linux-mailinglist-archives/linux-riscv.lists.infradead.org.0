Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C984484B9B
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJgJbreDT82EwW+BclT83RFkKGK5OrESVM3bAsX7Vis=; b=u+oLozNLnwycLE
	m7gQIm24V1VvpF2mCg6q3AAu+xqL6KC4+SUTUL6b1lZ5vBTPYH8kElW4V8xkVugh5UlWuIPyAzfcj
	7OqWdzPdOwG2RVCzTwS8TOPh2GM/PEtqbGXWFoccBTAkjqwr58zxous+CB6w3R2XqbqKmUDHkLEPk
	lkpriwFxS1K3c5R9XOATB3BMvjSb6GnhndLlpH2neitYq2gWARGiMxu6cJU5bLRQXF3ETr6K/Ei6e
	+KkXfDTlBs8+wcNRmRBbxFJDJ5mEoBl3ULmg7vmoTuRcLQvZVQbepO00EelfBx5xbqKSbqPocGa8s
	o7ziVQbAn4KQ8Ywa8SDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL4o-0005xv-K8; Wed, 07 Aug 2019 12:29:58 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL4k-0005wK-Fe
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:29:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565180995; x=1596716995;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3u1NszC443yEKj5kaDpg2i3t+suoljz7XNZs0nlfAag=;
 b=D1f2EKmMCmIVOPyUY5vQmCFNn66gnzM7dwWerDMFZlrtyQHQeF3YS5wU
 ZIKcEMxxv6JtAQ3s9y7pSe6NhnAqAZrWEKbuzlEQNcjk2twUKnwzlxFAH
 rC1URNkRgjJ1n0ao9TbVQyLaEiAvlmf+W+tuJUJmMzmTKEkbSq+EM4Mf2
 fooinjHGlKcO9pDyixUKq8P4moZxM7BiTJsx6XtTmn7gbFPx787H9EGI1
 +IfHIsN20BbI+ySze5A9Qp+7x5qnulmMMR0Tw49qgVHhT6dwsbYiqSHfb
 O0/w7M61egvWn+TzqGyuox2VJ+Fk3AdfA+pOVcnOIVv8P0LeZxXhZhrko w==;
IronPort-SDR: 6jWG/DruVC8keScpcRoNEpgxL8jXlCFvDnXO7qlCH+l9Q6l7Gk0A/NRH8chvhDsSgwRmu97UA6
 F5rt6qLDlnak2QI8X66FrTgay/jsXDaftuW5Di7ObNnE/Qpzwh+qP8IBnopvjPO0oS5DOSSNyn
 RAyqpmeKaV2NSoL9RnLZeJRrMOWfM6ym/2LUk7Zgp8KB5sGCCnY82eyXxf4EODS7OoCtqykN5a
 q4Sl9DsFISUkpUHeS86YSdMEX0RB7EVwRyabczIbjK6rvazwlLSYvutfHJ82k2GMtSnBkdHVoh
 mk8=
X-IronPort-AV: E=Sophos;i="5.64,357,1559491200"; d="scan'208";a="116203187"
Received: from mail-sn1nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.58])
 by ob1.hgst.iphmx.com with ESMTP; 07 Aug 2019 20:29:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=izNpJimn0RrDFSvOkBjCHhVBs2aqQ7RPfk+3V1+KJseEd+ZSnsGE3jPtCy30tHeW6ho4jnI3PxNS/uiz3MSTWRU/2cx/bUNHNx104BYWfwceiG8nhgGNRG3hdSvkXEiUzJFvPz+EzqGOOXSAyLKGKMI5hO3iol19f2q2L1LytkpJgBkG+I9juEgMEVTo5vM9YGTrwXuJiNt6+MfWtCOKxN3zGQdSDaB6MgDDiMjLA/eaB/5uSmcL/fN8S77Sfwmb7PB1uQRynefPl1ymJ07uDsxug/i8JWGn8o4uEXmTn940bOd7iyv/JucG3kOPy+8ATdc9SdA7B9RAC8jHcSZyQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4AivMRpN9KjzXaQF132a4bIMlE2/Ke/b29pplIreMw=;
 b=jzjnGOoZRYlwP7R20Lj9pam9duXMzIhfeyRfKCN+kWMGWSYFiBV1/1sFXz+0GNDlND9SQKbfeFg50rPg5cHZCPKfnzplzaW3GhbIICU+aYIxxo809WU9Wj1ipsFmAdVdYILKnmk8USS/OXOdart3r8vxYj0adQEISfzJYaCRvx+PoE431UtKTdq+8V2K5W1y92xc9Y7i6ZHot5/3rtUrfGxNWdzhjD/T1XoSR00QLM+mycqKdgPVSYZWpEahShnVgFOFr2vnhKohccYsaC2REHwOq7L7BZv9SraIGsOmtVWi09kUuTrzeGlHCIdKBrqakYGXY6Ia6wXLPpa7BwqvTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4AivMRpN9KjzXaQF132a4bIMlE2/Ke/b29pplIreMw=;
 b=DMyQx4L+0NL20rqABqPviYeSH+1qk/9bNbfpr0ydkEX7/scb+jQunv4IhBOtqu0pu4jxjPYlWfRVSsDM/X1nNCJUqTG8yvMr0Uhix7pzV6V79cbyRd0TnSzurquaEXrFjFKl+udDi1i2THPp2iriKH5+CZxXuyOltQ3+vBY30pQ=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6736.namprd04.prod.outlook.com (10.141.117.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 12:29:51 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 12:29:51 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v4 20/20] RISC-V: KVM: Add MAINTAINERS entry
Thread-Topic: [PATCH v4 20/20] RISC-V: KVM: Add MAINTAINERS entry
Thread-Index: AQHVTRvPZ34CmfY7TUCMCviohgK7+A==
Date: Wed, 7 Aug 2019 12:29:51 +0000
Message-ID: <20190807122726.81544-21-anup.patel@wdc.com>
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
x-ms-office365-filtering-correlation-id: 40629482-913a-43e5-cf72-08d71b32f1a6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6736; 
x-ms-traffictypediagnostic: MN2PR04MB6736:
x-microsoft-antispam-prvs: <MN2PR04MB67362B73540E71E52F4570858DD40@MN2PR04MB6736.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39860400002)(199004)(189003)(386003)(4744005)(1076003)(3846002)(446003)(86362001)(186003)(26005)(11346002)(76176011)(52116002)(36756003)(54906003)(6506007)(102836004)(55236004)(2616005)(478600001)(44832011)(66066001)(110136005)(7416002)(476003)(486006)(8676002)(6436002)(6486002)(6512007)(4326008)(81166006)(81156014)(316002)(66476007)(66556008)(305945005)(68736007)(2906002)(53936002)(25786009)(256004)(5660300002)(14454004)(50226002)(7736002)(71190400001)(99286004)(66446008)(6116002)(64756008)(8936002)(71200400001)(66946007)(14444005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6736;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vHPRieX2mRrvpoEXlIwBP41msTJhevTZQWbkzFz1yoKxn5Jup4s5YzuTkT9reY0kyElCsLhCNR4ZBpUvGnHbWu82G8SzzK6gOrmY8+yaHLYYBg4ZyCfZEAtOQka8nX+oecq7pTKpbvw2L8ZCNDWJThie/wZc9zp5fJsLZ/dzhDI4cl24HibFa5px6cxGYAvlSAOv3xqUDoABUAsjm6BwPtTh7BV7RsJl7NCrkdCoqo76qojALll3pMpMLM8wryTo9w1SPFDeb7PBRUFRB54xBNExFJHaTXaGlgc/VtWhNy41JOwafIsCDEk/GKyENoEJ/49Gv4DUJIxyrDy0DDhC3INV50lz6F6kashSdTTCNfHJSWd1W+9DP29Hro6CPmp++eYGzbrt1TndjI0/51d1aAX4pO0RCSSDusLzOFgK4ME=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40629482-913a-43e5-cf72-08d71b32f1a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 12:29:51.8187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KRmjRcxd3597cRt3BbqzCxceJX/Yv6WcawRLd+M1rXf+Uz3z+7g7JZGFFS3fXp+yDwjCwgua2tAilzCuKlSwMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052955_300545_06AC80B9 
X-CRM114-Status: GOOD (  11.82  )
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

Add myself as maintainer for KVM RISC-V as Atish as designated reviewer.

For time being, we use my GitHub repo as KVM RISC-V gitrepo. We will
update this once we have common KVM RISC-V gitrepo under kernel.org.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a2c343ee3b2c..a2923ba8908a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8869,6 +8869,16 @@ F:	arch/powerpc/include/asm/kvm*
 F:	arch/powerpc/kvm/
 F:	arch/powerpc/kernel/kvm*
 
+KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
+M:	Anup Patel <anup.patel@wdc.com>
+R:	Atish Patra <atish.patra@wdc.com>
+L:	linux-riscv@lists.infradead.org
+T:	git git://github.com/avpatel/linux.git
+S:	Maintained
+F:	arch/riscv/include/uapi/asm/kvm*
+F:	arch/riscv/include/asm/kvm*
+F:	arch/riscv/kvm/
+
 KERNEL VIRTUAL MACHINE for s390 (KVM/s390)
 M:	Christian Borntraeger <borntraeger@de.ibm.com>
 M:	Janosch Frank <frankja@linux.ibm.com>
-- 
2.17.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
