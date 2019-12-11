Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DE411BAA1
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Dec 2019 18:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wa1rBQjl5OfHQwnvKrUqaMJi3N3kDyBtkn02IdAlSy8=; b=KZYgVUAqCvTj2tsi8TAPv1Us4
	N6XZHRmXDEVyy+OcDs/WpZyivaLV4rSfmo8XdgjWO2LcA4CHR9wMBstlJACRch1byA2pg9hJW/BvA
	WAsoOx0DQnB+F1X89Ma/+UOlgNusEFok5Lb8jys3s+MzFwuH41xPzKSqn+b/fJD/gU3jbmeTsBcFs
	4CK9AlC4QodUY53wbBNowjf+j49iXTlw2q9qkRsaVSkpXdox6FcQ7c43z/glV5NoGu3fr4LPhYyNo
	lpP2v8zyKiVH2NzAjT3VPJi5xDZuUvQhpoYiDTXnu5ETuyUeSfnwupDLoGTFUpJcTrjEjswpGMa5w
	FLZaV41+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if69I-00053D-Al; Wed, 11 Dec 2019 17:51:44 +0000
Received: from utopia.booyaka.com ([74.50.51.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if69D-00050l-4a
 for linux-riscv@lists.infradead.org; Wed, 11 Dec 2019 17:51:41 +0000
Received: (qmail 1514 invoked by uid 1019); 11 Dec 2019 17:51:35 -0000
Received: from localhost (sendmail-bs@127.0.0.1)
 by localhost with SMTP; 11 Dec 2019 17:51:35 -0000
Date: Wed, 11 Dec 2019 17:51:35 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 08/17] clk: imx: convert to devm_platform_ioremap_resource
In-Reply-To: <20191210132146.GF2703785@ulmo>
Message-ID: <alpine.DEB.2.21.999.1912111743560.32095@utopia.booyaka.com>
References: <20191209195749.868-1-tiny.windzz@gmail.com>
 <20191209195749.868-8-tiny.windzz@gmail.com>
 <VI1PR04MB7023BD6E46B6DEEBBB762060EE580@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <20191210132146.GF2703785@ulmo>
User-Agent: Alpine 2.21.999 (DEB 260 2018-02-26)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_095139_252028_F501E203 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Thierry Reding <thierry.reding@gmail.com>,
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

+ Dong

On Tue, 10 Dec 2019, Thierry Reding wrote:

> On Mon, Dec 09, 2019 at 08:44:39PM +0000, Leonard Crestez wrote:
>
> > This breaks imx8qxp-mek boot by causing most peripherals (like uart) to 
> > fail to probe.
> > 
> > The old and new paths are not equivalent: devm_platform_ioremap_resource
> > calls devm_ioremap_resource which differs from devm_ioremap by also 
> > calling devm_request_mem_region.
> > 
> > This prevents other mappings in the area and imx8qxp-lpcg nodes map 
> > whole hardware "subsystems" and overlap most peripherals. For example:
> > 
> >                   adma_lpcg: clock-controller@59000000 {
> >                           compatible = "fsl,imx8qxp-lpcg-adma";
> >                           reg = <0x59000000 0x2000000>;
> >                           #clock-cells = <1>;
> > 		};
> > 
> >                  adma_lpuart0: serial@5a060000 {
> > 			reg = <0x5a060000 0x1000>;
> > 			...
> > 		};
> 
> The whole point of doing a request_mem_region() is to avoid having
> multiple drivers trample on each others' mappings. What you do above
> doesn't look right. Why does that clock controller need access to 32
> MiB of I/O memory space?

Thierry's right; your DT data looks broken.  Unfortunately the IMX8M TRM 
requires some sort of signup to download, so I can't easily read it, but 
based on files like this:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/imx/clk-imx8qxp-lpcg.h

it looks like what should be in the DT instead is either a large set of 
smaller register ranges, or a set of separate DT nodes/drivers: one per 
peripheral LPCG instance.  That should avoid the overlapping memory range 
issue.


- Paul

