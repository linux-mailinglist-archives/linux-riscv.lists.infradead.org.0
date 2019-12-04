Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D82112A0D
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Dec 2019 12:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gqMZjRnI8cHUc89wV27BuqRV653hsQ8x0UOleY84hbs=; b=FZadkljL0Vohxl
	9WlQJ7Ht0A/5XExDLQi9rxQhONjTuMAQFILbSKoagxRoCCAJKYQagtPLYrv/gdUHcA12jQsvjQsI1
	CmwOYu/sbwYrzki/lrgKVESeAmdtVOQ2MycJtDAS2VhQMpndS0gqvypEg7Hgr5kJRSEZWPHZPwCtH
	sEuqDvi2TTwFuFmGsyT9VSMIkVOqLf3GXzdYn/6xGo5NF47f30iBqqdFNbd0y1ET1LAU0sq67+jVS
	SZiEFHqIo4FQTrZEqS29tqGTrEke36nMu8fvs6yi7t+VFCz2cw1dD5zTvf6yFIXO2EXo1VnpzJlq+
	hPCbxgUKJJNPMJHSt0oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSmW-0003m9-0Y; Wed, 04 Dec 2019 11:25:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSmJ-0002Y3-FT; Wed, 04 Dec 2019 11:25:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D53B0B1C0;
 Wed,  4 Dec 2019 11:25:02 +0000 (UTC)
Subject: Re: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-2-james.tai@realtek.com>
 <f069747b-7f10-f47c-684d-11138b8fd129@suse.de>
 <1130d9316ffb49c8a99b9b2c2d8fa90f@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <da35686d-2584-a13f-b56e-ba3ff9768113@suse.de>
Date: Wed, 4 Dec 2019 12:25:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1130d9316ffb49c8a99b9b2c2d8fa90f@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032507_680302_37F7D4CD 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?RWRnYXIgTGVlIFvmnY7mib/oq61d?= <cylee12@realtek.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi James,

[fixing Palmer]

Am 04.12.19 um 05:11 schrieb James Tai:
>> Am 03.12.19 um 08:45 schrieb James Tai:
>>> From: cylee12 <cylee12@realtek.com>
>>
>> Please fix the author (git commit --amend --author="...") and use an
>> appropriate git config setting (and communication to your team) to avoid this
>> reoccurring for new commits - already pointed out to James.
>>
>> BTW I wonder why we have so many seemingly unrelated people in CC
>> (Mediatek, RISC-V) that the patches and responses keep hanging in mailing list
>> moderation?
> 
> I used the "get_maintainer.pl" to find the email address of maintainers. However, 
> I'm so sorry for mistakenly adding some unrelated people to this mail.

Here's my git-send-email cccmd config that I recommend:

$ git config sendemail.cccmd
scripts/get_maintainer.pl --nogit-fallback --norolestats

--nogit-fallback suppresses Git history to be checked for previous
contributors, saving time and avoiding unrelated or outdated people.

--norolestats suppresses extensive "(...)" comments for the email
addresses, which might wrap and break during transmission or when people
reply.

In addition you obviously need to configure sendemail.to, and you may
want to add multiple cc lines to [sendemail] in your .git/config to
ensure all mails including cover letters reach LKML and LAKML, too:

$ git config --get-all sendemail.to
linux-realtek-soc@lists.infradead.org
$ git config --get-all sendemail.cc
linux-arm-kernel@lists.infradead.org
linux-kernel@vger.kernel.org

Further, you need to ensure that you are sending from the right branch,
so that the latest MAINTAINERS file and scripts get used. As Paul
pointed out, Palmer's address is fixed in both linux-next and linux, so
it is really puzzling where you got that old address from...

Not understanding your setup, you'll have to debug on your own where
those addresses came from. Try git send-email --dry-run to review the CC
addresses before you send. You could also temporarily use --rolestats to
see the MAINTAINERS section they came from.

On the bright side, this time your patches arrived threaded correctly.

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)

