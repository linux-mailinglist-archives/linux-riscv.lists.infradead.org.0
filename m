Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8EE1B30AC
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 21:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=neTotun9xvyLxtrGYKrhEcqeY2lnlgT841hPhcr3iwk=; b=odisCSHDumRUOr
	cFTiyulDLEzLy5i67oJrMPU0uOhF9RaSoa38KIH719rktJGWnVcWAImj2ZYtbdQl926U585rU+UUJ
	7fvh5wKNfRTVdsXM21XqU7lMQpKUJ7jJPBjc1NNnhoIMA8TTXsxB7p1nvxBTZPfxU94rVDuTLr/xJ
	jxX1Hh07z4SSFt5xGx3S9ZLxzfKqczdT3oCYvBCLERktGChpo0Y20J/YIygNAe9HIz+2X4n3t7E1t
	vyJmjjPQET3KmB13+AaBr6dKrplYPR3VwmENihIn2dk3srgE9V5yv7VXiGsLLQ3MnLI+VGH+yyYKo
	qMgb7cGEjBSBzROPS3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQywH-00069S-Kd; Tue, 21 Apr 2020 19:52:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQywD-000680-HO
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 19:52:11 +0000
Received: by mail-pf1-x444.google.com with SMTP id g30so7096764pfr.3
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 12:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=neTotun9xvyLxtrGYKrhEcqeY2lnlgT841hPhcr3iwk=;
 b=RvXhuxReyrpoxbZ3nHgXGf/SZuUU7csTsLgM+H0XcLuiRX4Vx3Pe9iHu4NgZhAfwJi
 c8Ok4DlFPTrlxLeuqhZD8SBj7dgBJnq3a+6LO6ENQsEHXqIS4VP2q2xq1NHi+g0kgnSR
 vAoZkntCGW3OpDOA0/1UwQPtGdiCRGCLAi4akCNn9tnwcH1h+fykVG/1xembcWHNgtUV
 wf0ZimevjRlfwlUXkxqh5SiwMq8+cCTNnosyY6XoPaLx+iN7bGKTBDVYGf9J00dW9z/X
 DFR7NMxeB+Jxd6v3E/do3uYVzaiYT7FSHfrshpXtVYbUxYqE1zndC9PWgUA6WNllQ+WZ
 MVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=neTotun9xvyLxtrGYKrhEcqeY2lnlgT841hPhcr3iwk=;
 b=PT00m9TvwTrogx/h2a9ZgyUEYvqF5BYK6smaXvWoLXdibLDOCJpopuE5BBEEPzwNen
 NlrwyMbOEGjOeCscYtyvDKg9FrFzoXuoUoVO3kp3vA3LgMam7SPOEOC5/8bKAP875ZJe
 LbGALoKagTY0kuwKsr7tFx47IKhgfqNZnlyKUEDPa6NpfF3hXOR9WyG+FdrcWNhr1+UE
 pQMNZWAF95hM+xvOxavxxipstXZ0RjyoJ+Ym36dtJ2dk3pTRbAdHgUYzb7JwcX/H7jPU
 dzJ0gOkr5XPkKH0r0u5aktfqIuL6cQQDrN5vTiMZc5iHAKntfIGRlCDKBtUKWrasGgK7
 UAbg==
X-Gm-Message-State: AGi0PuZqkV5sNFqiyBbR+FkdhbbU9CpY6HIFW8IF3aqeK5dSJclpa/Ly
 Czrip4VxKDT6CtBvtucY4o0zIA==
X-Google-Smtp-Source: APiQypKmTOXNZB7xwi87IfFfpxa8Nzp6hEUEvM5xoGvvGASLbuaDC0up054cw6JLM4XxzFHBeJCEfA==
X-Received: by 2002:a63:3306:: with SMTP id z6mr22822734pgz.147.1587498726451; 
 Tue, 21 Apr 2020 12:52:06 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id p24sm2784468pff.92.2020.04.21.12.52.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 12:52:05 -0700 (PDT)
Date: Tue, 21 Apr 2020 12:52:05 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 12:47:58 PDT (-0700)
Subject: Re: [v4 PATCH 1/3] RISC-V: Define fixmap bindings for generic early
 ioremap support
In-Reply-To: <20200421033336.9663-2-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-613ec31b-83df-4a01-998c-e2d682787c1b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_125209_578403_FBE023AC 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-efi@vger.kernel.org, xypron.glpk@gmx.de, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 linux-riscv@lists.infradead.org, ardb@kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

I missed that there's a v4 now, so I'm jumping over here

On Mon, 20 Apr 2020 20:33:34 PDT (-0700), Atish Patra wrote:
> UEFI uses early IO or memory mappings for runtime services before
> normal ioremap() is usable. This patch only adds minimum necessary
> fixmap bindings and headers for generic ioremap support to work.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/riscv/Kconfig              |  1 +
>  arch/riscv/include/asm/Kbuild   |  1 +
>  arch/riscv/include/asm/fixmap.h | 18 ++++++++++++++++++
>  arch/riscv/include/asm/io.h     |  1 +
>  4 files changed, 21 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a197258595ef..f39e326a7a42 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -68,6 +68,7 @@ config RISCV
>  	select ARCH_HAS_GCOV_PROFILE_ALL
>  	select HAVE_COPY_THREAD_TLS
>  	select HAVE_ARCH_KASAN if MMU && 64BIT
> +	select GENERIC_EARLY_IOREMAP
>
>  config ARCH_MMAP_RND_BITS_MIN
>  	default 18 if 64BIT
> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> index 3d9410bb4de0..59dd7be55005 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> +generic-y += early_ioremap.h
>  generic-y += extable.h
>  generic-y += flat.h
>  generic-y += kvm_para.h
> diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> index 2368d49eb4ef..ba5096d65fb0 100644
> --- a/arch/riscv/include/asm/fixmap.h
> +++ b/arch/riscv/include/asm/fixmap.h
> @@ -30,6 +30,24 @@ enum fixed_addresses {
>  	FIX_TEXT_POKE1,
>  	FIX_TEXT_POKE0,
>  	FIX_EARLYCON_MEM_BASE,
> +	/*
> +	 * Make sure that it is 2MB aligned.
> +	 */
> +#define NR_FIX_SZ_2M	(SZ_2M / PAGE_SIZE)
> +	FIX_THOLE = NR_FIX_SZ_2M - FIX_PMD - 1,
> +
> +	__end_of_permanent_fixed_addresses,
> +	/*
> +	 * Temporary boot-time mappings, used by early_ioremap(),
> +	 * before ioremap() is functional.
> +	 */
> +#define NR_FIX_BTMAPS		(SZ_256K / PAGE_SIZE)
> +#define FIX_BTMAPS_SLOTS	7
> +#define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
> +
> +	FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
> +	FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
> +
>  	__end_of_fixed_addresses
>  };
>
> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> index 0f477206a4ed..047f414b6948 100644
> --- a/arch/riscv/include/asm/io.h
> +++ b/arch/riscv/include/asm/io.h
> @@ -14,6 +14,7 @@
>  #include <linux/types.h>
>  #include <asm/mmiowb.h>
>  #include <asm/pgtable.h>
> +#include <asm/early_ioremap.h>
>
>  /*
>   * MMIO access functions are separated out to break dependency cycles

Just so it doesn't get lost (the patch is the same)

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

