Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2C6179D84
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 02:44:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=ZCBiwhfYbwT07+gQh2hkOJW3ijGWSXtedJjMGZE1sv0=; b=Tf09uP7qiVJkai
	PhRllzjzcrJoJP1SEJ07LBL5UOJfTljNDOAAGYT8f30akzUa9Qq/0JT6B0tVywvUiwKUGTH6uBKYP
	juzGO1NnglzDXGAljy3sJu5RmujEPZxyD3L2MiZhBcjV4NuobV6XBzkLiyHCjaRhRzeCAcg/WP21j
	ohMqduDYFS/eI7aGzLoteD1/lnDKUbA5iLBIqQoIjBXOZY8nQcBk65jzTuy2Zs3kvlFsfo6KwagFY
	1RHko3NoNtE71MCdUkYvJqJgMiZng9iGWe2uhlC5d6w5TybwLen8V8Gx0a6p209y9rDa1cW1LBI5w
	ic041bMah6lLLGFHidYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9fYl-0004Dp-N0; Thu, 05 Mar 2020 01:44:23 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9fYi-0004D6-5E
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 01:44:21 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a16so1783182pju.3
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 17:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=ZCBiwhfYbwT07+gQh2hkOJW3ijGWSXtedJjMGZE1sv0=;
 b=W6GcWPFa3XmpBhYJ4vPpzGy7P33m7xfiyOVd5u7Ycgp0LJuJ94lRGU0UHiEBjgDECN
 ma/I/kPzsNvDCvvHrUVQGcq3drXIjQtPiyu4vQDPqyPeQ/c016GURwumfilhW4BHzqNs
 nfFr4dEPpi/If9AIhqYUEhZPXag9kuIsqQ0XZEghBR8yzq/zjfa4WTajApNwswX3IyWb
 PZ2XTkdZEij6LVTcPnceFQ6yMLzcS2mtEZ9aV14MuDrqqpkeHD0JMpULH7wqSv07pPNp
 0QSKJ4LCQxz14jsP8eBLqQFI2zOPsyk2AkEO43SzBj42WHWPtT4HIjxMzfv1FSnv/frx
 MD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=ZCBiwhfYbwT07+gQh2hkOJW3ijGWSXtedJjMGZE1sv0=;
 b=BSVv1PGjJCq4KGq8bv7ACHDjYbKhzwen9W397UVZC+WtwIyotlF8xR8lBeyFi+fS7z
 tugLShz3X+UuFmeabPLfdV1Cyk65EOrnWX+qV6sHk7i25J1+vvviU7OLsbis1U4ANHek
 CEV7A2onh0xeUTkHRGwVUnzQlwDMg1NdG1R83rCVUt1BavMLmg2mSE961D61nuUlOw0T
 MyVA+bgUvUeLjiQ/z507GQ1Gs1goUuH5NNlhmMafkY5f31cg5K6+rX5ceIYZsOPpGuVI
 uKokK5+CcGtAEk1X7MBlmyiI5EdfAEUdspFRJtmi0HodJbeYkwpqD/WoNgV8dBASjmyl
 C/0w==
X-Gm-Message-State: ANhLgQ0mwNA1zIZUdgK+8traV83oVIsb0l3mlt4KO4c1jZDXYVV31qJ2
 yzYk0Nt5H6Hl7rMov+3l/AcPhg==
X-Google-Smtp-Source: ADFU+vsVwGRRZL8/xPvoIQeX4Id9BJUz0oqqBnXiv+gDJ9DFU1ODsprhp1aKqUKF/XgbgIXjfjG1Lw==
X-Received: by 2002:a17:90a:bb86:: with SMTP id
 v6mr5895779pjr.168.1583372658911; 
 Wed, 04 Mar 2020 17:44:18 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id e30sm29879473pga.6.2020.03.04.17.44.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 17:44:18 -0800 (PST)
Date: Wed, 04 Mar 2020 17:44:18 -0800 (PST)
X-Google-Original-Date: Wed, 04 Mar 2020 17:27:07 PST (-0800)
Subject: Re: [PATCH 7/8] riscv: add DEBUG_WX support
In-Reply-To: <20200217083223.2011-8-zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-0d866567-f710-4d27-8ae9-1f78454d7d85@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_174420_203052_4BFA1B56 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, zong.li@sifive.com,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Feb 2020 00:32:22 PST (-0800), zong.li@sifive.com wrote:
> Support DEBUG_WX to check whether there are mapping with write and
> execute permission at the same time.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/Kconfig.debug        | 30 ++++++++++++++++++++++++++++++
>  arch/riscv/include/asm/ptdump.h |  6 ++++++
>  arch/riscv/mm/init.c            |  2 ++
>  3 files changed, 38 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
> index e69de29bb2d1..2bcd88e75626 100644
> --- a/arch/riscv/Kconfig.debug
> +++ b/arch/riscv/Kconfig.debug
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config DEBUG_WX
> +	bool "Warn on W+X mappings at boot"
> +	select PTDUMP_CORE
> +	help
> +	  Generate a warning if any W+X mappings are found at boot.
> +
> +	  This is useful for discovering cases where the kernel is leaving
> +	  W+X mappings after applying NX, as such mappings are a security risk.
> +	  This check also includes UXN, which should be set on all kernel
> +	  mappings.
> +
> +	  Look for a message in dmesg output like this:
> +
> +	    riscv/mm: Checked W+X mappings: passed, no W+X pages found.
> +
> +	  or like this, if the check failed:
> +
> +	    riscv/mm: Checked W+X mappings: FAILED, <N> W+X pages found.
> +
> +	  Note that even if the check fails, your kernel is possibly
> +	  still fine, as W+X mappings are not a security hole in
> +	  themselves, what they do is that they make the exploitation
> +	  of other unfixed kernel bugs easier.
> +
> +	  There is no runtime or memory usage effect of this option
> +	  once the kernel has booted up - it's a one time check.
> +
> +	  If in doubt, say "Y".

It looks like this comes verbatim from the arm64 port, at least.  I think we
should just refactor this to some sort of ARCH_HAS_DEBUG_WX so we can share the
code.  I usually do this by adding the shared support, using it for RISC-V, and
then converting the other ports over.

> diff --git a/arch/riscv/include/asm/ptdump.h b/arch/riscv/include/asm/ptdump.h
> index e29af7191909..eb2a1cc5f22c 100644
> --- a/arch/riscv/include/asm/ptdump.h
> +++ b/arch/riscv/include/asm/ptdump.h
> @@ -8,4 +8,10 @@
>
>  void ptdump_check_wx(void);
>
> +#ifdef CONFIG_DEBUG_WX
> +#define debug_checkwx() ptdump_check_wx()
> +#else
> +#define debug_checkwx() do { } while (0)
> +#endif
> +
>  #endif /* _ASM_RISCV_PTDUMP_H */
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 09fa643e079c..a05d76e5fefe 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -509,6 +509,8 @@ void mark_rodata_ro(void)
>  	set_memory_ro(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
>  	set_memory_nx(rodata_start, (data_start - rodata_start) >> PAGE_SHIFT);
>  	set_memory_nx(data_start, (max_low - data_start) >> PAGE_SHIFT);
> +
> +	debug_checkwx();
>  }
>  #endif

