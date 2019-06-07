Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D1938758
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 11:49:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgZaz5krFex7d5kIpEAhDzaqo7xmV8Oh1N53DWxCGhc=; b=D0S6UbiOEPITZ7
	s6ereHbak0ZQdzNBqo/2CsgsM902cCflrD4YwMfd86St4F0e+QQdH8MgldN3p+spgHntWo/M8e/L/
	NuX7wMVgv3TD2dpKtMhj1fWcFK5RP7F0tDKCQugFu3LRi1MUBp9tBMnx5jd3AAzviAb5Tg3GFHkT1
	MRyLi62iXNM97VuzwqKf6isshHFRNb2LKa6QJpVQ/sryBFpIZqsAacrQeEF1Pvn8fHCqvOeiuYNQF
	m3HCXC4byEX+5kRlE7BI6i1IZB6fOsSbv7gJ10+t1rglWkaqv0DpnFNPJ2TbbRHFvt9wE/q5tizwc
	vappUWiISigrQdLtsq7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBV2-0005Kz-DD; Fri, 07 Jun 2019 09:49:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBUo-0005A0-HN
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 09:49:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so1516305wru.0
 for <linux-riscv@lists.infradead.org>; Fri, 07 Jun 2019 02:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Qj24v20If9zgLt13neBHdsQHg4q/cs2v9iuEfMb+jR8=;
 b=g6X2ExKqaEWGP16yZeToDxgi/hFe4wnLeV/g34TOGsJNHgdfDNK2QUkTqq13LwRWBx
 sSmyEdrjhZcumVGP62IpizYxeuQl6Q7aw/E4CstzGn/CzN0YIDSdpJlD36itYzTfu6Sj
 szvtkdN9e3bLkxGizqDY5jVsM0VJm18LSI4f3KF7FvZJnY/wZlXbcajq6p+Wk6w/Gk9n
 Tu1if2GQlSzDTJXE5WNZAKZ1cjHlMpuu3X+C37VQvqM/Pbo4bQjiyFfj8oNiGbzdnMJa
 xVPmidT/6pZi86OrAGGLwELTDe3J1CwlfvPAKcfjYh0o2tRtGa89RRAw6YZKv4HOGELw
 ulEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Qj24v20If9zgLt13neBHdsQHg4q/cs2v9iuEfMb+jR8=;
 b=kAtCzG8zVK4qck/+sFMRcZ9nV59cpUA8LSzR/rj/HB8fTE9bxACGDVcXijuHeI4O4z
 zMHAJQS5CydN+YJ1dJeYgTrKaa5b+8aJd3EUSYPdWKdZx8zWKxvHibnejSSLaYFQfO0T
 fZuwZaXv/R+OAihOwEXWkMY5O9g48RxJK/YsSM8Iim75vtdBgdDmXrsiFemVbcSi4Son
 SFvotqW1IoERN8alMGdET25JHpU7A8YFzE3xRtOpPpDZzygGiSbNk8IpRzcxOr4C6Gu7
 sZ1isLZgvpaak5QPofcxREeJfzss7v5b7wRKW3VdhWfK+IV7oDYN4ILy4roOKmoPxSHV
 Uezg==
X-Gm-Message-State: APjAAAW7P4c3DDRwY7pEgpDoOlr+oE3nTehPmEKOU+gMIziDxa2P/6mW
 CEXyY31q+WdUTTW7UYwzjECrUg==
X-Google-Smtp-Source: APXvYqwWGlXNT1rix2H5Zql0Hm0SBRVNRNthbupEGwYwbeXvTUfJiWy7Ye5ZMiyjXXaCEt/uPmp9Dw==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr6576125wrt.197.1559900952280; 
 Fri, 07 Jun 2019 02:49:12 -0700 (PDT)
Received: from localhost ([2620:10d:c092:180::1:56e0])
 by smtp.gmail.com with ESMTPSA id z65sm1338145wme.37.2019.06.07.02.49.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 02:49:11 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 1/5] arch: riscv: add support for building DTB files
 from DT source data
In-Reply-To: <alpine.DEB.2.21.9999.1906062208280.28147@viisi.sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <20190602080500.31700-2-paul.walmsley@sifive.com>
 <86v9xlh0x8.fsf@baylibre.com>
 <alpine.DEB.2.21.9999.1906062208280.28147@viisi.sifive.com>
Date: Fri, 07 Jun 2019 11:49:10 +0200
Message-ID: <86y32dwwrt.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_024914_714153_6BB126BB 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul@pwsan.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu 06 Jun 2019 at 22:12, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Tue, 4 Jun 2019, Loys Ollivier wrote:
>
>> Always build it ?
>> Any particular reason to drop ARCH_SIFIVE ?
>
> Palmer had some reservations about it, so I dropped it for now.  But then 
> as I was thinking about it, I remembered that I also had some reservations 
> about it, years ago: that everyone should use CONFIG_SOC_* for this, 
> rather than CONFIG_ARCH.  CONFIG_ARCH_* seems better reserved for 
> CPU architectures.

Agree on the CONFIG_SOC.

>
> If you agree, would you like to send a followup series, based on the DT 
> patches, to make the SiFive DT file builds depend on CONFIG_SOC_* instead?

Sure, I'd be glad to follow up on that. I'll send a followup series to
start a discussion.

--
Loys

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
