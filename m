Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E8D1652A2
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Feb 2020 23:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X6VeUaE8E7keYi1jG1YEB7T6CEALZPfDLK0QSciKeos=; b=JIUpwVCSPNxNsuUYMe+usqeSV
	g476BHZdH/ek8aP4G7QFFhSx6mFsRQ3Ssf9XJcxFTAKGf1+9RNOBsPuFeiFy2JguAACmkQO8gXQFF
	AtQ9uLLFAett1fO6SKaZquGUj5cYta03Rg/r76eR9N7TiGd+PWRbtXNaMxuqEbQTr6MRwgLoF9Qgm
	anZKG19k/zA6X9qOJyNuCFUzv4tMLPjWqs3ow0RL6NJrAZsQSiF3L5ND9AxGCJaGGGIE2wSQvcFWo
	a3OHf6KfBqwf2Hiatdf9UWg+q3LavYiFjfedM2o3HpgUwhWMcUiSRos7JTNoL2fRiqQ1BoUZ/A5/Q
	/yMPxqWEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Y42-0007KY-Kq; Wed, 19 Feb 2020 22:43:30 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Y3z-0007Jt-GB
 for linux-riscv@lists.infradead.org; Wed, 19 Feb 2020 22:43:29 +0000
Received: by mail-ot1-x344.google.com with SMTP id r27so1800634otc.8
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 14:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X6VeUaE8E7keYi1jG1YEB7T6CEALZPfDLK0QSciKeos=;
 b=BL4tvCHFxZlzYd9jeo7Y+YLsjYN4Bl6sHf2/+WkuC9kxLToOt3vHHC51KkrsE9BkiL
 b4BW9ix2o13wQFNQDHmyPwAIjKvwvjlclbPqr1+n9I2GZ1cePDoCNu9/xUqBEKiNVvNf
 phm0B+Nu7DatELRcVFMl+bdYRmll6j3yPo/lrtnK2JEn9105Sr2UKU52H4Y/J4ZJFrUp
 P7CzvRDb1g3URO0A9LKT3lFRVADn0NgffxQKEVgH+Mczbd/Bm31Zddqp36YE0G8L1QVK
 Y4fzm8pl/EwRzqxlJkyS/JuN9HAy6rXlMMVaMHevluEttVomAFEEZLZnx1udt3ZmbVR+
 grLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X6VeUaE8E7keYi1jG1YEB7T6CEALZPfDLK0QSciKeos=;
 b=EjrnIIOZuEH8VRxsvCCh/JBrUeQM9COitCFD6sbIFar/vQ7xyLFVBvyNgygodCSRUB
 BbH5ym7ZdBOHprYjsUZ63OoG0ZNmj1zqcDJMUH2gg6h9hVvRhMB2uyOEAnEDlJdbjJ4Y
 ptj7zSY5+qlMZPYY/PDvjS7XHEAXk4rmBDa3A55egFW1YwXbGlB/tE1he3zWViQjE2Ox
 JtsFhY8y17lu8WuKdK67+PX9UQD2RbhzmIOpmg7hbV3+k1vFnPNcWOvshFb50qdqba9c
 wAUz2fZFr4QE+94AboDSNFKM98fyV5LuqINP9Rw4JOToW6/FCTtUXFJTLjxpKb+/sner
 ZMyg==
X-Gm-Message-State: APjAAAXm2L/7svb2DzP5FQw23ofweVCbheTDlAQb1Gf2t1CN0kx9+Bt5
 mi2F/m+XFZqCtbqLFsVqmyk2qTVFonljSw==
X-Google-Smtp-Source: APXvYqyfj/fautSChIRF1qdnFWd6tiJHgVT9MgKUR3fDNwl6150cP6eJAIIHgHSfytCA8f5lIFhN8Q==
X-Received: by 2002:a9d:6e9a:: with SMTP id a26mr20381133otr.344.1582152203683; 
 Wed, 19 Feb 2020 14:43:23 -0800 (PST)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com.
 [209.85.167.178])
 by smtp.gmail.com with ESMTPSA id f37sm408362otb.33.2020.02.19.14.43.22
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Feb 2020 14:43:23 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id q84so25559729oic.4
 for <linux-riscv@lists.infradead.org>; Wed, 19 Feb 2020 14:43:22 -0800 (PST)
X-Received: by 2002:a05:6808:b39:: with SMTP id
 t25mr6186053oij.71.1582152202526; 
 Wed, 19 Feb 2020 14:43:22 -0800 (PST)
MIME-Version: 1.0
References: <1582097304-5547-1-git-send-email-vincent.chen@sifive.com>
 <1582097304-5547-2-git-send-email-vincent.chen@sifive.com>
 <b58183d5-a7db-3902-100f-8f4f0d06c148@ghiti.fr>
In-Reply-To: <b58183d5-a7db-3902-100f-8f4f0d06c148@ghiti.fr>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Wed, 19 Feb 2020 19:43:11 -0300
X-Gmail-Original-Message-ID: <CADnnUqcnOw1svnEYhb0O-q_TvTJQH3MuR2o8nrqNedQogoQbbg@mail.gmail.com>
Message-ID: <CADnnUqcnOw1svnEYhb0O-q_TvTJQH3MuR2o8nrqNedQogoQbbg@mail.gmail.com>
Subject: Re: [PATCH 1/2] riscv: avoid the PIC offset of static percpu data in
 module beyond 2G limits
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_144327_680470_D4B1EAFC 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
Cc: Vincent Chen <vincent.chen@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, deanbo422@gmail.com,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 2:53 PM Alexandre Ghiti <alex@ghiti.fr> wrote:
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
> Otherwise, I have just tested it and it works, so you can add:
>
> Tested-by: Alexandre Ghiti <alex@ghiti.fr>
>
> Thanks,
>
> Alex
>

Thanks for the patch, applied on v5.5.0 and v5.6.0-rc2. Worked fine on
Qemu and Unleashed:

root@debian10-riscv64:~# sudo modprobe openvswitch
[  124.257220] openvswitch: Open vSwitch switching datapath

root@debian10-riscv64:~# modprobe br_netfilter
[  193.168269] Bridge firewalling registered

root@debian10-riscv64:~# lsmod
Module                  Size  Used by
br_netfilter           23054  0
bridge                217063  2 br_netfilter
stp                     2891  1 bridge
llc                     5968  2 bridge,stp
openvswitch           197057  0
nsh                     3501  1 openvswitch
nf_conncount           11362  1 openvswitch
nf_nat                 39088  1 openvswitch
nf_conntrack          143270  3 nf_nat,openvswitch,nf_conncount
nf_defrag_ipv6         10091  2 nf_conntrack,openvswitch
nf_defrag_ipv4          2410  1 nf_conntrack
ip_tables              16409  0

If desired, add:

Tested-by: Carlos de Paula <me@carlosedp.com>

