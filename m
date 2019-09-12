Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A78B11A5
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Sep 2019 17:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWmuPPPb8rWNjOof28pn3cDFoKJO7j19bK8l6nsLo5g=; b=mtijvUaDpnXdFh
	lr29mRS3F5tmfcYTzIZ7Wf6Bzta/x4XM1ACxtgkd+iO8zeyl2fynXdWzDV9zqfCe/ePIrlcp67Rfn
	58jJmZ2g+dDdDbHlLqjM2QccoCYyamP9fN9NMntpUmGrw8jAN/iAp1PQxhE5w7JTY8jo1XrnRaAzM
	yIufSWcXNCW9qgoMK0zvz6wFktUWCrwtvEitrG/X+Jpgt4rCtXOHG7sJhdaNFk8ZgjZnE9jBf43kq
	DqFdp3KvDIn2sg3puhP1oWJnxphcFFFHUQFvz6TIdy/thKYSE98BkbSwSZJsCK08jA8hOejQ4F6Gb
	0M4jxi3sTBj9sK3cXrvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Qa8-0004Jl-3N; Thu, 12 Sep 2019 15:00:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QZi-0002u3-3X; Thu, 12 Sep 2019 14:59:59 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AF13214DE;
 Thu, 12 Sep 2019 14:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568300397;
 bh=RK47i9JzV2o8zYa+doB7UiayI/FwXMaWv5Ml8LccsgY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Mp8tMCnHBMtri7nKuvpjSoNW3SBhD9Q2PQQus+HoDhqqsO2hfh5+kB+09qrWUHo06
 Xg50YZM1a8zDvFIJJv0CI/EvakHiQne0lhgmu9mtHuf7+l8qkR8L3fuEBxSzlzY4/S
 /qPsvdajQdsWoOvQTd8Ut5MEZxBU2HYNYlaTeYNs=
Received: by mail-wr1-f47.google.com with SMTP id d17so16050749wrq.13;
 Thu, 12 Sep 2019 07:59:56 -0700 (PDT)
X-Gm-Message-State: APjAAAXDCQC4irmItVQjtvprR3UzSkSyDMxX1pgwPKUMSD3updTpj6Fv
 GMuTIChyxK7cYkUrSPz1X5nByET5WcF88LOVAAk=
X-Google-Smtp-Source: APXvYqyWrVR+NI16eudQNtduL1OAxnO0WQ4SkOLjY2AVyz5N6syNQZ1qE/5QhN1PWc17kzrEkpHSXdkh4aFf0C6oOhM=
X-Received: by 2002:a5d:6b49:: with SMTP id x9mr12703438wrw.80.1568300395358; 
 Thu, 12 Sep 2019 07:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
 <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
In-Reply-To: <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
From: Guo Ren <guoren@kernel.org>
Date: Thu, 12 Sep 2019 15:59:43 +0100
X-Gmail-Original-Message-ID: <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
Message-ID: <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_075958_194338_55C5B371 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: julien.thierry@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 christoffer.dall@arm.com, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, gary@garyguo.net,
 linux-riscv@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 aou@eecs.berkeley.edu, Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-arm-kernel@lists.infradead.org, Anup Patel <anup.Patel@wdc.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, james.morse@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Thx Will for reply.

On Thu, Sep 12, 2019 at 3:03 PM Will Deacon <will@kernel.org> wrote:
>
> On Sun, Sep 08, 2019 at 07:52:55AM +0800, Guo Ren wrote:
> > On Mon, Jun 24, 2019 at 6:40 PM Will Deacon <will@kernel.org> wrote:
> > > > I'll keep my system use the same ASID for SMP + IOMMU :P
> > >
> > > You will want a separate allocator for that:
> > >
> > > https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.brucker@arm.com
> >
> > Yes, it is hard to maintain ASID between IOMMU and CPUMMU or different
> > system, because it's difficult to synchronize the IO_ASID when the CPU
> > ASID is rollover.
> > But we could still use hardware broadcast TLB invalidation instruction
> > to uniformly manage the ASID and IO_ASID, or OTHER_ASID in our IOMMU.
>
> That's probably a bad idea, because you'll likely stall execution on the
> CPU until the IOTLB has completed invalidation. In the case of ATS, I think
> an endpoint ATC is permitted to take over a minute to respond. In reality, I
> suspect the worst you'll ever see would be in the msec range, but that's
> still an unacceptable period of time to hold a CPU.
Just as I've said in the session that IOTLB invalidate delay is
another topic, My main proposal is to introduce stage1.pgd and
stage2.pgd as address space identifiers between different TLB systems
based on vmid, asid. My last part of sildes will show you how to
translate stage1/2.pgd to as/vmid in PCI ATS system and the method
could work with SMMU-v3 and intel Vt-d. (It's regret for me there is
no time to show you the whole slides.)

In our light IOMMU implementation, there's no IOTLB invalidate delay
problem. Becasue IOMMU is very close to CPU MMU and interconnect's
delay is the same with SMP CPUs MMU (no PCI, VM supported).

To solve the problem, we could define a async mode in sfence.vma.b to
slove the problem and finished with per_cpu_irq/exception.

-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
