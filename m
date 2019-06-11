Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384053C78A
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcPzWqXsCkhndP2TfF1kRY7teUbdgjV4deNV7FGyeS0=; b=MW5s5VNi1MWOfR
	MVeubOzWcpEPL5JLgy0bRnjUqF0m9zdnrJq1eDcRyVDHsf30lSEJHiz3RB+C52iMQ6LuCa3Lqvtcu
	x8mryRacCVolJEdawOKy2tLzfx3RJw+favGFp2SmCh+LNZXCJ8PZRtE1/nYGy6W0JbZEPvh93hiIg
	QffqEiJjg0MVekCKSMUyETl9TJJ1TmHNyt+d49dQA9bW8CiH7UIUjJzxFc/a5oaH+kLwECHoUMR8b
	azipe3ZZmv5HXnDgmNOGa5rGA9ZKGYfNDKGREqyrtvUaGHQCjeZ8138UJ6yYKpfm9X8wgHjwGNdIp
	D1sNvFBtEwAMSZ0U+V4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadMU-00073b-Oq; Tue, 11 Jun 2019 09:46:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadMD-0006m6-Lg; Tue, 11 Jun 2019 09:46:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2E7B337;
 Tue, 11 Jun 2019 02:46:20 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C24713F73C;
 Tue, 11 Jun 2019 02:48:01 -0700 (PDT)
Subject: Re: [PATCH 03/15] binfmt_flat: provide a default version of
 flat_get_relocate_addr
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-4-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <6b676893-3b79-ed8f-01c9-8ab2d3acec65@arm.com>
Date: Tue, 11 Jun 2019 10:46:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-4-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_024621_798948_1EFAD3E8 
X-CRM114-Status: GOOD (  15.73  )
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
> This way only the two architectures that do masking need to provide
> the helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/include/asm/flat.h    | 2 --
>  arch/c6x/include/asm/flat.h    | 1 -
>  arch/m68k/include/asm/flat.h   | 1 -
>  arch/sh/include/asm/flat.h     | 1 -
>  arch/xtensa/include/asm/flat.h | 1 -
>  fs/binfmt_flat.c               | 4 ++++
>  6 files changed, 4 insertions(+), 6 deletions(-)


For ARM bits:

Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>


> 
> diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
> index 576241d74704..a185fe023b60 100644
> --- a/arch/arm/include/asm/flat.h
> +++ b/arch/arm/include/asm/flat.h
> @@ -30,6 +30,4 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  #endif
>  }
>  
> -#define	flat_get_relocate_addr(rel)		(rel)
> -
>  #endif /* __ARM_FLAT_H__ */
> diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
> index ac87368efad1..c4d703b454c6 100644
> --- a/arch/c6x/include/asm/flat.h
> +++ b/arch/c6x/include/asm/flat.h
> @@ -17,6 +17,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	put_unaligned(addr, (__force u32 *)rp);
>  	return 0;
>  }
> -#define flat_get_relocate_addr(rel)			(rel)
>  
>  #endif /* __ASM_C6X_FLAT_H */
> diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
> index 955617bb937b..217fa89c8e34 100644
> --- a/arch/m68k/include/asm/flat.h
> +++ b/arch/m68k/include/asm/flat.h
> @@ -28,7 +28,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	return put_user(addr, rp);
>  #endif
>  }
> -#define	flat_get_relocate_addr(rel)		(rel)
>  
>  #define FLAT_PLAT_INIT(regs) \
>  	do { \
> diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
> index 6f3b18679a98..0d520b4cc5ea 100644
> --- a/arch/sh/include/asm/flat.h
> +++ b/arch/sh/include/asm/flat.h
> @@ -24,7 +24,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	put_unaligned(addr, (__force u32 *)rp);
>  	return 0;
>  }
> -#define	flat_get_relocate_addr(rel)		(rel)
>  
>  #define FLAT_PLAT_INIT(_r) \
>    do { _r->regs[0]=0; _r->regs[1]=0; _r->regs[2]=0; _r->regs[3]=0; \
> diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
> index b1bc0d9a8d4e..a1d88aa3ef8a 100644
> --- a/arch/xtensa/include/asm/flat.h
> +++ b/arch/xtensa/include/asm/flat.h
> @@ -17,6 +17,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	put_unaligned(addr, (__force u32 *)rp);
>  	return 0;
>  }
> -#define flat_get_relocate_addr(rel)			(rel)
>  
>  #endif /* __ASM_XTENSA_FLAT_H */
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index a4c0b245ab1f..c0e4535dc1ec 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -43,6 +43,10 @@
>  #include <asm/cacheflush.h>
>  #include <asm/page.h>
>  
> +#ifndef flat_get_relocate_addr
> +#define flat_get_relocate_addr(rel)	(rel)
> +#endif
> +
>  /****************************************************************************/
>  
>  /*
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
