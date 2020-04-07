Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128FA1A0E1F
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Apr 2020 15:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zy4GWkHjoSAA1VBEBggmBAO3XC31aJRabe80zBna8OQ=; b=GeyPMh+8iI2DfA/Xf6mOnoewl
	Y9az2VTb4DMMW4cAj/2MuJWm2DEiDjvE8IUiHmS33BAtXYaTWcWVbuQcBCkkTYhdYYXQAK6XUaqEL
	lt+4Y+B5gqaDzer3hhliAqlfO2BSLEa6F7k+STzJta+nHiRy5wcf3Z7s6KrUWLzilimkG9NomxpyM
	zW8Y07+/c/CsQkDqrS0tUQKK5AeIKSx0ym9NK382AUUy6LEPTRU8yaffD3RkD7HSMVWvqw1NjuqP5
	3Q0RJGLhB942ORPimbmOEz7Dtik22j9VU2orTXIZD/s1/kgrQERKYmQgwflfKqNwuxdfFg3S2tK45
	C7SoGN29A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnvu-0008EU-7d; Tue, 07 Apr 2020 13:06:26 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnvj-00086O-Mm
 for linux-riscv@lists.infradead.org; Tue, 07 Apr 2020 13:06:19 +0000
Received: by mail-ot1-x343.google.com with SMTP id t28so3006028ott.5
 for <linux-riscv@lists.infradead.org>; Tue, 07 Apr 2020 06:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zy4GWkHjoSAA1VBEBggmBAO3XC31aJRabe80zBna8OQ=;
 b=Wi+tsH87h9dbxKaSway7BosMBbnj9lbUAyXu8vVb6Tay1JEaiyBABT+84KTuVY015i
 ebtQKpQTyS7TdbLbDzvLo3/1vL8D3PFkX1vCh8MfhZc0bfuDOD0JZZu1RKZ1ItDFLp+x
 s6sP6tLPzgwJpLbLiiv3jsx/+Ky3/yHCZv4TEVH6gvgkEd+LoDxXdYOrm00fTJ7Sy1Oj
 bMRaFofflgwerKQccxWr1JOVnI5YqKoCJKR0Np81yByRUgyfY3j6YbVo1/QOMa1ZGGvp
 XboKSw6xNDcY4YaUzYLb1KeAteU5G4zDsW8IeVG8Dl/gnc/ZLvAFm8CS3a8BkeEP4r5p
 Bafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zy4GWkHjoSAA1VBEBggmBAO3XC31aJRabe80zBna8OQ=;
 b=X3rRGjw6hN2l+HbqC2TdQswjBvAS4DOP8n06eU9Zj935eDeDag52xKDGUjSBnVaVan
 2KnT1yOXZJscpf5YyXyi6Dq4kvUjtcQaoT2MjrmYLCnDlNO1VdqmYAj8gYfGSmsLtx7l
 uM/RHBmk+LHb1IigmY0kehFnxVKF1rOtN0+svKN7Xh8U/WD+lNLtoH580sw7pD0SwKxw
 /liJUo8uFxwzSqbBlJPOZMJfZL52J2uGTQxRgRjQQSkdONvqddlQDS8/fldaJdZxJbzY
 m+Ji0okzVGG/W0X5fhGKMz9cJoR9oAr5sEHFpdrWFePoOGhQPPQHmP3ikUk4XJn7HnYh
 QaCw==
X-Gm-Message-State: AGi0PuZ/EcT6oZUCMuflJnFvUMnUpfow8YIg5fQo4JnzhFqsOIH1DEG7
 07CpwO4rlRfQI9K4OHU4g5WsClK6gpRFesJ/sYoBjnl9
X-Google-Smtp-Source: APiQypIckQZczrq6aOypQnjmXlu94DvKi0YVMscljP7fcg7xonh24elNrsNnlDz+oSYlSdf/8qu5YncoRQ/HLKn53cc=
X-Received: by 2002:a05:6830:1e10:: with SMTP id
 s16mr1475505otr.33.1586264773945; 
 Tue, 07 Apr 2020 06:06:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583772574.git.zong.li@sifive.com>
 <d27d9e68491e1df67dbee6c22df6a72ff95bab18.1583772574.git.zong.li@sifive.com>
 <20200401003233.17fe4b6f7075e5b8f0ed5114@kernel.org>
 <CANXhq0ra3o+mgenbYLq_q0eZY2KiXNpWmo2V0amD0cFDqCQkXw@mail.gmail.com>
 <20200402101733.1ef240faeaeada6e4d38ae80@kernel.org>
 <CANXhq0rMbkNxQ3_qqYEKe8DSbL-vfQku6V9a81Hy9cxW4LaW9g@mail.gmail.com>
 <20200404121428.596911ba5653f8b18a80eab2@kernel.org>
 <CANXhq0rc+6jor7CMaa-zqSn3vNBdJhj3gD5wGxPkXAtVVHDHdQ@mail.gmail.com>
 <CANXhq0psUB4OaFuoTu-VuQNdaVOBs2UCv5kjx1Oad6rwajA1_Q@mail.gmail.com>
 <20200407212918.235324cbc82e9e4deb839b14@kernel.org>
In-Reply-To: <20200407212918.235324cbc82e9e4deb839b14@kernel.org>
From: Zong Li <zong.li@sifive.com>
Date: Tue, 7 Apr 2020 21:06:03 +0800
Message-ID: <CANXhq0rDbc3tTd2pq1xLT09JSb=Qdr-xpQM2Kwfp72WZFoqCjA@mail.gmail.com>
Subject: Re: [PATCH v3 8/9] riscv: introduce interfaces to patch kernel code
To: Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_060616_140634_CF7F018A 
X-CRM114-Status: GOOD (  25.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 8:29 PM Masami Hiramatsu <mhiramat@kernel.org> wrote:
>
> On Mon, 6 Apr 2020 18:36:42 +0800
> Zong Li <zong.li@sifive.com> wrote:
>
> > On Sat, Apr 4, 2020 at 8:12 PM Zong Li <zong.li@sifive.com> wrote:
> > >
> > > On Sat, Apr 4, 2020 at 11:14 AM Masami Hiramatsu <mhiramat@kernel.org> wrote:
> > > >
> > > > Hi Zong,
> > > >
> > > > On Fri, 3 Apr 2020 17:04:51 +0800
> > > > Zong Li <zong.li@sifive.com> wrote:
> > > >
> > > > > > > > > +{
> > > > > > > > > +     void *waddr = addr;
> > > > > > > > > +     bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
> > > > > > > > > +     unsigned long flags = 0;
> > > > > > > > > +     int ret;
> > > > > > > > > +
> > > > > > > > > +     raw_spin_lock_irqsave(&patch_lock, flags);
> > > > > > > >
> > > > > > > > This looks a bit odd since stop_machine() is protected by its own mutex,
> > > > > > > > and also the irq is already disabled here.
> > > > > > >
> > > > > > > We need it because we don't always enter the riscv_patch_text_nosync()
> > > > > > > through stop_machine mechanism. If we call the
> > > > > > > riscv_patch_text_nosync() directly, we need a lock to protect the
> > > > > > > page.
> > > > > >
> > > > > > Oh, OK, but it leads another question. Is that safe to patch the
> > > > > > text without sync? Would you use it for UP system?
> > > > > > I think it is better to clarify "in what case user can call _nosync()"
> > > > > > and add a comment on it.
> > > > >
> > > > > The ftrace is one of the cases, as documentation of ftrace said, when
> > > > > dynamic ftrace is initialized, it calls kstop_machine to make the
> > > > > machine act like a uniprocessor so that it can freely modify code
> > > > > without worrying about other processors executing that same code. So
> > > > > the ftrace called the _nosync interface here directly.
> > > >
> > > > Hmm, even though, since it already running under kstop_machine(), no
> > > > other thread will run.
> > > > Could you consider to use text_mutex instead of that? The text_mutex
> > > > is already widely used in x86 and kernel/kprobes.c etc.
> > > >
> > > > (Hmm, it seems except for x86, alternative code don't care about
> > > >  racing...)
> > > >
> >
> > The mutex_lock doesn't seem to work in ftrace context, I think it
> > might be the reason why other architectures didn't use text_mutex in
> > somewhere.
>
> Yes, you need to implement ftrace_arch_code_modify_prepare() and
> ftrace_arch_code_modify_post_process() in arch/riscv/kernel/ftrace.c.
> Please see arch/x86/kernel/ftrace.c.
>

Oh ok, I misunderstood it before, I just use text_mutex instead of
patch_lock in patch.c. Thanks.

> Thank you,
>
> >
> > # echo function > current_tracer
> > [   28.198070] BUG: sleeping function called from invalid context at
> > kernel/locking/mutex.c:281
> > [   28.198663] in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid:
> > 11, name: migration/0
> > [   28.199491] CPU: 0 PID: 11 Comm: migration/0 Not tainted
> > 5.6.0-00012-gd6f56a7a4be2-dirty #10
> > [   28.200330] Call Trace:
> > [   28.200798] [<ffffffe00060319a>] walk_stackframe+0x0/0xcc
> > [   28.201395] [<ffffffe000603442>] show_stack+0x3c/0x46
> > [   28.200798] [<ffffffe00060319a>] walk_stackframe+0x0/0xcc
> > [   28.201395] [<ffffffe000603442>] show_stack+0x3c/0x46
> > [   28.201898] [<ffffffe000d498b0>] dump_stack+0x76/0x90
> > [   28.202329] [<ffffffe00062c3f0>] ___might_sleep+0x100/0x10e
> > [   28.202720] [<ffffffe00062c448>] __might_sleep+0x4a/0x78
> > [   28.203033] [<ffffffe000d61622>] mutex_lock+0x2c/0x54
> > [   28.203397] [<ffffffe00060393e>] patch_insn_write+0x32/0xd8
> > [   28.203780] [<ffffffe000603a94>] patch_text_nosync+0x10/0x32
> > [   28.204139] [<ffffffe0006051b0>] __ftrace_modify_call+0x5c/0x6c
> > [   28.204497] [<ffffffe0006052c6>] ftrace_update_ftrace_func+0x20/0x4a
> > [   28.204919] [<ffffffe000697742>] ftrace_modify_all_code+0xa0/0x148
> > [   28.205378] [<ffffffe0006977fc>] __ftrace_modify_code+0x12/0x1c
> > [   28.205793] [<ffffffe0006924b6>] multi_cpu_stop+0xa2/0x158
> > [   28.206147] [<ffffffe0006921b0>] cpu_stopper_thread+0xa4/0x13a
> > [   28.206510] [<ffffffe000629f38>] smpboot_thread_fn+0xf8/0x1da
> > [   28.206868] [<ffffffe000625f36>] kthread+0xfa/0x12a
> > [   28.207201] [<ffffffe0006017e2>] ret_from_exception+0x0/0xc
> >
> > >
> > > Yes, text_mutex seems to be great. I'll change to use text_mutex in
> > > the next version if it works fine after testing. Thanks.
> > >
> > > > Thank you,
> > > > --
> > > > Masami Hiramatsu <mhiramat@kernel.org>
>
>
> --
> Masami Hiramatsu <mhiramat@kernel.org>

