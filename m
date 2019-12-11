Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EE111A829
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Dec 2019 10:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r6KMkLsJhUlJn6kT8Vu8wn2241qWLrLOKRW+auTAdBw=; b=KkgoDsi8v0If2HjCoiN8WmJdm
	evZnHdiqZyN1+ADLSYYzMfg787hOQQgn99gS3jsTPOFsFd5xqLLSWAVfeeCBSDJIk6kArL1EuPctk
	3ity64HG8yrSWeJgGEGQWapiknNWPXh7Vki+8RCYKyqh08Dwrfl/GWKEvPL6C5mmh0csu1bVpZsqk
	6TeNRWrrpYeTbTttLUuwQqBb65BtcyCQbQIJRpIEyPewvXM0rhzG2e0kho5zOInUoefXOS9EilYWB
	I3FZZA3YC2vLnmAvzUb3KlD+sbYWwEGpJUeVX3v6/WEfmVbLsEfnB6xY99RhNig1PObr9lW5nMyvi
	t2BbaU1Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieycJ-0005eR-0j; Wed, 11 Dec 2019 09:49:11 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieycE-0005d4-5w; Wed, 11 Dec 2019 09:49:07 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5df0bb7b0000>; Wed, 11 Dec 2019 01:48:43 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 11 Dec 2019 01:49:05 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 11 Dec 2019 01:49:05 -0800
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Dec
 2019 09:49:04 +0000
Received: from tbergstrom-lnx.Nvidia.com (10.124.1.5) by
 DRHQMAIL107.nvidia.com (10.27.9.16) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Wed, 11 Dec 2019 09:49:03 +0000
Received: by tbergstrom-lnx.Nvidia.com (Postfix, from userid 1000)
 id 83C0540D1A; Wed, 11 Dec 2019 11:49:01 +0200 (EET)
Date: Wed, 11 Dec 2019 11:49:01 +0200
From: Peter De Schrijver <pdeschrijver@nvidia.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH 06/17] clk: tegra: convert to
 devm_platform_ioremap_resource
Message-ID: <20191211094901.GY28289@pdeschrijver-desktop.Nvidia.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-6-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20191209195749.868-6-tiny.windzz@gmail.com>
X-NVConfidentiality: public
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1576057723; bh=r6KMkLsJhUlJn6kT8Vu8wn2241qWLrLOKRW+auTAdBw=;
 h=X-PGP-Universal:Date:From:To:CC:Subject:Message-ID:References:
 MIME-Version:Content-Type:Content-Disposition:In-Reply-To:
 X-NVConfidentiality:User-Agent:X-Originating-IP:X-ClientProxiedBy;
 b=fehz9BkDjC3DMVoGOpqVqlRcbFB+5HaVT04s5D4cWHQvhLCn6gXQEF6JJYvG9urlB
 s4hOQT8rZMu0RxfbGXBHlrizVjlU+MBWpN0zdOvs7VXqzPEAx0rJQEoyRB1VSgAF0A
 m289OxsJav4Sxdi0oVtNIPZGjVdeNbo8sx+JhKsl1iNDcTpdmnXX5k0gKmMauhQ+9Z
 XDGiV4yhyfPTseM3aKAa1n/aVdjBBiRP1CcndpVLoWBMQIL+f1qomtdDweAF2jj+Oc
 haxlit6zV7iSueYhAjyDiFWvEhl7qBKIz75rmqG+D6byUdQIM6BSB47B6wmYyTUifb
 AkfA7cHM53gag==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_014906_232011_F2BAD4B0 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kstewart@linuxfoundation.org, pgaikwad@nvidia.com, heiko@sntech.de,
 geert+renesas@glider.be, chunhui.dai@mediatek.com, mturquette@baylibre.com,
 palmer@sifive.com, nsekhar@ti.com, tomasz.figa@gmail.com, rfontana@redhat.com,
 thierry.reding@gmail.com, weiyongjun1@huawei.com, s.nawrocki@samsung.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 festevam@gmail.com, linux-clk@vger.kernel.org, john@phrozen.org,
 robh@kernel.org, linux-samsung-soc@vger.kernel.org, emilio@elopez.com.ar,
 krzk@kernel.org, jonathanh@nvidia.com, cw00.choi@samsung.com, wens@csie.org,
 agross@kernel.org, linux-imx@nxp.com, Eugeniy.Paltsev@synopsys.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 miquel.raynal@bootlin.com, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, mripard@kernel.org, linux-mediatek@lists.infradead.org,
 swinslow@gmail.com, paul.walmsley@sifive.com, matthias.bgg@gmail.com,
 tglx@linutronix.de, daniel.baluta@nxp.com, allison@lohutok.net,
 aisheng.dong@nxp.com, jcmvbkbc@gmail.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 dinguyen@kernel.org, kgene@kernel.org, kernel@pengutronix.de,
 wangyan.wang@mediatek.com, shawnguo@kernel.org, afaerber@suse.de
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 07:57:38PM +0000, Yangtao Li wrote:
> External email: Use caution opening links or attachments
> 
> 

Acked-by:  Peter De Schrijver <pdeschrijver@nvidia.com>

> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/clk/tegra/clk-dfll.c | 34 ++++------------------------------
>  1 file changed, 4 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/clk/tegra/clk-dfll.c b/drivers/clk/tegra/clk-dfll.c
> index c051d92c2bbf..070a2957e119 100644
> --- a/drivers/clk/tegra/clk-dfll.c
> +++ b/drivers/clk/tegra/clk-dfll.c
> @@ -1935,7 +1935,6 @@ static int dfll_fetch_common_params(struct tegra_dfll *td)
>  int tegra_dfll_register(struct platform_device *pdev,
>                         struct tegra_dfll_soc_data *soc)
>  {
> -       struct resource *mem;
>         struct tegra_dfll *td;
>         int ret;
> 
> @@ -1985,51 +1984,26 @@ int tegra_dfll_register(struct platform_device *pdev,
>                 return ret;
>         }
> 
> -       mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -       if (!mem) {
> -               dev_err(td->dev, "no control register resource\n");
> -               return -ENODEV;
> -       }
> -
> -       td->base = devm_ioremap(td->dev, mem->start, resource_size(mem));
> +       td->base = devm_platform_ioremap_resource(pdev, 0);
>         if (!td->base) {
>                 dev_err(td->dev, "couldn't ioremap DFLL control registers\n");
>                 return -ENODEV;
>         }
> 
> -       mem = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -       if (!mem) {
> -               dev_err(td->dev, "no i2c_base resource\n");
> -               return -ENODEV;
> -       }
> -
> -       td->i2c_base = devm_ioremap(td->dev, mem->start, resource_size(mem));
> +       td->i2c_base = devm_platform_ioremap_resource(pdev, 1);
>         if (!td->i2c_base) {
>                 dev_err(td->dev, "couldn't ioremap i2c_base resource\n");
>                 return -ENODEV;
>         }
> 
> -       mem = platform_get_resource(pdev, IORESOURCE_MEM, 2);
> -       if (!mem) {
> -               dev_err(td->dev, "no i2c_controller_base resource\n");
> -               return -ENODEV;
> -       }
> -
> -       td->i2c_controller_base = devm_ioremap(td->dev, mem->start,
> -                                              resource_size(mem));
> +       td->i2c_controller_base = devm_platform_ioremap_resource(pdev, 2);
>         if (!td->i2c_controller_base) {
>                 dev_err(td->dev,
>                         "couldn't ioremap i2c_controller_base resource\n");
>                 return -ENODEV;
>         }
> 
> -       mem = platform_get_resource(pdev, IORESOURCE_MEM, 3);
> -       if (!mem) {
> -               dev_err(td->dev, "no lut_base resource\n");
> -               return -ENODEV;
> -       }
> -
> -       td->lut_base = devm_ioremap(td->dev, mem->start, resource_size(mem));
> +       td->lut_base = devm_platform_ioremap_resource(pdev, 3);
>         if (!td->lut_base) {
>                 dev_err(td->dev,
>                         "couldn't ioremap lut_base resource\n");
> --
> 2.17.1
> 

