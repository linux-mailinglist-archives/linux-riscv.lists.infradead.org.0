Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC70166F6F
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Feb 2020 07:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+DwU++sw/f/4B9UKmm6rljMvzT1XBNTBLFmYj+swUEY=; b=NZ28ay6JbzymN5GDHq0GqM0UN
	Ri7F1YJTDyzSFzPlcyfPLxmG8oaI2F6S4PTKvUA60DGT8txVFb/kmU6Z9fNcJWsK+pVFUIVf2CWSf
	fYw2fDs8uSjy9m3pSl5KEjfGYxZpq2guaDoaYk7LrJdTzMPF3p6bGpb0vNyLRpOCk1nY7Wi8Qx5JA
	onem193x9CH7rKHh1NfutoOn5h4FmOw4prxzP+OpbNt0dYAe9MnoOMmQz7G2ruCkDzH0Om+Mo2eoQ
	1Kx+dOJVhCi4MWN2p4oi8ZSG1pZ4GvnnbPx5fUuNU0TeJ09/QTwyX0yJh7GNNwwHy91/p0pFtG+dz
	XBapwMQcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j51UO-0002mA-GL; Fri, 21 Feb 2020 06:08:40 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j51UL-0002la-0E
 for linux-riscv@lists.infradead.org; Fri, 21 Feb 2020 06:08:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id t3so620468wru.7
 for <linux-riscv@lists.infradead.org>; Thu, 20 Feb 2020 22:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+DwU++sw/f/4B9UKmm6rljMvzT1XBNTBLFmYj+swUEY=;
 b=aUcK9oUnzDGT60usz5spz3Oz0Mcvchlr9eMvEhnAgtw8EG62aF7dtl5EkgWeilflBX
 rC7TePMZcJiysCoxGuVco6D4dPQq80fNY27yXiKfJ3fAXQUD0/5RRT+XyFGKPGKPpB1B
 F52qZXlZ6xTacT/wncc82kXoiiUbMmJDVC1STWOz02cHjhi8MY/lkvF8okMJW8MPZ7Z4
 1/PpsN9J8IiTZ/Qw2maiUTjex6IKMxUqt9DyCxp1n2MtQGSX9GUhvIaCaOhhtJ9NohId
 pcJJd2J5B6Mf6z/Jb//NzN8p8exseENhYamH9HCKbht8k+4GTiwgIDByBb6RC0iwO59g
 1bDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+DwU++sw/f/4B9UKmm6rljMvzT1XBNTBLFmYj+swUEY=;
 b=ITsXAu75uRzPmOhN9Z5VteW3hSsehqLg37cp+wzLk/AQoSOGbR9LMCKLg/gNifbZ9z
 zUB4bH0RAf9tV+KnMMzt/EU+ZWfP86Lz9cg2v0C1YW5AWVtWycFneMQlaT21sRC9v8Gn
 cuIJOTC2CIPgEal9t+nHFYHfjg5Hbb2IfvJta5ErV1jPiPm0S642vO9EzYw8grcNSgBn
 aFE+MCXZak4sc9A+5EBMAAZut60/Bc7IvsuqwI+75m82N0OUOPSY0bGFD4FWa3RBbROu
 v6WQJLAZkWzrgwdINO5grcyneJ1ETExX6IdXuyhuriKH/TAybl/Uu8DRt89/V/UFLPu9
 l0dA==
X-Gm-Message-State: APjAAAVzUFDB/reJ1XuHtyDNLGeTiXf1CNcY/N45JzWQsf/1nmpsvsox
 Wn6NcWb4jz/aMjWl2ELv1WVr/skxLsCl/oygVdi00w==
X-Google-Smtp-Source: APXvYqwYnrubGCG0L4SdLafq/eZ899kGAxRATDt74gFr2KZrbgTY1qGOQNNE8wFqcb1QlGgfKk0iUBDqRU4XljSJTh0=
X-Received: by 2002:a5d:5345:: with SMTP id t5mr49673354wrv.0.1582265314802;
 Thu, 20 Feb 2020 22:08:34 -0800 (PST)
MIME-Version: 1.0
References: <20200221004413.12869-1-atish.patra@wdc.com>
 <20200221004413.12869-11-atish.patra@wdc.com>
In-Reply-To: <20200221004413.12869-11-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 21 Feb 2020 11:38:23 +0530
Message-ID: <CAAhSdy14p3fKueV0wedt+9+9VfdML0O_oTB-zkb=B2M5F3MdHg@mail.gmail.com>
Subject: Re: [PATCH v9 10/12] RISC-V: Add supported for ordered booting method
 using HSM
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_220837_048807_3993F29F 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Vincent Chen <vincent.chen@sifive.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 6:14 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> Currently, all harts have to jump Linux in RISC-V. This complicates the
> multi-stage boot process as every transient stage also has to ensure all
> harts enter to that stage and jump to Linux afterwards. It also obstructs
> a clean Kexec implementation.
>
> SBI HSM extension provides alternate solutions where only a single hart
> need to boot and enter Linux. The booting hart can bring up secondary
> harts one by one afterwards.
>
> Add SBI HSM based cpu_ops that implements an ordered booting method in
> RISC-V. This change is also backward compatible with older firmware not
> implementing HSM extension. If a latest kernel is used with older
> firmware, it will continue to use the default spinning booting method.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/kernel/Makefile      |  3 ++
>  arch/riscv/kernel/cpu_ops.c     | 10 +++-
>  arch/riscv/kernel/cpu_ops_sbi.c | 81 +++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/head.S        | 26 +++++++++++
>  arch/riscv/kernel/smpboot.c     |  2 +-
>  arch/riscv/kernel/traps.c       |  2 +-
>  6 files changed, 121 insertions(+), 3 deletions(-)
>  create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
>
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index f81a6ff88005..a0be34b96846 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -44,5 +44,8 @@ obj-$(CONFIG_PERF_EVENTS)     += perf_event.o
>  obj-$(CONFIG_PERF_EVENTS)      += perf_callchain.o
>  obj-$(CONFIG_HAVE_PERF_REGS)   += perf_regs.o
>  obj-$(CONFIG_RISCV_SBI)                += sbi.o
> +ifeq ($(CONFIG_RISCV_SBI), y)
> +obj-$(CONFIG_SMP) += cpu_ops_sbi.o
> +endif
>
>  clean:
> diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
> index e950ae5bee9c..afa90f711a2b 100644
> --- a/arch/riscv/kernel/cpu_ops.c
> +++ b/arch/riscv/kernel/cpu_ops.c
> @@ -18,6 +18,7 @@ const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>  void *__cpu_up_stack_pointer[NR_CPUS];
>  void *__cpu_up_task_pointer[NR_CPUS];
>
> +extern const struct cpu_operations cpu_ops_sbi;
>  extern const struct cpu_operations cpu_ops_spinwait;
>
>  void cpu_update_secondary_bootdata(unsigned int cpuid,
> @@ -34,5 +35,12 @@ void cpu_update_secondary_bootdata(unsigned int cpuid,
>
>  void __init cpu_set_ops(int cpuid)
>  {
> -       cpu_ops[cpuid] = &cpu_ops_spinwait;
> +#if IS_ENABLED(CONFIG_RISCV_SBI)
> +       if (sbi_probe_extension(SBI_EXT_HSM) > 0) {
> +               if (!cpuid)
> +                       pr_info("SBI v0.2 HSM extension detected\n");
> +               cpu_ops[cpuid] = &cpu_ops_sbi;
> +       } else
> +#endif
> +               cpu_ops[cpuid] = &cpu_ops_spinwait;
>  }
> diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> new file mode 100644
> index 000000000000..70d02dfe0ab8
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * HSM extension and cpu_ops implementation.
> + *
> + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <linux/init.h>
> +#include <linux/mm.h>
> +#include <asm/cpu_ops.h>
> +#include <asm/sbi.h>
> +#include <asm/smp.h>
> +
> +extern char secondary_start_sbi[];
> +const struct cpu_operations cpu_ops_sbi;
> +
> +static int sbi_hsm_hart_start(unsigned long hartid, unsigned long saddr,
> +                      unsigned long priv)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_START,
> +                             hartid, saddr, priv, 0, 0, 0);
> +       if (ret.error)
> +               return sbi_err_map_linux_errno(ret.error);
> +       else
> +               return 0;
> +}
> +
> +#ifdef CONFIG_HOTPLUG_CPU
> +static int sbi_hsm_hart_stop(void)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STOP, 0, 0, 0, 0, 0, 0);
> +
> +       if (ret.error)
> +               return sbi_err_map_linux_errno(ret.error);
> +       else
> +               return 0;
> +}
> +
> +static int sbi_hsm_hart_get_status(unsigned long hartid)
> +{
> +       struct sbiret ret;
> +
> +       ret = sbi_ecall(SBI_EXT_HSM, SBI_EXT_HSM_HART_STATUS,
> +                             hartid, 0, 0, 0, 0, 0);
> +       if (ret.error)
> +               return sbi_err_map_linux_errno(ret.error);
> +       else
> +               return ret.value;
> +}
> +#endif
> +
> +static int sbi_cpu_start(unsigned int cpuid, struct task_struct *tidle)
> +{
> +       int rc;
> +       unsigned long boot_addr = __pa_symbol(secondary_start_sbi);
> +       int hartid = cpuid_to_hartid_map(cpuid);
> +
> +       cpu_update_secondary_bootdata(cpuid, tidle);
> +       rc = sbi_hsm_hart_start(hartid, boot_addr, 0);
> +
> +       return rc;
> +}
> +
> +static int sbi_cpu_prepare(unsigned int cpuid)
> +{
> +       if (!cpu_ops_sbi.cpu_start) {
> +               pr_err("cpu start method not defined for CPU [%d]\n", cpuid);
> +               return -ENODEV;
> +       }
> +       return 0;
> +}
> +
> +const struct cpu_operations cpu_ops_sbi = {
> +       .name           = "sbi",
> +       .cpu_prepare    = sbi_cpu_prepare,
> +       .cpu_start      = sbi_cpu_start,
> +};
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index b85376d84098..ac5b0e0a02f6 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -99,11 +99,37 @@ relocate:
>         ret
>  #endif /* CONFIG_MMU */
>  #ifdef CONFIG_SMP
> +       .global secondary_start_sbi
> +secondary_start_sbi:
> +       /* Mask all interrupts */
> +       csrw CSR_IE, zero
> +       csrw CSR_IP, zero
> +
> +       /* Load the global pointer */
> +       .option push
> +       .option norelax
> +               la gp, __global_pointer$
> +       .option pop
> +
> +       /*
> +        * Disable FPU to detect illegal usage of
> +        * floating point in kernel space
> +        */
> +       li t0, SR_FS
> +       csrc CSR_STATUS, t0
> +
>         /* Set trap vector to spin forever to help debug */
>         la a3, .Lsecondary_park
>         csrw CSR_TVEC, a3
>
>         slli a3, a0, LGREG
> +       la a4, __cpu_up_stack_pointer
> +       la a5, __cpu_up_task_pointer
> +       add a4, a3, a4
> +       add a5, a3, a5
> +       REG_L sp, (a4)
> +       REG_L tp, (a5)
> +
>         .global secondary_start_common
>  secondary_start_common:
>
> diff --git a/arch/riscv/kernel/smpboot.c b/arch/riscv/kernel/smpboot.c
> index e89396a2a1af..4e9922790f6e 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -143,7 +143,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
>  /*
>   * C entry point for a secondary processor.
>   */
> -asmlinkage __visible void __init smp_callin(void)
> +asmlinkage __visible void smp_callin(void)
>  {
>         struct mm_struct *mm = &init_mm;
>
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index ffb3d94bf0cc..8e13ad45ccaa 100644
> --- a/arch/riscv/kernel/traps.c
> +++ b/arch/riscv/kernel/traps.c
> @@ -147,7 +147,7 @@ int is_valid_bugaddr(unsigned long pc)
>  }
>  #endif /* CONFIG_GENERIC_BUG */
>
> -void __init trap_init(void)
> +void trap_init(void)
>  {
>         /*
>          * Set sup0 scratch register to 0, indicating to exception vector
> --
> 2.25.0
>

Looks good to me.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

