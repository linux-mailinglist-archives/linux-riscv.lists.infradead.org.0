Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FCD50914
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 12:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P9/lSpL5YrplHYiUO9ybeyjNloHJazWgBRG5XU+OCHU=; b=YsplF5XHNVLW7z
	gUv+qmdn0f/qUmfDEVoMXCkMFtdz+bx9WJCV9RWyPl9QGgk8HlAtXqgXl+osKsRHD+Ji/E3Q5Piuv
	GcEMi6p/Xt/z9b8YvG4EOflyQBYLVT4U3B6p1MWeaZRB71C6gb3UkdUvKldXxlg5uy559WWlOWAB0
	LjfNGI8pfaaBNe0ikQV0fIr/9ImcqzAEmxtyn4TowbnFw+Wu7Vosx0JNJWuUnM8Kwa3bzXqi1vXSe
	w37tEMoqxKjjtmIcCqomL9nUmnxtzHua5JTA3KJSsWlrZFi2eKLHVPwjqkFHK23xfXXN/AcnChQN/
	NGsFmzq+0mOD4Rm6h07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMOv-0003gu-9J; Mon, 24 Jun 2019 10:40:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMOU-0003U7-DO; Mon, 24 Jun 2019 10:40:16 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95F05208E4;
 Mon, 24 Jun 2019 10:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561372814;
 bh=HxUEH3z4leC4dJ5SSdD+Hrod9xxZtdkXEJIvmvfkDls=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p4PZ9wV2TnMIZpxRJidZl+RtPVe+FUZBi7moRglIiodLBtKwmf1oEV4xqb5V+mh/L
 Ugv88bzt/3W9tu/LDyR9Ve1JBjk3ghhMOMhvuEYNmO1szy9MNLn7zjJIf9MKdbIT/h
 Y4mOVdujWbYLgUJb5+1Frs1BuqhFX3eWJC3Rsdvc=
Date: Mon, 24 Jun 2019 11:40:07 +0100
From: Will Deacon <will@kernel.org>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190624104006.lvm32nahemaqklxc@willie-the-truck>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_034014_496526_599133E8 
X-CRM114-Status: GOOD (  28.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Grall <julien.grall@arm.com>, aou@eecs.berkeley.edu,
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 julien.thierry@arm.com, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish.Patra@wdc.com, Anup Patel <anup.Patel@wdc.com>, james.morse@arm.com,
 gary@garyguo.net, Palmer Dabbelt <palmer@sifive.com>, christoffer.dall@arm.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 05:33:03PM +0800, Guo Ren wrote:
> On Wed, Jun 19, 2019 at 8:39 PM Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Wed, Jun 19, 2019 at 08:18:04PM +0800, Guo Ren wrote:
> > > On Wed, Jun 19, 2019 at 5:12 PM Will Deacon <will.deacon@arm.com> wrote:
> > > > This is one place where I'd actually prefer not to go down the route of
> > > > making the code generic. Context-switching and low-level TLB management
> > > > is deeply architecture-specific and I worry that by trying to make this
> > > > code common, we run the real risk of introducing subtle bugs on some
> > > > architecture every time it is changed.
> > > "Add generic asid code" and "move arm's into generic" are two things.
> > > We could do
> > > first and let architecture's maintainer to choose.
> >
> > If I understand the proposal being discussed, it involves basing that
> > generic ASID allocation code around the arm64 implementation which I don't
> > necessarily think is a good starting point.
> ...
> >
> > > > Furthermore, the algorithm we use
> > > > on arm64 is designed to scale to large systems using DVM and may well be
> > > > too complex and/or sub-optimal for architectures with different system
> > > > topologies or TLB invalidation mechanisms.
> > > It's just a asid algorithm not very complex and there is a callback
> > > for architecture to define their
> > > own local hart tlb flush. Seems it has nothing with DVM or tlb
> > > broadcast mechanism.
> >
> > I'm pleased that you think the algorithm is not very complex, but I'm also
> > worried that you might not have fully understood some of its finer details.
> I understand your concern about my less understanding of asid
> technology. Here is
> my short-description of arm64 asid allocator: (If you find anything
> wrong, please
> correct me directly, thx :)

The complexity mainly comes from the fact that this thing runs concurrently
with itself without synchronization on the fast-path. Coupled with the
need to use the same ASID for all threads of a task, you end up in fiddly
situations where rollover can occur on one CPU whilst another CPU is trying
to schedule a thread of a task that already has threads running in
userspace.

However, it's architecture-specific whether or not you care about that
scenario.

> > The reason I mention DVM and TLB broadcasting is because, depending on
> > the mechanisms in your architecture relating to those, it may be strictly
> > required that all concurrently running threads of a process have the same
> > ASID at any given point in time, or it may be that you really don't care.
> >
> > If you don't care, then the arm64 allocator is over-engineered and likely
> > inefficient for your system. If you do care, then it's worth considering
> > whether a lock is sufficient around the allocator if you don't expect high
> > core counts. Another possibility is that you end up using only one ASID and
> > invalidating the local TLB on every context switch. Yet another design
> > would be to manage per-cpu ASID pools.
> I'll keep my system use the same ASID for SMP + IOMMU :P

You will want a separate allocator for that:

https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.brucker@arm.com

> Yes, there are two styles of asid allocator: per-cpu ASID (MIPS) or
> same ASID (ARM).
> If the CPU couldn't support cache/tlb coherency maintian in hardware,
> it should use
> per-cpu ASID style because IPI is expensive and per-cpu ASID style
> need more software
> mechanism to improve performance (eg: delay cache flush). From software view the
> same ASID is clearer and easier to build bigger system with more TLB caches.
> 
> I think the same ASID style is a more sensible choice for modern
> processor and let it be
> one of generic is reasonable.

I'm not sure I agree. x86, for example, is better off using a different
algorithm for allocating its PCIDs.

> > So rather than blindly copying the arm64 code, I suggest sitting down and
> > designing something that fits to your architecture instead. You may end up
> > with something that is both simpler and more efficient.
> In fact, riscv folks have discussed a lot about arm's asid allocator
> and I learned
> a lot from the discussion:
> https://lore.kernel.org/linux-riscv/20190327100201.32220-1-anup.patel@wdc.com/

If you require all threads of the same process to have the same ASID, then
that patch looks broken to me.

Will

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
