Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 350EF104838
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 02:49:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLtIcEKC9S6QqVN22jdO9Zl1/ppjgHGtIbM7j3h+vig=; b=rKoXw/qr3bT1Dt
	2L2L+VEh1GljSd1AILBQ45QFiuOX0S9+lWmPQzTIO5PGQLmdTTXIKqXKu5hU+OOPwND8LPAWTTir0
	i88I5WJnyqPjDNepzOqYxATILveLbTQ5ezbHADU2V8ZvpdcScnJPdPSYp/0zlpP18kapkzZXM+Uev
	kkz3jFZyNiyk5RlxfwdHDpxuHHtbJw2d9PcdHYRGWnNiMlOoXchacTt3kTDqFSGabPiTnDHWPvGqo
	tkkh0/OBA+fAaxGDjxQOCCKCgHnMq4jSQfXNrOyNPiwSlaeXMO72XRr6o0lEwZo4fE1C+CYDO5agV
	JmorF8PM/5z3gT2ArIVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXbaN-0005X4-9k; Thu, 21 Nov 2019 01:48:43 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXbaJ-0005WT-H8
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 01:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574300919; x=1605836919;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=7wmIgTQPSFB/biu3uGNyXB9PTD/KSP6srKOnfF7CGQo=;
 b=o8XOiuqYEfoewbLXG2KRS9tjVXFeinAbw0K55+e72dqNmoJ6viDCY2Sq
 noEJzxtMeEV9USk0Gtb4tEjImIm4M1t2Gari2gtCgIAqdG2jLeYy0c7/a
 C6VQS2i3xE/Eg8gOSV4AHQwCrVGLhgFat6g1W7hOk5f0OEQmHQyAgX6Fe
 bp/3KgQM4/T8odp+DQEpLG4QVBOalU3sKYjdhCZB/nEvnbxRNGwKtIM99
 IZDFxFM8RKthMiUdlJvbfv6pVkyqaQPoM9ai5cVmKzWjIyEhxifivIJKG
 4uFQRr5i9uQjrLVCMVPEy2QfyDxTFdcEF6x/GN77J9lDfDNf8P5gxa92H A==;
IronPort-SDR: i+nEOIps49kaXKSWS48L0JmQ4VlHRQTsj6K1HnZVmtTNJwbmBaYklGu9rFCptdjSHtV2E+o6nh
 h3FOimuujvcr7nq24MX+5JqG6tCHBY/Hn+lBxkbHiPM4rNXYyOJA7nbPJSWdeMdDQyhJp1ysFr
 hPtVzuNiMNoEd7kOzLhhHQ//MSYbJdnuYcmAoaYYgrrgMELs40zZyd1l3OIZ30pGZMqcTZ8DXy
 dlZrlDiTQYu31hieS1iIQT5O5jACWOIaPovmXmsfaoTWN1XRQPKA2heZhS80qygWyZvJ1+MXtG
 0WI=
X-IronPort-AV: E=Sophos;i="5.69,224,1571673600"; d="scan'208";a="125195598"
Received: from mail-sn1nam02lp2051.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.51])
 by ob1.hgst.iphmx.com with ESMTP; 21 Nov 2019 09:48:37 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZjLXL4vNseUDYce7keUAd8qmslse/srWMjOz2jhh2DpbkabnATo0vJLpcrEd6ZECUzZUTPTHRmshRYcsOVy1q7vxKFArVgTbpn6/U2n5WP+XVGF6wdBHPBOfKjR+RNFY8V0YQymnFT6khYLiTER8eZdj4NmJsEAeFDiim0ZN2q/VwDBEYNjaPZky5QC8ejLac9j1Lzf7o60ie8ln4wf7D1Ur4bWMNjvANyx/3WCIWnuHXQZeFJ3MaO9gx1KJIoT39KWHL6BtZaBScVkeI5UZ19Ni+TVf/wCuC3I+9muIN888v+0/YjoTuclhYHu9WbNnqUQsZ5w5xLq6lzPl4o7Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5tvoM0W6/CvuMf/lIct4dILqIIFodL3o8/j2a6F1ojM=;
 b=F434nRM7eJsyrf45aLRDlmIQvwzT2OKaHNTXIxZSGWOFAFVr3e7Kl9R5b3zwB6fD3ve2hds0CcuAi+68wDd/OardjaCnVADy0hE6iS5BPTpKRf3QtI1KZz+OdKPhnfkL4ezt4fCJCZqfVn+G7rpVeN0/nUu0CEpz/vAuZ0f9DaiXBR8SjrknPiiZ4lwgPnznH1OwZh84Efo9SSIxqiVGUIj98U3eNGZXB1Y5LqszkIN6tEcSgIoGu0XwAiJ38/Iu1QYTVtHraF3VAOInoM7m1p8Lw9gK6x6dAnv7TTKrjhotKrt3Ky94WPLfMeVcR9BFuF8r6Dcvdo/mCCx7ifq+UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5tvoM0W6/CvuMf/lIct4dILqIIFodL3o8/j2a6F1ojM=;
 b=y4MRBfO/gxhoiiqTSF4J4CK08DTzYUDfAu2JgRTLG59gJws6kvGj3ywLtbhkQdFd92om80JCyLswvEZj23NcfNf0iviMhgBZobYCeHj0UNnumXyPWDHuSc04kAdehlNC5SIKdSrDiwfPiNLS80N+C9czwX1ECSadUha1KdZtVXM=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB5685.namprd04.prod.outlook.com (20.179.57.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Thu, 21 Nov 2019 01:48:36 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::112d:6934:52da:df11%7]) with mapi id 15.20.2474.018; Thu, 21 Nov 2019
 01:48:36 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Open ISA (RISC-V, OpenPOWER, etc) Miniconf at LCA 2020
Thread-Topic: Open ISA (RISC-V, OpenPOWER, etc) Miniconf at LCA 2020
Thread-Index: AdWgDVS/YLvObNSuRmOjQ9PUNn9ddg==
Date: Thu, 21 Nov 2019 01:48:36 +0000
Message-ID: <BYAPR04MB49014A41F8E58A3C00176A78904E0@BYAPR04MB4901.namprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1d2bf337-82f9-4ca7-ad08-08d76e24eca5
x-ms-traffictypediagnostic: BYAPR04MB5685:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB56852A7060402BA24BDC3130904E0@BYAPR04MB5685.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(189003)(199004)(53754006)(2351001)(71200400001)(71190400001)(186003)(2906002)(6436002)(66066001)(4326008)(86362001)(66946007)(64756008)(99286004)(76116006)(81156014)(3846002)(66476007)(66556008)(6116002)(66446008)(5660300002)(52536014)(478600001)(966005)(2501003)(305945005)(486006)(26005)(8676002)(8936002)(6916009)(102836004)(74316002)(5640700003)(9686003)(256004)(55016002)(81166006)(14454004)(33656002)(6506007)(6306002)(25786009)(561944003)(7696005)(54906003)(476003)(7736002)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5685;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JJpz59V7e5g3NahfKDmEl1p6ZqDxeKXCnq3C+AXqAuYuJVDz7MTBNRQJa0ve0ws79qjTU3OOWr17RJT5qxZGrQ81Qwvp8n78iYGooVgmykeqy4IYbIuXXH5wZJE4zM1HQg25bTBGPKVpZfS5d+LWTWyahF1/pxv21i265iPNEKncN2s/voy3XcXFezn2Hp5g0leWcin4VjF1UrhiV4uA+Q5Vn+No9jG+HBE5VD3MdTwNEoX8Kkxiaeeyc5OPAKoBuniVKvoPQBGy5o8USSBhPsLFAQrIiwoPUfkkfNi8ySSBaS2GaGuzRkF17I6Wg2gsOeTZD+oL49xoY95oWP/qdbrn62IuQkBdjFerMxbDre9hpvVTftXrqz9OAqWZIRIvXG1FnEi3UxrHI5LiHDHqWohgExeb/Da3zg048dgmx6JGujmAqx1xaoTatdHBeTVWSzUIwZm5bN4rA+Gm2LPyjKdoVjp0JJUt2JBKjXDqUlo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d2bf337-82f9-4ca7-ad08-08d76e24eca5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 01:48:36.3659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zyjT/ql88btg9csB8o33e4K1j5MHSubshV+xFHXV538Pe82AYchKeHGc3lb3eVn4hIree5K5Mc2ZNEaXhWmg+TV0hN/YaaS2l5TMIOiCxHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5685
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_174839_692816_593D2063 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christopher Lameter <cl@linux.com>, Garret Kelly <gdk@opentitan.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, "hch@lst.de" <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi All,

We're pleased to announce the first Open ISA miniconf at linux.conf.au

Open Instruction Set Architectures like RISC-V, OpenPOWER and others are
the next step in the evolution of Open Hardware.  The mini-conference
will commence with a brief overview of Open ISAs in general.

It will then introduce the two most common open ISAs, RISC-V and
OpenPOWER. This will include an overview of the ISAs, how they are
supported and why people should use them. Finally we will delve straight
into a set of curated presentations from across the Open ISA ecosystem.

The miniconf organisers, Alistair Francis and Hugh Blemings along with
the LCA 2020 team invite proposals for sessions in the Open ISA miniconf
of either 15 or 30 minutes duration.  Suggested topics include Linux
kernel support for open ISAs, RISC-V, Open POWER and any other Open ISA
related topics.  As befits LCA, sessions should have a strong technical
emphasis rather than marketing/sales focus.

Places are limited in the miniconf schedule and early submission of your
proposal will assist our planning.  The Call for Sessions formally
closes on December 8th.

For attendees - the miniconf promises a great deal of technical depth
and breadth across this relatively new aspect of the open technical
commons, we look forward to seeing you!

As an extra plus it's on the beautiful Gold Coast in the middle of Summer :)

Registration and details are available at:
https://linux.conf.au/programme/miniconfs/open-isa/

And don't forget there's a bunch of other awesome miniconfs scheduled
for LCA 2020 - the complete list is available here -
https://linux.conf.au/programme/miniconfs/

We look forward to seeing you!

Regards,
Hugh Blemings & Alistair Francis


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
