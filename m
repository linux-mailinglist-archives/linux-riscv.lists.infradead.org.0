Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD24CB780C
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 12:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WC7jF9r1W6CbatZqngQdaU1YbzAuO0flSwbuxaBbmpI=; b=mjsksyARXiEoPe
	va928PGGiamteMLAk7k/6+GeCwJvMGUuh5hrZw47xyqNnlwkYFtg478UPOwmiO0I70eoxzgSxR7yX
	ropLw5pulRnaO0uu6yl2wOogxVw41jjBjj401WppIr78QFA1LwDaDYYLK/G3xV0C2ORQfNGydatJx
	HMBkcIvV8XHczGnVZlCIXsn+dvT0AlT/i7xa/IJ8c0UboxVfzsl7jhkAtNa10/ywXjXqLSEh6EI45
	C5KYp/QYolz+sV+IrVGJ6zCxFhR1JUpMldcarvvKV5vaUCjoq5dAoZXyAc5dhF0770MUU6Ubl9cKj
	Lq5QXpYaYOK8Toycmadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAu5o-00085D-9c; Thu, 19 Sep 2019 10:55:20 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAu5g-00084W-FK
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 10:55:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568890512; x=1600426512;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=upD7il6sErtTDLzrxT032usSCiQqnhLgYgYxw3cLw14=;
 b=nqj5wtbWAcmpLuRp08yDGyo+lgrWMpYkAELfizotr5tQ8NiQ3RtdR7C0
 XmvxLxPVgdX1Xd8IQHO/pm7zdCKAtO3uPHiHue6jMw6fCr2omtx0QVYil
 lB/0UDQY+JkncCVsbbKAZZ/KMUHtJ20rfVJJYch3dcTllx2LCw0JQIgFL
 G7+3yh/kIg6vp4iBvXnv0kTfL6kRXX7s0/MLl47ar8VbOTS2tYbsJJI5u
 kVMgyZpIiIiL8HePtx3GKos0ToaJpx716SUPomgdkRfWApVpz9heC1Saa
 62ZjsbLSCTLxt/evXzrYjsjO8vyzNkPItgYWcB3IfdrOSll8TmuLWJF7F A==;
IronPort-SDR: YplOBZOq0837meU2DwnPqj6Lb78452Z25SuQJaPPI+lbY95WNV7d2YBm9KhaD4Ys3SgPRK739o
 izM6gAhbcaQXmYfxgtAjQRVVHmRlWvzFe+2Cm95UT6yCsdtmnXhyJaaJ1YKpDZAGwt/0tzTGqt
 UvHGDKAk9XtFK7yBbOtZsaSiRpOWic1PWdioq6Os3nAxTQ2bN0qnWVwd8acI1Ptln9HoN32ajH
 r8Z3D1m3GafEkU9hfexR7pfnYRIq7GqsFWnkooCTPQk47SVayS5m/7dEkna8XeFgxToFz44mwU
 efk=
X-IronPort-AV: E=Sophos;i="5.64,523,1559491200"; d="scan'208";a="119438614"
Received: from mail-cys01nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.58])
 by ob1.hgst.iphmx.com with ESMTP; 19 Sep 2019 18:55:07 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D1lCNShLxOd778QjaWs6XoUZpGN5Pl0hViLqy7oC/nPBAy/ds3oboelnO+Ib7pT6ytxphDguse06FOZvqejbuvM877mD//m7WZmecZb0gDkv0i9lLNumjHa/ZkVO+vCEKPQTWD9eLW9KTaoYNlotmJXjDB2iDThbFL6SR3RGkP3mZKC6zbTfhftu+ivm+idYFmiIrFCmSlK9ayjP7Fdnl7lEmTfO1GRrYq+QVcZnxMxxuLDcXvr5OJydKbr+yNjW66CM1ny+4+NvLsbPpRSt1rC/VLfbOc5A4Z4XXM6ikKSfJD7x0M5Y6rZz1VAmdWTvdJdhR9y+vnAjffEacfVLjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=URrEpFidtyJIY2dB0dDyqiHM92YPPubNmmoSa0pRfY8=;
 b=QsExnMmtoITsdAxztia/rgTbvc8bi7aoDqr8q/Nec457pGXYRLW9pFzPsnwD4Ngvqj3UBMJmN3JeXoV4XzJp9HlfZBmXCXluf7KtobZLZfo18nBE0fU/6R5NAWPz55AoVVfOn9itGYKBEq6CXJFARRSxUczLnK8f2w5kD8zap45SKrEpbs+fovlg7jpbzOnMATfChbhP+Y16wClGkZykkREPVPnRiSwsPkfmnS1ujYIwNx6AeQdHONdbIYWun+jno2jtGBKZo1HmVsjoEiccvBo4amFOq4B+B1sfUqfXX5UKmuG3g7zhuGGMZ0oz4ho0CcbFs6F2g5AMy14Ya1hr8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=URrEpFidtyJIY2dB0dDyqiHM92YPPubNmmoSa0pRfY8=;
 b=dfAe18zouH7UncE04fkm07LbTv9VwDjsmotNoPaoMhLHwiLn8wDPflSkeOnWVDh6n0oKpdQOIMt+5JVbZCELRkZdyGq8WXue7R8qJEBjs0TImLXk9W2wqaJXIPwd+vOSWqjdqG5fEgN9tn+o7SUt0R5mbvgi9JF7z036QQypaJc=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6126.namprd04.prod.outlook.com (20.178.249.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 19 Sep 2019 10:55:06 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::e1a5:8de2:c3b1:3fb0%7]) with mapi id 15.20.2284.009; Thu, 19 Sep 2019
 10:55:06 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, Xiang Wang
 <merle@hardenedlinux.org>
Subject: RE: [PATCH] arch/riscv: disable too many harts before pick main boot
 hart
Thread-Topic: [PATCH] arch/riscv: disable too many harts before pick main boot
 hart
Thread-Index: AQHVZIA2865roxzFk0Oy+d+JtT78nKcy4D0AgAAH+LA=
Date: Thu, 19 Sep 2019 10:55:05 +0000
Message-ID: <MN2PR04MB60618CCE4EAE01B58D25CBCC8D890@MN2PR04MB6061.namprd04.prod.outlook.com>
References: <AMJe39pHTcb4gsI-_Dv-wmR8_x9EbCCN9LKI47j34_8vBKRqzFxPrjmZvBtwV5OU_HcOiRkKUG66xVaNQ8VAXw7Ws0CCK74gpA8pKaYN5wM=@hardenedlinux.org>
 <alpine.DEB.2.21.9999.1909190324250.10826@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1909190324250.10826@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-originating-ip: [106.51.19.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27b41bd2-5434-4597-ac7f-08d73cefd4c6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6126; 
x-ms-traffictypediagnostic: MN2PR04MB6126:
x-microsoft-antispam-prvs: <MN2PR04MB6126FDE02D1F9AB39472B0FD8D890@MN2PR04MB6126.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(39860400002)(136003)(376002)(396003)(366004)(13464003)(189003)(199004)(66476007)(478600001)(71200400001)(71190400001)(2906002)(33656002)(256004)(14454004)(25786009)(9456002)(76116006)(66946007)(8936002)(64756008)(66556008)(54906003)(110136005)(316002)(66446008)(86362001)(9686003)(55016002)(14444005)(6246003)(4326008)(81156014)(6436002)(81166006)(229853002)(8676002)(76176011)(66066001)(6116002)(3846002)(102836004)(53546011)(6506007)(55236004)(26005)(446003)(11346002)(186003)(486006)(305945005)(52536014)(99286004)(7736002)(7696005)(5660300002)(74316002)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6126;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: o0+es2V0vdc9jKogVpbLDwSpomNT93T8OIqKvniwfh4i8p281YE7Ynd51PvuEFz306jyh4oHHK0u03CqlnYHzc5HlXnWdk7Nk0i9iRIAA+tZbGaxx/XCM4kNPro6IVjq7QWY9yL4NaYBGc+f03FpRd0rPhcf6kdju0l7NDkjgbcPUzTNoZrrYxLOCu+9SIf2hAo7hHJ0uYxyRDGTPLvBwKX22yUN7h1hYmonWd+DX7SEPBsjLxZwciDXdwFkqjzM7jAZP6M6sm2NJ5J4LC5FXxNmCbjq3ss9kLcFtRSocKj/2+EYrwB8wrTiJqU9gcnggTwoquywPtAMhcEBAvcqJWPOkU2LoXfd1vGAdFy1BcbBhazeK9dVJ+q9Yafe+2NeVG1Cdr3BX+rXVA3IrTF/hwdVmOCrG2FSesq976doNFI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27b41bd2-5434-4597-ac7f-08d73cefd4c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 10:55:05.9685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tu3wczXBOCJDjwm9wNJP954907pzOxaahKPh31p184mmNk5n6w5C1EVLmvwJ0mrul+aCGHE2cAEyhaJFQeAwBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6126
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_035512_601885_4CC0AD8B 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "citypw@hardenedlinux.org" <citypw@hardenedlinux.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: linux-kernel-owner@vger.kernel.org <linux-kernel-
> owner@vger.kernel.org> On Behalf Of Paul Walmsley
> Sent: Thursday, September 19, 2019 3:56 PM
> To: Xiang Wang <merle@hardenedlinux.org>
> Cc: palmer@sifive.com; aou@eecs.berkeley.edu; linux-
> riscv@lists.infradead.org; linux-kernel@vger.kernel.org;
> citypw@hardenedlinux.org
> Subject: Re: [PATCH] arch/riscv: disable too many harts before pick main
> boot hart
> 
> On Fri, 6 Sep 2019, Xiang Wang wrote:
> 
> > From 12300865d1103618c9d4c375f7d7fbe601b6618c Mon Sep 17 00:00:00
> 2001
> > From: Xiang Wang <merle@hardenedlinux.org>
> > Date: Fri, 6 Sep 2019 11:56:09 +0800
> > Subject: [PATCH] arch/riscv: disable too many harts before pick main
> > boot hart
> >
> > These harts with id greater than or equal to CONFIG_NR_CPUS need to be
> disabled.
> > But pick the main Hart can choose any one. So, before pick the main
> > hart, you need to disable the hart with id greater than or equal to
> CONFIG_NR_CPUS.
> >
> > Signed-off-by: Xiang Wang <merle@hardenedlinux.org>
> 
> Thanks, here's what I'm planning to queue for v5.4-rc1.  Please let me know
> ASAP if you want to change the patch description.
> 
> 
> - Paul
> 
> From: Xiang Wang <merle@hardenedlinux.org>
> Date: Fri, 6 Sep 2019 11:56:09 +0800
> Subject: [PATCH] arch/riscv: disable excess harts before picking main boot
> hart
> 
> Harts with id greater than or equal to CONFIG_NR_CPUS need to be
> disabled.  But the kernel can pick any hart as the main hart.  So,
> before picking the main hart, the kernel must disable harts with ids
> greater than or equal to CONFIG_NR_CPUS.
> 
> Signed-off-by: Xiang Wang <merle@hardenedlinux.org>

You missed my Reviewed-by here.

Regards,
Anup

> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> [paul.walmsley@sifive.com: updated to apply; cleaned up patch
>  description]
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/kernel/head.S | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 15a9189f91ad..72f89b7590dd 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -63,6 +63,11 @@ _start_kernel:
>  	li t0, SR_FS
>  	csrc CSR_SSTATUS, t0
> 
> +#ifdef CONFIG_SMP
> +	li t0, CONFIG_NR_CPUS
> +	bgeu a0, t0, .Lsecondary_park
> +#endif
> +
>  	/* Pick one hart to run the main boot sequence */
>  	la a3, hart_lottery
>  	li a2, 1
> @@ -154,9 +159,6 @@ relocate:
> 
>  .Lsecondary_start:
>  #ifdef CONFIG_SMP
> -	li a1, CONFIG_NR_CPUS
> -	bgeu a0, a1, .Lsecondary_park
> -
>  	/* Set trap vector to spin forever to help debug */
>  	la a3, .Lsecondary_park
>  	csrw CSR_STVEC, a3
> --
> 2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
