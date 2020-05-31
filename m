Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21BB1E971A
	for <lists+linux-riscv@lfdr.de>; Sun, 31 May 2020 12:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4aCqTrXmmcbMuK15JiRN6ZR8INpmlbAqy7bTPEXkHco=; b=AWpP537wJwDKj7ZkElWeGKFgU
	NRM7X/c7rFykhgdMhhrgGEiMwNYMEe/MC6xzqlIwnDP0LCs1qSUDZsX2Hh7tek4a1JdmlRSyqXvnt
	3oKnx+UPAUgxOZc7GL9yaSPRwTo60C8uUGNDgUy+Xxhju421nlKlQKy75qvwUBJ490i4R6YoLfceT
	UJ1YaATgZvUoPjgyP/Jvlo62UXYF8k24xDkuVodKoaD01cS+rGHni/pC1mYiwW0cyZSd5dUw6ou/C
	g8Z74JHoglUcvajnMuLsn4bN2tQtTxEa0heUbBiN4xp+DS5aqvGeAZAxnHyCTi7v70+QEh/XN0kbF
	0YiZ1SPnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfLan-0008PF-51; Sun, 31 May 2020 10:53:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfLaj-0008OZ-Ha
 for linux-riscv@lists.infradead.org; Sun, 31 May 2020 10:53:23 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03F7B2077D;
 Sun, 31 May 2020 10:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590922399;
 bh=cDOXdwIRPzfH77hpV1aQ9G8n49HhGcsjIyovyaKeb+c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=WtBH4tp1jQ3zoPFoW5sVLnr5DlAebaJW1Jqvqx9RZleEKQqYO59S9Iw56TfIRvmHk
 syWHSxJjmb2nhRRmMa7RRkKG8UfncPQPV4eUS/b3MBdd05qCcYe3BXcyVA2giihB5R
 kXhpyuHSiWdmTrp8g/OBOdv9aZatKNa7amVlz228=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jfLaf-00GfrJ-IT; Sun, 31 May 2020 11:53:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sun, 31 May 2020 11:53:17 +0100
From: Marc Zyngier <maz@kernel.org>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH v6 3/6] irqchip: RISC-V per-HART local interrupt
 controller driver
In-Reply-To: <CAAhSdy2fJ1cd2OjAWODOmSbkWUBfvvr4rvsTqh4qNxZjTTKo5A@mail.gmail.com>
References: <20200530100725.265481-1-anup.patel@wdc.com>
 <20200530100725.265481-4-anup.patel@wdc.com>
 <cd4a5513197b73e3b8d335f09117bb8d@kernel.org>
 <CAAhSdy3cnZwnjpqWkixmZ5-fi=GK1cSUsjah=P3Yp5hjv382hg@mail.gmail.com>
 <a5f1346544aec6e6da69836b7a6e0a6e@kernel.org>
 <CAAhSdy2fJ1cd2OjAWODOmSbkWUBfvvr4rvsTqh4qNxZjTTKo5A@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <e315f76b06b7b0935ebee867c04f364e@kernel.org>
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
X-CRM114-CacheID: sfid-20200531_035321_621477_BF320B56 
X-CRM114-Status: GOOD (  15.41  )
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

On 2020-05-31 11:06, Anup Patel wrote:
> On Sun, May 31, 2020 at 3:03 PM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On 2020-05-31 06:36, Anup Patel wrote:
>> > On Sat, May 30, 2020 at 5:31 PM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> [...]
>> 
>> >> >       plic_set_threshold(handler, PLIC_DISABLE_THRESHOLD);
>> >>
>> >> Why do you need to both disable the interrupt *and* change the
>> >> priority
>> >> threshold? It seems to be that one of them should be enough, but my
>> >> kno9wledge of the PLIC is limited. In any case, this would deserve a
>> >> comment.
>> >
>> > Okay, I will test and remove "disable the interrupt" part from
>> > plic_dying_cpu().
>> 
>> Be careful, as interrupt enabling/disabling is refcounted in order
>> to allow nesting. If you only enable on CPU_ON and not disable
>> on CPU_OFF, you will end-up with a depth that only increases,
>> up to the point where you hit the roof (it will take a while though).
>> 
>> I would keep the enable/disable as is, and drop the priority
>> setting from the CPU_OFF path.
> 
> The PLIC threshold is like GICv2 CPU interface enable/disable.

Looking at the documentation[1], that's not really a correct analogy:

- The PLIC is far removed from the CPU, and is more akin a GICv3
   distributor. The INTC itself is more like a GICv3 redistributor,
   as it deals with local interrupts only. I don't see anything
   in the RISC-V architecture that actually behaves like a GIC
   CPU interface (not necessarily a bad thing...).

- The threshold register is not an ON/OFF, but a priority mask,
   similar to the GIC PMR (except that the PMR lives in the CPU
   interface and affects all interrupts targetting this CPU while
   this only seem to affect PLIC interrupts and not the INTC interrupts).
   You may be using it as an ON/OFF for now as you don't support
   multiple priorities yet, but that's just a SW thing.

> Based on your comment, we should only program the PLIC threshold
> in CPU_ON and don't touch the PLIC threshold in CPU_OFF. Right??

This seems like the correct thing to do.

         M.

[1] 
https://sifive.cdn.prismic.io/sifive%2Fdc4980ff-17db-448b-b521-4c7ab26b7488_sifive+u54-mc+manual+v19.08.pdf
-- 
Jazz is not dead. It just smells funny...

