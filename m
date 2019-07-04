Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3685F35C
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jul 2019 09:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXrb25Sls4bANDvFog7RCqASCNH28Qxz5g/P6uA3w1I=; b=E+vDQFa2LomzSo
	wLk5Om0nnJQf0fu8Oo3/gXcMYCpJ/Kda7Tk2HqoeeNLNj/bDbkzeharCV2cXS+pivNyEU7OLhjXOr
	i5nXya+VJdVa6oTb19/xSIO1TQZ1QP2qJFu0eSFLcKDB8eiA5+o3vT+0EgrUitFv3QUCZoz6vhj7A
	sCy6dlBtiykMpr9/LFt+WC4Mh6htiTeuQaFkWQ4KdvrCQJDir2FkkFtiLNEHp8cm6LQ/xJScMcWHG
	z9ZNpxTajGUjv/mBnzzZfzMoo5Do0NWJnfMPW276x2DMWlYeMxWOswS//qBkSX95nCQFx+ftsDuPz
	GRSz4FXgEigoOmg6MC2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiw2k-0004SV-5X; Thu, 04 Jul 2019 07:20:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiw2h-0004RX-22
 for linux-riscv@lists.infradead.org; Thu, 04 Jul 2019 07:20:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 4B9FBB116;
 Thu,  4 Jul 2019 07:20:27 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Alistair Francis <alistair23@gmail.com>
Subject: Re: [PATCH RESEND 0/2] RISC-V: Handle the siginfo_t offset problem
References: <20190703005202.7578-1-alistair.francis@wdc.com>
 <mvmk1czh9y6.fsf@suse.de>
 <CAKmqyKPn9GBg=n1j-ZpEdCN4Qfi5qfNtEVgpgF8rYRpof4eNDA@mail.gmail.com>
X-Yow: First, I'm going to give you all the ANSWERS to today's test..
 So just plug in your SONY WALKMANS and relax!!
Date: Thu, 04 Jul 2019 09:20:26 +0200
In-Reply-To: <CAKmqyKPn9GBg=n1j-ZpEdCN4Qfi5qfNtEVgpgF8rYRpof4eNDA@mail.gmail.com>
 (Alistair Francis's message of "Wed, 3 Jul 2019 11:40:39 -0700")
Message-ID: <mvmpnmqfepx.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_002031_251309_7CF54F8A 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: linux-riscv@lists.infradead.org,
 Alistair Francis <alistair.francis@wdc.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jul 03 2019, Alistair Francis <alistair23@gmail.com> wrote:

> On Wed, Jul 3, 2019 at 12:08 AM Andreas Schwab <schwab@suse.de> wrote:
>>
>> On Jul 02 2019, Alistair Francis <alistair.francis@wdc.com> wrote:
>>
>> > In the RISC-V 32-bit glibc port [1] the siginfo_t struct in the kernel
>> > doesn't line up with the struct in glibc. In glibc world the _sifields
>> > union is 8 byte alligned (although I can't figure out why)
>>
>> Try ptype/o in gdb.
>
> That's a useful tip, I'll be sure to use that next time.

It was a serious note.  If the structs don't line up then there is a
mismatch in types that cannot be solved by adding spurious padding.  You
need to fix the types instead.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
