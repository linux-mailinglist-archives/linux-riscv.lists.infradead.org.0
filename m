Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4C874715
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 08:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OBvMZJtw8qUHvh1QVE9g8kUDTuZ71mnq/CeX+8CiCSk=; b=U/BuZsUA2Gael5jBg1JTOPOiJ
	m+GGlSw3RRrR2KDhjSBPEgaLceqsxPMK/yGPlZnQaEwzd5cMafFd4ROH+SHAt3LPNca8ENC4KKxjY
	c+472bCqMH4tBkUwjgYvbN/3RECju5GZFSy6DnbB6ujbru9J/e87JX6TETzNSehlMsglsSFLn9EJg
	WcBjKg0j0C7afMIs97e/pVbMQjuyze8wwRQ3a0tSnhkdmJZHtXbICOY5Bt5YqKFy7cI9xOe7x+VBM
	BwNAkBc78ZZQGh2924MpTh4fWbZgN3+8ZRQ0Xs5q7Xj+r1VdIw/RLbNTwDwo3gayjqRMHGPQfiy2U
	fIZB1QkrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqX8v-0004zH-Ku; Thu, 25 Jul 2019 06:22:21 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqX8R-0004c5-Bq; Thu, 25 Jul 2019 06:21:52 +0000
X-Originating-IP: 81.250.144.103
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9BA7EE0008;
 Thu, 25 Jul 2019 06:21:46 +0000 (UTC)
Subject: Re: [EXTERNAL][PATCH REBASE v4 00/14] Provide generic top-down mmap
 layout functions
To: Paul Burton <paul.burton@mips.com>
References: <20190724055850.6232-1-alex@ghiti.fr>
 <20190724201819.6bhvyugquhfrldfa@pburton-laptop>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <9019120e-fc69-22a3-6733-cba27f8eab4c@ghiti.fr>
Date: Thu, 25 Jul 2019 08:21:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190724201819.6bhvyugquhfrldfa@pburton-laptop>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_232151_624935_57215EEF 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, James Hogan <jhogan@kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On 7/24/19 10:18 PM, Paul Burton wrote:
> Hi Alexandre,
>
> On Wed, Jul 24, 2019 at 01:58:36AM -0400, Alexandre Ghiti wrote:
>> Hi Andrew,
>>
>> This is simply a rebase on top of next-20190719, where I added various
>> Acked/Reviewed-by from Kees and Catalin and a note on commit 08/14 suggested
>> by Kees regarding the removal of STACK_RND_MASK that is safe doing.
>>
>> I would have appreciated a feedback from a mips maintainer but failed to get
>> it: can you consider this series for inclusion anyway ? Mips parts have been
>> reviewed-by Kees.
> Whilst skimming email on vacation I hadn't spotted how extensive the
> changes in v4 were after acking v3... In any case, for patches 11-13:
>
>      Acked-by: Paul Burton <paul.burton@mips.com>


Great, thanks Paul ! I have just noticed there is an error in patch 11/14,
but without much incidence since it gets fixed in patch 13/14. I'll see with
Andrew if he wants a new version or not.


Thanks for your time,


Alex


>
> Thanks,
>      Paul
>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
