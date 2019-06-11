Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DE63C77F
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLYoiiuSVF4EMmkmjYK2t+7ZD46oo87lJchYku7BIdc=; b=AOm4iJ48/AaWE3
	27hBzOxNUd+dTl1+sTs8SZxK+NOQuSC+SMQbHaeakxxHcDnrGD46LY5f5hnXp0TBZLJcOEzVr6cC4
	dDujSoSJPE7dlzrYEbhSlHC3QrThyNpm54O6GmRmqJ+O/7fA6Q+8FHmGJ1/VGfo2n0A2eL2U9kdpy
	qV40n21hCC7aEEXhIO2zXxrr+8jt66s+GWMvts+kkx4x0f82HnwNCtBtSbUnA7ISSR44kEiBNx6Q2
	vmbgNiocrOufWVfoPKB5jGqyGj8mMCuM7OV+1Bc4Ni8S6psrY/FeKDizR2n61IY5NPPAVMn2ysz0w
	Yf1xaBotBcrFxD2ZORrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadKV-0004sF-NE; Tue, 11 Jun 2019 09:44:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadKE-0004h9-AP; Tue, 11 Jun 2019 09:44:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA080337;
 Tue, 11 Jun 2019 02:44:17 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C9EE73F73C;
 Tue, 11 Jun 2019 02:45:58 -0700 (PDT)
Subject: Re: [PATCH 01/15] binfmt_flat: remove flat_reloc_valid
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-2-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <885910f9-9153-4ea6-d060-996b099c520d@arm.com>
Date: Tue, 11 Jun 2019 10:44:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-2-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_024418_447493_B5D4D88C 
X-CRM114-Status: GOOD (  16.54  )
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
> This helper is the same for all architectures, open code it in the only
> caller.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/include/asm/flat.h        | 1 -
>  arch/c6x/include/asm/flat.h        | 1 -
>  arch/h8300/include/asm/flat.h      | 1 -
>  arch/m68k/include/asm/flat.h       | 1 -
>  arch/microblaze/include/asm/flat.h | 1 -
>  arch/sh/include/asm/flat.h         | 1 -
>  arch/xtensa/include/asm/flat.h     | 1 -
>  fs/binfmt_flat.c                   | 2 +-
>  8 files changed, 1 insertion(+), 8 deletions(-)

For ARM bits:

Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>


> 
> diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
> index f0c75ddeea23..10cce9ecf151 100644
> --- a/arch/arm/include/asm/flat.h
> +++ b/arch/arm/include/asm/flat.h
> @@ -10,7 +10,6 @@
>  
>  #define	flat_argvp_envp_on_stack()		1
>  #define	flat_old_ram_flag(flags)		(flags)
> -#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
>  
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  					u32 *addr, u32 *persistent)
> diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
> index 76fd0bb962a3..ecc6aea6606c 100644
> --- a/arch/c6x/include/asm/flat.h
> +++ b/arch/c6x/include/asm/flat.h
> @@ -6,7 +6,6 @@
>  
>  #define flat_argvp_envp_on_stack()			0
>  #define flat_old_ram_flag(flags)			(flags)
> -#define flat_reloc_valid(reloc, size)			((reloc) <= (size))
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  					u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
> index f4cdfcbdd2ba..dcc7775115dd 100644
> --- a/arch/h8300/include/asm/flat.h
> +++ b/arch/h8300/include/asm/flat.h
> @@ -10,7 +10,6 @@
>  
>  #define	flat_argvp_envp_on_stack()		1
>  #define	flat_old_ram_flag(flags)		1
> -#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
>  #define	flat_set_persistent(relval, p)		0
>  
>  /*
> diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
> index 4f1d1e373420..a631caf5e18f 100644
> --- a/arch/m68k/include/asm/flat.h
> +++ b/arch/m68k/include/asm/flat.h
> @@ -10,7 +10,6 @@
>  
>  #define	flat_argvp_envp_on_stack()		1
>  #define	flat_old_ram_flag(flags)		(flags)
> -#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  					u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
> index 3d2747d4c967..34be5ed011be 100644
> --- a/arch/microblaze/include/asm/flat.h
> +++ b/arch/microblaze/include/asm/flat.h
> @@ -15,7 +15,6 @@
>  
>  #define	flat_argvp_envp_on_stack()	0
>  #define	flat_old_ram_flag(flags)	(flags)
> -#define	flat_reloc_valid(reloc, size)	((reloc) <= (size))
>  #define	flat_set_persistent(relval, p)		0
>  
>  /*
> diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
> index 843d458b8329..8f2929b32f2e 100644
> --- a/arch/sh/include/asm/flat.h
> +++ b/arch/sh/include/asm/flat.h
> @@ -13,7 +13,6 @@
>  
>  #define	flat_argvp_envp_on_stack()		0
>  #define	flat_old_ram_flag(flags)		(flags)
> -#define	flat_reloc_valid(reloc, size)		((reloc) <= (size))
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  					u32 *addr, u32 *persistent)
>  {
> diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
> index b8532d7877b3..6ee5a35eb0ec 100644
> --- a/arch/xtensa/include/asm/flat.h
> +++ b/arch/xtensa/include/asm/flat.h
> @@ -6,7 +6,6 @@
>  
>  #define flat_argvp_envp_on_stack()			0
>  #define flat_old_ram_flag(flags)			(flags)
> -#define flat_reloc_valid(reloc, size)			((reloc) <= (size))
>  static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>  					u32 *addr, u32 *persistent)
>  {
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index 82a48e830018..afddea583999 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -345,7 +345,7 @@ calc_reloc(unsigned long r, struct lib_info *p, int curid, int internalp)
>  	start_code = p->lib_list[id].start_code;
>  	text_len = p->lib_list[id].text_len;
>  
> -	if (!flat_reloc_valid(r, start_brk - start_data + text_len)) {
> +	if (r > start_brk - start_data + text_len) {
>  		pr_err("reloc outside program 0x%lx (0 - 0x%lx/0x%lx)",
>  		       r, start_brk-start_data+text_len, text_len);
>  		goto failed;
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
