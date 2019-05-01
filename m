Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A01710374
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 02:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=e/FcRNiqneFeRZCuqv+v+jVtn5eZfo0fcV2cx/0l68w=; b=SRyxCLO5paCoH8moRsntJna2O
	+B5wb/2KXu9P93chWk3+QgAwmgDTV/8SVKQUWaevCXZixchPx8R0jOjx8gS7+oDcR89gBJnZS75OL
	tN+vrngbmLKJ9/1CPoahIRCcZdGri97IgWWxjdvizLq0Oy2LTg8by5+0uQA1O6C6ciH9e9euGsPGJ
	hLgTQdwgzGK1Dt//E04drJLhouQOoBQovPIfMwcJNjmp7ZpR6kEj3R2Qn+q4Auj2arSVVGNamOLl/
	Mwi2IFvi2YYgL38KougV4rsVJ9YzG5zpld6o9QdN3k8mMoPKsRhdWjTa0cLeGG/ex7Wl003xZDJmN
	BFItWLkrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLcqS-0005b4-Uh; Wed, 01 May 2019 00:11:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLcqQ-0005ac-1h
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 00:11:31 +0000
Received: by mail-pg1-x544.google.com with SMTP id e6so7607427pgc.4
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 17:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=n90B8MYDWGqupHdVkvG3Sa9M/75lyqhQ0w6dVuFCRvQ=;
 b=fz3LLeMXyIc9PDobBtlU4B9pqlr0EaTXxaCBg/lt6J4NWYK5WAuaD9QH8xyaLon1ox
 l38C2RASV64lMgKvkO095dM6uV89n2zcJCHv9thNFJjvL7mAq8rHpYtugPzKXr/EMDs6
 sqEpPqrqY20GvD33mNaSiJXIDJY38HjYrggp9aIHYOdR9QI1AbL/IPKdA/tl7salfe+G
 9ocTqRTQXG/1e7AbXLPXZhgjMh8TlSMbXMJ/dV6GID2Y1oUaHDtGt78EMoOUO4RBIKWX
 OwZDqEACwVvEMWIqOyq6Jo2MTW5Gk3dC1uRNTUkZ4b3gdL7U3sl90LWdkkKLlzOKILse
 wz/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=n90B8MYDWGqupHdVkvG3Sa9M/75lyqhQ0w6dVuFCRvQ=;
 b=TsYVPH5DBnLgmAhKYZE4tDw/sK+IBtfDGTX8HQ9ouVrLA7JL2pUcF3jO0F/7rqeh9k
 C5dO96xOBfrsoGyFIEnRCFK7y1XpZqGYJSga0hUTKBeEA2PG4ce6k+r0uLk+uDUxgQfc
 VM1ZG+mPTTL7eIAsu1uy0QyrfwyJO6sKMjw8A+G1Q9EJaa3xsheExFRqtChAExhyO67W
 Yn0Rh3FOROWGq5ituZiqYEEFThexoWvABhmBtsZZRmMaV4dHCBvznVlK2oN2I97ka4CO
 lYrWX2g9/vkOthyXk4cGrVSrbsNbsqD5wYDeUCj6KZhIg5RTeS22jm+ZCQAieslWULBZ
 h7iw==
X-Gm-Message-State: APjAAAV/OTlBHIFEhDISZsPacst/4Qr4SIxdL9KfNN0AP9FZFSam9RxH
 6+GU7NiHIxR+i/d0MPC6ofy4WKkYscHaag==
X-Google-Smtp-Source: APXvYqyQJKCDVen4UiKbxaLdRXz5TcfXtBE/ILtaCQBt1hhXy3q9y4DPQBNpfL97OLTwcq7//696Gg==
X-Received: by 2002:a62:e043:: with SMTP id f64mr17920095pfh.76.1556669488429; 
 Tue, 30 Apr 2019 17:11:28 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id x6sm17984783pfm.114.2019.04.30.17.11.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 17:11:27 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:11:27 -0700 (PDT)
X-Google-Original-Date: Tue, 30 Apr 2019 17:06:59 PDT (-0700)
Subject: Re: [PATCH v6 0/3] Allow accessing CSR using CSR number
In-Reply-To: <20190425083804.11991-1-anup.patel@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-c3baf15e-decb-4b3f-91c3-87642f14c3e4@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_171130_120132_C9BB6BDA 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 25 Apr 2019 01:38:24 PDT (-0700), Anup Patel wrote:
> This patch series adds support to access CSR using both CSR name and
> CSR numbers.
> 
> Also, we should prefer accessing CSRs using their CSR numbers because:
> 1. It compiles fine with older toolchains.
> 2. We can use latest CSR names in #define macro names of CSR numbers
>    as-per RISC-V spec. (e.g. sptbr => CSR_SATP, sbadaddr => CSR_STVAL, etc.)
> 3. We can access newly added CSRs even if toolchain does not recognize
>    newly addes CSRs by name. (e.g. BSSTATUS, BSIE, SSIP, etc.)
> 
> The patchset can be found in riscv_csr_number_v6 branch of
> https//github.com/avpatel/linux.git
> 
> Changes since v5:
>  - Drop redundant INTERRUPT_CAUSE_FLAG from kernel/irq.c
> 
> Changes since v4:
>  - Express SCAUSE_IRQ_FLAG in-terms of __riscv_xlen
> 
> Changes since v3:
>  - Keep old INTERRUPT_xyz defines in kernel/irq.c for PATCH2
> 
> Changes since v2:
>  - Dropped PATCH1 which added asm/encoding.h
>  - Added new PATCH1 which beautifies asm/csr.h by using tabs to
>    align macro values
> 
> Changes since v1:
>  - Squash PATCH2 into cpatch3
>  - Added new PATCH2 to add interrupt related SCAUSE defines
>    in asm/encoding.h
> 
> Anup Patel (3):
>   RISC-V: Use tabs to align macro values in asm/csr.h
>   RISC-V: Add interrupt related SCAUSE defines in asm/csr.h
>   RISC-V: Access CSRs using CSR numbers
> 
>  arch/riscv/include/asm/csr.h         | 123 +++++++++++++++++----------
>  arch/riscv/include/asm/irqflags.h    |  10 +--
>  arch/riscv/include/asm/mmu_context.h |   7 +-
>  arch/riscv/kernel/entry.S            |  22 ++---
>  arch/riscv/kernel/head.S             |  12 +--
>  arch/riscv/kernel/irq.c              |  16 +---
>  arch/riscv/kernel/perf_event.c       |   4 +-
>  arch/riscv/kernel/smp.c              |   2 +-
>  arch/riscv/kernel/traps.c            |   6 +-
>  arch/riscv/mm/fault.c                |   6 +-
>  10 files changed, 111 insertions(+), 97 deletions(-)
> 
> --
> 2.17.1

Thanks.  I've added these to for-next with a minor merge conflict, but I think
I managed to avoid screwing it up!

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
