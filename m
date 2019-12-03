Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25F110F56E
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 04:07:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gbCH5ti3WgkMkBOgo2DeVgGqRNAZsfv1Xo4frH8ttaY=; b=Pz0wu2cL4y9qgsx1Hz3o93992
	FXwx9h6B3oBQtjZ7MYXGHBitmpTa+UsQ8u8VW3lamWQrsGqJSDijxdRg/qXZy0KhSl48o4lbV1XCa
	DDlGW8J4ktaSPROFviPoeD73oruayWw8G93GZHlqzdwt7XL90Hms8WJYy+WfySyoJYB+4NtlVNL7g
	bFG/+Djinfoso+q1+UGQh4f8K3XS/PhIDDt6u+coeR13eyPjDP3tQ1Q5dVseaLULPQngzKWlXVQOH
	274ThvOQTkBNSZYFZIsoIJYBv3db1i6GMKi8m+3Smsd6erBjRhlfX74jXD2sAD8dKOPdhKR78qq1+
	IOnVYts1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibyWf-0006vb-HU; Tue, 03 Dec 2019 03:06:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibyWV-0006oW-L4
 for linux-riscv@lists.infradead.org; Tue, 03 Dec 2019 03:06:50 +0000
Received: by mail-wm1-x341.google.com with SMTP id y23so1282759wma.0
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 19:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gbCH5ti3WgkMkBOgo2DeVgGqRNAZsfv1Xo4frH8ttaY=;
 b=EBogXKR7T/7BONpi+EENQ/V0EL8cRhsZe2zmGwkQdue0vzn4CY0piD7aLAxSorCKYN
 BpQ5i3zI7L2XF/4T8Po/sR1AeP7kY6289Wf1FCj1JBuhDWfoZS8/hz/tLJUbNxWtqgjF
 Xr/pqghQtgGtykmXwIDCDGERPuj9pq1JiSohPxqWiMHUtPy1uuZoGnzNIq10dF9HhqvA
 9RuVXAHWkNB5d40duT7VNllrazCLb5AOMYzRoiR4tmAHyxL288nxt6WKQvwaiThhIDs4
 EbJOyJRLNjDddueqvySSFLlcN0YMolSLzRYSuB8aMXhe+57oPqqjnVv/XJC8VFBrUChU
 KN6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gbCH5ti3WgkMkBOgo2DeVgGqRNAZsfv1Xo4frH8ttaY=;
 b=D1NW03AVGnekKMs6DWREWdUfxMEemYCAiidCdJaSMsqyVV1FF4bAyP4s6EE9WvfBdf
 uHQYiaWgE8mXaANU+cFmiXtkatIMXEj2j8Vq6F0rXUziDL2ATWhMjCpzl1HASMOkDrC2
 X8PL3fSeD8SYj6cWTtIXpEjaVEXvVCiT5zc1kDANehvYsYHOyTpxPMtxSs3YQgP7TCBT
 qHDqZ0Ad4uUjxBOV4WOdnHI2i7V36gQe5LISHSd1l3BAjakFRWPtT7fAhckEKjcN136Y
 pMpxOf2cPfKI+NINQU+H9R9FM/wEqpoJzERYD2pNTVYNP4BZDF9Z1j9Ii84apjieF2JR
 w2Kg==
X-Gm-Message-State: APjAAAW4RWh/8rjXVIUwWj6iuyHp8kPII8frElNoRRnn8F6oIDCIN8Bd
 iur1WfU00aH8GdMw9TLWiUhKjW8pMWKt8z8TjLYMmQ==
X-Google-Smtp-Source: APXvYqzNUNSP4cVX59HXAFObvgW6LbUoGAxo45f6uIiy0i+c/bDHKyai2czxSdFyUIIOH7Y8JQwFC7Krum+fvLWUiWc=
X-Received: by 2002:a1c:3105:: with SMTP id x5mr29912268wmx.24.1575342405331; 
 Mon, 02 Dec 2019 19:06:45 -0800 (PST)
MIME-Version: 1.0
References: <20191125132147.97111-1-anup.patel@wdc.com>
 <20191125132147.97111-3-anup.patel@wdc.com>
 <bfd66a0d4f4e5ec112244101bc4173aef9a56286.camel@wdc.com>
In-Reply-To: <bfd66a0d4f4e5ec112244101bc4173aef9a56286.camel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 3 Dec 2019 08:36:35 +0530
Message-ID: <CAAhSdy0V5ANkK1ykW0pr_uX2=fUmAbgfvvUr6aZoMUZQAiCWZw@mail.gmail.com>
Subject: Re: [PATCH 2/4] RISC-V: Enable QEMU virt machine support in defconfigs
To: Atish Patra <Atish.Patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_190647_727041_AEBD8ECA 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: "palmer@sifive.com" <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 12:44 AM Atish Patra <Atish.Patra@wdc.com> wrote:
>
> On Mon, 2019-11-25 at 13:22 +0000, Anup Patel wrote:
> > We have kconfig option for QEMU virt machine so let's enable it
> > in RV32 and RV64 defconfigs.
> >
>
> and remove the virt specific configs from defconfig.
>
> Bit more verbose commit text makes more sense here.

The virt specific configs are automatically removed by "savedefconfig"
so I did not mention it in commit message.

I will certainly update commit message like you suggested.

>
>
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > ---
> >  arch/riscv/configs/defconfig      | 15 +--------------
> >  arch/riscv/configs/rv32_defconfig | 16 +---------------
> >  2 files changed, 2 insertions(+), 29 deletions(-)
> >
> > diff --git a/arch/riscv/configs/defconfig
> > b/arch/riscv/configs/defconfig
> > index 420a0dbef386..2515fe6417e1 100644
> > --- a/arch/riscv/configs/defconfig
> > +++ b/arch/riscv/configs/defconfig
> > @@ -15,6 +15,7 @@ CONFIG_BLK_DEV_INITRD=y
> >  CONFIG_EXPERT=y
> >  CONFIG_BPF_SYSCALL=y
> >  CONFIG_SOC_SIFIVE=y
> > +CONFIG_SOC_VIRT=y
> >  CONFIG_SMP=y
> >  CONFIG_MODULES=y
> >  CONFIG_MODULE_UNLOAD=y
> > @@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
> >  CONFIG_IP_PNP_RARP=y
> >  CONFIG_NETLINK_DIAG=y
> >  CONFIG_NET_9P=y
> > -CONFIG_NET_9P_VIRTIO=y
> >  CONFIG_PCI=y
> >  CONFIG_PCIEPORTBUS=y
> >  CONFIG_PCI_HOST_GENERIC=y
> > @@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
> >  CONFIG_DEVTMPFS=y
> >  CONFIG_DEVTMPFS_MOUNT=y
> >  CONFIG_BLK_DEV_LOOP=y
> > -CONFIG_VIRTIO_BLK=y
> >  CONFIG_BLK_DEV_SD=y
> >  CONFIG_BLK_DEV_SR=y
> > -CONFIG_SCSI_VIRTIO=y
> >  CONFIG_ATA=y
> >  CONFIG_SATA_AHCI=y
> >  CONFIG_SATA_AHCI_PLATFORM=y
> >  CONFIG_NETDEVICES=y
> > -CONFIG_VIRTIO_NET=y
> >  CONFIG_MACB=y
> >  CONFIG_E1000E=y
> >  CONFIG_R8169=y
> > @@ -57,15 +54,12 @@ CONFIG_SERIAL_8250_CONSOLE=y
> >  CONFIG_SERIAL_OF_PLATFORM=y
> >  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
> >  CONFIG_HVC_RISCV_SBI=y
> > -CONFIG_VIRTIO_CONSOLE=y
> >  CONFIG_HW_RANDOM=y
> > -CONFIG_HW_RANDOM_VIRTIO=y
> >  CONFIG_SPI=y
> >  CONFIG_SPI_SIFIVE=y
> >  # CONFIG_PTP_1588_CLOCK is not set
> >  CONFIG_DRM=y
> >  CONFIG_DRM_RADEON=y
> > -CONFIG_DRM_VIRTIO_GPU=y
> >  CONFIG_FRAMEBUFFER_CONSOLE=y
> >  CONFIG_USB=y
> >  CONFIG_USB_XHCI_HCD=y
> > @@ -78,12 +72,6 @@ CONFIG_USB_STORAGE=y
> >  CONFIG_USB_UAS=y
> >  CONFIG_MMC=y
> >  CONFIG_MMC_SPI=y
> > -CONFIG_VIRTIO_PCI=y
> > -CONFIG_VIRTIO_BALLOON=y
> > -CONFIG_VIRTIO_INPUT=y
> > -CONFIG_VIRTIO_MMIO=y
> > -CONFIG_RPMSG_CHAR=y
> > -CONFIG_RPMSG_VIRTIO=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> >  CONFIG_AUTOFS4_FS=y
> > @@ -98,6 +86,5 @@ CONFIG_NFS_V4_2=y
> >  CONFIG_ROOT_NFS=y
> >  CONFIG_9P_FS=y
> >  CONFIG_CRYPTO_USER_API_HASH=y
> > -CONFIG_CRYPTO_DEV_VIRTIO=y
> >  CONFIG_PRINTK_TIME=y
> >  # CONFIG_RCU_TRACE is not set
> > diff --git a/arch/riscv/configs/rv32_defconfig
> > b/arch/riscv/configs/rv32_defconfig
> > index 87ee6e62b64b..bbcf14fd6f40 100644
> > --- a/arch/riscv/configs/rv32_defconfig
> > +++ b/arch/riscv/configs/rv32_defconfig
> > @@ -14,6 +14,7 @@ CONFIG_CHECKPOINT_RESTORE=y
> >  CONFIG_BLK_DEV_INITRD=y
> >  CONFIG_EXPERT=y
> >  CONFIG_BPF_SYSCALL=y
> > +CONFIG_SOC_VIRT=y
> >  CONFIG_ARCH_RV32I=y
> >  CONFIG_SMP=y
> >  CONFIG_MODULES=y
> > @@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
> >  CONFIG_IP_PNP_RARP=y
> >  CONFIG_NETLINK_DIAG=y
> >  CONFIG_NET_9P=y
> > -CONFIG_NET_9P_VIRTIO=y
> >  CONFIG_PCI=y
> >  CONFIG_PCIEPORTBUS=y
> >  CONFIG_PCI_HOST_GENERIC=y
> > @@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
> >  CONFIG_DEVTMPFS=y
> >  CONFIG_DEVTMPFS_MOUNT=y
> >  CONFIG_BLK_DEV_LOOP=y
> > -CONFIG_VIRTIO_BLK=y
> >  CONFIG_BLK_DEV_SD=y
> >  CONFIG_BLK_DEV_SR=y
> > -CONFIG_SCSI_VIRTIO=y
> >  CONFIG_ATA=y
> >  CONFIG_SATA_AHCI=y
> >  CONFIG_SATA_AHCI_PLATFORM=y
> >  CONFIG_NETDEVICES=y
> > -CONFIG_VIRTIO_NET=y
> >  CONFIG_MACB=y
> >  CONFIG_E1000E=y
> >  CONFIG_R8169=y
> > @@ -57,13 +54,10 @@ CONFIG_SERIAL_8250_CONSOLE=y
> >  CONFIG_SERIAL_OF_PLATFORM=y
> >  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
> >  CONFIG_HVC_RISCV_SBI=y
> > -CONFIG_VIRTIO_CONSOLE=y
> >  CONFIG_HW_RANDOM=y
> > -CONFIG_HW_RANDOM_VIRTIO=y
> >  # CONFIG_PTP_1588_CLOCK is not set
> >  CONFIG_DRM=y
> >  CONFIG_DRM_RADEON=y
> > -CONFIG_DRM_VIRTIO_GPU=y
> >  CONFIG_FRAMEBUFFER_CONSOLE=y
> >  CONFIG_USB=y
> >  CONFIG_USB_XHCI_HCD=y
> > @@ -74,13 +68,6 @@ CONFIG_USB_OHCI_HCD=y
> >  CONFIG_USB_OHCI_HCD_PLATFORM=y
> >  CONFIG_USB_STORAGE=y
> >  CONFIG_USB_UAS=y
> > -CONFIG_VIRTIO_PCI=y
> > -CONFIG_VIRTIO_BALLOON=y
> > -CONFIG_VIRTIO_INPUT=y
> > -CONFIG_VIRTIO_MMIO=y
> > -CONFIG_RPMSG_CHAR=y
> > -CONFIG_RPMSG_VIRTIO=y
> > -CONFIG_SIFIVE_PLIC=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> >  CONFIG_AUTOFS4_FS=y
> > @@ -95,6 +82,5 @@ CONFIG_NFS_V4_2=y
> >  CONFIG_ROOT_NFS=y
> >  CONFIG_9P_FS=y
> >  CONFIG_CRYPTO_USER_API_HASH=y
> > -CONFIG_CRYPTO_DEV_VIRTIO=y
> >  CONFIG_PRINTK_TIME=y
> >  # CONFIG_RCU_TRACE is not set
>
> Otherwise, looks good.
>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Thanks,
Anup

