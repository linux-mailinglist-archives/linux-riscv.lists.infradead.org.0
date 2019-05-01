Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DF610C09
	for <lists+linux-riscv@lfdr.de>; Wed,  1 May 2019 19:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/vy341fg+uhZKmGSjoBW3ozzz9dx5VnqrP2sIETVcBE=; b=avu6Cids+nmXMGUOavko8F01S
	6hZpYuVsnF/Vc0Ef9BefLeY3h3EDeEXwYMDzEEvY/pFznkFwhxojWogdAdLfD8Qd4nso62rwOx/s/
	DYstUeMLEVI3TG+Hj5IFK8sjokBILLaLz/IRlolXFymmZoFizrX4874SyPIr9GC0whqCUsZJ8TAS2
	4uJgNa7aESQv5hM9ehbQgw7MZVvVTM7N1WAbdIlWR7dN7jIT3SBByEIsmkHtwNXOIK8wXIqM2lTWj
	Yb1/9Xk3RNzxtJ37vzFzgk+NiN36n6XP7QVE3aTH34KeV2jJlkw/+dUOJpLU7oEsbp6kF7ofcfIt3
	GVE+olvNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLt6J-0002td-1J; Wed, 01 May 2019 17:32:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLt6E-0002so-Rk
 for linux-riscv@lists.infradead.org; Wed, 01 May 2019 17:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556731975; x=1588267975;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=yZk+fPlM+300B5dQPeSnp2Y+5IZKCQeLUZItpCF7QKs=;
 b=Y0nfrDvMvzg8MhYwR/fJg+Bpt9yz9BnSNv5jaby1KMw8v6KAiQzVRFzv
 r8WNHPYm1FAsHFDeueTJyp6kT5ZG++J5loZRJ3oc2mYEXLMaKUvbJ+i2y
 m22STlWX3MUhcwaR9aR/AgdGWaw12AXy07Ehpmo/qZh+wrJMejcD8MVqu
 2XYEPzIUS88x+LYui0Q2wpVhUx3MU+eVvpmcYcRn2lQjw9NfvSsNREYpj
 dGwUGYwbiTZ8VdxH5qtQIzmAvS5zI0cNvitTN1TQkwrrbe33SMQAE18On
 7gec/ZpYzedWzMiWB9GtJdxymUgvudjQicjmKOEn35Gl/kvL3zP+9u82e w==;
X-IronPort-AV: E=Sophos;i="5.60,418,1549900800"; d="scan'208";a="108996549"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 02 May 2019 01:32:49 +0800
IronPort-SDR: xPVuKHzLPPxgkjtvCgMB7sK9FEZQsaQqa/Yi6UFmKaEM/pGJlboCwa/P2j4aQj+qWidPPENfNM
 Nc3nfITsSiPOG3Om5GhZsSbhJFS33vdSQhYd3dgxzoTg7RA9sf67Ccs/910B0Tw5uk2dNnZlPa
 y+tMA90A+TIA5eg7IDnFHKxF17NGi0gL//T+X9OyAD7BnWYp4Okj4+lv6hfoLtofthHcoMklIo
 vT7x212Ahk5h2sazo8ARFK1M6LZhbZFkbiToAbTBe5GdpIuXuftcGaGOTxHjtTaChwjsbT6wYU
 xBVEvclHk2OdhmpG3Cma6ld4
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 01 May 2019 10:11:17 -0700
IronPort-SDR: TxMvhl+cFQ4TxMP+d9Z7AnTy0se99146r4IxgWjHgpK+CIrayOFf2TbciER+Qlg8BZF9NdRRLB
 1MVJQBTPBXrM76Aceux1LCjr43m1XIZjTYQBU/jTvSF/YrryRNlh5k2zJgj8erGkJiJr7turG0
 okgZ36FcRDC56y+X8YVIS8vEsmgqT1PZdWjFkh0T40JonlbOkKHjrDXN7N0tID0dpxpAjv5utw
 dGgVWv/8LoU+6XeVzGf9uYQmYoogjzm8gtF5uh2aMnSdMBqzY9dvwSgkmGpQEFOSAS0MkJnPxN
 ksg=
Received: from c02v91rdhtd5.sdcorp.global.sandisk.com (HELO [10.111.66.167])
 ([10.111.66.167])
 by uls-op-cesaip01.wdc.com with ESMTP; 01 May 2019 10:32:48 -0700
Subject: Re: [PATCH] RISC-V: Add an Image header that boot loader can parse.
To: Anup Patel <anup@brainfault.org>, Karsten Merker <merker@debian.org>
References: <mhng-cab2c6b9-f623-4286-99a4-61e4b3a58761@palmer-si-x1e>
 <e801ca8b-c8e2-d8b1-d55a-744414db77e3@wdc.com>
 <20190501164355.ce76wjmq6sszrf5g@excalibur.cnev.de>
 <CAAhSdy3kjqDahp13gQa0g9GF4gKPQeVgSakZzuP0uYwkCrvdAg@mail.gmail.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <eca0de61-885c-0ca1-d07b-870ad0c83327@wdc.com>
Date: Wed, 1 May 2019 10:32:47 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAhSdy3kjqDahp13gQa0g9GF4gKPQeVgSakZzuP0uYwkCrvdAg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_103254_931818_B12F8473 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "zong@andestech.com" <zong@andestech.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/1/19 10:02 AM, Anup Patel wrote:
> On Wed, May 1, 2019 at 10:14 PM Karsten Merker <merker@debian.org> wrote:
>>
>> On Mon, Apr 29, 2019 at 10:42:40PM -0700, Atish Patra wrote:
>>> On 4/29/19 4:40 PM, Palmer Dabbelt wrote:
>>>> On Tue, 23 Apr 2019 16:25:06 PDT (-0700), atish.patra@wdc.com wrote:
>>>>> Currently, last stage boot loaders such as U-Boot can accept only
>>>>> uImage which is an unnecessary additional step in automating boot flows.
>>>>>
>>>>> Add a simple image header that boot loaders can parse and directly
>>>>> load kernel flat Image. The existing booting methods will continue to
>>>>> work as it is.
>>>>>
>>>>> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>>>>>
>>>>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>>>> ---
>>>>>    arch/riscv/include/asm/image.h | 32 ++++++++++++++++++++++++++++++++
>>>>>    arch/riscv/kernel/head.S       | 28 ++++++++++++++++++++++++++++
>>>>>    2 files changed, 60 insertions(+)
>>>>>    create mode 100644 arch/riscv/include/asm/image.h
>>>>>
>>>>> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
>>>>> new file mode 100644
>>>>> index 000000000000..76a7e0d4068a
>>>>> --- /dev/null
>>>>> +++ b/arch/riscv/include/asm/image.h
>>>>> @@ -0,0 +1,32 @@
>>>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>>>> +
>>>>> +#ifndef __ASM_IMAGE_H
>>>>> +#define __ASM_IMAGE_H
>>>>> +
>>>>> +#define RISCV_IMAGE_MAGIC        "RISCV"
>>>>> +
>>>>> +#ifndef __ASSEMBLY__
>>>>> +/*
>>>>> + * struct riscv_image_header - riscv kernel image header
>>>>> + *
>>>>> + * @code0:               Executable code
>>>>> + * @code1:               Executable code
>>>>> + * @text_offset: Image load offset
>>>>> + * @image_size:          Effective Image size
>>>>> + * @reserved:            reserved
>>>>> + * @magic:               Magic number
>>>>> + * @reserved:            reserved
>>>>> + */
>>>>> +
>>>>> +struct riscv_image_header {
>>>>> + u32 code0;
>>>>> + u32 code1;
>>>>> + u64 text_offset;
>>>>> + u64 image_size;
>>>>> + u64 res1;
>>>>> + u64 magic;
>>>>> + u32 res2;
>>>>> + u32 res3;
>>>>> +};
>>>>
>>>> I don't want to invent our own file format.  Is there a reason we can't just
>>>> use something standard?  Off the top of my head I can think of ELF files and
>>>> multiboot.
>>>
>>> Additional header is required to accommodate PE header format. Currently,
>>> this is only used for booti command but it will be reused for EFI headers as
>>> well. Linux kernel Image can pretend as an EFI application if PE/COFF header
>>> is present. This removes the need of an explicit EFI boot loader and EFI
>>> firmware can directly load Linux (obviously after EFI stub implementation
>>> for RISC-V).
>>>
>>> ARM64 follows the similar header format as well.
>>> https://www.kernel.org/doc/Documentation/arm64/booting.txt
>>
>> Hello Atish,
>>
>> the arm64 header looks a bit different (quoted from the
>> aforementioned URL):
>>
>>    u32 code0;                    /* Executable code */
>>    u32 code1;                    /* Executable code */
>>    u64 text_offset;              /* Image load offset, little endian */
>>    u64 image_size;               /* Effective Image size, little endian */
>>    u64 flags;                    /* kernel flags, little endian */
>>    u64 res2      = 0;            /* reserved */
>>    u64 res3      = 0;            /* reserved */
>>    u64 res4      = 0;            /* reserved */
>>    u32 magic     = 0x644d5241;   /* Magic number, little endian, "ARM\x64" */
>>    u32 res5;                     /* reserved (used for PE COFF offset) */
>>
>> What I am unclear about is in which ways a RISC-V PE/COFF header
>> differs from an arm64 one as the arm64 struct is longer than your
>> RISC-V header and for arm64 the PE offset field is in the last
>> field, i.e. outside of the area covered by your RISC-V structure
>> definition.  Can you perhaps explain this part in a bit more
>> detail or does anybody else have a pointer to a specification of
>> the RISC-V PE/COFF header format (I have found a lot of documents
>> about COFF in general, but nothing specific to RISC-V).
> 

Karsten,

> The only difference compared to ARM64 is the values of code0, code1
> and res5 fields.
> 
> As-per PE/COFF, the 32bit value at offset 0x3c tells us offset of PE/COFF
> header in image.
> 
> For more details refer,
> https://en.wikipedia.org/wiki/Portable_Executable
> https://en.wikipedia.org/wiki/Portable_Executable#/media/File:Portable_Executable_32_bit_Structure_in_SVG_fixed.svg
> 
> For both ARM64 header and RISC-V image header, is actually the
> "DOS header" part of PE/COFF format.
> 
> This patch only adds "DOS header" part of PE/COFF format. Rest of
> the PE/COFF header will be added when add EFI support to Linux
> RISC-V kernel.
> I think Anup answered your question. The original plan was to add EFI 
specific stuff in EFI support patch. That includes adjusting the PE/COFF 
offset at 0x3c and adding the "MZ" value for code0 if EFI is enabled.

In hindsight, I think it created more confusion. I will update the 
"riscv_image_header" structure to put PE/COFF offset(0x3c) at right 
place in v2 patch to avoid further confusion.

"MZ" value part should be added once EFI is enabled.

I will update the comments on riscv/include/asm/image.h as well to 
clarify more.

Regards,
Atish
> Regards,
> Anup
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
