Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE30F3A3F9
	for <lists+linux-riscv@lfdr.de>; Sun,  9 Jun 2019 07:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wUEB48+G02MOKwzjHjw9E0IOQ1BN+CPyGxM7f7EwUrU=; b=sprpa5EoHl5bIV
	FhI+Lh6GB0ks3/Zekulbc05eEhbDqczo7qigUyyb1b2OBtUZWWUDH8XLueQxEqcZgyfNb7TfOBcHj
	NYJqtqi0etUVkcDGWcDCVbB/hW6nTYBSE45OkwJ+oIpCTPAbdi1xqwg+UeG9P+YNommD7JVg/RcUo
	B9xhgYsqNEjsqX4NAOFLx4bz6AogT7iDcrmAAfcVYgmE/aTQa/ySWelOjmQBooF+IWRSJ6YVQRBHx
	47GaWrTC4RM/R8fp+VmoNJ1uddpUkAP1A5KvxGWgAcGcnVudBB9ZuXtY5uujeVhDXIiNHbxvFucJ6
	PQe/xBeAHoaXYI8UF5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZqin-0004Bv-9a; Sun, 09 Jun 2019 05:50:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZqij-0004B9-Da
 for linux-riscv@lists.infradead.org; Sun, 09 Jun 2019 05:50:22 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so681602pgh.9
 for <linux-riscv@lists.infradead.org>; Sat, 08 Jun 2019 22:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=g5g0galx8RyvOsGO1iYuup0nP37+YQK2f5/z3KYX1Es=;
 b=j/5W+Sr8ZHhSAf244dwdVTBvj2tr7+iZOWOKMMfzhIdFRqi7/u2TWYwP2epGcXpNlW
 I/pwIxHeXTA7MG4TUk0ufCyZSyIIQCyjiYyrHyWYIDcTZHo1r+jsI0EBt7hr3FN0zF6I
 9aQi/LIdQB7E6GlEfpTnYulqzgptG5UTsd45QMT4YAbNIlHdVNnESvsPdRQyDQdtMXPS
 jPux964RM50+CXs/BZwcQ7pdwuI3t2VFovovnu6vLXDKg5CDrROdsbaULSS6ohRCdHuV
 S0Iv21sLf6xxu5Yv8dwERodWihPDBsIc7gff7PUgGOY1ooe1vEiFAqb/Yrg666boUpoB
 aieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=g5g0galx8RyvOsGO1iYuup0nP37+YQK2f5/z3KYX1Es=;
 b=JxgSwBnfSHZ+1OPx8D/JlbqIK4CQ96Afr0eh6U0v6S2n/rEUCRl+fd9i6Iina05In/
 /9fD39nwsMytpWCj7CUOBsrj7pSe9aNo8b+9jRIWTZPRncUU0UOhyGtlTF4P+m+lRY0p
 Vx2qRvnHoGge0KEFiA2hIvMQUPK1PEHpRXww9n+pAdPKuPJb8sPxrEAR+zlruKbnWLMc
 ndLDTjPkU5nr0PlFAimG6jRwfOtTbquJd44ErJS9Td4nKlPoQhWusS4JZJePg4465+LZ
 g9ElW9DSlwT+1UrJO/oDR9KMHb0eA1RVdrc8ag4UY8OFAOxScx0MctpP4gRY+bQpVPbK
 kN0g==
X-Gm-Message-State: APjAAAW3XEPGrdbe7wrjLiFF2Qlpb2kGG0GW4tlOzwRPg/Mt7mCeh0k9
 VaJHETZH0Spyn+1NRsMo9HBSFA==
X-Google-Smtp-Source: APXvYqxz5Y4VKifbCFKug9kpochpBP/0jxW+Ow0eYUlsETgxmERQpqyTgihHK+7isHFvK+mEGd1Mhw==
X-Received: by 2002:a62:15c3:: with SMTP id 186mr3310072pfv.141.1560059419499; 
 Sat, 08 Jun 2019 22:50:19 -0700 (PDT)
Received: from localhost ([202.131.137.2])
 by smtp.gmail.com with ESMTPSA id y13sm8257212pfb.143.2019.06.08.22.50.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 22:50:18 -0700 (PDT)
Date: Sat, 8 Jun 2019 22:50:14 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH v3 1/5] arch: riscv: add support for building DTB files
 from DT source data
In-Reply-To: <mhng-802d67ce-9f78-4ebc-9981-a27e5e4e40df@palmer-si-x1e>
Message-ID: <alpine.DEB.2.21.9999.1906082245300.720@viisi.sifive.com>
References: <mhng-802d67ce-9f78-4ebc-9981-a27e5e4e40df@palmer-si-x1e>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_225021_521445_6E245D3A 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, lollivier@baylibre.com, paul@pwsan.com,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, 8 Jun 2019, Palmer Dabbelt wrote:

> On Thu, 06 Jun 2019 22:12:05 PDT (-0700), Paul Walmsley wrote:
> > On Tue, 4 Jun 2019, Loys Ollivier wrote:
> > 
> > > Always build it ?
> > > Any particular reason to drop ARCH_SIFIVE ?
> > 
> > Palmer had some reservations about it, so I dropped it for now.  But then
> > as I was thinking about it, I remembered that I also had some reservations
> > about it, years ago: that everyone should use CONFIG_SOC_* for this,
> > rather than CONFIG_ARCH.  CONFIG_ARCH_* seems better reserved for
> > CPU architectures.
> 
> The SOC stuff will, of course, be vendor specific.  In this idealized world
> SiFive's SOC support has nothing to do with RISC-V, but of course all of
> SiFive's SOCs are RISC-V based so the separation is a bit of pedantry.  That
> said, in this case I think getting the name right does make it slightly easier
> to espouse this "one kernel can run on all RISC-V systems" philosophy.
> Balancing the SiFive and RISC-V stuff can be a bit tricky, which is why I am
> sometimes a bit pedantic about these sorts of things.

Once there are SoC variants that have different CPU cores, but with the 
remaining chip integration the same, I think it would make sense to move 
the CONFIG_SOC_ stuff out from ARM, RISC-V, etc., into something that's 
not CPU architecture-specific.  But for the time being, that seems 
premature.  Might as well have it be driven by an actual use-case.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
