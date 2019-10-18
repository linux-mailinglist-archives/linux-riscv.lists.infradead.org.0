Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDA9DBB97
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 05:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZJ23HOJaYnTnMD8f40VYZG2V3OuLCkJ4SLamN/CUD8=; b=GLYKB7JUGOtcJv
	GG7GpDPkvBwRrmO3SBY97tgcolxGk6QCFbhY90R1aVRYV/TnALn1vaHY5rEZ8tiO1pnzs2eq8yVZG
	ueYYaWNXLj5tKLzmbXoDGP8FHz7Wq/fXH+cFJdCQpTXzB7sQCq30pyO0Ei25+EBNqDPpOAPk0cWEe
	EiOChf8bIq69evI0TI3iqxHP0itSVfZAZlAGZCd32uV4sb5UYd1OwcQ1sDnrxj4uCX2a1ffnGEpRZ
	0ayjF50aLBgQ0UCmn7IGtnl2Z83hguy2R/fcSH6AVBZuOeAWO2uaHjonarFTPgNluHmOAcCs7gBvf
	TTYpGcSudoyJc7MGF/cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIbd-0006hl-4k; Fri, 18 Oct 2019 03:07:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIba-0006hQ-C7
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 03:07:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id j18so4515184wrq.10
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 20:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uXjggwOtvkgB5eV9xeSX/TZ7+sMFrMeqr0FsgRhuxC4=;
 b=FZdI3WTN1JpyxqNX9qKx6j7oKXltRzF7eu/3fsDtV8Q0rGY4p2sdyPkZvg52PdRhwp
 nOoYqpsDZfw3KHrEriiEWxtKLQ6SAUYGa6kYI1tATZYEZ3hzOI+WXtHP/CB6zd4WJ4HJ
 vRn/kGXuABtsrVg5ZXxWTNy8obNRd/iww/MvIFMVnAo28n8lJYxKzDp4+zmyCzmMuQP+
 pWWUt9GgpqDmlfHogG+D/XPyA+AEbgQh7P9KowsPlgMvgSZrT7iy+SVkpM7GH88OlEIj
 tZ4JvzKrilqUg90OKGtRaw4POhDnWkV54zEIa2urVGdcGWwhmxLNz6vEE7E4qZ8nGCnF
 ZTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uXjggwOtvkgB5eV9xeSX/TZ7+sMFrMeqr0FsgRhuxC4=;
 b=EVlutNNNeYi0u6g4ygc0UCrzCtt7+Ld9ePbO71A1EMknEolXh8mIteVje7xbngXKPU
 1AAdblyYmEbAXzKpuU9PAUO4gXdIns+hHkg5i/WEaZAGAybn2uKea56LIvep8C5Ei3+X
 zLF1zhGVBTolzNAYcDpHdvxbGMCwElThC7cVsx2e7g+Pz3bDuI4TxClKOfHhUlhNElxC
 R0AH6JLIpLipAO8Ni56cis3RnO2N3ejGkQmEross0lIeu2KgtETYcQQyE7yT7zSsGwDI
 fdD95vzdZcDiA1N0noV/1AE0YQPALptKfA8HN8x3A4bP93yG4fel2fLrvBFt5vJD0Qdw
 FmdA==
X-Gm-Message-State: APjAAAUXHe2c3JB+tIi9BOFXd266IXtVe9mj9tZ6TywpFrJRKdtmUIZF
 PZyWcWNxdKyvbU03kfTgc2rke9U0t64NUVYh13rszQ==
X-Google-Smtp-Source: APXvYqyGZBSBmdnpbSyKqAjMKY3orVEVODID0lIDRyhOu7Qpdrc2lXpNSEbak9okkymWeGoHNgl/Tw/6sWy5rzTlR0w=
X-Received: by 2002:adf:f145:: with SMTP id y5mr5433738wro.330.1571368024826; 
 Thu, 17 Oct 2019 20:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-16-hch@lst.de>
In-Reply-To: <20191017173743.5430-16-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:36:54 +0530
Message-ID: <CAAhSdy2=WnkJV8ANW2v5s2ckDmTEZUuzegQm41-ZaEY==f1Jng@mail.gmail.com>
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_200706_413618_D4442EBE 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
> No point in bloating the kernel image with a bootloader header if
> we run bare metal.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/kernel/head.S | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 71efbba25ed5..dc21e409cc49 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -16,6 +16,7 @@
>
>  __INIT
>  ENTRY(_start)
> +#ifndef CONFIG_RISCV_M_MODE
>         /*
>          * Image header expected by Linux boot-loaders. The image header data
>          * structure is described in asm/image.h.
> @@ -47,6 +48,7 @@ ENTRY(_start)
>
>  .global _start_kernel
>  _start_kernel:
> +#endif /* CONFIG_RISCV_M_MODE */
>         /* Mask all interrupts */
>         csrw CSR_XIE, zero
>         csrw CSR_XIP, zero
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
