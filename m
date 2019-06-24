Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41437508BF
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 12:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMpM/FSIKRStrVUC66Vlt7U/Ov5kjnskwGNIMu9ZQwA=; b=uxzsx0k5oTNKEn
	xcihkV7w3oJ5zxca/IbhrDtD4kt92THyrU6LZKJcKLQ9VAlhd/H50GCIKOoUkVW6Fxtxgm2y3Ic6t
	83nhKoyzE6rL//33ReouxnvfZx3V/uRXq6h4QZDQq1I3SNwbUolIi8SfBgIURithwgdYqczCSGX19
	sd0E4WaBe53URsCi7ZDMcKVRwy4DTLT14FdT6K6E1CuiS+l2f3YnYAcYQYkU8D4e7zm/3c5aeQGMg
	39pXBawbhb4n0QNjgmNStgXYqDCLp/x0XZbZJbL9BBV3wx0xLOoxONCrfWH6B4e/m5/w2/kVw52FK
	EtE8f2/7uGFCbp3gip/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfM7U-0004ud-4T; Mon, 24 Jun 2019 10:22:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfM77-0004i4-2E; Mon, 24 Jun 2019 10:22:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 691F9208E4;
 Mon, 24 Jun 2019 10:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561371736;
 bh=d4H3ytDN4+6bzOFsrB7H72D5xnyH2d7DzxF9eKjN0sY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JwiHHdW7tU89KwjK81T7yWoMzvqANGQZczB5UCgT2eBTMTSj/2WtBXwPLu9Bm31O5
 r/b9kyNOheWOPU6eueHBoKQB11SLCVWYnVhoKTq/4mVb1bd1PgiaqOudYcyxSqF2PT
 S4tMcKDxPqFg/3U3pumEBb3BDhOvWlvqmdZEXn2I=
Date: Mon, 24 Jun 2019 11:22:10 +0100
From: Will Deacon <will@kernel.org>
To: Guo Ren <guoren@kernel.org>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Message-ID: <20190624102209.ngwtosgr5fvp3ler@willie-the-truck>
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
 <20190621141606.GF18954@arrakis.emea.arm.com>
 <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_032217_141068_398E8691 
X-CRM114-Status: GOOD (  19.31  )
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
 suzuki.poulose@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, julien.thierry@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, hch@infradead.org, Atish Patra <Atish.Patra@wdc.com>,
 Anup Patel <anup.Patel@wdc.com>, james.morse@arm.com, gary@garyguo.net,
 Palmer Dabbelt <palmer@sifive.com>, christoffer.dall@arm.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 12:35:35AM +0800, Guo Ren wrote:
> On Fri, Jun 21, 2019 at 10:16 PM Catalin Marinas
> <catalin.marinas@arm.com> wrote:
> >
> > On Wed, Jun 19, 2019 at 07:51:03PM +0800, Guo Ren wrote:
> > > On Wed, Jun 19, 2019 at 4:54 PM Julien Grall <julien.grall@arm.com> wrote:
> > > > On 6/19/19 9:07 AM, Guo Ren wrote:
> > > > > Move arm asid allocator code in a generic one is a agood idea, I've
> > > > > made a patchset for C-SKY and test is on processing, See:
> > > > > https://lore.kernel.org/linux-csky/1560930553-26502-1-git-send-email-guoren@kernel.org/
> > > > >
> > > > > If you plan to seperate it into generic one, I could co-work with you.
> > > >
> > > > Was the ASID allocator work out of box on C-Sky?
> > >
> > > Almost done, but one question:
> > > arm64 remove the code in switch_mm:
> > >   cpumask_clear_cpu(cpu, mm_cpumask(prev));
> > >   cpumask_set_cpu(cpu, mm_cpumask(next));
> > >
> > > Why? Although arm64 cache operations could affect all harts with CTC
> > > method of interconnect, I think we should keep these code for
> > > primitive integrity in linux. Because cpu_bitmap is in mm_struct
> > > instead of mm->context.
> >
> > We didn't have a use for this in the arm64 code, so no point in
> > maintaining the mm_cpumask. On some arm32 systems (ARMv6) with no
> > hardware broadcast of some TLB/cache operations, we use it to track
> > where the task has run to issue IPI for TLB invalidation or some
> > deferred I-cache invalidation.
> The operation of set/clear mm_cpumask was removed in arm64 compared to
> arm32. It seems no side effect on current arm64 system, but from
> software meaning it's wrong.
> I think we should keep mm_cpumask just like arm32.

It was a while ago now, but I remember the atomic update of the mm_cpumask
being quite expensive when I was profiling this stuff, so I removed it
because we don't need it for arm64 (at least, it doesn't allow us to
optimise our shootdowns in practice).

I still think this is over-engineered for what you want on c-sky and making
this code generic is a mistake.

Will

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
