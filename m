Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB5AFB420
	for <lists+linux-riscv@lfdr.de>; Wed, 13 Nov 2019 16:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWmD4brqu5aylU8JVHjHl51hhv3H17Fuszmyfq0D4wg=; b=TmMLTbn7S9mT62
	U6QaGUtyB8OgkFW8ayLxSwGWY7k0Q7hs9zp9xmOTbTfA9aCRfrehYBmaWiLeZHEzt0mj5cL8VjvLh
	4kcfHOKIYERFKQen3ZSeohBvvx8BUFpsFqBUOdAC8U77eG5cQeS+9waYRL/4+ZB40Rw2w5+DGxdeY
	IyVso994ULLlwCgBLDODlteFomt3/Z927HSIqQ55lUeSUPqBHBsrDh/A5YeKltBn424lz3BrLFZwe
	SrT1LM9ZNFVtCM0khgl8V3RLM76q7dvISipT9O5HBdu3msqbWf3RSqDQE3INoiyDFTzCL67ySWKgj
	gWNBw57R0Btj2hTpeIwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuu0-0002vH-NP; Wed, 13 Nov 2019 15:49:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUutx-0002ur-LN
 for linux-riscv@lists.infradead.org; Wed, 13 Nov 2019 15:49:50 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26B8222B4B;
 Wed, 13 Nov 2019 15:49:47 +0000 (UTC)
Date: Wed, 13 Nov 2019 10:49:45 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 01/50] kallsyms/printk: Add loglvl to print_ip_sym()
Message-ID: <20191113104945.604e34d2@gandalf.local.home>
In-Reply-To: <20191106030542.868541-2-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-2-dima@arista.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_074949_717271_8D6A102D 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Juri Lelli <juri.lelli@redhat.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 James Hogan <jhogan@kernel.org>, Dmitry Safonov <0x7f454c46@gmail.com>,
 linux-mips@vger.kernel.org, Ben Segall <bsegall@google.com>,
 linux-riscv@lists.infradead.org, Vincent Chen <deanbo422@gmail.com>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Paul Burton <paulburton@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mel Gorman <mgorman@suse.de>,
 Jiri Slaby <jslaby@suse.com>, Petr Mladek <pmladek@suse.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Greentime Hu <green.hu@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Michal Simek <monstr@monstr.eu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed,  6 Nov 2019 03:04:52 +0000
Dmitry Safonov <dima@arista.com> wrote:

> --- a/kernel/trace/ftrace.c
> +++ b/kernel/trace/ftrace.c
> @@ -2002,12 +2002,12 @@ void ftrace_bug(int failed, struct dyn_ftrace *rec)
>  	case -EFAULT:
>  		FTRACE_WARN_ON_ONCE(1);
>  		pr_info("ftrace faulted on modifying ");

Hmm, I wonder if I should change that from info to something more
important, as this is important information for debugging. But this has
nothing to do with this patch set.

> -		print_ip_sym(ip);
> +		print_ip_sym(KERN_INFO, ip);

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

>  		break;
>  	case -EINVAL:
>  		FTRACE_WARN_ON_ONCE(1);
>  		pr_info("ftrace failed to modify ");
> -		print_ip_sym(ip);
> +		print_ip_sym(KERN_INFO, ip);
>  		print_ip_ins(" actual:   ", (unsigned char *)ip);
>  		pr_cont("\n");
>  		if (ftrace_expected) {
> @@ -2018,12 +2018,12 @@ void ftrace_bug(int failed, struct dyn_ftrace *rec)
>  	case -EPERM:
>  		FTRACE_WARN_ON_ONCE(1);
>  		pr_info("ftrace faulted on writing ");
> -		print_ip_sym(ip);
> +		print_ip_sym(KERN_INFO, ip);
>  		break;
>  	default:
>  		FTRACE_WARN_ON_ONCE(1);
>  		pr_info("ftrace faulted on unknown error ");
> -		print_ip_sym(ip);
> +		print_ip_sym(KERN_INFO, ip);
>  	}
>  	print_bug_type();
>  	if (rec) {


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
