Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9320F3C3BE
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 08:05:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bXHWflMFQC2oAldETxthXRs8H4ASlMqWSoRGRpkXtMU=; b=ooQ9lD/EpyZwd7Je/e0yiQGOe
	FdgX1kXTYkLaXCB1nBL7FdHkFZWMF771SjQX6bN2T8OUDzI2/AehDuUWpK3QaWywORNYnW0V5Xx6J
	8scaMcezwGj/Eut5e6tFELIPXw55oVHBmEwbclj8qJl5yS2XyWj4pJqeseHbWsq41GwBGynfmCA3E
	3I0o6reaho+ZQ4ezI48FJ+KGeACy+B6nOu2Dl90CFHUgEfv1e8s+DGTkq3w6847q+v7xvUlh/K7j6
	2CQuOE9/FMwukIAF3ykl59S3/xDYQ0wMO9dKzb30kIJJq0Jj6UrRzb2xQWKWM3rQyXGEQref6F/1X
	2gf7npQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZtw-0003IX-Th; Tue, 11 Jun 2019 06:04:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZtk-00039S-JN; Tue, 11 Jun 2019 06:04:46 +0000
Received: from [10.44.0.22] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90ED520679;
 Tue, 11 Jun 2019 06:04:41 +0000 (UTC)
Subject: Re: [PATCH 04/15] binfmt_flat: remove flat_old_ram_flag
To: Christoph Hellwig <hch@lst.de>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-5-hch@lst.de>
From: Greg Ungerer <gerg@linux-m68k.org>
Message-ID: <b1ce6fc6-343c-7686-b4f4-35a305dc2adb@linux-m68k.org>
Date: Tue, 11 Jun 2019 16:04:39 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-5-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_230444_668928_29834824 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On 11/6/19 7:20 am, Christoph Hellwig wrote:
> Instead add a Kconfig variable that only h8300 selects.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   arch/arm/include/asm/flat.h        | 1 -
>   arch/c6x/include/asm/flat.h        | 1 -
>   arch/h8300/Kconfig                 | 1 +
>   arch/h8300/include/asm/flat.h      | 1 -
>   arch/m68k/include/asm/flat.h       | 1 -
>   arch/microblaze/include/asm/flat.h | 1 -
>   arch/sh/include/asm/flat.h         | 1 -
>   arch/xtensa/include/asm/flat.h     | 1 -
>   fs/Kconfig.binfmt                  | 3 +++
>   fs/binfmt_flat.c                   | 3 ++-
>   10 files changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/include/asm/flat.h b/arch/arm/include/asm/flat.h
> index a185fe023b60..acf162111ee2 100644
> --- a/arch/arm/include/asm/flat.h
> +++ b/arch/arm/include/asm/flat.h
> @@ -9,7 +9,6 @@
>   #include <linux/uaccess.h>
>   
>   #define	flat_argvp_envp_on_stack()		1
> -#define	flat_old_ram_flag(flags)		(flags)
>   
>   static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>   					u32 *addr, u32 *persistent)
> diff --git a/arch/c6x/include/asm/flat.h b/arch/c6x/include/asm/flat.h
> index c4d703b454c6..353e4d06e8c0 100644
> --- a/arch/c6x/include/asm/flat.h
> +++ b/arch/c6x/include/asm/flat.h
> @@ -5,7 +5,6 @@
>   #include <asm/unaligned.h>
>   
>   #define flat_argvp_envp_on_stack()			0
> -#define flat_old_ram_flag(flags)			(flags)
>   static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>   					u32 *addr, u32 *persistent)
>   {
> diff --git a/arch/h8300/Kconfig b/arch/h8300/Kconfig
> index ecfc4b4b6373..d30e8727b02d 100644
> --- a/arch/h8300/Kconfig
> +++ b/arch/h8300/Kconfig
> @@ -2,6 +2,7 @@
>   config H8300
>           def_bool y
>   	select ARCH_32BIT_OFF_T
> +	select BINFMT_FLAT_OLD_ALWAYS_RAM
>   	select GENERIC_ATOMIC64
>   	select HAVE_UID16
>   	select VIRT_TO_BUS
> diff --git a/arch/h8300/include/asm/flat.h b/arch/h8300/include/asm/flat.h
> index 7ef7eefded3d..14cc928d5478 100644
> --- a/arch/h8300/include/asm/flat.h
> +++ b/arch/h8300/include/asm/flat.h
> @@ -9,7 +9,6 @@
>   #include <asm/unaligned.h>
>   
>   #define	flat_argvp_envp_on_stack()		1
> -#define	flat_old_ram_flag(flags)		1
>   
>   /*
>    * on the H8 a couple of the relocations have an instruction in the
> diff --git a/arch/m68k/include/asm/flat.h b/arch/m68k/include/asm/flat.h
> index 217fa89c8e34..7b1fb5c2809e 100644
> --- a/arch/m68k/include/asm/flat.h
> +++ b/arch/m68k/include/asm/flat.h
> @@ -9,7 +9,6 @@
>   #include <linux/uaccess.h>
>   
>   #define	flat_argvp_envp_on_stack()		1
> -#define	flat_old_ram_flag(flags)		(flags)
>   static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>   					u32 *addr, u32 *persistent)
>   {
> diff --git a/arch/microblaze/include/asm/flat.h b/arch/microblaze/include/asm/flat.h
> index 846084fa7f04..1cd8d7f4cf12 100644
> --- a/arch/microblaze/include/asm/flat.h
> +++ b/arch/microblaze/include/asm/flat.h
> @@ -14,7 +14,6 @@
>   #include <asm/unaligned.h>
>   
>   #define	flat_argvp_envp_on_stack()	0
> -#define	flat_old_ram_flag(flags)	(flags)
>   
>   /*
>    * Microblaze works a little differently from other arches, because
> diff --git a/arch/sh/include/asm/flat.h b/arch/sh/include/asm/flat.h
> index 0d520b4cc5ea..015678d7b771 100644
> --- a/arch/sh/include/asm/flat.h
> +++ b/arch/sh/include/asm/flat.h
> @@ -12,7 +12,6 @@
>   #include <asm/unaligned.h>
>   
>   #define	flat_argvp_envp_on_stack()		0
> -#define	flat_old_ram_flag(flags)		(flags)
>   static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>   					u32 *addr, u32 *persistent)
>   {
> diff --git a/arch/xtensa/include/asm/flat.h b/arch/xtensa/include/asm/flat.h
> index a1d88aa3ef8a..b215c1e66958 100644
> --- a/arch/xtensa/include/asm/flat.h
> +++ b/arch/xtensa/include/asm/flat.h
> @@ -5,7 +5,6 @@
>   #include <asm/unaligned.h>
>   
>   #define flat_argvp_envp_on_stack()			0
> -#define flat_old_ram_flag(flags)			(flags)
>   static inline int flat_get_addr_from_rp(u32 __user *rp, u32 relval, u32 flags,
>   					u32 *addr, u32 *persistent)
>   {
> diff --git a/fs/Kconfig.binfmt b/fs/Kconfig.binfmt
> index f87ddd1b6d72..5658e12ad944 100644
> --- a/fs/Kconfig.binfmt
> +++ b/fs/Kconfig.binfmt
> @@ -97,6 +97,9 @@ config BINFMT_FLAT
>   	help
>   	  Support uClinux FLAT format binaries.
>   
> +config BINFMT_FLAT_OLD_ALWAYS_RAM
> +	bool
> +
>   config BINFMT_ZFLAT
>   	bool "Enable ZFLAT support"
>   	depends on BINFMT_FLAT
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index c0e4535dc1ec..18d82fd5f57c 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -488,7 +488,8 @@ static int load_flat_file(struct linux_binprm *bprm,
>   	 * fix up the flags for the older format,  there were all kinds
>   	 * of endian hacks,  this only works for the simple cases
>   	 */
> -	if (rev == OLD_FLAT_VERSION && flat_old_ram_flag(flags))
> +	if (IS_ENABLED(CONFIG_BINFMT_FLAT_OLD_ALWAYS_RAM) &&
> +	    rev == OLD_FLAT_VERSION)

The flags are from the binary file header here, so this is going to lose
that check for most platforms (except h8300 where it would always have
been true).

Regards
Greg


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
