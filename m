Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD8165513
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Feb 2020 03:30:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fP7tF3vVBFmd0q3CiYlGfriXekjn/LIBtkyKcQT2a80=; b=MeoQJnlmXvzFy6kNwDafk4VT1
	5eIhtXwUR9izg5FjFq0Vb+IXPwwfyIEQWLl5STTTDG1GUWd9lLhC/BtPAeEr8x0agIfnfJI8Cy5dr
	MnTnG/FZaumXgn4BeFRr8r0ZnXnx8lQyHjSkRBPrwBRXNuaVOFN7OIoUX7pRPyQOA/M7J/4UjgFBy
	fmDnA/e6X1e8aO9kWl/DX77aCDyhW2fRFIrIAipPo4RC/3aLIQ/RyhXfBTAa/uuz2p6sj4hpzJkUv
	UeTfzzCjbNkhzRKMNrNV1KuktGD5TJL6UhObrZMViSBB5bCUNu+IgUeIFkAMo8db3h3ej6RjAZPe7
	Emi1gsXJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4bbS-0000wo-3J; Thu, 20 Feb 2020 02:30:14 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4bbO-0000vT-Sl
 for linux-riscv@lists.infradead.org; Thu, 20 Feb 2020 02:30:12 +0000
Received: by mail-qk1-x743.google.com with SMTP id a2so2175966qko.12
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 18:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fP7tF3vVBFmd0q3CiYlGfriXekjn/LIBtkyKcQT2a80=;
 b=OZe4uqmNDdMd5pl83Irb3Vh8E+NVAqYxGYCG4nufM1qEUyvHI/QuMXEl6NEtDOWH0G
 6usjQIPqrRtRADdJco09p3bbmdpqklT+BPnTYIx/ldc0fnJV4L/YDorl4iDWsnFUunC8
 4cn1kvR+MP8wVoH34YUbI2m3adm5STMckUqFNb2KYaip1TB+uUk/EwrAcXIya4YV3vuY
 mR8efL2kmRpbclIDum/Qxw7njLGaHUNaAOofhzouwVjMnYYSIHJi6ylt1mGPgHZX8+50
 QwK+Hz5XDw/T10/Yi6Z6tkt+pXMAB9AAWq08m+durYJX2KbB8sUsWG47ICV9DQBG8TZy
 p9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fP7tF3vVBFmd0q3CiYlGfriXekjn/LIBtkyKcQT2a80=;
 b=sc0O3s3kU8cytF4D5Z/ej0W9r9fvPFK4pFNY0Lu1u1ahh3NF/+EliX4ngJNt5TCfIB
 EKi3P4KOm6WsSaYqr2c5i7g3eyDK1OIbOdjoLbbaIjqmi/hD3Dn//89M0YtbBiZ5/BLY
 hdkz7jwTILqNY537nH1YEyzarNIgpy+3kBxSqrxG5PIbhHvTEGfsgmDBgaP3KeKOGobW
 VMvKj5PXuVm3X3/p25Czdado+WSGbZy52LxKx1Wm6s0sPy9g+3cI4ytPTM78iEMhWw00
 xa6Pe2mduwDWYfToi2XR+9s3fWaynpVBaEdabpLwBqlGk4UEvBYce3U3b9WfhpfrpWPS
 yMqA==
X-Gm-Message-State: APjAAAWCFbC5mTJF/NehObMPEJ95fOtSTNtDBiHTm+0OMFm5t4z/sHGs
 AwSfC0Th2oMN3/JeAFHqSFyx3nwT9qk30WzAl/Z4dg==
X-Google-Smtp-Source: APXvYqwD6fRH9n/xXiYIDvgJlX7hM1pLh7H1BjpavMN1/gXT2HXgc+4zviIYTiK+MxHqFohvaAzsnY35xhijMGPvkl4=
X-Received: by 2002:ae9:e518:: with SMTP id w24mr25535074qkf.236.1582165809633; 
 Wed, 19 Feb 2020 18:30:09 -0800 (PST)
MIME-Version: 1.0
References: <1582097304-5547-1-git-send-email-vincent.chen@sifive.com>
 <1582097304-5547-2-git-send-email-vincent.chen@sifive.com>
 <b58183d5-a7db-3902-100f-8f4f0d06c148@ghiti.fr>
In-Reply-To: <b58183d5-a7db-3902-100f-8f4f0d06c148@ghiti.fr>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Thu, 20 Feb 2020 10:29:58 +0800
Message-ID: <CABvJ_xjE_rWiNBP2ugr7R8nOiYhKbJTy6vU9-HkEU__TmKm2sg@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: avoid the PIC offset of static percpu data in
 module beyond 2G limits
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_183010_937765_07AD8B0E 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>, deanbo422@gmail.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 1:52 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> Hi Vincent,
>
> On 2/19/20 8:28 AM, Vincent Chen wrote:
> > The compiler uses the PIC-relative method to access static variables
> > instead of GOT when the code model is PIC. Therefore, the limitation of
> > the access range from the instruction to the symbol address is +-2GB.
> > Under this circumstance, the kernel cannot load a kernel module if this
> > module has static per-CPU symbols declared by DEFINE_PER_CPU(). The reason
> > is that kernel relocates the .data..percpu section of the kernel module to
> > the end of kernel's .data..percpu. Hence, the distance between the per-CPU
> > symbols and the instruction will exceed the 2GB limits. To solve this
> > problem, the kernel should place the loaded module in the memory area
> > [&_end-2G, VMALLOC_END].
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > Suggested-by: Alex Ghiti <alex@ghiti.fr>
> > Suggested-by: Anup Patel <anup@brainfault.org>
> >
> > ---
> >   arch/riscv/kernel/module.c | 18 ++++++++++++++++++
> >   1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/riscv/kernel/module.c b/arch/riscv/kernel/module.c
> > index b7401858d872..c498beb82369 100644
> > --- a/arch/riscv/kernel/module.c
> > +++ b/arch/riscv/kernel/module.c
> > @@ -8,6 +8,10 @@
> >   #include <linux/err.h>
> >   #include <linux/errno.h>
> >   #include <linux/moduleloader.h>
> > +#include <linux/vmalloc.h>
> > +#include <linux/sizes.h>
> > +#include <asm/pgtable.h>
> > +#include <asm/sections.h>
> >
> >   static int apply_r_riscv_32_rela(struct module *me, u32 *location, Elf_Addr v)
> >   {
> > @@ -386,3 +390,17 @@ int apply_relocate_add(Elf_Shdr *sechdrs, const char *strtab,
> >
> >       return 0;
> >   }
> > +#if defined(CONFIG_MMU) && defined(CONFIG_64BIT)
> > +#ifdef CONFIG_MAXPHYSMEM_2GB
> > +#define VMALLOC_MODULE_START \
> > +     max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
> > +#else
> > +#define VMALLOC_MODULE_START PFN_ALIGN((unsigned long)&_end - SZ_2G)
> > +#endif
>
> I would use the same definition for both cases:
>
> #define VMALLOC_MODULE_START \
>         max(PFN_ALIGN((unsigned long)&_end - SZ_2G), VMALLOC_START)
>
> as it avoids ifdefs and amounts to the same. And maybe you can avoid the
> definition of VMALLOC_MODULE_START at the same time.
>
Thanks for your comments. I will follow your suggestion to use the
same definition for both cases. For the definition of
VMALLOC_MODULE_START, I may prefer to keep it , because I think it may
be more readable than directly passing the max() function to the
__vmalloc_node_range(). I am afriad that I misunderstood what you
meant. If possible, could you give me an example? Thank you.

> > +void *module_alloc(unsigned long size)
> > +{
> > +     return __vmalloc_node_range(size, 1, VMALLOC_MODULE_START,
> > +     VMALLOC_END, GFP_KERNEL, PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
> > +     __builtin_return_address(0));
> > +}
> > +#endif
> >
>
> It's weird checkpatch does not complain about the alignment of those lines.
>
I will modify it.
> Otherwise, I have just tested it and it works, so you can add:
>
> Tested-by: Alexandre Ghiti <alex@ghiti.fr>
>
> Thanks,
>
> Alex

Thank you for testing this patch, I will add it.

