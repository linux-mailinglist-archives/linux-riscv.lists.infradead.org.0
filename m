Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EAD58044
	for <lists+linux-riscv@lfdr.de>; Thu, 27 Jun 2019 12:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEH7tC1+ZZzjIwF9HraeD4Yjk4o9Rbss5eUL/1jL6N0=; b=jI9gIgAtY4OMqd
	tMVVw04Xe8Vqb+2Y6zDcTxUThWEX9ru3nSEtjsNInDGnCJPj5vj+/uhTko/Rr7Dh+lxRhnAIdXU0b
	7yO0rACiFrb9bLw9t3a9Tdnj4wjizt7fimx1CUQpM++zAFf9EBHOqCTquQ0i04Jj9KkUwiriuSGou
	biV8oD63ZNY6mZcIihhczcgNIHt6HepdlSosD6Drf7aBVyceyLwGVGeHsxJeLCxZN62P0O3kfv7Rw
	rcyro5U4h8OaCpg0kh7XwLkEMsCmBe9Sx6sFvMTaSJdf15hbPVyeulst6+gf3fqZOBs0T5sxA/cRH
	8EWSzY7YT8o2gTAtSFDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRd2-00042O-RR; Thu, 27 Jun 2019 10:27:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRcN-0003kb-Rl; Thu, 27 Jun 2019 10:27:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F00C420828;
 Thu, 27 Jun 2019 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561631223;
 bh=+aboWwW7RRRk1C/RYk5UOWQp4PDh2UA+to5qKLSsG5A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ufNNsQ7PR/cG5oM3QhBjje8hgBKvThE0uaI9H9xM3+okTUjOvbrBIYQPnqnHbRbNy
 0t+KK8xaWhxO0Sb25thuG7jRqSWjh7gyuw+7eiQuFz4Jnys7TskYd/ZdNopyXT4nnP
 fsmY0hf/CSX8CAYEu4OwsGjutyiF0uZfK+cHA1lY=
Date: Thu, 27 Jun 2019 11:26:57 +0100
From: Will Deacon <will@kernel.org>
To: "qi.fuli@fujitsu.com" <qi.fuli@fujitsu.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190627102656.elizqwby4sw4vi5j@willie-the-truck>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
 <20190621141606.GF18954@arrakis.emea.arm.com>
 <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
 <20190624102209.ngwtosgr5fvp3ler@willie-the-truck>
 <c5be6baa-91aa-c178-6698-c83d4d82a217@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5be6baa-91aa-c178-6698-c83d4d82a217@jp.fujitsu.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_032703_995987_78997B50 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 "julien.thierry@arm.com" <julien.thierry@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, Anup Patel <anup.Patel@wdc.com>,
 Guo Ren <guoren@kernel.org>, "gary@garyguo.net" <gary@garyguo.net>,
 Palmer Dabbelt <palmer@sifive.com>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 09:41:42AM +0000, qi.fuli@fujitsu.com wrote:
> 
> On 6/24/19 7:22 PM, Will Deacon wrote:
> > On Mon, Jun 24, 2019 at 12:35:35AM +0800, Guo Ren wrote:
> >> On Fri, Jun 21, 2019 at 10:16 PM Catalin Marinas
> >> <catalin.marinas@arm.com> wrote:
> >>> On Wed, Jun 19, 2019 at 07:51:03PM +0800, Guo Ren wrote:
> >>>> On Wed, Jun 19, 2019 at 4:54 PM Julien Grall <julien.grall@arm.com> wrote:
> >>>>> On 6/19/19 9:07 AM, Guo Ren wrote:
> >>>>>> Move arm asid allocator code in a generic one is a agood idea, I've
> >>>>>> made a patchset for C-SKY and test is on processing, See:
> >>>>>> https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> >>>>>>
> >>>>>> If you plan to seperate it into generic one, I could co-work with you.
> >>>>> Was the ASID allocator work out of box on C-Sky?
> >>>> Almost done, but one question:
> >>>> arm64 remove the code in switch_mm:
> >>>>    cpumask_clear_cpu(cpu, mm_cpumask(prev));
> >>>>    cpumask_set_cpu(cpu, mm_cpumask(next));
> >>>>
> >>>> Why? Although arm64 cache operations could affect all harts with CTC
> >>>> method of interconnect, I think we should keep these code for
> >>>> primitive integrity in linux. Because cpu_bitmap is in mm_struct
> >>>> instead of mm->context.
> >>> We didn't have a use for this in the arm64 code, so no point in
> >>> maintaining the mm_cpumask. On some arm32 systems (ARMv6) with no
> >>> hardware broadcast of some TLB/cache operations, we use it to track
> >>> where the task has run to issue IPI for TLB invalidation or some
> >>> deferred I-cache invalidation.
> >> The operation of set/clear mm_cpumask was removed in arm64 compared to
> >> arm32. It seems no side effect on current arm64 system, but from
> >> software meaning it's wrong.
> >> I think we should keep mm_cpumask just like arm32.
> > It was a while ago now, but I remember the atomic update of the mm_cpumask
> > being quite expensive when I was profiling this stuff, so I removed it
> > because we don't need it for arm64 (at least, it doesn't allow us to
> > optimise our shootdowns in practice).
> 
> I think mm_cpumask can be used for filtering the cpus that there are TBL 
> entries on.

I'm aware that you want to use IPIs for broadcasting TLB invalidation
but that is only tangentially related to this thread, which is about the
current ASID algorithm and the need to update mm_cpumask today.

Please don't conflate the two threads; I already made my position reasonably
clear:

https://lore.kernel.org/linux-arm-kernel/20190617170328.GJ30800@fuggles.cambridge.arm.com/

I will follow-up with another reply there.

Will

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
