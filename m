Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 444F115A047
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Feb 2020 05:53:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3I87EH+GVaQ1tMMhv9dMZ3J2ca6jz68b2jHRtZzzGrE=; b=RX8cvV0FM9ACiIkRzp1wMu83x
	Noyz40uPM+FQmQWuX3wKW3UY21ztZ8ug0BcQ2189RG7sp5loguvS4AT7oAUfb0RiQPeVw8EIAsikl
	goDp7+FT1UDP4fvUNQZSlH5PodR/KzljlWZr8/njrPyhqrd2xfLcAhnmTGi4DRjT6i5xrSHvy98XF
	Ex+Zn7eTvQe/RgNbUJ+QmaPlqKCBPKRcmEo8dtV8R79dUYwDtDcK2xXv47AuUU7j/tHTJs9KGNmHo
	1lFWV5YIo1mWZGh10TvEf2wGpjbiekOD11tuS5QWl5aTvP4WUS4N8cCGZBp1KuCZMY22Fcy293VmD
	o580MtlHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1k22-00014T-6f; Wed, 12 Feb 2020 04:53:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1k1y-00013h-VG
 for linux-riscv@lists.infradead.org; Wed, 12 Feb 2020 04:53:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id t23so543402wmi.1
 for <linux-riscv@lists.infradead.org>; Tue, 11 Feb 2020 20:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3I87EH+GVaQ1tMMhv9dMZ3J2ca6jz68b2jHRtZzzGrE=;
 b=c7m6T8T5rmy0mHF1oAmaFmrtVteMYQJdBz4blG6xOf87l4Dlwh+YCoY/P0OXA6m+0A
 wtN9AHvBOpZ1i32ivvOZj9CxRXqtVEye69+8eiV1i20engxcxplRtqJNPJvuwYxzAii7
 UdspKJHx0ExgkFGPc14M5u5ENSp3j30turGWKWiZG6O4ejUo7Xj/RbjfKtjznStD1nmF
 ItCtm/01ke0+ajqRw03RcfLRdEuOAlTc8kPAoKXZPiScaT3m3+mawj37iG2TJ5tlldBk
 urMKG4fnw39kp+q90SyDw0yENv6vb+2z868FmQRmuEfd4u81hwLJaGT0fZ6+hyscYpzK
 fojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3I87EH+GVaQ1tMMhv9dMZ3J2ca6jz68b2jHRtZzzGrE=;
 b=cWxy4VTVqygKbaDihF4QmIH5toREzxgLA221/g3xii/buIbmMaUx2ojwv9Ie8EApPH
 qnCGS8rTvMDK+2uYuSEWUs3j4lYf8ihCt83f9zoMqVttTwM/xc06J/TynfuTbTWglFEf
 twJDQ8rwAB0niv6QXDrnb43hByU1OVpFaqEGVqnosaYI+EfWMEfUp1guKoW4fSDq+eC3
 WZlRD/JhtB7QmtVQWv2yTQtcMq3tg9SP18azOrB/sgq/e2+rKyLOSNlUZDCN71gDoKxN
 jiJGnmyXushfUWw9+QMMKu0MzPNzVOsuxolIfPhXkSkDYTfxbo4VOk5F4iFZ7eDUmVM3
 hhVg==
X-Gm-Message-State: APjAAAXWGbaQQAkyuehWDzLxhjHc3++uBWexzVpqQy1r/Cgau4364ab4
 Ys9QymZXAlt6ZuS8+Gqna5rf9kbzJSiU48VemkEwTQ==
X-Google-Smtp-Source: APXvYqwCXw2uLBV+Qtq2e1xTQCaBzWwqzFm2Nk54/DQ46VVW052ulmWJERF3UW0vJ6ZHZ018IbGAgNSFi4PkwkaVGgA=
X-Received: by 2002:a1c:bdc6:: with SMTP id
 n189mr10400816wmf.102.1581483222225; 
 Tue, 11 Feb 2020 20:53:42 -0800 (PST)
MIME-Version: 1.0
References: <20200212014822.28684-1-atish.patra@wdc.com>
 <20200212014822.28684-9-atish.patra@wdc.com>
In-Reply-To: <20200212014822.28684-9-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 12 Feb 2020 10:23:30 +0530
Message-ID: <CAAhSdy1BB=-FR_hx2mObDeWD+z2WzaVdZeiO9inmGPXasMcCTg@mail.gmail.com>
Subject: Re: [PATCH v8 08/11] RISC-V: Add SBI HSM extension
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_205347_007059_D091F931 
X-CRM114-Status: GOOD (  18.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Wed, Feb 12, 2020 at 7:22 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> SBI specification defines HSM extension that allows to start/stop a hart
> by a supervisor anytime. The specification is available at
>
> https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
>
> Implement SBI HSM extension.

I think this PATCH needs to be further broken down.

There are three distinct changes here:
1. Exporting sbi_err_map_linux_errno() function
    arch/riscv/kernel/sbi.c
    arch/riscv/include/asm/sbi.h
2. SBI HSM defines
    arch/riscv/include/asm/sbi.h
3. SBI HSM helper functions (which are mostly static functions)
    arch/riscv/kernel/Makefile
    arch/riscv/kernel/cpu_ops_sbi.c

We need separate patches for point1 and point2 above.

Also, point3 can be part of current PATCH9.

Regards,
Anup

>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h    | 15 +++++++++++
>  arch/riscv/kernel/Makefile      |  3 +++
>  arch/riscv/kernel/cpu_ops_sbi.c | 48 +++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/sbi.c         |  3 ++-
>  4 files changed, 68 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/kernel/cpu_ops_sbi.c
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index d55d8090ab5c..0981a0c97eda 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -26,6 +26,7 @@ enum sbi_ext_id {
>         SBI_EXT_TIME = 0x54494D45,
>         SBI_EXT_IPI = 0x735049,
>         SBI_EXT_RFENCE = 0x52464E43,
> +       SBI_EXT_HSM = 0x48534D,
>  };
>
>  enum sbi_ext_base_fid {
> @@ -56,6 +57,19 @@ enum sbi_ext_rfence_fid {
>         SBI_EXT_RFENCE_REMOTE_HFENCE_VVMA_ASID,
>  };
>
> +enum sbi_ext_hsm_fid {
> +       SBI_EXT_HSM_HART_START = 0,
> +       SBI_EXT_HSM_HART_STOP,
> +       SBI_EXT_HSM_HART_STATUS,
> +};
> +
> +enum sbi_hsm_hart_status {
> +       SBI_HSM_HART_STATUS_AVAILABLE = 0,
> +       SBI_HSM_HART_STATUS_NOT_AVAILABLE,
> +       SBI_HSM_HART_STATUS_START_PENDING,
> +       SBI_HSM_HART_STATUS_STOP_PENDING,
> +};
> +
>  #define SBI_SPEC_VERSION_DEFAULT       0x1
>  #define SBI_SPEC_VERSION_MAJOR_SHIFT   24
>  #define SBI_SPEC_VERSION_MAJOR_MASK    0x7f
> @@ -130,6 +144,7 @@ static inline unsigned long sbi_minor_version(void)
>  {
>         return sbi_spec_version & SBI_SPEC_VERSION_MINOR_MASK;
>  }
> +int sbi_err_map_linux_errno(int err);
>  #else /* CONFIG_RISCV_SBI */
>  /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
>  void sbi_set_timer(uint64_t stime_value);
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
> diff --git a/arch/riscv/kernel/cpu_ops_sbi.c b/arch/riscv/kernel/cpu_ops_sbi.c
> new file mode 100644
> index 000000000000..9bdb60e0a4df
> --- /dev/null
> +++ b/arch/riscv/kernel/cpu_ops_sbi.c
> @@ -0,0 +1,48 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * HSM extension and cpu_ops implementation.
> + *
> + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <linux/init.h>
> +#include <linux/mm.h>
> +#include <asm/sbi.h>
> +#include <asm/smp.h>
> +
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
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> index cd0f68aeac70..45ad49269f2c 100644
> --- a/arch/riscv/kernel/sbi.c
> +++ b/arch/riscv/kernel/sbi.c
> @@ -47,7 +47,7 @@ struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
>  }
>  EXPORT_SYMBOL(sbi_ecall);
>
> -static int sbi_err_map_linux_errno(int err)
> +int sbi_err_map_linux_errno(int err)
>  {
>         switch (err) {
>         case SBI_SUCCESS:
> @@ -64,6 +64,7 @@ static int sbi_err_map_linux_errno(int err)
>                 return -ENOTSUPP;
>         };
>  }
> +EXPORT_SYMBOL(sbi_err_map_linux_errno);
>
>  #ifdef CONFIG_RISCV_SBI_V01
>  /**
> --
> 2.24.0
>

