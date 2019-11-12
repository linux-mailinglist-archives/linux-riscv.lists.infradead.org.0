Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F3FF9012
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 13:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B8b0TftiiO4QqhMe/IqntwKcnxJoqOqKhp6NefTQGPA=; b=qVzHrEbLeeU80NXamodpCVkV6
	EGYvU4ogxfA9UJ5/D86Yt7hlfXMgo7bGRz6Ob4tKOG9J9fJb1pYzOiaODA3M94yU74X6xnIPi9lrw
	RqmTLgMNGiWtjifbedf+Tb8IrRO6E8fv/hGT2iI2gkNJh/UQV+nBXp7ZBSIOp2n5lxymUfZ1Ehu+/
	3rR3Q1lgTqFip/L5urwWfg6hy4wi2VzkCOVmddVhE0heUGONTBob5ESXTmph+DH3S0/Vq4vfEP7yS
	jm4qVVNqKKvLv6a7jgjQsHB5Qo/lswuoLSb+bk/IOH3/II6y11ql9sAHSIvHpk8iReb8ha3Tk1pcq
	+dDdvUEVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVkJ-0007RR-QD; Tue, 12 Nov 2019 12:58:11 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVkG-0007Qn-TK
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 12:58:10 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iUVk8-0007QY-JF; Tue, 12 Nov 2019 13:58:00 +0100
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 12 Nov 2019 14:07:21 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
Message-ID: <d82620dd33bdd6bb4d34e49600a506d1@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yash.shah@sifive.com, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 tglx@linutronix.de, jason@lakedaemon.net, bmeng.cn@gmail.com,
 atish.patra@wdc.com, sagar.kadam@sifive.com, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, sachin.ghadi@sifive.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_045809_090289_59CB48ED 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 jason@lakedaemon.net, atish.patra@wdc.com,
 Sachin Ghadi <sachin.ghadi@sifive.com>, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 palmer@dabbelt.com, Sagar Kadam <sagar.kadam@sifive.com>,
 linux-gpio@vger.kernel.org, "Paul
 Walmsley \( Sifive\)" <paul.walmsley@sifive.com>, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-11-12 13:21, Yash Shah wrote:
> Adds the GPIO driver for SiFive RISC-V SoCs.
>
> Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
> [Atish: Various fixes and code cleanup]
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>

[...]

> +static int sifive_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
> +					     unsigned int child,
> +					     unsigned int child_type,
> +					     unsigned int *parent,
> +					     unsigned int *parent_type)
> +{
> +	/* All these interrupts are level high in the CPU */
> +	*parent_type = IRQ_TYPE_LEVEL_HIGH;

It is bizare that you enforce LEVEL_HIGH here, while setting it to NONE
in the PLIC driver. These things should be consistent.

> +	*parent = child + 7;

Irk, magic numbers...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
