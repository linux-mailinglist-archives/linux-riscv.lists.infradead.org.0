Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8414CDA286
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 01:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=04h/hxHLq9FkQ7EvPM+bhviTd9idJoaQvqCy85i9eyg=; b=fRbjlFlpWo0M85vjRdhoi2Ep9
	V4IFHm2E9FWA2IGLA0nOTwIbP6MRoDGEo70hs+R1EzWl32yNfMFP3/JtmW7wwlL1+YKpu2jJxr8hn
	U8CNeAMQC2yVZyaiRr70JZ1YPdRnsWqJAuT8EPtwtmxMx9kicCL+igb/n5onWfkWw6Bqj29cqdGig
	wRWJV9fEKIen8TIXZE8GDk2XatPNE4DWEv39KSJ7oMXVNcQN7KrEHK6pFjefQ2kRDcKPO9HBYw+uM
	mA2XP3vvX7yabaggxaxLlBzbQyVwkDzu3NTq3/GDnhSP4jsX8rEr5MWexFc30f4F9VbLxh8v8Bota
	6P3xXfblg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKtB5-0001gs-Nj; Wed, 16 Oct 2019 23:58:03 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKtB2-0001g2-81
 for linux-riscv@lists.infradead.org; Wed, 16 Oct 2019 23:58:01 +0000
Received: by mail-pf1-f196.google.com with SMTP id v4so396646pff.6
 for <linux-riscv@lists.infradead.org>; Wed, 16 Oct 2019 16:57:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=BbWa1nPh5B2BNvDIpIRryQ0D+zzK6Rg7d2TtU75aidY=;
 b=WNYx7bPqtrNIHZAehY8Y6VflZdUJIZIWdM5tNy/WeaVSr1nwlyOKx6+Fg+NwQl2Pqf
 PDsUzXhxJHEUVje0GLAtHg0+KRBVmg14m0lMp7opwjdSD5bx9COEfT8BS4wQ+v4ftH9v
 KaOwKUbA8kqSo79NLzkq++FUUiwk2wcLKMsuuab3GwEYkcYUaZMaHFFOslndtsL6E8d3
 mcNIPmrj6OrubEa6JV+HxZNt8lih4LHeW21cD9QfWWvl5piDxMemsU/+TCq1vOeeDKsZ
 6cN8YmMcuICq7oZ/mI7qh6Ccux145xwR2OJVCtc3lx+nTo42aTrObk0f5nnXsQyeWSH6
 SCuA==
X-Gm-Message-State: APjAAAV2o93dTkSF47N/9A88gihgnMbDZQrGEyoIablEx/RsEx1W6oia
 hnvggrYxQVz1zc+IsWoSG9CCHg==
X-Google-Smtp-Source: APXvYqwl65+99OK7Bf88H7LPwct/aXEPYDcgVzbnKOsnZjQvmNx9j9uhHomqsd69I+SqXbGAmvjrzw==
X-Received: by 2002:a63:575a:: with SMTP id h26mr869322pgm.178.1571270277072; 
 Wed, 16 Oct 2019 16:57:57 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id m9sm304519pjf.11.2019.10.16.16.57.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 16:57:56 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:57:56 -0700 (PDT)
X-Google-Original-Date: Wed, 16 Oct 2019 16:57:54 PDT (-0700)
Subject: Re: [PATCH v2] PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for
 Microblaze
In-Reply-To: <fe37e872-09c7-7b60-cd3e-33228c740afc@xilinx.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@infradead.org>, michal.simek@xilinx.com
Message-ID: <mhng-5d9bcb53-225e-441f-86cc-b335624b3e7c@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_165800_289569_3300C01B 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: monstr@monstr.eu, aou@eecs.berkeley.edu, bharat.kumar.gogada@xilinx.com,
 Greg KH <gregkh@linuxfoundation.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 Christoph Hellwig <hch@infradead.org>, yamada.masahiro@socionext.com,
 firoz.khan@linaro.org, helgaas@kernel.org, git@xilinx.com,
 linux-pci@vger.kernel.org, kuldeep.dave@xilinx.com,
 linux-riscv@lists.infradead.org, will@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 22:59:07 PDT (-0700), michal.simek@xilinx.com wrote:
> Hi Bjorn,
>
> On 15. 10. 19 1:23, Bjorn Helgaas wrote:
>> On Tue, Oct 08, 2019 at 08:46:52AM -0700, Christoph Hellwig wrote:
>>>> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
>>>> index a304f5ea11b9..9d259372fbfd 100644
>>>> --- a/drivers/pci/Kconfig
>>>> +++ b/drivers/pci/Kconfig
>>>> @@ -52,7 +52,7 @@ config PCI_MSI
>>>>  	   If you don't know what to do here, say Y.
>>>>
>>>>  config PCI_MSI_IRQ_DOMAIN
>>>> -	def_bool ARC || ARM || ARM64 || X86 || RISCV
>>>> +	def_bool ARC || ARM || ARM64 || X86 || RISCV || MICROBLAZE
>>>
>>> Can you find out what the actual dependency is so that we can
>>> automatically enabled this instead of the weird arch list?
>>
>> Hi Michal, I'll wait for your response on whether it's feasible to do
>> something smarter than listing every arch here.  Please ping here or
>> post a v3; since I marked this patch "Changed Requested" in patchwork,
>> it's fallen off my to-do list.
>
> I was waiting more for you to comment this. I was expecting that the
> same question came last time when RISCV was added.
> I am happy to investigate more about it but definitely some your input
> would help.

Sorry: we usually try to do things the right way but it looks like this got 
lost in the shuffle.  It really doesn't look like there's any 
architecture-specific code implementation on our end:

    commit 251a44888183003b0380df184835a2c00bfa39d7
    Author: Wesley Terpstra <wesley@sifive.com>
    Date:   Mon May 20 10:29:26 2019 -0700
    
        riscv: include generic support for MSI irqdomains
    
        Some RISC-V systems include PCIe host controllers that support PCIe
        message-signaled interrupts.  For this to work on Linux, we need to
        enable PCI_MSI_IRQ_DOMAIN and define struct msi_alloc_info.  Support
        for the latter is enabled by including the architecture-generic msi.h
        include.
    
        Signed-off-by: Wesley Terpstra <wesley@sifive.com>
        [paul.walmsley@sifive.com: split initial patch into one arch/riscv
         patch and one drivers/pci patch]
        Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
    
    diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
    index 1efaeddf1e4b..16970f246860 100644
    --- a/arch/riscv/include/asm/Kbuild
    +++ b/arch/riscv/include/asm/Kbuild
    @@ -22,6 +22,7 @@ generic-y += kvm_para.h
     generic-y += local.h
     generic-y += local64.h
     generic-y += mm-arch-hooks.h
    +generic-y += msi.h
     generic-y += percpu.h
     generic-y += preempt.h
     generic-y += sections.h

I bet that dropping the architectures and adding msi.h everywhere it's not 
listed will at least get this building.  I'll give

    diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
    index a304f5ea11b9..77c1428cd945 100644
    --- a/drivers/pci/Kconfig
    +++ b/drivers/pci/Kconfig
    @@ -52,7 +52,7 @@ config PCI_MSI
               If you don't know what to do here, say Y.
    
     config PCI_MSI_IRQ_DOMAIN
    -       def_bool ARC || ARM || ARM64 || X86 || RISCV
    +       def_bool y
            depends on PCI_MSI
            select GENERIC_MSI_IRQ_DOMAIN
    
a build everywhere to see what falls out.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
