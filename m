Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C591B1EB9
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 08:21:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkirgEO7Fq+NMC8oPjIVlSmMh+As/hMUFNWcguxE1dQ=; b=q937YvTj2cQ80k
	E/Dh4nuE9nVKf2S/wJaEZ/I3pY156/PScMVUlUB8Gq/wGuK4VmLvCr0qNn5CUvOh9Rz9NADq4IfZ+
	OjFI71s6vyFk73eH8vo0qHbuqVojVuztX/f4M7VyvnE3/PnqVzRuAAJsJ+k+RJB3KgYhPiiVQjsAG
	8zz3Px2FsiQTbueBiVTqa+Udo+kuKrvmfMrh53jWQCWLZ1w0Uv2liqeSxnMzkQxQRtPY07wTIHROV
	4EoNwE8RsZ9SYdR1oRa8gAUNjN8yOH8Xk2vpggSRTFHeMp8H1QhtLLZnMu9OGerxKLyJrWZuoHy9O
	Ynpvu8dpxVma+kZKKrnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmHE-0006sF-DA; Tue, 21 Apr 2020 06:21:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmH9-0006py-2z
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 06:20:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id u13so15057376wrp.3
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 23:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YkirgEO7Fq+NMC8oPjIVlSmMh+As/hMUFNWcguxE1dQ=;
 b=btuEYiTXkMbAbWo2V5lDgmJdH3r1AaVj/MfSy6+LLrqyqFlfuRYNZug1kHujsbuxuE
 i7136PZ2UgSQzw2mJ/b4EywNXrCsef27MkKhEcuHcChHCltv1arkWr2Wk+LQllY0koUa
 nwuncvdCyidAQCoxcDvuoxsBzvmx53agQHPyHOcOq3KHaUA3QDT9yBhkd12yvqTlQBV8
 uO/svQUNZd0yOVOLcntALZIr/MeRzRLe9wzSlU+h3LeDP721gcCD2bNRzQ1/DKug0wuH
 /2ekQUZtntbNvBh1Z6LDOYaX0rFQ+BPh5viVyHLMJ6SU8FcaEdt24pw8EOukJMVq4Wdt
 HAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YkirgEO7Fq+NMC8oPjIVlSmMh+As/hMUFNWcguxE1dQ=;
 b=TQOS6YpjZQGI4bDsITcy1OaWJxiBrjLHp3zMWQHl8pgl6gXNiLzlxxAKEbdbrHhZ2T
 uJR/aCxjom6h56KQ3H0ULi+TpyfX97H5CN2DWYQTQiiJ59TcOrWgyivW32mcPQSZWU4/
 b8sdYRwlJnnz+F05TPeYG+Ql6cjV42EnkkgevaFXa8bPtKRq0Ngm10hvJGUtkcPjO5HE
 PWkEFwPPikEC20wHC9Uam3nM1bYrp3enbaAkUlAiuYO6uCcGINjpeQtQlhiWDmblK7Bb
 i/Nd12mRwnmT+hmrhTphM88gG7NFbRvzojiAUT5U+/bPQ8f4YSDzYL9113zQaHqsLB2t
 eUAQ==
X-Gm-Message-State: AGi0PubQ+XRoaA5rZFTDlyebo9vedWa+lzZ9JBY+dnF4CN+ZCfvQOeID
 35dwWQpOVJ7Szj2MZ2/XLOG/zfMakNBDA6eXPj8zvA==
X-Google-Smtp-Source: APiQypJzCpRELizuzVA4FdCnZgerTYyzZLwhuujO8WC4l/YN83iXtngXh4zjl+gid12EevC94b10GjtiQEjWOBSXSAM=
X-Received: by 2002:adf:ee0c:: with SMTP id y12mr24396762wrn.0.1587450052318; 
 Mon, 20 Apr 2020 23:20:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1586332296.git.zong.li@sifive.com>
 <mhng-103aea95-cf25-47c5-8e8d-56534f40c570@palmerdabbelt-glaptop1>
 <CA+ZOyajXsNYZZwQgdV9Y2szN+=QbHu7GDA6Lc5iLk+92yx1WSw@mail.gmail.com>
In-Reply-To: <CA+ZOyajXsNYZZwQgdV9Y2szN+=QbHu7GDA6Lc5iLk+92yx1WSw@mail.gmail.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 21 Apr 2020 11:50:40 +0530
Message-ID: <CAAhSdy3K2+72FJs1hj1G5qWD4cYAoumHuf7UhMcQM3EeMrVpzw@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Support strict kernel memory permissions for
 security
To: Zong Li <zongbox@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_232055_181140_713D52A0 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, mhiramat@kernel.org,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 11:06 AM Zong Li <zongbox@gmail.com> wrote:
>
> Palmer Dabbelt <palmer@dabbelt.com> =E6=96=BC 2020=E5=B9=B44=E6=9C=8821=
=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8A=E5=8D=882:27=E5=AF=AB=E9=81=93=EF=BC=
=9A
> >
> > On Wed, 08 Apr 2020 00:56:55 PDT (-0700), zong.li@sifive.com wrote:
> > > The main purpose of this patch series is changing the kernel mapping =
permission
> > > , make sure that code is not writeable, data is not executable, and r=
ead-only
> > > data is neither writable nor executable.
> > >
> > > This patch series also supports the relevant implementations such as
> > > ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> > > ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.
> > >
> > > Changes in v5:
> > >  - Add lockdep_assert_held and more comments for text_mutex.
> > >
> > > Changes in v4:
> > >  - Use NOKPROBE_SYMBOL instead of __kprobe annotation
> > >  - Use text_mutex instead of patch_lock
> > >  - Remove 'riscv_' prefix of function name
> > >
> > > Changes in v3:
> > >  - Fix build error on nommu configuration. We already support nommu o=
n
> > >    RISC-V, so we should consider nommu case and test not only rv32/64=
,
> > >    but also nommu.
> > >
> > > Changes in v2:
> > >  - Use _data to specify the start of data section with write permissi=
on.
> > >  - Change ftrace patch text implementaion.
> > >  - Separate DEBUG_WX patch to another patchset.
> > >
> > > Zong Li (9):
> > >   riscv: add macro to get instruction length
> > >   riscv: introduce interfaces to patch kernel code
> > >   riscv: patch code by fixmap mapping
> > >   riscv: add ARCH_HAS_SET_MEMORY support
> > >   riscv: add ARCH_HAS_SET_DIRECT_MAP support
> > >   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
> > >   riscv: move exception table immediately after RO_DATA
> > >   riscv: add alignment for text, rodata and data sections
> > >   riscv: add STRICT_KERNEL_RWX support
> > >
> > >  arch/riscv/Kconfig                  |   6 +
> > >  arch/riscv/include/asm/bug.h        |   8 ++
> > >  arch/riscv/include/asm/fixmap.h     |   2 +
> > >  arch/riscv/include/asm/patch.h      |  12 ++
> > >  arch/riscv/include/asm/set_memory.h |  48 +++++++
> > >  arch/riscv/kernel/Makefile          |   4 +-
> > >  arch/riscv/kernel/ftrace.c          |  26 ++--
> > >  arch/riscv/kernel/patch.c           | 128 +++++++++++++++++++
> > >  arch/riscv/kernel/traps.c           |   3 +-
> > >  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
> > >  arch/riscv/mm/Makefile              |   2 +-
> > >  arch/riscv/mm/init.c                |  44 +++++++
> > >  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++=
++
> > >  13 files changed, 466 insertions(+), 15 deletions(-)
> > >  create mode 100644 arch/riscv/include/asm/patch.h
> > >  create mode 100644 arch/riscv/include/asm/set_memory.h
> > >  create mode 100644 arch/riscv/kernel/patch.c
> > >  create mode 100644 arch/riscv/mm/pageattr.c
> >
> > Looks like there are quite a few conflicts here.  Do you mind re-spinni=
ng the
> > patch set for me?  It's a bit early to spin off for-next right now so t=
here
> > might be some more conflicts, but hopefully not too many.
> >
>
> Sure, let me rebase it and send the next version. Thanks.

This series is already merged in Linux kernel and it is available
in Linux-5.7-rc2.

I don't see the point in rebasing this series or commenting on
this series.

If you have fixes then send as separate patches based on
latest Linux-5.7-rcX release.

Regards,
Anup

