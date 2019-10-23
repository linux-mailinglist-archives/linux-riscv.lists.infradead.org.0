Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC05E257B
	for <lists+linux-riscv@lfdr.de>; Wed, 23 Oct 2019 23:35:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQlFJ9tYdWVnHWQybIrK2DuPKVKdgDdtF+WKYeMom5U=; b=PLwNfEH3x//esN
	i/iAEd+eXONovIg78KBGrTYuj5lglr8M3/jik9YfaF2mjF4iNldFxuTT4cny3Y0j+illZFuwJ2kj8
	i/tFlJKsbsmLX+4kLFaIJklwoa6NrO6UGtMyeThgRpWuu2HIkbB1twvchObTidH+HHoGfAems/V0i
	2jieyXPOcPv1rFkUr/Aq+iX+SDORi8ZWAaXLretBm9co0/G87Aft7cAVDA6M2w1fL0c97EgikWVKR
	rX3MB4LOBhmtrAzuPqVxMn8jVln2MQYgNllYjOYCbp2gd64ybpcFurwqdq336uFvmKcXC/0GVF74t
	8vJJRngFi6bY9OWK4zbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOHy-0000YP-R6; Wed, 23 Oct 2019 21:35:30 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOHO-0007N4-NF
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 21:34:56 +0000
Received: by mail-lf1-x142.google.com with SMTP id v8so16751393lfa.12
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 14:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rGPwK2qvLOHHeiShwuNhPOMbtWTnBcRhDfAqRa9bPnI=;
 b=l5F5PrtU2t9i18n6xfCjgMWrG874CPae8jsguMum6ERhJNmTCZL1Sf8mB3QrUPdOqX
 6/28YdH4nbJZ9kZ6IWZM9t8zgUYYNaebbCGj2J7sLm0b9g1girH70KAcc51l0SGd3FY1
 NxmQlBVu639C8YXA96OdQo+udlfgBsZ+ZoEYqqEYijugS0PRDl5V614TDT1jsw4dCxZZ
 BN8PInrbqRfRa/ncPI0Vd1wy7Ruo97EphkvQIr/cd5q0wHUp9VuVIb0MpJyj/PdjfBs3
 el8VXIDpssMYJnyr8VNuzOgz74qbu67jwNnncZcgNydym3v716T9unVN0w6ES1MwuJ5S
 Go2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rGPwK2qvLOHHeiShwuNhPOMbtWTnBcRhDfAqRa9bPnI=;
 b=uH64BnzSf4N7vspxBrQMgm6hssDZrKgOajUEoX+qsZUHdsC8El73begSoJGnwznDYp
 fe8kYY445FoBl0pv/1XpOKC8x0wrVPuNEsXujNoY4o06YDF+PWZHXrAOxklaPGN722Ci
 jS0Gd5R05DcDyvpe1kJRFHXWPVAVfLyS6+8cgTIvLQGILXmsMhRr6ClYX2L6OMDqHl9Y
 uAUBSpLwlxk3BJvL1C8WM+25oVVsGMJG0RQq2anTIsRFulEapSWIaYZagqqCKidUjuiX
 dzKnwJjS0OmxO6SZLlhZpWkIg/G7VKsU/shSK6mZmLAu1YmN72DZoB0f9nl8P5xNC5Px
 aQRQ==
X-Gm-Message-State: APjAAAXkTDMhqb+02EBM34l7UL9MmuIRUHga70udRlDREVjyTkntqVWU
 Gv4hV2a5FCVjxETNZHgLv0VYv35vINKcNH/XjHmrWA==
X-Google-Smtp-Source: APXvYqxklwi8yCUDuyoen0TIoT0yvGecablQ+JGHeUfmD0h/tYBf6OcxZkVpOTSwjlMub9h3JNNau7T9OpBwuNpEf48=
X-Received: by 2002:ac2:447b:: with SMTP id y27mr13253233lfl.135.1571866492629; 
 Wed, 23 Oct 2019 14:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <1571847755-20388-1-git-send-email-alan.mikhak@sifive.com>
 <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Wed, 23 Oct 2019 14:34:41 -0700
Message-ID: <CABEDWGzeTLk7POWUkU1vJfyxGwjzOzWK-1_RAq7rR1wRh5hTFg@mail.gmail.com>
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_143454_859638_76170F07 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, maz@kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-riscv@lists.infradead.org, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 11:54 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> + hch
>
> On Wed, 23 Oct 2019, Alan Mikhak wrote:
>
> > From: Alan Mikhak <alan.mikhak@sifive.com>
> >
> > Modify plic_init() to skip .dts interrupt contexts other
> > than supervisor external interrupt.
>
> Might be good to explain the motivation here.

The .dts entry for plic may specify multiple interrupt contexts. For example,
it may assign two entries IRQ_M_EXT and IRQ_S_EXT, in that order, to
the same interrupt controller. This patch modifies plic_init() to skip the
IRQ_M_EXT context since IRQ_S_EXT is currently the only supported
context.

If IRQ_M_EXT is not skipped, plic_init() will report "handler already
present for context" when it comes across the IRQ_S_EXT context
in the next iteration of its loop.

Without this patch, .dts would have to be edited to replace the
value of IRQ_M_EXT with -1 for it to be skipped.

I will add the above explanation in a v2 patch description, if it
sounds reasonable.

>
> >
> > Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> > ---
> >  drivers/irqchip/irq-sifive-plic.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
> > index c72c036aea76..5f2a773d5669 100644
> > --- a/drivers/irqchip/irq-sifive-plic.c
> > +++ b/drivers/irqchip/irq-sifive-plic.c
> > @@ -251,8 +251,8 @@ static int __init plic_init(struct device_node *node,
> >                       continue;
> >               }
> >
> > -             /* skip context holes */
> > -             if (parent.args[0] == -1)
> > +             /* skip contexts other than supervisor external interrupt */
> > +             if (parent.args[0] != IRQ_S_EXT)
> >                       continue;
>
> Will this need to change for RISC-V M-mode Linux support?
>
> https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/
>
>
> - Paul
>
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
