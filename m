Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDA5FC09A
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 08:16:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YpBw7bj3OWl+eSOzGEoLG7UYs8cH6NM6l5s9ZApJq4=; b=nE7dnCvojzFHg3
	oyQ9ApxBZlNqp4+5XMexVIZoA167542K0xQFx6Yo9XTPZ/Q/k7/v6YJ7eFi7oJ+fTwoAasQM2y4T2
	+tB9EB7ihCIWDB+WoYDSMnNe48V3ofM+NkpUuZ5s4PYtxLwc+dqZktIbn11tUkXFFXpOTqHf/EU7c
	h4pXSLvSyLH+S6k0TOYdOx6/IV845oyCRxdPgRP1RbOmtFXri5AUI24wYKNQkM8l0op+Yg446VclA
	2vHBhnKlVbv7z9gRt68mcZK69i8IkuyqkULn+kXOKvpFCy9CN5kMfgp5XcGYdTTYoiWDdHNAiThUC
	Tt1D0zeZHSuM/w7p0xJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9MH-0003Ng-GL; Thu, 14 Nov 2019 07:16:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9MD-0003MJ-J6
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 07:15:58 +0000
Received: from localhost (unknown [223.226.110.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 539B9206C0;
 Thu, 14 Nov 2019 07:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573715756;
 bh=CdaQJfZeE12NS1/9Gejd29MDaXIfXJWzS072VrL8Xes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PhsOCoDGSgOK8ezKmJxaKvTdSHilYh12J6nNN8tFokL7n2P2BHdFFLr3jKRR4wcSB
 kHkUc5uIaH/d1CCakQKBk9IVDJHVa0Hzz7WHtWGluW3kwSI9Kb0arWaeqG8M6/M0vt
 /5dpCcS3I4+Zhf/lF6Xke7riMzVuVnG37CmLzPhs=
Date: Thu, 14 Nov 2019 12:45:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Green Wan <green.wan@sifive.com>
Subject: Re: [PATCH v6 0/4] dmaengine: sf-pdma: Add platform dma driver
Message-ID: <20191114071551.GQ952516@vkoul-mobl>
References: <20191107084955.7580-1-green.wan@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107084955.7580-1-green.wan@sifive.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_231557_650693_E0AD608F 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, Bin Meng <bmeng.cn@gmail.com>,
 dmaengine@vger.kernel.org, Yash Shah <yash.shah@sifive.com>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 07-11-19, 16:49, Green Wan wrote:
> Add PDMA driver support for SiFive HiFive Unleashed RevA00 board. Mainly follows
> DMAengine controller doc[1] to implement and take other DMA drivers as reference.
> Such as
> 
>   - drivers/dma/fsl-edma.c
>   - drivers/dma/dw-edma/
>   - drivers/dma/pxa-dma.c
> 
> Using DMA test client[2] to test. Detailed datasheet is doc[3]. Driver supports:
> 
>  - 4 physical DMA channels, share same DONE and error interrupt handler. 
>  - Support MEM_TO_MEM
>  - Tested by DMA test client
>  - patches include DT Bindgins document and dts for fu450-c000 SoC. Separate dts
>    patch for easier review and apply to different branch or SoC platform.
>  - retry 1 time if DMA error occurs.

I have applied this expect dt change. I see some warns due to missing
kernel-doc style comments with W=1, please fix that and send update on
top of these

Thanks
-- 
~Vinod

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
