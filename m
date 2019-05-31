Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF97F307FE
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 07:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IP8HpQsjjg9SiyDQniLNMsoc8//cr3vWVe9bJbYEMGc=; b=BSGjwawtwGurlD
	CS8E9vqtMd0pDaqr4iQEMKwCv5GYXfX6H6oRJT5OeB/rIYr/Rc2ROeW6gBSMvouWXsy4ODm+5P6Ti
	BX0M81u/0g4qp1R6/9qvAkfLeYddebsSjOvvlx1CA7zLswwtSpreuLi0dr/sHeUIp04/QmA8kx0tm
	YjzTTyCUqiXXr8WlVNiUL6P3wBadlpGfZlKmSmj6qu6H3LO8A5ZNMxqghlji4F2LGZ8XWTlS2TmWd
	sHdnDtmfdQeMEgSkX92PJcZl5++nEDP+GLFvvx75pfTEBDgLqZ1XQbhrbAvo/DcNNJZ72H7sfLvj9
	gbeRsGqopJQYsFTKROnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWZlT-0004oQ-GO; Fri, 31 May 2019 05:07:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWZlL-0004nO-UG
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 05:07:34 +0000
Received: from localhost (unknown [106.201.101.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83030247AF;
 Fri, 31 May 2019 05:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559279251;
 bh=BuY1+L8PZfblsP3QxroLV+WEJj4MRFA04xBR95ykdxA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AquQ2Bgfoikgd5TO4sJHzyaj/LT1Z9vqakg/1fT2DY332WLCRR9HUtHKZsTxQ+OgN
 ayAk//NFjxLiVcoqGaFtfzjoyKDh6d56R+XRh3HQ4da2svDXiCummIZ4OwZXRJfbyV
 5asyWPhoCi7dva+x1pyXJLLlxYHDleiJBrKJVWEM=
Date: Fri, 31 May 2019 10:37:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] PCI: endpoint: Add DMA to Linux PCI EP Framework
Message-ID: <20190531050727.GO15118@vkoul-mobl>
References: <1558650258-15050-1-git-send-email-alan.mikhak@sifive.com>
 <305100E33629484CBB767107E4246BBB0A6FAFFD@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxsQ9NXrN7W_8HVrXQBb9HiBd+d1dNfv+cXmoBpXQnLwA@mail.gmail.com>
 <305100E33629484CBB767107E4246BBB0A6FC308@DE02WEMBXB.internal.synopsys.com>
 <CABEDWGxL-WYz1BY7yXJ6eKULgVtKeo67XhgHZjvtm5Ka5foKiA@mail.gmail.com>
 <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <192e3a19-8b69-dfaf-aa5c-45c7087548cc@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_220732_010964_AFC0233E 
X-CRM114-Status: GOOD (  16.39  )
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

Hi Kishon,

On 30-05-19, 11:16, Kishon Vijay Abraham I wrote:
> +Vinod Koul
> 
> Hi,
> 
> On 30/05/19 4:07 AM, Alan Mikhak wrote:
> > On Mon, May 27, 2019 at 2:09 AM Gustavo Pimentel
> > <Gustavo.Pimentel@synopsys.com> wrote:
> >>
> >> On Fri, May 24, 2019 at 20:42:43, Alan Mikhak <alan.mikhak@sifive.com>
> >> wrote:
> >>
> >> Hi Alan,
> >>
> >>> On Fri, May 24, 2019 at 1:59 AM Gustavo Pimentel
> >>> <Gustavo.Pimentel@synopsys.com> wrote:
> >>>>
> >>>> Hi Alan,
> >>>>
> >>>> This patch implementation is very HW implementation dependent and
> >>>> requires the DMA to exposed through PCIe BARs, which aren't always the
> >>>> case. Besides, you are defining some control bits on
> >>>> include/linux/pci-epc.h that may not have any meaning to other types of
> >>>> DMA.
> >>>>
> >>>> I don't think this was what Kishon had in mind when he developed the
> >>>> pcitest, but let see what Kishon was to say about it.
> >>>>
> >>>> I've developed a DMA driver for DWC PCI using Linux Kernel DMAengine API
> >>>> and which I submitted some days ago.
> >>>> By having a DMA driver which implemented using DMAengine API, means the
> >>>> pcitest can use the DMAengine client API, which will be completely
> >>>> generic to any other DMA implementation.
> 
> right, my initial thought process was to use only dmaengine APIs in
> pci-epf-test so that the system DMA or DMA within the PCIe controller can be
> used transparently. But can we register DMA within the PCIe controller to the
> DMA subsystem? AFAIK only system DMA should register with the DMA subsystem.
> (ADMA in SDHCI doesn't use dmaengine). Vinod Koul can confirm.

So would this DMA be dedicated for PCI and all PCI devices on the bus?
If so I do not see a reason why this cannot be using dmaengine. The use
case would be memcpy for DMA right or mem to device (vice versa) transfers?

Btw many driver in sdhci do use dmaengine APIs and yes we are missing
support in framework than individual drivers

> If DMA within the PCIe controller cannot be registered in DMA subsystem, we
> should use something like what Alan has done in this patch with dma_read ops.
> The dma_read ops implementation in the EP controller can either use dmaengine
> APIs or use the DMA within the PCIe controller.
> 
> I'll review the patch separately.
> 
> Thanks
> Kishon

-- 
~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
