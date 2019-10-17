Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E7FDA7BF
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 10:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TGP+Kuo5yHpSqlTQzRvwgxG5gTldmF/LZPjX15Obo0=; b=suwokHjGydN2O4
	C1kU/970Q4UgpZJsXB5eX1QBeqgC6mN/yPKfRsPJwncgjVT2hC+rBwAvyMBwkKM93u2ZsRa2KIlkZ
	/ej/byIwhIWsyUn2nV8dVNWYostqUT1rvQ4cidJ4cwBCNnsvwgjxfECA1ovVp8y5ni+ULMVyAUhbF
	Y9AiZGuR7TW2peUliE4LdDkThZZbPhTJ1wr8kKmpSAGeY53udOwgX/aVCwWUrXQF21y0fbj1NguFw
	YZiTRq/xi2RcQbsARjUhE/o4k6CPSdX48UQ4M6Xb2owKc6VNVt2N+ojZ+5B7yp68OR0veFdLzHUr1
	383aZ5GPkLg449E/N2Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL1Sk-0003cw-K9; Thu, 17 Oct 2019 08:48:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL1Sh-0003cP-49
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 08:48:48 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so1615843wmi.3
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 01:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ABLJXVRMPFM4pBjF5MtvPjsU9wNvxgGgz98k9KABKpI=;
 b=PF17a64CORHUVSvDRifR6t0U+QaHY0SKqGdGnvTTcrru79sqhAAXGH6HSdjaq2cdjS
 CcpHuf6rNGpuxa+PlYMxn4isoV+C0Et/4/tzdrMj9uG0vH6zebbqfsSph3nVP0TQFysU
 H1Jy6snrhBE4ar/G+trpHXjpEurwRgcecMUgiTGghi0y/soPmKbpHz9hbQDdfzQ7XjyD
 hU2CZO7bChiJGKt7E2qHxoqBfSu4cIODG1cVG/ULE+s/5m+1rFnxqIF2spLdv3gGM4D5
 X2nnwbiYmVsRCF1psZaQPuYGRZv3brqDQ4+fR6y5qPYW5DZxtvX60CTeDwCBoO653he/
 EmcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ABLJXVRMPFM4pBjF5MtvPjsU9wNvxgGgz98k9KABKpI=;
 b=Z07zeZlcLa7vL5BidUyc4E3C3VNpgUfoiYPjoXlAKqzAFMz3cqqwin3RpfhRhRyFv4
 LoGD51X5adQzZ/PXPDWPNLq5YClUArkV5j/c5p0Q6V1JSXB/nEGXG515q9shbHovLN7W
 wIuuoxCzQtT9YkqWIBM7c6rVIZPcenQe0glHphYB4/ye+7pD6oB4HnYx+LBmq9eVHE6B
 Y0DOuGxA+67V95Ku63AQNX37k5aNOe/Mk/YT4rM2zYSrMzL2PvkD4hyH95T+2yMhr+NW
 d4s7qOLGZEjaRKuDwL+9PnaaJyNgFYF3I+HFpog9b+JhNj+kjMMCtYsQUGFoXoFLHT7n
 I/eg==
X-Gm-Message-State: APjAAAUk/SfGXhwqemtCv1an8n75of9H2zye6KbNqZfACJ5xBwgPWfK2
 WodLBRe5kbvFQs/V10QouQBEMEeanPR38+fx6pyMbQ==
X-Google-Smtp-Source: APXvYqwwEer8++JvoI8Wa9EUAhuZDuzD4ABKrqyb2q4mQEDHCVptVgwsYmWiFSo0tLUhjapJgLK3/nQr4MSfWYqwX8Q=
X-Received: by 2002:a1c:a697:: with SMTP id p145mr1734740wme.24.1571302124460; 
 Thu, 17 Oct 2019 01:48:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191016160649.24622-1-anup.patel@wdc.com>
 <20191016160649.24622-2-anup.patel@wdc.com>
In-Reply-To: <20191016160649.24622-2-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 17 Oct 2019 14:18:33 +0530
Message-ID: <CAAhSdy3xV0UjDKUgHoKbyoeV5kaC9rVSy=qoBpF=XrrbT=W=-Q@mail.gmail.com>
Subject: Re: [PATCH v9 01/22] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_014847_217023_24B71EC3 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Radim K <rkrcmar@redhat.com>,
 Anup Patel <Anup.Patel@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
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

On Wed, Oct 16, 2019 at 9:38 PM Anup Patel <Anup.Patel@wdc.com> wrote:
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
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Alexander Graf <graf@amazon.com>

Can you consider this patch for Linux-5.4-rcX ??

Regards,
Anup

> ---
>  arch/riscv/include/asm/hwcap.h | 22 +++++++++
>  arch/riscv/kernel/cpufeature.c | 83 ++++++++++++++++++++++++++++++++--
>  2 files changed, 102 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 7ecb7c6a57b1..5989dd4426d1 100644
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
> @@ -22,5 +23,26 @@ enum {
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
> index eaad5aa07403..64068d36658d 100644
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
> + * riscv_isa_extension_base() - Get base extension word
> + *
> + * @isa_bitmap: ISA bitmap to use
> + * Return: base extension word as unsigned long value
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
> + * __riscv_isa_extension_available() - Check whether given extension
> + * is available or not
> + *
> + * @isa_bitmap: ISA bitmap to use
> + * @bit: bit position of the desired extension
> + * Return: true or false
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
> @@ -41,8 +87,24 @@ void riscv_fill_hwcap(void)
>                 if (riscv_read_check_isa(node, &isa) < 0)
>                         continue;
>
> -               for (i = 0; i < strlen(isa); ++i)
> +               i = 0;
> +               isa_len = strlen(isa);
> +#if IS_ENABLED(CONFIG_32BIT)
> +               if (!strncmp(isa, "rv32", 4))
> +                       i += 4;
> +#elif IS_ENABLED(CONFIG_64BIT)
> +               if (!strncmp(isa, "rv64", 4))
> +                       i += 4;
> +#endif
> +               for (; i < isa_len; ++i) {
>                         this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> +                       /*
> +                        * TODO: X, Y and Z extension parsing for Host ISA
> +                        * bitmap will be added in-future.
> +                        */
> +                       if ('a' <= isa[i] && isa[i] < 'x')
> +                               this_isa |= (1UL << (isa[i] - 'a'));
> +               }
>
>                 /*
>                  * All "okay" hart should have same isa. Set HWCAP based on
> @@ -53,6 +115,11 @@ void riscv_fill_hwcap(void)
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
> @@ -62,7 +129,17 @@ void riscv_fill_hwcap(void)
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
