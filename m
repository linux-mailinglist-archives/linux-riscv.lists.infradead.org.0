Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82ED2F744
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 07:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaJW7X6iYYGx+LUiRrObVHqWPM9Qc5ucmI8qUm1PR+w=; b=NCMndwVcACr6gB
	4CojzqiovC1JXQ45mrxTb1bOAjofKWbhXNNjxSnwxh5yZLEnWpukkj5L+4dhnv/1fPIfqiUElsv0w
	vhSC4LREJvHbhw5+BmSeJLouVyXXrXr99o5lL7TYQyfmPQSuCTVhrP+yR2ntCi7FFZv2ksZL9HvlM
	odWhZR3vgzn5pKqP1Sbt3vADXh6+kaCWHKWJeM+DePnRbqb+ls3J0nG6OYTyEoYSJk/F+EEemMJIC
	WTAzCTB4KNJzHDw6e3VRfqGUiy6mp3QHeX+7n8KDNNvE+6ufG7uOHfhOEEAynqHltGPFPRcgxB2vU
	jueLvqTsByqFnhDpgvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWDvy-0001Nn-18; Thu, 30 May 2019 05:49:02 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWDvZ-0000un-2G
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 05:48:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4U5mMax004090;
 Thu, 30 May 2019 00:48:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559195302;
 bh=BULubM0Khr8oCYN7XRSztHJqd8sQCkB0CspkSrcCSs8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=JqMSTQDEN3DD/f9IU93pGQi+pxbGR0gUzru9HPsXlFgonVjBktxFmcA4HKjqyMNKk
 3LUDpm3n1yShUoMl+NBe8T6vJg/pY1uHqqBtUBKkbAdq0AbrMM5qsNIZj5bFFw/w6y
 WtNki2NsNBuoG13U6/MsP4mBxk/K0Lt5Pe81ojQ4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4U5mM6w010753
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 May 2019 00:48:22 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 30
 May 2019 00:48:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 30 May 2019 00:48:22 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4U5mGmj071595;
 Thu, 30 May 2019 00:48:17 -0500
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
To: Alan Mikhak <alan.mikhak@sifive.com>, Gustavo Pimentel
 <Gustavo.Pimentel@synopsys.com>
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
Date: Thu, 30 May 2019 11:16:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_224837_284712_EFA870B6 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
 "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

+Vinod Koul

Hi,

On 30/05/19 4:07 AM, Alan Mikhak wrote:
> On Mon, May 27, 2019 at 2:09 AM Gustavo Pimentel
> <Gustavo.Pimentel@synopsys.com> wrote:
>>
>> On Fri, May 24, 2019 at 20:42:43, Alan Mikhak <alan.mikhak@sifive.com>
>> wrote:
>>
>> Hi Alan,
>>
>>> On Fri, May 24, 2019 at 1:59 AM Gustavo Pimentel
>>> <Gustavo.Pimentel@synopsys.com> wrote:
>>>>
>>>> Hi Alan,
>>>>
>>>> This patch implementation is very HW implementation dependent and
>>>> requires the DMA to exposed through PCIe BARs, which aren't always the
>>>> case. Besides, you are defining some control bits on
>>>> include/linux/pci-epc.h that may not have any meaning to other types of
>>>> DMA.
>>>>
>>>> I don't think this was what Kishon had in mind when he developed the
>>>> pcitest, but let see what Kishon was to say about it.
>>>>
>>>> I've developed a DMA driver for DWC PCI using Linux Kernel DMAengine API
>>>> and which I submitted some days ago.
>>>> By having a DMA driver which implemented using DMAengine API, means the
>>>> pcitest can use the DMAengine client API, which will be completely
>>>> generic to any other DMA implementation.

right, my initial thought process was to use only dmaengine APIs in
pci-epf-test so that the system DMA or DMA within the PCIe controller can be
used transparently. But can we register DMA within the PCIe controller to the
DMA subsystem? AFAIK only system DMA should register with the DMA subsystem.
(ADMA in SDHCI doesn't use dmaengine). Vinod Koul can confirm.

If DMA within the PCIe controller cannot be registered in DMA subsystem, we
should use something like what Alan has done in this patch with dma_read ops.
The dma_read ops implementation in the EP controller can either use dmaengine
APIs or use the DMA within the PCIe controller.

I'll review the patch separately.

Thanks
Kishon

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
