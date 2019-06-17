Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525184881B
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 17:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QquqH4ZeJ3o5Kg2avQ/Lw4MwhsSVgL8e+y+b2//frtw=; b=oMIeZyIyHRK+fm
	ncj/BBCO6erd7iZ9PFKAGLymZaHfUlD5eB1e+SBiaNpJeKmWSZ4n5G18wuyf+SHHZdi/NPdPhOQbE
	gDmx0pEaAYR1+uoNaTbB+OdCXD3PkXkUpXO+uKwva4I9vIeCrfjQG4JNfu8yoBWH4dcQntsUqRceB
	S008jFE9+GR1pD8sXiB+6MZowxwh03TXapym4R/96XuOa9GQMF53d002oiGlJpPase1WD2OyOTaqf
	ojHpL22VGWXk1xZJ45FNitk2J1h1shYKfxgvHkkSzW/R5tGqGlOQALj5YiGldQN6qzmbmE6syCl+t
	/+f/ga209Hs5CkiakprA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu24-0002Du-RV; Mon, 17 Jun 2019 15:58:56 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu1q-00024y-GM
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 15:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IJWr5dvuEA2F3trxOKqiOmWoXJ+15Kb0YLvHJBxpplE=; b=LvOiZnTpFrjs6uHKxqq3mdymv7
 203Y30f019Kur5cTvYiDKsFifpqIu2TOMP5+ruyvIh+iZOaKApXym45HQ1MYEtzOQ4JJ114RuJy97
 2bw3K23vS/LNdJ90HcxCsK+H9sihBk6mWKBO7/XTqMPv5Q03tAYpArEc2NY6mgbfyFn8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hcu1i-0001Kh-CK; Mon, 17 Jun 2019 17:58:34 +0200
Date: Mon, 17 Jun 2019 17:58:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v2 2/2] macb: Add support for SiFive FU540-C000
Message-ID: <20190617155834.GK25211@lunn.ch>
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <1560745167-9866-3-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560745167-9866-3-git-send-email-yash.shah@sifive.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_085842_720810_0718F439 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 netdev@vger.kernel.org, palmer@sifive.com, ynezz@true.cz,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
 sachin.ghadi@sifive.com, robh+dt@kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 09:49:27AM +0530, Yash Shah wrote:
> The management IP block is tightly coupled with the Cadence MACB IP
> block on the FU540, and manages many of the boundary signals from the
> MACB IP. This patch only controls the tx_clk input signal to the MACB
> IP. Future patches may add support for monitoring or controlling other
> IP boundary signals.
> 
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  drivers/net/ethernet/cadence/Kconfig     |   6 ++
>  drivers/net/ethernet/cadence/macb_main.c | 129 +++++++++++++++++++++++++++++++
>  2 files changed, 135 insertions(+)
> 
> diff --git a/drivers/net/ethernet/cadence/Kconfig b/drivers/net/ethernet/cadence/Kconfig
> index b998401..d478fae 100644
> --- a/drivers/net/ethernet/cadence/Kconfig
> +++ b/drivers/net/ethernet/cadence/Kconfig
> @@ -48,4 +48,10 @@ config MACB_PCI
>  	  To compile this driver as a module, choose M here: the module
>  	  will be called macb_pci.
>  
> +config MACB_SIFIVE_FU540
> +	bool "Cadence MACB/GEM support for SiFive FU540 SoC"
> +	depends on MACB && GPIO_SIFIVE
> +	help
> +	  Enable the Cadence MACB/GEM support for SiFive FU540 SoC.
> +
>  endif # NET_VENDOR_CADENCE
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index c049410..275b5e8 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -10,6 +10,7 @@
>  
>  #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
>  #include <linux/clk.h>
> +#include <linux/clk-provider.h>
>  #include <linux/crc32.h>
>  #include <linux/module.h>
>  #include <linux/moduleparam.h>
> @@ -40,6 +41,15 @@
>  #include <linux/pm_runtime.h>
>  #include "macb.h"
>  
> +/* This structure is only used for MACB on SiFive FU540 devices */
> +struct sifive_fu540_macb_mgmt {
> +	void __iomem *reg;
> +	unsigned long rate;
> +	struct clk_hw hw;
> +};
> +
> +static struct sifive_fu540_macb_mgmt *mgmt;
> +
>  #define MACB_RX_BUFFER_SIZE	128
>  #define RX_BUFFER_MULTIPLE	64  /* bytes */
>  
> @@ -3903,6 +3913,116 @@ static int at91ether_init(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static unsigned long fu540_macb_tx_recalc_rate(struct clk_hw *hw,
> +					       unsigned long parent_rate)
> +{
> +	return mgmt->rate;
> +}
> +
> +static long fu540_macb_tx_round_rate(struct clk_hw *hw, unsigned long rate,
> +				     unsigned long *parent_rate)
> +{
> +	if (WARN_ON(rate < 2500000))
> +		return 2500000;
> +	else if (rate == 2500000)
> +		return 2500000;
> +	else if (WARN_ON(rate < 13750000))
> +		return 2500000;
> +	else if (WARN_ON(rate < 25000000))
> +		return 25000000;
> +	else if (rate == 25000000)
> +		return 25000000;
> +	else if (WARN_ON(rate < 75000000))
> +		return 25000000;
> +	else if (WARN_ON(rate < 125000000))
> +		return 125000000;
> +	else if (rate == 125000000)
> +		return 125000000;
> +
> +	WARN_ON(rate > 125000000);
> +
> +	return 125000000;
> +}
> +
> +static int fu540_macb_tx_set_rate(struct clk_hw *hw, unsigned long rate,
> +				  unsigned long parent_rate)
> +{
> +	rate = fu540_macb_tx_round_rate(hw, rate, &parent_rate);
> +	if (rate != 125000000)
> +		iowrite32(1, mgmt->reg);
> +	else
> +		iowrite32(0, mgmt->reg);
> +	mgmt->rate = rate;
> +
> +	return 0;
> +}
> +
> +static const struct clk_ops fu540_c000_ops = {
> +	.recalc_rate = fu540_macb_tx_recalc_rate,
> +	.round_rate = fu540_macb_tx_round_rate,
> +	.set_rate = fu540_macb_tx_set_rate,
> +};
> +
> +static int fu540_c000_clk_init(struct platform_device *pdev, struct clk **pclk,
> +			       struct clk **hclk, struct clk **tx_clk,
> +			       struct clk **rx_clk, struct clk **tsu_clk)
> +{
> +	struct clk_init_data init;
> +	int err = 0;
> +
> +	err = macb_clk_init(pdev, pclk, hclk, tx_clk, rx_clk, tsu_clk);
> +	if (err)
> +		return err;
> +
> +	mgmt = devm_kzalloc(&pdev->dev, sizeof(*mgmt), GFP_KERNEL);
> +	if (!mgmt)
> +		return -ENOMEM;
> +
> +	init.name = "sifive-gemgxl-mgmt";
> +	init.ops = &fu540_c000_ops;
> +	init.flags = 0;
> +	init.num_parents = 0;
> +
> +	mgmt->rate = 0;
> +	mgmt->hw.init = &init;
> +
> +	*tx_clk = clk_register(NULL, &mgmt->hw);
> +	if (IS_ERR(*tx_clk))
> +		return PTR_ERR(*tx_clk);
> +
> +	err = clk_prepare_enable(*tx_clk);
> +	if (err)
> +		dev_err(&pdev->dev, "failed to enable tx_clk (%u)\n", err);
> +	else
> +		dev_info(&pdev->dev, "Registered clk switch '%s'\n", init.name);
> +
> +	return 0;
> +}
> +
> +static int fu540_c000_init(struct platform_device *pdev)
> +{
> +	struct resource *res;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +	if (!res)
> +		return -ENODEV;
> +
> +	mgmt->reg = ioremap(res->start, resource_size(res));
> +	if (!mgmt->reg)
> +		return -ENOMEM;
> +
> +	return macb_init(pdev);
> +}
> +
> +static const struct macb_config fu540_c000_config = {
> +	.caps = MACB_CAPS_GIGABIT_MODE_AVAILABLE | MACB_CAPS_JUMBO |
> +		MACB_CAPS_GEM_HAS_PTP,
> +	.dma_burst_length = 16,
> +	.clk_init = fu540_c000_clk_init,
> +	.init = fu540_c000_init,
> +	.jumbo_max_len = 10240,
> +};
> +
>  static const struct macb_config at91sam9260_config = {
>  	.caps = MACB_CAPS_USRIO_HAS_CLKEN | MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII,
>  	.clk_init = macb_clk_init,
> @@ -3992,6 +4112,9 @@ static int at91ether_init(struct platform_device *pdev)
>  	{ .compatible = "cdns,emac", .data = &emac_config },
>  	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
>  	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
> +#ifdef CONFIG_MACB_SIFIVE_FU540
> +	{ .compatible = "sifive,fu540-macb", .data = &fu540_c000_config },
> +#endif

This #ifdef should not be needed.

>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, macb_dt_ids);
> @@ -4199,6 +4322,9 @@ static int macb_probe(struct platform_device *pdev)
>  
>  err_disable_clocks:
>  	clk_disable_unprepare(tx_clk);
> +#ifdef CONFIG_MACB_SIFIVE_FU540
> +	clk_unregister(tx_clk);
> +#endif

So long as tx_clk is NULL, you can call clk_unregister(). So please
remove the #ifdef.


>  	clk_disable_unprepare(hclk);
>  	clk_disable_unprepare(pclk);
>  	clk_disable_unprepare(rx_clk);
> @@ -4233,6 +4359,9 @@ static int macb_remove(struct platform_device *pdev)
>  		pm_runtime_dont_use_autosuspend(&pdev->dev);
>  		if (!pm_runtime_suspended(&pdev->dev)) {
>  			clk_disable_unprepare(bp->tx_clk);
> +#ifdef CONFIG_MACB_SIFIVE_FU540
> +			clk_unregister(bp->tx_clk);
> +#endif

Same here.

In general try to avoid #ifdef in C code.

   Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
