Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309EF9B8A4
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 00:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQa4FCkdJ9T4wh/OL/USWiexpV/JX1mXmKm/W6VLyEE=; b=uljg0aaP9VyV3G
	ihQwhas8MEIssLsOw0dWoJXBbux23xiKopWf9MFbWeCwUcp7kxzxXaAix0YaptlmBRr54+9+Q6Zmv
	ZpTW1ktz/aZtPLsm/4Nr/MTHmeZmOrxgHtc6VD6n6Kq1KvCjznNQYSsfGWGA9SvqSQenWcBoKbRF3
	DJiMXgooU6cEzIK+LOv+3lOCHact17+GdWCDuBPrCSxSGUwuoAX5kjR874W7Taqzx9QUqsB+AHrRD
	0IRouqSCidS6AbLPQOJR4TqHazvmds2rCPiEAO39VGL9/dO43yCaPTtoSCC9EjnnHKvBNzLpws04M
	HmeZf4SuKf/+w5/KsL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1IRn-0003n4-Cx; Fri, 23 Aug 2019 22:54:19 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1IRj-0003mL-UU
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 22:54:17 +0000
Received: by mail-oi1-x242.google.com with SMTP id g128so8246161oib.1
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 15:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=sender:mime-version:references:in-reply-to:from:date:message-id
 :subject:to:cc;
 bh=tzDrHmFEcYK0I28RjAt4Fuw9PRGX0gxadXFcnRSTG0Q=;
 b=mZ49T6ZPEyZCC1pwf9r3Am19lhgltKzQYucXa1x+bu8k1heIdnm1495V2ekRmLikCB
 km1PSkluj6U2RnYGyCbbGiN+DCx3EouEBJVz9OnutxnQgaxqvukBurUhDqCEN6BnnYB4
 QWo7btWgRZWc1WGh8ip80Iy8bGOZNTdUFM8h59ByuukwKSNq50CjfCYdwropWBBwSql6
 J5yF9h7Qs5+cKpel7Z/9rnIM3GyVyDdTCheg0HhEb8t3HZXwd0IeiD4lHxYVedFTVvn1
 D+SmGXC7DUN0IuKPtHdnADvmwoO3uN1NLxGukvA0tTBZoWbG9CBdJ8pEiU6rxaLdJH83
 nDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:references:in-reply-to:from
 :date:message-id:subject:to:cc;
 bh=tzDrHmFEcYK0I28RjAt4Fuw9PRGX0gxadXFcnRSTG0Q=;
 b=lPQP03vUVK0Haz6tFl3IUyvFDwt3ceK/ylSg0fj4zpLlaOb+Ha1yZ4mDoZvc7sKvWJ
 a6e9EU56R20mmHIQ2XV+9TCjTxSF9Gydvr9yCrIjGqaCJ199TXE1DeoZIqwXvsT1J+bB
 VSNUhsWqrjQAreRR5hgUIcgolDK+8mJ99FVa5S5ELTbdcEQ1WHcVk3iQF02eWP5J9gRx
 sA2/AeotDpmYT+2opKuNVXhonrVQ74Yxpho+EN+vUmHjmcFco0YWCkZtxkYhDHGDYSAm
 5e4W6Yd48HVNWIExz0jbIli9Fp/PvSGllD9QlpTQFiIg55PjGZRjWp66Pk3GCKxOl2sB
 jiig==
X-Gm-Message-State: APjAAAVZnJ3TYdRG3c6yHnIKyiDJtgog+iAYyP4zAClYZ3Xu0GnwuHin
 w72WyrBwzG5NfNlyOiWH378VbRtfuUsP2Q==
X-Google-Smtp-Source: APXvYqy/XK48G7tzzGc23Tz8sGui/CdGUS5KfytnycrvU4+RLiYrLftJR17iyYnQ1gwjO991GXXUYg==
X-Received: by 2002:aca:b70b:: with SMTP id h11mr5037404oif.107.1566600853829; 
 Fri, 23 Aug 2019 15:54:13 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com.
 [209.85.210.49])
 by smtp.gmail.com with ESMTPSA id 23sm501691oiy.47.2019.08.23.15.54.12
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2019 15:54:12 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id e12so10209183otp.10
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 15:54:12 -0700 (PDT)
X-Received: by 2002:a9d:2cc:: with SMTP id 70mr3070288otl.145.1566600852132;
 Fri, 23 Aug 2019 15:54:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
In-Reply-To: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 23 Aug 2019 19:54:01 -0300
X-Gmail-Original-Message-ID: <CADnnUqe2Phwy7cUAaawLzcBLbMtHKvJPr9Gmn9zQsVSGf_K=VA@mail.gmail.com>
Message-ID: <CADnnUqe2Phwy7cUAaawLzcBLbMtHKvJPr9Gmn9zQsVSGf_K=VA@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_155416_049466_8915D142 
X-CRM114-Status: GOOD (  27.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 5:56 PM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> This patch was extensively tested on Fedora/RISCV (applied by default on
> top of 5.2-rc7 kernel for <2 months). The patch was also tested with 5.3-rc
> on QEMU and SiFive Unleashed board.
>
> libseccomp (userspace) was rebased:
> https://github.com/seccomp/libseccomp/pull/134
>
> Fully passes libseccomp regression testing (simulation and live).
>
> There is one failing kernel selftest: global.user_notification_signal
>
> v1 -> v2:
>   - return immediatly if secure_computing(NULL) returns -1
>   - fixed whitespace issues
>   - add missing seccomp.h
>   - remove patch #2 (solved now)
>   - add riscv to seccomp kernel selftest
>
> Cc: keescook@chromium.org
> Cc: me@carlosedp.com
>
> Signed-off-by: David Abdurachmanov <david.abdurachmanov@sifive.com>
> ---
>  arch/riscv/Kconfig                            | 14 ++++++++++
>  arch/riscv/include/asm/seccomp.h              | 10 +++++++
>  arch/riscv/include/asm/thread_info.h          |  5 +++-
>  arch/riscv/kernel/entry.S                     | 27 +++++++++++++++++--
>  arch/riscv/kernel/ptrace.c                    | 10 +++++++
>  tools/testing/selftests/seccomp/seccomp_bpf.c |  8 +++++-
>  6 files changed, 70 insertions(+), 4 deletions(-)
>  create mode 100644 arch/riscv/include/asm/seccomp.h
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 59a4727ecd6c..441e63ff5adc 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -31,6 +31,7 @@ config RISCV
>         select GENERIC_SMP_IDLE_THREAD
>         select GENERIC_ATOMIC64 if !64BIT
>         select HAVE_ARCH_AUDITSYSCALL
> +       select HAVE_ARCH_SECCOMP_FILTER
>         select HAVE_MEMBLOCK_NODE_MAP
>         select HAVE_DMA_CONTIGUOUS
>         select HAVE_FUTEX_CMPXCHG if FUTEX
> @@ -235,6 +236,19 @@ menu "Kernel features"
>
>  source "kernel/Kconfig.hz"
>
> +config SECCOMP
> +       bool "Enable seccomp to safely compute untrusted bytecode"
> +       help
> +         This kernel feature is useful for number crunching applications
> +         that may need to compute untrusted bytecode during their
> +         execution. By using pipes or other transports made available to
> +         the process as file descriptors supporting the read/write
> +         syscalls, it's possible to isolate those applications in
> +         their own address space using seccomp. Once seccomp is
> +         enabled via prctl(PR_SET_SECCOMP), it cannot be disabled
> +         and the task is only allowed to execute a few safe syscalls
> +         defined by each seccomp mode.
> +
>  endmenu
>
>  menu "Boot options"
> diff --git a/arch/riscv/include/asm/seccomp.h b/arch/riscv/include/asm/seccomp.h
> new file mode 100644
> index 000000000000..bf7744ee3b3d
> --- /dev/null
> +++ b/arch/riscv/include/asm/seccomp.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef _ASM_SECCOMP_H
> +#define _ASM_SECCOMP_H
> +
> +#include <asm/unistd.h>
> +
> +#include <asm-generic/seccomp.h>
> +
> +#endif /* _ASM_SECCOMP_H */
> diff --git a/arch/riscv/include/asm/thread_info.h b/arch/riscv/include/asm/thread_info.h
> index 905372d7eeb8..a0b2a29a0da1 100644
> --- a/arch/riscv/include/asm/thread_info.h
> +++ b/arch/riscv/include/asm/thread_info.h
> @@ -75,6 +75,7 @@ struct thread_info {
>  #define TIF_MEMDIE             5       /* is terminating due to OOM killer */
>  #define TIF_SYSCALL_TRACEPOINT  6       /* syscall tracepoint instrumentation */
>  #define TIF_SYSCALL_AUDIT      7       /* syscall auditing */
> +#define TIF_SECCOMP            8       /* syscall secure computing */
>
>  #define _TIF_SYSCALL_TRACE     (1 << TIF_SYSCALL_TRACE)
>  #define _TIF_NOTIFY_RESUME     (1 << TIF_NOTIFY_RESUME)
> @@ -82,11 +83,13 @@ struct thread_info {
>  #define _TIF_NEED_RESCHED      (1 << TIF_NEED_RESCHED)
>  #define _TIF_SYSCALL_TRACEPOINT        (1 << TIF_SYSCALL_TRACEPOINT)
>  #define _TIF_SYSCALL_AUDIT     (1 << TIF_SYSCALL_AUDIT)
> +#define _TIF_SECCOMP           (1 << TIF_SECCOMP)
>
>  #define _TIF_WORK_MASK \
>         (_TIF_NOTIFY_RESUME | _TIF_SIGPENDING | _TIF_NEED_RESCHED)
>
>  #define _TIF_SYSCALL_WORK \
> -       (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_TRACEPOINT | _TIF_SYSCALL_AUDIT)
> +       (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_TRACEPOINT | _TIF_SYSCALL_AUDIT | \
> +        _TIF_SECCOMP )
>
>  #endif /* _ASM_RISCV_THREAD_INFO_H */
> diff --git a/arch/riscv/kernel/entry.S b/arch/riscv/kernel/entry.S
> index bc7a56e1ca6f..0bbedfa3e47d 100644
> --- a/arch/riscv/kernel/entry.S
> +++ b/arch/riscv/kernel/entry.S
> @@ -203,8 +203,25 @@ check_syscall_nr:
>         /* Check to make sure we don't jump to a bogus syscall number. */
>         li t0, __NR_syscalls
>         la s0, sys_ni_syscall
> -       /* Syscall number held in a7 */
> -       bgeu a7, t0, 1f
> +       /*
> +        * The tracer can change syscall number to valid/invalid value.
> +        * We use syscall_set_nr helper in syscall_trace_enter thus we
> +        * cannot trust the current value in a7 and have to reload from
> +        * the current task pt_regs.
> +        */
> +       REG_L a7, PT_A7(sp)
> +       /*
> +        * Syscall number held in a7.
> +        * If syscall number is above allowed value, redirect to ni_syscall.
> +        */
> +       bge a7, t0, 1f
> +       /*
> +        * Check if syscall is rejected by tracer or seccomp, i.e., a7 == -1.
> +        * If yes, we pretend it was executed.
> +        */
> +       li t1, -1
> +       beq a7, t1, ret_from_syscall_rejected
> +       /* Call syscall */
>         la s0, sys_call_table
>         slli t0, a7, RISCV_LGPTR
>         add s0, s0, t0
> @@ -215,6 +232,12 @@ check_syscall_nr:
>  ret_from_syscall:
>         /* Set user a0 to kernel a0 */
>         REG_S a0, PT_A0(sp)
> +       /*
> +        * We didn't execute the actual syscall.
> +        * Seccomp already set return value for the current task pt_regs.
> +        * (If it was configured with SECCOMP_RET_ERRNO/TRACE)
> +        */
> +ret_from_syscall_rejected:
>         /* Trace syscalls, but only if requested by the user. */
>         REG_L t0, TASK_TI_FLAGS(tp)
>         andi t0, t0, _TIF_SYSCALL_WORK
> diff --git a/arch/riscv/kernel/ptrace.c b/arch/riscv/kernel/ptrace.c
> index 368751438366..63e47c9f85f0 100644
> --- a/arch/riscv/kernel/ptrace.c
> +++ b/arch/riscv/kernel/ptrace.c
> @@ -154,6 +154,16 @@ void do_syscall_trace_enter(struct pt_regs *regs)
>                 if (tracehook_report_syscall_entry(regs))
>                         syscall_set_nr(current, regs, -1);
>
> +       /*
> +        * Do the secure computing after ptrace; failures should be fast.
> +        * If this fails we might have return value in a0 from seccomp
> +        * (via SECCOMP_RET_ERRNO/TRACE).
> +        */
> +       if (secure_computing(NULL) == -1) {
> +               syscall_set_nr(current, regs, -1);
> +               return;
> +       }
> +
>  #ifdef CONFIG_HAVE_SYSCALL_TRACEPOINTS
>         if (test_thread_flag(TIF_SYSCALL_TRACEPOINT))
>                 trace_sys_enter(regs, syscall_get_nr(current, regs));
> diff --git a/tools/testing/selftests/seccomp/seccomp_bpf.c b/tools/testing/selftests/seccomp/seccomp_bpf.c
> index 6ef7f16c4cf5..492e0adad9d3 100644
> --- a/tools/testing/selftests/seccomp/seccomp_bpf.c
> +++ b/tools/testing/selftests/seccomp/seccomp_bpf.c
> @@ -112,6 +112,8 @@ struct seccomp_data {
>  #  define __NR_seccomp 383
>  # elif defined(__aarch64__)
>  #  define __NR_seccomp 277
> +# elif defined(__riscv)
> +#  define __NR_seccomp 277
>  # elif defined(__hppa__)
>  #  define __NR_seccomp 338
>  # elif defined(__powerpc__)
> @@ -1582,6 +1584,10 @@ TEST_F(TRACE_poke, getpid_runs_normally)
>  # define ARCH_REGS     struct user_pt_regs
>  # define SYSCALL_NUM   regs[8]
>  # define SYSCALL_RET   regs[0]
> +#elif defined(__riscv) && __riscv_xlen == 64
> +# define ARCH_REGS     struct user_regs_struct
> +# define SYSCALL_NUM   a7
> +# define SYSCALL_RET   a0
>  #elif defined(__hppa__)
>  # define ARCH_REGS     struct user_regs_struct
>  # define SYSCALL_NUM   gr[20]
> @@ -1671,7 +1677,7 @@ void change_syscall(struct __test_metadata *_metadata,
>         EXPECT_EQ(0, ret) {}
>
>  #if defined(__x86_64__) || defined(__i386__) || defined(__powerpc__) || \
> -    defined(__s390__) || defined(__hppa__)
> +    defined(__s390__) || defined(__hppa__) || defined(__riscv)
>         {
>                 regs.SYSCALL_NUM = syscall;
>         }
> --
> 2.21.0
>

Tested-by: Carlos de Paula <me@carlosedp.com>
-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
