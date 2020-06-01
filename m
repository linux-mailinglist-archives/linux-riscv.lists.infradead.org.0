Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B0C1E9C77
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 06:20:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8gaMeZxKRbbnoVLMQF6dqM6cOYIG1D5PJgYvrar+GJw=; b=AQM2rYQVutl+ho8544iZuzKpn
	bR4PLsvJtd2j5pw/c+dN3IN8myAGZvUfQhvHPjJegM1VGnrsAy2JXkRFTnMqQt1PpykNCRYp3XLqs
	8wmmplX0ttOD2kyGN1JMoRT53YmsAKof6WGSwMRkt1aJp5KRjAZcMVkMR58EwIkPPMtugB4l31EWz
	xO0fx4zh5rnRfKovohD2J80WHG2VzJOziPQb3nft903LgT5mT8UswTv3ElB/kJ50Ntnx0D9stQc2K
	VGzfjxv71MAEZdBDf9R6bIC+t8jg9287tKTg+penBxqMLd26dbmBPL2myyAIDchoOD2f5Kxe6TUxU
	WyRu4pUXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbw6-0000FJ-1y; Mon, 01 Jun 2020 04:20:30 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbw2-0000Ep-NS
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 04:20:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so1750814wmh.4
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 21:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8gaMeZxKRbbnoVLMQF6dqM6cOYIG1D5PJgYvrar+GJw=;
 b=xwRDj4p2YorlEnHTACn3XXVJQgsANhpObQcpjzC94GITlGstEOoiXLrC9N0kcg9uCT
 8Q7bJusUHFS6AALVDmmxwiqw/+UIBfFGOzmzom09Ixj5/SNMY45MAUSTUg56uwscGso/
 TNMYvsEhs9y3upvTHpG9Wu8hQ1w7c5ZEEfvt8tjj0w9fTYgA4cL/+sa4EtQDC4js9bQD
 zip8ZVFQGYKY1iBos5h1OVHEMQgJODeH3DUZi2qoiX6lHn5jrosM5Zl7GLMRPtGO/3NP
 WbOiNeiwzb2/uz3BRP+iefC+FQe/PnDH0F3L0ukmg9MBhPNEgWANuZum4wQ4ZJ+bzs/J
 GfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8gaMeZxKRbbnoVLMQF6dqM6cOYIG1D5PJgYvrar+GJw=;
 b=g0dvgy/Puj07tm9TE9yFmCOx9qaqF8jvlkuop1JY/7Ez/iDwGnuPaVEUm62ehXAx/+
 Q/9hq4KuQ/2Vt78QI9ltY1g26UeyKIyZKVoSPw6u5xfzZgMoWQucBfG7r+WGqpm7UaCq
 wNhiZAfYt69Leyq3GLp678ZdgUx5ranwuOh+LJN659y20LwRY5fzwIFl7QkGODEE0BYJ
 PoRCBDe+q7VWXgQP8wcd/ZWvnIn/c0Mwph3i0LBZNVq7Wm4NIrbTe6TRkWZjaOi4u4TW
 MRNPEmRikViedblkGlP/g8JBXZIhkhCROGtOY4Pstj+jvqRI0MFaAsB2mJNW6lyMebEw
 sDyA==
X-Gm-Message-State: AOAM531EY45mOzOsQYIpSRNRdfHhVGLNHPKycZ5mZssFgAmwHGr/Hdt8
 jEzm2bSa9RJd60cru9l14Z4vHXZa3yJr0SAaIAgXlA==
X-Google-Smtp-Source: ABdhPJzo7iLG02tKKWTkJMhu/UxFu4NxgWLfYWaCeH4TxLc/E/khLp5PztuHnrvqowmY+ODxYov7L2PUtXa41zGmW1Q=
X-Received: by 2002:a1c:a3c5:: with SMTP id m188mr8963040wme.152.1590985224670; 
 Sun, 31 May 2020 21:20:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200531095748.753388-1-anup.patel@wdc.com>
In-Reply-To: <20200531095748.753388-1-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 1 Jun 2020 09:50:13 +0530
Message-ID: <CAAhSdy2aoHkJL6Rj5yEE_xvsH-UDv=Cya3b_6CWORZeTqeWPbw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Don't mark init section as non-executable
To: Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_212026_766076_DB4C43B9 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 stable@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, May 31, 2020 at 3:28 PM Anup Patel <anup.patel@wdc.com> wrote:
>
> The head text section (i.e. _start, secondary_start_sbi, etc) and the
> init section fall under same page table level-1 mapping.
>
> Currently, the runtime CPU hotplug is broken because we are marking
> init section as non-executable which in-turn marks head text section
> as non-executable.
>
> Further investigating other architectures, it seems marking the init
> section as non-executable is redundant because the init section pages
> are anyway poisoned and freed.
>
> To fix broken runtime CPU hotplug, we simply remove the code marking
> the init section as non-executable.
>
> Fixes: d27c3c90817e ("riscv: add STRICT_KERNEL_RWX support")
> Cc: stable@vger.kernel.org
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/mm/init.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index 736de6c8739f..e0f8ccab8a41 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> @@ -482,11 +482,6 @@ static void __init setup_vm_final(void)
>
>  void free_initmem(void)
>  {
> -       unsigned long init_begin = (unsigned long)__init_begin;
> -       unsigned long init_end = (unsigned long)__init_end;
> -
> -       /* Make the region as non-execuatble. */
> -       set_memory_nx(init_begin, (init_end - init_begin) >> PAGE_SHIFT);
>         free_initmem_default(POISON_FREE_INITMEM);
>  }

I just realized that updated free_initmem() over here is exactly
same as generic free_initmem() defined in init/main.c so it's better
to remove free_initmem() from here. I will send v2.

Regards,
Anup

