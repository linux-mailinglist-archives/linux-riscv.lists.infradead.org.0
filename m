Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B69F2E2DB
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 19:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=abT3wS58yHChK2FxTlY2MHNKdCX0BQWsMOf1AZY7ohU=; b=IXjBlN1/Q73j7bLk3LKnDSwGw
	v+BRciQonZKHe9uMoyyLpbhkS3Rfg3zz1JG2M+tUe2BOm688fMbUuZk9muvp2/8I6bg8U5zn42CJa
	FYan1x33G3Xy/NUtFpWfBnVFBfsgnL2kg+wFkgnkb9/lllQcBjcMd+qMYAdhYIa3y6WhoIHgKnqfm
	3VgXrRzdIiSnV2IHqD6BIWXtkPfXR5LzZISioSMpRpEvwPP/71srdzG0eKV0UrAjn5O/EFGUE4UFC
	wHUG9sMyxrp8vYZ6dadpnTIgeklhAuRXqLD147hBKA769CAf8ltPhBo1gChym0xU5wpNDxTJxFk8a
	wq8AkolpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW24w-0003Is-H3; Wed, 29 May 2019 17:09:30 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW24s-0003I7-1G
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 17:09:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559149765; x=1590685765;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=D34VPipzn/oapeL312CeeZidhriO/NJFGPDENgL1lqc=;
 b=fVXIEsXExXbBg0rCNiYnjzRWZ6fCHrz/hchYcXtXmq4rsTYPOnfqwx3v
 tnqSX9OWTgm0b87GrUEfC3dJp/j1AAnukMtSIDcfil4m7mJvCAQdzf/DA
 N4lhqbiyEQUZyUGjuBLeKnjlYdBXt2pAsqtJbFFtpB9kq2XmobSiAqflv
 xbemHBm41IRplf9Vx2irY+MPmyQJg2Xs/giKTtgoVDjVTj4/xrTpUe6oa
 HHAuwHNrUWgjwy8fvmTMt1h8xkDA1Rkxwp0WsuLMfEtwZbaIK1bYixYrF
 AvYJ+zZzBqOMMLoL4UEiM3pnQ662j6iRwHUPCNVh2HJguEbVfvFAJPHP7 g==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="215569821"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 01:09:21 +0800
IronPort-SDR: 8Fjrp1O9/fwEzBat189KmQIkkukBwjGCFhY+4JjMLWo+uwHEgoBbs0ZOSl+oFWWYlkH5ETvqcc
 ndyNgyYHg/12CMxoO7SpqPAExJ4oxVR3kyDbCdjL+asWgPHFQEeB8M1GiNYMX2LgyIK3rC9w03
 ujztB71lef04OtvWY6ENcwt6471aujIkIMpQD+5IIvygZHTEFYw1UvGQgBQOvutO7z2bKsxGv4
 AtOx66hJE5Y4VCHZ7NbRgjKaOy8436kd4CiChrzoE322GycHVZJ8JAa84Yo5mFCp84jE1W6HFz
 UVes/7VYohWKm4KIyajmY5AG
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP; 29 May 2019 09:44:31 -0700
IronPort-SDR: 9bskIwRH3RoF5w+9WdRWx9p8kCic0KhSra1vXgXio7XEsq/AjQDxclsqrawZ1zOPqacy5jDH7m
 g8KUQ40eFChOIN0cTWeXAMthnhw47R7W3XR8+XcPuGsSypGhzPdpMHfKpH85/Cou0TZtyqnUh0
 NSYciRAdH3DXdRVEL93lm1T8HdV1fnOpq1+lCTAPrriwIwQoq/ClIdB6JUxUIYQ96UrKg0fuzC
 ViE/nNOKK7OV/vFyutAqGrTReXcsjg/FzdCY0ZcAfXpflJCss8QP51A1AhENSjUyq+8kFfTrmj
 7jE=
Received: from r6220.sdcorp.global.sandisk.com (HELO [192.168.1.6])
 ([10.196.157.143])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 May 2019 10:09:21 -0700
Subject: Re: Testing the recent RISC-V DT patchsets
To: Loys Ollivier <lollivier@baylibre.com>, Karsten Merker <merker@debian.org>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
 <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com> <86woi94lvs.fsf@baylibre.com>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <42a6c3bd-484b-138b-b0f1-2d4b91c5b0bb@wdc.com>
Date: Wed, 29 May 2019 10:09:19 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <86woi94lvs.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_100926_198000_3A8633CD 
X-CRM114-Status: GOOD (  22.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 5/29/19 3:04 AM, Loys Ollivier wrote:
> On Wed 29 May 2019 at 00:50, Atish Patra <atish.patra@wdc.com> wrote:
> 
>> On 5/28/19 8:36 AM, Karsten Merker wrote:
>>> On Tue, May 28, 2019 at 05:10:42PM +0200, Loys Ollivier wrote:
>>>> On Tue 28 May 2019 at 01:32, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>>>>
>>>>> An update for those testing RISC-V patches: here's a new branch of
>>>>> riscv-pk/bbl that doesn't try to read or modify the DT data at all, which
>>>>> should be useful until U-Boot settles down.
>>> [...]
>>>>> Here is an Linux kernel branch with updated DT data that can be booted
>>>>> with the above bootloader:
>>>>>
>>>>>      https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1-experimental
>>>>>
>>>>> A sample boot log follows, using a 'defconfig' build from that branch.
>>>>
>>>> Thanks Paul, I can confirm that it works.
>>>>
>>>> Something is still unclear to myself.
>>>> Using FSBL + riscv-pk/bbl the linux kernel + device tree boots.
>>>> Neither FSBL nor riscv-pk/bbl are modifying the DT.
>>>>
>>>> Using FSBL + OpenSBI + U-Boot the same kernel + device tree hangs on
>>>> running /init.
>>>>
>>>> Would you have any pointer on what riscv-pk does that OpenSBI/U-boot doesn't ?
>>>> Or maybe it is the other way around - OpenSBI/U-boot does something that
>>>> extra that should not happen.
>>>
>>> Hello,
>>>
>>> I don't know which version of OpenSBI you are using, but there is
>>> a problem with the combination of kernel 5.2-rc1 and OpenSBI
>>> versions before commit
>>>
>>>     https://github.com/riscv/opensbi/commit/4e2cd478208531c47343290f15b577d40c82649c
>>>
>>> that can result in a hang on executing init, so in case you
>>> should be using an older OpenSBI build that might be the source
>>> of the problem that you are experiencing.
>>>
>>> Regards,
>>> Karsten
>>>
>>
>> I verified the updated DT with upstream kernel for the boot flow OpenSBI
>> + U-Boot + Linux or OpenSBI + Linux.
>>
>> OpenSBI should be compiled for sifive platform with following additional
>> argument
>>
>> FW_PAYLOAD_FDT_PATH=<linux kernel
>> source>/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb
>>
>> FYI: It will only work when kernel is given a payload to U-Boot/OpenSBI
>> directly.
>>
> 
> Hum, I am surprised by this statement.

That's because U-Boot also using the new DT. With FW_PAYLOAD_FDT_PATH, 
OpenSBI ignores the DT from FSBL and U-Boot gets the updated DT from 
OpenSBI.


> I was able to verify the latest DT patch serie from Paul with:
> OpenSBI + U-Boot + Linux & DT.
> 
> Following the OpenSBI documentation [0] with U-Boot payload:
> FW_PAYLOAD_PATH=<u-boot_build_dir>/u-boot.bin
> 
> I get an U-Boot prompt and then I can just load the linux kernel and
> device tree from the network.
> 

Cool. This approach will also work where DT is loaded separately after 
U-Boot is booted.

> [0]: https://github.com/riscv/opensbi/blob/master/docs/platform/sifive_fu540.md#building-sifive-fu540-platform
> 
>> Network booting is still not working as the clock driver probe doesn't
>> happen because of the updated DT.
>>
>> -- 
>> Regards,
>> Atish
> 


-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
