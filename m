Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B722A15A049
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 05:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6BmVz8M0DHmO6ndjWhbEydu5XNnhgxAMx801ictogH0=; b=WjQ9lkVPDKtRPZ0NIs2C6it7Y
	mE0g/aGG6zFFHCktFkdV8+hcxpsQJmDqI9AJ8GSUTLrreerzRrPtr99xRmuzkUx++Qa3YE7iUs5fy
	gSvDXPOqP8wd+7mqKTLdEjC8Vaas0hMN2qrJJsTJ6JSrSUJvjm6rG6Ov6EwxFrI8+ld+gXX2iwptd
	GGmRkSArgdLkL1/ZxA7IueTKehqeWL8g59mSBc7yYifADgMLL2C/4EOhZn//UJIbZCev/izB/tJpP
	t7+SYRCwzYBQstdmhNvNyLgFbhSNO8zPhinQ9qB1HMWVLQAuNkUgOU4dEdGGScuybDJXK1Cg+Kawo
	qNWcJ5d6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1k5U-0002PT-HQ; Wed, 12 Feb 2020 04:57:24 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1k5Q-0002P1-W5
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 04:57:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id r11so518600wrq.10
 for <linux-riscv@lists.infradead.org>; Tue, 11 Feb 2020 20:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6BmVz8M0DHmO6ndjWhbEydu5XNnhgxAMx801ictogH0=;
 b=g+YTRJuo4tDXTnbiJgTSMYfeGIYy0IZgZjoegtGBMTBYJ4RqZJKGPGRD0Hbshg0GTD
 n7I8FpIAqlet+MD0Eg7vZESGIPtvUKp0OdawI5mZrRLsDoFFSSOYbh43owWApRSv9gpd
 TEeOHmrM0K40AFVUOMSootpcheA7qapdssRmyEKAsv+nad4+fDeGeC+sMYLO9apAhRmI
 RWU0fUYQyYvfI0KwV1FqfXXNNLIM3c92O/iV8Q8JwNB4M0YWrB8pzrPJHS47bNmq89nj
 FrS40WdVYxWQdqPrjIsa8xTUkpNvDp+9yfx3DdeHplCgbbpks87nXggmdNo6uKv0eNhA
 XOHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6BmVz8M0DHmO6ndjWhbEydu5XNnhgxAMx801ictogH0=;
 b=kaKs/dzmTaI1x0TNYPjWTpG7bPPGfRzNrI7xalweiVlhe52A2OY29KoYowiWXdEONP
 YZYvLJ1dp8yEno0yMeG6D98yvm7JvxO5JFhUFYkvJu5SuhPQXOrKzALIyoOG0URVNnHm
 ti03qlpiphCmP/xMoivn8pE+ivVA2xZY+a+QMf5EI5i2Ijfz7P2LalFSCxxdmyUogBkS
 qBXQAy2lzmixtwpV5MUL8e5dm+xLqXlfCzQM7CF0Yu6ZaiIJK0aqUY/UFe9B0cYeCC6v
 tbkqHOkcZM1o8s/4XxN/hQsfAry/QJTz+SoaIWSroDLk+bS6Aj0MjVNcmyiQ1D3Rf7XY
 5Tjg==
X-Gm-Message-State: APjAAAWLeRsMw9bUo/rfg41uO0O1uhlafDroS9BWRSz0segcNhJkFnu/
 ZYkuHjkIqCzIsuywXL8utZy26lp7na1BP9I4p08vQw==
X-Google-Smtp-Source: APXvYqy/7JQfNq07kkVhnyCwlxFDKokr2LfQNOtJeWVVKaLF1GsIn0y4auWMosXK2ZaUHdNANRoG+bk1SFgRtjSZGik=
X-Received: by 2002:adf:f28f:: with SMTP id k15mr12564779wro.230.1581483439490; 
 Tue, 11 Feb 2020 20:57:19 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-10-atish.patra@wdc.com>
In-Reply-To: <20200212014822.28684-10-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 12 Feb 2020 10:27:08 +0530
Message-ID: <CAAhSdy0qK+MC4+Yu6OM20XwzrAennzyi68SOmkC5KAzPJOqTng@mail.gmail.com>
Subject: Re: [PATCH v8 09/11] RISC-V: Add supported for ordered booting method
 using HSM
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_205721_035001_B07776FF 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Mao Han <han_mao@c-sky.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Borislav Petkov <bp@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Kees Cook <keescook@chromium.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 7:21 AM Atish Patra <atish.patra@wdc.com> wrote:
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
>  arch/riscv/kernel/cpu_ops.c     | 10 +++++++++-
>  arch/riscv/kernel/cpu_ops_sbi.c | 31 +++++++++++++++++++++++++++++++
>  arch/riscv/kernel/head.S        | 26 ++++++++++++++++++++++++++
>  arch/riscv/kernel/smpboot.c     |  2 +-
>  arch/riscv/kernel/traps.c       |  2 +-
>  5 files changed, 68 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/cpu_ops.c b/arch/riscv/kernel/cpu_ops.c
> index 1085def3735a..6221bbedaea4 100644
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
> @@ -34,7 +35,14 @@ void cpu_update_secondary_bootdata(unsigned int cpuid,
>
>  int __init cpu_set_ops(int cpuid)
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
>
>         return 0;
>  }
> diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> index 9bdb60e0a4df..31487a80c3b8 100644
> --- a/arch/riscv/kernel/cpu_ops_sbi.c
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -7,9 +7,13 @@
>
>  #include <linux/init.h>
>  #include <linux/mm.h>
> +#include <asm/cpu_ops.h>
>  #include <asm/sbi.h>
>  #include <asm/smp.h>
>
> +extern char secondary_start_sbi[];
> +const struct cpu_operations cpu_ops_sbi;
> +
>  static int sbi_hsm_hart_stop(void)
>  {
>         struct sbiret ret;
> @@ -46,3 +50,30 @@ static int sbi_hsm_hart_get_status(unsigned long hartid)
>         else
>                 return ret.value;
>  }
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
> index c1be597d22a1..8386cfafba98 100644
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
> index 2ee41c779a16..2c56ac70e64d 100644
> --- a/arch/riscv/kernel/smpboot.c
> +++ b/arch/riscv/kernel/smpboot.c
> @@ -146,7 +146,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
>  /*
>   * C entry point for a secondary processor.
>   */
> -asmlinkage __visible void __init smp_callin(void)
> +asmlinkage __visible void smp_callin(void)
>  {
>         struct mm_struct *mm = &init_mm;
>
> diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
> index f4cad5163bf2..0063dd7318d6 100644
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
> 2.24.0
>

Overall, this patch looks good but SBI HSM helper functions
from PATCH8 should be moved to this patch.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

