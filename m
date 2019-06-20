Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A154CAEF
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 11:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zH9ESVjQQRJDW0MyQTGVkfYNOy1r5dcFQFwTjgg7qdM=; b=fHyz9TYccy687P
	g6RElSbqv+nW30/fE9u19DniB0RFoHJeSUaOZi7cqrKYmdrLDStLRClD0NXFGz4AcGO9oDj3xn18u
	HQpE45gJk6LWYVimcDCgIdcWv+DYXUxMo73IyHgU9buY4MEHkp5bSZ22RV/N01yD69Xvox+gC+Pkr
	AOMQlw/PPIPyPcRdzrJJ9ggGrZMxFftTJ2mB2FsZh/aDBC3qqcKeGdZeFPJ10WOVcmK9ynYyd+jSx
	9Uhq0lizMkjbKwJMHQ8N7EfuNajLdmVYAdZsrzW4SGVZoqZE8VTRh2B/+FFzdH3Jje0GlTEDF+FyJ
	YgH94KSHAi/5bMg8o6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtRz-0007hQ-Br; Thu, 20 Jun 2019 09:33:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtRV-0007S9-WD; Thu, 20 Jun 2019 09:33:19 +0000
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2B382166E;
 Thu, 20 Jun 2019 09:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561023197;
 bh=wF4Kft1kjvbBGl6bFmuWJVdHoYPD3Au810PkssaKIZE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CRnVSVD2m/JMuXmXMMrNupVPb9HD1/YsmLG8zB04i3IkiTQa5+dImtqjWlVtUVL2D
 D6jpwAqpeH0/uzLX9kd3H2jKKRW5rWYgla3LouDxkAwovsEOVIM7Q15eS9jT6yjpgK
 RV1gJEk7ESm7ioUhEmW3+1cjqjSwKwUbjyJDEMgE=
Received: by mail-wr1-f46.google.com with SMTP id r16so2245773wrl.11;
 Thu, 20 Jun 2019 02:33:16 -0700 (PDT)
X-Gm-Message-State: APjAAAUlNbzSjw+WHnTxFStvRgj/4AXV0xCUijH3daUbcpK6Hln3jU6j
 zbfKvX2Gv2vLj4rjFrZfjYvoR1dzyItZDFOq6GY=
X-Google-Smtp-Source: APXvYqwcJ3JkBbowwrQ6KDOzuprIogDlsLPM1Ig5CGLqsI9nvrmysAdsaO2kn1od4dFuMTqL4DBP4KwoTY8KiIhPM/I=
X-Received: by 2002:adf:f28a:: with SMTP id k10mr8885379wro.343.1561023195316; 
 Thu, 20 Jun 2019 02:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
In-Reply-To: <20190619123939.GF7767@fuggles.cambridge.arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Thu, 20 Jun 2019 17:33:03 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
Message-ID: <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_023318_078592_7BAADA5B 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, catalin.marinas@arm.com,
 Anup Patel <anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, hch@infradead.org, Atish.Patra@wdc.com,
 Julien Grall <julien.grall@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 gary@garyguo.net, paul.walmsley@sifive.com, christoffer.dall@arm.com,
 linux-riscv@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 8:39 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, Jun 19, 2019 at 08:18:04PM +0800, Guo Ren wrote:
> > On Wed, Jun 19, 2019 at 5:12 PM Will Deacon <will.deacon@arm.com> wrote:
> > > This is one place where I'd actually prefer not to go down the route of
> > > making the code generic. Context-switching and low-level TLB management
> > > is deeply architecture-specific and I worry that by trying to make this
> > > code common, we run the real risk of introducing subtle bugs on some
> > > architecture every time it is changed.
> > "Add generic asid code" and "move arm's into generic" are two things.
> > We could do
> > first and let architecture's maintainer to choose.
>
> If I understand the proposal being discussed, it involves basing that
> generic ASID allocation code around the arm64 implementation which I don't
> necessarily think is a good starting point.
...
>
> > > Furthermore, the algorithm we use
> > > on arm64 is designed to scale to large systems using DVM and may well be
> > > too complex and/or sub-optimal for architectures with different system
> > > topologies or TLB invalidation mechanisms.
> > It's just a asid algorithm not very complex and there is a callback
> > for architecture to define their
> > own local hart tlb flush. Seems it has nothing with DVM or tlb
> > broadcast mechanism.
>
> I'm pleased that you think the algorithm is not very complex, but I'm also
> worried that you might not have fully understood some of its finer details.
I understand your concern about my less understanding of asid
technology. Here is
my short-description of arm64 asid allocator: (If you find anything
wrong, please
correct me directly, thx :)
The asid allocator use five level check to reduce the cost of switch_mm.
 1. Check if the asid version is the same (it's general)
 2. Check reserved_asid which is set in rollover flush_context() and
the key point is
     keep the same bit position with the current asid version instead
of input version.
 3. Check if the position of bitmap is free then it could be set &
used directly.
 4. find_next_zero_bit() (a little performance cost)
 5. flush_context  (this is the worst cost with increase current asid version)

Check is level by level and cost is also higher with the next level.
The design that
impressed me the most was reserved_asid and bitmap and the 2th level and 3th
level will prevent unnecessary find_next_zero_bit().

The atomic 64 bit asid is also ok for 32-bit system and it won't cost
a lot in 1th 2th 3th
level check.

The operation of set/clear mm_cpumask was removed in arm64 compared to arm32.
It seems no side effect on current arm64 system, but from software
meaning it's wrong.
So I think it should be reserved in generic version.

>
> The reason I mention DVM and TLB broadcasting is because, depending on
> the mechanisms in your architecture relating to those, it may be strictly
> required that all concurrently running threads of a process have the same
> ASID at any given point in time, or it may be that you really don't care.
>
> If you don't care, then the arm64 allocator is over-engineered and likely
> inefficient for your system. If you do care, then it's worth considering
> whether a lock is sufficient around the allocator if you don't expect high
> core counts. Another possibility is that you end up using only one ASID and
> invalidating the local TLB on every context switch. Yet another design
> would be to manage per-cpu ASID pools.
I'll keep my system use the same ASID for SMP + IOMMU :P
Yes, there are two styles of asid allocator: per-cpu ASID (MIPS) or
same ASID (ARM).
If the CPU couldn't support cache/tlb coherency maintian in hardware,
it should use
per-cpu ASID style because IPI is expensive and per-cpu ASID style
need more software
mechanism to improve performance (eg: delay cache flush). From software view the
same ASID is clearer and easier to build bigger system with more TLB caches.

I think the same ASID style is a more sensible choice for modern
processor and let it be
one of generic is reasonable.

>
> So rather than blindly copying the arm64 code, I suggest sitting down and
> designing something that fits to your architecture instead. You may end up
> with something that is both simpler and more efficient.
In fact, riscv folks have discussed a lot about arm's asid allocator
and I learned
a lot from the discussion:
https://lore.kernel.org/linux-riscv/20190327100201.32220-1-anup.patel@wdc.com/

We are developing C-SKY and RISC-V ISA cpu cores and make it generic
is good for us.

Best Regards
 Guo Ren

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
