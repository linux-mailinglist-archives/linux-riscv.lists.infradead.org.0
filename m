Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD3A18ABCB
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Mar 2020 05:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BNG/4gsDlzID/iu3w+7gBGtdDaCICA3ZSeGXD3zpCk4=; b=qBzVgoMVE2KMJuwtbypuu8DnR
	sRgjPmSk6NZHqQSe56p4sU4oMsOU0h3I9EEEv4az5nEYSwWdGHfjl+KdMlmukXZaQf9+Z/2AyaUGy
	m9hzo9yUnFCUm4Q9+lMRMY+mTVnsrRvpSJ4WrT5sD1dj2n1Fni7AwikiVlqIqgUQz2V1lSWTCzjmv
	0m4fkXO/fSa+L/aTb0Dqut7AoJSMIVZzzEIvSAx77HNwZtGF5LOHQ4u0Tgau4GY0AmBpIS+xGrSB6
	yXQhEO0X0ETCP35vKssB7vUQxAnhBLJy/AmTQnS9WvmpLH10eYcSxaKZLAN3nYVRNKN8krbBGvp9M
	sjFO1+YMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEmox-0005zb-BP; Thu, 19 Mar 2020 04:30:15 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEmot-0005yl-4R
 for linux-riscv@lists.infradead.org; Thu, 19 Mar 2020 04:30:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id x3so3822753wmj.1
 for <linux-riscv@lists.infradead.org>; Wed, 18 Mar 2020 21:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BNG/4gsDlzID/iu3w+7gBGtdDaCICA3ZSeGXD3zpCk4=;
 b=YXAM1GQ1QpTkAV165dYe5R2hLUQ7NtlOJaPdIEHv4eQutWDukXGoQWco8p0IFSXu7x
 WTXdbLZFfC+6+MxJE1nkJEldIgRV/i/jYYEq8mD6ch/keXX8TyluN7g4fTrddvuX31wi
 pXWcbqNc4kEFZ6vMaF86+ybbobPrWmBn7aPm5WK4oRZZ7j88SZ3zQNcs1SQQqiy8Q7XU
 09lDLm56TmcwsJIUdrAGY8GDjmQssR16AdbliMTA4vi2OiFJmqaeu3NDwIFDxth/Cbtr
 USrVqSkQng8XOo48I+QO604ysAX3eUtd/76DaBLY15WpsZKSF+87pDhBsnRvAmSmB6Ec
 gRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BNG/4gsDlzID/iu3w+7gBGtdDaCICA3ZSeGXD3zpCk4=;
 b=LVlafXOVg8dPGyHBInCfw4ygWtETRMHxk4QZUfu8F+NBZZnmFZBi9ju/w9h1h1no2d
 l2PHuTB2FQ0T+5fLjAMEEF11n4jUtOgunTH0BKKSdnLX1chTxutVMsXCi8Tg5jAnstFi
 eA+ppDrCA9pg1Lj/TcBwKvZNNi4KAP/m/SCuAVWY8ppy/u+5f5YFDoxGYJjg02yvCRhb
 zciYxsLh4Zo38R8eSEHhXt/U0G3+tvTmnOXjEYzAP6r+1RRPB61INky0UNcZB615rtox
 cDIUDcU7DuN1OlArldBtJzTWYWFgTp4kRN1vWlONuKCzVIaMqdZc+M1CAPFWYksj1RHX
 jzDA==
X-Gm-Message-State: ANhLgQ0A7pk2kQHROE0rwV5KPwb/hDU/5lgIbU2OcfWYaLgLEe3Qrcp4
 eC8GZNO/EwoNKHMs+g0/bySHkWv5DO3X41gfc7vzZQ==
X-Google-Smtp-Source: ADFU+vuEQwg54UfRnVUivvi2XAvw1kpPkO+wKIeQOvogrYA6XaZZDcGKFwx/sipK4ZcE3k+HyqO+TMExufbbQHxzTm0=
X-Received: by 2002:a7b:c458:: with SMTP id l24mr1229147wmi.120.1584592208974; 
 Wed, 18 Mar 2020 21:30:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200310115925.126174-1-anup.patel@wdc.com>
 <20200310081558-mutt-send-email-mst@kernel.org>
In-Reply-To: <20200310081558-mutt-send-email-mst@kernel.org>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 19 Mar 2020 09:59:56 +0530
Message-ID: <CAAhSdy2ALTEAYO==KR3kobrmrf8ct0Zzf2aJSSU_qGJHt8SMgw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Only select essential drivers for SOC_VIRT config
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_213011_322435_031B427B 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "Michael S. Tsirkin" <mst@redhat.com>,
 Anup Patel <anup.patel@wdc.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer,

On Tue, Mar 10, 2020 at 5:46 PM Michael S. Tsirkin <mst@redhat.com> wrote:
>
> On Tue, Mar 10, 2020 at 05:29:25PM +0530, Anup Patel wrote:
> > The kconfig select causes build failues for SOC_VIRT config becaus
> > we are selecting lot of VIRTIO drivers without selecting all required
> > dependencies.
> >
> > Better approach is to only select essential drivers from SOC_VIRT
> > config option and enable required VIRTIO drivers using defconfigs.
> >
> > Fixes: 759bdc168181 ("RISC-V: Add kconfig option for QEMU virt machine")
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
>
> Yea makes sense.
>
> Acked-by: Michael S. Tsirkin <mst@redhat.com>

Can you take this fix for Linux-5.6-rc7 ?

Regards,
Anup

>
> > ---
> >  arch/riscv/Kconfig.socs           | 14 --------------
> >  arch/riscv/configs/defconfig      | 16 +++++++++++++++-
> >  arch/riscv/configs/rv32_defconfig | 16 +++++++++++++++-
> >  3 files changed, 30 insertions(+), 16 deletions(-)
> >
> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index 3078b2de0b2d..a131174a0a77 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -12,20 +12,6 @@ config SOC_SIFIVE
> >
> >  config SOC_VIRT
> >         bool "QEMU Virt Machine"
> > -       select VIRTIO_PCI
> > -       select VIRTIO_BALLOON
> > -       select VIRTIO_MMIO
> > -       select VIRTIO_CONSOLE
> > -       select VIRTIO_NET
> > -       select NET_9P_VIRTIO
> > -       select VIRTIO_BLK
> > -       select SCSI_VIRTIO
> > -       select DRM_VIRTIO_GPU
> > -       select HW_RANDOM_VIRTIO
> > -       select RPMSG_CHAR
> > -       select RPMSG_VIRTIO
> > -       select CRYPTO_DEV_VIRTIO
> > -       select VIRTIO_INPUT
> >         select POWER_RESET_SYSCON
> >         select POWER_RESET_SYSCON_POWEROFF
> >         select GOLDFISH
> > diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> > index c8f084203067..2557c5372a25 100644
> > --- a/arch/riscv/configs/defconfig
> > +++ b/arch/riscv/configs/defconfig
> > @@ -31,6 +31,7 @@ CONFIG_IP_PNP_BOOTP=y
> >  CONFIG_IP_PNP_RARP=y
> >  CONFIG_NETLINK_DIAG=y
> >  CONFIG_NET_9P=y
> > +CONFIG_NET_9P_VIRTIO=y
> >  CONFIG_PCI=y
> >  CONFIG_PCIEPORTBUS=y
> >  CONFIG_PCI_HOST_GENERIC=y
> > @@ -38,12 +39,15 @@ CONFIG_PCIE_XILINX=y
> >  CONFIG_DEVTMPFS=y
> >  CONFIG_DEVTMPFS_MOUNT=y
> >  CONFIG_BLK_DEV_LOOP=y
> > +CONFIG_VIRTIO_BLK=y
> >  CONFIG_BLK_DEV_SD=y
> >  CONFIG_BLK_DEV_SR=y
> > +CONFIG_SCSI_VIRTIO=y
> >  CONFIG_ATA=y
> >  CONFIG_SATA_AHCI=y
> >  CONFIG_SATA_AHCI_PLATFORM=y
> >  CONFIG_NETDEVICES=y
> > +CONFIG_VIRTIO_NET=y
> >  CONFIG_MACB=y
> >  CONFIG_E1000E=y
> >  CONFIG_R8169=y
> > @@ -54,13 +58,16 @@ CONFIG_SERIAL_8250_CONSOLE=y
> >  CONFIG_SERIAL_OF_PLATFORM=y
> >  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
> >  CONFIG_HVC_RISCV_SBI=y
> > +CONFIG_VIRTIO_CONSOLE=y
> >  CONFIG_HW_RANDOM=y
> > +CONFIG_HW_RANDOM_VIRTIO=y
> >  CONFIG_SPI=y
> >  CONFIG_SPI_SIFIVE=y
> >  # CONFIG_PTP_1588_CLOCK is not set
> >  CONFIG_POWER_RESET=y
> >  CONFIG_DRM=y
> >  CONFIG_DRM_RADEON=y
> > +CONFIG_DRM_VIRTIO_GPU=y
> >  CONFIG_FRAMEBUFFER_CONSOLE=y
> >  CONFIG_USB=y
> >  CONFIG_USB_XHCI_HCD=y
> > @@ -74,6 +81,12 @@ CONFIG_USB_UAS=y
> >  CONFIG_MMC=y
> >  CONFIG_MMC_SPI=y
> >  CONFIG_RTC_CLASS=y
> > +CONFIG_VIRTIO_PCI=y
> > +CONFIG_VIRTIO_BALLOON=y
> > +CONFIG_VIRTIO_INPUT=y
> > +CONFIG_VIRTIO_MMIO=y
> > +CONFIG_RPMSG_CHAR=y
> > +CONFIG_RPMSG_VIRTIO=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> >  CONFIG_AUTOFS4_FS=y
> > @@ -88,16 +101,17 @@ CONFIG_NFS_V4_2=y
> >  CONFIG_ROOT_NFS=y
> >  CONFIG_9P_FS=y
> >  CONFIG_CRYPTO_USER_API_HASH=y
> > +CONFIG_CRYPTO_DEV_VIRTIO=y
> >  CONFIG_PRINTK_TIME=y
> >  CONFIG_DEBUG_FS=y
> >  CONFIG_DEBUG_PAGEALLOC=y
> > +CONFIG_SCHED_STACK_END_CHECK=y
> >  CONFIG_DEBUG_VM=y
> >  CONFIG_DEBUG_VM_PGFLAGS=y
> >  CONFIG_DEBUG_MEMORY_INIT=y
> >  CONFIG_DEBUG_PER_CPU_MAPS=y
> >  CONFIG_SOFTLOCKUP_DETECTOR=y
> >  CONFIG_WQ_WATCHDOG=y
> > -CONFIG_SCHED_STACK_END_CHECK=y
> >  CONFIG_DEBUG_TIMEKEEPING=y
> >  CONFIG_DEBUG_RT_MUTEXES=y
> >  CONFIG_DEBUG_SPINLOCK=y
> > diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> > index a844920a261f..0292879a9690 100644
> > --- a/arch/riscv/configs/rv32_defconfig
> > +++ b/arch/riscv/configs/rv32_defconfig
> > @@ -31,6 +31,7 @@ CONFIG_IP_PNP_BOOTP=y
> >  CONFIG_IP_PNP_RARP=y
> >  CONFIG_NETLINK_DIAG=y
> >  CONFIG_NET_9P=y
> > +CONFIG_NET_9P_VIRTIO=y
> >  CONFIG_PCI=y
> >  CONFIG_PCIEPORTBUS=y
> >  CONFIG_PCI_HOST_GENERIC=y
> > @@ -38,12 +39,15 @@ CONFIG_PCIE_XILINX=y
> >  CONFIG_DEVTMPFS=y
> >  CONFIG_DEVTMPFS_MOUNT=y
> >  CONFIG_BLK_DEV_LOOP=y
> > +CONFIG_VIRTIO_BLK=y
> >  CONFIG_BLK_DEV_SD=y
> >  CONFIG_BLK_DEV_SR=y
> > +CONFIG_SCSI_VIRTIO=y
> >  CONFIG_ATA=y
> >  CONFIG_SATA_AHCI=y
> >  CONFIG_SATA_AHCI_PLATFORM=y
> >  CONFIG_NETDEVICES=y
> > +CONFIG_VIRTIO_NET=y
> >  CONFIG_MACB=y
> >  CONFIG_E1000E=y
> >  CONFIG_R8169=y
> > @@ -54,11 +58,14 @@ CONFIG_SERIAL_8250_CONSOLE=y
> >  CONFIG_SERIAL_OF_PLATFORM=y
> >  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
> >  CONFIG_HVC_RISCV_SBI=y
> > +CONFIG_VIRTIO_CONSOLE=y
> >  CONFIG_HW_RANDOM=y
> > +CONFIG_HW_RANDOM_VIRTIO=y
> >  # CONFIG_PTP_1588_CLOCK is not set
> >  CONFIG_POWER_RESET=y
> >  CONFIG_DRM=y
> >  CONFIG_DRM_RADEON=y
> > +CONFIG_DRM_VIRTIO_GPU=y
> >  CONFIG_FRAMEBUFFER_CONSOLE=y
> >  CONFIG_USB=y
> >  CONFIG_USB_XHCI_HCD=y
> > @@ -70,6 +77,12 @@ CONFIG_USB_OHCI_HCD_PLATFORM=y
> >  CONFIG_USB_STORAGE=y
> >  CONFIG_USB_UAS=y
> >  CONFIG_RTC_CLASS=y
> > +CONFIG_VIRTIO_PCI=y
> > +CONFIG_VIRTIO_BALLOON=y
> > +CONFIG_VIRTIO_INPUT=y
> > +CONFIG_VIRTIO_MMIO=y
> > +CONFIG_RPMSG_CHAR=y
> > +CONFIG_RPMSG_VIRTIO=y
> >  CONFIG_EXT4_FS=y
> >  CONFIG_EXT4_FS_POSIX_ACL=y
> >  CONFIG_AUTOFS4_FS=y
> > @@ -84,16 +97,17 @@ CONFIG_NFS_V4_2=y
> >  CONFIG_ROOT_NFS=y
> >  CONFIG_9P_FS=y
> >  CONFIG_CRYPTO_USER_API_HASH=y
> > +CONFIG_CRYPTO_DEV_VIRTIO=y
> >  CONFIG_PRINTK_TIME=y
> >  CONFIG_DEBUG_FS=y
> >  CONFIG_DEBUG_PAGEALLOC=y
> > +CONFIG_SCHED_STACK_END_CHECK=y
> >  CONFIG_DEBUG_VM=y
> >  CONFIG_DEBUG_VM_PGFLAGS=y
> >  CONFIG_DEBUG_MEMORY_INIT=y
> >  CONFIG_DEBUG_PER_CPU_MAPS=y
> >  CONFIG_SOFTLOCKUP_DETECTOR=y
> >  CONFIG_WQ_WATCHDOG=y
> > -CONFIG_SCHED_STACK_END_CHECK=y
> >  CONFIG_DEBUG_TIMEKEEPING=y
> >  CONFIG_DEBUG_RT_MUTEXES=y
> >  CONFIG_DEBUG_SPINLOCK=y
> > --
> > 2.17.1
> >
> >
>

