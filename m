Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D011224A
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 21:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgisuWxfT848ln9Yivm8NcvcdEZqAaQR5Vh+IHrcF84=; b=rhzwMlcdCBSDtd
	gBIRH5lByXnf+QAXhhgKP9BD/iORUaWcaSqnrPx1LcBgMHsKIogfIkDH4FlRF/q0bp1kuyNpk+OSG
	WzXu+It161sciF7HSZGSvHMyyXkN1Q22uFfvBdye0QD4wjMgECWJ3Wp3oWCsJuDXuRZyl/YyURCy7
	qeyqjcol1NNN23jUbxUwTZcycF+/EkO9I3JX2upFzrrxG4nU/VM8ho8rUXZTlvnYpuaKUqZ+kjhvt
	3jA9831iUwbNZtUdfNN2Eqbc+Ky3x/MdeYiLbS1r1Bt5HAEA8In2FCeFBdFEtGrNU0b/fFkd9xzPz
	TXf3B+HyhVQGNGeINSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGzV-0000lc-Em; Thu, 02 May 2019 19:03:33 +0000
Received: from mail-eopbgr770110.outbound.protection.outlook.com
 ([40.107.77.110] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGzH-0000ez-46; Thu, 02 May 2019 19:03:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wavesemi.onmicrosoft.com; s=selector1-wavecomp-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5vP4AkogQ4iAySrvubINU0ejgtxmv383VKMfJfN8uU=;
 b=FGA90EGc7npOswhWXNdDBkBfgDW/YA/wBfpJCQnsBf1uiEWNICbqv2coEb6dq+1Y4hICqJ/nl2A2VwS/1ZUlMbldSFF6fWidwS8+avtmYwhLrkNREz5iMe6RkM6Tlq/OsbEaA56KDIXpnYm3xhcIZZ9CO5fMLLwwWKgv9G3slaE=
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.174.162.17) by
 MWHPR2201MB1216.namprd22.prod.outlook.com (10.174.161.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 19:03:12 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::b9d6:bf19:ec58:2765]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::b9d6:bf19:ec58:2765%7]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 19:03:12 +0000
From: Paul Burton <paul.burton@mips.com>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 01/15] asm-generic, x86: introduce generic
 pte_{alloc,free}_one[_kernel]
Thread-Topic: [PATCH 01/15] asm-generic, x86: introduce generic
 pte_{alloc,free}_one[_kernel]
Thread-Index: AQHVAPvLitxTe6gGvUam7UWTEvfeuaZYMWYA
Date: Thu, 2 May 2019 19:03:11 +0000
Message-ID: <20190502190310.voenw3pwgpelmdgw@pburton-laptop>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-2-git-send-email-rppt@linux.ibm.com>
In-Reply-To: <1556810922-20248-2-git-send-email-rppt@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0064.prod.exchangelabs.com (2603:10b6:a03:94::41)
 To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:24::17)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5584fd04-cb54-4e5f-1234-08d6cf30d264
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MWHPR2201MB1216; 
x-ms-traffictypediagnostic: MWHPR2201MB1216:
x-microsoft-antispam-prvs: <MWHPR2201MB1216E79B37D05304A7091D29C1340@MWHPR2201MB1216.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(136003)(396003)(366004)(376002)(346002)(39840400004)(199004)(189003)(186003)(26005)(44832011)(6506007)(8936002)(256004)(3846002)(81166006)(446003)(486006)(11346002)(42882007)(102836004)(476003)(76176011)(14454004)(81156014)(478600001)(6246003)(99286004)(229853002)(25786009)(6436002)(6486002)(6116002)(8676002)(7406005)(7416002)(5660300002)(4326008)(305945005)(6916009)(54906003)(58126008)(7736002)(53936002)(386003)(66066001)(6512007)(52116002)(64756008)(66446008)(1076003)(4744005)(71190400001)(2906002)(33716001)(66946007)(68736007)(66556008)(66476007)(316002)(73956011)(71200400001)(9686003)(41533002)(142933001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR2201MB1216;
 H:MWHPR2201MB1277.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N7pT2D98deMj6gdm9WFDpL/BCReV8Dm4aZB8yOnNr59VPnbj8T7nWBk4fHyWTOq/nmQqMsk83NqSPJJj8qUO7BE6KcNSyMoVbL/0lMquZu7SRYLvDnMKwUxj1JVI/AaUgM/9WT/5ybmz43VEdmyDQv2ljwflxCkVRDT/Bsg90HjOr+I96N/C54k5ibt/TQI8bjY0DvFTHZZRKLHscLDWQrRmiviTh8DROTiodXO6VyPG4wGmPWVgfi+k87s15NnPE+sue9LVHDnHyHDdrW/ci/n6q0a4v9SemaPZBbDVFX9ZHkeAosVjMqd10ZuFYJguVHP31ldjeAcX5ARFt0UfwVozYTru4XPmC1f8l8kWNHlop4thdTqeXvnreCI4Z784VquKXPUdBCVprKJVKSShs+9KhxfovWtW5UkuYQzD1dk=
Content-ID: <FEE563E1598F8E42B0910251031F2C94@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5584fd04-cb54-4e5f-1234-08d6cf30d264
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 19:03:12.0171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_120324_140096_D965998E 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.110 listed in list.dnswl.org]
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

On Thu, May 02, 2019 at 06:28:28PM +0300, Mike Rapoport wrote:
> +/**
> + * pte_free_kernel - free PTE-level user page table page
> + * @mm: the mm_struct of the current context
> + * @pte_page: the `struct page` representing the page table
> + */
> +static inline void pte_free(struct mm_struct *mm, struct page *pte_page)
> +{
> +	pgtable_page_dtor(pte_page);
> +	__free_page(pte_page);
> +}

Nit: the comment names the wrong function (s/pte_free_kernel/pte_free/).

Thanks,
    Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
