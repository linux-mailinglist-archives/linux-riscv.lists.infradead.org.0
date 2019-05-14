Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C851C027
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 02:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OFG6qKZm0rCp3FgD9LkkPa62AwFgfX/DhSaiMCqUvTs=; b=SyDBWENII2JoNKQtEQcIhC8p5
	MZaGOWbjk1v/PxUEdB6kBVBTkMMGZG36Ff93c8v1WQmzhvSpDjDpqkhFrlC4CPISXZYG3FVWld+lP
	v05Dmy/z7rbjZl1MpiCCdZLBhtyOtU6scehJNnMzI2v6VHaSMhNiE06aMby0atQT7/LAri8vYLAro
	k6ohH4fA7Jr6OzOb+IQCmAFop/2Y24fn21sclFIzfU90Tga4F3wwCUL7QaytAsQD6Rzl3Ad1D9IoM
	K4yU9BCn++FhXDmYb3mqe0nu5Ys20Mdm8SQHug+FcBUuI+9KBDBNv1acfzXeBkKhHjLJ36lTqmocj
	cWi3YlMdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQLOv-000795-RF; Tue, 14 May 2019 00:34:37 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQLOr-00078Q-05
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 00:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557794115; x=1589330115;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=hcwoqPysi4qOOtoOdHq/C9QLVupOGpA2wAtr9OvfuXM=;
 b=n38fMPwqE5U97WHcy4xzNRTM3BQVLknGDyo/k4HFrHPCH0OyXzg0QoBv
 XkGIRuub9HBgJg0vZhuNZcY6Z1tqzyMSSlgp0ToB0+89djl2kynq0rorA
 oxUo6S7/0qwCDtJUk9NqezJd6WFk8jTvVKPo5sspzNWPcAUFMqsaLMuFm
 0/PKOGtUDPIlawTZzvMtBMUadUTk2IfM/jM6hSsjkT/YwjU1WxNTVKoRX
 Wtdii78P0iVTma/Sq6Z5wYt8E9wlTcv+J9SypekNQpWNkzBIZT5Tnhiz7
 PdO0s/3Hm4XklR1yW8yU4S493f7ymPq8vALIaO88zPcKhnPJbuHlf+DM9 g==;
X-IronPort-AV: E=Sophos;i="5.60,466,1549900800"; d="scan'208";a="207566447"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2019 08:35:07 +0800
IronPort-SDR: JN4+U4zeQoyXdUefps1uSbavaKcba/x42pencLRd5dgKFOQ5+Q/R/4Y3VOH65ILsswYR3Thyzk
 FZU6wpERx9nRzmxttVVZWl6Z4jkUVp/WyChsjlEVi823KDrVH8rHEptZlRp0mzQ/hjgCNC1po0
 yZoUjFCGflp/07IoXcfw+u9TFDkWjAliVUZB5JaEjjGRo33l38hXxaT+DTRxKNAEy6I98FEWMw
 zqYVgEaTOMck4H/2A9p1kTLDuZbcFzoKWO064OykDCm2Y3Debx9IrxENVTHzFZR9xzfj/NNxfn
 xPbiwaaV6BVRiFHdqNDkveOw
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 13 May 2019 17:10:17 -0700
IronPort-SDR: bOLMMhaA1pkyxX2AH6+QTnZdf5SR/QsaycF28yjHsRYBGL3gLc73gEXm8qIHbrVVKKfJxUB8i3
 T3YUSTs3kjRb5Zva8q2MgzAOyjMpXKgnTsYe8tww8VZexrZndUdBuu+A/Udj8R1U9RP0GX9Rb7
 X2uK7E5n89tEwHXZW784M0WVAUmC2M9YyZEMvydqp5HUNg8r1RG20Nc4XD/xjMdEt8hQbA++Me
 p+0ZQyc2z7o0kPoZ7OCMCyEhM/6ra+LF3vUznZBbfoDV4TW1wxTprQZ/kY3+1VZ1oNTEi1ZcXH
 uMw=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 May 2019 17:34:28 -0700
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
 <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
Date: Mon, 13 May 2019 17:34:02 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_173433_076904_860F7ABB 
X-CRM114-Status: GOOD (  19.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zong Li <zong@andestech.com>, "merker@debian.org" <merker@debian.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/13/19 5:09 PM, Paul Walmsley wrote:
> On Mon, 13 May 2019, Atish Patra wrote:
> 
>> On 5/13/19 3:31 PM, Paul Walmsley wrote:
>>> On Wed, 1 May 2019, Atish Patra wrote:
>>>
>>>> Currently, last stage boot loaders such as U-Boot can accept only
>>>> uImage which is an unnecessary additional step in automating boot flows.
>>>>
>>>> Add a PE/COFF compliant image header that boot loaders can parse and
>>>> directly load kernel flat Image. The existing booting methods will
>>>> continue
>>>> to work as it is.
>>>>
>>>> Another goal of this header is to support EFI stub for RISC-V in future.
>>>> EFI specification needs PE/COFF image header in the beginning of the
>>>> kernel
>>>> image in order to load it as an EFI application. In order to support
>>>> EFI stub, code0 should be replaced with "MZ" magic string and res5(at
>>>> offset 0x3c) should point to the rest of the PE/COFF header (which will
>>>> be added during EFI support).
>>>>
>>>> Tested on both QEMU and HiFive Unleashed using OpenSBI + U-Boot + Linux.
>>>>
>>>> Signed-off-by: Atish Patra <atish.patra@wdc.com>
>>>
>>> Seems like we're stuck with this basic format for EFI, etc.  Even though
>>> we may be stuck with it, I think we should take the opportunity to add the
>>> possibility to extending this header format by adding fields after the
>>> basic PE/COFF header ends.
>>>
>>> In particular, at the very least, I'd suggest adding a u32 after the
>>> PE/COFF header ends, to represent a "RISC-V header format version number".
>>> Then if we add more fields that follow the PE/COFF header -- for example,
>>> to represent the RISC-V instruction set extensions that are required to
>>> run this binary -- we can just bump that RISC-V-specific version number
>>> field to indicate to bootloaders that there's more there.
>>>
>> That would be inventing our RISC-V specific header format.  However, we
>> can always use the one of the reserved fields in proposed header (res4)
>> for this purpose.
> 
> What are the semantics of those reserved fields?
> 

+struct riscv_image_header {
+	u32 code0;
+	u32 code1;
+	u64 text_offset;
+	u64 image_size;
+	u64 res1;
+	u64 res2;
+	u64 res3;
+	u64 magic;
+	u32 res4; ---> We can use this for versioning when required
+	u32 res5; ---> This is reserved for PE/COFF header
+};

>> Do we need to add it now or add it later when we actually need a version
>> number. My preference is to add it later based on requirement.
> 
> If it isn't added now, how would bootloaders know whether it was there or
> not?
> 
> 
Here is the corresponding U-Boot Patch
https://patchwork.ozlabs.org/patch/1096087/

Currently, boot loader doesn't care about versioning. Since we are 
updating a reserved field, offsets will not change. If a boot loader 
want to use the versioning, it should be patched along with the kernel 
patch.

Any other boot loader that doesn't care about the version, it can 
continue to do so without any change.

My idea is to enable the minimum required fields in this patch and keep 
everything else as reserved so that it can be amended in future as required.

Regards,
Atish

> - Paul
> 


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
