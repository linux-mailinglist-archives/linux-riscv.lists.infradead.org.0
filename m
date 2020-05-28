Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C9D1E6B3B
	for <lists+linux-riscv@lfdr.de>; Thu, 28 May 2020 21:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFF264SusAUehjXwP9Goi3exYGSw95TFftOywym8sME=; b=dw0ddfkUoihb56
	vxd45RlZECCusxxFfCQVVsyoukj5gdnXx5s7+VYdZKzgRzZ8mNGOCUrI9dTKAeAoY8ZNE93CzU+0E
	BwzDGUZ74zVudI6fHHjwFlG69Qm6FcyLpgF0rQEwQGmRNbMmhagleYDZUqNUSTfWcTubd0eEfFDs4
	+bvDGNA9QcjcloIU//BU0CJGNGaxK53lddlQpFApv6J26HZGtYZAavsxayBRvpxuVEMrf1emkKj6w
	J7j11MU1g6NNR8n/ryg4+Ny24BNJecuwS1OcsKpYx0sqGNi+SoFy8swI/W+uE5bJ5IZP6gfqFzsnV
	Mh7ad3J3ei6DD/RaEALg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOLQ-00065q-LY; Thu, 28 May 2020 19:37:36 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeOLL-00063d-NF
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 19:37:34 +0000
Received: by mail-qt1-x842.google.com with SMTP id a23so29519qto.1
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 12:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JFF264SusAUehjXwP9Goi3exYGSw95TFftOywym8sME=;
 b=mcnIkGcJMYx5FNx609XJu0TkCeY5ioSR8B+qiRtl6z8YeClrkkXkxW/neQnC3rew06
 Znl8RX3FVG5z9wA0bZw6Hd7zW/F46iyFkyByKlpUCt+t76idGuYKj3D0Y2KMPGdKCMqq
 W3hR2h4/f1Rv0FzJcKBZmmX78/kEia/TUZ3eJeX6Uwsl92bOVdOR+2wJPYsk1jRlH82z
 vgJEaAFalRs5JRZmS6ZY/9L0/vRAtLaWKM/Z9KFs+tZkrQmTv8fsItgY4wOj6pW7drHy
 2gMJEWAlJ3dhRbP+IGyNdDZ/jB3i0Lsh6oYb4kj42vIsLPVxVTqoRDMQWpvYgG3fq1Wd
 pFHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=JFF264SusAUehjXwP9Goi3exYGSw95TFftOywym8sME=;
 b=lF41Y/8+wZWLc6DJpVyZBLfhFu3EdzmLW8qpa1AdsSvbCatlQNSBKOMJtcO9M9q1Fr
 JoyeWwb1fBAB+b4gL2ZB65QoBOczo9+A0E1xSrZYSGfIBkmdMa8V5iUNL9H5rSy+OUgS
 rV3+i0WjS8bJt8JAHqBFCXlXDwftkqtCK4TzWNU64jYMD39hUJmMHMJhYmouhfXDtcm/
 PF/Rel+x/D/7sc9+jA9tEe/AHAIfSCH85ojWcr5deIcheXVtkAskkHY/0qun4CbZqMMd
 FZjnyq7Qqa+WwjB2MqYdP/1tWp3yxVlkrjR3eS8abWTGXZqCL5l8MERV+3nDQ1Sl6G33
 dppQ==
X-Gm-Message-State: AOAM531xX4LAePQM0uybKH7dT5wGnp8wSYLLBzIKid3fmWFVqipfeIG0
 jOprYNrVPx3uwEs5iUupMYOCercOfeq3lg==
X-Google-Smtp-Source: ABdhPJwPUzR2IDBQb5dG8Gy5FhzEuIqk3+vykCQTGssKl/GIYIPBOn3d3hNc8cBc0fECly0dbEKOaQ==
X-Received: by 2002:ac8:7112:: with SMTP id z18mr5018357qto.274.1590694648920; 
 Thu, 28 May 2020 12:37:28 -0700 (PDT)
Received: from [192.168.1.209] (pool-108-51-35-162.washdc.fios.verizon.net.
 [108.51.35.162])
 by smtp.googlemail.com with ESMTPSA id d21sm5975052qtr.45.2020.05.28.12.37.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 12:37:27 -0700 (PDT)
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
To: Palmer Dabbelt <palmer@dabbelt.com>
References: <mhng-0995a264-b39c-4790-9aa5-b8c598b43ffd@palmerdabbelt-glaptop1>
From: Sean Anderson <seanga2@gmail.com>
Autocrypt: addr=seanga2@gmail.com; prefer-encrypt=mutual; keydata=
 mQENBFe74PkBCACoLC5Zq2gwrDcCkr+EPGsT14bsxrW07GiYzQhLCgwnPdEpgU95pXltbFhw
 46GfyffABWxHKO2x+3L1S6ZxC5AiKbYXo7lpnTBYjamPWYouz+VJEVjUx9aaSEByBah5kX6a
 lKFZWNbXLAJh+dE1HFaMi3TQXXaInaREc+aO1F7fCa2zNE75ja+6ah8L4TPRFZ2HKQzve0/Y
 GXtoRw97qmnm3U36vKWT/m2AiLF619F4T1mHvlfjyd9hrVwjH5h/2rFyroXVXBZHGA9Aj8eN
 F2si35dWSZlIwXkNu9bXp0/pIu6FD0bI+BEkD5S7aH1G1iAcMFi5Qq2RNa041DfQSDDHABEB
 AAG0K1NlYW4gR2FsbGFnaGVyIEFuZGVyc29uIDxzZWFuZ2EyQGdtYWlsLmNvbT6JAVcEEwEK
 AEECGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4ACGQEWIQSQYR1bzo1I0gPoYCg+6I/stKEQ
 bgUCXT+S2AUJB2TlXwAKCRA+6I/stKEQbhNOB/9ooea0hU9Sgh7PBloU6CgaC5mlqPLB7NTp
 +JkB+nh3Fqhk+qLZwzEynnuDLl6ESpVHIc0Ym1lyF4gT3DsrlGT1h0Gzw7vUwd1+ZfN0CuIx
 Rn861U/dAUjvbtN5kMBqOI4/5ea+0r7MACcIVnKF/wMXBD8eypHsorT2sJTzwZ6DRCNP70C5
 N1ahpqqNmXe0uLdP0pu55JCqhrGw2SinkRMdWyhSxT56uNwIVHGhLTqH7Q4t1N6G1EH626qa
 SvIJsWlNpll6Y3AYLDw2/Spw/hqieS2PQ/Ky3rPZnvJt7/aSNYsKoFGX0yjkH67Uq8Lx0k1L
 w8jpXnbEPQN3A2ZJCbeMuQENBF0/k2UBCADhvSlHblNc/aRAWtCFDblCJJMN/8Sd7S9u4ZRS
 w1wIB4tTF7caxc8yfCHa+FjMFeVu34QPtMOvd/gfHz0mr+t0PiTAdDSbd6o7tj+g5ylm+FhT
 OTUtJQ6mx6L9GzMmIDEbLxJMB9RfJaL2mT5JkujKxEst6nlHGV/lEQ54xBl5ImrPvuR5Dbnr
 zWQYlafb1IC5ZFwSMpBeSfhS7/kGPtFY3NkpLrii/CF+ME0DYYWxlkDIycqF3fsUGGfb3HIq
 z2l95OB45+mCs9DrIDZXRT6mFjLcl35UzuEErNIskCl9NKlbvAMAl+gbDH275SnE44ocC4qu
 0tMe7Z5jpOy6J8nNABEBAAGJATwEGAEKACYWIQSQYR1bzo1I0gPoYCg+6I/stKEQbgUCXT+T
 ZQIbDAUJAeEzgAAKCRA+6I/stKEQbjAGB/4mYRqZTTEFmcS+f+8zsmjt2CfWvm38kR+sJFWB
 vz82pFiUWbUM5xvcuOQhz698WQnIazbDGSYaOipyVNS52YiuYJDqMszzgw++DrcSuu0oRYWN
 EWCkJjxMqjGg8uY0OZ6FJG+gYRN5wMFErGfV1OqQ7l00FYA9OzpOEuW9PzPZEutFnAbbh77i
 zvxbQtT7IJCL24A4KutNYKmWg98im4mCzQcJCxE86Bv69ErLVPUyYbp4doLadScilXlvkkjL
 iq1wOt3rRzOuw+qnWVgWGBPxdDftz0Wck941tYF9XE0aMgkf4o1sGoDZFUFPCQdfEYPzzV7O
 S5hN3/mP5UeooFHb
Message-ID: <51c82a3f-15d1-3c1b-9bee-d89fea706e28@gmail.com>
Date: Thu, 28 May 2020 15:37:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <mhng-0995a264-b39c-4790-9aa5-b8c598b43ffd@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_123731_772220_E9563C16 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Anup Patel <Anup.Patel@wdc.com>, anup@brainfault.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, robh+dt@kernel.org,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/26/20 8:32 PM, Palmer Dabbelt wrote:
> On Thu, 21 May 2020 23:29:36 PDT (-0700), seanga2@gmail.com wrote:
>> On 5/22/20 1:54 AM, Anup Patel wrote:
>>> On Fri, May 22, 2020 at 1:35 AM Sean Anderson <seanga2@gmail.com> wrote:
>>>>
>>>> On 5/21/20 9:45 AM, Anup Patel wrote:
>>>>> +Required properties:
>>>>> +- compatible : "sifive,clint-1.0.0" and a string identifying the actual
>>>>> +  detailed implementation in case that specific bugs need to be worked around.
>>>>
>>>> Should the "riscv,clint0" compatible string be documented here? This
>>>
>>> Yes, I forgot to add this compatible string. I will add in v2.
>>>
>>>> peripheral is not really specific to sifive, as it is present in most
>>>> rocket-chip cores.
>>>
>>> I agree that CLINT is present in a lot of non-SiFive RISC-V SOCs and
>>> FPGAs but this IP is only documented as part of SiFive FU540 SOC.
>>> (Refer, https://static.dev.sifive.com/FU540-C000-v1.0.pdf)
>>>
>>> The RISC-V foundation should host the CLINT spec independently
>>> under https://github.com/riscv and make CLINT spec totally open.
>>>
>>> For now, I have documented it just like PLIC DT bindings found at:
>>> Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.txt
>>
>> The PLIC seems to have its own RISC-V-sponsored documentation [1] which
>> was split off from the older privileged specs. By your logic above,
>> should it be renamed to riscv,plic0.txt (with a corresponding change in
>> the documented compatible strings)?
>>
>> [1] https://github.com/riscv/riscv-plic-spec
> 
> Let's propose tagging that PLIC spec as v1.0.0 in the platform spec group, but
> I don't see a reason why that wouldn't be viable.  Assuming that's all OK, we
> can start calling this a RISC-V PLIC (in addition to a SiFive PLIC, as they'll
> be compatible).

Is there a version anyewhere in that spec? I looked around a bit and
couldn't find one.

>>>
>>> If RISC-V maintainers agree then I will document it as "RISC-V CLINT".
>>>
>>> @Palmer ?? @Paul ??
> 
> The CLINT is a SiFive spec.  It has open source RTL so it's been implemented in
> other designs, but it's not a RISC-V spec.  The CLIC, which is a superset of
> the CLINT, is a RISC-V spec.  IIRC it's not finished yet (it's the fast
> interrupts task group), but presumably we should have a "riscv,clic-2.0.0" (or
> whatever it ends up being called) compat string to go along with the
> specification.

The rocket chip is a Chips Alliance project on github; presumably the
"proper" compatibility string would be something like
"chips-alliance,clint"? Alternatively, it is already referred to as
"riscv,clint0" in U-Boot, following the pattern of the plic.

--Sean

