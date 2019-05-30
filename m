Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2DA2EF77
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 05:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWc1SNNahBlLbKCeUPU6qJqLmsO1Ce2EBxtI6UgCZfQ=; b=Htek6deEELeg9k
	5LcaI8zx4QztAp/dyOHDl2SoMMOb9wB4G8EQERyr8BdIQp33aV/CZhTLnzK5CmNpFQDF46ZNXIBzp
	Zr266K3FnLJH9DGyKQMYr0fFXJ0kMkT/kXrsfXe0HWyljnTkccNG6hTV81PU3OUc4OhzCy8F2DbJm
	3Qtqa5f0Sp14qtxDdAcljlJpkullhF1WViqXh6nKMvE+W1JN6L7kkkhGDF0eQKI68MIS3/mABpfI1
	oa4/Vby/uo+mKr3RSCy7LGFqJdX4y7Sld8AVSxezR4PdmznRx8jzma9U6/NXZ4h3IIEsvzIyARbBn
	OUYE+LbRb8v86phjZ4XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWCA6-0002r2-FI; Thu, 30 May 2019 03:55:30 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWCA3-0002qO-L1
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 03:55:29 +0000
Received: by mail-vs1-xe43.google.com with SMTP id t20so918671vso.2
 for <linux-riscv@lists.infradead.org>; Wed, 29 May 2019 20:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X6NmEU4MLUbNQzagh8gX4QP4iLT9rJQT3hOjSe8ifDc=;
 b=PJS5UiBmoSH/3DJyhxGOMZG78bXAyiUF4XTie51QZ7dbgrXI1zCLR3U8Nl+oOK36ky
 kgARiC+iGA0i1LgHSOLzmR9shhXniAyk1IfzwKi+XPwvVHgfE03N/vGUPMxHyaxIlKx3
 QNXmFoxqGrKJOjqsHXU1/mJ/s9zGASzYh6YhWWPJy6CFDLEx25e8KxjsT3NBDb597sbl
 SA14y4kkxHlk4s0JDfoa3UNLmgvUQSpA1IyfYq+YUB2WaLr6p18KtYY4J1x5AtI/K0FR
 Coo5aBmnhdCVaZKubHKwmLDOMc/9dOUm9pAKRbPZ+t8jViw0uJPDgOKW9vhTA10HSM+E
 3iHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X6NmEU4MLUbNQzagh8gX4QP4iLT9rJQT3hOjSe8ifDc=;
 b=iA0byn+M6lIkkkEfYJKdGyGBqlIEDCu8nk/hFOORsPIo9jv3ptVwKzcVcfOaF+bsZn
 s+at3lJHUT6eXsxaZW1jhOJIUCJnJAM7cxno24x1L20g+XW95gyoZ/8Z76e2IPRckxFF
 DIupwWkHk/va29Xh4h8R2Nsx5FqkIOvZFaJAHFaTWV8HtIVjJ/y+a1fjkXYYRKOCzFOX
 MWP6t5E65AxhqlpLmJA/uTWIfCcY8hmWLzSL/r1sk8hsdegGIoi7uAtcuFwyvJizz4EL
 hxgeus8wrSh4VIImLK48fHh3YTGOd9Rbj3vjcxnRNO/gHAk/UOCqx9WruKaJbevKWbU6
 XSog==
X-Gm-Message-State: APjAAAU0FDqCkpeldjln9/Poq4yPV8v0psOcBFiD2Yo+4kyODggHWWd8
 1RXvOWbxEpGkJBTneCfpNBQfKQVtXG7rKAd5ayqJgg==
X-Google-Smtp-Source: APXvYqyyO5WeLJ5dPlMguAquOq6SsWs0QbvlKAigq7mHtha3TTqf4stH0xxhv4lIkvOmn1XRkHOYt60//4J8swpgBXI=
X-Received: by 2002:a67:c84:: with SMTP id 126mr769392vsm.178.1559188525890;
 Wed, 29 May 2019 20:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
 <1559104047-13920-4-git-send-email-sagar.kadam@sifive.com>
 <20190529155346.GA18059@lunn.ch>
In-Reply-To: <20190529155346.GA18059@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Thu, 30 May 2019 09:25:14 +0530
Message-ID: <CAARK3HnRq_pZHsS0CMbDx==P0VGb1V3AZyg078bhD49+i70TqA@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_205527_753772_8B235945 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peter@korsgaard.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 9:23 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, May 29, 2019 at 09:57:27AM +0530, Sagar Shrikant Kadam wrote:
> > The i2c-ocore driver already has a polling mode interface.But it needs
> > a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> > There is an erratum in FU540 chip that prevents interrupt driven i2c
> > transfers from working, and also the I2C controller's interrupt bit
> > cannot be cleared if set, due to this the existing i2c polling mode
> > interface added in mainline earlier doesn't work, and CPU stall's
> > infinitely, when-ever i2c transfer is initiated.
> >
> > Ref:
> >       commit dd7dbf0eb090 ("i2c: ocores: refactor setup for polling")
> >
> > The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> > FU540-COOO SoC.
> >
> > The polling function identifies a SiFive device based on the device node
> > and enables the workaround.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
>
> Hi Sagar
>
> When you repost, you are supposed to add any reviewed-by, or acked-by
> tags you received.

Sorry Andrew, I missed it.
I will repost it, with acked by Andrew Lunn as you had Acknowledged it earlier
>
>      Andrew

Thanks,
Sagar

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
