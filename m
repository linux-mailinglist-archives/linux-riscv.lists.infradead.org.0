Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43782E5CF
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 22:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iz11hJI+Pftf/T97ltAMmeQcnJaQynAqJx2WFCs1LZo=; b=Agrs7uugfZb8Kg
	dNhmiRL5fuyhaBWbeMHVLRNa9oDkXhIZ18NFmXM4if45q/9TPK0dc5fwlVD6XNMo5Lm2e5oveNYpO
	br2Fu5VQuGOD0vaCpnFMuCoguq2zDhkNfZeo8UsB9PlTWFUxfjSmrIQwpKKwyPrF+9VonGoU8lvj3
	2DNCP8SS+GcLAR+B+5cMgLeMLtVats/LvGRG7rU9g1Am7buYgH23ToIaXBmF2uUG0w5sQ+0xIHAPX
	zn6KEh0pq3xvWQxTsTDmVEosDTzLxNEo7skS3y3RrdAnoO1J25iKUhY237i6twC9q5+byYvjDgpal
	I7MpPUg1c6Y+1u+H8wGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW4uX-0007QQ-B9; Wed, 29 May 2019 20:10:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW4uT-0007NP-CV
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 20:10:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id n19so2355853pfa.1
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 13:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l4laiGZ+6EAxTzYgyOLxq6AQ0ebW5F8MPaRp0yaenB4=;
 b=T+S4dzKkP0QeUP0gvmQYme6HE9FvwMG4qznuFtH/nyALnyYufIZl5Zude490BxgiIt
 TM/MxYm5xSz69G1obZoGJM1LDIeY9X8HJLMu8K1/UHH+gmEEyXz0iVgKFgUxlRbExavm
 GdYNYHEiXPSCZWG+4ftE4ubEET85V+Ow68jzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l4laiGZ+6EAxTzYgyOLxq6AQ0ebW5F8MPaRp0yaenB4=;
 b=hMqIXhgOKeO8sF4UFjY552N6/5C2z/YziPf3XZtaXQXlajL6gU97t8MSvUIoniv7tE
 A4zLvHTgbi+f29DEG5kGZHJ6kX3r3M3M69iDcG2onu4ktqZ8zyUpkWX72wHxVKTzKkdx
 ilveXqtf55+EZpW8t6eFq0sFKuRe4atKmQbY/9En00q7hqTg+GZ87L6BdA1QZpzGIkCh
 we83o1v0p8FaIuPGiQbYhnmwOV+FqIaYgOB0k0PbFcUONUVuL5ZtLRFxhvsmpPJBjd2j
 NivDLENzI8yww+Xfy3aZc8WjsGpOUd+Uyiv3YD1q1VL018oIoIe7l+ouApq0H1rj3THL
 Jb9Q==
X-Gm-Message-State: APjAAAWL3Dny91zQjfhX2SR1yYEmWONOSfUZ0/JUAQIfMUt2apPBNIDE
 xovVmwUTue6FtYhDO/hK7EXvMA==
X-Google-Smtp-Source: APXvYqxcX+GEqaFki9ts9gcHnI+DJ4J45UmF6NQ3tBHikewn3dAB757SCx8zHdqTJ17A6V/LaCRYWA==
X-Received: by 2002:a63:6c83:: with SMTP id h125mr92843035pgc.86.1559160652464; 
 Wed, 29 May 2019 13:10:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o2sm216631pgq.50.2019.05.29.13.10.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 13:10:51 -0700 (PDT)
Date: Wed, 29 May 2019 13:10:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v4 05/14] arm64, mm: Make randomization selected by
 generic topdown mmap layout
Message-ID: <201905291310.E27265DACF@keescook>
References: <20190526134746.9315-1-alex@ghiti.fr>
 <20190526134746.9315-6-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526134746.9315-6-alex@ghiti.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_131053_448452_361938D2 
X-CRM114-Status: GOOD (  20.45  )
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

On Sun, May 26, 2019 at 09:47:37AM -0400, Alexandre Ghiti wrote:
> This commits selects ARCH_HAS_ELF_RANDOMIZE when an arch uses the generic
> topdown mmap layout functions so that this security feature is on by
> default.
> Note that this commit also removes the possibility for arm64 to have elf
> randomization and no MMU: without MMU, the security added by randomization
> is worth nothing.
> 
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/Kconfig                |  1 +
>  arch/arm64/Kconfig          |  1 -
>  arch/arm64/kernel/process.c |  8 --------
>  mm/util.c                   | 11 +++++++++--
>  4 files changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index df3ab04270fa..3732654446cc 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -710,6 +710,7 @@ config HAVE_ARCH_COMPAT_MMAP_BASES
>  config ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
>  	bool
>  	depends on MMU
> +	select ARCH_HAS_ELF_RANDOMIZE
>  
>  config HAVE_COPY_THREAD_TLS
>  	bool
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 3d754c19c11e..403bd3fffdbc 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -15,7 +15,6 @@ config ARM64
>  	select ARCH_HAS_DMA_MMAP_PGPROT
>  	select ARCH_HAS_DMA_PREP_COHERENT
>  	select ARCH_HAS_ACPI_TABLE_UPGRADE if ACPI
> -	select ARCH_HAS_ELF_RANDOMIZE
>  	select ARCH_HAS_FAST_MULTIPLIER
>  	select ARCH_HAS_FORTIFY_SOURCE
>  	select ARCH_HAS_GCOV_PROFILE_ALL
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 3767fb21a5b8..3f85f8f2d665 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -535,14 +535,6 @@ unsigned long arch_align_stack(unsigned long sp)
>  	return sp & ~0xf;
>  }
>  
> -unsigned long arch_randomize_brk(struct mm_struct *mm)
> -{
> -	if (is_compat_task())
> -		return randomize_page(mm->brk, SZ_32M);
> -	else
> -		return randomize_page(mm->brk, SZ_1G);
> -}
> -
>  /*
>   * Called from setup_new_exec() after (COMPAT_)SET_PERSONALITY.
>   */
> diff --git a/mm/util.c b/mm/util.c
> index 717f5d75c16e..8a38126edc74 100644
> --- a/mm/util.c
> +++ b/mm/util.c
> @@ -319,7 +319,15 @@ unsigned long randomize_stack_top(unsigned long stack_top)
>  }
>  
>  #ifdef CONFIG_ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT
> -#ifdef CONFIG_ARCH_HAS_ELF_RANDOMIZE
> +unsigned long arch_randomize_brk(struct mm_struct *mm)
> +{
> +	/* Is the current task 32bit ? */
> +	if (!IS_ENABLED(CONFIG_64BIT) || is_compat_task())
> +		return randomize_page(mm->brk, SZ_32M);
> +
> +	return randomize_page(mm->brk, SZ_1G);
> +}
> +
>  unsigned long arch_mmap_rnd(void)
>  {
>  	unsigned long rnd;
> @@ -333,7 +341,6 @@ unsigned long arch_mmap_rnd(void)
>  
>  	return rnd << PAGE_SHIFT;
>  }
> -#endif /* CONFIG_ARCH_HAS_ELF_RANDOMIZE */
>  
>  static int mmap_is_legacy(struct rlimit *rlim_stack)
>  {
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
