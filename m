Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0401A9B93
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 12:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kEwoRtbHkkrvHk5aOrvxyb8wwGNfjjWB547c6xdsGpg=; b=e1iwSQ1wPUlopAVfJNrNhsipH
	g2oKav97holkG1ZshL6D9dTqPSu7wFP1ryYNUGRjc9PQBSLFojITHPm36/upUECf8M3MFVsuUsC25
	kA0rTNGvAEuLiCl9xfXQN34XnlY91ZszdOQFJHQ6U0einy8dsf7CiR/SlBhOoshFeXT3z0t81Rk3J
	+K40DcKcpJx3RwgDVjCfxBz7DFwZkibpBO9dZVqGbY+UaOHaTXEYcRjHwsvAM8PBbqjD9S5GbH5s7
	bQi4pC53bb5cH6lzr7xtLnsUuJzpKS838Kujk2119kFX2gu6AAsdPeRIlvIWCU+j0tmc0b2dyUTYU
	sKEmKPgwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOflY-0003Ti-IK; Wed, 15 Apr 2020 10:59:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOflT-0003Dl-Us
 for linux-riscv@lists.infradead.org; Wed, 15 Apr 2020 10:59:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id r7so3108701ljg.13
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 03:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kEwoRtbHkkrvHk5aOrvxyb8wwGNfjjWB547c6xdsGpg=;
 b=Xuaz/08DFe1cA4zyqt7WO1/Pan/NB6O3fX1TvX27Da8mmnmW2bnJuksxDB1lvmJeZ4
 b/5DsAjhJe7+RCXusf8yuYVOd+Bq5HZT2yUSQv3PxTtue9sTxDMBsIoqN/6OBwsUfAEG
 qtDc37+G6yNqJw4m7xk7XyyOSuiO/3Dm8IreqeG+I4hmPm+gREX9gyVrzYQ1xArhuJ0t
 IK2u6VKKv6sZdFfZAPW2xtXqh9OtypMASv0jMtYFW8epVFFF4BWE97cJA/kSS6Avy8VW
 DK2WVo/Twk1GrCSWUjxjBBnxpSXrgBO+FFNkgFL50YwKy/E7Z+sPzqOkr6osT/h+HSvx
 vJHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kEwoRtbHkkrvHk5aOrvxyb8wwGNfjjWB547c6xdsGpg=;
 b=duGB/YE0Ozraw++u0ZqjAxJfeh/sHxPjY+DN49/IXKtiuGyNURftTXcUgckwB13slo
 cM+lh2/ruNLsLPl3Bgqhmgk0cs7EDP38waPgVebnjIvL2UT5b+lX02rS/5e+ovo6PCLU
 ljNHucxzAQNDGLR7836I6JhfYw9dE2CYVtP12wI3VlSiZ75rzWBRqpMDRT+zh8jSKq77
 5fcz0hVWSmgtPmEN6H6NKX5i7IFN+9i6V+pLXwJCBqQZn6eiKa9oMlRhYGX7fe7HG20t
 3J76iyDcdSiwWWHrBDP55AQEh4AdyeYAy3bF95vLW/x6VdY+hKKzHDHbikNeelPFaOHl
 nXEA==
X-Gm-Message-State: AGi0Pub+BYax5tZF3v5N6LrGCvsLKOWUIeWc0PcUkuxIAA6ei/4og3pW
 k2v+FriXhs3JErRY0B9k9yoFI1nMZroyi2kqYtwOOA==
X-Google-Smtp-Source: APiQypLsC+SCrbuOfZmNxcm7tXtgMH0rn/1/vW2CQCohaWO6lOjfD6zKJRQ0CRwmr5PpGhD9XxEjcGdnH5zO3AXdXlk=
X-Received: by 2002:a2e:571a:: with SMTP id l26mr1356097ljb.12.1586948367346; 
 Wed, 15 Apr 2020 03:59:27 -0700 (PDT)
MIME-Version: 1.0
References: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
 <1586655721-22567-3-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1586655721-22567-3-git-send-email-vincent.chen@sifive.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 15 Apr 2020 16:29:15 +0530
Message-ID: <CAFA6WYN36OVP3bXaNTU2h0Av8gT1zRz7oOcjApdtmiFNR+inzA@mail.gmail.com>
Subject: Re: [Kgdb-bugreport] [PATCH v3 2/5] riscv: Add KGDB support
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_035932_040517_F759886B 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kgdb-bugreport@lists.sourceforge.net,
 Daniel Thompson <daniel.thompson@linaro.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 12 Apr 2020 at 08:19, Vincent Chen <vincent.chen@sifive.com> wrote:
>
> The skeleton of RISC-V KGDB port.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/Kconfig              |   1 +
>  arch/riscv/include/asm/kdebug.h |  12 +++
>  arch/riscv/include/asm/kgdb.h   | 107 +++++++++++++++++++++
>  arch/riscv/kernel/Makefile      |   1 +
>  arch/riscv/kernel/kgdb.c        | 200 ++++++++++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/traps.c       |   5 +
>  6 files changed, 326 insertions(+)
>  create mode 100644 arch/riscv/include/asm/kdebug.h
>  create mode 100644 arch/riscv/include/asm/kgdb.h
>  create mode 100644 arch/riscv/kernel/kgdb.c
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a197258595ef..7db9a81cda75 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -68,6 +68,7 @@ config RISCV
>         select ARCH_HAS_GCOV_PROFILE_ALL
>         select HAVE_COPY_THREAD_TLS
>         select HAVE_ARCH_KASAN if MMU && 64BIT
> +       select HAVE_ARCH_KGDB
>
>  config ARCH_MMAP_RND_BITS_MIN
>         default 18 if 64BIT
> diff --git a/arch/riscv/include/asm/kdebug.h b/arch/riscv/include/asm/kdebug.h
> new file mode 100644
> index 000000000000..85ac00411f6e
> --- /dev/null
> +++ b/arch/riscv/include/asm/kdebug.h
> @@ -0,0 +1,12 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef _ASM_ARC_KDEBUG_H
> +#define _ASM_ARC_KDEBUG_H
> +
> +enum die_val {
> +       DIE_UNUSED,
> +       DIE_TRAP,
> +       DIE_OOPS
> +};
> +
> +#endif
> diff --git a/arch/riscv/include/asm/kgdb.h b/arch/riscv/include/asm/kgdb.h
> new file mode 100644
> index 000000000000..69bc6a03081d
> --- /dev/null
> +++ b/arch/riscv/include/asm/kgdb.h
> @@ -0,0 +1,107 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#ifndef __ASM_KGDB_H_
> +#define __ASM_KGDB_H_
> +
> +#ifdef __KERNEL__
> +
> +#define GDB_SIZEOF_REG sizeof(unsigned long)
> +
> +#define DBG_MAX_REG_NUM (33)
> +#define NUMREGBYTES ((DBG_MAX_REG_NUM) * GDB_SIZEOF_REG)
> +#define CACHE_FLUSH_IS_SAFE     1

[...]

> +#define BUFMAX                  2048
> +#ifdef CONFIG_RISCV_ISA_C
> +#define BREAK_INSTR_SIZE       2
> +#else
> +#define BREAK_INSTR_SIZE       4
> +#endif
> +#define CACHE_FLUSH_IS_SAFE 1

double macro definition?

-Sumit

> +
> +#ifndef        __ASSEMBLY__
> +
> +extern int kgdb_has_hit_break(unsigned long addr);
> +extern unsigned long kgdb_compiled_break;
> +
> +static inline void arch_kgdb_breakpoint(void)
> +{
> +       asm(".global kgdb_compiled_break\n"
> +           ".option norvc\n"
> +           "kgdb_compiled_break: ebreak\n"
> +           ".option rvc\n");
> +}
> +
> +#endif /* !__ASSEMBLY__ */
> +
> +#define DBG_REG_ZERO "zero"
> +#define DBG_REG_RA "ra"
> +#define DBG_REG_SP "sp"
> +#define DBG_REG_GP "gp"
> +#define DBG_REG_TP "tp"
> +#define DBG_REG_T0 "t0"
> +#define DBG_REG_T1 "t1"
> +#define DBG_REG_T2 "t2"
> +#define DBG_REG_FP "fp"
> +#define DBG_REG_S1 "s1"
> +#define DBG_REG_A0 "a0"
> +#define DBG_REG_A1 "a1"
> +#define DBG_REG_A2 "a2"
> +#define DBG_REG_A3 "a3"
> +#define DBG_REG_A4 "a4"
> +#define DBG_REG_A5 "a5"
> +#define DBG_REG_A6 "a6"
> +#define DBG_REG_A7 "a7"
> +#define DBG_REG_S2 "s2"
> +#define DBG_REG_S3 "s3"
> +#define DBG_REG_S4 "s4"
> +#define DBG_REG_S5 "s5"
> +#define DBG_REG_S6 "s6"
> +#define DBG_REG_S7 "s7"
> +#define DBG_REG_S8 "s8"
> +#define DBG_REG_S9 "s9"
> +#define DBG_REG_S10 "s10"
> +#define DBG_REG_S11 "s11"
> +#define DBG_REG_T3 "t3"
> +#define DBG_REG_T4 "t4"
> +#define DBG_REG_T5 "t5"
> +#define DBG_REG_T6 "t6"
> +#define DBG_REG_EPC "pc"
> +
> +#define DBG_REG_ZERO_OFF 0
> +#define DBG_REG_RA_OFF 1
> +#define DBG_REG_SP_OFF 2
> +#define DBG_REG_GP_OFF 3
> +#define DBG_REG_TP_OFF 4
> +#define DBG_REG_T0_OFF 5
> +#define DBG_REG_T1_OFF 6
> +#define DBG_REG_T2_OFF 7
> +#define DBG_REG_FP_OFF 8
> +#define DBG_REG_S1_OFF 9
> +#define DBG_REG_A0_OFF 10
> +#define DBG_REG_A1_OFF 11
> +#define DBG_REG_A2_OFF 12
> +#define DBG_REG_A3_OFF 13
> +#define DBG_REG_A4_OFF 14
> +#define DBG_REG_A5_OFF 15
> +#define DBG_REG_A6_OFF 16
> +#define DBG_REG_A7_OFF 17
> +#define DBG_REG_S2_OFF 18
> +#define DBG_REG_S3_OFF 19
> +#define DBG_REG_S4_OFF 20
> +#define DBG_REG_S5_OFF 21
> +#define DBG_REG_S6_OFF 22
> +#define DBG_REG_S7_OFF 23
> +#define DBG_REG_S8_OFF 24
> +#define DBG_REG_S9_OFF 25
> +#define DBG_REG_S10_OFF 26
> +#define DBG_REG_S11_OFF 27
> +#define DBG_REG_T3_OFF 28
> +#define DBG_REG_T4_OFF 29
> +#define DBG_REG_T5_OFF 30
> +#define DBG_REG_T6_OFF 31
> +#define DBG_REG_EPC_OFF 32
> +#define DBG_REG_STATUS_OFF 33
> +#define DBG_REG_BADADDR_OFF 34
> +#define DBG_REG_CAUSE_OFF 35
> +#endif
> +#endif
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 86c83081044f..1f5736e996fd 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -51,5 +51,6 @@ ifeq ($(CONFIG_RISCV_SBI), y)
>  obj-$(CONFIG_SMP) += cpu_ops_sbi.o
>  endif
>  obj-$(CONFIG_HOTPLUG_CPU)      += cpu-hotplug.o
> +obj-$(CONFIG_KGDB)             += kgdb.o
>
>  clean:
> diff --git a/arch/riscv/kernel/kgdb.c b/arch/riscv/kernel/kgdb.c
> new file mode 100644
> index 000000000000..6bdc0908a5b8
> --- /dev/null
> +++ b/arch/riscv/kernel/kgdb.c
> @@ -0,0 +1,200 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 SiFive
> + */
> +
> +#include <linux/ptrace.h>
> +#include <linux/kdebug.h>
> +#include <linux/bug.h>
> +#include <linux/kgdb.h>
> +#include <linux/irqflags.h>
> +#include <linux/string.h>
> +#include <asm/cacheflush.h>
> +
> +enum {
> +       NOT_KGDB_BREAK = 0,
> +       KGDB_SW_BREAK,
> +       KGDB_COMPILED_BREAK,
> +};
> +
> +struct dbg_reg_def_t dbg_reg_def[DBG_MAX_REG_NUM] = {
> +       {DBG_REG_ZERO, GDB_SIZEOF_REG, -1},
> +       {DBG_REG_RA, GDB_SIZEOF_REG, offsetof(struct pt_regs, ra)},
> +       {DBG_REG_SP, GDB_SIZEOF_REG, offsetof(struct pt_regs, sp)},
> +       {DBG_REG_GP, GDB_SIZEOF_REG, offsetof(struct pt_regs, gp)},
> +       {DBG_REG_TP, GDB_SIZEOF_REG, offsetof(struct pt_regs, tp)},
> +       {DBG_REG_T0, GDB_SIZEOF_REG, offsetof(struct pt_regs, t0)},
> +       {DBG_REG_T1, GDB_SIZEOF_REG, offsetof(struct pt_regs, t1)},
> +       {DBG_REG_T2, GDB_SIZEOF_REG, offsetof(struct pt_regs, t2)},
> +       {DBG_REG_FP, GDB_SIZEOF_REG, offsetof(struct pt_regs, s0)},
> +       {DBG_REG_S1, GDB_SIZEOF_REG, offsetof(struct pt_regs, a1)},
> +       {DBG_REG_A0, GDB_SIZEOF_REG, offsetof(struct pt_regs, a0)},
> +       {DBG_REG_A1, GDB_SIZEOF_REG, offsetof(struct pt_regs, a1)},
> +       {DBG_REG_A2, GDB_SIZEOF_REG, offsetof(struct pt_regs, a2)},
> +       {DBG_REG_A3, GDB_SIZEOF_REG, offsetof(struct pt_regs, a3)},
> +       {DBG_REG_A4, GDB_SIZEOF_REG, offsetof(struct pt_regs, a4)},
> +       {DBG_REG_A5, GDB_SIZEOF_REG, offsetof(struct pt_regs, a5)},
> +       {DBG_REG_A6, GDB_SIZEOF_REG, offsetof(struct pt_regs, a6)},
> +       {DBG_REG_A7, GDB_SIZEOF_REG, offsetof(struct pt_regs, a7)},
> +       {DBG_REG_S2, GDB_SIZEOF_REG, offsetof(struct pt_regs, s2)},
> +       {DBG_REG_S3, GDB_SIZEOF_REG, offsetof(struct pt_regs, s3)},
> +       {DBG_REG_S4, GDB_SIZEOF_REG, offsetof(struct pt_regs, s4)},
> +       {DBG_REG_S5, GDB_SIZEOF_REG, offsetof(struct pt_regs, s5)},
> +       {DBG_REG_S6, GDB_SIZEOF_REG, offsetof(struct pt_regs, s6)},
> +       {DBG_REG_S7, GDB_SIZEOF_REG, offsetof(struct pt_regs, s7)},
> +       {DBG_REG_S8, GDB_SIZEOF_REG, offsetof(struct pt_regs, s8)},
> +       {DBG_REG_S9, GDB_SIZEOF_REG, offsetof(struct pt_regs, s9)},
> +       {DBG_REG_S10, GDB_SIZEOF_REG, offsetof(struct pt_regs, s10)},
> +       {DBG_REG_S11, GDB_SIZEOF_REG, offsetof(struct pt_regs, s11)},
> +       {DBG_REG_T3, GDB_SIZEOF_REG, offsetof(struct pt_regs, t3)},
> +       {DBG_REG_T4, GDB_SIZEOF_REG, offsetof(struct pt_regs, t4)},
> +       {DBG_REG_T5, GDB_SIZEOF_REG, offsetof(struct pt_regs, t5)},
> +       {DBG_REG_T6, GDB_SIZEOF_REG, offsetof(struct pt_regs, t6)},
> +       {DBG_REG_EPC, GDB_SIZEOF_REG, offsetof(struct pt_regs, epc)},
> +};
> +
> +char *dbg_get_reg(int regno, void *mem, struct pt_regs *regs)
> +{
> +       if (regno >= DBG_MAX_REG_NUM || regno < 0)
> +               return NULL;
> +
> +       if (dbg_reg_def[regno].offset != -1)
> +               memcpy(mem, (void *)regs + dbg_reg_def[regno].offset,
> +                      dbg_reg_def[regno].size);
> +       else
> +               memset(mem, 0, dbg_reg_def[regno].size);
> +       return dbg_reg_def[regno].name;
> +}
> +
> +int dbg_set_reg(int regno, void *mem, struct pt_regs *regs)
> +{
> +       if (regno >= DBG_MAX_REG_NUM || regno < 0)
> +               return -EINVAL;
> +
> +       if (dbg_reg_def[regno].offset != -1)
> +               memcpy((void *)regs + dbg_reg_def[regno].offset, mem,
> +                      dbg_reg_def[regno].size);
> +       return 0;
> +}
> +
> +void
> +sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *task)
> +{
> +       /* Initialize to zero */
> +       memset((char *)gdb_regs, 0, NUMREGBYTES);
> +
> +       gdb_regs[DBG_REG_SP_OFF] = task->thread.sp;
> +       gdb_regs[DBG_REG_FP_OFF] = task->thread.s[0];
> +       gdb_regs[DBG_REG_S1_OFF] = task->thread.s[1];
> +       gdb_regs[DBG_REG_S2_OFF] = task->thread.s[2];
> +       gdb_regs[DBG_REG_S3_OFF] = task->thread.s[3];
> +       gdb_regs[DBG_REG_S4_OFF] = task->thread.s[4];
> +       gdb_regs[DBG_REG_S5_OFF] = task->thread.s[5];
> +       gdb_regs[DBG_REG_S6_OFF] = task->thread.s[6];
> +       gdb_regs[DBG_REG_S7_OFF] = task->thread.s[7];
> +       gdb_regs[DBG_REG_S8_OFF] = task->thread.s[8];
> +       gdb_regs[DBG_REG_S9_OFF] = task->thread.s[10];
> +       gdb_regs[DBG_REG_S10_OFF] = task->thread.s[11];
> +       gdb_regs[DBG_REG_EPC_OFF] = task->thread.ra;
> +}
> +
> +void kgdb_arch_set_pc(struct pt_regs *regs, unsigned long pc)
> +{
> +       regs->epc = pc;
> +}
> +
> +static inline void kgdb_arch_update_addr(struct pt_regs *regs,
> +                                        char *remcom_in_buffer)
> +{
> +       unsigned long addr;
> +       char *ptr;
> +
> +       ptr = &remcom_in_buffer[1];
> +       if (kgdb_hex2long(&ptr, &addr))
> +               regs->epc = addr;
> +}
> +
> +int kgdb_arch_handle_exception(int vector, int signo, int err_code,
> +                              char *remcom_in_buffer, char *remcom_out_buffer,
> +                              struct pt_regs *regs)
> +{
> +       int err = 0;
> +
> +       switch (remcom_in_buffer[0]) {
> +       case 'c':
> +       case 'D':
> +       case 'k':
> +               if (remcom_in_buffer[0] == 'c')
> +                       kgdb_arch_update_addr(regs, remcom_in_buffer);
> +               break;
> +       default:
> +               err = -1;
> +       }
> +
> +       return err;
> +}
> +
> +int kgdb_riscv_kgdbbreak(unsigned long addr)
> +{
> +       if (atomic_read(&kgdb_setting_breakpoint))
> +               if (addr == (unsigned long)&kgdb_compiled_break)
> +                       return KGDB_COMPILED_BREAK;
> +
> +       return kgdb_has_hit_break(addr);
> +}
> +
> +static int kgdb_riscv_notify(struct notifier_block *self, unsigned long cmd,
> +                            void *ptr)
> +{
> +       struct die_args *args = (struct die_args *)ptr;
> +       struct pt_regs *regs = args->regs;
> +       unsigned long flags;
> +       int type;
> +
> +       if (user_mode(regs))
> +               return NOTIFY_DONE;
> +
> +       type = kgdb_riscv_kgdbbreak(regs->epc);
> +       if (type == NOT_KGDB_BREAK && cmd == DIE_TRAP)
> +               return NOTIFY_DONE;
> +
> +       local_irq_save(flags);
> +       if (kgdb_handle_exception(1, args->signr, cmd, regs))
> +               return NOTIFY_DONE;
> +
> +       if (type == KGDB_COMPILED_BREAK)
> +               regs->epc += 4;
> +
> +       local_irq_restore(flags);
> +
> +       return NOTIFY_STOP;
> +}
> +
> +static struct notifier_block kgdb_notifier = {
> +       .notifier_call = kgdb_riscv_notify,
> +};
> +
> +int kgdb_arch_init(void)
> +{
> +       register_die_notifier(&kgdb_notifier);
> +
> +       return 0;
> +}
> +
> +void kgdb_arch_exit(void)
> +{
> +       unregister_die_notifier(&kgdb_notifier);
> +}
> +
> +/*
> + * Global data
> + */
> +#ifdef CONFIG_RISCV_ISA_C
> +const struct kgdb_arch arch_kgdb_ops = {
> +       .gdb_bpt_instr = {0x02, 0x90},  /* c.ebreak */
> +};
> +#else
> +const struct kgdb_arch arch_kgdb_ops = {
> +       .gdb_bpt_instr = {0x73, 0x00, 0x10, 0x00},      /* ebreak */
> +};
> +#endif
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index 7f58fa53033f..5080fdf8c296 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -147,6 +147,11 @@ asmlinkage __visible void do_trap_break(struct pt_regs *regs)
>  {
>         if (user_mode(regs))
>                 force_sig_fault(SIGTRAP, TRAP_BRKPT, (void __user *)regs->epc);
> +#ifdef CONFIG_KGDB
> +       else if (notify_die(DIE_TRAP, "EBREAK", regs, 0, regs->cause, SIGTRAP)
> +                                                               == NOTIFY_STOP)
> +               return;
> +#endif
>         else if (report_bug(regs->epc, regs) == BUG_TRAP_TYPE_WARN)
>                 regs->epc += get_break_insn_length(regs->epc);
>         else
> --
> 2.7.4
>
>
>
> _______________________________________________
> Kgdb-bugreport mailing list
> Kgdb-bugreport@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/kgdb-bugreport

