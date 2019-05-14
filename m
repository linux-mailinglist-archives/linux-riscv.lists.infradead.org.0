Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F751C047
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 03:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fwcSQQZmdCIqQrE1hPEI38wNCaf2AfY1oiGKVhnlBHk=; b=a05D/AVzTfL4QKqMDIT9ZNtSU
	3lP+nHjrz/0+62Zz0oWCS+vA6WjFT1kOb+dSrMB0Q4TP+MyBTCk2WPND/A8L9M64YerWWOvtL9FkP
	b3V71crNHpGclxWLmNk48bjJdOKTSFy9nR2jiLrkidkMj6yA6LYLO4U/WnGqAWNIm3AdLrQ5+jFy1
	vtJ3AUAxqKPm8zbOcVb98BdTIZ2oNbSTUwzHOlBeYOAea6Fxkzl4bF/mOXL6PG0OLt3+GH7LAO/Au
	HLizsH2oMB2vsLXLC2Y2XXW0KMhBhw1tPjBsepz0DUCLA8c4w/t94hl9feVLkAeVUwvGZLRHPcImF
	GkqUdn3DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQM0q-0002up-7e; Tue, 14 May 2019 01:13:48 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQM0m-0002uT-UJ
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 01:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557796424; x=1589332424;
 h=from:subject:to:cc:references:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=9juYBFVf8mf5TEwXUaUtYjhsarFThNrJb5xpCA/IsEg=;
 b=PQSYJ2NQEl8fVoydbGf5Cd3fu8zQwIbZ+Ous95S4GIr50S5Y1q3XK2O5
 ZxyTXCaa2NhQFtgR2T0JG+pJpxTjHJUV/7fPFetesFr0Mzmue1w3wR4yf
 RnqfWOvhxs9g2CAPdL+EGFzZRC5qVvSz6B+qWgC/VvUkf5eR5Wl/i0vXE
 P/TVhBXK92aCX49/Dm/otv/Aen6LGdqVWhARFxlepiPmLEHzpguu30r5U
 c3X1RFYI+8oAIs/bkQzj8hgl43PhBhwrFAz+Lkq1gvtjr1Sfj4AH/2VqQ
 RFSFNPDIyvnxKQklg22sC+sdDmKOJY3xI+5dHVNADHFpi+j4LrTQgXd+8 g==;
X-IronPort-AV: E=Sophos;i="5.60,466,1549900800"; d="scan'208";a="214263950"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2019 09:13:44 +0800
IronPort-SDR: NjpOLLalk7lTTfp/C5F1KMYARbtwqJWZGtvxM7BErPcbp9ZpJEyuUSnzmQ10TZ4rUGSx0MszTe
 MEtq6HrYj2ABhwty3uPm/+qC5N1PgFzxWAlkKtm4tMr86fZw7p+Gt4QXz8B8KhVJ39Nt65zx3O
 S+vdmdtluegyMkbCEqwJSaoYNC5aeTepqiZ+ePXYhBOvEqYnmkIs/2hbzcgSmcskUCd5ZtWMih
 +4x4/bOLnmNb3yEcya5vpp63tjnH24cjnN7f0+hdl8ZA4ddZfOJfiSmOQrpjHhDfkj/xP/Vkom
 s9ZsNV7iMVJBHRdPFJIAQxB+
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 13 May 2019 17:49:33 -0700
IronPort-SDR: HcXY/XiTpNoPEGl3/L36Kj61w+k9Fsmhxa7gOB3KR/MKq82AZS48PbNFH1aTLLXk6+6OujlaRl
 K2vruz1Z49Bk6paXXUzN+n6iKiwnSchwxSNheFJIgET9CQpQbtyshbUJ/OeY9cvu+Tqd4NhJCr
 HiWA3SWEtSPYGjMARX6BP3nGAKSquZeUcKVX0Bztix+1KTAb2Di7ZvgE1wUkFX6RxTMaURMygQ
 pEj6cX+RwVOPZ1PhQU+LB/ZWvOM2pmvPvpQTiyaKPKbvvuP3AYwbsRcoOrXi9gubV3HcHJWWZR
 mA8=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 May 2019 18:13:44 -0700
From: Atish Patra <atish.patra@wdc.com>
Subject: Re: [v2 PATCH] RISC-V: Add a PE/COFF compliant Image header.
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20190501195607.32553-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1905131522370.21198@viisi.sifive.com>
 <a498967c-cdc8-637a-340b-202d216c5360@wdc.com>
 <alpine.DEB.2.21.9999.1905131704371.21198@viisi.sifive.com>
 <a3eb8e32-5344-801e-03ef-98107ed13130@wdc.com>
 <alpine.DEB.2.21.9999.1905131735450.21198@viisi.sifive.com>
Message-ID: <bb7f36bd-d614-b235-7100-3d965f92afc8@wdc.com>
Date: Mon, 13 May 2019 18:13:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1905131735450.21198@viisi.sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_181344_993218_0682F767 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 5/13/19 5:40 PM, Paul Walmsley wrote:
> On Mon, 13 May 2019, Atish Patra wrote:
> 
>> On 5/13/19 5:09 PM, Paul Walmsley wrote:
>>
>>> What are the semantics of those reserved fields?
>>
>> +struct riscv_image_header {
>> +	u32 code0;
>> +	u32 code1;
>> +	u64 text_offset;
>> +	u64 image_size;
>> +	u64 res1;
>> +	u64 res2;
>> +	u64 res3;
>> +	u64 magic;
>> +	u32 res4; ---> We can use this for versioning when required
>> +	u32 res5; ---> This is reserved for PE/COFF header
>> +};
> 
> I saw that in your patch.  The problem is that this doesn't describe what
> other software might expect in those fields.  Can anything at all be
> placed in those reserved fields?
> 

Yes. The reserved fields can be used for anything that boot loaders and 
Linux kernel can agree with each other. If you look at the ARM64, they 
have "Informative flags" in place of res1.

>>>> Do we need to add it now or add it later when we actually need a version
>>>> number. My preference is to add it later based on requirement.
>>>
>>> If it isn't added now, how would bootloaders know whether it was there or
>>> not?
>>>
>>>
>> Here is the corresponding U-Boot Patch
>> https://patchwork.ozlabs.org/patch/1096087/
>>
>> Currently, boot loader doesn't care about versioning. Since we are updating a
>> reserved field, offsets will not change. If a boot loader want to use the
>> versioning, it should be patched along with the kernel patch.
>>
>> Any other boot loader that doesn't care about the version, it can continue to
>> do so without any change.
>>
>> My idea is to enable the minimum required fields in this patch and keep
>> everything else as reserved so that it can be amended in future as required.
> 
> If those fields really are reserved for implementors to do whatever they
> want with them, then that might be a reasonable approach.  That seems
> unlikely, however, since specification authors usually reserve the right
> to use reserved fields for their own purposes in later versions.
> 
Technically, we are just implementing the "DOS" header part of PE/COFF 
format for now. It only mandates a magic string "MZ" at the top and a 
32bit value at offset 0x3c tells us offset of PE/COFF header in image.
Anything in between is implementation specific.

For example, it will be updated to support EFI stub as described in the 
commit text,
"In order to support EFI stub, code0 should be replaced with "MZ" magic 
string and res5(at offset 0x3c) should point to the rest of the PE/COFF 
header (which will be added during EFI support)."

Regards,
Atish
> 
> - Paul
> 



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
