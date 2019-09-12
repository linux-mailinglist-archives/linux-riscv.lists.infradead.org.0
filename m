Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD00B14CE
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Sep 2019 21:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=la5TpMGBmW3wi8XrP+FbTHVbK66FsJbT70Tpy6rvTts=; b=qxv1jBoNc29gI1
	9EYfL9mKwJILyRw74qPX/K6FAdCe5UgnDwfuR9FprLNrsCdC6EYkmBJUeNPF70hVwRqRuo4bdkL16
	blO4WV+QQmT7jNHIWqJaiqjFM0UYBVkwSXc26Z7qp7LZEfBJnxw7knfDpeYA4zVzL8cqAZ13qAV3n
	1XMNtBkSTN98GG0VsJrNN2RIPCsLXnu+ANK0kB7fPj6ambH5mhbUwBU/c03NbLyKd6nRIeCxUUYlE
	21KjZfIBir5vSfQJ4tauCiB+MBzVp6AWi69QFNgTSBzNCK6toRnoAfuYwFerG9tLgrmv+e3NddJuR
	4ArX0j0QzjrU30w0+Eag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8UqH-0006qw-Hi; Thu, 12 Sep 2019 19:33:22 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Upr-0006ej-G0; Thu, 12 Sep 2019 19:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1568316739;
 bh=ZhGcmu0FL7c6CsiOe5ntOYdJs2XJ0IHkdvvQp/czUYc=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=jI/Y4TBztwVnqxuv+S8X1nIvO3JWvu6xOm0pD4/HkZbfMYcB1i4ZRBY2CpnhwFtSD
 MVf26VPugeMbU0t2q63k1bBGfYYYBiYP9rkuDcOgSE6Khd5ZDEJsgAycpFxldWWYTX
 MMspO5ja5XwNZ4hV3FIGIdsXOZTDFOWuD/yIiPHE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.90]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MIu7d-1i6Yt02Gr3-002Xj2; Thu, 12
 Sep 2019 21:32:19 +0200
Subject: Re: [PATCH v5 0/4] Raspberry Pi 4 DMA addressing support
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Matthias Brugger <mbrugger@suse.com>, Stefan Wahren <wahrenst@gmx.net>,
 catalin.marinas@arm.com, marc.zyngier@arm.com, robh+dt@kernel.org,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org, hch@lst.de,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20190909095807.18709-1-nsaenzjulienne@suse.de>
 <5a8af6e9-6b90-ce26-ebd7-9ee626c9fa0e@gmx.net>
 <3f9af46e-2e1a-771f-57f2-86a53caaf94a@suse.com>
 <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <2c3e1ef3-0dba-9f79-52e2-314b6b500e14@gmx.net>
Date: Thu, 12 Sep 2019 21:32:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:4xpyVTkM7mBHwer0vBdnpZAda7DcFxOoW0+WuRy4TkEKxMiMlmN
 M+SKLGRk2tS9dYViahToGsAuTzugZA1kANQsReD+i5epvMF5yCJKTQnEpw161Du5A22hjJO
 /tPCYSGWzP7L5usVqaK9StT43B9Ji6UAg/HbKQ24E5JuE7RjnynMaQWo4Vq2/RJHXtK+2sQ
 FDI27EU/NTWzAuJnzDXCA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:99alYRTSDPY=:xHYjMtKVyHWQ/iK2Vbu/zw
 hbtkt2FcY47/Q2qHFp3EW1Hh6wmlof1QFS2VO2S3TWU1nKcpaknXTejUIWOQXegczemvl+sbo
 Hr3OJFJFYbrbO1SxCojU4TCiLJFe5ClVGsB5+aeG2le/iKMupt/KviOzMsV1rbZXeFwHgAR9a
 VegIQ9fXuiJlxEwTzAkwV1fRpEFK5qw1vu0boThat2McPQsl2GmItBG6dWKieW1JknS3aHW8i
 xQFMyZcFdYZA0GJjhvj36gSWz4X6p5kw7EfBCaPOYNGEGOoHhIhwmBb4P/Tf0voFe5fSLgwXb
 jYt4/CIPkzNyMwtP3DjfFcwjBSGrzLsS8zim3WBRB11kHl9wKOZlWS0kMPy/3UY4/i9nwDyVA
 wh0sPuaspOGNxpfmTyY4J2Nk7+5noqTYF9Y9r8skAezjEFrLccovsFfa/gdK8oHYJjFHnMalP
 Dj0ceQ3H3cPrgVyW6//xklvzAId6fTUxBsRh+SkYV8wA2OxUPR05ZlYYZygXuaZYAraiPKzPO
 YteprH6CnN6oo3RKR09URufySBcOcxDDf+VBtlG0GwP8Ifnw5GMxjGandMBm/4jdiHI4UmxVs
 MnbGytoGcfAVYTZyWgFzmg4GU+nRmJBguuUDqfau8Iih4zsQcBc6ySp2p7PiMICTqXy29eZyK
 3l3vMk6+eOW/TCsmpFhlAjAtFpDQsKpughAxlhLweBt5+3NGpDjU2zwQ+w435Aqeqy2Vy//wV
 2m9dYSQvO3GuvkxT0aKWK5bt2hV8Lp/rCXcmSVse8QhvngaNPStUm69bsWHyORO5NZnSXUVyy
 w/PEE51aE7SaTsd+E1l4JV1thpT3is5mLfHpgKizK8gBxBgyogSyJx9iAp/Dc3C1on2II7YVK
 MJDhokXTYA4bMoZ0KO4OpatAb9dUODb7r/kf+rVSxP0J5VG4oxhxYYJRWvzFElHSJRKPIy9eA
 3ji6pSf5iyh2rRCgIjbvG1MFqxuc2Q3GsnR7Pkb7+chasvMpRTLxzngUVT9dYAzyLRx30bgzt
 n0tgtEOpanEDqP/qxLY1olj7AB9NU09c4ZfWjX7i/U0yk+iHme1Vc8l+KJA9wb+oAI3b/TohN
 hK+CBEAfSSh1TehAgMucCIhIVaaA/s2OzgAmtICldlxfHpzqAMblTxqxO9zqgzGoPjnKX/1hF
 7Iuucsg5UxGOd2vcStwgckss5fTHQnXoXBnr2/SJSgcHAHguVSLC9G/kG5PY5dkvt/3EoEThO
 ivKLUwHvFHMNOH8XnoDfdP19+SgEJRdl3WbORqgSTMzvGGtvUDrCNWxdmZFM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_123255_833483_7AFFF175 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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


Am 12.09.19 um 19:18 schrieb Matthias Brugger:
>
> On 10/09/2019 11:27, Matthias Brugger wrote:
>>
>> On 09/09/2019 21:33, Stefan Wahren wrote:
>>> Hi Nicolas,
>>>
>>> Am 09.09.19 um 11:58 schrieb Nicolas Saenz Julienne:
>>>> Hi all,
>>>> this series attempts to address some issues we found while bringing up
>>>> the new Raspberry Pi 4 in arm64 and it's intended to serve as a follow
>>>> up of these discussions:
>>>> v4: https://lkml.org/lkml/2019/9/6/352
>>>> v3: https://lkml.org/lkml/2019/9/2/589
>>>> v2: https://lkml.org/lkml/2019/8/20/767
>>>> v1: https://lkml.org/lkml/2019/7/31/922
>>>> RFC: https://lkml.org/lkml/2019/7/17/476
>>>>
>>>> The new Raspberry Pi 4 has up to 4GB of memory but most peripherals can
>>>> only address the first GB: their DMA address range is
>>>> 0xc0000000-0xfc000000 which is aliased to the first GB of physical
>>>> memory 0x00000000-0x3c000000. Note that only some peripherals have these
>>>> limitations: the PCIe, V3D, GENET, and 40-bit DMA channels have a wider
>>>> view of the address space by virtue of being hooked up trough a second
>>>> interconnect.
>>>>
>>>> Part of this is solved on arm32 by setting up the machine specific
>>>> '.dma_zone_size = SZ_1G', which takes care of reserving the coherent
>>>> memory area at the right spot. That said no buffer bouncing (needed for
>>>> dma streaming) is available at the moment, but that's a story for
>>>> another series.
>>>>
>>>> Unfortunately there is no such thing as 'dma_zone_size' in arm64. Only
>>>> ZONE_DMA32 is created which is interpreted by dma-direct and the arm64
>>>> arch code as if all peripherals where be able to address the first 4GB
>>>> of memory.
>>>>
>>>> In the light of this, the series implements the following changes:
>>>>
>>>> - Create both DMA zones in arm64, ZONE_DMA will contain the first 1G
>>>>   area and ZONE_DMA32 the rest of the 32 bit addressable memory. So far
>>>>   the RPi4 is the only arm64 device with such DMA addressing limitations
>>>>   so this hardcoded solution was deemed preferable.
>>>>
>>>> - Properly set ARCH_ZONE_DMA_BITS.
>>>>
>>>> - Reserve the CMA area in a place suitable for all peripherals.
>>>>
>>>> This series has been tested on multiple devices both by checking the
>>>> zones setup matches the expectations and by double-checking physical
>>>> addresses on pages allocated on the three relevant areas GFP_DMA,
>>>> GFP_DMA32, GFP_KERNEL:
>>>>
>>>> - On an RPi4 with variations on the ram memory size. But also forcing
>>>>   the situation where all three memory zones are nonempty by setting a 3G
>>>>   ZONE_DMA32 ceiling on a 4G setup. Both with and without NUMA support.
>>>>
>>> i like to test this series on Raspberry Pi 4 and i have some questions
>>> to get arm64 running:
>>>
>>> Do you use U-Boot? Which tree?
>> If you want to use U-Boot, try v2019.10-rc4, it should have everything you need
>> to boot your kernel.
>>
> Ok, here is a thing. In the linux kernel we now use bcm2711 as SoC name, but the
> RPi4 devicetree provided by the FW uses mostly bcm2838.

Do you mean the DTB provided at runtime?

You mean the merged U-Boot changes, doesn't work with my Raspberry Pi
series?

>  U-Boot in its default
> config uses the devicetree provided by the FW, mostly because this way you don't
> have to do anything to find out how many RAM you really have. Secondly because
> this will allow us, in the near future, to have one U-boot binary for both RPi3
> and RPi4 (and as a side effect one binary for RPi1 and RPi2).
>
> Anyway, I found at least, that the following compatibles need to be added:
>
> "brcm,bcm2838-cprman"
> "brcm,bcm2838-gpio"
>
> Without at least the cprman driver update, you won't see anything.
>
> "brcm,bcm2838-rng200" is also a candidate.
>
> I also suppose we will need to add "brcm,bcm2838" to
> arch/arm/mach-bcm/bcm2711.c, but I haven't verified this.
How about changing this in the downstream kernel? Which is much easier.
>
> Regards,
> Matthias
>
>> Regards,
>> Matthias
>>
>>> Are there any config.txt tweaks necessary?
>>>
>>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
