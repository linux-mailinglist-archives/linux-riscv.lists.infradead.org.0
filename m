Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEC914F803
	for <lists+linux-riscv@lfdr.de>; Sat,  1 Feb 2020 15:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mToehhGWSPNzAcDeyjSJ9nVB9OAXAWF1CiAKptCd+w=; b=bQV/xhhj8q/gjm
	w3SLKVhtnlLjE5dXVAsKsMa3YzbxRXPRYAokHnNSK4poYb2wojMTunP2ornHlS5m0M5T8srmSqnSj
	7FYIV2aB3ZidaZz/Qtv6+atJgQ7caKDl9VSvQeguvx4noIkeGIUBrYZB7YQJPS97QsZSIhaZgYmkC
	XrFnrn5BSaEy1qU1qdT2NLFeUoo1KxmKpW6hPMXGRNWpyTjAU+EFxTfMk9fHf7dIa9zlnlH1AYzKH
	pk5IhB+5bMV1TCKxHVqidm/fCHitLpzYlj9EKf8AGuMabvVQQJ5VUSmL9rRJW7dSDv1bNimuYNq8Q
	yM62L5tYsGGgf2be8cfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixtJk-0003Mx-C7; Sat, 01 Feb 2020 14:00:12 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixtJg-0002EI-Ak
 for linux-riscv@lists.infradead.org; Sat, 01 Feb 2020 14:00:10 +0000
X-Originating-IP: 79.86.19.127
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1AC8F20006;
 Sat,  1 Feb 2020 13:59:49 +0000 (UTC)
Subject: Re: Error on loading some network Kernel modules
To: Anup Patel <anup@brainfault.org>, Aurelien Jarno <aurelien@aurel32.net>
References: <CADnnUqfhxWN=cyyr0QQyKrrO13LuDFS9NTqOLwm10CnwB3sDXA@mail.gmail.com>
 <alpine.DEB.2.21.999.2001300259070.23963@utopia.booyaka.com>
 <CAEn-LToMfm=G80TmGQZefpmKhKvpGy_=XOoBLGU0a_77ahY+_w@mail.gmail.com>
 <20200131201118.GA4121429@aurel32.net>
 <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr>
Date: Sat, 1 Feb 2020 08:59:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAAhSdy03C==7PmuXE441BtDJH8H07rOH-u+-_sZJG70tbTrJcA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200201_060008_511898_C84802FE 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 Paul Walmsley <paul@pwsan.com>, Vincent Chen <vincent.chen@sifive.com>,
 Romain Dolbeau <romain.dolbeau@european-processor-initiative.eu>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2/1/20 2:52 AM, Anup Patel wrote:
> On Sat, Feb 1, 2020 at 1:41 AM Aurelien Jarno <aurelien@aurel32.net> wrote:
>> On 2020-01-30 17:20, David Abdurachmanov wrote:
>>> On Thu, Jan 30, 2020 at 4:00 AM Paul Walmsley <paul@pwsan.com> wrote:
>>>> On Tue, 28 Jan 2020, Carlos Eduardo de Paula wrote:
>>>>
>>>>> I currently run stock Kernel 5.5.0-rc7 on my Unleashed board with most
>>>>> network features I need baked into the kernel instead of modules.
>>>>>
>>>>> I tried building a kernel with these network features as modules but
>>>>> when loading some of them I got this error:
>>>>>
>>>>> root@unleashed:~# uname -a
>>>>> Linux unleashed 5.5.0-rc7-dirty #4 SMP Fri Jan 24 18:16:43 -02 2020
>>>>> riscv64 GNU/Linux
>>>>>
>>>>> root@unleashed:~# modprobe br_netfilter
>>>>> [  139.290533] br_netfilter: target ffffffe0000422d8 can not be
>>>>> addressed by the 32-bit offset from PC = 000000003dfd6deb
>>>> This is a known issue:
>>>>
>>>> https://lore.kernel.org/linux-riscv/1572281840733.3517@european-processor-initiative.eu/
>>>>
>>>> https://lore.kernel.org/linux-riscv/20191029105055.GA20736@aurel32.net/#r
>>>>
>>>> Vincent is looking into it and I expect there will be a fix soon.
>>>>
>>> Is this patch solving the problem?
>>>
>>> https://github.com/bjoto/linux/commit/8a56d1c8e8e91c1bc3893946d52b9217c96e1589
>> I have just tried that patch on top of a 5.4.13 kernel, and I confirm it
>> fixes the issue. Thanks!
> I guess this patch was lost over time.
>
> First of all we need to rebase this patch on latest kernel.
>
> The MODULES_xyz defines are totally redundant and create
> confusion because with these defines it seems we are creating
> separate virtual memory region for modules which is not true.
> In fact, the patch only tries to ensure that modules are allocated
> from the end-of VMALLOC region.
>
> I suggest to drop all MODULES_xyz defines and implement
> module_alloc() as follows:
>
> void *module_alloc(unsigned long size)
> {
> return __vmalloc_node_range(size, 1, VMALLOC_END - SZ_128M,
> VMALLOC_END, GFP_KERNEL,
> PAGE_KERNEL_EXEC, 0,
> NUMA_NO_NODE,
> __builtin_return_address(0));
> }


Why restrict to 128M whereas we have 2GB offset available to the end of 
the kernel ?

I think the cleanest solution is to use the following range [&_end - 2 * 
SZ_1G; VMALLOC_END].

Alex


> Maybe we can even have a kconfig options for MODULES_SIZE
> which can be used in-place of SZ_128M in above code.
>
> Should I send a patch on latest kernel ??
>
> Regards,
> Anup
>

