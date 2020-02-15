Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E9215FC54
	for <lists+linux-riscv@lfdr.de>; Sat, 15 Feb 2020 03:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxUgIunWEMMBEmtyGmBtjuWtwcFy0QD4gglLtv/ZY1U=; b=W5pMM5elDVVEXa
	wlIiMNqsOc/NZT+xWIK/XqyTJIGEOcmzCxviGxe1KDO5ux5H+hk9NT3vy+CO/fydwmGCgaZYGMGJ/
	8HXKVYGkuzgBSad6ipjLckV4B+oSw0kkxyXfDB2GA+vbLuZKut7y82SWHWivxrKMTMyPCZ/hrIBV7
	mEv7D8K6iO1S4Jnyebu8iAsKQlfIxzJAugIvjB9Y0yNLMNHXD1bu7bYBqrlBzOKpFa5HQFrRZ6AmS
	1lr8NRHQwuyITU4yDB1mBL/KRGIwuVnWnf42vbxLSkT0YIY6rZusoc00dNGIvn3BGEx2kQHot7wyY
	ls1yet2I8djzY9wlqTKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2n9u-0007pC-O7; Sat, 15 Feb 2020 02:26:18 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2n9r-0007ot-Df
 for linux-riscv@lists.infradead.org; Sat, 15 Feb 2020 02:26:17 +0000
Received: by mail-qt1-x842.google.com with SMTP id v25so8314452qto.7
 for <linux-riscv@lists.infradead.org>; Fri, 14 Feb 2020 18:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XxUgIunWEMMBEmtyGmBtjuWtwcFy0QD4gglLtv/ZY1U=;
 b=fGo3rBLWM43sPtS/zhMzhNuSXUlNvaxk+YRxjJEKWKJtReJBCCYQLJzrZOeihZ3D/N
 Al6XScavhSaXMvyYnY/UNt3sjmUoVmGsTGBgIF5im07Ne1C7mTwEzLz51XS0YZGIR5r9
 NieMccUX6P5ivZmq6GuiXrkvqrvueisfoCJr9wt/LpRlZYnIUna30Hi8ElP47NxCmfJb
 61CzWAroYKAZ5zSw2b0sF4c/Q3LRYznh+UBk8xv5evs83RWmIgM3FmSnEvy7OWvk/0/6
 zLWtU2wPwp6lvv95n0UFNZ8XKl7TcPm7iN/l7E6yE35ZI0ue+5fgEcdCdPf29JM2dZSd
 vAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=XxUgIunWEMMBEmtyGmBtjuWtwcFy0QD4gglLtv/ZY1U=;
 b=fGTwyKYqPtw+g6cJnpOdlv7V7Rg9BVXsz8Sle/9IgCBghxUs9LFbVcpJpsUWpEYk7v
 W124KV2d+OjrvSzOQBoTTmvuRMbCx0RKGBZOHbGrW9LirsxMwA+ImRAOuSYY3Ckuz/78
 nFi622Cnw/fM77sUGPFK5+BJlhSGyr8WZO4a7QeDI13FehQTJFerKYPRRUnCGU0z3EJD
 eoobKHNqcVQkxBRSJhE4IkRPV75XFv9NXH1xVPxTzEX1Wntt6mDCu23fbxhhPn/VOr2M
 FjhwpXAqRiXjLtKqVTgNQoP8LwBw8SZIb5WvE0riy2Poa2rBXl/0cmqbrEDOA2xCV/HF
 boxw==
X-Gm-Message-State: APjAAAVivOOl5FfHZX9dWMuNQthTiM3OxUkMdbc0gSxpWavc4f7OaYF6
 E7cjNebUMLQq0nyDcsqF5wQ=
X-Google-Smtp-Source: APXvYqxlisYd0G71H00sCJJS+TxuMJVDnPhUTtGd1Nect9Wifcy08MubKhgYM0y6VSPvD9D+vgG0Cw==
X-Received: by 2002:ac8:4e89:: with SMTP id 9mr4979577qtp.82.1581733573670;
 Fri, 14 Feb 2020 18:26:13 -0800 (PST)
Received: from [192.168.1.117] ([75.102.135.197])
 by smtp.googlemail.com with ESMTPSA id o55sm4686347qtf.46.2020.02.14.18.26.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 18:26:13 -0800 (PST)
Subject: Re: [PATCH 02/10] riscv: Force flat memory model with no-mmu
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-3-damien.lemoal@wdc.com>
 <05106cc4-3d79-7288-cd1f-0c996e5b1657@gmail.com>
 <BYAPR04MB58169D9654E97130A3CFD9BAE7140@BYAPR04MB5816.namprd04.prod.outlook.com>
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
Message-ID: <cb38129d-ceb8-4eb0-6bbb-a9c825478410@gmail.com>
Date: Fri, 14 Feb 2020 21:26:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB58169D9654E97130A3CFD9BAE7140@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_182615_544164_6DC9A230 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [seanga2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 2/14/20 9:15 PM, Damien Le Moal wrote:
> On 2020/02/15 5:18, Sean Anderson wrote:
>> Hi,
>>
>> On 2/12/20 5:34 AM, Damien Le Moal wrote:
>>> Compilation errors trigger if ARCH_SPARSEMEM_ENABLE is enabled for
>>> a nommu kernel. Since the sparsemem model does not make sense anyway
>>> for the nommu case, do not allow selecting this option to always use
>>> the flatmem model.
>>>
>>> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
>>> ---
>>>  arch/riscv/Kconfig | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
>>> index 73f029eae0cc..1a3b5a5276be 100644
>>> --- a/arch/riscv/Kconfig
>>> +++ b/arch/riscv/Kconfig
>>> @@ -121,6 +121,7 @@ config ARCH_FLATMEM_ENABLE
>>>  
>>>  config ARCH_SPARSEMEM_ENABLE
>>>  	def_bool y
>>> +	depends on MMU
>>>  	select SPARSEMEM_VMEMMAP_ENABLE
>>>  
>>>  config ARCH_SELECT_MEMORY_MODEL
>>>
>>
>> Just for some background, why did you choose NOMMU? Afaik the K210 has
>> an MMU following the RISC-V privileged specification 1.9
> 
> Our early experiments with the k210 with opensbi revealed that the mmu is
> definitely not a normal one or that it is not functional (e.g. S-mode fault
> delegation bit setup leads to a hang). So at the time, we started assuming
> that this is a nommu platform.
> 
> Since then, others also mentioned that there is in fact an MMU but not
> following the latest specs (I think Olof mentioned that). But I have not
> look into this (yet) to try to make it work. Not sure how much effort would
> be needed on the kernel to support this older specs mmu.
> 
> In any case, considering the tiny 6+2MB of memory available, direct M-mode
> Linux boot avoids the bootloader chain and openSBI use, which saves a lot
> of memory. We could reduce this chain to opensbi with direct payload only,
> but even then, page alignment will lead to memory loss. And at run-time,
> nommu saves a lot too with the absence of page tables. Nommu makes sense
> for this platform.

Well, the VM mode bits are in mstatus for this priv spec, so OpenSBI
won't work since there is no way to set them. 

> 
> This is the first step to get this platform running Linux. Due to the low
> memory, it probably isn't a practical use case to use Linux in the first
> place, but it definitely is a great inexpensive platform for getting
> started with RISCV. NOMMU allows running Linux without much effort. Going
> forward, we can also try to get that SoC MMU running.

Yeah, that's pretty reasonable. However, I don't think much has changed
other than the locations of some of the registers has been changed
around. The existing code to set up page table entries should not need
major modifications.

Alternatively, the base+bound scheme could probably work pretty well
with low memory, though we would not be able to re-use any existing
code.

--Sean

