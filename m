Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ED21A2434
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 16:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fZfWIflrG/P0RSKmpE9xkFU0bVUa4sXmQ44pEpqzBR4=; b=b/yYK5+0XApJ3SDOWPUH+AoOv
	WXKj6Vy1LYny8PGGnBp2gH16MGzpGTZeWbQ3cmP1TQmUBkBi3inIVF057R/j9ol5j3Qx7z5hp6Fx0
	dTYd4j0zlPtWuNbHxjvrED/SuOmRlPyoiq5rLYH1jMPra6gaJuayXCbh3tIEpMh36yJqcyannm0GM
	uVj7T6OBTuWNe50NDSkT9GR61s8GSIZXTrVHS1V/ww28mQVMpm0v+vEXOqqJ/KUsobN2+pBk0YOKI
	GJnEFauAIyuq3fGP3BXRqhC1GlbsGsKp1Z2US4pfMZyy0iTzsedvJrLDRiWMXmgspVOSKD3n0jtr8
	aw5F46M2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBsj-0000pS-5J; Wed, 08 Apr 2020 14:40:45 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBse-0000oR-Nd
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 14:40:42 +0000
Received: from mail-lj1-f170.google.com ([209.85.208.170]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MUGuZ-1jml8a0wEN-00RFTR for <linux-riscv@lists.infradead.org>; Wed, 08
 Apr 2020 16:40:35 +0200
Received: by mail-lj1-f170.google.com with SMTP id k21so7900954ljh.2
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 07:40:35 -0700 (PDT)
X-Gm-Message-State: AGi0PuYSNnJyu/lMciCuienhTFJ1AGqPLktD0nbJiT6T4QqxTBvgKrR9
 ZCSPoq9ianfwnoFAvvOe5fTfT+46s0W3Ey7cYzE=
X-Google-Smtp-Source: APiQypLewTqfZcv6F/HmA6qKyW+AsRQU8geLrryZL5eYVp+qfIlNJmLNmarm8H7M8ujqQhceSXEm+lDo7WEA2aWGkDA=
X-Received: by 2002:a2e:9395:: with SMTP id g21mr5492407ljh.8.1586356834608;
 Wed, 08 Apr 2020 07:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200331093241.3728-1-tesheng@andestech.com>
 <CAK8P3a3LokurC0n9XiwtPQh9ZgQcswMKY4b+TEsQh1VgYDNeWA@mail.gmail.com>
 <20200408035118.GA1451@andestech.com>
In-Reply-To: <20200408035118.GA1451@andestech.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 8 Apr 2020 16:40:17 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
Message-ID: <CAK8P3a1JS3_2fWrhNTZx0eTWjJa-GTb4AscTPqydpSP5EB15Yw@mail.gmail.com>
Subject: Re: [PATCH 0/3] Highmem support for 32-bit RISC-V
To: Alan Kao <alankao@andestech.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:D3GN8soiGee1GqpVsBpF2k/TFsT8VT7h42qwcFTzYe2gXCWfoj/
 xTZU0QTSFou8/462R0YerdNHWUsuLkWMR8tnXXEWs0FUehbLEtNNW3aEEQyc3HKALvRNdzl
 Xn3DyELfatneKGr78reNoJRKgZ0YYYqC/WGY5cI2XkNRLdZBgJGBTSDUrJMpzfZ8YrD1C9t
 oeWXvvfuyNsLRWj5qqNMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8YbSFV/eEh8=:dIZxNdWW1mx82OPN0ExLDi
 ragHeo0yINBdSfb95/aW6h2UNngB+vsui6391aLjtQpir2kDxTaqGmZ1ACSD0/rbIwz+rg6m2
 aL7INN+bGnX28fQ8OZtXGMj7GWlVSmNYX5hu23E2K8T/nwBa5uxTZ+GVTraB9g+ki529wHAr5
 4A0+GZkHZxaIi95NxJTXr5F2JDFtUyNj/mmEvUOSnJi5qdbi0fNCoP2D16IJJjbg3YjKhwFDp
 ol6jzqrCRB3FPxZbw1eoBLgv6/0byHtrwsMc3AN6+lGe1utJf6tgaRfFeWtBBQdYKnXzr09I1
 RLaiRw/unmxM57bc3eYGsPWLLm/BGvgI9Kx4HwfenglFLxDhPAo8C8NgnxJ7vObpNZVlA1dAX
 qz3xUFritfuAVEoDZdh+kXKt3RGC54wwAHnYWfYpBQbnuhV4aTsQMpYW4F/LOLQ7ysI4JA+gB
 rBakGg/jPUpN0lptemj5ILIvyyA67k74FYbqT9ySDHM3rR6mb2O16zkueFQAjxms7Vdc30rYp
 /fkQ52QgoLyTkz7snuzDz+wdzjwVUfGIbBI9ilvu7HCCEx54YJPavE8GIFWZVBz5ry+N1RJac
 Yxh72NzNsMyXADe2H31+GrX5r8K2Sc7nWKsBB3O6gJ6RFcnHHv2USzME6zCJ8YTE/A2MhCOVA
 8kOq0IeoDvozfExvq+Uxp3cObVL3MbRUZlS5Pl/b0coQqJAD/n3VoB95qQevSGe9hFsyBGl3m
 eopQYm7+OoAH7p/GEJz3IBP8mVz7nNVrPDFHBRU+4U0l8r72OATtmuDa+n4zVfjO/zB6VQfsE
 YKwmiDG+aiIxTeEmYZXNUhZ7C0spBTaHmdemU4Mu84EH97FJXk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_074041_065887_972D6D4D 
X-CRM114-Status: GOOD (  25.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Borislav Petkov <bp@suse.de>, Eric Lin <tesheng@andestech.com>,
 zong.li@sifive.com, alex@ghiti.fr,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Steven Price <steven.price@arm.com>,
 atish.patra@wdc.com, yash.shah@sifive.com, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Greentime Hu <green.hu@gmail.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>, Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 5:52 AM Alan Kao <alankao@andestech.com> wrote:
> On Thu, Apr 02, 2020 at 11:31:37AM +0200, Arnd Bergmann wrote:
> > On Tue, Mar 31, 2020 at 11:34 AM Eric Lin <tesheng@andestech.com> wrote:
> > For the arm32 architecture, we are thinking about implementing a
> > VMPLIT_4G_4G option to replace highmem in the long run. The most
> > likely way this would turn out at the moment looks like:
> >
>
> Thanks for sharing the status from ARM32.  Is there any available branch
> already?  It would be good to have a reference implementation.

No code yet, so far not much more than the ideas that I listed. We
are currently looking for someone interested in doing the work
or maybe sponsoring it if they have a strong interest.

If someone does it for RISC-V first, that would of course also help on ARM ;-)

> > - have a 256MB region for vmalloc space at the top of the 4GB address
> >   space, containing vmlinux, module, mmio mappings and vmalloc
> >   allocations
> >
> > - have 3.75GB starting at address zero for either user space or the
> >   linear map.
> >
> > - reserve one address space ID for kernel mappings to avoid tlb flushes
> >   during normal context switches
> >
> > - On any kernel entry, switch the page table to the one with the linear
> >   mapping, and back to the user page table before returning to user space
> >
>
> After some survey I found previous disccusion
> (https://lkml.org/lkml/2019/4/24/2110). The 5.2-based patch ended up not
> being merged.  But at least we will have something to start if we want to.

Ah, I see. What is the current requirement for ASIDs in hardware
implementations? If support for more than one address space is
optional, that would make the VMSPLIT_4G support fairly expensive
as it requires a full TLB flush for each context switch.

> Also interestingly, there was a PR for privileged spec that separates
> addressing modes (https://github.com/riscv/riscv-isa-manual/pull/128) as
> Sdas extension, but there was no progress afterwards.

Right, this sounds like the ideal implementation. This is what is done
in arch/s390 and probably a few of the others.

> Not very related to this thread, but there were some discussion about
> ASID design in RISC-V (https://github.com/riscv/riscv-isa-manual/issues/348).
> It is now in ratified 1.11 privileged spec.

Ok, so I suppose that would apply to about half the 32-bit implementations
and most of the future ones, but not the ones implementing the 1.10 spec
or earlier, right?

> It seems to me that VMSPLIT_4G_4G is quite different from other VMSPLITs,
> because it requires much more changes.
>
> Thanks for showing the stance of kernel community against HIGHMEM support.
> The cited discussion thread is comprehensive and clear.  Despite that RV32
> users cannot get upstream support for their large memory, mechnisms like
> VMSPLIT_4G_4G seems to be a promising way to go.  That being said, to
> support the theoretical 16G physical memory, eventually kmap* will still
> be needed.

I had not realized that Sv32 supports more than 4GB physical address
space at all. I agree that if someone puts that much RAM into a machine,
there are few alternatives to highmem (in theory one could use the
extra RAM for zswap/zram, but that's not a good replacement).

OTOH actually using more than 1GB or 2GB of physical memory on a
32-bit core is something that I expect to become completely obscure
in the future, as this is where using 32-bit cores tends to get
uneconomical. The situation that I observe across the currently supported
32-bit architectures in the kernel is that:

- There is an incentive to run 32-bit on machines with 1GB of RAM  or less
  if you have the choice, because of higher memory  consumption and
  cache utilization on 64-bit code. On systems  with 2GB or more, the
  cost of managing that memory using 32-bit  code usually outweighs
  the benefits and you should run at least a 64-bit kernel.

- The high end 32-bit cores (Arm Cortex-A15/A17, MIPS P5600,
  PowerPC 750, Intel Pentium 4, Andes A15/D15, ...) are all obsolete
  after the follow-on products use 64-bit cores on a smaller process
  node, which end up being more capable, faster *and* cheaper.

- The 32-bit cores that do survive are based on simpler in-order
  pipelines that are cheaper and can still beat the 64-bit cores in
  terms of cost (mostly chip area, sometimes royalties), but not
  performance. This includes Arm Cortex-A7, MIPS 24k and typical
  RV32 cores.

- On an SoC with a cheap and simple CPU core, there is no point
  in spending a lot of money/area/complexity on a high-end memory
  controller. On single-core 32-bit SoCs, you usually end up with single
  16 or 32-bit wide DDR2 memory controller, on an SMP system like
  most quad-Cortex-A7, you have a 32-bit wide DDR3 controller, but no
  DDR4 or LP-DDR3/4.

- The largest economical memory configuration on a 32-bit DDR3
  controller is to have two 256Mx16 chips for a total of 1GB. You can
  get 2GB with four chips using dual-channel controllers or 512Mx8
  memory, but anything beyond that is much more expensive than
  upgrading to a 64-bit SoC with LP-DDR4.

This is unlikely to change over time as 64-bit chips are also getting
cheaper and may replace more of the 32-bit chips we see today.
In particular, I expect to see multi-core chips moving to mostly
64-bit cores over time, while 32-bit chips keep using one or
occasionally two cores, further reducing the need for large and/or
fast memory.

        Arnd

