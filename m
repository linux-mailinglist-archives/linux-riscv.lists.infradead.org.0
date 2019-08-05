Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC01C81DC3
	for <lists+linux-riscv@lfdr.de>; Mon,  5 Aug 2019 15:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJgJbreDT82EwW+BclT83RFkKGK5OrESVM3bAsX7Vis=; b=ZRn4AFyYJHmF9R
	q/EwVuN0VXYkYeRsYwTUcVGLA/jtA7oBkGs3w4RuaLIGbJjN7WF89wCUWX29HtIBkq1LrT4oCJKY4
	46gvmhyZLcOLnnkjfm9i6t+W8FG9hpRMV7aOTqaBFef5YX6K0Strz5chSojyV61IpYRrby5f5dLVV
	mbYXYRJsWTfknSvobX0T37vEsX5jI3PXTNHzUZAJaMyGh+WVJ19/Rd5DEVHmPvN30Lh5+Z4RoXRYp
	NGoz+/nAp6r504msWOqcG1PnzEc0+sr6kQSYeV4uzaphEOvAF2VaZ+tpo9gefXfh3HoXHQxVtIwPI
	tkyXLF5gri876mTQx1/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudI4-0002pg-Tp; Mon, 05 Aug 2019 13:44:44 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudI1-0002os-DI
 for linux-riscv@lists.infradead.org; Mon, 05 Aug 2019 13:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565012682; x=1596548682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3u1NszC443yEKj5kaDpg2i3t+suoljz7XNZs0nlfAag=;
 b=PNKjcQPyX6b03c+KDtHjMHtCpDajYh1jE6iezU/CO0Sul8qtwqaGJziZ
 WMBUWxhxOQRRu7s+dDzayLyGEEDI/DFSYW0iu+OG3y/ZZrpR35eaWUJoP
 VOdodofNxpfPUwr8ygx5k3LFgh6Z6GXN5hvmOuiJbWMauDvKfAT+00tGN
 6msU6m4JHz/3S6rd/6/fpBbO2LfZ+bdiCiUyjn7cfQWi5kT76dJR2huaF
 6Bua8MfLg3jPeQYvjrDfxPqcfGE22fdcwpwSwfRUGAq6YcMk97dPggaDT
 vlBuRHC0Nzuey1okmVmCUuJKoU90re+2fOnSl1wh65tV96hzWHuzBlQ3v w==;
IronPort-SDR: uEFZd2KsYZK4vssKXlHcWuuW7NQy2F9X7YzB/GOUPWUoN2/qO3DWmGbpFUoGuxbGu2e745Fb2q
 LTw+OCpxvhaV/rdb9qKTBjP5l03vtu9NB8Z3Ayy37DiZ1Y2UqUf8cddAqw45rKBxDBXTX9wj5U
 GyWe7fVNxS92nv9UZLgAIfFUuznTPB31rJOuA99hI/+zvIDmVnYRulXANeCJzPLK8LV08Ipjyf
 BYngUiTFwWIpcTAGqGRWkKHCpd+jcYlcD52DY7kulgA9UtGmLRmORM1Rr/4aUtlWP8mpdMarrn
 ZaU=
X-IronPort-AV: E=Sophos;i="5.64,350,1559491200"; d="scan'208";a="116613310"
Received: from mail-co1nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.59])
 by ob1.hgst.iphmx.com with ESMTP; 05 Aug 2019 21:44:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R7sKyqJYJc4yS4n4Ha/pfQz/Wqx1CqlhZJjKAWuFLtJBtISyLpRCq0X5PM91CPEHiQh76yyupeQZdsL3wIKm/9w2eOqk5xtDs3XAFTPYGnS0pe0jgAAz9aY17YZsIojrAbxILRojUmFTeDKXrNdwdjFUDTT/X4Sx2Ek7kUOk4XRomPyi9FzLUyTUIL84TjUGykYj+OEAfxhv8ryN5+k6/lPyBtT6YBav2h883gBFne0rT/qIR+MxzKHdqMThlUNAmiIRd7BVhjhC9B9rCxnfyawHsOPtS6jqm5N4Hc/fVLmNeulW6ZA4uwUDdPzq1ltTIA89VmUQY1Lpn2vtK4I3mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4AivMRpN9KjzXaQF132a4bIMlE2/Ke/b29pplIreMw=;
 b=W8wlVvKnuR6LAHX8lkbpN55NJWqag/ILEvIWtLI9eAN0whLvs/VbYqhZDKdOr5rKdyKGc3fHP/TLThv8epw73K1zAY4Gm2UFwZ6KwKKgndFz/1WWVuybI3ibRX71iUjwiiDBCn7NzAd6PAUkHWeGGVN3st9dP8JVKOVa0Ro4/MVb+3VfYpOcr9BBV7JZA/paPbFhAXYY+/i5DwaW9VOLC9yuH+hfM5dnIbxQqA21xpkJYJwIRHoT6VnRkNXnWl3rlJDStpxVXXOIVC0YMDWtt2nmTgM/IfRl7t2Rm1lGhb5vSqcTxRd/QqvEzaJQyVgndePoMqawjDXm6pMh1VBBUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q4AivMRpN9KjzXaQF132a4bIMlE2/Ke/b29pplIreMw=;
 b=mjk68ZK5OVNi1MKvsOH0Nf29zYKm1Pw7ItDlaTLPTUo56OUKx1YzP7MRZfnce8Y8gqJX7Vqb/T9S5ohDSL1x0hBmd1Fz0aC2GPoOoAly3har15fYGH7j9fpG2lruAgTbKnECKp2m6pX9pMNS2aDm0m/wkD2PHl2vp1HY1ddqyI8=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6446.namprd04.prod.outlook.com (52.132.169.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Mon, 5 Aug 2019 13:44:37 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a815:e61a:b4aa:60c8%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 13:44:36 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@sifive.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Paolo Bonzini <pbonzini@redhat.com>, Radim K
 <rkrcmar@redhat.com>
Subject: [PATCH v3 19/19] RISC-V: KVM: Add MAINTAINERS entry
Thread-Topic: [PATCH v3 19/19] RISC-V: KVM: Add MAINTAINERS entry
Thread-Index: AQHVS5Prt13a1GOvFEGDL3kYRQWc5Q==
Date: Mon, 5 Aug 2019 13:44:36 +0000
Message-ID: <20190805134201.2814-20-anup.patel@wdc.com>
References: <20190805134201.2814-1-anup.patel@wdc.com>
In-Reply-To: <20190805134201.2814-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::27) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4854bda4-c3f9-43a0-e8ec-08d719ab0e16
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6446; 
x-ms-traffictypediagnostic: MN2PR04MB6446:
x-microsoft-antispam-prvs: <MN2PR04MB6446608D4EE58643BC64398C8DDA0@MN2PR04MB6446.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(346002)(396003)(136003)(189003)(199004)(102836004)(55236004)(386003)(25786009)(4326008)(6506007)(76176011)(7416002)(53936002)(2906002)(478600001)(3846002)(6116002)(44832011)(2616005)(446003)(476003)(11346002)(86362001)(486006)(1076003)(6436002)(256004)(110136005)(6512007)(316002)(54906003)(14444005)(6486002)(14454004)(66946007)(66476007)(66556008)(36756003)(305945005)(81166006)(5660300002)(71200400001)(71190400001)(68736007)(64756008)(66446008)(4744005)(81156014)(7736002)(8676002)(8936002)(78486014)(99286004)(66066001)(50226002)(52116002)(186003)(9456002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6446;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HrA3CKyupr25S7WFlyNv0huXyb8JGllnY7xtsDJyxqOdneSeNjG9P5Xm/xK0uJXl34Lcp7wsXWd5qkq88W/iDDB6D0WpnjdqYZR4ox4yXoWKP1poErOtUxedVweJTHDuDiPQrL/WD+6bHYQvrRiDOoCSwTtyfg7JO7Z2EhWkBFikIj7/WuWcvZK0QDHORigpUuWR3JwdwTBBq8vQ8mQtUMwzuGfEfve+S4+R9ThW6MSfPAFJUHXX949o27oCigMdMu9CersqtANdArNOPCArPuywRAOVafqA38EOKQFYkO8EAy+bAJxMEuAycrQrWt2ENm3cxkaXXrzlLR5wQ/MzRcZT4vdBxn5UNs2Sehbc+biqxHFCHWzdEZt4ft3ldguUYEZNLXkxwukcBN4xRXhxh0XinUcdTroi7oXu5rn3nqo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4854bda4-c3f9-43a0-e8ec-08d719ab0e16
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 13:44:36.7456 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Anup.Patel@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6446
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_064441_497056_FCB7B28E 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
