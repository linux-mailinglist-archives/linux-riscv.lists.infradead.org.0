Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 260D550B83
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Jun 2019 15:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gocr6lgUUDenvrJZMc0aizkoy8m+/TA0kTGtI0QIlQ=; b=GIUIzlspDQ9AOM
	5cDzJCd3B80dy9oswI5IntILOP/OJNPrK2+3546XhwEJTQ9cemv/tCrsj6S2MCGtoKhmODTphRqZP
	kntxawkSE0llp3DeLBjsF6FyEt0Hdko8DtnGGqGwfgxQsQDeA6Hu8LqFyEnTxGPUKYfHPRfzetE2q
	UtBnk/cKgC3KvLeI7cXrHbWElvMBuxSuW1wiFQr63hbRNfDOYpVevSvqtXeWkPaNyWY7qOLFGOtFb
	6j9ktF8N0u1G2ztfmrMNzh6FjcrQiGrPEIsrQGGuUxnzf6A+oDRK6sKxQdBc11ACpucT+RItxtVia
	L84MTDsQ56ODq7HgGYNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOiO-0006FK-DF; Mon, 24 Jun 2019 13:08:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOiL-0006Ez-Mt
 for linux-riscv@lists.infradead.org; Mon, 24 Jun 2019 13:08:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D4FD344;
 Mon, 24 Jun 2019 06:08:53 -0700 (PDT)
Received: from [10.1.32.158] (unknown [10.1.32.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB6A33F71E;
 Mon, 24 Jun 2019 06:08:51 -0700 (PDT)
Subject: Re: RISC-V nommu support v2
To: Christoph Hellwig <hch@lst.de>
References: <20190624054311.30256-1-hch@lst.de>
 <28e3d823-7b78-fa2b-5ca7-79f0c62f9ecb@arm.com> <20190624115428.GA9538@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <d4fd824d-03ff-e8ab-b19f-9e5ef5c22449@arm.com>
Date: Mon, 24 Jun 2019 14:08:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190624115428.GA9538@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_060853_786671_DD7CBD96 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/24/19 12:54 PM, Christoph Hellwig wrote:
> On Mon, Jun 24, 2019 at 12:47:07PM +0100, Vladimir Murzin wrote:
>> Since you are using binfmt_flat which is kind of 32-bit only I was expecting to see
>> CONFIG_COMPAT (or something similar to that, like ILP32) enabled, yet I could not
>> find it.
> 
> There is no such thing in RISC-V.  I don't know of any 64-bit RISC-V
> cpu that can actually run 32-bit RISC-V code, although in theory that
> is possible.  There also is nothing like the x86 x32 or mips n32 mode
> available either for now.
> 
> But it turns out that with a few fixes to binfmt_flat it can run 64-bit
> binaries just fine.  I sent that series out a while ago, and IIRC you
> actually commented on it.
> 

True, yet my observation was that elf2flt utility assumes that address
space cannot exceed 32-bit (for header and absolute relocations). So,
from my limited point of view straightforward way to guarantee that would
be to build incoming elf in 32-bit mode (it is why I mentioned COMPAT/ILP32).

Also one of your patches expressed somewhat related idea

"binfmt_flat isn't the right binary format for huge executables to
start with"

Since you said there is no support for compat/ilp32, probably I'm missing some
toolchain magic?

Cheers
Vladimir

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
