Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A62EE73512
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 19:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LopCSp1g5m3CcG/XRn9ROzidaXhMMdtl2PdPe5Rh3rY=; b=BOH1sy6+qAXZlX
	aifCfCxGQ55PcsZgAsuHcwsqnWh1Rg8L9yvI0PJZjfjQ3316I/9SUijWqUIQAZuMBdl4RSf16YoPY
	+fyI6u97GNzSOtKU9s+2JmNHOEdmpmIdqRyxEdQeRFdqi1cAOOLz2rx8ja3Q0ufb40oteu3vBc9/f
	FFyQ+i5FOjMGr6BHP6AY7DPnkZJH11tsdORZRwg9+n6HH1WOdbvqIraqhHtEo3rAhV++3W+NJGpoQ
	vTkviOO8H+SBVGTzvhUC+Kz7CrKQGVUdvjS34+1aSm29FtLynpd4fu8qkx2cC6aX4w9/gde9i+Dtd
	saS9WhYzJ3/W5b8F/yYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKuW-0006Ab-7G; Wed, 24 Jul 2019 17:18:40 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKsm-0002Uz-Du; Wed, 24 Jul 2019 17:16:55 +0000
Received: by mail-pf1-f196.google.com with SMTP id u14so21291752pfn.2;
 Wed, 24 Jul 2019 10:16:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=156P/sv9kl3W4lzShHBiZ6Cb3GP3B3vD0ubCKwHKThU=;
 b=VJTzeZ8jTKPVuWkMvogUfWOBC9IhP3FXTw5tOdVgTdsRm4KgjuoMu4Jn/kSTILHxT7
 OLnbaUdDsfUryNMVUAeICsym44pZRlnmxJT0XPEWLK/ajVI4VMNfZtJkKHBrOjLuM5i/
 v5PtcGa44JwGI13lmKZFXGYSvlYHjgsdvLUNXK69+7v3VqEWuq+z+UjmhQM1kpSoXQlo
 8FEUZa1dTzFaPC+Mvw/HHeNh0cB6MGOI/9ApM395eVG7nSHz5ToQuFKQsPf/FRhwbwp/
 fwx36yU5+a7xT/Kpms8Zhumurlurxwq4ViuoCJ3Ppo2TxZgD/DZzLzCA5L44nqPegz2d
 q80g==
X-Gm-Message-State: APjAAAVRLlkQq9m6y6WhVKpKaUEMKMnbzv29orI68cWmVR6bev9lTazx
 guHtqt9rVFUQtrYpQzaab6V5IhzA
X-Google-Smtp-Source: APXvYqwTVGKd3fvTa9LEjWhqIcTFIJiIjYs9TLAcnxEPWXeforQowmcaSvI2CRLGqprBSYmGXcozlQ==
X-Received: by 2002:a17:90a:8a91:: with SMTP id
 x17mr89006769pjn.95.1563988610289; 
 Wed, 24 Jul 2019 10:16:50 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id n140sm49450927pfd.132.2019.07.24.10.16.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 10:16:49 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id ADB7B402A1; Wed, 24 Jul 2019 17:16:48 +0000 (UTC)
Date: Wed, 24 Jul 2019 17:16:48 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH REBASE v4 12/14] mips: Replace arch specific way to
 determine 32bit task with generic version
Message-ID: <20190724171648.GW19023@42.do-not-panic.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724055850.6232-13-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724055850.6232-13-alex@ghiti.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101652_621308_90B577AE 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 01:58:48AM -0400, Alexandre Ghiti wrote:
> Mips uses TASK_IS_32BIT_ADDR to determine if a task is 32bit, but
> this define is mips specific and other arches do not have it: instead,
> use !IS_ENABLED(CONFIG_64BIT) || is_compat_task() condition.
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/mips/mm/mmap.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
> index faa5aa615389..d4eafbb82789 100644
> --- a/arch/mips/mm/mmap.c
> +++ b/arch/mips/mm/mmap.c
> @@ -17,6 +17,7 @@
>  #include <linux/sched/signal.h>
>  #include <linux/sched/mm.h>
>  #include <linux/sizes.h>
> +#include <linux/compat.h>
>  
>  unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
>  EXPORT_SYMBOL(shm_align_mask);
> @@ -191,7 +192,7 @@ static inline unsigned long brk_rnd(void)
>  
>  	rnd = rnd << PAGE_SHIFT;
>  	/* 32MB for 32bit, 1GB for 64bit */
> -	if (TASK_IS_32BIT_ADDR)
> +	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
>  		rnd = rnd & SZ_32M;
>  	else
>  		rnd = rnd & SZ_1G;
> -- 

Since there are at least two users why not just create an inline for
this which describes what we are looking for and remove the comments?

  Luis

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
