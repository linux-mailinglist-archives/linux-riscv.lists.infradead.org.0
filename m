Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD62156FA0
	for <lists+linux-riscv@lfdr.de>; Mon, 10 Feb 2020 07:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amqo6k0yrlTgp2Iv3BrjmciUnr5C6MMqt01YZtUVLZg=; b=aR0WUnZF59TCRz
	di3zbNtTJ9gdNsiPfTQsWcqxdesisqhq/YvigNnYn+IaooofOZaUMLF2rcoU53qL++OvGQ2So0dOc
	aDU7dDT3SlDbvCDUsCuMcd8iwejXKKJZ6C0GtCysNcuOjbOQyzPTGVV6/FYUm7zvpjqZFTW8ly99G
	y0R4COO1pfpdfp9EbvRXAot+Q4wpqM8HL776r2C3vB674dvmFju7uo6AF3OEmyuO3isEwuQldEjfY
	CGrtejhfpN0ZU44XHWG5j+NNFe1ii7bXRwYRcBbZh3eyoIdRGAqCS7NNT86PZAn9Tim3Jem1hehdp
	ljAKgTGxc1qN/fscgFxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j12i1-0002qo-2G; Mon, 10 Feb 2020 06:38:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12hy-0002pn-9C
 for linux-riscv@bombadil.infradead.org; Mon, 10 Feb 2020 06:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=amqo6k0yrlTgp2Iv3BrjmciUnr5C6MMqt01YZtUVLZg=; b=ROeap40WxPcwyqiogq7SIPdQd7
 4g4UIXNxJXBXY0iVDHHthL7lpNA7Bf9i8TRZRYk1svKp9mWGdjtJl7/v/DLgqQFZxYkr26CKBeIct
 cSKbGsOhMl973ubjeyPy6t09DjcSWUZjQVSv7eJPo6j19brNcA6LETBJcuRhNeH8JdgNjGeMVoKQ3
 w8LS1kwVfucf3qyVH/h5L2CBlARg6sDc6uqpwkTYFssjBnANWDiZ5ZT/QFLULhhpcLML4oL7OfuW3
 aM0AYOWRbVlaQl5F8+wUYcvkgr8hbDn+MoHmMNdDQF5YtR9u0U4RAyGnEo8AYCdaC1gz6SFNrio4J
 ubl9CfDg==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j12ht-00053Y-W0
 for linux-riscv@lists.infradead.org; Mon, 10 Feb 2020 06:38:12 +0000
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 081D4240008;
 Mon, 10 Feb 2020 06:37:20 +0000 (UTC)
Subject: Re: Error on loading some network Kernel modules
To: Vincent Chen <vincent.chen@sifive.com>, Anup Patel <Anup.Patel@wdc.com>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <CABvJ_xiWDZfO6fOd4Roiy-yaUVFKrGEcBDBSWsvj2TKGGMjy0g@mail.gmail.com>
 <CA+ZOyaj16M5q-g4wZ60MuUs4q1AfCB48wd+AN4TTJNu8K4NZRA@mail.gmail.com>
 <68bb87cb-50d7-5e85-37f4-ad2cc44865f1@ghiti.fr>
 <CA+ZOyahEPtuNqgSUHVcZpZp3WP3oX4jFOiqJvO827ye4+1DT8Q@mail.gmail.com>
 <c12ed63e-c717-9fa0-7a6c-74d6d4a83a04@ghiti.fr>
 <CABvJ_xiBVQjfJfZU0Dfp0fc9n_zAoc=DSHPFuDMKu4k5n0qJtQ@mail.gmail.com>
 <CAAhSdy2gEK++MtyV9=o9r_-6CkaWMsQ0YZwB-TAkCCe3B4qTFg@mail.gmail.com>
 <CABvJ_xjc+ojwqgMhxZ2a0Q+BvxzxUR6ab__+8iA6zx65GMKkxA@mail.gmail.com>
 <a55f265e-71b2-5ebb-b079-6345007a442e@ghiti.fr>
 <CABvJ_xjVLJEebCac_sb6-Yd_iHU1x8Daqw-iFqcGn11YKktm8Q@mail.gmail.com>
 <MN2PR04MB6061ED6ABC668B59A7A544CF8D020@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CABvJ_xg_+XHhND-_8mq8gUN_yN-abMjDOWGg+MFVP0gwSAhxtw@mail.gmail.com>
 <CABvJ_xgRE3P0uVhx9zyVZOzMjNYewJQK-nyhv8e5cfpNweLAGw@mail.gmail.com>
 <CABvJ_xiqAmdqUjZ9s8w9E3BYU8ruFnACpiGZMH-Vc8nCKiwUcA@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <2b69bae3-b00f-a991-16f6-8f682faeddfe@ghiti.fr>
Date: Mon, 10 Feb 2020 01:37:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CABvJ_xiqAmdqUjZ9s8w9E3BYU8ruFnACpiGZMH-Vc8nCKiwUcA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Carlos Eduardo de Paula <me@carlosedp.com>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul@pwsan.com>,
 Zong Li <zongbox@gmail.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 Zong Li <zong.li@sifive.com>, linux-riscv <linux-riscv@lists.infradead.org>,
 Aurelien Jarno <aurelien@aurel32.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Vincent,

On 2/7/20 9:51 AM, Vincent Chen wrote:
> On Fri, Feb 7, 2020 at 10:39 PM Vincent Chen <vincent.chen@sifive.com> wrote:
>>
>>>> For point1, we don't need a dedicated region as long as we are allocating
>>>> modules from VMALLOC area. Let's avoid another virtual memory region if
>>>> possible.
>>>>
>>>
>>> Your comments inspire me if we can know the end of the percpu data
>>> region, we can dynamically calculate the start address in each module
>>> allocation by "<end of the percpu data region> - 2GB" if needed. I am
>>> finding a way to derive the <end of the percpu data region>.
>>>
>>
>> In the implementation of the idea, I found that I did have some
>> misunderstandings about the mechanism of accessing static percpu
>> symbol. Currently, I think this issue can be solved by modifying the
>> module_allocate() to the following.
>> #define MODULE_START max(PFN_ALIGN(&_end - 2 *
>> SZ_1G), PFN_ALIGN(&_text + 8 * SZ_1K - 2 * SZ_1G))
>> void *module_alloc(unsigned long size)
>> {
>> return __vmalloc_node_range(size, 1, MODULE_START,
>> VMALLOC_END, GFP_KERNEL,
>> PAGE_KERNEL_EXEC, 0,
>> NUMA_NO_NODE,
>> __builtin_return_address(0));
>> }
>> After applying a similar modification above, the kernel can
>> successfully insert the test module provided by Romain. Any feedback
>> is welcome. If someone is curious about the reason, I roughly
>> described it at the end of this mail. I am sorry if someone was misled
>> by early discussion.
>>
>>
>> As mentioned early, kernel pre-allocates a memory region for each CPU
>> to place the instances of the percpu data. According to the
>> declaration type, each memory region can be divided into three chunks.
>> These three chunks from low memory to high memory are static chunk,
>> reserved chunk, and dynamic chunk.
>> a. The static chunk is used for the static percpu symbols declared in the kernel
>> b. The reserved chunk is used for the static percpu symbols declared
>> in the kernel module
>> c. The dynamic chunk is used for all dynamic percpu symbols.
>>
>> The order of the percpu symbols in each memory region is the same and
>> is recorded in a symbol list maintained by the kernel. Therefore, the
>> address of a specific CPU's percpu symbol is "The address of this
>> percpu symbol in the symbol list" + "The offset from symbols list to
>> the specific CPU region".
>> a. The symbol list is created based on the ".data..percpu" section. In
>> other words, the start address of this symbol list is the start
>> address of ".data..percpu". When a dynamic percpu symbol is created or
>> a kernel module import a static percpu symbol, the kernel will follow
>> the above chunk rule to add this percpu symbol to its suitable region.
>> b. When each memory area was created, "The offset from symbols list to
>> the specific CPU region" has been recorded.
>>
>> Back to the issue, according to the rules above, the kernel will
>> relocate the ".data..percpu" section of the loaded module to the end
>> of the ".data..percpu" section of the kernel image. The end of the
>> ".data..percpu" section of the kernel image almost equals _text, and
>> the current size of the reserved chunk is 8KB. Therefore, the
>> appropriate range to place the loaded module is [max(PFN_ALIGN(&_end -
>> 2 *SZ_1G), PFN_ALIGN(&_text + 8 * SZ_1K - 2 * SZ_1G)),  VMALLOC_END].
> 
> I did not notice that the size of the kernel .text section is
> impossible below 2 PAGES. Therefore, the modification of module_alloc
> function can be reduced to the following.
> void *module_alloc(unsigned long size)
>   {
>   return __vmalloc_node_range(size, 1, PFN_ALIGN(&_end - 2 *SZ_1G),
>   VMALLOC_END, GFP_KERNEL,
>   PAGE_KERNEL_EXEC, 0,
>   NUMA_NO_NODE,
>   __builtin_return_address(0));
>   }
> It is the same as Alex's suggestion. Is Alex willing to send this
> patch to resolve this bug?
> 

You did all the work, please send a patch explaining what you learnt and 
feel free to add a Suggested-By. Anyway, I'll add a Reviewed-by when you 
propose something.

Thank you Vincent for all your research,

Alex

