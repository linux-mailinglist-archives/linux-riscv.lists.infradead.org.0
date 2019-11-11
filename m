Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F61BF792B
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 17:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VlNaYK7p4PcPm7tikRSOj47RG/qTqHZh7ouqbjihlbM=; b=H73SEHwshd12kB
	RKHeY5oGfyBb0YEUNZSiEF0wXEv3aZB+HU9m3toZaGo40B9BZqkdE0tLo0R4hYwSuolplOCbek0pk
	HJ0Gv3oSbfkw96XkFX/Pjb63pPkKsHhmHOGJ3Ml0OKu4fQs3X/JsUP+/Ts8iZBIbT2IoOWq7O49je
	+FcPZPZWixwZ3xseMVeZMic25xv96iTQ21p2slf4GCL3hhWBiDaq1kTawJG8WFYm/VUdBxrK9ELtC
	L2lydjKxyohq+61Smi3YXW2xn5URD3hWjqKen650jAv63zh0/qaKqKZy92pUQjAH3KBy1INJ+l+4x
	LOavW/kny+G0M0LrGp2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUCuf-0002jw-S6; Mon, 11 Nov 2019 16:51:37 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUCuc-0002ig-3g
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 16:51:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1573491094; x=1605027094;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j1i1GdBiiAUApn+f5I7B/Tttwyq6lfC8CZRHcfTsuqc=;
 b=gB+MAlggg3teenHc+kDlu/G0jHkAlT7bec91tTbHdOxkiZ2Yx1clzZgl
 FBz5MfL20IFrJWOAEWyKYXq06J/2W8ChN3pol+gHaVYOWJsoVDIh1EGEu
 5g3S3vOCS6e+fTpypEFSSS7UA3WiFGZyQfuDz1L3P/KE8wriNHiJpFfaZ
 iXtueEQV3iDVqLDNMbK7QSr7jXzZXcUIS197h5Y3PES1tLVWUjdJcFt49
 Xmj98T37bzyHzh/eXztHuywh0JuaFvNAIZL0/faDn8Wb+dCUBmmALlVt0
 BYV1w1kihRtsmk5PkrUfwYMGDCwqmTBgTyLUkH0bC7gicj1v0+AZwLAyP g==;
IronPort-SDR: /s0ItR/q+5nfgm3GsBRbiYK1Douw0hGEn2P25+P4Xfi5bneDFcXT8Y4N9nyl9HJLLzoxy4IeXC
 glQrlWsR+4P9/H5RGuEiwBzm5aPoV5nf8gx/ag7mvG8bwGFaHE7RGjx6MLi+lEXcdH2+/Vj7gy
 7A8zKiso6vRQxg4gu7cCaukMszo8Mgl4PMoHbOPhSYzHj7+lkm5ARJQVWO2xhQtSgcRMU6vX8B
 Qs83ha+gLDJudjqzqpgXanshbwV3dXBUlg+8DvcEvs3goATKdKfe22jDnqLcVIkPM5kT8GqyPQ
 2js=
X-IronPort-AV: E=Sophos;i="5.68,293,1569254400"; d="scan'208";a="229970518"
Received: from mail-dm3nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-DM3-obe.outbound.protection.outlook.com) ([104.47.49.52])
 by ob1.hgst.iphmx.com with ESMTP; 12 Nov 2019 00:51:31 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SS4COFiboKjakDh0pBwZfxwaIyhnAasvMNW8O/OareHqLWp2wBD4zzNJqWbl/k8M17Ux+qXQouFHPBrd7KC1TPKkHkaDKEMzbs8bc5tADRgO2GtynHEbtFg3+qYpWMvhNyO86S2rBxqrNzAsaFBUhme3ITteS2XRrkFASvEZyc4yze9N4i6CJmdQG3t++6HKd+QS9Zr7frXND5Tq0QkqrfolJEPG+JSoIVkZnerQh6bMK2ovJCplIfnSmvsjAHfymTksa3BY2so2gEOEEFkT6jiWdqESYgAJ1eub6/eLWlN+y1aPOdMj6i1ajrv3sf4fPWuS5juPjr6yXpBj0+q3LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1i1GdBiiAUApn+f5I7B/Tttwyq6lfC8CZRHcfTsuqc=;
 b=Yx39zNaFQ/5vy/AJflF5X+KpcJQ3CwdXY0iQqhxdv1SjZGGoeucerO48Te4333WAwTf8pWGnxs9oQAz8T6WX5eF53XYreGgMUOrLqyYMtdhVVXDvSYx5RorCox9waNlUPGI6f69oaCsNcp6GhYM8h+cujYsk3wvPebAWhJuqwFGGszKAFvty2TWb7dxN72Av0jN2fqP1XDUlDUMxT9apiVd7VXXSWJFv8wuXLegsiy1bK5pLcoycnC4LdDRRTcqp0w5VVlEImSObzkEX15kWEfl5VdxQovTtes2bo/PFebXtzpct1ilzdPiyYEPqwyiWUOnw+GeCx2nu7tuivgYwyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j1i1GdBiiAUApn+f5I7B/Tttwyq6lfC8CZRHcfTsuqc=;
 b=z4NHDNy1GWioxsAn7+0mKiH2egjaXd80DX/kH5RReXcufIKynjU8Dh1612gXR8NAWnrynjQOQ4P2rsE5+b+gHiSJX8YoHdIfGgWM5OSf9PacubZpsqlUw8KLD/Rg9dUGfcoj1RSi799gp/RLac92/DX5+pmgfA9qzPlApvWWqhI=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB7088.namprd04.prod.outlook.com (10.186.144.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Mon, 11 Nov 2019 16:51:30 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::ac5b:8360:b7a7:f8fd]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::ac5b:8360:b7a7:f8fd%6]) with mapi id 15.20.2430.023; Mon, 11 Nov 2019
 16:51:30 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Andreas Schwab <schwab@suse.de>
Subject: RE: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
Thread-Topic: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
Thread-Index: AQHVmJTPyH8iXg4fS0aBJhwN0J4ATaeGAc8PgAADVaCAAANcKIAAJlcw
Date: Mon, 11 Nov 2019 16:51:30 +0000
Message-ID: <MN2PR04MB60611FB55CDCF6AB5930C73A8D740@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <20191111133421.14390-1-anup.patel@wdc.com>
 <mvmv9rqcxpq.fsf@suse.de>
 <MN2PR04MB60616625B9BEFF634FA680728D740@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm5zjqcwlr.fsf@suse.de>
In-Reply-To: <mvm5zjqcwlr.fsf@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [49.207.51.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6c88a25d-6e2f-438f-9a3f-08d766c766ed
x-ms-traffictypediagnostic: MN2PR04MB7088:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB70881358435C856EFB0997A98D740@MN2PR04MB7088.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(396003)(136003)(39860400002)(346002)(13464003)(189003)(199004)(26005)(256004)(478600001)(6916009)(6116002)(316002)(6436002)(55236004)(102836004)(99286004)(25786009)(3846002)(486006)(71190400001)(71200400001)(74316002)(305945005)(4326008)(86362001)(81166006)(81156014)(6246003)(54906003)(8936002)(14454004)(8676002)(7736002)(2906002)(9686003)(11346002)(446003)(52536014)(476003)(55016002)(66946007)(5660300002)(7696005)(76176011)(229853002)(186003)(33656002)(66066001)(66476007)(53546011)(6506007)(66556008)(64756008)(66446008)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB7088;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fxd/bB2rTKsfOhRCX+Go+l14ELxa7uFzQtad2Ju3HKpZKK3wWNKce0YDgjKK5Z7SSGHSY3/WZPUo/mYpZhWu61Wruh1Pv3Z1qbtbUR67vpxIwPKmcYTpGaMPChICSkgAtn5SJ0RvMuW4zta0gQzV7MLyUManZG2GtuJtJjfx/DmRezcDlaaDdlNAbOFCWKZHv3X6lnu+/Ebkx2uGn0E8XInuXufAFKvwRF9gxJNIC8UU6TsGE8+/zN2lNQ2x0OkcO1imn+D2Sh5pJyBR9k6aez8s9yBr+TxfkArj11iC9HK/z6Soq3+myEhtyW+NwfSTXPPEtm2gcyhcUgZ2N29/Ay1c7WAA+sjozy12lQETPwwcUsRCQW8aTB2QHiTPMDVO1vE9DhREInFdBIBXvAXVhcf/3Wi9eO0jFUIHEuw6zXxPVGmcTTcEa9yujVXNydPS
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c88a25d-6e2f-438f-9a3f-08d766c766ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 16:51:30.5838 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wtzjWfwxgaaatwa6s9sgld8kCUz5ebDhNbbvINDQwZJOQerYXXEdVfOX3AQi+KwNgHKsEvkfoDV6TtGlyP8zdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB7088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_085134_157950_112FBF2D 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: brainfault.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Andreas Schwab <schwab@suse.de>
> Sent: Monday, November 11, 2019 8:02 PM
> To: Anup Patel <Anup.Patel@wdc.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>; Paul Walmsley
> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>; Alistair
> Francis <Alistair.Francis@wdc.com>; Christoph Hellwig <hch@lst.de>; Anup
> Patel <anup@brainfault.org>; linux-riscv@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
> 
> On Nov 11 2019, Anup Patel wrote:
> 
> >> -----Original Message-----
> >> From: Andreas Schwab <schwab@suse.de>
> >> Sent: Monday, November 11, 2019 7:38 PM
> >> To: Anup Patel <Anup.Patel@wdc.com>
> >> Cc: Palmer Dabbelt <palmer@sifive.com>; Paul Walmsley
> >> <paul.walmsley@sifive.com>; Atish Patra <Atish.Patra@wdc.com>;
> >> Alistair Francis <Alistair.Francis@wdc.com>; Christoph Hellwig
> >> <hch@lst.de>; Anup Patel <anup@brainfault.org>;
> >> linux-riscv@lists.infradead.org; linux- kernel@vger.kernel.org
> >> Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff
> >> drivers
> >>
> >> On Nov 11 2019, Anup Patel wrote:
> >>
> >> > We can use SYSCON reboot and poweroff drivers for the SiFive test
> >> > device found on QEMU virt machine and SiFive SOCs.
> >>
> >> I don't see any syscon-reboot compatible in the device tree.
> >
> > I have sent patch to QEMU as well for generating SYSCON DT nodes.
> 
> What about the kernel DT?

For QEMU virt machine, the DT is generated by QEMU at runtime
so we don't need an explicit DT file in Linux sources.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
