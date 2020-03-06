Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D80E17B67E
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 06:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3IwrZUQqiYpQ05+xHGqOPIrMQ1etdqNiNuQYl6eEQ9g=; b=O6oNQB+tftJGt4XkIphx0lvJd
	z8/UCoFbQmYkPrkvN2kz/QCzQ5q5w6v6oWEyEEnCizRlLqC6vXeqwWyWxbXZu8dBolkkv+1+XUdXp
	LZDGNUw9vDSgeEmY1V8O8NVswkZBEC7mdfQv1JSjDFNBW1l7sfOWE2fgnsFbPwnW22Vvc2gqyVVtQ
	syP6NXYrPVOPxJ3dxPCckwr7kyBvbcYPxtPiLXYDz3zR3HWjd01b7NmyPoUPszJm8A7Wia1Ov0Qre
	tCZrtYx3tr90Ch5G+HEvL1gaqL5KsfW+dJVgR9/gO6k26gETXSKNiT90HvKJSSu2b7B2nUhXlqPaQ
	g6zJKst3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA5mP-0004td-CW; Fri, 06 Mar 2020 05:44:13 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA5mM-0004tI-09
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 05:44:11 +0000
Received: by mail-yw1-xc44.google.com with SMTP id x184so1208358ywd.6
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 21:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3IwrZUQqiYpQ05+xHGqOPIrMQ1etdqNiNuQYl6eEQ9g=;
 b=giWXsPFX5woLiGAB3l2jac5/y8o0/8m49T081i55sOFOy47cjegPQdgCs6tVLLOzte
 P4lhyXl9ns0pyAv6Ww3E0yS+74T72iLhsKRcdK4zRpStqudRtFBL17QDVDTtBRuDC084
 ipODmbjGnlWoGnljRyuoAsJk8Y0kDAy775IAAeNQZoTRWo5XQbQbLerMeJVeBqn4O6ro
 CjqUeO5Yrq4bm1HMvf7ji485y4w/zpZvtyFMXMQ2nYoaywyZSXGPwHAwIBbKtTQddr+4
 5bCujO2+ZW0An7Ifl0Som0RF/uu62D3dq4lEz1Sn8bG92wglLmJAZ8QM2VTIgH/FQV95
 u7XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3IwrZUQqiYpQ05+xHGqOPIrMQ1etdqNiNuQYl6eEQ9g=;
 b=hXqsCpCNUvXH2+QDnK6mvnyyenm7fyo2f67QLoh0hVXc0jgI8xNAZqljqPewDcxllL
 aMXlhKo1Glxd927DLUXpgn761qHEBb6ltLYfLM5FltvgSNPLxjm+gFGRIm33hJXnrRLP
 Hq0QcqALV2XfNP543z6m9GDoma8RBg2QG5g/B6k8BF8Oe9VHwQ1xLt5b98Q17n8lmwLq
 TWALCxefZzHz2mmsmK0UkCFmdkEB2wUj90LSl4X9X4Y1Qa+Qugfu50DPJdlpf/5vDE5f
 Ac+9pOlnGBmsw/uMLwDbJJEOXvpqbJ1uDuLBbsz7oA0VKtbLmKNB9ARUShIoKifrrV7T
 peRQ==
X-Gm-Message-State: ANhLgQ0BmgAJew1ZAZQSYE5UnQVc9pqg6IxqAWQMzhBoHABuaBfuLG0b
 y5fDk6wVC1sQWztR5MPVOMv7LdM8fwSN80UFtns=
X-Google-Smtp-Source: ADFU+vuZE0WLRV4tvglz4GLNzhX9eTqHGAMs5qnxho7fo2tWIzDuNWtzaI++klugU76CQiYD6PIKktR8w/+P9KNmDjI=
X-Received: by 2002:a25:614b:: with SMTP id v72mr2002674ybb.154.1583473448978; 
 Thu, 05 Mar 2020 21:44:08 -0800 (PST)
MIME-Version: 1.0
References: <20200226220213.27423-1-atish.patra@wdc.com>
 <20200226220213.27423-2-atish.patra@wdc.com>
In-Reply-To: <20200226220213.27423-2-atish.patra@wdc.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Fri, 6 Mar 2020 13:43:57 +0800
Message-ID: <CAEUhbmWLNi+vAFjjHLNKQ-PfMUusEEorVN7S8sK0yZhEAUk3Fg@mail.gmail.com>
Subject: Re: [PATCH v10 01/12] RISC-V: Mark existing SBI as 0.1 SBI.
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_214410_073130_B9F34EE7 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bmeng.cn[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Madhavan Srinivasan <maddy@linux.vnet.ibm.com>, Zong Li <zong.li@sifive.com>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmerdabbelt@google.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michael Kelley <mikelley@microsoft.com>, Gary Guo <gary@garyguo.net>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Kees Cook <keescook@chromium.org>,
 Marc Zyngier <maz@kernel.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greentime Hu <greentime.hu@sifive.com>, Borislav Petkov <bp@suse.de>,
 Mao Han <han_mao@c-sky.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Nick Hu <nickhu@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Vincent Chen <vincent.chen@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Steven Price <steven.price@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 6:02 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> As per the new SBI specification, current SBI implementation version
> is defined as 0.1 and will be removed/replaced in future. Each of the
> function call in 0.1 is defined as a separate extension which makes
> easier to replace them one at a time.
>
> Rename existing implementation to reflect that. This patch is just
> a preparatory patch for SBI v0.2 and doesn't introduce any functional
> changes.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup@brainfault.org>
> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
> ---
>  arch/riscv/include/asm/sbi.h | 44 ++++++++++++++++++++----------------
>  1 file changed, 24 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 2570c1e683d3..3db30e739c8f 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -1,6 +1,7 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2015 Regents of the University of California
> + * Copyright (c) 2020 Western Digital Corporation or its affiliates.
>   */
>
>  #ifndef _ASM_RISCV_SBI_H
> @@ -9,17 +10,17 @@
>  #include <linux/types.h>
>
>  #ifdef CONFIG_RISCV_SBI
> -#define SBI_SET_TIMER 0
> -#define SBI_CONSOLE_PUTCHAR 1
> -#define SBI_CONSOLE_GETCHAR 2
> -#define SBI_CLEAR_IPI 3
> -#define SBI_SEND_IPI 4
> -#define SBI_REMOTE_FENCE_I 5
> -#define SBI_REMOTE_SFENCE_VMA 6
> -#define SBI_REMOTE_SFENCE_VMA_ASID 7
> -#define SBI_SHUTDOWN 8
> +#define SBI_EXT_0_1_SET_TIMER 0x0
> +#define SBI_EXT_0_1_CONSOLE_PUTCHAR 0x1
> +#define SBI_EXT_0_1_CONSOLE_GETCHAR 0x2
> +#define SBI_EXT_0_1_CLEAR_IPI 0x3
> +#define SBI_EXT_0_1_SEND_IPI 0x4
> +#define SBI_EXT_0_1_REMOTE_FENCE_I 0x5
> +#define SBI_EXT_0_1_REMOTE_SFENCE_VMA 0x6
> +#define SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID 0x7
> +#define SBI_EXT_0_1_SHUTDOWN 0x8
>
> -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
> +#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \

nits: this line should not be changed

>         register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
>         register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
>         register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> @@ -43,48 +44,50 @@
>

[snip]

Regards,
Bin

