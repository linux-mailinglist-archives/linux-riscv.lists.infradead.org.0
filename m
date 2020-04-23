Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 003AD1B5ABF
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 13:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rjW01n/0F1pq48CTP/7RBCJnvBUm1n1+dBjCEKk7Sxw=; b=F6mU1z1Mq0CZYQUQn8WHVwHap
	hlRnICHUzqNT3U4dD3ZOy3llGgX4kbwxuObkFftG7Mc16WDCtvBd8PTWG6QgqYid4/gwy7pp4h5OK
	wofDOnUpeQhVgwrjelaiQ/Ee0r4y8x3pbK/fHlLE7a1UkZb/oBCaQ0ibDiMkneRdDuW87zgUKiIGz
	HjJFVYomxXvcOJmeOIPQ2mZeMQIwc+mJ7ZSeA/dn9twuKS8tCM5arWw9oFEIrwAdLaNXOQXC5prm3
	oYLfXdabDERu3K2poGhChY74blXXdtyeFpJhtUYYJmuXp0SJDELDG6sA0KOlfMNyKpwQSTDmFHv28
	iBu7PLDCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRaLr-0006xl-O2; Thu, 23 Apr 2020 11:49:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRaLo-0006vJ-VH
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 11:49:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id e26so6098506wmk.5
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 04:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rjW01n/0F1pq48CTP/7RBCJnvBUm1n1+dBjCEKk7Sxw=;
 b=n7xAau4OmWbWFYC04m1DGCYkqE4+ujUlYrO2eH1c3xFU2xNGc6oi4RD3AT/B2d7nDI
 C7PfeS2nJcKJ0NZJTLJy8/cwnheWSV+FBjoR4v93WQ2T6GLFdRDtwRsMhm8fe9LnpULC
 T5j3iPgoGN34P5ek69NAINSZ6j55zKbOaBdxgXELn4dt+7EJs0aQjZzoETX8CHcQjw1U
 XIvnwLiDbVkIrhg+b7GaWD4apUHnhqs3qAFKb8pbj7cHCtIBMSzXFoxyCRVtlluE0Myu
 C0AWjtgPwJ+pYX0X6ULNNKyH9t9bvcpEAVUPEaKFtUGTgllC5gYjxXt4h+usEziVQSl1
 sjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rjW01n/0F1pq48CTP/7RBCJnvBUm1n1+dBjCEKk7Sxw=;
 b=Ynw1EHABdczqKad6whoHz82BjE/RozFQRQNDXNcpWDNt1pBmclx8ptRPhodMh43JoS
 0D8zRBibKMT1ij1ZrZZrPJjfEg/xG75B8HLoclQqW2LRVIuxdPbUXCS3vrMgkUoOj9AR
 NIxTJaUkPty7xmU+fRXSR8KYjCveSM7THE/4oUbXUBjAhNz95KWvGZzF6z0FcT1S1Ary
 ho6ULfUBwjAdjOYFGNI+VFeT1qgNDtZxpJI+fqZQsg2foQtAQYLhUs9W8xsnJjbugfAX
 LAMukXhH7SpPAppPxS+j0jZNZGPtlmHpVZ4OOKRFfKdPJnVh2PD8ACCuhvuncmLh195R
 cKpw==
X-Gm-Message-State: AGi0PuYYieANua+MKpJMTRf1AXn2bruOleQAORjpp/km3Hxhrh2CzdnR
 Dd8lWPIqbVHTqktrpGOnqBWC5g==
X-Google-Smtp-Source: APiQypK03THh2gyZohviWOB0K129EVNWgmmVHL3IdV6si+my+1X2cVHVYsC7MiqDYucu03GXE0fP+w==
X-Received: by 2002:a7b:c459:: with SMTP id l25mr3693104wmi.52.1587642540579; 
 Thu, 23 Apr 2020 04:49:00 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id 1sm3289831wmz.13.2020.04.23.04.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 04:48:59 -0700 (PDT)
Date: Thu, 23 Apr 2020 12:48:57 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200423114857.GG3612@dell>
References: <cover.1587523702.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1587523702.git.gurus@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_044905_054098_5222625F 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

What's the merge plan for this set?

FYI, it's better to send all patches to all parties.  That way
maintainers and interested persons can follow the discussion and
progress, or lack there of.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

