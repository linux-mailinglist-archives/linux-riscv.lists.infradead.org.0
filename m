Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D139D850
	for <lists+linux-riscv@lfdr.de>; Mon, 26 Aug 2019 23:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HlibCbndS+6tUVg3fbqbW8+ZGd0T/16Xol3PW+lmTvs=; b=Tcw87tG28oRi3u
	4dl464j/oGJP/KxNHyiNX8D86xqImdaHYhjezzd7fs7lXdj+uODvbmCel7EFpiay7u5iih28489q+
	OSc3Koq/DZnu0NmOqlC1puMnGdA9eV9rWtTVI9U4bthHOeqSAYOrkXFmwiLilE6ZnZyPlKNpWm8y6
	34Oib/mM3qmcMwifezGCZivrT1y9tQfwB6P+twVaN1OrBss2ak9v/dSYJTYS1LGB1PVX0lm231stc
	1XJmcfIcu4DG26jmSVZPx3qfXGNTD06EsVGu0qsC1jHJEM0LPq3jS9tatTPro6Vq6Rt3iBnPDARj1
	8SHCaYULkpXbH0XPjbHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2MZt-0004rL-9g; Mon, 26 Aug 2019 21:31:05 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2MZo-0004q8-Jo
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 21:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566855060; x=1598391060;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5BJupO2P2MXByAB7nW3DTmi/HATfgl2wmvbsUkO9Q30=;
 b=F2HkVofoqaU5m4bWHhEqdjleZE7qztNGBK4oITmGD7sSW76kOuee1st1
 xRXq4sw8SzfJYpYbabq8zLw9jymDeVvwGdJK/vkzIFDQPsoKf3FwpSr5w
 7NcjRfiiQeHowvYxB4cog/vM6Yp9qwlfXoJllHNiq5VYjkMq5z7utiFpF
 Wp4iIRzuWWjtC7yb0pjFBsGw7wRyi6KUtrksHsHYryxFRag2GqPxD83x5
 ja7qBKMEE3WkCwQvVYuSJabQ3ixGES/4MtDZqamj17Qi8bBR6KbwyHQLp
 cC0CloLbeLiSUCiPKL4AALbN1bJWnD7SIH7CEXh1TTkVPEZXqrhunKPFa g==;
IronPort-SDR: 9T1w6kcOFBskE180WkZ42D98KBypI25kNMM0kPusZcrXy47w5+K/Kl2GwqO6RK79Q+wUafUOlv
 lhIU+StDcKAxYd8tY389zs8lTI4n+sFCOSCOX6fWrgc+phIYnTIDMuIgs/M/WYXYubaV/rhZ23
 mG3X11WL5PBgF1+aaE3jfEX0UTWZUj9V9pFy1npRXtoD29MfRPnTAtZ02Uac0TP2YBgARWVXIA
 oCZ/U/VcKjKhdusj4j647yWZtvAav4s8a09rSf0+ruO7MQdGvnQLr3tqh0fFntI9J+HdVlkY1V
 0pA=
X-IronPort-AV: E=Sophos;i="5.64,433,1559491200"; d="scan'208";a="223351873"
Received: from mail-co1nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.51])
 by ob1.hgst.iphmx.com with ESMTP; 27 Aug 2019 05:30:56 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ligIkPFpTz/773MnDzsqR4JwUzK/kh0/x3D44pEO9+9ZY0hMO7ul9V3TUlZ6GrcbM54VNczHvI19YS85FCDjG9u3cG2OObodVyEUmWGaSauvffvKU04OId3hTJgCfzVdwBa33/jkPeEQYGuL2QnuTfgtSpAfDmgBmP3vgICqO4CzOY/fU9z403JPC5dn6qEEmJSjA+lA7SA75hwlr+XU5Z1Z3oUw6J2ryc4DDzZeE7pXbpjbgEFLGeW+S6VMhqLv/L9vmzmJOIkhLRmHKFsFetw7d9OrbNL+VCykacT4HWg7wV1B6LmwOT+xF4ikedGC1ldsDBUCUe39rg0E8vsOqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5BJupO2P2MXByAB7nW3DTmi/HATfgl2wmvbsUkO9Q30=;
 b=dz31MgY+0V+sKRAYGoEJSztab6o8Pw5fz2IX1Ks1+p5+VlVVCA2f4KxTGO/Pt7WrRvso49D0M7F523uzxMHeh+aVlHgcASyAhMsee+v9qTwuQOubEZpEZQgv4oa1dJ5UVJ1M7RQ3axLfzwK3LNCG/MHutMRCbCr1WzStTOhIH4LpXba2d39LKc+euCIIYkV11gm7rp7qw6aMJHSxTDX1ogNwGK9ZtYsLb9wbahPaQPDcX2uwrQnR9oOSnqDFQPxgjg342XSucVa6EztyIuDFxhznt/yf96DKCceK2q88I5pFKcAstmD1MUNHgRQC0x76fn9JXyn0Z/iuwrsNrC6ksg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5BJupO2P2MXByAB7nW3DTmi/HATfgl2wmvbsUkO9Q30=;
 b=L0B5m7oqDlECS9+QR0mF+hHrZVWZoLWw1Q2APhRvDOXIbOCyaO6hZY5A760kJ9w/xPMF/qZZM4ZZGCYlfRIc4kcfEsKmoZcBZU2yyW12QqzpuVjmPe7T4r/sexQ1CFqbymImpX/a4Awi5APq7KCwArfQitbxYsl2JSXkAme+NJY=
Received: from DM6PR04MB4908.namprd04.prod.outlook.com (20.176.109.81) by
 DM6PR04MB5099.namprd04.prod.outlook.com (20.176.110.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 21:30:56 +0000
Received: from DM6PR04MB4908.namprd04.prod.outlook.com
 ([fe80::99f2:1c81:ffbd:c597]) by DM6PR04MB4908.namprd04.prod.outlook.com
 ([fe80::99f2:1c81:ffbd:c597%7]) with mapi id 15.20.2178.022; Mon, 26 Aug 2019
 21:30:56 +0000
From: Alistair Francis <Alistair.Francis@wdc.com>
To: "anup@brainfault.org" <anup@brainfault.org>, "palmer@sifive.com"
 <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: Fix FIXMAP area corruption on RV32 systems
Thread-Topic: [PATCH] RISC-V: Fix FIXMAP area corruption on RV32 systems
Thread-Index: AQHVVCiwkrMhoC888UyZ9cBEv4GnHKcBOo8AgACv9oCADBSMgIAAAq+A
Date: Mon, 26 Aug 2019 21:30:55 +0000
Message-ID: <90b3e0574528bbacc0392079d4df94a1b377f7ea.camel@wdc.com>
References: <mhng-7a475a74-60cb-4e3f-bcae-6cd6299bb173@palmer-si-x1c4>
In-Reply-To: <mhng-7a475a74-60cb-4e3f-bcae-6cd6299bb173@palmer-si-x1c4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Alistair.Francis@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c40e6d9-64e4-4854-db22-08d72a6cae00
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5099; 
x-ms-traffictypediagnostic: DM6PR04MB5099:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR04MB5099CD221EAD80322E4B2DCC90A10@DM6PR04MB5099.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(71200400001)(71190400001)(66946007)(66446008)(64756008)(66556008)(66476007)(54906003)(81166006)(5660300002)(2906002)(14444005)(256004)(91956017)(76116006)(14454004)(36756003)(305945005)(66066001)(7736002)(478600001)(2501003)(26005)(316002)(53936002)(6512007)(186003)(2616005)(446003)(486006)(476003)(11346002)(86362001)(6436002)(6486002)(4326008)(76176011)(6116002)(118296001)(102836004)(229853002)(25786009)(53546011)(8936002)(6506007)(99286004)(8676002)(6246003)(3846002)(110136005)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5099;
 H:DM6PR04MB4908.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fRH398s6NbXdlxBNfZ7uiOcGR2VYCFUu5biJkgXZ1FbLl4XcdZ8ddZqg98Kz9t0H4Mmn/m6UpMWT3yu0nADTuXlb0AB0ZzJIxIWlU/9x4cFsvrrtE/4d+8Sl7on62AzGSX2xtZH1+8Ya6GWzGVzGFNNg/w2Td9jM4y7HpchSCOWg4sOox6jc2C36TngX8nx8mLI0wwKOt9KW2EUnVeJaub/VpdTheABa0xaEXyprCheIoKyP01/ybhZeEo3NbdZlNisIrxwMflX1sMm5I0t1pkE841i2tDzhgkXDKM8Y9j4tM/sX/mEBUyra8iy1dHXhyj/06E4zz9UTqiePcN+8CQjyI4Xfm+QplzIB/+IBYEmHjrKB1b3XkUKThBVA2UDY6eTubSizQMEnGxw/wAeF326F9pK+eXqZIsDoDGfxB8w=
Content-ID: <0844F0D5BBE00A4F902ED4508409B335@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c40e6d9-64e4-4854-db22-08d72a6cae00
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 21:30:55.7972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z29GVfNUDD1J/FvD0N9gWzBKlwPnidaKy9RFG5z4HrgEWLJp6y2EZeSGaz2As/ym3HFNnG00pLi8dUHcTsAcU66J3IY1N+Y6KUcvLS6HSQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_143100_827529_1BEEAD55 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 2019-08-26 at 14:17 -0700, Palmer Dabbelt wrote:
> On Sun, 18 Aug 2019 21:49:01 PDT (-0700), anup@brainfault.org wrote:
> > On Sun, Aug 18, 2019 at 11:49 PM Christoph Hellwig <
> > hch@infradead.org> wrote:
> > > > +#define FIXADDR_TOP      (VMALLOC_START)
> > > 
> > > Nit: no need for the braces, the definitions below don't use it
> > > either.
> > 
> > Sure, I will update and send v2 soon.
> > 
> > > > +#ifdef CONFIG_64BIT
> > > > +#define FIXADDR_SIZE     PMD_SIZE
> > > > +#else
> > > > +#define FIXADDR_SIZE     PGDIR_SIZE
> > > > +#endif
> > > > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > > > +
> > > >  /*
> > > > - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
> > > > + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> > > >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> > > >   */
> > > >  #ifdef CONFIG_64BIT
> > > >  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
> > > >  #else
> > > > -#define TASK_SIZE VMALLOC_START
> > > > +#define TASK_SIZE FIXADDR_START
> > > >  #endif
> > > 
> > > Mentioning the addresses is a little weird.  IMHO this would be
> > > a much nicer place to explain the high-level memory layout,
> > > including
> > > maybe a little ASCII art.  Also we could have one #ifdef
> > > CONFIG_64BIT
> > > for both related values.  Last but not least instead of saying
> > > that
> > > something should be dividable it would be nice to have a
> > > BUILD_BUG_ON
> > > to enforce it.
> > > 
> > > Either way we are late in the cycle, so I guess this is ok for
> > > now:
> > > 
> > > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > > 
> > > But I'd love to see this area improved a little further as it is
> > > full
> > > of mine fields.
> > 
> > I agree with you. We also have Sparsemem and KASAN patches which
> > touch virtual memory layout so it's important to have virtual
> > memory layout
> > documented clearly. I can add the required documentation as
> > separate patch.
> 
> Documentation is great, but if we document something that is broken
> then it's 
> still broken :)

I'm confused here. What is broken?

Right now RV32 does not work with the 5.3 kernel and this patch fixes
the regression.

> 
> I think this needs to just be redone -- we keep running into issues
> here and 
> fixing them, but there are probably more issues and it'll probably be
> faster to 
> just think through the memory map than to keep fixing bugs as they
> crop up.  
> This was one of the areas of the port I didn't rewrite as part of the
> upstream 
> submission process, and as a result it's pretty crusty.

I can't speak for rewriting the code, but that seems like something
that should happen in the 5.4 merge window right? With RC6 already out 
this patch seems like the only option for 5.3. Unless we are just going
to drop RV32 support from Linux in the 5.3 release?

Alistair

> 
> > I think the best place to add ASCII art would be asm/pgtable.h
> > where all
> > virtual memory related defines are placed. Suggestions??
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
