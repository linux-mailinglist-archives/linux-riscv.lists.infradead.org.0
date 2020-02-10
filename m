Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3721156D58
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 02:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YaJmwBnpr3E8kisAW5q06O5gG08ip3sn9QyXKT4wk/o=; b=La0Ge24+yh9KxJvBDz3uYJ3up
	g7zstljxh8mU97fXMg3QQgSvhLD9fsI6ztQXO64o6dEcL1aUToR48CkKxDYG7CfuR7mnelf9Enqju
	O5FwjjTs7r/uotZolboMK83wsKfYS8OkHV05vOls25Kys7Lhy25DkDMy898srZmEhd/RPT+y/uuZU
	1FkOwG5X/N62U0HJHWOKjKwsnmQLOTOupskdvKvJ2AzdBliS4LlMN34OL4pd3nCzekrCDJqMTt5sf
	mtn8bdwu1e6O2H3k9BhlzGaYVRhAVn+07q3rrJ476mdsBAl6jdEFWFNwtndh0VtNaPzM7nUElJgf1
	rIhyys4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0xbq-000140-L5; Mon, 10 Feb 2020 01:11:34 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0xbn-00012I-2v
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 01:11:32 +0000
Received: by mail-oi1-x242.google.com with SMTP id i1so7670974oie.8
 for <linux-riscv@lists.infradead.org>; Sun, 09 Feb 2020 17:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YaJmwBnpr3E8kisAW5q06O5gG08ip3sn9QyXKT4wk/o=;
 b=YwjCn3ZVO8bzbEdT0x+RpLLQQwUYcoJpH2H7z2govbEsy4y6la4Y5Byb+pOG/QhS1Q
 aN81ATOBUPepN0jSyNuthUoHRa0KLKmOZzDXmrIYmI6di6pItBhuTRIR5BgHwZQomR1S
 Jjr7yKhENjyLAnrnqkE9HS+A+s4/3wdWgqI9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YaJmwBnpr3E8kisAW5q06O5gG08ip3sn9QyXKT4wk/o=;
 b=VdM6eXKSbF8Gv2gL12XOXZZqHkzyCeg1FpycG23rrUDSPj7oyiBSYMWssulagwx5GA
 JTQGZrwAd876MsHt5ky5n5EZR3osyzt9mvNP7V3+sfRnflM8wwkS0e/+Z3p86dRBUEft
 0fMjUFC68XYXg5hyZ67/wisfIW1+wC7N/0y5kn9O6HTzZtSEKxNvFS5rLAxp/J6H6xbo
 FA6VIn9+pctiU7ccDSoBueIqNV5X43rwTSoEYUAHcpoqX5jMGNiGG7txuYbPTXUM1ETl
 BEX6QDQxzmij+rzJp/aPaKoLw4uhK45tJ10Ecp7PrFgX1kB9oI1esIQPfhIynGP0uwGL
 NgJQ==
X-Gm-Message-State: APjAAAXlfPADZ2uwLc2pmhrg6/DeT06RBInJ+p9kK71T705VE815bQu1
 +ANGL3CRtg6CsFxwXq7uH0j63A==
X-Google-Smtp-Source: APXvYqy7ARE8LKD639+raqmWpIr6FSJ5lMe2XE9arL++XQjmHquM1EgXJYHRionJjs4pcsCzclDXHA==
X-Received: by 2002:aca:d610:: with SMTP id n16mr9280153oig.108.1581297087913; 
 Sun, 09 Feb 2020 17:11:27 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s128sm3497271oia.4.2020.02.09.17.11.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 09 Feb 2020 17:11:26 -0800 (PST)
Date: Sun, 9 Feb 2020 17:11:25 -0800
From: Kees Cook <keescook@chromium.org>
To: Tycho Andersen <tycho@tycho.ws>
Subject: Re: [PATCH] riscv: fix seccomp reject syscall code path
Message-ID: <202002091710.A76877B4@keescook>
References: <20200208151817.12383-1-tycho@tycho.ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200208151817.12383-1-tycho@tycho.ws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_171131_155172_2543C1B3 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Abdurachmanov <david.abdurachmanov@gmail.com>,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 Andy Lutomirski <luto@amacapital.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 08, 2020 at 08:18:17AM -0700, Tycho Andersen wrote:
> If secure_computing() rejected a system call, we were previously setting
> the system call number to -1, to indicate to later code that the syscall
> failed. However, if something (e.g. a user notification) was sleeping, and
> received a signal, we may set a0 to -ERESTARTSYS and re-try the system call
> again.
> 
> In this case, seccomp "denies" the syscall (because of the signal), and we
> would set a7 to -1, thus losing the value of the system call we want to
> restart.
> 
> Instead, let's return -1 from do_syscall_trace_enter() to indicate that the
> syscall was rejected, so we don't clobber the value in case of -ERESTARTSYS
> or whatever.
> 
> This commit fixes the user_notification_signal seccomp selftest on riscv to
> no longer hang. That test expects the system call to be re-issued after the
> signal, and it wasn't due to the above bug. Now that it is, everything
> works normally.
> 
> Note that in the ptrace (tracer) case, the tracer can set the register
> values to whatever they want, so we still need to keep the code that
> handles out-of-bounds syscalls. However, we can drop the comment.
> 
> We can also drop syscall_set_nr(), since it is no longer used anywhere, and
> the code that re-loads the value in a7 because of it.
> 
> Reported in: https://lore.kernel.org/bpf/CAEn-LTp=ss0Dfv6J00=rCAy+N78U2AmhqJNjfqjr2FDpPYjxEQ@mail.gmail.com/
> 
> Reported-by: David Abdurachmanov <david.abdurachmanov@gmail.com>
> Signed-off-by: Tycho Andersen <tycho@tycho.ws>

Funky! Good catch. :)

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> CC: Kees Cook <keescook@chromium.org>
> CC: Andy Lutomirski <luto@amacapital.net>
> CC: Paul Walmsley <paul.walmsley@sifive.com>
> CC: Oleg Nesterov <oleg@redhat.com>
> ---
>  arch/riscv/include/asm/syscall.h |  7 -------
>  arch/riscv/kernel/entry.S        | 11 +++--------
>  arch/riscv/kernel/ptrace.c       | 11 +++++------
>  3 files changed, 8 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/riscv/include/asm/syscall.h b/arch/riscv/include/asm/syscall.h
> index 42347d0981e7..49350c8bd7b0 100644
> --- a/arch/riscv/include/asm/syscall.h
> +++ b/arch/riscv/include/asm/syscall.h
> @@ -28,13 +28,6 @@ static inline int syscall_get_nr(struct task_struct *task,
>  	return regs->a7;
>  }
>  
> -static inline void syscall_set_nr(struct task_struct *task,
> -				  struct pt_regs *regs,
> -				  int sysno)
> -{
> -	regs->a7 = sysno;
> -}
> -
>  static inline void syscall_rollback(struct task_struct *task,
>  				    struct pt_regs *regs)
>  {
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index bad4d85b5e91..208702d8c18e 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -228,20 +228,13 @@ check_syscall_nr:
>  	/* Check to make sure we don't jump to a bogus syscall number. */
>  	li t0, __NR_syscalls
>  	la s0, sys_ni_syscall
> -	/*
> -	 * The tracer can change syscall number to valid/invalid value.
> -	 * We use syscall_set_nr helper in syscall_trace_enter thus we
> -	 * cannot trust the current value in a7 and have to reload from
> -	 * the current task pt_regs.
> -	 */
> -	REG_L a7, PT_A7(sp)
>  	/*
>  	 * Syscall number held in a7.
>  	 * If syscall number is above allowed value, redirect to ni_syscall.
>  	 */
>  	bge a7, t0, 1f
>  	/*
> -	 * Check if syscall is rejected by tracer or seccomp, i.e., a7 == -1.
> +	 * Check if syscall is rejected by tracer, i.e., a7 == -1.
>  	 * If yes, we pretend it was executed.
>  	 */
>  	li t1, -1
> @@ -334,6 +327,7 @@ work_resched:
>  handle_syscall_trace_enter:
>  	move a0, sp
>  	call do_syscall_trace_enter
> +	move t0, a0
>  	REG_L a0, PT_A0(sp)
>  	REG_L a1, PT_A1(sp)
>  	REG_L a2, PT_A2(sp)
> @@ -342,6 +336,7 @@ handle_syscall_trace_enter:
>  	REG_L a5, PT_A5(sp)
>  	REG_L a6, PT_A6(sp)
>  	REG_L a7, PT_A7(sp)
> +	bnez t0, ret_from_syscall_rejected
>  	j check_syscall_nr
>  handle_syscall_trace_exit:
>  	move a0, sp
> diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> index 407464201b91..444dc7b0fd78 100644
> --- a/arch/riscv/kernel/ptrace.c
> +++ b/arch/riscv/kernel/ptrace.c
> @@ -148,21 +148,19 @@ long arch_ptrace(struct task_struct *child, long request,
>   * Allows PTRACE_SYSCALL to work.  These are called from entry.S in
>   * {handle,ret_from}_syscall.
>   */
> -__visible void do_syscall_trace_enter(struct pt_regs *regs)
> +__visible int do_syscall_trace_enter(struct pt_regs *regs)
>  {
>  	if (test_thread_flag(TIF_SYSCALL_TRACE))
>  		if (tracehook_report_syscall_entry(regs))
> -			syscall_set_nr(current, regs, -1);
> +			return -1;
>  
>  	/*
>  	 * Do the secure computing after ptrace; failures should be fast.
>  	 * If this fails we might have return value in a0 from seccomp
>  	 * (via SECCOMP_RET_ERRNO/TRACE).
>  	 */
> -	if (secure_computing() == -1) {
> -		syscall_set_nr(current, regs, -1);
> -		return;
> -	}
> +	if (secure_computing() == -1)
> +		return -1;
>  
>  #ifdef CONFIG_HAVE_SYSCALL_TRACEPOINTS
>  	if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
> @@ -170,6 +168,7 @@ __visible void do_syscall_trace_enter(struct pt_regs *regs)
>  #endif
>  
>  	audit_syscall_entry(regs->a7, regs->a0, regs->a1, regs->a2, regs->a3);
> +	return 0;
>  }
>  
>  __visible void do_syscall_trace_exit(struct pt_regs *regs)
> -- 
> 2.20.1
> 

-- 
Kees Cook

