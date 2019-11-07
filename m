Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A806F250A
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 03:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jJiKiBvqGPejCNvf8aTAxXQIVUIUowK9a6zoa0aSkM=; b=T8Euv1uNr4kO2L
	+QD5OPP6PXllXcMghVvfudStyqD2+hh6dG7fJfbQSggGLiBKb/uYzcLX5BJzFllbhdE+MIS9Qw7So
	vgqdF6TRj3IDkSFhEL0wlUO0MaYgYSYjuF/cVuXcmOd/ZgFhdkRvPKMYPflcmTqVNulje9rYPISF0
	vEQM0+f8oClYv+chd3Gs1lVoiPYEVj+Mj9tIwB4Q/6MkUJf2ZShyzsllHpwy7TXAzjTU3c/tEeUCP
	Iccm/TpLdV27gAKvaRd8poL23SO7TB2YQnoWqjUM8Kf2TIvPVju84tcRW4BaYGx/i5qg4V/bqIBZB
	rGRmn5uQmSgkHFzHQSvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXH1-0005wx-Oc; Thu, 07 Nov 2019 02:11:47 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXGy-0005vx-7X
 for linux-riscv@lists.infradead.org; Thu, 07 Nov 2019 02:11:45 +0000
Received: by mail-il1-x142.google.com with SMTP id z10so337745ilo.8
 for <linux-riscv@lists.infradead.org>; Wed, 06 Nov 2019 18:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zj5nVV7hFwHQ61cfvcd7q5vRxcIEvVb9YfJiy7fOWvA=;
 b=QS6qH6KplAbzHfCsXrTMxGf7/EoowWyvJoRyUXZH5b5nSj1rJMvUcnL5KVNbQa9KdY
 N7i/quh0dY0FujcDlilijbFSYfm+WYVmUB93UA2Xy8j5TZaYNXzxMRgwikJx6kcbcwjZ
 +rW1WFH9ixpIEG9zzF8ddoItXj1z9E6alHN7AGV7acyoPCvPcI7sHP8ttXAIGmEAKtCK
 Hz0uyLuIhA5QFb+zP2QX1ZsobUpOaQQqodCyVcoolVvXWupcllpLHiVyiD2+A+Asc8d0
 /rB//XJsfvWLnv+UVN+KizmMR88BlZNGvmYMYj5nVVmpPKTZnYpRTre5rsbXzRdjcPfG
 0WVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zj5nVV7hFwHQ61cfvcd7q5vRxcIEvVb9YfJiy7fOWvA=;
 b=l0cvB2oQmlryb/KOmKndYib7QeoFX3B+8C/L3+dXYqEvabL73YqtQYl+8wMBASBmUK
 Vg83ATAJ1B4YIx9498zMNDiQc1Q3D1M7elS5H7trEW7kK80DHL0EL/F9DuuEz+stEfgR
 vfc4L4vpnOXvsiuV9ZdeN/bkGPBWLThmUjss4Uk7pK6Zqfvx24f8iargaR6ls7kDE/7l
 JrPdiA9ETNWuRGmP9ma0HnTO6hI2XfUpxTHEUMEWbQMWZwbUxLTbpZPtXp9sFxyya0NL
 7hjBjusDAZF4aOF2GWO3QRS1yfmrCJw8M7AwsSFTvfC+ijVlQJxXYUh1d3Pi37M/PtGt
 vkpg==
X-Gm-Message-State: APjAAAUK8FrAvw/Q26nye6ynQkvoPoMhSJVrKCNy8RBCHhxo4xJpEhzw
 76wk9BtRr1TQQ7MVAdH2d33aii07S8tav5Bw+ue3+Q==
X-Google-Smtp-Source: APXvYqzyeDjr5TTdOJAdTcs2Mr8QC5C9jpLr0O1hsPKOR4KROaGVbyvqfBoBKMTT9YtrQzx5v4HhQifzo5shXhGLKpw=
X-Received: by 2002:a92:4555:: with SMTP id s82mr1356329ila.228.1573092702728; 
 Wed, 06 Nov 2019 18:11:42 -0800 (PST)
MIME-Version: 1.0
References: <20191028075658.12143-1-green.wan@sifive.com>
 <20191028075658.12143-4-green.wan@sifive.com>
 <20191105174823.GF952516@vkoul-mobl>
In-Reply-To: <20191105174823.GF952516@vkoul-mobl>
From: Green Wan <green.wan@sifive.com>
Date: Thu, 7 Nov 2019 10:11:33 +0800
Message-ID: <CAJivOr7ZGwm8Bp1oGcYQHkao2zr0GsMQrcdawMHukmeA8wYVnQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/4] dmaengine: sf-pdma: add platform DMA support for
 HiFive Unleashed A00
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_181144_279721_0DA31688 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, Nov 6, 2019 at 1:48 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 28-10-19, 15:56, Green Wan wrote:
> > Add PDMA driver, sf-pdma, to enable DMA engine on HiFive Unleashed
> > Rev A00 board.
> >
> >  - Implement dmaengine APIs, support MEM_TO_MEM async copy.
> >  - Tested by DMA Test client
> >  - Supports 4 channels DMA, each channel has 1 done and 1 err
> >    interrupt connected to platform-level interrupt controller (PLIC).
> >  - Depends on DMA_ENGINE and DMA_VIRTUAL_CHANNELS
> >
> > The datasheet is here:
> >
> >   https://static.dev.sifive.com/FU540-C000-v1.0.pdf
> >
> > Follow the DMAengine controller doc,
> > "./Documentation/driver-api/dmaengine/provider.rst" to implement DMA
> > engine. And use the dma test client in doc,
> > "./Documentation/driver-api/dmaengine/dmatest.rst", to test.
> >
> > Each DMA channel has separate HW regs and support done and error ISRs.
> > 4 channels share 1 done and 1 err ISRs. There's no expander/arbitrator
> > in DMA HW.
> >
> >    ------               ------
> >    |    |--< done 23 >--|ch 0|
> >    |    |--< err  24 >--|    |     (dma0chan0)
> >    |    |               ------
> >    |    |               ------
> >    |    |--< done 25 >--|ch 1|
> >    |    |--< err  26 >--|    |     (dma0chan1)
> >    |PLIC|               ------
> >    |    |               ------
> >    |    |--< done 27 >--|ch 2|
> >    |    |--< err  28 >--|    |     (dma0chan2)
> >    |    |               ------
> >    |    |               ------
> >    |    |--< done 29 >--|ch 3|
> >    |    |--< err  30 >--|    |     (dma0chan3)
> >    ------               ------
> >
> > Reviewed-by: Vinod Koul <vkoul@kernel.org>
>
> when did i provide this?
>
> > Signed-off-by: Green Wan <green.wan@sifive.com>
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Fixes: 31c3b98b5a01 ("dmaengine: sf-pdma: add platform DMA support for HiFive Unleashed A00")
>
> Fixes what... this is not a upstream commit?
>

Since I received a RFC patch from kbuild with the fix commit number I
thought it was about merged. RFC requested to add the "Reported-by"
and "Fixes" but looks miss the contributor so I added them as well.
I'll remove them in next submit. Sorry for causing confusion.

> > Signed-off-by: kbuild test robot <lkp@intel.com>
> > ---
>
> Please list the changes done from prev version, here or in cover letter
>
will add change log.

> > +static struct sf_pdma_desc *sf_pdma_alloc_desc(struct sf_pdma_chan *chan)
> > +{
> > +     struct sf_pdma_desc *desc;
> > +     unsigned long flags;
> > +
> > +     spin_lock_irqsave(&chan->lock, flags);
> > +
> > +     if (chan->desc && !chan->desc->in_use) {
> > +             spin_unlock_irqrestore(&chan->lock, flags);
> > +             return chan->desc;
> > +     }
> > +
> > +     spin_unlock_irqrestore(&chan->lock, flags);
> > +
> > +     desc = kzalloc(sizeof(*desc), GFP_NOWAIT);
> > +
>
> this empty line in not required
>
> > +static struct dma_async_tx_descriptor *
> > +     sf_pdma_prep_dma_memcpy(struct dma_chan *dchan,
> > +                             dma_addr_t dest,
>
> please make it left justified

will fix.
>
> > +static int sf_pdma_slave_config(struct dma_chan *dchan,
> > +                             struct dma_slave_config *cfg)
> > +{
> > +     struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> > +
> > +     memcpy(&chan->cfg, cfg, sizeof(*cfg));
> > +     chan->dma_dir = DMA_MEM_TO_MEM;
>
> ?? looking at changelog we have only memcpy support, so this should not
> be here, pls remove this.
>
> > +static enum dma_status
> > +sf_pdma_tx_status(struct dma_chan *dchan,
> > +               dma_cookie_t cookie,
> > +               struct dma_tx_state *txstate)
> > +{
> > +     struct sf_pdma_chan *chan = to_sf_pdma_chan(dchan);
> > +     enum dma_status status;
> > +
> > +     status = dma_cookie_status(dchan, cookie, txstate);
> > +
> > +     if (txstate && status != DMA_ERROR)
> > +             dma_set_residue(txstate, sf_pdma_desc_residue(chan));
>
> which residue? the query can be for a cookie which is still in pending
> list! you need to check the cookie and only read register for cookie if
> submitted
>

WIll fix this.

> > +static int sf_pdma_remove(struct platform_device *pdev)
> > +{
> > +     struct sf_pdma *pdma = platform_get_drvdata(pdev);
> > +     struct sf_pdma_chan *ch;
> > +     int i;
> > +
> > +     for (i = 0; i < PDMA_NR_CH; i++) {
> > +             ch = &pdma->chans[i];
> > +
> > +             list_del(&ch->vchan.chan.device_node);
> > +             tasklet_kill(&ch->vchan.task);
> > +             tasklet_kill(&ch->done_tasklet);
> > +             tasklet_kill(&ch->err_tasklet);
>
> you have an isr registered which can fire and schedule tasklets..

will fix it by free irq first. Thanks for reviewing.

> --
> ~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
