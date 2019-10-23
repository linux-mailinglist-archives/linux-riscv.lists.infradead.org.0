Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A352E2204
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 19:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOCmD/U/eDoS9qwMZJTO2voLX/C5z1Wn145lNULmNOQ=; b=NckfqKz3/ZVqW9
	/n/x0/W0nBkkb84kbrifwLRsWOpPQ5tQDulG3Jw3gVGcArGDO1/WoAzFy9uCjtHL07SmPoVZYW6p/
	JCvm4i0mUICYCImMtSG1pvK6weuqCoAs6DsIUVIh4aspAdewWlqK17O+I4ICfxulFJVaL72h3Zvoe
	dmI59w9iScBaQPZk6KjtH2Bbch2kLhZGfGI5KdG38k2DOrjeZulKVc4DJgSrtBPROlA+YDm+ITHF3
	4Fr9GZDbfwiUvPwDIvsQ7E904f+9XwbQbN62fqquKLrJSPOBIzUo5SPcKYT+Je+rO9k6vu5vRPixh
	mKk/NSUuhZTMZwA5SSZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNKfD-0007Yn-0Q; Wed, 23 Oct 2019 17:43:15 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNKey-0007IW-TQ
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 17:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1571852580; x=1603388580;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=c4CudQ10WLvR/3PXKwCE+8VTs2ntB+heiRySI+1CkPg=;
 b=YUN2pWwc4W666Nt8foTiwNgNjdcDls0AFXP5bCwKFi2LhS0LMlR7vv61
 ddkt3Qx6dAPkzVX2TVJxCOqm2AJwhNVSUMSaTGzBmrohGPZ0TMI52iO4w
 9gOpBq7G6rOGF6pWUe7XYXxeW3KeSqLkRMxfYpVn96uYkxVP6QYbsdmmj
 zQxCPTXg3uPrGHYWaK0N5ai+VG9V7AS6OFGPDFgwAt+U1MHp6ps5h5Rto
 qk0OwXBDXkfOIt/Eke9fBUGvveJo8Jy9Ec7Cpf6svJS6yxBHUNRSCXj0o
 t8ARS74YI6f0hO2oS58UL0v9H/vox2Vwplrue5//TGQd9Qx3RzZftYVRg Q==;
IronPort-SDR: b42L00FJ8PWMTQKMlJglTeTbC5UN5HilxPnXApfFU4Pe9B7UoJsCzzSJCv5h5l+J/ThS5lmMSR
 zTSDbL4b7ev6X0FlpzK3PZIuXJVr9QVWXqxgqFdkXRWZvIXKeqUe+79+HOKPSHl7KpGwIYydIQ
 1hvNwdl51BAYQ3E/g9rcCCePLkaQx+yO1VTFdW8uAdrZ2ELPU9dQWSheCQM8JbyWtwVeCMwoes
 /c9+jKrBEOOobfFfNJIG9lFhgsOjQ4r+zZh3ZCmXlVO/XNI23DjrdsBOn2Q9jbPzWc3YMLM83V
 2j0=
X-IronPort-AV: E=Sophos;i="5.68,221,1569254400"; d="scan'208";a="121186004"
Received: from mail-dm3nam05lp2053.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.53])
 by ob1.hgst.iphmx.com with ESMTP; 24 Oct 2019 01:42:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLzGopOSzrm0glUo0o/2Sm8BoLTqEVjHN0U06JgC4c/oMFyWI6UpCWkEZu+xaAKjBAQCC/JsxcYwssfTJEP1xmn0qEplYu2wNICH2YsBGINKpUf4hrub7NZL2EFaKRRXp/9TGOAFpuSa4jp6OJTk0JIrb09mTFeO7Pf4AUipM6kmtASTNRR0pC/uYfc9OfkD4hYJ5FZ4YGoC1RPPWOW7MsTzN8+kvXLRSck5ipFGU/uq4L0TjGuGpJwc5fLkPaAfCYnDv8rsNKRCvaFiMQElXixbUifJBDDczAxs+JqP9K81/8sqt1cUu+pqhSsUgFbd0NOTWhjbLibBN4Kh0W16xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c4CudQ10WLvR/3PXKwCE+8VTs2ntB+heiRySI+1CkPg=;
 b=M5x2zYt8N8JE5e+Nut1NsObgsSFSQWkaLV449hxzL049qHJ0GG9HH7K5ldc2sLUcOm4N3jlrO+jw60ybkbOk+qFeqWH3c6cl7Gl2i4XYGAzqIFpAsHrL0ucw90AiYFIgu1C3viTbTG5Yzq9wVNaQ7sna/Zs3KGwSnd6uNOfqJoQ45hbS2WI3A94zraLf1YJXUz6+6lvz7r5OoyJIx5JUsh9RZpP8zM1dviFzZ/xjEM9eCW4xnmcYvLEr6TIYG7LhKqdUfRAysJuaP/5xO6XpasHdT/XVM1UB33EdLe7T3pidmkYYwL0i/7byXkLbm2SZ6eNICvUPuyIAYEaa36c88Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c4CudQ10WLvR/3PXKwCE+8VTs2ntB+heiRySI+1CkPg=;
 b=HttcN/Z/xBnzRju/LxRb80/nVZTIPBlCTYK9ItSiaH0jlrgl/BJ8y2EvB1HgqIe9D//9E7GBU8xAbLi4x4dpPqX9K9CgWQDC6yWTZP7bOkRc0yLtdh9KSdHPTJZ/SWstFlZsKbTm3+WIW/ndUMP1M05/fASYyudexeODosZRHFE=
Received: from BYAPR04MB4901.namprd04.prod.outlook.com (52.135.232.206) by
 BYAPR04MB4310.namprd04.prod.outlook.com (52.135.205.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 23 Oct 2019 17:42:55 +0000
Received: from BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::4933:8361:f5e3:a6c6]) by BYAPR04MB4901.namprd04.prod.outlook.com
 ([fe80::4933:8361:f5e3:a6c6%4]) with mapi id 15.20.2387.021; Wed, 23 Oct 2019
 17:42:55 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Topic: [PATCH v2 2/2] RISC-V: defconfig: Enable Goldfish RTC driver
Thread-Index: AQHVc2vLFlE68F2kkUyeFzcwcqAG+qdXYO6AgAKZbICADTsXgIAAOUoAgAAmwoCAARToAA==
Date: Wed, 23 Oct 2019 17:42:54 +0000
Message-ID: <678b7a7a82adb389e34f023d282a7935f41e356a.camel@wdc.com>
References: <20190925063706.56175-3-anup.patel@wdc.com>
 <mhng-edb410db-fdd1-46f6-84c3-ae3b843f7e3a@palmer-si-x1c4>
 <MN2PR04MB606160F5306A5F3C5D97FB788D900@MN2PR04MB6061.namprd04.prod.outlook.com>
 <alpine.DEB.2.21.9999.1910221213490.28831@viisi.sifive.com>
 <17db4a6244d09abf867daf2a6c10de6a5cd58c89.camel@wdc.com>
 <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910221751500.25457@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dc16d029-ddc2-43c1-458d-08d757e06f87
x-ms-traffictypediagnostic: BYAPR04MB4310:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR04MB43100FC6DD8954726486AFE8906B0@BYAPR04MB4310.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 019919A9E4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(39860400002)(346002)(396003)(376002)(51444003)(189003)(199004)(86362001)(54906003)(5660300002)(71200400001)(81166006)(81156014)(6512007)(99286004)(6916009)(305945005)(71190400001)(316002)(6486002)(25786009)(8676002)(966005)(4001150100001)(6436002)(36756003)(6306002)(2351001)(2906002)(8936002)(4326008)(14454004)(102836004)(186003)(256004)(486006)(7736002)(118296001)(14444005)(5640700003)(6116002)(76176011)(478600001)(476003)(229853002)(446003)(26005)(3846002)(11346002)(66946007)(76116006)(66476007)(6246003)(66556008)(64756008)(66446008)(6506007)(2501003)(2616005)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4310;
 H:BYAPR04MB4901.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZFUr+OWmLxCfuwCgqjx2NRzPCqk5oWfHUj7Rd5YX5fvguNloCu7rPjo4B83KCz+ZwALubYu+JEsPNtV0mIm9MTZRTdq2bytxL5p12YL0o1gv+qRAZiirg7+XqaBlkAcIDrpJGI6E5bL+jzrUDRm9cCznj6Nfbw995sKZFWsWDuACOFuEDP7q5Rj65SoH24i4e5FesRDX4WhkGs5m2pHoaHPw/1hQME/1SqUjcJ3asuKX0uyVdgtZNGnraxX0/VkjRaHK0myUzSAlqF5Hl0H0hVAANmsNhbgQLc975lDvbCG3nWwIPKj6IjX3DhOTGbletcavZUl5oDNSrGbHkqRb+bzhKi/uzpWEB4wEHvy/5zS0xjO5PWjW5Do2W7MCYqi5h4tKs9NjtxIrZLF94Tbnp/RwAINu9ijuI/8iTbnQ13udwY1DYwQjW+sHkLAcEkKUS8wunrSU5qMNHRQ16goKudo6sqkbMiZI68X0zI9uULE=
Content-ID: <27FB96AE614D134FA6D3A0E23FD80F14@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc16d029-ddc2-43c1-458d-08d757e06f87
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2019 17:42:54.9332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YvXS9v1xdX7Rr2ERJdyNs5ozpxCEM/zAs5KTfS9hggPEgia7mIPL4qlVT/49R2h0UrMe2a0OD2mGwMXNJH3V+oIKbjf/bLtjNaMcO0oZlqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_104301_055756_688BA4E3 
X-CRM114-Status: GOOD (  27.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "palmer@sifive.com" <palmer@sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "anup@brainfault.org" <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "rkir@google.com" <rkir@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-10-22 at 18:06 -0700, Paul Walmsley wrote:
> On Tue, 22 Oct 2019, Alistair Francis wrote:
> 
> > I think it makese sense for this to go into Linux first.
> > 
> > The QEMU patches are going to be accepted, just some nit picking to
> > do
> > first :)
> > 
> > After that we have to wait for a PR and then a QEMU release until
> > most
> > people will see the change in QEMU. In that time Linux 5.4 will be
> > released, if this can make it into 5.4 then everyone using 5.4 will
> > get
> > the new RTC as soon as they upgrade QEMU (QEMU provides the device
> > tree). If this has to wait until QEMU has support then it won't be
> > supported for users until even later.
> > 
> > Users are generally slow to update kernels (buildroot is still
> > using
> > 5.1 by default for example) so the sooner changes like this go in
> > the
> > better.
> 
> The defconfigs are really just for kernel developers.  We expect
> users to 
> define their own Kconfigs for their own needs.

From experience most people use the defconfig, at least as a starting
point.

> 
> If using the Goldfish code really is what we all want to do (see
> below), 
> then the kernel patch that should go in right away -- which also has
> no 
> dependence on what QEMU does -- would be the first patch of this
> series:
> 
> https://lore.kernel.org/linux-riscv/20190925063706.56175-2-anup.patel@wdc.com/

Ok, so it looks like this patch will be a 5.5 patch not a 5.4 patch. It
looks like that can't be helped. I just don't want the defconfig change
waiting on QEMU as I think that just slows everything down.

> 
> And that should go in via whoever is maintaining the Goldfish driver,
> not 
> the RISC-V tree.  (It looks like drivers/platform/goldfish is
> completely 
> unmaintained - a red flag! - so probably someone needs to persuade
> Greg or 
> Andrew to take it.)
> 
> Incidentally, just looking at drivers/platform/goldfish, that driver
> seems 
> to be some sort of Google-specific RPC driver.  Are you all really
> sure 
> you want to enable that just for an RTC?  Seems like overkill - there
> are 
> much simpler RTCs out there.

I was under the impression that everyone was on board with this going
in. In QEMU land it doesn't make sense to add it if the kernel isn't
going to, so we need to be on the same page here.

From the other discussions it looks like you are happy with this change
overall right?

Alistair

> 
> 
> - Paul
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
