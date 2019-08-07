Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4902985040
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 17:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IfdvupPv3Om/021yNtLaXeF0Ztxtq8IxA1OWZeXXqc=; b=Zvgth4YjzZ08/r
	7fSy0bTl8YGPDixszXXi1wFEezpkp+04S5I+CArv3U+mIB4cDjh+OrevJGuAT/jiAqnCDGMt1cV6K
	pvDSs7HcKL/40RHKkmYS33FTHhzqWCqbXJWrROtQY9vHNT4ij+7HG09a8916nlXshxn2hkU6gKOOi
	YrW2SVQXUVRLm/BtnOSIthnpfjsCTEzZNN0NLaCJXLuiaX0Fo9LqV0xeHibnR69a0r1Ag1vqIvWmL
	h8M4TaSnz3bgTWGCQT1SnvFRNYzk5Gk3VUZxHvWTLWArhemzq50jaOFYTMsGDsgVTYKteqnBN8rQP
	O1VxKfT/BHOVLve/RbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOBu-0002zd-Ha; Wed, 07 Aug 2019 15:49:30 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOBr-0002zD-KM
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 15:49:29 +0000
Received: by mail-ot1-x344.google.com with SMTP id n5so106253541otk.1
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 08:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Pw0KReD3UjYaZyXFehW1PUjUssVPjpUxwzFEIB50h18=;
 b=K2JwskrtDmdXjwudZm6goOC9K6pGvHIpUMsXtOgnQzD9hw6qbwRBmRrvDAwnDh3AiC
 q3ZTogZnNAW414vs41gzVJ5MNg56DRQvAlXINLIxynbN62AtILu5IRzcrg4kMWG74HoI
 bd0kDxCJF6RwjvClvtoP2zvr8a8VbuwjwmN0MtZ77oJY/6Pvhd8vNVU75ggHGgDJ92j1
 ypamovvP8ee9udCGkK1mrpH/cICdrjPSc5s5mLDNivlm8iPOagAQiZ1l2o8F7lrtHNFQ
 G2dzHQyUE7jN9TFK2MI8v4cTqYGoDK7FpekJWc7SnWpWaFzjWoXg879KQbbyb43cn/B9
 zgBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Pw0KReD3UjYaZyXFehW1PUjUssVPjpUxwzFEIB50h18=;
 b=A6xd0Y/2lSMZR35mFwajhWVcFLE5QI4ZyjpD6uhfCXyeCICbPY7Eq77e9n517f39JC
 tolRJFMjdYXoVWBTtbtypQqoxDJmqNLhL4D+momz+lYWlEfm4DOFFIdXsXlpcIPqnNXh
 gt0WGwC2o6VyxXDsHM74VhHbAondvMDIFz/PQsnR/A+NwrqErcmouQuWF5nYMWs8BzNe
 7+MilaeksXvGgwQJf81ZjlixNebsdxKDxRdiI91a/xROBfrXfRMqzICu2Q7r4v358Ysw
 AvkoTiLpLn7cp+nYB1yc+LDUEuIRy6eXHEmHZApbHqgEnRXWLt8ewvnpAbwMbWAyvMpX
 BzrA==
X-Gm-Message-State: APjAAAVGjxg670U0DlQLHf7aBN5HypJXXnk8Ka7Zt1trHlT1KNpb+ISI
 Lrj4G5gA6GQk7soNUlD4nvP+Lw==
X-Google-Smtp-Source: APXvYqyql51aPw4PFJEFddA6YHaov6Oph7C9JLH4AKF6KV+N1yUF0dk0WxEStuFG1tZNAhLFz6adrw==
X-Received: by 2002:a05:6602:104:: with SMTP id
 s4mr9954798iot.200.1565192966931; 
 Wed, 07 Aug 2019 08:49:26 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 b3sm76293956iot.23.2019.08.07.08.49.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 08:49:26 -0700 (PDT)
Date: Wed, 7 Aug 2019 08:49:25 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
In-Reply-To: <alpine.DEB.2.21.9999.1908070842400.13971@viisi.sifive.com>
Message-ID: <alpine.DEB.2.21.9999.1908070848550.13971@viisi.sifive.com>
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
 <20190807054019.GA1398@infradead.org>
 <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908070842400.13971@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_084927_671829_7E7FF587 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Schwab <schwab@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>, linux-kernel@lists.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Paul Walmsley wrote:

> On Wed, 7 Aug 2019, Bin Meng wrote:
> 
> > On Wed, Aug 7, 2019 at 1:40 PM Christoph Hellwig <hch@infradead.org> wrote:
> > >
> > > On Tue, Aug 06, 2019 at 06:39:59PM -0700, Paul Walmsley wrote:
> > > > >
> > > > > I have already sent a similar patch (with more places fixed) on Jul 11.
> > > > > https://patchwork.kernel.org/patch/11039421/
> > > >
> > > > Christoph's patch predates yours.
> > > >
> > > > If all looks well with your patch, I'll update it to remove the overlap
> > > > and queue it after his.
> > >
> > > The one from Bin looks most comprehensive, so maybe go with that, plus
> > > the hunk from Andreas for the instance that was only recently introduced.
> > 
> > Thanks Christoph.
> > 
> > I've included your SoB and Andreas's into my v2 patch which added the
> > changes of arch/riscv/mm/init.c that was recently changed.
> > https://patchwork.kernel.org/patch/11082147/
> 
> Best not to add others' Signed-off-by:s unless they explicitly offer them. 
> Adding a Signed-off-by: for the kernel denotes that that person has 
> accepted the Developer's Statement of Origin here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n431
> 
> Could you please either convert those into Co-developed-by: lines or ask 

Actually even Co-developed-by: lines require Signed-off-by:s as well:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n548

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
