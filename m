Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 219C11F81E6
	for <lists+linux-riscv@lfdr.de>; Sat, 13 Jun 2020 10:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tOz1KTjKdjzcevD4DUPiFU6GjRfq9TLE2iGo4V02yG4=; b=L8HxVpIlE607i2WE3HO80uZlZ
	NnM3MLzPg4aHOpfcQWkHiEeePizmqtKfPSOY4sHDrSb+QCpbEEgjRf8ZC4v78nsY3AL1F23gmKZZs
	yN/SR7AVsBiCy64tXiUTba0fcYh/D8UH7QO1Ipq1aNxjPknENFuY815gay+FCzsWT9X4nmKlVYP12
	3yHTxdhCDeKCO93pNRMs6wSdKBR3Wc6ozNFgEKA2sBgms47/nw+kztH9oUsJIK64v2A86ZIuQ0nFm
	C809iZj+JYv8c6N40tCcEZtwDAzga7I2DN/qo/sfv61JMPegXhjyqJUPZU1cTgL7tXF791ubW5KbB
	hbFdkY2gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1RX-0006eK-HA; Sat, 13 Jun 2020 08:23:11 +0000
Received: from mailgate-2.ics.forth.gr ([139.91.1.5])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QC-0005cW-OJ
 for linux-riscv@lists.infradead.org; Sat, 13 Jun 2020 08:21:50 +0000
Received: from av3.ics.forth.gr (av3in [139.91.1.77])
 by mailgate-2.ics.forth.gr (8.14.4/ICS-FORTH/V10-1.8-GATE) with ESMTP id
 05D8La2i016097; Sat, 13 Jun 2020 08:21:38 GMT
X-AuditID: 8b5b014d-257ff700000045c5-a1-5ee48c909392
Received: from enigma.ics.forth.gr (enigma.ics.forth.gr [139.91.151.35])
 by av3.ics.forth.gr (Symantec Messaging Gateway) with SMTP id
 5D.B3.17861.09C84EE5; Sat, 13 Jun 2020 11:21:36 +0300 (EEST)
X-ICS-AUTH-INFO: Authenticated user:  at ics.forth.gr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Sat, 13 Jun 2020 11:21:36 +0300
From: Nick Kossifidis <mick@ics.forth.gr>
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
Organization: FORTH
In-Reply-To: <DM6PR04MB62017D6E756B038D6B6A89AB8D9E0@DM6PR04MB6201.namprd04.prod.outlook.com>
References: <mhng-3accafc5-2df8-4798-aebd-b86a0f0414b7@palmerdabbelt-glaptop1>
 <a276c6dfa03682d518543329bb36bc0e@mailhost.ics.forth.gr>
 <DM6PR04MB62017D6E756B038D6B6A89AB8D9E0@DM6PR04MB6201.namprd04.prod.outlook.com>
Message-ID: <5d126bfe91cfe7573b3c4efc2cc1a672@mailhost.ics.forth.gr>
X-Sender: mick@mailhost.ics.forth.gr
User-Agent: Roundcube Webmail/1.3.9
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBLMWRmVeSWpSXmKPExsXSHT1dWXdCz5M4gwMtUhZPPkxks2j58I7V
 YtGK7ywWWw4/YrbY9rmFzaL53Tl2i5eXe5gt2mbxWzS9uM7swOkx9fcZFo+uHzNYPd68fMni
 8XDTJSaPzUvqPS41X2f3aD/QzRTAHsVlk5Kak1mWWqRvl8CVMf/gIvaCKYIVTX8usDcwvuDt
 YuTkkBAwkegAau1i5OIQEjjKKHF8exsrRMJUYvbeTkYQm1dAUOLkzCcsIDazgIXE1Cv7GSFs
 eYnmrbOZQWwWAVWJZ1tuMIHYbAKaEvMvHQSrFxFQlnj75hwzyAJmgTVMEpP2z2EDSQgDDWr8
 3Ae2jF9AWOLT3YtANgcHp0CsxPUF2RAH3WGUaP97kwkkzivgIrF5qQvEbSoSH34/YAexRYHm
 3zz8nH0Co+AsJKfOQnLqLCSnLmBkXsUokFhmrJeZXKyXll9UkqGXXrSJERwZjL47GG9vfqt3
 iJGJg/EQowQHs5IIb3fakzgh3pTEyqrUovz4otKc1OJDjNIcLErivHncy2OFBNITS1KzU1ML
 UotgskwcnFINTPqps3Svff3odfhm8ddpH8p9Z+2IfW62eWO/Uvv9jKOS9t94zonMN/6o0R0c
 W5Lzvctuq9Hp+y84+c6lek8zmbarcuOjCyVXJcUbnka6f1tqUMbII7+bx902I+HGjHcXztZL
 clVN+nw1IXL76bx7iya1sr/W2hvGFmP2+YfIpw6l61k6WnWR9gcu8dScr3ackC3gPl1olfh7
 1ml/U0587WRJ1Tgicj44pv4us831YF6nJx4tXE3HXzGyVHh7fFutePw6S0trSPSxDqXb+2/U
 vAueH8g8vXp7oLDJ/9kJfvybD2vc2p0tu7Dzj8iJnnKvor0/rzz8kmBhnMjodjiSM2BasPCs
 nh0M3zmq5m/aqsRSnJFoqMVcVJwIAAPJYTj7AgAA
X-Greylist: inspected by milter-greylist-4.6.2 (mailgate-2.ics.forth.gr
 [139.91.1.5]);
 Sat, 13 Jun 2020 08:21:38 +0000 (GMT) for IP:'139.91.1.77' DOMAIN:'av3in'
 HELO:'av3.ics.forth.gr' FROM:'mick@ics.forth.gr' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mailgate-2.ics.forth.gr [139.91.1.5]); Sat, 13 Jun 2020 08:21:38 +0000 (GMT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012149_161297_D7E18A50 
X-CRM114-Status: GOOD (  13.67  )
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
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Στις 2020-06-13 11:17, Anup Patel έγραψε:
>> -----Original Message-----
>> From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf 
>> Of Nick
>> Kossifidis
>> Sent: 13 June 2020 12:54
>> To: Palmer Dabbelt <palmer@dabbelt.com>
>> Cc: david.abdurachmanov@sifive.com; anup@brainfault.org; Atish Patra
>> <Atish.Patra@wdc.com>; yibin_liu@c-sky.com; Paul Walmsley
>> <paul.walmsley@sifive.com>; mick@ics.forth.gr; linux-
>> riscv@lists.infradead.org
>> Subject: Re: [PATCH 0/3] RISC-V: Add kexec/kdump support
>> 
>> Στις 2020-06-11 22:39, Palmer Dabbelt έγραψε:
>> > On Thu, 11 Jun 2020 12:09:08 PDT (-0700), mick@ics.forth.gr wrote:
>> >> Στις 2020-05-21 21:42, Nick Kossifidis έγραψε:
>> >>> Στις 2020-04-24 20:12, Nick Kossifidis έγραψε:
>> >>>> This patch series adds kexec/kdump and crash kernel support on
>> >>>> RISC-V. For testing the patches a patched version of kexec-tools is
>> >>>> needed. The patch is still a work in progress but a draft version
>> >>>> can be found at:
>> >>>>
>> >>>> http://riscv.ics.forth.gr/kexec-tools.patch
>> >>>>
>> >>>
>> >>> Any comments / feedback on this ? Should we get it in ?
>> >>>
>> >>> Regards,
>> >>> Nick
>> >>
>> >> Anyone ?
>> >
>> > Sorry, I dropped the ball on this one.  After the CPU hotplug breakage
>> > I decided I need to get a pre-merge test for all these new features,
>> > and I haven't gotten around to actually doing so yet.  The merge
>> > window is closing right now, so with any luck I'll have some time to
>> > get around to my patch backlog -- first I need to go spin up some
>> > better testing, though.
>> 
>> Anything I can do to help ? I have a bunch of hw available (unleashed,
>> genesys2 and nexys 2 ddr for Ariane / LowRISC SoC) and I'll probably 
>> also
>> need to have a CI flow for the stuff I do internally.
> 
> I had send-out a fix for CPU hotplug which can be taken for
> any of the Linux-5.8-rcX.
> 
> These patches should be based upon the CPU hotplug fix.
> 
> Regards,
> Anup

I only call smp_shutdown_nonboot_cpus(), the patches shouldn't need any 
updates but I'll do a re-check just in case.

