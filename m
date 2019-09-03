Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0C8A6C80
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 17:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwK2y0IWIq2n69uPfWigsGmUtL1n7iZIG25c/pAAEPA=; b=TaWp1kwhBrgfBk
	Dq83LeXpOhbB/HaWp5JWLmUwxdzWU0XLt2L0KkKqLRUd0benKWko8hlifxhYD3+nB9SS2qZOUJJy/
	tUxegMuh4S97Sjt+fKklmXLqexsul2hwQyKuCSZHbpnMAq8QpujPHlP3ahiIuFIR/AQA8joc5zNVV
	xSRJMTUZemuadwboHHTwsyP0bEFVi6/JwSCNIhbpAslZwpKWN64WkTUqWwwZGDtq3A/LVISVWKtzI
	y3PyLfTQG431vABY0xU1IvLJB4XJ2xVI5hlZik89C68RzrCLQmetae7E+SxuWUKV+lgBNkBSSiLe0
	JthgcsyhOa2j0Hf8aa4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AQg-0006qc-GZ; Tue, 03 Sep 2019 15:09:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AQU-0006fF-Ua
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 15:09:00 +0000
Received: by mail-pf1-x442.google.com with SMTP id h195so4415781pfe.5
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 08:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=iV/j2+7ceSELqxPlCshRDxNfNslsjKkYw2OY9C0rDVo=;
 b=aWiI9WRgXbQeAID7GFyo3Q1ah/rNyTJ03sPm3IAil3CvNKVw/i6dbU+tnIx3g2XmjM
 c71n4AzjH4k5pt9CmABReGzF95E/+6RUuGYTsFuVhfeLtdZhz2Gv3MsUzoGRtOBxW2Sy
 0tBM1bRi6Y266azH+Hj7mMRqad9635cRAVTwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=iV/j2+7ceSELqxPlCshRDxNfNslsjKkYw2OY9C0rDVo=;
 b=T4GAmfJk2IzzyaSiR0C9kWBBY0d4hoqL7ZGsqw14xtXJTjYKgAoTDUt0SbOy3cYUkE
 KfsveLJtGVei3fPfvKvzpoXSI/LMflQR9U6YUGYIwI3ywQPEsvMleb42viCJgo0hbd1L
 uAoswDocXvh4/PjvBGS1RhGh3akp20st6y9nUKsU0uHexIAId9BwvAqUGTuilHQpa0us
 4m8XQkTJiNYYib1+a800Lsruf8oY+MJRtd1kqLj8jEwM6VYZLr3X8cl14IpE/sKcW2Fv
 e3OUFz4CtSMGAmCl0NPWWtwElJg1gq84tz59h1X2owSysbOfq+at4TXqeo1GXFIvMhbE
 kczA==
X-Gm-Message-State: APjAAAVvv1HBkH82c27Fri6mQ4r3EA8WTQkIMSzCFdxY1fQ9XsmsKXPM
 sSot3CuZPbp65zUkKl2hQ2oNWg==
X-Google-Smtp-Source: APXvYqxEkC0LeN+73qxepxpsVcqtgvFuYscUomXFoJBS7idF/AbxKh3/qr2qbPxdzwGKyr+HzUyREw==
X-Received: by 2002:a17:90a:9486:: with SMTP id s6mr585156pjo.0.1567523335724; 
 Tue, 03 Sep 2019 08:08:55 -0700 (PDT)
Received: from localhost (ppp167-251-205.static.internode.on.net.
 [59.167.251.205])
 by smtp.gmail.com with ESMTPSA id m9sm26858738pgr.24.2019.09.03.08.08.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 08:08:54 -0700 (PDT)
From: Daniel Axtens <dja@axtens.net>
To: Nick Hu <nickhu@andestech.com>, Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 2/2] riscv: Add KASAN support
In-Reply-To: <20190814074417.GA21929@andestech.com>
References: <cover.1565161957.git.nickhu@andestech.com>
 <88358ef8f7cfcb7fd01b6b989eccaddbe00a1e57.1565161957.git.nickhu@andestech.com>
 <20190812151050.GJ26897@infradead.org> <20190814074417.GA21929@andestech.com>
Date: Wed, 04 Sep 2019 01:08:51 +1000
Message-ID: <87k1apto1o.fsf@dja-thinkpad.axtens.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_080858_982578_980A8E53 
X-CRM114-Status: GOOD (  30.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 =?utf-8?Q?Alan_Quey-Liang_Kao=28=E9=AB=98=E9=AD=81=E8=89=AF=29?=
 <alankao@andestech.com>, "atish.patra@wdc.com" <atish.patra@wdc.com>,
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

Nick Hu <nickhu@andestech.com> writes:

> Hi Christoph,
>
> Thanks for your reply. I will answer one by one.
>
> Hi Alexander,
>
> Would you help me for the question about SOFTIRQENTRY_TEXT?
>
> On Mon, Aug 12, 2019 at 11:10:50PM +0800, Christoph Hellwig wrote:
>> > 2. KASAN can't debug the modules since the modules are allocated in VMALLOC
>> > area. We mapped the shadow memory, which corresponding to VMALLOC area,
>> > to the kasan_early_shadow_page because we don't have enough physical space
>> > for all the shadow memory corresponding to VMALLOC area.
>> 
>> How do other architectures solve this problem?
>> 
> Other archs like arm64 and x86 allocate modules in their module region.

I've run in to a similar difficulty in ppc64. My approach has been to
add a generic feature to allow kasan to handle vmalloc areas:

https://lore.kernel.org/linux-mm/20190903145536.3390-1-dja@axtens.net/

I link this with ppc64 in this series:

https://lore.kernel.org/linuxppc-dev/20190806233827.16454-1-dja@axtens.net/

However, see Christophe Leroy's comments: he thinks I should take a
different approach in a number of places, including just adding a
separate module area. I haven't had time to think through all of his
proposals yet; in particular I'd want to think through what the
implication of a separate module area is for KASLR.

Regards,
Daniel

>
>> > @@ -54,6 +54,8 @@ config RISCV
>> >  	select EDAC_SUPPORT
>> >  	select ARCH_HAS_GIGANTIC_PAGE
>> >  	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
>> > +	select GENERIC_STRNCPY_FROM_USER if KASAN
>> 
>> Is there any reason why we can't always enabled this?  Also just
>> enabling the generic efficient strncpy_from_user should probably be
>> a separate patch.
>> 
> You're right, always enable it would be better.
>
>> > +	select HAVE_ARCH_KASAN if MMU
>> 
>> Based on your cover letter this should be if MMU && 64BIT
>> 
>> >  #define __HAVE_ARCH_MEMCPY
>> >  extern asmlinkage void *memcpy(void *, const void *, size_t);
>> > +extern asmlinkage void *__memcpy(void *, const void *, size_t);
>> >  
>> >  #define __HAVE_ARCH_MEMMOVE
>> >  extern asmlinkage void *memmove(void *, const void *, size_t);
>> > +extern asmlinkage void *__memmove(void *, const void *, size_t);
>> > +
>> > +#define memcpy(dst, src, len) __memcpy(dst, src, len)
>> > +#define memmove(dst, src, len) __memmove(dst, src, len)
>> > +#define memset(s, c, n) __memset(s, c, n)
>> 
>> This looks weird and at least needs a very good comment.  Also
>> with this we effectively don't need the non-prefixed prototypes
>> anymore.  Also you probably want to split the renaming of the mem*
>> routines into a separate patch with a proper changelog.
>> 
> I made some mistakes on this porting, this would be better:
>
> #define __HAVE_ARCH_MEMSET
> extern asmlinkage void *memset(void *, int, size_t);
> extern asmlinkage void *__memset(void *, int, size_t);
>
> #define __HAVE_ARCH_MEMCPY
> extern asmlinkage void *memcpy(void *, const void *, size_t);
> extern asmlinkage void *__memcpy(void *, const void *, size_t);
>
> #define __HAVE_ARCH_MEMMOVE
> extern asmlinkage void *memmove(void *, const void *, size_t);
> extern asmlinkage void *__memmove(void *, const void *, size_t);
>
> #if defined(CONFIG_KASAN) && !defined(__SANITIZE_ADDRESS__)
>
> #define memcpy(dst, src, len) __memcpy(dst, src, len)
> #define memmove(dst, src, len) __memmove(dst, src, len)
> #define memset(s, c, n) __memset(s, c, n)
>
> #endif
>
>> >  #include <asm/tlbflush.h>
>> >  #include <asm/thread_info.h>
>> >  
>> > +#ifdef CONFIG_KASAN
>> > +#include <asm/kasan.h>
>> > +#endif
>> 
>> Any good reason to not just always include the header?
>>
> Nope, I would remove the '#ifdef CONFIG_KASAN', and do the logic in the header
> instead.
>
>> > +
>> >  #ifdef CONFIG_DUMMY_CONSOLE
>> >  struct screen_info screen_info = {
>> >  	.orig_video_lines	= 30,
>> > @@ -64,12 +68,17 @@ void __init setup_arch(char **cmdline_p)
>> >  
>> >  	setup_bootmem();
>> >  	paging_init();
>> > +
>> >  	unflatten_device_tree();
>> 
>> spurious whitespace change.
>> 
>> > diff --git a/arch/riscv/kernel/vmlinux.lds.S b/arch/riscv/kernel/vmlinux.lds.S
>> > index 23cd1a9..9700980 100644
>> > --- a/arch/riscv/kernel/vmlinux.lds.S
>> > +++ b/arch/riscv/kernel/vmlinux.lds.S
>> > @@ -46,6 +46,7 @@ SECTIONS
>> >  		KPROBES_TEXT
>> >  		ENTRY_TEXT
>> >  		IRQENTRY_TEXT
>> > +		SOFTIRQENTRY_TEXT
>> 
>> Hmm.  What is the relation to kasan here?  Maybe we should add this
>> separately with a good changelog?
>> 
> There is a commit for it:
>
> Author: Alexander Potapenko <glider@google.com>
> Date:   Fri Mar 25 14:22:05 2016 -0700
>
>     arch, ftrace: for KASAN put hard/soft IRQ entries into separate sections
>
>     KASAN needs to know whether the allocation happens in an IRQ handler.
>     This lets us strip everything below the IRQ entry point to reduce the
>     number of unique stack traces needed to be stored.
>
>     Move the definition of __irq_entry to <linux/interrupt.h> so that the
>     users don't need to pull in <linux/ftrace.h>.  Also introduce the
>     __softirq_entry macro which is similar to __irq_entry, but puts the
>     corresponding functions to the .softirqentry.text section.
>
> After reading the patch I understand that soft/hard IRQ entries should be
> separated for KASAN to work, but why?
>
> Alexender, do you have any comments on this?
>
>> > +++ b/arch/riscv/mm/kasan_init.c
>> > @@ -0,0 +1,102 @@
>> > +// SPDX-License-Identifier: GPL-2.0
>> 
>> This probably also wants a copyright statement.
>> 
>> > +	// init for swapper_pg_dir
>> 
>> Please use /* */ style comments.
>
> -- 
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20190814074417.GA21929%40andestech.com.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
