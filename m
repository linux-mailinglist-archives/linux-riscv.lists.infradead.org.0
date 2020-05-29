Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D35B1E7B52
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 13:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kAJoDl9kiLoLe0Xu/DD/F8eUgyqese0h+4731dQfUxg=; b=eWW9N4+SVe9ode3aHY1L0J5Ld
	Oe9EH9VPt9Kwo5DNbvob5OUl+8mDL5WVbeyRQ7GEhEYoDvauOCD9oeeeEN1D2hClGP4hm2efWiBv7
	0EEo3ZCKq8PsJR6b+FPbnDDpoQFSewV0DoUihtkfi+x0o0/y7lvvLWFvIUzB71f7QlbjO3CiuPLPy
	dUSDbKVH3EXoDuC5FFYUiCasoS5P8uF3HeGm7lN724YQT4yMK4mMrohwYZCXHXy52j0I+Fd2l5WCi
	YiOM4ep8t6YIy21W6qpht0O8YusAKx+0ihpd56sHVJFtyHZcRa+ylXfjoys4jxtDYlUl9wAXlfTrD
	HTC4L5TsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jecuc-0002hb-1W; Fri, 29 May 2020 11:10:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jecuZ-0002h9-00
 for linux-riscv@lists.infradead.org; Fri, 29 May 2020 11:10:52 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91FFB206E2;
 Fri, 29 May 2020 11:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590750650;
 bh=7sAH5Q45SSZ5h/+VQ6sNe8Zzwnwl+WDutlBrtkbM3pY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HRSm1UVDjEXhxcM4AYUshIjsvg+h6LpIgL9pfCP9PBNYjM6O4bcDvIDnTyth01CWO
 Z2bBWl2YzHy8r2ctznmpfv/d+Ub8ih1P0UnDareE6ov4DskZ9ZflGTsivy8oocOtFb
 hYuBdgf0ZbYIug9lV3/XrY63b5qwxXtqPxuTRfao=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jecuX-00GFga-1a; Fri, 29 May 2020 12:10:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 29 May 2020 12:10:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v5 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
In-Reply-To: <CAAhSdy1uRzsF7w_GMaPhfyNnRkhRNqT2edL0+96gwocWiXNpOA@mail.gmail.com>
References: <20200521133301.816665-1-anup.patel@wdc.com>
 <20200521133301.816665-4-anup.patel@wdc.com>
 <140c6fa723225ff138e8b39c4f16c9c0@kernel.org>
 <CAAhSdy1uRzsF7w_GMaPhfyNnRkhRNqT2edL0+96gwocWiXNpOA@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <40251a7764fc23ed19426df0adf0fc4d@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup@brainfault.org, anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, atish.patra@wdc.com,
 Alistair.Francis@wdc.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_041051_055736_301CCB8C 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org
 List" <linux-kernel@vger.kernel.org>, Atish Patra <atish.patra@wdc.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-29 11:45, Anup Patel wrote:
> On Fri, May 29, 2020 at 3:39 PM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On 2020-05-21 14:32, Anup Patel wrote:

[...]

>> > +/* Get the OF device node used by INTC irq domain */
>> > +struct device_node *riscv_of_intc_domain_node(void)
>> > +{
>> > +     return intc_domain_node;
>> > +}
>> > +EXPORT_SYMBOL_GPL(riscv_of_intc_domain_node);
>> 
>> Why do you need this? Why can't the timer node refer to its
>> interrupt-parent? The irqchip shouldn't be in the business of
>> working around DT issues.
>> 
>> At worse, use the default irqdomain if you must, but please
>> avoid this kind of construct.
> 
> Even, I don't like exporting riscv_of_intc_domain_node().
> 
> Thanks for your suggestion, I will certainly use the default irqdomain.

This should be a last resort solution. The irqdomain should
naturally come from the parent interrupt controller, accessible
from the device (the timer in this case) node.

Use it to for backward compatibility if you *really* must,
but this is generally a very bad idea as it allows all kind
of bizarre fallbacks and hides bugs.

Thanks,

          M.
-- 
Jazz is not dead. It just smells funny...

