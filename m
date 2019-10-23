Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5025AE261D
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 00:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=SnGbfXW027GPC24OyAXDqCCeklSQJFwaQzCWpJF5D7c=; b=Drtyfxjzgwto/YvKWansT/1KR
	J6ie9oYdy+/CeMmVy/k5CuLLqaxDv5dX99SoDxjF6Wc8ql0w9l3bwgC4SpebXA1f4zVF0Dohr9tPu
	UFJHKaISFCQ+W3JsTBFu167f5qhPIOun+Pu9uJp5gY5XkCqK5a+2XKqwBUNhUipAZ2hpo8KouZT+A
	FhpSnmy8MWoGHcW8paJ3zxjWp2LNTCUhykU36qUcvB+bA2R+SzcFkk9TEeoD0OC15lFPZ3tTbiYaR
	b6FFGXIdbCG3l5dAt0IAwu/wTrSHXvW9NOo9aoIY++43dnkpenfx0Zpke7otg4B/m900/P52TjYp0
	7LEuxU9xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOmi-00038T-1k; Wed, 23 Oct 2019 22:07:16 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOme-00037j-PG
 for linux-riscv@lists.infradead.org; Wed, 23 Oct 2019 22:07:14 +0000
Received: by mail-pf1-x444.google.com with SMTP id b128so13791892pfa.1
 for <linux-riscv@lists.infradead.org>; Wed, 23 Oct 2019 15:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=cujCjqkjjqtzyxP2LMvJxOSW52EZURhhallr8EyFLWI=;
 b=IJZYTKzc6XlQIOzUqw0cdsZHx6qAqEIQo7oMaBK9BqX4LLrV5o8m8xjoTgGrnYEdtR
 iMtH/eyJA6pKIWFCifnu6CxvWnGq2vJdVTNMY8DCC9Luub+UH11+cTYryzQOzHTJ0xBc
 vO/PMUjSG7+xUWXfX6R4WSzqyIs5K46KkomO6uiQoXkgdEe1+o4ZZgLtYbrfR5ktBVh6
 osG+FCHEaBcn65mOdiciNjsOGpnFbiFWhCHVDEnkvM6411T2lJNs2W3tSz3MClp5CcQg
 FE6Qo1ZNnKBst5kHz5QtXOYpr0ogBBsReo8xJF2frZyOtmwiWfCdismm8t+KnIwBKtfA
 uq6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=cujCjqkjjqtzyxP2LMvJxOSW52EZURhhallr8EyFLWI=;
 b=LB4ZVTeje3mNQR6iZ7vVmppo5SrqmEM6QgOYmyqTvEn8RXz38HErS9VMcZzySvwr7X
 1Pq+9fkJUlhDOhtSYNL5h2N9rGVAk8imMWS6oZDIO/LPz9pkGt7JRchp9iZou5Q6Qdyn
 +uLX2ypLzVCmDIIVwmWfJX6t514LfZCfHnp/CbE8XN+lMCSudT97RvT6KLKFQFMDzW71
 MXwSKXaosF3X64Ljy6RQU7bVvDRYPtzeMfO3JvcAD0r2Cf46sZid2KtlT1XmcAXSLX82
 US6nKKldL+jx/B6wBJ9SFfZJI3BV8jcvtETYzDo42lR1h/37kq3l2kcqk1wUIfvEyDZH
 5EHw==
X-Gm-Message-State: APjAAAW5J36Y+gTaUByScWEyi/op0tutxWi0zFPjyzmbEqzUYjBY8KDl
 1P1VAxB57mh5ImopwC2JqNNfbQ==
X-Google-Smtp-Source: APXvYqzQN2qqMoAroPF87fAIhAAY/k/ioMXMfV8E2oLtQe7lZxdAcyktactW4hBzY5AJG1pUXxCIYQ==
X-Received: by 2002:aa7:838f:: with SMTP id u15mr6005674pfm.13.1571868431482; 
 Wed, 23 Oct 2019 15:07:11 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id j128sm25978757pfg.51.2019.10.23.15.07.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 15:07:10 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:07:10 -0700 (PDT)
X-Google-Original-Date: Wed, 23 Oct 2019 15:07:06 PDT (-0700)
Subject: Re: [PATCH] irqchip: Skip contexts other supervisor in plic_init()
In-Reply-To: <alpine.DEB.2.21.9999.1910231152580.16536@viisi.sifive.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-aefb3209-29c4-46db-8cf2-e12db46d9a6e@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_150712_822630_FB6E4FF6 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, maz@kernel.org, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, alan.mikhak@sifive.com,
 tglx@linutronix.de, linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 11:54:54 PDT (-0700), Paul Walmsley wrote:
> + hch
>
> On Wed, 23 Oct 2019, Alan Mikhak wrote:
>
>> From: Alan Mikhak <alan.mikhak@sifive.com>
>>
>> Modify plic_init() to skip .dts interrupt contexts other
>> than supervisor external interrupt.
>
> Might be good to explain the motivation here.
>
>>
>> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
>> ---
>>  drivers/irqchip/irq-sifive-plic.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>> index c72c036aea76..5f2a773d5669 100644
>> --- a/drivers/irqchip/irq-sifive-plic.c
>> +++ b/drivers/irqchip/irq-sifive-plic.c
>> @@ -251,8 +251,8 @@ static int __init plic_init(struct device_node *node,
>>  			continue;
>>  		}
>>
>> -		/* skip context holes */
>> -		if (parent.args[0] == -1)
>> +		/* skip contexts other than supervisor external interrupt */
>> +		if (parent.args[0] != IRQ_S_EXT)
>>  			continue;
>
> Will this need to change for RISC-V M-mode Linux support?
>
> https://lore.kernel.org/linux-riscv/20191017173743.5430-1-hch@lst.de/

Yes.

>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
