Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1084FCB3
	for <lists+linux-riscv@lfdr.de>; Sun, 23 Jun 2019 18:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bRhP1dq6c0qY7l6uJ6AEVftYKKUv00JiZTUqznz07Q=; b=tMJIZ6jZnDesXB
	aU95nXDlzMwkYgHEpPZ3F1/DRGWHrgyWqXiZ3MQ3NcMMM30zv2YORmklirmQIFpAdEpXQx3txGa2A
	J5XqvWsZDtz5zJdvmndSuA582OdAc26+VYZSBXr5Bi5h/RjZK1uFjyL3qWbnAArtTkxaJ8jY+qnie
	pS40DCPEUY2/GFxYaKow8Xw2gkxDG+3M5jhxOlgW93e+dZ3dHLqquKBOe5sEExXd+C+1rsmGqweuV
	R/vXTs372nWOfHzC+Gm6mMhX6B0478TVnVy6Xhr5BoUtJYjeCnJhWVjuJrUhVdA5VhEzSg9QfTu4C
	wzaGwCSK3v86tJyWK0Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5Td-0007yk-Gg; Sun, 23 Jun 2019 16:36:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5T4-0006qF-BZ; Sun, 23 Jun 2019 16:35:51 +0000
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3D1B206BA;
 Sun, 23 Jun 2019 16:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561307748;
 bh=f4wzwRqVtnbeGMbGLTUq9DbopFJOpD4awTGdr8HMu0c=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FvLpsGf+BdJj6v3kZ/Rdc9A5wgVQ7uAClrDn+60p2iYf0uXBs5fkA6nuATTUz7iIL
 BuigSQMfDdK77Wag9pj7y7H2OcKDhynDnz11DXuUfbQajtjuDWauL+fzwqZSVuVpZp
 96TU36uUbvTsuQCXV/iae25nGQIaG0Q4YvBL4SDw=
Received: by mail-wm1-f42.google.com with SMTP id g135so10518145wme.4;
 Sun, 23 Jun 2019 09:35:48 -0700 (PDT)
X-Gm-Message-State: APjAAAVkPWoW1N8BWYKzXFQ44r3hZEPjnWJA+psX65ZZkOPmW53n7kJJ
 y9qbJIx9yqllX6PSql/J2JNvKUW+dXXdM6r+t/A=
X-Google-Smtp-Source: APXvYqytV0iot533SQYILeur1ABvpdvSmQ61FQnlhf7mWoX4c7AKw6SIGZCm/OWATKrhGhf7ydEFv29PmbNlV0vRGhM=
X-Received: by 2002:a7b:cd84:: with SMTP id y4mr12259887wmj.79.1561307747231; 
 Sun, 23 Jun 2019 09:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
 <20190621141606.GF18954@arrakis.emea.arm.com>
In-Reply-To: <20190621141606.GF18954@arrakis.emea.arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 24 Jun 2019 00:35:35 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
Message-ID: <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_093550_431445_976A327A 
X-CRM114-Status: GOOD (  24.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Thx Catalin,

On Fri, Jun 21, 2019 at 10:16 PM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> On Wed, Jun 19, 2019 at 07:51:03PM +0800, Guo Ren wrote:
> > On Wed, Jun 19, 2019 at 4:54 PM Julien Grall <julien.grall@arm.com> wrote:
> > > On 6/19/19 9:07 AM, Guo Ren wrote:
> > > > Move arm asid allocator code in a generic one is a agood idea, I've
> > > > made a patchset for C-SKY and test is on processing, See:
> > > > https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> > > >
> > > > If you plan to seperate it into generic one, I could co-work with you.
> > >
> > > Was the ASID allocator work out of box on C-Sky?
> >
> > Almost done, but one question:
> > arm64 remove the code in switch_mm:
> >   cpumask_clear_cpu(cpu, mm_cpumask(prev));
> >   cpumask_set_cpu(cpu, mm_cpumask(next));
> >
> > Why? Although arm64 cache operations could affect all harts with CTC
> > method of interconnect, I think we should keep these code for
> > primitive integrity in linux. Because cpu_bitmap is in mm_struct
> > instead of mm->context.
>
> We didn't have a use for this in the arm64 code, so no point in
> maintaining the mm_cpumask. On some arm32 systems (ARMv6) with no
> hardware broadcast of some TLB/cache operations, we use it to track
> where the task has run to issue IPI for TLB invalidation or some
> deferred I-cache invalidation.
The operation of set/clear mm_cpumask was removed in arm64 compared to
arm32. It seems no side effect on current arm64 system, but from
software meaning it's wrong.
I think we should keep mm_cpumask just like arm32.

>
> (there was also a potential optimisation on arm64 to avoid broadcast
> TLBI if the task only ran on a single CPU but Will found that was rarely
> the case on an SMP system because of rebalancing happening during
> execve(), ending up with two bits set in the mm_cpumask)
>
> The way you use it on csky is different from how it is done on arm. It
> seems to clear the mask for the scheduled out (prev) task but this
> wouldn't work on arm(64) since the TLB still contains prev entries
> tagged with the scheduled out ASID. Whether it matters, I guess it
> depends on the specifics of your hardware.
Sorry for the mistake quote, what I mean is what is done in arm32:
clear all bits of mm->cpu_mask in new_context(), and set back one by
one. Here is my patch:
https://lore.kernel.org/linux-csky/CAJF2gTQ0xQtQY1t-g9FgWaxfDXppMkFooCQzTFy7+ouwUfyA6w@mail.gmail.com/T/#m2ed464d2dfb45ac6f5547fb3936adf2da456cb65

>
> While the algorithm may seem fairly generic, the semantics have a few
> corner cases specific to each architecture. See [1] for a description of
> the semantics we need on arm64 (CnP is a feature where the hardware
> threads of the same core can share the TLB; the original algorithm
> violated the requirements when this feature was enabled).
C-SKY SMP is only one hart per core, but here is a patch [1] with my
thought on SMT duplicate tlb flush:
[1] https://lore.kernel.org/linux-csky/1561305869-18872-1-git-send-email-guoren@kernel.org/T/#u

For TLA+ model, I still need some learning before I could talk with you.

>
> BTW, if you find the algorithm fairly straightforward ;), see this
> bug-fix which took a formal model to identify: a8ffaaa060b8 ("arm64:
> asid: Do not replace active_asids if already 0").
I think it's one fo the cases that other archs also could get benefit
from arm's asid allocator code.
Btw, Is this detected by arm's aisd allocator TLA+ model ? Or a real
bug report ?

--
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
