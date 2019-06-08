Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9E63A0F2
	for <lists+linux-riscv@lfdr.de>; Sat,  8 Jun 2019 19:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=JuL1ffipo3zEFh8VwmOX1oKdfsN6mZbyV0wWIlVZJ5A=; b=JKTz/+UFVuN+5ja2sCyfJhF+f
	1G+wKG/tsZ0+L4Q+tEQBT5m5Z99lTBg+o4p1fhphAtKEonE1XqcSx4mA5Apxzr2HtVaZlceL+jYea
	53+8kZFtHiJvg8iqKXg9E4tTne9BAX36KmLBlWQ7gi2m12SmwWs2TmjVYeIzQn7m7uQRHXEvMgxeK
	XlgripyKypsJJeaEwdSIWez6FD2FW/HOsvfnhfAJsencbOEDhOm0veOxHLUeRSG7gxyiYKfg+MANb
	J2wMqvYVQpXb3y1tXvUCph5OcLDAHrCBm1bTgE9ZugglAB/0X/M7HAuVfBrrNDIzULfi/39QLJrjS
	sg1x1eEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfaF-0002yb-Iu; Sat, 08 Jun 2019 17:56:51 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfaC-0002yD-OU
 for linux-riscv@lists.infradead.org; Sat, 08 Jun 2019 17:56:50 +0000
Received: by mail-pg1-f194.google.com with SMTP id f25so2814900pgv.10
 for <linux-riscv@lists.infradead.org>; Sat, 08 Jun 2019 10:56:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=iyAgZ7LPNrjAJ5HMh1hGYwXJ8qs3w42dLho45Ew1g/g=;
 b=bIUNMGO5JkU7K1w4YCYGyulG+l4u404CKLH5pNOwYhWjm+MwR2hfCiKMclAr6oSIPd
 Fx3JwA9prxuLsorzMDItzIrZ9mpFUnZ6Xw2hyBc6r3arkQKatSygop6jPEVxjkFUeX2w
 2LGIK7QX56qhlxLz/QM4xYgNhzPinszvQ8ju9akegHzxyX0vdhSokJ/IIcRud+V3ndVs
 4Hx/KS4jOy1SSK88LsLzFv73waz0ZVBEbK6s7ktHenFfhmbWtVUhDojU/fojblylyAuJ
 TVwDiAwcki+QSoFRNIbs1/V02FhP6nbf2sAv4ST4NFTMQ0raV6o+UGLWHIRetOR3GYQ1
 yQ9Q==
X-Gm-Message-State: APjAAAWO/EcWheuVVttne2/6zkMmiSafpUKb127FwbAW/L0Iv1ZShzJF
 xgi9/pAs1O5F/uKekcjUc/qvjw==
X-Google-Smtp-Source: APXvYqxUP4Kmv8FJwbiZts6nQLQw4BBk0vluayMvRAl8Cod+/UWEDIOm2zQpFKVrMo0x1jmMHUb1PQ==
X-Received: by 2002:a63:e10d:: with SMTP id z13mr8254805pgh.116.1560016606841; 
 Sat, 08 Jun 2019 10:56:46 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id s12sm5453255pjp.10.2019.06.08.10.56.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 10:56:46 -0700 (PDT)
Date: Sat, 08 Jun 2019 10:56:46 -0700 (PDT)
X-Google-Original-Date: Sat, 08 Jun 2019 10:42:17 PDT (-0700)
Subject: Re: [PATCH v3 1/5] arch: riscv: add support for building DTB files
 from DT source data
In-Reply-To: <alpine.DEB.2.21.9999.1906062208280.28147@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-802d67ce-9f78-4ebc-9981-a27e5e4e40df@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_105648_798040_C9AAFF63 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 06 Jun 2019 22:12:05 PDT (-0700), Paul Walmsley wrote:
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

Specifically my worry is that "ARCH_SIFIVE" makes it sound like we're adding
SiFive-specific architecture features, and we've been trying really hard to
make sure that the various bits of core software avoid boing vendor specific.
We've had suggestions of adding vendor-specific instructions to the Linux port
with those instructions being conditionally compiled under ARCH_$VENDOR, but
I'd rejected that under the "no vendor-specific stuff" argument.  As such it
doesn't seem fair to go add in an ARCH_SIFIVE for our vendor-specific stuff.

The SOC stuff will, of course, be vendor specific.  In this idealized world
SiFive's SOC support has nothing to do with RISC-V, but of course all of
SiFive's SOCs are RISC-V based so the separation is a bit of pedantry.  That
said, in this case I think getting the name right does make it slightly easier
to espouse this "one kernel can run on all RISC-V systems" philosophy.
Balancing the SiFive and RISC-V stuff can be a bit tricky, which is why I am
sometimes a bit pedantic about these sorts of things.

> If you agree, would you like to send a followup series, based on the DT
> patches, to make the SiFive DT file builds depend on CONFIG_SOC_* instead?

I'd be happy with something like that.  We'd also talked about this selecting
all the SiFive platform drivers.  It should, of course, be possible to select
multiple SOC vendors in a single kernel -- we don't have any other real
hardware right now, but maybe some sort of "CONFIG_SOC_RISCV_VIRT" would be a
good proof of concept?

> Thanks for the comment,
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
