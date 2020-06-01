Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9695B1EA12D
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 11:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sjSM6yJH3xdYfr6RrB96BH/0PiFq/vn2M/hnBtb6YSc=; b=mx/miG6+jX3yj4YviCFqD/XzV
	mehBVV8JjUhT7/yzMhUbHRNWUmKaNdjVPUvv0q8c/8HLA0fp+qyi+JZy8z6FGJ9QLH+N7a6FlB09w
	5nduVkuzByaHjU9uX8EjLfYY3gMZyhy8nmDnDr28spaX7wARvm79qAvUsj5VljemvWn0/r/HjoFEg
	N1ZC35ojkRTFgRB2dQ9uXnpXpNNR5Av2zduWbI7wdyi+nJksXdMzRKgu5nwbO5HuArdUOBM+ezbr1
	K7qBIA2b6NNBccCZrTG7jz9xyikmzYxxThxT1PSQBvTK68s+TUI2If2fpk+zboIUxSC4TiL7Dxu4Y
	B1Nx/KbZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfh1b-0003oL-8H; Mon, 01 Jun 2020 09:46:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfh19-0003Pt-5V
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 09:46:06 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 006152076B;
 Mon,  1 Jun 2020 09:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591004762;
 bh=u5k9lXSIba8wSgRxEYAEP5/ce82Baj9jWYygqw4RKcA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=D3l20ti3+KyXZfguuMCKwgu0uGFohKllgeRxtBcoquifsNHypyDgGcP4HFXSOFjNf
 hgk1qGfoTzGbcC6N1kORua7kukfOCAYBCYcKKc6DolCmop+Cb1vqun7JD9sfnaczwg
 UfNcGJ/5ZPdxb+u/c1CFfoBI+gVZ5L+17QlpWVkk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jfh16-00GrqL-JE; Mon, 01 Jun 2020 10:46:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Mon, 01 Jun 2020 10:46:00 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH v7 4/6] clocksource/drivers/timer-riscv: Use per-CPU timer
 interrupt
In-Reply-To: <20200601091543.943678-5-anup.patel@wdc.com>
References: <20200601091543.943678-1-anup.patel@wdc.com>
 <20200601091543.943678-5-anup.patel@wdc.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <a20434e7c380e77e8323c11cff863f0c@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, atish.patra@wdc.com,
 Alistair.Francis@wdc.com, anup@brainfault.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_024603_243260_79B2171C 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Jason Cooper <jason@lakedaemon.net>,
 Anup Patel <anup@brainfault.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-06-01 10:15, Anup Patel wrote:
> Instead of directly calling RISC-V timer interrupt handler from
> RISC-V local interrupt conntroller driver, this patch implements
> RISC-V timer interrupt as a per-CPU interrupt using per-CPU APIs
> of Linux IRQ subsystem.
> 
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/irq.h      |  2 --
>  drivers/clocksource/timer-riscv.c | 43 ++++++++++++++++++++++++++++---
>  drivers/irqchip/irq-riscv-intc.c  |  8 ------
>  3 files changed, 40 insertions(+), 13 deletions(-)

Reviewed-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

