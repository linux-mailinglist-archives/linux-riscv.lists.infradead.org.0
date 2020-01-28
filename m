Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435C614C0F8
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 20:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mH5y6YiIyxSkei3AW5LWOH5PaZMdK9wtI99Lnamilso=; b=sxoQYP9kCe3SuIHvihlgxyLjS
	hSE9eJb8jVXMMCaDFwwhWrS5QY6Fz41BBxTOtnhIC53Hg86Ywvln9hAK1Ybn0ZBwgiWMUAG/E/z22
	MR/uvNhsMMgfsXbXDXQvu7CBSVJGkA0riU7o83rSkWZRFK+u7L4lJ7FLglNkcxttPZU8fkZ0WiH6g
	K+QOD1dGrCqaFryiuf0eUtgIZyXasyzWQbWBNyyt+m0+FTej+kRLS7eIK711ZVw9OMfY96jWiJnwh
	w6L8OPQUn4+55ki/bDY/qANc7ecEprBe5i4vPwN+20KGES7xOEaZYRqWX8W1VqFMHVcpB0fWHOi+x
	ciuJ/823w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWXZ-0008VY-BI; Tue, 28 Jan 2020 19:28:49 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWXW-0008V3-Hi
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 19:28:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id q10so17421537wrm.11
 for <linux-riscv@lists.infradead.org>; Tue, 28 Jan 2020 11:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mH5y6YiIyxSkei3AW5LWOH5PaZMdK9wtI99Lnamilso=;
 b=YboDIDpTYXjirb8Va1F68jVcJv6OSokeWZ+CO2/E3ACUlT+N2hkMdTe4wH8u3PlYdU
 ZveBW0hY05cboYjStAr9Y874ew34lBTln+mrysJtmvFpFAQjt5lojuGNNrjfYVoFSzLh
 gtNLn24rNz5DY+fK3GU6c54G/ZRATD1eyme1Mk/PMz5vnBl1ZzfoiSKXmAmJg5vT6qzk
 68c9b8KAXq1M3/9CAEqmUuI9sI8KeGRP/w+nQ8e8SuAng7xghqlFyQOHYoAWcyCoEaig
 zFUD3tEAs9HzNYnN27bew/Ddn78RT3N9oxNFRzkCAcnZAhJ8d3bYWXyMlcFgG9G3xa8J
 5GVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mH5y6YiIyxSkei3AW5LWOH5PaZMdK9wtI99Lnamilso=;
 b=oL+O4X3Cd0QAXZMyxB3eSjpuhZ82Vf9ZzCOvjFQ33bUYCwWeV4M+CHB0ppiUWEOgBL
 Z4SRtlV+CoGUdvcMgt0tdMLhCEaA4/fcZAlKVB12Dj7fSoAj0XUoX5dt9Qz2+0/Ox8ZU
 hIUdU1OdGT5xmbrW3sMplS7TVI4t4aUlZssiuicgxh5H9f0MFik2MSEayA+LbhGQb9WV
 M/Ufx+VsqCk70JibCNQ4WBQ9pamI43jQBcVT00sTJ7Lu7ER0x65+wsnd2dFj/5Idm7rc
 lHXk+JZ74GOXBikdblL7j9iWbCCjSnMS5nJqpxTjAY/tPEbgixd3aDIvTu8wwtPlVyMP
 5zRg==
X-Gm-Message-State: APjAAAUJyvziqTVR8iIDrXOWUbPna+dOUXGc0JkrBt6Eyu9pbHujFLDy
 EMw0+58QGAVAyrXzLVpzG4QDMh4CPuAgsF2yLdzX
X-Google-Smtp-Source: APXvYqwdE3ea5URqzv7jLRqdTvSN3ycHh5DckOm0CA07+G0BD6Gu7n9QZy6qBSoKfS2LslIVbTFFak2PQaLfxerkZuk=
X-Received: by 2002:a5d:534d:: with SMTP id t13mr31828062wrv.77.1580239724973; 
 Tue, 28 Jan 2020 11:28:44 -0800 (PST)
MIME-Version: 1.0
References: <20200128022737.15371-1-atish.patra@wdc.com>
 <20200128022737.15371-8-atish.patra@wdc.com>
 <CAAhSdy3oktrDNZ01Um5wE8cy2PC5SZdeNDMWjRTmm7k1aHkk_A@mail.gmail.com>
In-Reply-To: <CAAhSdy3oktrDNZ01Um5wE8cy2PC5SZdeNDMWjRTmm7k1aHkk_A@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Tue, 28 Jan 2020 11:28:34 -0800
Message-ID: <CAOnJCUKy+Nya-grseL+6Etkmzy=PGfRHJR53+vAhe7Ne5Ur1ig@mail.gmail.com>
Subject: Re: [PATCH v7 07/10] RISC-V: Move relocate and few other functions
 out of __init
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_112846_593743_0CFD9945 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 nickhu@andestech.com, Vincent Chen <vincent.chen@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Chester Lin <clin@suse.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>, Abner Chang <abner.chang@hpe.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 8:38 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Tue, Jan 28, 2020 at 7:58 AM Atish Patra <atish.patra@wdc.com> wrote:
> >
> > The secondary hart booting and relocation code are under .init section.
> > As a result, it will be freed once kernel booting is done. However,
> > ordered booting protocol and CPU hotplug always requires these sections
> > to be present to bringup harts after initial kernel boot.
> >
> > Move the required sections to a different section and make sure that
> > they are in memory within first 2MB offset as trampoline page directory
> > only maps first 2MB.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/kernel/head.S        | 73 +++++++++++++++++++--------------
> >  arch/riscv/kernel/vmlinux.lds.S |  9 +++-
> >  2 files changed, 50 insertions(+), 32 deletions(-)
> >
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index a4242be66966..9d7f084a50cc 100644
> > --- a/arch/riscv/kernel/head.S
> > +++ b/arch/riscv/kernel/head.S
> > @@ -14,7 +14,7 @@
> >  #include <asm/hwcap.h>
> >  #include <asm/image.h>
> >
> > -__INIT
> > +__HEAD
> >  ENTRY(_start)
> >         /*
> >          * Image header expected by Linux boot-loaders. The image header data
> > @@ -44,9 +44,10 @@ ENTRY(_start)
> >         .balign 4
> >         .ascii RISCV_IMAGE_MAGIC2
> >         .word 0
> > +END(_start)
> >
> > -.global _start_kernel
> > -_start_kernel:
> > +       __INIT
> > +ENTRY(_start_kernel)
> >         /* Mask all interrupts */
> >         csrw CSR_IE, zero
> >         csrw CSR_IP, zero
> > @@ -125,6 +126,37 @@ clear_bss_done:
> >         call parse_dtb
> >         tail start_kernel
> >
> > +.Lsecondary_start:
> > +#ifdef CONFIG_SMP
> > +       /* Set trap vector to spin forever to help debug */
> > +       la a3, .Lsecondary_park
> > +       csrw CSR_TVEC, a3
> > +
> > +       slli a3, a0, LGREG
> > +       la a1, __cpu_up_stack_pointer
> > +       la a2, __cpu_up_task_pointer
> > +       add a1, a3, a1
> > +       add a2, a3, a2
> > +
> > +       /*
> > +        * This hart didn't win the lottery, so we wait for the winning hart to
> > +        * get far enough along the boot process that it should continue.
> > +        */
> > +.Lwait_for_cpu_up:
> > +       /* FIXME: We should WFI to save some energy here. */
> > +       REG_L sp, (a1)
> > +       REG_L tp, (a2)
> > +       beqz sp, .Lwait_for_cpu_up
> > +       beqz tp, .Lwait_for_cpu_up
> > +       fence
> > +
> > +       tail secondary_start_common
> > +#endif
> > +
> > +END(_start_kernel)
> > +
> > +.section ".noinit.text","ax",@progbits
> > +.align 2
>
> Try to use __HEAD here (if possible).
>


> >  #ifdef CONFIG_MMU
> >  relocate:
> >         /* Relocate return address */
> > @@ -177,41 +209,27 @@ relocate:
> >
> >         ret
> >  #endif /* CONFIG_MMU */
> > -
> > -.Lsecondary_start:
> >  #ifdef CONFIG_SMP
> >         /* Set trap vector to spin forever to help debug */
> >         la a3, .Lsecondary_park
> >         csrw CSR_TVEC, a3
> >
> >         slli a3, a0, LGREG
> > -       la a1, __cpu_up_stack_pointer
> > -       la a2, __cpu_up_task_pointer
> > -       add a1, a3, a1
> > -       add a2, a3, a2
> > -
> > -       /*
> > -        * This hart didn't win the lottery, so we wait for the winning hart to
> > -        * get far enough along the boot process that it should continue.
> > -        */
> > -.Lwait_for_cpu_up:
> > -       /* FIXME: We should WFI to save some energy here. */
> > -       REG_L sp, (a1)
> > -       REG_L tp, (a2)
> > -       beqz sp, .Lwait_for_cpu_up
> > -       beqz tp, .Lwait_for_cpu_up
> > -       fence
> > +       .global secondary_start_common
> > +secondary_start_common:
> >
> >  #ifdef CONFIG_MMU
> >         /* Enable virtual memory and relocate to virtual address */
> >         la a0, swapper_pg_dir
> >         call relocate
> >  #endif
> > -
> >         tail smp_callin
> > -#endif
> > +#endif /* CONFIG_SMP */
> >
> > -END(_start)
> > +.Lsecondary_park:
> > +       /* We lack SMP support or have too many harts, so park this hart */
> > +       wfi
> > +       j .Lsecondary_park
> >
> >  #ifdef CONFIG_RISCV_M_MODE
> >  ENTRY(reset_regs)
> > @@ -292,13 +310,6 @@ ENTRY(reset_regs)
> >  END(reset_regs)
> >  #endif /* CONFIG_RISCV_M_MODE */
> >
> > -.section ".text", "ax",@progbits
> > -.align 2
> > -.Lsecondary_park:
> > -       /* We lack SMP support or have too many harts, so park this hart */
> > -       wfi
> > -       j .Lsecondary_park
> > -
> >  __PAGE_ALIGNED_BSS
> >         /* Empty zero page */
> >         .balign PAGE_SIZE
> > diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> > index 12f42f96d46e..c8a88326df9e 100644
> > --- a/arch/riscv/kernel/vmlinux.lds.S
> > +++ b/arch/riscv/kernel/vmlinux.lds.S
> > @@ -10,6 +10,7 @@
> >  #include <asm/cache.h>
> >  #include <asm/thread_info.h>
> >
> > +#include <linux/sizes.h>
> >  OUTPUT_ARCH(riscv)
> >  ENTRY(_start)
> >
> > @@ -20,8 +21,14 @@ SECTIONS
> >         /* Beginning of code and text segment */
> >         . = LOAD_OFFSET;
> >         _start = .;
> > -       __init_begin = .;
> >         HEAD_TEXT_SECTION
> > +       .noinit.text :
> > +       {
> > +               *(.noinit.text)
> > +       }
>
> Can we try using HEAD_TEXT_SECTION for SMP booting
> related functions instead of new ".noinit.text" section ??
>

Yeah. That is much cleaner as well. I will update it in v2.

> > +       . = ALIGN(SZ_4K);
>
> Change this to PAGE aligned:
>     . = ALIGN(PAGE_SIZE)
>

Sure. Will do that.

> > +
> > +       __init_begin = .;
> >         INIT_TEXT_SECTION(PAGE_SIZE)
> >         INIT_DATA_SECTION(16)
> >         /* we have to discard exit text and such at runtime, not link time */
> > --
> > 2.24.0
> >
>
> Regards,
> Anup
>


-- 
Regards,
Atish

