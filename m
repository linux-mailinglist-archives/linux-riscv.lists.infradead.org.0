Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02BF3C861
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 12:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44pqVFt8HfXc6ij+aMT1r/mn3uTqN4Iyi1twLB5YmRs=; b=IyzYWD+qCMuZng
	BzW6qyL2Ejq1xCBNqUepj8fy5AynZv2BGjbXU3rS0Rwe3IJrzCmaRUzZZAyEjSMY9dWx8EEPR7pUB
	FxNFBDaiA/cASnYgmM3G4ecK3sCOB8REHXuiEZ9PvP36fpBGCQa0ZI5oVBcuBEXR3+2UdtOGQhuvq
	eML7C0s2Dy5ZBXWTk60KgCBrY670kk2GVk4x2kvqdH+Hc0TfcKsRn/miy9ryoRGlXfYA2m4SB2SQM
	VAX4RFu/6M9ORkbcfb9YF8DFBT3blqR3J3Ri5Bg2TwXVb6di4tDvFlnQxd1Z5ToQQhCGK6MmEXZMF
	Hiwp0tdrIJYsOpH7tjJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadok-0001Id-EW; Tue, 11 Jun 2019 10:15:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadoh-0001Hp-36
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 10:15:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6714B337;
 Tue, 11 Jun 2019 03:15:46 -0700 (PDT)
Received: from [10.1.29.141] (e121487-lin.cambridge.arm.com [10.1.29.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8DCD3F557;
 Tue, 11 Jun 2019 03:17:27 -0700 (PDT)
Subject: Re: [PATCH 02/17] mm: stub out all of swapops.h for !CONFIG_MMU
To: Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@sifive.com>
References: <20190610221621.10938-1-hch@lst.de>
 <20190610221621.10938-3-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <516c8def-22db-027c-873d-a943454e33af@arm.com>
Date: Tue, 11 Jun 2019 11:15:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610221621.10938-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031547_183325_42CD60A3 
X-CRM114-Status: GOOD (  17.06  )
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
> The whole header file deals with swap entries and PTEs, none of which
> can exist for nommu builds.

Although I agree with the patch, I'm wondering how you get into it?

Cheers
Vladimir

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/swapops.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/swapops.h b/include/linux/swapops.h
> index 4d961668e5fc..b02922556846 100644
> --- a/include/linux/swapops.h
> +++ b/include/linux/swapops.h
> @@ -6,6 +6,8 @@
>  #include <linux/bug.h>
>  #include <linux/mm_types.h>
>  
> +#ifdef CONFIG_MMU
> +
>  /*
>   * swapcache pages are stored in the swapper_space radix tree.  We want to
>   * get good packing density in that tree, so the index should be dense in
> @@ -50,13 +52,11 @@ static inline pgoff_t swp_offset(swp_entry_t entry)
>  	return entry.val & SWP_OFFSET_MASK;
>  }
>  
> -#ifdef CONFIG_MMU
>  /* check whether a pte points to a swap entry */
>  static inline int is_swap_pte(pte_t pte)
>  {
>  	return !pte_none(pte) && !pte_present(pte);
>  }
> -#endif
>  
>  /*
>   * Convert the arch-dependent pte representation of a swp_entry_t into an
> @@ -375,4 +375,5 @@ static inline int non_swap_entry(swp_entry_t entry)
>  }
>  #endif
>  
> +#endif /* CONFIG_MMU */
>  #endif /* _LINUX_SWAPOPS_H */
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
