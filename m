Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97CB1999F6
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Mar 2020 17:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=laYdX8SYLKwokEzwLodIvxGl4rv4+SIsd0vubo9f6sU=; b=dLUD3uwmoGGi/3htSclslf5T6
	KlukbiJS9SwWDrrP1xWB9PHp6GLgt6uTKvMl4CG+HPn4PVqNaGMRZlwwx/+XwRXdScJqhWYZgPdk5
	WonAh2656a+dL+OwjPal5OctmKRE35AEceFFJAM7JE3yGWijFbr7sB720rB7m3py1CPnKAtolfAEU
	HCkAwk59PzGj9BPQ784E9lbsa509xsivPwWhHjiAJK94DcL0geqBVUse46p/Lk8SIBOmUCc2sPSB7
	n3zwrTjLRv9U6wapB8V4UCuEYgsgxmTj+vbnKxsgIlsaofixGWjY4e5gYFUC4tnUYbiz+oY7xCYCv
	VZoXow5yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ0N-00074q-MA; Tue, 31 Mar 2020 15:40:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ0I-0006zv-Hk
 for linux-riscv@lists.infradead.org; Tue, 31 Mar 2020 15:40:40 +0000
Received: by mail-wm1-x344.google.com with SMTP id 11so1879492wmi.2
 for <linux-riscv@lists.infradead.org>; Tue, 31 Mar 2020 08:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=laYdX8SYLKwokEzwLodIvxGl4rv4+SIsd0vubo9f6sU=;
 b=KAsoI0+ee6qrMG/GK3qGzIOQZiFmb1UlAzTF+vx4sKRB7hV4NdcmkyMjXegZ+Wf+GW
 jNe+DPxQDMBJhFQYPxHvEg8FvLATvx/AJQpTnOBjGkLXaZvApbMCDur7nkBjXbSh4OQu
 ZwfpVLsnQEB232+mKzbPYABGmSnSg/GeoW/SUvP31zJepNBCZs8mQeOmoBLg9/YQg2Ub
 5WI7kL5wnPiuthj808OT5+SYqJQX6cL6xkYHq7DYcEbk9n36sAyXn55ItE2/T/R03iuF
 P83esGL//YfzvdyRkeyo4e4qPxiIiZxfWICDAk7damLOOrqmr0/mwql2n5+KyDFEGq0V
 r0Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=laYdX8SYLKwokEzwLodIvxGl4rv4+SIsd0vubo9f6sU=;
 b=e/l0G8w0dJ+apAy1d7Df9cJo6zH92PmvEaQnER2PFW3YFp1xlbjwM8mz1xct1WYEDJ
 tg2DuFmv1LLU9kZy7jIcifEKLtf3CX2xUKs6yfU77gB8Ya4FBmDMVmnsTqle1h5E0dub
 MIju/uQrTJhUMghxY/Qd24C9/QhZ1IDsuVX+hLkCT3kYukybGVIIKnCZTod4na/vVnfQ
 x97f1cmWT4AfD3iKuujprNHboUYZMZCkW9ic2pycTQVhtggqW4P5uFxdFGi8k00H43Bx
 fymOFiQPRN1J8yOkDHscuRhmEkeZrzjFAaujMEtrT8uuWFR2QGpusGObngC0eq/s0O6C
 z9vA==
X-Gm-Message-State: ANhLgQ09QaqQMQ/azNF1BFm1lkd12N6SPz23soU2rY1aFQshkC6Ba+Ll
 1xhHquazzmg2Ml1wdl5wzMdCvy0FQOJiyhdB
X-Google-Smtp-Source: ADFU+vtWlastqoLteS210RbEXN0iDWNiyv+TlLVc7yqALe7NaemPCdM/9rCwUXyGtP+jZ7EGnESSKA==
X-Received: by 2002:a1c:7d88:: with SMTP id y130mr3774026wmc.5.1585662489028; 
 Tue, 31 Mar 2020 06:48:09 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id u16sm27335524wro.23.2020.03.31.06.48.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 06:48:08 -0700 (PDT)
Date: Tue, 31 Mar 2020 14:48:04 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v10 00/12] Convert PWM period and duty cycle to u64
Message-ID: <20200331134804.xxrjaestztcazalc@holly.lan>
References: <cover.1584650604.git.gurus@codeaurora.org>
 <20200321114703.GB4672@kadam>
 <20200330191506.GA29534@codeaurora.org>
 <20200330202636.njjo4savgzf3g6yx@holly.lan>
 <20200330210012.GA27611@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200330210012.GA27611@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_084038_606257_D92B0753 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, Mar 30, 2020 at 02:00:12PM -0700, Guru Das Srinagesh wrote:
> On Mon, Mar 30, 2020 at 09:26:36PM +0100, Daniel Thompson wrote:
> > On Mon, Mar 30, 2020 at 12:15:07PM -0700, Guru Das Srinagesh wrote:
> > > On Sat, Mar 21, 2020 at 02:47:03PM +0300, Dan Carpenter wrote:
> > > > This is a giant CC list.
> > > 
> > > Yes, this is because I received feedback [1] on an earlier patchset
> > > directing me to add the reviewers of patches to the cover letter as
> > > well so that they get some context for the patch.
> > > ...
> > > [1] https://www.spinics.net/lists/linux-pwm/msg11735.html
> > 
> > Strictly speaking I only asked for backlight maintainers to be Cc:ed.
> > I was fairly careful to be specific since I'm aware there are a variety
> > of differing habits when putting together the Cc: list for covering
> > letters.
> > 
> > With the original patch header the purpose of the patch I was Cc:ed on
> > was impossible to determine without the covering letter.
> 
> I suspect this might be the case for all the other reviewers as well -
> that they also would appreciate context for the specific patch they are
> being added to review.
> 
> I wasn't entirely sure what the convention was, so I applied your
> suggestion to all the files. How do you suggest I handle this in my next
> patchset? I fully agree that such a large CC list does look really
> ungainly.

IHMO there should not be a mechanical convention. Instead your goal
needs to be how to make it as easy as possible to review your patches.

Think about it this way: Each person in the To: of a patch (and maybe
also Cc: depending on how you construct things) is a person you are
asking to review and comment on the patch. If that person will find it
easier to review the patch if they are included in the cover letter then
either they should be included or you should improve the patch
description of the patch itself (sometimes both).

Either way it is about optimizing the patchset for readability. More
people read them than write them.


Daniel.

