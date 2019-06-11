Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FED63C7E9
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 11:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knWHXlG2Zwye64djl07CnRfeQQoREV4LMMuU7Ht4QDU=; b=J2xn3cDghEXAyE
	cCTIXxdNrKsAK3LxwwxZjjc6fC90OIyUboZEJBLAJoLHxlOCgfyzdpfTBl5pSrVG3iUqGtFlQY0MQ
	UrQ0YJB+Zjb5q7ijrq0YAs2/AFEpNtMbo+4ZEUM7T33FcBP5u0JzqFN0IKiYMYTSYdhGnNYg+XCoT
	GzWeUU2tH0+571EDE1giv1jA1T7SSGuOda1AvqK20uPDp6/0Ml99lvHH3pNHxj0O7xABmjM5mepiu
	QljR8mmog8U+D5zpQpfDvg4dnkwg6Opq/L7EPjrzoDaKNgjf+0qzC7cDN/BYBJb6hH616V6I9++2H
	3X86bv4+WW+Ub+qQHcQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadYZ-0006JX-Oy; Tue, 11 Jun 2019 09:59:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadXY-0005R8-Ri; Tue, 11 Jun 2019 09:58:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 193BD337;
 Tue, 11 Jun 2019 02:58:04 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B4623F73C;
 Tue, 11 Jun 2019 02:59:44 -0700 (PDT)
Subject: Re: [PATCH 08/15] binfmt_flat: add endianess annotations
To: Christoph Hellwig <hch@lst.de>, Greg Ungerer <gerg@linux-m68k.org>
References: <20190610212015.9157-1-hch@lst.de>
 <20190610212015.9157-9-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <79a2f6d9-7161-b2c7-2eb0-6719daadca8b@arm.com>
Date: Tue, 11 Jun 2019 10:58:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610212015.9157-9-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_025805_065948_B068E76C 
X-CRM114-Status: GOOD (  19.26  )
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
> Most binfmt_flat on-disk fields are big endian.  Use the proper __be32
> type where applicable.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  fs/binfmt_flat.c | 26 ++++++++++++++++----------
>  1 file changed, 16 insertions(+), 10 deletions(-)

Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

> 
> diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
> index 6ae0f9af3fc9..6c1848dee724 100644
> --- a/fs/binfmt_flat.c
> +++ b/fs/binfmt_flat.c
> @@ -421,7 +421,8 @@ static int load_flat_file(struct linux_binprm *bprm,
>  	unsigned long textpos, datapos, realdatastart;
>  	u32 text_len, data_len, bss_len, stack_len, full_data, flags;
>  	unsigned long len, memp, memp_size, extra, rlim;
> -	u32 __user *reloc, *rp;
> +	__be32 __user *reloc;
> +	u32 __user *rp;
>  	struct inode *inode;
>  	int i, rev, relocs;
>  	loff_t fpos;
> @@ -594,7 +595,7 @@ static int load_flat_file(struct linux_binprm *bprm,
>  			goto err;
>  		}
>  
> -		reloc = (u32 __user *)
> +		reloc = (__be32 __user *)
>  			(datapos + (ntohl(hdr->reloc_start) - text_len));
>  		memp = realdatastart;
>  		memp_size = len;
> @@ -619,7 +620,7 @@ static int load_flat_file(struct linux_binprm *bprm,
>  				MAX_SHARED_LIBS * sizeof(u32),
>  				FLAT_DATA_ALIGN);
>  
> -		reloc = (u32 __user *)
> +		reloc = (__be32 __user *)
>  			(datapos + (ntohl(hdr->reloc_start) - text_len));
>  		memp = textpos;
>  		memp_size = len;
> @@ -785,15 +786,16 @@ static int load_flat_file(struct linux_binprm *bprm,
>  		u32 __maybe_unused persistent = 0;
>  		for (i = 0; i < relocs; i++) {
>  			u32 addr, relval;
> +			__be32 tmp;
>  
>  			/*
>  			 * Get the address of the pointer to be
>  			 * relocated (of course, the address has to be
>  			 * relocated first).
>  			 */
> -			if (get_user(relval, reloc + i))
> +			if (get_user(tmp, reloc + i))
>  				return -EFAULT;
> -			relval = ntohl(relval);
> +			relval = ntohl(tmp);
>  			addr = flat_get_relocate_addr(relval);
>  			rp = (u32 __user *)calc_reloc(addr, libinfo, id, 1);
>  			if (rp == (u32 __user *)RELOC_FAILED) {
> @@ -812,8 +814,13 @@ static int load_flat_file(struct linux_binprm *bprm,
>  				 * Do the relocation.  PIC relocs in the data section are
>  				 * already in target order
>  				 */
> -				if ((flags & FLAT_FLAG_GOTPIC) == 0)
> -					addr = ntohl(addr);
> +				if ((flags & FLAT_FLAG_GOTPIC) == 0) {
> +					/*
> +					 * Meh, the same value can have a different
> +					 * byte order based on a flag..
> +					 */
> +					addr = ntohl((__force __be32)addr);
> +				}
>  				addr = calc_reloc(addr, libinfo, id, 0);
>  				if (addr == RELOC_FAILED) {
>  					ret = -ENOEXEC;
> @@ -828,11 +835,10 @@ static int load_flat_file(struct linux_binprm *bprm,
>  		}
>  	} else {
>  		for (i = 0; i < relocs; i++) {
> -			u32 relval;
> +			__be32 relval;
>  			if (get_user(relval, reloc + i))
>  				return -EFAULT;
> -			relval = ntohl(relval);
> -			old_reloc(relval);
> +			old_reloc(ntohl(relval));
>  		}
>  	}
>  
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
