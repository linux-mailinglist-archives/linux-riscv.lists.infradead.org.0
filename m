Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345E9E284
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 10:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G25zJxlJFG3houuO4V80KUo89sdAYAxx5j35i3hOqwg=; b=MWanfxK4sYstZd
	TEcu77bpvJkESfKUbNoYfg4s388fvIjyTS3OLW7KgUhbXhTuNrJ2Xm9vkC3PlXs0P3Ql9D/EcaVBF
	xd/eyax8ueGeQyCtg3CNmg2gz+M9jOJ1I2cN8zu/cz4A/4yq3G7rgCDm1OO51ZIoRfIuCCT2I7CwA
	kXhq3pm5XMq70nbEYu2k4AH8WIoZ83S0cn3lXowGz0M4JeOq+vD3A42KtGaAMQ0ts+OWUcT1wZy4C
	lfrxA63dXs7b9eZ8xfPfmVx2MpHv6VQihAuiCsuMxsGAdVtwdoOolxHKRwtTdFkdewxNM2IfRrPfJ
	57Vx/g5fuaFp1Re7yruA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Wpw-0002p6-O5; Tue, 27 Aug 2019 08:28:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Wps-0002oD-QB
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 08:28:18 +0000
Received: by mail-wm1-x342.google.com with SMTP id o4so2111852wmh.2
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 01:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hZrYD1R7WJYiR8GAdiCixYS23KUbA9+GFETwSrbJeL8=;
 b=t5KGUhPZLkVvcFpZDMvEFcvQma5D863plyvPgCxiVtdcxDRmBd4Nz1OrXzpNGG0R8/
 MFZXwqbQnz796LbM5a8DtEE1aDcN7euRieWuXqbO1eLhOg4cQk0zYSbuTBvNiCAMFlf1
 THeCSh+uXmtlmN4f5lEzvCe8BG/xMyfRlwSDgWSMag5936sChE8OEevKyKTxzDc3iKBm
 z7vxw9QNrjzccnG510pJ7XJDJlOG0dWlQPPGha9O5Q2YojD8N66HXiu02jW0id3vD1Pn
 +H6zlh48PLD47W2l2KHE21/MyN36i9gbkGMLQuh0fI03QTmYNyLma87YnRal8tLBI9JS
 4zbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hZrYD1R7WJYiR8GAdiCixYS23KUbA9+GFETwSrbJeL8=;
 b=AXSjmqNr9wVELXCwD8M2cjPz8tlFjHNCLZAhouFLrI0faD7lfNGBfSdmh+Ev3cNaB6
 q+0ZZxoJalQ8+azeQ67d87ZgcFA4wfSS7ci1I5tjHBpmNLlVeAevKMf4r8wpo6cK/+zo
 DoERuGFPbj598KHhBvTPzK0FZzqywQ8XMgWyLyds7BXRF/VWwoV+ppop3Cu3oYD1I6EU
 CjhaShfbih01NPIMu9RMhCWpcDzhQPEJllN0pDLsT2UjB3z9RlCs97yBz+4sZfFec7nU
 2T3wt4khYPuziito9MAfn7dvt2deuF7n43iTA67PJkjsfx8fKYzknFLj9s5VxbMskKPC
 C5FA==
X-Gm-Message-State: APjAAAW5wCjrNfpf8h/XGMj1A1yxtI+xxKPs1sulYlGMx74wMl3QHQkv
 7Cj83AEUQNg6ahNtK3duWlCZGShb3WnQqYYSCzyUbw==
X-Google-Smtp-Source: APXvYqxY0J8Ax38Avo2shgmLFhgtwVw+uCaxjl/QlygUY3apfuLflYNrzTOlavaJgzCjVsZ5B5W/9oYpQfx1G99l6Lk=
X-Received: by 2002:a1c:3d89:: with SMTP id k131mr24819207wma.24.1566894494900; 
 Tue, 27 Aug 2019 01:28:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-2-atish.patra@wdc.com>
 <20190827075136.GC682@rapoport-lnx>
In-Reply-To: <20190827075136.GC682@rapoport-lnx>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 27 Aug 2019 13:58:03 +0530
Message-ID: <CAAhSdy0zOtHftesYW9uuM0gjsOcvyhfuBETbtKaR2Kc1-_sCAQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_012816_853011_CC7D04A5 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Tue, Aug 27, 2019 at 1:21 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Mon, Aug 26, 2019 at 04:32:55PM -0700, Atish Patra wrote:
> > As per the new SBI specification, current SBI implementation is
> > defined as legacy and will be removed/replaced in future.
> >
> > Rename existing implementation to reflect that. This patch is just
> > a preparatory patch for SBI v0.2 and doesn't introduce any functional
> > changes.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/include/asm/sbi.h | 61 +++++++++++++++++++-----------------
> >  1 file changed, 33 insertions(+), 28 deletions(-)
> >
> > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > index 21134b3ef404..7f5ecaaaa0d7 100644
> > --- a/arch/riscv/include/asm/sbi.h
> > +++ b/arch/riscv/include/asm/sbi.h
> > @@ -8,17 +8,18 @@
> >
> >  #include <linux/types.h>
> >
> > -#define SBI_SET_TIMER 0
> > -#define SBI_CONSOLE_PUTCHAR 1
> > -#define SBI_CONSOLE_GETCHAR 2
> > -#define SBI_CLEAR_IPI 3
> > -#define SBI_SEND_IPI 4
> > -#define SBI_REMOTE_FENCE_I 5
> > -#define SBI_REMOTE_SFENCE_VMA 6
> > -#define SBI_REMOTE_SFENCE_VMA_ASID 7
> > -#define SBI_SHUTDOWN 8
> > -
> > -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({           \
> > +
> > +#define SBI_EXT_LEGACY_SET_TIMER 0x0
> > +#define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> > +#define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > +#define SBI_EXT_LEGACY_CLEAR_IPI 0x3
> > +#define SBI_EXT_LEGACY_SEND_IPI 0x4
> > +#define SBI_EXT_LEGACY_REMOTE_FENCE_I 0x5
> > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA 0x6
> > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> > +#define SBI_EXT_LEGACY_SHUTDOWN 0x8
>
> I can't say I'm closely following RISC-V development, but what will happen
> when SBI v0.3 will come out and will render v0.2 legacy?
> Won't we need another similar renaming then?

Going forward with SBI v0.3 and higher, we won't see any calling
convention changes.

The SBI spec will be maintained and improved by RISC-V UNIX
platform spec working group.

My best guess is that, all future SBI releases (v0.3 or higher) will
include more optional SBI extensions (hart hotplug, power management, etc).

Regards,
Anup

>
> > +#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
> >       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> >       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> >       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> > @@ -32,58 +33,61 @@
> >  })
> >
> >  /* Lazy implementations until SBI is finalized */
> > -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
> > -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
> > -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
> > -#define SBI_CALL_3(which, arg0, arg1, arg2) \
> > -             SBI_CALL(which, arg0, arg1, arg2, 0)
> > -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
> > -             SBI_CALL(which, arg0, arg1, arg2, arg3)
> > +#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
> > +#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > +             SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > +#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > +             SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > +#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > +             SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> >
> >  static inline void sbi_console_putchar(int ch)
> >  {
> > -     SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
> > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_CONSOLE_PUTCHAR, ch);
> >  }
> >
> >  static inline int sbi_console_getchar(void)
> >  {
> > -     return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
> > +     return SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CONSOLE_GETCHAR);
> >  }
> >
> >  static inline void sbi_set_timer(uint64_t stime_value)
> >  {
> >  #if __riscv_xlen == 32
> > -     SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
> > +     SBI_CALL_LEGACY_2(SBI_EXT_LEGACY_SET_TIMER, stime_value,
> > +                       stime_value >> 32);
> >  #else
> > -     SBI_CALL_1(SBI_SET_TIMER, stime_value);
> > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SET_TIMER, stime_value);
> >  #endif
> >  }
> >
> >  static inline void sbi_shutdown(void)
> >  {
> > -     SBI_CALL_0(SBI_SHUTDOWN);
> > +     SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_SHUTDOWN);
> >  }
> >
> >  static inline void sbi_clear_ipi(void)
> >  {
> > -     SBI_CALL_0(SBI_CLEAR_IPI);
> > +     SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CLEAR_IPI);
> >  }
> >
> >  static inline void sbi_send_ipi(const unsigned long *hart_mask)
> >  {
> > -     SBI_CALL_1(SBI_SEND_IPI, hart_mask);
> > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SEND_IPI, hart_mask);
> >  }
> >
> >  static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
> >  {
> > -     SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
> > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_REMOTE_FENCE_I, hart_mask);
> >  }
> >
> >  static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> >                                        unsigned long start,
> >                                        unsigned long size)
> >  {
> > -     SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
> > +     SBI_CALL_LEGACY_3(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA, hart_mask,
> > +                       start, size);
> >  }
> >
> >  static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > @@ -91,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> >                                             unsigned long size,
> >                                             unsigned long asid)
> >  {
> > -     SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
> > +     SBI_CALL_LEGACY_4(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID, hart_mask,
> > +                       start, size, asid);
> >  }
> >
> >  #endif
> > --
> > 2.21.0
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> >
>
> --
> Sincerely yours,
> Mike.
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
