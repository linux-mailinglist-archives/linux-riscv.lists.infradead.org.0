Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8970DF00F
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 07:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ZpIaI6MinGOfvg4EghoJZSwe6HEKiJmfsC6URmRlQU=; b=jy/Q8BAXHyTqAxLia6inq59au
	6VcIQF5qrQg9+scfQj1aoFf+Zgo0ELyk1uQ4l/c621csQ1bavwilzeuyXJ4Ajh57aXOl6Kq0SBncU
	jEr4QC+qClinJw8ndz28/vCv0aYy7xMPkvlQ9S3m4RfnBE2b92ZfDBX5VxxFijijhnfVJZtP9Aixl
	TAIdCnRJ48wMqofPga4R/zhw4itHCxKHEm6rqP/XAOK8Q0ebN7eFFtdGzl1l11Tcj+jv1e88QihoY
	yZ/M4bvlbdSpppdGdurjgx7kwKzV9q/bZQ8pf0N438IjEBMIAkHr7zTbEKvQNsTrS46U7iPk7GVZU
	OClkTaPlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLXW-0008SG-OO; Tue, 30 Apr 2019 05:42:50 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLXT-0008RW-Uh
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 05:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556602967; x=1588138967;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=icCQ5QcGcJ4fUqa/g5O0u92H78pigrgOEwz0dvW4e+Q=;
 b=WxgUza9ajI2jKkFkyjS3dQLpmEfmcoD3khVDRmXh0UMEwaSUOFDeesDy
 QcfpY5ROW7lnSJKu6spFlRrTW7bAbEdXH5o71TenbUouO8Ix7uXbg83dD
 2x7SW8JIl+8w59jHLWXaTzcypmkJugn54U44pEpc6RoHc7tcn8fKQixx2
 znLjLaEEkgelVCbWn/OPnpn5Lrh2yAlsFOfC5EiyznTC8h4xLGhx288fO
 p8hImTQf8zZSwPS0vVKEKgiswGb+olixh+ynk7ItZTZVYoRcVylO7pXnO
 eh7iSf2ZpUYNrlP2sKuFEyDwLdwJfUfS3EiWliCJ/SxzJyZqRi1Wk4gHB g==;
X-IronPort-AV: E=Sophos;i="5.60,412,1549900800"; d="scan'208";a="213040443"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 13:42:41 +0800
IronPort-SDR: s31Ip1r6/A4ungreDIioMBrgN9GueVz4wTxvlFVZnI+SnhgPY6Nx1EFG6oQZ+Zh3wh+fzztVHz
 L3PGGkYueedWqyR6u5kS8vQ/Iuc0Ycl4EBnwD68TxFrUxzD5ux0TqA5N/sVzvYMRjGBlycjrwQ
 1fi6pnmNtbZh7NTgGRikkLeQhcGxN/MfPDQ2wx9YyjaY3LikT9BOvt7sAL+Di+5SXiODMplOnR
 kb7Dm3SCPABZB/JRI23AhydJxm1iv1XgkYBXYzpSSsxmfarhiUJnnKLdCOJJeOMtpgTwW6gN8l
 Nhh0V23Ec7TdSRFJ5xSx1iEx
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 29 Apr 2019 22:19:04 -0700
IronPort-SDR: iwn4Qx9aN3SG3WBp4onocm0L4067aRcGNHeGzgX4BQpvywNVkWTTrKm4DEzRLJ6g0loN35eShf
 ubO+urfAyNApiRUftSz/0pasxtkStZQNHRuwBEzWQjgIjgEUCtpMCtG9m0V/SomM8hx61ShJXx
 7SMw+X2hsTP7GQ9u+l/2rST71lI5d2gXrDPKVSZLsGA6unsmsCsElqEAKC7+gYjpsTwR+OyFmm
 cHb+c59vUf5s2HZswwAWhLnnOy3+ed3HhJf5FdTJ1ztiDbYg4Vcp5yKaBIRoP/ztTp6Cgu4mCd
 qqg=
Received: from ind005306.ad.shared (HELO [10.86.55.35]) ([10.86.55.35])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 Apr 2019 22:42:41 -0700
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
To: Palmer Dabbelt <palmer@sifive.com>
References: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
Date: Mon, 29 Apr 2019 22:42:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_224248_126009_A161E08A 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: "zong@andestech.com" <zong@andestech.com>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/29/19 4:40 PM, Palmer Dabbelt wrote:
> On Tue, 23 Apr 2019 16:25:06 PDT (-0700), atish.patra@wdc.com wrote:
>> Currently, last stage boot loaders such as U-Boot can accept only
>> uImage which is an unnecessary additional step in automating boot flows.
>>
>> Add a simple image header that boot loaders can parse and directly
>> load kernel flat Image. The existing booting methods will continue to
>> work as it is.
>>
>> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> ---
>>   arch/riscv/include/asm/image.h | 32 ++++++++++++++++++++++++++++++++
>>   arch/riscv/kernel/head.S       | 28 ++++++++++++++++++++++++++++
>>   2 files changed, 60 insertions(+)
>>   create mode 100644 arch/riscv/include/asm/image.h
>>
>> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
>> new file mode 100644
>> index 000000000000..76a7e0d4068a
>> --- /dev/null
>> +++ b/arch/riscv/include/asm/image.h
>> @@ -0,0 +1,32 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +
>> +#ifndef __ASM_IMAGE_H
>> +#define __ASM_IMAGE_H
>> +
>> +#define RISCV_IMAGE_MAGIC	"RISCV"
>> +
>> +#ifndef __ASSEMBLY__
>> +/*
>> + * struct riscv_image_header - riscv kernel image header
>> + *
>> + * @code0:		Executable code
>> + * @code1:		Executable code
>> + * @text_offset:	Image load offset
>> + * @image_size:		Effective Image size
>> + * @reserved:		reserved
>> + * @magic:		Magic number
>> + * @reserved:		reserved
>> + */
>> +
>> +struct riscv_image_header {
>> +	u32 code0;
>> +	u32 code1;
>> +	u64 text_offset;
>> +	u64 image_size;
>> +	u64 res1;
>> +	u64 magic;
>> +	u32 res2;
>> +	u32 res3;
>> +};
> 
> I don't want to invent our own file format.  Is there a reason we can't just
> use something standard?  Off the top of my head I can think of ELF files and
> multiboot.
> 

Additional header is required to accommodate PE header format. 
Currently, this is only used for booti command but it will be reused for 
EFI headers as well. Linux kernel Image can pretend as an EFI 
application if PE/COFF header is present. This removes the need of an 
explicit EFI boot loader and EFI firmware can directly load Linux 
(obviously after EFI stub implementation for RISC-V).

ARM64 follows the similar header format as well.
https://www.kernel.org/doc/Documentation/arm64/booting.txt

Regards,
Atish

>> +#endif /* __ASSEMBLY__ */
>> +#endif /* __ASM_IMAGE_H */
>> diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
>> index fe884cd69abd..154647395601 100644
>> --- a/arch/riscv/kernel/head.S
>> +++ b/arch/riscv/kernel/head.S
>> @@ -19,9 +19,37 @@
>>   #include <asm/thread_info.h>
>>   #include <asm/page.h>
>>   #include <asm/csr.h>
>> +#include <asm/image.h>
>>
>>   __INIT
>>   ENTRY(_start)
>> +	/*
>> +	 * Image header expected by Linux boot-loaders. The image header data
>> +	 * structure is described in asm/image.h.
>> +	 * Do not modify it without modifying the structure and all bootloaders
>> +	 * that expects this header format!!
>> +	 */
>> +	/* jump to start kernel */
>> +	j _start_kernel
>> +	/* reserved */
>> +	.word 0
>> +	.balign 8
>> +#if __riscv_xlen == 64
>> +	/* Image load offset(2MB) from start of RAM */
>> +	.dword 0x200000
>> +#else
>> +	/* Image load offset(4MB) from start of RAM */
>> +	.dword 0x400000
>> +#endif
>> +	/* Effective size of kernel image */
>> +	.dword _end - _start
>> +	.dword 0
>> +	.asciz RISCV_IMAGE_MAGIC
>> +	.word 0
>> +	.word 0
>> +
>> +.global _start_kernel
>> +_start_kernel:
>>   	/* Mask all interrupts */
>>   	csrw sie, zero
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
