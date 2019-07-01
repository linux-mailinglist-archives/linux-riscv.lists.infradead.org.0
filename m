Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDD25B7EA
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jul 2019 11:20:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLXS53tl6EH1ksKlvZsF2BDZMdQs2Ms3+tsBnRb0NWw=; b=OVlc+EyDSeWhpn
	3WC4eVKgQqyQYR08Ll111RLqtVT21ZMRoRY+YVvvCzJ+tLYUta5qqPaTAeQr61hfnLvjXP7ydZDY4
	2XFNCQ7x8DPeuDGncUA02pRP+9uz3e7jI71UV7PqAsLlkzJbYk36ZTIK3rDRYk+fSWxyJRWqplN85
	k4o3HvEGtxKkDZ6Uv07vES+DWddWUUSXc1PrUOARc+3CwRNxzGnHsHsgCpsf4r4BTfoJ9QcyiegJ4
	RQuj/4WJuSncRXNsutSTFfkYdwX7rSJMuzCI2LYckSQYVJUJ33dZxxdnyddhGsnCWs2V3Yckl6mV1
	2cp6L1vrVUejlHyLcruQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsTW-00013C-0p; Mon, 01 Jul 2019 09:19:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsR5-0007VD-Cc; Mon, 01 Jul 2019 09:17:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D1A8BCFC;
 Mon,  1 Jul 2019 02:17:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 62CC23F718; Mon,  1 Jul 2019 02:17:14 -0700 (PDT)
Date: Mon, 1 Jul 2019 10:17:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190701091711.GA21774@arrakis.emea.arm.com>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
 <20190621141606.GF18954@arrakis.emea.arm.com>
 <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
 <20190624153820.GH29120@arrakis.emea.arm.com>
 <CAJF2gTRUzHUNV+nzECUp5n2L1akdy=Aovb6tSd+PNVnpasBrqw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTRUzHUNV+nzECUp5n2L1akdy=Aovb6tSd+PNVnpasBrqw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021719_604931_A002A64C 
X-CRM114-Status: GOOD (  20.74  )
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
 Anup Patel <anup.Patel@wdc.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish Patra <Atish.Patra@wdc.com>, Julien Grall <julien.grall@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, gary@garyguo.net, paul.walmsley@sifive.com,
 christoffer.dall@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Jun 30, 2019 at 12:29:46PM +0800, Guo Ren wrote:
> On Mon, Jun 24, 2019 at 11:38 PM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> > On Mon, Jun 24, 2019 at 12:35:35AM +0800, Guo Ren wrote:
> > > On Fri, Jun 21, 2019 at 10:16 PM Catalin Marinas
> > > <catalin.marinas@arm.com> wrote:
> > > > BTW, if you find the algorithm fairly straightforward ;), see this
> > > > bug-fix which took a formal model to identify: a8ffaaa060b8 ("arm64:
> > > > asid: Do not replace active_asids if already 0").
> > [...]
> > > Btw, Is this detected by arm's aisd allocator TLA+ model ? Or a real
> > > bug report ?
> >
> > This specific bug was found by the TLA+ model checker (at the time we
> > were actually tracking down another bug with multi-threaded CPU sharing
> > the TLB, bug also confirmed by the formal model).
> 
> Could you tell me the ref-link about "another bug with multi-threaded
> CPU sharing the TLB" ?
> 
> In my concept, the multi-core asid mechanism is also applicable to
> multi-thread shared TLB, but it will generate redundant tlbflush. From
> the software design logic, multi-threaded is treated as multi-cores
> without error, but performance is not optimized.

From the ASID reservation/allocation perspective, the mechanism is the
same between multi-threaded with a shared TLB and multi-core. On arm64,
a local_flush_tlb_all() on a thread invalidates the TLB for the other
threads of the same core.

The actual problem with multi-threaded CPUs is a lot more subtle.
Digging some internal email from 1.5 years ago and pasting it below
(where "current ASID algorithm" refers to the one prior to the fix and
CnP - Common Not Private - means shared TLBs on a multi-threaded CPU):


The current ASID roll-over algorithm allows for a small window where
active_asids for a CPU (P1) is different from the actual ASID in TTBR0.
This can lead to a roll-over on a different CPU (P2) allocating an ASID
(for a different task) which is still hardware-active on P1.

A TLBI on a CPU (or a peer CPU with CnP) does not guarantee that all the
entries corresponding to a valid TTBRx are removed as they can still be
speculatively loaded immediately after TLBI.

While having two different page tables with the same ASID on different
CPUs should be fine without CnP, it becomes problematic when CnP is
enabled:

P1                                      P2
--                                      --
TTBR0.BADDR = T1
TTBR0.ASID = A1
check_and_switch_context(T2,A2)
  asid_maps[P1] = A2
  goto fastpath
                                        check_and_switch_context(T3,A0)
                                          new_context
                                            ASID roll-over allocates A1
                                              since it is not active
                                          TLBI ALL
speculate TTBR0.ASID = A1 entry
                                          TTBR0.BADDR = T3
                                          TTBR0.ASID = A1
  TTBR0.BADDR = T2
  TTBR0.ASID = A2

After this, the common TLB on P1 and P2 (CnP) contains entries
corresponding to the old T1 and A1. Task T3 using the same ASID A1 can
hit such entries. (T1,A1) will eventually be removed from the TLB on the
next context switch on P1 since tlb_flush_pending was set but this is
not guaranteed to happen.


The fix on arm64 (as part of 5ffdfaedfa0a - "arm64: mm: Support Common
Not Private translations") was to set the reserved TTBR0 in
check_and_switch_context(), preventing speculative loads into the TLB
being tagged with the wrong ASID. So this is specific to the ARM CPUs
behaviour w.r.t. speculative TLB loads, it may not be the case (yet) for
your architecture.

-- 
Catalin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
