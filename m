Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493F18CA72
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 06:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCQ77sDgtWN+KW9+/7mvhNJCTD5I0KjOwYi3YNTzh80=; b=sCIbbnTisDaPY7
	N13/gGik3JHCTMykV2J9S10CdcHDOsfifYcCyAwL3LyRKOrQn780UAC31+k1tNJCHraz54Fw+hr3r
	iiB5JtlaC577X/I0vEyza+powQc3/xWU45q4JBQc0jjsBx7UMO7xLEyPKvIivHg6DR79LdxZ1Q/ui
	dsgv1Vu3CqxtbXCubz47M0SMYxJYjuBPEpG2EKUVeTrVmpUibkacLCqXJbtql2nNfvtk3zjmRMw+L
	hgJ3XmFuYZDocRyB91xrqyfPLcw9noGkwx/naYq8WXmDx7USv6SsZ7phju2uqDgjYCtDQrIyVieeX
	45YC6i3tX5axo8NssCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxl0y-0007YD-0n; Wed, 14 Aug 2019 04:36:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxl0u-0007Xb-8Z
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 04:35:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9889C68B02; Wed, 14 Aug 2019 06:35:51 +0200 (CEST)
Date: Wed, 14 Aug 2019 06:35:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Alan Kao <alankao@andestech.com>
Subject: Re: [PATCH 13/15] riscv: clear the instruction cache and all
 registers when booting
Message-ID: <20190814043551.GA22862@lst.de>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-14-hch@lst.de> <20190814010013.GA18655@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814010013.GA18655@andestech.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_213556_451883_84741F71 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 09:00:14AM +0800, Alan Kao wrote:
> But it doesn't really mean that the running system has an FPU given CONFIG_FPU
> enabled.  Normally the existence of an FPU is checked in riscv_fill_hwcap by
> searching device tree, where the code looks like
> 
> 
> bool has_fpu = false; // this one is global
> ...
> #ifdef CONFIG_FPU
>         if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
>                 has_fpu = true;
> #endif
> 
> 
> Or does CONFIG_FPU have a more intuitive meaning when CONFIG_M_MODE is enabled?

No, it doesn't..

> 
> > +	csrr	t0, CSR_MISA
> > +	andi	t0, t0, (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D)
> > +	bnez	t0, .Lreset_regs_done

... which is why we have these few lines of code that check the
caps returns from the misa CSR, similar to the elf_caps check quoted
above.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
