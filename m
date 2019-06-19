Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F034C20A
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 22:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bgqrswl7JW9mBy/XmntWm+0kAtkCFsxL+96OSRFomuM=; b=ANFjc9rSRpujv4
	kMbuxL8bNHxex6bx4mUe6OEOpiHSGCJRVtdXqfOXSJPx7eGEnr1UOmEeV4VcNkeebtJpvxpm2DzzJ
	b/JkwSXy+sn3v2T3MCyu4Y4naAt8m14whX4+xNv3J0HQygmYFeG1KFBAmntlWK/+XdcfBDErHSv2h
	SvH5T13KyZoGvy4mzjR/ZABjhPyPp2+we+EAPtLC28C33BeasIMIlyGcyMYcI6/NiyCAVpnP9O1eV
	bOjh/UxHKBKq8rue8bAmz0oR0+ZSLykepVTMDQDU4trE6vedy+bCx8lUilxVR+SejHi3/PhtD0Ypt
	yujhPHvXmzWijBw8ohJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgpb-0003K5-GK; Wed, 19 Jun 2019 20:05:19 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgmz-000878-Nw
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 20:02:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560974558; x=1592510558;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=58BGvij805EMGhfIi6pick+WTCtS7eIg/yBTY0BYZP0=;
 b=bHLzUf423dcQ4AK9oLQ2y6xTLjJDybFAofJgNgDGSJ0WtRSKHIxdP6fI
 RETzb60OmNgVxToDdB7L3PX1h2pyfaljQOWyuzOWF/aubbacKTiEwxYys
 LTFQVgp3bWCiZNWeAkk9wj5cmAEa/VrX/RdiH1MBSFMtgbpDFILl0akhx
 1xy1hH3CUiq8vOyYtaWMjqj6Pf4F/AIkGGrVgUM7gACGfRMkAfiFGbsWW
 AVgoM/niQO31Pxl5+5swCEqucEyUgfndl/RB7X7rLaFG1S4p3Qeq5MIbx
 8ZALJ+m+BAl89ZLri0nKdbCAvAVOJ9ecX9Or82fokkZSVTTZlP6JSxgBQ A==;
X-IronPort-AV: E=Sophos;i="5.63,394,1557158400"; d="scan'208";a="112229649"
Received: from mail-bn3nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.50])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jun 2019 04:02:31 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58BGvij805EMGhfIi6pick+WTCtS7eIg/yBTY0BYZP0=;
 b=qu0Eiw8qYf2ga3s4NYy85E92oXXlFgyYq67ifPMRES5d0qvHWS/JhRnsDbbtncirPmlHbPx0Ytwu3yZ24e3cw8sjyQXnwGwzmdf20hXIKKbeJT69FhXszlojIYKXhejorFYKRpsAwJsLNW0Sa5QyAVGdjMVFf9qesHuH2PFwA+Y=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4616.namprd04.prod.outlook.com (52.135.238.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Wed, 19 Jun 2019 20:02:29 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 20:02:29 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>, Alistair Francis
 <Alistair.Francis@wdc.com>, "david.abdurachmanov@gmail.com"
 <david.abdurachmanov@gmail.com>, "merker@debian.org" <merker@debian.org>,
 "mafm@debian.org" <mafm@debian.org>, "rjones@redhat.com" <rjones@redhat.com>
Subject: hUnleashed upstream DT problem
Thread-Topic: hUnleashed upstream DT problem
Thread-Index: AQHVJtns7+HLir7k8kaWZXfQyvEsiw==
Date: Wed, 19 Jun 2019 20:02:29 +0000
Message-ID: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.45.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 926611d2-14c5-44ba-7959-08d6f4f10f0e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4616; 
x-ms-traffictypediagnostic: BYAPR04MB4616:
x-ms-exchange-purlcount: 3
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB461687E012BA6D753E29FC63FAE50@BYAPR04MB4616.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39860400002)(396003)(366004)(136003)(346002)(53754006)(189003)(199004)(66946007)(486006)(5660300002)(81166006)(2906002)(25786009)(102836004)(6506007)(8676002)(81156014)(186003)(26005)(118296001)(14454004)(316002)(73956011)(54906003)(3480700005)(72206003)(66066001)(68736007)(66446008)(966005)(4326008)(64756008)(2201001)(6436002)(7416002)(7736002)(6486002)(305945005)(66556008)(36756003)(6306002)(99286004)(66476007)(6512007)(86362001)(110136005)(478600001)(71190400001)(2501003)(6116002)(256004)(14444005)(3846002)(2616005)(53936002)(476003)(71200400001)(8936002)(76116006)(533714002)(185383002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4616;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jZK9RLsj7oKp1KhwFYbxfq6j8xxGaA29AGKL8SsAePlDGByRnzvA2PEHBB6gEQD7Iy12sLysJSRaray44drd08Z+reXp3r9dqjklOawi8ofeS1pav6cRu0j5IaBxe2SoPPmoOOJ07hJ+kULqJCBTzPyAL3wJ3dkHr8lPvjTAFZ6P2lpARDiabmYo6wNLAwRUo3sJeRdnASV3S3kB9iNvWGZ3ncBooJ/3CbBWsHzgmO9cExDhDBvZ9iICIY4glfpfsR4Y36QWxwIuS6ojBXqLia9ece2g/AnKiX4IiwPgqVpTZPiVOTRxKy9QGDPKThWPfgpqNP+tFp5b4BnFOkA/nfoeb3FhpemoIkCg6B4Ay0ZGHb9xo4Pgc0ZMuaXHl02ph2QSUM57mU3G8bc5JnZUCJgLqvGYluK0pQxTDPR06IA=
Content-ID: <3E04922B0DE0C64BA4DE92518FFF79A1@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926611d2-14c5-44ba-7959-08d6f4f10f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 20:02:29.5776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4616
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_130237_979992_EDC0FDCC 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>, Anup Patel <Anup.Patel@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi All,

We have been waiting for upstream kernel to boot on HiFive Unleashed
for some time. Finally, all the required drivers will be available in
5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging. Yay!!

However, the DT/drivers in kernel are not backward compatible with the
DT provided by FSBL. That means, everybody need to upgrade to the new
DT if they want to use upstream kernel. Here are some possible
approaches to allow a smooth transition.

1. Embedd the DT in OpenSBI directly and build it by default for
unleashed platform. (discussed in OpenSBI mailing list [3])

Pros: No change in anybody's build system as long as they use latest
OpenSBI.

Cons: This sets a bad precedent for future platforms as OpenSBI should
not be the place to keep/maintain device tress.

It will also break non-Linux OS that have not upgraded their DT to
match with kernel.

2. Link the updated DTB maintained by kernel using FW_PAYLOAD_FDT_PATH
in OpenSBI.

Pros: DT is maintained by kernel and OpenSBI just use the already built
DTB.

Cons: Creates a dependancy on Linux build system. 
All Linux distro maintainers now have to update their build script to
add that option and all documentation need to be updated.

3. Update FSBL:

Pros: Cleanest approach.

Cons: Everybody has to upgrade the FSBL which is not a simple ask for
everyone. There is no FSBL binary available publicly as well. So
everybody has to build FSBL first.

Any other possible solutions?

Till now, 2 seems to be the preferred choice for now. Approach 3 is
also okay for longer term solution (given that FSBL binary and
instructions are available timely). But approach 2 requires extra work
on distro maintainers. That's why we want to get an agreement with them
before recommonding any specific approach to anybody in the community.

Thoughts ?

-- 
Regards,
Atish

[1] 
http://lists.infradead.org/pipermail/linux-riscv/2019-June/005108.html
[2] 
http://lists.infradead.org/pipermail/linux-riscv/2019-June/005068.html
[3] http://lists.infradead.org/pipermail/opensbi/2019-June/000255.html
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
