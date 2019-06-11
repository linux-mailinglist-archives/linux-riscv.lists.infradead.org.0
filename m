Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FE03C7A4
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sr4Trm+cRsrlWIWYWkY3seUbhZTjU1/y0ZXGd3FWvkk=; b=Y4xAGmpvy0eRxS
	wGCqEhym2iHV5/yPEeZ0a8cgNyYLgebXmz6jo7pyfd8C2qTu7+vXC4YunohyoVWvBXRiuVKDUUJ0P
	A+SKjf06WGAwJlMN7OLrIXhtxpLYIx3AG3al5d9TJ8zUenlysT33cbc1gIu51P49eiTuvuKW2F+BO
	73pOwkTw/AXVrmot8nlxCqfWbQvZId5u+gW5CysyW8Aq+l9r6KoXWtE6jh9pasLyRk39zYj7mHPP4
	rV/5edI9WSffFnVnRHXWYrmvElsfNBnNcALwDL9vj72Wg4SUsmnMoTRHzy6/j3eT0SzmnRRlg74DL
	LEyLrjW9xfjbav18G+cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadRs-00022f-7W; Tue, 11 Jun 2019 09:52:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadRZ-0001rJ-L3; Tue, 11 Jun 2019 09:51:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9E51C337;
 Tue, 11 Jun 2019 02:51:52 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 893B13F73C;
 Tue, 11 Jun 2019 02:53:33 -0700 (PDT)
Subject: Re: [PATCH 06/15] binfmt_flat: remove the uapi <linux/flat.h> header
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-7-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <0971e6ed-524c-c9ee-b7d7-89126d742b8d@arm.com>
Date: Tue, 11 Jun 2019 10:51:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-7-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025153_786136_2F744825 
X-CRM114-Status: GOOD (  24.65  )
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
> The split between the two flat.h files is completely arbitrary, and the
> uapi version even contains CONFIG_ ifdefs that can't work in userspace.
> The only userspace program known to use the header is elf2flt, and it
> ships with its own version of the combined header.
> 
> Use the chance to move the <asm/flat.h> inclusion out of this file, as it
> is in no way needed for the format defintion, but just for the binfmt
> implementation.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  fs/binfmt_flat.c          |  1 +
>  include/linux/flat.h      | 45 ++++++++++++++++++++++++++---
>  include/uapi/linux/flat.h | 59 ---------------------------------------
>  3 files changed, 42 insertions(+), 63 deletions(-)
>  delete mode 100644 include/uapi/linux/flat.h

FWIW:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

> 
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index c09651087eda..6ae0f9af3fc9 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -42,6 +42,7 @@
>  #include <asm/unaligned.h>
>  #include <asm/cacheflush.h>
>  #include <asm/page.h>
> +#include <asm/flat.h>
>  
>  #ifndef flat_get_relocate_addr
>  #define flat_get_relocate_addr(rel)	(rel)
> diff --git a/include/linux/flat.h b/include/linux/flat.h
> index 569b67d64d5c..21d901ba191b 100644
> --- a/include/linux/flat.h
> +++ b/include/linux/flat.h
> @@ -10,8 +10,47 @@
>  #ifndef _LINUX_FLAT_H
>  #define _LINUX_FLAT_H
>  
> -#include <uapi/linux/flat.h>
> -#include <asm/flat.h>
> +#define	FLAT_VERSION			0x00000004L
> +
> +#ifdef CONFIG_BINFMT_SHARED_FLAT
> +#define	MAX_SHARED_LIBS			(4)
> +#else
> +#define	MAX_SHARED_LIBS			(1)
> +#endif
> +
> +/*
> + * To make everything easier to port and manage cross platform
> + * development,  all fields are in network byte order.
> + */
> +
> +struct flat_hdr {
> +	char magic[4];
> +	unsigned long rev;          /* version (as above) */
> +	unsigned long entry;        /* Offset of first executable instruction
> +	                               with text segment from beginning of file */
> +	unsigned long data_start;   /* Offset of data segment from beginning of
> +	                               file */
> +	unsigned long data_end;     /* Offset of end of data segment
> +	                               from beginning of file */
> +	unsigned long bss_end;      /* Offset of end of bss segment from beginning
> +	                               of file */
> +
> +	/* (It is assumed that data_end through bss_end forms the bss segment.) */
> +
> +	unsigned long stack_size;   /* Size of stack, in bytes */
> +	unsigned long reloc_start;  /* Offset of relocation records from
> +	                               beginning of file */
> +	unsigned long reloc_count;  /* Number of relocation records */
> +	unsigned long flags;
> +	unsigned long build_date;   /* When the program/library was built */
> +	unsigned long filler[5];    /* Reservered, set to zero */
> +};
> +
> +#define FLAT_FLAG_RAM    0x0001 /* load program entirely into RAM */
> +#define FLAT_FLAG_GOTPIC 0x0002 /* program is PIC with GOT */
> +#define FLAT_FLAG_GZIP   0x0004 /* all but the header is compressed */
> +#define FLAT_FLAG_GZDATA 0x0008 /* only data/relocs are compressed (for XIP) */
> +#define FLAT_FLAG_KTRACE 0x0010 /* output useful kernel trace for debugging */
>  
>  /*
>   * While it would be nice to keep this header clean,  users of older
> @@ -22,8 +61,6 @@
>   *        with the format above,  except to fix bugs with old format support.
>   */
>  
> -#include <asm/byteorder.h>
> -
>  #define	OLD_FLAT_VERSION			0x00000002L
>  #define OLD_FLAT_RELOC_TYPE_TEXT	0
>  #define OLD_FLAT_RELOC_TYPE_DATA	1
> diff --git a/include/uapi/linux/flat.h b/include/uapi/linux/flat.h
> deleted file mode 100644
> index 27e595e44fb7..000000000000
> --- a/include/uapi/linux/flat.h
> +++ /dev/null
> @@ -1,59 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> -/*
> - * Copyright (C) 2002-2003  David McCullough <davidm@snapgear.com>
> - * Copyright (C) 1998       Kenneth Albanowski <kjahds@kjahds.com>
> - *                          The Silver Hammer Group, Ltd.
> - *
> - * This file provides the definitions and structures needed to
> - * support uClinux flat-format executables.
> - */
> -
> -#ifndef _UAPI_LINUX_FLAT_H
> -#define _UAPI_LINUX_FLAT_H
> -
> -
> -#define	FLAT_VERSION			0x00000004L
> -
> -#ifdef CONFIG_BINFMT_SHARED_FLAT
> -#define	MAX_SHARED_LIBS			(4)
> -#else
> -#define	MAX_SHARED_LIBS			(1)
> -#endif
> -
> -/*
> - * To make everything easier to port and manage cross platform
> - * development,  all fields are in network byte order.
> - */
> -
> -struct flat_hdr {
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
> -
> -	/* (It is assumed that data_end through bss_end forms the bss segment.) */
> -
> -	unsigned long stack_size;   /* Size of stack, in bytes */
> -	unsigned long reloc_start;  /* Offset of relocation records from
> -	                               beginning of file */
> -	unsigned long reloc_count;  /* Number of relocation records */
> -	unsigned long flags;       
> -	unsigned long build_date;   /* When the program/library was built */
> -	unsigned long filler[5];    /* Reservered, set to zero */
> -};
> -
> -#define FLAT_FLAG_RAM    0x0001 /* load program entirely into RAM */
> -#define FLAT_FLAG_GOTPIC 0x0002 /* program is PIC with GOT */
> -#define FLAT_FLAG_GZIP   0x0004 /* all but the header is compressed */
> -#define FLAT_FLAG_GZDATA 0x0008 /* only data/relocs are compressed (for XIP) */
> -#define FLAT_FLAG_KTRACE 0x0010 /* output useful kernel trace for debugging */
> -
> -
> -
> -#endif /* _UAPI_LINUX_FLAT_H */
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
