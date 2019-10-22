Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB87E0E64
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 00:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GDUOTpbJR8DSMRvNJOQgWYZd6HHs16GnYnkaGM1TCA=; b=AFNsLNCiHBzPNs
	XyKDIVKc6QoZKLAhLPzVy4F4MBdt3n2fjWKj7WCK/QCKjJt9iyNV05C+Si32LEkbH+zZUHJuJD46R
	3uJPwS42guH5nn7VL38Equ43hUAdNP7fDZys7vflw2Vt+k1P6y30JZlgur3uaglh95Wgbr87YKuib
	vGUGSTDxQjcwftPrfxPAbkLYHZTCGo4M37AMO9mITWVtK6VvJkK57IXubpGhYGwzUf6ZSxshxOqWG
	Agw2FZKthO6hBBs9jjZnxXlLHXhS0bCOMimM9r8pd2OL4LWcQtHBq0fcnUHL1B8NXwScHJA4euBeb
	8YC4tgycHgkgRFkXKdbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN31g-0000f4-Of; Tue, 22 Oct 2019 22:53:16 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN31b-0000eK-Ls
 for linux-riscv@lists.infradead.org; Tue, 22 Oct 2019 22:53:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571784792; x=1603320792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=FjTK4ZGG6bODJRuV/Ub4IgTxvO6ifw+hrS6fz6rb0Dg=;
 b=etf87zwvpjMSPgvXgWU5P06Z6m1w9azQcuX4i/gUDEU8oBBP6v1iL9fJ
 Lx5X5v6MFGx+5NxzSsfm/eXE4lffyfVag04TSrXKp581+geKsz+ZZ7FMQ
 EXnUyIBkgyIacIiEJAcorS+ovIlEtaf2f+Q4Wu02o8W+vp7i20yEcb/L6
 zjDKnYlQULoms59O2+pnXb92hXDRDEMhuL/MYApWh/B0J0s/eMSuu5qCq
 7sYkCHpLaJqiX6mHa729+gYUKATUx367RrgA4aSq3uQBC+95y8h5gT24f
 ZEj3TUJDviYOtitcDDfki6gGyYq1FXT+UiqA+rssyPQBisHl17uUx56vp w==;
IronPort-SDR: JJhqZ+bGKN6/+1twYEODm8HX3j8xxZlxlSytBL6iGaDo6F8fTgkIrZc9zWfieLQKwmIP7z0ea3
 VMNQNkiUbx16PAkSEB/57venQBf9Cn7/p6iiWt1OHa2iJ/NAgyDrTl4//cl+5WmrMmMEApdGmo
 TCUOikxn/ranBwtl6Y4RghEFcdQimzn1xnSmPOqhMCLLZTYPS0lgKEWVtKB5ViXI9UTx/+3vsQ
 FEDb2ifJU7xIymjCGGCwSsoAF48qU4bstZgj4Q9afoeRvup29eHTAV9PwQRmlk0oWy+YCFHQpL
 Wv0=
X-IronPort-AV: E=Sophos;i="5.68,218,1569254400"; d="scan'208";a="125529643"
Received: from mail-sn1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.59])
 by ob1.hgst.iphmx.com with ESMTP; 23 Oct 2019 06:53:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bW/v4RnPLSa4y3XI7e8YyELdbKOWBqTGUlVvPpS1pWrONEO0yjsthURLnEcP0HuMgpI78JaRsm6jC68kL6K8inn6cRraINAS82WYy1nlD/7FgfmVg5oUopIr61hCaMWdV9v5/6NJH7XrR/b8ehaMh2py3O3ADColS+9v4Tc8OOel6Qy7EfGDM1AS8RIEVEzg9B9TPzF+qY7v3yT7jiDz+S76MiAT68SyL+J3mWO94HLl+3NszcfPNBYmBPXA8PZCVp5zDnlU2FukDr2kEvn9qnru4SCcoo5x5cEM9ZF6LAHxqFhxPHHINsSLaKrPea+DXrqw40Xqash19Q4I06p0GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjTK4ZGG6bODJRuV/Ub4IgTxvO6ifw+hrS6fz6rb0Dg=;
 b=Pdi5AcmS2jYaz7mNG0SvJKoR0qebsT1VjzDw6nlXaQr42v2s+orNbIq+e8bdJHFeTl7A3cNWR/XkajKUADh//fldhXBFqTZjX6ooJuXfaE8QQuiyB8OXH2gweUk2CnC93S4mdoNZBcO88TH38aDkl5rMkte41yHtrQTYHZ8LPb3g3pHx1nHZRqopZE5VASP3ORIqMJjYENuBF14Bp4A/3Pvz9mICippaa7mD1xsa6otPvsdUlbnAM3Q4SUquzaoqcyOitJUma7g/pK2gjXB8H4N4skbY9prO4Zo6bKa6GheuF+VznSX3ka7EHqSqp2/acp2lgPve93oP7+jHtOr+4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FjTK4ZGG6bODJRuV/Ub4IgTxvO6ifw+hrS6fz6rb0Dg=;
 b=MaYxYp/8dyq3Xxuz6jUAVhcgQ9EttdDLuenVqUv2T4zKTIf0ed5zTaR6WHCP9Sw7Lo+ebhHcII9F2t1naToztgl+8Bk82JGnd/CjX4oUhghBl4pcAbrq2j9FB5FhPzlYrRq6HvTAxGZFn79B0IOOMWK0GkkI4EVWceSXBBqcJXM=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4935.namprd04.prod.outlook.com (52.135.235.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Tue, 22 Oct 2019 22:53:05 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::4933:8361:f5e3:a6c6]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::4933:8361:f5e3:a6c6%4]) with mapi id 15.20.2347.029; Tue, 22 Oct 2019
 22:53:05 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, Anup Patel
 <Anup.Patel@wdc.com>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Topic: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Index: AQHVc2vLFlE68F2kkUyeFzcwcqAG+qdXYO6AgAKZbICADTsXgIAAOUoA
Date: Tue, 22 Oct 2019 22:53:05 +0000
Message-ID: <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 35d6e10a-9ba9-4636-7cfc-08d7574299e5
x-ms-traffictypediagnostic: BYAPR04MB4935:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB4935B3FB2BFEAE357AE9C7E990680@BYAPR04MB4935.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(13464003)(199004)(189003)(3846002)(6486002)(14454004)(6116002)(446003)(478600001)(966005)(229853002)(66946007)(66556008)(66476007)(2501003)(6636002)(54906003)(110136005)(6436002)(316002)(66446008)(64756008)(76116006)(25786009)(71190400001)(71200400001)(186003)(486006)(11346002)(2616005)(476003)(2906002)(6506007)(102836004)(305945005)(256004)(99286004)(4326008)(66066001)(6512007)(26005)(14444005)(6246003)(53546011)(76176011)(7736002)(6306002)(81166006)(8676002)(8936002)(81156014)(118296001)(5660300002)(4001150100001)(86362001)(36756003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4935;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hbiy2aiDJipRpSY3rLRo255EwBb9Lw/GwDptCySudoW8l2M8VB2qsPtjsAu6hQL+7qpmTyRktZD10HhsWx1eLkFUPW/ZGZq1XY2xKZIJXkFtUOBdagrUEmECc/PwGAeL+gsRSHqwqzKGvNcZW1OVneOz8o3NunvtwUx+FE8yFbCkkMhHaaGC0ori4X3Wi5wAqu3u7n2tH2v+TFXaX/LDJ16jp6i++omtsD0oKQibcC4jO2i2aOIMYFbqTZt3Iw5nDcHttHd67hCtU08NaPKoihfB8eatnQFv7cTuDhOS7pg9wXMOExKG/wYC9D7RIOxwqSIiYqj+xaXW0zHLxFj4aQmRNDnOA+toeysU7Oec/ZKQTF/6n2BpGIhCDUxXJa/CUqh9y5DkbDzlgmLCSLZB7SoCJefH7ubEFwjtWV03VwzkYzJdBUOBCSsza3Axa7D/nrHuv3JVv4VULwderqPpT5I4QH+G7rjnskLOReDj8Hw=
Content-ID: <29F97478FE661D4EA94B7D9C01C67C61@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35d6e10a-9ba9-4636-7cfc-08d7574299e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2019 22:53:05.5937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rZ2rjrU/V6qIKHKf3r1kqPTUjk+YToMYKOb7269RXa3t/UlnTLV7YLTAD5UI0IeZgxuMW6DjKGHtRi9Ja+gyju+1c23KfHatG7QWowGtTKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_155311_793065_8D37815C 
X-CRM114-Status: GOOD (  25.07  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-10-22 at 12:23 -0700, Paul Walmsley wrote:
> On Mon, 14 Oct 2019, Anup Patel wrote:
> 
> > > -----Original Message-----
> > > From: Palmer Dabbelt <palmer@sifive.com>
> > > Sent: Saturday, October 12, 2019 11:09 PM
> > > To: Anup Patel <Anup.Patel@wdc.com>
> > > Cc: Paul Walmsley <paul.walmsley@sifive.com>; 
> > > aou@eecs.berkeley.edu;
> > > Greg KH <gregkh@linuxfoundation.org>; rkir@google.com; Atish
> > > Patra
> > > <Atish.Patra@wdc.com>; Alistair Francis <Alistair.Francis@wdc.com
> > > >;
> > > Christoph Hellwig <hch@infradead.org>; anup@brainfault.org;
> > > linux-
> > > riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Anup
> > > Patel
> > > <Anup.Patel@wdc.com>
> > > Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish
> > > RTC driver
> > > 
> > > On Tue, 24 Sep 2019 23:38:08 PDT (-0700), Anup Patel wrote:
> > > > We have Goldfish RTC device available on QEMU RISC-V virt
> > > > machine
> > > > hence enable required driver in RV32 and RV64 defconfigs.
> 
> My understanding is that the Goldfish support is still under 
> discussion on the QEMU side and isn't merged yet - is that accurate?
> 
> https://lists.gnu.org/archive/html/qemu-devel/2019-10/msg04904.html
> 
> > > Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> > > 
> > > IIRC there was supposed to be a follow-up to your QEMU patch set
> > > to rebase
> > > it on top of a refactoring of their RTC code, but I don't see it
> > > in my inbox.  LMK
> > > if I missed it, as QEMU's soft freeze is in a few weeks and I'd
> > > like to make
> > > sure I get everything in.
> > 
> > I was hoping for QEMU RTC refactoring to be merged soon but it has
> > not
> > happened so far. I will wait couple of more days then send v3 of
> > QEMU
> > patches.
> 
> The patch looks fine to me, but let's wait until the underlying
> support 
> actually appears on the QEMU "hardware".  Could you resend once
> that's 
> happened?

I think it makese sense for this to go into Linux first.

The QEMU patches are going to be accepted, just some nit picking to do
first :)

After that we have to wait for a PR and then a QEMU release until most
people will see the change in QEMU. In that time Linux 5.4 will be
released, if this can make it into 5.4 then everyone using 5.4 will get
the new RTC as soon as they upgrade QEMU (QEMU provides the device
tree). If this has to wait until QEMU has support then it won't be
supported for users until even later.

Users are generally slow to update kernels (buildroot is still using
5.1 by default for example) so the sooner changes like this go in the
better.

Alistair

> 
> thanks,
> 
> - Paul
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
