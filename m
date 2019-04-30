Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC3FF025
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 07:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPinXTEfsweLa3ExLpR+09ysMwFSNdDka2xlnQUBOsY=; b=BVvxRY7iebBKJp
	BKc2S6Fk2tJ6nCvvkP0MB16LRrPQia0tZq/PnxYZeCPTJgyM6K4DoBHpgRrZJikeAtB5A2m1LeWKD
	8QG2AiZ5GJkL+5AA/od8vopMuw5LrmqLcuc2qOkBG5AOUnjjMPTaNSKveUvvUKnXCIPTsf6hM8X/E
	CL1loibx2VlW8J4kWDT63v68gfe8I2PqUwEwyVe/dzYaQJfmwcEgc7PFXLEbpXPcd3dojUHT2txZH
	2BmyIcoLrIseHaIPRlKcEJJbKfSdvXvGbV9aC66Mc5OjGxat8z8zkxH6k1opSk/9w43Qk06S/OunU
	DNcZWA3xMIxAdRm6IPGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLLlZ-0004cn-O5; Tue, 30 Apr 2019 05:57:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLLlV-0004cC-MZ
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 05:57:19 +0000
Received: by mail-io1-xd43.google.com with SMTP id m9so4763212iok.7
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 22:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=hWKX2lq33x/bqH4d/le0jFr8W3N+Bkvqbw8w1QPkiFM=;
 b=Ov+Pp32oKqWJj+v2leV694xGyb6S9up7lYYPQ7oPHjhx3oukgMTTT/m041MXK0SWuF
 8jCINE18h1zeq+ydDj0F62gr20ryYRJ85Dm5sTjO6KyiirqCrKrdtYGIjQhM59z6EAhL
 Wr1VtvCw1+jJAlFWtUgxPPCN51CN8gFH4tVTW/7mLD+fI1slgsPknuRb+Wb1gri/ycRv
 cnrc/bLP3jqEHaGqNnt3532193nrUmQbCJHp2CDs8DGxqFZBZpzu8r6BBCIyizEuq2sG
 B7P8TtttCHzh03mza9oh3/iZgqbqAEOa3zMUkHLnGB1p7+BxfihpKzCW4KeiWYkWqwO4
 HT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=hWKX2lq33x/bqH4d/le0jFr8W3N+Bkvqbw8w1QPkiFM=;
 b=RYf/zAJvYWoCKXRfSRwydF83k7Gb4mBjS2wo95Q1QjTU4QDHxKTAs7Kt3FUAAgFRiQ
 qvPRWnQ1x2RfXYFEHAfMQXQim74QL59VSaKRXJ9Z5AeXGwoPNJ7TlNPv1ga2VNDGZs3O
 5KQpiyQep2/vJdW9Mc60Og87eBrB81vEmMDauOP7dFkUOrNIoaznLu58ElXN9LMjC3Ok
 t/46QbFKz2mMSUkvosrVlhMYqXzPn6SRWzboJR0+fzePZl5Pyel+0ST3zqnNT684Z+mZ
 eUQgBVYxawc5qqb4d79ACPmPg4nQh2JtyuOIaLBJ0x57qAFokNV6hh2falau3Cb7nO6t
 rsLA==
X-Gm-Message-State: APjAAAUKb7mh2UKrW72h1u8jB5SGuG5hMuN5HFzu4QzWJxKcy/USJm0z
 ApUkpFRY5FE3JaJ+SXox5cHR3w==
X-Google-Smtp-Source: APXvYqzAC8eAlzqjeLLMoD/UHDZ5ijbGvpg1RDOoBrDKbcOzIOLLnUjbc9ho0YTyKwMXMw2TI+tDcg==
X-Received: by 2002:a5e:d702:: with SMTP id v2mr3816669iom.236.1556603836719; 
 Mon, 29 Apr 2019 22:57:16 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 a124sm926073itc.18.2019.04.29.22.57.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 22:57:16 -0700 (PDT)
Date: Mon, 29 Apr 2019 22:57:15 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
In-Reply-To: <155657878993.168659.6676692672888882237@swboyd.mtv.corp.google.com>
Message-ID: <alpine.DEB.2.21.9999.1904292252120.7063@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155632691100.168659.14460051101205812433@swboyd.mtv.corp.google.com>
 <alpine.DEB.2.21.9999.1904262031510.10713@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1904291141340.7063@viisi.sifive.com>
 <155657878993.168659.6676692672888882237@swboyd.mtv.corp.google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_225717_797462_6029F995 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, 29 Apr 2019, Stephen Boyd wrote:

> Quoting Paul Walmsley (2019-04-29 12:42:07)
> > On Fri, 26 Apr 2019, Paul Walmsley wrote:
> > > On Fri, 26 Apr 2019, Stephen Boyd wrote:
> > > 
> > > > Quoting Paul Walmsley (2019-04-11 01:27:32)
> > > > > Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
> > > > > block, as implemented in TSMC CLN28HPC.
> > > > 
> > > > I haven't deeply reviewed at all, but I already get two problems when
> > > > compile testing these patches. I can fix them up if nothing else needs
> > > > fixing.
> > > > 
> > > > drivers/clk/analogbits/wrpll-cln28hpc.c:165 __wrpll_calc_divq() warn: should 'target_rate << divq' be a 64 bit type?
> > > > drivers/clk/sifive/fu540-prci.c:214:16: error: return expression in void function
> > > 
> > > Hmm, that's odd.  I will definitely take a look and repost.
> > 
> > I'm not able to reproduce these problems.  The configs tried here were:
> > 
> > - 64-bit RISC-V defconfig w/ PRCI driver enabled (gcc 8.2.0 built with 
> >   crosstool-NG 1.24.0)
> > 
> > - 32-bit ARM defconfig w/ PRCI driver enabled (gcc 8.3.0 built with 
> >   crosstool-NG 1.24.0)
> > 
> > - 32-bit i386 defconfig w/ PRCI driver enabled (gcc 
> >   5.4.0-6ubuntu1~16.04.11)
> > 
> > Could you post the toolchain and kernel config you're using?
> > 
> 
> I'm running sparse and smatch too.

OK.  I was able to reproduce the __wrpll_calc_divq() warning.  It's been 
resolved in the upcoming revision.  

But I don't see the second error with either sparse or smatch.  (This is 
with sparse at commit 2b96cd804dc7 and smatch at commit f0092daff69d.)


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
