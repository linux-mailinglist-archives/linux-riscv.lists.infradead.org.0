Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2095017C99A
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 01:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0Dd5sxkOdM61ojDYc54Y/+Kqlx4NJ8aEVs+xait3og=; b=ojbFuP60lf3Zz0
	pGJafZgC/HPmTDWf/2OE4v22NVxlHJRQqgBV++7GK8sk7veRwWmthPXzwCKVNn9zjW0Qw3adgkR01
	66pMHQgARtiLdh5WEHHcNOFE1Pk4bF7U5ds2PqHC61vdO3Ya3ErCH/CqR2gOaDISnckMctNl+nrcm
	i20Ng+BjPblICpPVU5qXNLTt3L0BxSnmpw78RX/Nc27H6ifmcZcIHX54kQHKblvN3X+t6qiDoP5S+
	AJYA66SbBSVgp+oMsm9WP9YiNItMnL0aGdoavLRCRcXW+ENgHc6gnbdZn20dsJ5XibMdLfmYN/vZh
	jek7515XaolO6Nq0W1dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANAz-0006lj-J6; Sat, 07 Mar 2020 00:18:45 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANAv-0006l8-RY
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 00:18:43 +0000
Received: by mail-qt1-x844.google.com with SMTP id e20so3101838qto.5
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 16:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W0Dd5sxkOdM61ojDYc54Y/+Kqlx4NJ8aEVs+xait3og=;
 b=aUAX0IajeEQhDjYh/xIBSRhWX/AGRfe7q+yF8DlpmArmTYqY1MOUjCqdFiXLF/4Nfr
 pba9Q5cRV3vP9eYBHKojfMh8HIbR4rlOvJPVBbIBjlV2nCpqsALayRzOxW6b4dU5RaSJ
 ByW41CyS9uuYTmNj13RU7i7MFmNUVbNO5L5v6xwaA9fEwfHKHdu+/e+PI4d1eTWaMJo7
 1zgzRL0QXpsosYoRaoYgff0V+gTI+fo66W0V0uUgwnSYsq1IfRePppATpehMH++4lL/T
 Jkfd6hPXtFPDkiiZ7J9o7018N35nTyT6j2UK03688ny+H++W+BJionq2p5+TMxg+A3/Y
 J/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=W0Dd5sxkOdM61ojDYc54Y/+Kqlx4NJ8aEVs+xait3og=;
 b=g6g6rH4vNpIbDJwrZFsxZ/6ikcRoQ9PTZA4rGbJEN0yx9ySs2ybVlma2Jb/M3Om3G0
 ipVJ29+xdYekBnYVVY5aGPkmF/sbxHDTokmCSRI1n+xWx6k5h3LHiU7U42vWJGQ8Hb38
 AzoRpMjUqWG0bcW14wJBsEJN2wm7A4fhoKfUUj3THU59PDoGoH5p/6L6NhvccCm/oG4d
 pSmJBUef6wrTNou3QkR8HytxD01AXHcWbIVWyRy4kqsfXJRvvxGZurjACtD2mtJGk7c1
 LWLY5rST8PBqkRo0rmEzCDhL91gObAfTnlRKWuKSFQQm3e5T546UtYda9MMzxer9eGR7
 nejg==
X-Gm-Message-State: ANhLgQ3gUmvfSXt9wi4vqt0kdjstQxtdpfk8AD5MtnA579es9sLOBH/I
 L4Gp+hYyUG9a2Q0WFcAllo8LyDZ4hKA=
X-Google-Smtp-Source: ADFU+vvAqY4rntS5Djw3UdhyZbWr4OVUdJ3rjB7s3MtfxPxgOdfPe12LctyYIhk17ycLTG9Eeo0wtQ==
X-Received: by 2002:ac8:18f3:: with SMTP id o48mr4439874qtk.368.1583540319461; 
 Fri, 06 Mar 2020 16:18:39 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id r6sm6572726qkf.71.2020.03.06.16.18.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 16:18:38 -0800 (PST)
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <anup@brainfault.org>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <CAAhSdy2sP5L2ijtOC3wcYZVcf=0KfAobHzKC+CrAYLvmAO9cTg@mail.gmail.com>
 <BYAPR04MB581624CE07B742A7D1B1F53DE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAAhSdy0Owsfa6wGyBnHoOONN3uc93YwXpnGto_U5OE3tTwnGYw@mail.gmail.com>
 <BYAPR04MB5816A2497FA764FB145D350FE7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAAhSdy2eGOifb6Ov6hfy=-QsjvFCKgZqqX1tiq1Z=wFrLpz9CA@mail.gmail.com>
 <BYAPR04MB58160D1A2B74D22332E498C1E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <c8197767-c76a-efc2-1fe2-250840bee605@gmail.com>
Date: Fri, 6 Mar 2020 19:18:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB58160D1A2B74D22332E498C1E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_161841_894551_58EF58C0 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/2/20 12:08 AM, Damien Le Moal wrote:
> On 2020/03/02 14:05, Anup Patel wrote:
>> On Mon, Mar 2, 2020 at 10:21 AM Damien Le Moal <Damien.LeMoal@wdc.com>=
 wrote:
>>>
>>> On 2020/03/02 13:22, Anup Patel wrote:
>>>> On Mon, Mar 2, 2020 at 9:46 AM Damien Le Moal <Damien.LeMoal@wdc.com=
> wrote:
>>>>>
>>>>> On 2020/03/02 13:07, Anup Patel wrote:
>>>>> [...]
>>>>>>> +       sram0: memory@80000000 {
>>>>>>> +               device_type =3D "memory";
>>>>>>> +               reg =3D <0x80000000 0x400000>;
>>>>>>> +       };
>>>>>>> +
>>>>>>> +       sram1: memory@80400000 {
>>>>>>> +               device_type =3D "memory";
>>>>>>> +               reg =3D <0x80400000 0x200000>;
>>>>>>> +       };
>>>>>>> +
>>>>>>> +       kpu_sram: memory@80600000 {
>>>>>>> +               device_type =3D "memory";
>>>>>>> +               reg =3D <0x80600000 0x200000>;
>>>>>>> +       };
>>>>>>
>>>>>> No need to have separate DT node for each RAM bank. This can be
>>>>>> express as single DT node as follows:
>>>>>>
>>>>>> sram: memory@80000000 {
>>>>>>         device_type =3D "memory";
>>>>>>         reg =3D <0x80000000 0x400000>,
>>>>>>                   <0x80400000 0x200000>,
>>>>>>                   <0x80600000 0x200000>;
>>>>>> };
>>>>>
>>>>> This is to match the U-boot device tree that Sean wrote. So I would=
 rather keep
>>>>> it like this. And strictly speaking, if one wants to add a driver f=
or the KPU,
>>>>> having the kpu memory segment for it separate makes it easy to refe=
rence it from
>>>>> a kpu device entry. But granted, the two sram segments can be decla=
red with a
>>>>> single memory entry.

There is no clear documentation on how to do this, so I have been mostly
just trying things until they work. In U-Boot, separate memory device
nodes are treated as different "banks".

>>>>
>>>> But, that's not the preferred way of describing memory banks on the
>>>> same machine.
>>>> Usually, we create multiple memory DT nodes for NUMA systems.
>>>>
>>>> You can also refer various ARM/ARM64 DTS files.
>>>
>>> Oops... Sent an answer to this to the wrong email... Here it is again=
:
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
>>>
>>
>> I understand that it is helping you to distinguish last 2MB segment bu=
t this is
>> also possible using with single memory DT node as follows:
>>
>> sram: memory@80000000 {
>>         device_type =3D "memory";
>>         reg =3D <0x80000000 0x400000>,
>>                   <0x80400000 0x200000>,
>>                   <0x80600000 0x200000>;
>>         reg-names =3D "sram0", "sram1", "kpu_sram";
>> };
>=20
> Nice trick. I did not know about it. Will use that then !
>>
>> The K210 soc_early_init() can do the following:
>> 1. Find memory DT node having device_type =3D "memory"
>> 2. Find bank number for "kpu_sram" based on "reg-names DT property
>> 3. Get based address of KPU SRAM from "reg" property based on bank
>> number found in step2 above.
>>
>> The reg-names is a standard DT property used to distinguish multiple
>> memory regions of device. Same can be used to distinguish multiple
>> banks of memory DT node.
>>
>> I am not adamant on having single memory DT node but just wanted
>> to let you know that this is not a preferred way for non-NUMA system.

Anup, do you have any suggestions on how to describe clocks for each
bank? I think the kpu sram may need some clock manipulation to work
properly. Perhaps something like

sram: memory@80000000 {
	device_type =3D "memory";
	reg =3D <0x80000000 0x400000>,
	      <0x80400000 0x200000>,
	      <0x80600000 0x200000>;
	reg-names =3D "sram0", "sram1", "kpu_sram";
	clocks =3D <&sysclk K210_CLK_SRAM0>,
		 <&sysclk K210_CLK_SRAM1>,
		 <&sysclk K210_CLK_PLL1>;
	clock-names =3D "sram0", "sram1", "kpu";
};

--Sean


