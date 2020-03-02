Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CD6175325
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:25:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZRA37XNhyj1oxZ8flvmio3RSKzcsdvLXP8+EamAaYE=; b=tMb0T+ML2ef7WP
	l/q1hnTU3k4+GsF/ToNqNY68KLtXwlNHQsL/PAFDDKHSrQ5oSCGFeUqLTHIF9cZFY3qYnlYlxPoBT
	fsZ5aDXMx2mCU/6eVfwpGGVCrNR7Yw531ODdKaVtL6QTM7Zg3KR/BfHB42DUQrn9kL0ncSGxS95gg
	SzxbCMz35mLh7Y/dMeI++DnnHBAnFSJh20MIOPWmKMnmO3rorCDKnp06hcKHFZIfYR1ye0LlBQFeq
	np3TU8cTSjI0LFtdS6xzqtfgt5uZgt6XA7KxTnKftC+Ot7Rokg8iTCgKlQBAncHR0VAwVde4atDky
	ACjkrhT4bHH9H6zvB+Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dZn-0000Qg-4Y; Mon, 02 Mar 2020 05:25:11 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8dZj-0008Ul-8O
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:25:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id e20so6693763qto.5
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 21:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rZRA37XNhyj1oxZ8flvmio3RSKzcsdvLXP8+EamAaYE=;
 b=pI4Dq+Op8lqRAKgLDrLfdcd28m1emGchO//Yfj3gqhHQJqw3e1u8o5U3gPMos+X81D
 61szr5ZGsZEaPMIaUthXb/Z1LoVlNQhibvSssUpvKhO1UvgsN0Uao4U22oWra3acdR2e
 864+O9+C0EPHdeDXJa82CY2snHjQKAZRI4EfbIxNsdPgdG7pU+w8UNlLvSb8tbL+iORv
 tsut5XTAUeXstTrtr+VCLUGe1o4hES0wWPHUP7OgpYBtzeHdMN1a6eJDrvE7ShD4XEGK
 4DZ53N6qm3XAtXHq50SpkLp6c7d2cpBhxoIiNTlUJ2En45FH/dAIeuOG1QTqnbbfw7tY
 2lOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rZRA37XNhyj1oxZ8flvmio3RSKzcsdvLXP8+EamAaYE=;
 b=Jvuegu5wKmD7Th2bBxRwQm9qKHtx8v+N+FF9TyIGyMx1R8huUh1LL26h+QYu1aEhhe
 v0UyKcAjNoUgSirqCUvnGgfvVSBvaboBx5OXbBdbR3pkvjqTXzdGEhz71BthPm8TkBoc
 fhWOOLNux8E7gLEyW1R1/utrF/f6FuVPR+WTO3VnWKscACP5EyC00w7rCeygEI4ddcgf
 CO+stAIDkiGpGcT33wwBT/EiMWif8FNA9dlHBW3bt2iWM3nkjj3M1rB/OOMuIY5P7iCB
 WDqsxe9finnh2K/jcUDXwSchSMNpVnmfqieyqoxph7iekjQ+UL2ZirRqv0zBT3CRv9kE
 WQgg==
X-Gm-Message-State: APjAAAX56Y1RQYV8ffWd0anOjCOB22GIgByZrT3Zh/NVp61jhDM4tw7D
 E79WQat2kAXEFVvLuSq5+gmDivQZ36k=
X-Google-Smtp-Source: APXvYqwpNd5AiBg3UdCz4CHFxw93WwI4PDZgzBg5N4bIX2BS2fSBTpmJjyrJaBeFg+ISjXDU5WcDPg==
X-Received: by 2002:ac8:7155:: with SMTP id h21mr13433999qtp.95.1583126705818; 
 Sun, 01 Mar 2020 21:25:05 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id h193sm9728421qke.17.2020.03.01.21.25.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 21:25:05 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <anup@brainfault.org>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
 <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <b8aa9598-a34d-fa8c-01e7-3b7fc06d635a@gmail.com>
 <BYAPR04MB58168C0C89145F91AE8E964FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <ec249e00-26a2-b882-92bf-33462b15975f@gmail.com>
Date: Mon, 2 Mar 2020 00:25:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB58168C0C89145F91AE8E964FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_212507_332251_46663BA0 
X-CRM114-Status: GOOD (  25.76  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/2/20 12:11 AM, Damien Le Moal wrote:
> On 2020/03/02 14:02, Sean Anderson wrote:
>> On 3/1/20 11:48 PM, Damien Le Moal wrote:
>>> On 2020/03/02 13:17, Anup Patel wrote:
>>>> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wro=
te:
>>>>>
>>>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:
>>>>>> On 2020/02/29 5:32, Sean Anderson wrote:
>>>>>>> Hi,
>>>>>>>
>>>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to=
 the
>>>>>>> second cpu not coming up?
>>>>>>
>>>>>> Unlikely. It looks like your user space needs 2MB per shell (order=
 9
>>>>>> allocation). Since you have only 5.5MB free, that may explain the =
allocation
>>>>>> failure (if init is forking another shell especially).
>>>>>
>>>>> This should be before init comes up; when comparing this to your sy=
slog
>>>>> output there are several more messages before init gets started.
>>>>>
>>>>>> For the second core not coming up, an IPI needs to be sent to the =
non-boot core
>>>>>> to wake it up. A Kendryte thing. U-boot should probably do it befo=
re jumping to
>>>>>> the kernel. I thought I had that in the kernel though. Will check =
again.
>>>>>
>>>>> I think it's a RISC-V thing. I should have U-Boot set up to start l=
inux
>>>>> on both cores, but something may be misconfigured on that end.
>>>>
>>>> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to=

>>>> Linux NOMMU.
>>>>
>>>> Based on you log, it seems the second CPU is still spinning in U-Boo=
t
>>>> M-mode and when Linux NOMMU tries to touch memory where second
>>>> CPU is spinning everything gets corrupted.
>>>
>>> Yes, I understand. But in the case of the K210, that last 2MB segment=
 is really
>>> special as by default it is not usable as regular SRAM. I think it ma=
y be better
>>> to reflect that in the device tree. The K210 soc_early_init() call ba=
ck can
>>> probe for that special entry too to see if it has to be turned on for=
 use as
>>> regular memory or not (i.e. if a kpu driver will use it).
>>>
>>> Since booting Linux with 6MB of memory will be even more challenging =
than with
>>> 8, I agree that we may never see the case of a kpu driver being used.=
 But I
>>> personally like making that special case clear in the device tree. No=
 strong
>>> objection to your simplification though. So if you really object, I w=
ill go with it.
>>
>> The way I have it set up is like this
>>
>>
>> 	sram0: memory@80000000 {
>> 		device_type =3D "memory";
>> 		compatible =3D "kendryte,k210-sram";
>> 		reg =3D <0x80000000 0x400000>;
>> 		clocks =3D <&sysclk K210_CLK_SRAM0>;
>> 	};
>>
>> 	sram1: memory@80400000 {
>> 		device_type =3D "memory";
>> 		reg =3D <0x80400000 0x200000>;
>> 		compatible =3D "kendryte,k210-sram";
>> 		clocks =3D <&sysclk K210_CLK_SRAM1>;
>> 	};
>>
>> 	airam: memory@80600000 {
>> 		device_type =3D "memory";
>> 		reg =3D <0x80600000 0x200000>;
>> 		compatible =3D "kendryte,k210-airam";
>> 		clocks =3D <&sysclk K210_CLK_AI>;
>> 	};
>>
>> 	reserved-memory {
>> 		#address-cells =3D <1>;
>> 		#size-cells =3D <1>;
>> 		ranges;
>>
>> 		ai_reserved: ai@80600000 {
>> 			reg =3D <0x80600000 0x200000>;
>> 			reusable;
>> 		};
>> 	};>
>> And then the kpu has 'memory-region =3D <&ai_reserved>;'. This way the=

>> memory is documented as being used by the kpu, but also free when the
>> KPU is not in use.
>=20
> I tried to use your syntax above initially but (if I remember correctly=
), the
> "reserved-memory" entry prevents the initial ram setup to add the kpu s=
egment,
> so you can never see it as regular memory. So I dropped that and that m=
emory is
> usable with the v1 of the series I sent. The soc_early_init() enables i=
t by
> turning on pll1.

This seems like it could be fixed by writing a dummy driver for the KPU
which does nothing but release the memory region.

>=20
>>
>> However, I have been unable to get the AI ram to work; any time I
>> access it the CPU hangs. I have tried all combinations of
>>
>> * Enabling/disabling the AI clock
>> * Enabling/disabling PLL1 (the AI clock's parent) but not the AI clock=

>> * Asserting/deasserting the KPU reset
>>
>> but I have not been able to get it working. Have you had any luck?
>=20
> See k210_soc_early_init() in drivers/soc/kendryte/k210-sysctl.c. That w=
orks.
> You did already point out the clock initialization that is not enough a=
nd
> working only because most of the values are the default. Maybe U-boot i=
s
> changing some of them resulting in the worng clock frequencies being se=
t in the
> kernel ?

My current clock setup when booted looks like

=3D> clk dump=20
 Rate               Id        Usecnt      Name
----------------------------------------------------
 26000000             0         2        |-- osc
 780000000            1         1        |   |-- pll0
 390000000            0         2        |   |   `-- pll0_half
 390000000           42         6        |   |       |-- aclk
 390000000            5         1        |   |       |   |-- sram0
 390000000            6         1        |   |       |   |-- sram1
 195000000           10         0        |   |       |   |-- rom
 390000000           13         0        |   |       |   |-- dvp
 195000000            7         2        |   |       |   |-- apb0
 195000000           15         0        |   |       |   |   |-- gpio
 195000000           29         0        |   |       |   |   |-- uart1
 195000000           30         0        |   |       |   |   |-- uart2
 195000000           31         0        |   |       |   |   |-- uart3
 195000000           33         1        |   |       |   |   |-- fpioa
 195000000           39         0        |   |       |   |   `-- sha
 195000000            8         1        |   |       |   |-- apb1
 195000000           32         0        |   |       |   |   |-- aes
 195000000           40         0        |   |       |   |   `-- otp
 195000000            9         1        |   |       |   |-- apb2
 390000000            4         2        |   |       |   |-- cpu
 390000000           11         0        |   |       |   |-- dma
 390000000           14         0        |   |       |   `-- fft
 97500000            19         0        |   |       |-- spi3
 390000000           34         0        |   |       |-- timer0
 390000000           35         0        |   |       |-- timer1
 390000000           36         0        |   |       |-- timer2
 390000000           16         0        |   |       |-- spi0
 390000000           17         1        |   |       |-- spi1
 390000000           18         0        |   |       |-- spi2
 390000000           26         0        |   |       |-- i2c0
 390000000           27         0        |   |       |-- i2c1
 390000000           28         0        |   |       `-- i2c2
 299000000            2         1        |   |-- pll1
 299000000           12         1        |   |   `-- ai
 0                    3         0        |   |-- pll2
 0                    0         0        |   |   `-- pll2_half
 0                   20         0        |   |       |-- i2s0
 0                   21         0        |   |       |-- i2s1
 0                   22         0        |   |       |-- i2s2
 0                   23         0        |   |       |-- i2s0_m
 0                   24         0        |   |       |-- i2s1_m
 0                   25         0        |   |       `-- i2s2_m
 13000000             0         0        |   |-- in0_half
 13000000            37         0        |   |   |-- wdt0
 13000000            38         0        |   |   `-- wdt1
 26000000            41         0        |   `-- rtc

Perhaps I need PLL1 enabled but *not* AI. Alternatively, I have PLL1 set
to the default rate of 299 MHz. It could be a clock domain problem.

>>
>> There's also the issue that all DMAs should happen from the uncached
>> memory area, but I think there is some existing infrastructure to
>> "translate" IO addresses, so this doesn't need to be added to the devi=
ce
>> tree.
>>
>> --Sean
>>
>>
>=20
>=20



