Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A166AFFD5
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 20:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGeWwaTl9hIQgoR5gC789/zbIB5++HPCnxR9AVF6d9k=; b=TOuWizSvnkraJd
	yTc4CATAiT/T8Jc4eB5GYfdqvrN4+Kxwu6nQZyvh2o/OvhicPdW82QjqhrJcA4cmWM5Fn/jNzISRx
	5e1bT+tscrASZqB+zlr15lkyYAOUFaHV6Y/FyKZmUuTAhAD6DXA5QAMCg04qur+EF0N2l0vP2Efru
	P9Ya/PXmF1OYWcIkxJYx4sMHIE2iwl+lQJZSH34ew6QvHUiPigzbI8G0TNwMUbORJoczssexuPmoe
	V/nf9XvybafWhjxfUGNrVtSpHhSkcUZxMe4nkn/ZKyQNkOu6b019qUDayzYy4klrHjwTnGtpp7JAa
	Tfw0SEcteVNCgen8hY1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLXih-0000p6-29; Tue, 30 Apr 2019 18:43:11 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLXid-0000oY-2U
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 18:43:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id h26so13158962ioj.1
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 11:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=DLjxUveV79/tHlmvW7ccnABKpIkFLlfeyoe8liucNic=;
 b=bQErha4EjiqJxeUe/P9SK3n/xxmcbiBLR5l5w1XVpEEBjl7QZYqpRj+9h9kxiG2rgK
 1VdF2h9RK9nLj84vXUfJiWNpLmEWovRidP1FT+DQ9cpWymF0fBCsO1BFVXPRn8n4RKxX
 F2T/FAff9rmIWgf/RoN/sbKtK9jZazHWSAE73Mx3uRcXKOAf3ryoZ3wC6ENAPmmJtn0Y
 wzVzOKZnRFsSboA44cwHYarKn0G1sU+ofNn0ibC77BPFE2wGvvXx2aWCrtAFVY5CgKI0
 uwEpJ3JRZMpFgw0Nob+qPPIuEJkkqfxaO917awDUuacRIbUwChHKMncdRXoSqZiH+maR
 jouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=DLjxUveV79/tHlmvW7ccnABKpIkFLlfeyoe8liucNic=;
 b=ZwCY4NZRoLQA4mGvU6CDBWnrnztnNcX/q0VhLqFoCobr5EB32l9/iVHEyhLs+pG9wV
 CPPeY/rBDeCwOxxNrtv91BSkv2g6DI/6fos9YLVKHOsvdRWHtyE76moNcb0rchGjq7x5
 c8voUj5rvO/JKxMCs3KUW/cs/T6KNii0Q6Eumh3CvCK5ezKPFHsMwF2QgqcbHj+mxkjF
 +NNLkR1ufi3GDffNvoQIZ2rFxRGMRv4YcqwNuxUv+m0K/j7rsHmm+/kYfg+Rn6Obeip/
 eq5Ok6jLvCg6EhDWk2s5T1wSIuphyl0Ti+AVdtav8GP9li/BXWLFqWdIpftyhTmUspd1
 /zjQ==
X-Gm-Message-State: APjAAAU73P7fsswwy7p7+8XaCC+WnhiB9pzxxdBrGEkUXXEoTiLi+r+9
 eFQHmct7tXWWs1KpNr0zgCqokQ==
X-Google-Smtp-Source: APXvYqzGhGKQGPue8kK8kj48O6yd673gTEubxpzNdjb5TQdDGz6d5hXCIN+puIhxJSsx+8sbr+znfQ==
X-Received: by 2002:a6b:6004:: with SMTP id r4mr9495485iog.8.1556649785559;
 Tue, 30 Apr 2019 11:43:05 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 c7sm12214445ioc.63.2019.04.30.11.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 11:43:04 -0700 (PDT)
Date: Tue, 30 Apr 2019 11:43:03 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
In-Reply-To: <155664891171.168659.10903540623861208390@swboyd.mtv.corp.google.com>
Message-ID: <alpine.DEB.2.21.9999.1904301142521.7063@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155632691100.168659.14460051101205812433@swboyd.mtv.corp.google.com>
 <alpine.DEB.2.21.9999.1904262031510.10713@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1904291141340.7063@viisi.sifive.com>
 <155657878993.168659.6676692672888882237@swboyd.mtv.corp.google.com>
 <alpine.DEB.2.21.9999.1904292252120.7063@viisi.sifive.com>
 <155664891171.168659.10903540623861208390@swboyd.mtv.corp.google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_114307_127074_D81137D5 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Megan Wachs <megan@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019, Stephen Boyd wrote:

> Quoting Paul Walmsley (2019-04-29 22:57:15)
> > On Mon, 29 Apr 2019, Stephen Boyd wrote:
> > 
> > > Quoting Paul Walmsley (2019-04-29 12:42:07)
> > > > On Fri, 26 Apr 2019, Paul Walmsley wrote:
> > > > > On Fri, 26 Apr 2019, Stephen Boyd wrote:
> > > > > 
> > > > > > Quoting Paul Walmsley (2019-04-11 01:27:32)
> > > > > > > Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
> > > > > > > block, as implemented in TSMC CLN28HPC.
> > > > > > 
> > > > > > I haven't deeply reviewed at all, but I already get two problems when
> > > > > > compile testing these patches. I can fix them up if nothing else needs
> > > > > > fixing.
> > > > > > 
> > > > > > drivers/clk/analogbits/wrpll-cln28hpc.c:165 __wrpll_calc_divq() warn: should 'target_rate << divq' be a 64 bit type?
> > > > > > drivers/clk/sifive/fu540-prci.c:214:16: error: return expression in void function
> > > > > 
> > > > > Hmm, that's odd.  I will definitely take a look and repost.
> > > > 
> > > > I'm not able to reproduce these problems.  The configs tried here were:
> > > > 
> > > > - 64-bit RISC-V defconfig w/ PRCI driver enabled (gcc 8.2.0 built with 
> > > >   crosstool-NG 1.24.0)
> > > > 
> > > > - 32-bit ARM defconfig w/ PRCI driver enabled (gcc 8.3.0 built with 
> > > >   crosstool-NG 1.24.0)
> > > > 
> > > > - 32-bit i386 defconfig w/ PRCI driver enabled (gcc 
> > > >   5.4.0-6ubuntu1~16.04.11)
> > > > 
> > > > Could you post the toolchain and kernel config you're using?
> > > > 
> > > 
> > > I'm running sparse and smatch too.
> > 
> > OK.  I was able to reproduce the __wrpll_calc_divq() warning.  It's been 
> > resolved in the upcoming revision.  
> > 
> > But I don't see the second error with either sparse or smatch.  (This is 
> > with sparse at commit 2b96cd804dc7 and smatch at commit f0092daff69d.)
> > 
> 
> Weird! The return in void function is pretty obvious though so please
> fix it regardless.

Done.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
