Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2B11B52C8
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 04:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DBERUkIgixaT3oYuYeglKcK2+1nIAxOiDRTBQmB0x0w=; b=hH/QidqwtUPWn6UOfDi4kvHtI
	qfoLl7zcRWNg9eCFbhteTryJB5TdGfxYvdnFiszZvoRQ5R55vx+9mgzG8U2aHVoBm4/KU6qvVvXMl
	ruFePyCBsvHEKZfUdICDmdbNr2somXf8Q8xCHdQ9gq/9UpaI2Tq88vhEcEEf52LuG/Iz7J8NfIMNW
	b+3BofYQRszTv0CaGX73JRcWZUNpi4koTv1Ws59kfFVYNzeOX33VXRr5s3atZZq0GJLnqXDxKlsTK
	N9cSn2Lfm+IeE+TLJgXjIAcA31cKBOYQw8DPQ6dnRA0Qj2F0rex9BTB39ZEORBGk6kVMFVBNiokcD
	HC/LjFcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRS3X-00064k-W9; Thu, 23 Apr 2020 02:57:40 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRS3S-00061n-LX
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 02:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587610651;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=DBERUkIgixaT3oYuYeglKcK2+1nIAxOiDRTBQmB0x0w=;
 b=UOe3zUGGGGBoIq3GxF5NFi+GdWCY9G4R4dseyPlq3Xr5nSE+c31DXRf7BJFkXku2sh9J3N
 +Ku6+HvuwaemBYn+B8I6We5xUWS92ayBRRqHqYKqwQmmXCpTJcga38HrnO4lpKZuFyPsZg
 mywOdTHz8p0g65uZCkGb0sdT/n6/VOE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-t2wXG6hJMDmSJWbWEiQcwQ-1; Wed, 22 Apr 2020 22:57:29 -0400
X-MC-Unique: t2wXG6hJMDmSJWbWEiQcwQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67F1CDB23;
 Thu, 23 Apr 2020 02:57:24 +0000 (UTC)
Received: from localhost (ovpn-12-37.pek2.redhat.com [10.72.12.37])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E0E7660BE0;
 Thu, 23 Apr 2020 02:57:22 +0000 (UTC)
Date: Thu, 23 Apr 2020 10:57:20 +0800
From: Baoquan He <bhe@redhat.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH 17/21] mm: free_area_init: allow defining max_zone_pfn in
 descending order
Message-ID: <20200423025720.GA4247@MiWiFi-R3L-srv>
References: <20200412194859.12663-1-rppt@kernel.org>
 <20200412194859.12663-18-rppt@kernel.org>
 <20200423025311.GZ4247@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200423025311.GZ4247@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_195734_784700_A50ED993 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 04/23/20 at 10:53am, Baoquan He wrote:
> On 04/12/20 at 10:48pm, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > Some architectures (e.g. ARC) have the ZONE_HIGHMEM zone below the
> > ZONE_NORMAL. Allowing free_area_init() parse max_zone_pfn array even it is
> > sorted in descending order allows using free_area_init() on such
> > architectures.
> > 
> > Add top -> down traversal of max_zone_pfn array in free_area_init() and use
> > the latter in ARC node/zone initialization.
> 
> Or maybe leave ARC as is. The change in this patchset doesn't impact
> ARC's handling about zone initialization, leaving it as is can reduce
> the complication in implementation of free_area_init(), which is a
> common function. So I personally don't see a strong motivation to have
> this patch.

OK, seems this patch is prepared to simplify free_area_init_node(), so
take back what I said at above.

Then this looks necessary, even though it introduces special case into
common function free_area_init().

Reviewed-by: Baoquan He <bhe@redhat.com>

> 
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/arc/mm/init.c | 36 +++++++-----------------------------
> >  mm/page_alloc.c    | 24 +++++++++++++++++++-----
> >  2 files changed, 26 insertions(+), 34 deletions(-)
> > 
> > diff --git a/arch/arc/mm/init.c b/arch/arc/mm/init.c
> > index 0920c969c466..41eb9be1653c 100644
> > --- a/arch/arc/mm/init.c
> > +++ b/arch/arc/mm/init.c
> > @@ -63,11 +63,13 @@ void __init early_init_dt_add_memory_arch(u64 base, u64 size)
> >  
> >  		low_mem_sz = size;
> >  		in_use = 1;
> > +		memblock_add_node(base, size, 0);
> >  	} else {
> >  #ifdef CONFIG_HIGHMEM
> >  		high_mem_start = base;
> >  		high_mem_sz = size;
> >  		in_use = 1;
> > +		memblock_add_node(base, size, 1);
> >  #endif
> >  	}
> >  
> > @@ -83,8 +85,7 @@ void __init early_init_dt_add_memory_arch(u64 base, u64 size)
> >   */
> >  void __init setup_arch_memory(void)
> >  {
> > -	unsigned long zones_size[MAX_NR_ZONES];
> > -	unsigned long zones_holes[MAX_NR_ZONES];
> > +	unsigned long max_zone_pfn[MAX_NR_ZONES] = { 0 };
> >  
> >  	init_mm.start_code = (unsigned long)_text;
> >  	init_mm.end_code = (unsigned long)_etext;
> > @@ -115,7 +116,6 @@ void __init setup_arch_memory(void)
> >  	 * the crash
> >  	 */
> >  
> > -	memblock_add_node(low_mem_start, low_mem_sz, 0);
> >  	memblock_reserve(CONFIG_LINUX_LINK_BASE,
> >  			 __pa(_end) - CONFIG_LINUX_LINK_BASE);
> >  
> > @@ -133,22 +133,7 @@ void __init setup_arch_memory(void)
> >  	memblock_dump_all();
> >  
> >  	/*----------------- node/zones setup --------------------------*/
> > -	memset(zones_size, 0, sizeof(zones_size));
> > -	memset(zones_holes, 0, sizeof(zones_holes));
> > -
> > -	zones_size[ZONE_NORMAL] = max_low_pfn - min_low_pfn;
> > -	zones_holes[ZONE_NORMAL] = 0;
> > -
> > -	/*
> > -	 * We can't use the helper free_area_init(zones[]) because it uses
> > -	 * PAGE_OFFSET to compute the @min_low_pfn which would be wrong
> > -	 * when our kernel doesn't start at PAGE_OFFSET, i.e.
> > -	 * PAGE_OFFSET != CONFIG_LINUX_RAM_BASE
> > -	 */
> > -	free_area_init_node(0,			/* node-id */
> > -			    zones_size,		/* num pages per zone */
> > -			    min_low_pfn,	/* first pfn of node */
> > -			    zones_holes);	/* holes */
> > +	max_zone_pfn[ZONE_NORMAL] = max_low_pfn;
> >  
> >  #ifdef CONFIG_HIGHMEM
> >  	/*
> > @@ -168,20 +153,13 @@ void __init setup_arch_memory(void)
> >  	min_high_pfn = PFN_DOWN(high_mem_start);
> >  	max_high_pfn = PFN_DOWN(high_mem_start + high_mem_sz);
> >  
> > -	zones_size[ZONE_NORMAL] = 0;
> > -	zones_holes[ZONE_NORMAL] = 0;
> > -
> > -	zones_size[ZONE_HIGHMEM] = max_high_pfn - min_high_pfn;
> > -	zones_holes[ZONE_HIGHMEM] = 0;
> > -
> > -	free_area_init_node(1,			/* node-id */
> > -			    zones_size,		/* num pages per zone */
> > -			    min_high_pfn,	/* first pfn of node */
> > -			    zones_holes);	/* holes */
> > +	max_zone_pfn[ZONE_HIGHMEM] = max_high_pfn;
> >  
> >  	high_memory = (void *)(min_high_pfn << PAGE_SHIFT);
> >  	kmap_init();
> >  #endif
> > +
> > +	free_area_init(max_zone_pfn);
> >  }
> >  
> >  /*
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index 343d87b8697d..376434c7a78b 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -7429,7 +7429,8 @@ static void check_for_memory(pg_data_t *pgdat, int nid)
> >  void __init free_area_init(unsigned long *max_zone_pfn)
> >  {
> >  	unsigned long start_pfn, end_pfn;
> > -	int i, nid;
> > +	int i, nid, zone;
> > +	bool descending = false;
> >  
> >  	/* Record where the zone boundaries are */
> >  	memset(arch_zone_lowest_possible_pfn, 0,
> > @@ -7439,13 +7440,26 @@ void __init free_area_init(unsigned long *max_zone_pfn)
> >  
> >  	start_pfn = find_min_pfn_with_active_regions();
> >  
> > +	/*
> > +	 * Some architecturs, e.g. ARC may have ZONE_HIGHMEM below
> > +	 * ZONE_NORMAL. For such cases we allow max_zone_pfn sorted in the
> > +	 * descending order
> > +	 */
> > +	if (MAX_NR_ZONES > 1 && max_zone_pfn[0] > max_zone_pfn[1])
> > +		descending = true;
> > +
> >  	for (i = 0; i < MAX_NR_ZONES; i++) {
> > -		if (i == ZONE_MOVABLE)
> > +		if (descending)
> > +			zone = MAX_NR_ZONES - i - 1;
> > +		else
> > +			zone = i;
> > +
> > +		if (zone == ZONE_MOVABLE)
> >  			continue;
> >  
> > -		end_pfn = max(max_zone_pfn[i], start_pfn);
> > -		arch_zone_lowest_possible_pfn[i] = start_pfn;
> > -		arch_zone_highest_possible_pfn[i] = end_pfn;
> > +		end_pfn = max(max_zone_pfn[zone], start_pfn);
> > +		arch_zone_lowest_possible_pfn[zone] = start_pfn;
> > +		arch_zone_highest_possible_pfn[zone] = end_pfn;
> >  
> >  		start_pfn = end_pfn;
> >  	}
> > -- 
> > 2.25.1
> > 


