Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B40412261
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 21:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RGcLAEAMXhc9QFtzVIWdOxVPdEMKJ39KvBW3uNERxY=; b=m5MKH9LAOdtLjF
	XlYzXQ+9OyvYZ3/NPdBpxhCWy4wmb4oLymhHW37f2fEjGtE4hZLmV2pMD23JzqfChM81iLJ2+2att
	bmpC3MP5jYj2zuG/xYD7esFu54o5qMcjCXGcQ8avZB+S9f2F6ABAvMykLwIHWq31jDXqc3jKMwiB4
	4Oni0q5pm2UN0nsk36zY6zijppN0cv55CJ1ebU7ix54Un9TfRE+N6MEuuN+lcMD6na4RSrddFYGVt
	TWX0G30TNgOtm8DMvw//tUV8zCYqlpob4d5qcyDVyGYY9L9ncGbvD++BOk96hQH+fE4ivYJljsWXS
	Q1kcvD6rvzaHKWnlDQiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMH5l-0003SA-1M; Thu, 02 May 2019 19:10:01 +0000
Received: from mail-eopbgr740108.outbound.protection.outlook.com
 ([40.107.74.108] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMH5b-0003LO-Dk; Thu, 02 May 2019 19:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wavesemi.onmicrosoft.com; s=selector1-wavecomp-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3uRzdcIsJFDRPuamLXXcZJewA+rYe1vjm3/bXx2cTtI=;
 b=UoDeGPVhr6JZ7JNyhlHHRROKNEf0NVYR3XZ6bqIqahCovm96BewjlvjGgoNstrrWx8X2FGIWt1hlA2voOr4yKZ2l5wY2wSULDuWJE5gc4fbfJvODff2SAeUk1Q2LbkGhLrcmCIJnuqlUVwJoIDAarSwHlNhS+xIjPE2/ZV/K//w=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.174.162.17) by
 MWHPR2201MB1022.namprd22.prod.outlook.com (10.174.167.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Thu, 2 May 2019 19:09:48 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::b9d6:bf19:ec58:2765]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::b9d6:bf19:ec58:2765%7]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 19:09:48 +0000
From: Paul Burton <paul.burton@mips.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 08/15] mips: switch to generic version of pte allocation
Thread-Topic: [PATCH 08/15] mips: switch to generic version of pte allocation
Thread-Index: AQHVAPvhYRXSn9iSl02DVsubJsLUFKZYMz4A
Date: Thu, 2 May 2019 19:09:47 +0000
Message-ID: <20190502190945.rrrxfxo3rbhgc3cx@pburton-laptop>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-9-git-send-email-rppt@linux.ibm.com>
In-Reply-To: <1556810922-20248-9-git-send-email-rppt@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0008.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::21) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:24::17)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91079f33-430b-47c0-f67b-08d6cf31be4b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1022; 
x-ms-traffictypediagnostic: MWHPR2201MB1022:
x-microsoft-antispam-prvs: <MWHPR2201MB10220E9C1EE86CAAD5D4533BC1340@MWHPR2201MB1022.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(346002)(136003)(376002)(39840400004)(366004)(396003)(199004)(189003)(6116002)(25786009)(3846002)(99286004)(6512007)(6486002)(71190400001)(6436002)(53936002)(4326008)(71200400001)(68736007)(9686003)(76176011)(229853002)(52116002)(6246003)(305945005)(7736002)(7406005)(7416002)(64756008)(66446008)(66476007)(73956011)(6916009)(66556008)(478600001)(66946007)(33716001)(6506007)(386003)(54906003)(42882007)(316002)(256004)(14444005)(66066001)(81156014)(5660300002)(8936002)(58126008)(81166006)(2906002)(486006)(26005)(476003)(446003)(44832011)(102836004)(1076003)(8676002)(186003)(14454004)(11346002)(4744005)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1022;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: M0XTyWwxLd3yYpP2blH3NYKZ4bTHNO3PM20OCTP+DzZIHyYhQH9pfCtE+IiXKjd8NNv5X3Dd/rlNUfRK8P/qw9sW43SPzJBAlmY9ams9neR9CePfEzRVcw/XEAcVa+RQOKr5ncqBxc6KQ8sWUZS8DNT0t4fZEftl/zkE67d2830JYqraQ8tgl8T3+Q6WjbCnCuleR7jesV4G37l39dVlcmWqv1fOJRWiI4TVnP+xAOOWVX8Xqx8/a0eaGfBME3TFz8Ug1vg8TirGdknFPO8BLK8tR9d77vo2WyCBSDiAL1NF7vixTzpQGrOtu5iwuSF+RtyVT+vXlYbSPuoxprV4UKBEl9qbd4Yipk1eBxldrxqQUW46PMgZGLnbKxjqZfIINmsQFoMzGqH4Z25w00m7AbkZWLv+kToXQh0ohU67Bfc=
Content-ID: <5F06A475B76E7846961ABC0FB62B828B@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91079f33-430b-47c0-f67b-08d6cf31be4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 19:09:47.6013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_120951_466208_2BDE019C 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.108 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 "x86@kernel.org" <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>,
 "nios2-dev@lists.rocketboards.org" <nios2-dev@lists.rocketboards.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Richard Kuo <rkuo@codeaurora.org>, Richard Weinberger <richard@nod.at>,
 Ley Foon Tan <lftan@altera.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Mike,

On Thu, May 02, 2019 at 06:28:35PM +0300, Mike Rapoport wrote:
> MIPS allocates kernel PTE pages with
> 
> 	__get_free_pages(GFP_KERNEL | __GFP_ZERO, PTE_ORDER)
> 
> and user PTE pages with
> 
> 	alloc_pages(GFP_KERNEL | __GFP_ZERO, PTE_ORDER)

That bit isn't quite true - we don't use __GFP_ZERO in pte_alloc_one() &
instead call clear_highpage() on the allocated page. Not that I have a
problem with using __GFP_ZERO - it seems like the more optimal choice.
It just might be worth mentioning the change & expected equivalent
behavior.

Otherwise:

    Acked-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
