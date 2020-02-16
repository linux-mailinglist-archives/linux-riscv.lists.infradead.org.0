Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BC816045B
	for <lists+linux-riscv@lfdr.de>; Sun, 16 Feb 2020 15:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rq4YjsyqC9nG4lp9Qt0VTGxu+aW7XqZ8gTHsGjsUyBU=; b=IcZaxfruB6HWdE
	9IczPvCryyv6nVN9CW0iV0MEc/HkhkRtBC4y7j7s7R5Mj8M0FXfvgAHLk1EPSWow8NjyZDVTat99d
	1b0jS6YFLDJUfdvZuo+SCHx4kpvtY4XjtcANRLcZaAOfK9XkHa4Du1ZgXqzcCS4pqmgZO9dotRJKy
	dk7YhuoNUsomm7YsnM18TSrS3T3dehKbbboVwVE8iPPwTD+pSw/O9OITeIWdfH/vcxOM/TIMne+Gn
	MQoNegvc+hGADJdqG0uplHGwm9c8YQly+QVpyiK/5FPNi4LWjornwAywFxzBhmE/GAq5wes4evn/3
	cjz5WMnBTMt9Y1LD8ZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3L7U-0006XV-0f; Sun, 16 Feb 2020 14:42:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3L7S-0006XP-G1
 for linux-riscv@bombadil.infradead.org; Sun, 16 Feb 2020 14:42:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=Rq4YjsyqC9nG4lp9Qt0VTGxu+aW7XqZ8gTHsGjsUyBU=; b=FCnkfs/dn31bHv2fhBqcWTtEip
 6mCnV14xAYqvOznblv/cCEST1T63a00kP/2LY5mz9rk8Q0VPvRD/RC69RWXd7vMZXVChGlXgsmApg
 Ob6wQ/3ndz3t+89V08HqHbNILp1Z458fX37D324QVS7004w4TXnLoopIyR5EHat7+QlvoJvd4jdzt
 bjvCfFklJSAIgxr5WvOdiMMzgjeh8ZlUK2G8+OTnmtvLisR6027V0rVa4B2dDiM+eIj1d2QeokDzI
 ed5dqmwxwgVDQ2sYQWgf+OjZ82hIsir2nhFu9zQ8TF9XJSajjyPSneIMaQEbUYBM6jK39Dh/O0UKU
 3jbrP26g==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3L7P-0001NI-CY
 for linux-riscv@lists.infradead.org; Sun, 16 Feb 2020 14:42:00 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A84D120003;
 Sun, 16 Feb 2020 14:41:11 +0000 (UTC)
Subject: Re: [PATCH v2 3/3] riscv: Fix crash when flushing executable ioremap
 regions
To: Jan Kiszka <jan.kiszka@web.de>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 linux-riscv@lists.infradead.org
References: <cover.1581767384.git.jan.kiszka@web.de>
 <8a555b0b0934f0ba134de92f6cf9db8b1744316c.1581767384.git.jan.kiszka@web.de>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <e721c440-2baf-d962-62ef-41a4f3b1333b@ghiti.fr>
Date: Sun, 16 Feb 2020 09:41:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <8a555b0b0934f0ba134de92f6cf9db8b1744316c.1581767384.git.jan.kiszka@web.de>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Jan,

On 2/15/20 6:49 AM, Jan Kiszka wrote:
> From: Jan Kiszka <jan.kiszka@siemens.com>
> 
> Those are not backed by page structs, and pte_page is returning an
> invalid pointer.
> 
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> =2D--
>   arch/riscv/mm/cacheflush.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> index 8930ab7278e6..9ee2c1a387cc 100644
> =2D-- a/arch/riscv/mm/cacheflush.c
> +++ b/arch/riscv/mm/cacheflush.c
> @@ -84,7 +84,8 @@ void flush_icache_pte(pte_t pte)
>   {
>   	struct page *page =3D pte_page(pte);
> 
> -	if (!test_and_set_bit(PG_dcache_clean, &page->flags))
> +	if (!pfn_valid(pte_pfn(pte)) ||
> +	    !test_and_set_bit(PG_dcache_clean, &page->flags))
>   		flush_icache_all();
>   }
>   #endif /* CONFIG_MMU */
> =2D-
> 2.16.4
> 
> 

When did you encounter such a situation ? i.e. executable code that is 
not backed by struct page ?

Riscv uses the generic implementation of ioremap and the way 
_PAGE_IOREMAP is defined does not allow to map executable memory region 
using ioremap, so I'm interested to understand how we end up in 
flush_icache_pte for an executable region not backed by any struct page.

Thanks,

Alex

