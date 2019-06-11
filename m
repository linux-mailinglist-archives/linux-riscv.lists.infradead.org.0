Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FB53C846
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSQ7oEGqg5b26qZJxxU6hMc/qXsIdAqJXoFg+OiM4mU=; b=tQuOLdihjxLfTT
	BwhplWlIBLU+8R4H3vqiga0p5gAKsg2+8SRXI8Zx5Oo7BSEK6tjFStZ3LSADFZlHpcRaW/0uxjc59
	3ayWktdhYi0EuI49Osb3R97cIne6Ju3HFp+1AL8aVstBCdRV1Hx3dtccmoRQ2KNpTWSaW6fHT8VSI
	gsXy8vbUykelJ90Ul82Di+QXhRgae2BYMnY6nTiVBZOTT7wALIZdv02D+1N818dP9Ws/Znf1jM42z
	EpU5rOgukTlm1BVt6RNe6G1yQzwJs2TWWuMwqkX7z/yREp5m92e/PEYPI5TI0aQBSYsHebN3pn0Cx
	9+Y2cXX8monSTJN8lr+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadlI-0006x0-Lv; Tue, 11 Jun 2019 10:12:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadkn-0006aP-9o
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 10:11:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCF88337;
 Tue, 11 Jun 2019 03:11:44 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A4193F557;
 Tue, 11 Jun 2019 03:13:26 -0700 (PDT)
Subject: Re: [PATCH 01/17] mm: provide a print_vma_addr stub for !CONFIG_MMU
To: Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@sifive.com>
References: <20190610221621.10938-1-hch@lst.de>
 <20190610221621.10938-2-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <e5827553-0924-28ee-3c8a-d29b4c01defd@arm.com>
Date: Tue, 11 Jun 2019 11:11:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610221621.10938-2-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031145_450195_8E870F0E 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 uclinux-dev@uclinux.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/10/19 11:16 PM, Christoph Hellwig wrote:
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/mm.h | 6 ++++++
>  1 file changed, 6 insertions(+)

FWIW:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

> 
> diff --git a/include/linux/mm.h b/include/linux/mm.h
> index dd0b5f4e1e45..69843ee0c5f8 100644
> --- a/include/linux/mm.h
> +++ b/include/linux/mm.h
> @@ -2756,7 +2756,13 @@ extern int randomize_va_space;
>  #endif
>  
>  const char * arch_vma_name(struct vm_area_struct *vma);
> +#ifdef CONFIG_MMU
>  void print_vma_addr(char *prefix, unsigned long rip);
> +#else
> +static inline void print_vma_addr(char *prefix, unsigned long rip)
> +{
> +}
> +#endif
>  
>  void *sparse_buffer_alloc(unsigned long size);
>  struct page *sparse_mem_map_populate(unsigned long pnum, int nid,
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
