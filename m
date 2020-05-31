Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EF21E9698
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 11:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6t3aQnZ40aHdfG8NXOFRymiuNOTII+2xJuOBuRqxHZE=; b=lP7mvLOGGeuYIbcl9aI2qon0T
	KDlx5DnaklrlnOWUuhBavUgG7qLrUuwKxKZ1DechdvU7KhbMH3zIP93+kUjzbW5eapwDmi+04Lb4g
	ewryqyk/g2LK7fdY8lHW3hBcF4+792M+SR+D9ofbF4JDMjyqbaeuezg3xg/pxpVvKQilyXp4jCsNW
	UpqkNWU/9a0wpnhJ6ucciZYWTu0S72EH4lnP09l5KdFrlkY+shaQyZXiR+8A9IyzJg7yq5TidwN+R
	c/m/h7oFhU2xdRdVcmouoDN8x7qFQent0ONdGb0GW1SNhHlSiF9ea+KwU5ICDHHtQYCOwbIeOl1S0
	iAeteR1ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfKLj-0004hY-B8; Sun, 31 May 2020 09:33:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfKLd-0004eg-Kk
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 09:33:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E750620707;
 Sun, 31 May 2020 09:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590917621;
 bh=pqk91tWWobV97/8S9ckQJG1Cg14LQlrVuVJgBaWOX0k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rHKbpyM8DCm+F6y4UHz94TueNXZnKFZThsc0jU4dE+Fse6tt7Ib7kq1pQLQPlLMJd
 I7MtLh+XIk4Q5fzxbq2KPVjrNh4riurdDBqlfVgt9sMR6nJP+ZG9Ct65GrgQkg5HZy
 lFuSC79X6S37a0iZDzVTpVGKxRcPUqZU5ZZlsR1c=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jfKLb-00GfAi-HI; Sun, 31 May 2020 10:33:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun, 31 May 2020 10:33:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
In-Reply-To: <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
 <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
 <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <a5f1346544aec6e6da69836b7a6e0a6e@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: anup@brainfault.org, anup.patel@wdc.com, palmer@dabbelt.com,
 paul.walmsley@sifive.com, aou@eecs.berkeley.edu, daniel.lezcano@linaro.org,
 tglx@linutronix.de, jason@lakedaemon.net, atish.patra@wdc.com,
 Alistair.Francis@wdc.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, palmerdabbelt@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_023341_739749_8620056B 
X-CRM114-Status: GOOD (  17.13  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2020-05-31 06:36, Anup Patel wrote:
> On Sat, May 30, 2020 at 5:31 PM Marc Zyngier <maz@kernel.org> wrote:

[...]

>> >       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
>> 
>> Why do you need to both disable the interrupt *and* change the 
>> priority
>> threshold? It seems to be that one of them should be enough, but my
>> kno9wledge of the PLIC is limited. In any case, this would deserve a
>> comment.
> 
> Okay, I will test and remove "disable the interrupt" part from 
> plic_dying_cpu().

Be careful, as interrupt enabling/disabling is refcounted in order
to allow nesting. If you only enable on CPU_ON and not disable
on CPU_OFF, you will end-up with a depth that only increases,
up to the point where you hit the roof (it will take a while though).

I would keep the enable/disable as is, and drop the priority
setting from the CPU_OFF path.

>> >       return 0;
>> > @@ -260,7 +266,11 @@ static int plic_starting_cpu(unsigned int cpu)
>> >  {
>> >       struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
>> >
>> > -     csr_set(CSR_IE, IE_EIE);
>> > +     if (plic_parent_irq)
>> > +             enable_percpu_irq(plic_parent_irq,
>> > +                               irq_get_trigger_type(plic_parent_irq));
>> > +     else
>> > +             pr_warn("cpu%d: parent irq not available\n");
>> 
>> What does it mean to carry on if the interrupt cannot be signaled?
>> Shouldn't you error out instead, and leave the CPU dead?
> 
> The CPU is not dead if we cannot enable RISC-V INTC external
> interrupt because the Timer and IPIs interrupts are always through
> RISC-V INTC. The PLIC external interrupt not present for a CPU
> only means that that CPU cannot receive peripherial interrupts.
> 
> On a sane RISC-V system, if PLIC is present then all CPUs should
> be able to get RISC-V INTC external interrupt. Base on this rationale,
> I have put a warning for plic_parent_irq == 0.

Fair enough.

         M.
-- 
Jazz is not dead. It just smells funny...

