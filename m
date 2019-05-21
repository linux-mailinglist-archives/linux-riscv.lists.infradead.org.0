Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ACF25786
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 20:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bVvgVXOlBTgY/NFEQZ2/8ybrWrzvOlheQAsKWthG2I=; b=Abs10xMm8yIV8H
	IwgA1AEHkXtkpaMie5srjtBl16aL0EHYfPEI87WR++h5kTflgDFaqgED8GrYNKsI+M81BWyLMA1fN
	H9Wn0tx+L7+IryuQ/xFWnf7HlvD12KmUZp7/Nx+6wnMV4Z0muLbFNY2mk6aMFBq3cOIwf/OAJrDAr
	/pPIVDv0wlhHj4If8oOEZ55fUf2jP5asMCyFeQSTJ7a2dWwUJ50wrqaecz46IjU4S0Xeo83Fm+Ojl
	pMGEAYg/b6zJZWCu21cvnBN8TSqKY21awnzfYJiobvm44RfgwwjV/hEZIeGMdUjboCv9Nr1wwdxwE
	pKbIJ/q2M+pVYG7gIcig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT9SM-0001Ry-Sd; Tue, 21 May 2019 18:25:46 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT9SJ-0001Re-WC
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 18:25:45 +0000
Received: by mail-yw1-xc44.google.com with SMTP id a130so7650462ywe.13
 for <linux-riscv@lists.infradead.org>; Tue, 21 May 2019 11:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ket4euZtb3xz1ehJlbZaL3tfZFi5DUGnboPkY3hOqrI=;
 b=CYnppNljbluNwkxhUzp7fN+4F5MYGWsEPpY8jH65mFnMLfU90Ylk4X8m1xwT/sXoSS
 rnyXsflhcA8XRQ3Zy44sQ5DASV9x1QhqnuMSEYrdabtHuTrxFhOYjK6icej0YXJuuXZM
 5VN/PjRFAQnjUm/DKDoTkItLZ+EE04y/Uzh/2qjSE0tZQgZBUntjF6a55kzqXqiETDQj
 sKcAGZabQWS/I8G5Ou3UUtuJmnb+BzXiNwzCsdGg9bIr0UAiwfFCtewSu2iqEH0PO249
 5eVvv9+hBqFTqWtZtIw0DLBZ5e72Q3rLIpPmPp3jjNc6vZMsCuPXbOzPYKRLNKq6fK8A
 6CZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ket4euZtb3xz1ehJlbZaL3tfZFi5DUGnboPkY3hOqrI=;
 b=JOzxzXrc+fh3vrYTWXltZ4hRwFKpWN73viHzyshzNk0kM7tiY/Jo+VHJ+cDykuUmBz
 /qsgLerCEy/yPcpU8efsHhrDkHKJQoptRsum6H+Olhj+9hbSwRmv2Y+1Jre/uaJmvLQR
 y1/AnV01rUdXJiufFFlLqRhsZb2oQSx/biUa8PXRtNV5KC+gc/cCVXeTxYlF4N/f9BUW
 iW8fIArAzSEP94naCN1q9vWEE3BE3lH31ttiGVCR3i86fTRjjmyfVg46nVahEAtPjaDS
 zzKcMtypkjXPJJcNfFwBpHtbX/GLEcotJWELm1qkrmXvagor3Rs4V8wMUzVHaNdhLMqE
 KBNQ==
X-Gm-Message-State: APjAAAWJncduKygFg/JYSRruN1M4fDDEDnl13+Kp/9nabPewHWF+AXWl
 HOxRhtIjFdT/4GFNgwQ24BmulKMT5zQr/rF5Gde0GA==
X-Google-Smtp-Source: APXvYqz2rPJcAHuNgBAXH1XHagqt69jMr/zWFdOQPCTaNY+iRYgUkO7fBPqB7cj50j1ezYTe5LgWGvm9D/DCeYHTG+s=
X-Received: by 2002:a0d:d60c:: with SMTP id y12mr36831206ywd.64.1558463142815; 
 Tue, 21 May 2019 11:25:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190520182528.10627-1-paul.walmsley@sifive.com>
 <20190521063551.GA5959@infradead.org>
 <alpine.DEB.2.21.9999.1905210110220.24268@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1905210110220.24268@viisi.sifive.com>
From: Wesley Terpstra <wesley@sifive.com>
Date: Tue, 21 May 2019 11:25:32 -0700
Message-ID: <CAMgXwTic9WWjVviEdvh2+0+LB1va--+7zJOt7C2YxsB=hu72WA@mail.gmail.com>
Subject: Re: [PATCH] riscv: include generic support for MSI irqdomains
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_112544_037540_2817B380 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Christoph Hellwig <hch@infradead.org>, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul@pwsan.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Signed.


On Tue, May 21, 2019 at 1:11 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Mon, 20 May 2019, Christoph Hellwig wrote:
>
> > On Mon, May 20, 2019 at 11:25:28AM -0700, Paul Walmsley wrote:
> > > Some RISC-V systems include PCIe host controllers that support PCIe
> > > message-signaled interrupts.  For this to work on Linux, we need to
> > > enable PCI_MSI_IRQ_DOMAIN and define struct msi_alloc_info.  Support
> > > for the latter is enabled by including the architecture-generic msi.h
> > > include.
> > >
> > > Based on a patch from Wesley Terpstra <wesley@sifive.com>:
> > >
> > > https://github.com/riscv/riscv-linux/commit/7d55f38fb79f459d2e88bcee7e147796400cafa8
> > >
> > > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > > Signed-off-by: Paul Walmsley <paul@pwsan.com>
> > > Cc: Wesley Terpstra <wesley@sifive.com>
> >
> > Well, this is very much Wes' patch as-is.  It should probably be
> > attributed to him and you should ask for his signoff.
>
> Yeah.  There aren't many other ways to do it.
>
> Wes, care to reply with your Signed-off-by: ?
>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
