Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA3947914
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 06:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tu701x4f+h2UjhLIWs3bRoGXHJVDYMdn6zQXyC5hQ34=; b=j4N/flAbRlptnV
	1KVru3L+0jJPwrCopB6WpJbwGWYc9iN0Ao0+q+yqM6Pv22Im5+q82A9teyykVy4nYhfif7xuc90zj
	hwxBe0KVSg0lUctaD9VXzSeE/jPkshZPha5r1t7oklzu1d1mJLFmXXnFRfBk64PhdrhqcWMGkrYIS
	ZGMEUdGYjkhPpUB0FoGAad8xTaGeI39lZBqVq0mPKeWtjn9g0K5caMKBh0V8uq4AWuSkYYQ9PKZFd
	HHlNW64coNxyWH9cNgkPdn1fJ8dnfedTwUrNwlFZELlTGKOjjLGIo/EIR8KraabzU8BlMd0zb0Vut
	ftZnMftNQr0wXMyyjGXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcjA4-0006Kx-GA; Mon, 17 Jun 2019 04:22:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcjA1-0006KR-AB
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 04:22:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so4984509wme.2
 for <linux-riscv@lists.infradead.org>; Sun, 16 Jun 2019 21:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l6hXSjeB4+WIPsk7dmb+VEl2oqT732lm//gUK7LuBXM=;
 b=RJORM4WZpvpTy8B7LJiMzfieOsaO/bI+8+/TZ8K2NPNdp1RpLVK1pExH0NyYtltYIY
 xSz4apJayL2ffK78TO+eesL02OkwTZMqIkEhaSVA0VIUVacurqlgG+ohmxWE+fEpnfs/
 ApyiAvHwe6de7ePNDSUGlf4VAT1LA6iPi5os5xHOJN42U3TEsxyaBJveBPqeNCLzYH7c
 p+h6hDJ9b08xkt4mQp+7htVXZv5s3obfVtRstSaNOAeZ/Eu2ahyH0opi3aVyUFaiAqZn
 1GdQDq7nWIQqXG81Y1xHEaFRke8AcelyJSexViHEyAi9iyPQs/e5KE3eO7o03O5BrcBe
 ytjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l6hXSjeB4+WIPsk7dmb+VEl2oqT732lm//gUK7LuBXM=;
 b=SPbbe3UNLpnXATRVDVBs2KqIR5hL0LFwK0CdLoX1OWG86mRZ4Sb3DQTQo5bHzAuKqk
 mp3awZBWcEvuX1kAHHxQ+z7+CXfg6UYyeeD9+5bXlf+QBTkcPlP00CZjq9w5Ybe6NgUT
 AOIdOTEyntuPK34UM978VP4KHfxaUot+uzMFVpriIdX3xE4NJfrixFUitSaaWwYzBytp
 7c5DbABBYiOgiCYYHaaYZP8yHB1I0WawCDTSyO7dN6HYhtmu17k9p0SL+wbqBedtNM1E
 hCCqWOQ++iQjFZ3bFbiZeCy9AigEkWJq2QrtCQIM/22wKAd5jjwbpYCGz/EYXhPTGJaK
 tFxw==
X-Gm-Message-State: APjAAAUcwRcaEYVXXLaXYpIBxGhGUXxV/YSsAG4MCd5aXf894x7JGCIo
 /e8HNgpmzh6g1bLHMuk6V66ngeqDuVKn5YbB1P+FOkDm
X-Google-Smtp-Source: APXvYqyuiMw0LO3g50xi/le6o3a6CorqdNpWQi2IKKbjAKF/jNiSWwPZeQmC6PjRnUuCYkHrNUGkbKZe2wALQ+ZoZ+E=
X-Received: by 2002:a1c:b604:: with SMTP id g4mr17360568wmf.111.1560745340761; 
 Sun, 16 Jun 2019 21:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <CALoQrwfqpaTQ=9F7CrLHKo-fJ7oEt45g3tiFG3E5jyAr5zT2Zw@mail.gmail.com>
 <mhng-29050ee2-db7c-4091-a9b4-503447fd25fc@palmer-si-x1e>
In-Reply-To: <mhng-29050ee2-db7c-4091-a9b4-503447fd25fc@palmer-si-x1e>
From: ShihPo Hung <shihpo.hung@sifive.com>
Date: Mon, 17 Jun 2019 12:22:09 +0800
Message-ID: <CALoQrwcP=KP2gupb0wyzZKByDZYtDNV4Jb=tcXAvXZNq81N5Pg@mail.gmail.com>
Subject: Re: [PATCH] riscv: mm: synchronize MMU after pte change
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_212225_358750_65D65384 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 10:40 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> On Fri, 14 Jun 2019 23:47:24 PDT (-0700), shihpo.hung@sifive.com wrote:
> > Because RISC-V compliant implementations can cache invalid entries in TLB,
> > an SFENCE.VMA is necessary after changes to the page table.
> > This patch adds an SFENCE.vma for the vmalloc_fault path.
> >
> > Signed-off-by: ShihPo Hung <shihpo.hung@sifive.com>
> > Cc: Palmer Dabbelt <palmer@sifive.com>
> > Cc: Albert Ou <aou@eecs.berkeley.edu>
> > Cc: Paul Walmsley <paul.walmsley@sifive.com>
> > Cc: linux-riscv@lists.infradead.org
> >
> > ---
> >  arch/riscv/mm/fault.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/riscv/mm/fault.c b/arch/riscv/mm/fault.c
> > index 88401d5..3d8fa95 100644
> > --- a/arch/riscv/mm/fault.c
> > +++ b/arch/riscv/mm/fault.c
> > @@ -29,6 +29,7 @@
> >
> >  #include <asm/pgalloc.h>
> >  #include <asm/ptrace.h>
> > +#include <asm/tlbflush.h>
> >
> >  /*
> >   * This routine handles page faults.  It determines the address and the
> > @@ -281,6 +282,9 @@ asmlinkage void do_page_fault(struct pt_regs *regs)
> >         pte_k = pte_offset_kernel(pmd_k, addr);
> >         if (!pte_present(*pte_k))
> >             goto no_context;
> > +
> > +       local_flush_tlb_page(addr);
> > +
> >         return;
> >     }
> >  }
>
> This needs a comment.  The rationale is essentially the same as
> update_mmu_cache().  In this case I don't think we want to directly call
> update_mmu_cache(), as if we ever decide that the eager fence over there is
> worse for performance (ie, on an implementation that doesn't cache invalid
> entries) we could drop that fence but we'll still need this one as I don't see
> anything that fixes suprious faults for the vmalloc region.
>
> This should also CC stable.

Thanks, I will send v2 that adds a comment as update_mmu_cache() does
and CC stable.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
