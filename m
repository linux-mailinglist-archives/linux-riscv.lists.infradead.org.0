Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A453DBB9B
	for <lists+linux-riscv@lfdr.de>; Fri, 18 Oct 2019 05:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtDpl2daYcryzpjBt/+AXrQSrk1xkR4dLgIStbhvB5o=; b=mkAyXq60E8TTeu
	etILZIzNxHJqhLHcnQjNnmW1JowdXKS0FGJSRliASZTVhhuq6vmtcz6tOlYtq3kG3PQDJLREkNuzC
	eaJSuAhdpmVQEWq6tjpwzGDSMTX2SW25a6//O0u9pzHl90olnoGI52wH/TEXLoCGsFr5Ti0xiQGsf
	VUHWgsdC6dDTfPu0y4AYvJ0s4Fm1MFtkYP+VggqB2n6pf2BkX/TqY5gLFv4KAyE1AnYBme0wwbzTO
	dF8ZjE2vrqVLlFMt5jdznGCA/YHTwLzcOjWRUbqpRci+mTES7rOFgqcgYiGFysJ86u56FKfLQSHXb
	n+Wb/62ZyGUWirkBUFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLIhS-0008JW-P8; Fri, 18 Oct 2019 03:13:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLIhO-0008JA-VV
 for linux-riscv@lists.infradead.org; Fri, 18 Oct 2019 03:13:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so4561003wme.1
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 20:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w0COLG3bzK0o6jYLfbxydoFv6NkgXFj1ig3oopc83YI=;
 b=e+okOhtzP6+13ZVb52oUedSHNdXUvAj+AaZgTFlk49vnQCzXFWXRCp9LgLioHHfXd8
 P0+MALJgEg5o7L5bPbaStznc4116PcXBbQ4NkJPUE9uzUlYWAoX3j0Zd3SxFoaEwRDlY
 /2/myoHstRdz1soYjTJxepkrx+jWOHP8oQbO6rxJWdSA/hgTHt6qQEQRbZr9o4iHGci2
 RYqKDsnIRRBm+lSwMsEDA8DLEcdoDIUTzVuQTGQI8+aFconpNYREGVcZqXfgOXPLdMuV
 /lnMuNyyTT4C4UK/2V6PLZ57g0/mS5ZC6y9K9caJ5eyIc7+HuQdgcWfupFikyGTHtclB
 +L6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w0COLG3bzK0o6jYLfbxydoFv6NkgXFj1ig3oopc83YI=;
 b=JtbpMlZxKeZiZO/4I3xr/UOVdDOdB4xr4jV08Kcv3dAOjTuc+PYfcatgmqI3K+vCUi
 lGbTeULqa/4xhVroKl5a6YE1ZNE0NSz8l2TFSr6olCUku7P4RsX9Gts4DYxmyC11KOFa
 e0/Hb2hT7czePst3p/nq/VwkhIRo2lc7CH22O6JKsum9TzNSmCddrW0mvqhWXUpB8N+j
 AD49mLSAEK6W22VTQR+e3kjM90eDAacqEMWgFBlp9tkZR/X5+bzzn56d2BjEqMFqvoMZ
 +seFZSbWRRsDO4p18rBcB0rvc2m+EaWZnr+AJ66/tlCrJn2ieiWl8+t2eMfTDdi/rBhp
 Dltg==
X-Gm-Message-State: APjAAAWrXqOWlbvQ6JQd2gIXPrlH9xa2xnxSjl2Zx0gmKsFEr22eBDgz
 EyzwAIkmfyv6k+KEAHT9xDY1rVh5G08hmLKajyb81g==
X-Google-Smtp-Source: APXvYqyaR6UdSsHoyTJfsRK0dDrdvlBOrSURqeguij/ZiiwiHZQ6f3cnRfyt6TgwuU56l7HPTB9yMUbOtPbu8y2CrzQ=
X-Received: by 2002:a7b:c775:: with SMTP id x21mr5632921wmk.52.1571368385118; 
 Thu, 17 Oct 2019 20:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191018004929.3445-1-paul.walmsley@sifive.com>
In-Reply-To: <20191018004929.3445-1-paul.walmsley@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Fri, 18 Oct 2019 08:42:54 +0530
Message-ID: <CAAhSdy2nX2LwEEAZuMtW_ByGTkHO6KaUEvVxRnba_ENEjmFayQ@mail.gmail.com>
Subject: Re: [PATCH 0/8] riscv: resolve most warnings from sparse
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_201307_013268_BCDADDCB 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 6:19 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Resolve most warnings from the 'sparse' static analysis tool for the
> arch/riscv codebase.  This makes life easier for us as maintainers,
> and makes it easier for developers to use static analysis tools on
> their own changes.
>
> This patch series incorporates some changes based on feedback from
> Christoph Hellwig <hch@lst.de>.
>
> Applies on the current riscv fixes branch that is based on v5.4-rc3.

This series certainly conflict's with Christoph's NOMMU series so
please rebase it on NOMMU series.

Regards,
Anup

>
>
> - Paul
>
>
> Paul Walmsley (8):
>   riscv: add prototypes for assembly language functions from entry.S
>   riscv: add prototypes for assembly language functions from head.S
>   riscv: init: merge split string literals in preprocessor directive
>   riscv: ensure RISC-V C model definitions are passed to static
>     analyzers
>   riscv: add missing prototypes
>   riscv: mark some code and data as file-static
>   riscv: add missing header file includes
>   riscv: fp: add missing __user pointer annotations
>
> Kernel object size difference:
>    text    data     bss     dec     hex filename
> 6664206 2136568  312608 9113382  8b0f26 vmlinux.orig
> 6664186 2136552  312608 9113346  8b0f02 vmlinux.patched
>
>  arch/riscv/Makefile                 |  2 ++
>  arch/riscv/include/asm/irq.h        |  6 ++++++
>  arch/riscv/include/asm/pgtable.h    |  2 ++
>  arch/riscv/include/asm/processor.h  |  4 ++++
>  arch/riscv/include/asm/ptrace.h     |  4 ++++
>  arch/riscv/include/asm/smp.h        |  2 ++
>  arch/riscv/include/asm/switch_to.h  |  1 +
>  arch/riscv/kernel/cpufeature.c      |  1 +
>  arch/riscv/kernel/entry.h           | 29 +++++++++++++++++++++++++++++
>  arch/riscv/kernel/head.h            | 21 +++++++++++++++++++++
>  arch/riscv/kernel/module-sections.c |  1 +
>  arch/riscv/kernel/process.c         |  2 ++
>  arch/riscv/kernel/reset.c           |  1 +
>  arch/riscv/kernel/setup.c           |  2 ++
>  arch/riscv/kernel/signal.c          |  6 ++++--
>  arch/riscv/kernel/smp.c             |  2 ++
>  arch/riscv/kernel/smpboot.c         |  3 +++
>  arch/riscv/kernel/stacktrace.c      |  6 ++++--
>  arch/riscv/kernel/syscall_table.c   |  1 +
>  arch/riscv/kernel/time.c            |  1 +
>  arch/riscv/kernel/traps.c           |  2 ++
>  arch/riscv/kernel/vdso.c            |  3 ++-
>  arch/riscv/mm/context.c             |  1 +
>  arch/riscv/mm/fault.c               |  2 ++
>  arch/riscv/mm/init.c                | 17 ++++++++++-------
>  arch/riscv/mm/sifive_l2_cache.c     |  2 +-
>  26 files changed, 111 insertions(+), 13 deletions(-)
>  create mode 100644 arch/riscv/kernel/entry.h
>  create mode 100644 arch/riscv/kernel/head.h
>
> --
> 2.23.0
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
