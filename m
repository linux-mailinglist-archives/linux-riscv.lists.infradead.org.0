Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348232F747
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 07:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0w8ZwAr7i4mUm1TtoqPXc45cWoS3wxqeZeND1azMEM=; b=D5w6bVoVlssE7T
	1QA8MwuX3WdkoIkp5uFefNT/TvxdcTRzy1qScM3goAeyWzjZRwz6KE5TFd+XOXgyXFfOnyx124Afj
	xzX4LsWixKtw77zPE2VXwdsWEvWIvR9QYukkWaIZQ4FWUXSp9FE0EMlYESuKS9Yenoy6o8HiQ6CWA
	O0CCJMoMBh+rLiMI1W/c2QsOnht0hs0N6GNFInqcgwd01n/dfP7LopCc+yw5EUr/TDkhiTZtTIIGm
	AYHsZrXM74hyivpHzySMDC7XPymK6RDf3fmQdgW2Biy962FzMhS8RLF5TYpEnCQvA9JL+Ko5CNqZw
	dcSzEspfBMo6kcosqlBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWDzn-0003GT-Ox; Thu, 30 May 2019 05:52:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWDzm-0003GK-GA; Thu, 30 May 2019 05:52:58 +0000
Date: Wed, 29 May 2019 22:52:58 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nick Hu <nickhu@andestech.com>
Subject: Re: [PATCH] riscv: Fix udelay in RV32.
Message-ID: <20190530055258.GA7170@infradead.org>
References: <381ee6950c84b868ca6a3c676eb981a1980889a3.1559035050.git.nickhu@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <381ee6950c84b868ca6a3c676eb981a1980889a3.1559035050.git.nickhu@andestech.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com,
 linux-kernel@vger.kernel.org, green.hu@gmail.com, greentime@andestech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 05:26:49PM +0800, Nick Hu wrote:
> In RV32, udelay would delay the wrong cycle.
> When it shifts right "UDELAY_SHITFT" bits, it
> either delays 0 cycle or 1 cycle. It only works
> correctly in RV64. Because the 'ucycles' always
> needs to be 64 bits variable.

Please use up all your ~72 chars per line in the commit log.

> diff --git a/arch/riscv/lib/delay.c b/arch/riscv/lib/delay.c
> index dce8ae24c6d3..da847f49fb74 100644
> --- a/arch/riscv/lib/delay.c
> +++ b/arch/riscv/lib/delay.c
> @@ -88,7 +88,7 @@ EXPORT_SYMBOL(__delay);
>  
>  void udelay(unsigned long usecs)
>  {
> -	unsigned long ucycles = usecs * lpj_fine * UDELAY_MULT;
> +	unsigned long long ucycles = (unsigned long long)usecs * lpj_fine * UDELAY_MULT;

And this creates a way too long line.  Pleaase use u64 instead of
unsigned long long to clarify the intention while also fixing the long
lines.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
