Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4216483E33
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 02:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xmN3/jVUR/Z3h3r1SBxbDxfLftIwIovN8I1hD4ufdwQ=; b=NKUigcJNzTkd5a
	AuU05M2N6XaQflm76vcrsE4xNzsjXiJco3GRZPMGqem7m9r3Z6JEIFjnkKo27elx3n2aAZhyO8IEn
	dQvuUhNlHqTeiHg4TqnkAMO9vhgx5n5HWTSawBVouNGvL0J9y+M4LWzpGBI1umLJsjcyZMwWcezdM
	W+mwEhrKKIn8hHGhbQFRldIZev1EoQpL8nxdCdhkGL54nnEXS3su9BhEYM9Gws8f32JYJPjLPKa2F
	3o7o9TdUGC/xNILICopdOa+NZSdFigDGbAAKSurm/Y7guTfvkrZ0COPPBafKSGZlCOAVL9BuYObjm
	Q7FsiE0mVTsMdakLXzjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9fh-0001BU-MF; Wed, 07 Aug 2019 00:19:17 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9fd-0001B5-Ny
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 00:19:15 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x7707lDs067769;
 Wed, 7 Aug 2019 08:07:47 +0800 (GMT-8)
 (envelope-from alankao@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Wed, 7 Aug 2019
 08:18:46 +0800
Date: Wed, 7 Aug 2019 08:18:46 +0800
From: Alan Kao <alankao@andestech.com>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH] RISC-V: Remove udivdi3
Message-ID: <20190807001846.GA21655@andestech.com>
References: <20190807000508.9477-1-palmer@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807000508.9477-1-palmer@sifive.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x7707lDs067769
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_171914_037975_0D8A7A97 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: linux-riscv@lists.infradead.org, Nicolas Pitre <nico@fluxnic.net>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 05:05:08PM -0700, Palmer Dabbelt wrote:
> This should never have landed in the first place: it was added as part
> of 64-bit divide support for 32-bit systems, but the kernel doesn't
> allow this sort of division.  I must have forgotten to remove it.
> 
> This patch removes the support.  Since this routine only worked on
> 64-bit platforms but was only built on 32-bit platforms, it's
> essentially just nonsense anyway.
> 

It would be more complete if we add
"Reported-by: Eric Lin <tesheng@andestech.com>" here.

> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> Acked-by: Nicolas Pitre <nico@fluxnic.net>
> ---
>  arch/riscv/lib/Makefile  |  2 --
>  arch/riscv/lib/udivdi3.S | 32 --------------------------------
>  2 files changed, 34 deletions(-)
>  delete mode 100644 arch/riscv/lib/udivdi3.S
> 
> diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
> index 8e364ebf37de..267feaa10f6a 100644
> --- a/arch/riscv/lib/Makefile
> +++ b/arch/riscv/lib/Makefile
> @@ -5,5 +5,3 @@ lib-y	+= memset.o
>  lib-y	+= uaccess.o
>  
>  lib-$(CONFIG_64BIT) += tishift.o
> -
> -lib-$(CONFIG_32BIT) += udivdi3.o
> diff --git a/arch/riscv/lib/udivdi3.S b/arch/riscv/lib/udivdi3.S
> deleted file mode 100644
> index 3f07476a91a9..000000000000
> --- a/arch/riscv/lib/udivdi3.S
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0-only */
> -/*
> - * Copyright (C) 2016-2017 Free Software Foundation, Inc.
> - */
> -
> -#include <linux/linkage.h>
> -
> -ENTRY(__udivdi3)
> -	mv	a2, a1
> -	mv	a1, a0
> -	li	a0, -1
> -	beqz	a2, .L5
> -	li	a3, 1
> -	bgeu	a2, a1, .L2
> -.L1:
> -	blez	a2, .L2
> -	slli	a2, a2, 1
> -	slli	a3, a3, 1
> -	bgtu	a1, a2, .L1
> -.L2:
> -	li	a0, 0
> -.L3:
> -	bltu	a1, a2, .L4
> -	sub	a1, a1, a2
> -	or	a0, a0, a3
> -.L4:
> -	srli	a3, a3, 1
> -	srli	a2, a2, 1
> -	bnez	a3, .L3
> -.L5:
> -	ret
> -ENDPROC(__udivdi3)
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
