Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7494DEAFE
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 21:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiuRUsztvV7qQCtTbF13GZy8poqfajvZjrFlD6+lkS8=; b=aGgzEyzCptNwqZ
	Heh4aefhivFnwLQxCvdS5+HYJjfaLncXfQdX2IxV5RCzu42M7kvi2mmAkpKXSFcPnNNLhUqF/ycNm
	pB5YmPsWaENBKyOLVKdsHDjI0IOXAaDtEXEsulfbRvkOfy4UUnA+advlO0OcKvpX4BHn+qh/aVgho
	n+/NM9bp0V9GUEiRSMj+lPgs34oy/DWFqyI1MtSZjTOSYxcEZpc+KYkQktf+YCU27yE8c+5NFTSk6
	pKPPt8AHRpuCc8yj/accXKNyTPQe296Yiqzd0y3Yg/tzA7i7mzT0PfYQ6qxpq4Gn5u4XFCvNpO1Yx
	jPw+u1lqMH4kLkk08rtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCAG-0007Tg-TS; Mon, 29 Apr 2019 19:42:12 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCAD-0007TE-Ss
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 19:42:11 +0000
Received: by mail-it1-x144.google.com with SMTP id v143so978769itc.1
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 12:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=OfSXGm/ZOpE/A5OPPtROuilo3cIAMJykM1qQwH2z66U=;
 b=gPhueT4Rp4VegY21P3pKS9Ih/RR/nUEkk7jhKA1RfbY03ZnKHvyqL2Wk4lzdTDTHew
 xJvCjJt/zV14JZ8yo42NKhZo1GXXGsru7NvXarkjF84DA6TNMB0w/Seaco92ZgKmPQAp
 Wbmk1wofnz4d/0bHdBOMpivJ+knKJjh1QZ7Sblvpy6eEa9kQNKKbpWlvgzqushvBRdZT
 BChOhN2sliOuqFf7iD2f5CS7krUZ8wCqwo4bSX0iceJ8QK+Xyd80HiWowfUqUXWe5IYG
 EYZokboxA+1ZIybHhTM6idYhaLVjhpX7E7dKPr4P4x3DWqzMfOmYg5DxRkKClQzrKnhM
 F6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=OfSXGm/ZOpE/A5OPPtROuilo3cIAMJykM1qQwH2z66U=;
 b=DANAolNYljC8qdj4xC58HVTpC1RZDzqz8bQ7+1FRfkcMZB2gtdyICSTyfPsha9V1ZE
 SFwumHnpaSRjdGs/VmEVnaTGMXYRNYxfngO65nC2zfmzB49KWIrGZN1A64Rruhdyj/c2
 TBNt8lq66hYIE/LBmez2mQTAgNj3u5Zi4j++UrIPd0MCIMkD74i5+Nyf8llvVweytZLV
 B5Eh+NC4VEylFaFhz38EGx/mGGSfzBg5V0qrOB76wP30D4E4KosBfqbKs1wjyclSBBC/
 nMkmh0+MSV6MFiyeKZOXyEThqpJUTL0j+1MZFYwudJR4EHmlQOP1REnkogxwL4F6pPbl
 lq7Q==
X-Gm-Message-State: APjAAAX6uqGpP5ZUgVn1QQWZM6Fp/a+MWrBMTZbFY4WdYEJH52lYsilG
 jPFwjI+/BzeGTaULp0XXq/h7mA==
X-Google-Smtp-Source: APXvYqyLjolJDasdvL/lXithdtFoxBopxLY0mM3Qb0W7s1HdM9MPrXYGgLBx7TSF2DI2OVcQaX56KA==
X-Received: by 2002:a24:4d85:: with SMTP id l127mr658460itb.53.1556566928783; 
 Mon, 29 Apr 2019 12:42:08 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 t24sm7949990ioc.1.2019.04.29.12.42.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 12:42:07 -0700 (PDT)
Date: Mon, 29 Apr 2019 12:42:07 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 1/3] clk: analogbits: add Wide-Range PLL library
In-Reply-To: <alpine.DEB.2.21.9999.1904262031510.10713@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1904291141340.7063@viisi.sifive.com>
References: <20190411082733.3736-2-paul.walmsley@sifive.com>
 <155632691100.168659.14460051101205812433@swboyd.mtv.corp.google.com>
 <alpine.DEB.2.21.9999.1904262031510.10713@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_124209_966334_4C5EAA8F 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
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
 Stephen Boyd <sboyd@kernel.org>, Wesley Terpstra <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Megan Wachs <megan@sifive.com>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Stephen,

On Fri, 26 Apr 2019, Paul Walmsley wrote:

> On Fri, 26 Apr 2019, Stephen Boyd wrote:
> 
> > Quoting Paul Walmsley (2019-04-11 01:27:32)
> > > Add common library code for the Analog Bits Wide-Range PLL (WRPLL) IP
> > > block, as implemented in TSMC CLN28HPC.
> > 
> > I haven't deeply reviewed at all, but I already get two problems when
> > compile testing these patches. I can fix them up if nothing else needs
> > fixing.
> > 
> > drivers/clk/analogbits/wrpll-cln28hpc.c:165 __wrpll_calc_divq() warn: should 'target_rate << divq' be a 64 bit type?
> > drivers/clk/sifive/fu540-prci.c:214:16: error: return expression in void function
> 
> Hmm, that's odd.  I will definitely take a look and repost.

I'm not able to reproduce these problems.  The configs tried here were:

- 64-bit RISC-V defconfig w/ PRCI driver enabled (gcc 8.2.0 built with 
  crosstool-NG 1.24.0)

- 32-bit ARM defconfig w/ PRCI driver enabled (gcc 8.3.0 built with 
  crosstool-NG 1.24.0)

- 32-bit i386 defconfig w/ PRCI driver enabled (gcc 
  5.4.0-6ubuntu1~16.04.11)

Could you post the toolchain and kernel config you're using?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
