Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9621B81E8
	for <lists+linux-riscv@lfdr.de>; Sat, 25 Apr 2020 00:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=++ayavOj86DfKwJJOClEVSfM1NCxWd4Fr2N8x53vAc0=; b=HNHZuPzYJ7/ixFc2K5VMSre9j
	3zsNs35tzwKC2Xg/UmZQLp+KPsiuoXG7XQf0Q+5xri+qvISuJOYwXd++EYeIqfmLgEheLQICGgrOg
	MS+PcHjs2uci1aH+NLdjV7h+zyI7GhMLYbdiKlvKWl11/2HFd8xUbxi0svUGsN2gnVT/QK7k7Oq8h
	UH3uo+AQl16v/5Ti7czlhFwouYyUcXfaio3jZYJ1Q6hMe3KKf/M+xzPd00l3E+7xtszAT0vdBBBJP
	hEgwxO5F6pgz/bnuaha20at7FNhcfvWOL37LPR5jgt209V/UY/uJoHBo/Ske5b/Li4Zi9CywGPW1b
	mbrjpTfVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS6ac-0005Xf-Fz; Fri, 24 Apr 2020 22:14:30 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS6aY-0005Wr-Vn
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 22:14:28 +0000
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 24 Apr 2020 15:14:23 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg01-sd.qualcomm.com with ESMTP; 24 Apr 2020 15:14:22 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 9498C4C8D; Fri, 24 Apr 2020 15:14:22 -0700 (PDT)
Date: Fri, 24 Apr 2020 15:14:22 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200424221422.GA31118@codeaurora.org>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200423114857.GG3612@dell> <20200423215306.GA8670@codeaurora.org>
 <20200424064303.GJ3612@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200424064303.GJ3612@dell>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_151427_049509_2BFCCFCE 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.38 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-fbdev@vger.kernel.org,
 David Collins <collinsd@codeaurora.org>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Kamil Debski <kamil@wypas.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Atish Patra <atish.patra@wdc.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-riscv@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alexander Shiyan <shc_work@mail.ru>, Chen-Yu Tsai <wens@csie.org>,
 NXP Linux Team <linux-imx@nxp.com>,
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

On Fri, Apr 24, 2020 at 07:43:03AM +0100, Lee Jones wrote:
> A great deal of mailing lists contain numerous protections against
> things like flooding and spamming.  One of those protections is a
> check for "Too many recipients to the message".  Most of the time this
> simply requires moderator intervention by way of review and approval,
> but this ultimately depends on the ML's configuration.
> 
> The first thing to ascertain is why your recipients list is so large.
> Have you added every reviewer, subsystem-maintainer, maintainer and
> contributor suggested by get-maintainer.pl?  If so, consider pruning
> that a little.  Contributors do not tend to care about subsequent
> changes to a file.  As someone who receives a lot of patches, I tend
> to get fed-up when receiving patches simply because I made a change X
> years ago.  Stick to listed maintainers/reviewers in the first
> instance and see how far that takes you.

Thank you for the detailed reply. I did this in the first few patchsets
and then when a few patches didn't get any attention, expanded the
audience thus. Still, around 50% of the patches in this series remain
unreviewed by anyone.

> If your recipients list is as succinct as reasonably possible, maybe
> just accept that every version isn't going to be archived by every
> ML.  It's still much more useful for the correct people to have
> visibility into the set than for it to be archived multiple times.

Thank you, will prune the list and remove past contributors from the
Cc-list and add all parties to all patches.

Thank you.

Guru Das.

