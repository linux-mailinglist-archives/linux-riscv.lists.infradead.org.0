Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEE0A0DA1
	for <lists+linux-riscv@lfdr.de>; Thu, 29 Aug 2019 00:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=py7KJYbWusGl1Tiyz+ALBzRyzq2GX5NTU6XHDW31pgw=; b=P5DL0TBZSsEPNc
	t4yOS2WHgmZbegXH6nQXBuKs5eRaNU60XpYz+fpBvB3eG3zOWOgKtBqUgql/9nWbuaAIAraZVe7Yk
	DrhCsYYKZqZDt8ivHrKuZXyedRIKHNutc2UNEmEnNOFPtdIR9Ob8OfzqRboth8jkpf6uhcKub4qVI
	7srPwYrO9EQiLxDE6US1d3TXLdvnumJn8QCCyZNJ+glCKHOiTvzPMontTNS2NjLjEnNJy7273rYX7
	TIOETsJhn8Kw/uOhhz3S7DVjx81bK+QxclDE6m9njaQCsZHZyWM42embvpqk+3KgUWnlIfRoUg9SU
	5UEuL+K/9y4DJ5/FN6xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i36Vk-0002nw-IJ; Wed, 28 Aug 2019 22:33:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i36Vg-0002nG-Iq
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 22:33:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id y200so683104pfb.6
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 15:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=66PbkMb43wbFePH3agbP8gVcp9PdE3fuoyONvv239XQ=;
 b=fhxwaF26Wm3uShV8EW5J5fXTEdJvGmHs8vWkWAdYOkIH1kDl6rpTUHKsB97Cf0VnyC
 zgt4tRBx/+Sk78gKLTUpjLsj+QwOOc/W+bEYxFumrwPjI38Qk7qLljoVCMOGa54MXKmW
 JK3orfdUI4DRBu2ljL/QPVrQwLSEws7pXJVboyHfDsFk0cuqoGsakjx9lguvNeHxdcJu
 xtm0Rhy8KQKuux76x4KfCfv2NvspJ5Gzwbj6s5AwlZWiSV/wfOADWCa7yrkZMw+A2cUT
 r3RTY7ps6c947DLJUiZ0pCIptAH+an3QZeJ7BcsPRnZ/uDOeA9k1ccjBth22lgQ13IvT
 B/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=66PbkMb43wbFePH3agbP8gVcp9PdE3fuoyONvv239XQ=;
 b=CVnuFhCZie5SJQA8Xwv+5MhaPJ3jNU9lwVqENmA0QARrffSWvStwO1iqYyTwDQ/NQq
 d/a0R9P6LEIlKpMJhX9dr7srNCg5Ip48lI671CxQdsRyOjftyuEl9uUEHRLMf44Sbe7A
 eLP7bVOB1pUFSAQbNXvpR3u2C+X4F5w5EJh+ox6EB/wwIdb2/he7RGtxGCzVWQw/oLqJ
 HcgmcWJwmmQi89sFiBvKNsrcmsfddU2I+hzYRQ7/dGO3zcbHnUlM3NCXjItB/283MOrY
 A/psRbPRNuoNSGEv/E9K3YPOAdWtlNcAe1rxo/cZCKi0N7BJgDVisi0hjR1Yaw4oJ/gk
 +aww==
X-Gm-Message-State: APjAAAW8+73Vh6ktsttr7uk+nUfsb2Wh+lRWG0xmDZNPwriUtmmGt6yx
 /KgoXSRBupJw0sPXcQv2VDeL0g==
X-Google-Smtp-Source: APXvYqxTOiRNDO+k+BbIpv0/8yRNCFnmkuiNEmxI3IEa1o8dk3cZhV09PVMFEK8qrPHTNbD21MdJpg==
X-Received: by 2002:aa7:991a:: with SMTP id z26mr7426934pff.43.1567031627382; 
 Wed, 28 Aug 2019 15:33:47 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id p5sm397972pfg.184.2019.08.28.15.33.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 15:33:46 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:33:46 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v2] RISC-V: Fix FIXMAP area corruption on RV32 systems
In-Reply-To: <CAAhSdy0XALGpc-bCuO7njiBT3p-YvLqhMnRTRu4Hd4gMKeQMTw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1908281526410.13811@viisi.sifive.com>
References: <20190819051345.81097-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1908261704500.10109@viisi.sifive.com>
 <CAAhSdy0XALGpc-bCuO7njiBT3p-YvLqhMnRTRu4Hd4gMKeQMTw@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_153348_659392_9A20A16D 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019, Anup Patel wrote:

> On Tue, Aug 27, 2019 at 5:43 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Mon, 19 Aug 2019, Anup Patel wrote:
> >
> > > Currently, various virtual memory areas of Linux RISC-V are organized
> > > in increasing order of their virtual addresses is as follows:
> > > 1. User space area (This is lowest area and starts at 0x0)
> > > 2. FIXMAP area
> > > 3. VMALLOC area
> > > 4. Kernel area (This is highest area and starts at PAGE_OFFSET)
> > >
> > > The maximum size of user space aread is represented by TASK_SIZE.
> > >
> > > On RV32 systems, TASK_SIZE is defined as VMALLOC_START which causes the
> > > user space area to overlap the FIXMAP area. This allows user space apps
> > > to potentially corrupt the FIXMAP area and kernel OF APIs will crash
> > > whenever they access corrupted FDT in the FIXMAP area.
> > >
> > > On RV64 systems, TASK_SIZE is set to fixed 256GB and no other areas
> > > happen to overlap so we don't see any FIXMAP area corruptions.
> > >
> > > This patch fixes FIXMAP area corruption on RV32 systems by setting
> > > TASK_SIZE to FIXADDR_START.
> >
> > This part -- the TASK_SIZE change -- makes sense to me.
> >
> > However, the patch also changes FIXADDR_SIZE to be defined in terms of
> > page table-related constants.  Previously, FIXADDR_SIZE was based on
> > __end_of_fixed_addresses, as it is for most other architectures. The part
> > of the patch that changes FIXADDR_SIZE seems unrelated to the actual fix.
> >
> > If that's indeed the case -- that the change to FIXADDR_SIZE is unrelated
> > from the fix -- could you please split that into a separate patch, with a
> > description of the rationale?  I think I understand why you're proposing
> > it, but it seems odd to explicitly connect it to page table-related
> > constants, rather than the contents of "enum fixed_addresses", and I'm
> > reluctant to merge that part of this patch without a bit more discussion.
> 
> The FIXADDR_SIZE change is related to the TASK_SIZE requirement and
> it is not a separate change because:
> 
> 1. TASK_SIZE must be evenly divisible by PGDIR_SIZE. The FIXADDR_START
> is defined as (FIXADDR_TOP - FIXADDR_SIZE). The original FIXADDR_SIZE
> defined in-terms of __end_of_fixed_addresses is not a multiple of PGDIR_SIZE
> hence it makes sense to make FIXADDR_SIZE as PGDIR_SIZE.
> 
> 2. Let say we ignore point1 above then still we cannot continue to express
> FIXADDR_SIZE in-terms of __end_of_fixed_addresses because of cyclic
> header dependency where asm/fixmap.h includes asm/pgtable.h and
> __end_of_fixed_addresses is defined in asm/fixmap.h. We certainly need
> to move FIXADDR_TOP, FIXADDR_START, and FIXADDR_SIZE to
> asm/pgtable.h so that we can express TASK_SIZE as FIXADDR_START
> for RV32. If we don't simplify FIXADDR_SIZE then it will result in compile
> errors.


It would be better if we could stick to the same approach used by other 
Linux architectures.  That keeps things consistent across architectures.  
However, in the short term, as you note, the header file changes to get to 
that point are likely to be too intense for the late -rc series that we're 
in.

So, queued for v5.3-rc7.  Thanks very much for the speedy fix,


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
