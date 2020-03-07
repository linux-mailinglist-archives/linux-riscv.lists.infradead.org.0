Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBB017C956
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 01:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGncVElcb2Fb9uU/utH0e8OAYnM4sVt4n6o1Kv0gaYw=; b=A5Epnx5gVMcijj
	QDG642nSL3D3VhAOAKJ99h8tK5SUBukhasRX745ApYkejIFPvX9HURiELS1n5ZFFRG9hXfK46vEHh
	WDqhR9dDOC+RObUWhhhqdzglnvjVhcrmx800CWBwEjO6SGXeKLeT/juF2EREaDzjxDsMS2zvKS/qU
	yArKc50XsYvhxaiK4GUimCrbYjMwy09EZo3QzDyPk8k1dEMEnw27962tEsiJqYBxOHzTzolKzNgr4
	rEVm3wf6HUN+eIPBswKcb5VwsQKnwf7okdZJ/rHbT/YEHk13SPZgE1COGLFkFxaEq8li3S4zKGWdI
	YeHguwoqwtR2zFAkV7EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMvU-0008ME-T0; Sat, 07 Mar 2020 00:02:44 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMvR-0008Li-91
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 00:02:42 +0000
Received: by mail-qk1-x742.google.com with SMTP id f198so4008408qke.11
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 16:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MGncVElcb2Fb9uU/utH0e8OAYnM4sVt4n6o1Kv0gaYw=;
 b=iBW24qak4biBsAn9TROoFc+yQ591pIq28rTCXiRjPNKymTToisPdkpLbwL2VkhkhUS
 53WQAY4W5MpWPV7IfDRcey24m0UbfTT/GBM3Q73hlFljwQprhnHgU4Vfh2gerT2HY7w1
 ho+KY2gY8lj0rZJkeHRNJtjJP1kZstV9Hl57riqPAOVZlDiQLCrvsKECSAtD++dfbduD
 ipqqBmoQ+xUnJ7PwhPoNQrG0qCA0TTskDygat4YFcwznUvxtFRUlYXFPo/jnYGffGv3G
 Qdtq1yitiGRNAE4Rwp1jbjqw2RQWq143Akx8A9idaOULgkFUBwewLTi9RpxAhtO51BU7
 0c5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=MGncVElcb2Fb9uU/utH0e8OAYnM4sVt4n6o1Kv0gaYw=;
 b=IW/6mnlsxXV0SZ29cqymtbne/o72K3RVQrpC39MLn64ZGnaZBb1nfiby37YIvaC7ZT
 EPqckCoKmilfIC+MFbUb/cwQqcuY/AFF2lnPe1j8EaBlUNl25XmQeVOlJ4ecFiW7LOW6
 nHPhSe3/XuyhQhDA8sp2rIVPzqTK1vYL6YnKUVooHKqGI2hKMSiQG85HcELolQp00/M8
 Hom7iLWyz/TzBmo7tI4Zuo1qtS4RuW2r1mAKgVtySUEvDgjn5op3s65kM3Qic4RipeHl
 GAlJi4NOE1rI1SxlWP5SJG84KZ/ypIERPtovzl5EdzPS6H7Blie2QdnG9nSEQDXoZ1+n
 /T3w==
X-Gm-Message-State: ANhLgQ1BUBjHpE0DBlQaJrz/j91e3Ax9aPgRJQaQyFMaOvxxmytCV74R
 aAwyd+L6P4BmI+jLcBnwEHFUcgNPxHs=
X-Google-Smtp-Source: ADFU+vuJII3CYpVJh7/uyQwbUDp5lYBSY8hGncR+KoLwFJe7SGz6Kalb3ap2yy+f+AcuaI7T32i3qA==
X-Received: by 2002:a37:9047:: with SMTP id s68mr5463868qkd.63.1583539360117; 
 Fri, 06 Mar 2020 16:02:40 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id n8sm18326135qke.37.2020.03.06.16.02.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Mar 2020 16:02:39 -0800 (PST)
Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
To: Atish Patra <atishp@atishpatra.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
References: <20200212103432.660256-5-damien.lemoal@wdc.com>
 <mhng-c45590f0-38f8-42db-a746-e9970c62e25d@palmerdabbelt-glaptop1>
 <MN2PR04MB6061D77B37B5BFD3851F661F8DE20@MN2PR04MB6061.namprd04.prod.outlook.com>
 <BYAPR04MB5816059C01B77CE5D7E02E40E7E20@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CAOnJCUJYcuvyHywV0vEzMcgUJaoUHfuLbWjp1bxDw2t-OJXOQw@mail.gmail.com>
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
Message-ID: <c84b632a-9372-fcbf-de3d-be016d36a970@gmail.com>
Date: Fri, 6 Mar 2020 19:02:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAOnJCUJYcuvyHywV0vEzMcgUJaoUHfuLbWjp1bxDw2t-OJXOQw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_160241_340695_F27AB82D 
X-CRM114-Status: GOOD (  25.25  )
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
 Anup Patel <Anup.Patel@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 3/5/20 3:18 AM, Atish Patra wrote:
> On Wed, Mar 4, 2020 at 9:14 PM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>>
>> On 2020/03/05 13:58, Anup Patel wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Palmer Dabbelt <palmer@dabbelt.com>
>>>> Sent: 05 March 2020 00:59
>>>> To: Damien Le Moal <Damien.LeMoal@wdc.com>
>>>> Cc: linux-riscv@lists.infradead.org; Paul Walmsley
>>>> <paul.walmsley@sifive.com>; Anup Patel <Anup.Patel@wdc.com>
>>>> Subject: Re: [PATCH 04/10] riscv: Add BUILTIN_DTB support
>>>>
>>>> On Wed, 12 Feb 2020 02:34:26 PST (-0800), Damien Le Moal wrote:
>>>>> Enable a kernel builtin dtb for boards not capable of providing a
>>>>> device tree to the kernel.
>>>>
>>>> I'd prefer if we picked a mechanism that allows a single kernel binary to be
>>>> run on multiple systems.  I think there's two use cases here:
>>>
>>> I strongly support "single kernel binary for multiple systems" but it's for
>>> different purpose here.
>>>
>>>>
>>>> * Bootloaders that provide no DTB at all.
>>>> * Bootloaders that provied a DTB that, for some reason, isn't usable.
>>
>> Sure, but as Anup mentions below, the current use case it to not even use any
>> bootloader at all for the K210 since that brings no value at all (in my
>> opinion). More on this below.
>>
>>>>
>>>> Given those constraints, could we do something similar to the early fixups?
>>>> I'm thinking we could build a mapping between a hardware identifier and a
>>>> DTB, then look up the DTB we want to use.  Users that want a kernel that
>>>> only runs on a single device can do so by configuring only a single DTB, users
>>>> that want a more portable kernel can select a bunch -- that's essentially the
>>>> same as how we're treating everything else (for example, the
>>>> CONFIG_SOC_* stuff).
>>>
>>> There is no bootloader on Kendryte K210. The Linux RISC-V NOMMU kernel
>>> boots directly. The BUILTIN_DTB is only applicable to cases where there is
>>> no bootloader before kernel.
>>>
>>> The Linux RISC-V NOMMU will tend be used in cases where:
>>> 1. There is no bootloader and kernel boots directly hence we need
>>> builtin DTB feature.
>>> 2. There is very less RAM so we will have to build kernel specific to
>>> a particular platform with bare minimum drivers. Due to this, we will
>>> have separate defconfig for NOMMU platforms.
>>>
>>> I think point1 can be tackled if we enforce having bootloader (such as U-Boot)
>>> for NOMMU systems and drop this patch.
>>
>> But that would go against point 2 as that will use more memory... By "drop this
>> patch", may be you meant to say "not use this config option" ?
>>
>>> For point2 above, we don't have much alternatives other than reducing
>>> kernel binary size by disabling unwanted drivers.
>>
>> And not using a boot loader. Sean got U-boot working with Kendryte, so it is not
>> that we cannot make it work. It is only that it may be less optimal due to the
>> memory used by the boot loader itself. Unless we can recover it if the kernel
>> relocate itself over it ? Surely doable, but it does sound to me like an
>> overkill for this particular use case, i.e. a tiny, hyper-embedded board where
>> running Linux is probably not the best choice in the first place, at least when
>> looking at real applications. The story is different for "hobbyist" level. My
>> on-going 6 DoF robotic arm project controlled with Linux on K210 is a valid use
>> case after all :)
>>
> 
> Just a thought: How about keeping the loader out of kernel as a
> separate project as a tinyloader ?
> That tinyloader project can host the DTB and pass it to kernel in a1
> register. This tinyloader can be used for
> any M-mode only platforms with memory constraints.  If platform has
> sufficient memory and supports U-boot, users can use that as well.
> That will allow single kernel image to boot all the platforms and we
> can mandate one booting protocol for all platforms.
> Otherwise, we have to specify different booting protocol for
> M-Mode/NoMMU linux and S-mode Linux.
> In future, there may be more platforms with Builtin DTB request as well.

Couldn't this sort of thing be done by SBI? OpenSBI currently has a port
for the K210. The only issue with SBI in general is that there is no way
to set the VM mode, since it is stored in mstatus and not satp on older
priv spec versions. There used to be a proposal related to this, but
they chose to change the location of the VM mode rather than have SBI or
some other bootloader set it. I think one of the ideas was for SBI to
set the mode based off the mmu-type property.

--Sean

