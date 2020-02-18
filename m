Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EECD162D64
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 18:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NucvjVCJOJ3FYE+VSk0mWgm7RJFUT0HFE1ddMkJMAeE=; b=XKBtuYwegk72a2
	S78XBsUpgTU5U8f5+eLtaZQQcU0pOYnIIz138M/RWenLMMUfgKGdrA7lqEiFxSu0Mi/zprWzap+Qd
	kf4O4dUXVYRXyvYKra8930JdjjbAuWvlWlil1iOqgLeXL8eDclidT/pOA45xHXlw1jo573TiXnMLm
	ynftp82ZuxhU8QyhxkDjwSZP4w6Avo+yaBG9o2I38Iy/yqSrFkptiJtuFrYdfFnBaQiRNfKMj9wCH
	Mj9NoPT31SIUdj9NrMfDJVgMzQfig8tyGRz+f3fsNYFtr8e+VIL13BNU8f08pCaf0ZKEDIgMQ8srS
	Fm5PVnF9lMh9RMB+D2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46zR-0004Lf-SE; Tue, 18 Feb 2020 17:48:57 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46zO-0004Ky-Ac
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 17:48:55 +0000
Received: by mail-qk1-x741.google.com with SMTP id p7so20333300qkh.10
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 09:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NucvjVCJOJ3FYE+VSk0mWgm7RJFUT0HFE1ddMkJMAeE=;
 b=aj8tuZ6PBEvVfC6Q7lvB/U305PEzHIloa2Ut/hpPkoaztGhTeJQWiUQpDF8A7ebSGD
 MdX9FGa84+IawqZZfrqJN4frexQKNXyWD4Yv6MHw63Y1Vj21w6lLmfHdrBucCdXpWRQN
 xyI4jtXpIXZ9sjQM2XB3+CqZQpww02eoE4mvnJmOUEH3pIGPNH78F/u0BMzeKGFB6f3I
 rF66Q7JUKD+DHmv2tU491588VkI651HmBfy0eANjhsiVt8lq7jTaTniW4KgXbDzbDJzh
 hF6xUGl7Elpebuurjl95i/CKCByc/tY0bnpjjJ/mZSIPQzgIWhf4it0L4Ya3kcCcuABi
 NC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NucvjVCJOJ3FYE+VSk0mWgm7RJFUT0HFE1ddMkJMAeE=;
 b=JfRHZ7GxS9Mn3tEh3niWfM6YJ347a78SfRjiQ96op2hjbm9xF/IGKd2R9k4hV689k3
 kF+dFVrq8BNwyq29W2NanOHwTITelHqI/8TJLvQ5NQJH0IL7ySlhtFuxuBkTAriFT1Hl
 u7b3x4rfGoIbL2kaBR+KhQa/s1OaXOPe9sLRmZ9xvlP3U+aS7pu1MG3vdcJa9CGHzFRw
 rsXTYF0LpUgfECpztodjaBoRpKQvVmu1/FdlmvYZkCNGO9vjAFcAY716lPsFk2HO2vF1
 9F7ul3XvcQ5aVOxAXFHz6m5jjUTIIi7EoeX+my2HcuGfuIfTvowVNhtu7dlwrTxNQw3b
 ly+Q==
X-Gm-Message-State: APjAAAUyMP3IehwxUa+J7QSH0jG8wJUFKVrjvx2D+O5wmQU2HfV2Ddv6
 TnASWOvgBKq9B6i3nhK400o=
X-Google-Smtp-Source: APXvYqxIq0/HlbSRyNEwX+kOxjPCYX4TJwCTs/dxeaAER8fVw9Ueb/+BJ8M6MkMqujbcoDlNB3bS4g==
X-Received: by 2002:a05:620a:1279:: with SMTP id
 b25mr18169455qkl.385.1582048133136; 
 Tue, 18 Feb 2020 09:48:53 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id w9sm2259583qka.71.2020.02.18.09.48.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 09:48:52 -0800 (PST)
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Carlos Eduardo de Paula <me@carlosedp.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
 <19e78a77-4b7f-a057-eb6e-7384f3fc67c1@gmail.com>
 <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
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
Message-ID: <8108cb8e-a909-24b0-f1c4-24a5bebf4e65@gmail.com>
Date: Tue, 18 Feb 2020 12:48:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CADnnUqfSq5sNXMQLktU0R_XLvYrf00nqMG5UPkTwaeL-Cy1m_A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_094854_395525_C06E8DB4 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "Wladimir J. van der Laan" <laanwj@gmail.com>, Anup Patel <Anup.Patel@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2/18/20 9:30 AM, Carlos Eduardo de Paula wrote:
> On Tue, Feb 18, 2020 at 11:18 AM Sean Anderson <seanga2@gmail.com> wrot=
e:
>>
>> On 2/18/20 9:12 AM, Carlos Eduardo de Paula wrote:
>>> Maybe it's a known thing but I found an MMU implementation here:
>>> https://gist.github.com/44670/0d8c152df7c5b59d17d469aba4dda0e5
>>
>> Yeah, that's part of the evidence which convinced me to research the v=
m
>> capabilities of the k210 after I saw Christoph's series was NOMMU.
>>
>>> Comes from as fork of the sdk here https://github.com/44670/libk9
>>> implementing also the LCD and other peripheral support.

So the LCD connector is supposed to be for a ST7789V controller, but
there doesn't appear to be a driver in Linux for it. I don't have an
appropriate LCD screen, so I will not be able to write a driver.

>>>
>>> Might help out adding support to it.
>>
>> Hmm, maybe. I've been wrangling a bit trying to get the SD card slot t=
o
>> work.
>>
>> --Sean
>=20
> Yes, I started looking at the SD card but had no clue on what needs to
> be done regarding GPIO - FPIO - SPI pre-reqs for it.

There is no need for GPIOs. The datasheet shows SPI0 as hooked up to the
SD card, but the default pinconf doesn't have it hooked up. In addition,
the dedicated SPI0 data lines are already connected to the LCD. For
these reasons, I decided to hook up SPI1 to the card slot. I have some
preliminary patches to add FPIOA support to u-boot. If you are
interested in my current progress, it is availible from [1]. This is not
a "stable" branch though, and I frequently rebase/force-push to it.

[1] https://github.com/Forty-Bot/u-boot/tree/maix_v6

> Wladimir (don't know his email) started playing with UART1 interface
> to the 8285 module to allow WiFi communication. We thought about
> having a TUN/TAP interface over it to bring the TCP/IP stack up.
> https://twitter.com/orionwl/status/1229442145628585990

Nice. I don't think too many raw register pokes should be needed,
because you are just using a uart to communicate...

--Sean


