Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8DCD7B69
	for <lists+linux-riscv@lfdr.de>; Tue, 15 Oct 2019 18:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MxhcrzdBSFqt5AuM6+rsuTbLXXH79QA/y3EI77ur90=; b=aB5dX+bYzXLFxH
	E0NAA4iJM2f/Ge6lrzuitr5itd93r9douZMt8iM+dz9xIFfzID7zmsCEKpnbxGmiw+w+zJa4urMuQ
	48Sohj+W2aZl/KmRcArnoGWi8KHasWVDbwsPflqtvWdbWTTvcV9QiS0vVI/aQusRJn8gk3WrzxSZo
	EQnoO5tslZh0L46zXVOjZp0uYU2RCNomi4cLroqNwxxfJbl/yrC5FjUxsCuueRzblEkIx7Pc1JOzo
	fb3hdELpWEJPxphJGiisOckES88bK5vBsKJB5UMHK9F3pIKTNewSlCNzteTp7SP3s449PKuy0RTSf
	sHLph1U9vUM8j7DM0S1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKPfn-0006IZ-6o; Tue, 15 Oct 2019 16:27:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKPfj-0006ID-7O
 for linux-riscv@lists.infradead.org; Tue, 15 Oct 2019 16:27:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so12787939pfn.11
 for <linux-riscv@lists.infradead.org>; Tue, 15 Oct 2019 09:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2YPG3gRwYfXbp+PqjrfJDTcKIYwl4QysGzAj/FIuSos=;
 b=MXn9aY+e1v9kk20NICPzGvwY+Px1ZIi4lzFWAFpC0mgYifIcIA4Ng8+M/saZ9oWevZ
 5thi8H4LsvXpJWxGVtelermxVi1AOXvSgGBkrczcoQj0t0SGpVvshqREN96VE0z/cBjD
 dCYkKU1SCSnbEcYrjv2tLpwXPFjgHkrNOrUPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2YPG3gRwYfXbp+PqjrfJDTcKIYwl4QysGzAj/FIuSos=;
 b=SW7hSl5IhdITWL6QYx7561R6Hww3W0CVbfoFUzyBRExaqViNPS+TptmFgRMd7jVYR2
 a/1Hh+yhYeYHvvDLsI5zCxR7o65soqnZggP/tHbbJavegrRjbzPM68Klqp0XVwk3hFcq
 zyNLyt1g8cXHhu8RiEDX/OFs6PQYMg51LiVpnAfNkv+lWTpMkylY5SpxjWZHBUjWoxC5
 gREziw6uxGGWvEVz4H5+TnZsWL9WiW4+GgkvEGQF16SMPdrdUyUOBxzH/LJnBk+x+WJi
 C4ptie8jIi0re0wwAGXltIejJVm4kSU0rQrnhvOZGvSVjEai6ZtHrrkKoZorn4xHptWD
 wmdA==
X-Gm-Message-State: APjAAAV2QlcjdR70mgjC7wt1LgqtpF8pdRoFntsoDVOZK8wF6ly/IXtt
 JmdgbSWR7Lmu/r5ydf8Otm0hNg==
X-Google-Smtp-Source: APXvYqxOVSEi7vMIRInZ0gQPRgs8DbiGbhqjaOX4rWv3bmMlkRYwRFZmFztuAZypLKlBXsdmkZZi4A==
X-Received: by 2002:a17:90a:80c2:: with SMTP id
 k2mr43947622pjw.92.1571156861760; 
 Tue, 15 Oct 2019 09:27:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 11sm21224383pgd.0.2019.10.15.09.27.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 09:27:40 -0700 (PDT)
Date: Tue, 15 Oct 2019 09:27:39 -0700
From: Kees Cook <keescook@chromium.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
Message-ID: <201910150926.E621A5B@keescook>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1910041819230.15827@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1910141405220.12988@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1910141405220.12988@viisi.sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_092743_292176_E94D2B8B 
X-CRM114-Status: GOOD (  33.66  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 02:06:07PM -0700, Paul Walmsley wrote:
> Shuah,
> 
> Could you please take a quick look at this and ack it if you're OK with 
> the tools/testing change?  We'd like to get this merged soon.

FWIW, I regularly carry these kinds of selftest changes via my seccomp
tree, so if Shuah is busy, I think it'll be fine to take this in
riscv. If not, I'll take responsibility of apologizing to Shuah! :) :)

-Kees

> 
> - Paul
> 
> 
> On Fri, 4 Oct 2019, Paul Walmsley wrote:
> 
> > Hello Shuah,
> > 
> > On Thu, 22 Aug 2019, David Abdurachmanov wrote:
> > 
> > > This patch was extensively tested on Fedora/RISCV (applied by default on
> > > top of 5.2-rc7 kernel for <2 months). The patch was also tested with 5.3-rc
> > > on QEMU and SiFive Unleashed board.
> > > 
> > > libseccomp (userspace) was rebased:
> > > https://github.com/seccomp/libseccomp/pull/134
> > > 
> > > Fully passes libseccomp regression testing (simulation and live).
> > > 
> > > There is one failing kernel selftest: global.user_notification_signal
> > > 
> > > v1 -> v2:
> > >   - return immediatly if secure_computing(NULL) returns -1
> > >   - fixed whitespace issues
> > >   - add missing seccomp.h
> > >   - remove patch #2 (solved now)
> > >   - add riscv to seccomp kernel selftest
> > > 
> > > Cc: keescook@chromium.org
> > > Cc: me@carlosedp.com
> > > 
> > > Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
> > 
> > We'd like to merge this patch through the RISC-V tree.
> > Care to ack the change to tools/testing/selftests/seccomp/seccomp_bpf.c ?  
> > 
> > Kees has already reviewed it:
> > 
> > https://lore.kernel.org/linux-riscv/CAJr-aD=UnCN9E_mdVJ2H5nt=6juRSWikZnA5HxDLQxXLbsRz-w@mail.gmail.com/
> > 
> > 
> > - Paul
> > 
> > 
> > > ---
> > >  arch/riscv/Kconfig                            | 14 ++++++++++
> > >  arch/riscv/include/asm/seccomp.h              | 10 +++++++
> > >  arch/riscv/include/asm/thread_info.h          |  5 +++-
> > >  arch/riscv/kernel/entry.S                     | 27 +++++++++++++++++--
> > >  arch/riscv/kernel/ptrace.c                    | 10 +++++++
> > >  tools/testing/selftests/seccomp/seccomp_bpf.c |  8 +++++-
> > >  6 files changed, 70 insertions(+), 4 deletions(-)
> > >  create mode 100644 arch/riscv/include/asm/seccomp.h
> > > 
> > > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > > index 59a4727ecd6c..441e63ff5adc 100644
> > > --- a/arch/riscv/Kconfig
> > > +++ b/arch/riscv/Kconfig
> > > @@ -31,6 +31,7 @@ config RISCV
> > >  	select GENERIC_SMP_IDLE_THREAD
> > >  	select GENERIC_ATOMIC64 if !64BIT
> > >  	select HAVE_ARCH_AUDITSYSCALL
> > > +	select HAVE_ARCH_SECCOMP_FILTER
> > >  	select HAVE_MEMBLOCK_NODE_MAP
> > >  	select HAVE_DMA_CONTIGUOUS
> > >  	select HAVE_FUTEX_CMPXCHG if FUTEX
> > > @@ -235,6 +236,19 @@ menu "Kernel features"
> > >  
> > >  source "kernel/Kconfig.hz"
> > >  
> > > +config SECCOMP
> > > +	bool "Enable seccomp to safely compute untrusted bytecode"
> > > +	help
> > > +	  This kernel feature is useful for number crunching applications
> > > +	  that may need to compute untrusted bytecode during their
> > > +	  execution. By using pipes or other transports made available to
> > > +	  the process as file descriptors supporting the read/write
> > > +	  syscalls, it's possible to isolate those applications in
> > > +	  their own address space using seccomp. Once seccomp is
> > > +	  enabled via prctl(PR_SET_SECCOMP), it cannot be disabled
> > > +	  and the task is only allowed to execute a few safe syscalls
> > > +	  defined by each seccomp mode.
> > > +
> > >  endmenu
> > >  
> > >  menu "Boot options"
> > > diff --git a/arch/riscv/include/asm/seccomp.h b/arch/riscv/include/asm/seccomp.h
> > > new file mode 100644
> > > index 000000000000..bf7744ee3b3d
> > > --- /dev/null
> > > +++ b/arch/riscv/include/asm/seccomp.h
> > > @@ -0,0 +1,10 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +
> > > +#ifndef _ASM_SECCOMP_H
> > > +#define _ASM_SECCOMP_H
> > > +
> > > +#include <asm/unistd.h>
> > > +
> > > +#include <asm-generic/seccomp.h>
> > > +
> > > +#endif /* _ASM_SECCOMP_H */
> > > diff --git a/arch/riscv/include/asm/thread_info.h b/arch/riscv/include/asm/thread_info.h
> > > index 905372d7eeb8..a0b2a29a0da1 100644
> > > --- a/arch/riscv/include/asm/thread_info.h
> > > +++ b/arch/riscv/include/asm/thread_info.h
> > > @@ -75,6 +75,7 @@ struct thread_info {
> > >  #define TIF_MEMDIE		5	/* is terminating due to OOM killer */
> > >  #define TIF_SYSCALL_TRACEPOINT  6       /* syscall tracepoint instrumentation */
> > >  #define TIF_SYSCALL_AUDIT	7	/* syscall auditing */
> > > +#define TIF_SECCOMP		8	/* syscall secure computing */
> > >  
> > >  #define _TIF_SYSCALL_TRACE	(1 << TIF_SYSCALL_TRACE)
> > >  #define _TIF_NOTIFY_RESUME	(1 << TIF_NOTIFY_RESUME)
> > > @@ -82,11 +83,13 @@ struct thread_info {
> > >  #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
> > >  #define _TIF_SYSCALL_TRACEPOINT	(1 << TIF_SYSCALL_TRACEPOINT)
> > >  #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
> > > +#define _TIF_SECCOMP		(1 << TIF_SECCOMP)
> > >  
> > >  #define _TIF_WORK_MASK \
> > >  	(_TIF_NOTIFY_RESUME | _TIF_SIGPENDING | _TIF_NEED_RESCHED)
> > >  
> > >  #define _TIF_SYSCALL_WORK \
> > > -	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_TRACEPOINT | _TIF_SYSCALL_AUDIT)
> > > +	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_TRACEPOINT | _TIF_SYSCALL_AUDIT | \
> > > +	 _TIF_SECCOMP )
> > >  
> > >  #endif /* _ASM_RISCV_THREAD_INFO_H */
> > > diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> > > index bc7a56e1ca6f..0bbedfa3e47d 100644
> > > --- a/arch/riscv/kernel/entry.S
> > > +++ b/arch/riscv/kernel/entry.S
> > > @@ -203,8 +203,25 @@ check_syscall_nr:
> > >  	/* Check to make sure we don't jump to a bogus syscall number. */
> > >  	li t0, __NR_syscalls
> > >  	la s0, sys_ni_syscall
> > > -	/* Syscall number held in a7 */
> > > -	bgeu a7, t0, 1f
> > > +	/*
> > > +	 * The tracer can change syscall number to valid/invalid value.
> > > +	 * We use syscall_set_nr helper in syscall_trace_enter thus we
> > > +	 * cannot trust the current value in a7 and have to reload from
> > > +	 * the current task pt_regs.
> > > +	 */
> > > +	REG_L a7, PT_A7(sp)
> > > +	/*
> > > +	 * Syscall number held in a7.
> > > +	 * If syscall number is above allowed value, redirect to ni_syscall.
> > > +	 */
> > > +	bge a7, t0, 1f
> > > +	/*
> > > +	 * Check if syscall is rejected by tracer or seccomp, i.e., a7 == -1.
> > > +	 * If yes, we pretend it was executed.
> > > +	 */
> > > +	li t1, -1
> > > +	beq a7, t1, ret_from_syscall_rejected
> > > +	/* Call syscall */
> > >  	la s0, sys_call_table
> > >  	slli t0, a7, RISCV_LGPTR
> > >  	add s0, s0, t0
> > > @@ -215,6 +232,12 @@ check_syscall_nr:
> > >  ret_from_syscall:
> > >  	/* Set user a0 to kernel a0 */
> > >  	REG_S a0, PT_A0(sp)
> > > +	/*
> > > +	 * We didn't execute the actual syscall.
> > > +	 * Seccomp already set return value for the current task pt_regs.
> > > +	 * (If it was configured with SECCOMP_RET_ERRNO/TRACE)
> > > +	 */
> > > +ret_from_syscall_rejected:
> > >  	/* Trace syscalls, but only if requested by the user. */
> > >  	REG_L t0, TASK_TI_FLAGS(tp)
> > >  	andi t0, t0, _TIF_SYSCALL_WORK
> > > diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> > > index 368751438366..63e47c9f85f0 100644
> > > --- a/arch/riscv/kernel/ptrace.c
> > > +++ b/arch/riscv/kernel/ptrace.c
> > > @@ -154,6 +154,16 @@ void do_syscall_trace_enter(struct pt_regs *regs)
> > >  		if (tracehook_report_syscall_entry(regs))
> > >  			syscall_set_nr(current, regs, -1);
> > >  
> > > +	/*
> > > +	 * Do the secure computing after ptrace; failures should be fast.
> > > +	 * If this fails we might have return value in a0 from seccomp
> > > +	 * (via SECCOMP_RET_ERRNO/TRACE).
> > > +	 */
> > > +	if (secure_computing(NULL) == -1) {
> > > +		syscall_set_nr(current, regs, -1);
> > > +		return;
> > > +	}
> > > +
> > >  #ifdef CONFIG_HAVE_SYSCALL_TRACEPOINTS
> > >  	if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
> > >  		trace_sys_enter(regs, syscall_get_nr(current, regs));
> > > diff --git a/tools/testing/selftests/seccomp/seccomp_bpf.c b/tools/testing/selftests/seccomp/seccomp_bpf.c
> > > index 6ef7f16c4cf5..492e0adad9d3 100644
> > > --- a/tools/testing/selftests/seccomp/seccomp_bpf.c
> > > +++ b/tools/testing/selftests/seccomp/seccomp_bpf.c
> > > @@ -112,6 +112,8 @@ struct seccomp_data {
> > >  #  define __NR_seccomp 383
> > >  # elif defined(__aarch64__)
> > >  #  define __NR_seccomp 277
> > > +# elif defined(__riscv)
> > > +#  define __NR_seccomp 277
> > >  # elif defined(__hppa__)
> > >  #  define __NR_seccomp 338
> > >  # elif defined(__powerpc__)
> > > @@ -1582,6 +1584,10 @@ TEST_F(TRACE_poke, getpid_runs_normally)
> > >  # define ARCH_REGS	struct user_pt_regs
> > >  # define SYSCALL_NUM	regs[8]
> > >  # define SYSCALL_RET	regs[0]
> > > +#elif defined(__riscv) && __riscv_xlen == 64
> > > +# define ARCH_REGS	struct user_regs_struct
> > > +# define SYSCALL_NUM	a7
> > > +# define SYSCALL_RET	a0
> > >  #elif defined(__hppa__)
> > >  # define ARCH_REGS	struct user_regs_struct
> > >  # define SYSCALL_NUM	gr[20]
> > > @@ -1671,7 +1677,7 @@ void change_syscall(struct __test_metadata *_metadata,
> > >  	EXPECT_EQ(0, ret) {}
> > >  
> > >  #if defined(__x86_64__) || defined(__i386__) || defined(__powerpc__) || \
> > > -    defined(__s390__) || defined(__hppa__)
> > > +    defined(__s390__) || defined(__hppa__) || defined(__riscv)
> > >  	{
> > >  		regs.SYSCALL_NUM = syscall;
> > >  	}
> > > -- 
> > > 2.21.0
> > > 
> > > 
> > 
> > 
> > - Paul
> > 
> 
> 

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
