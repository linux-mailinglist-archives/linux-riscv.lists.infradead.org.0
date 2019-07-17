Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19A96B2A5
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jul 2019 02:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yu+64EgKZ0xCuIpinW3vmYSFTjrSSIqr1lP8Zzm5t4I=; b=m+zCU/YHLD+gTS
	CKsonkAJGk/1YAMNLoBdpnFP/eDqTWQQjnqBEUZsmG2xQGUBbuTpxJMyXD2pE88Skzm6xyWOwMLlZ
	YCGiG/TBFll2cnQ5IVCotzHykJgaap4xgEpBF7LJZ3jik6JuEyOvZR8uFM2k+kOeVFMndV6IkdwJa
	0thcBPbaHC0ypoQiEI1+C6MXrjl6dn9dnujFNq2iTUGrAVo5qd7VkcFy6GxmAdrpwjZpe3e70xFcY
	8MPBncsx3XtSO2Ch+ym7u/E32KP0XCakUgbBIyCZwhkLGr41kcyjPvepHb4m0xb5kt+V/vF8KVKOB
	sCGTTJfjhxxYweOLLPeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnXSa-0006bj-8J; Wed, 17 Jul 2019 00:06:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnXSU-0006bE-MY
 for linux-riscv@lists.infradead.org; Wed, 17 Jul 2019 00:06:12 +0000
Received: by mail-lj1-x243.google.com with SMTP id h10so21755431ljg.0
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jul 2019 17:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UWTBDLfiOb7SnMw+N5GrAnIvY64tlXzQQdEdF/klawQ=;
 b=Y4ryglVJki1UmhEc9yquaMBLVlfvGa8LpjpLNuH/Mo0i/2hfTSvRE3LciZGI1uwSNs
 dXK0SyNQYwrhrZQqhnNSluMsrCXDUr1aXp3fQM/devAD77pINnGDqh//AnQDCY9gdQU8
 aA+TmVOdclNE7j2lGm79SGVvaxQCAojvI2UNOQTlwlqkXPzoXXaLuxVrFBNJ12vh/IY2
 hZpNQ6ndyv1NvXDtf/x/ERy3Cu1X45OZ1fc7G9UUYZkRPFYQuDgWIsWd4p0SsTY5vJrh
 PvcL4jAlgJNtkfROgv9Ag5w0G7J5QI+J8n9wu5kSJBeLOlVR2BVR4L1KmUmieMMIqh1j
 rxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UWTBDLfiOb7SnMw+N5GrAnIvY64tlXzQQdEdF/klawQ=;
 b=izqvuTcl/Nbrb3Vy6DwkUlcVbopUruIGSR34B09CW5WMGY0FsF7eTasTHNCf/+aeRo
 stG0NHIcDnI1Q3xSSm9yipoPNifNO7MeWRmGt/OAYiSlkgRo6b2UeDlLV562fQk7GciN
 6kuBFrJJGLQRZK7sSfx3Lx/ErWYYVPv4zbbMMaedpNsSprnsc40t/F6/aHjLG3VLE6RW
 /X0kYk5kwblOxrEKKud4Q7XtGTyuM6WwJLuuZkBv/OkpJdHyxECdI3xyn3ojeSEwo71q
 OQV0B8DKwVqDdMDLX8Bt55hDavOxWME2Hruf7xvX0OXi1Snl6UYAKhYFUXy0tbWp2Ccv
 jusw==
X-Gm-Message-State: APjAAAVhNMkoYBt1r1jUvoT+JopEIc4/Y+N93OCzCg3VD36uAMEGKOMr
 3/ulnpWcniPFQ+8C2CeSSaIPax9rUHdUzYBW0Lc=
X-Google-Smtp-Source: APXvYqxkBXVHeEGtHHCDP05ZT176lupNUH/6sG/syt+yImLexbxuHAheccjAZUPQY7Av1RxxLt7aWN/RqLZEeIJpXHQ=
X-Received: by 2002:a2e:9158:: with SMTP id q24mr19318497ljg.119.1563321968194; 
 Tue, 16 Jul 2019 17:06:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190703005202.7578-1-alistair.francis@wdc.com>
 <mvmk1czh9y6.fsf@suse.de>
 <CAKmqyKPn9GBg=n1j-ZpEdCN4Qfi5qfNtEVgpgF8rYRpof4eNDA@mail.gmail.com>
 <mvmpnmqfepx.fsf@suse.de>
 <CAK8P3a2NmdoHzFGKrzw4CBYDOBtZHDQCGsWE_L0UbG+w0bGWkA@mail.gmail.com>
In-Reply-To: <CAK8P3a2NmdoHzFGKrzw4CBYDOBtZHDQCGsWE_L0UbG+w0bGWkA@mail.gmail.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Tue, 16 Jul 2019 17:02:50 -0700
Message-ID: <CAKmqyKPvqBZeL-R3no59XXieGo8qspoyEDYCWD3WR=ni-PRz3w@mail.gmail.com>
Subject: Re: [PATCH RESEND 0/2] RISC-V: Handle the siginfo_t offset problem
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_170610_766506_EC6C8616 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alistair23[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alistair23[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andreas Schwab <schwab@suse.de>, linux-riscv@lists.infradead.org,
 Alistair Francis <alistair.francis@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jul 4, 2019 at 2:19 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Jul 4, 2019 at 9:20 AM Andreas Schwab <schwab@suse.de> wrote:
> >
> > On Jul 03 2019, Alistair Francis <alistair23@gmail.com> wrote:
> >
> > > On Wed, Jul 3, 2019 at 12:08 AM Andreas Schwab <schwab@suse.de> wrote:
> > >>
> > >> On Jul 02 2019, Alistair Francis <alistair.francis@wdc.com> wrote:
> > >>
> > >> > In the RISC-V 32-bit glibc port [1] the siginfo_t struct in the kernel
> > >> > doesn't line up with the struct in glibc. In glibc world the _sifields
> > >> > union is 8 byte alligned (although I can't figure out why)
> > >>
> > >> Try ptype/o in gdb.
> > >
> > > That's a useful tip, I'll be sure to use that next time.
> >
> > It was a serious note.  If the structs don't line up then there is a
> > mismatch in types that cannot be solved by adding spurious padding.  You
> > need to fix the types instead.
>
> Would it be an option to align all the basic typedefs (off_t, time_t,
> clock_t, ...)
> between glibc and kernel then, and just use the existing
> sysdeps/unix/sysv/linux/generic/bits/typesizes.h after all to avoid
> surprises like this?
>
> As of v2 the functional difference is
>
> -#define __INO_T_TYPE        __ULONGWORD_TYPE
> +#define __INO_T_TYPE    __UQUAD_TYPE
>  #define __INO64_T_TYPE        __UQUAD_TYPE
>  #define __MODE_T_TYPE        __U32_TYPE
> -#define __NLINK_T_TYPE        __U32_TYPE
> -#define __OFF_T_TYPE        __SLONGWORD_TYPE
> +#define __NLINK_T_TYPE    __UQUAD_TYPE
> +#define __OFF_T_TYPE    __SQUAD_TYPE
>  #define __OFF64_T_TYPE        __SQUAD_TYPE
> -#define __RLIM_T_TYPE        __ULONGWORD_TYPE
> +#define __RLIM_T_TYPE      __UQUAD_TYPE
>  #define __RLIM64_T_TYPE        __UQUAD_TYPE
> -#define    __BLKCNT_T_TYPE        __SLONGWORD_TYPE
> +#define __BLKCNT_T_TYPE    __SQUAD_TYPE
>  #define    __BLKCNT64_T_TYPE    __SQUAD_TYPE
> -#define    __FSBLKCNT_T_TYPE    __ULONGWORD_TYPE
> +#define __FSBLKCNT_T_TYPE  __UQUAD_TYPE
>  #define    __FSBLKCNT64_T_TYPE    __UQUAD_TYPE
> -#define    __FSFILCNT_T_TYPE    __ULONGWORD_TYPE
> +#define __FSFILCNT_T_TYPE  __UQUAD_TYPE
>  #define    __FSFILCNT64_T_TYPE    __UQUAD_TYPE
> -#define    __FSWORD_T_TYPE        __SWORD_TYPE
> +#define __FSWORD_T_TYPE   __SQUAD_TYPE
> -#define __CLOCK_T_TYPE        __SLONGWORD_TYPE
> -#define __TIME_T_TYPE        __SLONGWORD_TYPE
> +#define __CLOCK_T_TYPE     __SQUAD_TYPE
> +#define __TIME_T_TYPE      __SQUAD_TYPE
>  #define __USECONDS_T_TYPE    __U32_TYPE
> -#define __SUSECONDS_T_TYPE    __SLONGWORD_TYPE
> +#define __SUSECONDS_T_TYPE __SQUAD_TYPE
> -#define __BLKSIZE_T_TYPE    __S32_TYPE
> +#define __BLKSIZE_T_TYPE   __SQUAD_TYPE
>  #define __FSID_T_TYPE        struct { int __val[2]; }
>  #define __SSIZE_T_TYPE        __SWORD_TYPE
> -#define __SYSCALL_SLONG_TYPE    __SLONGWORD_TYPE
> -#define __SYSCALL_ULONG_TYPE    __ULONGWORD_TYPE
> -#define __CPU_MASK_TYPE     __ULONGWORD_TYPE
> +#define __SYSCALL_SLONG_TYPE __SQUAD_TYPE
> +#define __SYSCALL_ULONG_TYPE __UQUAD_TYPE
> +#define __CPU_MASK_TYPE    __UQUAD_TYPE
>
> -#ifdef __LP64__
>  # define __RLIM_T_MATCHES_RLIM64_T    1
> -#else
> -# define __RLIM_T_MATCHES_RLIM64_T    0
> -#endif
>
> +#define __ASSUME_TIME64_SYSCALLS 1
> +#define __ASSUME_RLIM64_SYSCALLS 1
>
> Since the sysdeps/unix/sysv/linux/generic/bits/typesizes.h definitions
> generally match the kernel, anything diverging from that has the potential
> of breaking it, so the difference should probably be kept to the absolute
> minimum.
>
> I think these ones are wrong and will cause bugs similar to the clock_t
> issue if they are used with kernel interfaces:
> __NLINK_T_TYPE, __FSWORD_T_TYPE, __CLOCK_T_TYPE,
> __BLKSIZE_T_TYPE, __SYSCALL_ULONG_TYPE,
> __SYSCALL_SLONG_TYPE, __CPU_MASK_TYPE
>
> These are fine as long as they are only used in user space and to
> wrap kernel syscalls, but I think most of them can end up being
> passed to the kernel, so it seems safer not to have rv32 diverge
> without a good reason.
>
> The remaining ones (__INO_T_TYPE, __OFF_T_TYPE, __BLKCNT_T_TYPE,
> __FSBLKCNT_T_TYPE, __FSFILCNT_T_TYPE, __TIME_T_TYPE) all
> follow the pattern where the kernel has an old 32-bit type and a new
> 64-bit type, but the kernel tries not to expose the 32-bit interfaces
> to user space on new architectures and only provide the 64-bit
> replacements, but there are a couple of interfaces that never got
> replaced, typically in driver and file system ioctls.
>
> Since glibc already has code to deal with the 64-bit types and that
> is well tested, it would seem safer to me to just #undef the old
> types completely rather than defining them to 64-bit, which would
> make them incompatible with the kernel's types.

#undef-ing these results in build failures unfortunately, it seems
like they are required.

I'm sending a v3 RFC to the glibc list right now. We can continue the
discussion there.

Alistair

>
>        Arnd

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
