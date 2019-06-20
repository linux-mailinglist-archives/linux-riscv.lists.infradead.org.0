Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C494D585
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 19:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiybTMm4HtzgOnw0gZNn36WjM0nrCdUeN+Lb5I6C7E0=; b=PT18CpQeIaXfmq
	T6SYmx3st8LpdFy6+WCyIqK4dHxwrC/aFTgCrvVTLfmtP64BY+aDJj87ZpXb1xp2JemqDLj1l1zEv
	uwCrx6avBxXGgtnMrXE488cNaDzntkceaeETEA7/z5WJq1aTm5gxdsVg1ycALLOyW88yFoZnqqFlL
	rvPh3c+N6YUpnpAHeU07lN9QBsTL1kBcHHb8WtEub8Wp6dLRMt7StVbXdhFSLpUzqPZTnA6z6gYgY
	NHb0epbRcR8Ph00k6x2vZDGUZpTaJHBK/iTMQB2m3xkwCYU22z+IEjpjZ8Jq3k+o8cDkkeYLUohiA
	a93K0HqmfV8L6P/1P22g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1KI-0006Z4-9I; Thu, 20 Jun 2019 17:58:22 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1KD-0006YF-FA
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 17:58:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561053498; x=1592589498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xDMT1Xe6qXskSn3+v1lO253hvDWGj80kh66q4P6oqZA=;
 b=n++InIrXfS3DLW9V6gf5DsbF+nXqY37paP6w5E44vtdUWQvn0L5SrT6k
 yr/Bc26ajSVc21CJ6r3UWzwiyir//lkK2r3mq/XTHp1S0vQRFCRIMV/IR
 2JIvr7pXVh4Uz2t5+n4gwtWtfShX+Z7WZ5GSr0KNco3TpUPWfpeaDTkCh
 zxwfd7pkyR2rCMEdZQ7oMREtfpsH64V9jV6Zh0VPmin+GIvQlQwFtvDyA
 d/6pC5QRLEUAONfEgfvL3agDv5Mlppu73NCVxULK+TAGf2IpSR7M1v1Vk
 nJVClWILBdR2aikhpYP/LTJ92v8C06aU+tKGsb8ji/KPjOVTutEss6Roi Q==;
X-IronPort-AV: E=Sophos;i="5.63,397,1557158400"; d="scan'208";a="112725419"
Received: from mail-cys01nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.53])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jun 2019 01:58:15 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xDMT1Xe6qXskSn3+v1lO253hvDWGj80kh66q4P6oqZA=;
 b=APGDp5fb4Vcdi8no0XnVv3d8M97mDkaSXX15Ypfo2xqpZdu0OkcJP92/u9XUVIBkIK9T8mg+fWY17EvdMBJeIvh0nZhonh7HbKSm+3x7Y6wXst+COBHgrJowW57B0unRCPa2ajVuTHJ8EUgWlQyqK4DWL18HxptRqQwIk8gje2U=
Received: from BYAPR04MB3782.namprd04.prod.outlook.com (52.135.214.142) by
 BYAPR04MB3893.namprd04.prod.outlook.com (52.135.214.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.15; Thu, 20 Jun 2019 17:58:13 +0000
Received: from BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2]) by BYAPR04MB3782.namprd04.prod.outlook.com
 ([fe80::65e3:6069:d7d5:90a2%5]) with mapi id 15.20.1987.014; Thu, 20 Jun 2019
 17:58:13 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>,
 "lukas.auer@aisec.fraunhofer.de" <lukas.auer@aisec.fraunhofer.de>,
 "wxjstz@126.com" <wxjstz@126.com>
Subject: Re: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Topic: HiFive Unleashed DT problem with 5.3-rc1 upstream kernel
Thread-Index: AQHVJtpf/c5onSaZ00edOLmiIRzkKKaj4IuAgAD1NYA=
Date: Thu, 20 Jun 2019 17:58:13 +0000
Message-ID: <d66f7e401e27bcc486e6cf94eab3fd2ad9c0be30.camel@wdc.com>
References: <338f944c74c7540f71c27f30f5b46405b8440de3.camel@wdc.com>
 <c4a72786b3bee65ca2d5971e42cb22edf6cf7fce.camel@wdc.com>
 <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
In-Reply-To: <CAAhSdy2-2tQ_ToRqBcB=q6Z5biZMvfQ9ok7hW508KjJM9fMNJQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77ad3dfd-6308-4b84-aa9d-08d6f5a8dd6f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3893; 
x-ms-traffictypediagnostic: BYAPR04MB3893:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB3893484C0F49FF0D134122D7FAE40@BYAPR04MB3893.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0074BBE012
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(396003)(366004)(376002)(346002)(39860400002)(136003)(53754006)(199004)(189003)(66476007)(66946007)(2616005)(478600001)(64756008)(4326008)(3846002)(66446008)(2906002)(54906003)(66066001)(81156014)(72206003)(14454004)(229853002)(486006)(316002)(66556008)(446003)(11346002)(6246003)(8936002)(6116002)(110136005)(71190400001)(68736007)(71200400001)(476003)(53936002)(76176011)(36756003)(2501003)(26005)(6436002)(6486002)(2201001)(305945005)(186003)(86362001)(25786009)(81166006)(6506007)(102836004)(7736002)(8676002)(118296001)(99286004)(7416002)(53546011)(256004)(76116006)(14444005)(5660300002)(73956011)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3893;
 H:BYAPR04MB3782.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xFItBp/oLA/DnxppD/C49ayu3LlzdOD6G5JzJtHMn+8ZEUjqq9kqanD2ue77UH0v1SsOzzgkRoUk5FeUSQbr5ouazg8LXQRDa8cZUqLioSGDV8wg5hY8xc7IMo7QiBS2atsV7cHZP3KartdJ+Ljv3oKoLQnhFCOIcR8K2Wea77DGv5UXcoEpCmISIZrC8DfXAUkblEJZ6IfS7ooFljWkNc14R46DfiGQudjsarUIQyXSo1joUUxnsTrFpV7KSbJgrTmV1qe7p3vMokPtVpyBbwpxjS13zRH1mx1sD/A2gwAUqnTjZ4ZDdikzvHiyVTjhhVZRs5ouDgVaClCUrbrvbnkM9/xqyH/I7hjj3SJOEPxJKxQBxkbS1Cx2MI+fA1tBXnQnTwrlKNRbKRewk4f1fjUZDB+qotIGZpJzYDjY9RQ=
Content-ID: <9FD013BCCD197B4DA5F1BA83CF792F7C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77ad3dfd-6308-4b84-aa9d-08d6f5a8dd6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2019 17:58:13.6318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Atish.Patra@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3893
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_105817_558483_AC54F705 
X-CRM114-Status: GOOD (  30.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, "mafm@debian.org" <mafm@debian.org>,
 "abner.chang@hpe.com" <abner.chang@hpe.com>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "mark.corbin@embecosm.com" <mark.corbin@embecosm.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "rjones@redhat.com" <rjones@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 "yash.shah@sifive.com" <yash.shah@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "merker@debian.org" <merker@debian.org>,
 "schwab@linux-m68k.org" <schwab@linux-m68k.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2019-06-20 at 08:50 +0530, Anup Patel wrote:
> On Thu, Jun 20, 2019 at 1:36 AM Atish Patra <Atish.Patra@wdc.com>
> wrote:
> > On Wed, 2019-06-19 at 13:02 -0700, Atish Patra wrote:
> > > Hi All,
> > > 
> > > We have been waiting for upstream kernel to boot on HiFive
> > > Unleashed
> > > for some time. Finally, all the required drivers will be
> > > available in
> > > 5.3-rc1 as Yash[1] & Paul's[2] patches are queued for merging.
> > > Yay!!
> > > 
> > > However, the DT/drivers in kernel are not backward compatible
> > > with
> > > the
> > > DT provided by FSBL. That means, everybody need to upgrade to the
> > > new
> > > DT if they want to use upstream kernel. Here are some possible
> > > approaches to allow a smooth transition.
> > > 
> > > 1. Embedd the DT in OpenSBI directly and build it by default for
> > > unleashed platform. (discussed in OpenSBI mailing list [3])
> > > 
> > > Pros: No change in anybody's build system as long as they use
> > > latest
> > > OpenSBI.
> > > 
> > > Cons: This sets a bad precedent for future platforms as OpenSBI
> > > should
> > > not be the place to keep/maintain device tress.
> > > 
> > > It will also break non-Linux OS that have not upgraded their DT
> > > to
> > > match with kernel.
> > > 
> > > 2. Link the updated DTB maintained by kernel using
> > > FW_PAYLOAD_FDT_PATH
> > > in OpenSBI.
> > > 
> > > Pros: DT is maintained by kernel and OpenSBI just use the already
> > > built
> > > DTB.
> > > 
> > > Cons: Creates a dependancy on Linux build system.
> > > All Linux distro maintainers now have to update their build
> > > script to
> > > add that option and all documentation need to be updated.
> > > 
> > > 3. Update FSBL:
> > > 
> > > Pros: Cleanest approach.
> > > 
> > > Cons: Everybody has to upgrade the FSBL which is not a simple ask
> > > for
> > > everyone. There is no FSBL binary available publicly as well. So
> > > everybody has to build FSBL first.
> > > 
> > > Any other possible solutions?
> > > 
> > > Till now, 2 seems to be the preferred choice for now. Approach 3
> > > is
> > > also okay for longer term solution (given that FSBL binary and
> > > instructions are available timely). But approach 2 requires extra
> > > work
> > > on distro maintainers. That's why we want to get an agreement
> > > with
> > > them
> > > before recommonding any specific approach to anybody in the
> > > community.
> > > 
> > > Thoughts ?
> > > 
> > 
> > Argh. I messed up the subject line first time.
> > Sorry for the noise.
> 
> I have 4th option which is even cleaner that 3rd option
> 
> 4. U-Boot_SPL/Coreboot replace FSBL
> The U-Boot_SPL/Coreboot will replace FSBL and load OpenSBI
> FW_DYNAMIC, Platform DTB, and U-Boot_S_mode from boot
> device (MMC/Flash). We can update OpenSBI FW_DYNAMIC,
> Platform DTB, or U-Boot_S_mode separately anytime without
> updating other images.
> 
> Pros: Better than option 3
> 
> Cons: None that I can think of.
> 
> IMHO, it's right time replace FSBL with U-Boot_SPL/Coreboot
> once and for all.

+Lukas, + Xiang

I completely agree that replacing FSBL with U-Boot SPL/coreboot is the
best possible solution. However, the implementation of either one is
not available upstream. Please correct me if I am wrong.

So we need an intermediate solution until that happens. It seems that
approach 2 is okay with majority. We have not heard anything from
Fedora/debian folks though. 
 

>  Also, running entire U-Boot in M-mode is just
> an overkill.
> 



> Regards,
> Anup
-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
