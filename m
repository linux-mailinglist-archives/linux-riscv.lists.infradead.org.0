Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF45C19BA43
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Apr 2020 04:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=xvD4u4pPwCPSM/yEtMtM6AlDHbZwTsrXTrV5UDEMYkc=; b=KqL6Sbt2GUP2jpRJTqn/dmBqD
	KK0s84CWPJi3b1m0+EI2sOYiYhJpLb6bCWHKh5m6fsoPMJ+9FmorXLyYIGaepFYJ7V1K/VwkypDvp
	wtIGZRAxnJyFJ5B3CUIXzGn/m3aFzemNk/mZIVB2zMXEuaVrzjLATZmTb7EmdwQgq6KtqoLY1nYLo
	WKJf5oO78M4A2BmErtaN8HtYsDWf4kZIzTBDeUl0RN7ry/WbdaA7Fd5ev8fQOUbAQE0KCgN/HVGay
	966gBqgGFTfkzyKwd6m2b1A+UbYCc1qAO8RAMUs+FVLZ2S4wf6KLg6V5p73Xg+VqHbQy/nV1Dsncp
	qAiLMANLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpWp-0007Ls-PQ; Thu, 02 Apr 2020 02:24:23 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJpWk-0007LT-Py
 for linux-riscv@lists.infradead.org; Thu, 02 Apr 2020 02:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1585794259; x=1617330259;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=doGAoNuNG9Vt9+gCh9laYMdTkw/ZB9/7WEsr9P+jPck=;
 b=f2qycnNdQLZycsaKe0r/i9K3FsHMgsfse/VIiFiwC3sasXG1ybZjZ4t7
 Ls+9ST9qe2o/WsUoWPCPjD2Q/jp1O2MKoUXWQMVQ9L8gqyRGSkKOj4KZ0
 ngl6iwAQNtx0x830rFKlKTiRKmLEqJFMyBgk8HcFXzOAYmJse2ps1NuI8
 eLdY/+RuHIM/27cBgTNf9rVf7l4xQqe+KYGSIJBNRrSdlBZqeGApa8OmJ
 6NMS0wysDKHGc9OZutQ6TJ4i6p0SjwTzKlYpst0wve308WQFcpf/d8DQw
 kmYOXmFaZ5KYfVB/VzQs06XRQ9PPFobD9ilVsZ0qTersEWCgtzAteTx7I Q==;
IronPort-SDR: 2Dkt6LbU0J5BDx4YUTYB1dcahjOX71NWF3ji5WIkgaUBLyhBE+cIZYwgWDXyyHyNBaFsoKo23K
 b++dRO4KcsA+0t2Qi3o0paipQxDORGUoVaI7vWjRUsdoXd7I2KL4u8V++NL3bZNB4Ly+emRGbF
 vV42WtQxKameeebo+qk39ea0ccW7iJ83A1deg1hUkjhE5nWW7qM4e7UpcT+iEaXWAP/4JabL1u
 YE+J93inKE7juoIcEyIhTlYqhsZWTmhIXu2Wib/7vIybVXD8arrB6o+X4ZdTzPGOaa4TohSzh/
 V94=
X-IronPort-AV: E=Sophos;i="5.72,334,1580745600"; d="scan'208";a="135825487"
Received: from mail-mw2nam12lp2048.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.48])
 by ob1.hgst.iphmx.com with ESMTP; 02 Apr 2020 10:24:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDeVzR/p5Bir+4o+0YPKDuvXhkrspGKTkIrqYYJOS6IzCdbxcN8wheYr0pl5wbEegj2ChoWOTdsuyp4s/L2BvAy+3yBcTFDzm7xfNJm/ttYlOlnRE2wG8W1zDNhx+T934z4EOLGW2KdLoHmdlHWumWvJi4yNQLIUYjNVut+NUDFCjcGn+EQP6uNx3LD8IOo6QGX8rd3ohMA2ph1x5tZH230njwKmTS78fhoc0kNC+Zj+2ypnrg2nzfo5HYGK/GQkV2WuKcj0MhtWZxl8wDGF13P28Nz5zlEJnI9HWEkLNkZWOfJWAOmsuqtp4v5yN4JRihuheTqAbTWgC55Qf4itfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xvD4u4pPwCPSM/yEtMtM6AlDHbZwTsrXTrV5UDEMYkc=;
 b=fjG1JOw9eYg9r0bl3miGVJRMljmws3Q8pxDjsroj08MnkFAxziNRpgL38PJzDZxois//rrKxX2hnOiDxpqRAqlyA8ayxl3+Mh6uODHAFGRwB2Q3/DWxdrS5qg4KKHTcLVgFc/5ulMxNE1z5YZb9yUWdfOOFlqShHyfbJ95TkD6h9X2UgRigYI1UavwYMzTOPSknVFtFORYgy/EtPrAgCF4t/Aj6Vga9Q5OYWypFDqkciA7T34xAoXDtrw5oxeuNWWkB1Hc6udC16eHFiAifKQ0/68S09CW7otv/OAOBeDuP7i3TQZPi9JkNH8ufW8hG5M2nK35OGekj+ZikjFquXZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xvD4u4pPwCPSM/yEtMtM6AlDHbZwTsrXTrV5UDEMYkc=;
 b=iHoWFptx0uUR+7zkytl6i66QZN4lR8+sn/6OoVpAozPB5znRcaTAUNvJzh7jral9RqqS7FXgZdwMYnJrH86EcvkBIbDsHbbnfB98aWs3CILyXKdjx/ouPz5+0/0QIjbmfgQfU5TQk1wcyS37BTmE8eD/hAoP9deARvOOfsztFxc=
Received: from CO2PR04MB2343.namprd04.prod.outlook.com (2603:10b6:102:12::9)
 by CO2PR04MB2310.namprd04.prod.outlook.com (2603:10b6:100:1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 02:24:11 +0000
Received: from CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b]) by CO2PR04MB2343.namprd04.prod.outlook.com
 ([fe80::c1a:6c0f:8207:580b%7]) with mapi id 15.20.2878.014; Thu, 2 Apr 2020
 02:24:11 +0000
From: Damien Le Moal <Damien.LeMoal@wdc.com>
To: Drew Fustini <pdp7pdp7@gmail.com>, "Wladimir J. van der Laan"
 <laanwj@gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Topic: [PATCH 08/10] riscv: Add Kendryte K210 device tree
Thread-Index: AQHV43iOGrtZHkBAPE20VvlfIfsDtA==
Date: Thu, 2 Apr 2020 02:24:11 +0000
Message-ID: <CO2PR04MB2343F482C9AB980748CFBEF2E7C60@CO2PR04MB2343.namprd04.prod.outlook.com>
References: <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
 <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
 <CADnnUqenadntSrngNGjnu40inxZWK1Nm3T64BnyY114hEwC_Og@mail.gmail.com>
 <20200219090612.7onbaoygy6waumnw@aurora.visucore.com>
 <20200222190731.27vulbrqj37obeq6@aurora.visucore.com>
 <CAEf4M_BSCjAkUUWERP6ak7nzseqae0ZdWDA0_hY5wwhCfFFKFA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Damien.LeMoal@wdc.com; 
x-originating-ip: [129.253.182.57]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a81fe364-de64-4687-3fe3-08d7d6acee29
x-ms-traffictypediagnostic: CO2PR04MB2310:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO2PR04MB23109344EC638A6761AA0191E7C60@CO2PR04MB2310.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO2PR04MB2343.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(376002)(39860400002)(396003)(136003)(366004)(346002)(64756008)(81156014)(5660300002)(71200400001)(8936002)(8676002)(86362001)(52536014)(966005)(4326008)(478600001)(9686003)(7696005)(2906002)(186003)(81166006)(76116006)(54906003)(91956017)(26005)(66556008)(66446008)(66946007)(6506007)(66476007)(33656002)(53546011)(316002)(110136005)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D+FWNMxJTJvuI791pnZyM4jN++4qbenLTkmcoAYJB8sEZMCe2zuGr1A45cLBWvlW2EKCF76+S9DGQcaPuGj6UgLNkGub2FdOmbj3FEkWyKqngi3QfvIFGKhQdeI0p5sCp7j8KBg03jkKz8FAFgtfdbUnJj08gAhPIZmuFlTUhYVKWwOCioJ2QlS6SkSJ7SS3DLMwCnOzdo5XGeCC8S+7Y+kFvNHz8uLGciJDjnsA0xu4sJAcl1gh6uBJ1t4gbjq2cOPBjPNz+1m2AiXSjGz9f29HC+i1O/iATu4pEz2pt25zOdxDpiZVsw5ioOzwlXZx7JnSqT7lnSQcb5vyXQBCnI8CML0AQnXCcn4IBR4I2cXp1PLQ2CsP/jxDGe5GqZu6JvjRbF8xlTWTUVQ0iWTxvt4Wa+ykxKibsDi+xZVWfulq5IuvVSIwBFff3Dq3tLkPOcR2Gj2ZHLfA6AIDZRHkSAIXmJ15X1I8nihTX5Bz1iT4vHNnWHLWgNEyyvVbc3Fa15UNKtipGOoY91xl6pRVNw==
x-ms-exchange-antispam-messagedata: DM7Q/fnA4wGH5X36wU4L1chAJ2k5Jh/+OPvaKlRgI8b9G1fzUGPVtdp6Acd8Ek7/eFXZ6IQ6ZKRQq61f86tJBs+eGHb99byqchi5O514BfPmNy5hgsTruJJKRdIvRn7pow8cyxUJHaUKnHL919KWiw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a81fe364-de64-4687-3fe3-08d7d6acee29
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 02:24:11.2694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QmGFGR7gYmV1pMLtGnNBhXqKCpQQDlRoaS8uLYJiYe2gkm3/fwtUtpZWe0nJIxzUxRptQZ+wgP78KIVOpO4biQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR04MB2310
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_192418_984680_110E73E0 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>, Anup Patel <Anup.Patel@wdc.com>,
 Sean Anderson <seanga2@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020/04/02 2:55, Drew Fustini wrote:=0A=
> On Sat, Feb 22, 2020 at 8:07 PM Wladimir J. van der Laan=0A=
> <laanwj@gmail.com> wrote:=0A=
>>>>> So the LCD connector is supposed to be for a ST7789V controller, but=
=0A=
>>>>> there doesn't appear to be a driver in Linux for it. I don't have an=
=0A=
>>>>> appropriate LCD screen, so I will not be able to write a driver.=0A=
>>>>>=0A=
>>>>=0A=
>>>> Actually there is a driver and config DRM_PANEL_SITRONIX_ST7789V, in=
=0A=
>>>> gpu/drm/panel/panel-sitronix-st7789v.c and also FB_TFT_ST7789V and=0A=
>>>> CONFIG_FB_TFT_ST7789V with the driver a in=0A=
>>>> staging/fbtft/fb_st7789v.c. Might be easier :)=0A=
>>>>=0A=
>>>> Weird that the Kendryte SDK refers to the LCD as NT35310=0A=
>>>> (https://github.com/kendryte/kendryte-standalone-demo/tree/develop/lcd=
).=0A=
>>>=0A=
>>> I remember checking the datasheet for both a while ago and NT35310 and =
ST7789V=0A=
>>> seem to be more or less compatible, with only register differences=0A=
>>> for more obscure functionality.=0A=
>>=0A=
>> I just stumbled on this:=0A=
>> https://forum.kendryte.com/topic/68/a-guide-to-adapt-kendryte-kd233-kpu-=
demo-to-sipeed-m1=0A=
>> under "LCD Driver".=0A=
>>=0A=
>> So it looks like the K233 uses a nt35310, while Sipeed M1 uses st7789. T=
his is=0A=
>> a likely explanation for them mentioning both chips in the SDKs.=0A=
> =0A=
> Hello all,=0A=
> =0A=
> I have the Sipeed MAiX Go and was wondering if any has made anymore=0A=
> progress with the LCD.=0A=
> =0A=
> Is it reasonable to try to use a tinydrm driver to put basic=0A=
> framebuffer on the LCD?=0A=
> =0A=
> (so we could see the adorable Tux at boot, etc)=0A=
=0A=
I have not tried. But it may be good to first start with the LCD in text mo=
de=0A=
only :)=0A=
=0A=
There are tons of LCD controller drivers under drivers/auxdisplay and=0A=
drivers/gpu/drm/panel. The  MAIX Go LCD controller is likely already suppor=
ted.=0A=
But you will need to add it to the device tree and fix k210-sysctl driver t=
o=0A=
have the proper clock for it. Sean did a lot of work in this area already. =
We=0A=
can use it as a base for improving the device tree and driver I think.=0A=
=0A=
Waiting to get the base series accepted first.=0A=
=0A=
Palmer ? Any update ? You still had concerns about the embedded device tree=
 and=0A=
I replied to that. Please let me know what you think.=0A=
=0A=
=0A=
=0A=
-- =0A=
Damien Le Moal=0A=
Western Digital Research=0A=

