Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93AC17C938
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 00:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrM0YfBfZZhsjiT0vG3ap6/F0sHCs8iAQrdzEAP8JwQ=; b=Dls06/4Ca5x6TI
	x0iAC8I0IyykcugJXkc2UnaFc4pGXLHNAkTwVNQYqlKsSL1eW1fliL10+TDYYBmFZmePXxwvCps0o
	hSLlZNXFYXfw3Eb2b1OVIKX+SAGeqWIYzhhc39Ec/O/EvvRc5aZ0pC2sM3JpLqyMjfqZEX4PHpv48
	L/ry3LCW5YmyO+KBcGHO3bEeu+jgXyMXzau5nPrc1OLwRsNqIGKljR6/XAMM16C9dd9iaWhoCwOzS
	S1vYXThxiQYmRGgCT/Db6PpHlOMWmYqvLl20uf3lOn29jdtr66oU62gmbvEbiKPC5/94Fw4KyB39d
	D2MOYOf4nuNA6TtyCQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMps-0006lL-KT; Fri, 06 Mar 2020 23:56:56 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMpp-0006kt-MU
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 23:56:55 +0000
Received: by mail-qk1-x742.google.com with SMTP id u124so3993529qkh.13
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 15:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BrM0YfBfZZhsjiT0vG3ap6/F0sHCs8iAQrdzEAP8JwQ=;
 b=N0h1mDi0m7Oh/tsh+u+uohaGT5g18dE2Znkp+5Z08cp348+1S7hLNRUXtQK2TydMIU
 +6BYtKoJ8UGI2dOTbKplsV8wjyvKKcN//+PUXSzWUOZv+iFXN9KzoaMlsO2l9nDu2pZr
 tYHnt9Amnf/oqDAYjifbM6pLpJp1txUpEJqRAuiC15sk8tvY3cjFYDrCuqTqvSfodLhW
 V9/9mN9cYnAX7LFaPC4bytS2lbueS+IJWcORTmRsbP9wQvPWPpaAaDjBV8yTSl5/ukC8
 GMfUH5MUDJDeJa8kGvFUuCkrVwK1/wCoMq+EJNGtrroxYJEz9k/iK8uAmZSYNGD06f9D
 y1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BrM0YfBfZZhsjiT0vG3ap6/F0sHCs8iAQrdzEAP8JwQ=;
 b=QU3133Dl1NeEOJnaTmYptAcBxV+MBJTK1qWJwR/yLXo8rUnObNV3Qh+/8aBKWNu/bb
 jPC808jrShBJnOjmwlg/giAnMGrQN5reTS19SlF0yN0WNpg2MLeSs5jOw5YgRV4Vfbpk
 6v+3L8gF7ERtOz7shc7sQ6ihzF0JlAZsGaT41IfrAwsFqpvHsIqxiyFBz9w/kqBjT6Mm
 1woRTsqbRxiruyeI+MUXF+PYfZmqN7C1AftKid6O5A1fNA8TO06Rc55Pe/RYjKTVs5z0
 a7/wdcpypEnMXRUwpXWbTDgmVEDjdc4OY7tKZjblBoy2AWk3kIAp2JVEA0TL+/8vvERH
 h/Sg==
X-Gm-Message-State: ANhLgQ3Q1eoycSRbLqdvcJyXM/S/W+28Wsao9M9/vy8r7ibAjiDzvu2j
 4DglrVJCFfOmvYy9c6ibdkM=
X-Google-Smtp-Source: ADFU+vv00Ddztq6Y2aWU/2W6ZwKexKyujr0o6AJnH7OAYvVOqNnkPAD5vzkcxi56DwysXv+8omEnHQ==
X-Received: by 2002:a37:5044:: with SMTP id e65mr5154086qkb.294.1583539012170; 
 Fri, 06 Mar 2020 15:56:52 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id d1sm18117006qkj.29.2020.03.06.15.56.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 15:56:51 -0800 (PST)
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <8dd085fe-6c96-e31f-4962-d204594211a1@gmail.com>
Date: Fri, 6 Mar 2020 18:56:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_155653_761928_89C51DA6 
X-CRM114-Status: GOOD (  28.26  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/5/20 12:14 AM, Damien Le Moal wrote:
> On 2020/03/05 13:58, Anup Patel wrote:
>>
>>
>>> -----Original Message-----
>>> From: Palmer Dabbelt <palmer@dabbelt.com>
>>> Sent: 05 March 2020 00:59
>>> To: Damien Le Moal <Damien.LeMoal@wdc.com>
>>> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
>>> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>
>>> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
>>>
>>> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:
>>>> Enable a kernel builtin dtb for boards not capable of providing a
>>>> device tree to the kernel.
>>>
>>> I'd prefer if we picked a mechanism that allows a single kernel binar=
y to be
>>> run on multiple systems.  I think there's two use cases here:
>>
>> I strongly support "single kernel binary for multiple systems" but it'=
s for
>> different purpose here.
>>
>>>
>>> * Bootloaders that provide no DTB at all.
>>> * Bootloaders that provied a DTB that, for some reason, isn't usable.=

>=20
> Sure, but as Anup mentions below, the current use case it to not even u=
se any
> bootloader at all for the K210 since that brings no value at all (in my=

> opinion). More on this below.
>=20
>>>
>>> Given those constraints, could we do something similar to the early f=
ixups?
>>> I'm thinking we could build a mapping between a hardware identifier a=
nd a
>>> DTB, then look up the DTB we want to use.  Users that want a kernel t=
hat
>>> only runs on a single device can do so by configuring only a single D=
TB, users
>>> that want a more portable kernel can select a bunch -- that's essenti=
ally the
>>> same as how we're treating everything else (for example, the
>>> CONFIG_SOC_* stuff).
>>
>> There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel=

>> boots directly. The BUILTIN_DTB is only applicable to cases where ther=
e is
>> no bootloader before kernel.
>>
>> The Linux RISC-V NOMMU will tend be used in cases where:
>> 1. There is no bootloader and kernel boots directly hence we need
>> builtin DTB feature.
>> 2. There is very less RAM so we will have to build kernel specific to
>> a particular platform with bare minimum drivers. Due to this, we will
>> have separate defconfig for NOMMU platforms.
>>
>> I think point1 can be tackled if we enforce having bootloader (such as=
 U-Boot)
>> for NOMMU systems and drop this patch.
>=20
> But that would go against point 2 as that will use more memory... By "d=
rop this
> patch", may be you meant to say "not use this config option" ?
>=20
>> For point2 above, we don't have much alternatives other than reducing
>> kernel binary size by disabling unwanted drivers.
>=20
> And not using a boot loader. Sean got U-boot working with Kendryte, so =
it is not
> that we cannot make it work. It is only that it may be less optimal due=
 to the
> memory used by the boot loader itself. Unless we can recover it if the =
kernel
> relocate itself over it ? Surely doable, but it does sound to me like a=
n
> overkill for this particular use case, i.e. a tiny, hyper-embedded boar=
d where
> running Linux is probably not the best choice in the first place, at le=
ast when
> looking at real applications. The story is different for "hobbyist" lev=
el. My
> on-going 6 DoF robotic arm project controlled with Linux on K210 is a v=
alid use
> case after all :)

At the moment there is not too much reason to use a bootloader outside
of helping debugging/experimenting. I would like to get support to where
one can boot off the MMC slot, or perhaps over the network via the ESP32
chip on some boards. This is something that the built-in firmware cannot
do.

>>>
>>> For the hardware ID, could we do something like:
>>>
>>> * Check for the top-level DT compatible string, on systems where we h=
ave a
>>>   provided DTB.
>>> * Check for a matching mimpid/marchid/mvendorid tuple, maybe with som=
e
>>> sort of
>>>   masking functionality if we later need one.  These are availiable v=
ia SBI
>>>   calls, but I'd be inclined to restrict them to M-mode boot and just=
 say the
>>>   SBI must provide a device tree with at least a suitable compatible =
string.
>>>
>>> While I suppose we could put together a tool for generating these tab=
les, for
>>> now we could probably just stick the mappings in a table for now give=
n that
>>> there's only one of them.
>>>
>>> That said, I'm not sure what to do about the different Kendryte board=
s -- is
>>> there any way to poke the hardware to see which is which?
>>
>> I am sure there are two three different boards out there. Don't know e=
xact
>> differences between these boards.
>=20
> As far as I can tell, all the boards use the exact same SoC. No differe=
nces that
> I can detect nor aware of. What differs between the different flavors o=
f boards
> are the perypherals attached: some have WiFi, different LCDs and differ=
ent
> cameras. The device tree is able to describe that of course, but the co=
re dtsi
> part for the SoC itself seem to be OK at least for the 4 different boar=
ds I have
> (Kendryte KD233, Sipeed MAIXDUINO, MAIX Go and Dan Dock).

Yeah, as far as I can tell the only difference is in peripherals.
Perhaps there are some differences in the firmware? There are some
hardware descriptions at 0x88001C00 and up, but they only describe the
SoC. We could try and compare dumps of the firmware. I currently have a
Maix BitM and a Maixduino.

--Sean


