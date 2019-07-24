Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C56272767
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 07:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGfgCxg7XAqxeitMd5zyOAmU8pEk8JcYNLwwwqgal9g=; b=XqYS3tITWiISa6
	BEB7vnkos+lKJMogt/cDQCYd/ZpZ3wU0fxmfsItON47IpVc4TYryez0FRQq0yZwqUYCvUXuV8kE1a
	3F88vcWgz3YHaEIRqQealoQZkWVMVQ/bxEZnuHV42DSQUdmBnNWnh6GAt8T504BAewYIgs2mYluVN
	LzExhswwNEOIVFCYourdz7P7zT3qMGRviWJwN+32zGPmKqZTu0+7ccnLI3cvtZ/F5EI775THvJc7t
	MHGbcrC0UYOX0CySkyhR8I6GrXUrQiQb4V0vdNZyc3WMkqshyRSwHWAuagLBUCaMf6jAS5dFCeP+e
	qt9PguO5lYhsfA/GalcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq9z1-0008Lg-NV; Wed, 24 Jul 2019 05:38:35 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq9yx-0008L4-Uw
 for linux-riscv@lists.infradead.org; Wed, 24 Jul 2019 05:38:33 +0000
Received: by mail-ed1-x52a.google.com with SMTP id v15so45989128eds.9
 for <linux-riscv@lists.infradead.org>; Tue, 23 Jul 2019 22:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JFJrr4jnyieGekY6TwmepZZTfIp/uL5Na0pwg49/35Y=;
 b=RxCYFRF4ngINXvt5EguI5wCFt7naJYZRng7l2eI/dVa3U31l2BzZmBCXgrMd7tSGge
 iGEoKhCQt/WKZtFKq21P4LVeqDJrtJ+AQGzDbKs2ZFUkJbrDTHaVE/vUriO4aZJiHYvs
 8XOSlQZzo0IPW83UVYcZJyjIxY8x9cuv1LbEP7nQKAlu4Mo0Kstdb+8oxCuBG/ih6AFy
 Tce4sCSHCdw2Gw4U8NndocGw1pppG9ddPW+DK44I0n4J7zKlhHxcxftnbPItHzVP7zf8
 stkN8rQwxcq3aF4aM7NSVIqXzia1gNFzw9h/DUxoLajduH2nHgFX3RbXDFTopfoanqP+
 m63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFJrr4jnyieGekY6TwmepZZTfIp/uL5Na0pwg49/35Y=;
 b=hm9OrYcH2vOWG2eQ+UD40e4nQRd7ONdU1zWPHGBtX6Oj2Eha5bVBzKMu8Il1oOKjU8
 eNyKpjvQaKZ9so1CvIjzWiMrN9yamGLP6B2H+AsqllUOj0RMk9PkuaWAbLs+W3ByGNPg
 vcN3Xc0uQuBiID/nI1ymdUz9dMPnX91Piy6rQbQiTYptlZXQvlE7hs/cHI/5aeW2AZ02
 hMbvpyeqs3JKbZGe4aSCeNKztGhMWoUmBPli6TvCFc6xQ7w5nvfAvv+7d8hLlGUUSTIw
 aq4Pt2xlikj42Rjix4959VATk1nWd1DoceJr27LtryRPIN3aAR/2xlyG9S7N/Q2cavZt
 nkhw==
X-Gm-Message-State: APjAAAXgK9YcGQCK6Q9cmqgjHp77ifrD4rrJOKE2J4SdT+cJFmFKkJIK
 aFwDqH04IG7ZnaDSfXt/eBHgPH0tOd0k4TYTP68=
X-Google-Smtp-Source: APXvYqwGMv3AXRszj3HqDcfJ3o8LEbRS2m0cd0JuY8j0AQWgqcvxcfR4Xo44rLqrc53MwuNMTqCEJSAzgUvdI6FnXFQ=
X-Received: by 2002:a17:906:340e:: with SMTP id
 c14mr62418143ejb.170.1563946710317; 
 Tue, 23 Jul 2019 22:38:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAEUhbmVqB+WpsZYbwLj4ZAAL1aESbNO_6roHdq=EfxgjDbcRTg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906211355370.13854@viisi.sifive.com>
 <CAEUhbmVQ-HAWYwh1mBp82kBXkpk7fiT9Ow83=qX5-q32B6Pn6w@mail.gmail.com>
In-Reply-To: <CAEUhbmVQ-HAWYwh1mBp82kBXkpk7fiT9Ow83=qX5-q32B6Pn6w@mail.gmail.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Wed, 24 Jul 2019 13:38:18 +0800
Message-ID: <CAEUhbmUi0k_mKwn4uvQaMZCcP3z0Zf_gtCCvzRtEn4Z=iDzaCA@mail.gmail.com>
Subject: Re: sifive-fu540-prci.h license (included from fu540-c000.dtsi)
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_223832_026993_F300E0D0 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Wed, Jul 24, 2019 at 1:29 PM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> Hi Paul,
>
> On Sat, Jun 22, 2019 at 4:57 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > Hello Bin,
> >
> > On Fri, 21 Jun 2019, Bin Meng wrote:
> >
> > > I see fu540-c000.dtsi is dual licensed under GPL-2.0 OR MIT. But there
> > > is one file inclusion:
> > >
> > > #include <dt-bindings/clock/sifive-fu540-prci.h>
> > >
> > > This sifive-fu540-prci.h is only licensed under GPL-2.0.
> > >
> > > I think this prevents anyone that has GPL contamination concerns from using it.
> > >
> > > Would you please consider making sifive-fu540-prci.h dual licensed as well?
> >
> > See below
> >
>
> Has the patch been applied?

Never mind. I saw this patch in already in the v5.3-rc1 tree. Thanks!

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
