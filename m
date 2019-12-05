Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7F211456A
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 18:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HcoTcF4iRuur8fj4ZxTucRs4Jlu4z0J4uMeCsvrPgA0=; b=SKGT+alIXk5ZCNllTjKiH0/Oc
	OKqAGpI+ZUJK/sFBuBTzBVY+TyxUFkN6XRTMpn4fE60k/tjgcY585OllUyE45ZpbpJIMJtwA19eip
	5KWE4P1xX7VDNGcq3Vff7BkqZVNfCxmHPZX/A0GzYpyPDQ/CBYBv+p4fszcnQ4PYpKoD11LJXBTyK
	cJHze6/3Y2zESb2IRqESMBvG672GZk1MkrhT0/KVKvRfj20PoBA7K+LDOJH3x9299bebvNqYjwafG
	aZy309EFODF5M+CvwTW6yWMHOAAqt55xRZKSsrqV1zwO9wKC/xBBpbJbzlxc/cxI7MYDvFHgEExZf
	5xCAMjaQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icudr-000872-FT; Thu, 05 Dec 2019 17:10:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icudo-00086H-Cs
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 17:10:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id c20so3049308wmb.0
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 09:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HcoTcF4iRuur8fj4ZxTucRs4Jlu4z0J4uMeCsvrPgA0=;
 b=GhB+Cp5GOFV9kdBjApIpdy8Oog116Zo+KvrUdUrw4aeA3NNowP+teHJw08qpODUq58
 Rd1X+kIkDOvrow7+B2HCFYOGogx9cRB4KrY8B0jO06HKDTfh95VhVbDwjHPotNILj0Wy
 mmmUvmsesOWiFMLwd/qFV67yUxuZ7fyFDpCWnbiGtCkSJ+wOS4Dm/UAAEELhj+toaQLk
 4btu6/ModWT2ApflPzcCOeDme6VbmOXFAyV9aI//qKfWt6+/fGDtuvYKug78C/KQqV5w
 /dp0NqUIDNdvLstMHXRKEomk7cttm1xW6Cvo8unmJUOEvMf8nGkTYba7xbOLPtho0aFv
 kChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HcoTcF4iRuur8fj4ZxTucRs4Jlu4z0J4uMeCsvrPgA0=;
 b=TTbLUNwTS/1UI/wCz1cjcc+tWTV4Lif9YpHlWg6Jj/ayvSjIB2KL8uUyxKPKcJYoEH
 tBhnj9xGyA6ogAbsZBxEDI4jHM67hmEiq0jVkpvxG80UYQM3aBmrsAP4sOLjC5jCbci7
 JllhnvvVB5pDAn/JaSJVFWATG+wKSIqmgShZpTYclyhheR6vu8piipRTO90YuYhpmi3o
 PuFRxXYxky2MglJwrrrPicc6sIp6AZmAj4iJ5b+xls78Efo8O8gFtjxNovr3QLOeIwDE
 GZ99VhNeqMlxH+MC+wuvWSzAARHK0rExZ1a28RK5edWp/bFbU5pPJsz47X8hH86gJWUX
 gXJw==
X-Gm-Message-State: APjAAAW0ZVwLsP2GxT6J9F7bz9MVo+mS7Yqvfc7DaA+eYTLTHrA9c3st
 Qw7RdrHf3EON5XVWakwNheSCwQqz9RbokVjPmFz/Sg==
X-Google-Smtp-Source: APXvYqwCDsQjsFf4aCoujj4lgDcKz1RHdCiPDAZd2dsX4LRayTGzMnK+ZmkuGr5iNH8DVweFmWFtFB/IBrnXgzBpEvw=
X-Received: by 2002:a1c:9602:: with SMTP id y2mr6231625wmd.23.1575565810251;
 Thu, 05 Dec 2019 09:10:10 -0800 (PST)
MIME-Version: 1.0
References: <20191205005601.1559-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
 <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
 <20191205164706.svarpjp2kdokl2pg@holly.lan>
In-Reply-To: <20191205164706.svarpjp2kdokl2pg@holly.lan>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 5 Dec 2019 22:39:59 +0530
Message-ID: <CAAhSdy3cMp8241Mcwb7tQCRd1LEzv9gKO2wyq8bctW86c0BVRg@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
To: Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_091012_441081_4987BB60 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 10:17 PM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Thu, Dec 05, 2019 at 10:03:34PM +0530, Anup Patel wrote:
> > On Thu, Dec 5, 2019 at 8:33 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > >
> > > On Thu, 5 Dec 2019, Anup Patel wrote:
> > >
> > > > Various Linux kernel DEBUG options have big performance impact
> > > > so these should not be enabled in RISC-V normal defconfigs.
> > > >
> > > > Instead we should have separate RISC-V debug defconfigs having
> > > > these DEBUG options enabled. This way Linux RISC-V can build both
> > > > non-debug and debug kernels separately.
> > >
> > > I respect your point of view, but until the RISC-V kernel port is more
> > > mature, I personally am not planning to merge this patch, for reasons
> > > discussed in the defconfig patch descriptions and the subsequent pull
> > > request threads.
> > >
> > > I'm sure we'll revisit this in the future to realign with the defconfig
> > > debug settings for more mature architecture ports - but my guess is that
> > > we'll probably avoid creating debug_defconfigs, since only S390 does that.
> >
> > We have a lot of users (Yocto and Buildroot) dependent on the Linux
> > defconfig. I understand that you need DEBUG options for SiFive internal
> > use but this does not mean all users dependent on Linux defconfig
> > should be penalized in-terms of performance.
> >
> > This is the right time to introduce debug defconfigs so that you can
> > use it for your SiFive internal use and all users dependent on normal
> > defconfigs are not penalized in-terms of performance.
> >
> > If you still don't want debug defconfigs then I recommend reverting
> > your DEBUG options patch and you can find an alternative way to
> > enable DEBUG options for SiFive internal use.
>
> None of my business (except that I watch threads with debug in the
> subject line) but why propose putting debug options into any kind
> of defconfig. If you want standardized set debug options to chase
> problems why can't they into a .config file rather than a defconfig
> file.
>
> In use it will look like:
>   make defconfig extra_debug.config
>
> That way you don't have to maintain two almost identical files that will
> inevitably drift apart.

This is a good suggestion. I will certainly try it out at my end and send
a v2 with "extra_debug.config" file.

Thanks,
Anup

