Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9906838117
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 00:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H+Dxhrk1bgPRq1ZMxdyGe+mMveRjbUeBD7o228mTvd4=; b=fOVOsEnXmGFdw4IGxIpihtPFx
	YI7ZdLleHKY5M7Vv7xEg1yOxM6r1DANLSXcT07lsb2Rkg514Cc4O5K3nEv2PzsQLcTz2bOxTgthKO
	fZB4EAKKIdI41UcaFHEs0yvRy2lN+hJAOu46DPwC+ch0s3W66lIauXvq0h2ubvQ9M9OU2kDG+/n5J
	nhUtquRnjia4JmBpdm1bzl/AGKvq2uL816qQqA8G1RS7TnO+Xsy+Ukzl1NwKHW409Ug5+sYxP12LN
	AHiZ86rhUBAYl03dntgKlfOYLZ57cGCC2eDGmqKh6bmzGqCeNaJY+b8BVPTj2xyr05DiC2vp14VTu
	5NtCSX2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ15h-00074U-JE; Thu, 06 Jun 2019 22:42:37 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ14r-0006pq-KX; Thu, 06 Jun 2019 22:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559860906; x=1591396906;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=aN1U0SzatJZ+k6JDjyIC57LaLcrTtGLXNgsVroMrL3U=;
 b=Pxt5P8BxLAFxvvgsm7BcuCykrYlqK6L5x17v2IEZGupS+GCitWF4nxlP
 PLxY/GgwES9PzNRk7WXBWQ+PkP3m/Rm4Cwf1rS5R7VWJrW/J2gn/zdZP3
 bNmKoq75hvhIb7ua8Ef6YHH5pLcGXbGws4kDygOL6LEeBnCF5YpBGe43u
 uml9qRdvOOqnymunRyAvHSIC2DNqUT111INnWBsxtMjfGKTB4hlcfmACJ
 ZFSQjTV9P3xe4jvCCDmzsdk10O7Ur8XXDXRL+ogvcPug/oroQMWEqMVKd
 Y1J6P3GCySgP9OFhCYT8R3xVGb1yLkGxBextG6LU/ppcm3yGEZRmZ699/ A==;
X-IronPort-AV: E=Sophos;i="5.63,560,1557158400"; d="scan'208";a="109984456"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 07 Jun 2019 06:41:43 +0800
IronPort-SDR: HMpB6gNfxQ1UwLonX7SacyrMe+to26l2duuTSwvumYKYnB1SDrzbbcCSDLud/hNJe6agi7aQwW
 fUaBOK34DulOklhO0A1UbOVF5RBWnZp3wBXyjwGKVoJVs6T7eGAl8tJSDa0UBtR+ROADHEq4gl
 jcNsO2KtxJl+TG2jlWZZ0i63YAIiBGhuHlMO7taWDVLo0dWaH3rwHLVl0VPbhY8CirJJcIW9t/
 UIrofSuzZ245O5+YKYxIn0pQL1a5kQYWb5YfxtFVfma84UNycBjqOAwJVF4iYQqLTB8ggxkFEn
 gNn/gD8xl1Ud4h7UHssAMmfG
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 06 Jun 2019 15:19:01 -0700
IronPort-SDR: wNpNjfSTgkTZUQNnwG6O1GwZ9QPYKwbA5biuQmArf8xxHju2RVf/BN1hH3FO+9QFmFDwycXWMg
 0MUwQuBqPyZAIyaA+xhSc91wpmXcAFvVpq+7p/8HkzrMQAVH+nIGrS5wN/UQEzpniTUFXRBeio
 hNkAi99HGw7LLpcOSlkMy0iqUFd/d8oMaXPeUpOjdmqn3GeCInii/VEE9Oivy8KTkwBcCLfdJ9
 3WnFAYOKErVpB7xbSMi2H9u6OoVftFN/NHrl+vLmI5ZCD+4bS6D5qVnyTbDuhL1S/rwMnbyiJe
 BF0=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip01.wdc.com with ESMTP; 06 Jun 2019 15:41:43 -0700
Subject: Re: [v3 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Mark Rutland <mark.rutland@arm.com>
References: <20190523183516.583-1-atish.patra@wdc.com>
 <20190605162630.GE30925@lakrids.cambridge.arm.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <f48ddf4c-9934-2b96-7e2f-216571b83a67@wdc.com>
Date: Thu, 6 Jun 2019 15:41:38 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605162630.GE30925@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_154145_864493_19F5140F 
X-CRM114-Status: GOOD (  26.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jonathan Corbet <corbet@lwn.net>, Albert Ou <aou@eecs.berkeley.edu>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Anup Patel <Anup.Patel@wdc.com>, "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 Nick Kossifidis <mick@ics.forth.gr>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "trini@konsulko.com" <trini@konsulko.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 6/5/19 9:26 AM, Mark Rutland wrote:
> On Thu, May 23, 2019 at 11:35:16AM -0700, Atish Patra wrote:
>> Currently, last stage boot loaders such as U-Boot can accept only
>> uImage which is an unnecessary additional step in automating boot flows.
>>
>> Add a PE/COFF compliant image header that boot loaders can parse and
>> directly load kernel flat Image. The existing booting methods will continue
>> to work as it is.
>>
>> Another goal of this header is to support EFI stub for RISC-V in future.
>> EFI specification needs PE/COFF image header in the beginning of the kernel
>> image in order to load it as an EFI application. In order to support
>> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
>> offset 0x3c) should point to the rest of the PE/COFF header (which will
>> be added during EFI support).
>>
>> This patch is based on ARM64 boot image header and provides an opprtunity
>> to combine both ARM64 & RISC-V image headers.
>>
>> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>>
>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>
>> ---
>> I have not sent out corresponding U-Boot patch as all the changes are
>> compatible with current u-boot support. Once, the kernel header format
>> is agreed upon, I will update the U-Boot patch.
>>
>> Changes from v2->v3
>> 1. Modified reserved fields to define a header version.
>> 2. Added header documentation.
>>
>> Changes from v1-v2:
>> 1. Added additional reserved elements to make it fully PE compatible.
>> ---
>>   Documentation/riscv/boot-image-header.txt | 50 ++++++++++++++++++
>>   arch/riscv/include/asm/image.h            | 64 +++++++++++++++++++++++
>>   arch/riscv/kernel/head.S                  | 32 ++++++++++++
>>   3 files changed, 146 insertions(+)
>>   create mode 100644 Documentation/riscv/boot-image-header.txt
>>   create mode 100644 arch/riscv/include/asm/image.h
>>
>> diff --git a/Documentation/riscv/boot-image-header.txt b/Documentation/riscv/boot-image-header.txt
>> new file mode 100644
>> index 000000000000..68abc2353cec
>> --- /dev/null
>> +++ b/Documentation/riscv/boot-image-header.txt
>> @@ -0,0 +1,50 @@
>> +				Boot image header in RISC-V Linux
>> +			=============================================
>> +
>> +Author: Atish Patra <atish.patra@wdc.com>
>> +Date  : 20 May 2019
>> +
>> +This document only describes the boot image header details for RISC-V Linux.
>> +The complete booting guide will be available at Documentation/riscv/booting.txt.
>> +
>> +The following 64-byte header is present in decompressed Linux kernel image.
>> +
>> +	u32 code0;		  /* Executable code */
>> +	u32 code1; 		  /* Executable code */
>> +	u64 text_offset;	  /* Image load offset, little endian */
>> +	u64 image_size;		  /* Effective Image size, little endian */
>> +	u64 flags;		  /* kernel flags, little endian */
>> +	u32 version;		  /* Version of this header */
>> +	u32 res1  = 0;		  /* Reserved */
>> +	u64 res2  = 0;    	  /* Reserved */
>> +	u64 magic = 0x5643534952; /* Magic number, little endian, "RISCV" */
>> +	u32 res3;		  /* Reserved for additional RISC-V specific header */
>> +	u32 res4;		  /* Reserved for PE COFF offset */
>> +
>> +This header format is compliant with PE/COFF header and largely inspired from
>> +ARM64 header. Thus, both ARM64 & RISC-V header can be combined into one common
>> +header in future.
>> +
>> +Notes:
>> +- This header can also be reused to support EFI stub for RISC-V in future. EFI
>> +  specification needs PE/COFF image header in the beginning of the kernel image
>> +  in order to load it as an EFI application. In order to support EFI stub,
>> +  code0 should be replaced with "MZ" magic string and res5(at offset 0x3c) should
>> +  point to the rest of the PE/COFF header.
>> +
>> +- version field indicate header version number.
>> +  	Bits 0:15  - Minor version
>> +	Bits 16:31 - Major version
>> +
>> +  This preserves compatibility across newer and older version of the header.
>> +  The current version is defined as 0.1.
>> +
>> +- res3 is reserved for offset to any other additional fields. This makes the
>> +  header extendible in future. One example would be to accommodate ISA
>> +  extension for RISC-V in future. For current version, it is set to be zero.
>> +
>> +- In current header, the flag field has only one field.
>> +	Bit 0: Kernel endianness. 1 if BE, 0 if LE.
>> +
>> +- Image size is mandatory for boot loader to load kernel image. Booting will
>> +  fail otherwise.
>> diff --git a/arch/riscv/include/asm/image.h b/arch/riscv/include/asm/image.h
>> new file mode 100644
>> index 000000000000..61c9f20d2f19
>> --- /dev/null
>> +++ b/arch/riscv/include/asm/image.h
>> @@ -0,0 +1,64 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +
>> +#ifndef __ASM_IMAGE_H
>> +#define __ASM_IMAGE_H
>> +
>> +#define RISCV_IMAGE_MAGIC	"RISCV"
>> +
>> +
>> +#define RISCV_IMAGE_FLAG_BE_SHIFT	0
>> +#define RISCV_IMAGE_FLAG_BE_MASK	0x1
>> +
>> +#define RISCV_IMAGE_FLAG_LE		0
>> +#define RISCV_IMAGE_FLAG_BE		1
>> +
>> +
>> +#ifdef CONFIG_CPU_BIG_ENDIAN
>> +#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_BE
>> +#else
>> +#define __HEAD_FLAG_BE		RISCV_IMAGE_FLAG_LE
>> +#endif
>> +
>> +#define __HEAD_FLAG(field)	(__HEAD_FLAG_##field << \
>> +				RISCV_IMAGE_FLAG_##field##_SHIFT)
>> +
>> +#define __HEAD_FLAGS		(__HEAD_FLAG(BE))
> 
> If you have a CONFIG_CPU_BIG_ENDIAN kernel, this will not be
> little-endian, nor will other fields in your header (e.g. the image
> size), so I would recommend dropping this for now.
> 

Correct. Thanks for pointing that out.

> To manage that for the image_size field you'll probably need to play the
> same linker trick games we play on arm64.
> 
> It's probably worth having:
> 
> #ifdef CONFIG_CPU_BIG_ENDIAN
> #error conversion of header fields to LE not yet implemented
> #endif
> 

Sure. I will update the patch.


Regards,
Atish

> ... to catch that later.
> 
> Thanks,
> Mark,
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
