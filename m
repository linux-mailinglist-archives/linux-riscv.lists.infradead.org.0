Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21393104F1C
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 10:20:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kLM1GCq424HCYh6jJOzF7dR9g7sRCbGygzSVlI2XgYI=; b=rkiIVHORLcj26oOefo2aEuuYv
	T+kEbtsaa4A50hFkvYaDw58aPave86WnT6IGmO/gQMZDbgLmhwJp0M4flp/SFs+guV3DCaKinLTJp
	3he9NKvZu503z87Yw2CVbIFizplbhsRBANB6BCyrAZ1ZwNAFHnKB+m4cJ2ZOJToCX0s6zeQN4je9q
	aEFJ4ypvVdMiYF1ZJ0YwoUzwPpirnjuvb/13PPeJxuQSJM220Kwl+0pqWMRAMy5WDa8BiIb5K4oOb
	x1sf0n4K6NT1xy8JB3O3igeTCvEafMvFbFknRGHH7yHL9qVgHHi1msyydjMF/CnU3dnlxyTUZO3zD
	B0f+eG3vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXide-0000C5-Dw; Thu, 21 Nov 2019 09:20:34 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXida-0000BJ-LO
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 09:20:32 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXidO-0004TK-QZ; Thu, 21 Nov 2019 10:20:18 +0100
To: Yash Shah <yash.shah@sifive.com>
Subject: RE: [PATCH v2 1/5] genirq: introduce =?UTF-8?Q?irq=5Fdomain=5Ftra?=
 =?UTF-8?Q?nslate=5Fonecell?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 21 Nov 2019 09:20:18 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CH2PR13MB336857C8AAC4CD3EB48942BF8C4E0@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-2-git-send-email-yash.shah@sifive.com>
 <5ec51559d8b4cd3b8e80943788b52926@www.loen.fr>
 <CH2PR13MB33682B1E7B40DC5C2FD1094C8C4E0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <CH2PR13MB336857C8AAC4CD3EB48942BF8C4E0@CH2PR13MB3368.namprd13.prod.outlook.com>
Message-ID: <35606a5012643fcc71592ab4e2c3fdd5@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: yash.shah@sifive.com, mark.rutland@arm.com,
 devicetree@vger.kernel.org, aou@eecs.berkeley.edu, jason@lakedaemon.net,
 atish.patra@wdc.com, sachin.ghadi@sifive.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 palmer@dabbelt.com, sagar.kadam@sifive.com, linux-gpio@vger.kernel.org,
 paul.walmsley@sifive.com, tglx@linutronix.de, bmeng.cn@gmail.com,
 linux-riscv@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_012030_849984_FA1C27F3 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 jason@lakedaemon.net, atish.patra@wdc.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 robh+dt@kernel.org, palmer@dabbelt.com, Sagar Kadam <sagar.kadam@sifive.com>,
 linux-gpio@vger.kernel.org, "Paul Walmsley \(
 Sifive\)" <paul.walmsley@sifive.com>, bgolaszewski@baylibre.com,
 tglx@linutronix.de, bmeng.cn@gmail.com, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-11-21 08:55, Yash Shah wrote:

[...]

>> > > + * bindings where the cell values map directly to the hwirq 
>> number.
>> > > + */
>> > > +int irq_domain_translate_onecell(struct irq_domain *d,
>> > > +				 struct irq_fwspec *fwspec,
>> > > +				 unsigned long *out_hwirq,
>> > > +				 unsigned int *out_type)
>> > > +{
>> > > +	if (WARN_ON(fwspec->param_count < 1))
>> > > +		return -EINVAL;
>> > > +	*out_hwirq = fwspec->param[0];
>> > > +	*out_type = IRQ_TYPE_NONE;
>> > > +	return 0;
>> > > +}
>> > > +EXPORT_SYMBOL_GPL(irq_domain_translate_onecell);
>> > > +
>> > > +/**
>> > >   * irq_domain_translate_twocell() - Generic translate for 
>> direct
>> > > two cell
>> > >   * bindings
>> > >   *
>> >
>> > Can you please also update (potentially in a separate patch) the
>> > potential users of this? I mentioned the nvic driver last time...
>> >
>>
>> Ok, I will separate out this patch from the patchset and send it 
>> individually
>> along with potential users of it.
>> Thanks for your comments
>
> I am sorry, I think I misunderstood you.
> You want me to send a new separate patch in which the potential users
> will be updated to this new function.
> Hope I got it right?

Just add, as part of this series, a patch that updates the one or two
drivers that could make use of this. It doesn't need to be in a 
separate
patch set (which would cause dependency issues).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
