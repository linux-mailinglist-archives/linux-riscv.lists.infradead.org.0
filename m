Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1041A61D2
	for <lists+linux-riscv@lfdr.de>; Mon, 13 Apr 2020 05:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z5DL3ydxWnZsOET7tLCtMfbSustqKvwa99EIBLStxlk=; b=KGQqsf8tLho/NGsS3NPT5QdWX
	Z76RtSkOkDIv4UDTAHxEQVQzmcas5E1ZHosIK/RObxe+239vFVZvI5oeNuWes/Bq7woQ0qTsALj4v
	mWOYCc/rwuyckg3SXkCXnd0cC8/vII5ew5/r1Nt3/NTq+BNdUJUuUxwggGaD+5vJphrDAqVNCEWnl
	+0e+Lk1VhWXU9VBJpG6QT66ELU+vyCcBGGOmYCUc/7TCPfeurwvm/N2lnACFsWJVBZsuPAYfYoaFy
	SHu6oth3jkTYp6ywb9T+c/MwvEBt30dmA7XkWwbp4h/jbFvQ9FtriLXg1LKR8xYcdpWJ/9bRHgh+r
	waDyQWarA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNq76-0006F2-Ea; Mon, 13 Apr 2020 03:50:24 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNq72-0006EZ-Np
 for linux-riscv@lists.infradead.org; Mon, 13 Apr 2020 03:50:22 +0000
Received: by mail-qt1-x841.google.com with SMTP id b10so6237341qtt.9
 for <linux-riscv@lists.infradead.org>; Sun, 12 Apr 2020 20:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z5DL3ydxWnZsOET7tLCtMfbSustqKvwa99EIBLStxlk=;
 b=f/pfGMwL+TEoQXM0/AwPT963yqpmcKSl+h11XcEbPjCsJjYziRMapMnLQzv86jnA0h
 iACn1xcFBPtLYY3zUuYSsyogV8ebPrKVo7uMN1yKYZ+jvUfuSXZESRoscAfnjkvMOEMD
 ss9wXmKnBKFrVHL5BdRJ/xmY12alNBxLyYDAbpJXJzpekqmrRgoC2wUxGXt943IQrNiY
 YyJLA9DuBfOZrrK/gyHOBO8illur6wLyCuPcphFpFGZIBiJqRQhrxYmLMHhV7rY/0CAY
 voTn27at2lkkS2vKYcNQPMOz2+MjIzM2oigfPIDaG77SkpCW7oSOwrfkiRp73TjrU+kr
 dijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z5DL3ydxWnZsOET7tLCtMfbSustqKvwa99EIBLStxlk=;
 b=L/0UV/KY1zFJuBE88BOQSO7J8RkZyFubRli4WcCwZnc3tqYMNGrYXusf3qto0eXhH5
 UGiZnhnvxiiGnrB6NWjUfKEaA9B6AytNBEBYD9nyBKjRSaIEhno3S353BDkH2/yTKBEE
 AY3Qbrrgz/DMtS0QVQaMxKj+PgUiW5BaHkaLupGnkmnYS4CtHAFlXpCE1L7MbEolZZTz
 A55+SK8fGEep29yLxYPEXTpoThB6IJHyqodWw14DSFZ240VnFtbRU7oI97XLaHf2DJqf
 OJCf98eq9aU6XEd+c67QdmX2GXO3uSlLaCwAE6Ah2jZhdwwarxLVoS46RM5FI23lZCQ/
 hkqg==
X-Gm-Message-State: AGi0PuY8G5q5oo7Amc+fCdlCMf4nF2o9Gc/QOst+o9KfhaB2LwRJQr31
 8fhmEQR5t8kvSf6H9w3UKEwBO+COdclzneAvV/b3jA==
X-Google-Smtp-Source: APiQypITBg/oAwx9+MMEkVd/sAOSxLtyWqEGvVBZgXFSRIdK3qW2gtXb5i9pGeDVFRrtSXXJ1uTiivfk/ECI3R9H8qg=
X-Received: by 2002:ac8:7199:: with SMTP id w25mr9675878qto.86.1586749817576; 
 Sun, 12 Apr 2020 20:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <1586232452-8998-1-git-send-email-vincent.chen@sifive.com>
 <CAOnJCUJ9apfBGtXsSGLECTo=BX51mCg+dZQ-t9ZoKTL9hdKuoQ@mail.gmail.com>
 <CABvJ_xiL8RDckQfwDVSkVTYdnjPxC+ixO6THHQPHM9=fZFyRxg@mail.gmail.com>
 <CAOnJCUJEkoMJd72O3zRrt9aOojW2ALooJzwwtFZkeTF4Tqd13Q@mail.gmail.com>
In-Reply-To: <CAOnJCUJEkoMJd72O3zRrt9aOojW2ALooJzwwtFZkeTF4Tqd13Q@mail.gmail.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 13 Apr 2020 11:50:06 +0800
Message-ID: <CABvJ_xid4Q0n=TaOYpEpNqWRiaLPVQcbR9rBSqNvm3zbi0pqTg@mail.gmail.com>
Subject: Re: [RFC] riscv: use vDSO common flow to reduce the latency of the
 time-related functions
To: Atish Patra <atishp@atishpatra.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_205020_941354_7F6687AF 
X-CRM114-Status: GOOD (  28.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Apr 12, 2020 at 10:48 AM Atish Patra <atishp@atishpatra.org> wrote:
>
> On Sat, Apr 11, 2020 at 7:21 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> >
> > On Sat, Apr 11, 2020 at 9:25 AM Atish Patra <atishp@atishpatra.org> wrote:
> > >
> > > On Mon, Apr 6, 2020 at 9:07 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> > > >
> > > > Even if RISC-V has supported the vDSO feature, the latency of the functions
> > > > for obtaining the system time is still expensive. It is because these
> > > > functions still trigger a corresponding system call in the process, which
> > > > slows down the response time. If we want to remove the system call to
> > > > reduce the latency, the kernel should have the ability to output the system
> > > > clock information to userspace. This patch introduces the vDSO common flow
> > > > to enable the kernel to achieve the above feature and uses "rdtime"
> > > > instruction to obtain the current time in the user space. Under this
> > > > condition, the latency cost by the ecall from U-mode to S-mode can be
> > > > eliminated. After applying this patch, the latency of gettimeofday()
> > > > measured on the HiFive unleashed board can be reduced by %61.
> > > >
> > > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > > > ---
> > > >  arch/riscv/Kconfig                         |  3 ++
> > > >  arch/riscv/include/asm/vdso.h              |  3 --
> > > >  arch/riscv/include/asm/vdso/gettimeofday.h | 73 ++++++++++++++++++++++++++++++
> > > >  arch/riscv/include/asm/vdso/vsyscall.h     | 27 +++++++++++
> > > >  arch/riscv/kernel/vdso.c                   |  4 +-
> > > >  arch/riscv/kernel/vdso/Makefile            | 12 +++--
> > > >  arch/riscv/kernel/vdso/clock_getres.S      | 18 --------
> > > >  arch/riscv/kernel/vdso/clock_gettime.S     | 18 --------
> > > >  arch/riscv/kernel/vdso/gettimeofday.S      | 18 --------
> > > >  arch/riscv/kernel/vdso/vdso.lds.S          |  2 +
> > > >  arch/riscv/kernel/vdso/vgettimeofday.c     | 25 ++++++++++
> > > >  11 files changed, 141 insertions(+), 62 deletions(-)
> > > >  create mode 100644 arch/riscv/include/asm/vdso/gettimeofday.h
> > > >  create mode 100644 arch/riscv/include/asm/vdso/vsyscall.h
> > > >  delete mode 100644 arch/riscv/kernel/vdso/clock_getres.S
> > > >  delete mode 100644 arch/riscv/kernel/vdso/clock_gettime.S
> > > >  delete mode 100644 arch/riscv/kernel/vdso/gettimeofday.S
> > > >  create mode 100644 arch/riscv/kernel/vdso/vgettimeofday.c
> > > >
> > > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > > index ded32979d33d..028b48c14c4e 100644
> > > > --- a/arch/riscv/Kconfig
> > > > +++ b/arch/riscv/Kconfig
> > > > @@ -68,6 +68,9 @@ config RISCV
> > > >         select HAVE_ARCH_KASAN if MMU && 64BIT
> > > >         select HAVE_REGS_AND_STACK_ACCESS_API
> > > >         select HAVE_RSEQ
> > > > +       select HAVE_GENERIC_VDSO
> > > > +       select GENERIC_TIME_VSYSCALL
> > > > +       select GENERIC_GETTIMEOFDAY
> > > >
> > > >  config ARCH_MMAP_RND_BITS_MIN
> > > >         default 18 if 64BIT
> > > > diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
> > > > index 7a7fce63c474..05689eab4083 100644
> > > > --- a/arch/riscv/include/asm/vdso.h
> > > > +++ b/arch/riscv/include/asm/vdso.h
> > > > @@ -10,9 +10,6 @@
> > > >
> > > >  #include <linux/types.h>
> > > >
> > > > -struct vdso_data {
> > > > -};
> > > > -
> > > >  /*
> > > >   * The VDSO symbols are mapped into Linux so we can just use regular symbol
> > > >   * addressing to get their offsets in userspace.  The symbols are mapped at an
> > > > diff --git a/arch/riscv/include/asm/vdso/gettimeofday.h b/arch/riscv/include/asm/vdso/gettimeofday.h
> > > > new file mode 100644
> > > > index 000000000000..087fc01fd288
> > > > --- /dev/null
> > > > +++ b/arch/riscv/include/asm/vdso/gettimeofday.h
> > > > @@ -0,0 +1,73 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > > +#ifndef __ASM_VDSO_GETTIMEOFDAY_H
> > > > +#define __ASM_VDSO_GETTIMEOFDAY_H
> > > > +
> > > > +#ifndef __ASSEMBLY__
> > > > +
> > > > +#include <asm/unistd.h>
> > > > +#include <uapi/linux/time.h>
> > > > +
> > > > +#define VDSO_HAS_CLOCK_GETRES  1
> > > > +
> > > > +static __always_inline
> > > > +int gettimeofday_fallback(struct __kernel_old_timeval *_tv,
> > > > +                         struct timezone *_tz)
> > > > +{
> > > > +       register struct __kernel_old_timeval *tv asm("a0") = _tv;
> > > > +       register struct timezone *tz asm("a1") = _tz;
> > > > +       register long ret asm("a0");
> > > > +       register long nr asm("a7") = __NR_gettimeofday;
> > > > +
> > > > +       asm volatile ("ecall\n"
> > > > +                     : "=r" (ret)
> > > > +                     : "r"(tv), "r"(tz), "r"(nr)
> > > > +                     : "memory");
> > > > +
> > > > +       return ret;
> > > > +}
> > > > +
> > > > +static __always_inline
> > > > +long clock_gettime_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
> > > > +{
> > > > +       register clockid_t clkid asm("a0") = _clkid;
> > > > +       register struct __kernel_timespec *ts asm("a1") = _ts;
> > > > +       register long ret asm("a0");
> > > > +       register long nr asm("a7") = __NR_clock_gettime;
> > > > +
> > > > +       asm volatile ("ecall\n"
> > > > +                     : "=r" (ret)
> > > > +                     : "r"(clkid), "r"(ts), "r"(nr)
> > > > +                     : "memory");
> > > > +
> > > > +       return ret;
> > > > +}
> > > > +
> > > > +static __always_inline
> > > > +int clock_getres_fallback(clockid_t _clkid, struct __kernel_timespec *_ts)
> > > > +{
> > > > +       register clockid_t clkid asm("a0") = _clkid;
> > > > +       register struct __kernel_timespec *ts asm("a1") = _ts;
> > > > +       register long ret asm("a0");
> > > > +       register long nr asm("a7") = __NR_clock_getres;
> > > > +
> > > > +       asm volatile ("ecall\n"
> > > > +                     : "=r" (ret)
> > > > +                     : "r"(clkid), "r"(ts), "r"(nr)
> > > > +                     : "memory");
> > > > +
> > > > +       return ret;
> > > > +}
> > > > +
> > > > +static __always_inline u64 __arch_get_hw_counter(s32 clock_mode)
> > > > +{
> > > > +       return csr_read(CSR_TIME);
> > > > +}
> > > > +
> > >
> > > Looking at other arch implementations, do we need to surround it with
> > > instruction fences ?
> > > (Assuming that future platforms will implements time CSR access in hardware)
> >
> > For the current case, I think the using scenario here is the same as
> > the riscv's get_cycles(), so I didn't add fence instruction around it.
> > If we need to access the time CSR implemented on the platform, I think
> > the fence instructions are needed.
> >
> Qemu provides emulated timer access via goldfish RTC now.
> I think we should add fence instruction now so that any future
> platform doesn't get tripped by this.
> or If you don't prefer that, at least we should leave a comment.
>
If it does not pose any risk to the current system, I do not prefer to
add fence instructions here.
I will follow your suggestion to add a comment here.
Thanks for your feedback.

