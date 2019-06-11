Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223923C801
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTYV5W7OaGCe9x3YQxfhYW+ZyXLPKdQlY+Kxx2GaQBY=; b=HhtwiQtqDlOKu/
	vX1f7uZ8BwALdRp7s7tM1A+9Jrcgazez8K2Pv3LVftbh27BqV6yM5VRQWLAoIIuyYLu3DKEjzMmOU
	7Y7W5dr2K6evTn4axqN0BksV+e6maP54yoILwmRRCU0wHsneauFUeHNUFboJJ6j0Povw3rnJzKsl/
	YED0vFoRh3w1FmoQ1mgx4fsyqzhc4uWN/++qIUYuis35boNpB4e5t6CX0q9HXzQuPJ/lN+AFCAshv
	0D36LfHOksRA1VwesBLwe6wgFTqZgQWlQLfOCX4vnVQX8K7tJp3Y1+JTQH4qIeP0I9ksWeoGtFe7A
	AJ56myauJleNmZv3dy5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadbR-0000d5-VF; Tue, 11 Jun 2019 10:02:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadbD-0000Se-CL; Tue, 11 Jun 2019 10:01:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA8BF337;
 Tue, 11 Jun 2019 03:01:50 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C929B3F73C;
 Tue, 11 Jun 2019 03:03:31 -0700 (PDT)
Subject: Re: [PATCH 11/15] binfmt_flat: provide an asm-generic/flat.h
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-12-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <e6a00ae6-3359-0f20-138c-4469df598c3e@arm.com>
Date: Tue, 11 Jun 2019 11:01:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-12-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030151_515953_90055779 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 Michal Simek <monstr@monstr.eu>, linux-c6x-dev@linux-c6x.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-m68k@lists.linux-m68k.org, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/10/19 10:20 PM, Christoph Hellwig wrote:
> This file implements the flat get/put reloc helpers for architectures
> that do not need to overload the relocs by simply using get_user/put_user.
> 
> Note that many nommu architectures currently use {get,put}_unaligned, which
> looks a little bogus and should probably later be switched over to this
> version as well.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/include/asm/Kbuild                   |  1 +
>  arch/m68k/include/asm/flat.h                  | 21 +------------------
>  .../asm => include/asm-generic}/flat.h        | 12 ++++-------
>  3 files changed, 6 insertions(+), 28 deletions(-)
>  rename {arch/arm/include/asm => include/asm-generic}/flat.h (73%)

FWIW:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

> 
> diff --git a/arch/arm/include/asm/Kbuild b/arch/arm/include/asm/Kbuild
> index a8f149ab45b8..6b2dc15b6dff 100644
> --- a/arch/arm/include/asm/Kbuild
> +++ b/arch/arm/include/asm/Kbuild
> @@ -5,6 +5,7 @@ generic-y += early_ioremap.h
>  generic-y += emergency-restart.h
>  generic-y += exec.h
>  generic-y += extable.h
> +generic-y += flat.h
>  generic-y += irq_regs.h
>  generic-y += kdebug.h
>  generic-y += local.h
> diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
> index d7102fcd43eb..46379e08cdd6 100644
> --- a/arch/m68k/include/asm/flat.h
> +++ b/arch/m68k/include/asm/flat.h
> @@ -6,26 +6,7 @@
>  #ifndef __M68KNOMMU_FLAT_H__
>  #define __M68KNOMMU_FLAT_H__
>  
> -#include <linux/uaccess.h>
> -
> -static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
> -					u32 *addr, u32 *persistent)
> -{
> -#ifdef CONFIG_CPU_HAS_NO_UNALIGNED
> -	return copy_from_user(addr, rp, 4) ? -EFAULT : 0;
> -#else
> -	return get_user(*addr, rp);
> -#endif
> -}
> -
> -static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
> -{
> -#ifdef CONFIG_CPU_HAS_NO_UNALIGNED
> -	return copy_to_user(rp, &addr, 4) ? -EFAULT : 0;
> -#else
> -	return put_user(addr, rp);
> -#endif
> -}
> +#include <asm-generic/flat.h>
>  
>  #define FLAT_PLAT_INIT(regs) \
>  	do { \
> diff --git a/arch/arm/include/asm/flat.h b/include/asm-generic/flat.h
> similarity index 73%
> rename from arch/arm/include/asm/flat.h
> rename to include/asm-generic/flat.h
> index bbc27901446f..fcd2b45c0735 100644
> --- a/arch/arm/include/asm/flat.h
> +++ b/include/asm-generic/flat.h
> @@ -1,15 +1,11 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -/*
> - * arch/arm/include/asm/flat.h -- uClinux flat-format executables
> - */
> -
> -#ifndef __ARM_FLAT_H__
> -#define __ARM_FLAT_H__
> +#ifndef _ASM_GENERIC_FLAT_H
> +#define _ASM_GENERIC_FLAT_H
>  
>  #include <linux/uaccess.h>
>  
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
> -					u32 *addr, u32 *persistent)
> +		u32 *addr, u32 *persistent)
>  {
>  #ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
>  	return copy_from_user(addr, rp, 4) ? -EFAULT : 0;
> @@ -27,4 +23,4 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  #endif
>  }
>  
> -#endif /* __ARM_FLAT_H__ */
> +#endif /* _ASM_GENERIC_FLAT_H */
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
