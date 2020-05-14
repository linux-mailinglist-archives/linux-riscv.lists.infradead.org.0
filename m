Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513241D2B6A
	for <lists+linux-riscv@lfdr.de>; Thu, 14 May 2020 11:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wCiVumaq6wcVuq/rN4Y5EIzrDgqgEOQzKlYptSZX3oI=; b=L8/G+Ni2xXLUjl3Ei0QXzaz4G
	JqAwDTjoPnGbjlwJkzPSgul28jDxU3SkvdHq76d/PG0krgvR0SdwoBqUtezBN+xs2zfk8LoH2/1RX
	umdt6hk2/PNcioN/lj96ikGs1Vp9jaHDwhGqlt3U+EFDbt8lULyY8i/RzGcHql9ZI/2JxuyOOxHuu
	8dncycpGfKbVR0asEhpcG4iET0qSjjWTY8ta6Pocrbno3eYikO75mp98VTOI+lTJ5cBT1lAxXO3PC
	V1eqx0Hsb2EBWTYB3U9TyjeftR66uoDRyThfnOugLw5zEABswaT2MBnlmKyoMI2+Ov5FzA2kKbXsD
	ZCpfa9qnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZABa-0006aV-Dm; Thu, 14 May 2020 09:29:50 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZABW-0006Zv-9f
 for linux-riscv@lists.infradead.org; Thu, 14 May 2020 09:29:48 +0000
Received: by mail-oi1-x244.google.com with SMTP id i22so7394572oik.10
 for <linux-riscv@lists.infradead.org>; Thu, 14 May 2020 02:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wCiVumaq6wcVuq/rN4Y5EIzrDgqgEOQzKlYptSZX3oI=;
 b=M+DpRLIR1KWirx3ozNZP183Wa9bvcBtupJ5hvzmrcyfFPbUkajYX+pFLOP4Vjb4X3Q
 FawvRVJjskYpkc8utMwVe7ZNMW2Inj1BKHHE2LnEYcmYwkWaNLk9n5d1FVKTxgNhfB3l
 UeLQstW6MTljDRR8YXBVCjxQJ3MgwzrCqTMcpxplnwe6OKYeQvVdg+RFBOnKN9G8xvgA
 YQDSlyR5MhpVKtpbxiTan5wbl1+Ib4nZ/PKuukIXE2aP2T0U5iQmkiEegUxC8DZRHHJV
 zrnt1YMrwrTw5F9/2w2yf3NHl+5iAs6d9DFayhdpxRNlJD8LKx0cobudOvyhGXHYb7wu
 gRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wCiVumaq6wcVuq/rN4Y5EIzrDgqgEOQzKlYptSZX3oI=;
 b=Rl3zrzbsQRTsGkrlNN5wqu06NTvCkP6lpTaCLJlaYn6mAawz6KED0lYOrkKsCfD3yl
 5tkSVhPX0WkpVkcAyUYxQB5/7bA9F/GLkopkXE7XIFmmXuzkvrGFoYOQ82f7IgafqTEH
 MeS8Va15E4wFgsXQLmrIZbNQGjDfdpj41AUwzdzTr6fY/CksF5qmZ+clp0vv1t6LZ68j
 6T453f6j31UqIUTFxfH4kEHDrp5NXyQzGKCN5NM9mHI/bQGxla2g3uzirjOtP2iBNsfL
 QDuvkyuvKnGQ9h7fw3nKlJzjHIMIi09bot6M8wHOk5mcCk/TLiqnbGL99jpFZImNBinZ
 sX4w==
X-Gm-Message-State: AOAM5320KzuU555jbkkqhPADrGpwVi57+i+w3icriDCB+09iQWi4SjPX
 WamEDye2BRrJt7VFEqrHwUYNbNr41TLgEIemPydf2+ism4g=
X-Google-Smtp-Source: ABdhPJy0BZy/80kBmbbNGXWB+0otugy/D99TGiabeb7uQ63D/N2iRHOx8D9HzC8UVf8RQ4g/SJRNWcVVjR51nBt0dp4=
X-Received: by 2002:aca:3585:: with SMTP id c127mr4674008oia.32.1589448584196; 
 Thu, 14 May 2020 02:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200514060243.106976-1-zong.li@sifive.com>
In-Reply-To: <20200514060243.106976-1-zong.li@sifive.com>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 14 May 2020 17:29:33 +0800
Message-ID: <CANXhq0q6xb1DaVp8skvvC+G9MDMXpXrv0dxmceTrerc6noBH8A@mail.gmail.com>
Subject: Re: [PATCH] riscv: perf: fix build error for dependency issue
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, 
 Andrew Morton <akpm@linux-foundation.org>,
 linux-riscv <linux-riscv@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_022946_500997_B9347106 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greentime Hu <greentime.hu@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 2:03 PM Zong Li <zong.li@sifive.com> wrote:
>
> CONFIG_RISCV_BASE_PMU can be selected or unselected, but in fact,
> CONFIG_RISCV_BASE_PMU must be always selected when selecting
> CONFIG_PERF_EVENTS on current perf implementation, otherwise, it
> would cause the build error when only selecting CONFIG_PERF_EVENTS.
> The build case is applied randconfig which generated by kbuild test.
>
> This patch removes the unnecessary configuration and implementations.
> Eventually, the number of counters should be determinated at runtime,
> such as DTB, so we don't need to re-build kernel for various platform
> which has got different number of hpmcounters.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  arch/riscv/Kconfig                  | 13 -------------
>  arch/riscv/include/asm/perf_event.h | 16 +++-------------
>  2 files changed, 3 insertions(+), 26 deletions(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 74f82cf4f781..7d5123576953 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -283,19 +283,6 @@ config RISCV_ISA_C
>
>            If you don't know what to do here, say Y.
>
> -menu "supported PMU type"
> -       depends on PERF_EVENTS
> -
> -config RISCV_BASE_PMU
> -       bool "Base Performance Monitoring Unit"
> -       def_bool y
> -       help
> -         A base PMU that serves as a reference implementation and has limited
> -         feature of perf.  It can run on any RISC-V machines so serves as the
> -         fallback, but this option can also be disable to reduce kernel size.
> -
> -endmenu
> -
>  config FPU
>         bool "FPU support"
>         default y
> diff --git a/arch/riscv/include/asm/perf_event.h b/arch/riscv/include/asm/perf_event.h
> index 0234048b12bc..8e5b1d81112c 100644
> --- a/arch/riscv/include/asm/perf_event.h
> +++ b/arch/riscv/include/asm/perf_event.h
> @@ -16,15 +16,11 @@
>
>  /*
>   * The RISCV_MAX_COUNTERS parameter should be specified.
> + * Currently, we only support base PMU, so just make
> + * RISCV_MAX_COUNTERS be equal to RISCV_BASE_COUNTERS.
>   */
>
> -#ifdef CONFIG_RISCV_BASE_PMU
> -#define RISCV_MAX_COUNTERS     2
> -#endif
> -
> -#ifndef RISCV_MAX_COUNTERS
> -#error "Please provide a valid RISCV_MAX_COUNTERS for the PMU."
> -#endif
> +#define RISCV_MAX_COUNTERS RISCV_BASE_COUNTERS
>
>  /*
>   * These are the indexes of bits in counteren register *minus* 1,
> @@ -38,12 +34,6 @@
>   */
>  #define RISCV_PMU_CYCLE                0
>  #define RISCV_PMU_INSTRET      1
> -#define RISCV_PMU_MHPMCOUNTER3 2
> -#define RISCV_PMU_MHPMCOUNTER4 3
> -#define RISCV_PMU_MHPMCOUNTER5 4
> -#define RISCV_PMU_MHPMCOUNTER6 5
> -#define RISCV_PMU_MHPMCOUNTER7 6
> -#define RISCV_PMU_MHPMCOUNTER8 7
>
>  #define RISCV_OP_UNSUPP                (-EOPNOTSUPP)
>
> --
> 2.26.2
>

Hi all,

I don't notice that there was a patch already to fix this issue by
Kefeng, (https://lore.kernel.org/linux-riscv/mhng-58148e77-03b6-4c56-98ea-0d0cbf99d522@palmerdabbelt-glaptop1/T/#u).
Even though it was a different way, but I also think it was good for
the present. As my comment in this patch, eventually, the number of
counters should be decided at runtime, such as DTB, then we don't need
to re-build kernel for various platform
which has got a different number of hpmcounters.

