Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9F6F0455
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 18:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gP3hagy/I7igSAxSNKj3uaYxiswQ+72CKm21EZ93DGY=; b=GJ72UhKYnBMYnR
	VenM0NWABs0P1b5UikZXCeBcqt+ihpnxSvns7oWbISWRqU0QTYUIWlAkXp16PgwCvTePT9wrHuzv+
	txjDnrS06cpKCqZ74C/fkZkDfRWHyku70EA/+VEKcr12152HCUoTtbT4Z/9FBcWfLReFlFDKHmA0i
	cyrHPdYo+t28URB6y9vip98V0vDmRAKRw61DXgeebaOgixoVzCZwztyChtgdkkdq9qbzNm17IlA0a
	apWxq8RsMtzEpV2i1cEWtEMt68hchVaEwmkM7YK6JebXFOIiogtM04F+7rp5HJZD3l0MuGZbbrbaK
	H+ayXiZHD8oS1mQD6iqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2wR-00023W-QF; Tue, 05 Nov 2019 17:48:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2wO-00022r-0K
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 17:48:29 +0000
Received: from localhost (unknown [106.51.111.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BAA43217F5;
 Tue,  5 Nov 2019 17:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572976107;
 bh=rqSz4Ho15VHI287QiYSiRFPVKKVZZLoCGHIbRvCiBlY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S41kQmvjld7nCfq9WET/5YTWrj36zgoRns3WYyXz/7XZZr00Ju4fGSAn30gpIoInN
 MJuxjyMCiV6ZMlyx7RAgtgM45Ye/uJtmuTKSxMVKVIoGtaGQf3Kpl5c23xr6QOoC0X
 13r6IMu7pFy06qapwaXk5Ht1OfE+xgZFyUTBO1XA=
Date: Tue, 5 Nov 2019 23:18:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Green Wan <green.wan@sifive.com>
Subject: Re: [PATCH v5 3/4] dmaengine: sf-pdma: add platform DMA support for
 HiFive Unleashed A00
Message-ID: <20191105174823.GF952516@vkoul-mobl>
References: <20191028075658.12143-1-green.wan@sifive.com>
 <20191028075658.12143-4-green.wan@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028075658.12143-4-green.wan@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_094828_086727_D6E5A60F 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Albert Ou <aou@eecs.berkeley.edu>, kbuild test robot <lkp@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Sagar Kadam <sagar.kadam@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 28-10-19, 15:56, Green Wan wrote:
> Add PDMA driver, sf-pdma, to enable DMA engine on HiFive Unleashed
> Rev A00 board.
> 
>  - Implement dmaengine APIs, support MEM_TO_MEM async copy.
>  - Tested by DMA Test client
>  - Supports 4 channels DMA, each channel has 1 done and 1 err
>    interrupt connected to platform-level interrupt controller (PLIC).
>  - Depends on DMA_ENGINE and DMA_VIRTUAL_CHANNELS
> 
> The datasheet is here:
> 
>   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> 
> Follow the DMAengine controller doc,
> "./Documentation/driver-api/dmaengine/provider.rst" to implement DMA
> engine. And use the dma test client in doc,
> "./Documentation/driver-api/dmaengine/dmatest.rst", to test.
> 
> Each DMA channel has separate HW regs and support done and error ISRs.
> 4 channels share 1 done and 1 err ISRs. There's no expander/arbitrator
> in DMA HW.
> 
>    ------               ------
>    |    |--< done 23 >--|ch 0|
>    |    |--< err  24 >--|    |     (dma0chan0)
>    |    |               ------
>    |    |               ------
>    |    |--< done 25 >--|ch 1|
>    |    |--< err  26 >--|    |     (dma0chan1)
>    |PLIC|               ------
>    |    |               ------
>    |    |--< done 27 >--|ch 2|
>    |    |--< err  28 >--|    |     (dma0chan2)
>    |    |               ------
>    |    |               ------
>    |    |--< done 29 >--|ch 3|
>    |    |--< err  30 >--|    |     (dma0chan3)
>    ------               ------
> 
> Reviewed-by: Vinod Koul <vkoul@kernel.org>

when did i provide this?

> Signed-off-by: Green Wan <green.wan@sifive.com>
> Reported-by: kbuild test robot <lkp@intel.com>
> Fixes: 31c3b98b5a01 ("dmaengine: sf-pdma: add platform DMA support for HiFive Unleashed A00")

Fixes what... this is not a upstream commit?

> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---

Please list the changes done from prev version, here or in cover letter

> +static struct sf_pdma_desc *sf_pdma_alloc_desc(struct sf_pdma_chan *chan)
> +{
> +	struct sf_pdma_desc *desc;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&chan->lock, flags);
> +
> +	if (chan->desc && !chan->desc->in_use) {
> +		spin_unlock_irqrestore(&chan->lock, flags);
> +		return chan->desc;
> +	}
> +
> +	spin_unlock_irqrestore(&chan->lock, flags);
> +
> +	desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
> +

this empty line in not required

> +static struct dma_async_tx_descriptor *
> +	sf_pdma_prep_dma_memcpy(struct dma_chan *dchan,
> +				dma_addr_t dest,

please make it left justified

> +static int sf_pdma_slave_config(struct dma_chan *dchan,
> +				struct dma_slave_config *cfg)
> +{
> +	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> +
> +	memcpy(&chan->cfg, cfg, sizeof(*cfg));
> +	chan->dma_dir = DMA_MEM_TO_MEM;

?? looking at changelog we have only memcpy support, so this should not
be here, pls remove this.

> +static enum dma_status
> +sf_pdma_tx_status(struct dma_chan *dchan,
> +		  dma_cookie_t cookie,
> +		  struct dma_tx_state *txstate)
> +{
> +	struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> +	enum dma_status status;
> +
> +	status = dma_cookie_status(dchan, cookie, txstate);
> +
> +	if (txstate && status != DMA_ERROR)
> +		dma_set_residue(txstate, sf_pdma_desc_residue(chan));

which residue? the query can be for a cookie which is still in pending
list! you need to check the cookie and only read register for cookie if
submitted

> +static int sf_pdma_remove(struct platform_device *pdev)
> +{
> +	struct sf_pdma *pdma = platform_get_drvdata(pdev);
> +	struct sf_pdma_chan *ch;
> +	int i;
> +
> +	for (i = 0; i < PDMA_NR_CH; i++) {
> +		ch = &pdma->chans[i];
> +
> +		list_del(&ch->vchan.chan.device_node);
> +		tasklet_kill(&ch->vchan.task);
> +		tasklet_kill(&ch->done_tasklet);
> +		tasklet_kill(&ch->err_tasklet);

you have an isr registered which can fire and schedule tasklets..
-- 
~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
