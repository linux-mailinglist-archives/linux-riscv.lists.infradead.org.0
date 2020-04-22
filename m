Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05001B3A8C
	for <lists+linux-riscv@lfdr.de>; Wed, 22 Apr 2020 10:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VAkwYH5sNSEh8qmcTpFiukZBRUUgBymqA9LRCH0eLZ8=; b=J2CqfgfN30/QgMve1N1wEeYAS
	oEr+PiT4bvRSDPH5I7QoQsdT/S7A8nAk3khb/0C8I87KaJUAOVRSKHCSU/KHm2ivtwKqGfNxso6vK
	lEFdTki5LD70diy5R7itVDS5WI1E4Ynv36v4F449oEQJ9ud1rAyOYZgmDxKn2N5dv0EoWL+q0ZdLT
	zJ2hOgHlSNguqm4D0jTQedqbMRQTtCshrJ3IUAAqnzHOL1jRQM2e2nMYgzSzJfcoaKcq1rUxBibZh
	dRMs1HH35L+jZe/couqBhqrXha/z5zWeGOourCGdOtFsjW14k7xbOGbS7t+2NhVyMrJ1zmS91jOv1
	M+OP9llbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRB4j-00029s-VY; Wed, 22 Apr 2020 08:49:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRB4e-00026j-EI
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 08:49:42 +0000
Received: by mail-wr1-x441.google.com with SMTP id b11so1386133wrs.6
 for <linux-riscv@lists.infradead.org>; Wed, 22 Apr 2020 01:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VAkwYH5sNSEh8qmcTpFiukZBRUUgBymqA9LRCH0eLZ8=;
 b=FoDnzcixZTYxw7/SWMOripNwt3xjQ3RtNofHprRXRwaqWGlEOcT85Fd4A04qgfiK7p
 ZeyQnK7r6wHwJ+bR1e3arPvblA+RDmmBEONKxufJ/Wrzzk/u3YL3BKlh1xL57GV0EgNC
 VIRNHm1p2hXfWWlnQb/F7IMB5oa7ITdgbJj6pjorSr7AWKdw6sXUzPwh7ELpfrwK58SV
 XkD05vsZk/yYrMu33hDVB0Pv2eCFJ7rexox4rUM7LSBobFVl1nn9ba6BqZe27zlhGPX8
 K7J8OzyfTSfB5jJYYY+TrRBcDmLPXf04wH12mYb6Rm9ciilLYcCreN4cjzKQDXEsxux6
 6/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VAkwYH5sNSEh8qmcTpFiukZBRUUgBymqA9LRCH0eLZ8=;
 b=sMSLnXv+DwLAPAsLl+FxBlTbbNACWozeBd2oSwaOqEsmBIEJ1GhpdqFsbVtiUAU0sU
 qtjbYP4XkU3RuwQ8DEshNsyzFutpXaNK/koisU6Mns7lhxl37yNz379DYUubyTVraN3i
 nahGgJZ0uhJekf5+bo7GXM0XwUjNzGz76DupnoaaDKt1Tid4+ryHl6EP8MG3cS8cAPgy
 w1ycdyBcoyDupUVFKN8ReyGiRWxWN/SIZV6Q2KZuGhXKVf3byOHjSoKH6EwTH1wFFM4G
 MQp8QWfO3UyHLJK2FdX2vy9E3zQ5RNixnwKo8C9JTkYbkOpWKYCs48ngi6OCoPvFLrh1
 bCqg==
X-Gm-Message-State: AGi0PuYKlbnd2Iu5NY5pQkynnCUBFQpHXuzwPPWCs2kPjU2PcztHmYON
 EM2kWtGWkfwd6j37GBLzuIxbyw==
X-Google-Smtp-Source: APiQypK2uN0BHRAsrtI/nG1z7SN0x6m/TQ8d/ZoCVrxhzoALBWRlY25Sa9qHj+HJctvDKK3VQSDlUg==
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr17797817wra.271.1587545377924; 
 Wed, 22 Apr 2020 01:49:37 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id p16sm7090901wro.21.2020.04.22.01.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 01:49:37 -0700 (PDT)
Date: Wed, 22 Apr 2020 09:49:34 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200422084934.ajh6yzs5mkzzvop4@holly.lan>
References: <cover.1587523702.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1587523702.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_014941_005955_FEB0EB49 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-fbdev@vger.kernel.org,
 David Collins <collinsd@codeaurora.org>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Kamil Debski <kamil@wypas.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Atish Patra <atish.patra@wdc.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-riscv@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alexander Shiyan <shc_work@mail.ru>, Lee Jones <lee.jones@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-hwmon@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Fontana <rfontana@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Daniel Vetter <daniel@ffwll.ch>,
 Joe Perches <joe@perches.com>, Shawn Guo <shawnguo@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 07:57:12PM -0700, Guru Das Srinagesh wrote:
> [REQUEST]
> 
> Would it be possible for the patches that have already received Acked-by's in
> this series to be accepted and applied to the tree? I lost an Acked-by (in
> intel-panel.c) because it had a merge conflict with a new change that came in
> after I rebased to tip. I wasn't sure earlier about accepting single patches as
> opposed to the entire series en masse, but this event has got me thinking.

Has there been a positive maintainer review of patch 11 at any point in
the thread (most of the people you are asking to commit patches have
not been able to see the discussion about the actual feature these
patches are preparing for)?


Daniel.

