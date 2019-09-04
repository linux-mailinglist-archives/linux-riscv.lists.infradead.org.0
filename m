Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59A1A8681
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 18:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4hBH8SWjvqW2r8xdspVU1D2wzCQ8juO10BWKRqtzbA=; b=jGk/7rp/W/NCFI
	qDxU3m7QDvB/a/cM01N5tCbIiiyBtcmEOYe/hdsxqkUrZGgYuQ/4BEBMmjZwaOoIsNb79PVrt1Emw
	QHxcLlk3Y+rNOBejrz8oz1xs+Ys/xASVPRuN0ub4KZpnoJbqUfJgg6fD1/zhjlUkSOpTN7M1x7ve/
	uvFHEH7nIWDx+brcZu2UDGMXWXlgpPGEEjwp/PAdBbkEzfiGMzFk0qnYlu9PwKWKHpts9T4k6z4lT
	wikCqcJH4IdKXskh41szQIe517avB19hjXszscEFEjRTCEBem9nVszGRIxnAZA4QOFFKQuWPKzm1V
	8RUGEtKj6YFJIEds+pGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XxP-00047X-0X; Wed, 04 Sep 2019 16:16:31 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XxL-000463-SO
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 16:16:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567613788; x=1599149788;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QkCuUnm7rFHsjeMxQfk19+kOHPZpSm76hl2dHeC6d8Y=;
 b=GJ7OJzlSOnPxuJ2u2QpkoqrdnLRVrXOpnCVtp903jm11YL8b+DSmzJsA
 LGe7qpiyxjA7xabaWrFoAKw+1M5SV+tmjuoP/PCxYYx/vnBGLmDdGjmw6
 PzCj58M8YEWyO2RfSCo+O8Ql1XZ/8Uo6u2QXJrbWXwC19b1m8OJtp36ZL
 pviNDAyaedDvXHeG7CtBrxxVXuP64Syzhw1BtLfJPylJmy8q+zuu0TNdn
 Ft1Bq2LQ8WMk/KUmkHJSNmnmAY8MDFVj5etM0EB8HOxFlrMb5nMzj2zxq
 gfiJEMJFpp+xDiRgabtLhzunoK5zmhsDIUpuUgAgoGE42tWyQL3XGfA4B g==;
IronPort-SDR: f1OmzBLks22rSV5lCMgSsyh3F2SnJunFRmRUVGrf/a7f1dZTYXVUWzYPxpsy6P5xmkPE7XSTVg
 ENbW3mR0KgANHyFgomhyIjXdHz5uLOav3fUbQaV+H3q6AK7lLNfQ5D9GvTJvB6ruG8pdzI2SQb
 AclLDvQcM3dhiTo8XE9O4DLDIiNd770gdWZ68JLK/6GFHX3EB2HyVSm8x8x4xGOckfhGR/Qqi+
 +cecN8BJ4RXJmfy+q8B27zOW2JGSDKK3LPpmGxPoq83OyQKLImJXsJgBV1q3cw3mJpYwke9qx3
 r7M=
X-IronPort-AV: E=Sophos;i="5.64,467,1559491200"; d="scan'208";a="121994112"
Received: from mail-dm3nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.59])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 00:16:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kgrUTYcFmLmCBZ84dv3zZRAjbmDG+iHY+PKzXMdHuWBkBf0iP8eStYRS+aZRLfDWQP7GmNQgeTtVNXqJIiWhw2ylhuUpMfFOrdKmcr6obFOvGuXSlPB0Y0eLPLpUt/IIf6E1NfxCoECWewGNf1a9uNAdNdFTxXIUXCPomCC0llVepHN91Gk9MXzb4QTC3NcVZtqNnHavamER0xGTSERINSbSsSUylkmBkaSOEfYZhb+xqduGZFxhfkrI8XXyKjlyai0v2aETPqeGcalGOqt7zA45/tFy+IujJB1s5t9O10nw0+icSlCqhr+joKlhBoz3lSFm630pwS41zimhRjVqMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y4kJ4urmqfV6Wv++MMv8WEELCUqKV0375ZHYRoyE/jE=;
 b=B+cvOQcgd6B5KkCjIahlGm+tUXbyebMR9jI9xpecQz9xfiZa3Yz0LZCNSB1Tx1xj1RmNG9FYpcXhuXRJrObd1aTqudJy3U3sxWZRnLyQF4K7DUsI96akS4Kb2JA8iknxlwJuf3Fs2rWlH6PC8oQsUzLLACXPYMUDgH0cwaOCWcIMJUyLiWlo3nO4fIFQDYyI6Ql4WxQf52/V3yOMm/mvufSIw9/vm0q7x04xa/b42QqlJgN1JWqlrfdxS2R8u6NXW4g65N+fk1DgXLgud0Fb9elA1qWMnHc9MEVV1a2ba4Nwv6psfUloILoL2MQFpxdFBwDqzgzdY+V71YfZ4FCGtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y4kJ4urmqfV6Wv++MMv8WEELCUqKV0375ZHYRoyE/jE=;
 b=tt+j8tPvttFvc93IdOPQWHP3zorMdgRGITTFPOC0lADIYfWyvYnJITrkDHmJ5vWB6jQtNDo8WWZ5Jmr7PIHPNUi0kYPVkBK4RGrotd/rgP8mMBFeDVp4ntnBZcex9qanc6t5BceYgFbLQyKP4lRsSlHJOEtKx31XdW56r35VOOc=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB5504.namprd04.prod.outlook.com (20.178.247.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 4 Sep 2019 16:16:24 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2220.022; Wed, 4 Sep 2019
 16:16:24 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v7 21/21] RISC-V: KVM: Add MAINTAINERS entry
Thread-Topic: [PATCH v7 21/21] RISC-V: KVM: Add MAINTAINERS entry
Thread-Index: AQHVYzwZ6A9tT90ryEytO9HyVHtSNQ==
Date: Wed, 4 Sep 2019 16:16:24 +0000
Message-ID: <20190904161245.111924-23-anup.patel@wdc.com>
References: <20190904161245.111924-1-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0084.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::24)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [49.207.53.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5e72e6c-1493-49a5-6084-08d731533b52
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5504; 
x-ms-traffictypediagnostic: MN2PR04MB5504:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5504D1A41B5C91473F3578C28DB80@MN2PR04MB5504.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(199004)(189003)(66556008)(66446008)(7416002)(7736002)(8676002)(478600001)(25786009)(386003)(66946007)(99286004)(256004)(50226002)(14454004)(66476007)(64756008)(6506007)(6512007)(102836004)(6436002)(8936002)(54906003)(6116002)(3846002)(486006)(26005)(55236004)(86362001)(1076003)(53936002)(476003)(316002)(71200400001)(71190400001)(81156014)(76176011)(52116002)(305945005)(5660300002)(6486002)(36756003)(186003)(11346002)(2616005)(66066001)(44832011)(4744005)(4326008)(2906002)(446003)(81166006)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5504;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8a4iLrah/hv/gdPeF7c4hHkYzzmZM/0gRg3P70kiv3N1N6gLKs29khQ5yQkvwrptSz6xkIH3nhMRYPbWqI+A43nl/hYy6bxsmXSHKxrPealIVS24ByRCLFFKXU5L0R0hVVS3cdtJqm0jxH7PaaLWi68/dsfWiKgqnewrCkKWUV+OREPTjLFbIjXCGxGb1SCdvJu3mbuXwQAAcA+9zOtykYk8hshe36Xeu8mOb2hzZUVbN3PsFIS14juSJ6NY96Le5W0hc7v22Gzu6RpYe7PS0nhbXcT/zkqnSPLyJm62mMH3Ee42su/i0usn5evC3A/t4BlXjWx9PbzS2E5W4tobeLfqBec6K0VgGDiILK64U/8nW3A89iq6VsY33vAaDUBlXHceCPNCeFPNDbRwW7qRLG2iOeYJ2ekIHSLQC8yTtV0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5e72e6c-1493-49a5-6084-08d731533b52
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 16:16:24.7583 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yd0m4clRSYEa6g8wwLMsnLiY1vTga/T3Yn7mgIr3f+4BhjVIMVhTEy1JK4tHn656f5K1I40d2GaswHcUJ1psiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5504
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_091628_041602_28450701 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Add myself as maintainer for KVM RISC-V and Atish as designated reviewer.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index e7a47b5210fd..71da7a4ea706 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -8864,6 +8864,16 @@ F:	arch/powerpc/include/asm/kvm*
 F:	arch/powerpc/kvm/
 F:	arch/powerpc/kernel/kvm*
 
+KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
+M:	Anup Patel <anup.patel@wdc.com>
+R:	Atish Patra <atish.patra@wdc.com>
+L:	kvm@vger.kernel.org
+T:	git git://github.com/kvm-riscv/linux.git
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
