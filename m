Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21BDF04A5
	for <lists+linux-riscv@lfdr.de>; Tue,  5 Nov 2019 19:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yi25q6mmrcbdUf9VmtcUiE70hM5hJB/BYcisbrBYyTw=; b=k5VxJHJGJTjwramfqh43VQc6+
	AU2u11x5GpmZJ8cDbAQtsZKxOU/eU6yNpPMzsx3snBLED78dkqLX7nqwp4+X3VQvBrhaK1tKTfvw6
	ETavp5HeUvFcrbWfzUrp8uk1Q9g7lfxhANAKuqmtU0JIpXylZS+kb/1m/u28mWdUZQjPA5b/ntRSq
	G4myeF2NhwfKcY2aVco7YkfSqn8zAnULZmdr8Pg5BpnVNH7PEKwsuXOrqpaMgT73NesrZ4OygogDP
	ny++uDqXZwtBbNowJkZln0pqu+QtS8IjB/7SJPPuNnINsWq2ZRntxZnTOLOZFJWw7hJwVauOACkPJ
	P+L/KY7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS39R-00017S-IR; Tue, 05 Nov 2019 18:01:57 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS39O-00016x-8z
 for linux-riscv@lists.infradead.org; Tue, 05 Nov 2019 18:01:55 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iS39J-000357-0h; Tue, 05 Nov 2019 19:01:49 +0100
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH 01/12] riscv: abstract out CSR names for supervisor vs
 machine mode
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 05 Nov 2019 19:11:09 +0109
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <alpine.DEB.2.21.9999.1911050956230.20606@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-2-hch@lst.de>
 <alpine.DEB.2.21.9999.1911050956230.20606@viisi.sifive.com>
Message-ID: <b1e60fb42bc057e9901187bb866b7077@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: paul.walmsley@sifive.com, tglx@linutronix.de,
 jason@lakedaemon.net, hch@lst.de, palmer@sifive.com, damien.lemoal@wdc.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_100154_462163_A5416D13 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 1.7 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, jason@lakedaemon.net,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On 2019-11-05 19:06, Paul Walmsley wrote:
> Jason, Marc, Thomas,
>
> On Mon, 28 Oct 2019, Christoph Hellwig wrote:
>
>> Many of the privileged CSRs exist in a supervisor and machine 
>> version
>> that are used very similarly.  Provide versions of the CSR names and
>> fields that map to either the S-mode or M-mode variant depending on
>> a new CONFIG_RISCV_M_MODE kconfig symbol.
>>
>> Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>
>> and Paul Walmsley <paul.walmsley@sifive.com>.
>>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>
> Care to give a quick ack to the drivers/irqchip changes?

Sure, see below.

>
>
> thanks,
>
> - Paul
>
>
>> ---
>>  arch/riscv/Kconfig                 |  4 ++
>>  arch/riscv/include/asm/csr.h       | 72 
>> +++++++++++++++++++++++++----
>>  arch/riscv/include/asm/irqflags.h  | 12 ++---
>>  arch/riscv/include/asm/processor.h |  2 +-
>>  arch/riscv/include/asm/ptrace.h    | 16 +++----
>>  arch/riscv/include/asm/switch_to.h | 10 ++--
>>  arch/riscv/kernel/asm-offsets.c    |  8 ++--
>>  arch/riscv/kernel/entry.S          | 74 
>> +++++++++++++++++-------------
>>  arch/riscv/kernel/fpu.S            |  8 ++--
>>  arch/riscv/kernel/head.S           | 12 ++---
>>  arch/riscv/kernel/irq.c            | 17 ++-----
>>  arch/riscv/kernel/perf_callchain.c |  2 +-
>>  arch/riscv/kernel/process.c        | 17 +++----
>>  arch/riscv/kernel/signal.c         | 21 ++++-----
>>  arch/riscv/kernel/smp.c            |  2 +-
>>  arch/riscv/kernel/traps.c          | 16 +++----
>>  arch/riscv/lib/uaccess.S           | 12 ++---
>>  arch/riscv/mm/extable.c            |  4 +-
>>  arch/riscv/mm/fault.c              |  6 +--
>>  drivers/clocksource/timer-riscv.c  |  8 ++--
>>  drivers/irqchip/irq-sifive-plic.c  | 11 +++--
>>  21 files changed, 199 insertions(+), 135 deletions(-)

[...]

>> diff --git a/drivers/irqchip/irq-sifive-plic.c 
>> b/drivers/irqchip/irq-sifive-plic.c
>> index 7d0a12fe2714..8df547d2d935 100644
>> --- a/drivers/irqchip/irq-sifive-plic.c
>> +++ b/drivers/irqchip/irq-sifive-plic.c
>> @@ -181,7 +181,7 @@ static void plic_handle_irq(struct pt_regs 
>> *regs)
>>
>>  	WARN_ON_ONCE(!handler->present);
>>
>> -	csr_clear(sie, SIE_SEIE);
>> +	csr_clear(CSR_IE, IE_EIE);
>>  	while ((hwirq = readl(claim))) {
>>  		int irq = irq_find_mapping(plic_irqdomain, hwirq);
>>
>> @@ -191,7 +191,7 @@ static void plic_handle_irq(struct pt_regs 
>> *regs)
>>  		else
>>  			generic_handle_irq(irq);
>>  	}
>> -	csr_set(sie, SIE_SEIE);
>> +	csr_set(CSR_IE, IE_EIE);
>>  }
>>
>>  /*
>> @@ -252,8 +252,11 @@ static int __init plic_init(struct device_node 
>> *node,
>>  			continue;
>>  		}
>>
>> -		/* skip contexts other than supervisor external interrupt */
>> -		if (parent.args[0] != IRQ_S_EXT)
>> +		/*
>> +		 * Skip contexts other than external interrupts for our
>> +		 * privilege level.
>> +		 */
>> +		if (parent.args[0] != IRQ_EXT)
>>  			continue;
>>
>>  		hartid = plic_find_hart_id(parent.np);

For changes to this file:

Acked-by: Marc Zyngier <maz@kernel.org>

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
