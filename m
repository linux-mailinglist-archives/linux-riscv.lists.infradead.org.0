Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D965114A0E
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Dec 2019 00:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZ4UywCfGEC96DJcse+JQrZETsYvlVCMl02iL/ORbtQ=; b=BtuDMga+nupX32
	Ts96ISO8yHCBBkMq6OFN08fvrpXSl44fSDLcjoT8MWL6tr4QTYO6o9tcoPaPLxX8+RL6vcsqP8tmk
	c9JMsNX4vmvkQGtbKpID22qGW0NyeQ4pl6A0Qe+ZfvW+YVXuuR85Sgq8sAPMyDCUU2fVLkgZWzo4N
	8b7ofArJOjx5NC70zv+gmMXEvjHYsV+VLkqsyRlMdnpP3p1mIDcuLWmN4P1qA7ikX6JsKyPnxiswf
	eiEtrP3idTG0xpYZt2HIvcHde2bE8wRdIt/9vGR9SEWRNsdtI/6nM87lJ1Zb0BFZ0hng3i9w8oct3
	vsI6JJK8rloDNNpzZu+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1id117-0001kn-R9; Thu, 05 Dec 2019 23:58:41 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1id113-0001kJ-Nt
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 23:58:40 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 6ADBF226C1;
 Thu,  5 Dec 2019 18:58:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Thu, 05 Dec 2019 18:58:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gstardust.com;
 h=subject:to:cc:references:from:message-id:date:mime-version
 :in-reply-to:content-type:content-transfer-encoding; s=mesmtp;
 bh=xZ4UywCfGEC96DJcse+JQrZETsYvlVCMl02iL/ORbtQ=; b=BtVR6xmL2Eku
 TZCb+zN6b0AnANJSvuT8x9PVe5YMAUKDVeRgHHoRZaaagwFx4MRIG9dr39DuKCAq
 +uMt+YfHSNeFs9+aB2Wi5+yuFXZf/L2OdCqX4vflVS4hAEvJavPFXMiBdwcnfinE
 q319GW8yWWV/kzBs1INLxVd5EBM88CM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=xZ4UywCfGEC96DJcse+JQrZETsYvlVCMl02iL/ORb
 tQ=; b=RK2v+/rNAN9hC0VCYavAO6OiCyckEKD3EJ9lvYv3Yq9/TZK3FvDAssiRr
 Ktvj3fV3nDltkQH0rDO+5uYcnyzkOKNRwIUShZ+8+kr1yKHljRAebXc3bXcKZOdc
 InrIn32b25TPACmLqzpYkU6+E5wNfbVSOIMCQ8fsoKHff8L9vKC27sh0APK+aGHc
 lRHHw0g92WtzWvxPCgLOJL/p30kWIkBnfiemmPjLCApzmW5hSQHqEaKrV+Ru+Ezo
 agAi+FK7ihG1LE79LBp+I2hsXm8PsWtwENhsfAXdHb3P268C1GMX+7n/OBVWtHS3
 5pniWyeygJ2j2SCCWOWdw17L0zYJQ==
X-ME-Sender: <xms:pZnpXeaoy7kzw3ordeRn_nBeAEPPytH_HlGloZHD69CQUzJ3soWQpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekuddgudektdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeforghr
 tgcuifgruhhthhhivghruceotghonhhsuhhlthdqmhhgsehgshhtrghrughushhtrdgtoh
 hmqeenucfkphepudegvddrheelrdehledrvdelnecurfgrrhgrmhepmhgrihhlfhhrohhm
 pegtohhnshhulhhtqdhmghesghhsthgrrhguuhhsthdrtghomhenucevlhhushhtvghruf
 hiiigvpedt
X-ME-Proxy: <xmx:pZnpXRgfOYB4R4AuZcXQ1zRr2_2UJHpf8IBs-glB994Tn89apPpTzg>
 <xmx:pZnpXQbilusmgm3NoUvihGX5nLEJ3ACGe2kCCO03bgnBnNOpt7qTew>
 <xmx:pZnpXXNAnhxNB1v8ii930CuShifJuN3jmtPnTtzds8xjO_zJxmHDeQ>
 <xmx:ppnpXbXs8iH9nkOQLsZ1ZcyJ_NivvZDnPI_4YNp343lU8EVsxAqUGQ>
Received: from [192.168.2.49] (unknown [142.59.59.29])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8455730600A8;
 Thu,  5 Dec 2019 18:58:29 -0500 (EST)
Subject: Re: [PATCH v2 2/2] riscv: Set SHMLBA according to cache geometry
To: Palmer Dabbelt <palmerdabbelt@google.com>
References: <mhng-344205d1-f6ce-45d3-a420-77c00ab0f4ad@palmerdabbelt-glaptop>
From: Marc Gauthier <consult-mg@gstardust.com>
Message-ID: <7faf1c8c-86cb-f47a-511b-bcc6a916b9c4@gstardust.com>
Date: Thu, 5 Dec 2019 18:58:25 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 PostboxApp/7.0.8
MIME-Version: 1.0
In-Reply-To: <mhng-344205d1-f6ce-45d3-a420-77c00ab0f4ad@palmerdabbelt-glaptop>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_155838_085742_9451024E 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer Dabbelt wrote on 2019-12-05 18:03:
> On Tue, 26 Nov 2019 14:44:46 PST (-0800), consult-mg@gstardust.com wrote:
>> Set SHMLBA to the maximum cache "span" (line size * number of sets) of
>> all CPU L1 instruction and data caches (L2 and up are rarely VIPT).
>> This avoids VIPT cache aliasing with minimal alignment constraints.
>>
>> If the device tree does not provide cache parameters, use a conservative
>> default of 16 KB:  only large enough to avoid aliasing in most VIPT 
>> caches.
>>
>> Signed-off-by: Marc Gauthier <consult-mg@gstardust.com>
>> ---
>>  arch/riscv/include/asm/Kbuild     |  1 -
>>  arch/riscv/include/asm/shmparam.h | 12 +++++++
>>  arch/riscv/kernel/cacheinfo.c     | 52 +++++++++++++++++++++++++++++++
>>  3 files changed, 64 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/riscv/include/asm/shmparam.h
>>
>> diff --git a/arch/riscv/include/asm/Kbuild 
>> b/arch/riscv/include/asm/Kbuild
>> index 16970f246860..3905765807af 100644
>> --- a/arch/riscv/include/asm/Kbuild
>> +++ b/arch/riscv/include/asm/Kbuild
>> @@ -27,7 +27,6 @@ generic-y += percpu.h
>>  generic-y += preempt.h
>>  generic-y += sections.h
>>  generic-y += serial.h
>> -generic-y += shmparam.h
>>  generic-y += topology.h
>>  generic-y += trace_clock.h
>>  generic-y += unaligned.h
>> diff --git a/arch/riscv/include/asm/shmparam.h 
>> b/arch/riscv/include/asm/shmparam.h
>> new file mode 100644
>> index 000000000000..9b6a98153648
>> --- /dev/null
>> +++ b/arch/riscv/include/asm/shmparam.h
>> @@ -0,0 +1,12 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef _ASM_RISCV_SHMPARAM_H
>> +#define _ASM_RISCV_SHMPARAM_H
>> +
>> +/*
>> + * Minimum alignment of shared memory segments as a function of 
>> cache geometry.
>> + */
>> +#define    SHMLBA    arch_shmlba()
>
> I'd prefer if we inline the memoization, which would avoid the cost of a
> function call in the general case.  You can also avoid that 0 test by
> initializing the variable to PAGE_SIZE and the filling it out in our 
> early init
> code -- maybe setup_vm()?  That's what SPARC is doing.

Good point.
Unlike SPARC, this patch re-uses existing code in 
drivers/base/cacheinfo.c to compute cache parameters.  To preserve that, 
it'll be more robust to initialize shmlba at a point certain to have 
those parameters -- at the comment far below, "Force recalculating 
SHMLBA if cache parameters are updated."  That way it keeps working if 
that point in time changes.


>> +
>> +long arch_shmlba(void);
>> +
>> +#endif /* _ASM_RISCV_SHMPARAM_H */
>> diff --git a/arch/riscv/kernel/cacheinfo.c 
>> b/arch/riscv/kernel/cacheinfo.c
>> index 4c90c07d8c39..1bc7df8577d6 100644
>> --- a/arch/riscv/kernel/cacheinfo.c
>> +++ b/arch/riscv/kernel/cacheinfo.c
>> @@ -1,12 +1,61 @@
>>  // SPDX-License-Identifier: GPL-2.0-only
>>  /*
>>   * Copyright (C) 2017 SiFive
>> + * Copyright (C) 2019 Aril Inc
>>   */
>>
>>  #include <linux/cacheinfo.h>
>>  #include <linux/cpu.h>
>>  #include <linux/of.h>
>>  #include <linux/of_device.h>
>> +#include <linux/mm.h>
>> +
>> +static long shmlba;
>> +
>> +
>> +/*
>> + * Assuming  cache size = line size * #sets * N  for N-way 
>> associative caches,
>> + * return the max cache "span" == (line size * #sets) == (cache size 
>> / N)
>> + * across all L1 caches, or 0 if cache parameters are not available.
>> + * VIPT caches with span > min page size are susceptible to aliasing.
>> + */
>> +static long get_max_cache_span(void)
>> +{
>> +    struct cpu_cacheinfo *this_cpu_ci;
>> +    struct cacheinfo *this_leaf;
>> +    long span, max_span = 0;
>> +    int cpu, leaf;
>> +
>> +    for_each_possible_cpu(cpu) {
>> +        this_cpu_ci = get_cpu_cacheinfo(cpu);
>> +        this_leaf = this_cpu_ci->info_list;
>> +        for (leaf = 0; leaf < this_cpu_ci->num_leaves; leaf++) {
>> +            if (this_leaf->level > 1)
>> +                break;
>> +            span = this_leaf->coherency_line_size *
>> +                   this_leaf->number_of_sets;
>> +            if (span > max_span)
>> +                max_span = span;
>> +            this_leaf++;
>> +        }
>> +    }
>> +    return max_span;
>> +}
>> +
>> +/*
>> + * Align shared mappings to the maximum cache "span" to avoid aliasing
>> + * in VIPT caches, for performance.
>> + * The returned SHMLBA value is always a power-of-two multiple of 
>> PAGE_SIZE.
>> + */
>> +long arch_shmlba(void)
>> +{
>> +    if (shmlba == 0) {
>> +        long max_span = get_max_cache_span();
>> +
>> +        shmlba = max_span ? PAGE_ALIGN(max_span) : 4 * PAGE_SIZE;
>
> I'd prefer to avoid sneaking in a default 4*PAGE_SIZE here, just 
> default to
> PAGE_SIZE and rely on systems with this behavior specifying the 
> correct tuning
> value in the device tree.

Fair enough.


> This avoids changing the behavior for existing
> systems, which is a slight regression as the alignment uses more 
> memory.  It's
> not a big deal, but on systems that don't require alignment for high
> performance there's no reason to just throw away memory -- 
> particularly as we
> have some RISC-V systems with pretty limited memory

Greater alignment takes up more virtual memory, not more physical memory.


> (I'm thinking of the
> Kendryte boards, though I don't know how SHMLBA interacts with NOMMU 
> so it
> might not matter).

There's no virtual memory in NOMMU, so indeed it doesn't matter.

M


>> +    }
>> +    return shmlba;
>> +}
>>
>>  static void ci_leaf_init(struct cacheinfo *this_leaf,
>>               struct device_node *node,
>> @@ -93,6 +142,9 @@ static int __populate_cache_leaves(unsigned int cpu)
>>      }
>>      of_node_put(np);
>>
>> +    /* Force recalculating SHMLBA if cache parameters are updated. */
>> +    shmlba = 0;
>> +
>>      return 0;
>>  }


