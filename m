Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559C4858D6
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 06:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2sy1Ahk6yfR0m9CDlkyHA5Z/lWZ6FBcDKG1PFfqpvVc=; b=q9TW+nO7OVPflt
	4nB6Lp7xn8wxYu1LIgEyAFwD2SmBib1r9fVDSjDcHf5ppyzX+9AWsfkpe76dTFgovzn87xgN6QopI
	gz+H2pWuHIKx08lYQTYM9s3Yny2GsqrVb5gdZs6kJaAqnw1bNWZJuLKRGd+sR+qP+RUKX18C6bEZk
	kZ5zV+R/x/UT50AydGsRXduJgZH8DeW0kye3HrJ6Lt6LWuDwJTFbY8/oQ5D2e792VOm5mFBZxNGD6
	+TlH00ZyDfanQvdbyRiPKgpGeOlpCMwd/iMJ34IfKVY5CAfMmA/Z2gqB0WiWmekJQnNGgBsQ2nRYs
	/1k3WHjYGowPzxOknyrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZeb-0008MN-26; Thu, 08 Aug 2019 04:03:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZeV-0008HH-4W
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 04:03:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id b3so1034085wro.4
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 21:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ctJbyyLwMP33agpqVGwypoXkfgT1J1HH/9FLl/LJj1E=;
 b=KiSioMKNVN4ckpn8lnAwBaU6vzjJcekS1R/mBbo7BENCM1p+lGjM0wRNn7LoOrcsY/
 4Az7FsmY8J+KmoB48yp9wEkKP/2TVdnRE13YG37np981m95paFbIFBNIX9jWfP+8mdWL
 zt7EglsdAHDzomvMfKWoBOE+oJqZKzSKcPPoSijpHJzAO6usjfnybEdOGVArQTCPyy00
 zPMFjwngMiybaGqgu1KLzpxGk0LpAoxtKp+1mvTtFRHJSsG7MchyJhE0fM2UCRWqg9kI
 6Z3IzAtm5fBQI0LEGpeelBNiPG35J/bEYBt79E2Xb3y0FjE0f39uxUGdKj+UcKIO6VbA
 wWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ctJbyyLwMP33agpqVGwypoXkfgT1J1HH/9FLl/LJj1E=;
 b=NyQYzrKYnhutJLs7SPWGbsNYxkM29MPS6wnLFkDwYspr3XMrs7TTbzaPm/vwCKcN6B
 EnqOYpLf0J5YccTe5mMv+MUIyA2Oc0emwBFS9Ab/fXQX+JvRdN/EgCf+ehJEWk0RtaiI
 MXX7ZLpPVEEQxco5RcgGYyuBHx9ECKwL8+ygTV6A7woeWAHYbF42jBoHrFkwvIU9LLNQ
 6dUfNV6Brs51LFOfxTXlYyFZE5RaeDJQx7MWGBXcV7fN1zGzuMyA87nKvOY8rwYopdyu
 8hy0MlRSacAVCS+l7tJ2Q0PNTNBDPjqHCqWOu4rxScC605vrsmKCTZ03tT2sYPq+419q
 IprQ==
X-Gm-Message-State: APjAAAXjupia+nuwjYbcxOwlG73w54cOJaQrx2w1rtrpFSXaAVAnv5Gt
 ZCjUUK3kdrVYU1cvJcgfvciTHhmBxRvYWhMkXOteaQ==
X-Google-Smtp-Source: APXvYqw+zr7sYUMpcCIs/Nf6nfkGt6pARCHzcNVZrVf/9qmDgATyGTeI1/I6LnEk4AcCJNQErEzeObSpUsbjJkqmB9A=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr13203226wra.328.1565237023085; 
 Wed, 07 Aug 2019 21:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190807122726.81544-1-anup.patel@wdc.com>
 <20190807122726.81544-3-anup.patel@wdc.com>
 <750dc9365c02d20616ae8ca22ac454d0e54e994e.camel@wdc.com>
In-Reply-To: <750dc9365c02d20616ae8ca22ac454d0e54e994e.camel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 8 Aug 2019 09:33:31 +0530
Message-ID: <CAAhSdy0_pR6aZj5R=EYnoa94BDgXfCDujOV+bBHRhMCyKAbb9A@mail.gmail.com>
Subject: Re: [PATCH v4 02/20] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
To: Atish Patra <Atish.Patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_210347_358623_B76D7810 
X-CRM114-Status: GOOD (  23.90  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 12:18 AM Atish Patra <Atish.Patra@wdc.com> wrote:
>
> On Wed, 2019-08-07 at 12:28 +0000, Anup Patel wrote:
> > This patch adds riscv_isa bitmap which represents Host ISA features
> > common across all Host CPUs. The riscv_isa is not same as elf_hwcap
> > because elf_hwcap will only have ISA features relevant for user-space
> > apps whereas riscv_isa will have ISA features relevant to both kernel
> > and user-space apps.
> >
> > One of the use-case for riscv_isa bitmap is in KVM hypervisor where
> > we will use it to do following operations:
> >
> > 1. Check whether hypervisor extension is available
> > 2. Find ISA features that need to be virtualized (e.g. floating
> >    point support, vector extension, etc.)
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/hwcap.h | 26 +++++++++++
> >  arch/riscv/kernel/cpufeature.c | 79
> > ++++++++++++++++++++++++++++++++--
> >  2 files changed, 102 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/hwcap.h
> > b/arch/riscv/include/asm/hwcap.h
> > index 7ecb7c6a57b1..9b657375aa51 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -8,6 +8,7 @@
> >  #ifndef __ASM_HWCAP_H
> >  #define __ASM_HWCAP_H
> >
> > +#include <linux/bits.h>
> >  #include <uapi/asm/hwcap.h>
> >
> >  #ifndef __ASSEMBLY__
> > @@ -22,5 +23,30 @@ enum {
> >  };
> >
> >  extern unsigned long elf_hwcap;
> > +
> > +#define RISCV_ISA_EXT_a              ('a' - 'a')
> > +#define RISCV_ISA_EXT_c              ('c' - 'a')
> > +#define RISCV_ISA_EXT_d              ('d' - 'a')
> > +#define RISCV_ISA_EXT_f              ('f' - 'a')
> > +#define RISCV_ISA_EXT_h              ('h' - 'a')
> > +#define RISCV_ISA_EXT_i              ('i' - 'a')
> > +#define RISCV_ISA_EXT_m              ('m' - 'a')
> > +#define RISCV_ISA_EXT_s              ('s' - 'a')
> > +#define RISCV_ISA_EXT_u              ('u' - 'a')
>
> As per the discussion in following threads, 'S' & 'U' are not valid ISA
> extensions. So we should drop them from here as well.
>
> http://lists.infradead.org/pipermail/linux-riscv/2019-August/005771.html
>
> https://lists.nongnu.org/archive/html/qemu-devel/2019-08/msg01217.html

I disagree because we are not checking or enforcing required ISA features
here.

The asm/hwcap.h should define all possible feature and extension bits
defined by the RISC-V spec.

The 's' and 'u' bits in ISA mean that S-mode and U-mode are supported.
These bits are defined in RISC-V privileged spec as well.

Regards,
Anup

>
>
> > +#define RISCV_ISA_EXT_zicsr  (('z' - 'a') + 1)
> > +#define RISCV_ISA_EXT_zifencei       (('z' - 'a') + 2)
> > +#define RISCV_ISA_EXT_zam    (('z' - 'a') + 3)
> > +#define RISCV_ISA_EXT_ztso   (('z' - 'a') + 4)
> > +
> > +#define RISCV_ISA_EXT_MAX    256
> > +
> > +unsigned long riscv_isa_extension_base(const unsigned long
> > *isa_bitmap);
> > +
> > +#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
> > +
> > +bool __riscv_isa_extension_available(const unsigned long
> > *isa_bitmap, int bit);
> > +#define riscv_isa_extension_available(isa_bitmap, ext)       \
> > +     __riscv_isa_extension_available(isa_bitmap,
> > RISCV_ISA_EXT_##ext)
> > +
> >  #endif
> >  #endif
> > diff --git a/arch/riscv/kernel/cpufeature.c
> > b/arch/riscv/kernel/cpufeature.c
> > index b1ade9a49347..4ce71ce5e290 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -6,21 +6,64 @@
> >   * Copyright (C) 2017 SiFive
> >   */
> >
> > +#include <linux/bitmap.h>
> >  #include <linux/of.h>
> >  #include <asm/processor.h>
> >  #include <asm/hwcap.h>
> >  #include <asm/smp.h>
> >
> >  unsigned long elf_hwcap __read_mostly;
> > +
> > +/* Host ISA bitmap */
> > +static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
> > +
> >  #ifdef CONFIG_FPU
> >  bool has_fpu __read_mostly;
> >  #endif
> >
> > +/**
> > + * riscv_isa_extension_base - Get base extension word
> > + *
> > + * @isa_bitmap ISA bitmap to use
> > + * @returns base extension word as unsigned long value
> > + *
> > + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> > + */
> > +unsigned long riscv_isa_extension_base(const unsigned long
> > *isa_bitmap)
> > +{
> > +     if (!isa_bitmap)
> > +             return riscv_isa[0];
> > +     return isa_bitmap[0];
> > +}
> > +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
> > +
> > +/**
> > + * __riscv_isa_extension_available - Check whether given extension
> > + * is available or not
> > + *
> > + * @isa_bitmap ISA bitmap to use
> > + * @bit bit position of the desired extension
> > + * @returns true or false
> > + *
> > + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> > + */
> > +bool __riscv_isa_extension_available(const unsigned long
> > *isa_bitmap, int bit)
> > +{
> > +     const unsigned long *bmap = (isa_bitmap) ? isa_bitmap :
> > riscv_isa;
> > +
> > +     if (bit >= RISCV_ISA_EXT_MAX)
> > +             return false;
> > +
> > +     return test_bit(bit, bmap) ? true : false;
> > +}
> > +EXPORT_SYMBOL_GPL(__riscv_isa_extension_available);
> > +
> >  void riscv_fill_hwcap(void)
> >  {
> >       struct device_node *node;
> >       const char *isa;
> > -     size_t i;
> > +     char print_str[BITS_PER_LONG+1];
> > +     size_t i, j, isa_len;
> >       static unsigned long isa2hwcap[256] = {0};
> >
> >       isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> > @@ -32,8 +75,11 @@ void riscv_fill_hwcap(void)
> >
> >       elf_hwcap = 0;
> >
> > +     bitmap_zero(riscv_isa, RISCV_ISA_EXT_MAX);
> > +
> >       for_each_of_cpu_node(node) {
> >               unsigned long this_hwcap = 0;
> > +             unsigned long this_isa = 0;
> >
> >               if (riscv_of_processor_hartid(node) < 0)
> >                       continue;
> > @@ -43,8 +89,20 @@ void riscv_fill_hwcap(void)
> >                       continue;
> >               }
> >
> > -             for (i = 0; i < strlen(isa); ++i)
> > +             i = 0;
> > +             isa_len = strlen(isa);
> > +#if defined(CONFIG_32BIT)
> > +             if (!strncmp(isa, "rv32", 4))
> > +                     i += 4;
> > +#elif defined(CONFIG_64BIT)
> > +             if (!strncmp(isa, "rv64", 4))
> > +                     i += 4;
> > +#endif
> > +             for (; i < isa_len; ++i) {
> >                       this_hwcap |= isa2hwcap[(unsigned
> > char)(isa[i])];
> > +                     if ('a' <= isa[i] && isa[i] <= 'z')
> > +                             this_isa |= (1UL << (isa[i] - 'a'));
> > +             }
> >
> >               /*
> >                * All "okay" hart should have same isa. Set HWCAP
> > based on
> > @@ -55,6 +113,11 @@ void riscv_fill_hwcap(void)
> >                       elf_hwcap &= this_hwcap;
> >               else
> >                       elf_hwcap = this_hwcap;
> > +
> > +             if (riscv_isa[0])
> > +                     riscv_isa[0] &= this_isa;
> > +             else
> > +                     riscv_isa[0] = this_isa;
> >       }
> >
> >       /* We don't support systems with F but without D, so mask those
> > out
> > @@ -64,7 +127,17 @@ void riscv_fill_hwcap(void)
> >               elf_hwcap &= ~COMPAT_HWCAP_ISA_F;
> >       }
> >
> > -     pr_info("elf_hwcap is 0x%lx\n", elf_hwcap);
> > +     memset(print_str, 0, sizeof(print_str));
> > +     for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> > +             if (riscv_isa[0] & BIT_MASK(i))
> > +                     print_str[j++] = (char)('a' + i);
> > +     pr_info("riscv: ISA extensions %s\n", print_str);
> > +
> > +     memset(print_str, 0, sizeof(print_str));
> > +     for (i = 0, j = 0; i < BITS_PER_LONG; i++)
> > +             if (elf_hwcap & BIT_MASK(i))
> > +                     print_str[j++] = (char)('a' + i);
> > +     pr_info("riscv: ELF capabilities %s\n", print_str);
> >
> >  #ifdef CONFIG_FPU
> >       if (elf_hwcap & (COMPAT_HWCAP_ISA_F | COMPAT_HWCAP_ISA_D))
>
> --
> Regards,
> Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
