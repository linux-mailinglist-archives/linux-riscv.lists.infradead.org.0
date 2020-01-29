Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FC514C7DF
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Jan 2020 10:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qrygNuanVNFn2dafEwaOoexxos726aQ9sTC3dappZCU=; b=Cvt4QfKAbB20vcy3cdNpyoqa1
	DOGHCz79YKSYOGzgbHROk2Nkmaoa+ervChgliq3bkF34af+NeSDl39SjN2XOjG/Xf7wjEjLvCGF4o
	OBd4Q1ZuPSdqBaSlYWN+T3PpW+L0jFV9c9VtUxDOgbVLcIygHslOsrrfQqtRkX2WOCObpi64lY1xg
	Ce5WoQVdD24wG7gkudMpidnZf6w8BQ4XjzVOBfJeliszNLNCwayNtokcTcA8jnAMFZ9ba8AXw6yQi
	ZONlFA+lxTCP4m9Qof+aSN1iO0Y3Er2Cf31LsweA3MFs2Vu7OxmjnQF36J+vCwtnSSzHVuc04pD1G
	nXqSW0Bnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwjOO-0001YT-RP; Wed, 29 Jan 2020 09:12:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwjOM-0001Y3-KT
 for linux-riscv@lists.infradead.org; Wed, 29 Jan 2020 09:12:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C371920708;
 Wed, 29 Jan 2020 09:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580289129;
 bh=3PbAV8xHa5J1shODJC/9vqbomQlLbIG5XwG5BrUPB+s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=o011yhgIai4vAfp6DxIAk6OX++mtFKDDNVaRJUxPNVXWQEo1PtH3nX+IBfs8/cv/K
 MbYVdQ1hHusvG/nXheJpX9kJT+rEYrkI/r+P5TFKNy+LfCv8u/D8miQ0aR/QyCcq8Y
 xV7xzBc3J7YDnUoPjSJYKh3+ygKNl6TEg0vecg/8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1iwjOK-001zHw-1b; Wed, 29 Jan 2020 09:12:08 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 29 Jan 2020 09:12:08 +0000
From: Marc Zyngier <maz@kernel.org>
To: JaeJoon Jung <rgbi3307@gmail.com>
Subject: Re: [PATCH] gpio/sifive: fix static checker warning
In-Reply-To: <CAHOvCC5A4usY0k4+0Y13N_zbAG8PD4H++fngAu+yJsVba9+6Ng@mail.gmail.com>
References: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
 <ecb0e9404a3f6256a7ba1fe48b5a1471@kernel.org>
 <CAHOvCC5A4usY0k4+0Y13N_zbAG8PD4H++fngAu+yJsVba9+6Ng@mail.gmail.com>
Message-ID: <934410721310a3107e1d9d2600ec438a@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: rgbi3307@gmail.com, yash.shah@sifive.com,
 atish.patra@wdc.com, wesley@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, palmer@dabbelt.com,
 sachin.ghadi@sifive.com, linux-gpio@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_011210_690424_0E3CE79B 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: bgolaszewski@baylibre.com, wesley@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, atish.patra@wdc.com,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 sachin.ghadi@sifive.com, linux-gpio@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

JaeJoon,

On 2020-01-29 01:27, JaeJoon Jung wrote:
> Because SiFive FU540 GPIO Registers are aligned 32-bit,
> I think that irq_state is good "unsigned int" than "unsigned long".
> 
> I refer to SiFive FU540-C000 Manual v1p0 (GPIO Register Table 103)
> as "Only naturally aligned 32-bit memory accesses are supported"

You realize that we're talking about variables here, and not hardware
registers, right?

> when you use assign_bit(offset, &chip->irq_state, 1),
> offset is 32-bit.

And? assign_bit takes an "unsigned long *" as a parameter. irrespective
of the size of long on a given architecture, by the way.

> I prefer to use bit operation instead of assign_bit().
> 
> u32 bit = BIT(offset);
> chip->irq_state |= bit;

which is not what assign_bit() does.

> If you use this code, you do not use the assign_bit() and
> need not change irq_state data type.

Or we can use the correct API and not introduce additional bugs, which
your suggestion above would lead to.

> There are many improvements in my works for drivers/gpio/gpio-sifive.c.
> I hope to check my attached source file.

That's not how we submit patches to the Linux kernel. I suggest you
read the documentation on how to do this.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

