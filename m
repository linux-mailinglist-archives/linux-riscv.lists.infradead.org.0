Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3141B47F95
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 12:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14ty4Tht2ghusvS3n8TLJcMdS8WCWCUoHPhGaOfA0i0=; b=N8gXJyhdjvHbNF
	QgVTTLibfnO2k0/b+tv/3oFs/Hp2c1Tq7ZygO2z9zQgPTA44xaT+AoU1P0Vwnmql34qJczb7jzvJo
	udbNh7sKmRV3NxWBL0GBEsWVCeXxPn7uLyBgFiQdT2Y2c6B0T7KAPvL9IycaiAyDD/J+uHCaoTRIB
	t58FjZYhYT19g5wnuyMss/6YS2bjrnAaqFNXFpX4bBLra5ECPnUREDG1QcVbGTE3jznRqyEYOZvh4
	1cfAh8z1e0nnmJl2ZXNVI2LsvRC3Sw1t+h9o8JKT1dj4cCtxTyWoB8pDUnfEh3xuoVY9HhDWVuWQa
	Umu1RolP3v40cakKcoJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcomv-0007hL-Gn; Mon, 17 Jun 2019 10:22:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoms-0007gl-E3
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 10:22:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so8744895ljh.6
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 03:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g2oUEZzHP2whF33vnG7n908pNLNyu4ePU235OE7To5w=;
 b=g+ByyIO85CiT/cyls2vY5BdJ8YR5+16TYt0U66RxbYBWithsj4AA58h393JNAXdY00
 5Eu2+TraYBbgESsrbtnwSAr9vFoLM6ZFcexKX8MswlFpuScPljErsERZ9c6PSxbGP5d2
 YN04GWhsvjiSFSKzdmUrEyUE12f07l0nsGALcV7pct9cBoGBneYdcFHxos1w4RcvnMi2
 USPzjMwlPVjdt+YML47NYRfUR+ZsmupQwS1XVHT4um5f8eLihBmDK6aL31q+Lr9CxboB
 zsvqEQ35rA7zBApMEiu+KkaRannwbR0Ag778K4XtCk4mc6CzmtKAhJxxyXY0riSaFlnf
 XYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g2oUEZzHP2whF33vnG7n908pNLNyu4ePU235OE7To5w=;
 b=GfSdFS04sFHf8pc0rtoQVJmp3SSwVmoj76KmVtu7CYTz0eOkp8MT9J/e9has3qCr8W
 9/4EcpyMuVGUqEc9SPAJHibeg+FYQScqKHiIN0AS3C49fuESio9kfz1cHOpZDoYqSOIQ
 dPFnpZTlWyMTICWytrTbyJrMgMSO61M9NQIakRtrf57V28rv4UgOz5PBl149oDGN19K7
 8gWx1ea1mK9SbIbluFmN7Ej2aSwPAN9YsYe2393YUL+0PkQMoW+ZK4NczmbZjQ/bou+g
 uhd5d00VREjqOptPAw5lMPD54bdyskTtLWwc4ixJSbO0ko9xLhAQRRooSpLcETuZAJ6h
 6vxw==
X-Gm-Message-State: APjAAAWh+h0zJPWOwU7DmoBenG8RMty6rTudAOy47jmN4hLOcZLBgc4e
 omu4AYMOP8tmfAWSJQaZ0kU2D6vkyb6F8Zyq4GBANl6rJw8=
X-Google-Smtp-Source: APXvYqx4hPynEVTRoMbFzeRC1RMi/6+9FpSi2w64JI1pMvwgPj2Nh1KEyMr6rGcUZcLvX4skV4KJLmtmNmIY4M2KLQ4=
X-Received: by 2002:a2e:9c03:: with SMTP id s3mr43444283lji.209.1560766972421; 
 Mon, 17 Jun 2019 03:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Mon, 17 Jun 2019 15:52:16 +0530
Message-ID: <CAJ2_jOH-CacU9+Lce80PQzG1ytxvSZmjfSMwL9=kbXpWxyU96Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_032254_482216_17E6C075 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Andreas Schwab <schwab@suse.de>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 netdev <netdev@vger.kernel.org>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 3:28 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Yash,
>
> On Mon, 17 Jun 2019, Andreas Schwab wrote:
>
> > On Jun 17 2019, Yash Shah <yash.shah@sifive.com> wrote:
> >
> > > - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
> > >   driver. This is needed because on FU540, the macb driver depends on
> > >   SiFive GPIO driver.
> >
> > This of course requires that the GPIO driver is upstreamed first.
>
> What's the impact of enabling CONFIG_MACB_SIFIVE_FU540 when the GPIO
> driver isn't present?  (After modifying the Kconfig "depends" line
> appropriately.)
>
> Looks to me that it shouldn't have an impact unless the DT string is
> present, and even then, the impact might simply be that the MACB driver
> may not work?

Yes, there won't be an impact other than MACB driver not working.
In any case, without GPIO driver, PHY won't get reset and the network
interface won't come up.

>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
