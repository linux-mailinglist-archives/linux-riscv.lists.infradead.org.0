Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F491752F2
	for <lists+linux-riscv@lfdr.de>; Mon,  2 Mar 2020 06:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OaHRZDHnLfF5b7ozqj3dKptl+sOqLu1ssmVdj5eHkQ=; b=e+nsFZuBIZd+Zu
	L6CLR8VVkmrr6ve5lNQ+s9/LvE4bLWgyaZ/BGQlTsUBbrPt/uoNjYcWw4H9xuhaue8/0utg7T4RNG
	3BwYbMbb5fl/fSpe2OWBDh3i2zPPOZDijAKhCeoGop7SA1uwTfhQICiwj0fZekgNgSYYUysxlAdlx
	UWjViQ4qULiGFI2F7QO5Dpbo4GKDW2fY5f1BhBVRicryzykwjlO4uXmQjJQNsAeEtjFeQuncfmosf
	/LDt0UWUBlf80fmyLE0c1BhFWR4QNkoWDYUhOfbFjRwv/Q7q0oCv8bfYwCQ3gh02G40F1qaR5Dau6
	gwhxdfToAzPlmL+yQcLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8dDY-0000Ob-C6; Mon, 02 Mar 2020 05:02:12 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8dDV-0000O6-9u
 for linux-riscv@lists.infradead.org; Mon, 02 Mar 2020 05:02:10 +0000
Received: by mail-qk1-x744.google.com with SMTP id e16so8891964qkl.6
 for <linux-riscv@lists.infradead.org>; Sun, 01 Mar 2020 21:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/OaHRZDHnLfF5b7ozqj3dKptl+sOqLu1ssmVdj5eHkQ=;
 b=TIJJ/APd2NVj+XcvgCPmLgev8G5+u6YOj40eOjkEjMFIIIaVT9/L7AzblU3xb9ECwO
 4NMVoNOJc/BTolisR5R2rJKldWZydqHJkxoGckB76bRxccGdlARLkVZ2MdEA/Z7+L2pE
 jDOR4y8AorbchXfVr5BjBF7qV6LCzwak9WnPSX+zaY0f53QFg4/KAHswA4uLAxO0kkDE
 iWkuVpdBDYyBbRdrArAHCfSnpINKU3cNVcRH1FIvTWQR1IktFqGu/yfoPBBh+8YJ1ZHl
 xESORxlQWzZyzS35H30iUEF/eL/tIvnn5ixeV/h7cp6zYfqJ+20jpSdoOh1rIilQwJAv
 ObXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/OaHRZDHnLfF5b7ozqj3dKptl+sOqLu1ssmVdj5eHkQ=;
 b=hscG0+fb1OGcw9/CsMFZYCpHRJ00Y5qM3f0p/2BgW43+ry9/7NBTnpg2NXbAYmEntE
 eWea9i4temPBX2AoSgMCXmlQBm/hq+tBKb8KZNG58LZWjBMEUHpMI4+bzU+I6x3MNT+v
 yx+Ojf2CG1oirsExruADf7f2UH0hITChv8myrLarsgqxunVRJBpxZNXdQZzEceyqYZCC
 tXbTLwYnmjSRYqL0ofC4m+kbebmRR1cOJWIus6WUVOV0uT6QdT1Jb5XB1Btjl9FXqrl6
 k+Wvhi3dLs5Bhxf/PWUTHH/0ujU2VVsakPrUsCURPs0DP2+Z3hZ5my0Wr21KxAP5j5gu
 H/HQ==
X-Gm-Message-State: ANhLgQ2RG1R/tWaPuxG3ooMO777y6kdIfN5McaktSH6z8bLnEdkgF20D
 40/LC/n1k9+sEfhS4aI2xs8=
X-Google-Smtp-Source: ADFU+vu1ytixA9qJJ8DhdPnpOikwnuxkjVDp1iDzwja5z7ZZ3QhPz0IY0WYzawWRyK0TdRSb3XtZEw==
X-Received: by 2002:a37:b86:: with SMTP id 128mr7288418qkl.154.1583125326825; 
 Sun, 01 Mar 2020 21:02:06 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id t8sm1533640qtp.92.2020.03.01.21.02.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 01 Mar 2020 21:02:06 -0800 (PST)
Subject: Re: [PATCH 00/10] Kendryte k210 SoC boards support
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Anup Patel <anup@brainfault.org>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <5be71201-962c-5db6-c330-f30a770c4034@gmail.com>
 <BYAPR04MB581679CF61DF51E1588D7960E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
 <789d9de4-8b76-19ff-15bc-eaef6d274173@gmail.com>
 <CAAhSdy3+WU31NtXyrYmfSRhhD2k1Rv8tk2pLe+ESYTpj=+LnGA@mail.gmail.com>
 <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <b8aa9598-a34d-fa8c-01e7-3b7fc06d635a@gmail.com>
Date: Mon, 2 Mar 2020 00:02:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5816CE3D4606B81DFCA1D627E7E70@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_210209_346613_EE16A5EB 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

On 3/1/20 11:48 PM, Damien Le Moal wrote:
> On 2020/03/02 13:17, Anup Patel wrote:
>> On Mon, Mar 2, 2020 at 9:23 AM Sean Anderson <seanga2@gmail.com> wrote=
:
>>>
>>> On 3/1/20 10:01 PM, Damien Le Moal wrote:
>>>> On 2020/02/29 5:32, Sean Anderson wrote:
>>>>> Hi,
>>>>>
>>>>> When booting from U-Boot I get an OOM. Perhaps this is related to t=
he
>>>>> second cpu not coming up?
>>>>
>>>> Unlikely. It looks like your user space needs 2MB per shell (order 9=

>>>> allocation). Since you have only 5.5MB free, that may explain the al=
location
>>>> failure (if init is forking another shell especially).
>>>
>>> This should be before init comes up; when comparing this to your sysl=
og
>>> output there are several more messages before init gets started.
>>>
>>>> For the second core not coming up, an IPI needs to be sent to the no=
n-boot core
>>>> to wake it up. A Kendryte thing. U-boot should probably do it before=
 jumping to
>>>> the kernel. I thought I had that in the kernel though. Will check ag=
ain.
>>>
>>> I think it's a RISC-V thing. I should have U-Boot set up to start lin=
ux
>>> on both cores, but something may be misconfigured on that end.
>>
>> You have to booti or bootm on U-Boot M-mode to make all CPUs jump to
>> Linux NOMMU.
>>
>> Based on you log, it seems the second CPU is still spinning in U-Boot
>> M-mode and when Linux NOMMU tries to touch memory where second
>> CPU is spinning everything gets corrupted.
>=20
> Yes, I understand. But in the case of the K210, that last 2MB segment i=
s really
> special as by default it is not usable as regular SRAM. I think it may =
be better
> to reflect that in the device tree. The K210 soc_early_init() call back=
 can
> probe for that special entry too to see if it has to be turned on for u=
se as
> regular memory or not (i.e. if a kpu driver will use it).
>=20
> Since booting Linux with 6MB of memory will be even more challenging th=
an with
> 8, I agree that we may never see the case of a kpu driver being used. B=
ut I
> personally like making that special case clear in the device tree. No s=
trong
> objection to your simplification though. So if you really object, I wil=
l go with it.

The way I have it set up is like this


	sram0: memory@80000000 {
		device_type =3D "memory";
		compatible =3D "kendryte,k210-sram";
		reg =3D <0x80000000 0x400000>;
		clocks =3D <&sysclk K210_CLK_SRAM0>;
	};

	sram1: memory@80400000 {
		device_type =3D "memory";
		reg =3D <0x80400000 0x200000>;
		compatible =3D "kendryte,k210-sram";
		clocks =3D <&sysclk K210_CLK_SRAM1>;
	};

	airam: memory@80600000 {
		device_type =3D "memory";
		reg =3D <0x80600000 0x200000>;
		compatible =3D "kendryte,k210-airam";
		clocks =3D <&sysclk K210_CLK_AI>;
	};

	reserved-memory {
		#address-cells =3D <1>;
		#size-cells =3D <1>;
		ranges;

		ai_reserved: ai@80600000 {
			reg =3D <0x80600000 0x200000>;
			reusable;
		};
	};

And then the kpu has 'memory-region =3D <&ai_reserved>;'. This way the
memory is documented as being used by the kpu, but also free when the
KPU is not in use.

However, I have been unable to get the AI ram to work; any time I
access it the CPU hangs. I have tried all combinations of

* Enabling/disabling the AI clock
* Enabling/disabling PLL1 (the AI clock's parent) but not the AI clock
* Asserting/deasserting the KPU reset

but I have not been able to get it working. Have you had any luck?

There's also the issue that all DMAs should happen from the uncached
memory area, but I think there is some existing infrastructure to
"translate" IO addresses, so this doesn't need to be added to the device
tree.

--Sean


