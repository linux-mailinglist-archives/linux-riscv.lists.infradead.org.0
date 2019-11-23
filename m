Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F78108112
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 00:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emUOzJIJU46V/nqct9eaGMuxOBdNCUgpQ4aeh3dXzfo=; b=JJQ3xna2j4EE9l
	KfL14EVA19HaxonJu53DUhjXtk+jXT01l1VYTG9WUKyeVComyirrnkhB37MKYEity7v7z6Z3B1baM
	0EV86jbhD39lXt4dqiDv7AVcmVf8+7czLzkw84M9+zK9AOHGRk4Ii88fAp8DAt/+tY5HnaOUWIln6
	xcFOwJrsekXkkGa3+mx8LgW4becdUKbAi5xpNqvI/g1XegYhd8+rUpMC+G7FZd9JfQKGaqgOZsTUf
	+droRiXUsxrB10stItWoPwKK/Y7390UnwQOQluy5jmHPcAlYvZ4hxcYOS5VSvTLzkj1UjMRQeMB+T
	5yO6i1Suj1vJ08V9woWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYewh-0002D3-4Q; Sat, 23 Nov 2019 23:36:07 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYewe-0002CA-8J
 for linux-riscv@lists.infradead.org; Sat, 23 Nov 2019 23:36:06 +0000
Received: by mail-oi1-x241.google.com with SMTP id l202so9910445oig.1
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 15:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T5L4Gn1hhSzVUcUQ6WI2TNf9x3LhnvpN90/COmumAnw=;
 b=yeA/sLZwxejLTkTA4QQrsDuj/+2JYc5Gz1JKu2xDO772QyAN3CDOdByAmUeMBoy5LJ
 zz8BMIPq0ShSOgKiRHjQ7bkDm6oGcBC9wtgcJ9gWsQmOKdpfZ9dtOsZ2PjmMCDjgGAib
 KF2otB1MAajxcKrsHB9/C2zgTgd+IUSjyqh7A7wQGmtJj4Qx/ebW1UK3AktErcSoRbdN
 o55EOdxvb3aowA/aKXe9EoJrwLOsTjzybS3c7QzVXu/SVHg8SHtbiLsxgmgs8x9huWCA
 WZd+lvKr5ZkU7egEzJFwE1Pv9DwLE7y7pMgmMpmtALlviycGBsPhvtK6MHt4RTAjoouH
 N8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T5L4Gn1hhSzVUcUQ6WI2TNf9x3LhnvpN90/COmumAnw=;
 b=iWtr/UykYFCyv/z0Phn7KJBAMlBhXSZJDEFAMYQNIMHpOGoJdEiomsvT1Vj7rKPez5
 mO+FAwna3e/v27CsSUMQJf9ohF6PhwiKr0neKw0Sc889FTBb0EloAJvKb93wQXLNpnBO
 EOiUI7OQ3XRhRDmyQovgOAqPcxdQ4cDi2HCL3+cQO5M83KAYXuJBVWqUDmAloUJjXyv/
 uLe2ctvxZoKvoTstSJAcrLc5vQCE6+ujICw2AVvpptGOg4jFt+/qJIAN2oNljyH+8ZOA
 Vw+b1zIWCHb41vYcN2XUhl0AdiqPj36dzoQoGixOaFplp5r319QKzIjiuu4oJVh6XcV1
 kR0g==
X-Gm-Message-State: APjAAAVRpWf5/5HXrG0wy6Ocg3djCVDr5Hd17Ni0TGPgIKKeVPuMsgeS
 afGM3DTNeH0I4zbC6ADxTDpJecvshtR/9x2jrrR/9Q==
X-Google-Smtp-Source: APXvYqzYAzV9FzTAnT3siA1wHlJKRAHjMitc1EcCn6cfgNohnZwV6E4k19jMHeqWhusSSVyNMc4q1Be4wCoNN73QqDI=
X-Received: by 2002:aca:ead7:: with SMTP id i206mr18410174oih.0.1574552161328; 
 Sat, 23 Nov 2019 15:36:01 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 23 Nov 2019 15:35:50 -0800
Message-ID: <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_153604_433534_24FDEB29 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 3:27 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Jon,
>
> On Sat, 23 Nov 2019, Jonathan Corbet wrote:
>
> > On Fri, 22 Nov 2019 18:44:39 -0800 (PST) Paul Walmsley
> > <paul.walmsley@sifive.com> wrote:
> >
> > > Formalize, in kernel documentation, the patch acceptance policy for
> > > arch/riscv.  In summary, it states that as maintainers, we plan to only
> > > accept patches for new modules or extensions that have been frozen or
> > > ratified by the RISC-V Foundation.
> > >
> > > We've been following these guidelines for the past few months.  In the
> > > meantime, we've received quite a bit of feedback that it would be
> > > helpful to have these guidelines formally documented.
> >
> > If at all possible, I would really love to have this be part of the
> > maintainer profile documentation:
> >
> >       https://lwn.net/ml/linux-kernel/156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com/
> >
> > ...if we could only (hint...CC'd...) get Dan to resubmit it with the
> > needed tweaks so it could be merged...
>
> It looks like the main thing that would be needed would be to add the P:
> entry with the path to our patch-acceptance.rst file into the MAINTAINERS
> file, after Dan's patches are merged.
>
> Of course, we could also add more information about sparse cleanliness,
> checkpatch warnings, etc., but we mostly try to follow the common kernel
> guidelines there.

Those could likely be automated to highlight warnings that a given
subsystem treats as errors, but wherever possible my expectation is
that the policy should be specified globally.

>
> Is that summary accurate, or did I miss some additional steps?
>

I'll go fixup and get the into patch submitted today then we can go from there.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
