Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718A82003D8
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jun 2020 10:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9/NSP5SN4e3EIZjNu4RWOQcD7iLMrlAgM9nHlSoUbcw=; b=O0Etlv91O0fjGORpDFPys+Sd2
	PqCYy1+03zOvotPJWjzOHV78enL8setrYTQG8qvNEL+i/kXP7BvzNsiB/DsS6Qwu/kJJHsizCGBTu
	cl4BkpZcVkzzcFRgfW1tuxb/bSynHu5vvHR7vfGOj7xK7U+UDm8Qq80cwZ/8ZcVVXGjmG/cNNDvaf
	j3m/FxDbKCxV/VZ88uSOmnHu61WtScE9Jb9uO7MSU0fYuYBKvEqbCbS/4JCpodFY2kKZy0Uv8ZDBB
	b8bnjJyYcl7fAr/fnyXHwVizIw4lWEqjCHwcKSK+030CsfOryjTJoJ9DK5gxX7V3Gfd6ah7U4iMZj
	HAi13Uatg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmCNO-0001Qs-6t; Fri, 19 Jun 2020 08:27:54 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmCNK-0001Pv-AO
 for linux-riscv@lists.infradead.org; Fri, 19 Jun 2020 08:27:52 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05J8RJSL012806; Fri, 19 Jun 2020 08:27:21 GMT
X-AuditID: 8b5b014d-257ff700000045c5-ea-5eec76e7f192
Received: from enigma.ics.forth.gr (enigma-2.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 5B.8E.17861.7E67CEE5; Fri, 19 Jun 2020 11:27:19 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Fri, 19 Jun 2020 11:27:18 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
Organization: FORTH
In-Reply-To: <mhng-524c37c9-25b7-405f-933f-2029820dbe40@palmerdabbelt-glaptop1>
References: <mhng-524c37c9-25b7-405f-933f-2029820dbe40@palmerdabbelt-glaptop1>
Message-ID: <f0e6106e0ca4c1d8a6fa33dea6ee7276@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrELMWRmVeSWpSXmKPExsXSHT1dWfd52Zs4g2cL1S1aPrxjtVi04juL
 xZbDj5gttn1uYbNofneO3eLl5R5mi7ZZ/BZNL64zO3B4TP19hsWj68cMVo83L1+yeDzcdInJ
 Y/OSeo9LzdfZPdoPdDMFsEdx2aSk5mSWpRbp2yVwZRz+f4WxoIm3YmubbAPjRq4uRk4OCQET
 ieV33rN0MXJxCAkcZ5Q4uOcmO0TCVGL23k5GEJtXQFDi5MwnLCA2s4CFxNQr+xkhbHmJ5q2z
 mUFsFgFViYeX17KB2GwCmhLzLx0EqxcRUJc48PoOM8gCZoE3jBKX1+4FaxYGGtT4uY8VxOYX
 EJb4dPcikM3BwSngL3HwBlhYSMBPYvq62UwQN7hIXHj3jQXiNhWJD78fgN0pKqAscfPwc/YJ
 jIKzkJw6C8mps5CcuoCReRWjQGKZsV5mcrFeWn5RSYZeetEmRnA0MPruYLy9+a3eIUYmDsZD
 jBIczEoivM6/X8QJ8aYkVlalFuXHF5XmpBYfYpTmYFES583jXh4rJJCeWJKanZpakFoEk2Xi
 4JRqYFJT4Ynw/eiyKOEQh4nNW4mZV/65RDnen3M+6b9tWdCSw7Pi3Vqm9hdd+7c8YPvlm7zr
 02YYJn5uyJxVJHn3aOj99tKWBoaPtfZ1xakJLJaFudoVW4/UJ7JFX/537odF9RzhWb4Xl7Wl
 as+4ecY20t29SED/5lHmJXXah9dOPBO795WRhqZ+RPz1Gea8ji0XhRUFnNrEns5p3Lnd8ZbI
 VT9tDVdds5duPw6wt6XKxZ7IjtmZc0I2jzdsMnfi15tcDscL15oc0E3yWTqraNH8PevsZxt8
 XTM7LLn3uiy37PFuyYN9x19tM1Epee68UkP1WrxEf1FqxrVzp/3T9wTPf+ndtMVr6StW72gL
 acbPSizFGYmGWsxFxYkAmH9w2fUCAAA=
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Fri, 19 Jun 2020 08:27:21 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Fri, 19 Jun 2020 08:27:21 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_012750_728758_9319F839 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [139.91.1.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: david.abdurachmanov@sifive.com, anup@brainfault.org,
 Atish Patra <Atish.Patra@wdc.com>, yibin_liu@c-sky.com,
 Paul Walmsley <paul.walmsley@sifive.com>, mick@ics.forth.gr,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-06-19 02:06, Palmer Dabbelt έγραψε:
> On Sat, 13 Jun 2020 00:24:01 PDT (-0700), mick@ics.forth.gr wrote:
>> Στις 2020-06-11 22:39, Palmer Dabbelt έγραψε:
>>> On Thu, 11 Jun 2020 12:09:08 PDT (-0700), mick@ics.forth.gr wrote:
>>>> Στις 2020-05-21 21:42, Nick Kossifidis έγραψε:
>>>>> Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
>>>>>> This patch series adds kexec/kdump and crash kernel
>>>>>> support on RISC-V. For testing the patches a patched
>>>>>> version of kexec-tools is needed. The patch is still
>>>>>> a work in progress but a draft version can be found at:
>>>>>> 
>>>>>> http://riscv.ics.forth.gr/kexec-tools.patch
>>>>>> 
>>>>> 
>>>>> Any comments / feedback on this ? Should we get it in ?
>>>>> 
>>>>> Regards,
>>>>> Nick
>>>> 
>>>> Anyone ?
>>> 
>>> Sorry, I dropped the ball on this one.  After the CPU hotplug 
>>> breakage
>>> I
>>> decided I need to get a pre-merge test for all these new features, 
>>> and
>>> I
>>> haven't gotten around to actually doing so yet.  The merge window is
>>> closing
>>> right now, so with any luck I'll have some time to get around to my
>>> patch
>>> backlog -- first I need to go spin up some better testing, though.
>> 
>> Anything I can do to help ? I have a bunch of hw available (unleashed,
>> genesys2 and nexys 2 ddr for Ariane / LowRISC SoC) and I'll probably
>> also need to have a CI flow for the stuff I do internally.
> 
> Well, getting CI up and running would be great -- specifically, running 
> stress
> tests on real hardware is something we're missing.

Any particular tests / test suites in mind ?

