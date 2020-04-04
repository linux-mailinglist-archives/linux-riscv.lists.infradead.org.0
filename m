Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E0419E270
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Apr 2020 05:14:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQzIJIpQMelVal6iTR5y6Y7xPjfkwcDxzcUjZCqcKEU=; b=rZDqgoilMPppti
	Ds5m+UNJw/q8nXXFG/o5B/l/HhnypDD4zm7tumVJF42XZRUiVGcQdDtUVFFFUKqrf45VIq802Odsi
	SiB+UPZBolDV9mpNE/yjNc1d8Cg43UNcYMpDO7phZSAMB3CidCA/0L3cZy5i++XlyfCgYhPqkXzrD
	xroSpn5cytee6rCm6AXr6bIsuxjxVTVpwZknAYllMKLWkIBWT6x1lZwIznUW7jvan5IH6N9c7UoPg
	n9E+1g7QoInLDIEKcp3pgB/Pq0Ie/FTuVRrlH0PhieOCQv953tIkm2hiLGMiMxmUn7RpfnyQl6JIq
	uSZSFfhP0lb+ijjEcRjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKZGY-0004Pp-JE; Sat, 04 Apr 2020 03:14:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKZGV-0004P9-Ss
 for linux-riscv@lists.infradead.org; Sat, 04 Apr 2020 03:14:37 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B200206E2;
 Sat,  4 Apr 2020 03:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585970074;
 bh=4Lmz+/S7SlPMvBnfl+eEEwjVNnxHk+Bjv+KwNBduwyc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kyIC+9GaonW5ruza0M6g0/ynePvKYZ0yHSqC7gusaQwnIP3H5nakQfDkWHbmmKFTB
 tOxRT39pzl2KMlmDZaYr2Rv4qpbSUY8Kz55Zmrk8Uo4oSmae23hSxxgHIyE7i5ijU2
 nqN9TPh+A0SMorxTDUt97QNxDzS86cp0h9ydJhHA=
Date: Sat, 4 Apr 2020 12:14:28 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH v3 8/9] riscv: introduce interfaces to patch kernel code
Message-Id: <20200404121428.596911ba5653f8b18a80eab2@kernel.org>
In-Reply-To: <CANXhq0rMbkNxQ3_qqYEKe8DSbL-vfQku6V9a81Hy9cxW4LaW9g@mail.gmail.com>
References: <cover.1583772574.git.zong.li@sifive.com>
 <d27d9e68491e1df67dbee6c22df6a72ff95bab18.1583772574.git.zong.li@sifive.com>
 <20200401003233.17fe4b6f7075e5b8f0ed5114@kernel.org>
 <CANXhq0ra3o+mgenbYLq_q0eZY2KiXNpWmo2V0amD0cFDqCQkXw@mail.gmail.com>
 <20200402101733.1ef240faeaeada6e4d38ae80@kernel.org>
 <CANXhq0rMbkNxQ3_qqYEKe8DSbL-vfQku6V9a81Hy9cxW4LaW9g@mail.gmail.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_201435_955466_4F81166B 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Zong,

On Fri, 3 Apr 2020 17:04:51 +0800
Zong Li <zong.li@sifive.com> wrote:

> > > > > +{
> > > > > +     void *waddr = addr;
> > > > > +     bool across_pages = (((uintptr_t) addr & ~PAGE_MASK) + len) > PAGE_SIZE;
> > > > > +     unsigned long flags = 0;
> > > > > +     int ret;
> > > > > +
> > > > > +     raw_spin_lock_irqsave(&patch_lock, flags);
> > > >
> > > > This looks a bit odd since stop_machine() is protected by its own mutex,
> > > > and also the irq is already disabled here.
> > >
> > > We need it because we don't always enter the riscv_patch_text_nosync()
> > > through stop_machine mechanism. If we call the
> > > riscv_patch_text_nosync() directly, we need a lock to protect the
> > > page.
> >
> > Oh, OK, but it leads another question. Is that safe to patch the
> > text without sync? Would you use it for UP system?
> > I think it is better to clarify "in what case user can call _nosync()"
> > and add a comment on it.
> 
> The ftrace is one of the cases, as documentation of ftrace said, when
> dynamic ftrace is initialized, it calls kstop_machine to make the
> machine act like a uniprocessor so that it can freely modify code
> without worrying about other processors executing that same code. So
> the ftrace called the _nosync interface here directly.

Hmm, even though, since it already running under kstop_machine(), no
other thread will run. 
Could you consider to use text_mutex instead of that? The text_mutex
is already widely used in x86 and kernel/kprobes.c etc.

(Hmm, it seems except for x86, alternative code don't care about
 racing...)

Thank you,
-- 
Masami Hiramatsu <mhiramat@kernel.org>

