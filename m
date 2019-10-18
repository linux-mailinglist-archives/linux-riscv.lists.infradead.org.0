Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F5DBB85
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 04:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tW9DNcq/Gi2rAaVl0NtOAr/1sfn/mUvraXetP0CBZlo=; b=azuz9SuIUPkU8I
	EOaXWZzHijj1Do9/EUHiBHkXmZaiJ5cAxRw0ykD/bAYt5Vq54iMdFahfCnwxKpO0qbgsEPk5gxtOH
	7v02VosR/GgVjYDaJbW13aSlcsEowpEBwSNPkHZVJguxkM1iUx1OQhxTXA0oUDHOH1ZG8mboba4vp
	zROaYbL3dX9Hf3ZT2gZuUYck0IGFkURa8w0XtQ326Bszu6XjF7vHcA+5oyaSiVUOGk9oaFJIcR95D
	buBUBqXybBDjt9oEghwsGG/PL81h7dSh0/z48cTiqf25bes6DZGQr2JF5DPIa/bw/OkQKfdIofVKn
	jDkDIZHmLb3ynzOCKswg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIQO-0001z9-UC; Fri, 18 Oct 2019 02:55:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIQL-0001yp-ID
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 02:55:31 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so4534091wmi.3
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 19:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xKBYmqBKnM/fTox+DxH/j6jDg0wBrXkD7WU8TmLcePI=;
 b=P7b8jX1ijvI/1bRMfMuCiF0DEfoT7NClM6s9cMKR7dPyvouJu3HRaHo0oNEOiIahvW
 LnPgQ7tzaz6FV2kJQH7KN0daOdPvxM/i8MQyIWUjxhfUwumj9stzNXKAyHHcvFdn4OI/
 t8qPLUyAZ+NvrqlrlxFWHnMKvbZHDa0pnlb2cgzexpgcQQzLIjqlxum+EFN5TA1U1mcn
 wjB+Ni93KTrNJB7Ncrk/ysFSdGxHwows7K8UvOp1offJm7vaxd9gggcXKetxJilyGmE5
 y3s8l4JLTbm8cp5/1FfpR+C9aw1JnFbY61P4A8w45w431ia/nPKYBTcieXjzaowvKALO
 4JWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xKBYmqBKnM/fTox+DxH/j6jDg0wBrXkD7WU8TmLcePI=;
 b=ClSfXy+1fibhNt2SD8iA+jQz0KZ69d3QVgY8XYfg5/KsMX1lE1bP1Sp8EJPNzh47ir
 Cb8lzoOHUvG0isVsK2dy9S9DyaN+5mml5Kxwvvn4EOc1srxK3IYkIWax1HcycZ/hSND4
 zBKvUcrS+9UiFbDX2HNZ/Boek6u9NA358pA4FxgVgP19ImfrP4dOsNnp5KiT9cguKsDu
 +fy0aZQZKlfuslo9Oa/ZHbDY97wCqJy2FvwNzo5wuWejEutYelPcGcIlUpXSwy/okonb
 H3Nbq2YdTS4om5VPoR7XiwvEmT/p0Y9qbBXDYMdAT62NId41Rpmya6smi4NN/rhp4g7c
 ab1w==
X-Gm-Message-State: APjAAAW44V22cnzEzvrsmOuFL/ZqXMrc5kfpPtdwe77JtqjXFiMbzaVo
 +OlNDgO2nRrAtAk0lIDGcDSOwbe4M9LaFiekerh1GA==
X-Google-Smtp-Source: APXvYqw+zZ6m5fPdynWeKKLdxpqE/Ya5xs97ZcCWMTHNwCMgBFStCutZthRzJj95DpqP7ZHXHVJR1o+avys8gdz7thE=
X-Received: by 2002:a1c:bc07:: with SMTP id m7mr5449292wmf.103.1571367327709; 
 Thu, 17 Oct 2019 19:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-8-hch@lst.de>
In-Reply-To: <20191017173743.5430-8-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:25:17 +0530
Message-ID: <CAAhSdy2DpOh2FZUUjiYdHf0Oh-j_RJyXv6AvJDg+DNNfSdJSOw@mail.gmail.com>
Subject: Re: [PATCH 07/15] riscv: implement remote sfence.i using IPIs
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_195529_603344_8C522DF0 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:08 PM Christoph Hellwig <hch@lst.de> wrote:
>
> The RISC-V ISA only supports flushing the instruction cache for the
> local CPU core.  Currently we always offload the remote TLB flushing to
> the SBI, which then issues an IPI under the hoods.  But with M-mode
> we do not have an SBI so we have to do it ourselves.   IPI to the
> other nodes using the existing kernel helpers instead if we have
> native clint support and thus can IPI directly from the kernel.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/include/asm/sbi.h |  3 +++
>  arch/riscv/mm/cacheflush.c   | 24 ++++++++++++++++++------
>  2 files changed, 21 insertions(+), 6 deletions(-)
>
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index b167af3e7470..0cb74eccc73f 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -94,5 +94,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  {
>         SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
>  }
> +#else /* CONFIG_RISCV_SBI */
> +/* stub to for code is only reachable under IS_ENABLED(CONFIG_RISCV_SBI): */
> +void sbi_remote_fence_i(const unsigned long *hart_mask);
>  #endif /* CONFIG_RISCV_SBI */
>  #endif /* _ASM_RISCV_SBI_H */
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 3f15938dec89..794c9ab256eb 100644
> --- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -10,9 +10,17 @@
>
>  #include <asm/sbi.h>
>
> +static void ipi_remote_fence_i(void *info)
> +{
> +       return local_flush_icache_all();
> +}
> +
>  void flush_icache_all(void)
>  {
> -       sbi_remote_fence_i(NULL);
> +       if (IS_ENABLED(CONFIG_RISCV_SBI))
> +               sbi_remote_fence_i(NULL);
> +       else
> +               on_each_cpu(ipi_remote_fence_i, NULL, 1);
>  }
>
>  /*
> @@ -28,7 +36,7 @@ void flush_icache_all(void)
>  void flush_icache_mm(struct mm_struct *mm, bool local)
>  {
>         unsigned int cpu;
> -       cpumask_t others, hmask, *mask;
> +       cpumask_t others, *mask;
>
>         preempt_disable();
>
> @@ -46,10 +54,7 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
>          */
>         cpumask_andnot(&others, mm_cpumask(mm), cpumask_of(cpu));
>         local |= cpumask_empty(&others);
> -       if (mm != current->active_mm || !local) {
> -               riscv_cpuid_to_hartid_mask(&others, &hmask);
> -               sbi_remote_fence_i(hmask.bits);
> -       } else {
> +       if (mm == current->active_mm && local) {
>                 /*
>                  * It's assumed that at least one strongly ordered operation is
>                  * performed on this hart between setting a hart's cpumask bit
> @@ -59,6 +64,13 @@ void flush_icache_mm(struct mm_struct *mm, bool local)
>                  * with flush_icache_deferred().
>                  */
>                 smp_mb();
> +       } else if (IS_ENABLED(CONFIG_RISCV_SBI)) {
> +               cpumask_t hartid_mask;
> +
> +               riscv_cpuid_to_hartid_mask(&others, &hartid_mask);
> +               sbi_remote_fence_i(cpumask_bits(&hartid_mask));
> +       } else {
> +               on_each_cpu_mask(&others, ipi_remote_fence_i, NULL, 1);
>         }
>
>         preempt_enable();
> --
> 2.20.1
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
