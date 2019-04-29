Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2D7ED60
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 01:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=K0KRffW816eoR54b5H83NDFutpCIUc1cmZEkxKmq2ls=; b=WvpHGMThwhNPN1cATj3JVFC0Q
	xcfc2EVBRrlm43ZXnnU1UCNejbDlKmxxcku8EYbpX6/NEY1BhbO6hFh7/8yIH+qxGKce94C74vXuh
	TuFl7b6LnFNXV/01KmQtrhsXczCcGKdvH4DQgi9/avw6KFzLsl8SGy8IRfcrxM29fs8ltwAyt6yhT
	ALNTr2SBa/4vZRTkLRvCkKEG3OeBquVZMHtDsF36jNSycJCUFSvhVVhuRiY2raUrw4e05OrwVgwcr
	96WrRAdMFpDeryx+/q5j+Mh6R3WFxE2U/Uaj6+JJ2gt5hUqE7ptaDIuKKUwML6bAeO4GdlhpD/imp
	VzwtZ5gVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFt3-00089k-4x; Mon, 29 Apr 2019 23:40:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFsz-00087w-OX
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 23:40:39 +0000
Received: by mail-pg1-x544.google.com with SMTP id h1so5931570pgs.2
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 16:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=WbKrrsvoTA0yKVJgoX6tm1Cp8PXAIZFIWSxGDVql0/k=;
 b=IcVEz3ZBuqVVXRuB1VTTzJUwdoZkcZbe2vgds0gq461z777UMhALm315dO8UEBsw88
 NPCM7xr6we9IVxcyUb+y/gdVzWGfWx3r/BtdPxrnYJ7jvtKHIwfiPQ6IsEfhdxM03xDp
 FGXFuTC1iO/0vI0104oBkULk6XeGhC6luD5lkhUNpXa5GjO/80anvMp3w9ZQruqTR8h3
 T4GpFzwPGFu3589QeT06w1TXczVXDWId0UAj7xoN8tWvxSqpN+DHwbQ4izKFL+cntueV
 cj8sLRtx/2qnGkhs/bQk+aq9bgm3hsQKkUFgSyB0eiDRKW7+Sw0vQswJxco7lB0wec0q
 Jxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=WbKrrsvoTA0yKVJgoX6tm1Cp8PXAIZFIWSxGDVql0/k=;
 b=iGL+UpnSt4Rd73eXf8KTJixltWHlyhdDpe78Uo3qEFwwAygAPVrxxCXS/nI9MJVhZM
 BvjwMZY8UDRwGGuO1V5m1qb/jy8OX+CQyRsOYGW9nJuIkw9LjrOioLFIAh1rxkMRUHkO
 0hrZGjLF9+KDV+MHAqQSmBPya1E52sGYkLd4FUEYDTNMh9SDRRN5UyrwkdqmukbQqznP
 Jq9keFkDfTfxQRZaJQvCfBpKb9QPEjt0El7nE8SZFOQPWONq0m5YpToYtMZeYnwZs7AB
 BSyHo20/J0X0+WWxXsQ626MsxYQrdxab+doJwGGfYNB44yuhczkVmYU7Kz3Lk7gRGzRO
 zBBw==
X-Gm-Message-State: APjAAAWctX+oTZpfrNNaxyvXTu4SisOgS3DRn07tjAcxE2EM0o48UkCd
 UgSKf8/bjr7SBj6EWnJskIohKw==
X-Google-Smtp-Source: APXvYqwJ2o7aI3WJI0mNsgywGAyWJqyyJsL9XlrQpgbm6c23Yv7PpZMUGjcwrLIcqq1ucR38+U7EBA==
X-Received: by 2002:a62:a515:: with SMTP id v21mr67869459pfm.41.1556581237031; 
 Mon, 29 Apr 2019 16:40:37 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id c1sm39186765pgk.44.2019.04.29.16.40.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 16:40:36 -0700 (PDT)
Date: Mon, 29 Apr 2019 16:40:36 -0700 (PDT)
X-Google-Original-Date: Mon, 29 Apr 2019 16:40:22 PDT (-0700)
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
In-Reply-To: <20190423232506.857-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: atish.patra@wdc.com
Message-ID: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_164037_794769_6AB71F77 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, linux-kernel@vger.kernel.org,
 zong@andestech.com, atish.patra@wdc.com, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 16:25:06 PDT (-0700), atish.patra@wdc.com wrote:
> Currently, last stage boot loaders such as U-Boot can accept only
> uImage which is an unnecessary additional step in automating boot flows.
>
> Add a simple image header that boot loaders can parse and directly
> load kernel flat Image. The existing booting methods will continue to
> work as it is.
>
> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/image.h | 32 ++++++++++++++++++++++++++++++++
>  arch/riscv/kernel/head.S       | 28 ++++++++++++++++++++++++++++
>  2 files changed, 60 insertions(+)
>  create mode 100644 arch/riscv/include/asm/image.h
>
> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
> new file mode 100644
> index 000000000000..76a7e0d4068a
> --- /dev/null
> +++ b/arch/riscv/include/asm/image.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __ASM_IMAGE_H
> +#define __ASM_IMAGE_H
> +
> +#define RISCV_IMAGE_MAGIC	"RISCV"
> +
> +#ifndef __ASSEMBLY__
> +/*
> + * struct riscv_image_header - riscv kernel image header
> + *
> + * @code0:		Executable code
> + * @code1:		Executable code
> + * @text_offset:	Image load offset
> + * @image_size:		Effective Image size
> + * @reserved:		reserved
> + * @magic:		Magic number
> + * @reserved:		reserved
> + */
> +
> +struct riscv_image_header {
> +	u32 code0;
> +	u32 code1;
> +	u64 text_offset;
> +	u64 image_size;
> +	u64 res1;
> +	u64 magic;
> +	u32 res2;
> +	u32 res3;
> +};

I don't want to invent our own file format.  Is there a reason we can't just
use something standard?  Off the top of my head I can think of ELF files and
multiboot.

> +#endif /* __ASSEMBLY__ */
> +#endif /* __ASM_IMAGE_H */
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index fe884cd69abd..154647395601 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -19,9 +19,37 @@
>  #include <asm/thread_info.h>
>  #include <asm/page.h>
>  #include <asm/csr.h>
> +#include <asm/image.h>
>
>  __INIT
>  ENTRY(_start)
> +	/*
> +	 * Image header expected by Linux boot-loaders. The image header data
> +	 * structure is described in asm/image.h.
> +	 * Do not modify it without modifying the structure and all bootloaders
> +	 * that expects this header format!!
> +	 */
> +	/* jump to start kernel */
> +	j _start_kernel
> +	/* reserved */
> +	.word 0
> +	.balign 8
> +#if __riscv_xlen == 64
> +	/* Image load offset(2MB) from start of RAM */
> +	.dword 0x200000
> +#else
> +	/* Image load offset(4MB) from start of RAM */
> +	.dword 0x400000
> +#endif
> +	/* Effective size of kernel image */
> +	.dword _end - _start
> +	.dword 0
> +	.asciz RISCV_IMAGE_MAGIC
> +	.word 0
> +	.word 0
> +
> +.global _start_kernel
> +_start_kernel:
>  	/* Mask all interrupts */
>  	csrw sie, zero

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
