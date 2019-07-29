Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B2F784E7
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Jul 2019 08:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SxxvKBa7OqcUG2NU3enhXbB4CbX0SsofqHrQoSZj6Co=; b=J4tqhfxWjMC8eO
	TwflxSfRISXyrfGSiLJ91k3v1/m9L66VA7ua8WzkvOWYYF5ooxu/NnoepmRsVrqGJeH/xMzp1/9jP
	Hi9Jc2a8SG+suo+ihLvAciNywjeCQ1mopV9hflhL+Nq5dRHtb7aTf0KHlYWHyEtvnA2UyhctH8NP+
	TOt2qBKq6dYLSs+iPkMo+RR0nuemw0G83FDq8mxaWnTOiu55E1ZZtUc+37YeDHTGCHMROpQHwGd7X
	oa9vTVvJBV2HAK10RWpT0Z8VtvIl4EDrtAkdNXCAoJ/C3nxnnycF1NNGvs7e0hShCVj30a6NpUXuS
	8lm8GK7H7ydYlrP+kSlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrz6h-0000za-9B; Mon, 29 Jul 2019 06:26:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrz6c-0000z8-9F
 for linux-riscv@lists.infradead.org; Mon, 29 Jul 2019 06:25:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrz6V-0005fQ-Of; Mon, 29 Jul 2019 08:25:51 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hrz6S-0002ca-VW; Mon, 29 Jul 2019 08:25:48 +0200
Date: Mon, 29 Jul 2019 08:25:48 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>,
	Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH] pwm: avoid disabling clk twice
Message-ID: <20190729062548.4pio5sfuxfwwxecr@pengutronix.de>
References: <20190727070916.2960-1-xywang.sjtu@sjtu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727070916.2960-1-xywang.sjtu@sjtu.edu.cn>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_232558_326742_1BD83CE0 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, linux-riscv@lists.infradead.org,
 thierry.reding@gmail.com, palmer@sifive.com, paul.walmsley@sifive.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

On Sat, Jul 27, 2019 at 03:09:16PM +0800, Wang Xiayang wrote:
> Similar to commit 63fd4b94b948 ("serial: imx: fix error handling
> in console_setup"), as ddata->clk has been explicitly disabled two
> lines above, it should avoid being disabled for the second time.
> clk_unprepare() suits here better.
> =

> Signed-off-by: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
> ---
>  drivers/pwm/pwm-sifive.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> index a7c107f19e66..00f6fab5bd3b 100644
> --- a/drivers/pwm/pwm-sifive.c
> +++ b/drivers/pwm/pwm-sifive.c
> @@ -312,7 +312,7 @@ static int pwm_sifive_remove(struct platform_device *=
dev)
>  	if (is_enabled)
>  		clk_disable(ddata->clk);
>  =

> -	clk_disable_unprepare(ddata->clk);
> +	clk_unprepare(ddata->clk);
>  	ret =3D pwmchip_remove(&ddata->chip);
>  	clk_notifier_unregister(ddata->clk, &ddata->notifier);

I think this patch is wrong.

After a successfull call to .probe the clock is left prepared and
enabled. This is undone in the unconditional call to
clk_disable_unprepare that you removed.

There is however still a problem: If Linux is started with the pwm
enabled (such that .get_state returns state->enabled =3D true) then
disabling the pwm has one clk_disable too much.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
