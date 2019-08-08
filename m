Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AB886BE8
	for <lists+linux-riscv@lfdr.de>; Thu,  8 Aug 2019 22:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yux/k5wQFCPOGoImNEtMF7d3bGzU+O8nxNU5BE0cjVc=; b=FhDgkdxhOKuQ0h
	0yYcvwu6G9erqWJIUlGhlWaXrCl9jApzoNgix4uZf9X4zYiSwVkkl8PEVn/jI7N2D+6zZh+jEaLXN
	GzRiOh7s2ufuz4P5zxCfllCzZe/I4QLox8QrMMfItxHbzH7DH7XzWmjn+61L7D0TXxe1PrHRx4LYZ
	mZEwxTjfpQ7YMS4g6R+u/EXwuqkNqdvhKHrPf1SrHJ7EQWcntssk0kilLbn6DA2b22TkDIwHZA300
	laVU4vF8G4OcGEn3JOF4nFB3gD5fexP5jWeEZJ18X5TSHUMB9W2iqij+nyPY1xzTByq94L7lc3bpd
	jXiVwHVBfgY7BMlnr/TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpOA-0000yh-I0; Thu, 08 Aug 2019 20:51:58 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpO6-0000xN-Hx
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 20:51:56 +0000
Received: by mail-ot1-x342.google.com with SMTP id d17so124301746oth.5
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 13:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=MYiXtYDqJwotW34VbL1gNPhcfMp5HVF3/UwPQRs2BZ8=;
 b=E5VqcLm1TM2dFLlFksMh4Glkk8vf9CShPiNi2v/7qR+H6sMT72hy6Eva/LC9w1fWsa
 IP8Ik8LeqyfEKoU08bpvPPfw/CmoGB9yfo1ck//6p2R5WTpHyfX/i4YKtiUWLvPCfdH9
 bY72iFacAWC2XWP8SGouaRcA635yqcljhSUIeqGhfjGRb/Jm/jc3l066I1a05Bn0v6Ly
 SAHdAuDnOaQ0wi5bi+0bKNQ/DrWIHPiK5P5eWq+siSrx19YPb50D0AYTNndu2Ls/ceSt
 wGkXkLcUMMdL8K972+d740G62BVqLwkutB5qypnujz+TOZLxu6OIObPDmmU0+hI1FSDs
 1cjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=MYiXtYDqJwotW34VbL1gNPhcfMp5HVF3/UwPQRs2BZ8=;
 b=Odz7ulWv9oN84X1/lMSrcAHYoDVyBNTp8TuT11JEpqgMJ3UhVwykzEp9RKdpszRPSl
 PcMlz020joXEYIvGyVKy7ZHf0T97a76PCVusq/bat2UejNb7k+k/HqkXaebm0Et4Widn
 PD2LHGyBj8GYtOBKoKb8tQFoaBEE+fBlFdZj7OwBx8il64gAKXTKsBpm7Z4FF0wxvadP
 Ilwr8QvN8cNejM2/X63vsrP5nOLE+S24l8qxM0jPh449dP9Z2t+2UZxVDCayfHrB579V
 3C9/REWI3j4HTS/opwynP4x3v+CpNL8S75DoaZh2oUiTz9VRU5/HVRXqqdGPlD6CdVsp
 dy/A==
X-Gm-Message-State: APjAAAVPE6mpnk1dh9z35pdSaNpPMr6iVBtnwB5FZ2CacKhLuIrVlGhi
 qsMuBbE+0ycMUdcs/NYL3dyXmw==
X-Google-Smtp-Source: APXvYqwg5Pl4senspTBLLXh2DoiIY98sJyIj+ipD/rz0g87+UZib96GWjWiieV8LkxipSEZor5ZyVQ==
X-Received: by 2002:a6b:f906:: with SMTP id j6mr17177807iog.26.1565297512230; 
 Thu, 08 Aug 2019 13:51:52 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 h18sm73602337iob.80.2019.08.08.13.51.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 13:51:51 -0700 (PDT)
Date: Thu, 8 Aug 2019 13:51:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2] pci: Kconfig: select PCI_MSI_IRQ_DOMAIN by default
 on RISC-V
In-Reply-To: <20190808195546.GA7302@google.com>
Message-ID: <alpine.DEB.2.21.9999.1908081349210.6414@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1907251426450.32766@viisi.sifive.com>
 <20190808195546.GA7302@google.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_135154_625346_2F9D36F8 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Wesley Terpstra <wesley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Bjorn,

On Thu, 8 Aug 2019, Bjorn Helgaas wrote:

> On Thu, Jul 25, 2019 at 02:28:07PM -0700, Paul Walmsley wrote:
> > From: Wesley Terpstra <wesley@sifive.com>
> > 
> > This is part of adding support for RISC-V systems with PCIe host 
> > controllers that support message-signaled interrupts.
> > 
> > Signed-off-by: Wesley Terpstra <wesley@sifive.com>
> > [paul.walmsley@sifive.com: wrote patch description; split this
> >  patch from the arch/riscv patch]
> > Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> > ---
> >  drivers/pci/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> > index 2ab92409210a..beb3408a0272 100644
> > --- a/drivers/pci/Kconfig
> > +++ b/drivers/pci/Kconfig
> > @@ -52,7 +52,7 @@ config PCI_MSI
> >  	   If you don't know what to do here, say Y.
> >  
> >  config PCI_MSI_IRQ_DOMAIN
> > -	def_bool ARC || ARM || ARM64 || X86
> > +	def_bool ARC || ARM || ARM64 || X86 || RISCV
> 
> The other arches listed here either supply their own include/asm/msi.h
> or generate it:
> 
>   $ ls arch/*/include/asm/msi.h
>   arch/x86/include/asm/msi.h
> 
>   $ grep msi.h arch/*/include/asm/Kbuild
>   arch/arc/include/asm/Kbuild:generic-y += msi.h
>   arch/arm64/include/asm/Kbuild:generic-y += msi.h
>   arch/arm/include/asm/Kbuild:generic-y += msi.h
>   arch/mips/include/asm/Kbuild:generic-y += msi.h
>   arch/powerpc/include/asm/Kbuild:generic-y += msi.h
>   arch/sparc/include/asm/Kbuild:generic-y += msi.h
> 
> For example, see
> 
>   f8430eae9f1b ("PCI/MSI: Enable PCI_MSI_IRQ_DOMAIN support for ARC")
>   be091d468a0a ("arm64: PCI/MSI: Use asm-generic/msi.h")
>   0ab089c2548c ("ARM: Add msi.h to Kbuild")
> 
> I didn't look into the details of msi.h generation, but I assume
> RISC-V needs to do something similar?  If so, I think that should be
> part of this patch to avoid issues.
> 
> If CONFIG_GENERIC_MSI_IRQ_DOMAIN is defined, include/linux/msi.h
> #includes <asm/msi.h> and I don't see where that would come from.

Commit 251a44888183 ("riscv: include generic support for MSI irqdomains") 
has been merged upstream for this purpose:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=251a44888183003b0380df184835a2c00bfa39d7

The original patch was split into a RISC-V component and a generic PCI 
component to reduce the risk of merge conflicts.

Does that work for you?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
