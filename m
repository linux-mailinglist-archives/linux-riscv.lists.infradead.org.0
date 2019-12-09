Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168181177AA
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Dec 2019 21:45:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:Message-ID:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=f1VOUAlzAc4WoRjyzGN/xHqfUnNN0m2NiIm5khONxQQ=; b=P92+uYoodSWyeMT5gV5xpmLpV
	cBZPxSkHe5Aw/yXx1LH9fVJbEcgqIueLFagN/YIotl9TQcQScdtPsf/n5/myNB2DAzqttHYGb0IUV
	mEkyLxjhTxSYWAy+c4aGwMsSGdvMCUTz7Js8Hne0YmmdId1i6zL5rGbqoe5O03bJrOFMa26X4QZFl
	rMyPjal8Zr+KGF9IawFD+KWglE7W2oA5rta6j10YB1IMmhqA+a6f/Jm/9ZVbnmmyXxAoNRWIT5+AQ
	d9nFCZ8ErEwuQnh1+yjp8MtTKgVbUgdKTZcjqypip7UjcVcXPbk1n4wCGwkr3kkz8x7za3CutkRVu
	C068DW36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePtl-00064G-ID; Mon, 09 Dec 2019 20:44:53 +0000
Received: from mail-eopbgr00082.outbound.protection.outlook.com ([40.107.0.82]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePtg-00062P-Et; Mon, 09 Dec 2019 20:44:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N38wIu1ph/vPfUBoS5hcGbpr5BVgF+pydouYx2mwpCoMsHQyBd1YVBu/B8tCBSxnLclgaLWhYbOgHl0FBJ4snMtIHlsIA9UJFqdpFhVH1oJSrOUjbJgiN1Wyy/CNkvdBVUHxSUP4A5g4+WrTTlg1lwoqZkXsOSsKWTAnU3PVUofZITDKOOuJJazzp8PMqB6t8bz3GurbJvd4F7BmiNIpWLr+lm8UPRPan1Sk2rt+C2Y9xCRv5Z5v7pgOwj+XK3Ai2zf4YzkbYnhP1UijNaGmmjBBiaDddCW7wqqXC6GjkotEW3vfZpgow77mRbiVpx8MLQ3hduTBAPoRw3KzR3hgBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f1VOUAlzAc4WoRjyzGN/xHqfUnNN0m2NiIm5khONxQQ=;
 b=maOJNgAcnhxSRUWA762n8Du0jO+lN+6TE1UpE/XfOu8wzWZePzIN7/wxk7LDbwI7gNEf+9s9oga2NxJpPGdTUPeQLaC5L+CdoTF7QoAUWqomd7OKV/iDMClkHqyvmv90ESINufrEsrLKVskE2XNeVsqnxK2u0IX0OwiEyqnr6CczhOwhCzKWwN8pRCK0infMz5dza1kOYvw+7Btlv4EdbPjZaHcEnDja72gAI/olbxBSsZ7CqN/9tTvnS+fsG2YW+0V/ZSyZOuXn9lnej3Ka5cRybUBwJd80QutlmdfPLGeVvIgI1mFfmhbBnxRRXDqPFlgv6HcCa/CpjWVxl9cqTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f1VOUAlzAc4WoRjyzGN/xHqfUnNN0m2NiIm5khONxQQ=;
 b=k9dDdvdKE2unSklpz+pIqTdhhfIoJY6yRuyqSiXcdbxVVZM7K2YotCnxORFDD+BjchCmK7t80/YAaFfRA1WrFoiVQy6vGdKHoxeuTLPuq5I0JXpCfNmz8sJWOlq3lUUVNLgZSCmRq0F3Lc+pnR02lGGcSZUujr6GD/Q+uKInoj4=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB2973.eurprd04.prod.outlook.com (10.170.232.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Mon, 9 Dec 2019 20:44:40 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 20:44:40 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Yangtao Li <tiny.windzz@gmail.com>, "sboyd@kernel.org" <sboyd@kernel.org>, 
 "shawnguo@kernel.org" <shawnguo@kernel.org>, dl-linux-imx
 <linux-imx@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
Thread-Topic: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
Thread-Index: AQHVrsr/8/dokU6K/U2uIVGyaN+gaw==
Date: Mon, 9 Dec 2019 20:44:39 +0000
Message-ID: <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 12791ee1-a653-484d-f0e3-08d77ce89ce3
x-ms-traffictypediagnostic: VI1PR04MB2973:|VI1PR04MB2973:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB2973E280AA26C30BE4C19BBAEE580@VI1PR04MB2973.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(189003)(199004)(55016002)(5660300002)(8936002)(966005)(81166006)(478600001)(33656002)(8676002)(81156014)(86362001)(7366002)(44832011)(2906002)(305945005)(26005)(110136005)(186003)(54906003)(4326008)(6636002)(7416002)(7696005)(316002)(76116006)(6506007)(229853002)(91956017)(66446008)(53546011)(7406005)(71200400001)(66556008)(66476007)(71190400001)(52536014)(64756008)(66946007)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB2973;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5d9PkFROlAcsmOyaIyyfGHdc+nzPmbAadwg8jp0mNATJ68NZhX6uMW1fC3LAZEVAOHqsT8hHPkLbA+6/uGDOS4QKuPMHMNXSN/IKaKyZOnXWv/NjltcaFpcHL+exFjaltBUgIOsn5QaLtAjaZlxoefLJmpsLHczVOr7uYdE5ktX+xmylqvpOGpzUwkM+ll68RAkvuIKyMw00dezp/wS7Xn+kZ8idEeOwOOM/raaxW3NdysFj/OkQZsF0YQ8FHVCX9XM4f8dzV7f5Yi5OEeherUn9YHpcuDaYRuQPwbYX+LSWo9E590O67bqlrTdNDX6pOb8xAX6nuJyG8/ZBRjgOzjGRKVU+mEv1+10tCrqKMrsMKYjEre7VdmXn2s8823Fe3o4A2g57rW/1wkGe92mQw9EhOMxjT36SZNzdoCv16Wqo942MzjIrb6aECJQY2igMSaX9Q9bCdPY29cGql6wOUN+pGy4vMuRNwySii8TS/Iw=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12791ee1-a653-484d-f0e3-08d77ce89ce3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 20:44:39.9917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dsw/RwzjOE3fUn9Atwt1DQt0zgHQLpoIDTL8ddzfKAjIsKZlxMHBGElAOvv8eiHtLxlbxpbmuyNKHmJEdG9g0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB2973
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_124448_511156_C5C755F8 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "pgaikwad@nvidia.com" <pgaikwad@nvidia.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "chunhui.dai@mediatek.com" <chunhui.dai@mediatek.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "nsekhar@ti.com" <nsekhar@ti.com>,
 "tomasz.figa@gmail.com" <tomasz.figa@gmail.com>,
 "rfontana@redhat.com" <rfontana@redhat.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "weiyongjun1@huawei.com" <weiyongjun1@huawei.com>,
 "s.nawrocki@samsung.com" <s.nawrocki@samsung.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "john@phrozen.org" <john@phrozen.org>, "robh@kernel.org" <robh@kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "emilio@elopez.com.ar" <emilio@elopez.com.ar>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "cw00.choi@samsung.com" <cw00.choi@samsung.com>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "swinslow@gmail.com" <swinslow@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "jcmvbkbc@gmail.com" <jcmvbkbc@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "pdeschrijver@nvidia.com" <pdeschrijver@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "t-kristo@ti.com" <t-kristo@ti.com>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wangyan.wang@mediatek.com" <wangyan.wang@mediatek.com>,
 "afaerber@suse.de" <afaerber@suse.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 09.12.2019 21:58, Yangtao Li wrote:=0A=
> Use devm_platform_ioremap_resource() to simplify code.=0A=
> =0A=
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>=0A=
> ---=0A=
>   drivers/clk/imx/clk-imx8qxp-lpcg.c | 6 +-----=0A=
>   1 file changed, 1 insertion(+), 5 deletions(-)=0A=
> =0A=
> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx=
8qxp-lpcg.c=0A=
> index c0aff7ca6374..10ae712447c6 100644=0A=
> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c=0A=
> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c=0A=
> @@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct platform_dev=
ice *pdev)=0A=
>   	struct clk_hw_onecell_data *clk_data;=0A=
>   	const struct imx8qxp_ss_lpcg *ss_lpcg;=0A=
>   	const struct imx8qxp_lpcg_data *lpcg;=0A=
> -	struct resource *res;=0A=
>   	struct clk_hw **clks;=0A=
>   	void __iomem *base;=0A=
>   	int i;=0A=
> @@ -173,10 +172,7 @@ static int imx8qxp_lpcg_clk_probe(struct platform_de=
vice *pdev)=0A=
>   	if (!ss_lpcg)=0A=
>   		return -ENODEV;=0A=
>   =0A=
> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);=0A=
> -	if (!res)=0A=
> -		return -EINVAL;=0A=
> -	base =3D devm_ioremap(dev, res->start, resource_size(res));=0A=
> +	base =3D devm_platform_ioremap_resource(pdev, 0);=0A=
>   	if (!base)=0A=
>   		return -ENOMEM;=0A=
=0A=
This breaks imx8qxp-mek boot by causing most peripherals (like uart) to =0A=
fail to probe.=0A=
=0A=
The old and new paths are not equivalent: devm_platform_ioremap_resource=0A=
calls devm_ioremap_resource which differs from devm_ioremap by also =0A=
calling devm_request_mem_region.=0A=
=0A=
This prevents other mappings in the area and imx8qxp-lpcg nodes map =0A=
whole hardware "subsystems" and overlap most peripherals. For example:=0A=
=0A=
                  adma_lpcg: clock-controller@59000000 {=0A=
                          compatible =3D "fsl,imx8qxp-lpcg-adma";=0A=
                          reg =3D <0x59000000 0x2000000>;=0A=
                          #clock-cells =3D <1>;=0A=
		};=0A=
=0A=
                 adma_lpuart0: serial@5a060000 {=0A=
			reg =3D <0x5a060000 0x1000>;=0A=
			...=0A=
		};=0A=
=0A=
I don't know if this issue affects any other platforms (imx8 lpcg =0A=
bindings are unusual) but if you found this with an automated tool =0A=
perhaps it should be adjusted?=0A=
=0A=
By my count it's the 4th time this incorrect cleanup was posted.=0A=
=0A=
Previously: https://lkml.org/lkml/2019/12/4/487=0A=
=0A=
--=0A=
Regards,=0A=
Leonard=0A=

