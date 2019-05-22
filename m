Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327D126034
	for <lists+linux-riscv@lfdr.de>; Wed, 22 May 2019 11:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HEv9vvabGcG3diamN7AqMtCPNCoQYSOBQAN9ffVjIE=; b=tFuaUEojscYNtt
	ay5Mjx6k/MYZnWHBOxKB/wA0Rxg3k7OZ+HHbDd1fXddhfMEj1vB23BzPXqf+HFksfKKMww1DJ+6aj
	Mm2MPfQIsjRRvJlg0yslLrZBt8DyMxX4yiMIM/FZar9aj1fNgi7ModW7B0Qfnn5IV9lEIiRFTV2nZ
	tFVj+Eaob6G0RA835nwu3LEyxTbyAUxFo/mFbV0dZMG80gHL+D6V3+rQsAoCN4NQO7Jeb+TxUt3DK
	JWpfTXthetxfZmy1knppbMkC+RQDLzt2aJibZX4MUAbhDd2jRNxTCxB/TxW+I+u+P7qto71kVif0g
	aBiiTCJ1jintQgyprMbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNK3-0006cb-5O; Wed, 22 May 2019 09:14:07 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNK0-0006c9-1x
 for linux-riscv@lists.infradead.org; Wed, 22 May 2019 09:14:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB9F3374;
 Wed, 22 May 2019 02:14:02 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8CF653F575;
 Wed, 22 May 2019 02:14:00 -0700 (PDT)
Subject: Re: [PATCH v2] edac: sifive: Add EDAC platform driver for SiFive SoCs
To: Borislav Petkov <bp@alien8.de>
References: <1557142026-15949-1-git-send-email-yash.shah@sifive.com>
 <1557142026-15949-2-git-send-email-yash.shah@sifive.com>
 <CAJ2_jOG9Ag0spbh3YCxavUE5XEAUP1pHcgCZ56Nu2u4TqfrzHQ@mail.gmail.com>
 <20190521182132.GB7793@cz.tnic>
From: James Morse <james.morse@arm.com>
Message-ID: <1c7eb8ab-6f48-c41a-1d3a-a9b0f5ce8a7f@arm.com>
Date: Wed, 22 May 2019 10:13:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521182132.GB7793@cz.tnic>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_021404_105166_BAC0860D 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aou@eecs.berkeley.edu, paulmck@linux.ibm.com, gregkh@linuxfoundation.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 nicolas.ferre@microchip.com, Sachin Ghadi <sachin.ghadi@sifive.com>,
 Yash Shah <yash.shah@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, mchehab@kernel.org, davem@davemloft.net,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Boris,

On 21/05/2019 19:21, Borislav Petkov wrote:
> On Tue, May 21, 2019 at 11:00:59AM +0530, Yash Shah wrote:
>> The prerequisite patch (sifive_l2_cache driver) has been merged into
>> mainline v5.2-rc1
>> It should be OK to merge this edac driver now.
> 
> James?

Still fine by me:
Reviewed-by: James Morse <james.morse@arm.com>

(...this patch already has my reviewed-by on it...)

I commented that it couldn't be merged in pieces here:
https://lore.kernel.org/lkml/4072c812-d3bf-9ad5-2b30-6b2a5060bb55@arm.com/T/#u

which is what Yash is replying to.


Thanks,

James

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
