Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1BB198559
	for <lists+linux-riscv@lfdr.de>; Mon, 30 Mar 2020 22:26:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Izq/zDRy3JuvVgXw1u8V22bHSGiKH7Q2z3WTw4pyk08=; b=R0OH/mrgPsNB6gx9b6CaBXqSj
	BUJf44v6o+BgTs7JYKQtviwZ8+K70muZf0GfEtAwfjxFyyCjchMx4mw7Jf9Bi9/P3Glnu3c4kUc1h
	xYHBiGCf6T1ZTOZRf6B0mBI+WhhhCEFs8faOKcBzO53xb3EkSg6Gg2RRDSXl2wWsDn/RiNV8iN/S3
	AgcaKtIjSlnsyFmmCf8NhrAOVMwnNX8AMa8J9YoVgY3hQS40t71z3TWgETPCSwpZew2pFd+E8HGHE
	eVPRw6pvHkrO6dEyqjK0xX6TnGvQJHtxYrJ70OGB0PLlJq8n0D/wm/1vSFovvVud8mk6kYGib7p3I
	U+/9+XeHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ0zf-0003Cm-Pl; Mon, 30 Mar 2020 20:26:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ0zb-0003CG-6t
 for linux-riscv@lists.infradead.org; Mon, 30 Mar 2020 20:26:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id t7so23266965wrw.12
 for <linux-riscv@lists.infradead.org>; Mon, 30 Mar 2020 13:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Izq/zDRy3JuvVgXw1u8V22bHSGiKH7Q2z3WTw4pyk08=;
 b=ykw0RIpay0miiK6pm+dujtOmzrpL1TJNx478OLJCPVo6T8wPPUWAsc/EPKhR6rtGm1
 jtD8KX8ucrH3hH2+VFx1nt7aOrogkmlHe7fZcFs32X02YNRkTtYHc1m1ZKjp7q1MYK1t
 4gznZSYUbeParQ65Wf8biVvpzMn7FYi8zJehepikkkWNW3Hhgt3lhP+1qarqs1k4vqwL
 PcgaOWDB9urFTa5k1e29vc5f7NklcU8y0H4r3t5XafTe7AxPh4AyJryF/HIMKCJ3VvSB
 yUEyBfsXiMdf9D7PYPetJE6Dzv8FWW+fCjyZS9XpnuhUV3E4shGW5cxOS20jB4xLHlnN
 chWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Izq/zDRy3JuvVgXw1u8V22bHSGiKH7Q2z3WTw4pyk08=;
 b=SXjM8RlSmQoAGEaLxtMiVyzv5h6M6gw1zeeXVY7qtLwDv5e3m9HJovAUJ/MMBowdbr
 7s2zoDmKKRmE4VB+ffHXVvRrmxM/iEwBJ1GtNhVwcIg+ZnKjNjHcpCIlSyWIG1xpqqDr
 9HV0zsoUM0SggAhfYFNhlpP4HyD/m1AMNtWaWTzqr7zoJfeGm9o0fXyUuEF4/obtMetg
 ZkmkXwfkN1HZkLuP5ck8XLwMJVa4M4Xe3d+LX13QjCHGjshzXa1zsXszITRUiyoKYTot
 lZgVeM1cnQ6i629zQiSzYk7Ts23Ucl17SJyvPVtoZzRcbhaJPAQ9j4URSb2jw2WPsNFI
 h7uQ==
X-Gm-Message-State: ANhLgQ1Ail6F6s0iFuQWyuHkUreat6GQHdcVLXmtzcDiu5Z5kNSbxM+V
 TYD+u2kz8oMNvYosfpb3zyYjbQ==
X-Google-Smtp-Source: ADFU+vvYx4daTb2CqvHosfXjfsqQOa/dnjnjvZ2DvllWwzb77vr2e3t9P1ciYIKrXvWrc6M9NTZ8Ng==
X-Received: by 2002:adf:e8c1:: with SMTP id k1mr15944538wrn.381.1585600000822; 
 Mon, 30 Mar 2020 13:26:40 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id t21sm814318wmt.43.2020.03.30.13.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 13:26:39 -0700 (PDT)
Date: Mon, 30 Mar 2020 21:26:36 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v10 00/12] Convert PWM period and duty cycle to u64
Message-ID: <20200330202636.njjo4savgzf3g6yx@holly.lan>
References: <cover.1584650604.git.gurus@codeaurora.org>
 <20200321114703.GB4672@kadam>
 <20200330191506.GA29534@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200330191506.GA29534@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_132643_417822_DE138CBC 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Mar 30, 2020 at 12:15:07PM -0700, Guru Das Srinagesh wrote:
> On Sat, Mar 21, 2020 at 02:47:03PM +0300, Dan Carpenter wrote:
> > This is a giant CC list.
> 
> Yes, this is because I received feedback [1] on an earlier patchset
> directing me to add the reviewers of patches to the cover letter as
> well so that they get some context for the patch.
> ...
> [1] https://www.spinics.net/lists/linux-pwm/msg11735.html

Strictly speaking I only asked for backlight maintainers to be Cc:ed.
I was fairly careful to be specific since I'm aware there are a variety
of differing habits when putting together the Cc: list for covering
letters.

With the original patch header the purpose of the patch I was Cc:ed on
was impossible to determine without the covering letter.


Daniel.

