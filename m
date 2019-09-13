Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91311B1A39
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 10:54:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrBLsgP745tXuvWT4UHY88zxQA5tUyNU0njlkRU9stw=; b=T/EjzuxrL11CYv
	c1xxlXVAKlBoI3N9eM7j8+KnECL6vu/fIDbufA1gJVNN9G6t1dq8Ap6AmOGX4TloyGmZRCQl1LLMC
	5uXLJLmPjd2zzIwT2jWdiZ9epBUMPooq952w6zzBJHteqV36C6+EEWngIDYRK5lZwS96cnt+EuWzT
	OD+Wqzs4B6hcWtl4pXb0523g5+m4reDros4ryp/umhjaIoky9mu8jh7Na9dzMXLKUc8LwocubENts
	UXAisckvcfbFJtaWG/r6HBAqb7wBYnXmsnEGsNCULCcc7VzCKGWaEeQ+OziJsVqhC9o4Yi2fb5A5U
	TCqBSjyrXL1FVY1HPwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hLg-0001aU-TF; Fri, 13 Sep 2019 08:54:36 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hI8-0007mv-Ip; Fri, 13 Sep 2019 08:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568364635;
 bh=OZqY8YEmhSzYpVNahFixu1x4zax59nBDtoBfEOKOU5s=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=LgBrFGcKw3jzMlfJOCjItxE63zvj5he1+kky9ilivtcRdrHVQsn77FeH0WFVA/7o5
 fQ+BbYa36NLTKwhjgpD+JeHKXyvPiuy7tyD+lNpC8LEHM5cMglVxMA/OIalDzoRSGI
 n8ASzdbzVhqlhX/QhvOfCvQb7DyVFgu6o2AJUvF8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0Lzsf1-1iCMTA0Nu7-014yUk; Fri, 13
 Sep 2019 10:50:35 +0200
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
To: Matthias Brugger <mbrugger@suse.com>, catalin.marinas@arm.com,
 marc.zyngier@arm.com, Matthias Brugger <matthias.bgg@gmail.com>,
 robh+dt@kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org,
 hch@lst.de, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
 <3f9af46e-2e1a-771f-57f2-86a53caaf94a@suse.com>
 <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
 <2c3e1ef3-0dba-9f79-52e2-314b6b500e14@gmx.net>
 <4a6f965b-c988-5839-169f-9f24a0e7a567@suse.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <48a6b72d-d554-b563-5ed6-9a79db5fb4ab@gmx.net>
Date: Fri, 13 Sep 2019 10:50:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4a6f965b-c988-5839-169f-9f24a0e7a567@suse.com>
Content-Language: en-US
X-Provags-ID: V03:K1:5fDbWcniG6VsoBWaSc+GYFShgEo4REYeFeRHrSgDDglxm5sD6x2
 UrWf7vgL6ch3G20ivsSWNIYWs/Bz1I+ZBgUC3eKNW5tdmxyn8E7T09758U+Tzf0wd/Wfw8R
 nrZhE9fM238lCEGselAeaRWRKnV6VycB/TqFyuOdS/3m/0VwhMdxszt4cj6OQds8ZEJHgz5
 lsHhLpKSOwmBUbNVq/KdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PLc07q3TRNY=:+TtDNvVyj685IvAHzOOktc
 kx+vI+eRRKzbqWd9bDoq8bo6RUCq2UiiBjt/4MAb2tnL51PkKCkYHzlLLVBuwOSz9m+mSJGYi
 3zQd9+4D5ZLnGGpSJKEJVvz2kSVmQiofGovvP1jXFcZWenr8riydzYGNY+HAYiqCxRaUA/eFX
 E6xKpZo0iCDgnGdKi8+8xebctj7qpdvBjQif0wnINKavSgNh68oh0AUaigrhNyTkx7yCZSwv1
 DxjnGg4fcjODfNNNEyYWmUd8MReYV1F0ehLs33w2Nxw60jHXeGmiep953V4atjlczfyqThy1R
 uLcOMT92s/f7l7jtsN4dC+ZACigrck1L2eh2cBjDP9jBvEC79BTYXAe5bJQ/NLYlFNJzuJ0L5
 KeM/4DFNCEJzuFJiNH3QdltPzA+2EIlzIZXl259m8wC5K2jB+gnScjnB3ZNYEg2pbIS6i4vp7
 eA4IRIA1+P2jzMG9K8WKQp0T1aShulE+puyTCFwsz2eXeqLdxWuEbvtPiac2qMMqjLolkaG48
 FV7hnRI3NkswtrztAzqfO+VJ0qPM00Kw6xotij/QHh8oU0BqpdD9+cAo+clP+40ysg0uKxV1Y
 PYE2OWrVVwhEODxtvsJ+PGPADi0/tXm4fF3RyKNK5YQ69FtWTzQhecT5phJsYxTuEO6JRVFEH
 tCm1NM+lN48t6dHOKPZPMeyASDCIy8pelwOiO5uAyg6u/RM65mkYXam7rrmEnYFTzfsw2IiCC
 +FyqOyFxRVQbxIwaMlTwaBXGbad61xAueSYnodWFeuByuX0hGZ2Zm/uqxnLGJuQTpVrNMUDiA
 80QTtrA0KYBIaL2uqVZvjnTBNklNcb+Bul0JTVLe1+wSd/xs73IvfO/EH5Go5NpdCD2CHGNh/
 SGnV/vUI0sShAZB3yhkhzvPzBDG3iWzcjKLCq9GQ2XQV6vWt/AQEE0iXQBZX5Fi85Qkf/9Orb
 7ZPA0klbpejckcIoscN1Vandk0ERHH6JArUBfIAQokm/ElVeOHqF7RcfpzlarmXkaz65JFY03
 4ZAxD1pCVkNsGrtcfta2mXQ97NrVDDVR6ZBwKR6IshAUVzG02FtirFYR/uvzQCiLzbzjhd2Jv
 hnHwsSRwRw5L/ZeWRxt5BQOx4FXI4aaq7/ANCbqqurfTzVZ+SH+M6W7oxUb51cW+JPzUAxTxt
 zWlhgmJD26gIhkPblPuZX6IyXK2IU/IvYLe5QIFuATMSATrzDVrMYP+IWVG4UYw4WaAdMQQf/
 IzirydQqcD7FTclu9dRm0zhhepscswytTs0NfKopHHrsepk8IMYtE7M4DYk0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_015056_942051_0340F571 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org, will@kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Am 13.09.19 um 10:09 schrieb Matthias Brugger:
>
> On 12/09/2019 21:32, Stefan Wahren wrote:
>> Am 12.09.19 um 19:18 schrieb Matthias Brugger:
>>> On 10/09/2019 11:27, Matthias Brugger wrote:
>>>> On 09/09/2019 21:33, Stefan Wahren wrote:
>>>>> Hi Nicolas,
>>>>>
>>>>> Am 09.09.19 um 11:58 schrieb Nicolas Saenz Julienne:
>>>>>> Hi all,
>>>>>> this series attempts to address some issues we found while bringing up
>>>>>> the new Raspberry Pi 4 in arm64 and it's intended to serve as a follow
>>>>>> up of these discussions:
>>>>>> v4: https://lkml.org/lkml/2019/9/6/352
>>>>>> v3: https://lkml.org/lkml/2019/9/2/589
>>>>>> v2: https://lkml.org/lkml/2019/8/20/767
>>>>>> v1: https://lkml.org/lkml/2019/7/31/922
>>>>>> RFC: https://lkml.org/lkml/2019/7/17/476
>>>>>>
>>>>>> The new Raspberry Pi 4 has up to 4GB of memory but most peripherals can
>>>>>> only address the first GB: their DMA address range is
>>>>>> 0xc0000000-0xfc000000 which is aliased to the first GB of physical
>>>>>> memory 0x00000000-0x3c000000. Note that only some peripherals have these
>>>>>> limitations: the PCIe, V3D, GENET, and 40-bit DMA channels have a wider
>>>>>> view of the address space by virtue of being hooked up trough a second
>>>>>> interconnect.
>>>>>>
>>>>>> Part of this is solved on arm32 by setting up the machine specific
>>>>>> '.dma_zone_size = SZ_1G', which takes care of reserving the coherent
>>>>>> memory area at the right spot. That said no buffer bouncing (needed for
>>>>>> dma streaming) is available at the moment, but that's a story for
>>>>>> another series.
>>>>>>
>>>>>> Unfortunately there is no such thing as 'dma_zone_size' in arm64. Only
>>>>>> ZONE_DMA32 is created which is interpreted by dma-direct and the arm64
>>>>>> arch code as if all peripherals where be able to address the first 4GB
>>>>>> of memory.
>>>>>>
>>>>>> In the light of this, the series implements the following changes:
>>>>>>
>>>>>> - Create both DMA zones in arm64, ZONE_DMA will contain the first 1G
>>>>>>   area and ZONE_DMA32 the rest of the 32 bit addressable memory. So far
>>>>>>   the RPi4 is the only arm64 device with such DMA addressing limitations
>>>>>>   so this hardcoded solution was deemed preferable.
>>>>>>
>>>>>> - Properly set ARCH_ZONE_DMA_BITS.
>>>>>>
>>>>>> - Reserve the CMA area in a place suitable for all peripherals.
>>>>>>
>>>>>> This series has been tested on multiple devices both by checking the
>>>>>> zones setup matches the expectations and by double-checking physical
>>>>>> addresses on pages allocated on the three relevant areas GFP_DMA,
>>>>>> GFP_DMA32, GFP_KERNEL:
>>>>>>
>>>>>> - On an RPi4 with variations on the ram memory size. But also forcing
>>>>>>   the situation where all three memory zones are nonempty by setting a 3G
>>>>>>   ZONE_DMA32 ceiling on a 4G setup. Both with and without NUMA support.
>>>>>>
>>>>> i like to test this series on Raspberry Pi 4 and i have some questions
>>>>> to get arm64 running:
>>>>>
>>>>> Do you use U-Boot? Which tree?
>>>> If you want to use U-Boot, try v2019.10-rc4, it should have everything you need
>>>> to boot your kernel.
>>>>
>>> Ok, here is a thing. In the linux kernel we now use bcm2711 as SoC name, but the
>>> RPi4 devicetree provided by the FW uses mostly bcm2838.
>> Do you mean the DTB provided at runtime?
>>
>> You mean the merged U-Boot changes, doesn't work with my Raspberry Pi
>> series?
>>
>>>  U-Boot in its default
>>> config uses the devicetree provided by the FW, mostly because this way you don't
>>> have to do anything to find out how many RAM you really have. Secondly because
>>> this will allow us, in the near future, to have one U-boot binary for both RPi3
>>> and RPi4 (and as a side effect one binary for RPi1 and RPi2).
>>>
>>> Anyway, I found at least, that the following compatibles need to be added:
>>>
>>> "brcm,bcm2838-cprman"
>>> "brcm,bcm2838-gpio"
>>>
>>> Without at least the cprman driver update, you won't see anything.
>>>
>>> "brcm,bcm2838-rng200" is also a candidate.
>>>
>>> I also suppose we will need to add "brcm,bcm2838" to
>>> arch/arm/mach-bcm/bcm2711.c, but I haven't verified this.
>> How about changing this in the downstream kernel? Which is much easier.
> I'm not sure I understand what you want to say. My goal is to use the upstream
> kernel with the device tree blob provided by the FW.

The device tree blob you are talking is defined in this repository:

https://github.com/raspberrypi/linux

So the word FW is misleading to me.

>  If you talk about the
> downstream kernel, I suppose you mean we should change this in the FW DT blob
> and in the downstream kernel. That would work for me.
>
> Did I understand you correctly?

Yes

So i suggest to add the upstream compatibles into the repo mentioned above.

Sorry, but in case you decided as a U-Boot developer to be compatible
with a unreviewed DT, we also need to make U-Boot compatible with
upstream and downstream DT blobs.

>
>>> Regards,
>>> Matthias
>>>
>>>> Regards,
>>>> Matthias
>>>>
>>>>> Are there any config.txt tweaks necessary?
>>>>>
>>>>>
>>>> _______________________________________________
>>>> linux-arm-kernel mailing list
>>>> linux-arm-kernel@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>>
>>> _______________________________________________
>>> linux-arm-kernel mailing list
>>> linux-arm-kernel@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
