Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B19082A18
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 05:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WiRpl5vO8eFjW32JZ7d2PKWgbmhJQel/sIXLXB/zepU=; b=nQaeuA1pky1vTC
	Ngc04yJvMXH9hvYD1dF+NAiO0luWbwtSL5e+PEmYVW9leqK0WJPvp8NJ80pdKQzs41PcHCXcWkCDR
	HvC8ezBVBf7b1wGraEABTfW9DsveYv6PPIC023tgNvbsuoJA5dRSD4VsN+oHN4e1bnYdqsKBxoyH9
	xO2VK5wiFiaXmiCr3qoCk3cgnfvBGjiDPckUyt7BZSk+QVdtURhluaEIclBdTOLmdGVG0oZMLJcOH
	2qljnkyTXtAtDot9Wri6koDtXkb3L4yeDYcOj/7RmZbR5zbTBG7H1HaEWxxsx7yD0ZDXH1EkUs5b1
	cQpZhn5bQybXOAO/GOOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huqPm-0007Ij-KV; Tue, 06 Aug 2019 03:45:34 +0000
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huqPi-0007II-R2
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 03:45:32 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 0E3E68F556;
 Mon,  5 Aug 2019 23:45:27 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=B5f8DikS680Ovri0Zcmh0CB3euA=; b=Xt+nDQ
 i/EnPKWohEe/Qlf6tsoctryM/3brb+idWoUOP5h97bkMBorkvI2wiNs2yjJuS8D6
 YP1DnA5/Q72nqh3kCjVTJSi/C1TKV+g1MUSrjFnMTTVq0aQ9+dRiInoMbf8qxbao
 wQ4Odb2aCPVPJezK10qGCD4B/vBcNlZ4U4MYs=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 044038F555;
 Mon,  5 Aug 2019 23:45:27 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=ynWrJA2+SSz20bTph6PHm3fLhE5nwiOL8Pvteit3pVo=;
 b=W+PicIZWGtxUZlrBFMIkhPsUoPtl3SeUW5xM4qEkjO60dX1I+opzf2RzkpOc5eNbRSGWzAupKQyOyCpctjuN+I5Vhfszmii3VaYkrUX4oxWhhql1Qu7d+2aGcilJ+Tj/anPpApm9Is+ND+CAGGcXlzlPvxQ2sThQR0fjcb11M74=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id E01BE8F554;
 Mon,  5 Aug 2019 23:45:23 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 0089F2DA01A1;
 Mon,  5 Aug 2019 23:45:21 -0400 (EDT)
Date: Mon, 5 Aug 2019 23:45:21 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Jim Wilson <jimw@sifive.com>
Subject: Re: About __udivdi3
In-Reply-To: <CAFyWVaYd1vGFLJj6hh+a5Ufubh3tvwER+-ShQXA3faEJbEFe3A@mail.gmail.com>
Message-ID: <nycvar.YSQ.7.76.1908052311320.19480@knanqh.ubzr>
References: <20190805055844.GE4292@andestech.com>
 <20190806013723.GA5417@andestech.com>
 <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
 <CAFyWVaYd1vGFLJj6hh+a5Ufubh3tvwER+-ShQXA3faEJbEFe3A@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: 9F090396-B7FC-11E9-9DD5-8D86F504CC47-78420484!pb-smtp21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_204530_940471_32ACD1CB 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Eric Lin <tesheng@andestech.com>, dslin1010@gmail.com,
 alankao@andestech.com, Palmer Dabbelt <palmer@sifive.com>, rick@andestech.com,
 kclin@andestech.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 5 Aug 2019, Jim Wilson wrote:

> On Mon, Aug 5, 2019 at 7:13 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > > > It seems __udivdi3 only supports 64-bit platform.
> > > > Do you have any comments? Thanks.
> >
> > It sounds like you're describing a potential issue with gcc, rather than
> > the kernel.  If that's so, then the gcc mailing list(s) would be a better
> > place to discuss this:  https://gcc.gnu.org/lists.html
> 
> The kernel doesn't link with libgcc.a.  It has its own copy of udivdi3
> when needed.

Looking at he udivdi3 code in the kernel, it certainly looks to me that 
it is meant for RV64 compilation i.e. 64-bit-wide registers. It won't 
produce the right result for sure if compiled for RV32.

That being said, a 32-bit kernel should never require udivdi3. The other 
32-bit architectures expressly omitted it on purpose to prevent its use. 
Most of the time, what is needed is a 64 by 32 division and, 
unfortunately, gcc doesn't know how to optimize that on 32-bit 
platforms. This is what the do_div() macro is for.

So the "lib-$(CONFIG_32BIT) += udivdi3.o" in arch/riscv/lib/Makefile is 
completely wrong. I could see its presence if the div instruction isn't 
available on some RV64 implementation, but that should be removed 
otherwise.


Nicolas

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
