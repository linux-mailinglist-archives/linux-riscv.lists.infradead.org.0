Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D59698E49
	for <lists+linux-riscv@lfdr.de>; Thu, 22 Aug 2019 10:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz0Gz4DO8mxqX1G507/3Yc6IJLVqwIm+3nG54HBC6Ck=; b=MiQqGX6gqFB0xq
	SWHLywFDkCf1cE+d0qZeINehqAWqscGuSyIyN15hUJ4dFmWF2ZgqJlLc5zYFAjkEVImODnD6WhA9e
	4A1yIGkghSms3EYdoYP7zW2tBDMTNNOnUM3ZYYSDFSFiCz/PgJcxvh8VOh9NsVI3OGgWvpJ0iPX18
	CqgzJrs1dRTTf3d+T+tvfv2mQpnbzeOin388LQ6hVA4MogH+cvu/8H9ri9v4OnAFs3H8W18gh/htz
	ksgmNuTpveBGQVp+yR9QMAP33/fjg2zEbP4GiSRrnz2NDDsXtLygb3vyXHLVIP0YN6PZqLNdAfgpI
	qr40gDC8v76OIARZmpmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ikk-0000hj-SS; Thu, 22 Aug 2019 08:47:31 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ikg-0000hJ-OT
 for linux-riscv@lists.infradead.org; Thu, 22 Aug 2019 08:47:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566463655; x=1597999655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6G2IsMynDh+YQIkbczt4bosiWzdTouYXFhpuhjSQH3U=;
 b=B25NW301Gcn7zaW8rt/5T04ar1x2VfkE9mcTDQdDx0V/L0QjFq41kh2/
 skDLBvrtZpivpdo2HelF5JZ5SmbcPHVgWbZaXn0GqytFue18uBKSBzoxH
 xvB9KjxLmpmmsAlBVxolAJz56+ESXuvs2zOwIOvyDMAwJm69TdEfb00sK
 E+FK47fc2NLDnI+LrkAfHqBCuR5pGb4wpnKYwUDj9yJ01Hl/OWUfpRg9B
 zLnDn0lca0k0afqhHGPaeuM7Qz0N5Njgu8uKsl/EDkyW8kz2chQ+lh74k
 bIxVQHMs/DT7V1swJahNseh0UHXuJ5Tig99E4JSi0XWTmZg6x2Ms3ItJU Q==;
IronPort-SDR: W4lz9SiA8bjKY4kDHWQoUFBwiUl0NYgK8BvrCZvp87C9XidLBz2y/k1BtZruEtrunhDMl9X6ua
 1brfAKGXmd4+OJy8IAlfKKtmszR3n5ZYO/Tao1vA0MWQug6Jbudlkg/AoxTXS30Wc25sO2JynU
 CQwURx4RQWCbjeaR6DVnidUGTUWhLkIY4v3EFZrSsWkUANAoJsvNO5qoTPDdBiDXH3iLqua44h
 ByaQa1PSSRDctxBewzYsW7G7rhXoZXKeehxFm6xcZNUOgSSrlFH4i3rfBBRaW9FlVRsDL1SFPx
 gyM=
X-IronPort-AV: E=Sophos;i="5.64,416,1559491200"; d="scan'208";a="216835061"
Received: from mail-co1nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.51])
 by ob1.hgst.iphmx.com with ESMTP; 22 Aug 2019 16:47:32 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XrVwrl+et9Q9N/apbLv37eckNPu9sC1D1OZYqAPPETJrmRe+xfH4gpEt5CEx/xFvZ7QHgVXWzDwtUIi/6jbskanRyCLS7diYvwH9h+3fG6GXGq2P2EY1X6y9nHc///hnq56/ERHDPWSP5XwlHmvUM+bIf4TFHInLBa7mY0InY/+C6CSwYOSvwmCgwW/5R4gaXRzFsNO1vwgAmMPLnJYwnb3DFgAvXCOvSSkofzEoOQyd52xc9aFmSnUkJT0Oj3yXH7OxywPj6JIdyCsK9QtbcQ5RQzG4JsA6GLl2aWd/9wsp/WtTsNuRGhPlJExp6zYt+jRiuIthMgP2xTkKrDWuRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TJ47Al2sguiccdFuJbcScKvpXNHQJnmNEbsSCCQNdmA=;
 b=XEeddTXjZS+mIN/8Ai8rbrcOXcJ066nbDVfIMJ5hglSfT8bPBt0M7t56VrOHYIVznTaAYi58scvgImbmWXPzb7KyQIFU3SNWeOl9Z91mPW1/FshxqTm25b7CXs4eglCyHGTu612Rhb9N8m7olVvFTltE0KeN3moW0FjQhkRoiRRFYnmig1wnAVTseoePDw0Fqb3kQkBHWBbHMfjyEq5yig1I9kMxT0O4SPP0zWX645in4deZOhxWqB1AQuB+52lypg4bUw3x2WJI1XftYXSCsuXTEABjUISmIchPlwmsZkixhWbOHH/gYElJS8e40BA2Q7LvPYDuNxtdqTMXNYUDdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TJ47Al2sguiccdFuJbcScKvpXNHQJnmNEbsSCCQNdmA=;
 b=oqihD66mxMkcYDcbtfTlm4KSga/PW9lzwQGFXyrTbTb8yq023mNXxbRf+9rh2dp9AYlHPLYm3RY7NejOJqo0DuXLyued8FlMYTUCZknkfDGo8e1Uqsxzr0f+hWF9z1gRas2PegCkXnn/GGkK6nZgkgwHcLFzl6KC3Q/CoE2+Rfg=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6047.namprd04.prod.outlook.com (20.178.247.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 08:47:24 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2178.018; Thu, 22 Aug 2019
 08:47:24 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v5 20/20] RISC-V: KVM: Add MAINTAINERS entry
Thread-Topic: [PATCH v5 20/20] RISC-V: KVM: Add MAINTAINERS entry
Thread-Index: AQHVWMY3sd9SKYDt3EmrxUiDagKXmw==
Date: Thu, 22 Aug 2019 08:47:23 +0000
Message-ID: <20190822084131.114764-21-anup.patel@wdc.com>
References: <20190822084131.114764-1-anup.patel@wdc.com>
In-Reply-To: <20190822084131.114764-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:1::34) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5d80ecd-ce06-415b-dff1-08d726dd59b8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR04MB6047; 
x-ms-traffictypediagnostic: MN2PR04MB6047:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB6047FBA6AB9EB7CD677BF2BA8DA50@MN2PR04MB6047.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(346002)(39860400002)(376002)(396003)(199004)(189003)(2616005)(6506007)(11346002)(54906003)(446003)(3846002)(6116002)(36756003)(476003)(26005)(7416002)(44832011)(316002)(66446008)(186003)(66066001)(66556008)(66946007)(66476007)(64756008)(110136005)(486006)(14454004)(71200400001)(6436002)(52116002)(478600001)(76176011)(102836004)(86362001)(1076003)(305945005)(256004)(5660300002)(7736002)(14444005)(386003)(6512007)(8936002)(4326008)(53936002)(81166006)(50226002)(8676002)(81156014)(99286004)(25786009)(6486002)(4744005)(71190400001)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6047;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YK5Ed6Pbi8qkgRNH0sG04R5FFapK4JU3SThOks/8R8Tpm0LvSWFfyvEqMjb81HdHpKl6i8KeQESD02o+9zz9h1gJqU6q3LYgw2o4Je7chgz3DH7hwscuQS+CvbhMXW/TD2GSq4TTvMYCDZ1Hfjcn+cnb4RNfO+HAzT4p9ufy/ZfkvbkkL92lhXGJs0qfR5JVFpY+QP5o1DstrJgp9EVw98JOt1+oq3oVQT7EcmJmfAOxW2z7mdxJJfVs/bXNFW/owdAJSNO3K6Q5rz/5NGb61EH+GJmDyck+Ah8RAIYcM9WmQmLWSAm86H0E0pMfUbrcWiJ8cnrfE0/smyQoHPDg7fUndkOrZ44ejpuYN/Aom+0jxCdKPK3dYuSfKazzV2+bQR0SxR5cGc/ZDqEx3qP3tV1i/Bl5f0Tzp2UGiMhy9jo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5d80ecd-ce06-415b-dff1-08d726dd59b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 08:47:24.0195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zr55QcZ1EvABTH8h+n4O4Ud3ik3Q0NAPu9P1gSHgiYjlRqi7F6X5H7yrH2lhn3qiBo11wAh7wRcSz5z1QX0lOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_014726_835617_D082554B 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 43604d6ab96c..85c4e273fc72 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8877,6 +8877,16 @@ F:	arch/powerpc/include/asm/kvm*
 F:	arch/powerpc/kvm/
 F:	arch/powerpc/kernel/kvm*
 
+KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
+M:	Anup Patel <anup.patel@wdc.com>
+R:	Atish Patra <atish.patra@wdc.com>
+L:	kvm@vger.kernel.org
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
