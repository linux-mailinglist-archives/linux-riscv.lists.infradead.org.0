Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4306A2E5DD
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 22:12:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzDs6iY9V55K7CA6c5ggk4KELt6ikFcQzONccJq3heU=; b=WIFpYYC1Ek0/u+
	0APbrUGSfqDVhwtg31QTrjtkco3kz8Tz1egWCXG8hmV4JtmYsWLR2SUur+2PnIW7y0sOTq13Csc3m
	1JSyEKrqQ9DmnPT2q5vTu48OJcf/yrkTwpoYXYgZPOgg51LoMzppzl6jF+x0OX5QTmpG7Ps0qBgp1
	OB/weIhll6MDQFyFhplUifQF3Z19APTGXbFyhzFIFHPsbUnPfGUoXIDVQAmEuyqWkGmLwHF8G3wH+
	TO8Ob+TcXRZL+voUVihpdupVF/raRX/D6xxM3YGnWB8pm02nmsgEf6nvbSIYHEXYCUUCnB0CMy0lA
	p6blw08K3c3itX3cOsNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4vn-0007sX-NR; Wed, 29 May 2019 20:12:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4vk-0007rs-Vd
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 20:12:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id z28so2356987pfk.0
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 13:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PGcw43rEtHfebZ1ykAg+O3oB9Ib7l867UUY+4n/dk/Q=;
 b=mD+XA/C1RPTuYpF3bAQXZIvQOGFykfuFTGv2T4SJe7rylVcI8w0NDLRy0IsBLJ66C4
 yVcYvfhvVtwxJaG6tBzpFRpEcG+JM4ZK+8yr+Vmhnc0lkQZ9h7mnNWkXgsjQ03iN9T3Y
 xn9BTzPrq4mJgfWOD9cwdHXpGjo9qYZ06UsdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PGcw43rEtHfebZ1ykAg+O3oB9Ib7l867UUY+4n/dk/Q=;
 b=g3JkJ7uI5NzTEnfIh4OILqwKeMc4FcLHSC+asLvZwEY76H+hKKlLMHrjCfkQ7XNf87
 XnV12Z8UWukbYvnRRkO2RlSODEYyX/QhibocQ8hBQ/zb5hlQpTbRLl2RKIa4jFqUDZqa
 B90zd86JAVCZ7ioe1Qb6v11HtIUhnojJJbD6Imien7D9XuuglJxVTb4gJ5ZHXlhGMyRO
 Ci7ZZ6FiH9yNHNHJ+bOtNFElPnqfcD2vVttYQZHttMBTDatHOcja5pyOy7DZX5ny4zjd
 kzUuS8XYeEgY+C9gfg5GA/4WaUYJ3UlCq27NqAAK2XRIkFN2lkBQpmtdyRPeVJySlKC4
 gbqA==
X-Gm-Message-State: APjAAAVEo46ul0eft88a4HIIGL59rIyH0wL4OaS3aVMdc82xZ8otPGY5
 Rc43hBQ2az/GC5AirzbElTxB7A==
X-Google-Smtp-Source: APXvYqwDEJpc5XVklT3bHvSVgN9OxPIFPApr20V/GjXll3oEfIoQdqDbKTvTIc6ODp034anrn4Q3IQ==
X-Received: by 2002:a63:f551:: with SMTP id e17mr11828943pgk.329.1559160732491; 
 Wed, 29 May 2019 13:12:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j2sm494584pfb.157.2019.05.29.13.12.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 13:12:11 -0700 (PDT)
Date: Wed, 29 May 2019 13:12:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 11/14] mips: Adjust brk randomization offset to fit
 generic version
Message-ID: <201905291311.7E88A71@keescook>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <20190526134746.9315-12-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526134746.9315-12-alex@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_131213_017540_B72021C8 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Paul Burton <paul.burton@mips.com>,
 linux-riscv@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 James Hogan <jhogan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mips@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 26, 2019 at 09:47:43AM -0400, Alexandre Ghiti wrote:
> This commit simply bumps up to 32MB and 1GB the random offset
> of brk, compared to 8MB and 256MB, for 32bit and 64bit respectively.
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/mips/mm/mmap.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/mips/mm/mmap.c b/arch/mips/mm/mmap.c
> index ffbe69f3a7d9..c052565b76fb 100644
> --- a/arch/mips/mm/mmap.c
> +++ b/arch/mips/mm/mmap.c
> @@ -16,6 +16,7 @@
>  #include <linux/random.h>
>  #include <linux/sched/signal.h>
>  #include <linux/sched/mm.h>
> +#include <linux/sizes.h>
>  
>  unsigned long shm_align_mask = PAGE_SIZE - 1;	/* Sane caches */
>  EXPORT_SYMBOL(shm_align_mask);
> @@ -189,11 +190,11 @@ static inline unsigned long brk_rnd(void)
>  	unsigned long rnd = get_random_long();
>  
>  	rnd = rnd << PAGE_SHIFT;
> -	/* 8MB for 32bit, 256MB for 64bit */
> +	/* 32MB for 32bit, 1GB for 64bit */
>  	if (TASK_IS_32BIT_ADDR)
> -		rnd = rnd & 0x7ffffful;
> +		rnd = rnd & SZ_32M;
>  	else
> -		rnd = rnd & 0xffffffful;
> +		rnd = rnd & SZ_1G;
>  
>  	return rnd;
>  }
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
