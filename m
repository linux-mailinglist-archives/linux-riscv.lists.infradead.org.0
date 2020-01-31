Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C011614EE43
	for <lists+linux-riscv@lfdr.de>; Fri, 31 Jan 2020 15:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ilnme/ZZcgN0fPphJY2aAXIFw1A0QERrV5+fWAeKGe8=; b=qZNIS8k1sY0HRyDgHLX10MCDy
	LD66uie9h6JzeDEgnkTTshWAHootGDUgI6TGgXd97ZYCyvA/lma0HW88CQsbM0R9krttaUffAiA14
	dBbxvmyJ9aC/KvzsEj3Ax14sgfuWl3LlfMH73v5pLICGLKMU3ZDX965hu10jHQTz1V+DlntPNiWqv
	esTSgc1G04dsu5ZaR+E05E0KHimDX0eKdRkIkidlZMThRIydVFczKw+OXaZOaiwb5zhJlsCk5Bwi/
	TvHY1IiOF/8/6CSCkwIT1KbCjmY7ziwm0aU10UTtX/McVMZ55B0J3LbXtNTtY4xawxgYJkBSrO7mD
	4W9VBfehA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixXAQ-0001ao-Mw; Fri, 31 Jan 2020 14:21:06 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixXAK-0001aJ-AQ
 for linux-riscv@lists.infradead.org; Fri, 31 Jan 2020 14:21:04 +0000
Received: by mail-oi1-x243.google.com with SMTP id p125so7352384oif.10
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 06:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ilnme/ZZcgN0fPphJY2aAXIFw1A0QERrV5+fWAeKGe8=;
 b=zy15bew0+ECkMVNfflnUXGUPsFrwTFgKTLdSWZNWZc6TKmGP7EGij3hpiPVGfsAhUS
 JW4Jzd1BkrSUnugHsxlwfpPViiu8F0Bqlg01XsrpW/vTWqPUy02isUHwrfYcoq6jJcbu
 lUxbeuC7Wzy6yRK878d7Hd9cQzuUPxIwqGQZBvAUTpnUZtbr5Dp6J0vui4NziTyoBvTG
 bc9IDTRle56XjatOWPGtTsFwJQF8K+VOzIbc2zwut8MRRsAcQz6J4zJwfJnp5vOm2uG/
 tYkvFUhLYlD0Og+IlchEHsL3+oKqIbH1PR/9Ca7xqUA3/EX6pbKCaDJILFATNeHxo1ep
 81hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ilnme/ZZcgN0fPphJY2aAXIFw1A0QERrV5+fWAeKGe8=;
 b=I0AV8aL0VxrOmoS3R6SC7Ac7caBRN2i/B15/RQtatPlPvMMb+V5/9ERZ7ydGN5qw6P
 L8HmFyqNDLX84ymLGtDHU67SGcYKhEuxLWpkGkFI4y/bm1wj/6Te2RBR1J3a1iEL+9Q+
 iQTv6pb7LLGus9PSsVpXlXhf2i7dU5/I+J+3oSj1fqZMnnVyOxAAAiuDOO/x/do8npbG
 vMKFL7gR+9wwxJ0k2LwNhVO3Gb352D7Wd0RX9EXv3TY9A3ahazHbnNmtHzbjrYu8o4M7
 +Dxvl2R9iv3DfDdx4Fnb1ShL+KkhuP5fO8/IeaWCSPaaMW+tq+yNtD9auGnDMTemEqsn
 fjgA==
X-Gm-Message-State: APjAAAU2b87a71AcD9F+vsg8mfTG9OjCR4QhQ3t1pcOFvkv6hI0AXLS6
 i156UGXELOGHEKKJ8AFce16692tGmYbF/A==
X-Google-Smtp-Source: APXvYqxZ6VWXmGwLnnII4l0qMGPxhGQr1G0xiBXPuAAQyCLVGmf2HHYDKXCh0sVmd+EGgZI19RZhdQ==
X-Received: by 2002:aca:a816:: with SMTP id r22mr6596635oie.1.1580480458580;
 Fri, 31 Jan 2020 06:20:58 -0800 (PST)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com.
 [209.85.167.177])
 by smtp.gmail.com with ESMTPSA id c12sm2714178oic.27.2020.01.31.06.20.57
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Jan 2020 06:20:58 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id p125so7352315oif.10
 for <linux-riscv@lists.infradead.org>; Fri, 31 Jan 2020 06:20:57 -0800 (PST)
X-Received: by 2002:aca:560b:: with SMTP id k11mr4858045oib.53.1580480457506; 
 Fri, 31 Jan 2020 06:20:57 -0800 (PST)
MIME-Version: 1.0
References: <CADnnUqfDnkvCJVqBkDw+gV7_zs5Q_Mb3anQTu+UujjJ8bBk+ng@mail.gmail.com>
 <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
In-Reply-To: <CAEn-LTrSXHdfp9OPGRSoJCfi8D8Cg8FqS=_-JYpDatAT0X5C0w@mail.gmail.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 31 Jan 2020 11:20:46 -0300
X-Gmail-Original-Message-ID: <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
Message-ID: <CADnnUqciAtweH6KqxvK7Z5ZL-uqOQHujWQBrt+aj2y+31BpuHQ@mail.gmail.com>
Subject: Re: Errors and segmentation fault while building Golang on Kernel
 after v5.4-rc3
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_062103_143412_4A921E5A 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
Cc: David Abdurachmanov <david.abdurachmanov@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>, Joel Sing <joel@sing.id.au>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

My board is running:

SiFive FSBL:       2018-03-20
OpenSBI v0.5-44-g049ad0b
U-Boot 2020.01-dirty (Jan 08 2020 - 18:05:52 -0200)

All build on january 8 using the guide I've wrote here
(https://github.com/carlosedp/riscv-bringup/tree/master/unleashed)
after our talks.

Haven't tested newer versions on Qemu, might build it to give a try. I
have v5.4-rc3 built for Qemu and it works fine.

Carlos

On Fri, Jan 31, 2020 at 10:32 AM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Fri, Jan 31, 2020 at 2:14 PM Carlos Eduardo de Paula
> <me@carlosedp.com> wrote:
> >
> > Golang has been recently upstreamed and I've been building multiple
> > versions on my Unleashed board successfully with kernel 5.3-rc4 and
> > previous.
> >
> > I noticed that after I updated my Kernel from v5.3-rc4 to v5.5-rc5,
> > Golang doesn't build anymore failing on multiple points and
> > segfaulting as well.
>
> Could you also mention what version of OpenSBI you use?
> Does it also fail on QEMU (avoid 4.2.0) or only on Unleashed?
>
> >
> > I've captured a few logs with the error building here:
> >
> > I've bisected the versions between v5.4-rc3 and v5.4 and it pointed
> > out that the commit below is the starting point.
> >
> > eb93685847a9055283d05951c1b205e737f38533 is the first bad commit
> > commit eb93685847a9055283d05951c1b205e737f38533
> > Author: Paul Walmsley <paul.walmsley@sifive.com>
> > Date: Wed Aug 7 19:07:34 2019 -0700
> >
> > riscv: fix flush_tlb_range() end address for flush_tlb_page()
> >
> > The RISC-V kernel implementation of flush_tlb_page() when CONFIG_SMP
> > is set is wrong. It passes zero to flush_tlb_range() as the final
> > address to flush, but it should be at least 'addr'.
> >
> > Some other Linux architecture ports use the beginning address to
> > flush, plus PAGE_SIZE, as the final address to flush. This might
> > flush slightly more than what's needed, but it seems unlikely that
> > being more clever would improve anything. So let's just take that
> > implementation for now.
> >
> > While here, convert the macro into a static inline function, primarily
> > to avoid unintentional multiple evaluations of 'addr'.
> >
> > This second version of the patch fixes a coding style issue found by
> > Christoph Hellwig <hch@lst.de>.
> >
> > Reported-by: Andreas Schwab <schwab@suse.de>
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> >
> > :040000 040000 1a4ee20b3614c93de2a925bba2df6f2e1518f227
> > 6b4ffd3e1a2245912cf734a8a3f61db7eb0ccd67 M arch
> >
> > > git bisect visualize
> > eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> > for flush_tlb_page() HEAD, refs/bisect/bad
> >
> >
> > > git diff eb93685^!
> >
> > ```diff
> > diff --git a/arch/riscv/include/asm/tlbflush.h
> > b/arch/riscv/include/asm/tlbflush.h
> > index 687dd19..4d9bbe8 100644
> > --- a/arch/riscv/include/asm/tlbflush.h
> > +++ b/arch/riscv/include/asm/tlbflush.h
> > @@ -53,10 +53,17 @@ static inline void remote_sfence_vma(struct
> > cpumask *cmask, unsigned long start,
> > }
> >
> > #define flush_tlb_all() sbi_remote_sfence_vma(NULL, 0, -1)
> > -#define flush_tlb_page(vma, addr) flush_tlb_range(vma, addr, 0)
> > +
> > #define flush_tlb_range(vma, start, end) \
> > remote_sfence_vma(mm_cpumask((vma)->vm_mm), start, (end) - (start))
> > -#define flush_tlb_mm(mm) \
> > +
> > +static inline void flush_tlb_page(struct vm_area_struct *vma,
> > + unsigned long addr)
> > +{
> > + flush_tlb_range(vma, addr, addr + PAGE_SIZE);
> > +}
> > +
> > +#define flush_tlb_mm(mm) \
> > remote_sfence_vma(mm_cpumask(mm), 0, -1)
> >
> > #endif /* CONFIG_SMP */
> > ```
> >
> > I was not able to revert this change from recent v5.5.0 so I don't
> > know if this is the problem or some close commits:
> >
> > > git log 2b245b8b..2f478b60 |grep riscv
> > 2f478b6 N 6 months ago Linus..Merge tag 'riscv/for-v5.3-rc5' of
> > git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux
> > 69703eb N 6 months ago Vince..riscv: Make __fstate_clean() work correctly.
> > 8ac71d7 N 6 months ago Vince..riscv: Correct the initialized flow of FP register
> > eb93685 N 6 months ago Paul ..riscv: fix flush_tlb_range() end address
> > for flush_tlb_page()
> >
> > Carlos
> > --
> > ________________________________________
> > Carlos Eduardo de Paula
> > me@carlosedp.com
> > http://carlosedp.com
> > http://twitter.com/carlosedp
> > Linkedin
> > ________________________________________
> >
>


-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

