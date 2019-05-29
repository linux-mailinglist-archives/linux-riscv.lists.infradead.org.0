Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01082D6F5
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 09:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kk0V0+Zx7TbTIPdiBQ40CZZdwBKhBoeu/srqOYR+oTw=; b=JxpqPypTObhizedOMFK9lexyf
	y3tAMGx7yJich6+zDgcMvDc0NnAqDCR12ffgFJwB6RYFq/KPZGs7cS9PfQcL2an+sLWnteDq3RCSg
	12esdcov1xyfrTSr0VzDXrPx0g6zpdB3XCKd97zXOa6kTabu3Mk8/9Hs6qWic01amf9TnX6Tr4sot
	EYSkXYwxu1eIW6Yxj7QglFon0vmzfsJoP+rcshTHC2cUV1kOnUrNkg/w74EIg1jDcRUcuh1ReJICB
	JpTnB7+6spJ2U8Z52WUp+IYRCtjvVdwJZ11xE2WXAjgPBb3Qt6zXq7Vkp9AXt00fehU+YI3wiksnh
	9b06KHIoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtLu-0003wU-D9; Wed, 29 May 2019 07:50:26 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtLr-0003w9-71
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 07:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559116223; x=1590652223;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=KUVsQw7OgW/kdN3Vvw/e1KcDS8jMukqEr8h0mTR4QQk=;
 b=jjcwvqbOoaALizlgc/RIpdqFaGWtDqtE+xC3XNc9uVdIcNBKfU2/MBpV
 4wGyYoOvfwiYut6AIn+BF8UivhSdrMonn9OChEk62KiJe49XOIoj8IJEH
 uk/G2dLLpwYvtQIJBmEP0MvaqlakNbcWjQD7yhaLeOCX6bMsPcXiTOo+o
 /avzc9+UhqB6sM1xVCTzxPSFakGsQaz1CeZvywVEEy4k+8SdK/xuNoPzt
 UWAVmb58bSBpwy9sbI8KuErNseCRnJKtSo5T0mmDEqMZ3ZP/zNvrCShCd
 LezUvMqs+H0bqeNMmRaiS7ihEDRDPg6xs8r9cZ03ohkhUykqA0T1I3Adl w==;
X-IronPort-AV: E=Sophos;i="5.60,526,1549900800"; d="scan'208";a="215531278"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 29 May 2019 15:50:16 +0800
IronPort-SDR: cALlX7iyM0cdq93GQdI7Lvtod2OdVRz+jmqjAaRJ9q7U5NcXMdpHoEgSNLGmtSQzWNislApqLl
 lLhDBTcb6m4F3xmf9pxcGuy/cKgBATE+jAtdQ81PYtVCqSefSa9DK17Fn2Rf6N6HVHtOdkTTWO
 iLZfDXai0hrdG/KWpO2EaYlS7Snt/E+2X7a9FTcIsGbRYo46ZBgZqt63FYG0UiwurcfK5NgBMQ
 dxZT0KehIFhkWzKWkidQqY+wHcxM+QibDMw1v6UIDRZKWUhH4vl2BXDitviyHbMWp8BuTM233h
 w2KfrgColHRArr1E+L7GtjzN
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 May 2019 00:27:49 -0700
IronPort-SDR: xgvvJZ5deWaOIO4dZ++h7DKDc/Cjk9TLmq5ZqsgkARLjYeR5t1clzE+y3g3BB3DHU8MlAVzV4b
 9WMG7D6ByQ04ssYtfwwIApBxqODRk50i9uq+dfWugwiyuDihWnS+2hN9hpQ1dbI0kPCLbgK5GV
 zTdm7+HrMdleOrbFpAQG0zB0TWtagGba4wytnnbwkjvb5ZZ7ssoT59+mPxZwFP/wFQPRnQW7Th
 IdPRKcXLjTcCK6wXmO1paOgSnqDfeAAjgmxrTmEdWJCRmbd0dcV4+KbckZRYDLNhVbxTqKCsyN
 4gI=
Received: from unknown (HELO [10.225.100.40]) ([10.225.100.40])
 by uls-op-cesaip01.wdc.com with ESMTP; 29 May 2019 00:50:16 -0700
Subject: Re: Testing the recent RISC-V DT patchsets
To: Karsten Merker <merker@debian.org>, Loys Ollivier <lollivier@baylibre.com>
References: <alpine.DEB.2.21.9999.1904221705170.18377@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1905280105110.20842@viisi.sifive.com>
 <86o93mpqbx.fsf@baylibre.com>
 <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
From: Atish Patra <atish.patra@wdc.com>
Message-ID: <081611ea-a0d3-b0c9-3e08-8946513f2174@wdc.com>
Date: Wed, 29 May 2019 00:50:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528153542.jfkkwycyc3vu6hld@excalibur.cnev.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_005023_369834_A32BC59B 
X-CRM114-Status: GOOD (  20.31  )
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

On 5/28/19 8:36 AM, Karsten Merker wrote:
> On Tue, May 28, 2019 at 05:10:42PM +0200, Loys Ollivier wrote:
>> On Tue 28 May 2019 at 01:32, Paul Walmsley <paul.walmsley@sifive.com> wrote:
>>
>>> An update for those testing RISC-V patches: here's a new branch of
>>> riscv-pk/bbl that doesn't try to read or modify the DT data at all, which
>>> should be useful until U-Boot settles down.
> [...]
>>> Here is an Linux kernel branch with updated DT data that can be booted
>>> with the above bootloader:
>>>
>>>     https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1-experimental
>>>
>>> A sample boot log follows, using a 'defconfig' build from that branch.
>>
>> Thanks Paul, I can confirm that it works.
>>
>> Something is still unclear to myself.
>> Using FSBL + riscv-pk/bbl the linux kernel + device tree boots.
>> Neither FSBL nor riscv-pk/bbl are modifying the DT.
>>
>> Using FSBL + OpenSBI + U-Boot the same kernel + device tree hangs on
>> running /init.
>>
>> Would you have any pointer on what riscv-pk does that OpenSBI/U-boot doesn't ?
>> Or maybe it is the other way around - OpenSBI/U-boot does something that
>> extra that should not happen.
> 
> Hello,
> 
> I don't know which version of OpenSBI you are using, but there is
> a problem with the combination of kernel 5.2-rc1 and OpenSBI
> versions before commit
> 
>    https://github.com/riscv/opensbi/commit/4e2cd478208531c47343290f15b577d40c82649c
> 
> that can result in a hang on executing init, so in case you
> should be using an older OpenSBI build that might be the source
> of the problem that you are experiencing.
> 
> Regards,
> Karsten
> 

I verified the updated DT with upstream kernel for the boot flow OpenSBI 
+ U-Boot + Linux or OpenSBI + Linux.

OpenSBI should be compiled for sifive platform with following additional 
argument

FW_PAYLOAD_FDT_PATH=<linux kernel 
source>/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dtb

FYI: It will only work when kernel is given a payload to U-Boot/OpenSBI 
directly.

Network booting is still not working as the clock driver probe doesn't 
happen because of the updated DT.

-- 
Regards,
Atish

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
