Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BA210D303
	for <lists+linux-riscv@lfdr.de>; Fri, 29 Nov 2019 10:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YhxvX/sJvQAMYYIOsq1q/BKSeRLfm7UI9lnWgHJSMkI=; b=Vukh36IQqyUMsEylddbojh620
	n6DnU2NXITshvtiFDEdpEwr4lYB2Ud8upEF5ZKAWIhektmbPn48nyKKAq5rFLI5RH2g7sEMYtqiN4
	OwYHyeY1QGZQ803s/X1RC2Gn2S5SVdTy3bQuCeGrBj7qTtFJlLk/ouNXqzwAyQkrk2FhmLZkE6YWV
	uJxiecppjSSavff/iimFnxPBYMSccjO0ebnWuXiq8o/hctS+SsGXI5Nyj1Fhyu7Hl2j0jVtf1Xmda
	j6ZKp6v0iVcNjfqJZukLAWrzwdfeku4R+6YTAI3q1wTJu+B8hG5UU3xqjUIzfY3fnN7Le8lAR8Beb
	PGbemC3Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacK8-0004uD-Bk; Fri, 29 Nov 2019 09:12:24 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacK4-0004ta-BO
 for linux-riscv@lists.infradead.org; Fri, 29 Nov 2019 09:12:21 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iacJu-00053w-Nt; Fri, 29 Nov 2019 10:12:10 +0100
To: Yash Shah <yash.shah@sifive.com>
Subject: RE: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive SoCs
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 29 Nov 2019 09:12:10 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CH2PR13MB33682C26386CB4EE8A7EA1C98C460@CH2PR13MB3368.namprd13.prod.outlook.com>
References: <1574661437-28486-1-git-send-email-yash.shah@sifive.com>
 <1574661437-28486-6-git-send-email-yash.shah@sifive.com>
 <CACRpkdY7fGvTPcwwC0XU+XN2w_QUCj0MmOYhp183P3Lj7Qw8WA@mail.gmail.com>
 <CH2PR13MB33682C26386CB4EE8A7EA1C98C460@CH2PR13MB3368.namprd13.prod.outlook.com>
Message-ID: <208a63e8819b84f9dc03f270f2606294@www.loen.fr>
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
X-CRM114-CacheID: sfid-20191129_011220_536318_70B2CD8B 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, palmer@dabbelt.com,
 Sagar Kadam <sagar.kadam@sifive.com>, linux-gpio@vger.kernel.org, "Paul
 Walmsley \( Sifive\)" <paul.walmsley@sifive.com>, tglx@linutronix.de,
 bmeng.cn@gmail.com, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2019-11-29 06:27, Yash Shah wrote:
>> -----Original Message-----
>> From: Linus Walleij <linus.walleij@linaro.org>
>> Sent: 28 November 2019 17:50
>> To: Yash Shah <yash.shah@sifive.com>
>> Cc: bgolaszewski@baylibre.com; robh+dt@kernel.org;
>> mark.rutland@arm.com; palmer@dabbelt.com; Paul Walmsley ( Sifive)
>> <paul.walmsley@sifive.com>; aou@eecs.berkeley.edu; 
>> tglx@linutronix.de;
>> jason@lakedaemon.net; maz@kernel.org; bmeng.cn@gmail.com;
>> atish.patra@wdc.com; Sagar Kadam <sagar.kadam@sifive.com>; linux-
>> gpio@vger.kernel.org; devicetree@vger.kernel.org; linux-
>> riscv@lists.infradead.org; linux-kernel@vger.kernel.org; Sachin 
>> Ghadi
>> <sachin.ghadi@sifive.com>
>> Subject: Re: [PATCH v3 5/6] gpio: sifive: Add GPIO driver for SiFive 
>> SoCs
>>
>> On Mon, Nov 25, 2019 at 6:58 AM Yash Shah <yash.shah@sifive.com> 
>> wrote:
>>
>> > Adds the GPIO driver for SiFive RISC-V SoCs.
>> >
>> > Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
>> > [Atish: Various fixes and code cleanup]
>> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
>> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>>
>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>
>> I suppose Marc will merge all patches into the irqchip tree as they 
>> are logically
>> dependent? If you want the GPIO bindings and this driver directly 
>> merged
>> (no deps) then I can do that as well.
>
> Yes, the GPIO driver have logical dependency on irqchip patches. It
> is best if Marc merges all the patches into the irqchip tree.
>
> @Marc Zyngier, Are you going to merge all the patches into the 
> irqchip tree?

I'm happy to pick this up, but that's definitely 5.6 material as
I stopped collecting new 5.5 features a couple of weeks ago.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
