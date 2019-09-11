Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB820B00E1
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 18:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXqCVvnzQLQHEBb2pCUttR4q54rcQBCpY1UKLBRnTl0=; b=pxBbOLJLs6ICeZ
	z12IlWhgmECkUrbkT2417ekVNrFEpl34Fq/vvGLWbdcXOmDpdC8nqQrYrDuBjHZ4K7ZyZ5TcXYGkC
	ihUdHLnlS+kloWFRzVWgNJHL3tkV1kuix+HCeE9U0BPsudvhmECyddcLsKq1BR8I59D9BPXK9n6V6
	CPF6nrWL32g3SiJnxqGPvKCfY46ey6X/8OlgSS1Fy+ZSbEqyozNkkg1to+vv+VF3Aqji/xKurxUp6
	rAOz2hpzgNNZOK7NJSbJv4TNUgNjJdbkYbe42PzJO89JW8wggqjFTVgLB7ExnLqDu27dj/rjZmK7y
	p7QGif6RysCfTDedb+1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i858R-0002g5-0U; Wed, 11 Sep 2019 16:06:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i858J-0002cE-IG
 for linux-riscv@lists.infradead.org; Wed, 11 Sep 2019 16:06:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id n10so4244336wmj.0
 for <linux-riscv@lists.infradead.org>; Wed, 11 Sep 2019 09:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FJJVoiOf8d1fBVlmA2WPx0ovMbhLVMUnVRYpkmmId2Y=;
 b=QWNGM8sNd2DIqJUVU1OLR1sxZVnOhxhVhHWu6sn3G/HkbQD0a3Uet0ziDi173OygoS
 WcCdb71vVpMMGSMyODgDg7v3IKgDf+jcLohmqJhvxgRITZz4nTjg9kVPY79Dko6yGRwI
 7UB4qyMqR7ARnOknOJewxCb4y85Ikwb+PhhkX+/oC/E4rQZpxLeGuMO8CJ0bYDynNZAm
 te2Ui37mkNIuuDsWoWjiAyozjSyhLVPQDxNAu4pBSuumnFcQXJUuqopd6dCi8EcH5BuY
 CIK5/sU5mY617ien2evGACtTIB+KI8R4dlzQ405tx5mrGMqpJZIlUTXC+9Q+34LJuYnC
 KOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FJJVoiOf8d1fBVlmA2WPx0ovMbhLVMUnVRYpkmmId2Y=;
 b=JtF+XfK4z9JTa1IA+RKzmJS0ejPLOltXL81aApy/bWyoJBiWVLHSaDTz/iC8HdfEIX
 MZskv24njJxQZn4iPJq7uZlpNtw8L14dCMqZtZevNX9p2Q8nhGv5x2tO1mDH1G9eCagS
 r1GOYshEY0suD9rjQOppn++Xx5VyZSSyb9BDgircESQ0bLJ0ont64ormNWG3MYRmVJA/
 /4U6RiaHyqYKtcy5U8CFWaqAsN0cwE27p0WvkqAgiTFgotxsec9icp8nS4K8lk96XVB2
 8qjGJdr2C4XKCoIwLM/ZtRLuyydhYhpH+UfuquFWcoo72uaCpFXuqnVtyYHjz0+Trewr
 1uhg==
X-Gm-Message-State: APjAAAUSWtZCAlaQ6jNc+GZaPBO0sKOOQHA2qm6J6C7PVbqJNsko3zCE
 JiyobATRIUpZ7JvrLlyz++Mu768FucTIGpzOF4w7SA==
X-Google-Smtp-Source: APXvYqxfo4OMflbhF8NmSJjJ2Gu/Ff2Dfhm+/6sbn8+WMGkQs5//gS6kM0XKRfWRoFsRG4rHItMc0Gt2atTI93osxFs=
X-Received: by 2002:a1c:7a05:: with SMTP id v5mr4328922wmc.173.1568217973514; 
 Wed, 11 Sep 2019 09:06:13 -0700 (PDT)
MIME-Version: 1.0
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
 <CALAqxLWLStTqGx5DAvUKOYupdgK-doOxRF5Z_Us=L5vnFaa=7w@mail.gmail.com>
 <cb451591-88ad-f1b3-b654-cea86ae11cac@microchip.com>
In-Reply-To: <cb451591-88ad-f1b3-b654-cea86ae11cac@microchip.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 11 Sep 2019 09:06:01 -0700
Message-ID: <CALAqxLXRVc-K5q=me1=5tA0XYT7ncrArSoD+hq=JOGWVF9-7SQ@mail.gmail.com>
Subject: Re: [PATCH 0/7] add support for clocksource/clockevent DT selection
To: Claudiu Beznea <Claudiu.Beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_090615_618664_2EC963E6 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tmaimon77@gmail.com, Linus Walleij <linus.walleij@linaro.org>,
 nsekhar@ti.com, guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-samsung-soc@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>, Ludovic.Desroches@microchip.com,
 linux-imx@nxp.com,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 uclinux-h8-devel@lists.sourceforge.jp, Marc Zyngier <marc.zyngier@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-unisoc@lists.infradead.org,
 =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, sbranden@broadcom.com,
 lkml <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, kernel@pengutronix.de,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, jhogan@kernel.org,
 palmer@sifive.com, eric@anholt.net, Thierry Reding <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, zhang.lyra@gmail.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Jon Hunter <jonathanh@nvidia.com>,
 bgolaszewski@baylibre.com, Kukjin Kim <kgene@kernel.org>,
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, baohua@kernel.org,
 kaloz@openwrt.org, Stephen Boyd <sboyd@kernel.org>, patrice.chotard@st.com,
 wahrenst@gmx.net, mcoquelin.stm32@gmail.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-tegra@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Benjamin Fair <benjaminfair@google.com>, shc_work@mail.ru,
 Krzysztof Kozlowski <krzk@kernel.org>, Nancy Yuen <yuenn@google.com>,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 orsonzhai@gmail.com, linux-snps-arc@lists.infradead.org, rjui@broadcom.com,
 vz@mleia.com, john@phrozen.org, tali.perry1@gmail.com, avifishman70@gmail.com,
 Patrick Venture <venture@google.com>, lftan@altera.com, linux-oxnas@groups.io,
 Shawn Guo <shawnguo@kernel.org>, afaerber@suse.de,
 Baruch Siach <baruch@tkos.co.il>, maxime.ripard@bootlin.com,
 Liviu Dudau <liviu.dudau@arm.com>, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, openbmc@lists.ozlabs.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Andy Gross <agross@kernel.org>, slemieux.tyco@gmail.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, aou@eecs.berkeley.edu,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <monstr@monstr.eu>,
 Baolin Wang <baolin.wang@linaro.org>, vgupta@synopsys.com,
 Nicolas.Ferre@microchip.com, linux@prisktech.co.nz,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 11:52 PM <Claudiu.Beznea@microchip.com> wrote:
> On 10.09.2019 19:05, John Stultz wrote:
> > External E-Mail
> > On Tue, Sep 10, 2019 at 6:47 AM Claudiu Beznea
> > <claudiu.beznea@microchip.com> wrote:
> >>
> >> This series adds support to permit the selection of clocksource/clockevent
> >> via DT.
> >
> > Sorry about this, but could you try to include more of a rational for
> > *why* this would be useful in your cover-letter/commit messages?
> >
>
> Sorry for not being to clear in the cover letter.
>
> The case I am trying to solve here is as follows:
> The timer hardware for which I publish a driver at [1] cannot work at the
> same time as a clocksource and clockevent. On some of our platforms we have
> more than one such a timer. So we could use one hardware resource as
> clocksource and one as clockevent but not one for both.
> Due to this, I proposed in the driver at [1] to have 1st probed hardware to
> work as clocksource and the 2nd one to work as clockevent.
[snip]
> Due to this Daniel proposed to have an unified mechanism for this scenario,
> see [2], (something like what I proposed in this series), such that to have
> a determinism b/w the function that the hardware resources would behave
> (either clocksource or clockevent or both).

Thanks for the additional explanation! I'd suggest adding something
like it to the commit logs for next time.

Personally, I tend to think of DT bindings as a big harry ABI, and as
such avoid it as much as possible. :)

I'd probably favor driver tweaks to ensure the hardware only gets
registered once for each, using a minimal DT compatible or flag on the
hardware to better describe the underlying hardware quirk that keeps
it from being usable for both clocksource and clockevent usage.

That way the DT sticks to accurately describing hardware, instead of
system/software-abstraction configuration details that just apply for
Linux.

But, again, I'm not really a DT person, so I'll defer to Rob and Daniel.

thanks
-john

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
