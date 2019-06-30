Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6633E5AE4F
	for <lists+linux-riscv@lfdr.de>; Sun, 30 Jun 2019 06:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ+3DhXJHp7y6R67w2ZAoth8c614v07S6pmufDM4SC0=; b=OHxgiA6pKtrWwA
	4VB8nbniiuMoIXSXs8sHDt57zS7trdbJaWjlteqEyZ2Keoj+aAEVH6RTfQ+3j7kJQ8lGsE7ZgW2ml
	QH3E1qDK9n8+iTIINOGYx7eU7F6UJEOF7gXfUctTpwL1HF94kGSC2rCmYTJnM+prqwSqJlKEsExNa
	4q1/QwBvWD5b8+HvlQ5qQWHXfld9xot68vZmVJYeUWInIveJrl75O+RnFvpSZC5oBh3DVBc/QmJA2
	wJ3eXUUxc2XPpPtLbkF22PiNeGQQZr1396TmPw+F5ylstwt2eqD5UEcAqpywevG5YYbW+hZXAES+e
	mXS2L3FVPavToluJ/1hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhRTs-0003HS-65; Sun, 30 Jun 2019 04:30:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhRTV-0001tX-Ux; Sun, 30 Jun 2019 04:30:04 +0000
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71106208E3;
 Sun, 30 Jun 2019 04:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561868999;
 bh=cQSFOfkpKMob0CUu8153N6DUVyC3npdxm62i1j4VpIw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=j72oOEAif2V94f0mwKfr5J/PRx+YFli4yICxddcq/LIiS7JQ+YKk1YGF4PSgQDKL7
 IMJd+IOSbwJSo6k5b1N04qP590P8btcmtnruiRG/EpAmzvilpIrTFErZtfqeXBnnsi
 04dlqRLB1LypljThQz/jstMx1/Gu9frEnC0Vy7yo=
Received: by mail-wm1-f41.google.com with SMTP id a15so12623950wmj.5;
 Sat, 29 Jun 2019 21:29:59 -0700 (PDT)
X-Gm-Message-State: APjAAAX41nFIrLqXKv1bHkB22Yu3mLNc0+JwBGW7ryD+I2JPLc7MCNHu
 PIF3B7JLSlE/e7va5PctQ/+95qTNNmLtoAoLE3k=
X-Google-Smtp-Source: APXvYqykrDoGZznjGRXJXJkVCBwA9280hX7gYGYy3Dbo1kbGt1iT4Zj+H8TCZ/zglBC8rdfd2ydmBM/xQE7cDlA9Xmo=
X-Received: by 2002:a1c:6545:: with SMTP id z66mr12063849wmb.77.1561868998022; 
 Sat, 29 Jun 2019 21:29:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190321163623.20219-1-julien.grall@arm.com>
 <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <CAJF2gTStSR7Jmu7=HaO5Wxz=Zn8A5-RD8ktori3oKEhM9vozAA@mail.gmail.com>
 <20190621141606.GF18954@arrakis.emea.arm.com>
 <CAJF2gTTVUToRkRtxTmtWDotMGXy5YQCpL1h_2neTBuN3e6oz1w@mail.gmail.com>
 <20190624153820.GH29120@arrakis.emea.arm.com>
In-Reply-To: <20190624153820.GH29120@arrakis.emea.arm.com>
From: Guo Ren <guoren@kernel.org>
Date: Sun, 30 Jun 2019 12:29:46 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRUzHUNV+nzECUp5n2L1akdy=Aovb6tSd+PNVnpasBrqw@mail.gmail.com>
Message-ID: <CAJF2gTRUzHUNV+nzECUp5n2L1akdy=Aovb6tSd+PNVnpasBrqw@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_213002_037781_0C39C691 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: julien.thierry@arm.com, aou@eecs.berkeley.edu, james.morse@arm.com,
 suzuki.poulose@arm.com, Marc Zyngier <marc.zyngier@arm.com>,
 Anup Patel <anup.Patel@wdc.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, hch@infradead.org,
 Atish Patra <Atish.Patra@wdc.com>, Julien Grall <julien.grall@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, gary@garyguo.net, paul.walmsley@sifive.com,
 christoffer.dall@arm.com, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Marinas,

Thx for the reply

On Mon, Jun 24, 2019 at 11:38 PM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 24, 2019 at 12:35:35AM +0800, Guo Ren wrote:
> > On Fri, Jun 21, 2019 at 10:16 PM Catalin Marinas
> > <catalin.marinas@arm.com> wrote:
> > > BTW, if you find the algorithm fairly straightforward ;), see this
> > > bug-fix which took a formal model to identify: a8ffaaa060b8 ("arm64:
> > > asid: Do not replace active_asids if already 0").
> [...]
> > Btw, Is this detected by arm's aisd allocator TLA+ model ? Or a real
> > bug report ?
>
> This specific bug was found by the TLA+ model checker (at the time we
> were actually tracking down another bug with multi-threaded CPU sharing
> the TLB, bug also confirmed by the formal model).
Could you tell me the ref-link about "another bug with multi-threaded
CPU sharing the TLB" ?

In my concept, the multi-core asid mechanism is also applicable to
multi-thread shared TLB, but it will generate redundant tlbflush. From
the software design logic, multi-threaded is treated as multi-cores
without error, but performance is not optimized. So in my RFC PATCH:
[1], I try to reduce multi-threads' tlbflush in one CPU core with the
fixed cpu ID bitmap hypothesis.

1: https://lore.kernel.org/linux-csky/CAJF2gTQ0xQtQY1t-g9FgWaxfDXppMkFooCQzTFy7+ouwUfyA6w@mail.gmail.com/T/#m2ed464d2dfb45ac6f5547fb3936adf2da456cb65
--
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
