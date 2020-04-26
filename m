Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9B11B8B89
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 05:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pI4WTQMbkLzidxC+38ZRQkA6yD+KVZMsukljuo4B/Y=; b=FRH0v+dhgL4Dbp
	Weg3mHEsa4DrSiPUwnFahktsg4wR5bKZj+vOdXdwDa49tfKiaaZfBeO23g/i3XTw0yNuYBT5bFFtr
	A4KuYB089x3RgF8YSJs7kv8q/ewPnXX87IGQFXhcQxwom0Yke3AIAmXI9AgKlDfUrPCHnQiQstY3q
	lV542kYIKjDfWQCnY+ePfAbtnI8t4U8GOfaxX38uN8wNGf8XUbqE5kWNIRHPlI5WWZ4cfbC+aqKGW
	DiU60vDGnHpPrIO6Wz4yYI5B+m+5v+d08HFW4x7Ky0vnovbmuXJBZZzIzrVPXmB9sM3D7j6XJoevE
	+hdkGiqZg4xGpkf0/4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSXYE-00055h-J4; Sun, 26 Apr 2020 03:01:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSXXs-0004uM-UO; Sun, 26 Apr 2020 03:01:30 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6969B206D4;
 Sun, 26 Apr 2020 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587870086;
 bh=tCSwWc8iRTvfzhr9Bpi0vaaHrDRBHLwWGG3vKGlFHqg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UVpTWp7EJhgRsQXBhfo6AT4VrUdy1nNy8nOq/LfihYfu1NC4LJc05Iz8GAX1ZT5f3
 axlF830cN9T/YdFik2zo+N3qO2F4mins96Mu5bgI3K/fB5ghL5mkLmCLUuWklYIKG9
 HZl62/U2hyOlgj8km6aRA/b/nX2GmC3gaq8w7s7A=
Date: Sat, 25 Apr 2020 20:01:24 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 3/3] mm/hugetlb: Introduce HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
Message-Id: <20200425200124.20d0c75fcaef05d062d3667c@linux-foundation.org>
In-Reply-To: <87d37591-caa2-b82b-392a-3a29b2c7e9a6@arm.com>
References: <1586864670-21799-1-git-send-email-anshuman.khandual@arm.com>
 <1586864670-21799-4-git-send-email-anshuman.khandual@arm.com>
 <20200425175511.7a68efb5e2f4436fe0328c1d@linux-foundation.org>
 <87d37591-caa2-b82b-392a-3a29b2c7e9a6@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_200129_023662_C30B0C05 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Fenghua Yu <fenghua.yu@intel.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tony Luck <tony.luck@intel.com>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 26 Apr 2020 08:13:17 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:

> 
> 
> On 04/26/2020 06:25 AM, Andrew Morton wrote:
> > On Tue, 14 Apr 2020 17:14:30 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> > 
> >> There are multiple similar definitions for arch_clear_hugepage_flags() on
> >> various platforms. This introduces HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS for those
> >> platforms that need to define their own arch_clear_hugepage_flags() while
> >> also providing a generic fallback definition for others to use. This help
> >> reduce code duplication.
> >>
> >> ...
> >>
> >> --- a/include/linux/hugetlb.h
> >> +++ b/include/linux/hugetlb.h
> >> @@ -544,6 +544,10 @@ static inline int is_hugepage_only_range(struct mm_struct *mm,
> >>  }
> >>  #endif
> >>  
> >> +#ifndef HAVE_ARCH_CLEAR_HUGEPAGE_FLAGS
> >> +static inline void arch_clear_hugepage_flags(struct page *page) { }
> >> +#endif
> >> +
> >>  #ifndef arch_make_huge_pte
> >>  static inline pte_t arch_make_huge_pte(pte_t entry, struct vm_area_struct *vma,
> >>  				       struct page *page, int writable)
> > 
> > This is the rather old-school way of doing it.  The Linus-suggested way is
> > 
> > #ifndef arch_clear_hugepage_flags
> > static inline void arch_clear_hugepage_flags(struct page *page)
> > {
> > }
> > #define arch_clear_hugepage_flags arch_clear_hugepage_flags
> 
> Do we need that above line here ? Is not that implicit.

It depends if other header files want to test whether
arch_clear_hugepage_flags is already defined.  If the header heorarchy
is well-defined and working properly, they shouldn't need to, because
we're reliably indluding the relevant arch header before (or early
within) include/linux/hugetlb.h.

It would be nice if

#define arch_clear_hugepage_flags arch_clear_hugepage_flags
#define arch_clear_hugepage_flags arch_clear_hugepage_flags

were to generate an compiler error but it doesn't.  If it did we could
detect these incorrect inclusion orders.

> > #endif
> > 
> > And the various arch headers do
> > 
> > static inline void arch_clear_hugepage_flags(struct page *page)
> > {
> > 	<some implementation>
> > }
> > #define arch_clear_hugepage_flags arch_clear_hugepage_flags
> > 
> > It's a small difference - mainly to avoid adding two variables to the
> > overall namespace where one would do.
> 
> Understood, will change and resend.

That's OK - I've queued up that fix.

