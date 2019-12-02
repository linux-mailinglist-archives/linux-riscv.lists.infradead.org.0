Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF56810F378
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 00:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:In-Reply-To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=CWJXKOk/VKYPHK7dBsiWvFXTSiCds0g3Y5WprpaFckE=; b=Wth4BNKhxEpOPouONDZcW+5od
	Jz0h4RYFEoRWxX8j0Zs0zzXj5ojKcAympc2vtHxd/sPAj2jq5PQZ8Q6nWXXhf4RLCiO2cijZ1aF0p
	yfMPzx+8wfJsHtmwzP6sjec8oLQaz7D2Ox0ZZeuDAYJHSq4R0el7jMuUzxwfW6InzHBgYwUmvJqw0
	VdFnz09qCPr5AuVCpgdFDO6QHHQ5NNVwanzkJhahcVZPrmpgJ5RxZf8gkHnIBnsZR26ByGWVros9P
	v1n4yXfzT5e0F6Wcne29gVumV4KxjKhCGtpCoZERmXXVeBSUYevfycwg1uLwrnWBCF5/Wa5aaeTv6
	h97+6yJzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvBc-0003v5-En; Mon, 02 Dec 2019 23:33:00 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvBW-0003pK-VL
 for linux-riscv@lists.infradead.org; Mon, 02 Dec 2019 23:32:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id o9so752220plk.6
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 15:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=6tCx0xpaZr/XSR1WIa5s+CeKR3QHvjhI5hsm121lnno=;
 b=VjhqmGAa5cXTvDGcC4jNfN/xABhpCNjayFZR6Dk8dqk5MZw05zB+oOBfLgXe5eO+Zt
 0BfGJXURBpV6AHJDCduhM999tIzdn9aLv2isJJlWuBj9OgK4tNpXsYHz1i03B5b2snZu
 0k7Tab6W+vtM5Ra1ySThKYV0Cz49v+YVhQPKfFvW1w7su2myMlBCkrLSyBetfKnwcfMa
 FomVlywjj64YJgxbQJTcOysMGMcG1WtSYroZhn0vfwWWAoiDD92MSXXyetFGVY+ygpUN
 82PtIiw7BjNpIEVYzcfWLZohCepj35S4pUf+dlOmAFae3IXCPjgQo2BoZ1MH71yCUKKv
 AVyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=6tCx0xpaZr/XSR1WIa5s+CeKR3QHvjhI5hsm121lnno=;
 b=GbsEfuTy/l/gAi3mvT3TsJ6OuW9eNcSMGk/ZkPX+ozCu7Cmf8cWJF/jPEPVP0ntya4
 rTISv8CoZR9pOMI1AXUSmbCqmhZ04LjwtcnG4bIpizDhb/SneARBLVEWB8rhve+x9iyG
 tFk5QOmaOjAyBuND7XyYvbEDAHulVFFNSX34PZJQ3MZYol2HveH6gxT1YCLThBZoYnY3
 nPk1fXohYqBxDFqeWFQYtUFpbWFm8DELMFMurOCuDf+M0UjhDPhFBuUXkxNfX0eTtnXo
 ZLt/vdBL+Rj2l5T69oX1NLSMb8F7/t08L5/bvmDSO4hDWaybkl5uZ4RPvz1ApNcub7ZS
 4s+g==
X-Gm-Message-State: APjAAAX6MVcnk8Ivf4Dk7U+kF/tFRCmsgdofYOiojpGRiAdvia2ViHg5
 sbKtQuBeUJbwwyVU7m24y0gYqQ==
X-Google-Smtp-Source: APXvYqydgBmoG6TcLcLG+sVeP6rpWk2NkPEduGd6XFXqGsnsg7Yr2O2DCOQInzRHQ2F7XlDewyDdjA==
X-Received: by 2002:a17:902:7607:: with SMTP id
 k7mr1797761pll.277.1575329571300; 
 Mon, 02 Dec 2019 15:32:51 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id a22sm624843pfk.108.2019.12.02.15.32.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:32:50 -0800 (PST)
Date: Mon, 02 Dec 2019 15:32:50 -0800 (PST)
X-Google-Original-Date: Mon, 02 Dec 2019 15:24:46 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 2/4] RISC-V: Enable QEMU virt machine support in defconfigs
In-Reply-To: <bfd66a0d4f4e5ec112244101bc4173aef9a56286.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-4fd4132f-6164-47e0-a713-8fea56c49b99@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153255_007807_2CE20DB0 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -14.9 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: palmer@sifive.com, anup@brainfault.org, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 11:14:37 PST (-0800), Atish Patra wrote:
> On Mon, 2019-11-25 at 13:22 +0000, Anup Patel wrote:
>> We have kconfig option for QEMU virt machine so let's enable it
>> in RV32 and RV64 defconfigs.
>>
>
> and remove the virt specific configs from defconfig.
>
> Bit more verbose commit text makes more sense here.
>
>
>> Signed-off-by: Anup Patel <anup.patel@wdc.com>
>> ---
>>  arch/riscv/configs/defconfig      | 15 +--------------
>>  arch/riscv/configs/rv32_defconfig | 16 +---------------
>>  2 files changed, 2 insertions(+), 29 deletions(-)
>>
>> diff --git a/arch/riscv/configs/defconfig
>> b/arch/riscv/configs/defconfig
>> index 420a0dbef386..2515fe6417e1 100644
>> --- a/arch/riscv/configs/defconfig
>> +++ b/arch/riscv/configs/defconfig
>> @@ -15,6 +15,7 @@ CONFIG_BLK_DEV_INITRD=y
>>  CONFIG_EXPERT=y
>>  CONFIG_BPF_SYSCALL=y
>>  CONFIG_SOC_SIFIVE=y
>> +CONFIG_SOC_VIRT=y
>>  CONFIG_SMP=y
>>  CONFIG_MODULES=y
>>  CONFIG_MODULE_UNLOAD=y
>> @@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
>>  CONFIG_IP_PNP_RARP=y
>>  CONFIG_NETLINK_DIAG=y
>>  CONFIG_NET_9P=y
>> -CONFIG_NET_9P_VIRTIO=y
>>  CONFIG_PCI=y
>>  CONFIG_PCIEPORTBUS=y
>>  CONFIG_PCI_HOST_GENERIC=y
>> @@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
>>  CONFIG_DEVTMPFS=y
>>  CONFIG_DEVTMPFS_MOUNT=y
>>  CONFIG_BLK_DEV_LOOP=y
>> -CONFIG_VIRTIO_BLK=y
>>  CONFIG_BLK_DEV_SD=y
>>  CONFIG_BLK_DEV_SR=y
>> -CONFIG_SCSI_VIRTIO=y
>>  CONFIG_ATA=y
>>  CONFIG_SATA_AHCI=y
>>  CONFIG_SATA_AHCI_PLATFORM=y
>>  CONFIG_NETDEVICES=y
>> -CONFIG_VIRTIO_NET=y
>>  CONFIG_MACB=y
>>  CONFIG_E1000E=y
>>  CONFIG_R8169=y
>> @@ -57,15 +54,12 @@ CONFIG_SERIAL_8250_CONSOLE=y
>>  CONFIG_SERIAL_OF_PLATFORM=y
>>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
>>  CONFIG_HVC_RISCV_SBI=y
>> -CONFIG_VIRTIO_CONSOLE=y
>>  CONFIG_HW_RANDOM=y
>> -CONFIG_HW_RANDOM_VIRTIO=y
>>  CONFIG_SPI=y
>>  CONFIG_SPI_SIFIVE=y
>>  # CONFIG_PTP_1588_CLOCK is not set
>>  CONFIG_DRM=y
>>  CONFIG_DRM_RADEON=y
>> -CONFIG_DRM_VIRTIO_GPU=y
>>  CONFIG_FRAMEBUFFER_CONSOLE=y
>>  CONFIG_USB=y
>>  CONFIG_USB_XHCI_HCD=y
>> @@ -78,12 +72,6 @@ CONFIG_USB_STORAGE=y
>>  CONFIG_USB_UAS=y
>>  CONFIG_MMC=y
>>  CONFIG_MMC_SPI=y
>> -CONFIG_VIRTIO_PCI=y
>> -CONFIG_VIRTIO_BALLOON=y
>> -CONFIG_VIRTIO_INPUT=y
>> -CONFIG_VIRTIO_MMIO=y
>> -CONFIG_RPMSG_CHAR=y
>> -CONFIG_RPMSG_VIRTIO=y
>>  CONFIG_EXT4_FS=y
>>  CONFIG_EXT4_FS_POSIX_ACL=y
>>  CONFIG_AUTOFS4_FS=y
>> @@ -98,6 +86,5 @@ CONFIG_NFS_V4_2=y
>>  CONFIG_ROOT_NFS=y
>>  CONFIG_9P_FS=y
>>  CONFIG_CRYPTO_USER_API_HASH=y
>> -CONFIG_CRYPTO_DEV_VIRTIO=y
>>  CONFIG_PRINTK_TIME=y
>>  # CONFIG_RCU_TRACE is not set
>> diff --git a/arch/riscv/configs/rv32_defconfig
>> b/arch/riscv/configs/rv32_defconfig
>> index 87ee6e62b64b..bbcf14fd6f40 100644
>> --- a/arch/riscv/configs/rv32_defconfig
>> +++ b/arch/riscv/configs/rv32_defconfig
>> @@ -14,6 +14,7 @@ CONFIG_CHECKPOINT_RESTORE=y
>>  CONFIG_BLK_DEV_INITRD=y
>>  CONFIG_EXPERT=y
>>  CONFIG_BPF_SYSCALL=y
>> +CONFIG_SOC_VIRT=y
>>  CONFIG_ARCH_RV32I=y
>>  CONFIG_SMP=y
>>  CONFIG_MODULES=y
>> @@ -30,7 +31,6 @@ CONFIG_IP_PNP_BOOTP=y
>>  CONFIG_IP_PNP_RARP=y
>>  CONFIG_NETLINK_DIAG=y
>>  CONFIG_NET_9P=y
>> -CONFIG_NET_9P_VIRTIO=y
>>  CONFIG_PCI=y
>>  CONFIG_PCIEPORTBUS=y
>>  CONFIG_PCI_HOST_GENERIC=y
>> @@ -38,15 +38,12 @@ CONFIG_PCIE_XILINX=y
>>  CONFIG_DEVTMPFS=y
>>  CONFIG_DEVTMPFS_MOUNT=y
>>  CONFIG_BLK_DEV_LOOP=y
>> -CONFIG_VIRTIO_BLK=y
>>  CONFIG_BLK_DEV_SD=y
>>  CONFIG_BLK_DEV_SR=y
>> -CONFIG_SCSI_VIRTIO=y
>>  CONFIG_ATA=y
>>  CONFIG_SATA_AHCI=y
>>  CONFIG_SATA_AHCI_PLATFORM=y
>>  CONFIG_NETDEVICES=y
>> -CONFIG_VIRTIO_NET=y
>>  CONFIG_MACB=y
>>  CONFIG_E1000E=y
>>  CONFIG_R8169=y
>> @@ -57,13 +54,10 @@ CONFIG_SERIAL_8250_CONSOLE=y
>>  CONFIG_SERIAL_OF_PLATFORM=y
>>  CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
>>  CONFIG_HVC_RISCV_SBI=y
>> -CONFIG_VIRTIO_CONSOLE=y
>>  CONFIG_HW_RANDOM=y
>> -CONFIG_HW_RANDOM_VIRTIO=y
>>  # CONFIG_PTP_1588_CLOCK is not set
>>  CONFIG_DRM=y
>>  CONFIG_DRM_RADEON=y
>> -CONFIG_DRM_VIRTIO_GPU=y
>>  CONFIG_FRAMEBUFFER_CONSOLE=y
>>  CONFIG_USB=y
>>  CONFIG_USB_XHCI_HCD=y
>> @@ -74,13 +68,6 @@ CONFIG_USB_OHCI_HCD=y
>>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>>  CONFIG_USB_STORAGE=y
>>  CONFIG_USB_UAS=y
>> -CONFIG_VIRTIO_PCI=y
>> -CONFIG_VIRTIO_BALLOON=y
>> -CONFIG_VIRTIO_INPUT=y
>> -CONFIG_VIRTIO_MMIO=y
>> -CONFIG_RPMSG_CHAR=y
>> -CONFIG_RPMSG_VIRTIO=y
>> -CONFIG_SIFIVE_PLIC=y
>>  CONFIG_EXT4_FS=y
>>  CONFIG_EXT4_FS_POSIX_ACL=y
>>  CONFIG_AUTOFS4_FS=y
>> @@ -95,6 +82,5 @@ CONFIG_NFS_V4_2=y
>>  CONFIG_ROOT_NFS=y
>>  CONFIG_9P_FS=y
>>  CONFIG_CRYPTO_USER_API_HASH=y
>> -CONFIG_CRYPTO_DEV_VIRTIO=y
>>  CONFIG_PRINTK_TIME=y
>>  # CONFIG_RCU_TRACE is not set
>
> Otherwise, looks good.
>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
