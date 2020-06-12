Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799761F7C91
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jun 2020 19:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDcRIpXupE0ceUCNKmt0N8h7jAXuVdBg0byQ2XOXOwA=; b=W5OC5ggovQc8SZ
	6otSXM2X92HeszgEAHv45p3ndjL5u8GbpW646cGCMiG28O3hY99A28Ia2CRBFu4piGL0+wnnlUlIa
	mkG+g4u42PrL/MdjSJ9TrL237NC3X2PQ1z3tdskS8EcqFLQb2N5ente1v8JDdC4e0XKUhAsC3kZk4
	Ppqv88b5pcQJvgKXPeCpYBlbdjetMNIHPFcGmyB8V+D72cNM0PZjetlIUbPj9qgx0h6bxMvMlOb/9
	UdJEc0Ni5KQh3vwtULXiQS+fMrNa3VUeL+GlCEMHkymdPyakIkmoM7tjzfLO8uN79c5i2+YcUVF6Y
	UPT6YdLfGQBzdb3htZyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjni3-0005FN-7I; Fri, 12 Jun 2020 17:43:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjnhy-0005Eu-Pe
 for linux-riscv@lists.infradead.org; Fri, 12 Jun 2020 17:43:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id u26so9640366wmn.1
 for <linux-riscv@lists.infradead.org>; Fri, 12 Jun 2020 10:43:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QDcRIpXupE0ceUCNKmt0N8h7jAXuVdBg0byQ2XOXOwA=;
 b=EEDwnHM7jEpcxXM5UWzDIuEAmvX/9nJFqz423nqBjytBRolI4MHoMpzNLHPK+ZQuMW
 ZJFl5rPFZ9sgsJW+WuilyyJhK8zaoIPCErD/ZJeC0hhwXty6lr2c1angrf2fb481J89M
 EFxmh/r8RDX9FKQt8aWGccUIjr90397zCJrb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QDcRIpXupE0ceUCNKmt0N8h7jAXuVdBg0byQ2XOXOwA=;
 b=cJWrLE7m7gV0hIwImF04mxG7q1JQQGUN2JNXPK9IUoXCPiW3fSgXEJvTXMMDcXW09+
 LeeHN5xGPi1TL4OJgNxFNZ7Id9QfxC3AJdEP70Cqyvni3epoPYA7ba2B8O1GCGdqY3uL
 QYbtyKT1tyBY1+fjq1hNuO1XLdBjVWc+BTy6DJydp9noQAuwLwx1caZ8Fq5c2MKPOWCd
 MPmcqjRs9dEw42NQtoBH14jGcXpZlVFPdemZ4+fqMl0nhw34nUbJvE0OVeEAPCViVK92
 vl0xA+3Cz4WFp7t4okqhcs4kmNbMKwhEqsVD8cSPp3RAXDWq2VgTQgyf/lIECIdcObPE
 8a7g==
X-Gm-Message-State: AOAM531wSsDIO9NheOMLQKSA5YvBJlSKy7jT5Jtyj/CEWq4LJHKVCMqu
 +5L3SetYSUqU42vvGMpTbcNyBhqQPAmA2fPUaIKp
X-Google-Smtp-Source: ABdhPJwMIKeqTguyJNugecOsV2hRvwUn7rirrvycI7fch9LQU6f8huN8mLNuvP4ejSItTjrz+2nPvdcNhAFsrrM+ue4=
X-Received: by 2002:a1c:23d2:: with SMTP id j201mr61345wmj.186.1591983792118; 
 Fri, 12 Jun 2020 10:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200603153608.30056-1-alex@ghiti.fr>
 <CAOnJCUJSKvLDsXC8+wyO1xsZDzLJmjY2kwMKhjz0t+uS8h0pDw@mail.gmail.com>
 <7ad7057e-fdab-14ef-9bdb-c77ccefd208a@ghiti.fr>
 <CAOnJCUKcMmchxgeHNx997EH5JM_OAJFUDCNT6Ca2B-xHE4YT5A@mail.gmail.com>
 <36739fc4-21ea-14f4-f2a6-52614b602dea@ghiti.fr>
 <8867b8d5-4a15-fbc1-67e1-7fc48be6eae3@ghiti.fr>
In-Reply-To: <8867b8d5-4a15-fbc1-67e1-7fc48be6eae3@ghiti.fr>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 12 Jun 2020 10:43:00 -0700
Message-ID: <CAOnJCUJGgFKmVyvan6j9n93FJjAnsDP-QHzgTZ3kNAeJfAV_9Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] PUD/PGDIR entries for linear mapping
To: Alex Ghiti <alex@ghiti.fr>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_104314_901330_A3ECE72B 
X-CRM114-Status: GOOD (  35.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <anup@brainfault.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 6:17 AM Alex Ghiti <alex@ghiti.fr> wrote:
>
> Le 6/12/20 =C3=A0 8:59 AM, Alex Ghiti a =C3=A9crit :
> > Hi Atish,
> >
> > Le 6/11/20 =C3=A0 1:29 PM, Atish Patra a =C3=A9crit :
> >> On Wed, Jun 10, 2020 at 11:51 PM Alex Ghiti<alex@ghiti.fr>  wrote:
> >>> Hi Atish,
> >>>
> >>> Le 6/10/20 =C3=A0 2:32 PM, Atish Patra a =C3=A9crit :
> >>>> On Wed, Jun 3, 2020 at 8:36 AM Alexandre Ghiti<alex@ghiti.fr>  wrote=
:
> >>>>> This small patchset intends to use PUD/PGDIR entries for linear
> >>>>> mapping
> >>>>> in order to better utilize TLB.
> >>>>>
> >>>>> At the moment, only PMD entries can be used since on common platfor=
ms
> >>>>> (qemu/unleashed), the kernel is loaded at DRAM + 2MB which
> >>>>> dealigns virtual
> >>>>> and physical addresses and then prevents the use of PUD/PGDIR
> >>>>> entries.
> >>>>> So the kernel must be able to get those 2MB for PAGE_OFFSET to map
> >>>>> the
> >>>>> beginning of the DRAM: this is achieved in patch 1.
> >>>>>
> >>>> I don't have in depth knowledge of how mm code works so this questio=
n
> >>>> may be a completely
> >>>> stupid one :). Just for my understanding,
> >>>> As per my understanding, kernel will map those 2MB of memory but
> >>>> never use it.
> >>>> How does the kernel ensure that it doesn't allocate any memory from
> >>>> those 2MB
> >>>> memory if it is not marked as reserved?
> >>> Yes, a 1GB hugepage will cover those 2MB: I rely on the previous boot
> >>> stage to mark this region
> >>> as reserved if there is something there (like opensbi). Otherwise, th=
e
> >>> kernel will indeed try to
> >>> allocate memory from there :)
> >>>
> >> In that case, this patch mandates that the firmware region has to be
> >> mark "reserved"
> >> the device tree so that the Linux kernel doesn't try to allocate
> >> memory from there.
> >> OpenSBI is already doing it from v0.7. Thus, any user using latest
> >> OpenSBI can leverage
> >> this patch for a better TLB utilization.
> >
> >
> > Note that *currently* OpenSBI v0.7 still adds the "no-map" property
> > which prevents such optimization.
> >

Thanks for the clarification. When I said latest, I meant including
your patch in the mailing list.

> >> However, legacy previous boot stages(BBL) do not reserve this area via
> >> DT which may
> >> result in an unexpected crash. I am not sure how many developers still
> >> use BBL though.
> >>
> >> Few general suggestions to tackle this problem:
> >> 1. This mandatory requirement should be added to the booting document
> >> so that any other
> >> SBI implementation is also aware of it.
> >> 2. You may have to move the patch1 to a separate config so that any
> >> users of legacy boot stages
> >> can disable this feature.
> >
> >
> > IMHO, the region occupied by runtime services should be marked as
> > reserved in the device-tree. So it seems redundant to add this as a
> > requirement, I would rather consider its absence as a bug.
> >

I agree. I was just suggesting to document this bug :).

> > Even if I understand that this might break some system, I don't like
> > the idea of a new config to support old "buggy" bootloaders: when will
> > we be able to remove it ? We'll never know when people will stop using
> > those bootloaders, so it will stay here forever...Where can I find the

Personally, I am fine with that. However, there were few concerns in the pa=
st.
I am leaving it to Palmer to decide.

@Palmer Dabbelt : Any thoughts ?

> > boot document you are talking about ? Can we simply state here that
> > this kernel version will not be compatible with those bootloaders
> > (we'll draw an exhaustive list here) ?
>

Yes.

>
> Ok, I have just found Documentation/riscv/boot-image-header.rst: could
> we imagine doing something like incrementing the version and use that as
> a hint in the kernel not to map the 2MB offset ? That's still legacy,
> but at least it does not require to recompile a kernel as the check
> would be done at runtime.
>

I was suggesting to add a risc-v specific booting document and
document this "bug".
Documentation/riscv/boot-image-header.rst can be linked from that document =
or
the boot hader content can be included in that. No changes in code is neces=
sary.

Eventually, this booting document will also include other additional
booting constraints for RISC-V
such as minimum extension required to boot Linux, csr state upon
entering S-mode, mmu state.
>
> >
> > Alex
> >
> >
> >>> Alex
> >>>
> >>>
> >>>>> But furthermore, at the moment, the firmware (opensbi) explicitly
> >>>>> asks the
> >>>>> kernel not to map the region it occupies, which is on those common
> >>>>> platforms at the very beginning of the DRAM and then it also dealig=
ns
> >>>>> virtual and physical addresses. I proposed a patch here:
> >>>>>
> >>>>> https://github.com/riscv/opensbi/pull/167
> >>>>>
> >>>>> that removes this 'constraint' but *not* all the time as it offers
> >>>>> some
> >>>>> kind of protection in case PMP is not available. So sometimes, we m=
ay
> >>>>> have a part of the memory below the kernel that is removed creating=
 a
> >>>>> misalignment between virtual and physical addresses. So for
> >>>>> performance
> >>>>> reasons, we must at least make sure that PMD entries can be used:
> >>>>> that
> >>>>> is guaranteed by patch 1 too.
> >>>>>
> >>>>> Finally the second patch simply improves best_map_size so that
> >>>>> whenever
> >>>>> possible, PUD/PGDIR entries are used.
> >>>>>
> >>>>> Below is the kernel page table without this patch on a 6G platform:
> >>>>>
> >>>>> ---[ Linear mapping ]---
> >>>>> 0xffffc00000000000-0xffffc00176e00000 0x0000000080200000 5998M
> >>>>> PMD     D A . . . W R V
> >>>>>
> >>>>> And with this patchset + opensbi patch:
> >>>>>
> >>>>> ---[ Linear mapping ]---
> >>>>> 0xffffc00000000000-0xffffc00140000000 0x0000000080000000
> >>>>> 5G PUD     D A . . . W R V
> >>>>> 0xffffc00140000000-0xffffc00177000000 0x00000001c0000000 880M
> >>>>> PMD     D A . . . W R V
> >>>>>
> >>>>> Alexandre Ghiti (2):
> >>>>>     riscv: Get memory below load_pa while ensuring linear mapping
> >>>>> is PMD
> >>>>>       aligned
> >>>>>     riscv: Use PUD/PGDIR entries for linear mapping when possible
> >>>>>
> >>>>>    arch/riscv/include/asm/page.h |  8 ++++
> >>>>>    arch/riscv/mm/init.c          | 69
> >>>>> +++++++++++++++++++++++++++++------
> >>>>>    2 files changed, 65 insertions(+), 12 deletions(-)
> >>>>>
> >>>>> --
> >>>>> 2.20.1
> >>>>>
> >>>>>
> >>
> >



--=20
Regards,
Atish

