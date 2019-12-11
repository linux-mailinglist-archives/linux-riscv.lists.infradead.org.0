Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135BA11BBD9
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Dec 2019 19:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=rk/eK3wfgdRYRQNeCULei0VDf+d8TbJZkfjMeJ2oZ2w=; b=lIZdC67JzhfTA/xoOe6IdhYZr
	NnOPhfpLYaDPqsHLC4reo4QL5GsZuf3WGkDLinQDdVQze+9B72huTkoERPl+e8x/ZDaNDFrUEElW6
	jSAgE8Vk3XHFpnHCRScoKhZn0Ju8k+j/KbVHRfPCyK/k+ZFTM64eXS//cckyPo54xU+hwuNhapgF7
	c/HI8Hz4jrafwuvU1Dcl40LNh9aLlPin9LytRwsHbbt/sRvOMsUnfw+GRMkwi6IElVT2Qk+9gvDo3
	sOwT2ehMn87t8Ha/LYptmPJigT1L8wSOSfwktoe6KL9K9D+cm4iY0GmS1WRDhkemFAA2B4S/ApVXf
	+tT2U1fRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6sO-0001Cv-P6; Wed, 11 Dec 2019 18:38:20 +0000
Received: from mail-eopbgr60051.outbound.protection.outlook.com ([40.107.6.51]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6sK-0001AF-AE; Wed, 11 Dec 2019 18:38:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c//LfYlhbLX3Gh2A2P1TUdcg0/G0NVeA6t84y55SL+zEUKGQbHDFVmjxSrq0miPS4JpVzssrOWK3i2NbuPw6kWRIpZY3qSgT/Sl4hOGXbjr2xlmbmo69n0QZmE14q651yMLkQsD6LRIFPGh/FKHjyAtdalVvOTB4tKwGxwBsGit+JOZH8pV4jIMcpPbu1B4qoCEPMdMc0twJHUimHaYRzjhYGZN5mS4vthr4WzpMnon8CE7COhtagNQo9ZrSbqMLDqWo8izFLagh+yMc1kz1y6o0uFh6nyb6M/+dipwC/Lb6nXvC0fO81gT77K4oMnQ0cWcA8wGzBrO/RmKUJ8MhSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rk/eK3wfgdRYRQNeCULei0VDf+d8TbJZkfjMeJ2oZ2w=;
 b=NZr3VyuCpoqjCvoVGRaQ7brFWRtskD4Ayn/m2ergTXDeSFHtR/Uen9poj7jFoEkC3ysov+IKDZLDwo5iKYcNaaFqZ8+JDzIf1TTzzGJ3DZmWTWw/RdMbJnAX9pa2HrtLriBK3anqZ+dTgbi38Mxeduh4+GdEYHGh/QC8m/8KZ6KviIhFtyghh2q9hCJTFMA2PtTpGTmCxDU7VUk+Ix3PHfmRSWSt+IfkcZfiApz6f/zX027jdvo0CByd+HVXMbyfSRQoUZVmRbVGMRm3xHxGTnd/lDF0aBv3q4YOL2bBYZA7gm/49STgz6JJ9Ip9owB2ET4ho4H3STZqaq4cPfFucg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rk/eK3wfgdRYRQNeCULei0VDf+d8TbJZkfjMeJ2oZ2w=;
 b=jH1DEERY0bKw2JCWCDkuDhCiOMGd0xvieald1iuLgyL16mVVR7ioRCpxcilVuPBLcaW3XZ6lt49f5H1aeK0qAl4XDMiDem8lsW8zG1vGo3V+3PFXzZUrCqZdQ1BRzztnNM8KH+QVG352JykbOw8Gc3zhbM1UlqcykpESQuOm6II=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB7182.eurprd04.prod.outlook.com (10.186.156.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Wed, 11 Dec 2019 18:38:12 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.016; Wed, 11 Dec 2019
 18:38:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Paul Walmsley <paul@pwsan.com>, Thierry Reding <thierry.reding@gmail.com>, 
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
Thread-Topic: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
Thread-Index: AQHVrsr/8/dokU6K/U2uIVGyaN+gaw==
Date: Wed, 11 Dec 2019 18:38:11 +0000
Message-ID: <VI1PR04MB7023943556EB5E6967AE3E0CEE5A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20191210132146.GF2703785@ulmo>
 <alpine.DEB.2.21.999.1912111743560.32095@utopia.booyaka.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e4ef7c60-bae4-4c97-1598-08d77e6946d3
x-ms-traffictypediagnostic: VI1PR04MB7182:|VI1PR04MB7182:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB71828FFACE570A928ED59DB4EE5A0@VI1PR04MB7182.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(199004)(189003)(4326008)(54906003)(478600001)(52536014)(6506007)(45080400002)(2906002)(5660300002)(110136005)(53546011)(966005)(9686003)(8936002)(86362001)(66476007)(81166006)(66946007)(8676002)(76116006)(91956017)(55016002)(44832011)(81156014)(66556008)(7416002)(186003)(7696005)(7366002)(7406005)(64756008)(66446008)(33656002)(26005)(71200400001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB7182;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XSxqeS5bjTs50npOsu2W1m9bwdVPQs+vXBFynHbmCycxgE3lP28JkJg9fM3nHW53SMVM059tRMhSFffPTuwZHOlHl/JpChpMHGcWCkzTXgVNA3kg/DNuS+Lr4WnddiAw9NUA94JxH6MYC3QVXlO6wUDEsnNmjze2/LDY+NlDoLtioBkxleD99uute0yb17xYFAmcLL1y2FqjJo+PcQ8SfK9CKnfyX/GBp87E9J+kOtnt8Ry5LseF26FFD/YD3o0JYMLly1qv3p889ux52t9BGYdgm3QgOG+Qt6Bx/kdDI5iYyQC/Qf/FH/Nl0bISqaHaNDOz3vjr97TWpiT6GSNOQfAcucaSSRt4B7Hqc2UeUHyvmxRGbA8xY2veZO63H/djq/gVA+DpNgF+xujoUZLi+jiX/gDczTTu96f6WOYKCn6mNHyrCt8b1R18LUtSdHLtb2GmvkrfxLqY/mzke7FwcWEyvuhkePGwpLnJilEJvM8=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4ef7c60-bae4-4c97-1598-08d77e6946d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 18:38:11.9396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 229+aDnP9rtLfTYh11aq8TLj4pTTozFh9M5SaXA3gp8Z713GazUu/ACj/x2YNePb5dzzOZ2tYBkCJuhZERqRsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_103816_464465_4FD58869 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pgaikwad@nvidia.com" <pgaikwad@nvidia.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 Yangtao Li <tiny.windzz@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 "s.nawrocki@samsung.com" <s.nawrocki@samsung.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "emilio@elopez.com.ar" <emilio@elopez.com.ar>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "swinslow@gmail.com" <swinslow@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "john@phrozen.org" <john@phrozen.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "jcmvbkbc@gmail.com" <jcmvbkbc@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "pdeschrijver@nvidia.com" <pdeschrijver@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wangyan.wang@mediatek.com" <wangyan.wang@mediatek.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "afaerber@suse.de" <afaerber@suse.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 11.12.2019 19:51, Paul Walmsley wrote:=0A=
> On Tue, 10 Dec 2019, Thierry Reding wrote:=0A=
>> On Mon, Dec 09, 2019 at 08:44:39PM +0000, Leonard Crestez wrote:=0A=
>>=0A=
>>> This breaks imx8qxp-mek boot by causing most peripherals (like uart) to=
=0A=
>>> fail to probe.=0A=
>>>=0A=
>>> The old and new paths are not equivalent: devm_platform_ioremap_resourc=
e=0A=
>>> calls devm_ioremap_resource which differs from devm_ioremap by also=0A=
>>> calling devm_request_mem_region.=0A=
>>>=0A=
>>> This prevents other mappings in the area and imx8qxp-lpcg nodes map=0A=
>>> whole hardware "subsystems" and overlap most peripherals. For example:=
=0A=
>>>=0A=
>>>                    adma_lpcg: clock-controller@59000000 {=0A=
>>>                            compatible =3D "fsl,imx8qxp-lpcg-adma";=0A=
>>>                            reg =3D <0x59000000 0x2000000>;=0A=
>>>                            #clock-cells =3D <1>;=0A=
>>> 		};=0A=
>>>=0A=
>>>                   adma_lpuart0: serial@5a060000 {=0A=
>>> 			reg =3D <0x5a060000 0x1000>;=0A=
>>> 			...=0A=
>>> 		};=0A=
>>=0A=
>> The whole point of doing a request_mem_region() is to avoid having=0A=
>> multiple drivers trample on each others' mappings. What you do above=0A=
>> doesn't look right. Why does that clock controller need access to 32=0A=
>> MiB of I/O memory space?=0A=
> =0A=
> Thierry's right; your DT data looks broken.  Unfortunately the IMX8M TRM=
=0A=
> requires some sort of signup to download, so I can't easily read it, but=
=0A=
> based on files like this:=0A=
> =0A=
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.k=
ernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git%2Ftree%=
2Fdrivers%2Fclk%2Fimx%2Fclk-imx8qxp-lpcg.h&amp;data=3D02%7C01%7Cleonard.cre=
stez%40nxp.com%7Cf0e68024888e4aed777e08d77e62c5df%7C686ea1d3bc2b4c6fa92cd99=
c5c301635%7C0%7C1%7C637116835018036168&amp;sdata=3Dz70QUYwknXfvc4zhyOrT7dcL=
Pq5eryv4U7HoGMzI4ZE%3D&amp;reserved=3D0=0A=
> =0A=
> it looks like what should be in the DT instead is either a large set of=
=0A=
> smaller register ranges, or a set of separate DT nodes/drivers: one per=
=0A=
> peripheral LPCG instance.  That should avoid the overlapping memory range=
=0A=
> issue.=0A=
=0A=
Yes, current imx8 clock DT bindings are definitely odd. I only objected =0A=
to the cleanup because it breaks boot.=0A=
=0A=
This series converts imx8 LPCG to use separate DT nodes for each =0A=
peripheral LPCG instance and makes other improvements, it's just been =0A=
stuck in review:=0A=
=0A=
https://patchwork.kernel.org/cover/11248249/=0A=
=0A=
Having a large number of clock-providing DT nodes is also odd but it =0A=
closely aligns with SOC hardware architecture. The clock gating bits =0A=
were deliberately split into many 64k areas so that access can be =0A=
controlled for each peripheral using very coarse-grained access control =0A=
methods.=0A=
=0A=
For example hypervisors can control guest access on page boundaries but =0A=
not to individual bits in a byte.=0A=
=0A=
This design makes it easy to securely grant control for a peripheral and =
=0A=
all of its clock bits to an M4 core or virtualization guest without =0A=
additional layers of software indirection.=0A=
=0A=
--=0A=
Regards,=0A=
Leonard=0A=

