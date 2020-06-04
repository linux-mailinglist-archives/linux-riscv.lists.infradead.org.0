Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBF21EE66B
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jun 2020 16:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yEGs+uGYQcALmyiA0Er3xPg8MnszGo+IJxHoGsVxvqc=; b=AKH8qMBjeMP953hQT1pTGylqz
	dKKaufK0a8jUUeycxusvCSE5vHR6YI4XsZJwkHQeFWQhBMEpdJBG6ro0p6vPtkEz1uaYT2kf8I640
	/T2smKCtcaFM4Q0RDc+Udwp6lQvla7jGZKcf668lQDi0tu0o9C761/gC56z0mQ3oieN2eAItuDsFO
	Js+5acstpA2xaqhgQO6vRPT/ALOxFyeCYRZHsBcazQKvdGNZqk+uRncRP2wxfhbornHv+1G/2k4N7
	vZ0BtzKCQc4m0R/SMMJZ5kayuCaHXiyVU8YWLFfCbumSCls++Ok5u932TFuO7u/vL5c/FdCGGbUmX
	G5bgubtpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqeC-0008K5-P0; Thu, 04 Jun 2020 14:15:08 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqe7-0007Pm-6C
 for linux-riscv@lists.infradead.org; Thu, 04 Jun 2020 14:15:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id x27so3680632lfg.9
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 07:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yEGs+uGYQcALmyiA0Er3xPg8MnszGo+IJxHoGsVxvqc=;
 b=HUeWwMO7ldREzsGnsSLlg/EFqbD1NZ+9v0xWynHiqNY8ZehdiwssTHcIKNO2S5nOaA
 kSdaask+zZrZLIe3QduJFlwJMNiVVYVRTGijiuyNS7Vugg1UcPlD1tLCtZTrDDvISmx3
 IAw6KOoV9dT+4FQ/3Nuk9vroDYOlYseY0r2E16nxoREGVOcIsET+bAuSGdKB7ZXo50Cx
 2DzuQ0TI01gEApEmHVvgX4/qKnlhSdE7oUm9lVyBVLzqZJKSq7YKynlBen+EFCyKMBE9
 DUqbgZmuVxlah+1QFLQ9FcVjNeGAw4x8f+/6a6m/TlgPO08IWBgUJWX/w18aQt61GM8A
 3doA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yEGs+uGYQcALmyiA0Er3xPg8MnszGo+IJxHoGsVxvqc=;
 b=jXo70mYEiMLylalxzoo+59o2rXFrLc1k8iXNO8hZP2X7cKcbSNYLS+esVK5dHTVGUy
 18XBFgqQCbGDo5SmImpg3rB6kHw1PvppsT6ZwGVibRUltKYkycjQorE8uq/RFaq3yIm5
 4YRIvUupCjArI3/oEgTRBExDyR6fCWs9typ7DI+5rqZtiBCsGPnk7wUH3hbWgUv1fRbh
 +QYI+zL/TbrSVNTvP4CrjHUYf/ojuo9LwQmhn3nPJfm6m+3ug7horKgR2KmIOrf5wi39
 PQ1OqEuu/hSO9KhAXqjBHuFTr7sGGVX+Pa++dJu5+kivs+bgFkJ7r+h+x1Z7bk51JUe+
 9T4w==
X-Gm-Message-State: AOAM533hcNIyZL10Yvp1XmAYODxWGZsSoEdeVhsezVJSPGYjzjOsIIPK
 oBu5zNCfUQed4wamdYTfBkvPNQRlQJTV3pGh25k=
X-Google-Smtp-Source: ABdhPJw/w28gg0juDGjAFc7iLnuiJpIX+RILrWUNw44fucbJH7BsISIXNyiW6OQYOcQKpooVoi6d2+4S/CCW4mhueVY=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr2664400lfn.21.1591280100710; 
 Thu, 04 Jun 2020 07:15:00 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-42b47524-b185-4972-9889-69f824471fa6@palmerdabbelt-glaptop1>
 <87wo5ct376.fsf@igel.home>
In-Reply-To: <87wo5ct376.fsf@igel.home>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 4 Jun 2020 17:14:24 +0300
Message-ID: <CAEn-LTqs76ofSUfrAWqTRNb8uSkYooZyUorx_=ei5rkHEWy3Dg@mail.gmail.com>
Subject: Re: Crashes with CONFIG_SLAB_FREELIST_RANDOM
To: Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_071503_292800_F64AA307 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vincent Chen <vincent.chen@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 4:33 PM Andreas Schwab <schwab@suse.de> wrote:
>
> On Mai 15 2020, Palmer Dabbelt wrote:
>
> > Sorry, I was trying to ask for a full config.
>
> Oops, sorry.  Here's the full config:
>
> https://github.com/SUSE/kernel-source/blob/master/config/riscv64/default

I see you updated the config for 5.7.0 and
CONFIG_SLAB_FREELIST_RANDOM=y is enabled.

Andreas, do you still see the issue with 5.7.0 kernel and
CONFIG_SLAB_FREELIST_RANDOM=y ?

david

>
> Andreas.
>
> --
> Andreas Schwab, SUSE Labs, schwab@suse.de
> GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
> "And now for something completely different."

