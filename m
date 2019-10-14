Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C16DD6BFF
	for <lists+linux-riscv@lfdr.de>; Tue, 15 Oct 2019 01:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=n7HyO1ceOIQ6Bk+CNftWc8+3oLRIVXjAl3Yj4LxBxHc=; b=kX9URTRBYB1/9O
	WTP5lJlKLcGj7A2jmMhr1gSYXmPk5MMDGLgeuKf68+x9YbZcPd7vifFgRF7bo1k5QXC8G3VCnVI2K
	phAVYymxZq70LAA2vgdMZf2fZSwDeZeRTkayreG9FzoPXfG5JS5Hl2J1sPBwVmI2JeBuKVg+X+5Ts
	C0H+g00fD42bNII+Mdoruu3Jl+zkRwExv5DAxFJnxJTX4Hx1fs187ZjKW0Ggzp4PDx/WhO25CLpes
	J0GZiidRvN1bSOHyu61JhVaxbnwxwjTKecl3SKymsz2/YO1BIuTpkzBZSZqednUB04+cjyfDxkZJ1
	/dawqLrEZbG68KLljWeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK9gu-0006pR-5h; Mon, 14 Oct 2019 23:23:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK9gq-0006oZ-US
 for linux-riscv@lists.infradead.org; Mon, 14 Oct 2019 23:23:50 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98A62217F9;
 Mon, 14 Oct 2019 23:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571095428;
 bh=AoS9bumm7eRsNMYlt9JxKKDtGznr35Rexk3AX3JJ7z4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=mv7GkiSSdYCYgHVoYCHdesx8vq8x2FUIhVSFSlbxNMeits476kgsTUQpe3TL/XXim
 kIiNjeXfnMtUH8m8AEQAT/jQYcDjPhsf9M9Gazc0aJU1/2xDtcxvhGvmne/MsC08nB
 phnBI50cCKjQQNUs8VHxCotQkRw2fo/Pe25AMaZ0=
Date: Mon, 14 Oct 2019 18:23:45 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v2] PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for
 Microblaze
Message-ID: <20191014232345.GA246093@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008154652.GB7903@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_162349_010401_B3628639 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Kuldeep Dave <kuldeep.dave@xilinx.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-pci@vger.kernel.org, monstr@monstr.eu,
 Michal Simek <michal.simek@xilinx.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Firoz Khan <firoz.khan@linaro.org>, git@xilinx.com,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Oct 08, 2019 at 08:46:52AM -0700, Christoph Hellwig wrote:
> > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > index a304f5ea11b9..9d259372fbfd 100644
> > --- a/drivers/pci/Kconfig
> > +++ b/drivers/pci/Kconfig
> > @@ -52,7 +52,7 @@ config PCI_MSI
> >  	   If you don't know what to do here, say Y.
> >  
> >  config PCI_MSI_IRQ_DOMAIN
> > -	def_bool ARC || ARM || ARM64 || X86 || RISCV
> > +	def_bool ARC || ARM || ARM64 || X86 || RISCV || MICROBLAZE
> 
> Can you find out what the actual dependency is so that we can
> automatically enabled this instead of the weird arch list?

Hi Michal, I'll wait for your response on whether it's feasible to do
something smarter than listing every arch here.  Please ping here or
post a v3; since I marked this patch "Changed Requested" in patchwork,
it's fallen off my to-do list.

Bjorn

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
