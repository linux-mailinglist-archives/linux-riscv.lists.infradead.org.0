Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40291157225
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 10:53:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lf2cAkUKqkoHjhmKRjpyTwceTPU3vsjWp2/APCa+/Gk=; b=JWl+C2TDn4tZmAtRirYuO5HE8
	NH/b3Jc4XMXM3UUkAx9yyh5kGeRSXJFRot9M9gAp3moz7sTph2lY7EUv3cGj3P9noksT3lZG5aJxw
	w0j+MmNo70+bqFN3BqyaVLNMyXJNZth+lXq34YHJRN52ICR0eR3cQoj23JPAIq3kz/b39ehyeRFrT
	kY0dI6egHu7rijXbH/YTg2FQmaUd55lkXxiQaRD0um52uXR/WRI8AqR2vMxxEkNx6GT1QdyGhwi2m
	HGwriPFYuk7NRfcTguXKc9AlPCnG5MaLs9d0Z0/6X8qbWWiGzzeJGF+gHX2mjzYAngdEBzBEOHCdv
	BHMlUYeFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15lE-0008Uy-Qe; Mon, 10 Feb 2020 09:53:48 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15lB-0008UT-IY
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 09:53:47 +0000
Received: by mail-qk1-x742.google.com with SMTP id c188so5841201qkg.4
 for <linux-riscv@lists.infradead.org>; Mon, 10 Feb 2020 01:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lf2cAkUKqkoHjhmKRjpyTwceTPU3vsjWp2/APCa+/Gk=;
 b=OAhGq7DSJXKYL5lwJHA2tfwZA+rMz/piRqBeGqrzJndw64QCyAe7BosOOzVpqTVk2+
 Mppz/yXX3QSZab1pt3MGSNsjebO+zJKzQ1IhiiEzzRLq1jZhKoAdABTwefRFS7EIAaDU
 IbMJKKWJ8qaUZ2LxN0tSQDdB6kL4tB6RUkkDOnILoaGdgbDxtX2BHVpn6xaou0ZXVpsI
 CLXmZopLOuVNiSImGxSMFffrjydiXPJy3q4GfF2wtOgIZkle9GaSdRw2piCQ1OZ8iclG
 BWKV2UgUkabAtgI9Dzf1FWEGKc24pZ8J8U3yX6HEmYyAb+XixKGPiay8KNvU9w1+LxfV
 tR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lf2cAkUKqkoHjhmKRjpyTwceTPU3vsjWp2/APCa+/Gk=;
 b=Sw5mMogdy2nsZCrwTI9fJVErsEsV7HCoMo7Vd2Vrd+9IO1hH5UtyA4fd0Lv3dooIGl
 g/5LhXAXQ3jd8xx4D+EzLSPwDyQRCJRtzy+Lx/Y3suS5jjk4zHDBvdFjmVhlLPKgl0JF
 U+zNdnUYzAjoQjearUlT/LE2K6X8s0ZH0V83PWQfXzFFWlCgq0Ad78BehETghoAU3Bgs
 nNsH0HRhl2R9tftvxeL08ultz0GtADrqu7JNw4x5Hj5FJyskWy2hVSXb30ACutEaIcB7
 g5+mN4jFJN2jXdd0RPtfWxmRB2z79ky4yUtmw0Z2cjToTqjYKa/k6OaNh+5p7UJVQGcG
 mqkw==
X-Gm-Message-State: APjAAAXkErvCTyLtaLYhje8rKsBhaWyd6RJ14RiZzqk+tVuS48CqEkQM
 i7nQze2xtviqwZrTZ7e/9ycnumLpRLOv+d5X2yh9wQ==
X-Google-Smtp-Source: APXvYqzSVKnPRtz8GiPZ3jIynOka+n7tKNrRFH5yTNt/2ABFz/8xKe4hWU2Sj+tbxe/CprlUdo6A5niZjO7CppzIvnA=
X-Received: by 2002:a37:652:: with SMTP id 79mr545001qkg.464.1581328423468;
 Mon, 10 Feb 2020 01:53:43 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
 <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
 <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
 <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
 <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
 <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
 <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
 <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
 <a55f265e-71b2-5ebb-b079-6345007a442e@ghiti.fr>
 <CABvJ_xjVLJEebCac_sb6-Yd_iHU1x8Daqw-iFqcGn11YKktm8Q@mail.gmail.com>
 <MN2PR04MB6061ED6ABC668B59A7A544CF8D020@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CABvJ_xg_+XHhND-_8mq8gUN_yN-abMjDOWGg+MFVP0gwSAhxtw@mail.gmail.com>
 <CABvJ_xgRE3P0uVhx9zyVZOzMjNYewJQK-nyhv8e5cfpNweLAGw@mail.gmail.com>
 <CABvJ_xiqAmdqUjZ9s8w9E3BYU8ruFnACpiGZMH-Vc8nCKiwUcA@mail.gmail.com>
 <2b69bae3-b00f-a991-16f6-8f682faeddfe@ghiti.fr>
In-Reply-To: <2b69bae3-b00f-a991-16f6-8f682faeddfe@ghiti.fr>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 10 Feb 2020 17:53:31 +0800
Message-ID: <CABvJ_xjm9wBqTm2mbbUXcEAT88cr=86AKitQbXdfPJ9WYP702w@mail.gmail.com>
Subject: Re: Error on loading some network Kernel modules
To: Alex Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015345_646223_98B1D529 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 Paul Walmsley <paul@pwsan.com>, Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 2:37 PM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Hi Vincent,
>
> On 2/7/20 9:51 AM, Vincent Chen wrote:
> > On Fri, Feb 7, 2020 at 10:39 PM Vincent Chen <vincent.chen@sifive.com> wrote:
> >>
> >>>> For point1, we don't need a dedicated region as long as we are allocating
> >>>> modules from VMALLOC area. Let's avoid another virtual memory region if
> >>>> possible.
> >>>>
> >>>
> >>> Your comments inspire me if we can know the end of the percpu data
> >>> region, we can dynamically calculate the start address in each module
> >>> allocation by "<end of the percpu data region> - 2GB" if needed. I am
> >>> finding a way to derive the <end of the percpu data region>.
> >>>
> >>
> >> In the implementation of the idea, I found that I did have some
> >> misunderstandings about the mechanism of accessing static percpu
> >> symbol. Currently, I think this issue can be solved by modifying the
> >> module_allocate() to the following.
> >> #define MODULE_START max(PFN_ALIGN(&_end - 2 *
> >> SZ_1G), PFN_ALIGN(&_text + 8 * SZ_1K - 2 * SZ_1G))
> >> void *module_alloc(unsigned long size)
> >> {
> >> return __vmalloc_node_range(size, 1, MODULE_START,
> >> VMALLOC_END, GFP_KERNEL,
> >> PAGE_KERNEL_EXEC, 0,
> >> NUMA_NO_NODE,
> >> __builtin_return_address(0));
> >> }
> >> After applying a similar modification above, the kernel can
> >> successfully insert the test module provided by Romain. Any feedback
> >> is welcome. If someone is curious about the reason, I roughly
> >> described it at the end of this mail. I am sorry if someone was misled
> >> by early discussion.
> >>
> >>
> >> As mentioned early, kernel pre-allocates a memory region for each CPU
> >> to place the instances of the percpu data. According to the
> >> declaration type, each memory region can be divided into three chunks.
> >> These three chunks from low memory to high memory are static chunk,
> >> reserved chunk, and dynamic chunk.
> >> a. The static chunk is used for the static percpu symbols declared in the kernel
> >> b. The reserved chunk is used for the static percpu symbols declared
> >> in the kernel module
> >> c. The dynamic chunk is used for all dynamic percpu symbols.
> >>
> >> The order of the percpu symbols in each memory region is the same and
> >> is recorded in a symbol list maintained by the kernel. Therefore, the
> >> address of a specific CPU's percpu symbol is "The address of this
> >> percpu symbol in the symbol list" + "The offset from symbols list to
> >> the specific CPU region".
> >> a. The symbol list is created based on the ".data..percpu" section. In
> >> other words, the start address of this symbol list is the start
> >> address of ".data..percpu". When a dynamic percpu symbol is created or
> >> a kernel module import a static percpu symbol, the kernel will follow
> >> the above chunk rule to add this percpu symbol to its suitable region.
> >> b. When each memory area was created, "The offset from symbols list to
> >> the specific CPU region" has been recorded.
> >>
> >> Back to the issue, according to the rules above, the kernel will
> >> relocate the ".data..percpu" section of the loaded module to the end
> >> of the ".data..percpu" section of the kernel image. The end of the
> >> ".data..percpu" section of the kernel image almost equals _text, and
> >> the current size of the reserved chunk is 8KB. Therefore, the
> >> appropriate range to place the loaded module is [max(PFN_ALIGN(&_end -
> >> 2 *SZ_1G), PFN_ALIGN(&_text + 8 * SZ_1K - 2 * SZ_1G)),  VMALLOC_END].
> >
> > I did not notice that the size of the kernel .text section is
> > impossible below 2 PAGES. Therefore, the modification of module_alloc
> > function can be reduced to the following.
> > void *module_alloc(unsigned long size)
> >   {
> >   return __vmalloc_node_range(size, 1, PFN_ALIGN(&_end - 2 *SZ_1G),
> >   VMALLOC_END, GFP_KERNEL,
> >   PAGE_KERNEL_EXEC, 0,
> >   NUMA_NO_NODE,
> >   __builtin_return_address(0));
> >   }
> > It is the same as Alex's suggestion. Is Alex willing to send this
> > patch to resolve this bug?
> >
>
> You did all the work, please send a patch explaining what you learnt and
> feel free to add a Suggested-By. Anyway, I'll add a Reviewed-by when you
> propose something.
>
> Thank you Vincent for all your research,
>
> Alex

OK, I understood. Thank you and Anup for giving me some suggestions
from different viewpoints. I will add Suggested-By for you all if
possible :)

Vincent

