Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A916A0D2
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jul 2019 05:32:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wubJjHTbWfbZu0HshgUCUud9GUgV+N5rEktmL/MHEv4=; b=jrkLtDPuVWnwGY
	dU7ETc6wgVYmeEP9GAaUjlNRZV98MRvCBR2GvWOkQAKL0qSdVWIyavtTISkkTLqjp15WJGziXqt0v
	MB1C+LOuUM8LxbYldurSt2hSzo88NhDwycLmZfOtGTK49CWiD+FkC27DD7pmTffPaEtqFu5JiM9+3
	NwB50e7LQHnCMIQpsNtJzUws583NTScogfnY1ymkYtZeqX6oCzNxHS8vvFzXYS78Cqspd8TJi6uAF
	stB4XHf2nlFxlqmQxUKHq29DJAgc3R3nitggN0PgxKNV82L7SRfnGQS2BI+qITgZki04ma+4eInDE
	9QpqKGsQSPnNiSMZfLWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnECA-0004IB-M1; Tue, 16 Jul 2019 03:32:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnEBr-000451-9e; Tue, 16 Jul 2019 03:31:44 +0000
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EB8E21738;
 Tue, 16 Jul 2019 03:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563247901;
 bh=nkLC7Do/0/ASx+htK3W0deCY/L7u52YvatK3PThzs1o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bOmSYmFwgJoFlxLXY0jcxork4cP46Hw0+GSfRe0St3ZR0NPWSU7OH04NHQzXB8AVq
 xC5enZlHYqatS/fVlSf/0vI5R8YiIYDxKt7mnew6O4KX/QKodKFpVFFPEwBC7jUGlV
 iUvYO2H5sEaclssF++r91+dLjJklm/J0ax/BT9Ms=
Received: by mail-wm1-f45.google.com with SMTP id x15so17090275wmj.3;
 Mon, 15 Jul 2019 20:31:41 -0700 (PDT)
X-Gm-Message-State: APjAAAUlNwyezz19/tTXKUmMPUUUpIWhogeiN64fP64C7AAQueD7pRvu
 l2mMHg0SpZCLqdsPGJ4DOG+gE3pTSOgmchAfVmM=
X-Google-Smtp-Source: APXvYqyPa5rP95ycs6b3WYMG+EzG85EsRWTZkZHjobdrhwBuzs6W/qfB+TTyLjN39USlTZAaWUOIcPqk90kThcB1O2E=
X-Received: by 2002:a7b:c212:: with SMTP id x18mr26821859wmi.77.1563247899662; 
 Mon, 15 Jul 2019 20:31:39 -0700 (PDT)
MIME-Version: 1.0
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
 <20190701091711.GA21774@arrakis.emea.arm.com>
In-Reply-To: <20190701091711.GA21774@arrakis.emea.arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Tue, 16 Jul 2019 11:31:27 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTEbhA-pZCPGuUNqXT9F-vk8fSTyNJyEOpn=QE=toAN3g@mail.gmail.com>
Message-ID: <CAJF2gTTEbhA-pZCPGuUNqXT9F-vk8fSTyNJyEOpn=QE=toAN3g@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_203143_380223_6DE527D9 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish Patra <Atish.Patra@wdc.com>, Julien Grall <julien.grall@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, gary@garyguo.net, paul.walmsley@sifive.com,
 christoffer.dall@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Catalin,

Thanks for sharing about CnP assid experience. See my comment below.

On Mon, Jul 1, 2019 at 5:17 PM Catalin Marinas
> From the ASID reservation/allocation perspective, the mechanism is the
> same between multi-threaded with a shared TLB and multi-core. On arm64,
> a local_flush_tlb_all() on a thread invalidates the TLB for the other
> threads of the same core.
>
> The actual problem with multi-threaded CPUs is a lot more subtle.
> Digging some internal email from 1.5 years ago and pasting it below
> (where "current ASID algorithm" refers to the one prior to the fix and
> CnP - Common Not Private - means shared TLBs on a multi-threaded CPU):
>
>
> The current ASID roll-over algorithm allows for a small window where
> active_asids for a CPU (P1) is different from the actual ASID in TTBR0.
> This can lead to a roll-over on a different CPU (P2) allocating an ASID
> (for a different task) which is still hardware-active on P1.
>
> A TLBI on a CPU (or a peer CPU with CnP) does not guarantee that all the
> entries corresponding to a valid TTBRx are removed as they can still be
> speculatively loaded immediately after TLBI.
>
> While having two different page tables with the same ASID on different
> CPUs should be fine without CnP, it becomes problematic when CnP is
> enabled:
>
> P1                                      P2
> --                                      --
> TTBR0.BADDR = T1
> TTBR0.ASID = A1
> check_and_switch_context(T2,A2)
>   asid_maps[P1] = A2
>   goto fastpath
>                                         check_and_switch_context(T3,A0)
>                                           new_context
>                                             ASID roll-over allocates A1
>                                               since it is not active
>                                           TLBI ALL
> speculate TTBR0.ASID = A1 entry
>                                           TTBR0.BADDR = T3
>                                           TTBR0.ASID = A1
>   TTBR0.BADDR = T2
>   TTBR0.ASID = A2
>
> After this, the common TLB on P1 and P2 (CnP) contains entries
> corresponding to the old T1 and A1. Task T3 using the same ASID A1 can
> hit such entries. (T1,A1) will eventually be removed from the TLB on the
> next context switch on P1 since tlb_flush_pending was set but this is
> not guaranteed to happen.
>
>
> The fix on arm64 (as part of 5ffdfaedfa0a - "arm64: mm: Support Common
> Not Private translations") was to set the reserved TTBR0 in
> check_and_switch_context(), preventing speculative loads into the TLB
> being tagged with the wrong ASID. So this is specific to the ARM CPUs
> behaviour w.r.t. speculative TLB loads, it may not be the case (yet) for
> your architecture.

The most important thing is that TLBI ALL occurs between
"asid_maps[P1] = A2" and "TTBR0.BADDR = T2", then speculative
execution after TLBI which access to user space code/data will result
in a valid asid entry which re-filled into the TLB by PTW.

A similar problem should exist if C-SKY ISA supports SMT. Although the
C-SKY kernel prohibits the kernel from speculating on user space code
directly, ld/st can access user space memory in csky kernel mode.
Therefore, a similar problem occurs when it speculatively executes
copy_from / to_user codes in that window.

RISC-V ISA has a SUM setting bit that prevents the kernel from
speculating access to user space. So this problem has been bypassed
from the design.

I saw arm64 to prevent speculation by temporarily setting TTBR0.el1 to
a zero page table. Is that used to prevent speculative execution user
space code or just prevent ld/st in copy_use_* ?

-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
