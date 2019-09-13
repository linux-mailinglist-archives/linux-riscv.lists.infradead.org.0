Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D4AB1BA2
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Sep 2019 12:40:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b85AUTQT9LE9ytmM54Lwcb6m0w4bCuO1AcRRAC6zzvw=; b=e2N11Wjh8LWFQ8
	wmiYjZAXMEiQfc2xgoNvn2qyo/pYWVZgH/QSxoFCqaOdzYX3b93P1fKWExWA/hfwss1EAtRrY7tvl
	jyCDg8EeNsN1LsU7O4j6Ewm0F/nKLuGtBgSu7ArIQGO+Z+WhJqRzJ/GMGP+HdXYLlOobk03/q9LKj
	xwBa4iOY3rqmYzfjd12v2Vc6W2JQjHMm4VKv54rzMQG9a8OYfFpkP+xTxjUGlgQX0XhgRfeQFOtDt
	P9g/s/HEdIsQjZUrVSXjFqaIiZFXi3wruwyOo4CRDc2EGVsnSVhaPMqs0D5NSBn2dyGckXXeP+Q7i
	pfmZN4j7Hd8aQ0pgxA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8izj-0001jQ-60; Fri, 13 Sep 2019 10:40:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8izD-0001Yt-Dz; Fri, 13 Sep 2019 10:39:33 +0000
Received: by mail-ed1-x544.google.com with SMTP id i1so26661859edv.4;
 Fri, 13 Sep 2019 03:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cITQPKiw6v0sXdOJ1ClbHKodyXYuvix6zxKH9FnzCzc=;
 b=M6TTnKTCBg11ygnd6V5l3Kqjgi8VYtcNf0p5ZrhopESsLXGI3byxDJgZnJJvwDPDGC
 tX6ztmCp5w/vCC98xTNeL2qoTsTPunKaPYPS5n+tPF39neOz5+2uehH/aM5DSryoukxh
 JI3x6u4uyFu/XoUvdTORsiNVliJD8AZ+UB0XiwmkDs//e61JtjCp7cfCzbZdKw3yTDTu
 njp230o9Ofx4c+JRYXrqPNYvc2HZLHUrqRAJK0dJVtg3IMzYka1Phw/c35kCOtkXcleg
 a4RsLPTVRpXHTuZXM93SmLuSuQYHCfHLMQj2cYbf7NZh97ypVhhjKXvw8YjD6i550Q+H
 lZ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cITQPKiw6v0sXdOJ1ClbHKodyXYuvix6zxKH9FnzCzc=;
 b=qGOfHr9tbrjQpVB/4argETv9tpEuGVA7/jyhT0PAmtt422kb2bxfHEfdnrT+6I06FM
 BF5W4YENRK/iUeuV9/6RRcIlBWC4AlOEcpaP2L+Cuh4ScWfnleTuSfe5YL9otT4Ql7Br
 AWocPslXm8AUl2dGSAkZgUhMa7oDpyyspZQ0fCIa4DzTKasOY7CzW41GhbfO++MGF2dJ
 Q+GyPtgWDZrqpQXTVxWLwJ0Z1+ZNwmS5CaPst7ZzSKYsxJR8XTcUUQa1d8YioM9i5y6R
 3vvrJba0RWxpx6x53k0Ayl1M9yBTqHS+hq8c+JneC0oVLD4ch4BQsjaO1DttBcvBYg6h
 ihWQ==
X-Gm-Message-State: APjAAAWOoF4X6ywq4PYoE76KOqHXEaA+o7Un5tGMKSf3coiD5aIxl8ST
 EGGpoI0dRaS+dIv/rlbuE2Q=
X-Google-Smtp-Source: APXvYqxWSWTH1ZbhtVgJ2Xtq1vGh29SFdcAraLPqHv0GzNBq2+K4kkHRdK8CsuJNFt9Ymhn4LmHoJw==
X-Received: by 2002:a17:906:4547:: with SMTP id
 s7mr6279869ejq.55.1568371163784; 
 Fri, 13 Sep 2019 03:39:23 -0700 (PDT)
Received: from ziggy.stardust ([37.223.145.235])
 by smtp.gmail.com with ESMTPSA id a50sm4370216eda.25.2019.09.13.03.39.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Sep 2019 03:39:23 -0700 (PDT)
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
To: Stefan Wahren <wahrenst@gmx.net>, Matthias Brugger <mbrugger@suse.com>,
 catalin.marinas@arm.com, marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org, hch@lst.de,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
 <3f9af46e-2e1a-771f-57f2-86a53caaf94a@suse.com>
 <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
 <2c3e1ef3-0dba-9f79-52e2-314b6b500e14@gmx.net>
 <4a6f965b-c988-5839-169f-9f24a0e7a567@suse.com>
 <48a6b72d-d554-b563-5ed6-9a79db5fb4ab@gmx.net>
 <2fcc5ad6-fa90-6565-e75c-d20b46965733@suse.com>
 <3163f80b-72e5-5da8-0909-a8950d3669f7@gmx.net>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <a5073e16-c017-216c-72b4-0e861102c4e8@gmail.com>
Date: Fri, 13 Sep 2019 12:39:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3163f80b-72e5-5da8-0909-a8950d3669f7@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_033931_691518_3301C569 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, robin.murphy@arm.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 will@kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 13/09/2019 12:08, Stefan Wahren wrote:
> Am 13.09.19 um 11:25 schrieb Matthias Brugger:
>>
>> On 13/09/2019 10:50, Stefan Wahren wrote:
>>> Am 13.09.19 um 10:09 schrieb Matthias Brugger:
>>>> On 12/09/2019 21:32, Stefan Wahren wrote:
>>>>> Am 12.09.19 um 19:18 schrieb Matthias Brugger:
>>>>>> On 10/09/2019 11:27, Matthias Brugger wrote:
>>>>>>> On 09/09/2019 21:33, Stefan Wahren wrote:
>>>>>>>> Hi Nicolas,
>>>>>>>>
>>>>>>>> Am 09.09.19 um 11:58 schrieb Nicolas Saenz Julienne:
>>>>>>>>> Hi all,
>>>>>>>>> this series attempts to address some issues we found while bringing up
>>>>>>>>> the new Raspberry Pi 4 in arm64 and it's intended to serve as a follow
>>>>>>>>> up of these discussions:
>>>>>>>>> v4: https://lkml.org/lkml/2019/9/6/352
>>>>>>>>> v3: https://lkml.org/lkml/2019/9/2/589
>>>>>>>>> v2: https://lkml.org/lkml/2019/8/20/767
>>>>>>>>> v1: https://lkml.org/lkml/2019/7/31/922
>>>>>>>>> RFC: https://lkml.org/lkml/2019/7/17/476
>>>>>>>>>
>>>>>>>>> The new Raspberry Pi 4 has up to 4GB of memory but most peripherals can
>>>>>>>>> only address the first GB: their DMA address range is
>>>>>>>>> 0xc0000000-0xfc000000 which is aliased to the first GB of physical
>>>>>>>>> memory 0x00000000-0x3c000000. Note that only some peripherals have these
>>>>>>>>> limitations: the PCIe, V3D, GENET, and 40-bit DMA channels have a wider
>>>>>>>>> view of the address space by virtue of being hooked up trough a second
>>>>>>>>> interconnect.
>>>>>>>>>
>>>>>>>>> Part of this is solved on arm32 by setting up the machine specific
>>>>>>>>> '.dma_zone_size = SZ_1G', which takes care of reserving the coherent
>>>>>>>>> memory area at the right spot. That said no buffer bouncing (needed for
>>>>>>>>> dma streaming) is available at the moment, but that's a story for
>>>>>>>>> another series.
>>>>>>>>>
>>>>>>>>> Unfortunately there is no such thing as 'dma_zone_size' in arm64. Only
>>>>>>>>> ZONE_DMA32 is created which is interpreted by dma-direct and the arm64
>>>>>>>>> arch code as if all peripherals where be able to address the first 4GB
>>>>>>>>> of memory.
>>>>>>>>>
>>>>>>>>> In the light of this, the series implements the following changes:
>>>>>>>>>
>>>>>>>>> - Create both DMA zones in arm64, ZONE_DMA will contain the first 1G
>>>>>>>>>   area and ZONE_DMA32 the rest of the 32 bit addressable memory. So far
>>>>>>>>>   the RPi4 is the only arm64 device with such DMA addressing limitations
>>>>>>>>>   so this hardcoded solution was deemed preferable.
>>>>>>>>>
>>>>>>>>> - Properly set ARCH_ZONE_DMA_BITS.
>>>>>>>>>
>>>>>>>>> - Reserve the CMA area in a place suitable for all peripherals.
>>>>>>>>>
>>>>>>>>> This series has been tested on multiple devices both by checking the
>>>>>>>>> zones setup matches the expectations and by double-checking physical
>>>>>>>>> addresses on pages allocated on the three relevant areas GFP_DMA,
>>>>>>>>> GFP_DMA32, GFP_KERNEL:
>>>>>>>>>
>>>>>>>>> - On an RPi4 with variations on the ram memory size. But also forcing
>>>>>>>>>   the situation where all three memory zones are nonempty by setting a 3G
>>>>>>>>>   ZONE_DMA32 ceiling on a 4G setup. Both with and without NUMA support.
>>>>>>>>>
>>>>>>>> i like to test this series on Raspberry Pi 4 and i have some questions
>>>>>>>> to get arm64 running:
>>>>>>>>
>>>>>>>> Do you use U-Boot? Which tree?
>>>>>>> If you want to use U-Boot, try v2019.10-rc4, it should have everything you need
>>>>>>> to boot your kernel.
>>>>>>>
>>>>>> Ok, here is a thing. In the linux kernel we now use bcm2711 as SoC name, but the
>>>>>> RPi4 devicetree provided by the FW uses mostly bcm2838.
>>>>> Do you mean the DTB provided at runtime?
>>>>>
>>>>> You mean the merged U-Boot changes, doesn't work with my Raspberry Pi
>>>>> series?
>>>>>
>>>>>>  U-Boot in its default
>>>>>> config uses the devicetree provided by the FW, mostly because this way you don't
>>>>>> have to do anything to find out how many RAM you really have. Secondly because
>>>>>> this will allow us, in the near future, to have one U-boot binary for both RPi3
>>>>>> and RPi4 (and as a side effect one binary for RPi1 and RPi2).
>>>>>>
>>>>>> Anyway, I found at least, that the following compatibles need to be added:
>>>>>>
>>>>>> "brcm,bcm2838-cprman"
>>>>>> "brcm,bcm2838-gpio"
>>>>>>
>>>>>> Without at least the cprman driver update, you won't see anything.
>>>>>>
>>>>>> "brcm,bcm2838-rng200" is also a candidate.
>>>>>>
>>>>>> I also suppose we will need to add "brcm,bcm2838" to
>>>>>> arch/arm/mach-bcm/bcm2711.c, but I haven't verified this.
>>>>> How about changing this in the downstream kernel? Which is much easier.
>>>> I'm not sure I understand what you want to say. My goal is to use the upstream
>>>> kernel with the device tree blob provided by the FW.
>>> The device tree blob you are talking is defined in this repository:
>>>
>>> https://github.com/raspberrypi/linux
>>>
>>> So the word FW is misleading to me.
>>>
>> No, it's part of
>> https://github.com/raspberrypi/firmware.git
>> file boot/bcm2711-rpi-4-b.dtb
> The compiled DT blobs incl. the kernel image are stored in this artifact
> repository. But the sources for the kernel and the DT are in the Linux
> repo. This is necessary to be compliant to the GPL.

Got it, thanks for clarifying.

>>
>>>>  If you talk about the
>>>> downstream kernel, I suppose you mean we should change this in the FW DT blob
>>>> and in the downstream kernel. That would work for me.
>>>>
>>>> Did I understand you correctly?
>>> Yes
>>>
>>> So i suggest to add the upstream compatibles into the repo mentioned above.
>>>
>>> Sorry, but in case you decided as a U-Boot developer to be compatible
>>> with a unreviewed DT, we also need to make U-Boot compatible with
>>> upstream and downstream DT blobs.
>>>
>> Well RPi3 is working with the DT blob provided by the FW, as I mentioned earlier
>> if we can use this DTB we can work towards one binary that can boot both RPi3
>> and RPi4. On the other hand we can rely on the FW to detect the amount of memory
>> our RPi4 has.
>>
>> That said, I agree that we should make sure that U-Boot can boot with both DTBs,
>> the upstream one and the downstream. Now the question is how to get to this. I'm
>> a bit puzzled that by talking about "unreviewed DT" you insinuate that bcm2711
>> compatible is already reviewed and can't be changed. From what I can see none of
>> these compatibles got merged for now, so we are still at time to change them.
> 
> Stephen Boyd was okay with clk changes except of a small nit. So i fixed
> this is as he suggested in a separate series. Unfortunately this hasn't
> be applied yet [1].
> 
> The i2c, pinctrl and the sdhci changes has been applied yet.
> 
> In my opinion it isn't the job of the mainline kernel to adapt to a
> vendor device tree. It's the vendor device tree which needs to be fixed.
> 

I agree with that. But if we can make this easier by choosing a compatible which
fits downstream without violating upstream and it makes sense with the naming
scheme of the RPi, I think that's a good argument.

> Sorry, but this is my holiday. I will back after the weekend.
> 

Sure, enjoy. I'll be on travel for the next two weeks but will try to keep up
with emails.

Regards,
Matthias

> Best regards
> Stefan
> 
> [1] - https://www.spinics.net/lists/linux-clk/msg40534.html
> 
>>
>> Apart from the point Florian made, to stay consistent with the RPi SoC naming,
>> it will save us work, both in the kernel and in U-Boot, as we would need to add
>> both compatibles to the code-base.
>>
>> Regards,
>> Matthias
>>
>>>>>> Regards,
>>>>>> Matthias
>>>>>>
>>>>>>> Regards,
>>>>>>> Matthias
>>>>>>>
>>>>>>>> Are there any config.txt tweaks necessary?
>>>>>>>>
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> linux-arm-kernel mailing list
>>>>>>> linux-arm-kernel@lists.infradead.org
>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>>>>>>
>>>>>> _______________________________________________
>>>>>> linux-arm-kernel mailing list
>>>>>> linux-arm-kernel@lists.infradead.org
>>>>>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
