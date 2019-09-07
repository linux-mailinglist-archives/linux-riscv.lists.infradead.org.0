Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5628CACA0F
	for <lists+linux-riscv@lfdr.de>; Sun,  8 Sep 2019 01:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3b/Lc7tW4rYPgR27LlErh6xliMNSD6K+r0FUENPyBg0=; b=RtYdeLSM6p9kfe
	Uhj/7RMMu/yn6gg1yH25rMp7F2bBuQl62G5MZXyGM3qdCgxC5ddIsCeHSOdymPWuF1HD0yrS/LpOu
	3OWy0749h65jXfj1VaG3AaVPK2jbSFL6XELdZVzx57oNKgoR5QjwFxUlszUbK3b75cVbxdYbhvEym
	GMT/4/IVqulOnGdrG35VDcw2Uvq0k0jAu6L+RI2WufIEZL+33qHnjebiQJJQEpILEO9lWavonQhjf
	BFoMQwx2rP1QDl22XEQVmDtabp+WvIArotZ8vGhvDXxKxsrP6e8Vo+v3uRWoCZBdw+UT7+A0JnDFO
	QlawHUmPYSj68tDC01/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6kWH-0002Vv-Fj; Sat, 07 Sep 2019 23:53:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kVy-0002Kr-0J; Sat, 07 Sep 2019 23:53:11 +0000
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7427B21882;
 Sat,  7 Sep 2019 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567900388;
 bh=KU+yu1dnpjqMkvaxD0NQ/62kFYi8GAP69zuvLWhpBPg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iQhzSJ+9oXgDhIW7PRJgS7OAd27+ApcmlwV1Pr1t7tIdVxFSSbNmEPtHB+EVkx/QI
 3oFy7UEQ8OJz3CxRjUYWmyWOwvSBH4uR+n5qkd1ZBcZeaqG5m2rMeo15JOhhtEIi6O
 gZUNlX9yNbmazWAWH7DCrTZAkCxjkeJuFftVnO9s=
Received: by mail-wm1-f43.google.com with SMTP id n10so10780540wmj.0;
 Sat, 07 Sep 2019 16:53:08 -0700 (PDT)
X-Gm-Message-State: APjAAAXcCJ6DjBNFw3dKSjZNC1KMWNK5NlJ3u8gW203KEG5MF8/PH3/Y
 SH7fZS93O2NvJQ4NRwjbg4VxPMswFntbi4H4lSc=
X-Google-Smtp-Source: APXvYqz/EaoziXhxATPtaiz7WMpDkudp2uTSNKWYfbpcDLkqo0GVOyZavKTFmq2PKcMvW87cxTCwTetw/AbRtRbW9aM=
X-Received: by 2002:a1c:f007:: with SMTP id a7mr12784687wmb.172.1567900386906; 
 Sat, 07 Sep 2019 16:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
In-Reply-To: <20190624104006.lvm32nahemaqklxc@willie-the-truck>
From: Guo Ren <guoren@kernel.org>
Date: Sun, 8 Sep 2019 07:52:55 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
Message-ID: <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_165310_066042_458FC8FE 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Thx Will,

On Mon, Jun 24, 2019 at 6:40 PM Will Deacon <will@kernel.org> wrote:
> > I'll keep my system use the same ASID for SMP + IOMMU :P
>
> You will want a separate allocator for that:
>
> https://lkml.kernel.org/r/20190610184714.6786-2-jean-philippe.brucker@arm.com

Yes, it is hard to maintain ASID between IOMMU and CPUMMU or different
system, because it's difficult to synchronize the IO_ASID when the CPU
ASID is rollover.
But we could still use hardware broadcast TLB invalidation instruction
to uniformly manage the ASID and IO_ASID, or OTHER_ASID in our IOMMU.

Welcome to join our disscusion:
"Introduce an implementation of IOMMU in linux-riscv"
9 Sep 2019, 10:45 Jade-room-I&II (Corinthia Hotel Lisbon) RISC-V MC

--
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
