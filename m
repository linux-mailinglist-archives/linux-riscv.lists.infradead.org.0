Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB9B29037
	for <lists+linux-riscv@lfdr.de>; Fri, 24 May 2019 06:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOYf62mmyIZ12Z6XsP3SCgx/hWM5w7XhVqufuTmIG+o=; b=O4gYTTYzq0PPZ+
	N39TqId759MBpx/MofshgVQaxK9VXqUYdFzzns9tLDTczvWIEJ5cpS2d6WeHjeVEl3+R/oEKvFV4S
	nCvic9xuTWT+u7LH4ShWQkMBUM+1T7VUdHGPhAxJADMrqFD5kKJT6R5UD3msY1vaIJS4UJGzGUBpl
	TAGEB37VJjg0uqSzYdmTjEfgF5uj2EFoofHp67CLbHT/aTuKX62LV2QEdTU1EAz3bc0XPmk5tDpiU
	TXy6SdAH1Ad4Gc+RH8L4vH7PDso2SOODFKeIv5OrFYmM6k/c0k5qIRKfBCXvtc41bh/220u9ls0IZ
	OvjGcPAF6Sfc9QEJhvzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2GX-0001L5-7i; Fri, 24 May 2019 04:57:13 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2GU-0001Kg-UZ
 for linux-riscv@lists.infradead.org; Fri, 24 May 2019 04:57:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id y13so6033735lfh.9
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 21:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G+qCr2MdO19dY/8onl90bo6ep9ea9k6Z+aDecmV1lDU=;
 b=NJeg0VK+SWxhX3lS74jS+A9OVcoe/UK1VhVitVIHaQDI/w8aKHpyEeAUqNJtX5YVL+
 N4Bp7sCjMU+Zm2+0EbHO5aOHag9ssQl0W3Wr5VuvaJgnbLEAnKiBjGy222kI85wRHCmQ
 zFOtk7hZFD5U+deEEv6F6RO49WvqPKidKACPt1wuixwcT64OwvFGEP9oiYWEKnRHHdJg
 /z/UDgaWFDz7+bhzzUQlOn7Ar+j/L3ymuoZ8yPTG7yJ0GVRGCKrafrBl0nmYfbjXmQy5
 bLI40Kyo6L92zfxeNiuJEV34T7De+BjuBUwdBpqwzGwlRZxlH0135f3JQCzLOgo3CZf+
 M+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G+qCr2MdO19dY/8onl90bo6ep9ea9k6Z+aDecmV1lDU=;
 b=b1IEzwbb3lUhOyF23Ub89I+3F2dsY7FQy2dlMOY3PAXuWHGTn/S5PE6Gt+OUetKFUT
 qktM4Bm8qJh4nSCpBHx53yAh4FX/GlfO4IIJz/o/5BKkGeVcMEIlfoK79gWErQED+u6O
 g1+KFTB03fmJzwS16PgKETquAHCUs6JMZcDg6UD8s6nVnxxPazU7E5ESafmlgOaFITEt
 KYuBKn6yO2YFcQyxnnwOrKkhhIRD/WsOO2ij/luPhlVdQcPEqbNWHCL4CbwH3Pv3hs5o
 w9oG5NCgfww738jZabqq4rkDUH19bZVS4Cz6F5h7dO8MYfsZUzzQAzoZe6xs/809qTnP
 H24w==
X-Gm-Message-State: APjAAAW/yZB0d5KZMAc8FRQUSLR+pfcjyXQfZq3eiGBGlbPtkWH7F9g1
 fGdy1STQb/9e/2l12w7+aKOLxryb5OtNYBbMag0zdA==
X-Google-Smtp-Source: APXvYqwRkhSZNZodU87MNix/BTrEDGt12SfhEiNeQb7LL1hUJoV2OadkJavkiG2qnAzTw1tidLRoSrRs3E9/C+Q5K9Q=
X-Received: by 2002:ac2:4a6e:: with SMTP id q14mr12821755lfp.46.1558673829099; 
 Thu, 23 May 2019 21:57:09 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-2-git-send-email-yash.shah@sifive.com>
 <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
In-Reply-To: <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Fri, 24 May 2019 10:26:32 +0530
Message-ID: <CAJ2_jOEErFdK=n7Brk5A_950vfikdFcxcRri4HXgJWqf0-zR=w@mail.gmail.com>
Subject: Re: [PATCH 1/2] net/macb: bindings doc: add sifive fu540-c000 binding
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_215710_995928_794DD377 
X-CRM114-Status: GOOD (  14.10  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 2:20 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, May 23, 2019 at 6:46 AM Yash Shah <yash.shah@sifive.com> wrote:
> >
> > Add the compatibility string documentation for SiFive FU540-C0000
> > interface.
> > On the FU540, this driver also needs to read and write registers in a
> > management IP block that monitors or drives boundary signals for the
> > GEMGXL IP block that are not directly mapped to GEMGXL registers.
> > Therefore, add additional range to "reg" property for SiFive GEMGXL
> > management IP registers.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  Documentation/devicetree/bindings/net/macb.txt | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
> > index 9c5e944..91a2a66 100644
> > --- a/Documentation/devicetree/bindings/net/macb.txt
> > +++ b/Documentation/devicetree/bindings/net/macb.txt
> > @@ -4,6 +4,7 @@ Required properties:
> >  - compatible: Should be "cdns,[<chip>-]{macb|gem}"
> >    Use "cdns,at91rm9200-emac" Atmel at91rm9200 SoC.
> >    Use "cdns,at91sam9260-macb" for Atmel at91sam9 SoCs.
> > +  Use "cdns,fu540-macb" for SiFive FU540-C000 SoC.
>
> This pattern that Atmel started isn't really correct. The vendor
> prefix here should be sifive. 'cdns' would be appropriate for a
> fallback.

Ok sure. WIll change it to "sifive,fu540-macb"

Thanks for your comment.
- Yash

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
