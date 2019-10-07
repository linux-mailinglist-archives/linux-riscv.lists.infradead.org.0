Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48212CEE01
	for <lists+linux-riscv@lfdr.de>; Mon,  7 Oct 2019 22:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lXLEk2l/YybFtIU3fb5XTn+DASwcoZm1Ok2t5gp6Ag=; b=nWw4KVEl13KPJ3
	5Vi3kbELc1j35o5DLWcSYPNRCUEMAyz8jkMj/DxxsbSBE2ULjnUIIm1G/voq7Yc0hwbokHDQyWFLV
	Icz5du8MENpC7JFrYU3fHIUkPtTGmKzAxREmDQqmOb+h3rvgy0qtrIWC16Vbi7Z5iXSyUY+mhh77C
	z9NbLliXdc/Sev70F7gUhb4kmHSTF3tBgf05fLtFgiv0eVqhYbcxZaQ2bPtI9rKGcGhIziPUEtNbN
	3MhZbq4IFMj5V7zSkBvZ8LmJkkK9CZkd8BCl/Eyd2vyOgWbUiPzsNVXv4/Q1Z7m2cm7l5QuI8AQ9E
	XB44SCwTx6BaT6lMieHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHZxS-0005HX-2L; Mon, 07 Oct 2019 20:50:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHZxN-0005H2-Nv
 for linux-riscv@lists.infradead.org; Mon, 07 Oct 2019 20:50:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id u12so7420113pls.12
 for <linux-riscv@lists.infradead.org>; Mon, 07 Oct 2019 13:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s4Shsw+6sGxr3OmeI5cl0LB9qg4ku4vdDbmo7icsZlA=;
 b=Guz9Tn5E8YQvixfu0ruLKK0ERug3Nm5NufrDZKAE7rqaZUzNXzdfPlI1k7gCy8O4pd
 Sk3xh79rNr2eLv7ZziW5csZTxGR5087YjKResPsfGr7yFhVN33PKsmP0j91+PFEk0NkO
 nw+rNPLa7ODPHwJpIdp2/9DWUoOommbKmOYTTGKbsEBPRu9yMNYBP/pbHnwsl/5P7uV4
 1YZRr7S6gxMg9qD8PTuvIrZLdo3WnnnRxIDMOds0QeCh8tlECiSzjQwsN57S6929G2yi
 oE+ZuWc1t/A8Ko7Yt+pDSgvTBe4ev0AtInI/c7V54b7JjpwwX65PCKQY3nB35TK/e+oX
 A1Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s4Shsw+6sGxr3OmeI5cl0LB9qg4ku4vdDbmo7icsZlA=;
 b=gYsz+KEdaQY9YREaKrYg/mMCg22C1mfTID443DxD12SSn98ht6qwdVjIKxX5CnRlIX
 KrZ5waqN8D/9WDoFwcORqRX8l15V718kbvmiv+g/Zsp21l2QVSZHObA2budBp2ZaL4kc
 c//HsMfMajFp+aFFZd3tNDYzGfESPAO6vcMnCeLqg0F6q0tIZwo6s5yz1JThPD1J0jjw
 4KYzDiLVSjt8Wjv1PsAShsArEjyYfRuoL658B129mdxQHbci2v1p6p5o4R7YJ9qnsYx6
 Ovjh79XiVQVNacpptDB0l0V/2UP5PRbq9Tnp3DvvXQrBOPWd/Y7ABVaEaZTpnIf+dzuz
 LDeA==
X-Gm-Message-State: APjAAAXHvneE0kvMvmGXD6kamNHpL0uiUgu6MLz1TYIHUNl7cqTe6Zfk
 B18YxEEqTz591gZ788tOSE58G1AY+JMiThtNQX/15Q==
X-Google-Smtp-Source: APXvYqxkO/X4o9LWDzg+/FgAW3ZtqeFHtpbN1uOJ+QrSWrukKC6wvETpg395E3HuJjIq/SxYTpNrVGCltdOk7Fz4EsE=
X-Received: by 2002:a17:902:820e:: with SMTP id
 x14mr192588pln.223.1570481412032; 
 Mon, 07 Oct 2019 13:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190927214341.170683-1-irogers@google.com>
 <20191001003623.255186-1-irogers@google.com>
In-Reply-To: <20191001003623.255186-1-irogers@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 7 Oct 2019 13:49:59 -0700
Message-ID: <CAKwvOdkug92BFruTKOSdkNgAXrQx4=pEEwc7TwqkAK8YctYamw@mail.gmail.com>
Subject: Re: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
To: Ian Rogers <irogers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_135013_808609_EE23A136 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Andi Kleen <ak@linux.intel.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Palmer Dabbelt <palmer@sifive.com>, LKML <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Guo Ren <guoren@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-riscv@lists.infradead.org, Jiri Olsa <jolsa@redhat.com>,
 Mao Han <han_mao@c-sky.com>, Kan Liang <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 5:36 PM 'Ian Rogers' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Being const + weak breaks with some compilers that constant-propagate
> from the weak symbol. This behavior is outside of the specification, but
> in LLVM is chosen to match GCC's behavior.
>
> LLVM's implementation was set in this patch:
> https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646
> A const + weak symbol is set to be weak_odr:
> https://llvm.org/docs/LangRef.html
> ODR is one definition rule, and given there is one constant definition
> constant-propagation is possible. It is possible to get this code to
> miscompile with LLVM when applying link time optimization. As compilers
> become more aggressive, this is likely to break in more instances.
>
> Move the definition of sample_reg_masks to the conditional part of
> perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
> weak symbol.
>
> Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
> In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
> don't declare sample_regs_masks.

s/sample_regs_masks/sample_reg_masks/
(otherwise I thought for a second that my grep was broken)

So powerpc and x86 set `NO_PERF_REGS := 0` AND declare `const struct
sample_reg sample_reg_masks[]`.

From what I can tell, it makes the below architectures match the way
x86 and powerpc are structured.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/arch/arm/util/Build         | 2 ++
>  tools/perf/arch/arm/util/perf_regs.c   | 6 ++++++
>  tools/perf/arch/arm64/util/Build       | 1 +
>  tools/perf/arch/arm64/util/perf_regs.c | 6 ++++++
>  tools/perf/arch/csky/util/Build        | 2 ++
>  tools/perf/arch/csky/util/perf_regs.c  | 6 ++++++
>  tools/perf/arch/riscv/util/Build       | 2 ++
>  tools/perf/arch/riscv/util/perf_regs.c | 6 ++++++
>  tools/perf/arch/s390/util/Build        | 1 +
>  tools/perf/arch/s390/util/perf_regs.c  | 6 ++++++
>  tools/perf/util/parse-regs-options.c   | 8 ++++++--
>  tools/perf/util/perf_regs.c            | 4 ----
>  tools/perf/util/perf_regs.h            | 4 ++--
>  13 files changed, 46 insertions(+), 8 deletions(-)
>  create mode 100644 tools/perf/arch/arm/util/perf_regs.c
>  create mode 100644 tools/perf/arch/arm64/util/perf_regs.c
>  create mode 100644 tools/perf/arch/csky/util/perf_regs.c
>  create mode 100644 tools/perf/arch/riscv/util/perf_regs.c
>  create mode 100644 tools/perf/arch/s390/util/perf_regs.c
>
> diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
> index 296f0eac5e18..37fc63708966 100644
> --- a/tools/perf/arch/arm/util/Build
> +++ b/tools/perf/arch/arm/util/Build
> @@ -1,3 +1,5 @@
> +perf-y += perf_regs.o
> +
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>
>  perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
> diff --git a/tools/perf/arch/arm/util/perf_regs.c b/tools/perf/arch/arm/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/arm/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
> index 3cde540d2fcf..0a7782c61209 100644
> --- a/tools/perf/arch/arm64/util/Build
> +++ b/tools/perf/arch/arm64/util/Build
> @@ -1,4 +1,5 @@
>  perf-y += header.o
> +perf-y += perf_regs.o
>  perf-y += sym-handling.o
>  perf-$(CONFIG_DWARF)     += dwarf-regs.o
>  perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
> diff --git a/tools/perf/arch/arm64/util/perf_regs.c b/tools/perf/arch/arm64/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/arm64/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/csky/util/Build b/tools/perf/arch/csky/util/Build
> index 1160bb2332ba..7d3050134ae0 100644
> --- a/tools/perf/arch/csky/util/Build
> +++ b/tools/perf/arch/csky/util/Build
> @@ -1,2 +1,4 @@
> +perf-y += perf_regs.o
> +
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> diff --git a/tools/perf/arch/csky/util/perf_regs.c b/tools/perf/arch/csky/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/csky/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/util/Build
> index 1160bb2332ba..7d3050134ae0 100644
> --- a/tools/perf/arch/riscv/util/Build
> +++ b/tools/perf/arch/riscv/util/Build
> @@ -1,2 +1,4 @@
> +perf-y += perf_regs.o
> +
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> diff --git a/tools/perf/arch/riscv/util/perf_regs.c b/tools/perf/arch/riscv/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/riscv/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/s390/util/Build b/tools/perf/arch/s390/util/Build
> index 22797f043b84..3d9d0f4f72ca 100644
> --- a/tools/perf/arch/s390/util/Build
> +++ b/tools/perf/arch/s390/util/Build
> @@ -1,5 +1,6 @@
>  perf-y += header.o
>  perf-y += kvm-stat.o
> +perf-y += perf_regs.o
>
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> diff --git a/tools/perf/arch/s390/util/perf_regs.c b/tools/perf/arch/s390/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/s390/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/util/parse-regs-options.c b/tools/perf/util/parse-regs-options.c
> index ef46c2848808..e687497b3aac 100644
> --- a/tools/perf/util/parse-regs-options.c
> +++ b/tools/perf/util/parse-regs-options.c
> @@ -13,7 +13,7 @@ static int
>  __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
>  {
>         uint64_t *mode = (uint64_t *)opt->value;
> -       const struct sample_reg *r;
> +       const struct sample_reg *r = NULL;
>         char *s, *os = NULL, *p;
>         int ret = -1;
>         uint64_t mask;
> @@ -46,19 +46,23 @@ __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
>
>                         if (!strcmp(s, "?")) {
>                                 fprintf(stderr, "available registers: ");
> +#ifdef HAVE_PERF_REGS_SUPPORT
>                                 for (r = sample_reg_masks; r->name; r++) {
>                                         if (r->mask & mask)
>                                                 fprintf(stderr, "%s ", r->name);
>                                 }
> +#endif
>                                 fputc('\n', stderr);
>                                 /* just printing available regs */
>                                 return -1;
>                         }
> +#ifdef HAVE_PERF_REGS_SUPPORT
>                         for (r = sample_reg_masks; r->name; r++) {
>                                 if ((r->mask & mask) && !strcasecmp(s, r->name))
>                                         break;
>                         }
> -                       if (!r->name) {
> +#endif
> +                       if (!r || !r->name) {
>                                 ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
>                                             s, intr ? "-I" : "--user-regs=");
>                                 goto error;
> diff --git a/tools/perf/util/perf_regs.c b/tools/perf/util/perf_regs.c
> index 2774cec1f15f..5ee47ae1509c 100644
> --- a/tools/perf/util/perf_regs.c
> +++ b/tools/perf/util/perf_regs.c
> @@ -3,10 +3,6 @@
>  #include "perf_regs.h"
>  #include "event.h"
>
> -const struct sample_reg __weak sample_reg_masks[] = {
> -       SMPL_REG_END
> -};
> -
>  int __weak arch_sdt_arg_parse_op(char *old_op __maybe_unused,
>                                  char **new_op __maybe_unused)
>  {
> diff --git a/tools/perf/util/perf_regs.h b/tools/perf/util/perf_regs.h
> index 47fe34e5f7d5..e014c2c038f4 100644
> --- a/tools/perf/util/perf_regs.h
> +++ b/tools/perf/util/perf_regs.h
> @@ -15,8 +15,6 @@ struct sample_reg {
>  #define SMPL_REG2(n, b) { .name = #n, .mask = 3ULL << (b) }
>  #define SMPL_REG_END { .name = NULL }
>
> -extern const struct sample_reg sample_reg_masks[];
> -
>  enum {
>         SDT_ARG_VALID = 0,
>         SDT_ARG_SKIP,
> @@ -27,6 +25,8 @@ uint64_t arch__intr_reg_mask(void);
>  uint64_t arch__user_reg_mask(void);
>
>  #ifdef HAVE_PERF_REGS_SUPPORT
> +extern const struct sample_reg sample_reg_masks[];
> +
>  #include <perf_regs.h>
>
>  #define DWARF_MINIMAL_REGS ((1ULL << PERF_REG_IP) | (1ULL << PERF_REG_SP))
> --
> 2.23.0.444.g18eeb5a265-goog
>
> --

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
