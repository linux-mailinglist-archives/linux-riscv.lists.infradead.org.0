Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D0D307FF
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 07:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMIiM9SVFApxfd1h5zwe29g0SFpj2whn3hFgbvtJtMA=; b=Vs1uf4CidSsNTl
	pDmbaVM8avhxm1X+q5FKFD6E0t/Gni45OMAf3pVQmKDVDOPxQmAkitd6ik7a+QX0pROdQvmpq3YFK
	6QROZNeKeU6jlxkg869eWlOkPYqZ9Y12P1+cQR9Z+VOaXDL4Opep7+82BqWJYAS7baNFmDKkwDSn8
	ml+7EbG/r64r8iAjowD7o8Qngn4shzBPEGKT7muT0W/xVbBnORWSlvPA/DIvBDooXz8A9kPhfB4E7
	0eLTDDdL+HMW6quhm351q2uZCmAkuFnM5eZ45nKol3LXcFQF5jhNGu7SIB6ptAF64zyDyT3DiwDMU
	Slukhzwhl+T87dQ8Elsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWZmC-0004sD-AT; Fri, 31 May 2019 05:08:24 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWZm8-0004rq-EM
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 05:08:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4V58A0U012287;
 Fri, 31 May 2019 00:08:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559279290;
 bh=gYhMecEMX+ee1Qe5Uep//ZaFtqyHp3bCVlIEhSh0Q5Q=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=bfwmmXuqU3bPsQJLn4eNx+JOLtUj+pooy1VGtjiw/IyfHYv3zCkRWFV5NApuw924J
 dTih+VWTZ5r8tlh6taiaOLxdI4AXnzV7CKMN3yfr/B9sDCbyTIfcXtL5Ct7oHcUrrg
 yBdACAm4XwH7WkKeIEoygelHWUf3DYXLeQuECOdI=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4V58A2C053824
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 31 May 2019 00:08:10 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 31
 May 2019 00:08:10 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 31 May 2019 00:08:10 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4V583e3072190;
 Fri, 31 May 2019 00:08:04 -0500
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
To: Alan Mikhak <alan.mikhak@sifive.com>
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
 <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
 <CABEDWGxLeD-K8PjkD5hPSTFGJKs2hxEaAVO+nE5eC9Nx2yw=ig@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <75d578c2-a98c-d1ef-1633-6dc5dc3b0913@ti.com>
Date: Fri, 31 May 2019 10:36:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABEDWGxLeD-K8PjkD5hPSTFGJKs2hxEaAVO+nE5eC9Nx2yw=ig@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_220820_568574_51C14465 
X-CRM114-Status: GOOD (  28.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, "kjlu@umn.edu" <kjlu@umn.edu>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Alan,

On 30/05/19 11:26 PM, Alan Mikhak wrote:
> On Wed, May 29, 2019 at 10:48 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> +Vinod Koul
>>
>> Hi,
>>
>>>>> On Fri, May 24, 2019 at 1:59 AM Gustavo Pimentel
>>>>> <Gustavo.Pimentel@synopsys.com> wrote:
>>>>>>
>>>>>> Hi Alan,
>>>>>>
>>>>>> This patch implementation is very HW implementation dependent and
>>>>>> requires the DMA to exposed through PCIe BARs, which aren't always the
>>>>>> case. Besides, you are defining some control bits on
>>>>>> include/linux/pci-epc.h that may not have any meaning to other types of
>>>>>> DMA.
>>>>>>
>>>>>> I don't think this was what Kishon had in mind when he developed the
>>>>>> pcitest, but let see what Kishon was to say about it.
>>>>>>
>>>>>> I've developed a DMA driver for DWC PCI using Linux Kernel DMAengine API
>>>>>> and which I submitted some days ago.
>>>>>> By having a DMA driver which implemented using DMAengine API, means the
>>>>>> pcitest can use the DMAengine client API, which will be completely
>>>>>> generic to any other DMA implementation.
>>
>> right, my initial thought process was to use only dmaengine APIs in
>> pci-epf-test so that the system DMA or DMA within the PCIe controller can be
>> used transparently. But can we register DMA within the PCIe controller to the
>> DMA subsystem? AFAIK only system DMA should register with the DMA subsystem.
>> (ADMA in SDHCI doesn't use dmaengine). Vinod Koul can confirm.
>>
>> If DMA within the PCIe controller cannot be registered in DMA subsystem, we
>> should use something like what Alan has done in this patch with dma_read ops.
>> The dma_read ops implementation in the EP controller can either use dmaengine
>> APIs or use the DMA within the PCIe controller.
>>
>> I'll review the patch separately.
>>
>> Thanks
>> Kishon
> 
> Hi Kishon,
> 
> I have some improvements in mind for a v2 patch in response to
> feedback from Gustavo Pimentel that the current implementation is HW
> specific. I hesitate from submitting a v2 patch because it seems best
> to seek comment on possible directions this may be taking.
> 
> One alternative is to wait for or modify test functions in
> pci-epf-test.c to call DMAengine client APIs, if possible. I imagine
> pci-epf-test.c test functions would still allocate the necessary local
> buffer on the endpoint side for the same canned tests for everyone to
> use. They would prepare the buffer in the existing manner by filling
> it with random bytes and calculate CRC in the case of a write test.
> However, they would then initiate DMA operations by using DMAengine
> client APIs in a generic way instead of calling memcpy_toio() and
> memcpy_fromio(). They would post-process the buffer in the existing

No, you can't remove memcpy_toio/memcpy_fromio APIs. There could be platforms
without system DMA or they could have system DMA but without MEMCOPY channels
or without DMA in their PCI controller.
> manner such as the checking for CRC in the case of a read test.
> Finally, they would release the resources and report results back to
> the user of pcitest across the PCIe bus through the existing methods.
> 
> Another alternative I have in mind for v2 is to change the struct
> pci_epc_dma that this patch added to pci-epc.h from the following:
> 
> struct pci_epc_dma {
>         u32     control;
>         u32     size;
>         u64     sar;
>         u64     dar;
> };
> 
> to something similar to the following:
> 
> struct pci_epc_dma {
>         size_t  size;
>         void *buffer;
>         int flags;
> };
> 
> The 'flags' field can be a bit field or separate boolean values to
> specify such things as linked-list mode vs single-block, etc.
> Associated #defines would be removed from pci-epc.h to be replaced if
> needed with something generic. The 'size' field specifies the size of
> DMA transfer that can fit in the buffer.

I still have to look closer into your DMA patch but linked-list mode or single
block mode shouldn't be an user select-able option but should be determined by
the size of transfer.
> 
> That way the dma test functions in pci-epf-test.c can simply kmalloc
> and prepare a local buffer on the endpoint side for the DMA transfer
> and pass its pointer down the stack using the 'buffer' field to lower
> layers. This would allow different PCIe controller drivers to
> implement DMA or not according to their needs. Each implementer can
> decide to use DMAengine client API, which would be preferable, or
> directly read or write to DMA hardware registers to suit their needs.

yes, that would be my preferred method as well. In fact I had implemented
pci_epf_tx() in [1], as a way for pci-epf-test to pass buffer address to
endpoint controller driver. I had also implemented helpers for platforms using
system DMA (i.e uses DMAengine).

Thanks
Kishon

[1] ->
http://git.ti.com/cgit/cgit.cgi/ti-linux-kernel/ti-linux-kernel.git/tree/drivers/pci/endpoint/pci-epf-core.c?h=ti-linux-4.19.y
> 
> I would appreciate feedback and comment on such choices as part of this review.
> 
> Regards,
> Alan Mikhak
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
