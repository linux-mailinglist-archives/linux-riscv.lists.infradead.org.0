Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7CE3D0B4
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 17:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rkEB87eHDfhUZVvGXcpFLQxJ2FeAmpfZyhnR4r/SzY=; b=X69JAJ511zCWHA
	qFo4vnDCF+N9vXxcbepy/F+HsOgNE3wxFTjlwxuSJLhiJOdUjCeU6Iz90iDGLHyVPDWh30a2ECPa5
	43+lglZ/k4kd67rmaZUiOZPLb/zbDurVRA5otNoxBRVn8+7JcRiT5HgipDbw4O+FPiSswOTrEHDUm
	DtgYko4VH4FbxNmuCfcZg13D1kNEvYr4eKD5aEjok0KF9V7E/LTXFBcZwUaH5nssjDDLH+aGUtw2m
	bXh41gzQd6Nfznpoo0ti/TDKxcQATszpA1Z5n1TgI9Qfa05fLQ1kksF7dlllc1wN8BQ1U3Rbra5As
	VgRNReT2EDz7fGY5lwvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiej-00087X-P6; Tue, 11 Jun 2019 15:25:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiea-0007uN-Ah
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 15:25:42 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1haieU-0001Up-HC; Tue, 11 Jun 2019 17:25:34 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1haieT-0004TX-5o; Tue, 11 Jun 2019 17:25:33 +0200
Date: Tue, 11 Jun 2019 17:25:33 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v13 2/2] pwm: sifive: Add a driver for SiFive SoC PWM
Message-ID: <20190611152533.satxxae7dfrovgny@pengutronix.de>
References: <1560231884-15694-1-git-send-email-yash.shah@sifive.com>
 <1560231884-15694-3-git-send-email-yash.shah@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560231884-15694-3-git-send-email-yash.shah@sifive.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_082540_730502_A821FAEC 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, aou@eecs.berkeley.edu,
 devicetree@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, sachin.ghadi@sifive.com, thierry.reding@gmail.com,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

On Tue, Jun 11, 2019 at 11:14:44AM +0530, Yash Shah wrote:
> [...]
> +static int pwm_sifive_remove(struct platform_device *dev)
> +{
> +	struct pwm_sifive_ddata *ddata =3D platform_get_drvdata(dev);
> +	bool is_enabled =3D false;
> +	struct pwm_device *pwm;
> +	int ret, ch;
> +
> +	for (ch =3D 0; ch < ddata->chip.npwm; ch++) {
> +		pwm =3D &ddata->chip.pwms[ch];
> +		if (pwm->state.enabled) {
> +			is_enabled =3D true;
> +			break;
> +		}
> +	}
> +	if (is_enabled)
> +		clk_disable(ddata->clk);
> +
> +	clk_disable_unprepare(ddata->clk);
> +	ret =3D pwmchip_remove(&ddata->chip);
> +	clk_notifier_unregister(ddata->clk, &ddata->notifier);
> +
> +	return ret;

I think the return value of a platform driver's remove callback is
ignored. So usually you should return 0.

Not sure this is worth addressing in a new round, so if noone else has
something to criticise that justifies a new round, take my

	Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

> +}

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
