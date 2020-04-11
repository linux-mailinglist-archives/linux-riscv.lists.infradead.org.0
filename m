Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6291D1A4F77
	for <lists+linux-riscv@lfdr.de>; Sat, 11 Apr 2020 12:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvUTqsfDxEcmkj57GjLQ4iA3if4T8tLEmoSprkM7jLQ=; b=SEMJB7gDxo75iF
	w8cQXllhgy05d3v73XPRf9n+j/EfQ5M77YpEQ+effDtaAXnOjxtcXFl+i+CKa94v2BCW1F3xRhruG
	xVitYNqbMt1h9+jSNvKQxbQvz+Q6pP9WDNSQLyaJVBae+OAgWf2/irylIvbP8wU3qCBlhqKhzImOm
	Bhccr7aameCtLW940K28FKzapBRBVdMyybBHLOkLSv2ySK/4Gd5+vfNKAqwRvklu2Dan54HBdu4By
	2YRWnqhoX/4n3e2INed61Dnu8u8dcLx2xET33LEbIeIvC4m7CFnqqGFpTKh8qqyaX07v2sj1dLkDH
	M4mpziKgjkn1oDhMV7mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNDrD-0004wD-6J; Sat, 11 Apr 2020 10:59:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNDr9-0004vu-Om
 for linux-riscv@lists.infradead.org; Sat, 11 Apr 2020 10:59:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29EB920732;
 Sat, 11 Apr 2020 10:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586602763;
 bh=xk5Kskag+XVsBHxWNEZ7J/RewiRmLUecphBYR2cj9yo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F8XpckS2+wv/5IBH2mA0/TmqmYb5fbc9QUpEpizKARVx9lzVjoMYoF+UvF/96kpR2
 jiU+pbzEU8VUJyjaAcApFTjRnlLB8kKPvsXLRvb/c64dVwpApQAxvx89C8vlbswjAF
 rLQXPMVcju7hvUXs/Dm/dcDmxPtqKWb7dh/5Y+gg=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jNDr7-002MZc-Bt; Sat, 11 Apr 2020 11:59:21 +0100
Date: Sat, 11 Apr 2020 11:59:19 +0100
From: Marc Zyngier <maz@kernel.org>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] irqchip/sifive-plic: Fix maximum priority threshold value
Message-ID: <20200411115919.32fc0455@why>
In-Reply-To: <20200403014609.71831-1-atish.patra@wdc.com>
References: <20200403014609.71831-1-atish.patra@wdc.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: atish.patra@wdc.com, linux-kernel@vger.kernel.org,
 anup@brainfault.org, jason@lakedaemon.net, linux-riscv@lists.infradead.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_035923_825993_534AD44B 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu,  2 Apr 2020 18:46:09 -0700
Atish Patra <atish.patra@wdc.com> wrote:

> As per the PLIC specification, maximum priority threshold value is 0x7
> not 0xF. Even though it doesn't cause any error in qemu/hifive unleashed,
> there may be some implementation which checks the upper bound resulting in
> an illegal access.
> 
> Fixes: ccbe80bad571 (irqchip/sifive-plic: Enable/Disable external
> 		     interrupts upon cpu online/offline)

Small nit: please write the "Fixes:" tag as documented in
process/submitting-patches.rst:

Fixes: ccbe80bad571 ("irqchip/sifive-plic: Enable/Disable external interrupts upon cpu online/offline")

(with quotes, and on a single line), as it otherwise breaks with the
lore-scrapping tooling which a bunch of us are now using.

> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  drivers/irqchip/irq-sifive-plic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> index c34fb3ae0ff8..d0a71febdadc 100644
> --- a/drivers/irqchip/irq-sifive-plic.c
> +++ b/drivers/irqchip/irq-sifive-plic.c
> @@ -56,7 +56,7 @@
>  #define     CONTEXT_THRESHOLD		0x00
>  #define     CONTEXT_CLAIM		0x04
>  
> -#define	PLIC_DISABLE_THRESHOLD		0xf
> +#define	PLIC_DISABLE_THRESHOLD		0x7
>  #define	PLIC_ENABLE_THRESHOLD		0
>  
>  struct plic_priv {

Queued for post -rc1.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

