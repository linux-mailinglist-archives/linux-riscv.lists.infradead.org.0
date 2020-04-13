Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F43A1A6160
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 03:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=GxoY5c1tLMExR8t3ViE57V/SKlZ1VN8+UFqZLQkI9x0=; b=VCwZEopzop26/yeZRUyufIaeg
	75aKwPtLmn5/GFeDw8oKmJ6cuinCvka2XlwPxtl2YF67HCZqT5381GpC1Y8jyh/Fu699aVfDqIbig
	8q395pDeYCGeo2NY3oD1A7oZBLDlx6bomNswencRjuoasL7R8D5nJJAfxhhv6RRkYnPImnco9/qYP
	NOy5/5ydiAmWv/qlk9yniVnuYpuiis0jM/+GVPzdxXcq6FrW45uV8irjRam+nFeJOpV8X8PM9bvfX
	9RtNGWZ/mjtS/nArypwLkpPByzwiAl/paDXbhnZsYZc27s+sZXUgdBNJozPEzv908Dr2u3AtM4luA
	LJo4vzqNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNoAT-0000is-7c; Mon, 13 Apr 2020 01:45:45 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNoAP-0000iL-CZ
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 01:45:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586742341; x=1618278341;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=V8zJ4/EK+h5w8PveNuR1C/LeMBFXlsi3l/GvxD/zCtw=;
 b=OUD1xtnhPidGEBAFb/aGzC4gk/HpAe9PYABLDEOoBOvuA6xZ17dS8ecZ
 K/su8gveyQRU3L1g0pPorvOgegxIcL63W6U6VEnSRFECTknX4tG/z9K2I
 x3H2k/vkmyYfiySHJjb1qLHpTbLwXigHaPPGFO4gzuSNJbzwQ19OlFyui
 g3zmfBDcUMDVtWwf4ShTTjEpjJpobBQYMTSI14aPeHAZcJTncesmjPSbh
 39nI0qM1u9TSxEikpu2M2IiyZEGfUA9wh3Vd6KehQ8Xn9k/fnyf7AvOdx
 uihO5BxcZ9+tit2KKlp7f44LMnA3qNUbiPndTeI/BgCQcmnJJz26gunEa Q==;
IronPort-SDR: xN/a0LQDTMZ/Q/7dXu/nY47CL0ZQuPMoWk3PV6OLkQvk0ZfTo7crILdVYiFvJYcypoUleaOGTo
 B2Xnk5H1R7dSj0RWbET1nsm+fhorVnkNGr0FVmFmVhJS7nejxwdBzwPgQoKWf3mIjwYAB40Y71
 Pqa8UbchVyqZcmEaduQAuIUaObNhT0FUszuhk7qshZQmeLqxxkGF4ojSIySfv1/0oXHJ3bf/gQ
 h8Y+up5clGBguDE2PfGXIUrJVGqLhnm++NM4+3oeev8zYdH24jIFkDcQXe75Et41A5l04nDL1w
 Cpo=
X-IronPort-AV: E=Sophos;i="5.72,375,1580745600"; d="scan'208";a="136611165"
Received: from mail-co1nam11lp2169.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.169])
 by ob1.hgst.iphmx.com with ESMTP; 13 Apr 2020 09:45:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mn/Wla7ysxfObyNfhLy0pJXfGFHChQ0XFYzXVUlpzfxGuqYiSCx/Hc4kUZMQizvhQZ1v4MgKcTWf9WtmpOR2ZREvxvhG3Hea9ZZJJQWCD9DEwQl4VUGa0DgaGPtlIyZ1ElAEXH/R75zZ8z+eOobg9hQL8Ysc+XZg3eeDs2D3uPc2GFE4VCv568EU7O01BxixwnjrXXibM5ohVA7SjGQmiJVSvIj+JPuN6S8G/I+GSRQf5Ubf4ypyZ5r9OlW8eWVDQr/NJpt7qJlO2K6Cg3QINDG+aVnGxlcsvUGtdTGzmyeFJVufbmYo0pOFSV2HqzRhBr8MCoWCOhocV5NQlLGX5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxoY5c1tLMExR8t3ViE57V/SKlZ1VN8+UFqZLQkI9x0=;
 b=CBNMr6u/YSWikXU2UxjhkmNxg3pG6ceydGanZVXmfWlM0m2Dhvrh8t8j87Ywd8U14b+E1AI/UQ0zU2DL87Rfps9R9t8muH1Gd9HtrzJwykGVBogpPbXRgHCWbHMfYt4rUX/S1rzcGnuGSDGAb9eXaduMCuSnD07/kwkmQ1DFNY8BU/J6VtulPaMQSzlCtKjhvGE4529GjUPnMyyejOIyigzUIUm6Jc2S58aAwvr2raAMRfPx8dyPqFJKuIDxY6hdichY21IXKv1y+h07/g91Tmhw6Ue4015612/t1sJofA5jmBO90OyBCJXPjB5+v9eZwJxcpU9epE+nOhUP2I+s5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxoY5c1tLMExR8t3ViE57V/SKlZ1VN8+UFqZLQkI9x0=;
 b=0G47bf29tfYeOMoc9Jum3AwfupycF7+q8aL6CaYj7vcZsreJZOZqQKzcZaRcYbQo5kXSm2/MGjyySXFYxuDD9ZhlUL9gRN0zxxhuu5/ZgiJ+/uukRKVYa4ZjEqwvt/whAc2xnhqZTBYOZxrrTEoxKvQMUpRl3YdzaGy5Fy88ntE=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB6279.namprd04.prod.outlook.com (2603:10b6:a03:1f2::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Mon, 13 Apr
 2020 01:45:33 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%5]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 01:45:33 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: Re: More K210 Support
Thread-Topic: More K210 Support
Thread-Index: AQHWDcb76GCscyiYn0akBatA+Yggcg==
Date: Mon, 13 Apr 2020 01:45:33 +0000
Message-ID: <BY5PR04MB6900E87C1FBBC6B50006627FE7DD0@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <20200408165802.167546-1-palmer@dabbelt.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [60.117.181.124]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a7cefbe0-2d4e-4f7f-7069-08d7df4c5b0b
x-ms-traffictypediagnostic: BY5PR04MB6279:
x-microsoft-antispam-prvs: <BY5PR04MB627903CBF6E232D3755E6DDEE7DD0@BY5PR04MB6279.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 037291602B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(136003)(396003)(366004)(346002)(376002)(39860400002)(110136005)(8676002)(86362001)(316002)(26005)(53546011)(91956017)(7696005)(81156014)(6506007)(478600001)(8936002)(7116003)(76116006)(55016002)(5660300002)(33656002)(71200400001)(4326008)(66556008)(66946007)(2906002)(66476007)(186003)(64756008)(66446008)(52536014)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w65o8OEN6EvVbi97idYe3Y7ljU3YrKAqHQTOib8ROspXK7h5bWZ/m4Sj16C9pJ5yjAJv5IcAzoEERFc0zGn66dDy9gXh4IaUWM/dCY3qhW/zpTmW6FJ3RQBW/pKjeZ1Pa1XaGUzLrfr3YGwe6o/IlBFdiMkCMU/pVqrqVuzGOn5CNfEEd/MRjAkHiOecxMypO+6fJt2qAjZ2lFEWlAJUqNW58/7QY348mzBzC1iKwAmtc1nKKKQO/L1D0HqILep0aTXBICsKixZFY1c6ax5Qk+AnlR9jho2PCR5oV/MZ3M05pX2anc8cg5ZBvimXWaXBns6QjYMin7dhNs0QtnI0W1M9d010AI9/PPlChypZwXPajcu3BwL143whdHKCF01QmwYMOYOY/qG+I84lh5zml1PyPuqg+5OyPeRfsqJMwDmCWjQm+mLQrfe8/ev8INlT
x-ms-exchange-antispam-messagedata: 9T0MkF7k72eTd+TuAJvcgD6ec9tpR6d4J97jtbdW0WQ04HgWXoRnUVM/++4IzG3ppxKiCs0ePs0LNKILuSdaWCw1pG/AogUFIrDOjZFEiW58mKwdrtUArtTCWspv8Br30TKYiav7cKUiWNOeTPR1Pw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7cefbe0-2d4e-4f7f-7069-08d7df4c5b0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2020 01:45:33.2885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WFcIPomTRiKPemozUwoy9yeRaMEE+MRymmE4sFeZKTEtKyYjPd4Bg1rIrJ8L7JC4S4oOSQ8DcrtSD8FAAJP6QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_184541_596833_093AC452 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kernel-team@android.com" <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/09 1:58, Palmer Dabbelt wrote:=0A=
> * Builds a table of device trees, keyed by mvendorid/marchid/mimpid.  Thi=
s=0A=
>   allows multiple device trees to be built into the kernel.  I don't real=
ly=0A=
>   like maintaining the two lists (one in C and one in assembly) or having=
 that=0A=
>   function in the table, but it's the best I could come up with.=0A=
> * "handles" PMP traps by just skipping the PMP setup phase.=0A=
> =0A=
> I don't actually have a K210 so I can't test any of this.  I also couldn'=
t find=0A=
> the K210 identifiers listed anywhere online, so someone will have to dig =
them=0A=
> out of the board.=0A=
> =0A=
> I also didn't spend any time thinking through how we free these device tr=
ees,=0A=
> but given that .dtb.init.rodata already exists as a section I'm just gues=
sing=0A=
> that's were we're supposed to put them.=0A=
=0A=
I cannot test anything yet. Something funky is going on with boot objcopy/I=
mage=0A=
size: I end up with an Image file (and loader/loader.bin) that are 8.5MB in=
stead=0A=
of the 1.4MB I had before pulling in Linus tree. rc1 as of this morning sti=
ll=0A=
shows the same problem. vmlinux is 1.8MB vs 1.9 MB before.=0A=
=0A=
To check if my toolchain is broken, I recompiled the 5.6 tree I used for=0A=
developing the series and I end up with a loader.bin file of 1.4 MB. All lo=
oking=0A=
good. But there are changes to the vmlinux elf section headers which likely=
=0A=
cause the huge final size I am seeing. Will try to dig into this.=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

