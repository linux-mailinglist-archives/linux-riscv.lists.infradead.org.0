Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1351B6E72
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 08:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BimhNmKzzOiRWV4bRwboOfPmcBJHKS2if1vH1YK7uDg=; b=GW+apYOZfdxnXEi308mlYlPtK
	TbC6pHHnJ1lFrctS/xJQT1lhKzn7tyK/03HWxb3GGhUkUaotprwGQG22WwQw43UbbzHZ1rDMdOD2H
	FElty9W7AES6GS86cxlkcrtilYsSnSIslceZurKbKeDSZ+N2NnKrsidg6ZvvGbneIIGhUkrpFe10a
	9W1WT4ygP4RUcAA+M/bnHv6g/+fkNviEnPJyGYnmQnUAEZmNtGg9OyRYp2nptnQO4XVtFogTap8LV
	WKB8TPkKZNnTGlQ3Zezj4+dSLWwjzhiTzwhQd4lT+stdUlWLaOCPpO9ul873xHygx5xe94lbWLQ5E
	rRrUNFEuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRs6X-0004hg-Qx; Fri, 24 Apr 2020 06:46:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRs6U-0004g4-B3
 for linux-riscv@lists.infradead.org; Fri, 24 Apr 2020 06:46:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so9388306wrq.2
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 23:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BimhNmKzzOiRWV4bRwboOfPmcBJHKS2if1vH1YK7uDg=;
 b=TehEgESZO+iGdm3q4NbSl+r31mWVJpFwo4VxNqFPZ0edwaWZm4O2BCqbbIPM2FVvMz
 mjSbTRoB6y3HDXLSnNJu8LRmkpUxdA+m5E7MAzeDrc32mkibbBoegdNcmKAXj/MTaYgd
 I+ugSXOc41rpz0CfgYO/NYPYxyXhkjP4xY/w6b85jWRU4cwzt+b8/GI0xSlt/R5XBNsk
 XZAlLs9UVfysGl8j1j6V9qZL9JvSysyT3PNDVqTuPoGswFiDmpIrSVcGVaF2vTtfDhI8
 G9gSbsmY7YN2bDxgVbBUpulJ812NbKgzWlDR15rkbe9M+HJDcXu6Hma4M58VfSWH32bK
 C7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BimhNmKzzOiRWV4bRwboOfPmcBJHKS2if1vH1YK7uDg=;
 b=S8PsxtRNW4d4ledkw5l5ynTYjkGetGV6A6+JxPwWNl7rl6f1WUTwsUSHWHftEtruCP
 Csi8ziKTSs+azisPWf/62GaGmqZpWarg4bsPW76Lo/65tnhkYLxHYDteZ/ZI+9A8ogZ8
 cKovXGOoKFQ8DPWQIpwWCPVcJxuxZZn2dfx3zv1npMLXl9NK3kitJ90Z6uEY0XQBwhv7
 l2v1iljIzoEA/LChGk60b/XQQnOsYZoavNfKRqE92QTUKtwYbrbPVzEA47fjc1vC7hne
 sUNRr6/U/6AATeTtv+JdOp70oRfBYes6l987d8bWRi4LrzsZJImzI9TgPqplYo1+A1+R
 tAoQ==
X-Gm-Message-State: AGi0PuZ27hXEwHv8w2NfRnCGkiHtl9MKE/tayt6lDCPdAy8AvptGZvEo
 g/Vz9MnkqukqnpsNB6K+jNJ5nw==
X-Google-Smtp-Source: APiQypJTcEpuczBf+1PvwRG94d/Ilckb1FuwqXRREwMQgs+zqusxuAGH0gAq+bcS/GfuHmY586/LDA==
X-Received: by 2002:a5d:410a:: with SMTP id l10mr9017919wrp.355.1587710785079; 
 Thu, 23 Apr 2020 23:46:25 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id c190sm1510578wme.10.2020.04.23.23.46.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 23:46:24 -0700 (PDT)
Date: Fri, 24 Apr 2020 07:46:22 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200424064622.GL3612@dell>
References: <cover.1587523702.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1587523702.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_234626_407999_1333DB75 
X-CRM114-Status: GOOD (  28.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alexander Shiyan <shc_work@mail.ru>, Chen-Yu Tsai <wens@csie.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
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

On Tue, 21 Apr 2020, Guru Das Srinagesh wrote:

> [REQUEST]
> 
> Would it be possible for the patches that have already received Acked-by's in
> this series to be accepted and applied to the tree? I lost an Acked-by (in
> intel-panel.c) because it had a merge conflict with a new change that came in
> after I rebased to tip. I wasn't sure earlier about accepting single patches as
> opposed to the entire series en masse, but this event has got me thinking.
> 
> [COVER LETTER]
> 
> Because period and duty cycle are defined in the PWM framework structs as ints
> with units of nanoseconds, the maximum time duration that can be set is limited
> to ~2.147 seconds. Consequently, applications desiring to set greater time
> periods via the PWM framework are not be able to do so - like, for instance,
> causing an LED to blink at an interval of 5 seconds.
> 
> Redefining the period and duty cycle struct members in the core PWM framework
> structs as u64 values will enable larger time durations to be set and solve
> this problem. Such a change to the framework mandates that drivers using these
> struct members (and corresponding helper functions) also be modified correctly
> in order to prevent compilation errors.
> 
> This patch series introduces the changes to all the drivers first, followed by
> the framework change at the very end so that when the latter is applied, all
> the drivers are in good shape and there are no compilation errors.
> 
> Changes from v12:
>   - Rebased to tip of for-next
>   - Collected Acked-by for sun4i
>   - Reworked patch for intel-panel.c due to rebase, dropped Jani's Acked-by as
>     a result
> 
> Changes from v11:
>   - Rebased to tip of for-next.
>   - Collected "Acked-by:" for v7 (unchanged) of pwm: sifive: [4]
>   - Squished stm32-lp.c change with final patch in series
>   - sun4i: Used nsecs_to_jiffies()
>   - imx27: Added overflow handling logic
>   - clps711x: Corrected the if condition for skipping the division
>   - clk: pwm: Reverted to v8 version, added check to prevent division-by-zero
> 
> Changes from v10:
>   - Carefully added back all the "Reviewed-by: " and "Acked-by: " tags received
>     so far that had gotten missed in v9. No other changes.
> 
> Changes from v9:
>   - Gathered the received "Reviewed-by: " tag
>   - Added back the clk-pwm.c patch because kbuild test robot complained [3]
>     and addressed received review comments.
>   - clps711x: Addressed review comments.
> 
> Changes from v8:
>   - Gathered all received "Acked-by: " and "Reviewed-by: " tags
>   - Dropped patch to clk-pwm.c for reasons mentiond in [2]
>   - Expanded audience of unreviewed patches
> 
> Changes from v7:
>   - Changed commit messages of all patches to be brief and to the point.
>   - Added explanation of change in cover letter.
>   - Dropped change to pwm-sti.c as upon review it was unnecessary as struct
>     pwm_capture is not being modified in the PWM core.
> 
> Changes from v6:
>   - Split out the driver changes out into separate patches, one patch per file
>     for ease of reviewing.
> 
> Changes from v5:
>   - Dropped the conversion of struct pwm_capture to u64 for reasons mentioned
>     in https://www.spinics.net/lists/linux-pwm/msg11541.html
> 
> Changes from v4:
>   - Split the patch into two: one for changes to the drivers, and the actual
>     switch to u64 for ease of reverting should the need arise.
>   - Re-examined the patch and made the following corrections:
>       * intel_panel.c:
> 	DIV64_U64_ROUND_UP -> DIV_ROUND_UP_ULL (as only the numerator would be
> 	64-bit in this case).
>       * pwm-sti.c:
> 	do_div -> div_u64 (do_div is optimized only for x86 architectures, and
> 	div_u64's comment block suggests to use this as much as possible).
> 
> Changes from v3:
>   - Rebased to current tip of for-next.
> 
> Changes from v2:
>   - Fixed %u -> %llu in a dev_dbg in pwm-stm32-lp.c, thanks to kbuild test robot
>   - Added a couple of fixes to pwm-imx-tpm.c and pwm-sifive.c
> 
> Changes from v1:
>   - Fixed compilation errors seen when compiling for different archs.
> 
> v1:
>   - Reworked the change pushed upstream earlier [1] so as to not add an
>     extension to an obsolete API. With this change, pwm_ops->apply() can be
>     used to set pwm_state parameters as usual.
> 
> [1] https://lore.kernel.org/lkml/20190916140048.GB7488@ulmo/
> [2] https://lore.kernel.org/lkml/20200312190859.GA19605@codeaurora.org/
> [3] https://www.spinics.net/lists/linux-pwm/msg11906.html
> [4] https://www.spinics.net/lists/linux-pwm/msg11986.html
> 
> To: Arnd Bergmann <arnd@arndb.de>
> To: David Laight <David.Laight@ACULAB.COM>
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Allison Randal <allison@lohutok.net>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Atish Patra <atish.patra@wdc.com>
> Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
> Cc: Chen-Yu Tsai <wens@csie.org>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Daniel Thompson <daniel.thompson@linaro.org>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@linux.ie>
> Cc: David Collins <collinsd@codeaurora.org>
> Cc: dri-devel@lists.freedesktop.org
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Fabrice Gasnier <fabrice.gasnier@st.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: Jean Delvare <jdelvare@suse.com>
> Cc: Jingoo Han <jingoohan1@gmail.com>
> Cc: Joe Perches <joe@perches.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Kamil Debski <kamil@wypas.org>
> Cc: Kate Stewart <kstewart@linuxfoundation.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: linux-clk@vger.kernel.org
> Cc: linux-fbdev@vger.kernel.org
> Cc: linux-hwmon@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: linux-pwm@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Richard Fontana <rfontana@redhat.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: "Ville Syrjälä" <ville.syrjala@linux.intel.com>
> Cc: Yash Shah <yash.shah@sifive.com>
> 
> Guru Das Srinagesh (11):
>   drm/i915: Use 64-bit division macro
>   hwmon: pwm-fan: Use 64-bit division macro
>   ir-rx51: Use 64-bit division macro
>   pwm: clps711x: Cast period to u32 before use as divisor
>   pwm: pwm-imx-tpm: Use 64-bit division macro
>   pwm: imx27: Use 64-bit division macro and function
>   pwm: sifive: Use 64-bit division macro
>   pwm: sun4i: Use nsecs_to_jiffies to avoid a division
>   backlight: pwm_bl: Use 64-bit division function
>   clk: pwm: Use 64-bit division function
>   pwm: core: Convert period and duty cycle to u64
> 
>  drivers/clk/clk-pwm.c                      |  7 +++-
>  drivers/gpu/drm/i915/display/intel_panel.c |  2 +-
>  drivers/hwmon/pwm-fan.c                    |  2 +-
>  drivers/media/rc/ir-rx51.c                 |  3 +-
>  drivers/pwm/core.c                         | 14 ++++----
>  drivers/pwm/pwm-clps711x.c                 |  5 ++-
>  drivers/pwm/pwm-imx-tpm.c                  |  2 +-
>  drivers/pwm/pwm-imx27.c                    | 53 +++++++++++++++++++++++++-----
>  drivers/pwm/pwm-sifive.c                   |  2 +-
>  drivers/pwm/pwm-stm32-lp.c                 |  2 +-
>  drivers/pwm/pwm-sun4i.c                    |  2 +-
>  drivers/pwm/sysfs.c                        |  8 ++---

>  drivers/video/backlight/pwm_bl.c           |  3 +-

Acked-by: Lee Jones <lee.jones@linaro.org>

>  include/linux/pwm.h                        | 12 +++----
>  14 files changed, 82 insertions(+), 35 deletions(-)

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

