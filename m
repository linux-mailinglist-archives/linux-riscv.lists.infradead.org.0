Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D377D1B1F55
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 08:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6P8shjSruP+Jbh0ZqugzN5fC26tEIX5ILDg3M+VmMhc=; b=Tvc3XYxsH2CftIanxXGWdl8Ln
	oy2PPEnBbxsfAHNmX5Tq9j4FbmLTcdNBJwYcOd4hsKBpoYJs2rFhG7u5AmBa6xKeCuTVWCkQKKKMH
	cFoyrrX7CrMFbSXpNpxMrlDATW9HZZHfjM+8kSxjXNnRh8Ykm6G9thICmN6VcxcBFmODrLvkYHZvs
	znbkqtbpU7HpVkURdsCHT5npLFd2FakvE8JfnvjxChNTeOM7XQHhIjhk9/R3D3H4c0Mb8bhlPh4QV
	Z/BMJq7Y6fRgThCiABps+rkeki1tF4g9eHA0cyY335R+inUMr50QA7Iqu8e31f8wnIae8C57FwsK6
	CS3d4FmXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmrx-00018U-5T; Tue, 21 Apr 2020 06:58:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmrm-0000yu-9V; Tue, 21 Apr 2020 06:58:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1A8C206A5;
 Tue, 21 Apr 2020 06:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587452325;
 bh=zSEWmKynQKWmz0IUSm5ihu6tEO3dWhXZaB1lMRy7jqQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u/UKJNZHEKIupjB7ZBsUtiiYe7I6nCSpdDQbmHIZGClUxVmUlZIUfiPEZIzRHYUn6
 g6qnj51G9uRyRFpu8kN44be1pro4HTNJ141yDBBMvK2ulYFktfLaQWDGM/4efuHYdD
 p/+dw+DK48euKA47LcgpoqVY6ox6mMphLQl6q9NI=
Date: Tue, 21 Apr 2020 07:58:37 +0100
From: Will Deacon <will@kernel.org>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v3 0/4] Clean up hugetlb boot command line processing
Message-ID: <20200421065836.GA14448@willie-the-truck>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <5E312000-05D8-4C5D-A7C0-DDDE1842CB0E@lca.pw>
 <4c36c6ce-3774-78fa-abc4-b7346bf24348@oracle.com>
 <CADYN=9+=tCDmddTYGY44onvrzbg7yrbacMDSxd4hhD+=b=Yeiw@mail.gmail.com>
 <86333853-0648-393f-db96-d581ee114d2b@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86333853-0648-393f-db96-d581ee114d2b@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_235846_370042_EE2F997E 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Mina Almasry <almasrymina@google.com>, linux-s390@vger.kernel.org,
 Anders Roxell <anders.roxell@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Qian Cai <cai@lca.pw>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 02:40:05PM -0700, Mike Kravetz wrote:
> On 4/20/20 1:29 PM, Anders Roxell wrote:
> > On Mon, 20 Apr 2020 at 20:23, Mike Kravetz <mike.kravetz@oracle.com> wrote:
> >> On 4/20/20 8:34 AM, Qian Cai wrote:
> >>>
> >>> Reverted this series fixed many undefined behaviors on arm64 with the config,
> >> While rearranging the code (patch 3 in series), I made the incorrect
> >> assumption that CONT_XXX_SIZE == (1UL << CONT_XXX_SHIFT).  However,
> >> this is not the case.  Does the following patch fix these issues?
> >>
> >> From b75cb4a0852e208bee8c4eb347dc076fcaa88859 Mon Sep 17 00:00:00 2001
> >> From: Mike Kravetz <mike.kravetz@oracle.com>
> >> Date: Mon, 20 Apr 2020 10:41:18 -0700
> >> Subject: [PATCH] arm64/hugetlb: fix hugetlb initialization
> >>
> >> When calling hugetlb_add_hstate() to initialize a new hugetlb size,
> >> be sure to use correct huge pages size order.
> >>
> >> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
> >> ---
> >>  arch/arm64/mm/hugetlbpage.c | 8 ++++----
> >>  1 file changed, 4 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
> >> index 9ca840527296..a02411a1f19a 100644
> >> --- a/arch/arm64/mm/hugetlbpage.c
> >> +++ b/arch/arm64/mm/hugetlbpage.c
> >> @@ -453,11 +453,11 @@ void huge_ptep_clear_flush(struct vm_area_struct *vma,
> >>  static int __init hugetlbpage_init(void)
> >>  {
> >>  #ifdef CONFIG_ARM64_4K_PAGES
> >> -       hugetlb_add_hstate(PUD_SHIFT - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(PUD_SIZE) - PAGE_SHIFT);
> >>  #endif
> >> -       hugetlb_add_hstate(CONT_PMD_SHIFT - PAGE_SHIFT);
> >> -       hugetlb_add_hstate(PMD_SHIFT - PAGE_SHIFT);
> >> -       hugetlb_add_hstate(CONT_PTE_SHIFT - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(CONT_PMD_SIZE) - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(PMD_SIZE) - PAGE_SHIFT);
> >> +       hugetlb_add_hstate(ilog2(CONT_PTE_SIZE) - PAGE_SHIFT);
> >>
> >>         return 0;
> >>  }
> > 
> > I build this for an arm64 kernel and ran it in qemu and it worked.
> 
> Thanks for testing Anders!
> 
> Will, here is an updated version of the patch based on your suggestion.
> I added the () for emphasis but that may just be noise for some.  Also,
> the naming differences and values for CONT_PTE may make some people
> look twice.  Not sure if being consistent here helps?

Cheers, thanks for this. I think being consistent is worthwhile, as it's
the definitions themselves that are weird and we can conceivably clean
that up as a separate patch.

So,

Acked-by: Will Deacon <will@kernel.org>

Looks like Andrew already picked it up (thanks!)

Thanks,

Will

