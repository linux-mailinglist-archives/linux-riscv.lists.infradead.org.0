Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 278E715B056
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 19:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4iWpjS84iXuZKMy6ZUtTecttvvwiEglLKnXkpaETIX4=; b=E2lczDoOKag5TeoncX519R0j4
	Jv3/lJjzxYbY7NomLkeCkYeVgv9NID9WLcArdRC96iQ28KXy+Jq/EaowgqLC7yx++usLbqUdX7ReR
	6hDUi8qYFhi3LWRLi7WX8ZW7r/w82K9+BTGp1Okg3BFOdtIXHUYYDasK0O1LYCzfXMVKhHxg3Rq19
	WTM2HNly7lWCE9iNcOh4j7IdL2aEALaCOETmLHQSYWONoQnDUvHo6rJxvyakVUoGctN+hE0LD48ld
	DgskAkfdu1oy8iAWV4xe6vumtRGpI1aWj+4QCav/R/JAEi4lDJP/dC8JF7j5zubLOffv8w2wzKiK6
	dtLyml2TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xE7-0004gZ-2P; Wed, 12 Feb 2020 18:59:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xE3-0004fS-BE
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 18:59:09 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so3713949wrh.5
 for <linux-riscv@lists.infradead.org>; Wed, 12 Feb 2020 10:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4iWpjS84iXuZKMy6ZUtTecttvvwiEglLKnXkpaETIX4=;
 b=YUiQw1hmb0MdD9htXyE7jU5pynWAVmivpNXH4tuPdrqeisAZUhAKzcEgZiBMfUOBiE
 91EKvU5ZYR5yY98VUkYUmylI5porAO83ZhoNvh3ZD7X+z0NLzm+QIcizro8jdkpY+qj8
 UO7a3Q9RRKUpoCNzKzZOp5HxNZ3hTUmOgARcuDGMK6esrF+io8cRjMeDMHtvPkhymmpn
 4Cz4RtLXcpAIHwhsRBMsYrNcIbsb1G3sYADnadb/qMGnAiJPYQH4yiJ6+QFcOCRS5xDl
 woLTOWSyDvDZr9nwP4h0K+5ZiUTf6EIT7D1/0UBeiWWIEwz6funXEfZvJ/8h7nGQEIK8
 6PZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4iWpjS84iXuZKMy6ZUtTecttvvwiEglLKnXkpaETIX4=;
 b=jyqFSrYR5s39pbCnixuZf25jl0iteNmCib9yK4Kv5eiB6YeICXeKmbAF5Th1DWbUcu
 Oa/9my3IRxqLbtpjHx8+LNAO+IOCUu7TSXLHK/95HBK596/g790zS6Dj9oN85OQ8LShh
 c9xzHshnXRorcvJxkr/r0bI/oeddumwWtibLXJWjK8cqCeQiu/bqVRyW5adsX3EEFORN
 iY6fg/hHmyWTV6x/i6yV8wrtsVHmhTDoxTniJH07Mp921h31weKtMCtm/YSOz+4sKHax
 vfoaif5XErgDBxua6sa2IDWTo5YTsJscGSFDU2aUCmunMmH519sHe1nFWdugRXaeV1eD
 bqkQ==
X-Gm-Message-State: APjAAAUByzoHHxSvoPzmEPljczdHJecROmA685mEi3DFMDEHMN8Pvi+v
 0Db+MIUEuCYzieD7R8Bj/dnQdS0LL70yAm5C9vvu
X-Google-Smtp-Source: APXvYqw4PbZ5JrNpOUH7XCkVriDHuZ28rg8GWkMouNDbsdGI/2lP+oarZ2Yg1FNoUyCpQWDgQ3Reb/5bW+SxuLPIYts=
X-Received: by 2002:adf:f507:: with SMTP id q7mr16342704wro.384.1581533945683; 
 Wed, 12 Feb 2020 10:59:05 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-7-atish.patra@wdc.com>
 <CAAhSdy2YRnmdxYu7zSYOUxMvFDbEz1Cwg69FgnYz3Rd8wEwQfw@mail.gmail.com>
In-Reply-To: <CAAhSdy2YRnmdxYu7zSYOUxMvFDbEz1Cwg69FgnYz3Rd8wEwQfw@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Wed, 12 Feb 2020 10:58:54 -0800
Message-ID: <CAOnJCULR1AwC=4sf5WZJN77OHymdbfn75R-EGnJyBw_DeJacgg@mail.gmail.com>
Subject: Re: [PATCH v8 06/11] RISC-V: Move relocate and few other functions
 out of __init
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_105907_389413_6A577EEF 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Kees Cook <keescook@chromium.org>, Vincent Chen <vincent.chen@sifive.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Marc Zyngier <maz@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Allison Randal <allison@lohutok.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 8:18 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Wed, Feb 12, 2020 at 7:21 AM Atish Patra <atish.patra@wdc.com> wrote:
> >
> > The secondary hart booting and relocation code are under .init section.
> > As a result, it will be freed once kernel booting is done. However,
> > ordered booting protocol and CPU hotplug always requires these sections
>
> I think you meant "... require these functions" here.
>
> > to be present to bringup harts after initial kernel boot.
> >
> > Move the required sections to a different section and make sure that
>
> Same here, I think you meant "... the required functions to a
> different section ..."
>

My bad. Thanks for pointing out. Fixed.

> > they are in memory within first 2MB offset as trampoline page directory
> > only maps first 2MB.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > ---
> >  arch/riscv/kernel/head.S        | 153 +++++++++++++++++---------------
> >  arch/riscv/kernel/vmlinux.lds.S |   5 +-
> >  2 files changed, 86 insertions(+), 72 deletions(-)
> >
> > diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> > index a4242be66966..c1be597d22a1 100644
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
> > @@ -45,8 +45,85 @@ ENTRY(_start)
> >         .ascii RISCV_IMAGE_MAGIC2
> >         .word 0
> >
> > -.global _start_kernel
> > -_start_kernel:
> > +.align 2
> > +#ifdef CONFIG_MMU
> > +relocate:
> > +       /* Relocate return address */
> > +       li a1, PAGE_OFFSET
> > +       la a2, _start
> > +       sub a1, a1, a2
> > +       add ra, ra, a1
> > +
> > +       /* Point stvec to virtual address of intruction after satp write */
> > +       la a2, 1f
> > +       add a2, a2, a1
> > +       csrw CSR_TVEC, a2
> > +
> > +       /* Compute satp for kernel page tables, but don't load it yet */
> > +       srl a2, a0, PAGE_SHIFT
> > +       li a1, SATP_MODE
> > +       or a2, a2, a1
> > +
> > +       /*
> > +        * Load trampoline page directory, which will cause us to trap to
> > +        * stvec if VA != PA, or simply fall through if VA == PA.  We need a
> > +        * full fence here because setup_vm() just wrote these PTEs and we need
> > +        * to ensure the new translations are in use.
> > +        */
> > +       la a0, trampoline_pg_dir
> > +       srl a0, a0, PAGE_SHIFT
> > +       or a0, a0, a1
> > +       sfence.vma
> > +       csrw CSR_SATP, a0
> > +.align 2
> > +1:
> > +       /* Set trap vector to spin forever to help debug */
> > +       la a0, .Lsecondary_park
> > +       csrw CSR_TVEC, a0
> > +
> > +       /* Reload the global pointer */
> > +.option push
> > +.option norelax
> > +       la gp, __global_pointer$
> > +.option pop
> > +
> > +       /*
> > +        * Switch to kernel page tables.  A full fence is necessary in order to
> > +        * avoid using the trampoline translations, which are only correct for
> > +        * the first superpage.  Fetching the fence is guarnteed to work
> > +        * because that first superpage is translated the same way.
> > +        */
> > +       csrw CSR_SATP, a2
> > +       sfence.vma
> > +
> > +       ret
> > +#endif /* CONFIG_MMU */
> > +#ifdef CONFIG_SMP
> > +       /* Set trap vector to spin forever to help debug */
> > +       la a3, .Lsecondary_park
> > +       csrw CSR_TVEC, a3
> > +
> > +       slli a3, a0, LGREG
> > +       .global secondary_start_common
> > +secondary_start_common:
> > +
> > +#ifdef CONFIG_MMU
> > +       /* Enable virtual memory and relocate to virtual address */
> > +       la a0, swapper_pg_dir
> > +       call relocate
> > +#endif
> > +       tail smp_callin
> > +#endif /* CONFIG_SMP */
> > +
> > +.Lsecondary_park:
> > +       /* We lack SMP support or have too many harts, so park this hart */
> > +       wfi
> > +       j .Lsecondary_park
> > +
> > +END(_start)
> > +
> > +       __INIT
> > +ENTRY(_start_kernel)
> >         /* Mask all interrupts */
> >         csrw CSR_IE, zero
> >         csrw CSR_IP, zero
> > @@ -125,59 +202,6 @@ clear_bss_done:
> >         call parse_dtb
> >         tail start_kernel
> >
> > -#ifdef CONFIG_MMU
> > -relocate:
> > -       /* Relocate return address */
> > -       li a1, PAGE_OFFSET
> > -       la a2, _start
> > -       sub a1, a1, a2
> > -       add ra, ra, a1
> > -
> > -       /* Point stvec to virtual address of intruction after satp write */
> > -       la a2, 1f
> > -       add a2, a2, a1
> > -       csrw CSR_TVEC, a2
> > -
> > -       /* Compute satp for kernel page tables, but don't load it yet */
> > -       srl a2, a0, PAGE_SHIFT
> > -       li a1, SATP_MODE
> > -       or a2, a2, a1
> > -
> > -       /*
> > -        * Load trampoline page directory, which will cause us to trap to
> > -        * stvec if VA != PA, or simply fall through if VA == PA.  We need a
> > -        * full fence here because setup_vm() just wrote these PTEs and we need
> > -        * to ensure the new translations are in use.
> > -        */
> > -       la a0, trampoline_pg_dir
> > -       srl a0, a0, PAGE_SHIFT
> > -       or a0, a0, a1
> > -       sfence.vma
> > -       csrw CSR_SATP, a0
> > -.align 2
> > -1:
> > -       /* Set trap vector to spin forever to help debug */
> > -       la a0, .Lsecondary_park
> > -       csrw CSR_TVEC, a0
> > -
> > -       /* Reload the global pointer */
> > -.option push
> > -.option norelax
> > -       la gp, __global_pointer$
> > -.option pop
> > -
> > -       /*
> > -        * Switch to kernel page tables.  A full fence is necessary in order to
> > -        * avoid using the trampoline translations, which are only correct for
> > -        * the first superpage.  Fetching the fence is guarnteed to work
> > -        * because that first superpage is translated the same way.
> > -        */
> > -       csrw CSR_SATP, a2
> > -       sfence.vma
> > -
> > -       ret
> > -#endif /* CONFIG_MMU */
> > -
> >  .Lsecondary_start:
> >  #ifdef CONFIG_SMP
> >         /* Set trap vector to spin forever to help debug */
> > @@ -202,16 +226,10 @@ relocate:
> >         beqz tp, .Lwait_for_cpu_up
> >         fence
> >
> > -#ifdef CONFIG_MMU
> > -       /* Enable virtual memory and relocate to virtual address */
> > -       la a0, swapper_pg_dir
> > -       call relocate
> > +       tail secondary_start_common
> >  #endif
> >
> > -       tail smp_callin
> > -#endif
> > -
> > -END(_start)
> > +END(_start_kernel)
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
> > index 12f42f96d46e..18c397953bfc 100644
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
> > @@ -20,8 +21,10 @@ SECTIONS
> >         /* Beginning of code and text segment */
> >         . = LOAD_OFFSET;
> >         _start = .;
> > -       __init_begin = .;
> >         HEAD_TEXT_SECTION
> > +       . = ALIGN(PAGE_SIZE);
> > +
> > +       __init_begin = .;
> >         INIT_TEXT_SECTION(PAGE_SIZE)
> >         INIT_DATA_SECTION(16)
> >         /* we have to discard exit text and such at runtime, not link time */
> > --
> > 2.24.0
> >
>
> Apart from above nit in commit description, looks good to me.
>
> Reviewed-by: Anup Patel <anup@brainfault.org>
>
> Regards,
> Anup
>


-- 
Regards,
Atish

