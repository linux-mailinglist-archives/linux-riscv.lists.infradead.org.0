Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B081CD6FF
	for <lists+linux-riscv@lfdr.de>; Mon, 11 May 2020 13:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c3HrU8T1M8DnyRyLa4V9UXUgSeC2OL6yP+RL8pl8kQM=; b=H5xrSXRVuki+0QmUPf8oGhqfB
	13xtyTx/s4qcW4FSmoNmwo8IOQW4KiddYQe/1c32UmomyUVd/Qs2iBdMcLM8q2Ay0i9qmyaArj9IC
	ELk/azFVfG2+4HuEsn031H16yeodoXqR9oaET6cBg8QydBIvoy5IfmEHWk1Cplcfs1bU2ZEJ/ybWd
	71V0VJJLRlz4aqJUc47S8DAx2n5r7HO+6ZL+kB6KnK/iuE54C6HI8955hFVqEQY6lDDJEonozsg3j
	tIz/th8fCWL18ZgAldECataXa+iYgK31oB0fwpDU9UxpKd5shQX2bczcdExuYOYannZvFIwddRKSP
	Nxv5rClTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Ar-00065s-Sm; Mon, 11 May 2020 11:00:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Ah-0005xH-PW; Mon, 11 May 2020 11:00:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4AD751FB;
 Mon, 11 May 2020 04:00:24 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DFC143F305;
 Mon, 11 May 2020 04:00:20 -0700 (PDT)
Date: Mon, 11 May 2020 12:00:14 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 02/31] arm64: fix the flush_icache_range arguments in
 machine_kexec
Message-ID: <20200511110014.GA19176@gaia>
References: <20200510075510.987823-1-hch@lst.de>
 <20200510075510.987823-3-hch@lst.de>
 <20200511075115.GA16134@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200511075115.GA16134@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040031_872502_094B790F 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Roman Zippel <zippel@linux-m68k.org>, linux-mips@vger.kernel.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 linux-arch@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, Jessica Yu <jeyu@kernel.org>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, linux-arm-kernel@lists.infradead.org,
 Michal Simek <monstr@monstr.eu>, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 08:51:15AM +0100, Will Deacon wrote:
> On Sun, May 10, 2020 at 09:54:41AM +0200, Christoph Hellwig wrote:
> > The second argument is the end "pointer", not the length.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/arm64/kernel/machine_kexec.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> > index 8e9c924423b4e..a0b144cfaea71 100644
> > --- a/arch/arm64/kernel/machine_kexec.c
> > +++ b/arch/arm64/kernel/machine_kexec.c
> > @@ -177,6 +177,7 @@ void machine_kexec(struct kimage *kimage)
> >  	 * the offline CPUs. Therefore, we must use the __* variant here.
> >  	 */
> >  	__flush_icache_range((uintptr_t)reboot_code_buffer,
> > +			     (uintptr_t)reboot_code_buffer +
> >  			     arm64_relocate_new_kernel_size);
> 
> Urgh, well spotted. It's annoyingly different from __flush_dcache_area().
> 
> But now I'm wondering what this code actually does... the loop condition
> in invalidate_icache_by_line works with 64-bit arithmetic, so we could
> spend a /very/ long time here afaict.

I think it goes through the loop only once. The 'b.lo' saves us here.
OTOH, there is no I-cache maintenance done.

> It's also a bit annoying that we do a bunch of redundant D-cache
> maintenance too. Should we use invalidate_icache_range() here instead?

Since we have the __flush_dcache_area() above it for cleaning to PoC, we
could use invalidate_icache_range() here. We probably didn't have this
function at the time, it was added for KVM (commit 4fee94736603cd6).

> (and why does that thing need to toggle uaccess)?

invalidate_icache_range() doesn't need to, it works on the kernel linear
map.

__flush_icache_range() doesn't need to either, that's a side-effect of
the fall-through implementation.

Anyway, I think Christoph's patch needs to go in with a fixes tag:

Fixes: d28f6df1305a ("arm64/kexec: Add core kexec support")
Cc: <stable@vger.kernel.org> # 4.8.x-

and we'll change these functions/helpers going forward for arm64.

Happy to pick this up via the arm64 for-next/fixes branch.

-- 
Catalin

