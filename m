Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D299E11DF0E
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Dec 2019 09:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=29BUxaBVpPVtFW2X5I44ySfdglfYVS6Fv4e7LeJkUIc=; b=FhwjJ5/7obChX8WaDYzvwQTPi
	zHjvi6ZW4mxz/rppvcSXpDm0o3ur1OVrAVR6HudCHSeZBKI9V2gjJzoBABztLYJRldm8V505bf1bO
	g3UOf6iHuhRCLONOr45n/YJ9mOTL42GMgIzAZEkLE+KA/iDdcRdScsjoatZwQsubAqMIivqyqe/7n
	3Dq1mTjka4THTVxlKZFuBopHC5vgQ+v0vrzQdLpctR7cqXUStxhatfhWGDTH4zutcp+rH1jUj2Etw
	6Y74Pc8dIpnoniuYXT/szzaVnJS8vNviR748RQLZ1WnnxTLlRzDPrnPKjshn2JdhJloLBQvjvHI2w
	fmvDauCWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffxd-0005yJ-IY; Fri, 13 Dec 2019 08:06:05 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffxZ-0005xp-Jj; Fri, 13 Dec 2019 08:06:03 +0000
Received: by mail-ed1-f65.google.com with SMTP id r21so1343700edq.0;
 Fri, 13 Dec 2019 00:06:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=29BUxaBVpPVtFW2X5I44ySfdglfYVS6Fv4e7LeJkUIc=;
 b=W4YEyK4JSkOUAFcRdtSptRlrNqI8LvvA0qGNtnOMsHSj2QGcpYxmT7HsyxqS74muzm
 w/Z5G/V13CzN4z/pLUsJN9CytREPqH6LoeV18JKBHofkzPmytwzWXgKYW/kwXE2fMR2g
 xGTMvUkTmHc/vC7nLn4oZrzYp+wrY00DuJ99y7ZvLIz3SJSEDz51Cg2PipwRzmqk4yDc
 91l7CgomjUYagC7lRmDSkI6KpQl/xCtkav4U7fxOC59AenGwRJUl3uGJ4oHa9FQyqVGq
 MNX9CC2W3/eLq1mw33Urf7oFQGtIAgpU3wVFXCgLO8CQUFhurWc6+b2QMn1T+6ssiRCO
 SYPQ==
X-Gm-Message-State: APjAAAXYSr1+2ghCaCiJ8aqjjRxcGfeScNxz1EZH+253XNjhAyx2cbbv
 ADdGETyWu3I1/U8/g4et6vyRXQzH451WGg==
X-Google-Smtp-Source: APXvYqx10/kxLz+lWEBciifPa1pqNjyeGOrdi9fGP7VcgmeVSdaj1Bp02F1AdOpuDGtHgtwXyX9inA==
X-Received: by 2002:a17:906:2344:: with SMTP id
 m4mr14709496eja.110.1576224359195; 
 Fri, 13 Dec 2019 00:05:59 -0800 (PST)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id c2sm343253ejk.74.2019.12.13.00.05.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 00:05:58 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id u2so518353wmc.3;
 Fri, 13 Dec 2019 00:05:55 -0800 (PST)
X-Received: by 2002:a1c:9e0d:: with SMTP id h13mr11801179wme.110.1576224354577; 
 Fri, 13 Dec 2019 00:05:54 -0800 (PST)
MIME-Version: 1.0
References: <20191209195749.868-1-tiny.windzz@gmail.com>
In-Reply-To: <20191209195749.868-1-tiny.windzz@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 13 Dec 2019 16:05:41 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Ec3KPZZqAWHwx00ii1L+va-QTa78mj=4pFFCBVtwscw@mail.gmail.com>
Message-ID: <CAGb2v67Ec3KPZZqAWHwx00ii1L+va-QTa78mj=4pFFCBVtwscw@mail.gmail.com>
Subject: Re: [PATCH 01/17] clk: sunxi: sunxi-ng: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_000601_648029_5FBB4055 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kstewart@linuxfoundation.org, pgaikwad@nvidia.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, geert+renesas@glider.be,
 chunhui.dai@mediatek.com, Mike Turquette <mturquette@baylibre.com>,
 palmer@sifive.com, nsekhar@ti.com, Tomasz Figa <tomasz.figa@gmail.com>,
 rfontana@redhat.com, Thierry Reding <thierry.reding@gmail.com>,
 weiyongjun1@huawei.com, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh@kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNO..." <linux-samsung-soc@vger.kernel.org>,
 Emilio Lopez <emilio@elopez.com.ar>, Krzysztof Kozlowski <krzk@kernel.org>,
 jonathanh@nvidia.com, Chanwoo Choi <cw00.choi@samsung.com>,
 John Crispin <john@phrozen.org>, agross@kernel.org, linux-imx@nxp.com,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-tegra@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 swinslow@gmail.com, paul.walmsley@sifive.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, daniel.baluta@nxp.com,
 allison@lohutok.net, aisheng.dong@nxp.com, Max Filippov <jcmvbkbc@gmail.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Dinh Nguyen <dinguyen@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, wangyan.wang@mediatek.com,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 3:58 AM Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify code.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/clk/sunxi-ng/ccu-sun50i-a64.c    | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun50i-h6.c     | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun8i-a83t.c    | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun8i-de2.c     | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun8i-r40.c     | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun9i-a80-de.c  | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun9i-a80-usb.c | 4 +---
>  drivers/clk/sunxi-ng/ccu-sun9i-a80.c     | 4 +---
>  drivers/clk/sunxi/clk-mod0.c             | 4 +---
>  drivers/clk/sunxi/clk-sun6i-apb0-gates.c | 4 +---
>  drivers/clk/sunxi/clk-sun6i-apb0.c       | 4 +---
>  drivers/clk/sunxi/clk-sun6i-ar100.c      | 4 +---
>  drivers/clk/sunxi/clk-sun8i-apb0.c       | 4 +---
>  13 files changed, 13 insertions(+), 39 deletions(-)

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

