Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71090F886E
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 07:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8S7FVeKCsai9XqAGrgf7U4D/vul60aogg0ZMH6CSJfc=; b=uO9B18WGdwP8bb
	AWIosVa3ICCrMdu5FvFVczspFygO7XC1Uxvxf4ywbHZv9uXP0ibTjFFUMbj22CJcKRA4GVnzaINDw
	opBPY4BBDKgT3/YkGLP0tpxhFs5zs9fXoIJFecX+/DS9llr9TCuPv46x2YzvMtWOUwWnCNhiGoRCH
	CIhRRR+JAg4UZdS1pFJ6Bg7/mUvuWh/QIfuLnOZf6HTnSWQ0ow7dEl6s6Ac0xURzgZvUyyv0d6757
	a16YxHrlNBWzxwEdOD+IkbjDOxvi1mM62N8fU8J9e5ftwzs7+XAOxPH3GEjx1bSPvQMD/S688Csb5
	IApH71g96vt3Ch4FNFnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPX5-0006rQ-C5; Tue, 12 Nov 2019 06:20:07 +0000
Received: from mail-eopbgr820082.outbound.protection.outlook.com
 ([40.107.82.82] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPX0-0006AY-R9
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 06:20:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SB4QeQtLbW5h5ozYdcJ0WJqiz1OmZvvxMDspDkVCzQGyGMNcUFq4Clj8ZqI0KH/XIHX27aNCcdmH2/nN5xQps/sAn2x0COWJHSMNtEw3SbUogX1ZuI7Fw9bmO6QMKUQo8WDch2WZZj7fGoAk/cskpNla8rpmAKfii39Gyqwcqd9HhcM5POT40fIyowFsQ71agU5UVdOAsGYgWqtcLnWWx6fIRxFfwrbbPICZC7cGw3cmkVdFBvn1TdfPsXclQYGSmByn1CpxAxxnJs9u/P+d0kCHXt2MODS8KDy0A+hfEYft75fIfxfoAXzOf9sDaUd0OAA5hQ6fzzR7UYf5OGVObg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CrAFuwqFVOHnaxWlUg4RbzUisjfCzQwR/6oIRjuVxJc=;
 b=Xtoa+TwFcG3BCz7ljuoB1LlVCR2d5b8xzM9DMm2JnSqV7cCUBn6FCxUYMDeMZLR8uGEC+Ux9gfDw04xdC642jKMt9ebDyUOWw9l9G4y3hAIB2LuDkoR+87uDAD/O3Ce1gEu3hsXCRO1+UsK7vFbdxocOWtGz7VoUr8mfEiW1AkI/aHXAZ+KDoejwKNPIFfCM/moPtPQbH7dHRlSe1QYXU+mcBy6EXbJNY+AOUFB2hiTJMOtg9EODSC71jMNb9EDZhbUWT7h8NwWrJSlwBIlDwT+l2qv37pKG+G1aX4ag7eoQXqRlFuMCGdVZBwiXMdFpp2iAps4RZFMUO2bAI+1Qtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CrAFuwqFVOHnaxWlUg4RbzUisjfCzQwR/6oIRjuVxJc=;
 b=hZNz1j4oOtfKMfZJaYxMj6dYQdmkXfoegpBmnEaBX+Gz5c9VyLn1ZJm30WYqfUSbh16ARXCFpsrByChhDG2LoEQFYuhKjL9avpkfJONI/j80/OgvBuasOVLZQjvgIi0XWTwgYOUaxXc95w1YSid/kD0rpEEe6jWM5BEmyNVys2Y=
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (52.132.246.90) by
 CH2PR13MB3736.namprd13.prod.outlook.com (20.180.13.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.15; Tue, 12 Nov 2019 06:19:59 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::853e:1256:311e:d29%7]) with mapi id 15.20.2451.018; Tue, 12 Nov 2019
 06:19:59 +0000
From: Yash Shah <yash.shah@sifive.com>
To: Logan Gunthorpe <logang@deltatee.com>, "Paul Walmsley ( Sifive)"
 <paul.walmsley@sifive.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] RISC-V: Add address map dumper
Thread-Topic: [PATCH] RISC-V: Add address map dumper
Thread-Index: AQHVmFCzGZwFnAd1O0S/YrXUtDW+c6eGRxcAgADJF9A=
Date: Tue, 12 Nov 2019 06:19:58 +0000
Message-ID: <CH2PR13MB336810E7C6FE6754558E717D8C770@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1573450015-16475-1-git-send-email-yash.shah@sifive.com>
 <91f35033-ffc8-cd2e-36f7-c6f4f25be36b@deltatee.com>
In-Reply-To: <91f35033-ffc8-cd2e-36f7-c6f4f25be36b@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yash.shah@sifive.com; 
x-originating-ip: [114.143.65.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7ca85c5b-7e5f-4ec0-39b8-08d767385822
x-ms-traffictypediagnostic: CH2PR13MB3736:
x-ld-processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR13MB37368BA029B2CC751988E9D38C770@CH2PR13MB3736.namprd13.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39850400004)(366004)(346002)(136003)(376002)(199004)(189003)(2201001)(71190400001)(9686003)(5660300002)(71200400001)(2501003)(256004)(478600001)(11346002)(486006)(446003)(6306002)(966005)(6246003)(476003)(81166006)(4326008)(7416002)(81156014)(76176011)(8936002)(305945005)(7736002)(229853002)(14454004)(74316002)(8676002)(52536014)(66556008)(6116002)(3846002)(66446008)(33656002)(66476007)(64756008)(110136005)(26005)(76116006)(4001150100001)(2906002)(44832011)(7696005)(86362001)(6436002)(54906003)(99286004)(66066001)(66946007)(53546011)(316002)(55016002)(6506007)(186003)(102836004)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR13MB3736;
 H:CH2PR13MB3368.namprd13.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: sifive.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xI63z3uG9PovloLo+Mj6HWuCfWrnGjSxpQW1LCAm/vjm8+WNVKC1rn5/6XOoqzdQyuXieLnpO55dgfPdNWHiU5R0Cyn1Nx6EclUQDRNdx5HCTS6muXG0UGNPpaG/XVQVfadq5pI+dmXtbwh9hwiyyyzmbStgKVWoevfe7hQfzIHlIsgvNiWs8r6BpbCqVhustaj9h1mrtR8sDU2DZArptqyJEIxtRiCO4F7ecLRJmqGnL2GFE59mhZKNjAQIuOAPO0DWKfRU582D3GP9qoFnhOQgGGGRp9C1zHPP05ZYqHZo2nUpsDTkLkJ3a/cnX5wyHrMCc9FVsjuWQeIIpg7jbOgjntdWUH0vapFIGOf8tJ7El/AYkedqUc1AtjfwH7Ssv27oDXp7FWEgtqRHoRUu7zPR7cCVu5jl0u659cgL0E9/5bQAYvHMy+gwAvGwAr8r
MIME-Version: 1.0
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ca85c5b-7e5f-4ec0-39b8-08d767385822
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 06:19:58.8833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yjl9/z0HDHZHwOGuvUmkJvOLEWGJbFlq79pDmO0v3aVK8CeXqEVEMFbgKRlpUVIT2kEMh4YcS4sZu51eGbkUVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3736
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_222002_971498_F69D61E5 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.82 listed in list.dnswl.org]
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
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> On 2019-11-10 10:27 p.m., Yash Shah wrote:
> > Add support for dumping the kernel address space layout to the console.
> > User can enable CONFIG_DEBUG_VM_LAYOUT to dump the virtual
> memory
> > region into dmesg buffer during boot-up.
> 
> Cool, I'd find this useful. Though, is there any reason we don't do this more
> generally for all architectures?
> 
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> > This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive
> > Unleashed board.
> > ---
> >  arch/riscv/Kconfig.debug |  9 +++++++++
> >  arch/riscv/mm/init.c     | 30 ++++++++++++++++++++++++++++++
> >  2 files changed, 39 insertions(+)
> >
...
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c index
> > 79cfb35..fcb8144 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -55,6 +55,36 @@ void __init mem_init(void)
> >  	memblock_free_all();
> >
> >  	mem_init_print_info(NULL);
> > +#ifdef CONFIG_DEBUG_VM_LAYOUT
> 
> Generally, it's best to avoid #ifdefs inside functions, it's even counter-
> indicated in the style guide[1].

Yes, I will move out the print logic as a separate function and guard it with #ifdefs

> 
> > +#define MLK(b, t) b, t, (((t) - (b)) >> 10) #define MLM(b, t) b, t,
> > +(((t) - (b)) >> 20) #define MLK_ROUNDUP(b, t) b, t, DIV_ROUND_UP(((t)
> > +- (b)), SZ_1K)
> 
> I personally find these inline defines rather ugly. Maybe it would be better to
> have a helper function that prints a single line. Also seems like MLK and
> MLK_ROUNDUP could be the same assuming the entries in MLK are
> aligned...
> 

Sure, will convert this macros into helper inline functions and will also drop MLK_ROUNDUP.

> 
> Thanks,
> 
> Logan
> 

Thanks for your comments!

- Yash

> [1]
> https://www.kernel.org/doc/html/latest/process/coding-
> style.html#conditional-compilation
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
