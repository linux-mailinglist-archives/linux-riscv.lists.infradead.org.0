Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD0812D990
	for <lists+linux-riscv@lfdr.de>; Tue, 31 Dec 2019 15:53:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2o20aAqayv6BZ7lYdB775KhwnJD8SsBVJk71b0rde2E=; b=lGHWOuEQLVK3MLNwOW0jKzLoN
	7W732q0ZPnMoKif5MsUh2chl9WbhGrVkVRm3P5kmjBTIFPrn8cjNwIR/189eKzlJm1ajrI7BfZsJL
	VfC7uFxbCRtAPoL749eRS819liZ+ikkmNuNKT1wgP1DgnLzngv30yQI/5AjhL8vTX8EBSSXivfOKj
	ybnTgKBObYyIwvC3aUvWcbKwiFQ56sA/8E97L7mWM+Cjf7xwVZLNOvKqTpF1o1Y+Gitgg8yLbnDUQ
	cyHriwDbRCQGDRNoU1MYSRNYmxQXOaW1zUHXlvNHl8JAhkIhclDxG6TN+HKxwrcbicu4O6yZlmU/H
	uKi0M2jyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imItj-0000Wu-RG; Tue, 31 Dec 2019 14:53:27 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imItL-0000Fb-NE; Tue, 31 Dec 2019 14:53:04 +0000
Received: by mail-ed1-x542.google.com with SMTP id dc19so35398050edb.10;
 Tue, 31 Dec 2019 06:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2o20aAqayv6BZ7lYdB775KhwnJD8SsBVJk71b0rde2E=;
 b=poRD7KZjKZr3ORNVyI2Yj3hyY1TSZPoPk95zGZ701aGlD/EuLWIYYGcQNBnu2tZ7En
 xoxgSxs5loO/fAEkWpp678V8OLrQTcgJrUFksGkGuG8BarsWWXMPvtvZE1SfXAOgejml
 SLB+9Fd0k3b41xtxmVe9f/raX5P1W249Yk2AqJ15SARoCzycZA1QzKvuIQ+3j32VCpGz
 iKSAYWHJWSCOuZVvlXBzU8wMmL0ERW8LyW2wYDIQ9WUVbotyuWLM0aScSi3rKSQVm33C
 mvV0Fo4HIPY9SHlLjH+P+IMsRlEgXN4N/aXUFYrOoO0MbtUyKTAwyLZ6UghZzNXybp5c
 gC/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2o20aAqayv6BZ7lYdB775KhwnJD8SsBVJk71b0rde2E=;
 b=a4ixuj7MJOUH7Kwwll9uRdht9P3aF7dk/61FezVtpQQ/0WvyMaD8w56vyvFXRh+JuU
 EBcUl18gK0B4nHenY9bydg+MHGMj9VDUCuvdBrIuk34S+WBKrZLMsPI/KQtEY2BwMEeo
 fw7hhQjwKIzqmy648iKmUsqTzAkhK7Mt8YQQAje5QiuGpG8/IzVJk8L1ALw5Ywts1S60
 ojPSZZwHvpS4LkEDPsCGgU0Uqd2fkqpqh9mfgVyFNL2GxrI3fBJuvxumBusBj3Cy0L7s
 ki1ZkjDKiS/9LBjKVpqm+i844HjwnbpwXnvolwmgsr7DVTxRQ63aMhjE7LQA3oI2Ahnf
 4jQw==
X-Gm-Message-State: APjAAAV833Klb8OqnHzR/mzt3hxt4MlKKYCXC8CysB78WUEGNf/rm/wh
 zTPx6qGdxvPyHZZyKUY/FdOvrn4kkor7h4QsiroKfviU
X-Google-Smtp-Source: APXvYqyRa5i9cLmMHe86c+B4Fx/pd0qP4rUcFH9Tquw1x4/LQC/Oq5YixxDbRdVtRa9R4GKVNAzhEfLEp5Lfo8kVkxk=
X-Received: by 2002:a50:bae1:: with SMTP id x88mr59378035ede.10.1577803980972; 
 Tue, 31 Dec 2019 06:53:00 -0800 (PST)
MIME-Version: 1.0
References: <20191230172113.17222-1-krzk@kernel.org>
 <20191230172113.17222-2-krzk@kernel.org>
In-Reply-To: <20191230172113.17222-2-krzk@kernel.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 31 Dec 2019 15:52:50 +0100
Message-ID: <CAFBinCAeE-mu4+F9vOkp3cMaGjQ7tst0xdd47zSp54wW4ArRug@mail.gmail.com>
Subject: Re: [PATCH 2/2] pwm: Enable compile testing for some of drivers
To: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_065303_783216_144EC81C 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 6:21 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Some of the PWM drivers can be compile tested to increase build
> coverage.
>
> The Meson PWM driver requires COMMON_CLK dependency.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
for PWM_MESON:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

thank you!


Martin

