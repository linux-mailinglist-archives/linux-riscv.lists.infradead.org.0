Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3A930891
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 08:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNT2cmtvhAkhwrLR6oUSJiLEaszRIxxM/MBpwMzRYaw=; b=J4GxIBce/2I+E2
	8bzFohvExg5r6nA30UvLfDdTXFXFX/MqwL3ym8kQdi/LTPRfm1henlgbGRHM9PXrIx5q/DhiDJgkT
	ttKCBXtn49KMFVQWrgvchAIJtUt6yiQJmljngcP52PcNMImMKHz0d1YEsMw7uuaO6N/HpVKxqzKcp
	JI52qeOPuvqMyFliP1hrQrCA7szvtXIj+sCbEga/rE0qc2ZP2u+pa8QDVMEIF+1fcWPHn4/LNXj/+
	ElRXelfXBNU/hUOfIROcbcqYk9C2fPp4m20TlBCRzNBuqTdS6/gImpp2h2KqYW3sYCSruMsOrvy/6
	2w9b8ulDZjh7mVkYjjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWb61-0000T8-1z; Fri, 31 May 2019 06:32:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWb5w-0000Nw-5v
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 06:32:54 +0000
Received: from localhost (unknown [106.201.101.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51F4826455;
 Fri, 31 May 2019 06:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559284371;
 bh=oFP/SAJV+4Vb3UNWlxHUzFHUMIdfilBJY3UrKlBzR5o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GToR4zeeVAd2EKPmME5kECg0EgfRINrTh6m1b1OFxqVCb/u5f7mwd7iPF/E+sQWEQ
 Wc8/8NL+Jf1Ibhv7sPBcaC8szot64JsZk7cY6sSTnkNgVOCXBMYj/dh7hfY2t330+i
 5R0HdYVc8bFjSuohKnVhv4Wns1WYghfoMNF/YYxg=
Date: Fri, 31 May 2019 12:02:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
Message-ID: <20190531063247.GP15118@vkoul-mobl>
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
 <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
 <20190531050727.GO15118@vkoul-mobl>
 <d2d8a904-d796-f9f2-8f4a-61e857355a4f@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2d8a904-d796-f9f2-8f4a-61e857355a4f@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_233252_623142_A3933E41 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 "palmer@sifive.com" <palmer@sifive.com>, "kjlu@umn.edu" <kjlu@umn.edu>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 Alan Mikhak <alan.mikhak@sifive.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "wen.yang99@zte.com.cn" <wen.yang99@zte.com.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 31-05-19, 10:50, Kishon Vijay Abraham I wrote:
> Hi Vinod,
> 
> On 31/05/19 10:37 AM, Vinod Koul wrote:
> > Hi Kishon,
> > 
> > On 30-05-19, 11:16, Kishon Vijay Abraham I wrote:
> >> +Vinod Koul
> >>
> >> Hi,
> >>
> >> On 30/05/19 4:07 AM, Alan Mikhak wrote:
> >>> On Mon, May 27, 2019 at 2:09 AM Gustavo Pimentel
> >>> <Gustavo.Pimentel@synopsys.com> wrote:
> >>>>
> >>>> On Fri, May 24, 2019 at 20:42:43, Alan Mikhak <alan.mikhak@sifive.com>
> >>>> wrote:
> >>>>
> >>>> Hi Alan,
> >>>>
> >>>>> On Fri, May 24, 2019 at 1:59 AM Gustavo Pimentel
> >>>>> <Gustavo.Pimentel@synopsys.com> wrote:
> >>>>>>
> >>>>>> Hi Alan,
> >>>>>>
> >>>>>> This patch implementation is very HW implementation dependent and
> >>>>>> requires the DMA to exposed through PCIe BARs, which aren't always the
> >>>>>> case. Besides, you are defining some control bits on
> >>>>>> include/linux/pci-epc.h that may not have any meaning to other types of
> >>>>>> DMA.
> >>>>>>
> >>>>>> I don't think this was what Kishon had in mind when he developed the
> >>>>>> pcitest, but let see what Kishon was to say about it.
> >>>>>>
> >>>>>> I've developed a DMA driver for DWC PCI using Linux Kernel DMAengine API
> >>>>>> and which I submitted some days ago.
> >>>>>> By having a DMA driver which implemented using DMAengine API, means the
> >>>>>> pcitest can use the DMAengine client API, which will be completely
> >>>>>> generic to any other DMA implementation.
> >>
> >> right, my initial thought process was to use only dmaengine APIs in
> >> pci-epf-test so that the system DMA or DMA within the PCIe controller can be
> >> used transparently. But can we register DMA within the PCIe controller to the
> >> DMA subsystem? AFAIK only system DMA should register with the DMA subsystem.
> >> (ADMA in SDHCI doesn't use dmaengine). Vinod Koul can confirm.
> > 
> > So would this DMA be dedicated for PCI and all PCI devices on the bus?
> 
> Yes, this DMA will be used only by PCI ($patch is w.r.t PCIe device mode. So
> all endpoint functions both physical and virtual functions will use the DMA in
> the controller).
> > If so I do not see a reason why this cannot be using dmaengine. The use
> 
> Thanks for clarifying. I was under the impression any DMA within a peripheral
> controller shouldn't use DMAengine.

That is indeed a correct assumption. The dmaengine helps in cases where
we have a dma controller with multiple users, for a single user case it
might be overhead to setup dma driver and then use it thru framework.

Someone needs to see the benefit and cost of using the framework and
decide.

> > case would be memcpy for DMA right or mem to device (vice versa) transfers?
> 
> The device is memory mapped so it would be only memcopy.
> > 
> > Btw many driver in sdhci do use dmaengine APIs and yes we are missing
> > support in framework than individual drivers
> 
> I think dmaengine APIs is used only when the platform uses system DMA and not
> ADMA within the SDHCI controller. IOW there is no dma_async_device_register()
> to register ADMA in SDHCI with DMA subsystem.

We are looking it from the different point of view. You are looking for
dmaengine drivers in that (which would be in drivers/dma/) and I am
pointing to users of dmaengine in that.

So the users in mmc would be ones using dmaengine APIs:
$git grep -l dmaengine_prep_* drivers/mmc/

which tells me 17 drivers!

HTH
-- 
~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
