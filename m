Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FCE91C2C
	for <lists+linux-riscv@lfdr.de>; Mon, 19 Aug 2019 06:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUIBf31nynZAfFRpabFAzpe/JxqyRyFKUSotSAXVzjo=; b=B5i6DluNM0c/Eq
	4lgOrVpj/KYNLVWTlKkKot9b1uEQoi2Hc2ahMsBS8mjF1d4D/e1dYcuOmnrSCIeOUtICghSBhedKg
	thaVuVANv/TDQeawTsOMcXRznp/EqT5Z5XBKqXrUVXuxPUm5MUjn0zCoIFeTzO3zjSdfquBLD5bh3
	WLpy+4zHgGslqxr3P7H2hMtpAAZDGpV4h0f2/QxXcwQRuA2NYqyGK/gd3OUpgTfgM/RUSxkqi3y2m
	lrRBgZkVHBuGSHcKRBgmOejX7M9fApZv5rkFxca9703pS9T6ld8j0s2tuLyuU+EM/4YBkq1Se+hVQ
	/o/enUmvQccO/Kc/zbkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzZba-0001JX-Up; Mon, 19 Aug 2019 04:49:19 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzZbX-0001Ip-5A
 for linux-riscv@lists.infradead.org; Mon, 19 Aug 2019 04:49:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id i63so369045wmg.4
 for <linux-riscv@lists.infradead.org>; Sun, 18 Aug 2019 21:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=60R/A+kC11q0AvPf3oQzvFsQ9aUEzwZLL3SNB5rWKEw=;
 b=nL8FCkBRIA9ZswKPpogtISq5zl3WUFiheZbLSi4QEdbvtLimsxQoQLIeMP5JtAlFDb
 ykekZsfnKLDai2fFfF6b69ku6rZ1zeROwWKbI1b80N6JfI5MB8jllwsI5CFVXgQuuuxN
 e9UCBmJsfHCY8xOf0ovTQbF9ScYF5/EckXpbRiSxJ3tI8PWZ3Tceg/KpRmzFp9H0hT/h
 WP6bXwT6hKDIXh27OqGvbD8AYcnweAMzQLz8+kZVzsJPT0fkkD8qOmmPWNI6aikATE3u
 39AKL36oW88Kc2Qvtj9T1hqdFnJN3ANrwExyfgA+wg1rrEtxGzcqwoRbpbzWelINbDYn
 rBpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=60R/A+kC11q0AvPf3oQzvFsQ9aUEzwZLL3SNB5rWKEw=;
 b=T/RuTow5RTKC6jDXxCEfsWXlOZdN2Jvo440Y4RXFJlxCuci8KFtqluyQL5VOJy8hm6
 d7nQYmguLB1sjl5XgCgzYBO55acdA707zyrV0qAbc8nUhWvOL6BxBQRig780S3dUWBwB
 0Kn0XiJtHhT6I0KuqnPeEUKTQ+DrLtS8blU9ikrjEMDCG1AZkl6+gwGB9jbEP7xUb4AH
 pwjdWfGQzjipSnl2yZQiRT5TdDzULR9eX9Nc4Z4GsF3SoOGOLP94crpno7AwYsueemy3
 hOURr3C8lkQ2AoW6VgbWiIHTDcD3e65ahyw11WVMSVPOAjOUOus4q9tRomNVtp62PPYa
 dFvQ==
X-Gm-Message-State: APjAAAWkMeu8Xvh7Qk1XWfCmkHiZNnVRLO34+IXssCm5Ny2oPh7fHJ2+
 7DCHEUBIBqaDv9gWnIeqrEJURflgk9nu7dPDIR9VLQ==
X-Google-Smtp-Source: APXvYqxjwK3ZIYOpOhKcI+ZBVXW0UrOARuiEJ/I30F5R0lum5iB1rSe5G2ZIrcY+TLebQjGbo3iHZYOLbYqMwmqWLr8=
X-Received: by 2002:a1c:c909:: with SMTP id f9mr5518379wmb.52.1566190152793;
 Sun, 18 Aug 2019 21:49:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190816114915.4648-1-anup.patel@wdc.com>
 <20190818181914.GB20217@infradead.org>
In-Reply-To: <20190818181914.GB20217@infradead.org>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 19 Aug 2019 10:19:01 +0530
Message-ID: <CAAhSdy1arxoekV4p3so=2PtTtBCvT61sz+uDbaZ=e11p7b5DXg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Fix FIXMAP area corruption on RV32 systems
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_214915_202526_BD8DA26D 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Aug 18, 2019 at 11:49 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> > +#define FIXADDR_TOP      (VMALLOC_START)
>
> Nit: no need for the braces, the definitions below don't use it
> either.

Sure, I will update and send v2 soon.

>
> > +#ifdef CONFIG_64BIT
> > +#define FIXADDR_SIZE     PMD_SIZE
> > +#else
> > +#define FIXADDR_SIZE     PGDIR_SIZE
> > +#endif
> > +#define FIXADDR_START    (FIXADDR_TOP - FIXADDR_SIZE)
> > +
> >  /*
> > - * Task size is 0x4000000000 for RV64 or 0xb800000 for RV32.
> > + * Task size is 0x4000000000 for RV64 or 0x9fc00000 for RV32.
> >   * Note that PGDIR_SIZE must evenly divide TASK_SIZE.
> >   */
> >  #ifdef CONFIG_64BIT
> >  #define TASK_SIZE (PGDIR_SIZE * PTRS_PER_PGD / 2)
> >  #else
> > -#define TASK_SIZE VMALLOC_START
> > +#define TASK_SIZE FIXADDR_START
> >  #endif
>
> Mentioning the addresses is a little weird.  IMHO this would be
> a much nicer place to explain the high-level memory layout, including
> maybe a little ASCII art.  Also we could have one #ifdef CONFIG_64BIT
> for both related values.  Last but not least instead of saying that
> something should be dividable it would be nice to have a BUILD_BUG_ON
> to enforce it.
>
> Either way we are late in the cycle, so I guess this is ok for now:
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
>
> But I'd love to see this area improved a little further as it is full
> of mine fields.

I agree with you. We also have Sparsemem and KASAN patches which
touch virtual memory layout so it's important to have virtual memory layout
documented clearly. I can add the required documentation as separate patch.

I think the best place to add ASCII art would be asm/pgtable.h where all
virtual memory related defines are placed. Suggestions??

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
