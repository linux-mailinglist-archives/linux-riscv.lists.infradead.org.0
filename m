Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B2BDBB8F
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 05:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doOerGu/gpU0RR0el4qZGfPJ3sE7YxQgQm9pg9zLddg=; b=ePmcEQx/uAMkeC
	VengOJpiSwoJ1ux9J7yIr8EYftZ36hPlvCpYZV45apiApZQI2CUlGVwQm1fvCpT6yQOBy4b1r4cxQ
	FfzByAAiGL/M03yfZm9P1KbH7Hc0R55UPeYS7E6P4VqNwWolD/YRt0uQvW1J5dsoTFRcTbfm7rS3j
	u5QMzgPqlxIdweJZuHLHDN98zJLF/dNNxQ9ZbrVqtq+RUfQly6BRCJbCVqxNPuJTyDSgi7xjTRQAz
	gOSUt29tnKdC7eiHz0y73f89Yi1qY1FHzxVE1Q2//Igmm1lcVUeY1titBLNzxBfnHq0OBtq9/3MMv
	Fa/pViPVUOkziBmWk3nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIWH-0004Re-QQ; Fri, 18 Oct 2019 03:01:37 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIWE-0004R9-Du
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 03:01:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id 3so4542010wmi.3
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 20:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vu77sOEgLk4hgL40syTM0FGRnGNgVOWc5ZddD0STylA=;
 b=bP0txo6KUPJhsbrp1evgxikGXpmxRRBsxwvXOfWxyVwVHrFi0N9AwXrkV6GrFpjuSt
 eHZUlVJCzEA8AsKXn3x83pefq7YQbAxz0wSDuYpwSHC+jdEqQ/y0ed9swRJ9apvco+tq
 Rzm7V8XTWzw76Z8tw928+Z9IX7g4kgXf+TZwssgC/DWmDAyAqLmF1K+2MD1mRT3QQL/1
 FtS1rxZdEZ2XzLXpVG7TKzavLCTpRteUY9RIAS/0aiA/Ye8s0Nh1LyrTbuWbqD8yxRTy
 YQD8EozMsKueRf+2SiUX0iDzl8BybGbCB9nQUG4/xNdxXMIOHWrW2Bsqsi3HHeMhVt1P
 0nyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vu77sOEgLk4hgL40syTM0FGRnGNgVOWc5ZddD0STylA=;
 b=SfTk0oYJ7lxknhA6MXMT2zUM88f+qA+ZLMejXGdQdvBA4BbGShWOypllIOI07DweiA
 N9Yrd7SSFfzAv1bjNxqpY7mWkHlz7AkvGkmIrWl63V9nNPCSziw/LZp06yPfQ8s5DAxm
 m5SwK22hgGA2krqDSNaem0NqvZD1OFVF5vOXL1rfO1tf5OsFTv4ze2R5/jWVo4miyCOk
 CjcQgQl7uvfZeKpBKA9uTv7kN5JsUV9eWPO0mkk7NxoSCWYxriJV5pJUxvpocQLs/t54
 5g8GhGMjngscFxHwGqn00ZFJIghJTXtngkeqj1h6tabu0l4TQf4Q6NJXzT9KZ/tl795J
 DVaQ==
X-Gm-Message-State: APjAAAVQkK75BpZBnci1RxOGlGq+fsg0pEXPV/cDrxW034ld7s4BWU5q
 TQ/sCPwkNRf2/2w8mciUmv9iY5Cqt/ChpOXU/Eu8XmLN/cg=
X-Google-Smtp-Source: APXvYqxwpSMBKy0XeXO7zYB3T/WGjdM1/WkV95Bytp+CJYFA/TJLm9WLD6aXl22dULfFoj56AIwQkhQ22smUpGrLZvA=
X-Received: by 2002:a05:600c:2291:: with SMTP id
 17mr5045041wmf.171.1571367692099; 
 Thu, 17 Oct 2019 20:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-12-hch@lst.de>
In-Reply-To: <20191017173743.5430-12-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:31:21 +0530
Message-ID: <CAAhSdy2R4iJ6XYytTcvt005HS4bv1Sy-3VfHZaC5QxA6S=fzsQ@mail.gmail.com>
Subject: Re: [PATCH 11/15] riscv: use the correct interrupt levels for M-mode
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_200134_469834_DF9893D9 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
> The numerical levels for External/Timer/Software interrupts differ
> between S-mode and M-mode.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/irq.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/arch/riscv/kernel/irq.c b/arch/riscv/kernel/irq.c
> index 804ff70bb853..dbd1fd7c22e4 100644
> --- a/arch/riscv/kernel/irq.c
> +++ b/arch/riscv/kernel/irq.c
> @@ -14,9 +14,15 @@
>  /*
>   * Possible interrupt causes:
>   */
> -#define INTERRUPT_CAUSE_SOFTWARE       IRQ_S_SOFT
> -#define INTERRUPT_CAUSE_TIMER          IRQ_S_TIMER
> -#define INTERRUPT_CAUSE_EXTERNAL       IRQ_S_EXT
> +#ifdef CONFIG_RISCV_M_MODE
> +# define INTERRUPT_CAUSE_SOFTWARE      IRQ_M_SOFT
> +# define INTERRUPT_CAUSE_TIMER         IRQ_M_TIMER
> +# define INTERRUPT_CAUSE_EXTERNAL      IRQ_M_EXT
> +#else
> +# define INTERRUPT_CAUSE_SOFTWARE      IRQ_S_SOFT
> +# define INTERRUPT_CAUSE_TIMER         IRQ_S_TIMER
> +# define INTERRUPT_CAUSE_EXTERNAL      IRQ_S_EXT
> +#endif /* CONFIG_RISCV_M_MODE */
>
>  int arch_show_interrupts(struct seq_file *p, int prec)
>  {
> --
> 2.20.1
>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
