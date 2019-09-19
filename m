Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EF7B79E6
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 14:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lBwmXyC9BNVQP81Lp+mCOcoFNA9H9Bs3QkJibOBhzc=; b=sdIOO6pgFASMG1
	BsPS4cvYKBwaQC9Os+Bwv6k6BGkYnQn67H9h/t6K03Xx7DG9CGnksMIR4MkqIj7H7SG8jPUU+AYkf
	56Xb+iCfv7227p4HeLTB2QlE41oPPBuXWDzDIkZpxr5xdwsun9IIr/RLwIOSJkGSNFSM7YdVcylyA
	P8OYUk02VjhoEi/dbWD2Kjpk14wDtPovwHSDdHS35tz2J3cmIMd3tlYGcoRzACvr7zowuDh1rt3X1
	a9sEQLQ6NVevSPfzDncUSkYHXK52pCXjus0cT/IRWEJu+zJhwxARW/34vfXOKHt6yAM+WMYYpizfD
	WnYePqUe1DFA5fzhZf1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvyw-0001jq-Fi; Thu, 19 Sep 2019 12:56:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvyq-0001jO-Cx
 for linux-riscv@lists.infradead.org; Thu, 19 Sep 2019 12:56:18 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so3013944wrt.2
 for <linux-riscv@lists.infradead.org>; Thu, 19 Sep 2019 05:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FbuzH0daMt+MsoMW45qZdAf/7ra0L3lDjQjOsI2VHWQ=;
 b=oBEzttwMR9rbIp1WYQ0uoKtd9fQVsAyv5adJg6k2jsN17FRK/uMFdPM+iWYhwyHUgY
 Wv9otQwbkODuQaxad4JWGpV+NnSTy0AfrrK7qT/2Mq1omJkblCtRPp0vvickWuGdaEAo
 9LwjkJo26aBKXkTzaguMdcy5yUjl0IFXDDEg5CshxjaSKj8PDWoO5cf1IWeIlv817pWl
 GnFeewZA9/Mdg5g4HJZ0UuYrwLJvgs1twQCCW1q/dEnO7Yl7KGVIfz57DQCCrjeFEzHv
 zt4PnAUp2JurM57cC4gFbCpH/qTbDXQlHCYpUwhhYXCFflKZubX3QVAjqvoPmuALF7VR
 afzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FbuzH0daMt+MsoMW45qZdAf/7ra0L3lDjQjOsI2VHWQ=;
 b=Xj3N4myB/yIWFCZmvPIRU5mKvLDNTpI3f5vJPHNyFeiOb7EjGHyEAg6iVdPPE8goMp
 +m5e6V8v6r08JTrHZ+81KPODBpEkjizhAcsy/L/tyceP5y5nRRlH3iJ+yemrYjM1rtMp
 /Ambhksa5nbCKi/R5HVkw50OvpgmsFyDBgwzGxmpU5S59YmDH+2wvku6JiL2/mLAQJgS
 AKscqV6lojaOfHjJx50goj6chXI59DuDFysoT3xWJYtbLpqx1emPLWi0bJMxz0bG/S6m
 mc5lD4oyXNTSjQhcCKkR1kb3EegWz1xmiq4WNBIoOu3EOdwKS+qLlhQFqapzqLAxo9Sz
 6ubg==
X-Gm-Message-State: APjAAAVzGCBhhivW3LJA+vMms4byPcUAIMqSo5h97RiDVQcDeiB3Wuo6
 quBz0k+JYNGbpe4FQ+1mtvX6b1eurYgqN8NGiog1UA==
X-Google-Smtp-Source: APXvYqxO8H0t5ovhrPmidpWD1aY3uJm4qdbUX/FofBcjV1DfA+0t9o9O4kMGJdkYbxAEiOpYaWykN8tDWG7Vnyi6zxc=
X-Received: by 2002:a05:6000:110f:: with SMTP id
 z15mr6556036wrw.328.1568897774029; 
 Thu, 19 Sep 2019 05:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190904161245.111924-1-anup.patel@wdc.com>
 <20190904161245.111924-4-anup.patel@wdc.com>
In-Reply-To: <20190904161245.111924-4-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 19 Sep 2019 18:26:02 +0530
Message-ID: <CAAhSdy1n34wi9iR-QViBFo_ApQx-2R6Jkd8Zpvyt9aLB91jDSw@mail.gmail.com>
Subject: Re: [PATCH v7 02/21] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
To: Paul Walmsley <paul.walmsley@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_055616_501668_362FDA12 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Palmer Dabbelt <palmer@sifive.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alexander Graf <graf@amazon.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Wed, Sep 4, 2019 at 9:43 PM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> This patch adds riscv_isa bitmap which represents Host ISA features
> common across all Host CPUs. The riscv_isa is not same as elf_hwcap
> because elf_hwcap will only have ISA features relevant for user-space
> apps whereas riscv_isa will have ISA features relevant to both kernel
> and user-space apps.
>
> One of the use-case for riscv_isa bitmap is in KVM hypervisor where
> we will use it to do following operations:
>
> 1. Check whether hypervisor extension is available
> 2. Find ISA features that need to be virtualized (e.g. floating
>    point support, vector extension, etc.)

I had addressed your previous comments on this patch by
making riscv_isa as bitmap to cover Z-extensions.

Please review it again.

Regards,
Anup

>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 26 +++++++++++
>  arch/riscv/kernel/cpufeature.c | 79 ++++++++++++++++++++++++++++++++--
>  2 files changed, 102 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 7ecb7c6a57b1..9b657375aa51 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -8,6 +8,7 @@
>  #ifndef __ASM_HWCAP_H
>  #define __ASM_HWCAP_H
>
> +#include <linux/bits.h>
>  #include <uapi/asm/hwcap.h>
>
>  #ifndef __ASSEMBLY__
> @@ -22,5 +23,30 @@ enum {
>  };
>
>  extern unsigned long elf_hwcap;
> +
> +#define RISCV_ISA_EXT_a                ('a' - 'a')
> +#define RISCV_ISA_EXT_c                ('c' - 'a')
> +#define RISCV_ISA_EXT_d                ('d' - 'a')
> +#define RISCV_ISA_EXT_f                ('f' - 'a')
> +#define RISCV_ISA_EXT_h                ('h' - 'a')
> +#define RISCV_ISA_EXT_i                ('i' - 'a')
> +#define RISCV_ISA_EXT_m                ('m' - 'a')
> +#define RISCV_ISA_EXT_s                ('s' - 'a')
> +#define RISCV_ISA_EXT_u                ('u' - 'a')
> +#define RISCV_ISA_EXT_zicsr    (('z' - 'a') + 1)
> +#define RISCV_ISA_EXT_zifencei (('z' - 'a') + 2)
> +#define RISCV_ISA_EXT_zam      (('z' - 'a') + 3)
> +#define RISCV_ISA_EXT_ztso     (('z' - 'a') + 4)
> +
> +#define RISCV_ISA_EXT_MAX      256
> +
> +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
> +
> +#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
> +
> +bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit);
> +#define riscv_isa_extension_available(isa_bitmap, ext) \
> +       __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
> +
>  #endif
>  #endif
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index b1ade9a49347..4ce71ce5e290 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -6,21 +6,64 @@
>   * Copyright (C) 2017 SiFive
>   */
>
> +#include <linux/bitmap.h>
>  #include <linux/of.h>
>  #include <asm/processor.h>
>  #include <asm/hwcap.h>
>  #include <asm/smp.h>
>
>  unsigned long elf_hwcap __read_mostly;
> +
> +/* Host ISA bitmap */
> +static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
> +
>  #ifdef CONFIG_FPU
>  bool has_fpu __read_mostly;
>  #endif
>
> +/**
> + * riscv_isa_extension_base - Get base extension word
> + *
> + * @isa_bitmap ISA bitmap to use
> + * @returns base extension word as unsigned long value
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */
> +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap)
> +{
> +       if (!isa_bitmap)
> +               return riscv_isa[0];
> +       return isa_bitmap[0];
> +}
> +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
> +
> +/**
> + * __riscv_isa_extension_available - Check whether given extension
> + * is available or not
> + *
> + * @isa_bitmap ISA bitmap to use
> + * @bit bit position of the desired extension
> + * @returns true or false
> + *
> + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> + */
> +bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit)
> +{
> +       const unsigned long *bmap = (isa_bitmap) ? isa_bitmap : riscv_isa;
> +
> +       if (bit >= RISCV_ISA_EXT_MAX)
> +               return false;
> +
> +       return test_bit(bit, bmap) ? true : false;
> +}
> +EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
> +
>  void riscv_fill_hwcap(void)
>  {
>         struct device_node *node;
>         const char *isa;
> -       size_t i;
> +       char print_str[BITS_PER_LONG+1];
> +       size_t i, j, isa_len;
>         static unsigned long isa2hwcap[256] = {0};
>
>         isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> @@ -32,8 +75,11 @@ void riscv_fill_hwcap(void)
>
>         elf_hwcap = 0;
>
> +       bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
> +
>         for_each_of_cpu_node(node) {
>                 unsigned long this_hwcap = 0;
> +               unsigned long this_isa = 0;
>
>                 if (riscv_of_processor_hartid(node) < 0)
>                         continue;
> @@ -43,8 +89,20 @@ void riscv_fill_hwcap(void)
>                         continue;
>                 }
>
> -               for (i = 0; i < strlen(isa); ++i)
> +               i = 0;
> +               isa_len = strlen(isa);
> +#if defined(CONFIG_32BIT)
> +               if (!strncmp(isa, "rv32", 4))
> +                       i += 4;
> +#elif defined(CONFIG_64BIT)
> +               if (!strncmp(isa, "rv64", 4))
> +                       i += 4;
> +#endif
> +               for (; i < isa_len; ++i) {
>                         this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> +                       if ('a' <= isa[i] && isa[i] <= 'z')
> +                               this_isa |= (1UL << (isa[i] - 'a'));
> +               }
>
>                 /*
>                  * All "okay" hart should have same isa. Set HWCAP based on
> @@ -55,6 +113,11 @@ void riscv_fill_hwcap(void)
>                         elf_hwcap &= this_hwcap;
>                 else
>                         elf_hwcap = this_hwcap;
> +
> +               if (riscv_isa[0])
> +                       riscv_isa[0] &= this_isa;
> +               else
> +                       riscv_isa[0] = this_isa;
>         }
>
>         /* We don't support systems with F but without D, so mask those out
> @@ -64,7 +127,17 @@ void riscv_fill_hwcap(void)
>                 elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
>         }
>
> -       pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
> +       memset(print_str, 0, sizeof(print_str));
> +       for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +               if (riscv_isa[0] & BIT_MASK(i))
> +                       print_str[j++] = (char)('a' + i);
> +       pr_info("riscv: ISA extensions %s\n", print_str);
> +
> +       memset(print_str, 0, sizeof(print_str));
> +       for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> +               if (elf_hwcap & BIT_MASK(i))
> +                       print_str[j++] = (char)('a' + i);
> +       pr_info("riscv: ELF capabilities %s\n", print_str);
>
>  #ifdef CONFIG_FPU
>         if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
> --
> 2.17.1
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
