Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93AFB1388
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Sep 2019 19:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlQ5wAgbzSdwmwCauN6HOvO2TpWN0DT56q3IThl1qqs=; b=h9y8x27Y6XazFd
	k7BUqp/RahWk7ZDYhjvxSSyK6aqoO4gSvwGeP7yg2GV8IVPvVkA0bJI5N8sbBhbbr/Hy+La4lhOeD
	kK41CSX1iGGn3uV7qIOSnMbFAmSQiRKQzkCPmLP4bLiCeShb305tybyH8cKG4yyv3c1dAO3PgY95z
	cjYiMvNJ7HPZYu2hxd4Y5o+trFGyxXwjWaYwHaN8tMl51S2viX0ckOpXXthorVPGTy0xrSKj2hcgK
	stNRxTvrf5ynz5AA3vx8BN94j9tuUXRIrMqGJuwZyM77Q8YbJffLDgqWTz6cAO+1HOh8RtXZ6APeJ
	WvYwMDiajpGs+Kfqf1VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8SsZ-0005do-6b; Thu, 12 Sep 2019 17:27:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8SsV-0005dM-BI; Thu, 12 Sep 2019 17:27:33 +0000
Received: by mail-pf1-x444.google.com with SMTP id d15so16399429pfo.10;
 Thu, 12 Sep 2019 10:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=A2VaeoGOcPWnzldQ4YT0skQxO0QLv8zFl3O0Sl2BGVk=;
 b=SJdrpw0L226VGKzsh56oaTd1bDqArbaJl6lmB4oBxhL/SA3ZEqZ3lWfLpdjRhuVHAF
 zkRMXKWQGb+zVvUeQw185dLJdCPPbLnB+idlskGbIZkKE3XYdx/goRi8GTNhy156FYjf
 fN1SKuPPGYyp37cGdOdcQFKrVJCfbey1mk0RCN9AIdEXsnwjLwiAaajcLPF60wRu64wX
 u5xi/NSZIERbg23LJFg3yYN4kCk4VmGwIcPA9YD9O42Ris9QAyGZHmfI6//34GKM7r5t
 P74MJXFajGD4L+ZMABwd448vM7EsB1BGFZLMH7Lz0STr/2HWuZe6OlnzNAlJpX1NlfPT
 oy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=A2VaeoGOcPWnzldQ4YT0skQxO0QLv8zFl3O0Sl2BGVk=;
 b=DlOt998+x+djPxIEkO4N4IcZiKbGAX2ZAIkWxCx4/j+yIUxfdQKW1k74wAWIh6U6ES
 43f2iuvBO8rMcvMrGWVtn8lVhMrYY7pVySt/M1w9ikhYL8ZtazgyyHjGTuZJpQ1FWT+R
 s3NsIBncLwKENDOJfFDJud0ml9re4rOEpWxVxirTPNNDzDJGhHLJ4rq34+n8ghfslaIj
 9NLedD0ku70f4xvjgeZxxSsZigMaj8AOroe0tQVQ5KHs8OvKSnMISXmmo1e1tB8fzO0O
 lrbeWfidG/GoDtQCXRmWzx9TSUdbtWKPRsRhwJZrOTV6Bih/VFW9fHQ+omtaW95PEA/N
 mWIA==
X-Gm-Message-State: APjAAAW0+jbX0Bg+A27mvGKbHmTztSr2ZkiaV9Z70G+nzGsU3nZc1OYA
 9A1/IcNJ7Pob6Y1Au4WWht0=
X-Google-Smtp-Source: APXvYqwPffKdzYn1icfU0Q8+3fovb5jHDAE3FDfUPH6fI0dNsE+i7CHa3/Qquhr8ZcaBAGA2Oyu2HQ==
X-Received: by 2002:a63:dd17:: with SMTP id t23mr8540859pgg.295.1568309250064; 
 Thu, 12 Sep 2019 10:27:30 -0700 (PDT)
Received: from [10.67.49.31] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id s97sm583106pjc.4.2019.09.12.10.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 10:27:29 -0700 (PDT)
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
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 mQGiBEjPuBIRBACW9MxSJU9fvEOCTnRNqG/13rAGsj+vJqontvoDSNxRgmafP8d3nesnqPyR
 xGlkaOSDuu09rxuW+69Y2f1TzjFuGpBk4ysWOR85O2Nx8AJ6fYGCoeTbovrNlGT1M9obSFGQ
 X3IzRnWoqlfudjTO5TKoqkbOgpYqIo5n1QbEjCCwCwCg3DOH/4ug2AUUlcIT9/l3pGvoRJ0E
 AICDzi3l7pmC5IWn2n1mvP5247urtHFs/uusE827DDj3K8Upn2vYiOFMBhGsxAk6YKV6IP0d
 ZdWX6fqkJJlu9cSDvWtO1hXeHIfQIE/xcqvlRH783KrihLcsmnBqOiS6rJDO2x1eAgC8meAX
 SAgsrBhcgGl2Rl5gh/jkeA5ykwbxA/9u1eEuL70Qzt5APJmqVXR+kWvrqdBVPoUNy/tQ8mYc
 nzJJ63ng3tHhnwHXZOu8hL4nqwlYHRa9eeglXYhBqja4ZvIvCEqSmEukfivk+DlIgVoOAJbh
 qIWgvr3SIEuR6ayY3f5j0f2ejUMYlYYnKdiHXFlF9uXm1ELrb0YX4GMHz7QnRmxvcmlhbiBG
 YWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+iGYEExECACYCGyMGCwkIBwMCBBUCCAME
 FgIDAQIeAQIXgAUCVF/S8QUJHlwd3wAKCRBhV5kVtWN2DvCVAJ4u4/bPF4P3jxb4qEY8I2gS
 6hG0gACffNWlqJ2T4wSSn+3o7CCZNd7SLSC5BA0ESM+4EhAQAL/o09boR9D3Vk1Tt7+gpYr3
 WQ6hgYVON905q2ndEoA2J0dQxJNRw3snabHDDzQBAcqOvdi7YidfBVdKi0wxHhSuRBfuOppu
 pdXkb7zxuPQuSveCLqqZWRQ+Cc2QgF7SBqgznbe6Ngout5qXY5Dcagk9LqFNGhJQzUGHAsIs
 hap1f0B1PoUyUNeEInV98D8Xd/edM3mhO9nRpUXRK9Bvt4iEZUXGuVtZLT52nK6Wv2EZ1TiT
 OiqZlf1P+vxYLBx9eKmabPdm3yjalhY8yr1S1vL0gSA/C6W1o/TowdieF1rWN/MYHlkpyj9c
 Rpc281gAO0AP3V1G00YzBEdYyi0gaJbCEQnq8Vz1vDXFxHzyhgGz7umBsVKmYwZgA8DrrB0M
 oaP35wuGR3RJcaG30AnJpEDkBYHznI2apxdcuTPOHZyEilIRrBGzDwGtAhldzlBoBwE3Z3MY
 31TOpACu1ZpNOMysZ6xiE35pWkwc0KYm4hJA5GFfmWSN6DniimW3pmdDIiw4Ifcx8b3mFrRO
 BbDIW13E51j9RjbO/nAaK9ndZ5LRO1B/8Fwat7bLzmsCiEXOJY7NNpIEpkoNoEUfCcZwmLrU
 +eOTPzaF6drw6ayewEi5yzPg3TAT6FV3oBsNg3xlwU0gPK3v6gYPX5w9+ovPZ1/qqNfOrbsE
 FRuiSVsZQ5s3AAMFD/9XjlnnVDh9GX/r/6hjmr4U9tEsM+VQXaVXqZuHKaSmojOLUCP/YVQo
 7IiYaNssCS4FCPe4yrL4FJJfJAsbeyDykMN7wAnBcOkbZ9BPJPNCbqU6dowLOiy8AuTYQ48m
 vIyQ4Ijnb6GTrtxIUDQeOBNuQC/gyyx3nbL/lVlHbxr4tb6YkhkO6shjXhQh7nQb33FjGO4P
 WU11Nr9i/qoV8QCo12MQEo244RRA6VMud06y/E449rWZFSTwGqb0FS0seTcYNvxt8PB2izX+
 HZA8SL54j479ubxhfuoTu5nXdtFYFj5Lj5x34LKPx7MpgAmj0H7SDhpFWF2FzcC1bjiW9mjW
 HaKaX23Awt97AqQZXegbfkJwX2Y53ufq8Np3e1542lh3/mpiGSilCsaTahEGrHK+lIusl6mz
 Joil+u3k01ofvJMK0ZdzGUZ/aPMZ16LofjFA+MNxWrZFrkYmiGdv+LG45zSlZyIvzSiG2lKy
 kuVag+IijCIom78P9jRtB1q1Q5lwZp2TLAJlz92DmFwBg1hyFzwDADjZ2nrDxKUiybXIgZp9
 aU2d++ptEGCVJOfEW4qpWCCLPbOT7XBr+g/4H3qWbs3j/cDDq7LuVYIe+wchy/iXEJaQVeTC
 y5arMQorqTFWlEOgRA8OP47L9knl9i4xuR0euV6DChDrguup2aJVU4hPBBgRAgAPAhsMBQJU
 X9LxBQkeXB3fAAoJEGFXmRW1Y3YOj4UAn3nrFLPZekMeqX5aD/aq/dsbXSfyAKC45Go0YyxV
 HGuUuzv+GKZ6nsysJ7kCDQRXG8fwARAA6q/pqBi5PjHcOAUgk2/2LR5LjjesK50bCaD4JuNc
 YDhFR7Vs108diBtsho3w8WRd9viOqDrhLJTroVckkk74OY8r+3t1E0Dd4wHWHQZsAeUvOwDM
 PQMqTUBFuMi6ydzTZpFA2wBR9x6ofl8Ax+zaGBcFrRlQnhsuXLnM1uuvS39+pmzIjasZBP2H
 UPk5ifigXcpelKmj6iskP3c8QN6x6GjUSmYx+xUfs/GNVSU1XOZn61wgPDbgINJd/THGdqiO
 iJxCLuTMqlSsmh1+E1dSdfYkCb93R/0ZHvMKWlAx7MnaFgBfsG8FqNtZu3PCLfizyVYYjXbV
 WO1A23riZKqwrSJAATo5iTS65BuYxrFsFNPrf7TitM8E76BEBZk0OZBvZxMuOs6Z1qI8YKVK
 UrHVGFq3NbuPWCdRul9SX3VfOunr9Gv0GABnJ0ET+K7nspax0xqq7zgnM71QEaiaH17IFYGS
 sG34V7Wo3vyQzsk7qLf9Ajno0DhJ+VX43g8+AjxOMNVrGCt9RNXSBVpyv2AMTlWCdJ5KI6V4
 KEzWM4HJm7QlNKE6RPoBxJVbSQLPd9St3h7mxLcne4l7NK9eNgNnneT7QZL8fL//s9K8Ns1W
 t60uQNYvbhKDG7+/yLcmJgjF74XkGvxCmTA1rW2bsUriM533nG9gAOUFQjURkwI8jvMAEQEA
 AYkCaAQYEQIACQUCVxvH8AIbAgIpCRBhV5kVtWN2DsFdIAQZAQIABgUCVxvH8AAKCRCH0Jac
 RAcHBIkHD/9nmfog7X2ZXMzL9ktT++7x+W/QBrSTCTmq8PK+69+INN1ZDOrY8uz6htfTLV9+
 e2W6G8/7zIvODuHk7r+yQ585XbplgP0V5Xc8iBHdBgXbqnY5zBrcH+Q/oQ2STalEvaGHqNoD
 UGyLQ/fiKoLZTPMur57Fy1c9rTuKiSdMgnT0FPfWVDfpR2Ds0gpqWePlRuRGOoCln5GnREA/
 2MW2rWf+CO9kbIR+66j8b4RUJqIK3dWn9xbENh/aqxfonGTCZQ2zC4sLd25DQA4w1itPo+f5
 V/SQxuhnlQkTOCdJ7b/mby/pNRz1lsLkjnXueLILj7gNjwTabZXYtL16z24qkDTI1x3g98R/
 xunb3/fQwR8FY5/zRvXJq5us/nLvIvOmVwZFkwXc+AF+LSIajqQz9XbXeIP/BDjlBNXRZNdo
 dVuSU51ENcMcilPr2EUnqEAqeczsCGpnvRCLfVQeSZr2L9N4svNhhfPOEscYhhpHTh0VPyxI
 pPBNKq+byuYPMyk3nj814NKhImK0O4gTyCK9b+gZAVvQcYAXvSouCnTZeJRrNHJFTgTgu6E0
 caxTGgc5zzQHeX67eMzrGomG3ZnIxmd1sAbgvJUDaD2GrYlulfwGWwWyTNbWRvMighVdPkSF
 6XFgQaosWxkV0OELLy2N485YrTr2Uq64VKyxpncLh50e2RnyAJ9Za0Dx0yyp44iD1OvHtkEI
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <abc4b2b9-41ee-16f0-5102-6032182738be@gmail.com>
Date: Thu, 12 Sep 2019 10:27:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <09f82f88-a13a-b441-b723-7bb061a2f1e3@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_102731_415492_E260C5E8 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org, will@kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 9/12/19 10:18 AM, Matthias Brugger wrote:
> 
> 
> On 10/09/2019 11:27, Matthias Brugger wrote:
>>
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
>>
>> If you want to use U-Boot, try v2019.10-rc4, it should have everything you need
>> to boot your kernel.
>>
> 
> Ok, here is a thing. In the linux kernel we now use bcm2711 as SoC name, but the
> RPi4 devicetree provided by the FW uses mostly bcm2838. U-Boot in its default
> config uses the devicetree provided by the FW, mostly because this way you don't
> have to do anything to find out how many RAM you really have. Secondly because
> this will allow us, in the near future, to have one U-boot binary for both RPi3
> and RPi4 (and as a side effect one binary for RPi1 and RPi2).

Fairly sure we had the conversation a few weeks ago about whether to
chose bcm2711 or bcm2838 for the compatible string. In all cases, the
actual HW this designates is the same, but there was a consistency
argument that 2838, is numerically + 1 than its predecessor and might be
how the RPi would be announced, even if the chip silkscreen says 2711.

If we start adding 2711, does that mean we should also add 2708/09/10 to
existing 2835/36/37 compatible strings or has that ship sailed?
-- 
Florian

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
