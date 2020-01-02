Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0183C12E7F2
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Jan 2020 16:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3zTnBqkJGK+m0eNIwEfQVQ5QHyVh4amMZNLJjBcpTs=; b=ZxJ/NgXIXmt7W8
	3sX9/gj3YcOF2Ni+VyxQRAraXnvJ62OLcdRxOhNeALgBAJLN7Y254kQc6+RtveT2RiLzI3JoFjP+x
	7XYfY+rbZLuD7IoNBzcE92/haCi4uuo6QgMg0jmwr8aNw3vKxA0RGt4z18eVQ9e/LkOntXTMIpBDf
	SrfYKqja7KqXtBzzaVIJJYeHLdo0YZASj4lH4k/WCVvxXVN65hp3dKY4pEN2qP5mRtZOyb2Cp9plN
	6HzneCZp+9BFaGSWne15P5raS7YlOkk3iECvYpPhoAgnY9Yec/uttAO0Bcn8bBqff41MJFfg+pDaU
	tPhJlWSdicESuD6IlOjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2BK-00007v-C3; Thu, 02 Jan 2020 15:14:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2BF-00007D-DC
 for linux-riscv@lists.infradead.org; Thu, 02 Jan 2020 15:14:35 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60384206E6;
 Thu,  2 Jan 2020 15:14:31 +0000 (UTC)
Date: Thu, 2 Jan 2020 10:14:29 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Zong Li <zong.li@sifive.com>
Subject: Re: [PATCH 0/2] RISC-V: fixes issues of ftrace graph tracer
Message-ID: <20200102101429.383088c7@gandalf.local.home>
In-Reply-To: <CANXhq0qTG-ezdrJpOEd9fhc-_iRL2syASO9KnQxbDfxoVXwfqQ@mail.gmail.com>
References: <20191223084614.67126-1-zong.li@sifive.com>
 <CANXhq0qTG-ezdrJpOEd9fhc-_iRL2syASO9KnQxbDfxoVXwfqQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_071433_466448_9CBC1AEC 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <anup@brainfault.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020 11:50:22 +0800
Zong Li <zong.li@sifive.com> wrote:

> On Mon, Dec 23, 2019 at 4:46 PM Zong Li <zong.li@sifive.com> wrote:
> >
> > Ftrace graph tracer is broken now, these patches fix the problem of ftrace graph
> > tracer and tested on QEMU and HiFive Unleashed board.
> >
> > Zong Li (2):
> >   riscv: ftrace: correct the condition logic in function graph tracer
> >   clocksource/drivers/riscv: add notrace to riscv_sched_clock
> >
> >  arch/riscv/kernel/ftrace.c        | 2 +-
> >  drivers/clocksource/timer-riscv.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > --
> > 2.24.1
> >  
> 
> ping

Both patches look legit.

Reviewed-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

