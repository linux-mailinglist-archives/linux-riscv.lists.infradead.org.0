Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D259E42A
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 11:28:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpT8TK1qQKyU/kSaCpJU2dV/d7FdfIi9VBuZ+eCC9QU=; b=Ft9VLTao+LT+Ie
	wkt19vmJf5Q31mMQZzxWlfrS8Z5zE/tNSJ1bOr6zBkRw5TLv9ClJ4gzH+SRzEAGLHHLVEbTcVijgu
	WgPetMCE4UtZ1d0JlfUrg7ayXQuIgZW+S3dpO8OsPRsHJm9ZVKx6CsR48699vSwdCP6qyDv3pkTBC
	vv+oG/lkmdaMlPpB6lPWHJnhHByq4ziPpjKkuiZa9oaVN24jN8c9OC7shMBcFQW/7aDb2mW5Se/h5
	CkBl7y7pjXKEs0Gn88qlfO2U8a56xPvRVHu75pcHIYWOJ4SV/7DBIZYr0/TcjnDtpGR5tDBiBM89o
	fIl5JFxHolNvc0MIpbyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XmD-0004Zg-Lm; Tue, 27 Aug 2019 09:28:34 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Xm4-0004Vm-D8
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 09:28:29 +0000
Received: by mail-wm1-x344.google.com with SMTP id v15so2316709wml.0
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 02:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KD1R6ByN/3R82p9ak3vm+s3BMXArMxxW+15y2czIGAE=;
 b=qDYbiUeoWbOmkfxAYoW+Q0M1Yc1bU6L9JcwHvViFtTTchUEXYn8vxmejI88vcOcCuv
 c2VllOIlI5ckqOUvgaJNF+OLzkXtgYiZPKT2FAOUFMFXBQma9xjv7VVLvz80100Tm1RO
 38iWQqxwp7S2gWBUIfMvZixUUoLd4tjF9NqZTMXpUljpnkuN29ignL2SbU5z1/ImfKG1
 2qG26xJDBj09/ILW1FgQhaDU6n2Z41OPLUz09ll4qnihSlOfOY1UmIHqs189fpz6mOXG
 rlQGRwbwSBt60FM+2c6uU0Z3K5MlTt2jeFPGKbJBCF+CpqtViC7qMcP+amWl2DzRuF/g
 bbSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KD1R6ByN/3R82p9ak3vm+s3BMXArMxxW+15y2czIGAE=;
 b=FgeoXeoBaoR9g4VFi7yv/zgTRyUoRJS7DM/ApN7TxZMbvm+6KlfBBavvjpv8MGuUgB
 aCkATKzko86z+tfSiWbRAvtevdPqrzDcmBVq3SwlY4iPkHfgNatBPHGH0nPL5rEaHiRl
 /vNz415+FkKSr3QgCNuSRZ3msrsNSckxoLQ9bZQxnbu89GZ6LOuLKoHAkYpKEKloFDZz
 CqhP1lohIA51Dwz4YNKVSfi4h5QbNNHunY6bNBxR7K4j/azKzTYTphxOJBYFrYHIfkPh
 ZFxcTY5N8Zs0NrmBvEE//k+wKm9HEToEyt/eRvsaUmq3sP0bFSWfddYQMGSj6k33GSe9
 ve0Q==
X-Gm-Message-State: APjAAAX/rdVC2ElrLJXCFdWeIM9M3JGSg9h4Pe2wnTEiWWaNI/0J0Uck
 vMvFXFUQwoYgdJDaVhbrX+22JTxJ2b/wUcsBLzGvIg==
X-Google-Smtp-Source: APXvYqzmCKihkrDrdGsBhCo8OeLICgm1ur4vzTRcXbBzmPILVEdii9ui9AtvUYLP9Fqj+muLw2EgeGi6VqJEaJbWowI=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr25133981wma.24.1566898102426; 
 Tue, 27 Aug 2019 02:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
 <20190827075831.GD682@rapoport-lnx>
 <CAAhSdy3gynEv1k84pghLY6+HcpBCiteUQUDbGn4_eEH_UFpbCA@mail.gmail.com>
 <20190827083913.GG682@rapoport-lnx>
In-Reply-To: <20190827083913.GG682@rapoport-lnx>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 27 Aug 2019 14:58:11 +0530
Message-ID: <CAAhSdy0wBhcggNOd0C4RapnLbZ-a0TtrQ_XiZHNo9KQnJcUaBA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_022824_654663_DB2172CD 
X-CRM114-Status: GOOD (  27.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

On Tue, Aug 27, 2019 at 2:09 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Tue, Aug 27, 2019 at 01:53:23PM +0530, Anup Patel wrote:
> > On Tue, Aug 27, 2019 at 1:28 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > >
> > > On Mon, Aug 26, 2019 at 04:32:56PM -0700, Atish Patra wrote:
> > > > The SBI v0.2 introduces a base extension which is backward compatible
> > > > with v0.1. Implement all helper functions and minimum required SBI
> > > > calls from v0.2 for now. All other base extension function will be
> > > > added later as per need.
> > > >
> > > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > > ---
> > > >  arch/riscv/include/asm/sbi.h | 68 +++++++++++++++++++++++++++++-------
> > > >  arch/riscv/kernel/Makefile   |  1 +
> > > >  arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
> > > >  arch/riscv/kernel/setup.c    |  2 ++
> > > >  4 files changed, 108 insertions(+), 13 deletions(-)
> > > >  create mode 100644 arch/riscv/kernel/sbi.c
> > > >
> > > > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > > > index 7f5ecaaaa0d7..4a4476956693 100644
> > > > --- a/arch/riscv/include/asm/sbi.h
> > > > +++ b/arch/riscv/include/asm/sbi.h
> > > > @@ -8,7 +8,6 @@
> > > >
> > > >  #include <linux/types.h>
> > > >
> > > > -
> > > >  #define SBI_EXT_LEGACY_SET_TIMER 0x0
> > > >  #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> > > >  #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > > > @@ -19,28 +18,61 @@
> > > >  #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> > > >  #define SBI_EXT_LEGACY_SHUTDOWN 0x8
> > > >
> > > > -#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
> > > > +#define SBI_EXT_BASE 0x10
> > > > +
> > > > +enum sbi_ext_base_fid {
> > > > +     SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> > > > +     SBI_EXT_BASE_GET_IMP_ID,
> > > > +     SBI_EXT_BASE_GET_IMP_VERSION,
> > > > +     SBI_EXT_BASE_PROBE_EXT,
> > > > +     SBI_EXT_BASE_GET_MVENDORID,
> > > > +     SBI_EXT_BASE_GET_MARCHID,
> > > > +     SBI_EXT_BASE_GET_MIMPID,
> > > > +};
> > > > +
> > > > +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({ \
> > > >       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> > > >       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> > > >       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> > > >       register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);   \
> > > > -     register uintptr_t a7 asm ("a7") = (uintptr_t)(which);  \
> > > > +     register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);    \
> > > > +     register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);    \
> > > >       asm volatile ("ecall"                                   \
> > > > -                   : "+r" (a0)                               \
> > > > -                   : "r" (a1), "r" (a2), "r" (a3), "r" (a7)  \
> > > > +                   : "+r" (a0), "+r" (a1)                    \
> > > > +                   : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \
> > >
> > > Maybe I'm missing something, but how is this supposed to work on systems
> > > with SBI v0.1? Wouldn't this cause a mismatch in the registers?
> >
> > The SBI v0.2 has two major changes:
> > 1. New improved calling convention which is backward compatible
> > with SBI v0.1 so older kernels with SBI v0.1 will continue to work as-is.
> > 2. Base set of mandatory SBI v0.2 calls which can be used to detect
> > SBI version, check supported SBI calls and extentions.
> >
> > Old calling convention in SBI v0.1 was:
> > Parameters:
> > a0 -> arg0
> > a1 -> arg1
> > a2 -> arg2
> > a3 -> arg3
> > a7 -> function_id
> > Return:
> > a0 -> return value or error code
> >
> > In SBI v0.2, we have extension and function. Each SBI extension
> > is a set of function. The new calling convention in SBI v0.2 is:
> > Parameters:
> > a0 -> arg0
> > a1 -> arg1
> > a2 -> arg2
> > a3 -> arg3
> > a6 -> function_id
> > a7 -> extension_id
> > Return:
> > a0 -> error code
> > a1 -> return value (optional)
>
> So with this patch SBI_CALL_LEGACY() uses SBI v0.2 convention, right?
> Doesn't it mean that you cannot run a new kernel on a system with SBI v0.1?

This is certainly possible. It's just that this patch is using SBI v0.2
convention for older firmware as well.

Ideally, we should check sbi_version for each legacy SBI calls and
use different calling convention based sbi_version. The sbi_version
detection will work fine on both old and new firmwares because
on old firmware SBI version call will fail which means it is SBI v0.1
interface.

I think all legacy calls should be moved to kernel/sbi.c.

I have other comments too.

Let me post detailed review comments.

Regards,
Anup

>
> > All legacy SBI v0.1 functions can be thought of as separate
> > extensions. That's how SBI v0.2 will be backward compatible.
> >
> > Regards,
> > Anup
> >
> > >
> > > >                     : "memory");                              \
> > > >       a0;                                                     \
> > > >  })
> > > >
> > > >  /* Lazy implementations until SBI is finalized */
> > > > -#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
> > > > -#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
> > > > -#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > > > -             SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > > > -#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > > > -             SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > > > -#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > > > -             SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > > > +#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0, 0, 0)
> > > > +#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0, arg0, 0, 0, 0)
> > > > +#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
> > > > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
> > > > +#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
> > > > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
> > > > +#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
> > > > +             SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
> > > > +
> > > > +extern unsigned long sbi_firmware_version;
> > > > +struct sbiret {
> > > > +     long error;
> > > > +     long value;
> > > > +};
> > > > +
> > > > +void riscv_sbi_init(void);
> > > > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> > > > +                            int arg2, int arg3);
> > > > +
> > > > +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
> > > > +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0, 0, 0, 0)
> > > > +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> > > > +             riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> > > > +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> > > > +             riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> > > > +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> > > > +             riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
> > > > +
> > > >
> > > >  static inline void sbi_console_putchar(int ch)
> > > >  {
> > > > @@ -99,4 +131,14 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > > >                         start, size, asid);
> > > >  }
> > > >
> > > > +static inline unsigned long riscv_sbi_major_version(void)
> > > > +{
> > > > +     return (sbi_firmware_version >> 24) & 0x7f;
> > > > +}
> > > > +
> > > > +static inline unsigned long riscv_sbi_minor_version(void)
> > > > +{
> > > > +     return sbi_firmware_version & 0xffffff;
> > > > +}
> > > > +
> > > >  #endif
> > > > diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> > > > index 2420d37d96de..faf862d26924 100644
> > > > --- a/arch/riscv/kernel/Makefile
> > > > +++ b/arch/riscv/kernel/Makefile
> > > > @@ -17,6 +17,7 @@ obj-y       += irq.o
> > > >  obj-y        += process.o
> > > >  obj-y        += ptrace.o
> > > >  obj-y        += reset.o
> > > > +obj-y        += sbi.o
> > > >  obj-y        += setup.o
> > > >  obj-y        += signal.o
> > > >  obj-y        += syscall_table.o
> > > > diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> > > > new file mode 100644
> > > > index 000000000000..457b8cc0e9d9
> > > > --- /dev/null
> > > > +++ b/arch/riscv/kernel/sbi.c
> > > > @@ -0,0 +1,50 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > +/*
> > > > + * SBI initialilization and base extension implementation.
> > > > + *
> > > > + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> > > > + */
> > > > +
> > > > +#include <asm/sbi.h>
> > > > +#include <linux/sched.h>
> > > > +
> > > > +unsigned long sbi_firmware_version;
> > > > +
> > > > +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> > > > +                          int arg2, int arg3)
> > > > +{
> > > > +     struct sbiret ret;
> > > > +
> > > > +     register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> > > > +     register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> > > > +     register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> > > > +     register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> > > > +     register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> > > > +     register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> > > > +     asm volatile ("ecall"
> > > > +                   : "+r" (a0), "+r" (a1)
> > > > +                   : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> > > > +                   : "memory");
> > > > +     ret.error = a0;
> > > > +     ret.value = a1;
> > > > +
> > > > +     return ret;
> > > > +}
> > > > +
> > > > +static struct sbiret sbi_get_spec_version(void)
> > > > +{
> > > > +     return SBI_CALL_0(SBI_EXT_BASE, SBI_EXT_BASE_GET_SPEC_VERSION);
> > > > +}
> > > > +
> > > > +void riscv_sbi_init(void)
> > > > +{
> > > > +     struct sbiret ret;
> > > > +
> > > > +     /* legacy SBI version*/
> > > > +     sbi_firmware_version = 0x1;
> > > > +     ret = sbi_get_spec_version();
> > > > +     if (!ret.error)
> > > > +             sbi_firmware_version = ret.value;
> > > > +     pr_info("SBI version implemented in firmware [%lu:%lu]\n",
> > > > +             riscv_sbi_major_version(), riscv_sbi_minor_version());
> > > > +}
> > > > diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> > > > index a990a6cb184f..4c324fd398c8 100644
> > > > --- a/arch/riscv/kernel/setup.c
> > > > +++ b/arch/riscv/kernel/setup.c
> > > > @@ -21,6 +21,7 @@
> > > >  #include <asm/sections.h>
> > > >  #include <asm/pgtable.h>
> > > >  #include <asm/smp.h>
> > > > +#include <asm/sbi.h>
> > > >  #include <asm/tlbflush.h>
> > > >  #include <asm/thread_info.h>
> > > >
> > > > @@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
> > > >       swiotlb_init(1);
> > > >  #endif
> > > >
> > > > +     riscv_sbi_init();
> > > >  #ifdef CONFIG_SMP
> > > >       setup_smp();
> > > >  #endif
> > > > --
> > > > 2.21.0
> > > >
> > > >
> > > > _______________________________________________
> > > > linux-riscv mailing list
> > > > linux-riscv@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > >
> > > --
> > > Sincerely yours,
> > > Mike.
> > >
>
> --
> Sincerely yours,
> Mike.
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
