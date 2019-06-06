Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC6337D42
	for <lists+linux-riscv@lfdr.de>; Thu,  6 Jun 2019 21:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4fa9QSNjpH2Xl60Mb/kOhQGEjNfV3XAzbDd26PVaA4=; b=g2EA3sNnmrd3kR
	HDrOjEDvGLz219xH6Wo0nrAKXoB/CngOmByTO/46R6KW0zA4dcx6Q+QON+dYl5MMMfQoakmM2pvYU
	bOOfHJJQ4vLHLNTAF1DL3x0iHHLcFXPnqRNmjrz+mr2lZEp060dJSgjOvrXOUn8i3yarI+kxfz2HP
	UWeTwRpo7SbiMjcPXkUexPcBYUUoxF9K02FPgsy+cSDbQcL7SZHRJXLEbetXRwrM+6TpISp49AIMt
	62d/lNBnp+6CBimAkua0gJp63OJ8Wu5FYaXfpre6ScMUBrphgnK9Av+mWV71iPZ9HMfP3R+7p54x4
	DCdfERjws+mTb0u94e9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYy7Q-0004hj-Mj; Thu, 06 Jun 2019 19:32:12 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYy7M-0004gr-GD
 for linux-riscv@lists.infradead.org; Thu, 06 Jun 2019 19:32:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45KbQB6Vflz1rGhn;
 Thu,  6 Jun 2019 21:32:02 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45KbQB5ZB2z1rBHD;
 Thu,  6 Jun 2019 21:32:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id Get6cdg5GTJE; Thu,  6 Jun 2019 21:32:01 +0200 (CEST)
X-Auth-Info: wsLBElmpFEcCcJ6QVDMufRpEZQC5tFsi61TyY8+ncdmH3bKTG/HRIv08aWCl0Q99
Received: from igel.home (ppp-46-244-173-53.dynamic.mnet-online.de
 [46.244.173.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  6 Jun 2019 21:32:01 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
 id 1ABFB2C1E61; Thu,  6 Jun 2019 21:32:01 +0200 (CEST)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] RISC-V: Break load reservations during switch_to
References: <20190605231735.26581-1-palmer@sifive.com>
 <20190606090518.GB1369@infradead.org>
X-Yow: LOOK!!  Sullen American teens wearing MADRAS shorts and
 ``Flock of Seagulls'' HAIRCUTS!
Date: Thu, 06 Jun 2019 21:32:01 +0200
In-Reply-To: <20190606090518.GB1369@infradead.org> (Christoph Hellwig's
 message of "Thu, 6 Jun 2019 02:05:18 -0700")
Message-ID: <87ftom4ij2.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_123208_693837_E52C0568 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: me@carlosedp.com, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, joel@sing.id.au,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 marco@decred.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 06 2019, Christoph Hellwig <hch@infradead.org> wrote:

> On Wed, Jun 05, 2019 at 04:17:35PM -0700, Palmer Dabbelt wrote:
>>  	REG_S ra,  TASK_THREAD_RA_RA(a3)
>> +	/*
>> +	 * The Linux ABI allows programs to depend on load reservations being
>> +	 * broken on context switches, but the ISA doesn't require that the
>> +	 * hardware ever breaks a load reservation.  The only way to break a
>> +	 * load reservation is with a store conditional, so we emit one here.
>> +	 * Since nothing ever takes a load reservation on TASK_THREAD_RA_RA we
>> +	 * know this will always fail, but just to be on the safe side this
>> +	 * writes the same value that was unconditionally written by the
>> +	 * previous instruction.
>> +	 */
>> +#if (TASK_THREAD_RA_RA != 0)
>
> I don't think this check works as intended.  TASK_THREAD_RA_RA is a
> parameterized macro,

Is it?  Just because it is used before an open paren doesn't mean that
the macro takes a parameter.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
