Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26C814FD12
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Feb 2020 13:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wxxxrjLDsuV8pep8Q6zooUZvw1xdxr9qWEB/PyRn/HQ=; b=E7/g+rjHpOwCYctzjcIya96rQ
	iwB48pJHfaCyUjluQyycs6GNZYtvH/mJowonY7xTPhOU3zTLOXuusYjl4Bb5UY7UGRISVH0kJqwee
	TjtnEcypo/cRsDvvWvx/kOqGti3O2pZD400jSSeUvy3J3LlE9RS6nMPIZNfxiWlaSKUeCWUln1GNj
	gSeDRzNw8FUN8ShwMz/8y/4q3WeACEl6DITBNc6Wx6TPvwMcEwkMVJcim9ryeMqCmxvkW9ALaJU9r
	q62L2QcCVqnR5jnK/6Gi0awnhI/VfV6UdWsr0MrORE5fsOuWjHTBqQfpDhSDs7DiIy4nduxDHeatL
	5WTJpK18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyEOj-0007mB-Jj; Sun, 02 Feb 2020 12:30:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyEOg-0007lh-3G
 for linux-riscv@lists.infradead.org; Sun, 02 Feb 2020 12:30:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so12912390wmb.0
 for <linux-riscv@lists.infradead.org>; Sun, 02 Feb 2020 04:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wxxxrjLDsuV8pep8Q6zooUZvw1xdxr9qWEB/PyRn/HQ=;
 b=jtiM96EJPpH5wuII1nQloNyyX5Ok6KbS7IZLSH0IbS5r4sz+qHmPMOKuU1/IK0rzhx
 61rhS6a7UdjSZi9qPtl1ewVrK8dZNf/NKsIBRZxjyK0vWwENtOsds580dr+sXfro6d5A
 7OvUiOvjovRwnEHWYqaWPJYQQEz3/B3SZmqB1b/tOjwrFngahlclNxRU9/XFCHadHiCM
 +7jmiRUJ3Hu/xy/U6kYNXgljrvZIT80hkaj6lr1JGrtdjnxiLMHBEpYl6UxFbRj4uAbA
 i/WmgPUbwCzp2PvEHVm2ivsHzvapHg2NCVocRkKTv8xeq8nA/A3CuKbJrp7l1WijPm43
 oV+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wxxxrjLDsuV8pep8Q6zooUZvw1xdxr9qWEB/PyRn/HQ=;
 b=P3Ur0INPIVulHp88+Fr3C4e3ebPx1pyTg+pmEDDmtCOKhTL4si1okE0xx5XldbMK8i
 yLZ+dntORIsQqgOchGpAjJFEnUd6XSKx8pQ5Z/2hLZgfrOQI41YXMe9MsaDGWmd9+Wck
 ogDSdXlQWdk9J+SoOkCFEDLbA6s7CPAn06pDxKGFlmphNXBs6ZYvEEQ2fIwuv5bp7pJt
 0GpnKQ4Tc6FgDXEM2UCIZ9PT6x7TpVu/I2N2gDvhEnkaRc5rHvCZVOrLoafOG40dniaS
 GX/ewR31Sbsw4Lzj5p++Sgsyi7LyUr7DO1tGwoph/alyDqb/+eDYPiDBPdEz+ID60HNd
 6nAw==
X-Gm-Message-State: APjAAAVW+ZAk9akCVvFobnLu9GwQvMLTasGwSwIta2AyHj3EZtpkkbJ3
 JKoZwNrMBmUfjj11NuxF2E1yZXI8eheuXFSPfDa6
X-Google-Smtp-Source: APXvYqy1ORP3msMjqdOeliy5cxK2P/sWdRr354WmU6GKWODPQR8p3q21TAGioL0OV/3NrnIFCJd6i6xFB41R7zhYH50=
X-Received: by 2002:a05:600c:2215:: with SMTP id
 z21mr23543528wml.55.1580646638729; 
 Sun, 02 Feb 2020 04:30:38 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
 <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
 <CADnnUqe1GrqJ5EUQQoPp063bs9SqQkHUSqK_hcWqpkJQcxySTg@mail.gmail.com>
 <CAOnJCULxNeuS3v1UEFAC_uG4heQfR3QCK-STv48LCK1pbH-18A@mail.gmail.com>
 <94ee0543-e0e6-2be4-9168-e0c8a55ca92a@williamgrant.id.au>
 <CADnnUqduWL2gMBASF=8OX8huALW9Z2tWz73kcjDK5GL+xHtsbw@mail.gmail.com>
 <40bc5468-21e8-f6ac-fcb6-eff2efa7fd13@williamgrant.id.au>
In-Reply-To: <40bc5468-21e8-f6ac-fcb6-eff2efa7fd13@williamgrant.id.au>
From: Atish Patra <atishp@atishpatra.org>
Date: Sun, 2 Feb 2020 04:30:27 -0800
Message-ID: <CAOnJCUKTDTjB8rAov8XLkfT+PAymstcy6y4A75ijRstK6y202A@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: William Grant <me@williamgrant.id.au>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_043042_145822_79386568 
X-CRM114-Status: GOOD (  36.52  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 1, 2020 at 3:37 PM William Grant <me@williamgrant.id.au> wrote:
>
> On 2/2/20 5:58 am, Carlos Eduardo de Paula wrote:
> > Hi Atish, I've added that patch to latest OpenSBI from master, dd'ed
> > it to my mmcblk0p3 partition but still got problems building Golang
> > using kernel v5.5.
> >
> > [... snip ...]
> >
> > Did it worked for you William?
> >
> > Carlos
>
> Ah, sorry, I didn't actually test Atish's patch. It's not quite right,
> since .tlb_range_flush_limit = 0 implies the default is used. I think
> setting it to 1 should work,

My bad. That's what happens when you are jet lagged and sent a patch
at 5AM without testing :(.
Ideally, it should be set to zero. I have fixed the issue in platform
header and sent a patch series.

http://lists.infradead.org/pipermail/opensbi/2020-February/001060.html

but I hadn't noticed the parameter so I'd
> just been adjusting sbi_tlb_sfence_vma to have the same bug Linux did:
> treat page-size flushes as full ones.
>
> diff --git a/lib/sbi/sbi_tlb.c b/lib/sbi/sbi_tlb.c
> index 072915f..165432a 100644
> --- a/lib/sbi/sbi_tlb.c
> +++ b/lib/sbi/sbi_tlb.c
> @@ -70,7 +70,8 @@ static void sbi_tlb_sfence_vma(struct sbi_tlb_info *tinfo)
>         unsigned long size  = tinfo->size;
>         unsigned long i;
>
> -       if ((start == 0 && size == 0) || (size == SBI_TLB_FLUSH_ALL)) {
> +       if ((start == 0 && size == 0) || (size == SBI_TLB_FLUSH_ALL)
> +           || (size == PAGE_SIZE)) {
>                 sbi_tlb_flush_all();
>                 return;
>         }
>
> > On Sat, Feb 1, 2020 at 2:08 AM William Grant <me@williamgrant.id.au> wrote:
> >>
> >> On 1/2/20 3:58 pm, Atish Patra wrote:
> >>> On Fri, Jan 31, 2020 at 8:32 AM Carlos Eduardo de Paula
> >>> <me@carlosedp.com> wrote:
> >>>>
> >>>> Updating this issue, I've built the same Golang tree (master) on Qemu
> >>>> using the same kernel Image v5.5.0 I have on Unleashed and it built
> >>>> successfully:
> >>>>
> >>>> root@qemuriscv:~/go/src# time ./make.bash
> >>>> Building Go cmd/dist using /root/go-linux-riscv64-bootstrap. (devel
> >>>> +a858d15f11 13 hours ago linux/riscv64)
> >>>> Building Go toolchain1 using /root/go-linux-riscv64-bootstrap.
> >>>> Building Go bootstrap cmd/go (go_bootstrap) using Go toolchain1.
> >>>> Building Go toolchain2 using go_bootstrap and Go toolchain1.
> >>>> Building Go toolchain3 using go_bootstrap and Go toolchain2.
> >>>> Building packages and commands for linux/riscv64.
> >>>> ---
> >>>> Installed Go for linux/riscv64 in /root/go
> >>>> Installed commands in /root/go/bin
> >>>>
> >>>> real    43m19.946s
> >>>> user    120m34.147s
> >>>> sys    66m34.964s
> >>>> Linux qemuriscv 5.5.0-dirty #3 SMP Fri Jan 31 00:13:59 -02 2020
> >>>> riscv64 GNU/Linux
> >>>> root@qemuriscv:~/go/src# ../bin/go version
> >>>> go version devel +6e592c2 Fri Jan 31 14:46:05 2020 +0000 linux/riscv64
> >>>>
> >>>>
> >>>> Also tried updating to latest opensbi commit as of today and still
> >>>> seeing same error on Unleashed.
> >>>>
> >>>>
> >>>
> >>> Resending it as 1st one did not seem to go through for some reason
> >>>
> >>> You might be hitting the tlb flushing hardware errata on unleashed.
> >>> IIRC, anything other than full tlb flush
> >>> is broken on unleashed. I don't have the exact errata number or a link
> >>> that I can point to. May be Paul or somebody else from sifive
> >>> can share that so that we can document it as well.
> >>>
> >>> Can you try this patch in OpenSBI? This forces OpenSBI to do a full
> >>> flush every time for HiFive Unleashed.
> >>
> >> I've separately been trying to track this down for a couple of days, and
> >> indeed, adjusting OpenSBI to always do a full flush is the easiest
> >> workaround. I haven't seen any public reference to TLB errata on the
> >> SoC, but it would explain a lot.
> >>
> >> For now I've found that existing kernels with OpenSBI patched to always
> >> do a full flush, or kernels patched to do a full flush at the end of
> >> wp_page_copy, get Go building stably. I don't know if there's something
> >> special about wp_page_copy that tickles the bug, or if it's just called
> >> often enough that it papers over incomplete flushes elsewhere.
> >>
> >>> diff --git a/platform/sifive/fu540/platform.c b/platform/sifive/fu540/platform.c
> >>> index c8ead9dede23..e36338d2903f 100644
> >>> --- a/platform/sifive/fu540/platform.c
> >>> +++ b/platform/sifive/fu540/platform.c
> >>> @@ -218,5 +218,6 @@ const struct sbi_platform platform = {
> >>>         .hart_count             = FU540_HART_COUNT,
> >>>         .hart_stack_size        = FU540_HART_STACK_SIZE,
> >>>         .disabled_hart_mask     = FU540_HARITD_DISABLED,
> >>> +       .tlb_range_flush_limit  = 0,
> >>>         .platform_ops_addr      = (unsigned long)&platform_ops
> >>>  };
> >>>
> >>>> On Fri, Jan 31, 2020 at 11:20 AM Carlos Eduardo de Paula
> >>>> <me@carlosedp.com> wrote:
> >>>>>
> >>>>> My board is running:
> >>>>>
> >>>>> SiFive FSBL:       2018-03-20
> >>>>> OpenSBI v0.5-44-g049ad0b
> >>>>> U-Boot 2020.01-dirty (Jan 08 2020 - 18:05:52 -0200)
> >>>>>
> >>>>> All build on january 8 using the guide I've wrote here
> >>>>> (https://github.com/carlosedp/riscv-bringup/tree/master/unleashed)
> >>>>> after our talks.
> >>>>>
> >>>>> Haven't tested newer versions on Qemu, might build it to give a try. I
> >>>>> have v5.4-rc3 built for Qemu and it works fine.
> >>>>>
> >>>>> Carlos
> >>>>>
> >>>>> On Fri, Jan 31, 2020 at 10:32 AM David Abdurachmanov
> >>>>> <david.abdurachmanov@gmail.com> wrote:
> >>>>>>
> >>>>>> On Fri, Jan 31, 2020 at 2:14 PM Carlos Eduardo de Paula
> >>>>>> <me@carlosedp.com> wrote:
> >>>>>>>
> >>>>>>> Golang has been recently upstreamed and I've been building multiple
> >>>>>>> versions on my Unleashed board successfully with kernel 5.3-rc4 and
> >>>>>>> previous.
> >>>>>>>
> >>>>>>> I noticed that after I updated my Kernel from v5.3-rc4 to v5.5-rc5,
> >>>>>>> Golang doesn't build anymore failing on multiple points and
> >>>>>>> segfaulting as well.
> >>>>>>
> >>>>>> Could you also mention what version of OpenSBI you use?
> >>>>>> Does it also fail on QEMU (avoid 4.2.0) or only on Unleashed?
> >>>>>>
> >>>>>>>
> >>>>>>> I've captured a few logs with the error building here:
> >>>>>>>
> >>>>>>> I've bisected the versions between v5.4-rc3 and v5.4 and it pointed
> >>>>>>> out that the commit below is the starting point.
> >>>>>>>
> >>>>>>> eb93685847a9055283d05951c1b205e737f38533 is the first bad commit
> >>>>>>> commit eb93685847a9055283d05951c1b205e737f38533
> >>>>>>> Author: Paul Walmsley <paul.walmsley@sifive.com>
> >>>>>>> Date: Wed Aug 7 19:07:34 2019 -0700
> >>>>>>>
> >>>>>>> riscv: fix flush_tlb_range() end address for flush_tlb_page()
> >>>>>>>
> >>>>>>> The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
> >>>>>>> is set is wrong. It passes zero to flush_tlb_range() as the final
> >>>>>>> address to flush, but it should be at least 'addr'.
> >>>>>>>
> >>>>>>> Some other Linux architecture ports use the beginning address to
> >>>>>>> flush, plus PAGE_SIZE, as the final address to flush. This might
> >>>>>>> flush slightly more than what's needed, but it seems unlikely that
> >>>>>>> being more clever would improve anything. So let's just take that
> >>>>>>> implementation for now.
> >>>>>>>
> >>>>>>> While here, convert the macro into a static inline function, primarily
> >>>>>>> to avoid unintentional multiple evaluations of 'addr'.
> >>>>>>>
> >>>>>>> This second version of the patch fixes a coding style issue found by
> >>>>>>> Christoph Hellwig <hch@lst.de>.
> >>>>>>>
> >>>>>>> Reported-by: Andreas Schwab <schwab@suse.de>
> >>>>>>> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> >>>>>>> Reviewed-by: Christoph Hellwig <hch@lst.de>
> >>>>>>>
> >>>>>>> :040000 040000 1a4ee20b3614c93de2a925bba2df6f2e1518f227
> >>>>>>> 6b4ffd3e1a2245912cf734a8a3f61db7eb0ccd67 M arch
> >>>>>>>
> >>>>>>>> git bisect visualize
> >>>>>>> eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> >>>>>>> for flush_tlb_page() HEAD, refs/bisect/bad
> >>>>>>>
> >>>>>>>
> >>>>>>>> git diff eb93685^!
> >>>>>>>
> >>>>>>> ```diff
> >>>>>>> diff --git a/arch/riscv/include/asm/tlbflush.h
> >>>>>>> b/arch/riscv/include/asm/tlbflush.h
> >>>>>>> index 687dd19..4d9bbe8 100644
> >>>>>>> --- a/arch/riscv/include/asm/tlbflush.h
> >>>>>>> +++ b/arch/riscv/include/asm/tlbflush.h
> >>>>>>> @@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct
> >>>>>>> cpumask *cmask, unsigned long start,
> >>>>>>> }
> >>>>>>>
> >>>>>>> #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> >>>>>>> -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> >>>>>>> +
> >>>>>>> #define flush_tlb_range(vma, start, end) \
> >>>>>>> remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> >>>>>>> -#define flush_tlb_mm(mm) \
> >>>>>>> +
> >>>>>>> +static inline void flush_tlb_page(struct vm_area_struct *vma,
> >>>>>>> + unsigned long addr)
> >>>>>>> +{
> >>>>>>> + flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> >>>>>>> +}
> >>>>>>> +
> >>>>>>> +#define flush_tlb_mm(mm) \
> >>>>>>> remote_sfence_vma(mm_cpumask(mm), 0, -1)
> >>>>>>>
> >>>>>>> #endif /* CONFIG_SMP */
> >>>>>>> ```
> >>>>>>>
> >>>>>>> I was not able to revert this change from recent v5.5.0 so I don't
> >>>>>>> know if this is the problem or some close commits:
> >>>>>>>
> >>>>>>>> git log 2b245b8b..2f478b60 |grep riscv
> >>>>>>> 2f478b6 N 6 months ago Linus..Merge tag 'riscv/for-v5.3-rc5' of
> >>>>>>> git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> >>>>>>> 69703eb N 6 months ago Vince..riscv: Make __fstate_clean() work correctly.
> >>>>>>> 8ac71d7 N 6 months ago Vince..riscv: Correct the initialized flow of FP register
> >>>>>>> eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> >>>>>>> for flush_tlb_page()
> >>>>>>>
> >>>>>>> Carlos
> >>>>>>> --
> >>>>>>> ________________________________________
> >>>>>>> Carlos Eduardo de Paula
> >>>>>>> me@carlosedp.com
> >>>>>>> http://carlosedp.com
> >>>>>>> http://twitter.com/carlosedp
> >>>>>>> Linkedin
> >>>>>>> ________________________________________
> >>>>>>>
> >>>>>>
> >>>>>
> >>>>>
> >>>>> --
> >>>>> ________________________________________
> >>>>> Carlos Eduardo de Paula
> >>>>> me@carlosedp.com
> >>>>> http://carlosedp.com
> >>>>> http://twitter.com/carlosedp
> >>>>> Linkedin
> >>>>> ________________________________________
> >>>>
> >>>>
> >>>>
> >>>> --
> >>>> ________________________________________
> >>>> Carlos Eduardo de Paula
> >>>> me@carlosedp.com
> >>>> http://carlosedp.com
> >>>> http://twitter.com/carlosedp
> >>>> Linkedin
> >>>> ________________________________________
> >>>>
> >>>
> >>>
> >>
> >>
> >
> >
>
>


-- 
Regards,
Atish

