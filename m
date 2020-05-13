Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CE51D065C
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 07:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hd5UK9tJpTtmUZrhPONmMMoochKvyyAg5ulZUyWSvbM=; b=QqbgA5zmmyMyLztfsj+/yZnbQ
	MQJ19BNo3cJPqnuPcTWxQFErAEiAWWfwFFrEkMd3NgMGt66l2UDJZ5PDxQi9QUBWmlqvw21aO4Uz2
	bzwVyjZ7qVJzWJQBkVXvOOswJC+o1P0WqZKB3zri+v6XLCXgI+ODLpqJDcp9fr9Da+x2U1lGtNMdp
	T8NTUtEifvB7SenbQFh7F2lY/yq5ZyuN+BFLBcUPhotFx+Mdf24xd/DAhVGINkW1aNpZEkWSTUrtc
	GEN8TEdjJc1LffAaax5nNqnOwHTC2/1RUPwiadiw2a0oCR0TRibDxC9RGGECG81LYmVz+39rtv2zP
	c38Mq0ZwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYjro-00072d-RK; Wed, 13 May 2020 05:23:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYjrl-000724-1O; Wed, 13 May 2020 05:23:38 +0000
Received: from kernel.org (unknown [87.70.20.152])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8105206F5;
 Wed, 13 May 2020 05:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589347416;
 bh=cxEex4OkOul1zYfcItsUOuWynzE/Lgl9iPMNnRJoKtg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NKwZ606uMnq7vGufmQSQi8UghGfD03KoKi3771z9DBsw1+Wo1JjxsFFWhM7dLfYtQ
 POagNMJcXXS2Tb5YBLano+IOZdgbrMfiYhEi9ZEWLAfmXk4sFuNrYSWiaABLsyC1eI
 WXhJfNJ0uBeiHMn5Sjkqw15bRWEojOP2A2FeEJvw=
Date: Wed, 13 May 2020 08:23:20 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 08/12] mm: pgtable: add shortcuts for accessing kernel
 PMD and PTE
Message-ID: <20200513052320.GO14260@kernel.org>
References: <20200512184422.12418-1-rppt@kernel.org>
 <20200512184422.12418-9-rppt@kernel.org>
 <20200512192441.GZ16070@bombadil.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200512192441.GZ16070@bombadil.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_222337_098217_6B2CDA14 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mips@vger.kernel.org,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 linux-csky@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, Will Deacon <will@kernel.org>,
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, linux-parisc@vger.kernel.org,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-alpha@vger.kernel.org,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Tony Luck <tony.luck@intel.com>, Borislav Petkov <bp@alien8.de>,
 Greentime Hu <green.hu@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Michal Simek <monstr@monstr.eu>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Nick Hu <nickhu@andestech.com>,
 linux-mm@kvack.org, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, openrisc@lists.librecores.org,
 Thomas Gleixner <tglx@linutronix.de>, Richard Weinberger <richard@nod.at>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 12:24:41PM -0700, Matthew Wilcox wrote:
> On Tue, May 12, 2020 at 09:44:18PM +0300, Mike Rapoport wrote:
> > +++ b/include/linux/pgtable.h
> > @@ -28,6 +28,24 @@
> >  #define USER_PGTABLES_CEILING	0UL
> >  #endif
> >  
> > +/* FIXME: */
> 
> Fix you what?  Add documentation?

Ouch, indeed :)

> > +static inline pmd_t *pmd_off(struct mm_struct *mm, unsigned long va)
> > +{
> > +	return pmd_offset(pud_offset(p4d_offset(pgd_offset(mm, va), va), va), va);
> > +}

-- 
Sincerely yours,
Mike.

