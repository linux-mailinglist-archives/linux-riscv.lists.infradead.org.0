Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB3517F73A
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 13:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wcr+N1rBV4EZFNJ5w07gXgC+QgoYoCPNpbNPH7fWcyE=; b=Zk9PXb2l0eaNNM
	50npfq5sstLuhpjH9AQu7AEIm+H5pqTIX7ZB5atDEwZtYTEOUuPhMOtP8vEp8fk9nBz/ijRAeZwXh
	gBC3JWnmreEt4j2XEZtgCkf79TAJqEUshOFzaxVODsR9PcZ6DS5kjDKoniyLmMzPZwPEfwF5RIjUE
	yWTyCxn25/hPcyZ5E5SfDs5agIlVA619mwXCr1sePR6+uCKgL4ttulVsAvi1UWEKpyK6pJ6D0Glbk
	G5qrBc+r2W9td8QDEIvxFN04jIULoUdjk9eFhi0mOIecXP8lYq9YjQQ2zd6/BqDt1PugQtLvi8wW5
	2JjDPgCzsl5AIa3qFUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdod-0005ec-Bf; Tue, 10 Mar 2020 12:16:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdoY-0005du-IA
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 12:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583842609;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Wcr+N1rBV4EZFNJ5w07gXgC+QgoYoCPNpbNPH7fWcyE=;
 b=hLTnHA3cB9u8lMWHnKXN97WAKbTcOpAVE4x/AkhqXrVlUcEC1mwY4Sza8i/4vftyKXoYlp
 XVUWoFvRTgPkASSGnnlNAWKlYjQbR3lrugIiTajCCUY0dWW8tKVtlg+CG1SXL+oGO/pUoj
 hpoCaeLRviuTbxvPrLJrTwmeowu4l1g=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-BGVwOyWvOVKijb-bedN9Ww-1; Tue, 10 Mar 2020 08:16:47 -0400
X-MC-Unique: BGVwOyWvOVKijb-bedN9Ww-1
Received: by mail-qk1-f198.google.com with SMTP id x21so9515766qkn.18
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 05:16:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HBJ5h02t1XBacqVRLa8/tjxigZnxj6mvBCIXpcgjcyM=;
 b=j6kemaI5xmoD9RysJaHsa6kZRPPjuftXSjgViIg02L8ZBb2w7gTUan9B7A8IR2xGlX
 F6p87dk2MvqPFikROetI5aUdc/VknQzoc6vVJYpxkm4XQgF7I3gtfN5XZPKNeTu3hoOm
 M579gBXeRBQ/FG14DMbLbyGUGQCilPwPNJrS1P3PYUxoApGji3qXdXLsDX/kotLh0A0R
 ia5QvXSeEyJ15TBu+lILNf1coBhjF/FAelirm3+N9df1B6o14XHsohdF/Vv9DNMPtlJC
 QJvON/StA57A0NYxnAfGOjr6BxlThyHTJz/w0WKEKBorV/Z+mipYCos2My+1E/0+Tcsv
 tmpg==
X-Gm-Message-State: ANhLgQ0CkY079WKgGOvxaxhT3bIlyHsyJyrebCjUjzMMZQSZCSY/Jbyi
 b6PMEf59ae3kzBkYGnmCqvUDgSSgNvs3K6nax5cy1/C62dNfTtZ2BRVpKdYQMrbiPF8foK5aZyM
 4LcJwSjc0Mg63cvrOEVbVmVKFxwFc
X-Received: by 2002:ac8:4e91:: with SMTP id 17mr19204537qtp.133.1583842605228; 
 Tue, 10 Mar 2020 05:16:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsTFMO2DVmVDOKBX1ZKtKCIPsKMKeNIFpQSDDWYB39XUebWYbZ7eXcfC4GZXS3KFds1h10ZRw==
X-Received: by 2002:ac8:4e91:: with SMTP id 17mr19204480qtp.133.1583842604637; 
 Tue, 10 Mar 2020 05:16:44 -0700 (PDT)
Received: from redhat.com (bzq-79-178-2-19.red.bezeqint.net. [79.178.2.19])
 by smtp.gmail.com with ESMTPSA id d22sm4226347qte.93.2020.03.10.05.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 05:16:43 -0700 (PDT)
Date: Tue, 10 Mar 2020 08:16:38 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Anup Patel <anup.patel@wdc.com>
Subject: Re: [PATCH] RISC-V: Only select essential drivers for SOC_VIRT config
Message-ID: <20200310081558-mutt-send-email-mst@kernel.org>
References: <20200310115925.126174-1-anup.patel@wdc.com>
MIME-Version: 1.0
In-Reply-To: <20200310115925.126174-1-anup.patel@wdc.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_051651_263646_78D0AA59 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 05:29:25PM +0530, Anup Patel wrote:
> The kconfig select causes build failues for SOC_VIRT config becaus
> we are selecting lot of VIRTIO drivers without selecting all required
> dependencies.
>=20
> Better approach is to only select essential drivers from SOC_VIRT
> config option and enable required VIRTIO drivers using defconfigs.
>=20
> Fixes: 759bdc168181 ("RISC-V: Add kconfig option for QEMU virt machine")
> Signed-off-by: Anup Patel <anup.patel@wdc.com>

Yea makes sense.

Acked-by: Michael S. Tsirkin <mst@redhat.com>

> ---
>  arch/riscv/Kconfig.socs           | 14 --------------
>  arch/riscv/configs/defconfig      | 16 +++++++++++++++-
>  arch/riscv/configs/rv32_defconfig | 16 +++++++++++++++-
>  3 files changed, 30 insertions(+), 16 deletions(-)
>=20
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 3078b2de0b2d..a131174a0a77 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -12,20 +12,6 @@ config SOC_SIFIVE
> =20
>  config SOC_VIRT
>         bool "QEMU Virt Machine"
> -       select VIRTIO_PCI
> -       select VIRTIO_BALLOON
> -       select VIRTIO_MMIO
> -       select VIRTIO_CONSOLE
> -       select VIRTIO_NET
> -       select NET_9P_VIRTIO
> -       select VIRTIO_BLK
> -       select SCSI_VIRTIO
> -       select DRM_VIRTIO_GPU
> -       select HW_RANDOM_VIRTIO
> -       select RPMSG_CHAR
> -       select RPMSG_VIRTIO
> -       select CRYPTO_DEV_VIRTIO
> -       select VIRTIO_INPUT
>         select POWER_RESET_SYSCON
>         select POWER_RESET_SYSCON_POWEROFF
>         select GOLDFISH
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index c8f084203067..2557c5372a25 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -31,6 +31,7 @@ CONFIG_IP_PNP_BOOTP=3Dy
>  CONFIG_IP_PNP_RARP=3Dy
>  CONFIG_NETLINK_DIAG=3Dy
>  CONFIG_NET_9P=3Dy
> +CONFIG_NET_9P_VIRTIO=3Dy
>  CONFIG_PCI=3Dy
>  CONFIG_PCIEPORTBUS=3Dy
>  CONFIG_PCI_HOST_GENERIC=3Dy
> @@ -38,12 +39,15 @@ CONFIG_PCIE_XILINX=3Dy
>  CONFIG_DEVTMPFS=3Dy
>  CONFIG_DEVTMPFS_MOUNT=3Dy
>  CONFIG_BLK_DEV_LOOP=3Dy
> +CONFIG_VIRTIO_BLK=3Dy
>  CONFIG_BLK_DEV_SD=3Dy
>  CONFIG_BLK_DEV_SR=3Dy
> +CONFIG_SCSI_VIRTIO=3Dy
>  CONFIG_ATA=3Dy
>  CONFIG_SATA_AHCI=3Dy
>  CONFIG_SATA_AHCI_PLATFORM=3Dy
>  CONFIG_NETDEVICES=3Dy
> +CONFIG_VIRTIO_NET=3Dy
>  CONFIG_MACB=3Dy
>  CONFIG_E1000E=3Dy
>  CONFIG_R8169=3Dy
> @@ -54,13 +58,16 @@ CONFIG_SERIAL_8250_CONSOLE=3Dy
>  CONFIG_SERIAL_OF_PLATFORM=3Dy
>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=3Dy
>  CONFIG_HVC_RISCV_SBI=3Dy
> +CONFIG_VIRTIO_CONSOLE=3Dy
>  CONFIG_HW_RANDOM=3Dy
> +CONFIG_HW_RANDOM_VIRTIO=3Dy
>  CONFIG_SPI=3Dy
>  CONFIG_SPI_SIFIVE=3Dy
>  # CONFIG_PTP_1588_CLOCK is not set
>  CONFIG_POWER_RESET=3Dy
>  CONFIG_DRM=3Dy
>  CONFIG_DRM_RADEON=3Dy
> +CONFIG_DRM_VIRTIO_GPU=3Dy
>  CONFIG_FRAMEBUFFER_CONSOLE=3Dy
>  CONFIG_USB=3Dy
>  CONFIG_USB_XHCI_HCD=3Dy
> @@ -74,6 +81,12 @@ CONFIG_USB_UAS=3Dy
>  CONFIG_MMC=3Dy
>  CONFIG_MMC_SPI=3Dy
>  CONFIG_RTC_CLASS=3Dy
> +CONFIG_VIRTIO_PCI=3Dy
> +CONFIG_VIRTIO_BALLOON=3Dy
> +CONFIG_VIRTIO_INPUT=3Dy
> +CONFIG_VIRTIO_MMIO=3Dy
> +CONFIG_RPMSG_CHAR=3Dy
> +CONFIG_RPMSG_VIRTIO=3Dy
>  CONFIG_EXT4_FS=3Dy
>  CONFIG_EXT4_FS_POSIX_ACL=3Dy
>  CONFIG_AUTOFS4_FS=3Dy
> @@ -88,16 +101,17 @@ CONFIG_NFS_V4_2=3Dy
>  CONFIG_ROOT_NFS=3Dy
>  CONFIG_9P_FS=3Dy
>  CONFIG_CRYPTO_USER_API_HASH=3Dy
> +CONFIG_CRYPTO_DEV_VIRTIO=3Dy
>  CONFIG_PRINTK_TIME=3Dy
>  CONFIG_DEBUG_FS=3Dy
>  CONFIG_DEBUG_PAGEALLOC=3Dy
> +CONFIG_SCHED_STACK_END_CHECK=3Dy
>  CONFIG_DEBUG_VM=3Dy
>  CONFIG_DEBUG_VM_PGFLAGS=3Dy
>  CONFIG_DEBUG_MEMORY_INIT=3Dy
>  CONFIG_DEBUG_PER_CPU_MAPS=3Dy
>  CONFIG_SOFTLOCKUP_DETECTOR=3Dy
>  CONFIG_WQ_WATCHDOG=3Dy
> -CONFIG_SCHED_STACK_END_CHECK=3Dy
>  CONFIG_DEBUG_TIMEKEEPING=3Dy
>  CONFIG_DEBUG_RT_MUTEXES=3Dy
>  CONFIG_DEBUG_SPINLOCK=3Dy
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_=
defconfig
> index a844920a261f..0292879a9690 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -31,6 +31,7 @@ CONFIG_IP_PNP_BOOTP=3Dy
>  CONFIG_IP_PNP_RARP=3Dy
>  CONFIG_NETLINK_DIAG=3Dy
>  CONFIG_NET_9P=3Dy
> +CONFIG_NET_9P_VIRTIO=3Dy
>  CONFIG_PCI=3Dy
>  CONFIG_PCIEPORTBUS=3Dy
>  CONFIG_PCI_HOST_GENERIC=3Dy
> @@ -38,12 +39,15 @@ CONFIG_PCIE_XILINX=3Dy
>  CONFIG_DEVTMPFS=3Dy
>  CONFIG_DEVTMPFS_MOUNT=3Dy
>  CONFIG_BLK_DEV_LOOP=3Dy
> +CONFIG_VIRTIO_BLK=3Dy
>  CONFIG_BLK_DEV_SD=3Dy
>  CONFIG_BLK_DEV_SR=3Dy
> +CONFIG_SCSI_VIRTIO=3Dy
>  CONFIG_ATA=3Dy
>  CONFIG_SATA_AHCI=3Dy
>  CONFIG_SATA_AHCI_PLATFORM=3Dy
>  CONFIG_NETDEVICES=3Dy
> +CONFIG_VIRTIO_NET=3Dy
>  CONFIG_MACB=3Dy
>  CONFIG_E1000E=3Dy
>  CONFIG_R8169=3Dy
> @@ -54,11 +58,14 @@ CONFIG_SERIAL_8250_CONSOLE=3Dy
>  CONFIG_SERIAL_OF_PLATFORM=3Dy
>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=3Dy
>  CONFIG_HVC_RISCV_SBI=3Dy
> +CONFIG_VIRTIO_CONSOLE=3Dy
>  CONFIG_HW_RANDOM=3Dy
> +CONFIG_HW_RANDOM_VIRTIO=3Dy
>  # CONFIG_PTP_1588_CLOCK is not set
>  CONFIG_POWER_RESET=3Dy
>  CONFIG_DRM=3Dy
>  CONFIG_DRM_RADEON=3Dy
> +CONFIG_DRM_VIRTIO_GPU=3Dy
>  CONFIG_FRAMEBUFFER_CONSOLE=3Dy
>  CONFIG_USB=3Dy
>  CONFIG_USB_XHCI_HCD=3Dy
> @@ -70,6 +77,12 @@ CONFIG_USB_OHCI_HCD_PLATFORM=3Dy
>  CONFIG_USB_STORAGE=3Dy
>  CONFIG_USB_UAS=3Dy
>  CONFIG_RTC_CLASS=3Dy
> +CONFIG_VIRTIO_PCI=3Dy
> +CONFIG_VIRTIO_BALLOON=3Dy
> +CONFIG_VIRTIO_INPUT=3Dy
> +CONFIG_VIRTIO_MMIO=3Dy
> +CONFIG_RPMSG_CHAR=3Dy
> +CONFIG_RPMSG_VIRTIO=3Dy
>  CONFIG_EXT4_FS=3Dy
>  CONFIG_EXT4_FS_POSIX_ACL=3Dy
>  CONFIG_AUTOFS4_FS=3Dy
> @@ -84,16 +97,17 @@ CONFIG_NFS_V4_2=3Dy
>  CONFIG_ROOT_NFS=3Dy
>  CONFIG_9P_FS=3Dy
>  CONFIG_CRYPTO_USER_API_HASH=3Dy
> +CONFIG_CRYPTO_DEV_VIRTIO=3Dy
>  CONFIG_PRINTK_TIME=3Dy
>  CONFIG_DEBUG_FS=3Dy
>  CONFIG_DEBUG_PAGEALLOC=3Dy
> +CONFIG_SCHED_STACK_END_CHECK=3Dy
>  CONFIG_DEBUG_VM=3Dy
>  CONFIG_DEBUG_VM_PGFLAGS=3Dy
>  CONFIG_DEBUG_MEMORY_INIT=3Dy
>  CONFIG_DEBUG_PER_CPU_MAPS=3Dy
>  CONFIG_SOFTLOCKUP_DETECTOR=3Dy
>  CONFIG_WQ_WATCHDOG=3Dy
> -CONFIG_SCHED_STACK_END_CHECK=3Dy
>  CONFIG_DEBUG_TIMEKEEPING=3Dy
>  CONFIG_DEBUG_RT_MUTEXES=3Dy
>  CONFIG_DEBUG_SPINLOCK=3Dy
> --=20
> 2.17.1
>=20
>=20


