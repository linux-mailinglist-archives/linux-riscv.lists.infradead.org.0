Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C09119239
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 21:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ElwAfENAuX5j6bRGwBgvuCMUaWaUVDOAko3C6m2o7TU=; b=MpZa8JPs9yVZNFSpt1AYu0BO8
	CghHS9Ze/5VJsRqcMfCFMW8k2p7WMosNmXO/c74VKVjBzZEa49XU7BhOyqAefWRfIZx0jXhA1Iu0C
	3DKivhc4IVOECsVsIQxOuooWzp2H9LCFW6S53W1RuvHWFHwp4yOaXBXH3hPdyEYTgnzselVvuHVs8
	TGQ11hsDrdkr/5ViDlcXlNsK/ok8biMTmNHCxjZmC4mfBp2W01nLo5WQL9BGpMYl6iRMoFe1fxWxA
	Cy8h5jK9OljeU3q70zeBnzA4YVyTGkeZe1ZVmMRgVjVj2AsvyiXctHU/mNFBhb0puAxR0/HD7UOy2
	+mk5cKVjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemGI-0005EO-3P; Tue, 10 Dec 2019 20:37:38 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemGA-00056l-4g; Tue, 10 Dec 2019 20:37:31 +0000
Received: by mail-io1-xd42.google.com with SMTP id c16so20255762ioh.6;
 Tue, 10 Dec 2019 12:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ElwAfENAuX5j6bRGwBgvuCMUaWaUVDOAko3C6m2o7TU=;
 b=OxY2rESJg8/C8Ilmq+P/Kk6foCilmpA1ceCzxhLI35+Bs5EukK7Rw60+fuzEbtAu/Y
 +gjlpNirqRz+uLbs3f94JZD4nzn9b1GskBs1JYmdVesWwmT0ukiP3XwjbOSGVk3L66jp
 olPEMVsVdMHqb+UqobUDJR0pvJDoRFyfnL978iA99Ovyq4lzJLnmMdQj8AWJN/znrx6w
 CuShQz3P5ZfuORQ2fdWInecbkpXtQc5Xxi4FzO6Ds6SuIN8gVpTK19VeyuT2GmAsrRaE
 IjrbEB8MCxU7nf67/Y8jBjVfzyqBAU7pw8VOTSd02YmNUkDiCdopd6IHMdCVtywpFxOR
 8NIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ElwAfENAuX5j6bRGwBgvuCMUaWaUVDOAko3C6m2o7TU=;
 b=oG7iIpkDrM7iMxFn9CaXeuQPPXK/raE56ImHwwpF1FYND6yuX24eGKVInGvAV5aNLB
 pC3hfR+TCtBVd80ERO9cxwrkWiWoMCcTUWM7jh5lcOb83MJojxt/8mcx5apjr15FcrWt
 18TRtanS0f2zMOjpagpBJAeghYBHJYWHIGxjrOCcUNBirtvMAgUYsDxF+LzgTALGiH9r
 BY9ooVg4Niyzit6QebVH0r2P8Gd0CdylM4Wq0m5UwTUviP8xRfkKT/b8DzJsFuEoVEnh
 YHkmx2v/xyggZ+UWfTAAtzQWaFgdnyjlqWni5Fqa/KkkXIXdzkTnAKzgq5EIPLqdSKqP
 LPOA==
X-Gm-Message-State: APjAAAUMXAlpJ68zOYG9b+yUidjLd/WpcsUfcuqyCYUvS1wx+b1WR+Fu
 9gl73OIjnureQu8ZyWXfAzoXmT2r1rMt5ZdNoto=
X-Google-Smtp-Source: APXvYqzMlPfanH+slLRoKlfdq1B3RoHpSebLw2ny/Su5pM7gwU2nHoSxcUEwQtaL+Zm/JgJDCLRlojwjxrZvMkOCznI=
X-Received: by 2002:a6b:3ec6:: with SMTP id
 l189mr18829407ioa.168.1576010248984; 
 Tue, 10 Dec 2019 12:37:28 -0800 (PST)
MIME-Version: 1.0
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Wed, 11 Dec 2019 04:37:17 +0800
Message-ID: <CAEExFWu=DC_kjYFgk90RexUXJrqpA27L_ruu9tiLN-N=c3dL1g@mail.gmail.com>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
To: Leonard Crestez <leonard.crestez@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123730_242449_CD42FABC 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dl-linux-imx <linux-imx@nxp.com>,
 "Eugeniy.Paltsev@synopsys.com" <Eugeniy.Paltsev@synopsys.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
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
 Aisheng Dong <aisheng.dong@nxp.com>, "jcmvbkbc@gmail.com" <jcmvbkbc@gmail.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
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

On Tue, Dec 10, 2019 at 4:44 AM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 09.12.2019 21:58, Yangtao Li wrote:
> > Use devm_platform_ioremap_resource() to simplify code.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >   drivers/clk/imx/clk-imx8qxp-lpcg.c | 6 +-----
> >   1 file changed, 1 insertion(+), 5 deletions(-)
> >
> > diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > index c0aff7ca6374..10ae712447c6 100644
> > --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> > @@ -164,7 +164,6 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
> >       struct clk_hw_onecell_data *clk_data;
> >       const struct imx8qxp_ss_lpcg *ss_lpcg;
> >       const struct imx8qxp_lpcg_data *lpcg;
> > -     struct resource *res;
> >       struct clk_hw **clks;
> >       void __iomem *base;
> >       int i;
> > @@ -173,10 +172,7 @@ static int imx8qxp_lpcg_clk_probe(struct platform_device *pdev)
> >       if (!ss_lpcg)
> >               return -ENODEV;
> >
> > -     res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > -     if (!res)
> > -             return -EINVAL;
> > -     base = devm_ioremap(dev, res->start, resource_size(res));
> > +     base = devm_platform_ioremap_resource(pdev, 0);
> >       if (!base)
> >               return -ENOMEM;
>
> This breaks imx8qxp-mek boot by causing most peripherals (like uart) to
> fail to probe.
>
> The old and new paths are not equivalent: devm_platform_ioremap_resource
> calls devm_ioremap_resource which differs from devm_ioremap by also
> calling devm_request_mem_region.
>
> This prevents other mappings in the area and imx8qxp-lpcg nodes map
> whole hardware "subsystems" and overlap most peripherals. For example:
>
>                   adma_lpcg: clock-controller@59000000 {
>                           compatible = "fsl,imx8qxp-lpcg-adma";
>                           reg = <0x59000000 0x2000000>;
>                           #clock-cells = <1>;
>                 };

It's a bit surprising that the clock driver does such a large mapping.

So, it is best to check the dts reg configuration of the driver.


Yours,
Yangtao

>
>                  adma_lpuart0: serial@5a060000 {
>                         reg = <0x5a060000 0x1000>;
>                         ...
>                 };
>
> I don't know if this issue affects any other platforms (imx8 lpcg
> bindings are unusual) but if you found this with an automated tool
> perhaps it should be adjusted?
>
> By my count it's the 4th time this incorrect cleanup was posted.
>
> Previously: https://lkml.org/lkml/2019/12/4/487
>
> --
> Regards,
> Leonard

