Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BFCCFE07
	for <lists+linux-riscv@lfdr.de>; Tue,  8 Oct 2019 17:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhDz5do90e23nEM1b2DJz8LYAgntaK+WtwDw5fG8Bvc=; b=Ub+5cor8DTdPfS
	reOqeyKiu3fa0yS+5h5YsfgS/D5Lux9KieW5jy0vs7G7t3yfjS4TpP1zFSxtwOEuJYJXHVwTm88n6
	i0UwEDBPurRC14QzYwPUe7urTe7D3vCZPkLqTsEsx4xzPUWIZlxksra2ct0CuO4nSG+pCScZPIU3A
	yLck72WQIhPu4bflWO+XyOIXbjA+Zaxxgnkk+S//fuc594a5CnpYi9t7b00EDYhG/8OwPkxDIuJ88
	2hzEox/gmfmt7jW4dzMVMJQ54H9LH+bNn8M2bUpJvDa5R8lYImoeziWpEc5hyK6qPQ0ZQ1DXYyHvv
	J/KNqJt/M+Mt30HCe2uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrhO-0004ll-Sb; Tue, 08 Oct 2019 15:46:54 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iHrhM-0004lP-GK; Tue, 08 Oct 2019 15:46:52 +0000
Date: Tue, 8 Oct 2019 08:46:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v2] PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for
 Microblaze
Message-ID: <20191008154652.GB7903@infradead.org>
References: <b5959a9f6bfa65f0ae1a6a184e1b09dcec8e8f15.1570539512.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5959a9f6bfa65f0ae1a6a184e1b09dcec8e8f15.1570539512.git.michal.simek@xilinx.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: Kuldeep Dave <kuldeep.dave@xilinx.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, monstr@monstr.eu,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Firoz Khan <firoz.khan@linaro.org>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> index a304f5ea11b9..9d259372fbfd 100644
> --- a/drivers/pci/Kconfig
> +++ b/drivers/pci/Kconfig
> @@ -52,7 +52,7 @@ config PCI_MSI
>  	   If you don't know what to do here, say Y.
>  
>  config PCI_MSI_IRQ_DOMAIN
> -	def_bool ARC || ARM || ARM64 || X86 || RISCV
> +	def_bool ARC || ARM || ARM64 || X86 || RISCV || MICROBLAZE

Can you find out what the actual dependency is so that we can
automatically enabled this instead of the weird arch list?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
