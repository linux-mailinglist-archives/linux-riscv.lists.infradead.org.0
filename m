Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEA01B1B8A
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 04:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NeOgQkZsDdoMNz10q5IMbsxGpqUOFvMFdq6FjujHkZg=; b=ZqG1EMdqFl337mdngh5Sw9Y9p
	9U7ZcOjubiJ6lOryU58FM4LvM6dMsfVuMA6c5Yav/5xYQXo7y1TCMu3lK5Ym8x6tP3jyLq2VyAV7V
	7eUsccIZBRUmjxlsTgPFNZWJiBpx2d7lf3mxGtRU2i5c3wkpsbEmfBicqQ9Ap4PDS875SMvIzcmTJ
	6LGl6dsOvBj2hSGvvCJ3KFjvCP9Ax6MrrDCnXKVnHXjX6/MIjAyXrlvrFugYxfN1bBiyhyi5w8U3c
	ONQao7KhcPBj+EVmmi1LqVzVBRwM7DnC+lVk02UXwZmLHxdVdZviofuH0J3ZgI963D0iCNFZ0KJdG
	ClEY+BpxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQiIw-0002oj-Id; Tue, 21 Apr 2020 02:06:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQiIr-0002jx-B7
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 02:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587434782;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NeOgQkZsDdoMNz10q5IMbsxGpqUOFvMFdq6FjujHkZg=;
 b=SaCdoY7l299J9vjZ35BwGG6/62d0fDj48GmbWnFzq8cbXVK4pHkiJuhl7lc0OPUUtZ54GO
 jZsHZi8lSDwXNHAQqfQ+G8D8qG2Cn4EccagjrkE1Z3kjpxURi9+h1QfMVrCG6VEqWrhKGf
 Ke73MnEvD7BL9e0prQg4TkD4PfLzWgA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-MsTbvPRrM-CWA6xKfn_0bw-1; Mon, 20 Apr 2020 22:06:20 -0400
X-MC-Unique: MsTbvPRrM-CWA6xKfn_0bw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E29813FE;
 Tue, 21 Apr 2020 02:06:14 +0000 (UTC)
Received: from localhost (ovpn-12-34.pek2.redhat.com [10.72.12.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B9AE6A18A0;
 Tue, 21 Apr 2020 02:06:05 +0000 (UTC)
Date: Tue, 21 Apr 2020 10:06:03 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH 01/21] mm: memblock: replace dereferences of
 memblock_region.nid with API calls
Message-ID: <20200421020603.GO4247@MiWiFi-R3L-srv>
References: <20200412194859.12663-1-rppt@kernel.org>
 <20200412194859.12663-2-rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200412194859.12663-2-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_190625_484507_0E441682 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, linux-parisc@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, Greg Ungerer <gerg@linux-m68k.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Jonathan Corbet <corbet@lwn.net>,
 linux-sh@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org, Mark Salter <msalter@redhat.com>,
 Matt Turner <mattst88@gmail.com>, linux-mips@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, linux-xtensa@linux-xtensa.org,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Tony Luck <tony.luck@intel.com>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Hoan Tran <Hoan@os.amperecomputing.com>, Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Richard Weinberger <richard@nod.at>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 04/12/20 at 10:48pm, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> There are several places in the code that directly dereference
> memblock_region.nid despite this field being defined only when
> CONFIG_HAVE_MEMBLOCK_NODE_MAP=y.
> 
> Replace these with calls to memblock_get_region_nid() to improve code
> robustness and to avoid possible breakage when
> CONFIG_HAVE_MEMBLOCK_NODE_MAP will be removed.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  arch/arm64/mm/numa.c | 9 ++++++---
>  arch/x86/mm/numa.c   | 6 ++++--
>  mm/memblock.c        | 8 +++++---
>  mm/page_alloc.c      | 4 ++--
>  4 files changed, 17 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
> index 4decf1659700..aafcee3e3f7e 100644
> --- a/arch/arm64/mm/numa.c
> +++ b/arch/arm64/mm/numa.c
> @@ -350,13 +350,16 @@ static int __init numa_register_nodes(void)
>  	struct memblock_region *mblk;
>  
>  	/* Check that valid nid is set to memblks */
> -	for_each_memblock(memory, mblk)
> -		if (mblk->nid == NUMA_NO_NODE || mblk->nid >= MAX_NUMNODES) {
> +	for_each_memblock(memory, mblk) {
> +		int mblk_nid = memblock_get_region_node(mblk);
> +
> +		if (mblk_nid == NUMA_NO_NODE || mblk_nid >= MAX_NUMNODES) {
>  			pr_warn("Warning: invalid memblk node %d [mem %#010Lx-%#010Lx]\n",
> -				mblk->nid, mblk->base,
> +				mblk_nid, mblk->base,
>  				mblk->base + mblk->size - 1);
>  			return -EINVAL;
>  		}
> +	}
>  
>  	/* Finally register nodes. */
>  	for_each_node_mask(nid, numa_nodes_parsed) {
> diff --git a/arch/x86/mm/numa.c b/arch/x86/mm/numa.c
> index 59ba008504dc..fe024b2ac796 100644
> --- a/arch/x86/mm/numa.c
> +++ b/arch/x86/mm/numa.c
> @@ -517,8 +517,10 @@ static void __init numa_clear_kernel_node_hotplug(void)
>  	 *   reserve specific pages for Sandy Bridge graphics. ]
>  	 */
>  	for_each_memblock(reserved, mb_region) {
> -		if (mb_region->nid != MAX_NUMNODES)
> -			node_set(mb_region->nid, reserved_nodemask);
> +		int nid = memblock_get_region_node(mb_region);
> +
> +		if (nid != MAX_NUMNODES)
> +			node_set(nid, reserved_nodemask);
>  	}
>  
>  	/*
> diff --git a/mm/memblock.c b/mm/memblock.c
> index c79ba6f9920c..43e2fd3006c1 100644
> --- a/mm/memblock.c
> +++ b/mm/memblock.c
> @@ -1207,13 +1207,15 @@ void __init_memblock __next_mem_pfn_range(int *idx, int nid,
>  {
>  	struct memblock_type *type = &memblock.memory;
>  	struct memblock_region *r;
> +	int r_nid;
>  
>  	while (++*idx < type->cnt) {
>  		r = &type->regions[*idx];
> +		r_nid = memblock_get_region_node(r);
>  
>  		if (PFN_UP(r->base) >= PFN_DOWN(r->base + r->size))
>  			continue;
> -		if (nid == MAX_NUMNODES || nid == r->nid)
> +		if (nid == MAX_NUMNODES || nid == r_nid)
>  			break;
>  	}
>  	if (*idx >= type->cnt) {
> @@ -1226,7 +1228,7 @@ void __init_memblock __next_mem_pfn_range(int *idx, int nid,
>  	if (out_end_pfn)
>  		*out_end_pfn = PFN_DOWN(r->base + r->size);
>  	if (out_nid)
> -		*out_nid = r->nid;
> +		*out_nid = r_nid;
>  }
>  
>  /**
> @@ -1810,7 +1812,7 @@ int __init_memblock memblock_search_pfn_nid(unsigned long pfn,
>  	*start_pfn = PFN_DOWN(type->regions[mid].base);
>  	*end_pfn = PFN_DOWN(type->regions[mid].base + type->regions[mid].size);
>  
> -	return type->regions[mid].nid;
> +	return memblock_get_region_node(&type->regions[mid]);
>  }
>  #endif
>  
> diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> index 69827d4fa052..0d012eda1694 100644
> --- a/mm/page_alloc.c
> +++ b/mm/page_alloc.c
> @@ -7208,7 +7208,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
>  			if (!memblock_is_hotpluggable(r))
>  				continue;
>  
> -			nid = r->nid;
> +			nid = memblock_get_region_node(r);
>  
>  			usable_startpfn = PFN_DOWN(r->base);
>  			zone_movable_pfn[nid] = zone_movable_pfn[nid] ?
> @@ -7229,7 +7229,7 @@ static void __init find_zone_movable_pfns_for_nodes(void)
>  			if (memblock_is_mirror(r))
>  				continue;
>  
> -			nid = r->nid;
> +			nid = memblock_get_region_node(r);
>  
>  			usable_startpfn = memblock_region_memory_base_pfn(r);

Looks good to me.

Reviewed-by: Baoquan He <bhe@redhat.com>


