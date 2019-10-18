Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9740DBB8E
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 05:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQKTnoMK3ZnS3jp3QSXs12XCCPpxqYzhaFjctyBeFa8=; b=H0daMKgBs4nDKk
	EefPxzgA8QbECCVPHh2JGCMS8AU7yPjBnuXkPDuARnPpQjFdoj14wPWD8Rl+unvX3HbM1ru9pd0ii
	Ur+CI0fT0tSIVBGYnRF9B0wMXrKXIC8FvNH4V5CYt5kumUqr+Yqesz+SSjNwDROcYn1ikppHBSeJR
	gf5CppQxeLDfy0/zTJZAY9CFWK7I94Q1NcJEayBIBWFA5OeW04BeA+wNUhQQe+32RZ18ei4AJHUoo
	0isxHeZRpeGTXABhfFR7T2F5z0nfBP4j8b1q/WHtFSn6v+tWfHtJumn/G9rw1XIwxk573bU8lBjzh
	xWR01eztMLoG3/61AZYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIVx-0004NG-Tx; Fri, 18 Oct 2019 03:01:17 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIVt-0004Mt-Ou
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 03:01:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id l10so4109296wrb.2
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 20:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1L7f/uGvROZCVtz1Hvo5nsOEYV/tzFdc7Jvsq90u0ec=;
 b=iVxQpCnYqNXc4Cij1up0Y1wu0M6UegLV1122D9YlF8s9T2CDAYVt1sC9yaAZtO+IXa
 2DQxUapTjWzwHwSN/u70Xw8pbrnPcLYlice8p0PbOlMUIVXKl7eCZJxosYm8gz/41SyY
 qRKUtYfv9DTZHhE/hjTH3xJl6jWx3RjDZYlKHdPCy0/FJYmnmMq5YSOdultPUTvZuF+2
 2l3Y9KB4MrVL3Mgp+wy3fbOPNqGQt0/UiTyJdKQYs1yNC2PbeTXLOTK59Pkgou1rtR2d
 tBBjbvQmRJxtcj6wp52J2zr1QHOqrbSfOua8Ivs6yTu+iYgTKsn0NUstWAz/qysDqT/G
 KUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1L7f/uGvROZCVtz1Hvo5nsOEYV/tzFdc7Jvsq90u0ec=;
 b=gqA/U7+GQo2ce3OJRtuAy7csZi26l0yf1Cuuwvm8yT61qGTqpde6XYEaZUUxcn/TkA
 AT6NqhUUUuc5Z8ZtBdNdjCZ91wGtsaktTWv42Ntt1JJimQCLKmWRB/MSHQfsfymbpsS3
 Wnz9AeRTTJUItDIActpZBb32dKMy7KYQjkYwbZOmoWERe20TeJgOKDWx5lTiGl/UVxnk
 PPEdhE3J4OMYTPvvXvX9fbIOKe/Wr3M+91HwyQyRbKhHPoBzkxyTh6L/bedSDb2y6OX6
 Oe+9KU1oLJt5JYX/GHrwTPIe9pt8gO1913pZ2l8fctImZVHkjapNZi+ux9sZG4QuDV2Q
 2LoA==
X-Gm-Message-State: APjAAAUZPhBzbSZYiaWdDX4UkT5MtwHdsd4YNXC3lMGtimRZ2LSG97DN
 Y9qWYNGjR7bQ1aAJG5dfJoAkHRnykuu1epw/5kvp2Q==
X-Google-Smtp-Source: APXvYqxzmddrHUI9HqFZ9O/ss44G8uvOHzcgCjU4n2xlXZo3KwPjpnG8lAZNMu2zdDfMWUcl2LR7kj0WtZ4S9n7osVQ=
X-Received: by 2002:a5d:42c2:: with SMTP id t2mr5350499wrr.251.1571367672210; 
 Thu, 17 Oct 2019 20:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-11-hch@lst.de>
In-Reply-To: <20191017173743.5430-11-hch@lst.de>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:31:01 +0530
Message-ID: <CAAhSdy2Sb+aizuNtKvindH1yowey-_uvJw9jGf=QGAgPMJsDWw@mail.gmail.com>
Subject: Re: [PATCH 10/15] riscv: read the hart ID from mhartid on boot
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_200113_812008_D501B5DF 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:08 PM Christoph Hellwig <hch@lst.de> wrote:
>
> From: Damien Le Moal <Damien.LeMoal@wdc.com>
>
> When in M-Mode, we can use the mhartid CSR to get the ID of the running
> HART. Doing so, direct M-Mode boot without firmware is possible.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/csr.h | 1 +
>  arch/riscv/kernel/head.S     | 8 ++++++++
>  2 files changed, 9 insertions(+)
>
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 0dae5c361f29..d0b5113e1a54 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -81,6 +81,7 @@
>  #define SIE_SEIE               (_AC(0x1, UL) << IRQ_S_EXT)
>
>  /* symbolic CSR names: */
> +#define CSR_MHARTID            0xf14
>  #define CSR_MSTATUS            0x300
>  #define CSR_MIE                        0x304
>  #define CSR_MTVEC              0x305
> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
> index 679e63d29edb..583784cb3a32 100644
> --- a/arch/riscv/kernel/head.S
> +++ b/arch/riscv/kernel/head.S
> @@ -50,6 +50,14 @@ _start_kernel:
>         csrw CSR_XIE, zero
>         csrw CSR_XIP, zero
>
> +#ifdef CONFIG_RISCV_M_MODE
> +       /*
> +        * The hartid in a0 is expected later on, and we have no firmware
> +        * to hand it to us.
> +        */
> +       csrr a0, CSR_MHARTID
> +#endif
> +
>         /* Load the global pointer */
>  .option push
>  .option norelax
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
