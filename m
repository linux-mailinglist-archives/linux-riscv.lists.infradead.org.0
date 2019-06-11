Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1F83C7BF
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iq8TJpYnB747FmoDC3iMV4sZj8asuHHYhLqWs8TR2S4=; b=ZUwgbcuQV5givh
	iHU5AC53UVZ5O5ju6K4BRcgPRSUxLjiJ6NlQzoDsQWN+MeixROP+xE+18ZprDa08syuKDp+viPlgY
	pzAjZFy3Zg1lP/gFSZkVCxVHERxZjJ+7dA/SXfkU87Fs7IQ1V4ZHPNnC2ebgp52dZQVm9sGA/i2F9
	RIGi9OwzcaOwB0sjeF/nBK64BokSVxSj9jSdyzJgaDTNacfbAt8ptqb64tH6ed7ipfJoYq6yDg2bV
	qlc+FyyU3mAX+6TULZ6fGjVN9l+9GUiCpqoDGA8wZlW3XUEatfSr1yQDmRfuG9R/eURGoDdpAH9n1
	Onz5ISB0V9h/K+GnuOXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadWo-0004iU-Ry; Tue, 11 Jun 2019 09:57:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadWZ-0004Xd-2H; Tue, 11 Jun 2019 09:57:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 893EC337;
 Tue, 11 Jun 2019 02:57:02 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 796C63F73C;
 Tue, 11 Jun 2019 02:58:43 -0700 (PDT)
Subject: Re: [PATCH 07/15] binfmt_flat: use __be32 for the on-disk format
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-8-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <462a7406-19df-7910-4499-8f0acd52bc82@arm.com>
Date: Tue, 11 Jun 2019 10:57:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-8-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025703_205914_70D9FE73 
X-CRM114-Status: GOOD (  20.75  )
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
> So far binfmt_flat has onl been supported on 32-bit platforms, so the
			^^^^
			only
> variable size of the fields didn't matter.  But the upcoming RISC-V
> nommu port supports 64-bit CPUs, and we now have a conflict between
> the elf2flt creation tool that always uses 32-bit fields and the kernel
> that uses (unsigned) long field.  Switch to the userspace view as the
> rest of the binfmt_flat format is completely architecture neutral,
> and binfmt_flat isn't the right binary format for huge executables to
> start with.
> 
> While we're at it also ensure these fields are using __be types as
> they big endian and are byteswapped when loaded.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> 
> wip
  ^^^
Unintended?

> ---
>  include/linux/flat.h | 48 ++++++++++++++++++++++----------------------
>  1 file changed, 24 insertions(+), 24 deletions(-)


With comment message fixed:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

> 
> diff --git a/include/linux/flat.h b/include/linux/flat.h
> index 21d901ba191b..59e892d5fadb 100644
> --- a/include/linux/flat.h
> +++ b/include/linux/flat.h
> @@ -24,26 +24,26 @@
>   */
>  
>  struct flat_hdr {
> -	char magic[4];
> -	unsigned long rev;          /* version (as above) */
> -	unsigned long entry;        /* Offset of first executable instruction
> -	                               with text segment from beginning of file */
> -	unsigned long data_start;   /* Offset of data segment from beginning of
> -	                               file */
> -	unsigned long data_end;     /* Offset of end of data segment
> -	                               from beginning of file */
> -	unsigned long bss_end;      /* Offset of end of bss segment from beginning
> -	                               of file */
> +	char	magic[4];
> +	__be32	rev;          /* version (as above) */
> +	__be32	entry;        /* Offset of first executable instruction
> +				 with text segment from beginning of file */
> +	__be32	data_start;   /* Offset of data segment from beginning of
> +				 file */
> +	__be32	data_end;     /* Offset of end of data segment from beginning
> +				 of file */
> +	__be32	bss_end;      /* Offset of end of bss segment from beginning
> +				 of file */
>  
>  	/* (It is assumed that data_end through bss_end forms the bss segment.) */
>  
> -	unsigned long stack_size;   /* Size of stack, in bytes */
> -	unsigned long reloc_start;  /* Offset of relocation records from
> -	                               beginning of file */
> -	unsigned long reloc_count;  /* Number of relocation records */
> -	unsigned long flags;
> -	unsigned long build_date;   /* When the program/library was built */
> -	unsigned long filler[5];    /* Reservered, set to zero */
> +	__be32	stack_size;   /* Size of stack, in bytes */
> +	__be32	reloc_start;  /* Offset of relocation records from beginning of
> +				 file */
> +	__be32	reloc_count;  /* Number of relocation records */
> +	__be32	flags;
> +	__be32	build_date;   /* When the program/library was built */
> +	__u32	filler[5];    /* Reservered, set to zero */
>  };
>  
>  #define FLAT_FLAG_RAM    0x0001 /* load program entirely into RAM */
> @@ -67,19 +67,19 @@ struct flat_hdr {
>  #define OLD_FLAT_RELOC_TYPE_BSS		2
>  
>  typedef union {
> -	unsigned long	value;
> +	u32		value;
>  	struct {
>  # if defined(mc68000) && !defined(CONFIG_COLDFIRE)
> -		signed long offset : 30;
> -		unsigned long type : 2;
> +		s32	offset : 30;
> +		u32	type : 2;
>  #   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
>  # elif defined(__BIG_ENDIAN_BITFIELD)
> -		unsigned long type : 2;
> -		signed long offset : 30;
> +		u32	type : 2;
> +		s32	offset : 30;
>  #   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
>  # elif defined(__LITTLE_ENDIAN_BITFIELD)
> -		signed long offset : 30;
> -		unsigned long type : 2;
> +		s32	offset : 30;
> +		u32	type : 2;
>  #   	define OLD_FLAT_FLAG_RAM    0x1 /* load program entirely into RAM */
>  # else
>  #   	error "Unknown bitfield order for flat files."
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
