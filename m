Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5DBAEF1F
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 18:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uRAcf4AdO/YWq8NXMQu1QAL+W8+tCxf0cGE1SZ3gGY=; b=UeDTfPViQZOTSg
	97+bRY57fTnuGbSNlSdMJNAOljDC4Q9Wjr9wLnclY6pPv2GBIk7DZdNSLicVdp58PBebWq/waGC56
	klEUdcFVlGl4LNG6RxFpY9m58zbp5a+tud4VxNVz80owLi2MkNw9FbAw6qgisMd3H8GOJTuTJV42L
	WhRfwSwHR6zRCXd6ne0tGTD1Gnxcn/jTAQpPCTQJDYQ4T6RzZi/voH2WNULg6Qt1z1Op5UiT1BfV/
	5kWzuUKwLhCPAQK4Dj0uRGrotmtDBw+vSy0YpcQAllmJd8qPNVoPB0tz86QvXjU8N9AkUtsVwbbT1
	JqzN1gHOilsN2ptlY8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ieM-0003rL-8W; Tue, 10 Sep 2019 16:05:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ieF-0003ms-EV
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 16:05:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id y19so21246110wrd.3
 for <linux-riscv@lists.infradead.org>; Tue, 10 Sep 2019 09:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bmUQUZCrkmmER7Gwmy8S0BUpeyPHQQl8phfWONZCLwc=;
 b=rjQLp1SQr9CFzSv+cqoe7o9cqn+LoOLnCw6J0BFN4Tni+fdgPvLVAYatxfC2z7ESKE
 BkdyYaUVrSd0CbHPE9a2dbSSVQVUsvKQxYRxHecNPFgTP4QkJ/K/Zr187OXzDGRIHw9l
 nAoWLQTucRc9SGEzkSPX+SEchIPHWGYhKIMisx13n4yV6i7po9MtQZkAsqrwfecG8eWn
 FFLnuPUd8pih/wPmIQbuZ5tVnoItuRaDfRIIy9/J9gaUJrpELIBFZM8YUm5ONa65jXRd
 Iw0q8S78n+M9kLbl6kjHW0INM+Z2JrzvoxpR65RTBW5R0pDJuamPDJ27N1/rYFEc/LKc
 1xCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bmUQUZCrkmmER7Gwmy8S0BUpeyPHQQl8phfWONZCLwc=;
 b=EAwUDW86g8YIYV1mgf6UQPO70tD0z5Mo28g6QaPjka0IHh1e2Xv3WcA8yr7yAvUH4f
 1L+ew9ha0VDu49mSS/3JUTNtYKodu07cj8HGe0hujw1slbhCfDpsb8JrCBdPhEri4C6x
 ybUlrLE6RBa6H2EH3rWlGbntsFaXtCu7DafX7YX1cHc5ho49PxO1fsUvWWEt9t3Ad4SO
 HkMTaCV0lP6Gq1FqYa95PVqwalQq/FfkEJFdr1DqzLDfbx52+JtEDYlDR7M6+ppFwaYS
 k3UdWx/qT4qZwELgtN3VFUWwsP2dezJXG0n0u+olJDzrDmfaoiYALxQ6QFd+/PDC+zlH
 wWaw==
X-Gm-Message-State: APjAAAW1zOnGfXkgYBTgu8obAZ6hNYFUMX50U4TQK+jPNO5Tg3UkLTlF
 jBlzbH45rhhbpo6iYVs+33NpMIJ3QR3pFBDiFlLZTg==
X-Google-Smtp-Source: APXvYqwHpOAzxh0Vj814CN8tokkTqoSrdFGwVy5mHO7nLon/MoZecZG1w1hZQ/4dXw5R04KRe3J/iX/8TD1h6uS2EUA=
X-Received: by 2002:a05:6000:49:: with SMTP id k9mr7049475wrx.21.1568131540932; 
 Tue, 10 Sep 2019 09:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
In-Reply-To: <1568123236-767-1-git-send-email-claudiu.beznea@microchip.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 10 Sep 2019 09:05:30 -0700
Message-ID: <CALAqxLWLStTqGx5DAvUKOYupdgK-doOxRF5Z_Us=L5vnFaa=7w@mail.gmail.com>
Subject: Re: [PATCH 0/7] add support for clocksource/clockevent DT selection
To: Claudiu Beznea <claudiu.beznea@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090543_569992_3C661AEC 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tmaimon77@gmail.com, Linus Walleij <linus.walleij@linaro.org>,
 nsekhar@ti.com, guoren@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-samsung-soc@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kevin Hilman <khilman@baylibre.com>, ludovic.desroches@microchip.com,
 linux-imx@nxp.com,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 uclinux-h8-devel@lists.sourceforge.jp, Marc Zyngier <marc.zyngier@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-unisoc@lists.infradead.org,
 =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>,
 Thomas Gleixner <tglx@linutronix.de>, sbranden@broadcom.com,
 lkml <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 Paul Burton <paul.burton@mips.com>, kernel@pengutronix.de,
 Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, jhogan@kernel.org,
 palmer@sifive.com, eric@anholt.net, Thierry Reding <thierry.reding@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, zhang.lyra@gmail.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Jon Hunter <jonathanh@nvidia.com>,
 bgolaszewski@baylibre.com, Kukjin Kim <kgene@kernel.org>,
 alexandre.torgue@st.com, linux-arm-msm@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, baohua@kernel.org,
 kaloz@openwrt.org, Stephen Boyd <sboyd@kernel.org>, patrice.chotard@st.com,
 wahrenst@gmx.net, mcoquelin.stm32@gmail.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-tegra@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, benjaminfair@google.com,
 shc_work@mail.ru, Krzysztof Kozlowski <krzk@kernel.org>, yuenn@google.com,
 Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 orsonzhai@gmail.com, linux-snps-arc@lists.infradead.org, rjui@broadcom.com,
 vz@mleia.com, john@phrozen.org, tali.perry1@gmail.com, avifishman70@gmail.com,
 venture@google.com, lftan@altera.com, linux-oxnas@groups.io,
 Shawn Guo <shawnguo@kernel.org>, afaerber@suse.de,
 Baruch Siach <baruch@tkos.co.il>, maxime.ripard@bootlin.com,
 Liviu Dudau <liviu.dudau@arm.com>, linux-mips@vger.kernel.org,
 linux-riscv@lists.infradead.org, openbmc@lists.ozlabs.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Andy Gross <agross@kernel.org>, slemieux.tyco@gmail.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, aou@eecs.berkeley.edu,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <monstr@monstr.eu>,
 Baolin Wang <baolin.wang@linaro.org>, vgupta@synopsys.com,
 nicolas.ferre@microchip.com, linux@prisktech.co.nz,
 nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 6:47 AM Claudiu Beznea
<claudiu.beznea@microchip.com> wrote:
>
> This series adds support to permit the selection of clocksource/clockevent
> via DT.

Sorry about this, but could you try to include more of a rational for
*why* this would be useful in your cover-letter/commit messages?

I'm not sure I understand the limitation that requires such an option
to be added to the dts.

thanks
-john

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
