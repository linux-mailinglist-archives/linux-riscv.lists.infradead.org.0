Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9F818C4C0
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Mar 2020 02:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FNNqoFp0VDSw6FXKnRmea6LZqC97VrqTFSsk+vaGkbk=; b=elf80klqYy5kuV
	8DWA208AzFWDRoxkfMnX7w5zHNgGoJCK6Qczxx3OG7usysNRK7eLeb7z1TC7ksQMob8ls79YCwHdC
	2Aixp1YxrYa3etfnqcKOvehh39pONgqwcA9Ue/ifN5x04OLF947p6g62hf+uT22jM3Jx2KmShhJz3
	3Mf4xaOLGQtZFhbXc38mvw6JBDjqwAksjHDcE2YFc1TSS+WLslNqlTit/I/KGeBCvilNKk6icQxiH
	A4ssr6Uy5lmvEnBnBY2/zd5mEDGqq7hDNvPCIgmeHKPvRuzCm6qDDutI/gFOeYexB0xW2ghr3IdxH
	ag0/7qh2OMeDYyR+IKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF6fH-0008Iq-Ac; Fri, 20 Mar 2020 01:41:35 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF6fC-0008Gd-BM
 for linux-riscv@lists.infradead.org; Fri, 20 Mar 2020 01:41:32 +0000
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 19 Mar 2020 18:41:28 -0700
Received: from gurus-linux.qualcomm.com ([10.46.162.81])
 by ironmsg03-sd.qualcomm.com with ESMTP; 19 Mar 2020 18:41:25 -0700
Received: by gurus-linux.qualcomm.com (Postfix, from userid 383780)
 id 6DC5F4559; Thu, 19 Mar 2020 18:41:25 -0700 (PDT)
From: Guru Das Srinagesh <gurus@codeaurora.org>
To: linux-pwm@vger.kernel.org
Subject: [PATCH v11 00/12] Convert PWM period and duty cycle to u64
Date: Thu, 19 Mar 2020 18:41:11 -0700
Message-Id: <cover.1584667964.git.gurus@codeaurora.org>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_184130_419511_35CCD846 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Guru Das Srinagesh <gurus@codeaurora.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Axel Lin <axel.lin@ingics.com>,
 Alexander Shiyan <shc_work@mail.ru>, Fabio Estevam <festevam@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mukesh Ojha <mojha@codeaurora.org>, Gerald Baeza <gerald.baeza@st.com>,
 intel-gfx@lists.freedesktop.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
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
 Dan Carpenter <dan.carpenter@oracle.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Because period and duty cycle are defined in the PWM framework structs as ints
with units of nanoseconds, the maximum time duration that can be set is limited
to ~2.147 seconds. Consequently, applications desiring to set greater time
periods via the PWM framework are not be able to do so - like, for instance,
causing an LED to blink at an interval of 5 seconds.

Redefining the period and duty cycle struct members in the core PWM framework
structs as u64 values will enable larger time durations to be set and solve
this problem. Such a change to the framework mandates that drivers using these
struct members (and corresponding helper functions) also be modified correctly
in order to prevent compilation errors.

This patch series introduces the changes to all the drivers first, followed by
the framework change at the very end so that when the latter is applied, all
the drivers are in good shape and there are no compilation errors.

Changes from v10:
  - Carefully added back all the "Reviewed-by: " and "Acked-by: " tags received
    so far that had gotten missed in v9. No other changes.

Changes from v9:
  - Gathered the received "Reviewed-by: " tag
  - Added back the clk-pwm.c patch because kbuild test robot complained [3]
    and addressed received review comments.
  - clps711x: Addressed review comments.

Changes from v8:
  - Gathered all received "Acked-by: " and "Reviewed-by: " tags
  - Dropped patch to clk-pwm.c for reasons mentiond in [2]
  - Expanded audience of unreviewed patches

Changes from v7:
  - Changed commit messages of all patches to be brief and to the point.
  - Added explanation of change in cover letter.
  - Dropped change to pwm-sti.c as upon review it was unnecessary as struct
    pwm_capture is not being modified in the PWM core.

Changes from v6:
  - Split out the driver changes out into separate patches, one patch per file
    for ease of reviewing.

Changes from v5:
  - Dropped the conversion of struct pwm_capture to u64 for reasons mentioned
    in https://www.spinics.net/lists/linux-pwm/msg11541.html

Changes from v4:
  - Split the patch into two: one for changes to the drivers, and the actual
    switch to u64 for ease of reverting should the need arise.
  - Re-examined the patch and made the following corrections:
      * intel_panel.c:
	DIV64_U64_ROUND_UP -> DIV_ROUND_UP_ULL (as only the numerator would be
	64-bit in this case).
      * pwm-sti.c:
	do_div -> div_u64 (do_div is optimized only for x86 architectures, and
	div_u64's comment block suggests to use this as much as possible).

Changes from v3:
  - Rebased to current tip of for-next.

Changes from v2:
  - Fixed %u -> %llu in a dev_dbg in pwm-stm32-lp.c, thanks to kbuild test robot
  - Added a couple of fixes to pwm-imx-tpm.c and pwm-sifive.c

Changes from v1:
  - Fixed compilation errors seen when compiling for different archs.

v1:
  - Reworked the change pushed upstream earlier [1] so as to not add an
    extension to an obsolete API. With this change, pwm_ops->apply() can be
    used to set pwm_state parameters as usual.

[1] https://lore.kernel.org/lkml/20190916140048.GB7488@ulmo/
[2] https://lore.kernel.org/lkml/20200312190859.GA19605@codeaurora.org/
[3] https://www.spinics.net/lists/linux-pwm/msg11906.html

Guru Das Srinagesh (12):
  drm/i915: Use 64-bit division macro
  hwmon: pwm-fan: Use 64-bit division macro
  ir-rx51: Use 64-bit division macro
  pwm: clps711x: Cast period to u32 before use as divisor
  pwm: pwm-imx-tpm: Use 64-bit division macro
  pwm: imx27: Use 64-bit division macro and function
  pwm: sifive: Use 64-bit division macro
  pwm: stm32-lp: Use %llu format specifier for period
  pwm: sun4i: Use 64-bit division function
  backlight: pwm_bl: Use 64-bit division function
  clk: pwm: Assign u64 divisor to unsigned int before use
  pwm: core: Convert period and duty cycle to u64

 drivers/clk/clk-pwm.c                      |  4 +++-
 drivers/gpu/drm/i915/display/intel_panel.c |  2 +-
 drivers/hwmon/pwm-fan.c                    |  2 +-
 drivers/media/rc/ir-rx51.c                 |  3 ++-
 drivers/pwm/core.c                         |  4 ++--
 drivers/pwm/pwm-clps711x.c                 |  5 ++++-
 drivers/pwm/pwm-imx-tpm.c                  |  2 +-
 drivers/pwm/pwm-imx27.c                    |  5 ++---
 drivers/pwm/pwm-sifive.c                   |  2 +-
 drivers/pwm/pwm-stm32-lp.c                 |  2 +-
 drivers/pwm/pwm-sun4i.c                    |  2 +-
 drivers/pwm/sysfs.c                        |  8 ++++----
 drivers/video/backlight/pwm_bl.c           |  3 ++-
 include/linux/pwm.h                        | 12 ++++++------
 14 files changed, 31 insertions(+), 25 deletions(-)

Cc: Lee Jones <lee.jones@linaro.org>
Cc: Daniel Thompson <daniel.thompson@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: linux-fbdev@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Fabrice Gasnier <fabrice.gasnier@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: linux-riscv@lists.infradead.org
Cc: Yash Shah <yash.shah@sifive.com>
Cc: Atish Patra <atish.patra@wdc.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Alexander Shiyan <shc_work@mail.ru>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Richard Fontana <rfontana@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Kate Stewart <kstewart@linuxfoundation.org>
Cc: Allison Randal <allison@lohutok.net>
Cc: linux-media@vger.kernel.org
Cc: Kamil Debski <kamil@wypas.org>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: linux-hwmon@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: "Ville Syrjälä" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Mukesh Ojha <mojha@codeaurora.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Anson Huang <Anson.Huang@nxp.com>
Cc: Gerald Baeza <gerald.baeza@st.com>
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Cc: Axel Lin <axel.lin@ingics.com>
Cc: Ding Xiang <dingxiang@cmss.chinamobile.com>
Cc: Wesley W. Terpstra <wesley@sifive.com>

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


