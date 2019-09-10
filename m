Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4156AEE25
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 17:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxjJYz2zioaA9PAtZ5lvsgNV0LUEmASWfNwOKEWPjDc=; b=EWxWfvGO0Nl+nw
	vqqAiVkZLKF+m7yyyCccIqKEb+eiQZGjrWzrqHGp9t12FYN2XWyYEDVieRmc37TeBvmEujVWOyiW8
	NVjTAWXVfT9dkKwISICGC+nxBJfX+dX/UG7oRaBiBc4j00avz1slaAtGI8AmtZa7M27rt2KjM3vDH
	hgJQGVGZao+MDwRKEK8A0XZBxVktwL8t4ybP/SdKdxfxbiKAZMkFkitRTHYp42LlxISbPfsmdi9Es
	yyaFo9SfEDvilgUQSidqP2gF2Lni08nXxPrchTBEddVElRzGt+PHJX4cg64ntd0pRmsolX2vdPSam
	bd9x2Y2MeHtgiVfTzUlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hlK-0006hV-8A; Tue, 10 Sep 2019 15:08:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hlD-0006eR-8f; Tue, 10 Sep 2019 15:08:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91E1F1000;
 Tue, 10 Sep 2019 08:08:50 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CC2483F71F;
 Tue, 10 Sep 2019 08:08:35 -0700 (PDT)
Date: Tue, 10 Sep 2019 16:08:26 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH 4/7] dt-bindings: chosen: Add clocksource and clockevent
 selection
Message-ID: <20190910150826.GA18308@e107533-lin.cambridge.arm.com>
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <1568123236-767-5-git-send-email-claudiu.beznea@microchip.com>
 <20190910143231.GB14966@e107533-lin.cambridge.arm.com>
 <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab43b209-78fa-0cab-b8ea-acd4c550e689@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_080851_399801_4DFA5DB3 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: tmaimon77@gmail.com, linus.walleij@linaro.org, nsekhar@ti.com,
 guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com, heiko@sntech.de,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 khilman@baylibre.com, Ludovic.Desroches@microchip.com, linux-imx@nxp.com,
 u.kleine-koenig@pengutronix.de, uclinux-h8-devel@lists.sourceforge.jp,
 marc.zyngier@arm.com, s.hauer@pengutronix.de, linux-unisoc@lists.infradead.org,
 khalasa@piap.pl, tglx@linutronix.de, sbranden@broadcom.com,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, paul.burton@mips.com,
 kernel@pengutronix.de, mark.rutland@arm.com, alexandre.belloni@bootlin.com,
 jhogan@kernel.org, palmer@sifive.com, eric@anholt.net,
 thierry.reding@gmail.com, manivannan.sadhasivam@linaro.org,
 ysato@users.sourceforge.jp, zhang.lyra@gmail.com, daniel.lezcano@linaro.org,
 jonathanh@nvidia.com, bgolaszewski@baylibre.com, kgene@kernel.org,
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, f.fainelli@gmail.com,
 john.stultz@linaro.org, linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 baohua@kernel.org, kaloz@openwrt.org, sboyd@kernel.org, patrice.chotard@st.com,
 wahrenst@gmx.net, mcoquelin.stm32@gmail.com, narmstrong@baylibre.com,
 linux-tegra@vger.kernel.org, festevam@gmail.com, lorenzo.pieralisi@arm.com,
 benjaminfair@google.com, shc_work@mail.ru, krzk@kernel.org, yuenn@google.com,
 wens@csie.org, bcm-kernel-feedback-list@broadcom.com, orsonzhai@gmail.com,
 linux-snps-arc@lists.infradead.org, rjui@broadcom.com, vz@mleia.com,
 john@phrozen.org, tali.perry1@gmail.com, avifishman70@gmail.com,
 venture@google.com, lftan@altera.com, linux-oxnas@groups.io,
 shawnguo@kernel.org, afaerber@suse.de, baruch@tkos.co.il,
 maxime.ripard@bootlin.com, liviu.dudau@arm.com, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, openbmc@lists.ozlabs.org,
 linux@armlinux.org.uk, agross@kernel.org, slemieux.tyco@gmail.com,
 devicetree@vger.kernel.org, aou@eecs.berkeley.edu, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, ssantosh@kernel.org,
 matthias.bgg@gmail.com, monstr@monstr.eu, baolin.wang@linaro.org,
 vgupta@synopsys.com, Nicolas.Ferre@microchip.com, linux@prisktech.co.nz,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 02:51:50PM +0000, Claudiu.Beznea@microchip.com wrote:
> 
> 
> On 10.09.2019 17:32, Sudeep Holla wrote:
> > External E-Mail
> > 
> > 
> > On Tue, Sep 10, 2019 at 04:47:13PM +0300, Claudiu Beznea wrote:
> >> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> >>
> >> Some timer drivers may behave either as clocksource or clockevent
> >> or both. Until now, in case of platforms with multiple hardware
> >> resources of the same type, the drivers were chosing the first
> >> registered hardware resource as clocksource/clockevent and the
> >> next one as clockevent/clocksource. Other were using different
> >> compatibles (one for each functionality, although its about the
> >> same hardware). Add DT bindings to be able to choose the
> >> functionality of a timer.
> >>
> > 
> > Is the piece of hardware not capable of serving as both clocksource
> > and clockevent or is it just the platform choice ?
> 
> In my case, the hardware is not capable of serving at the same time
> a clocksource device and a clockevent device.
> 
> First, I published v1 for a hardware device having this behavior at
> [1] requesting 1st probed hardware device to work as clocksource and
> the 2nd one to work as clockevent. The discussion at [1] ended up with
> the idea of having a mechanism to specify which hardware device behaves
> as clocksource and which one behaves as clockevent.
>

In that case, why can't we identify capability that with the compatibles
for this timer IP ?

IOW, I don't like the proposal as it's hardware limitation.

--
Regards,
Sudeep

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
