Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6C1B4030
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 20:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/H5w2U2TPguNo7/FEDyk9fyiXXsikyBHWOSTD6HzH6g=; b=ZsZcnFVzcophIX
	Ruat84KVE+4/cBukf/xsiZoMEEqFj4GuUah1l+ter3nYgj4gv/EI5sWhnkKzM4GB3S8EoMZ3JZOGE
	Du4p5PtVyZiCciyzdVSymvg8fXDiUyNU61hErCfluvhBJLqtaDbbzXPOuNHmGxjVEfHmMqDAfACjL
	3NFRbKAyVIePjyMezO7BBNS4XPDLW4iGmQ7GmOp0nkztEw/7+hfbsdMTfcqsP6QmyTqiRq3ecpL0l
	wdjjldUHC1FOfvKaEtnP5Ec+eyZhyHKymgx8G3rj7AeARiXgWVxwbt2wZQ3726WZdeXm6FLZuJaQC
	YLnWOGvL0PN4zw1EegSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9va9-0005rV-JA; Mon, 16 Sep 2019 18:18:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9vZg-0005ex-0i; Mon, 16 Sep 2019 18:18:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A49CE206A4;
 Mon, 16 Sep 2019 18:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568657887;
 bh=cvqXyAoP8LXl4eQWtl4xAFxdBZY+YNwOUsM8E8y5L+I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hCmKcOBdZQjDrk/s24oKublKlHuvENgTEev4fbOttzaSiyY1s8W7HQFd0rotrvv87
 S4zvcdSpSDg9o+9giWpiCF24fHzYKjBU7vVaY0TzRg42R6e8zdKauzviGVD913jFxO
 FrwmDsU3hjX6DSKArgN63xEx+rHvAH21xb3FOAng=
Date: Mon, 16 Sep 2019 19:18:00 +0100
From: Will Deacon <will@kernel.org>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190916181800.7lfpt3t627byoomt@willie-the-truck>
References: <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <mhng-166dcd4f-9483-4aab-a83a-914d70ddb5a4@palmer-si-x1e>
 <MN2PR04MB606117F2AC47385EF23D267D8D8D0@MN2PR04MB6061.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR04MB606117F2AC47385EF23D267D8D8D0@MN2PR04MB6061.namprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_111808_105555_77FAC812 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "julien.thierry@arm.com" <julien.thierry@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 Atish Patra <Atish.Patra@wdc.com>,
 "julien.grall@arm.com" <julien.grall@arm.com>,
 "guoren@kernel.org" <guoren@kernel.org>, "gary@garyguo.net" <gary@garyguo.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Christoph Hellwig <hch@infradead.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "james.morse@arm.com" <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Sep 15, 2019 at 05:03:38AM +0000, Anup Patel wrote:
> 
> 
> > -----Original Message-----
> > From: linux-kernel-owner@vger.kernel.org <linux-kernel-
> > owner@vger.kernel.org> On Behalf Of Palmer Dabbelt
> > Sent: Saturday, September 14, 2019 7:31 PM
> > To: will@kernel.org
> > Cc: guoren@kernel.org; Will Deacon <will.deacon@arm.com>;
> > julien.thierry@arm.com; aou@eecs.berkeley.edu; james.morse@arm.com;
> > Arnd Bergmann <arnd@arndb.de>; suzuki.poulose@arm.com;
> > marc.zyngier@arm.com; catalin.marinas@arm.com; Anup Patel
> > <Anup.Patel@wdc.com>; linux-kernel@vger.kernel.org;
> > rppt@linux.ibm.com; Christoph Hellwig <hch@infradead.org>; Atish Patra
> > <Atish.Patra@wdc.com>; julien.grall@arm.com; gary@garyguo.net; Paul
> > Walmsley <paul.walmsley@sifive.com>; christoffer.dall@arm.com; linux-
> > riscv@lists.infradead.org; kvmarm@lists.cs.columbia.edu; linux-arm-
> > kernel@lists.infradead.org; iommu@lists.linux-foundation.org
> > Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
> > separate file
> > 
> > On Thu, 12 Sep 2019 07:02:56 PDT (-0700), will@kernel.org wrote:
> > > On Sun, Sep 08, 2019 at 07:52:55AM +0800, Guo Ren wrote:
> > >> On Mon, Jun 24, 2019 at 6:40 PM Will Deacon <will@kernel.org> wrote:
> > >> > > I'll keep my system use the same ASID for SMP + IOMMU :P
> > >> >
> > >> > You will want a separate allocator for that:
> > >> >
> > >> > https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.bruck
> > >> > er@arm.com
> > >>
> > >> Yes, it is hard to maintain ASID between IOMMU and CPUMMU or
> > >> different system, because it's difficult to synchronize the IO_ASID
> > >> when the CPU ASID is rollover.
> > >> But we could still use hardware broadcast TLB invalidation
> > >> instruction to uniformly manage the ASID and IO_ASID, or OTHER_ASID in
> > our IOMMU.
> > >
> > > That's probably a bad idea, because you'll likely stall execution on
> > > the CPU until the IOTLB has completed invalidation. In the case of
> > > ATS, I think an endpoint ATC is permitted to take over a minute to
> > > respond. In reality, I suspect the worst you'll ever see would be in
> > > the msec range, but that's still an unacceptable period of time to hold a
> > CPU.
> > >
> > >> Welcome to join our disscusion:
> > >> "Introduce an implementation of IOMMU in linux-riscv"
> > >> 9 Sep 2019, 10:45 Jade-room-I&II (Corinthia Hotel Lisbon) RISC-V MC
> > >
> > > I attended this session, but it unfortunately raised many more
> > > questions than it answered.
> > 
> > Ya, we're a long way from figuring this out.
> 
> For everyone's reference, here is our first attempt at RISC-V ASID allocator:
> http://archive.lwn.net:8080/linux-kernel/20190329045111.14040-1-anup.patel@wdc.com/T/#u

With a reply stating that the patch "absolutely does not work" ;)

What exactly do you want people to do with that? It's an awful lot of effort
to review this sort of stuff and given that Guo Ren is talking about sharing
page tables between the CPU and an accelerator, maybe you're better off
stabilising Linux for the platforms that you can actually test rather than
getting so far ahead of yourselves that you end up with a bunch of wasted
work on patches that probably won't get merged any time soon.

Seriously, they say "walk before you can run", but this is more "crawl
before you can fly". What's the rush?

Will

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
