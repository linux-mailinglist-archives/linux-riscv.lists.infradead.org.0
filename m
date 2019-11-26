Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C090610983D
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 05:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YN3QO7PRd7cmS2uf+YBTEEySdChDv6+TyfHXOAaGM6c=; b=smujeUiMT+89my
	CELTYmFjfxvGKvRjATHnvhu5p0DolmMCgWJnEeK2elaPkCuzIAVR1bND7FNg7xtGiPMUnn0S5Qfqu
	GLtO0kKXJjDl7Xj2Ym5wf08oXFjlmbwy6KhxeVLaKtdu20//1cUN7LbkVNQj2ramXaL4C7Qxu2wxB
	XJghJvuDkT5gUbpkAxbZhjEPpYeCdINOm04IEzwbV3gKLF5b/eWyWL9m+ucXw4yJCCNcoKEvMFupt
	lMknNbgJ3Q/OhYZH65I2HVK+A/+yzGztib8gS2jWbSZgsgm57bzTUJcesuGw9YuGgohw5D9UolPYz
	oIHBss/Rih0v6qGsbbeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZSBS-0006wP-NO; Tue, 26 Nov 2019 04:10:38 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZSBP-0006vv-R5
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 04:10:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so20719726wrf.9
 for <linux-riscv@lists.infradead.org>; Mon, 25 Nov 2019 20:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wDU9SOnEXlxmjpW27p7gTfRh1I6Y2z5UwP4peUS5RXo=;
 b=Qb7enzkJG72Y47JjTS9HYx9+YQyJsgtL8sosNOnYvSiu9ml63Xoe2+/NDoBc6MqbJW
 9LGDACQsosWnZ9H6nto87PFQjkqmT+bHBhgVp14MuabqgTkAZSGbNXRg01oq7+tPq3UK
 s1qLlJ6zrBRz/UIyf+2oSyyQPoSR4od4rc2jPBzJ8qSsW/9qeMNAyajIv0nG091310fo
 fKrciO/juyLrocXzi1q+4IrXnjZS81MbS+D4YrAw0MPLEb2Wyd6V9m57xAGdM8Doxe99
 oeiXbCFKWKN2hxrWU+Olqipi1ylfBErK8roMloI1S7XLPABfpvgUaVeWjiCPk17x19G2
 tsnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wDU9SOnEXlxmjpW27p7gTfRh1I6Y2z5UwP4peUS5RXo=;
 b=f0AvWW7xuq96QDN6OVdUlr9uasUKQV68XlgDDbFo4cVqZTf7pZtxKRtt0BOJJrPtfl
 CTFpiSSOIJgKM3/WOUUVPxV3vUpE4NdP5GcZpc9eLMWwQeC/HyxIGx1+ddjr1Aj/itAk
 qtcaQfB6zUVb4XmkSwOa8GhIFM4P4R0UBDGwbZqHacnWJ2m7wOBYFfqYD2wVqhEBj1Mz
 0aeVG98WGf/bFFUO3bwZDNIYm8Mpb9JloBtlZujoZIp5o/WD3EHsjXUDadFcclvRO5+W
 jHhlmuBZfcHHjCVNfJvfYSMfjU6xxRNw8FVNqOePSiBcDLf5TgXEVVORSsoQrsdIGefk
 ccAg==
X-Gm-Message-State: APjAAAWAGufrZP31vJCHxovk39+ILL5xsjTmzaKkamDgJek8raKtYaY1
 7aKkZ+uU/fhpFOAZzQLHxZCF2xZteU5nLwyRBhsfVw==
X-Google-Smtp-Source: APXvYqzpjKgt7Sqwc9NkQuq+/SvLVJOjWLtIa1ls1rKXoC2qKJOPtk/als4efzrusjaGAlGagPLvXQb/CSdLG9xCtDw=
X-Received: by 2002:a5d:6b4d:: with SMTP id x13mr33167179wrw.96.1574741433222; 
 Mon, 25 Nov 2019 20:10:33 -0800 (PST)
MIME-Version: 1.0
References: <20191126032033.14825-1-atish.patra@wdc.com>
 <20191126032033.14825-2-atish.patra@wdc.com>
In-Reply-To: <20191126032033.14825-2-atish.patra@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 26 Nov 2019 09:40:22 +0530
Message-ID: <CAAhSdy0cvPbUxCzPH5u63=byjNeu2cmah_DscYf_mSx0a6eynA@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] RISC-V: Mark existing SBI as 0.1 SBI.
To: Atish Patra <atish.patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_201035_939025_4512DE43 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 8:50 AM Atish Patra <atish.patra@wdc.com> wrote:
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
> ---
>  arch/riscv/include/asm/sbi.h | 43 +++++++++++++++++++-----------------
>  1 file changed, 23 insertions(+), 20 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 2570c1e683d3..96aaee270ded 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -9,17 +9,17 @@
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
>         register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
>         register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
>         register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> @@ -43,48 +43,50 @@
>
>  static inline void sbi_console_putchar(int ch)
>  {
> -       SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
> +       SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
>  }
>
>  static inline int sbi_console_getchar(void)
>  {
> -       return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
> +       return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
>  }
>
>  static inline void sbi_set_timer(uint64_t stime_value)
>  {
>  #if __riscv_xlen == 32
> -       SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
> +       SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
> +                         stime_value >> 32);
>  #else
> -       SBI_CALL_1(SBI_SET_TIMER, stime_value);
> +       SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
>  #endif
>  }
>
>  static inline void sbi_shutdown(void)
>  {
> -       SBI_CALL_0(SBI_SHUTDOWN);
> +       SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
>  }
>
>  static inline void sbi_clear_ipi(void)
>  {
> -       SBI_CALL_0(SBI_CLEAR_IPI);
> +       SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
>  }
>
>  static inline void sbi_send_ipi(const unsigned long *hart_mask)
>  {
> -       SBI_CALL_1(SBI_SEND_IPI, hart_mask);
> +       SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
>  }
>
>  static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -       SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
> +       SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
>  }
>
>  static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>                                          unsigned long start,
>                                          unsigned long size)
>  {
> -       SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
> +       SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
> +                         start, size);
>  }
>
>  static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> @@ -92,7 +94,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>                                               unsigned long size,
>                                               unsigned long asid)
>  {
> -       SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
> +       SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
> +                         start, size, asid);
>  }
>  #else /* CONFIG_RISCV_SBI */
>  /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
> --
> 2.23.0
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
