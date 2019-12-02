Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A948110F3B2
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 00:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:In-Reply-To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=M/YjlGnCRUcXAoLETcoBNNAwJe4gUGwuFo59FQXO5PE=; b=lOLCK9iNL/rWiuqtX01rqCofR
	5Af10k6zTtUPDvALtq0uAgoQ+4RUTFoMv5HoyumQ5BUvUeHihCt8a78em0QeoVGQp0KXEXkMgE+Sq
	w30ZLMuZSsOxjlbqkWk+sysaYTon7afdGmFc5tUWl9+3QlPfY8ub+EacvppUW32axLORQLw+LSG4y
	d/IEzdQVblylpV4Nq1orbmIjodA2/C9d4zWA5IOUxNFu/GDaqm+/FKyTdczclzQ1tRd6A9CuuV6uw
	Ss94b6WhLZSWTXd/+ZAhdAkbICpcOmoIBP99DzcyZ3ubJ+h0z72b/uU2WjpfCyvaVtLcxJ6Yg/AwB
	NEXNU8urQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvba-00050t-Jr; Mon, 02 Dec 2019 23:59:50 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvbX-0004zC-GM
 for linux-riscv@lists.infradead.org; Mon, 02 Dec 2019 23:59:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id d199so692695pfd.11
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 15:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=YT4uEP8VQn4YJkJtyGgPiJyFzwEjXrAA5S6YuB+2oi8=;
 b=IhX+gfX151SePSf80mnvPgfzBNoi7l160I1leUO8vw4z6sGDLcawYqngZmXTaYaA75
 GJinrWzAwG2n5eF9F9+S6HuQdd7ZtVcd6T+4BeESFGHTPpYjlXj0pIDtaErhR4vmX+tZ
 JvR7D8JR6oeDxcGX58aa31OkGssNtqY1w0yHn/sUhAbF5ID4rwBZFjzw5tXUwWmNwX0k
 cIGxjhmmgZxRm4xWQCKHgneT9Mm//RPE9y1iQ1zdNGAIOZzXzmaIM52vl69TwHXOmaVF
 GqBpXQq31FdJplaUh3xKALDCK5RxmVYE9HrniTz7crfD7HKthBIqbjB6xX9YiYlN/kHs
 6gOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=YT4uEP8VQn4YJkJtyGgPiJyFzwEjXrAA5S6YuB+2oi8=;
 b=t32FsKOYFQkXtUDWmoosYV0T9PCcGVlrtG+vGCofYGbeNULmU4Il0LRrqvGdgVch+Y
 1Wv6cXKSCs6k30SYzwoBlwigi5bRGLdkjkwe83wvI51pLgGpmRatyIQ1iWYyFeg7AxFN
 PwLpHanzoAQix7LDI1zY8qVdR1Og5KvIiQXTl/BfMIcAEVLPjv5FkolExtKAQ6+kw+WJ
 lRCdV2NLxCP/Tt+YU38/qDLHY3UI8fKQ3ZBFSDNJ88WdeGFxGxBXP5QADmeUVuKewcq9
 rKcvQF99aSSJlT16iniEtxChXqJ/sQD0JmxLd5XPz2N3yt+/MBYo8amTYP6GArtZUucB
 VcTg==
X-Gm-Message-State: APjAAAWRgloz0oQX3F6kKCiOzdYWaobAelF9SRBq2x8k79D5JApjxa3D
 0YPLm8qvJ8gw6oVeEepMk4eetA==
X-Google-Smtp-Source: APXvYqykaR/R8TB3hQac8uHJ7QdwdCLs0KiSo+C3wn7tXDCMm9hYQ7g5cySoXmTQM2Gjg5ylFx9ebw==
X-Received: by 2002:a63:3404:: with SMTP id b4mr1966314pga.438.1575331185704; 
 Mon, 02 Dec 2019 15:59:45 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id 203sm618912pfy.185.2019.12.02.15.59.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:59:45 -0800 (PST)
Date: Mon, 02 Dec 2019 15:59:45 -0800 (PST)
X-Google-Original-Date: Mon, 02 Dec 2019 15:55:49 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH v5 1/4] RISC-V: Mark existing SBI as 0.1 SBI.
In-Reply-To: <20191126190503.19303-2-atish.patra@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-18ffe96a-7a03-475f-ae9b-2d450fc3d29e@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_155947_572511_AADE1081 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, alexios.zavras@intel.com, anup@brainfault.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, han_mao@c-sky.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 11:05:00 PST (-0800), Atish Patra wrote:
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
> -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({		\
> +#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({             \
>  	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
>  	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
>  	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
> @@ -43,48 +43,50 @@
>
>  static inline void sbi_console_putchar(int ch)
>  {
> -	SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
> +	SBI_CALL_1(SBI_EXT_0_1_CONSOLE_PUTCHAR, ch);
>  }
>
>  static inline int sbi_console_getchar(void)
>  {
> -	return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
> +	return SBI_CALL_0(SBI_EXT_0_1_CONSOLE_GETCHAR);
>  }
>
>  static inline void sbi_set_timer(uint64_t stime_value)
>  {
>  #if __riscv_xlen == 32
> -	SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
> +	SBI_CALL_2(SBI_EXT_0_1_SET_TIMER, stime_value,
> +			  stime_value >> 32);
>  #else
> -	SBI_CALL_1(SBI_SET_TIMER, stime_value);
> +	SBI_CALL_1(SBI_EXT_0_1_SET_TIMER, stime_value);
>  #endif
>  }
>
>  static inline void sbi_shutdown(void)
>  {
> -	SBI_CALL_0(SBI_SHUTDOWN);
> +	SBI_CALL_0(SBI_EXT_0_1_SHUTDOWN);
>  }
>
>  static inline void sbi_clear_ipi(void)
>  {
> -	SBI_CALL_0(SBI_CLEAR_IPI);
> +	SBI_CALL_0(SBI_EXT_0_1_CLEAR_IPI);
>  }
>
>  static inline void sbi_send_ipi(const unsigned long *hart_mask)
>  {
> -	SBI_CALL_1(SBI_SEND_IPI, hart_mask);
> +	SBI_CALL_1(SBI_EXT_0_1_SEND_IPI, hart_mask);
>  }
>
>  static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
>  {
> -	SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
> +	SBI_CALL_1(SBI_EXT_0_1_REMOTE_FENCE_I, hart_mask);
>  }
>
>  static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
>  					 unsigned long start,
>  					 unsigned long size)
>  {
> -	SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
> +	SBI_CALL_3(SBI_EXT_0_1_REMOTE_SFENCE_VMA, hart_mask,
> +			  start, size);
>  }
>
>  static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> @@ -92,7 +94,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  					      unsigned long size,
>  					      unsigned long asid)
>  {
> -	SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
> +	SBI_CALL_4(SBI_EXT_0_1_REMOTE_SFENCE_VMA_ASID, hart_mask,
> +			  start, size, asid);
>  }
>  #else /* CONFIG_RISCV_SBI */
>  /* stubs for code that is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
