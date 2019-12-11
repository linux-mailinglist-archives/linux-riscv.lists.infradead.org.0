Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D6A11A629
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Dec 2019 09:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQeuS19F3KEdXprKaRD06DcqpTfUguGJp+E8RkyDNtI=; b=m8ymkK/g2P/i7+
	iQOx0M8T9G72mtXlj6VgFS+nPDy6VJVtIGqKpnJRtPfUU4myDxE7iTuHUy5BnPmb9bpLa9cHESP0p
	Z/VEl6jk+/ZjRMd3NbjIR4NTtgiTOyPOUP8eEq0Rup25yje90TnWbuQFSUe4Ey+QLS/iIgEPbVEP2
	1xY0iODZAaXgJxsJlcFmXywQrhe9GJL1hR4Uuoz2KlEwBqai0ZKG8DI9F/x3h+X2XTRIH/6eNyELo
	uJoI9IgkbpTT+CjSDMIsocKuCgYGjCXEW6IjH8edytZ3kgWiEgoJ+iLRfZWPxHDmG4E1Qmiv6UQnF
	Dcgrw8Tp8MrHAffaEAKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexaV-0005z4-T6; Wed, 11 Dec 2019 08:43:15 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexaS-0005yB-1F
 for linux-riscv@lists.infradead.org; Wed, 11 Dec 2019 08:43:13 +0000
Received: by mail-qv1-xf42.google.com with SMTP id o18so5407901qvf.1
 for <linux-riscv@lists.infradead.org>; Wed, 11 Dec 2019 00:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kQeuS19F3KEdXprKaRD06DcqpTfUguGJp+E8RkyDNtI=;
 b=VY1fSL/r1auTchjXjG0GETcmGWwfB6GldDBRZEGQMdCt01QI+QDkI5MX4VcXg7L7wO
 66TA7vnLMgNXMvyBNu2p7xpoM5a1z0pNR9tqxuMfwdJS01Q2hoGyGEhqwhX/5Ad0GFbw
 ULfKzKKfXzAtKfcrL+k3sOKWghQew0fgrir9DFyL8L0dyWjJADv4wo0bB+LQmh+IfYjc
 Prc7AYw3r9RECIRa0RpTe1NWrtp52LD7UGVwNT5fdFDr4GXlQmwnyQDghOVnPwPFDHEc
 TrrhNe281AuSSH6gWug9aKmokDALzvt8A84ynyoX27sQS+4FoaAtjzxC7nvUOM8m9lKO
 GFYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kQeuS19F3KEdXprKaRD06DcqpTfUguGJp+E8RkyDNtI=;
 b=eM17FcDzSYfBThNpsj/6+O0LOfhVP3+CQf9BhKQ51+993cEgVdCJbcPr2Q2tcA5jfM
 ot/ot6ch3DXPpdbQIJrIY7LT4tQQQ8ORx6NmO68j2G9ZQjp7QvtXTuwvXq5rFPvbM3A7
 gTe5qSAIA26USS+GGnXTUXVzSGdGTFtgSaPEdNzYQus5FkSuLE8tZawYUvYdPZs7DeUU
 yNZJ3XHJJwZh1/36OnBGOHblZ68W4sj8QHoAYO72gPEIt5Py8O4UMvoiE/qT9I65bthu
 xYoG7PwGFmGnEbU04QVdmoX4NWre7mK5C33P1okjLuRB4Brzku4plcwDiREJ6Q3v4+p6
 t+BA==
X-Gm-Message-State: APjAAAWIXdGoSTSMgNSSs7kXpZxDno2b8DRw8uh7opz3jo9xZIGDz8S6
 LrKn22kUBx0IieIHJxE945GsqNuAWaVj0wRwCWJ41buy
X-Google-Smtp-Source: APXvYqweaMiD2ZiXWYey5K6krVHrwXhWFdg3f53tPr8UKp9ZC0L6v7VCyZwhxpxHXFGNXWM7pLmO5OrULXovRSxi0gI=
X-Received: by 2002:a05:6214:108a:: with SMTP id
 o10mr1831132qvr.246.1576053790054; 
 Wed, 11 Dec 2019 00:43:10 -0800 (PST)
MIME-Version: 1.0
References: <20191028121043.22934-1-hch@lst.de>
 <alpine.DEB.2.21.9999.1910301311240.6452@viisi.sifive.com>
 <20191031155222.GA7270@lst.de>
 <alpine.DEB.2.21.9999.1911221817010.14532@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911221817010.14532@viisi.sifive.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Wed, 11 Dec 2019 16:42:33 +0800
Message-ID: <CAEbi=3e4dzDex=zU2Bwvi+b=Jwz2NsT4fZPcT_o8umnJaub3Mg@mail.gmail.com>
Subject: Re: RISC-V nommu support v6
To: Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_004312_072899_6F8F09F8 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, linux-riscv@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Paul Walmsley <paul.walmsley@sifive.com> =E6=96=BC 2019=E5=B9=B411=E6=9C=88=
23=E6=97=A5 =E9=80=B1=E5=85=AD =E4=B8=8A=E5=8D=8810:24=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> On Thu, 31 Oct 2019, Christoph Hellwig wrote:
>
> > On Wed, Oct 30, 2019 at 01:21:21PM -0700, Paul Walmsley wrote:
> > > I tried building this series from your git branch mentioned above, an=
d
> > > booted it with a buildroot userspace built from your custom buildroot
> > > tree.  Am seeing some segmentation faults from userspace (below).
> > >
> > > Am still planning to merge your patches.
> > >
> > > But I'm wondering whether you are seeing these segmentation faults al=
so?
> > > Or is it something that might be specific to my test setup?
> >
> > I just built a fresh image using make -j4 with that report and it works
> > perfectly fine with my tree.
>
> Another colleague just gave this a quick test, following your instruction=
s
> as I did.  He encountered the same segmentation faulting issue.  Might be
> worth taking a look at this once v5.5-rc1 is released.  Could be a
> userspace issue, though.

Hi Christoph,

I think it should be replaced with this macro for cores without S-mode.

diff --git a/arch/riscv/kernel/head.S b/arch/riscv/kernel/head.S
index 9bca97ffb67a..5c8b24bf4e4e 100644
--- a/arch/riscv/kernel/head.S
+++ b/arch/riscv/kernel/head.S
@@ -248,7 +248,7 @@ ENTRY(reset_regs)
        li      t4, 0
        li      t5, 0
        li      t6, 0
-       csrw    sscratch, 0
+       csrw    CSR_SCRATCH, 0

 #ifdef CONFIG_FPU
        csrr    t0, CSR_MISA

