Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF81F5B3B
	for <lists+linux-riscv@lfdr.de>; Wed, 10 Jun 2020 20:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cuF+cADa9Q3nUhREBOrFxHULJ1t6/1ibL+MaQiIT2O4=; b=ZJNMn2jKfLTfQEOHI6ryIjjCZ
	t/2y/Xx1eDSnR35C5qgFoPcxZbs1UNx7zYBztLHGlYRkyC3yQXQDVhj1OmbnvCl5tscT73RDIkpZ+
	N/p7+nOo+9pt1TcBWSC/ljhTeKm/To6Y3iz6/Vh3IryXYLxwaaTTARDIcpuQLXMpe4BRD0P71Ev/Y
	qEv9yJYdfCJuHTmJyEnnx+u7jrnTVUiE7Iomr0oHnXzdBsE/cf5iwng5l7P5zSZWGF9fFfBVDhk3/
	SJIeEtObI4YMwGr3Ua+HNkNA1IfuXeCVxjhtykw3VfNFumzXeXuEjxOrMq2DZOBZSEzRkJNRnDqdA
	Z3uWpEGPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5X5-0004sL-4u; Wed, 10 Jun 2020 18:33:03 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5X1-0004rL-83
 for linux-riscv@lists.infradead.org; Wed, 10 Jun 2020 18:33:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so3449411wru.0
 for <linux-riscv@lists.infradead.org>; Wed, 10 Jun 2020 11:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cuF+cADa9Q3nUhREBOrFxHULJ1t6/1ibL+MaQiIT2O4=;
 b=ShddrI1KueMSqR6Wmvilt3rbyr+sz5HwFSfAUsjfnmYpijcnBNTyMgSkGknkRMlEvD
 T7ONcUqIiN6ZuI/+73WkfNKjPnjpCxAY0Tq+chqDh8IyImYw44Sg7NfS0nCQK0g2iQfF
 hJUycqfOB9F5s9VszPETBUbzqglDtFaWamE4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cuF+cADa9Q3nUhREBOrFxHULJ1t6/1ibL+MaQiIT2O4=;
 b=MmL+gOS7I1a4dRj6hldnqoyH0l/Sqoft4p3Brsph7wMGaU2OoWQ8IovGR6ePV3MdLB
 sbQMeUruHRIpB4PuiORSS2Sz5hq+VVP9b7YKpI5wTKAeASZ3ew0SwOaCBSoVlFIsKbkJ
 x2CS3Q/Y/AM8Eu9NP07zMPZ5KYhHNW02OtlbXBhClUq+Q6fsXgGXZzK/tsiC1n1Rdbbn
 4vkzmfmFWQCmbVDrM1mMgRlvUtINO+z3L8H8VMCf8L+N0kcfUCXphj5Cd5Olt1vqFBKo
 Xgo5VW/sMOXT9n0bB3W77rOkYnyJH2bslhXjK/2+/GXWvmiE5BhlZrePrXH863T2LAji
 hv3w==
X-Gm-Message-State: AOAM532Kt5P6YCvRrLM0EwZPEjzcCBRauRnm7iE0hjjcn5OXYOLlY9uf
 2G6oUVclXOJRMnvFehSV30qxv1FXhGMCaBYX3sOT
X-Google-Smtp-Source: ABdhPJxCnMMuL58nYu6fTmdEAISV5qEamhPuW63lyo5ERyRoWIudqU0rQgeZrHhfm+NaPcTZ3CjeV2CAQGJ51/I8SH4=
X-Received: by 2002:adf:e68a:: with SMTP id r10mr5092633wrm.384.1591813978084; 
 Wed, 10 Jun 2020 11:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200603153608.30056-1-alex@ghiti.fr>
In-Reply-To: <20200603153608.30056-1-alex@ghiti.fr>
From: Atish Patra <atishp@atishpatra.org>
Date: Wed, 10 Jun 2020 11:32:47 -0700
Message-ID: <CAOnJCUJSKvLDsXC8+wyO1xsZDzLJmjY2kwMKhjz0t+uS8h0pDw@mail.gmail.com>
Subject: Re: [PATCH 0/2] PUD/PGDIR entries for linear mapping
To: Alexandre Ghiti <alex@ghiti.fr>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_113259_296436_8B798086 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 8:36 AM Alexandre Ghiti <alex@ghiti.fr> wrote:
>
> This small patchset intends to use PUD/PGDIR entries for linear mapping
> in order to better utilize TLB.
>
> At the moment, only PMD entries can be used since on common platforms
> (qemu/unleashed), the kernel is loaded at DRAM + 2MB which dealigns virtual
> and physical addresses and then prevents the use of PUD/PGDIR entries.
> So the kernel must be able to get those 2MB for PAGE_OFFSET to map the
> beginning of the DRAM: this is achieved in patch 1.
>

I don't have in depth knowledge of how mm code works so this question
may be a completely
stupid one :). Just for my understanding,
As per my understanding, kernel will map those 2MB of memory but never use it.
How does the kernel ensure that it doesn't allocate any memory from those 2MB
memory if it is not marked as reserved?

> But furthermore, at the moment, the firmware (opensbi) explicitly asks the
> kernel not to map the region it occupies, which is on those common
> platforms at the very beginning of the DRAM and then it also dealigns
> virtual and physical addresses. I proposed a patch here:
>
> https://github.com/riscv/opensbi/pull/167
>
> that removes this 'constraint' but *not* all the time as it offers some
> kind of protection in case PMP is not available. So sometimes, we may
> have a part of the memory below the kernel that is removed creating a
> misalignment between virtual and physical addresses. So for performance
> reasons, we must at least make sure that PMD entries can be used: that
> is guaranteed by patch 1 too.
>
> Finally the second patch simply improves best_map_size so that whenever
> possible, PUD/PGDIR entries are used.
>
> Below is the kernel page table without this patch on a 6G platform:
>
> ---[ Linear mapping ]---
> 0xffffc00000000000-0xffffc00176e00000    0x0000000080200000 5998M PMD     D A . . . W R V
>
> And with this patchset + opensbi patch:
>
> ---[ Linear mapping ]---
> 0xffffc00000000000-0xffffc00140000000 0x0000000080000000         5G PUD     D A . . . W R V
> 0xffffc00140000000-0xffffc00177000000    0x00000001c0000000 880M PMD     D A . . . W R V
>
> Alexandre Ghiti (2):
>   riscv: Get memory below load_pa while ensuring linear mapping is PMD
>     aligned
>   riscv: Use PUD/PGDIR entries for linear mapping when possible
>
>  arch/riscv/include/asm/page.h |  8 ++++
>  arch/riscv/mm/init.c          | 69 +++++++++++++++++++++++++++++------
>  2 files changed, 65 insertions(+), 12 deletions(-)
>
> --
> 2.20.1
>
>


-- 
Regards,
Atish

