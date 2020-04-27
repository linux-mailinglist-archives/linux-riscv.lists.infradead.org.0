Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F321B97AB
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 08:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KV8mI704c4wnDXRIu02UleUgTYiEbhwe5QBwP8rLPnY=; b=Oqie6N6tsY+6phqBk4v6UBfhX
	WG+gwMYEkvvxoYlXPye1n4HeX6xWPuM3cXN12ppPpoVMCMeLYQXUzmVWJLMgdFyr5I9ZLm16EhU5n
	F4Qra7UewjXu5fdUHc06cYTYGJCV2au1I9tB5j3636U+HeT5Jh2H5oZewzRw6wCiSQWq2CYFuDsuz
	sqLRmO4FFu8xhwhf36SwDwugiuPTrZHkDRznle4RGxg4WAQKjFJX8Wd0VbOXiuO5Zumo8kXiP7BbG
	UcEVyS82cQQs0MI4CZgXrj0WMEt82zpJn9HuISNC0p4alnikW68f+46hfWEhJeHmnHLxbW8iBCATX
	AsFJDA8aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSxVV-0006pP-VJ; Mon, 27 Apr 2020 06:44:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSxVQ-0006lv-SA
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 06:44:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so9639531wmj.3
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 23:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KV8mI704c4wnDXRIu02UleUgTYiEbhwe5QBwP8rLPnY=;
 b=sV8r9iH1IJ/wa4MRY/0iLtmG7uVrvHaehubuctbTatS+Pb88tUDgnjuc3Z+FRFFtXy
 JtQia0BqQ54Pr4bsanZcTfztjLLEU2ODwd2rTnmQlAahy6gXtDrxU56TxqJJomjzH1lN
 XyJ3OKQkeNZ2deawteL/pmRgatbd6MhibKdKHSlPCbQog5Z09gkWUUd47TH/K7T3hBTv
 0+P7WalZiDkyAYSHPv/Noz0bulxQ7Pkap6N6AH2pURIhb6uUGra20Q1eoEyr1nOEzfgH
 i6cOs9vv1xw/JQooHzOLfo0pWFmb7istdgO8npVVIsqGMD1QH+/ytCLc9tB65Eh0SD5n
 ob3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KV8mI704c4wnDXRIu02UleUgTYiEbhwe5QBwP8rLPnY=;
 b=n1FRgxj0UYEhaybbNKMU7Yt/sVAkOGwLAWBDwq3wO1QWX09xR0VwHe5S0KIy1FWB0t
 u/WFfSN8nPSKGycGTfBcmtIJWqCLP6SsdrmKKhdjl21mxqbG5Ym70W6eX46+TnC8vpHI
 SForW/8G2qfiuYYlERKM+s8G6Rr3rI3kK27r13LZ2EhJHj1WDn+DaSeUQnBzpL6fuaEz
 HStDpYQNSrT4BMncv5rpe1v3t08zRdolacDfQH9xYwyLOHOnN94crjyknPgGqXGWd8ZK
 LRRmaAlqwjFaY9/luVilE16VNglTJf5GhdVJn2T00hnfC5RSwWh9nIj+H58BjqmjATGG
 kOfA==
X-Gm-Message-State: AGi0PubEW5GHnrWL9LMRtDU98kIrZnNaEmmA01J9bNI1GnzYILhCkCLU
 ZZOj+3SDHR+SPGhlx3dVQQgFlg==
X-Google-Smtp-Source: APiQypJl184c+VzbwdnwkKBGPEWNJ1KlwA2PV4ZKB6XncsflDQL5MrVEpinCWeWiGNtr2IxJxFDRVw==
X-Received: by 2002:a1c:1d92:: with SMTP id d140mr24421897wmd.67.1587969878117; 
 Sun, 26 Apr 2020 23:44:38 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id 185sm16425524wmc.32.2020.04.26.23.44.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 23:44:37 -0700 (PDT)
Date: Mon, 27 Apr 2020 07:44:34 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v13 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200427064434.GA3559@dell>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200423114857.GG3612@dell> <20200423215306.GA8670@codeaurora.org>
 <20200424064303.GJ3612@dell>
 <20200424221422.GA31118@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200424221422.GA31118@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_234441_427230_1200CDEF 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, 24 Apr 2020, Guru Das Srinagesh wrote:

> On Fri, Apr 24, 2020 at 07:43:03AM +0100, Lee Jones wrote:
> > A great deal of mailing lists contain numerous protections against
> > things like flooding and spamming.  One of those protections is a
> > check for "Too many recipients to the message".  Most of the time this
> > simply requires moderator intervention by way of review and approval,
> > but this ultimately depends on the ML's configuration.
> > 
> > The first thing to ascertain is why your recipients list is so large.
> > Have you added every reviewer, subsystem-maintainer, maintainer and
> > contributor suggested by get-maintainer.pl?  If so, consider pruning
> > that a little.  Contributors do not tend to care about subsequent
> > changes to a file.  As someone who receives a lot of patches, I tend
> > to get fed-up when receiving patches simply because I made a change X
> > years ago.  Stick to listed maintainers/reviewers in the first
> > instance and see how far that takes you.
> 
> Thank you for the detailed reply. I did this in the first few patchsets
> and then when a few patches didn't get any attention, expanded the
> audience thus. Still, around 50% of the patches in this series remain
> unreviewed by anyone.

This isn't a reason to add more recipients (who are likely to care
even less than your original group).  However it *is* a good argument
for including all of the specified maintainers/reviewers in on all of
the patches.

> > If your recipients list is as succinct as reasonably possible, maybe
> > just accept that every version isn't going to be archived by every
> > ML.  It's still much more useful for the correct people to have
> > visibility into the set than for it to be archived multiple times.
> 
> Thank you, will prune the list and remove past contributors from the
> Cc-list and add all parties to all patches.

Great.  Once you've done that, we can start to help you acquire the
Acks you need on your remaining patches.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

