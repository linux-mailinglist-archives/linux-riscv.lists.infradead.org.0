Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6762B113858
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 00:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LyGjF/rkwWS2ExVqCvEb3Z2JEo92ZJuKNi25eoJBxHc=; b=rrpeEucTfbZaTNR+rtJKKWI5J
	X246WYhke9YQfRpKnRUnHz4d72LH+JMdxyGiqA7vUDl76DGPLjMeAwLlkzkc4gXDkfpVLNp5Kmsk4
	gBvyK/9dX7umigRuwa4+n5P/gWEA1wly+es9SO22XoemYoWcg9NaTn1TSunWIMmvLozkOE61PccXC
	xr/vviuBRZX8qIiFOfgHIMFQLe7A2z7FGWoysjhHlwzqX7l8WBhJr9fMamPi+wLtv7TbxGWYAQQ21
	mIUkJdwlzLOYIDsH6lCg0lazJ9k4TIen93Qn2vloSE+6gytbjh85hA8xMkuXg0qKvUDkUny9g/Lnk
	IWc1+WKWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iceLc-0007kL-86; Wed, 04 Dec 2019 23:46:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iceLW-0007dP-L0
 for linux-riscv@lists.infradead.org; Wed, 04 Dec 2019 23:46:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id t2so1316750wrr.1
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 15:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LyGjF/rkwWS2ExVqCvEb3Z2JEo92ZJuKNi25eoJBxHc=;
 b=xAwbsMb9aGoP+r+OnPfZiWzavaYkWeAUkslEMZ5t8lulO827ECG9YLZf/4V0X+QTEq
 +fcAR+I+bFz4gn4MgmF6Yjcmar85AxQ34GcwUGYxKDUcJtIJSkrmVANDtIOAhqkp8oMD
 Umbje+bIHdpMhEoASH2A34tyT6xaMolpvsghDsXwE1Sxj2C4j9hwo8wYDws8fYkzbgt/
 Wsj9pB2I7lqJgzBJfRp7L+wIx5B6zNkNVMIUU8tE97/hdKBFnWBBw4VYnojJ011/3+P0
 wG+y3keXvprViGb2tt+aM5E/QqCDAxI/NachcjtP/whXFNEH+qBqGeZHsTbvUUdl5Aq2
 cxjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LyGjF/rkwWS2ExVqCvEb3Z2JEo92ZJuKNi25eoJBxHc=;
 b=qiCO8ttLXhkBQKBAsXD9yFGdupcOdeJWYV8Ap0CaHmo1PzwC8fVzPjeJXKJarkKBT/
 Cb9WT5auq3yT26koJb6tqvmtDcRhI8W79b+OMkmwqvEbymlOtZ+Mn2XlmHp8UVdAVmVp
 jLEEEPwktJ3ak02MVR1dCbmUe1din56G9SZ0wTU7YWKn6uh/r7prLsiMotVMW7egvS/B
 /8Op6TtBkUJx7dkzA3ECYm5W+CIdkVByHr5SrM+WXEFmPFbH9gCocxE8l41VSe4vNexi
 v2ScmmG2BCDYn+xOd8yp1zgmMSb4oT0vHwJiJM1bo6QLKd5b+Bd2WwXPH0cGtWtfIAox
 4WRQ==
X-Gm-Message-State: APjAAAWgZwrzIi7y/t7MXr6i7at/NwUquOiCp3iwpYcwuZwpkFd9Y0a+
 4qaDCNSjzDOlinIrHa/WDbWMGxew6R2cDZhbFpEfqQ==
X-Google-Smtp-Source: APXvYqzbuVfNGh5XRBrOq8FbFMia6iU8j+JSQQYBokkifbU6uegHzqiCIV16VOfXrmTaR5k6tR5UELbQb5Ra2iDYlqk=
X-Received: by 2002:adf:d850:: with SMTP id k16mr6450667wrl.96.1575503172158; 
 Wed, 04 Dec 2019 15:46:12 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1912040050430.56420@viisi.sifive.com>
 <CAAhSdy2id0FoLBxWwN7WHEk5Am770BizkK=sZO0-G54MtYa6DQ@mail.gmail.com>
 <9044bad02aa6553cdb2523294500b50fccf3fd2a.camel@wdc.com>
 <alpine.DEB.2.21.9999.1912041128400.186402@viisi.sifive.com>
 <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
In-Reply-To: <81530734312456aab8b9625d7e9bb071c43db1c5.camel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 5 Dec 2019 05:16:00 +0530
Message-ID: <CAAhSdy1WRKV7WoXH1ij+yfnjg5z6JidAy1zo26XCnUhOfSE4+g@mail.gmail.com>
Subject: Re: [GIT PULL] Second set of RISC-V updates for v5.5-rc1
To: Alistair Francis <Alistair.Francis@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_154614_868504_4092D1FF 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 1:20 AM Alistair Francis
<Alistair.Francis@wdc.com> wrote:
>
> On Wed, 2019-12-04 at 11:38 -0800, Paul Walmsley wrote:
> > Alistair, Anup,
> >
> > On Wed, 4 Dec 2019, Alistair Francis wrote:
> >
> > > On Wed, 2019-12-04 at 18:22 +0530, Anup Patel wrote:
> > >
> > > > I had commented on your patch but my comments are still
> > > > not addressed.
> > > >
> > > > Various debug options enabled by this patch have performance
> > > > impact. Instead of enabling these debug options in primary
> > > > defconfigs, I suggest to have separate debug defconfigs with
> > > > these options enabled.
> > >
> > > +1
> > >
> > > OE uses the defconfig (as I'm sure other distros do) and slowing
> > > down
> > > users seems like a bad idea.
> >
> > While I respect your points of view, our defconfigs are oriented
> > towards
> > kernel developers.  This is particularly important when right now the
> > only
>
> That is just not what happens though.
>
> It is too much to expect every distro to maintain a defconfig for RISC-
> V. There are constantly new features that need to be enabled/disabled
> in the configs and it isn't always clear to outsiders. Which is why we
> currently use the defconfig as a base and apply extra features that
> distro want on top.
>
> Expecting every distro to have a kernel developers level of knowledge
> about configuring Kconfigs is just unrealistic.
>
> > RISC-V hardware on the market are test chips.  Our expectation is
> > that
>
> Treating RISC-V as a test architecture seems like a good way to make
> sure that is all it ever is.
>
> > distros and benchmarkers will create their own Kconfigs for their
> > needs.
>
> Like I said, that isn't true. After this patch is applied (and it makes
> it to a release) all OE users will now have a slower RISC-V kernel.
> This also applies to buildroot and probably other distos.
>
> Now image some company wants to investigate using a RISC-V chip for
> their embedded project. They use OE/buildroot to build a quick test
> setup and boot Linux. It now runs significantly slower then some other
> architecture and they don't choose RISC-V.
>
> Slowing down all users to help kernel developers debug seems like the
> wrong direction. Kernel developers should know enough to be able to
> turn on the required configs, why does this need to be the default?

I quickly tried hackbench on SiFive Unleashed board with latest Linus
tree master branch (having your patch) and I am seeing 12% slowdown.

I am sure if I try more heavier benchmarks (such as stress-ng) then
the slowdown will be even more.

Here are the detailed numbers:

Command: ./hackbench 32
Number of Tasks: 32*40 (== 1280)
Average Time (without debug options): 3.10525
Average Time (with debug options): 3.471 (11.78% slower)

Command: ./hackbench 64
Number of Tasks: 64*40 (== 2560)
Average Time (without debug options): 6.3015
Average Time (with debug options): 7.05875 (12.017% slower)

Command: ./hackbench 128
Number of Tasks: 128*40 (== 5120)
Average Time (without debug options): 12.6275
Average Time (with debug options): 14.1455 (12.0214% slower)

It is this performance impact due to which other architectures (such as
x86 and ARM64) don't have these debug options enabled in their defconfigs.

I will send a patch to move these debug options to separate debug
defconfigs so that people have a way to build a debug kernel.

Regards,
Anup

