Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C839A9E251
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 10:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rY2irPWQg06Dbkoml1TR+IQ41rNyjdARq0ouWtatCU=; b=cpKVwJV/8hYMVa
	QcWQbI+/M7rG9uvLUyEV7tfqd6CzFlfDqDLr4CWtwVOMKO2F55zpCVy1W9OtxAEnofpNAwOyRVk1F
	8EoDQ5luVqQSSyMElkAMygBp9KKY+ERg2jSF9LoKqYVWcthITRiuHlBVvVmGpIOGqEOX17MolaimM
	QxMbOt1dDERbSucMbHyI3Mjyh5fK4sX0cQr2iFA+CQFY/eqtxuuSh0enHwDUEQyS8a1nP/3MeoSTy
	210QDEcS7k62ZtfzNF9dc4swJrOkVWOOl3CycXZGSDNosRt9x6kQFBrG5DUs/T5h5PsTQ3sDGHIGw
	XbmviHvXkNVRwu2BLjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WlQ-0000zq-3I; Tue, 27 Aug 2019 08:23:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WlM-0000zP-6d
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 08:23:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id f72so2073214wmf.5
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 01:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NepXEyn9fZveKy7rBT4Kctc0qSC7qYcEna2fQHU59+8=;
 b=yukXEQCoOCATOcbM7T3pjgibrTcrG9xcUwdocqBtfeRpYbsL0e6fsW+pPfTkrVZscb
 5wD38kpAsjVtgXsA8ubS0WDlF3rO+d1VHsT4zCgiLc5zOXz/8RycO+cCCbVpFDeLZxWC
 Jd9bjW8iDD6qBEkeGOIVRYJ5EdS3lnkX5IxjD5rwS2tQLOTOVFun+KqyiCSHdLRidJAQ
 CffdY3q3Buva7LzligdGUsaWMF0jzq7k187ok614wQGK73mNGmxzLN2/HiNC0LqSsWmj
 g7on9RRLJ8YP3+5yewuWQbYBtC7LRHBK8bF7tj2I6Mp3mxzWqGwGomCPfO/IwHA5lOEo
 XvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NepXEyn9fZveKy7rBT4Kctc0qSC7qYcEna2fQHU59+8=;
 b=ma3trIOdUhEUkA2uVDudugHujhOhzFrsO/cmuxWPuu4vWOgGx61SuC3vPplhf1uLHI
 q25OyABgyWh4stKdKcdQW1CPtumRJw8sXEKvsXynik6UfIFX5oeQ40TM+JX9AWbu5nQ9
 +YZA3BlpA5xu9t60YLFlKFxiO7tUYRyEQ/UxFhQmVqJDA7v+dK61f1Iw7YmdUxIdXkK0
 iuFEXcNiweUWOo/Ba3HXNulW2FYY3ZW4PWU89jdEwEWfHMvH4gvxBhNor5nMUc35n6x2
 WmCxuHfhZcmFoJRVU2M3BURe4uiFOHdM2gq8CTMPm2E66P22bCa/lPcPUcp/FyAIXkIQ
 di+g==
X-Gm-Message-State: APjAAAVU1kQu7Mt0qRJATC5JWAikXccLzmmSKO5hKc/Wd2ujpyF5OxfB
 wRnUv/BrJ3N9sV2Uvm2Qp8Jcn4eZell3xwtXtjuKIw==
X-Google-Smtp-Source: APXvYqzDexl/Hx6yla/FfjRuqr0HadKOWaGlb8olEqSUedH+h/8I8lskrl1g3hEts4j6rA/Xq5cvin9JjqKbJ67Kaj0=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr24797060wma.24.1566894214203; 
 Tue, 27 Aug 2019 01:23:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
 <20190827075831.GD682@rapoport-lnx>
In-Reply-To: <20190827075831.GD682@rapoport-lnx>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 27 Aug 2019 13:53:23 +0530
Message-ID: <CAAhSdy3gynEv1k84pghLY6+HcpBCiteUQUDbGn4_eEH_UFpbCA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_012336_307837_936686CA 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 1:28 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Mon, Aug 26, 2019 at 04:32:56PM -0700, Atish Patra wrote:
> > The SBI v0.2 introduces a base extension which is backward compatible
> > with v0.1. Implement all helper functions and minimum required SBI
> > calls from v0.2 for now. All other base extension function will be
> > added later as per need.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h | 68 +++++++++++++++++++++++++++++-------
> >  arch/riscv/kernel/Makefile   |  1 +
> >  arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
> >  arch/riscv/kernel/setup.c    |  2 ++
> >  4 files changed, 108 insertions(+), 13 deletions(-)
> >  create mode 100644 arch/riscv/kernel/sbi.c
> >
> > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > index 7f5ecaaaa0d7..4a4476956693 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -8,7 +8,6 @@
> >
> >  #include <linux/types.h>
> >
> > -
> >  #define SBI_EXT_LEGACY_SET_TIMER 0x0
> >  #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> >  #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > @@ -19,28 +18,61 @@
> >  #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> >  #define SBI_EXT_LEGACY_SHUTDOWN 0x8
> >
> > -#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
> > +#define SBI_EXT_BASE 0x10
> > +
> > +enum sbi_ext_base_fid {
> > +     SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> > +     SBI_EXT_BASE_GET_IMP_ID,
> > +     SBI_EXT_BASE_GET_IMP_VERSION,
> > +     SBI_EXT_BASE_PROBE_EXT,
> > +     SBI_EXT_BASE_GET_MVENDORID,
> > +     SBI_EXT_BASE_GET_MARCHID,
> > +     SBI_EXT_BASE_GET_MIMPID,
> > +};
> > +
> > +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({ \
> >       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> >       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> >       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> >       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> > -     register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> > +     register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);    \
> > +     register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);    \
> >       asm volatile ("ecall"                                   \
> > -                   : "+r" (a0)                               \
> > -                   : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> > +                   : "+r" (a0), "+r" (a1)                    \
> > +                   : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \
>
> Maybe I'm missing something, but how is this supposed to work on systems
> with SBI v0.1? Wouldn't this cause a mismatch in the registers?

The SBI v0.2 has two major changes:
1. New improved calling convention which is backward compatible
with SBI v0.1 so older kernels with SBI v0.1 will continue to work as-is.
2. Base set of mandatory SBI v0.2 calls which can be used to detect
SBI version, check supported SBI calls and extentions.

Old calling convention in SBI v0.1 was:
Parameters:
a0 -> arg0
a1 -> arg1
a2 -> arg2
a3 -> arg3
a7 -> function_id
Return:
a0 -> return value or error code

In SBI v0.2, we have extension and function. Each SBI extension
is a set of function. The new calling convention in SBI v0.2 is:
Parameters:
a0 -> arg0
a1 -> arg1
a2 -> arg2
a3 -> arg3
a6 -> function_id
a7 -> extension_id
Return:
a0 -> error code
a1 -> return value (optional)

All legacy SBI v0.1 functions can be thought of as separate
extensions. That's how SBI v0.2 will be backward compatible.

Regards,
Anup

>
> >                     : "memory");                              \
> >       a0;                                                     \
> >  })
> >
> >  /* Lazy implementations until SBI is finalized */
> > -#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
> > -#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
> > -#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > -             SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > -#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > -             SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > -#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > -             SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > +#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0, arg0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
> > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
> > +#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
> > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
> > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
> > +
> > +extern unsigned long sbi_firmware_version;
> > +struct sbiret {
> > +     long error;
> > +     long value;
> > +};
> > +
> > +void riscv_sbi_init(void);
> > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> > +                            int arg2, int arg3);
> > +
> > +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
> > +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0, 0, 0, 0)
> > +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> > +             riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> > +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> > +             riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> > +             riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
> > +
> >
> >  static inline void sbi_console_putchar(int ch)
> >  {
> > @@ -99,4 +131,14 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> >                         start, size, asid);
> >  }
> >
> > +static inline unsigned long riscv_sbi_major_version(void)
> > +{
> > +     return (sbi_firmware_version >> 24) & 0x7f;
> > +}
> > +
> > +static inline unsigned long riscv_sbi_minor_version(void)
> > +{
> > +     return sbi_firmware_version & 0xffffff;
> > +}
> > +
> >  #endif
> > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > index 2420d37d96de..faf862d26924 100644
> > --- a/arch/riscv/kernel/Makefile
> > +++ b/arch/riscv/kernel/Makefile
> > @@ -17,6 +17,7 @@ obj-y       += irq.o
> >  obj-y        += process.o
> >  obj-y        += ptrace.o
> >  obj-y        += reset.o
> > +obj-y        += sbi.o
> >  obj-y        += setup.o
> >  obj-y        += signal.o
> >  obj-y        += syscall_table.o
> > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > new file mode 100644
> > index 000000000000..457b8cc0e9d9
> > --- /dev/null
> > +++ b/arch/riscv/kernel/sbi.c
> > @@ -0,0 +1,50 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * SBI initialilization and base extension implementation.
> > + *
> > + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> > + */
> > +
> > +#include <asm/sbi.h>
> > +#include <linux/sched.h>
> > +
> > +unsigned long sbi_firmware_version;
> > +
> > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> > +                          int arg2, int arg3)
> > +{
> > +     struct sbiret ret;
> > +
> > +     register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> > +     register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> > +     register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> > +     register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> > +     register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> > +     register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> > +     asm volatile ("ecall"
> > +                   : "+r" (a0), "+r" (a1)
> > +                   : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> > +                   : "memory");
> > +     ret.error = a0;
> > +     ret.value = a1;
> > +
> > +     return ret;
> > +}
> > +
> > +static struct sbiret sbi_get_spec_version(void)
> > +{
> > +     return SBI_CALL_0(SBI_EXT_BASE, SBI_EXT_BASE_GET_SPEC_VERSION);
> > +}
> > +
> > +void riscv_sbi_init(void)
> > +{
> > +     struct sbiret ret;
> > +
> > +     /* legacy SBI version*/
> > +     sbi_firmware_version = 0x1;
> > +     ret = sbi_get_spec_version();
> > +     if (!ret.error)
> > +             sbi_firmware_version = ret.value;
> > +     pr_info("SBI version implemented in firmware [%lu:%lu]\n",
> > +             riscv_sbi_major_version(), riscv_sbi_minor_version());
> > +}
> > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > index a990a6cb184f..4c324fd398c8 100644
> > --- a/arch/riscv/kernel/setup.c
> > +++ b/arch/riscv/kernel/setup.c
> > @@ -21,6 +21,7 @@
> >  #include <asm/sections.h>
> >  #include <asm/pgtable.h>
> >  #include <asm/smp.h>
> > +#include <asm/sbi.h>
> >  #include <asm/tlbflush.h>
> >  #include <asm/thread_info.h>
> >
> > @@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
> >       swiotlb_init(1);
> >  #endif
> >
> > +     riscv_sbi_init();
> >  #ifdef CONFIG_SMP
> >       setup_smp();
> >  #endif
> > --
> > 2.21.0
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>
> --
> Sincerely yours,
> Mike.
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
