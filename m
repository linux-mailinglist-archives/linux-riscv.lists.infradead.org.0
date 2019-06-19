Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E6A4C20F
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 22:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olH10nq1WDUQSTIYdkXhiPiYyEk2RLtvizPMSh2KSBA=; b=FKE0DtbVaFRhpC
	43qgBzUIDyNOM/Ii/9EO2LXsZdj7y+ghSB1s6Z7fJqujYmZkXhEs8oPSL3eMBJQWTmPpqCq+22XoV
	gi1aYorbQ/6hInJhbh45HcYSQZRqLHLB3fx8VWZ4antabTq8Z5g+VT4I99w9pZ9UPtjnq9BYCz39Z
	W4etv3vg8QASc0ah71zZHB0eMNbocLWp4vn8WVDprkCmHSOPJdTtRTFzHnlN9X0TvQtwAP9f8z9Fl
	i4x0vlFHCuw2okOa0qutnTnZ1ZJgf8sSHR9YjiSkMgQYKGSIsL7sGCip3ylp4Dmpr6vrt3NJKagMH
	ifUEnOi8LzHC0Lg6AJ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgqU-00047E-K6; Wed, 19 Jun 2019 20:06:14 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgq2-0003mL-0N
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 20:05:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560974746; x=1592510746;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cuu9vuAal+vOQbUGDoTT3x2duOray3Ops8DEyWmDs9c=;
 b=Wh32ZlZOLhIpzRfw8AXJmMAx7ZeeDSrKY9NSi6mvzpqTak9RMrUTfx40
 0YU4stMHwxNAxML0PZoRe9sxgArB4kPUpD7EaI7qs1sTYT3lBmMKQpMGr
 NWnMNoAfEHz9dBJ2I43d4iNPbeKfduFOdcKF6KYPVE1nKU8+TUVqOCxyz
 iD23hqPGJQPqEJNSwcpPO+tGTe9NCeamsseDXrglQU9bOqXfZpZfKbXzP
 1X/kPRDPpIQhytx6AfkmR6y3nR4eYYNlKOR8k+gtV93xl2Fc7rchdNK6L
 kfQZBSMEQi9Qsq//81DL2ESkkWT8dBe6VT/51YLfsGWey8KX0/EDNudWW g==;
X-IronPort-AV: E=Sophos;i="5.63,394,1557158400"; d="scan'208";a="112229838"
Received: from mail-sn1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.52])
 by ob1.hgst.iphmx.com with ESMTP; 20 Jun 2019 04:05:44 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cuu9vuAal+vOQbUGDoTT3x2duOray3Ops8DEyWmDs9c=;
 b=QbgnjW339Q/KBwXIpeQBRlVh6WCwkVknv/09dg0THL/K+CcMVaN9HZ2EZVM/83JU0l5Hs3UatiUBouHtTl46qBcvugnVcJnIBMFPhcz+DXmzSzkPs6D86XyWO4thlAChS3vBsiSz4KUHVFC/IMpKUm9MaTIdOOyYRladvfIe2DM=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB4279.namprd04.prod.outlook.com (20.176.251.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Wed, 19 Jun 2019 20:05:42 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 20:05:42 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>, Alistair Francis
 <Alistair.Francis@wdc.com>, "david.abdurachmanov@gmail.com"
 <david.abdurachmanov@gmail.com>, "merker@debian.org" <merker@debian.org>,
 "mafm@debian.org" <mafm@debian.org>, "rjones@redhat.com" <rjones@redhat.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Topic: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Index: AQHVJtpf/c5onSaZ00edOLmiIRzkKA==
Date: Wed, 19 Jun 2019 20:05:42 +0000
Message-ID: <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
In-Reply-To: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.45.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d828591e-20b4-4766-b0ff-08d6f4f18201
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4279; 
x-ms-traffictypediagnostic: BYAPR04MB4279:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB427986787E954159D559F756FAE50@BYAPR04MB4279.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(396003)(366004)(136003)(346002)(376002)(39860400002)(199004)(189003)(53754006)(7736002)(66066001)(8676002)(14444005)(6486002)(3846002)(99286004)(486006)(2616005)(478600001)(72206003)(256004)(73956011)(2501003)(6506007)(54906003)(26005)(68736007)(110136005)(81156014)(6116002)(66476007)(76116006)(76176011)(86362001)(102836004)(66446008)(36756003)(64756008)(8936002)(316002)(7416002)(71200400001)(305945005)(66556008)(476003)(2201001)(118296001)(2906002)(229853002)(4326008)(14454004)(25786009)(71190400001)(53936002)(446003)(11346002)(186003)(6246003)(5660300002)(81166006)(6436002)(6512007)(66946007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4279;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NC7APrboc93M07PVHF/hZkSkUIvf4MBqXzgQdG9wpsPhlHTXspNr8XR/O1cI7QJAfFD4l9CMcTWBvbcnLTgNykSgj2SdFwQTN+2noyv2o/CsYoouxrD9VnLuLpqGZEFcoFsBdcBigu/lIRYJ47tPNEw20fp6YL6r0mBxg3RaskFPnWnz/p9i5+MECivuMpA8sNnvjwddPkac4YYWXXDOSrFofwP0qZkBw8+kfQZvecQiThxXyHoCtAaXFJDNr2zpePPzV8D4sjDStWjJLg3Qz9ckD93kNotmklVfngSRA47abQZzbx8dvjpirPazSaLUM0AW4w8dRaxOOoqa0sp+rKLUbx79vz7RwvmOCULLtDuAH559sbgLVgR7EV2DGrxI25HwN2KAvqGowoPdiDNP/wQzvh4ur+G8lEKr1HktqVM=
Content-ID: <D1A31AC41A15D84CA3AEB87A7F6733DF@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d828591e-20b4-4766-b0ff-08d6f4f18201
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 20:05:42.4338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_130546_189326_8EA6D4FF 
X-CRM114-Status: GOOD (  23.15  )
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

On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> Hi All,
> 
> We have been waiting for upstream kernel to boot on HiFive Unleashed
> for some time. Finally, all the required drivers will be available in
> 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging. Yay!!
> 
> However, the DT/drivers in kernel are not backward compatible with
> the
> DT provided by FSBL. That means, everybody need to upgrade to the new
> DT if they want to use upstream kernel. Here are some possible
> approaches to allow a smooth transition.
> 
> 1. Embedd the DT in OpenSBI directly and build it by default for
> unleashed platform. (discussed in OpenSBI mailing list [3])
> 
> Pros: No change in anybody's build system as long as they use latest
> OpenSBI.
> 
> Cons: This sets a bad precedent for future platforms as OpenSBI
> should
> not be the place to keep/maintain device tress.
> 
> It will also break non-Linux OS that have not upgraded their DT to
> match with kernel.
> 
> 2. Link the updated DTB maintained by kernel using
> FW_PAYLOAD_FDT_PATH
> in OpenSBI.
> 
> Pros: DT is maintained by kernel and OpenSBI just use the already
> built
> DTB.
> 
> Cons: Creates a dependancy on Linux build system. 
> All Linux distro maintainers now have to update their build script to
> add that option and all documentation need to be updated.
> 
> 3. Update FSBL:
> 
> Pros: Cleanest approach.
> 
> Cons: Everybody has to upgrade the FSBL which is not a simple ask for
> everyone. There is no FSBL binary available publicly as well. So
> everybody has to build FSBL first.
> 
> Any other possible solutions?
> 
> Till now, 2 seems to be the preferred choice for now. Approach 3 is
> also okay for longer term solution (given that FSBL binary and
> instructions are available timely). But approach 2 requires extra
> work
> on distro maintainers. That's why we want to get an agreement with
> them
> before recommonding any specific approach to anybody in the
> community.
> 
> Thoughts ?
> 

Argh. I messed up the subject line first time.
Sorry for the noise.


-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
