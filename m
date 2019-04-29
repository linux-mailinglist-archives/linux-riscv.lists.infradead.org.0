Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A347EC12
	for <lists+linux-riscv@lfdr.de>; Mon, 29 Apr 2019 23:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ro4QDsb1IV0B/HPeEt27LJ9p4+B4pMToebdvn+A2kXA=; b=FdMVRzUtFwaqWlWnM3vd7saLs
	Lj3to9Fo5buGtzjVmai1YZLWbExK4+nYtxurDVM7aq5MIldqaVToSOQdt9Blc/OSjKi/3IRnk2Br1
	dQjWCSnjNQronMbGq0jQz/YsLxuOgEolZ6VIOitN+gMQ2E7dsXw7KUQ5OWr3ppHUjkypqaNQsLYN7
	YVgr1L5FD5dbeU2LhFEXF+wmpMkZ4yEEdWtY77ZOKJLsaRJxTaocvgYK9y4mpR/VUU9Ny9hGWNpSS
	+l1EA/6ZAxe/nvi/xCpv9/HvscJdZP8/HuWEqkm9pFHHHEzILKQkXbghXVZs9jjLJQDfhCMDEooT0
	cBTB4tLUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLDqO-0001FU-3G; Mon, 29 Apr 2019 21:29:48 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLDqK-0001F0-R3
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 21:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556573489; x=1588109489;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=tylJaZ3hdwgcoleztgKHgV+VyNuRMO/FYfLLBnr0sQI=;
 b=J4P4yttTLr6Ygt/d5dDVsQlO4ImgwKPKmihGZ1qVXvXUUF1sBWS9bhi2
 FyouBn+NCAd76JB9qdg0S6Vb/cAuE4bbmMCEt4Seiwb9q/ZCmTNjzxptb
 W+tPpS8CzoTtY4fW/b9eaaOjxdICTWVPbY8Q3vc/NR9+jXRXhZlIRDf1b
 3+MCzJC6Vt83RFumxB5TeXciBUVmMy9WnN0pZzhlCiJyQO/gPrKdv1WFv
 1D9AUPOEfV8Amfv3vqU0b7Fb1a8VpAsXq4RT9LTzVmKGvapUkVSJfgIbi
 +D6WL13IeXRkmAZTyLS2Fqj3Ma1U1bfXKWe6urfpuBsTXof7w9e/BE2Os g==;
X-IronPort-AV: E=Sophos;i="5.60,411,1549900800"; d="scan'208";a="206296296"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 05:31:28 +0800
IronPort-SDR: LQ5mHaB/nLD6/UrfchKJhtcIJo/FsCpebV9Go6ynUmr7FPlei+1X65/1M8L918zf7RDtmKCqb3
 rtK/29RqNylD6+y8QBitQfHXhvZvA7i5fmwJURxMvxf5bhG/oSa9e94ERoxHPrY/vSkfPM57ii
 gEzcbzujLfanI4BJajwgi+elzVAnPII2pPBMvRmHCm3j68d1QJOH1YozR8RkZ86ylCuqeoxnHB
 KYK6ClB+rk78vUZSYq1qCw8tgs7FcRUTJklCKWIROKqz+fvuzu53moCzoKatK8iMUu+YqR2d6T
 Xv9S5z4urRxD00Twhfo1VSoO
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 29 Apr 2019 14:06:06 -0700
IronPort-SDR: 3DPb2PcWrl1lZn4c6cs7QX/GL1L2Mxk3qhbjtbqE5SnoEhVGLGsgYQp0Eb/dU+1MLJeRk4bK3V
 ++ljP17iEXBQXhrYVqDmr4IQi85GLF5yUyR9vBG9J79W2VBZ47HDcTonMJv8Q8Vp3og0a2fWCm
 gHe62TeuS05QO2Sgsw0CubbfQQpT6tj+1qYdgd6WTbZTEdI8miJdVoToYEPkSs41VfHPxeuTuj
 X4dDWhnvFJ9TTmKowheCJ/nsz7dfXizAcBxDYwXIRBfwu6nC4/zlIE8JC/pWnMdBoW4sCTmryI
 Mmk=
Received: from c02v91rdhtd5.sdcorp.global.sandisk.com (HELO [10.111.66.167])
 ([10.111.66.167])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 Apr 2019 14:29:44 -0700
Subject: Re: [PATCH v2 1/3] x86: Move DEBUG_TLBFLUSH option.
To: Ingo Molnar <mingo@kernel.org>
References: <20190429195759.18330-1-atish.patra@wdc.com>
 <20190429195759.18330-2-atish.patra@wdc.com>
 <20190429200554.GA102486@gmail.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <e80533d1-6d7c-c503-73d7-1a344a49aa37@wdc.com>
Date: Mon, 29 Apr 2019 14:29:43 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429200554.GA102486@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_142944_913895_E334746C 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Changbin Du <changbin.du@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Vlastimil Babka <vbabka@suse.cz>, Gary Guo <gary@garyguo.net>,
 "H. Peter Anvin" <hpa@zytor.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/29/19 1:06 PM, Ingo Molnar wrote:
> 
> * Atish Patra <atish.patra@wdc.com> wrote:
> 
>> CONFIG_DEBUG_TLBFLUSH was added in 'commit 3df3212f9722 ("x86/tlb: add
>> tlb_flushall_shift knob into debugfs")' to support tlb_flushall_shift
>> knob. The knob was removed in 'commit e9f4e0a9fe27 ("x86/mm: Rip out
>> complicated, out-of-date, buggy TLB flushing")'.  However, the debug
>> option was never removed from Kconfig. It was reused in commit
>> '9824cf9753ec ("mm: vmstats: tlb flush counters")' but the commit text
>> was never updated accordingly.
> 
> Please, when you mention several commits, put them into new lines to make
> it readable, i.e.:
> 
>    3df3212f9722 ("x86/tlb: add tlb_flushall_shift knob into debugfs")
> 
> etc.
> 
Done.

>> Update the Kconfig option description as per its current usage.
>>
>> Take this opprtunity to make this kconfig option a common option as it
>> touches the common vmstat code. Introduce another arch specific config
>> HAVE_ARCH_DEBUG_TLBFLUSH that can be selected to enable this config.
> 
> "opprtunity"?
> 
>> +config HAVE_ARCH_DEBUG_TLBFLUSH
>> +	bool
>> +	depends on DEBUG_KERNEL
>> +
>> +config DEBUG_TLBFLUSH
>> +	bool "Save tlb flush statstics to vmstat"
>> +	depends on HAVE_ARCH_DEBUG_TLBFLUSH
>> +	help
>> +
>> +	Add tlbflush statstics to vmstat. It is really helpful understand tlbflush
>> +	performance and behavior. It should be enabled only for debugging purpose
>> +	by individual architectures explicitly by selecting HAVE_ARCH_DEBUG_TLBFLUSH.
> 
> "statstics"??
> 
> Please put a spell checker into your workflow or read what you are
> writing ...
> 

Apologies for the typos. Fixed them.

Regards,
Atish
> Thanks,
> 
> 	Ingo
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
