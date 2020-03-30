Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22181985ED
	for <lists+linux-riscv@lfdr.de>; Mon, 30 Mar 2020 23:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eBZKaDN5ELZmde4eDCl0fiv27Rw87Ga/FhWYBmPsTY4=; b=bG+Tx+k5EXBIuYAHsP6fwx/c6
	GWl7mruEh+OQVKq+DPHMUI3sjaAbnrrmjP6MnNqmwEav+9KSm4uKuYpxklC6f0KOQgz9GiFNnYRpV
	QRhQeKlAftPPwVNcleP7qfH94Cxu199PAXU4I43c/1ZYzuYW1KHcujslgoomHivk4ni6BxTNHXbDJ
	SP9t2fwxlfvySryoxSKAmieBWYyLGZecZuBP37An9x8tpBO/2E35WY2zgzsKUTJBWr2ZnFGryJCJ/
	59z9u9cQ9zojYvmYKORr2X4tQ7vVSI8r91tnKgg0IY9QDft070mH6GP94qGkB9KSbfEgQ9UTUkEig
	dyxczUpLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1W8-0006Ru-P7; Mon, 30 Mar 2020 21:00:20 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1W4-0006Qx-8T
 for linux-riscv@lists.infradead.org; Mon, 30 Mar 2020 21:00:19 +0000
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 30 Mar 2020 14:00:15 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg02-sd.qualcomm.com with ESMTP; 30 Mar 2020 14:00:12 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 695C14BFF; Mon, 30 Mar 2020 14:00:12 -0700 (PDT)
Date: Mon, 30 Mar 2020 14:00:12 -0700
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v10 00/12] Convert PWM period and duty cycle to u64
Message-ID: <20200330210012.GA27611@codeaurora.org>
References: <cover.1584650604.git.gurus@codeaurora.org>
 <20200321114703.GB4672@kadam>
 <20200330191506.GA29534@codeaurora.org>
 <20200330202636.njjo4savgzf3g6yx@holly.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200330202636.njjo4savgzf3g6yx@holly.lan>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_140016_338816_52166F90 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-fbdev@vger.kernel.org,
 David Airlie <airlied@linux.ie>, "Wesley W. Terpstra" <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Kamil Debski <kamil@wypas.org>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Atish Patra <atish.patra@wdc.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-riscv@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Axel Lin <axel.lin@ingics.com>,
 Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>,
 Fabio Estevam <festevam@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 NXP Linux Team <linux-imx@nxp.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Gerald Baeza <gerald.baeza@st.com>, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mark Brown <broonie@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Ding Xiang <dingxiang@cmss.chinamobile.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-hwmon@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Anson Huang <Anson.Huang@nxp.com>,
 Richard Fontana <rfontana@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 09:26:36PM +0100, Daniel Thompson wrote:
> On Mon, Mar 30, 2020 at 12:15:07PM -0700, Guru Das Srinagesh wrote:
> > On Sat, Mar 21, 2020 at 02:47:03PM +0300, Dan Carpenter wrote:
> > > This is a giant CC list.
> > 
> > Yes, this is because I received feedback [1] on an earlier patchset
> > directing me to add the reviewers of patches to the cover letter as
> > well so that they get some context for the patch.
> > ...
> > [1] https://www.spinics.net/lists/linux-pwm/msg11735.html
> 
> Strictly speaking I only asked for backlight maintainers to be Cc:ed.
> I was fairly careful to be specific since I'm aware there are a variety
> of differing habits when putting together the Cc: list for covering
> letters.
> 
> With the original patch header the purpose of the patch I was Cc:ed on
> was impossible to determine without the covering letter.

I suspect this might be the case for all the other reviewers as well -
that they also would appreciate context for the specific patch they are
being added to review.

I wasn't entirely sure what the convention was, so I applied your
suggestion to all the files. How do you suggest I handle this in my next
patchset? I fully agree that such a large CC list does look really
ungainly.

Thank you.

Guru Das.

