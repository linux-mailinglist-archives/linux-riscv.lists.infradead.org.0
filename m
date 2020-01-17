Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AF3140420
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 07:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kT8tPUK6L9PWUiDm45+TRBWNAtdOjta2epvvVWDmezc=; b=h2bskkQhU6vHKPOngU8ZncnsL
	XcCxdFYP8wuGfcUBGWVRmcC8+0jE4WeLQf5QCTFy4rEgSDIkVBKuyFxkjA4ZlNHSxTnmbC98nV1pV
	GZkTcT2EaLfFVdS9gqSh+XC2Y/v50/fOBnltbaAV2LFOuCccaT2YBAUANog3pUFJXMZx+SNewZxu0
	/Spb3M1vmi7f084oUSqb+8fcO7iwF+T3NHfB6yS/7C8zMy3U15BRXLIHa53pi6eS7JBGrJiSz2DVa
	toIz8W+pi8KbS46G+JuMw4LJkrCoU+DeXWARY5JXASd2AtmcFchwV5hoSAXlqy/fsS4PZ8m/qKj31
	mjObZHhAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isLO8-0003Po-3Y; Fri, 17 Jan 2020 06:45:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isLO1-0003OI-Qs
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 06:45:45 +0000
Received: by mail-wm1-x343.google.com with SMTP id d73so6274727wmd.1
 for <linux-riscv@lists.infradead.org>; Thu, 16 Jan 2020 22:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kT8tPUK6L9PWUiDm45+TRBWNAtdOjta2epvvVWDmezc=;
 b=SQawDGAIAEIs1WOeVH1PHqR1VSCqOB2JGqvm8JqWCTXIEJYs+XDb3yQ1CoB4z6K4Oo
 hC+0oUX1Z9XPJTxiasveFeoF80IUp/DLBkcMLp5iVPLnr/Q4ssVFwDeMDb3Qlua/eCAl
 /d+R2/V4skTQPhkRUms2glAGzO7b1kv4YptoN+uE/sOzeNAnM6HGUSy77sTdcE0mzHFW
 nzrtI9qA5fAzW7Aof36k4JPJOwZEmz++tFsedySP1b6/NufnUdkqRZo6osv187KK6+67
 sW7Hp6SkoZ5punhiVxEs2CEauJLEjYe8s3mDvzLUaOD23g+D7yh0ELSo7D4Kuw1SO6cb
 AD/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kT8tPUK6L9PWUiDm45+TRBWNAtdOjta2epvvVWDmezc=;
 b=bROnRrxqMK4YYOxWJkU45J9Hw1nXYg1Y9hd9swZGbWamYZxuceSRFSLN+kDzwRqIBs
 Adofhk0PzHw/jqhSICb4WiyIu6CwLC2UsxPOACb/jIkb2sjds/YFfsi3CmRQOC9pjrhy
 9WltEp0CeRPZbaOYnAFKvk709diGWzhzPEyhWz24B5Oy50i7y/WgfMPfFNnu+g7bfksf
 dXIIlpFI7Y4BR4kDH4UdFyUmgAqv6PE6OAGHBmSNJV3O8yNiLA9z6H2F0uMtU9oCFu0B
 KfClqME+UfgLTpAEFL9b9AtBWPI5dovJwBFWy8/hUEg+mYnLj3ZYSx1Hjkhpf6ntaMQc
 z4Ow==
X-Gm-Message-State: APjAAAVlqMmHVi4OmfTEIaebrg/wL/Wib7OMpApxwuhBofU763tIaaX+
 kebQStcLd1POCpFB+WbZqPLX3K9Q3QqzzC+xMVQk7Q==
X-Google-Smtp-Source: APXvYqzm7mbKYpIzCReRqg4cthTMWToH3MI9+VF8y4RoSICRSnCExf7Y/HnStY9c+nfE2sTYD5et+fdqX9huvxTQqXs=
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr2971942wmd.102.1579243539254; 
 Thu, 16 Jan 2020 22:45:39 -0800 (PST)
MIME-Version: 1.0
References: <20191223113443.68969-1-anup.patel@wdc.com>
 <20191223113443.68969-3-anup.patel@wdc.com>
 <mhng-24b22694-82f4-467b-b6a9-0fb2e186d3f2@palmerdabbelt-glaptop>
In-Reply-To: <mhng-24b22694-82f4-467b-b6a9-0fb2e186d3f2@palmerdabbelt-glaptop>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 17 Jan 2020 12:15:28 +0530
Message-ID: <CAAhSdy1MxVMm+7kxD3zE--_tzLk-pA0NOe_C54n6vbB4YxxrrQ@mail.gmail.com>
Subject: Re: [PATCH v10 02/19] RISC-V: Add bitmap reprensenting ISA features
 common across CPUs
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_224541_905481_F5E56374 
X-CRM114-Status: GOOD (  33.76  )
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
 Albert Ou <aou@eecs.berkeley.edu>, KVM General <kvm@vger.kernel.org>,
 Radim K <rkrcmar@redhat.com>, Anup Patel <Anup.Patel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alexander Graf <graf@amazon.com>,
 kvm-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 1:21 AM Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>
> On Mon, 23 Dec 2019 03:35:26 PST (-0800), Anup Patel wrote:
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
> > Reviewed-by: Alexander Graf <graf@amazon.com>
> > ---
> >  arch/riscv/include/asm/hwcap.h | 22 +++++++++
> >  arch/riscv/kernel/cpufeature.c | 83 ++++++++++++++++++++++++++++++++--
> >  2 files changed, 102 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> > index 1bb0cd04aec3..5589c012e004 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -8,6 +8,7 @@
> >  #ifndef _ASM_RISCV_HWCAP_H
> >  #define _ASM_RISCV_HWCAP_H
> >
> > +#include <linux/bits.h>
> >  #include <uapi/asm/hwcap.h>
> >
> >  #ifndef __ASSEMBLY__
> > @@ -22,6 +23,27 @@ enum {
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
> Unfortunately the ISA doesn't really work this way any more: the single-letter
> extensions are just aliases for longer extension strings, each of which
> represents a single instruction.  I know we're saddled with some ABI that looks
> this way, but I really don't want to add new code that depends on these defunct
> assumptions -- there isn't that much in Linux right now, but there's a lot in
> the FSF toolchain and getting that all out is going to be a long project.

Yes, I am aware of this.

Paul had raised similar concerns so we are using bitmap to tackle this

For example:
BIT['h' - 'a'] represents whether 'h' extension is present or not
In future, when we have incremental hxyz change in 'h' extension
we will assign some bitpostion Bhxyz for this and BIT[Bhxyz]
will represent whether 'hxyz' is present or not.

>
> > +
> > +#define RISCV_ISA_EXT_MAX    256
>
> Why so big?  It looks like the rest of the code just touches the first word,
> and most of that is explicit.

Please see previous comment.

Here 256 is a ballpark size of bitmap. If you have any preferences then
I can change to that value. I am sure this value will change in the future.

>
> > +
> > +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap);
> > +
> > +#define riscv_isa_extension_mask(ext) BIT_MASK(RISCV_ISA_EXT_##ext)
> > +
> > +bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit);
> > +#define riscv_isa_extension_available(isa_bitmap, ext)       \
> > +     __riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_##ext)
> > +
> >  #endif
> >
> >  #endif /* _ASM_RISCV_HWCAP_H */
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 0b40705567b7..e172a2322b34 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -6,6 +6,7 @@
> >   * Copyright (C) 2017 SiFive
> >   */
> >
> > +#include <linux/bitmap.h>
> >  #include <linux/of.h>
> >  #include <asm/processor.h>
> >  #include <asm/hwcap.h>
> > @@ -13,15 +14,57 @@
> >  #include <asm/switch_to.h>
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
> > + * riscv_isa_extension_base() - Get base extension word
> > + *
> > + * @isa_bitmap: ISA bitmap to use
> > + * Return: base extension word as unsigned long value
> > + *
> > + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> > + */
> > +unsigned long riscv_isa_extension_base(const unsigned long *isa_bitmap)
> > +{
> > +     if (!isa_bitmap)
> > +             return riscv_isa[0];
> > +     return isa_bitmap[0];
> > +}
> > +EXPORT_SYMBOL_GPL(riscv_isa_extension_base);
>
> This isn't used, which makes it hard to review.  Can you please split out the
> changes that don't depend on the V extension to come out of draft?  That would
> make it easier to take some of the code early, which lets us keep around less
> diff.

This is used by KVM RISC-V patches hence it is part of KVM RISC-V series.

>
> > +
> > +/**
> > + * __riscv_isa_extension_available() - Check whether given extension
> > + * is available or not
> > + *
> > + * @isa_bitmap: ISA bitmap to use
> > + * @bit: bit position of the desired extension
> > + * Return: true or false
> > + *
> > + * NOTE: If isa_bitmap is NULL then Host ISA bitmap will be used.
> > + */
> > +bool __riscv_isa_extension_available(const unsigned long *isa_bitmap, int bit)
> > +{
> > +     const unsigned long *bmap = (isa_bitmap) ? isa_bitmap : riscv_isa;
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
> > +     char print_str[BITS_PER_LONG + 1];
> > +     size_t i, j, isa_len;
> >       static unsigned long isa2hwcap[256] = {0};
> >
> >       isa2hwcap['i'] = isa2hwcap['I'] = COMPAT_HWCAP_ISA_I;
> > @@ -33,8 +76,11 @@ void riscv_fill_hwcap(void)
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
> > @@ -42,8 +88,24 @@ void riscv_fill_hwcap(void)
> >               if (riscv_read_check_isa(node, &isa) < 0)
> >                       continue;
> >
> > -             for (i = 0; i < strlen(isa); ++i)
> > +             i = 0;
> > +             isa_len = strlen(isa);
> > +#if IS_ENABLED(CONFIG_32BIT)
> > +             if (!strncmp(isa, "rv32", 4))
> > +                     i += 4;
> > +#elif IS_ENABLED(CONFIG_64BIT)
> > +             if (!strncmp(isa, "rv64", 4))
> > +                     i += 4;
>
> We shouldn't be accepting arbitrary inputs and attempting to correct them, just
> enforce that an actual ISA string is provided and check it against what the
> kernel can support.

I agree that ISA string parsing is not perfect and will improve over time but
ISA bitmap should have all the features set as provided via CPU DT nodes.

We allow KVM RISC-V initialization to proceed only when 'H' extension is
supported.

>
> > +#endif
> > +             for (; i < isa_len; ++i) {
> >                       this_hwcap |= isa2hwcap[(unsigned char)(isa[i])];
> > +                     /*
> > +                      * TODO: X, Y and Z extension parsing for Host ISA
> > +                      * bitmap will be added in-future.
> > +                      */
> > +                     if ('a' <= isa[i] && isa[i] < 'x')
> > +                             this_isa |= (1UL << (isa[i] - 'a'));
> > +             }
> >
> >               /*
> >                * All "okay" hart should have same isa. Set HWCAP based on
> > @@ -54,6 +116,11 @@ void riscv_fill_hwcap(void)
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
> >       /* We don't support systems with F but without D, so mask those out
> > @@ -63,7 +130,17 @@ void riscv_fill_hwcap(void)
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
> > --
> > 2.17.1

Regards,
Anup

