Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49826850B3
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 18:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDiKZf4woLncR7FWfb7TCdfk+gpK0uyFbIvU33l8Nho=; b=qtBjHkmfQ7EcAc
	6Z694X27/Te5zvDPQL564jsiU54/QW9EO0XdVGaExw3hv0stvBwGjXFgpG0wQagyK8rWuZLvP35dK
	7yry97w1NZ4lAYFDeZ4/ycpwPA2dH9pmYaiDV9X/+Bv3Bg5mjnA58oS9N12+QFtIjZlIZgKFRaF5j
	fgU5dwdk/uk7XynmMVqspNEtjFq0qupsbgdH9wAcDbMICtSiABG1w8PxX+UnA7Y5LDGhjoqOzI8vq
	owCEDU96aGBDDTsfpLW7ysAX3kKXZ1caWddOk0V2U3kiXGqfSyb6OO/ESdHuEIKKq5DM3K3TzfFkP
	xUXjtO6U0Un8U5AmZFgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOVM-00070C-Pw; Wed, 07 Aug 2019 16:09:36 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOVJ-0006zc-CS
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 16:09:34 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so52083486edo.5
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 09:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uEKUzuSIOieOKjgCuQCVY/x844cR0AoJi6/Z5OUDMIM=;
 b=LrPZOuz0HGqD4Kwir2POvEwG6Wm0AYsJo4q/liBzsYnRbsOdoUdZ9+gGSWwWpT2dV9
 Hbl7OOlJ98rVNEE2jQtsZfjJ266Hx0c7DRyTVp/z1LnwpiDTkzl3VCgOKIHf1X9cmA6H
 DooTlSvwHmBFutN18ahdm1ZvExphu8yk5hV//jVQhFqj3J+8W8BZcMpcP5c7mki0fW2U
 3xj2OCtmljTANhsMXZsyQrhvfE8ntW7gd+z3flw4he6awCorNwagOQVmP5wS0nF6jK1N
 UyfCGLPbksv1oPZ///GJbyEYiIiWDV9Pa1LUpRnWRGcfz+oc3Scgz9lhS0zEF0P9rVqp
 sktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uEKUzuSIOieOKjgCuQCVY/x844cR0AoJi6/Z5OUDMIM=;
 b=nRjLMZ0Q9NbXjk63DCVMujqFKgQ52bOSq+ccYMOwji15+qr3h1YxiuGhSfJ75F1nb+
 GJzlkH2WbT75D0r8Ib4SnsMjQrDsfkXISyllzWiotncqxMgMAYUo/9YQcO0eSUDFKbzj
 2TIl8gyi58k6riPb/353ZfeDTYaIHdx5ysPTZ6VxZ0pSWoQbzSt6l5slmfBb4nP62oVf
 NEBX3qZMyQUNb/KmlH+HxU9MPvikcvA55o4dcoKvo9dDJl2N3sNRl15iAWEBUZ1cZXhl
 zXwze9mmCxMALUQrarsCzIrVt39sFHqW0c+rDip8NHduKboOcHvc6ytgefLYScn+D7cB
 tMyw==
X-Gm-Message-State: APjAAAVxcG2VtQTdhbGBhHFWp4Jet96E8CT5zxlqKCC1GFCcB9qP95bV
 c3a9kChROyrv9O2E5pZAXuH943/3zO5/kvglxt0=
X-Google-Smtp-Source: APXvYqxsctDkgkH0yl5HSxpdoNZDgP83W0rZCf4zRbEbirUbD90BGlEEpt5u/ZXqsSMuPkzEVHcqKK3Q5CaBBdXLoXQ=
X-Received: by 2002:a17:906:fc5:: with SMTP id
 c5mr9143221ejk.129.1565194171359; 
 Wed, 07 Aug 2019 09:09:31 -0700 (PDT)
MIME-Version: 1.0
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
 <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908061838260.13971@viisi.sifive.com>
 <20190807054019.GA1398@infradead.org>
 <CAEUhbmURQxPtmU78__OqOnQhzyVHpihxgzLtkOk1K0dDNprZYw@mail.gmail.com>
 <alpine.DEB.2.21.9999.1908070842400.13971@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908070842400.13971@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Thu, 8 Aug 2019 00:09:20 +0800
Message-ID: <CAEUhbmVKjt7rabtx+E4vki7faT2+Vzt=vC4HuQvWbxdRnoup9g@mail.gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_090933_451459_CD5B2040 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
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

On Wed, Aug 7, 2019 at 11:47 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
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
> Christoph and Andreas for explicit Signed-off-by:s, Acked-by:s, or
> Reviewed-by:s ?

OK, I will remove these SoB tags.

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
