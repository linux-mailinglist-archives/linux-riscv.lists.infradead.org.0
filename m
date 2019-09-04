Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821D3A78BA
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 04:25:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQqbLFqC9C6oiZeIVFvt1y1M7pD8giEz0fLO/IaM/m8=; b=talZhYPZFRYqJ/
	/Lq2QROdv5olpaCdrcPzkkMZz1F6sdpxUktNIcjpB5UG2KBN+AocrCKhqKeQamcBYRs8phRCbVuYp
	stTQHAcBTid4FaiJRAU918Apu1OKlesY4CbgZ4sDZuzu956EO3n/gNALNXg8SqFe7o4jQzXDO3yUw
	R/VXiydTgAc7/VZERZGZ4AAeTIM+eIJQh+cy1LAlrRokINzMRQfLkl8Y/aWXB9LPipDCRH01K1FQO
	r/4miEwq5V3wwrSh6pHT0vmvZoDTNNV6NfuWxrd6iWBVbBSG1U6vwE2vycAONg9SgeYr9QP4+TKJy
	rdLYtsJKHi8/qWw/EYtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Kz6-0002yK-AU; Wed, 04 Sep 2019 02:25:24 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Kz2-0002xl-0H
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 02:25:22 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x842ArUi069839;
 Wed, 4 Sep 2019 10:10:53 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 4 Sep 2019
 10:24:06 +0800
Date: Wed, 4 Sep 2019 10:24:07 +0800
From: Nick Hu <nickhu@andestech.com>
To: Daniel Axtens <dja@axtens.net>
Subject: Re: [PATCH 2/2] riscv: Add KASAN support
Message-ID: <20190904022407.GA14994@andestech.com>
References: <cover.1565161957.git.nickhu@andestech.com>
 <88358ef8f7cfcb7fd01b6b989eccaddbe00a1e57.1565161957.git.nickhu@andestech.com>
 <20190812151050.GJ26897@infradead.org>
 <20190814074417.GA21929@andestech.com>
 <87k1apto1o.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k1apto1o.fsf@dja-thinkpad.axtens.net>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x842ArUi069839
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_192520_433505_76943BDE 
X-CRM114-Status: GOOD (  33.34  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?utf-8?B?6Zui6IG3Wm9uZyBab25nLVhpYW4gTGko5p2O5a6X5oayKQ==?=
 <zong@andestech.com>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Alan Quey-Liang =?utf-8?B?S2FvKOmrmOmtgeiJryk=?= <alankao@andestech.com>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Christoph Hellwig <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
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

Hi Daniel,

On Wed, Sep 04, 2019 at 01:08:51AM +1000, Daniel Axtens wrote:
> Nick Hu <nickhu@andestech.com> writes:
> 
> > Hi Christoph,
> >
> > Thanks for your reply. I will answer one by one.
> >
> > Hi Alexander,
> >
> > Would you help me for the question about SOFTIRQENTRY_TEXT?
> >
> > On Mon, Aug 12, 2019 at 11:10:50PM +0800, Christoph Hellwig wrote:
> >> > 2. KASAN can't debug the modules since the modules are allocated in VMALLOC
> >> > area. We mapped the shadow memory, which corresponding to VMALLOC area,
> >> > to the kasan_early_shadow_page because we don't have enough physical space
> >> > for all the shadow memory corresponding to VMALLOC area.
> >> 
> >> How do other architectures solve this problem?
> >> 
> > Other archs like arm64 and x86 allocate modules in their module region.
> 
> I've run in to a similar difficulty in ppc64. My approach has been to
> add a generic feature to allow kasan to handle vmalloc areas:
> 
> https://lore.kernel.org/linux-mm/20190903145536.3390-1-dja@axtens.net/
> 
> I link this with ppc64 in this series:
> 
> https://lore.kernel.org/linuxppc-dev/20190806233827.16454-1-dja@axtens.net/
> 
> However, see Christophe Leroy's comments: he thinks I should take a
> different approach in a number of places, including just adding a
> separate module area. I haven't had time to think through all of his
> proposals yet; in particular I'd want to think through what the
> implication of a separate module area is for KASLR.
> 
> Regards,
> Daniel
>
 
Thanks for the advice! I would study on it.

Regards,
Nick

> >
> >> > @@ -54,6 +54,8 @@ config RISCV
> >> >  	select EDAC_SUPPORT
> >> >  	select ARCH_HAS_GIGANTIC_PAGE
> >> >  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> >> > +	select GENERIC_STRNCPY_FROM_USER if KASAN
> >> 
> >> Is there any reason why we can't always enabled this?  Also just
> >> enabling the generic efficient strncpy_from_user should probably be
> >> a separate patch.
> >> 
> > You're right, always enable it would be better.
> >
> >> > +	select HAVE_ARCH_KASAN if MMU
> >> 
> >> Based on your cover letter this should be if MMU && 64BIT
> >> 
> >> >  #define __HAVE_ARCH_MEMCPY
> >> >  extern asmlinkage void *memcpy(void *, const void *, size_t);
> >> > +extern asmlinkage void *__memcpy(void *, const void *, size_t);
> >> >  
> >> >  #define __HAVE_ARCH_MEMMOVE
> >> >  extern asmlinkage void *memmove(void *, const void *, size_t);
> >> > +extern asmlinkage void *__memmove(void *, const void *, size_t);
> >> > +
> >> > +#define memcpy(dst, src, len) __memcpy(dst, src, len)
> >> > +#define memmove(dst, src, len) __memmove(dst, src, len)
> >> > +#define memset(s, c, n) __memset(s, c, n)
> >> 
> >> This looks weird and at least needs a very good comment.  Also
> >> with this we effectively don't need the non-prefixed prototypes
> >> anymore.  Also you probably want to split the renaming of the mem*
> >> routines into a separate patch with a proper changelog.
> >> 
> > I made some mistakes on this porting, this would be better:
> >
> > #define __HAVE_ARCH_MEMSET
> > extern asmlinkage void *memset(void *, int, size_t);
> > extern asmlinkage void *__memset(void *, int, size_t);
> >
> > #define __HAVE_ARCH_MEMCPY
> > extern asmlinkage void *memcpy(void *, const void *, size_t);
> > extern asmlinkage void *__memcpy(void *, const void *, size_t);
> >
> > #define __HAVE_ARCH_MEMMOVE
> > extern asmlinkage void *memmove(void *, const void *, size_t);
> > extern asmlinkage void *__memmove(void *, const void *, size_t);
> >
> > #if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
> >
> > #define memcpy(dst, src, len) __memcpy(dst, src, len)
> > #define memmove(dst, src, len) __memmove(dst, src, len)
> > #define memset(s, c, n) __memset(s, c, n)
> >
> > #endif
> >
> >> >  #include <asm/tlbflush.h>
> >> >  #include <asm/thread_info.h>
> >> >  
> >> > +#ifdef CONFIG_KASAN
> >> > +#include <asm/kasan.h>
> >> > +#endif
> >> 
> >> Any good reason to not just always include the header?
> >>
> > Nope, I would remove the '#ifdef CONFIG_KASAN', and do the logic in the header
> > instead.
> >
> >> > +
> >> >  #ifdef CONFIG_DUMMY_CONSOLE
> >> >  struct screen_info screen_info = {
> >> >  	.orig_video_lines	= 30,
> >> > @@ -64,12 +68,17 @@ void __init setup_arch(char **cmdline_p)
> >> >  
> >> >  	setup_bootmem();
> >> >  	paging_init();
> >> > +
> >> >  	unflatten_device_tree();
> >> 
> >> spurious whitespace change.
> >> 
> >> > diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
> >> > index 23cd1a9..9700980 100644
> >> > --- a/arch/riscv/kernel/vmlinux.lds.S
> >> > +++ b/arch/riscv/kernel/vmlinux.lds.S
> >> > @@ -46,6 +46,7 @@ SECTIONS
> >> >  		KPROBES_TEXT
> >> >  		ENTRY_TEXT
> >> >  		IRQENTRY_TEXT
> >> > +		SOFTIRQENTRY_TEXT
> >> 
> >> Hmm.  What is the relation to kasan here?  Maybe we should add this
> >> separately with a good changelog?
> >> 
> > There is a commit for it:
> >
> > Author: Alexander Potapenko <glider@google.com>
> > Date:   Fri Mar 25 14:22:05 2016 -0700
> >
> >     arch, ftrace: for KASAN put hard/soft IRQ entries into separate sections
> >
> >     KASAN needs to know whether the allocation happens in an IRQ handler.
> >     This lets us strip everything below the IRQ entry point to reduce the
> >     number of unique stack traces needed to be stored.
> >
> >     Move the definition of __irq_entry to <linux/interrupt.h> so that the
> >     users don't need to pull in <linux/ftrace.h>.  Also introduce the
> >     __softirq_entry macro which is similar to __irq_entry, but puts the
> >     corresponding functions to the .softirqentry.text section.
> >
> > After reading the patch I understand that soft/hard IRQ entries should be
> > separated for KASAN to work, but why?
> >
> > Alexender, do you have any comments on this?
> >
> >> > +++ b/arch/riscv/mm/kasan_init.c
> >> > @@ -0,0 +1,102 @@
> >> > +// SPDX-License-Identifier: GPL-2.0
> >> 
> >> This probably also wants a copyright statement.
> >> 
> >> > +	// init for swapper_pg_dir
> >> 
> >> Please use /* */ style comments.
> >
> > -- 
> > You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20190814074417.GA21929%40andestech.com.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
