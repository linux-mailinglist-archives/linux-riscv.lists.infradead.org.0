Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C5777FA9
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Jul 2019 15:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8epLDWPi6N3yqv83K9IgxDjKGS8SZQUMTnTIjQ/Fl4=; b=RvUIxCB0pf1bbF
	G7O0vm/DNeLIYI5P9z1qmydjZwLoTn17SvVYIuHdol79OOFoziOSCs4QIsJyGK8NaimPtf1d3ridI
	zfJJl+45djzV0zb72dmf5v80LZliZLUWhnuKPwaNdFhZtf5rWchAG0o8xs4V6FEcHA1Af9ilwufUj
	/v4ogBoGtmgDp6Y87Uu+CqJy7sZAKL/pEN6J3oErQYXx8CPMzuDZygJiwjWRZXPB04ZSy+Z546K2m
	CoisNBdB21GlNqfQXSc7zewHSh6bjqgnYKsQH0JtRyn0q5cOG+eafeVO67chgnlVL3AtXwAjSUWjw
	94jmCF5Pj5z5drQV0BAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrjR5-00041t-JT; Sun, 28 Jul 2019 13:42:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrjR2-00041X-OT
 for linux-riscv@lists.infradead.org; Sun, 28 Jul 2019 13:42:01 +0000
Received: by mail-ed1-x544.google.com with SMTP id p15so57020833eds.8
 for <linux-riscv@lists.infradead.org>; Sun, 28 Jul 2019 06:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yTBwHNHT3KHAp/UaTaH4Up3YEwsrhkbymBNCkcdraJ4=;
 b=UQWUwAU/aLkzrRJuq7lz6WfmkRCRPcRIkelqPKRkPBmQvdcVxlDWInaTr16xiYUOTh
 LaIL6njzffcFYPhbX3vBZ31RhD8oEUnYxYzGm6URgF9ybzNE3wjQD+Q91qr4QpoP89x/
 7AZ+mKc/2Z03uFx+5PK5F7JsddDDwG8851Ro9yV3keN1CYuu0p24wRy19pNYk0P6i2YX
 l/zE2saf2xRu5aXu/3I3UG3IZKFaKpY44+0qACOrLx5/D1k08/toiQG0I7wjC4ntV3n0
 mXhsVFqhR+jOLJT3+Q5iz0xFOVDJeqJPDwbI+s2WDPn2gxr6HeePvKoF/ToqjaZSBtLa
 M8eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yTBwHNHT3KHAp/UaTaH4Up3YEwsrhkbymBNCkcdraJ4=;
 b=s6r8LVJIZum5WEL6JmHec3zriJgk8zM23MV4MIlf4a2RzwekkBHyJNJmIL61lbXqZC
 U90P0y0Bni+5mdsP+W+2oF/RdwCVMRNKSSwm1TsK8dNzL3NbNz/a79nWHy3wwgUf//dZ
 iM6T0QmZoDWxXwcpU544/oG35pb4Zb6/j2dyVSDVwlOqbgq0lvVbKhjhy1gYn/Lr5P9i
 7O8tGKpQQPtWr3F5GXN5xqUSJiSdPa/bOo917ebCpiw1h1B2x6izy3VXZ6BR0C5TM+SH
 bwlkiCZ1AffI47D5ZrBkjii0aD79uSqKUKbfw3cBnrjVHVNsldR3c1wR2N+CG1McsN17
 IEKA==
X-Gm-Message-State: APjAAAU+E3c1MUwNFf8euTfwHj/qxykvt9K46qfyrjeG8IgilnqCzPrf
 7KxLRu3XU++78tWq0WfU/YoHJx81/YxIEoTqnTU=
X-Google-Smtp-Source: APXvYqzBKvd0Qybj93U8jK8asK800I/u667umXFP0VgBlCHZHI45yVtwQGVyY3X1SFkkAX087eMxDRfleptdKbmxNjo=
X-Received: by 2002:a50:94e6:: with SMTP id t35mr91612893eda.137.1564321319323; 
 Sun, 28 Jul 2019 06:41:59 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1907251426450.32766@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907251426450.32766@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sun, 28 Jul 2019 21:41:48 +0800
Message-ID: <CAEUhbmX1vJbm9NNU-5OkSaWDRN0pK0=1D6ZLXHD45PNAqDu6gw@mail.gmail.com>
Subject: Re: [PATCH v2] pci: Kconfig: select PCI_MSI_IRQ_DOMAIN by default on
 RISC-V
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_064200_791528_2B6BB904 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci <linux-pci@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, wesley@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 5:28 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> From: Wesley Terpstra <wesley@sifive.com>
>
> This is part of adding support for RISC-V systems with PCIe host
> controllers that support message-signaled interrupts.
>
> Signed-off-by: Wesley Terpstra <wesley@sifive.com>
> [paul.walmsley@sifive.com: wrote patch description; split this
>  patch from the arch/riscv patch]
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  drivers/pci/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pci/Kconfig b/drivers/pci/Kconfig
> index 2ab92409210a..beb3408a0272 100644
> --- a/drivers/pci/Kconfig
> +++ b/drivers/pci/Kconfig
> @@ -52,7 +52,7 @@ config PCI_MSI
>            If you don't know what to do here, say Y.
>
>  config PCI_MSI_IRQ_DOMAIN
> -       def_bool ARC || ARM || ARM64 || X86
> +       def_bool ARC || ARM || ARM64 || X86 || RISCV
>         depends on PCI_MSI
>         select GENERIC_MSI_IRQ_DOMAIN
>
> --

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
