Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3043C1B50E6
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 01:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fVNiplVe58sJkPzhqy8WRRNgSyhr6jgvEDfpNk4rCCM=; b=PiP/uUwb4F8qtVeiO2QaoyyFX
	MUQnRRTzSTPL4t4aetNeKazJetfIaPru8QJdbzHDMKGxtIzco4DkZW8drs11figtHK/Ll9BZsiuo7
	6Uhs7r9xzm72dc70DWENji73aTOwUMkEBaumaiyyPNwdYn+Bj3Y6EGUgT7X/I5HsXtLA3h6lCbwmc
	fsVtm0NBafsJ5eXqX4Vr0W8sX5JWm2xUM+CwhdhWSl6Cd2aXm14xHK4O1UpLmCtrZGzLEI+R5TPc9
	KEdYkDtEqDA6ct1Ir7K96okQCnRsiCaJVHva9pFNfDZmfrbTQalJDkuCDbnL59b69NfHDla8//yc9
	HL5zCZNtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jROwN-00014D-TN; Wed, 22 Apr 2020 23:38:03 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jROwK-000131-Ha
 for linux-riscv@lists.infradead.org; Wed, 22 Apr 2020 23:38:02 +0000
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 22 Apr 2020 16:37:56 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 22 Apr 2020 16:37:55 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 38ACE4C87; Wed, 22 Apr 2020 16:37:55 -0700 (PDT)
Date: Wed, 22 Apr 2020 16:37:55 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200422233755.GA11597@codeaurora.org>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200422084934.ajh6yzs5mkzzvop4@holly.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200422084934.ajh6yzs5mkzzvop4@holly.lan>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_163800_672686_F595D9CE 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

On Wed, Apr 22, 2020 at 09:49:34AM +0100, Daniel Thompson wrote:
> On Tue, Apr 21, 2020 at 07:57:12PM -0700, Guru Das Srinagesh wrote:
> > [REQUEST]
> > 
> > Would it be possible for the patches that have already received Acked-by's in
> > this series to be accepted and applied to the tree? I lost an Acked-by (in
> > intel-panel.c) because it had a merge conflict with a new change that came in
> > after I rebased to tip. I wasn't sure earlier about accepting single patches as
> > opposed to the entire series en masse, but this event has got me thinking.
> 
> Has there been a positive maintainer review of patch 11 at any point in
> the thread (most of the people you are asking to commit patches have
> not been able to see the discussion about the actual feature these
> patches are preparing for)?

Yes. Uwe had this to say [1] about a previous patchset (v5) of patch 11
which is essentially unchanged in this patchset save the dropping of the
pwm_capture change.

[1] https://www.spinics.net/lists/linux-pwm/msg11536.html

Thank you.

Guru Das.

