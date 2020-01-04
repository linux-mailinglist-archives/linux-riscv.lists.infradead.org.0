Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 127FC13005C
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 04:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BX71mgvvvVJh9j5iXPwViX8nZ94MAki9yZVDXDO37LU=; b=qervoq5Sk30SBUSGS3kShs0RS
	KGH3B0yDvOEzY9P5F18g+7Jp6qN4NzbyLxjV0DYM3Wki4jWosMHTowWDm8QUGiW5QLSQeVVd8clVd
	B7aZ3qyc7nW2Xm4Gtt0CgKeFjQIdxLi3Zaa9l22dxHUQDihvQ6aTI8XnmCqQ3nRPlHMbh0feP/wKT
	LcH1E74SqGb4ODb9jiH33BYZFVLednX523e99HdXoBR1OnXroxl0BmKJRbt84Tt7EIpcqNW9D6DLQ
	11ieMC+ak3Dktr2DZOVjQwFII9cf9kb1wjsW62LhNuM9cs1jQrHsysykgUCjsuoh1BhRJqm37Aov4
	1SzXD7pzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inZki-0003zc-3E; Sat, 04 Jan 2020 03:05:24 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inZkd-0003yp-NO
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 03:05:21 +0000
Received: by mail-ed1-x544.google.com with SMTP id l8so43173355edw.1
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 19:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BX71mgvvvVJh9j5iXPwViX8nZ94MAki9yZVDXDO37LU=;
 b=GKihMbDOaV19EjeFPkZGhmjTZbw93ryUZdGEcLqWz6jSeSvH12zmcFnClKJ7lNe8wz
 fTUBYyq76Z1DXbB4ADmyiusb9Nmqg96PcnNxI8BqcVOreHjJL0JR6XGKOOtsm62xszsf
 CTF399PYOk/Qd4mv2dEgZOZbuGDWHz/2nQ9oUlfdRw2xzsiy5HGXC0JaXSFvRBtoBtx2
 wEgjNBoBFTzXbv1eqCDTctJWsd5obGUemdv+NQduZ5biriMG2NRTU/B8Ka8T8ej614BA
 SqnkTgevuhSBs9FhEFntlRPr9XUpO1+N4gK+UWQO22wkXdwiEpZerdXCwzz+uPTCHIji
 +49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BX71mgvvvVJh9j5iXPwViX8nZ94MAki9yZVDXDO37LU=;
 b=ZiUjw50vVM4R6x0D9kTZtH+TbWLV84PnR74jn9ruP4P7yPM/h0XePZN6wmkjkhBDeD
 UwEqE9OHSAzAICCQBvWIIIj0Oy/w2viQ6jBanmHQAROEVWKy+gWP26sWxhFlBljfHZM5
 bt8cqafM1NWgNx4uq5HSiEiJH/MPZK3S5+lxEw4kM53lo4ONE6outr0T34OuqV8Ulghf
 gi5al1ppRCVW6aedSXsDWjrJn18h50UhE2shx4HAesHAlzillmKpdtdB489pQQEaGThb
 VkRByJh+0qLT3lJqLN5lHhHqhNVt2yN2hqf2glze4Pd7X7tNWJaefvS2ypCvqMdADeTG
 EdAg==
X-Gm-Message-State: APjAAAUbmXRCcbYuWRL8X4LKtY1lBJLzIYOe3G27NmVV+IUtj+XtsKVc
 DN2HI2QOzUTnN6FbBa/V3+JsjI3l7Q9OT3/gZUAeEQ==
X-Google-Smtp-Source: APXvYqzZ0eubPcmwmULBhcmjqX4h6azQKzY92sBUMA+/NNA6rHzORNOjcdialMwlS8H7ALL/gObAMIdC0ceTZKJx1G8=
X-Received: by 2002:aa7:c389:: with SMTP id k9mr95278721edq.63.1578107116352; 
 Fri, 03 Jan 2020 19:05:16 -0800 (PST)
MIME-Version: 1.0
References: <20191218170603.58256-1-olof@lixom.net>
 <alpine.DEB.2.21.9999.2001031723310.283180@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.2001031723310.283180@viisi.sifive.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 3 Jan 2020 19:05:04 -0800
Message-ID: <CAOesGMir810kVTDyoTFuhK-PdFe4J2u2VM+L8jOdO8DghAELQg@mail.gmail.com>
Subject: Re: [PATCH] riscv: change CSR M/S defines to use "X" for prefix
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_190519_902251_D47DCB7E 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 5:28 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Wed, 18 Dec 2019, Olof Johansson wrote:
>
> > Commit a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs
> > machine mode") introduced new non-S/M-specific defines for some of the
> > CSRs and fields that differ for when you run the kernel in machine or
> > supervisor mode.
> >
> > One of those was "IRQ_TIMER" (instead of IRQ_S_TIMER/IRQ_M_MTIMER),
> > which was generic enough to cause conflicts with other defines in
> > drivers. Since it was in csr.h, it ended up getting pulled in through
> > fairly generic include files, etc.
> >
> > I looked at just renaming those, but for consistency I chose to rename all
> > M/S symbols to using 'X' instead of 'S'/'M' in the identifiers instead,
> > which gives them all less generic names.
> >
> > This is pretty churny, and I'm sure there'll be opinions on naming, but
> > I figured I'd do the busywork of fixing it up instead of just pointing
> > out the conflicts.
> >
> > Fixes: a4c3733d32a7 ("riscv: abstract out CSR names for supervisor vs machine mode")
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Olof Johansson <olof@lixom.net>
>
> Thanks for taking a stab at fixing the issue.  I queued the following
> minimal fix has been queued for v5.5-rc, adding an RV_ prefix to the IRQ_*
> macros.  It may be that we need to do the same thing to the rest of the
> CSRs.  But, based on a quick look, I think we should be OK for the moment.
> Let us know if you have a different point of view.

Sure, this does the job. I'd personally prefer consistent prefixes but
that's just bikeshed color preferences -- this is fine.

Acked-by: Olof Johansson <olof@lixom.net>

(Builds are still failing for some configs, but will be fixed if/when
you pick up https://lore.kernel.org/linux-riscv/20191217040631.91886-1-olof@lixom.net/)


-Olof

