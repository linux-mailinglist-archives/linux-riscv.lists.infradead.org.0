Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C6D1C82DC
	for <lists+linux-riscv@lfdr.de>; Thu,  7 May 2020 08:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=So6Gf/kU/jSWCdwPkrSgEi33O+UKY1kKTItod9Yj3Ds=; b=hjJho9VHeOk/2BToRWUW0FKG3
	xyl53estw98Cpf+09+6fNUHAVh3B/XrvBVfkqZ3noSTJLeSsQHONctfxlAXgAz1vyA2+9aKe+aROf
	aKLc4JYfXXp20DgbL88/DAsmkyJyLQzIq7TR1PLlDwaQ2i5Mm/efnzVrMJ+ofREMeBKAvPJ+kN4mh
	OtVjtPfqzxM1m1bG52IPtCcRMu7lpFgUfWwBn3yvkTqZrzHZC7nyR5WX+btkwZ4PzydQAFErF7uAZ
	+KrHse137zvkm7H8OuvjF8LOwLKLrJIEMo1ZZi0ZvgrZjFLA6I8eL+hrfpTIvuCNFnvpNj39RIKhw
	lQa46RtLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWaMA-0001yB-Er; Thu, 07 May 2020 06:50:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWaM5-0001MF-Jv
 for linux-riscv@lists.infradead.org; Thu, 07 May 2020 06:50:03 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A9BD2078C;
 Thu,  7 May 2020 06:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588834201;
 bh=67bo13yr1fgSlzm944ysiIl08WurnIIY4DaTD9ULJU0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aXws3vsm2vna8PmalD+QiDyaxBYfGkVWnkG8JYsXQAMYNHA04e8ecxyj3P4W2UPhs
 JMZrth5vfB4fBnzydQJ6OA+vxsrI6a6VzTrRxj283uDaawFn+wIN1edxCBYTvnv13W
 kPzU3Ktrba5h2R6Ciq6A80YDXiXE3/Om6bPbhoJY=
Date: Thu, 7 May 2020 08:49:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
Subject: Re: [PATCH] tty: serial: add missing spin_lock_init for SiFive UART
Message-ID: <20200507064958.GB798308@kroah.com>
References: <1588793212-5586-1-git-send-email-sagar.kadam@sifive.com>
 <1588793212-5586-2-git-send-email-sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1588793212-5586-2-git-send-email-sagar.kadam@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_235001_694664_3DAE2BF3 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Atish.Patra@wdc.com, linux-riscv@lists.infradead.org, Anup.Patel@wdc.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:26:52PM -0700, Sagar Shrikant Kadam wrote:
> Uninitialised spin lock on sifive serial port (ssp) raised
> a race condition and resulted in spin lock bad magic as
> reported and discussed here [1]
> Initialising the spin lock resolves the issue.
> 
> The fix is tested on HiFive Unleashed A00 board with Linux 5.7-rc4
> and OpenSBI v0.7
> 
> [1] http://lists.infradead.org/pipermail/linux-riscv/2020-May/009713.html

In the future, can you link to lore.kernel.org instead?

> 
> Fixes: 45c054d0815b ("tty: serial: add driver for the SiFive UART")

So this should also go to stable kernels, right?

> Reported-by: Atish Patra <Atish.Patra@wdc.com>
> Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> ---
>  drivers/tty/serial/sifive.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
> index 13eadcb..b061bdb 100644
> --- a/drivers/tty/serial/sifive.c
> +++ b/drivers/tty/serial/sifive.c
> @@ -989,6 +989,7 @@ static int sifive_serial_probe(struct platform_device *pdev)
>  	ssp->clk = clk;
>  	ssp->clk_notifier.notifier_call = sifive_serial_clk_notifier;
>  
> +	spin_lock_init(&ssp->port.lock);

Shouldn't the port lock be initialized by the tty core instead?  I think
this is the second time I've seen this type of fix needed recently...

thanks,

greg k-h

