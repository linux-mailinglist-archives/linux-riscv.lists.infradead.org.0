Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D1EF88A4
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 07:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxGZpDWWi57lbiFBzoX38suxboyQT8NsgoEafEgeZyk=; b=Lv8NpCjeUs5ils
	m3YsV7xyDMqMlGDUYP/GBMYPPalDiqLKbD5s4IGSqUvoXBfF3itdNcJLoVz3pl2nq7MUDxV6Zufts
	TfDwOK5vTvtivFgUJrR2ZvYjpb1TkixxsJFw99KzMb/z68b9qh/VE0weuvIoB/c4C4/VXydUY+N0G
	QSU4yC/+7S8dORoUtVSTWuvQNhTPkx+SFG/Kck7JW9wYhEQ4+EIy2K3u3suWBkRQK8/ZFO9rSFpEB
	5HVDI/XPIXMz+2ac5RaAZXU10qoRGrbRY3hGE9/pImExnpJM/Ub9WMZ8LUIGN1EXUUXSywaMEn2b1
	5ABsNi3tB/Q+J6Ve5lkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPma-0005bd-G7; Tue, 12 Nov 2019 06:36:08 +0000
Received: from mail-eopbgr720089.outbound.protection.outlook.com
 ([40.107.72.89] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPmQ-0005aQ-QS
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 06:36:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnNAm/MzfD6sCItduLTYWWUbnUlqu2Sc3C0TXHhJ+/erTKD/HvRYFFTHL9IH6vWlu1lNtryXsXBNQ0vH1kaOwbdnYF6maNlwWb8ejGe75emKJ5IH5n46zhxs94jEVQ60FtIInnb+IKHOKtFCMKLO2fvSN8q9s+RwoGjyw9X33x1EWW5Yw9Q5cmrN8tMfQu7v8juhfcsaCK9I8flpfeJ87z/ii9Pg8IPNe45MTkM/xyZsEJEpkAWWW+vEQMyfwLdcAdUNaDlBkEYhFUDInc1Gmz2QGpyAH0tQXmN9vRf8L/cZ0l0sR/rJSSIntGs+m0al2qZ3QzB9LkbQiKmtRl83oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4H7mWmhXcLmuKMhLft1V8nYFwf0F9QHRGgszosaV614=;
 b=BZsnSRtve2tmp8i2Jc+F8tpbkmnBVFCkbQgfhDP8RAVyN56ulyoEm9jzk3PieVp6KmHXIrlP4QMdThW2vVdx4k03uf1Sa0cH+/t1W9D6POY5eaqxrdaOqhtAoWCAJe9O09eRUqTu7MpChSr1YURGN6QQsfDo/4FmPBw3IegPwnUxtKBJQWX0KsFFa6tphlIVzL8KIy6oUKjy5UWMr4dpAo1kw+jccEJtsjiZ8n6LJSyC/ghD/cF6a0tf+8QO3qwrS3MS2Nkr2ob9KMD04ZX6PcN/47eiy8KmZQcjaTCvyDsdosBGemwrju5Fa2VxBzfCvooyBA8rFojtgowejWcQgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4H7mWmhXcLmuKMhLft1V8nYFwf0F9QHRGgszosaV614=;
 b=sJfi0+/EbSEAwS6n6aISSLx8KCLhGXGfnx1DWI9l6FBW/LEeu21qFqPXW7fZE+yq9OZjhgpom1hXFIJLHSvovo3mQXb6VAC5f7/GDN+dCHbudlM0LrTEyT4HhVEJubATvZ+cT/vr7DfKpWMA01FGiW1sd16DTA88R8PeTF3hYRw=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3415.namprd13.prod.outlook.com (52.132.246.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.19; Tue, 12 Nov 2019 06:35:53 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2451.018; Tue, 12 Nov 2019
 06:35:53 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: RE: [PATCH] RISC-V: Add address map dumper
Thread-Topic: [PATCH] RISC-V: Add address map dumper
Thread-Index: AQHVmFCzGZwFnAd1O0S/YrXUtDW+c6eGhTMAgACQvpA=
Date: Tue, 12 Nov 2019 06:35:53 +0000
Message-ID: <CH2PR13MB33685CE31DF9AD8C32EB818D8C770@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1573450015-16475-1-git-send-email-yash.shah@sifive.com>
 <20191111215647.GB10647@linux.ibm.com>
In-Reply-To: <20191111215647.GB10647@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86b56a69-d0b7-491f-eb9b-08d7673a9139
x-ms-traffictypediagnostic: CH2PR13MB3415:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB3415E82B786285FEC4D9E4DA8C770@CH2PR13MB3415.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39850400004)(136003)(366004)(396003)(13464003)(189003)(199004)(66946007)(186003)(76116006)(66556008)(64756008)(4326008)(66066001)(478600001)(6436002)(66476007)(486006)(25786009)(7416002)(256004)(8936002)(305945005)(26005)(2906002)(7736002)(66446008)(9686003)(81166006)(81156014)(8676002)(74316002)(446003)(102836004)(5660300002)(14454004)(11346002)(6916009)(86362001)(52536014)(76176011)(316002)(44832011)(229853002)(55016002)(7696005)(71190400001)(71200400001)(99286004)(476003)(6506007)(6246003)(54906003)(53546011)(3846002)(6116002)(107886003)(33656002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3415;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l5zL+13uN9NSgU3WEsBJ5tGHq3GtP4BEePE1qwM2uRfbel4J0HySfZoy5MkMMj+9t9IsKQl4oYc02Tmqh8ZSfvZOFYxssAGlMu92DyeeqxWI5UK6bo0kJS4ETHwjHbboj3XZ5ToKh34WHKvFyCWKgXLE98omYqpbFbyYiz3v1m1zySoHlrn616gQ9pQCbsDgQzS4vb9NuwEHaMHZL6ruLSv5aRa+HVop9Tnyk58fXpBwg5WxUmmrRFco9S0SmvrxxHvJDjr0Q4F2QCUw9TqKXiH01q6g3g/+N1oazG/5wvIcBMNffN840r3bid2eHBYBV+EJGzGFx1i+XUAINaZqavPw9b5EOE+7jM5mJmIQcUCKgOpF4M9CXEkIkOFcEPfg/h3Sc7tWphMDICIbzNmdo59xa+K8ikpd/m6dqFXyDCTJ63D5np8fmFjQKmRuY1Bt
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86b56a69-d0b7-491f-eb9b-08d7673a9139
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 06:35:53.5562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ka1j7rOxZwZvBKpwS/sddh3l1wc9IPDfgKh99p0/c2EL/iL3KvqK68rHyLAh1cFIIX/5InHetaiZZN7KEiNI2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_223603_480293_0C057D00 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Mike Rapoport <rppt@linux.ibm.com>
> Sent: 12 November 2019 03:27
> To: Yash Shah <yash.shah@sifive.com>
> Cc: Paul Walmsley ( Sifive) <paul.walmsley@sifive.com>; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org;
> palmer@dabbelt.com; aou@eecs.berkeley.edu; Anup.Patel@wdc.com;
> logang@deltatee.com; ren_guo@c-sky.com; bmeng.cn@gmail.com;
> tglx@linutronix.de; Sachin Ghadi <sachin.ghadi@sifive.com>
> Subject: Re: [PATCH] RISC-V: Add address map dumper
> 
> Hi,
> 
> On Mon, Nov 11, 2019 at 05:27:25AM +0000, Yash Shah wrote:
> > Add support for dumping the kernel address space layout to the console.
> > User can enable CONFIG_DEBUG_VM_LAYOUT to dump the virtual
> memory
> > region into dmesg buffer during boot-up.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> > This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive
> > Unleashed board.
> > ---
> >  arch/riscv/Kconfig.debug |  9 +++++++++
> >  arch/riscv/mm/init.c     | 30 ++++++++++++++++++++++++++++++
> >  2 files changed, 39 insertions(+)
> >
> > diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug index
> > e69de29..cdedfd3 100644
> > --- a/arch/riscv/Kconfig.debug
> > +++ b/arch/riscv/Kconfig.debug
> > @@ -0,0 +1,9 @@
> > +config DEBUG_VM_LAYOUT
> 
> I believe this could be enabled when CONFIG_DEBUG_VM=y without adding
> yet another architecture specific Kconfig option.

Oh yes, I will drop the newly added kconfig option in v2.

> --
> Sincerely yours,
> Mike.

Thanks for your comment!

- Yash


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
