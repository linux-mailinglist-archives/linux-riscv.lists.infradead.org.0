Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223F5AF6EE
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 09:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMmF7N/WXZKO1eZ6UjMFwl4zQPYD9yAw/rnt+kSEjw8=; b=A/wqir2pdZMUmW
	fRVKKKApH6jc9Qp0vCQHcnbFy0nwuwKUpYKncCK/C3g/KG7Y5+Sp2WXRUo1mBfAi7Ad7FrnWoJmap
	qORxzWrAQvK/kTANsfodEOQ3KgDhkfgANaa4PaIEwYaqraKxLPwyxD748M/mdJmsoh3n5cktslT01
	GXCuhWT7tdt5uanBoxy6uw7OmeZLMTCBP/Y5DQYhkb2UEkHJ+8qxpYb1Z2xwfEY0D5ILOmJJt6UnT
	mD6NZnBnYQk81yujLIUo5RhGHARfzoac6Wzvmn5nhvXySx320XR4RHXCCR0YBYIKSLtWRCqhLZyqF
	sWXWHtLIprKgfWz00Umg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7x61-0003Jc-Rn; Wed, 11 Sep 2019 07:31:21 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7x5x-0003Iu-Pc
 for linux-riscv@lists.infradead.org; Wed, 11 Sep 2019 07:31:19 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46Stqj3tk1z1rK4j;
 Wed, 11 Sep 2019 09:31:13 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46Stqj3D8Tz1qql7;
 Wed, 11 Sep 2019 09:31:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id xRIqnYOA4FUS; Wed, 11 Sep 2019 09:31:10 +0200 (CEST)
X-Auth-Info: U6SyK0E1DuQmAjUTozdtMNhDojHd+GCgFHh13ie95CNffFO2Fb02CkWE4XhUsWNF
Received: from hawking (nat.nue.novell.com [195.135.221.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 11 Sep 2019 09:31:10 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 2/2] riscv: Make __fstate_clean() work correctly.
References: <alpine.DEB.2.21.9999.1908141328440.18249@viisi.sifive.com>
 <mhng-4eded486-d381-4822-abc5-4023bf7ba591@palmer-si-x1c4>
 <87mugbv1ch.fsf@igel.home>
 <CAMuHMdX9tDqN4jMwMrUc-0zhYBo5gAHTbjwORCwB=3zVi6kvgQ@mail.gmail.com>
X-Yow: Is this "BIKINI BEACH"?
Date: Wed, 11 Sep 2019 09:31:10 +0200
In-Reply-To: <CAMuHMdX9tDqN4jMwMrUc-0zhYBo5gAHTbjwORCwB=3zVi6kvgQ@mail.gmail.com>
 (Geert Uytterhoeven's message of "Wed, 11 Sep 2019 09:22:43 +0200")
Message-ID: <mvmtv9ji91d.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_003117_984437_259AE8BB 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sep 11 2019, Geert Uytterhoeven <geert@linux-m68k.org> wrote:

> Hi Andreas,
>
> On Thu, Aug 15, 2019 at 12:37 AM Andreas Schwab <schwab@linux-m68k.org> wrote:
>> On Aug 14 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
>> > On Wed, 14 Aug 2019 13:32:50 PDT (-0700), Paul Walmsley wrote:
>> >> On Wed, 14 Aug 2019, Vincent Chen wrote:
>> >>> Make the __fstate_clean() function correctly set the
>> >>> state of sstatus.FS in pt_regs to SR_FS_CLEAN.
>> >>>
>> >>> Fixes: 7db91e5 ("RISC-V: Task implementation")
>> >>> Cc: linux-stable <stable@vger.kernel.org>
>> >>> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
>> >>> Reviewed-by: Anup Patel <anup@brainfault.org>
>> >>> Reviewed-by: Christoph Hellwig <hch@lst.de>
>> >>
>> >> Thanks, I extended the "Fixes" commit ID to 12 digits, as is the usual
>> >> practice here, and have queued the following for v5.3-rc.
>> >
>> > For reference, something like "git config core.abbrev=12" (or whatever you
>> > write to get this in your .gitconfig)
>> >
>> >    https://github.com/palmer-dabbelt/home/blob/master/.gitconfig.in#L23
>> >
>> > causes git to do the right thing.
>>
>> Actually, the right setting is core.abbrev=auto (or leaving it unset).
>> It lets git chose the appropriate length depending on the repository
>> contents.  For the linux repository it will chose 13 right now.
>
> Does that depend on the git version?
> For me (git version 2.17.1), it still uses 12 when using the auto setting.

No, 12 is the correct number.  I was miscounting.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
