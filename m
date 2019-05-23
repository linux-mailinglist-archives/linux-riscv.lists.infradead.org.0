Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B49C28608
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 20:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RoobCGZkRNs9VoKGBo821MNwqgbia7R1x+PF7glJNsg=; b=cZXJ6hmfwhfgerOyFqJnWURDm
	jqL78KBbQGMdNbYteL4bKJqg9Wue+TNPklkae3RQSsawYwzoGWxCaDTucKe8FQ6fkLXqFy4GPv8fA
	687/q9z3VOL2rKY7knoezgkcSw0mBwiampLNFRcjlm7XJJVxQX25TZEMd/Nho8W2N/+Hv+0wSrHoD
	yt5UVCPY8SuxJUIZpC0YTi83a5B/iMIYTBbNLKIeza6bHaSny5wO1g0mYwcMRO6tomggDEgBeedE8
	nTveCWgBZBmoYVotHnyspROvPBw7NZHKDvoK0K7Tu0wg+thOEau8cO/52WOso4IIIaG1d05MnfnDE
	1cuUoVWKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsaq-0005mu-Kp; Thu, 23 May 2019 18:37:32 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTsam-0005mA-Vw; Thu, 23 May 2019 18:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558636649; x=1590172649;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=8QIT+0aut7Wn82lQsQ2WjYKeDiRhZt+FqjfsMWNxN5Y=;
 b=Gxo8QqEkVbdYYDlEp8jDvtZXMab1NKyibNwFBS2y8AYcTm2j91mXFw+Z
 G93UuZ7r+0Dd6/eZ8Akc0DQx+eTKOS3eVaYi5lAVS2hLGNHtXCbtgyQay
 aWctchqyTqsQwosE1cT6IfRL0ZkblcQP69Z3/Bw2OHCI1WW7qc3/5aDZ+
 tcymea1CJRj7B5XFbhkUock/zuZwTfvkxG6Y+ZNbM1lPBWiYpp1DG3DdE
 kULs7bWDP9Q8WjUF0+jhG4erVHgCcbYIJq5676VoKzpyihFSI4lpwsMoz
 IZb4sX1FbggLhgzRcjD5zQ+Et7UK8h9I08lC6R5fpVGbJqOYjwV6S0Fsg g==;
X-IronPort-AV: E=Sophos;i="5.60,504,1549900800"; d="scan'208";a="108957274"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 24 May 2019 02:37:29 +0800
IronPort-SDR: V5Nu1TxdO47PsRYmStt3/WTvQsBTE5ArBBHL+VlINVeSs82T1TT/mhuutHf46Ug0VuDVd4tY/E
 XdSGXHvzv6eBwHYk1kMIiFKjDq3A/DQ6AyBwRrTXXStlfNARufsgDv8JjXQecwaaynVnHBFHZw
 4dlBaWOdeVRJAaN7Cc14metyjUHla0zB37GPLJAHnaxi/HWrAU8sAm+jzDIyUGSi5EvuTitSEj
 P+tKwPDzMTphH0P9GmoShVQNEXvQ/kCNQemmnlBetu04K+kzuHE5pL9d5Iti2Ml+ycRg3g9sa2
 8kJbyyMKWWiccsqko4qa/TB7
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 23 May 2019 11:15:10 -0700
IronPort-SDR: ajAzHRDa3jUJcUe5cu+C+1Nzl8QYEVIiIgfvZAwvBO049k6tdw0TlqstrIfn7GT+2sanocP4jV
 adoMnK1YJeS8Qek3B1hsPcMxp7rA+zXiV2RPjj3qoT/vJYPKr40RUlf9vJiz2eM1wnCmAJNOib
 iSiBrJTyQ7Oz/ueOfZ+90aVsnv85jAGNrTpetNoZqWVn399qXJ/ew9kT591E9DVb2HfmeVvxep
 pyyoPDJwSddBWcRyeYrmuBMfbIQz9Oz4kekHPXLj62q/q9k8AST+VLpYHgSFXYMszouJbFqDtJ
 /ZE=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 23 May 2019 11:37:28 -0700
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
 <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
 <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
 <alpine.DEB.2.21.9999.1905131735450.21198@viisi.sifive.com>
 <bb7f36bd-d614-b235-7100-3d965f92afc8@wdc.com>
 <alpine.DEB.2.21.9999.1905160833030.9104@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <d7ef1d58-2c3f-ef58-b6aa-bb7ccfe162f6@wdc.com>
Date: Thu, 23 May 2019 11:35:11 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1905160833030.9104@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_113729_070541_7CFDA0CB 
X-CRM114-Status: GOOD (  30.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "trini@konsulko.com" <trini@konsulko.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/16/19 9:20 AM, Paul Walmsley wrote:
> + ARM64 maintainers, Tom, Marek
> 
> Hi Atish,
> 
> On Mon, 13 May 2019, Atish Patra wrote:
> 
>> On 5/13/19 5:40 PM, Paul Walmsley wrote:
>>> On Mon, 13 May 2019, Atish Patra wrote:
>>>> On 5/13/19 5:09 PM, Paul Walmsley wrote:
>>>>
>>>>> What are the semantics of those reserved fields?
>>>>
>>>> +struct riscv_image_header {
>>>> +	u32 code0;
>>>> +	u32 code1;
>>>> +	u64 text_offset;
>>>> +	u64 image_size;
>>>> +	u64 res1;
>>>> +	u64 res2;
>>>> +	u64 res3;
>>>> +	u64 magic;
>>>> +	u32 res4; ---> We can use this for versioning when required
>>>> +	u32 res5; ---> This is reserved for PE/COFF header
>>>> +};
>>>
>>> I saw that in your patch.  The problem is that this doesn't describe what
>>> other software might expect in those fields.  Can anything at all be
>>> placed in those reserved fields?
>>
>> Yes. The reserved fields can be used for anything that boot loaders and Linux
>> kernel can agree with each other. If you look at the ARM64, they have
>> "Informative flags" in place of res1.
>>
>>>>>> Do we need to add it now or add it later when we actually need a
>>>>>> version
>>>>>> number. My preference is to add it later based on requirement.
>>>>>
>>>>> If it isn't added now, how would bootloaders know whether it was there
>>>>> or
>>>>> not?
>>>>>
>>>>>
>>>> Here is the corresponding U-Boot Patch
>>>> https://patchwork.ozlabs.org/patch/1096087/
>>>>
>>>> Currently, boot loader doesn't care about versioning. Since we are
>>>> updating a
>>>> reserved field, offsets will not change. If a boot loader want to use the
>>>> versioning, it should be patched along with the kernel patch.
>>>>
>>>> Any other boot loader that doesn't care about the version, it can continue
>>>> to
>>>> do so without any change.
>>>>
>>>> My idea is to enable the minimum required fields in this patch and keep
>>>> everything else as reserved so that it can be amended in future as
>>>> required.
>>>
>>> If those fields really are reserved for implementors to do whatever they
>>> want with them, then that might be a reasonable approach.  That seems
>>> unlikely, however, since specification authors usually reserve the right
>>> to use reserved fields for their own purposes in later versions.
>>>
>> Technically, we are just implementing the "DOS" header part of PE/COFF format
>> for now. It only mandates a magic string "MZ" at the top and a 32bit value at
>> offset 0x3c tells us offset of PE/COFF header in image.
>> Anything in between is implementation specific.
>>
>> For example, it will be updated to support EFI stub as described in the commit
>> text,
>> "In order to support EFI stub, code0 should be replaced with "MZ" magic string
>> and res5(at offset 0x3c) should point to the rest of the PE/COFF header (which
>> will be added during EFI support)."
> 
> OK.  I think we should try to share this header format with other
> architectures.  This one after all is copied from ARM64, and some of the
> core fields will be the same across multiple architectures.  That way we
> can try to avoid proliferating different boot header formats for each
> architecture, which should be better for both the kernel and the
> bootloaders.  ARM64 folks, would you be interested in working together on
> this?
> 
> Meanwhile, to unblock RISC-V, and to make this header durable for future
> extensions and to match the existing ARM64 usage, I think we should make
> the following technical changes to what you proposed:
> 
> 1. Reserve all of the existing ARM64 fields in the same way ARM64 does
>     now.  This keeps open the possibility that we can merge this format
>     with the one used with ARM64, and reuse the same bootloader code.
>     Based on our discussions, it sounds like the primary difference between
>     what you're proposing and the ARM64 format involves the flags/res1
>     field.  Let's keep that as a flag field, reuse ARM64's endianness bit
>     as architecture-independent, then define the rest of the flags in that
>     field as architecture-defined.
> 
> 2. Allocate another set of reserved bits for a format version number.
>     Probably 16 bits is sufficient.  This tells bootloaders how to
>     interpret the header fields in future extensions.  The goal is to
>     preserve compatibility across newer and older versions of the header.
>     The existing ARM64 header would be version 0.  This format that
>     incorporates these changes would be version 1.  The thought here is to
>     preserve all of the semantics of existing fields in newer versions
>     (except for any remaining reserved fields), since many people often do
>     not replace their bootloaders.
> 
> 3. Define a way to point to additional fields outside this existing
>     header.  Another 32 bits of previously reserved data can be defined as
>     a file offset to additional fields (defined as 32-bit words from the
>     beginning of the header).  This should make it technically simple to
>     add additional fields in the future.  For example, RISC-V, and probably
>     other architectures, will want to add some way to indicate which ISA
>     extensions are necessary to run the kernel image.  Right now there
>     won't be any fields defined, so we can leave the format undefined for
>     the moment also.  Let's stipulate for version 1 that this field
>     should be fixed at 0, indicating no additional fields.
> 
> 4. Document all of this, in this patch, in a file such as
>     Documentation/riscv/boot-image-header.txt.  If
>     we're able to reach agreement with other maintainers, then we
>     can move this file out into a common, non-architecture-specific
>     documentation location.
> 

I have sent out a v3 incorporating most of your suggestions. If ARM 
maintainers agree, we can move both the headers to a common place.

Just FYI: Marek also suggested to add unified support Image.gz for both 
U-Boot & RISC-V in U-Boot. I am working on that as well.

> 
> thanks
> 
> - Paul
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
