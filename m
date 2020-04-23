Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A261B5801
	for <lists+linux-riscv@lfdr.de>; Thu, 23 Apr 2020 11:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YlakRXlVVbSOqCFC3kOOGCPGNfzSZXjoj0rNmgz6JGM=; b=g0IgJ672fnEbkZbh9nXsnds5J
	FLpaa2HUCdZzGDZDtx3wVfNp7CsDwQc4RbeHjCuw888HpUTx7ZBq4zNyjk3zEJfbdNOmkJ4av8qsU
	klE5dGrkLDJ4rumhYwb5PsMWtviMRKVvxDOcnD8GiHSDU1bSBMSfly/D3zAaM6BEbGRp0fqO7K5qD
	bqd7SlyRe4j1UPdI8/y76E9x7gJpmNiVD+cuCA2c8h5VaUJ5xo8stCuL5FFGsbZTQL8XokFVGsJBj
	2uQ8jbrotd6n3gRmtqZttiUkcKCtI/ZVvHXILbRaqrE4lD0gmbnFVr7RGudiqmo3C4h1oLtKsXF4t
	oRGi6TDew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRY2G-0006gv-7R; Thu, 23 Apr 2020 09:20:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRY2D-0006f4-57
 for linux-riscv@lists.infradead.org; Thu, 23 Apr 2020 09:20:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id y24so5749486wma.4
 for <linux-riscv@lists.infradead.org>; Thu, 23 Apr 2020 02:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YlakRXlVVbSOqCFC3kOOGCPGNfzSZXjoj0rNmgz6JGM=;
 b=U1qjm/QVHI2Y9dwiNoTJmKsb9YPhRYHXTAWLYLkGIH/SzTUHXhbhd14spJ/p+AT+Kz
 1Y3UiQNE/wP3N7RTf4ky5usp+Z+mzVCP190WHmnxktH3svJLYkjaL3DnqcnYWyn+tTES
 aNp7OWzhG5ks/pe0LW9zyWINJtLQI4MlevZfR0iXD9/OAKd+w09KY8drrZYOsVUqflLD
 FUNx2smvIqNEyt9TfZ71n4B2ItG2+PhQqtMo15ebAvjQ3N8DWLA6fftKBFjKruiHCrrq
 e7dZjCRRvXZ2OBVmaDRK4zx1pLfBAUHhRG9DKAM3T4DhG5QlNb++e1QX45/61gr8REDD
 uuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YlakRXlVVbSOqCFC3kOOGCPGNfzSZXjoj0rNmgz6JGM=;
 b=TnJLggVXtTMzV9EW0vvmXHYRVOmHACV5UnQuLy1uMy5JbD/Owk9yA8TufNgLz8zxJo
 0Totpw/ocZm01mUdonHnAPJViWhTfYBTwvFh2dBCh8QghsKaCGEfbojYcVk742aIdh6v
 3iq3f16FalIEL/gq9Mni+junwKw2/0lyb0MAwbWbN1YHfhDvrQnjNhBHapD/nzzJWBD1
 o/21jgKAU5x6aIt7W4UjhT+oseeeW2Dele7H2+Un8G/RJYF+tYdZse4NRoeku22pvcyg
 pAl7CYLKLnxQOt/YBmtiHRx/VFtZ6EzUtXdMfFLOSrs1C5A7CeQ1c1P/muWT87RDdSTl
 hdnQ==
X-Gm-Message-State: AGi0PuaUcl3wbpJZlykJMcBcSc1XlrNpP70FZslctL2V/4+00lniPnLR
 CoShLg+17JxyUQh5lDqfmw/XPA==
X-Google-Smtp-Source: APiQypKxzJUFiraEGAMa9DKmpYFhbShKwe/xf4XMAY+FxNiGq6f3nSom2gJQinfqyhDKdWHVW8Vq7Q==
X-Received: by 2002:a1c:678a:: with SMTP id b132mr3112235wmc.107.1587633637495; 
 Thu, 23 Apr 2020 02:20:37 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id h10sm2738108wrq.33.2020.04.23.02.20.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 02:20:36 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:20:34 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200423092034.2yrzbuiay66fizkx@holly.lan>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200422084934.ajh6yzs5mkzzvop4@holly.lan>
 <20200422233755.GA11597@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200422233755.GA11597@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_022041_221648_E0203549 
X-CRM114-Status: GOOD (  15.81  )
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

On Wed, Apr 22, 2020 at 04:37:55PM -0700, Guru Das Srinagesh wrote:
> On Wed, Apr 22, 2020 at 09:49:34AM +0100, Daniel Thompson wrote:
> > On Tue, Apr 21, 2020 at 07:57:12PM -0700, Guru Das Srinagesh wrote:
> > > [REQUEST]
> > > 
> > > Would it be possible for the patches that have already received Acked-by's in
> > > this series to be accepted and applied to the tree? I lost an Acked-by (in
> > > intel-panel.c) because it had a merge conflict with a new change that came in
> > > after I rebased to tip. I wasn't sure earlier about accepting single patches as
> > > opposed to the entire series en masse, but this event has got me thinking.
> > 
> > Has there been a positive maintainer review of patch 11 at any point in
> > the thread (most of the people you are asking to commit patches have
> > not been able to see the discussion about the actual feature these
> > patches are preparing for)?
> 
> Yes. Uwe had this to say [1] about a previous patchset (v5) of patch 11
> which is essentially unchanged in this patchset save the dropping of the
> pwm_capture change.
> 
> [1] https://www.spinics.net/lists/linux-pwm/msg11536.html

Excellent. Thanks!


Daniel.

