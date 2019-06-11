Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43053C784
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0xyCQryh/yK9OAEEK2T/JboitdCf9SojD/I/WSVR7Q=; b=Nu0jIrAm/zRzmE
	iasIMLcZkiYlWGWpeAGZK1tO1kS0YhYxzo5TQYbBOgHLzbzfNBvHLMnVd3k+7IXZBSASavlPlbRXY
	fwNMXIaBx5UpEixKnRo9+mZW3uh3Ny5K/L+esIeZ2dAYJQbeMujLIUrpcV4uAyy5CpB68gVELFiSW
	UU7GYSPcHYJlJpRVGELy+8P6qNkC07MkdOBGncexhRcB2pOrXaOOWVR8h14q+nHRMK3uBZRj6sQxT
	X92GJrwuyo8TpQWmdneo41aVQAWyB3TG/qXHxE+t0T8LKk5tSMSbwP9uOlsnL5y3wIBVfjY8Fycl3
	Sra+PSLwLzFlPFGxuneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadLo-0006Z1-CE; Tue, 11 Jun 2019 09:45:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadLS-0006LM-1Y; Tue, 11 Jun 2019 09:45:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2460346;
 Tue, 11 Jun 2019 02:45:33 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A29323F73C;
 Tue, 11 Jun 2019 02:47:14 -0700 (PDT)
Subject: Re: [PATCH 02/15] binfmt_flat: remove flat_set_persistent
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-3-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <820932ef-bf45-d670-e9d6-979889d62501@arm.com>
Date: Tue, 11 Jun 2019 10:45:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_024534_176760_F47DB993 
X-CRM114-Status: GOOD (  16.88  )
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
> This helper is a no-op on all architectures, remove it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/include/asm/flat.h        | 1 -
>  arch/c6x/include/asm/flat.h        | 1 -
>  arch/h8300/include/asm/flat.h      | 1 -
>  arch/m68k/include/asm/flat.h       | 5 -----
>  arch/microblaze/include/asm/flat.h | 1 -
>  arch/sh/include/asm/flat.h         | 1 -
>  arch/xtensa/include/asm/flat.h     | 1 -
>  fs/binfmt_flat.c                   | 2 --
>  8 files changed, 13 deletions(-)
> 

For ARM bits:

Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>


> diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
> index 10cce9ecf151..576241d74704 100644
> --- a/arch/arm/include/asm/flat.h
> +++ b/arch/arm/include/asm/flat.h
> @@ -31,6 +31,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  }
>  
>  #define	flat_get_relocate_addr(rel)		(rel)
> -#define	flat_set_persistent(relval, p)		0
>  
>  #endif /* __ARM_FLAT_H__ */
> diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
> index ecc6aea6606c..ac87368efad1 100644
> --- a/arch/c6x/include/asm/flat.h
> +++ b/arch/c6x/include/asm/flat.h
> @@ -18,6 +18,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	return 0;
>  }
>  #define flat_get_relocate_addr(rel)			(rel)
> -#define flat_set_persistent(relval, p)			0
>  
>  #endif /* __ASM_C6X_FLAT_H */
> diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
> index dcc7775115dd..7ef7eefded3d 100644
> --- a/arch/h8300/include/asm/flat.h
> +++ b/arch/h8300/include/asm/flat.h
> @@ -10,7 +10,6 @@
>  
>  #define	flat_argvp_envp_on_stack()		1
>  #define	flat_old_ram_flag(flags)		1
> -#define	flat_set_persistent(relval, p)		0
>  
>  /*
>   * on the H8 a couple of the relocations have an instruction in the
> diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
> index a631caf5e18f..955617bb937b 100644
> --- a/arch/m68k/include/asm/flat.h
> +++ b/arch/m68k/include/asm/flat.h
> @@ -30,11 +30,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  }
>  #define	flat_get_relocate_addr(rel)		(rel)
>  
> -static inline int flat_set_persistent(u32 relval, u32 *persistent)
> -{
> -	return 0;
> -}
> -
>  #define FLAT_PLAT_INIT(regs) \
>  	do { \
>  		if (current->mm) \
> diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
> index 34be5ed011be..846084fa7f04 100644
> --- a/arch/microblaze/include/asm/flat.h
> +++ b/arch/microblaze/include/asm/flat.h
> @@ -15,7 +15,6 @@
>  
>  #define	flat_argvp_envp_on_stack()	0
>  #define	flat_old_ram_flag(flags)	(flags)
> -#define	flat_set_persistent(relval, p)		0
>  
>  /*
>   * Microblaze works a little differently from other arches, because
> diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
> index 8f2929b32f2e..6f3b18679a98 100644
> --- a/arch/sh/include/asm/flat.h
> +++ b/arch/sh/include/asm/flat.h
> @@ -25,7 +25,6 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	return 0;
>  }
>  #define	flat_get_relocate_addr(rel)		(rel)
> -#define	flat_set_persistent(relval, p)		({ (void)p; 0; })
>  
>  #define FLAT_PLAT_INIT(_r) \
>    do { _r->regs[0]=0; _r->regs[1]=0; _r->regs[2]=0; _r->regs[3]=0; \
> diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
> index 6ee5a35eb0ec..b1bc0d9a8d4e 100644
> --- a/arch/xtensa/include/asm/flat.h
> +++ b/arch/xtensa/include/asm/flat.h
> @@ -18,6 +18,5 @@ static inline int flat_put_addr_at_rp(u32 __user *rp, u32 addr, u32 rel)
>  	return 0;
>  }
>  #define flat_get_relocate_addr(rel)			(rel)
> -#define flat_set_persistent(relval, p)			0
>  
>  #endif /* __ASM_XTENSA_FLAT_H */
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index afddea583999..a4c0b245ab1f 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -787,8 +787,6 @@ static int load_flat_file(struct linux_binprm *bprm,
>  			if (get_user(relval, reloc + i))
>  				return -EFAULT;
>  			relval = ntohl(relval);
> -			if (flat_set_persistent(relval, &persistent))
> -				continue;
>  			addr = flat_get_relocate_addr(relval);
>  			rp = (u32 __user *)calc_reloc(addr, libinfo, id, 1);
>  			if (rp == (u32 __user *)RELOC_FAILED) {
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
