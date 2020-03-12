Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC2A183A5C
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 21:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BsjWLGneedsB+MEwFv0a7OCMyl4EcWykXahLDpm9SIA=; b=IPbjDoOqkJWnx+
	mkIWb2OzKtc+fVSzpRDaz94hjglzpzbO85/oY54nmKO7TVONvAArrMPC+kAz4HTNoohEWDhMcxBxe
	6WNLhnz+dbIn7uzhg54BpJ/PWWko+AIr+K1DFYENmYyh/GJAK94rVkv5RHJCr7x7+Hej7tiE4KIYn
	gXzrGBlzh1tOmGhYowyo6HI2j1DGucZQjbL8v++pcn/YsZ6/bjbTqtqC9IV/AUPEhfVQB+Wf0oBXN
	c9JlHu6K2e5hc52ZKcf/oLis+qE3NZ8mndJk4MB6nWeOrw+ezz0L7SPgciXnYw9yR4F8FwQMBp8JD
	M0s8icFFWyy4TWBZq+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCU9D-0006cY-TZ; Thu, 12 Mar 2020 20:09:39 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCU99-0006bl-Lm
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 20:09:37 +0000
Received: by mail-qt1-x843.google.com with SMTP id d22so5536449qtn.0
 for <linux-riscv@lists.infradead.org>; Thu, 12 Mar 2020 13:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BsjWLGneedsB+MEwFv0a7OCMyl4EcWykXahLDpm9SIA=;
 b=O0itTfXHZTL6Xh2T/dw34aMbWMpfG+/nue1s8qnRghjSQ4tlD+PtPqbKFFHbkAVUp7
 3dBiH3s/QTRQo3h0Orssp/aEJZDtZZhfpyigs8kG9FZb1Hy3pmznB+ZUtZlpeLZg3nfv
 p0zpEgv2h7Ft46lkelaTHpjuv9rojPTtlb5O7GzLB4E3ttXu38CDMxoXWRaT1S/2iPSr
 LmV6ZuJGSzrqCjTeyC6uWfcG2OqdQpdhRm2owPRXgbxSzncVVJ1flbeG0VLW3FyASBFr
 HmGf861gi7xgwONSaPz9hWLBBle2dij1eX7m4kaDN4gThWXpEwVktZFuyAO/rFeBAw6L
 D20Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BsjWLGneedsB+MEwFv0a7OCMyl4EcWykXahLDpm9SIA=;
 b=toiQgSuWsICECKp6+cCjV6OYFYC/lE1zi0TZoR9H4Fld+PMswcq3I9t1f8eDOPd5gz
 uJfmxYxfa+e/K56wad3NzuQ2/RLADpcvLmedkCjZNUqnT8dmRUagnB/LyqJDOGBt+HV0
 Bg/GMQNQvhmr+pNv8iRv5NjEy/QC9Wd5JrjRNxiGNdTHwy2JKZj1cFu5D5st5sf6YTiQ
 wZNWRB5rqzgcpJ2L3uVK5IHqsL1z25/cSUtF9vwbAGccmV+6nWCKQtAePusTlzwTThFi
 9wp051vzszzki6Ji/Lp8MaqbyA6sO3xiG8/Ma+EM4vahaXvYCsSNaA96wjjBgLEOgtZG
 upZQ==
X-Gm-Message-State: ANhLgQ2lLBoYQCrOuTE3LeI6k++W5RIPKgWHe9HG5NVz4cMNbCk5nL6o
 lRrTDgHbM9oBMudruW7S8gE=
X-Google-Smtp-Source: ADFU+vtTjZXZO5yBzV+ozFQHE6YNhdXaeC6gWGoutvbUYiiLXCZaHn17sqLjb9PtJ7UW3FwPtktMfA==
X-Received: by 2002:aed:2625:: with SMTP id z34mr3207282qtc.276.1584043773217; 
 Thu, 12 Mar 2020 13:09:33 -0700 (PDT)
Received: from [192.168.1.201] (pool-71-163-33-7.washdc.fios.verizon.net.
 [71.163.33.7]) by smtp.googlemail.com with ESMTPSA id
 x188sm18895881qka.53.2020.03.12.13.09.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Mar 2020 13:09:32 -0700 (PDT)
Subject: Re: [PATCH v2 9/9] riscv: Do not initialize PMP on Kendryte SoC
To: Atish Patra <atishp@atishpatra.org>
References: <20200312051107.1454880-1-damien.lemoal@wdc.com>
 <20200312051107.1454880-10-damien.lemoal@wdc.com>
 <47a2207d-6c16-b007-4c35-7c1a0649ecc0@gmail.com>
 <CAOnJCUJjLB2fwW+ZAKc9nixUeJJm7pg8KxuOkqF5pvY1c0nRsw@mail.gmail.com>
 <3e2ae3be-6269-acbd-6283-16c50cd119af@gmail.com>
 <CAOnJCUK15kiMohMoqfPUNE43Yq+BTW=kY4AHYjyKkdr9Htg-ug@mail.gmail.com>
 <e7835ca3-0754-8143-33cd-bac97878a0ad@gmail.com>
 <CAOnJCUK5bY8tbPLOCdTzzNMcy2yjK7rHL4jiM=0j=waBo1y-Pw@mail.gmail.com>
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
Message-ID: <f691a251-1317-1ee8-78dd-8103dd14b339@gmail.com>
Date: Thu, 12 Mar 2020 16:09:31 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAOnJCUK5bY8tbPLOCdTzzNMcy2yjK7rHL4jiM=0j=waBo1y-Pw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_130935_725118_886FCAB3 
X-CRM114-Status: GOOD (  22.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Palmer Dabbelt <palmer@dabbelt.com>, Damien Le Moal <Damien.LeMoal@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/12/20 3:12 PM, Atish Patra wrote:
> On Thu, Mar 12, 2020 at 11:49 AM Sean Anderson <seanga2@gmail.com> wrot=
e:
>>
>> On 3/12/20 2:29 PM, Atish Patra wrote:
>>> On Thu, Mar 12, 2020 at 11:14 AM Sean Anderson <seanga2@gmail.com> wr=
ote:
>>>>
>>>>
>>>>> I don't think supporting old specs in Linux is a good idea. As per =
the
>>>>> patch guideline
>>>>> for RISC-V Linux, patches for only "frozen" or "ratified"
>>>>> specifications are allowed.
>>>>>
>>>>
>>>> Well this CPU follows the v1.9 spec. It's real hardware, if it is to=
 be
>>>> be supported, then the 1.9 spec needs to be as well.
>>>>
>>>
>>> As RISC-V is an open ISA and it's continuously evolving, there will b=
e
>>> some hardware
>>> that will implement old specifications or non-backward compatible fea=
tures.
>>> I fear the number of hardware with such features/implementations will=

>>> grow in the future.
>>> If Linux is going to support all of them, it may be a maintenance nig=
htmare.
>>
>> I agree. There is also no standard way to communicate the implemented
>> privileged spec level e.g. in the device tree. The base integer
>> instruction set version can be specified in the riscv,isa property, su=
ch
>> as
>>
>> riscv,isa =3D "rv64i2p1..."
>>
>> However, there is no "extension" for the privileged specification.
>> A method to specify this would be helpful, especially since the
>> bootloader may need to enable the MMU before loading Linux since there=

>> is no way to enable it from S-mode until v1.10.
>>
>> On the other hand, there is relatively little changed from v1.9 to the=

>> current revision. The following list has the differences from the
>> current spec:
>>
>> * The PMP has flipped polarity
>> * The mcounteren CSRs are split
>> * sfence.vma is sfence.vm (though this should be handled by the sbi
>>   anyway)
>> * satp has a different name, and mode no longer exists in the top four=

>>   bits. Since these bits used to be part of ASID, it's fine to write t=
he
>>   mode to those bits. If linux never switches from (e.g.) sv39 to
>>   something else, there will be no observed difference either.
>>
>> Everything else is mostly forwards-compatible, as far as I can tell.
>> That is, assuming new behaviour on old hardware won't cause problems.
>>
> Even if the changes are minimal and we can easily hide under macro magi=
c,
> it will create a bad precedent for the future. What if somebody sends
> a patch for
> a non-standard extension and cites kendryte support as an example.

I think there are substantial differences between a non-standard
extension, and what we would need for the K210. First, the changes we
would need are for the official specification. At the time this chip was
designed, this was *the* authritative privileged spec. I think if a
hardware vendor makes the effort to comply with the specification as it
exists at the time, then we should support that.

In addition, the incompatibilities are within the core boot process.
Most non-standard extensions will be optional extras which can be
completely ignored. For example, the GAP8 processor has a non-standard
extension which adds some instructions for complex number arithmetic
(and other operations). These instructions have no effect on the usual
boot process, and (if there was an MMU) Linux could run fine on that
board with no knowledge of these extensions.

Lastly, these non-standard instructions can be documented in a standard
way through the isa version string. This incompatibility in the spec has
no standard way to be documented.

>> A sufficiently smart kernel could even detect the version at runtime b=
y
>> intentionally triggering behaviour which is illegal depending on the
>> privileged version, and then checking for an exception.
>>
> That's the maintenance nightmare I was talking about. For kendryte, it
> is only few incompatible changes
> in privilege specification but what if some hardware implements a
> variation of hypervisor spec or vector extension.

Hopefully that will not happen, but I think given the long development
period of the vector spec, it is inevitable that a chip will be released
with some subtle (or not-so-subtle) incompatibilities. As far as I can
tell, the restriction on non-ratified extensions is to prevent work
towards experimental specifications which may never have real hardware
which uses them. However, I think if real hardware is incompatible small
but fundamental way, then we should make the effort to support it,
especially when the patches already exist.

--Sean


