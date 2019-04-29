Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0D2ED1D
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 00:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSFh+o6HgR4oRT/oktPN/H3tvucR5QmECdcVvpYr+UQ=; b=cPMGEifqo0ZHV9
	7Xufi/GRrKVvycwMlrK1OuYs8WvR9tbVIx3nkm5pHia6mtZx0X24hb+cs4zSgkZPVTBIc3teR1Of0
	le7GTkonb9Htg9ArkRiW20sJXEWOAtKMdAB9a9s33OFIdnxfbBzxqaBhPazqb45GxrgdsJJjTfroo
	7Q7p1mHsNEu9rSj2pcutYzfOZd7nhFaIFNrSDH758g/5Vn90On49HUpAfwFs+Mz9KxYRmUHj7x6IM
	bbLTQfKJVxry3lxOdzqIRoIiJWw3qmj7mJLTS8B5B+veL4ZBwXNn7RpSc8bZK/gTBSk+3Wy5BbH8y
	wKOay4IbLqIswV1tL52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFFa-0008E4-SO; Mon, 29 Apr 2019 22:59:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFFX-0008Dd-7l
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 22:59:52 +0000
Received: from localhost (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B14FD2075E;
 Mon, 29 Apr 2019 22:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556578790;
 bh=meRJth1M+kiJPxxgh3MIc+0JTa73UcNp4kMSvaernzI=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=mQrWCbilGLcMz3ad21W/e5Nvwt9M4j93gDLvZx7ESiUWTOtj+WHaGoOcXY17uAbLB
 Fh94YvstIJydqRddm7wr2f/8N1uhi1A2dMr7BlahyqxjmoVpWG+AJKR3UPN48cRSLx
 5+ny+loJyCvtwx4YI1cbV1EpS0NJHAtDh5jqHqyc=
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1904291141340.7063@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155632691100.168659.14460051101205812433@swboyd.mtv.corp.google.com>
 <alpine.DEB.2.21.9999.1904262031510.10713@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1904291141340.7063@viisi.sifive.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <155657878993.168659.6676692672888882237@swboyd.mtv.corp.google.com>
User-Agent: alot/0.8
Date: Mon, 29 Apr 2019 15:59:49 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_155951_295631_2ABCDFE2 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Paul Walmsley <paul@pwsan.com>,
 Wesley Terpstra <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Megan Wachs <megan@sifive.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Quoting Paul Walmsley (2019-04-29 12:42:07)
> Hi Stephen,
> 
> On Fri, 26 Apr 2019, Paul Walmsley wrote:
> 
> > On Fri, 26 Apr 2019, Stephen Boyd wrote:
> > 
> > > Quoting Paul Walmsley (2019-04-11 01:27:32)
> > > > Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
> > > > block, as implemented in TSMC CLN28HPC.
> > > 
> > > I haven't deeply reviewed at all, but I already get two problems when
> > > compile testing these patches. I can fix them up if nothing else needs
> > > fixing.
> > > 
> > > drivers/clk/analogbits/wrpll-cln28hpc.c:165 __wrpll_calc_divq() warn: should 'target_rate << divq' be a 64 bit type?
> > > drivers/clk/sifive/fu540-prci.c:214:16: error: return expression in void function
> > 
> > Hmm, that's odd.  I will definitely take a look and repost.
> 
> I'm not able to reproduce these problems.  The configs tried here were:
> 
> - 64-bit RISC-V defconfig w/ PRCI driver enabled (gcc 8.2.0 built with 
>   crosstool-NG 1.24.0)
> 
> - 32-bit ARM defconfig w/ PRCI driver enabled (gcc 8.3.0 built with 
>   crosstool-NG 1.24.0)
> 
> - 32-bit i386 defconfig w/ PRCI driver enabled (gcc 
>   5.4.0-6ubuntu1~16.04.11)
> 
> Could you post the toolchain and kernel config you're using?
> 

I'm running sparse and smatch too.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
