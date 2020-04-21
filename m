Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D471B3033
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 21:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=hPVhiHCru66F7M87+182p9Tvtpc85gfkzQRDqIRO1ko=; b=F3PRUdSf8u7PtE
	uViBQfkaM7fItanQFHRc1kbbXnXn2NIFcr+zoX95QgxC9w22aZvtmIHBhhyD8HCPYjBIbOtoR8bO+
	49PB/Re57SIdACaVtZOpQlartPcrSBDrENxpzEDtza8KKGXkcCQVao+/vdYEyCGDdAGrK71nr8t23
	Jr4eoJq9R2nnCSHCdCaLjcLYT7tv/A12LNr493pDIYgL5lJ6tLORRCBiDQs5Fts6xiz2dM6p7PtXW
	aVQcf7Tgb2aoNP/0dJSBlrvN42ULhUNaiCfuyf3xnrASyU7rhOt/6IotNy/6BqCMCxbDc6Obvbirc
	hPIblA+szC0cpsRFTR3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyRf-0006VO-SE; Tue, 21 Apr 2020 19:20:35 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyQm-0003UB-An
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 19:19:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id t4so5616489plq.12
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 12:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=hPVhiHCru66F7M87+182p9Tvtpc85gfkzQRDqIRO1ko=;
 b=r3C7ZPWnB+/BSMYac/cFV6GVQaCwnWAzI9frvjDJLQJR9jPwOhTonM3kEUjmpl4L+j
 a3b25Q+Me2vR+TR33Cc9mp0t9k9AFV03JP9k6k2XYvuWbYyCHCZOWQGB3RYjMjGPpdsp
 pr/Br9+xNw0bAaHb5zRMaYp0pSBSk3qkO7dyjVI54G40sbnt7iz3w1dHKBtMKl8Pqn0k
 0rkFqLQ3FwTIn86ZUeObV+i+tZgjpGexmA5F+2PaDHBsF126dAzWbuh2xb6KYqkJKrGl
 NVkZWpY0UrIl5iMLGM7D1P8IU6mGulUTyns47YhRZWP2kGD/vnVFoDzu9sXDhTS0X4vQ
 W2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=hPVhiHCru66F7M87+182p9Tvtpc85gfkzQRDqIRO1ko=;
 b=oGG0LxVnAl9L99zYb4n3rtEn2/og2nd6FI4MAcEDIbWWuQSLhJs7TueSa74pnswGfA
 rVWM599VJGhaBRVq8vYcoCQz6nvwNPVD+6T1SO9I46jHgSW6BITmSJA2HLBNMd8uSHnU
 Tx/pAod6VoyEmf4bYbt9xbhwdriwoOa5BQc4PpRT+m+k1+XBAhwDc7Q9zszVRkP3sUTj
 46GFy/sN8srnmfeILowQn8McJLKnUu+Beh+9nw0j8MoofmUQbWXd/lt2ood81HiygMGx
 cBv7IQFg7W00pbkusN58jlcbq56cE0beUf1QRZbKF8JL8bP231TptKfKgRuAFaKvN/y4
 DDIw==
X-Gm-Message-State: AGi0Puapt/pnZO10JG1tAjgHShyA1kW3ihAcvu+W0CuTGf9TzfG7s2CS
 bq6Qi9+/J2dLuBvfGaQhbcrugA==
X-Google-Smtp-Source: APiQypJtA1GPjuyjU1rDoIKjs5ei8Wc2RGLVpz0+8Vkr8sWRjn179ks5m9kyaVeEtaU2mYrSUVbc1g==
X-Received: by 2002:a17:902:aa94:: with SMTP id
 d20mr22883245plr.313.1587496779466; 
 Tue, 21 Apr 2020 12:19:39 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b11sm2934507pgj.92.2020.04.21.12.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 12:19:38 -0700 (PDT)
Date: Tue, 21 Apr 2020 12:19:38 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 12:19:13 PDT (-0700)
Subject: Re: [v2 PATCH 3/5] RISC-V: Define fixmap bindings for generic early
 ioremap support
In-Reply-To: <20200413212907.29244-4-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-bccab71a-2ee1-4f4b-a7c3-90c1340e525b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_121940_394121_2652DF9A 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, mingo@kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, catalin.marinas@arm.com,
 linux@armlinux.org.uk, linux-riscv@lists.infradead.org, will@kernel.org,
 ardb@kernel.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 14:29:05 PDT (-0700), Atish Patra wrote:
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

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

