Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3E4E659
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 17:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phXq41f+7prkt8wqLqQVANeyAuflh9l8BiOOU6j3pN8=; b=qKgZzuM1JcmnVE
	XkPSNERr9z8fPeo0NGDKfXc0SFgPZ2Bb6R2KccwVekhw6YPduONL1kyw9GyoNrHPMwnI0JEzLdT9t
	NgTha4l+18l9MQervGFs4V8PSr4pasnjipclQDgRGqyU1vAI1CZx1/ZdyvESHi9EOhBEz/dlazxWi
	OygReHxQl5KzaJ4xqr2yIeka8a2V2lBhSEVBDEkzaxVkdBxbtQjC1HjiSHLLuNSN/yfLm8L00/tbE
	7hOX88EaS+rfPFlco7PQI/WqHmImvdChOzHx+P6xG+iAuF3YXKD6DwWyOY6FUGx9g0K3Go2WJmzMp
	dG2iK7K4LUtVGyJf0AUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8Bl-0006rr-78; Mon, 29 Apr 2019 15:27:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8Bh-0006rW-K3
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 15:27:27 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hL8Bg-0005bK-1n; Mon, 29 Apr 2019 17:27:24 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hL8Bf-00046t-0a; Mon, 29 Apr 2019 17:27:23 +0200
Date: Mon, 29 Apr 2019 17:27:22 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH v11 0/2] PWM support for HiFive Unleashed
Message-ID: <20190429152722.xw5bcocu2t77wb4u@pengutronix.de>
References: <1553508779-9685-1-git-send-email-yash.shah@sifive.com>
 <CAJ2_jOF8RsLWHkcCJzwfpeMN0+G0oqbHto=nBBnpZDNfuQMKOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2_jOF8RsLWHkcCJzwfpeMN0+G0oqbHto=nBBnpZDNfuQMKOw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_082725_817677_238F9FD6 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 11:36:51AM +0530, Yash Shah wrote:
> Hi,
> =

> Any comments on this patch series?
> Any more changes are needed or it looks good to be merged upstream?

In my eyes it would be great if Andreas Schwab was able to resolve the
problems he pointed out in this thread.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
