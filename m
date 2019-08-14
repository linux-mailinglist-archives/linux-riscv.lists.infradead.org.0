Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926B98CD26
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 09:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPn/s/P6qEr2Mgc6fVmukQ4w0SLbHbYZ48z5FmL4pXc=; b=oGucKN3Kbj6d8s
	ZWpov7fpdBAXj+im0+JQlPRD387kA6EfnxNfBk9eBaZm7DrFrizW+k9L4ltO+CUGN4vNVwycf8xmC
	xCoTVkVY7FTV8A+uYUMIM2Vjj9M8mO5B2nByAMUnxTY8xrrAFytj9YVPK6LKdNdpw1HXi+B5XrAmp
	VhdmqaAdZ57MwDrYsUAj/kOSIkKojNpqu8P+mz2pYyYrwjNCbyCEnxPuCYK8PLgRPA8jlm6Pv+pq+
	IlGT2/yZ607HIjx+ltiLvj3OhBN4p9U6WyrZK4DCy64PVrAEXuNXehATqKEvVUw8/u5IRFPDmXL4s
	7Nlu/le+iVklD4galF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnyC-0004P8-0G; Wed, 14 Aug 2019 07:45:20 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxny3-0004OX-RU
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 07:45:13 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7E7WkLS078787;
 Wed, 14 Aug 2019 15:32:46 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 14 Aug 2019
 15:44:17 +0800
Date: Wed, 14 Aug 2019 15:44:18 +0800
From: Nick Hu <nickhu@andestech.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 2/2] riscv: Add KASAN support
Message-ID: <20190814074417.GA21929@andestech.com>
References: <cover.1565161957.git.nickhu@andestech.com>
 <88358ef8f7cfcb7fd01b6b989eccaddbe00a1e57.1565161957.git.nickhu@andestech.com>
 <20190812151050.GJ26897@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812151050.GJ26897@infradead.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7E7WkLS078787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_004512_147754_D45DBEED 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Alan Quey-Liang =?utf-8?B?S2FvKOmrmOmtgeiJryk=?= <alankao@andestech.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 =?utf-8?B?6Zui6IG3Wm9uZyBab25nLVhpYW4gTGko5p2O5a6X5oayKQ==?=
 <zong@andestech.com>, "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "glider@google.com" <glider@google.com>,
 "green.hu@gmail.com" <green.hu@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "aryabinin@virtuozzo.com" <aryabinin@virtuozzo.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "deanbo422@gmail.com" <deanbo422@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "dvyukov@google.com" <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

Thanks for your reply. I will answer one by one.

Hi Alexander,

Would you help me for the question about SOFTIRQENTRY_TEXT?

On Mon, Aug 12, 2019 at 11:10:50PM +0800, Christoph Hellwig wrote:
> > 2. KASAN can't debug the modules since the modules are allocated in VMALLOC
> > area. We mapped the shadow memory, which corresponding to VMALLOC area,
> > to the kasan_early_shadow_page because we don't have enough physical space
> > for all the shadow memory corresponding to VMALLOC area.
> 
> How do other architectures solve this problem?
> 
Other archs like arm64 and x86 allocate modules in their module region.

> > @@ -54,6 +54,8 @@ config RISCV
> >  	select EDAC_SUPPORT
> >  	select ARCH_HAS_GIGANTIC_PAGE
> >  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> > +	select GENERIC_STRNCPY_FROM_USER if KASAN
> 
> Is there any reason why we can't always enabled this?  Also just
> enabling the generic efficient strncpy_from_user should probably be
> a separate patch.
> 
You're right, always enable it would be better.

> > +	select HAVE_ARCH_KASAN if MMU
> 
> Based on your cover letter this should be if MMU && 64BIT
> 
> >  #define __HAVE_ARCH_MEMCPY
> >  extern asmlinkage void *memcpy(void *, const void *, size_t);
> > +extern asmlinkage void *__memcpy(void *, const void *, size_t);
> >  
> >  #define __HAVE_ARCH_MEMMOVE
> >  extern asmlinkage void *memmove(void *, const void *, size_t);
> > +extern asmlinkage void *__memmove(void *, const void *, size_t);
> > +
> > +#define memcpy(dst, src, len) __memcpy(dst, src, len)
> > +#define memmove(dst, src, len) __memmove(dst, src, len)
> > +#define memset(s, c, n) __memset(s, c, n)
> 
> This looks weird and at least needs a very good comment.  Also
> with this we effectively don't need the non-prefixed prototypes
> anymore.  Also you probably want to split the renaming of the mem*
> routines into a separate patch with a proper changelog.
> 
I made some mistakes on this porting, this would be better:

#define __HAVE_ARCH_MEMSET
extern asmlinkage void *memset(void *, int, size_t);
extern asmlinkage void *__memset(void *, int, size_t);

#define __HAVE_ARCH_MEMCPY
extern asmlinkage void *memcpy(void *, const void *, size_t);
extern asmlinkage void *__memcpy(void *, const void *, size_t);

#define __HAVE_ARCH_MEMMOVE
extern asmlinkage void *memmove(void *, const void *, size_t);
extern asmlinkage void *__memmove(void *, const void *, size_t);

#if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)

#define memcpy(dst, src, len) __memcpy(dst, src, len)
#define memmove(dst, src, len) __memmove(dst, src, len)
#define memset(s, c, n) __memset(s, c, n)

#endif

> >  #include <asm/tlbflush.h>
> >  #include <asm/thread_info.h>
> >  
> > +#ifdef CONFIG_KASAN
> > +#include <asm/kasan.h>
> > +#endif
> 
> Any good reason to not just always include the header?
>
Nope, I would remove the '#ifdef CONFIG_KASAN', and do the logic in the header
instead.

> > +
> >  #ifdef CONFIG_DUMMY_CONSOLE
> >  struct screen_info screen_info = {
> >  	.orig_video_lines	= 30,
> > @@ -64,12 +68,17 @@ void __init setup_arch(char **cmdline_p)
> >  
> >  	setup_bootmem();
> >  	paging_init();
> > +
> >  	unflatten_device_tree();
> 
> spurious whitespace change.
> 
> > diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> > index 23cd1a9..9700980 100644
> > --- a/arch/riscv/kernel/vmlinux.lds.S
> > +++ b/arch/riscv/kernel/vmlinux.lds.S
> > @@ -46,6 +46,7 @@ SECTIONS
> >  		KPROBES_TEXT
> >  		ENTRY_TEXT
> >  		IRQENTRY_TEXT
> > +		SOFTIRQENTRY_TEXT
> 
> Hmm.  What is the relation to kasan here?  Maybe we should add this
> separately with a good changelog?
> 
There is a commit for it:

Author: Alexander Potapenko <glider@google.com>
Date:   Fri Mar 25 14:22:05 2016 -0700

    arch, ftrace: for KASAN put hard/soft IRQ entries into separate sections

    KASAN needs to know whether the allocation happens in an IRQ handler.
    This lets us strip everything below the IRQ entry point to reduce the
    number of unique stack traces needed to be stored.

    Move the definition of __irq_entry to <linux/interrupt.h> so that the
    users don't need to pull in <linux/ftrace.h>.  Also introduce the
    __softirq_entry macro which is similar to __irq_entry, but puts the
    corresponding functions to the .softirqentry.text section.

After reading the patch I understand that soft/hard IRQ entries should be
separated for KASAN to work, but why?

Alexender, do you have any comments on this?

> > +++ b/arch/riscv/mm/kasan_init.c
> > @@ -0,0 +1,102 @@
> > +// SPDX-License-Identifier: GPL-2.0
> 
> This probably also wants a copyright statement.
> 
> > +	// init for swapper_pg_dir
> 
> Please use /* */ style comments.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
