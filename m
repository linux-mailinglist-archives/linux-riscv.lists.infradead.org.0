Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112194EA61
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 16:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkyM8bguaOSvJH+Sl1uvuloAShzx8UkFKFAiyEUXOPQ=; b=pR6y1tJsN1ldkf
	NaHuIQuF48OhDzt7DzM1FXXbbzvAVACIncsEj5e4tviXGHeaZHZzLtcr28sDmsIY7Sf5lepzk2VkF
	OoQR9YDE6wFO5yjn1qNEoE36kd9THYpSdHeVcx36Z7E4xVW7gjNJW5+cO7oHwcTtKVeqedDKzD7am
	2rTpNup8JfTEkAh1h7IKfr4b1SgxpYCubsxChP8z94tZ5jU/LOK5mcRn1J02FyiY6zcnaUYvk1vEy
	+UnFFc8/pa5hL8889BztWSn0j84sGqwBYsXXTttOmHKqTuMKtjZpCZ1oitd9QOpQ3kL2pVgf+jR6z
	Zux3yhskKVNaaqCdJhqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heKLN-0002Ns-Hq; Fri, 21 Jun 2019 14:16:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heKKv-000263-8l; Fri, 21 Jun 2019 14:16:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55BFB28;
 Fri, 21 Jun 2019 07:16:12 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D8FA43F575; Fri, 21 Jun 2019 07:16:09 -0700 (PDT)
Date: Fri, 21 Jun 2019 15:16:07 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190621141606.GF18954@arrakis.emea.arm.com>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_071617_404678_C81A2ED2 
X-CRM114-Status: GOOD (  17.86  )
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
Cc: julien.thierry@arm.com, aou@eecs.berkeley.edu, james.morse@arm.com,
 suzuki.poulose@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 Anup Patel <anup.Patel@wdc.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish.Patra@wdc.com, Julien Grall <julien.grall@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, gary@garyguo.net, paul.walmsley@sifive.com,
 christoffer.dall@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 07:51:03PM +0800, Guo Ren wrote:
> On Wed, Jun 19, 2019 at 4:54 PM Julien Grall <julien.grall@arm.com> wrote:
> > On 6/19/19 9:07 AM, Guo Ren wrote:
> > > Move arm asid allocator code in a generic one is a agood idea, I've
> > > made a patchset for C-SKY and test is on processing, See:
> > > https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> > >
> > > If you plan to seperate it into generic one, I could co-work with you.
> >
> > Was the ASID allocator work out of box on C-Sky?
> 
> Almost done, but one question:
> arm64 remove the code in switch_mm:
>   cpumask_clear_cpu(cpu, mm_cpumask(prev));
>   cpumask_set_cpu(cpu, mm_cpumask(next));
> 
> Why? Although arm64 cache operations could affect all harts with CTC
> method of interconnect, I think we should keep these code for
> primitive integrity in linux. Because cpu_bitmap is in mm_struct
> instead of mm->context.

We didn't have a use for this in the arm64 code, so no point in
maintaining the mm_cpumask. On some arm32 systems (ARMv6) with no
hardware broadcast of some TLB/cache operations, we use it to track
where the task has run to issue IPI for TLB invalidation or some
deferred I-cache invalidation.

(there was also a potential optimisation on arm64 to avoid broadcast
TLBI if the task only ran on a single CPU but Will found that was rarely
the case on an SMP system because of rebalancing happening during
execve(), ending up with two bits set in the mm_cpumask)

The way you use it on csky is different from how it is done on arm. It
seems to clear the mask for the scheduled out (prev) task but this
wouldn't work on arm(64) since the TLB still contains prev entries
tagged with the scheduled out ASID. Whether it matters, I guess it
depends on the specifics of your hardware.

While the algorithm may seem fairly generic, the semantics have a few
corner cases specific to each architecture. See [1] for a description of
the semantics we need on arm64 (CnP is a feature where the hardware
threads of the same core can share the TLB; the original algorithm
violated the requirements when this feature was enabled).

BTW, if you find the algorithm fairly straightforward ;), see this
bug-fix which took a formal model to identify: a8ffaaa060b8 ("arm64:
asid: Do not replace active_asids if already 0").

[1] https://git.kernel.org/pub/scm/linux/kernel/git/cmarinas/kernel-tla.git/tree/asidalloc.tla#n79

-- 
Catalin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
