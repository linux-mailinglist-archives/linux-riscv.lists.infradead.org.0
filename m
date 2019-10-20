Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AA3DDEC4
	for <lists+linux-riscv@lfdr.de>; Sun, 20 Oct 2019 16:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNRjMGRwrorE38M701q0YO5O5YboMBJH2SWc6P16wSs=; b=pKvnkJgH8YtvsO
	uzXI3hiI0UgZsO63fHk1lrwCNHXxXZUdrGPZClS9y9Eaxcf6otX5+PNf78u8fowLvMJTeuK3POBu3
	IdJZWw5JmNVwqXzO6g70lWUr2a9KoAirqaOPTjvW3YGFmyTzoCXKwTtxoJSvyQExr5+9Wb7NPcUmS
	1IzOSU+s6gwWtFxku731yI4FBrQSnREI28R3b4SF+tMPuWPW5RextG3TIXMdA0eMXCnrFRSxLAd0k
	nDvJniuc3iYwpgANZKgfh3gooaE+60p49duz8GyPYVSSJN2sB+9ObdrTnBBhjHrzqjc0mnMAX8xz8
	zf6+sSk9cRx/GWS2Gfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMBke-0002Pc-6V; Sun, 20 Oct 2019 14:00:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMBkY-0001rl-9V
 for linux-riscv@lists.infradead.org; Sun, 20 Oct 2019 14:00:04 +0000
Received: from localhost (unknown [106.51.108.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA33221835;
 Sun, 20 Oct 2019 14:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571580001;
 bh=dJPbKdcJSzXbptQK//XpIi5kDh3BWFfFpMSmRiLd+iI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y+4PNmnb2iFDucdONLx+ZV2n+HrKsZu2LDRPoEw3wwEya+INUdmj0vmD1Sj+ZyFfP
 6XPvCCHl1tedShe5sLdLzQlcySprmWYY7U/kTztvJ2MzyTqraBfTOELNGhikrU6eZJ
 w2F9AEKapQtjxn4rrJdDtdVta5mApmbkjDtUznWM=
Date: Sun, 20 Oct 2019 19:29:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Green Wan <green.wan@sifive.com>
Subject: Re: [PATCH v4 3/4] dmaengine: sf-pdma: add platform DMA support for
 HiFive Unleashed A00
Message-ID: <20191020135952.GU2654@vkoul-mobl>
References: <20191003090945.29210-1-green.wan@sifive.com>
 <20191003090945.29210-4-green.wan@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003090945.29210-4-green.wan@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_070002_397726_51D822D9 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, linux-hackers@sifive.com,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 03-10-19, 17:09, Green Wan wrote:

> diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
> index 7af874b69ffb..03dc82094857 100644
> --- a/drivers/dma/Kconfig
> +++ b/drivers/dma/Kconfig
> @@ -661,6 +661,8 @@ source "drivers/dma/qcom/Kconfig"
>  
>  source "drivers/dma/dw/Kconfig"
>  
> +source "drivers/dma/sf-pdma/Kconfig"

Please keep this in sorted order

> +
>  source "drivers/dma/dw-edma/Kconfig"
>  
>  source "drivers/dma/hsu/Kconfig"
> diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
> index f5ce8665e944..4bbd90563ede 100644
> --- a/drivers/dma/Makefile
> +++ b/drivers/dma/Makefile
> @@ -28,6 +28,7 @@ obj-$(CONFIG_DMA_SUN4I) += sun4i-dma.o
>  obj-$(CONFIG_DMA_SUN6I) += sun6i-dma.o
>  obj-$(CONFIG_DW_AXI_DMAC) += dw-axi-dmac/
>  obj-$(CONFIG_DW_DMAC_CORE) += dw/
> +obj-$(CONFIG_SF_PDMA) += sf-pdma/

here as well!

>  obj-$(CONFIG_DW_EDMA) += dw-edma/
>  obj-$(CONFIG_EP93XX_DMA) += ep93xx_dma.o
>  obj-$(CONFIG_FSL_DMA) += fsldma.o
> diff --git a/drivers/dma/sf-pdma/Kconfig b/drivers/dma/sf-pdma/Kconfig
> new file mode 100644
> index 000000000000..0e01a5728a79
> --- /dev/null
> +++ b/drivers/dma/sf-pdma/Kconfig
> @@ -0,0 +1,6 @@
> +config SF_PDMA
> +	bool "Sifive PDMA controller driver"

why not a module?

> +#include <linux/module.h>
> +#include <linux/device.h>
> +#include <linux/kernel.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/dmaengine.h>
> +#include <linux/err.h>
> +#include <linux/interrupt.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/irq.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_dma.h>

do you need all the headers?

> +#include <linux/time64.h>

why is this required?

> +
> +#include "sf-pdma.h"
> +#include "../dmaengine.h"
> +#include "../virt-dma.h"
> +
> +#define SIFIVE_PDMA_NAME "sf-pdma"

this is used only once! can you use it directly to help readability!

> +
> +#ifndef readq
> +static inline unsigned long long readq(void __iomem *addr)
> +{
> +	return readl(addr) | (((unsigned long long)readl(addr + 4)) << 32LL);
> +}
> +#endif
> +
> +#ifndef writeq
> +static inline void writeq(unsigned long long v, void __iomem *addr)
> +{
> +	writel(v & 0xffffffff, addr);
> +	writel(v >> 32, addr + 4);

why not use upper/lower_32_bits?

> +static void sf_pdma_fill_desc(struct sf_pdma_chan *chan,
> +			      u64 dst,
> +			      u64 src,
> +			      u64 size)

these can fit in a line!

> +struct dma_async_tx_descriptor *
> +	sf_pdma_prep_dma_memcpy(struct dma_chan *dchan,
> +				dma_addr_t dest,
> +				dma_addr_t src,
> +				size_t len,
> +				unsigned long flags)
> +{
> +	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> +	struct sf_pdma_desc *desc;
> +
> +	if (!chan || !len || !dest || !src) {
> +		pr_debug("%s: Please check dma len, dest, src!\n", __func__);

why pr_debug() and not dev_debug(), bonus you get the device name in
each print!

and this should be an error print!

> +static void sf_pdma_unprep_slave_dma(struct sf_pdma_chan *chan)
> +{
> +	if (chan->dma_dir != DMA_NONE)
> +		dma_unmap_resource(chan->vchan.chan.device->dev,
> +				   chan->dma_dev_addr,
> +				   chan->dma_dev_size,
> +				   chan->dma_dir, 0);

this does not seem correct to me, in slave cases the client is supposed
to take care of mapping and unmapping, why is this being done here?

> +	chan->dma_dir = DMA_NONE;
> +}
> +
> +static int sf_pdma_slave_config(struct dma_chan *dchan,
> +				struct dma_slave_config *cfg)
> +{
> +	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> +
> +	memcpy(&chan->cfg, cfg, sizeof(*cfg));
> +	sf_pdma_unprep_slave_dma(chan);

why unmap!

> +static enum dma_status
> +sf_pdma_tx_status(struct dma_chan *dchan,
> +		  dma_cookie_t cookie,
> +		  struct dma_tx_state *txstate)
> +{
> +	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> +	enum dma_status status;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&chan->lock, flags);
> +	if (chan->xfer_err) {
> +		chan->status = DMA_ERROR;
> +		spin_unlock_irqrestore(&chan->lock, flags);
> +		return chan->status;

well this is not correct! The status is queried for a descriptor and we
might have that succeeded so returning error of a channel for descriptor
does not make sense!

> +static irqreturn_t sf_pdma_done_isr(int irq, void *dev_id)
> +{
> +	struct sf_pdma_chan *chan = dev_id;
> +	struct pdma_regs *regs = &chan->regs;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&chan->lock, flags);
> +	writel((readl(regs->ctrl)) & ~PDMA_DONE_STATUS_MASK, regs->ctrl);
> +	spin_unlock_irqrestore(&chan->lock, flags);

why not submit next transaction here? This is DMA so we do care about
utilizing it!

> +static int sf_pdma_irq_init(struct platform_device *pdev, struct sf_pdma *pdma)
> +{
> +	int irq, r, i;
> +	struct sf_pdma_chan *chan;
> +
> +	for (i = 0; i < pdma->n_chans; i++) {
> +		chan = &pdma->chans[i];
> +
> +		irq = platform_get_irq(pdev, i * 2);
> +		if (irq < 0) {
> +			dev_err(&pdev->dev, "Can't get pdma done irq.\n");
> +			return irq;
> +		}
> +
> +		r = devm_request_irq(&pdev->dev, irq, sf_pdma_done_isr, 0,
> +				     dev_name(&pdev->dev), (void *)chan);
> +		if (r) {
> +			dev_err(&pdev->dev, "Fail to attach done ISR: %d\n", r);
> +			return -1;

-1 :(

> +static int sf_pdma_probe(struct platform_device *pdev)
> +{
> +	struct sf_pdma *pdma;
> +	struct sf_pdma_chan *chan;
> +	struct resource *res;
> +	int len, chans;
> +	int ret;
> +
> +	chans = PDMA_NR_CH;
> +	len = sizeof(*pdma) + sizeof(*chan) * chans;
> +	pdma = devm_kzalloc(&pdev->dev, len, GFP_KERNEL);
> +	if (!pdma)
> +		return -ENOMEM;
> +
> +	pdma->n_chans = chans;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	pdma->membase = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(pdma->membase))
> +		goto ERR_MEMBASE;
> +
> +	ret = sf_pdma_irq_init(pdev, pdma);
> +	if (ret)
> +		goto ERR_INITIRQ;
> +
> +	sf_pdma_setup_chans(pdma);
> +
> +	pdma->dma_dev.dev = &pdev->dev;
> +	dma_cap_set(DMA_MEMCPY, pdma->dma_dev.cap_mask);
> +
> +	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
> +	if (ret)
> +		pr_warn("*** Failed to set DMA mask. Fall back to default.\n");
> +
> +	/* Setup DMA APIs */
> +	pdma->dma_dev.device_alloc_chan_resources =
> +		sf_pdma_alloc_chan_resources;
> +	pdma->dma_dev.device_free_chan_resources =
> +		sf_pdma_free_chan_resources;
> +	pdma->dma_dev.device_tx_status = sf_pdma_tx_status;
> +	pdma->dma_dev.device_prep_dma_memcpy = sf_pdma_prep_dma_memcpy;
> +	pdma->dma_dev.device_config = sf_pdma_slave_config;
> +	pdma->dma_dev.device_terminate_all = sf_pdma_terminate_all;
> +	pdma->dma_dev.device_issue_pending = sf_pdma_issue_pending;

please set the capabilities of the controller, width, direction,
granularity etc!

> +static int sf_pdma_remove(struct platform_device *pdev)
> +{
> +	struct sf_pdma *pdma = platform_get_drvdata(pdev);
> +
> +	dma_async_device_unregister(&pdma->dma_dev);

since you used devm_irq_() you have irq which is running, tasklets which
maybe schedule and can be scheduled again including the vchan one!
-- 
~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
