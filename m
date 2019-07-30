Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4497A18A
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Jul 2019 09:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BIME8N5zIUnAaMdBGHEcYYndvF5+fUokkLPBgYmtaxI=; b=KsPe5r4kQNESMLhAx2WLBn6MN
	nyT1gwwVv6huNXxxBMQWcT64UQg1gAsq/ZCoSNJLUS6oDg5hYVmbgKURwy9YsOiL94NuJZmWBNO7K
	laYLcQ3nFAVzAzltQjEmEoEvvH+ZNXEfDctqHo49hsX4C3MAgzKJOJLiNjiJROsjps/e1NBcZKOcF
	w4BvNIF9zluXNpOX5PV/MXUEU18LpuO/Xgj09vjgW3u1xVI1i4IigswpYkqN9gMVyec9hCIevo0Si
	pSFFr8oRHd7pKHkKKeIe8+2tw7HohRKliv3EbDaHaOnjzaJp0ymZlAAy7rU7p5Rd9Kfq1DCgclCvb
	E62ySyB2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsM7d-0004te-LR; Tue, 30 Jul 2019 07:00:33 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsM7Q-0004sk-Sb
 for linux-riscv@lists.infradead.org; Tue, 30 Jul 2019 07:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564470021; x=1596006021;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=6yX5wo1SMWNdvTLLZ4kGJt2N9VK/hrcTYoYK9A/+LG0=;
 b=T8PoeqMPPdnKArzFg1ridG7taDWGyPH9EiRiZttt3SYpnkk26aIRNCtE
 sPnRDyockT4PZlgTke9lMo4dC5iffG2Qk53z+tfi+o2zt9cYKWQJo1LOs
 5klEqamrvrGw4A1Yp0WpMTdTPUpH7gnv+QWKVydw3Aib75+b8idLnhejY
 l6UrGK2+w8y1Y03Oi9mtTbWzDgOSjWPINHubmjz4MF7Ez7jRI63dJ+xMK
 e5Syjy9RtLe2Kl6Brip/MH5gGAHJ4dHf/criWrGOw8EofFQ+TMFfFC2tx
 CBV1ZvH4VGXS1IUMiPYOpeban/Eh0zu2t1Kt6lfSrtW0YtwLteYa6zSWJ w==;
IronPort-SDR: 4PewJxRsJ8lEbjnzhnJPsHDEYHiTKhoK3X13Rru+kKNEL+EtYkKHN8pDya1SG3uup6Gy9yBWUd
 U39zB79nub0zDriYLrRYa2xOJV5IU5QPQaOWC2xfyl0yrvQoa3BH18JcJ7LD97EZAdBnXUmJs6
 1hfCZ1u6VdIPDfqdxAz+sOFtH/Foxw8IyVR3KQ4S6HNKmOhoP+ustn5P9hk9WhinkcSxmXjI4k
 Y8rrSLjVz8Ka/J0Wp+naKfbdAvv2xxCugJO+g3KBOD8eInPvOXTn860dj4JLuTcl+AUod3IeWg
 83M=
X-IronPort-AV: E=Sophos;i="5.64,325,1559491200"; d="scan'208";a="115475459"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Jul 2019 15:00:17 +0800
IronPort-SDR: qgJfKkeL1/RmTEaR11Rx7QxItusWbdBkQKqhglQZ95QAkbrzz870YBINjVmSwq95Ll0PgQ8QwX
 PxoCAcbG5vj5d1PLZYBZOO5XpySGoAfIIHLIqj53FTD6mqBK4GC7skrOpsB4XFe//hjycXa/6B
 pWJKg3CHXZVB7MaAAvZmRrFUMjy842kJZvj0tFtO0K54MU+EHWwJ3KAboogJqcsIORXukkz0nS
 pHof+VxA93XJDXerC97rYhgwzn61YnGnQWw7pM4DCv+hFBqR5g8OaXV8HFT2VPoNuPs4EQQSDR
 AG7Y3UHTjPe/cqYmcNPoLgjP
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 29 Jul 2019 23:58:20 -0700
IronPort-SDR: PCZNYufBvpE+xMfNsmNx/TlpTDwjyYVkZ4LeoaSFcTvmUrDclh9vepYujrd287BTmiIXHyFXpE
 H6Ff+uC+5bOpDPx7+TzSF+LmE85iKM7xEHaitIoCAqKGwNPrvMiyD2YFvyXyUSLiIzCKyM1HJU
 cE60SHu5w4JUL7ne/ZpqwyqVc37bNuM/Ba5fo8CVnLgDiYzsZLk1h/pK8gjIVnnRbAwm67UT/1
 ds4vVY+wFANqtZOJCkKS4VJ95y2fx4ACxcqAknOYi3LHM7PSBDYqH3u99x3HWGa7TJvyDWr/zk
 Wfw=
Received: from unknown (HELO [10.225.104.231]) ([10.225.104.231])
 by uls-op-cesaip01.wdc.com with ESMTP; 30 Jul 2019 00:00:16 -0700
Subject: Re: [RFC PATCH 13/16] RISC-V: KVM: Add timer functionality
To: Andreas Schwab <schwab@suse.de>
References: <20190729115544.17895-1-anup.patel@wdc.com>
 <20190729115544.17895-14-anup.patel@wdc.com> <mvmpnlsc39p.fsf@suse.de>
 <d26a4582fad27d0f475cf8bca4d3e6c49987d37d.camel@wdc.com>
 <mvma7cwaubk.fsf@suse.de>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <ce9e762d-5b70-0092-d21c-3d9be8fa2a69@wdc.com>
Date: Tue, 30 Jul 2019 00:00:15 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <mvma7cwaubk.fsf@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_000021_215894_642704F7 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "anup@brainfault.org" <anup@brainfault.org>, Anup Patel <Anup.Patel@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hch@infradead.org" <hch@infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 7/29/19 11:51 PM, Andreas Schwab wrote:
> On Jul 29 2019, Atish Patra <Atish.Patra@wdc.com> wrote:
> 
>> Strange. We never saw this error.
> 
> It is part of CONFIG_KERNEL_HEADER_TEST.  Everyone developing a driver
> should enable it.
> 
>> #include <linux/types.h>
>>
>> Can you try it at your end and confirm please ?
> 
> Confirmed.
> 

Thanks. I will update the patch in v2.

> Andreas.
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
