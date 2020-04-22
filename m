Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC741B4B5F
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 19:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wusMuCzCOgNE/tbim7i3xKE3Sz+pwQV3wAqrWzjMKTA=; b=gMvQ76k5/n7yhckR/uZTz7g/C
	j2yebOFmWNtGY83OT0E4h4NKZKUfiXigboOlWKOHNS85xKOL1FlB1QrR7U2pfGUa3jqq1dsQbovwU
	hR5xJSmeSiT25VejHmchCTSS+peh0f1/xrq1Tzn8UdA520zDU9qrOmk/TiNvdDf4mwpGQn6AfOiXI
	D8LcJLdR4nMbF0AYxSYuR7Tdy57yJ1WTvBam6dcZHjmpbr2/QeoaXyjyZnIDc/tGkbxabxUKoPB/K
	O1wQHA1Gs5u+YXNq8pUgNyKKJi+a7F4OYKzdOUMsw62/gLDplYgF6NZwQcJQNT8mQ/kIh0kGamk/K
	TtGS5myRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIux-0005Qe-Vo; Wed, 22 Apr 2020 17:12:11 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRIuv-0005Py-0j
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 17:12:10 +0000
Received: by mail-wr1-x441.google.com with SMTP id i10so3340291wrv.10
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 10:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=atishpatra.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wusMuCzCOgNE/tbim7i3xKE3Sz+pwQV3wAqrWzjMKTA=;
 b=jZTgMmJfLd/1drTCuZI3+rfJuAUXbxu8ZMVZUzD8+wEuWfyPQRyfuZbSXONQKc9ppi
 6xlyksnsAqhE3jdRZEa4+ZHCPiUpFMsqX495iK3R59cVYB4zHgfvVRzCgOCFHv2eSCG3
 jG4s8P3IVuQ15KNh09nOC2yNvcn5xkkH48nrZAfLk77BAdkP8yLNas663wjWF+ptzxVh
 bC9NcEXlJFBCg4DQ4FCLLrUOcHJNXA+g1j7DYw5HJVLeaTxtEJCUZPfhUx4+BRS/XJxV
 E6cwi4/BIgJ432VidIT3VjLON7OXluwU1zIqyikcfDgK6LFEfg2W0qJue/qZPLo1T4LG
 atRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wusMuCzCOgNE/tbim7i3xKE3Sz+pwQV3wAqrWzjMKTA=;
 b=W3/wAYmRP7sjICek6BR8T4XLyOQsD7SzLkO2BJNdJoijejXKbKDYh+j8C3aFzXK9nu
 1krpIO6uD2k8PXk6CY/cjPb6EB3g3Rk8K0J7pG1eguNH4J3UmpFdea94f5Pt5JucPOJH
 R6e5h9/D/KyXeV9k9WA2S0py1WkQxZnteQLubuI9chRC2AD8xffWSGZvFhhmYzuvTwJz
 xSU0vUejsk6oBBOmiNTB1WM9aKGm29nqoea9kVQMJ+FFqye0Ayb8pDT3vbqYD7ewPr9Z
 PQTmPat4jSmm1X7HxPxPjkHiL7LTGKjtC/pSSGWs0GSqbxqGEANLri1kpoK6vDb0iMls
 cbhA==
X-Gm-Message-State: AGi0PuapIITz/5scVgMdeqAXU5fmgVGG2oRz4o9OY93m5v7huX08cwZt
 de70yZt4DT0I6taNcw4uT2kI4RN21gh5Ph7eLQjB
X-Google-Smtp-Source: APiQypIGBxJbKw7218uMxugKO58xkHko96rBuX3JDTowaUMJDBQdPCadTEzIBR7IX84DhH5BspQSbz7ZzScXY7a/18Y=
X-Received: by 2002:a5d:4443:: with SMTP id x3mr72410wrr.162.1587575527779;
 Wed, 22 Apr 2020 10:12:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200413090449.36777-1-damien.lemoal@wdc.com>
 <CAAhSdy3o69RfVDu1XwNWMnpk6twLe7TM_UTT4OHAar70VtR4tg@mail.gmail.com>
In-Reply-To: <CAAhSdy3o69RfVDu1XwNWMnpk6twLe7TM_UTT4OHAar70VtR4tg@mail.gmail.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Wed, 22 Apr 2020 10:11:56 -0700
Message-ID: <CAOnJCU+WXcNw5wY=_bzf-eJv5pGdRwZUMuDNsH1UU51qJf0Uyg@mail.gmail.com>
Subject: Re: [PATCH] riscv: select ARCH_HAS_STRICT_KERNEL_RWX only if MMU
To: Anup Patel <anup@brainfault.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_101209_056271_2C76F815 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 3:21 AM Anup Patel <anup@brainfault.org> wrote:
>
> On Mon, Apr 13, 2020 at 2:35 PM Damien Le Moal <damien.lemoal@wdc.com> wrote:
> >
> > ARCH_HAS_STRICT_KERNEL_RWX is not useful for NO-MMU systems.
> > Furthermore, has this option leads to very large boot image files on
> > 64bits architectures, do not enable this option to allow supporting
> > no-mmu platforms such as the Kendryte K210 SoC based boards.
> >
> > Fixes: 00cb41d5ad31 ("riscv: add alignment for text, rodata and data sections")
> > Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> > ---
> >  arch/riscv/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > index a197258595ef..47691a9e3fd0 100644
> > --- a/arch/riscv/Kconfig
> > +++ b/arch/riscv/Kconfig
> > @@ -60,7 +60,7 @@ config RISCV
> >         select ARCH_HAS_GIGANTIC_PAGE
> >         select ARCH_HAS_SET_DIRECT_MAP
> >         select ARCH_HAS_SET_MEMORY
> > -       select ARCH_HAS_STRICT_KERNEL_RWX
> > +       select ARCH_HAS_STRICT_KERNEL_RWX if MMU
> >         select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> >         select SPARSEMEM_STATIC if 32BIT
> >         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> > --
> > 2.25.2
> >
> >
>
> Looks good to me.
>
> Reviewed-by: Anup Patel <anup@brainfault.org>
>
> Regards,
> Anup
>

I don't see this in fixes. I think this should be added to rc fixes.

-- 
Regards,
Atish

