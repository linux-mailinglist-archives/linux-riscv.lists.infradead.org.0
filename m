Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131821A2D92
	for <lists+linux-riscv@lfdr.de>; Thu,  9 Apr 2020 04:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=OyYmchljSrYwFWsPWw3T6qqG/SvqdD9msdv6KSY0t0k=; b=dSELYQjSv/2/LYIzUvd+8alNT
	5sx9/okcu7r29RxYBKt7T8Fo644Embmeqp8rwBFnPnbhEtmZl+hUMHvi7xFU+iIQ41L/skZllAnay
	jr9QXBtJ2JqUnEjihO5RoKG7RqJKoqonM4ed0f6h92ih1a9jbh5Ggh6E/tfZxTgtiGq1BNYXV6AeB
	i53IGQD4vVkoEV0Q6I61EFzLhOgtYbtJuh0jWrWxzvgFYIs4w7rbycuSav2ed4TxGjvKocXcFDjMj
	4GPyMLW4HWWtofT8z10JRRvWTxfi020SQ7W6w4DsQf8wi5ZaZmWsBlWj9FpLpFcr9wI6WYfqoMzlY
	ZotHnCBKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMMnT-0000Qx-Tr; Thu, 09 Apr 2020 02:20:03 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMMnP-0000KI-FS
 for linux-riscv@lists.infradead.org; Thu, 09 Apr 2020 02:20:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586398799; x=1617934799;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=YzG7rmqxbgo+xOn9Z51LT88OwKxkgShlhlycuEX6tw4=;
 b=mgOVLnQ2JG4qB6O3WgL3vW5CfnleL7HkPfpO3g5eENfc8pHq4ucW2AjL
 5+y1mQQbKd7LCDLr+f1VCkZM9TC3M9/vCFIf6rWOJzFXKs2aZap+kRKje
 dRSTOkkP6q3+qo/pjsufYHASlFsOO5i1SsXodQlsicxzPzHEBwlQFDdGk
 aO6jWmsJJ2ecJfdPRGdnYxCd3UZDxzgg8VTJQWVFgZvJxVbXV6rZ3YA/2
 4gv9Q9n8uA6wJFraSXP9+BF287/AG5jh8B6hWxwUFCDtUTsD8Vt47yZWq
 SPCUB3+1IYG1nRyUijd5V8iGUX4nTuwV5BvShALKsQfhDzl0H4lD+MkLh Q==;
IronPort-SDR: BJs8kYPdsJspfDFtEJEJ8hSkuyizcrK/Jw34ddHXvbOHEoC/b74gZmDYTIwAqded6sSt8naRbG
 KpO98S/CG4qTJ+ps4wOYdfkaSg51SJwz1kNOWEXxcaPxAqPj7hgJZ6maCVuOWDeCEAHKeu0S0R
 tUdqpHStSZhqCdzv1RuFuZtvWXx8szfS6+Fuse4X01urqDFmNjqrbWV3Gif+iKkyRvLUjq+hgq
 8cKKNnHMuyeIKOxJhZCePCQKr7prZGyyLe8iwfbrhmnKAfQSXV2q6e1/nG16jLJv+T68w3iF/B
 Wk0=
X-IronPort-AV: E=Sophos;i="5.72,361,1580745600"; d="scan'208";a="243485008"
Received: from mail-bn8nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.174])
 by ob1.hgst.iphmx.com with ESMTP; 09 Apr 2020 10:19:50 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjJ0TlwpRKQ+CUxeccR0PfOZC7PjWgW/xrYKZlaxHTVn3HQ2YSGLhuK9yXsMPZA9O71EeEkxMMJfDx9Xq/tfUC4PhYnD3KKEcw3CO7zixmC1fRuo7O0+XVue8Q0NGC05nPWlGqLQRgNFN3DYBqYZfd4zlS2YinmGo4eyxEtzVCFGOZncbIZ7VaZnfR4pAMEHRWXUxQ55wg+1zhIWKVdjN2KvJ/Lp7E+Lf2Z0L7YKfmkRBQ985QSMqgHJsokTtLluBe9rgr9/KeUBnma19MnbziYevyOSexFkLiJatCY/6Y9JdZJc3QqkWHrirT9BIs+KytpSlsd4X1f4h5RXfc0GuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OyYmchljSrYwFWsPWw3T6qqG/SvqdD9msdv6KSY0t0k=;
 b=AaD+kQ0SRWP3uVo0I7dc7LVieLobVJuP7RN4VdoBTL43rO8/Z46L7zyXP9yVOsUhvIyqVOPAtrKNixI3N++wWE0mHOqpl3wOHCWZscqzUPSSxI1MgXTRGlKGpTsTrQv/Tu4yfA68UtE+F5dNMjSkcSG1+hOjnUSH+dZ+lZ5gVw10sMSlQy38ZWRFBnaGABFalKeyPGR1oJB79exvRL9ZN6BQuws6nxQEXX33XrUeSnpqRnX03a6b6L7ZBmHsJg/okO1NJBbzT7+GhQkhFrvl+xyRxYv6WNhlx45WIYF75x+KjukKGSf0FOzF/i7MRt2SOoAUe1Sfg4j2GhRD+ZI/aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OyYmchljSrYwFWsPWw3T6qqG/SvqdD9msdv6KSY0t0k=;
 b=DjRO6oCCuhZ0/T06yI+x5yBg9akL1Ivndy6cdaoWg+k1wfsxjS9J5Ezc/h6hkji6rSkaITh/r7tlOsorxwCu54GMsxJLY8an/rjyDpZ/W4ht0v3eezmzYkx+WszCSZjLx3hkabrLjaiP8GqYwtT9ZtdT8L6HfcxUFKIn4EqIRS4=
Received: from BY5PR04MB6900.namprd04.prod.outlook.com (2603:10b6:a03:229::20)
 by BY5PR04MB6551.namprd04.prod.outlook.com (2603:10b6:a03:1c6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 9 Apr
 2020 02:19:49 +0000
Received: from BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606]) by BY5PR04MB6900.namprd04.prod.outlook.com
 ([fe80::b574:3071:da2f:7606%5]) with mapi id 15.20.2900.015; Thu, 9 Apr 2020
 02:19:49 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH 2/3] RISC-V: K210: Add a built-in device tree
Thread-Topic: [PATCH 2/3] RISC-V: K210: Add a built-in device tree
Thread-Index: AQHWDcb9T8HSxiRZJkuoT6lhoGWhdA==
Date: Thu, 9 Apr 2020 02:19:49 +0000
Message-ID: <BY5PR04MB6900B93ACA9029A404485BBFE7C10@BY5PR04MB6900.namprd04.prod.outlook.com>
References: <20200408165802.167546-1-palmer@dabbelt.com>
 <20200408165802.167546-3-palmer@dabbelt.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 132dc69e-cb7e-4f18-859a-08d7dc2c7ac8
x-ms-traffictypediagnostic: BY5PR04MB6551:
x-microsoft-antispam-prvs: <BY5PR04MB65518EA40212729CD52C6D95E7C10@BY5PR04MB6551.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 0368E78B5B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR04MB6900.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(376002)(366004)(346002)(39860400002)(396003)(136003)(7696005)(316002)(33656002)(53546011)(2906002)(8676002)(86362001)(8936002)(110136005)(4326008)(81156014)(81166007)(66946007)(71200400001)(76116006)(64756008)(66556008)(66446008)(66476007)(6506007)(478600001)(186003)(26005)(52536014)(9686003)(55016002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bfl5PiU7ahNxXMXnUrXAcDZHXbwNdH0KRk97DPeK4BhIay74kfbqIwSvqeawc2dvtjHR3NV1XyYSptJISFAPENubi0yyD42kBH5S/qbNyg9Glj1E2C6ZqQoY5eY9wHB6Ui545CMuOeVtx4tTUtVW4SHokTCsW8GcdtnXMqIK8BxniOEAYKhqgdV2r3iuMXoH73cPI25vrm0zuiaO3RcS6FKCBIOMftMV+oRhESuP1QI2Po48bZF0JI1dTKsSsC66kXSbuORipg9BOh0IkPbzSu9TD1e+IQy9YXmFwilyQMcamC81daHMdNBPDM27dOjWjTZgjzr9vzz00pdw3lIDt7IRe2pVd8B9bQNkW0V9fu3EHYZi2j5083N5tddKDCaD04HuyUAgcqT+An3dAHqTX5ZIOenuoX54NOu0f2soV5iVMBCRJ5RWxYzGjZIkK9Bf
x-ms-exchange-antispam-messagedata: dMpVNlxcO8HP8Yzzf7XHSllUBm5psC5QkKM5SVSob+gQik82RFFdVt5qd3G4CvIWyZkBPB7eoKen+0kCvCy08FmThJVv5Q0hkA6rxpzkyC0xnuZF5B0XpN3z2OLCWO+H5T19PFAxIT7N0scriDdHQQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 132dc69e-cb7e-4f18-859a-08d7dc2c7ac8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2020 02:19:49.0767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vEDJJAd8vvNNhrjqT3Om+I6ATMUI4Ya+3LH5+PP6AQVnSU0O8rplyEOGTMEl4WogoVhPzzUoRtKtrLv+YIVlCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6551
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_191959_613043_C99D3159 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Palmer Dabbelt <palmerdabbelt@google.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/09 1:58, Palmer Dabbelt wrote:=0A=
> From: Palmer Dabbelt <palmerdabbelt@google.com>=0A=
> =0A=
> The K210's bootloader doesn't provide a device tree, so we must provide=
=0A=
> our own.=0A=
> =0A=
> FIXME: I don't actually know the unique IDs on the K210.=0A=
=0A=
OK. I will test.=0A=
=0A=
> =0A=
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>=0A=
> ---=0A=
>  arch/riscv/Kconfig.socs               | 13 ++++++++++++-=0A=
>  arch/riscv/boot/dts/kendryte/Makefile |  2 +-=0A=
>  arch/riscv/kernel/builtin-dtb-table.c |  5 +++++=0A=
>  arch/riscv/kernel/builtin-dtb.S       |  6 ++++++=0A=
>  4 files changed, 24 insertions(+), 2 deletions(-)=0A=
> =0A=
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs=0A=
> index a843100124ae..49e953f45e1f 100644=0A=
> --- a/arch/riscv/Kconfig.socs=0A=
> +++ b/arch/riscv/Kconfig.socs=0A=
> @@ -37,11 +37,22 @@ config SOC_VIRT=0A=
>  config SOC_KENDRYTE=0A=
>  	bool "Kendryte K210 SoC"=0A=
>  	depends on !MMU=0A=
> -	select BUILTIN_DTB=0A=
=0A=
Since SOC_KENDRYTE_K210_DTB_BUILTIN depends on BUILTIN_DTB, you need to kee=
p=0A=
this select, no ?=0A=
=0A=
>  	select SERIAL_SIFIVE if TTY=0A=
>  	select SERIAL_SIFIVE_CONSOLE if TTY=0A=
>  	select SIFIVE_PLIC=0A=
> +	select SOC_KENDRYTE_K210_DTB_BUILTIN=0A=
>  	help=0A=
>  	  This enables support for Kendryte K210 SoC platform hardware.=0A=
>  =0A=
> +config SOC_KENDRYTE_K210_DTB=0A=
> +	def_bool y=0A=
> +	depends on OF=0A=
=0A=
This one is used only in the makefile. Why not use SOC_KENDRYTE_K210_DTB_BU=
ILTIN=0A=
directly and drop this SOC_KENDRYTE_K210_DTB ?=0A=
=0A=
> +=0A=
> +config SOC_KENDRYTE_K210_DTB_BUILTIN=0A=
> +	bool "Builtin device tree for the Kendryte K210"=0A=
> +	depends on BUILTIN_DTB=0A=
> +	select SOC_KENDRYTE_K210_DTB=0A=
> +	help=0A=
> +	  Builds a device tree for the Kendryte K210 into the Linux image.=0A=
> +=0A=
>  endmenu=0A=
> diff --git a/arch/riscv/boot/dts/kendryte/Makefile b/arch/riscv/boot/dts/=
kendryte/Makefile=0A=
> index 815444e69e89..01d7eb15673f 100644=0A=
> --- a/arch/riscv/boot/dts/kendryte/Makefile=0A=
> +++ b/arch/riscv/boot/dts/kendryte/Makefile=0A=
> @@ -1,2 +1,2 @@=0A=
>  # SPDX-License-Identifier: GPL-2.0=0A=
> -dtb-$(CONFIG_SOC_KENDRYTE) +=3D k210.dtb=0A=
> +dtb-$(CONFIG_SOC_KENDRYTE_K210_DTB) +=3D k210.dtb=0A=
> diff --git a/arch/riscv/kernel/builtin-dtb-table.c b/arch/riscv/kernel/bu=
iltin-dtb-table.c=0A=
> index 7ad6fe93b8a6..203174ba6f22 100644=0A=
> --- a/arch/riscv/kernel/builtin-dtb-table.c=0A=
> +++ b/arch/riscv/kernel/builtin-dtb-table.c=0A=
> @@ -4,3 +4,8 @@=0A=
>   */=0A=
>  =0A=
>  #include <asm/soc.h>=0A=
> +=0A=
> +#ifdef CONFIG_SOC_KENDRYTE_K210_DTB_BUILTIN=0A=
> +extern void *kendryte_k210_dtb;=0A=
> +SOC_BUILTIN_DTB_DECLARE(kendryte_k210, 0x0, 0x0, 0x0, kendryte_k210_dtb)=
;=0A=
> +#endif=0A=
> diff --git a/arch/riscv/kernel/builtin-dtb.S b/arch/riscv/kernel/builtin-=
dtb.S=0A=
> index 3d459ad86948..b0fd5ca231d7 100644=0A=
> --- a/arch/riscv/kernel/builtin-dtb.S=0A=
> +++ b/arch/riscv/kernel/builtin-dtb.S=0A=
> @@ -1,3 +1,9 @@=0A=
>  /* SPDX-License-Identifier: GPL-2.0 */=0A=
>  =0A=
>  .section .dtb.init.rodata,"a"=0A=
> +=0A=
> +#ifdef CONFIG_SOC_KENDRYTE_K210_DTB_BUILTIN=0A=
> +.global kendryte_k210_dtb=0A=
> +kendryte_k210_dtb:=0A=
> +	.incbin "arch/riscv/boot/dts/kendryte/k210.dtb"=0A=
> +#endif=0A=
> =0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

