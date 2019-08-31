Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05065A448D
	for <lists+linux-riscv@lfdr.de>; Sat, 31 Aug 2019 15:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yKmUnmUAuG+O4fZ2wcCdBpo5qiP7WgiHhgOpMh6DT0=; b=jfk7aW2olOK6Oo
	wV2xoTON/1sWWaQaBnSIFOHVECir20klApLNZVWhMatdgZZEpRcCSTgLAOk06Z9EnR97npA58LPN/
	2j7bEuLK5is7vGnZ+SQMcgwDBdHxvsXQigm+pxqsTYPzeNNXvNX4jxrLDk+1toOQQbm6myL48AvrJ
	YToUtU+RmUm4tyY9ARlhA98DdqhERsE6g/icmuIxX422/7BxQAejR2hnpDkIs6HVRTf9LoysfHOnN
	ZFJuf9rsr9phEaKc0sct5p6dLwYA4IQ4+jD+c3Sbjt9XgKsS6gb/IQqe3O4S/9HEmTm8cjf9Ats5X
	XUdmlvxkTKaAj7Z4RtKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i434n-0002Xg-IS; Sat, 31 Aug 2019 13:05:58 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i434g-0002X7-Us
 for linux-riscv@lists.infradead.org; Sat, 31 Aug 2019 13:05:53 +0000
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x7VD5TgN012840
 for <linux-riscv@lists.infradead.org>; Sat, 31 Aug 2019 22:05:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x7VD5TgN012840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567256730;
 bh=0xiVhnfMMmWO7lCRxWhVZrU4jkaKCy6a+KRY9o5Jbu4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Kri2Ds8ogcpZ2aBA93wUjYRsVQbbjbOWH2D6G/dOSdnKir2gS5V1TM/6yieK7qgKE
 eVm0WFRanEcgOzQHud1R5JxHI/O6q1SNZe+IF7JhqcaWhqnM4LGq/UgH5CYVZv1h+r
 MAkSGmVUQ/7JIt96MMoy4+U2cozp/24KxQvpcN/ccAcRXh9zC2MykC65Mfp5x6Kdwr
 lc/bNeFNZxD+9mcf1HlekuYs9IXiFv+OET/PAMjbuU+4NClcpK9oGr9dRE68K0xgS5
 WLkX9ap+KaS6hfWWQUGSrY0zCscNmDUMfjxMCass6xSgmQzB1X+q7KywlplZm1ZlF3
 DYtxlHRFlESIA==
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id x2so3161797uar.8
 for <linux-riscv@lists.infradead.org>; Sat, 31 Aug 2019 06:05:30 -0700 (PDT)
X-Gm-Message-State: APjAAAW5KsKmykZ1i4a49sMwj3Nfn30pzWq9b4NXc+wbXt4VK+vkDxlY
 IlhNPeV3n5lqRXd+TPjwOKxNQVDDniUKt/VNvVc=
X-Google-Smtp-Source: APXvYqzR9pk5p/4jleHhBZpmxoBL+K0heyBbkkV3l4/DuJMvaVfcKNJWdK4dQsrXO2z6et1E1AIQjB5xOdX55JpYFX4=
X-Received: by 2002:ab0:32d8:: with SMTP id f24mr10368580uao.121.1567256729042; 
 Sat, 31 Aug 2019 06:05:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190821092658.32764-1-yamada.masahiro@socionext.com>
 <20190826113526.GA23425@infradead.org>
 <CAK7LNAQ_5Hz_CXAdx8W0bLjMWQ08KDWK3gG2pfDZOEE+cr0KEw@mail.gmail.com>
 <20190830155322.GA30046@infradead.org>
In-Reply-To: <20190830155322.GA30046@infradead.org>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 31 Aug 2019 22:04:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR2JuZkdJGxO=f2hUxmQca5d7430NC-2hiqZwkJphJ9sA@mail.gmail.com>
Message-ID: <CAK7LNAR2JuZkdJGxO=f2hUxmQca5d7430NC-2hiqZwkJphJ9sA@mail.gmail.com>
Subject: Re: [PATCH] riscv: add arch/riscv/Kbuild
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_060551_211921_9C46EB72 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Aug 31, 2019 at 12:53 AM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Tue, Aug 27, 2019 at 02:14:59PM +0900, Masahiro Yamada wrote:
> > There is a small documentation about "Makefile" vs "Kbuild"
> > in Documentation/kbuild/modules.rst section 3.2
>
> I know that part.
>
> >
> > It is talking about external modules, but the benefit applies
> > to arch/$(SRCARCH)/Kbuild as well.
>
> I fail to fully understand this part, though.

Kbuild support two file names, "Makefile" and "Kbuild"
for describing obj-y, obj-m, etc.

If both exist in the same directory, "Kbuild" takes precedence.

This is useful where we want to use "Makefile"
for other purposes.

For external modules, we use "Makefile" as a start point,
so we often want to  describe obj-m in "Kbuild" instead of "Makefile".


Similarly, arch/$(SRCARCH)/Makefile is very special
in that it is included from the top-level Makefile,
and specify arch-specific compiler flags etc.

We can use arch/$(SRCARCH)/Kbuild
to specify obj-y, obj-m.
The top-level Makefile does not need to know
the directory structure under arch/$(SRCARCH)/.

This is logical separation.


>
> > arch/$(SRCARCH)/Makefile is included by the top Makefile
> > to specify arch-specific compiler flags, etc.
> >
> > On the other hand, arch/$(SRCARCH)/Kbuild, if exists, is included
> > when Kbuild actually descends into arch/$(SRCARCH)/.
> >
> > This allows you to hierarchize the sub-directories to visit
> > instead of specifying everything in flat in arch/$(SRCARCH)/Makefile.
>
> Yes, but what is the plan in the long run?  arch/$(ARCH)/Makefile
> is still a weird hodge-podge of overriding global variables and misc
> Makefile targets, it now just has a tiny little work.

There are lots of arch-specific build settings.
We definitely need a place to describe them,
hence arch/$(SRCARCH)/Makefile.


>  Is there any
> actual benefit from using Kbuild for the build process?

For example, arch/x86/Kbuild is quite useful
since there are many directories in arch/x86.

riscv does not have many directories for now since it is a new architecture,
but it will be useful when it will have more directories.


>  Can we
> eventually move the setting of variables in the Makefile into another
> special purpose file?  Is the support for actually compiling kernel
> source files from the arch/$(ARCH) Makefile eventually going away?

No, I do not think so.

>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
