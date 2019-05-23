Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AB2798C
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 11:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pGzUTiihVqiCW1QXYBpcA9alR8stvNhSSXjvykHXw4=; b=EQXAxjQENfmiiN
	2cYiHNz0gazpLmn6u36AKidgHJIUsEBK/ZJ/qnyznvqe2QSs/YjGetzdf++O1vWb/hcPGu4K1Yc3j
	vtgFJUUfulSmNt6Y09TOT153ASyhjgyVqnzS/uBYjCC3SvHF7jwupl8zS+V71jldKRiVtDC33Dmrd
	ta1wLGsi9YeKly0WJ3u0LL+n1V0AGbxz1zyaeKSOQQBCvvd4KnBk+FTyq9Dfq4R2kPa2pHA/VSVEZ
	prMMyJD9gP1uQQ3Jy1v5mYsoUA2eMFJ2uyNHcN6VWF+9c7Bko4+++X4wM/tA9ySAMEvW07nBI0DWa
	khyMhYnHd6YTx68JtOqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkEx-0002YH-N4; Thu, 23 May 2019 09:42:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkEu-0002XS-0q
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 09:42:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CE614AE20;
 Thu, 23 May 2019 09:42:16 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: 5.2-rc1 boot on Unleashed
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <7hlfyz7l83.fsf@baylibre.com>
 <e95822f4-3243-5a6e-0b04-1f698a59c1e2@wdc.com>
X-Yow: We have DIFFERENT amounts of HAIR --
Date: Thu, 23 May 2019 11:42:15 +0200
In-Reply-To: <e95822f4-3243-5a6e-0b04-1f698a59c1e2@wdc.com> (Atish Patra's
 message of "Tue, 21 May 2019 11:18:21 -0700")
Message-ID: <mvm8suxh5hk.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_024220_214507_E233D747 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 21 2019, Atish Patra <atish.patra@wdc.com> wrote:

> On 5/21/19 10:48 AM, Kevin Hilman wrote:
>> Atish Patra <atish.patra@wdc.com> writes:
>>
>>> Hi,
>>>
>>> 5.2-rc1 still requires some out-of-tree driver patches.
>>>
>>> Here is my tree (successfully tested on Unleashed.)
>>> https://github.com/atishp04/linux/tree/5.2-rc1_unleashed
>>>
>>> Issues:
>>>
>>> 1. Thanks to Paul, uart & clock drivers are merged. However,
>>> 	a. upstream clock drivers require DT changes
>>> 	b. Those DT changes are still being reviewed.
>>> 	c. FSBL need to be rebuild & updated for these DT changes.
>>
>> I would also add that due to DT changes required:
>>
>>    d. Does not work with upstream u-boot
>>
>
> Yeah. I guess PRCI clock DT changes may not be backward compatible with
> U-Boot PRCI driver. Apart from FSBL update, we also need to patch U-Boot
> PRCI clock driver now.

Looks like it breaks the serial driver.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
