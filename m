Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A219ED297A
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 14:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGrlrNg2CtF2Bo5bYMspH5wBay43zXWiadMlvyu40nk=; b=KnaLUTKGiEOXhP
	/UB6yjjdS1/H9s32U6TzFBk1fHeDEn1KyALjr8EhjflACiZp7Sbk8LLd9GmlEfn1zoVGtYd1WvITR
	AmdInEMm+4fr5UKflQoqxLEgBu5uvNdj8SbuVbV9mn7MonhNKt1Urpyq2VgV4I+huYmJxohu4V0nl
	OglHZ/aBTA9nFGRdF3pbif97jg4D0Fnuxv77lLEZ5z4vDinRJqp7W6ZtBccmlrPNzAXk1RXdXcamb
	vhXzvt0wkGP3YX7PEkJGzgVVXTlehkho3pdGAJFqtFreb17cUAqPhqmsio2YYqdN+kDVWJ7M/iOgW
	iiRbuGVOl7/wT74/hQPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIXZC-0006AR-N6; Thu, 10 Oct 2019 12:29:14 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXZA-0006A8-Jt
 for linux-riscv@bombadil.infradead.org; Thu, 10 Oct 2019 12:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=23//cENVQiVYoGQZus1cpePnZWSeYRa3XeMxkFD7WQg=; b=EDWmcJHZS2nbUVjsd7wgcF44K
 j1MFv9Dm8vJuk0iW3XrfUGPDjbP6ZLy/U4QTOuoHHcIrKTaWxLgTNL5TMonErM3tOzRLQvOjHmztU
 MfWrwCOIFT44NshCKGcrNLIEOw9lhCIfdfnDEng/vtp1M7DO3PNU6DxFTbAE18WFk22DBPrjLcL84
 dsAEtOz4qz1tZaGM7ODc1sGSRYjCSCqqSdO5A92S1JvwOXFojYNm/4+teu0KOxNEcszHaeEnuAfCT
 1JX4sm49XlNf9ystKaUAb7AKt+V6rTuk7fF71kxo0ZoJaxXVu/bp1KrDl5AECGzP/1wyfDcwbN8RY
 GkuhoLqWw==;
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXZ8-0007HQ-In; Thu, 10 Oct 2019 12:29:10 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 175E641199; Thu, 10 Oct 2019 09:29:08 -0300 (-03)
Date: Thu, 10 Oct 2019 09:29:08 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ian Rogers <irogers@google.com>
Subject: Re: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
Message-ID: <20191010122908.GA19434@kernel.org>
References: <20190927214341.170683-1-irogers@google.com>
 <20191001003623.255186-1-irogers@google.com>
 <20191008123104.GA16241@krava>
 <CAP-5=fUSgjyLkZJaHTvdFbzZijy6Gzmx5UZHK_brxVEhFpMG8g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP-5=fUSgjyLkZJaHTvdFbzZijy6Gzmx5UZHK_brxVEhFpMG8g@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Andi Kleen <ak@linux.intel.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Palmer Dabbelt <palmer@sifive.com>, LKML <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Guo Ren <guoren@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-riscv@lists.infradead.org, Jiri Olsa <jolsa@redhat.com>,
 Mao Han <han_mao@c-sky.com>, Kan Liang <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Em Wed, Oct 09, 2019 at 04:07:37PM -0700, Ian Rogers escreveu:
> On Tue, Oct 8, 2019 at 5:31 AM Jiri Olsa <jolsa@redhat.com> wrote:
> > On Mon, Sep 30, 2019 at 05:36:23PM -0700, Ian Rogers wrote:
> > > Being const + weak breaks with some compilers that constant-propagate
> > > from the weak symbol. This behavior is outside of the specification, but
> > > in LLVM is chosen to match GCC's behavior.
> > >
> > > LLVM's implementation was set in this patch:
> > > https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646
> > > A const + weak symbol is set to be weak_odr:
> > > https://llvm.org/docs/LangRef.html
> > > ODR is one definition rule, and given there is one constant definition
> > > constant-propagation is possible. It is possible to get this code to
> > > miscompile with LLVM when applying link time optimization. As compilers
> > > become more aggressive, this is likely to break in more instances.

> > is this just aprecaution or you actualy saw some breakage?
 
> We saw a breakage with clang with thinlto enabled for linking. Our
> compiler team had recently seen, and were surprised by, a similar
> issue and were able to dig out the weak ODR issue.

This is useful info, I'll add it to the commit log message.
 
> > > Move the definition of sample_reg_masks to the conditional part of
> > > perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
> > > weak symbol.

> > > Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
> > > In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
> > > don't declare sample_regs_masks.

> > looks good to me (again ;-)), let's see if it passes Arnaldo's farm

It passed a few of the usual places where things like this break, I'll
submit it to a full set of build environments soon, together with what
is sitting in acme/perf/core.

Thanks,

- Arnaldo

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
