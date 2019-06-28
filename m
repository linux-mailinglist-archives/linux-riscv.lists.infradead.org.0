Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26C55A115
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 18:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cugC1VLeDN9CVnjfrivjDOzwJxjqPF/Qd2PZZyfyicQ=; b=BVo7Dzkq5l5VVShe3UGdwetEc
	jgXVp2rWP/hXWwXeK5kpvnr28Dp0GnYphcehtjl8BnnGGcVCxuJgFH2vo5V91l8ZCxj1NwqrD/Cs/
	BiJx7jHEAxFOwNHdhmT/s8m6ytpvb5iIL8UNlb/J/i3UaU75bK4zegULRoOhJSmtmK5/J1e/u1oby
	TnJgXOCk7b1mL47D/u01fFoxeEMgVZ7qpjWM7kzHTofeuYQ28RZfsc0Tggo6wbxfO5QMmHy4ZjJbK
	jWnm3vQyEeSVnidVCPv4VD9GlPdLuwGPNyjcdg3DJFRRfzK4KLDBQnBxSupw3hUq3Svu3qRyLD9WX
	nMd1diQVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtsE-0004rP-Ns; Fri, 28 Jun 2019 16:37:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtsB-0004qU-Lw
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 16:37:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561739887; x=1593275887;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=db7Orwu5Rlutfa6PAdjI+6aa+OUGxvhoykOatgCpUZc=;
 b=HlQWwjre+E0ujBqgfv+Dcm/ao245z0S4ScfCT7mK6/DiXOqLiyHa3yXC
 mcsQJmNgvqy/gzO3B15WIFHCI7kWUohmLBh9mvePNgpKz9/NxpgR1s6Rw
 oBBag6nFUCA7RB1+bLR+RuILrBwmPzhiP1ipbTKxCcCYeWMWSytxpJA0c
 Ubf6v2E4SgIjJzUQKIKvOml8uDh0h2poxd1n0lsg/kbpFdUKPL8baKvFD
 II5TUh23lF8DNVxa6EDmcKsmoqOqJC95OK0/Q1CvuLbZM9fz5BHHxOht2
 DDesN7SSbYJkP+lfx+KQIn/zhOAVRjBqbo0E9UjGyKEsp45v3aanvUnry Q==;
X-IronPort-AV: E=Sophos;i="5.63,428,1557158400"; d="scan'208";a="211621810"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 29 Jun 2019 00:38:04 +0800
IronPort-SDR: 4lzmlY6x1HMHkJwnuGgpaZiAb5wawy+QiAtXs9rj34JVvFvT/1oEgCDX57PJoVubqV0U8iXswz
 AUcA4JmtWEON8+T9nZg4yQm0hLWGcAO6gVSHUTjeKfWT8AehlogDznROfvI5Um/cYQf/paUX0p
 NNMQ5uouuN/o4ZgFlYPBqIkktrp8IT9cYy4RAezPSBubDE8tfLERfEmhUpF53QZaYZp/eMoXI+
 BlD7AkPD/51zLQ2L4FnzmM++aNVIhO6fQTvVG9N+se3fg/qE8pQMxFkaFRr9wISUbbTdLqMQ+2
 d0tb80+A55EsxCloBg7bS28t
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 28 Jun 2019 09:36:19 -0700
IronPort-SDR: zdGYV+32eoQxixNUhCnJQ/Jkykro8Xn/bw1cwETlQY+5R3YMoipyYF4pLZ5CWan9ZZ0xuUmf5t
 qvKj/D5Xi+512cbwiuTqO5mohj37tvnm5Q8WbAz256vDOi8FBrC8hKBw0/ASDs36/cS507X714
 B1WZ3E0J+7heFw+4mlijGA+unvPLtch5XoffCFGHJp/V5LcFy128Z+Bvr3M6xq1TJelIhbrWlS
 8IxpFhuQToMKTnJZ/q4EUpRepTkzQcTuSwfsj5XNdrAL3LHwYZtNSNttKp1nm31PaOsn8UjxPa
 mPk=
Received: from usa002665.ad.shared (HELO [10.225.100.130]) ([10.225.100.130])
 by uls-op-cesaip02.wdc.com with ESMTP; 28 Jun 2019 09:37:14 -0700
Subject: Re: [PATCH v3 3/3] RISC-V: Update tlb flush counters
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190429212750.26165-1-atish.patra@wdc.com>
 <20190429212750.26165-4-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1906272243530.3867@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <d79430e8-20c0-d9b1-c72c-6d116f9e03db@wdc.com>
Date: Fri, 28 Jun 2019 09:37:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1906272243530.3867@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_093715_749039_B6FE779A 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Changbin Du <changbin.du@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/27/19 10:47 PM, Paul Walmsley wrote:
> On Mon, 29 Apr 2019, Atish Patra wrote:
> 
>> The TLB flush counters under vmstat seems to be very helpful while
>> debugging TLB flush performance in RISC-V.
>>
>> Update the counters in every TLB flush methods respectively.
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> 
> This one doesn't apply any longer.  Care to update and repost?
> 
> 
> - Paul
> 

Yeah. The baseline patch (Gary's patch) was not accepted. I will rebase 
it on top of master and resend.

-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
