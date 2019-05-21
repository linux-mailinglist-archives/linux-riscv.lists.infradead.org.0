Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E671A2491E
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 09:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nfkhpu6ho+S0alpguDyurbrGsjMc5KgC6g8LHS1Nh+U=; b=KnsM/BBrAL5o/I
	M1iGRLYI7jZ7kYNbUXPJGRy963tafc9mW1NSA02PGFFhlQZphC+lEgk/UU/eNUrBw4d7bLPyBnYCi
	Y4GhAtskvlizvxZeQoCDln3nB5wrc4RxizMROfgG+0I34Yo/AEX1bVVuSCtaRBpmQ0lDgATwFXdXp
	5QHc3xcHdEV/vtvG+d/IyiCL+fHPSYkyO76djC94Q2FgRN4CAp33C9SyR+dlOFwWEXTjbsz/B50SK
	KRccX1GmrdUZKd/Y8Xy4fPm+YEsvDcELdXW25dzYaucUH9DykRisI52zudkrtqmog2MfQgd8oOOD1
	cN+1r7WfCiVuDBOYY/vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzM3-0001Yj-9X; Tue, 21 May 2019 07:38:35 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzLw-0001OS-1o
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 07:38:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id c66so1646331wme.0
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 00:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hyv8dbu1hXdVe8oH/C/wgPhiFce8VkAWKoNE8lVkSkE=;
 b=2JxvFy0ZoOzBLDEIiB+zZywTTKxMZm8uWiW4+G2QZV9sw9JxK1R9VdWTIXtCLg1n+w
 nAMaeaocUuXeeHDF2xPoj/C9FWwLpOI9ywmD7LiOJ8OwG7c//6QVdfNtg74bHeM1R7Pe
 v1xEHkVaQqBDCGJYNl2QDNL7qqG4if2mvXLPT2ruJWXyyVHUmdIkZTzv/E9hv+0qZsLW
 GCHuhRGIi531rD0AN1hToSSqWuBHrEBXJDvbP+BqsaqNMuk6GH3kbjyiXVR5TebJRHQr
 7mMA4U1Ld45CAI226Na4YMcm2/qxMDEqEQZO6yLrbeyvnxJ6zlaxyo/zYkK/RDdPqrbj
 oWCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hyv8dbu1hXdVe8oH/C/wgPhiFce8VkAWKoNE8lVkSkE=;
 b=JoolgOMEtFO5OFQyVVd+gf36jE0BaesbAcEM9eCZBHE58/l7HjHNmWxH5sKKNMIeAF
 NqRWaKpOj7xJOmNb5C7q86X+0s2gyJsK/purVPoHJMIlxXymA8BI2Xu/4Aw+0PG6sWe6
 Sv3gvIPXexIhlnWax3ZQS7kRFx5KeBJ8OpvCI7wRyxgSI8m2O5iyABhVmatvAiVGq7vb
 KKBMQbBbbtpbspdZ9TDFPG2v4nLk3fbGmYYElVPLk/Dc9DxoLq6g6fHwbhFAzsKmULoo
 abwscqRWHK/s4lxS/dN+yi3JKtgBxzxGGINy/YTjDMwe/n0XvC2ctKhDAjVCphaXwICM
 FVvw==
X-Gm-Message-State: APjAAAUDwW51WSaLrSy3tBbugRzxdYA4cRAy8VxgS94Oa3OIIYdWBhpT
 rtC2Lvxnaf0w5qYfrdvT0rmTbYjQBi6vqLIm+4vP1A==
X-Google-Smtp-Source: APXvYqyP/kpDyd3HWL14CFb1aLrUrRlH/V5SRi6DWJCY7A1hpuXU2SkaVukqmredWu44P35iRvx6HnyqGZhTa6UVc8Q=
X-Received: by 2002:a1c:eb0c:: with SMTP id j12mr2117204wmh.55.1558424305961; 
 Tue, 21 May 2019 00:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190502050206.23373-1-anup.patel@wdc.com>
 <20190502050206.23373-3-anup.patel@wdc.com>
 <20190520114352.GA5372@infradead.org>
In-Reply-To: <20190520114352.GA5372@infradead.org>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 21 May 2019 13:08:14 +0530
Message-ID: <CAAhSdy2SRxMEaJE6WsP87KeXw_J1X-6eYAMV7j0bhEGgNcLiyg@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] RISC-V: Setup initial page tables in two stages
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_003828_636180_96F1BFA6 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <Atish.Patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 5:13 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> >  void __init parse_dtb(unsigned int hartid, void *dtb)
> >  {
> > -     if (early_init_dt_scan(__va(dtb)))
> > +     dtb = (void *)fix_to_virt(FIX_FDT) + ((uintptr_t)dtb & ~PAGE_MASK);
> > +     if (early_init_dt_scan(dtb))
>
> FYI, parse_dtb in mainline now lost the hartid argument and takes a
> phys_addr_t for the dtb address.

Okay, this patch is based on 5.1 kernel. I guess I will have to rebase
it anyway.

>
> That being said I find the above way to magic.  So we take the fixmap
> address and then only the offset from something passed as a pointer?
> This just looks very weird.  The way FIX_FDT is defined to add to my
> confusion, which might partially be due to not understanding fixmaps
> very well.  But it seems like at very least we should set up an
> actual kernel pointer for the dtb in setup_vm based on what that
> gets passed and stop passing any arguments to parse_dtb to keep
> that magic in one place.  And possibly add some comment.

I agree with your suggestion. I will setup early_dtb_ptr in setup_vm()
and use it here.

FYI, the fixmap virtual address range is not covered by linear va-to-pa
translation (i.e. __va() and __pa() cannot be used). The mapping
granularity of fixmap is always PAGE_SIZE hence add offset to
fix_to_virt(FIX_FDT).

>
> > +#if MAX_EARLY_MAPPING_SIZE < PGDIR_SIZE
>
> It seems MAX_EARLY_MAPPING_SIZE is defined to a fix constant,
> why do we need these conditionals?

Sure, I will remove the conditional. It's totally redundant. I forgot to
remove it previously.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
