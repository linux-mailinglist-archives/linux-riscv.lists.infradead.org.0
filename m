Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E8DA7957
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 05:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrPfoQLnlJavmNcygMI50xvzaBrhVUly8B6Cr9zCORM=; b=jC/6iELftceWhV
	as3fZ76qJEtvzrqMTkLeWfa0s3YjAW5vHLO1YynPjEafREZjTGoAozp2L5YH1AFBRWiOaE5x+cGg5
	fQET4lsHNvo+dvLDiwgwzgWFPR2WkhV+S6eKt5x+KYFPc55z/2cnZUpEQhh0kgraz81vp624KXfNK
	XRYAkCplWNeVDrOSgww+L/PXe5CG1iTRgjEOZ/o7KUJnbf0UWZe4tZlaCCgVSqfZf4lYOGdT8Jn51
	8BY2M7k1HwRfbjTM6f2ZpTXn5sBwevH7wQvvSnZLmHdzfZRM/LoDrxqh/U+fvp9HlsStsDar0IhmS
	hSBZwYCUIhW1J2baSnvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5M4v-00080n-S3; Wed, 04 Sep 2019 03:35:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5M4s-00080O-8l
 for linux-riscv@lists.infradead.org; Wed, 04 Sep 2019 03:35:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id c3so19547181wrd.7
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 20:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jn5OSztxk2wM4+ZLbyOmi+wJ8YnwKKIfxlVrnLnD+wk=;
 b=bzUbJucSBcevxgSP/JZGmXasXfTXGeskrA7PHMmjHr7A1GWXQab7voATWB7x2YJ50a
 uEIf06XGuYXBMEHZNuT3ClSGcMx1j3eFyUGcElZG3BZwr5yAT/gfD+HTmeEo7KaE3Olr
 G7+90pnjp/rHIkvS2tP3W1WAUzkdFyQKX4S195UbBxvoTkNiKF2FMuwyScqTVaOejTlk
 vZfainILsxs4SfCgUwTZdLAITxn5GLQKvtp8pfeLZpDZO7bpPo7bYBGFbb4j0toPuK1x
 PF8YbZxCpUKoahactiiXl1txx0/G2ChITww315jctiR2HTZCMcztqGLlOlBzxVT4RrcF
 CQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jn5OSztxk2wM4+ZLbyOmi+wJ8YnwKKIfxlVrnLnD+wk=;
 b=rrrj5v3fw0BNIykdW3ItDSre3qOvQmc37ouugZiGTzRKcu2L2c7fRlkQeSI6xbz0vm
 2bzgCAumYrncQ9cvyzjmqCgE3yDhZKVJY7sVwY70E4J5oWtWenk5DpGOz99J083PeX5J
 f17LEyUxyuXhLhoWzEgKM0DVEAH05sV5IRteLLbaTtPjF4kYTXCHD/6YzQ1dKznaE1hH
 fq8guRSN8v9EKKuhZNXKxq6psfnG0nbHfzdDEaHui5HV/qPFGW/GJX3VdsPbiQQ/AKCp
 vSJanEvC/keaAqwaVeAfbcPzYTqMf99rvWCdrkfmCKdmeedbn5mBe5qVtu1XyQCxXAAD
 JetQ==
X-Gm-Message-State: APjAAAX+ZThHDIdVoVzn1hDAoSxJ+0QB/KniC3CzBiByuJXyMoXXCBaP
 pMh4T93ej9BUGwUw+8+DlkALUmKJaA3TdxHzv1tVbQ==
X-Google-Smtp-Source: APXvYqyV/6rNcMH3m7t9z6Ani8tnAmKs5v+cHyyTcLFNOZNXQpgi0YTX1RyDIxfobKLUpvYpEbw9v7/LtcONArowMkU=
X-Received: by 2002:a5d:6306:: with SMTP id i6mr24954050wru.323.1567568123665; 
 Tue, 03 Sep 2019 20:35:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190903233510.9846-1-palmer@sifive.com>
In-Reply-To: <20190903233510.9846-1-palmer@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2019 09:05:12 +0530
Message-ID: <CAAhSdy3toBiyHhvRLbdj+xtfdhWLzd4ZEKpdj+VdbB=ZL9khSw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add Plan 9 support to the defconfigs
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_203526_358263_648614D9 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 5:06 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> QEMU contains facilities for sharing directory trees between a guest and
> host that are based on plan 9's network filesystem.  This patch adds the
> relevant entries to our defconfigs to enable these, the most interesting
> of which is probably CONFIG_VIRTIO_PCI.
>
> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> ---
>  arch/riscv/configs/defconfig      | 4 ++++
>  arch/riscv/configs/rv32_defconfig | 4 ++++
>  2 files changed, 8 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 3efff552a261..79ae1f932b2e 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
>  CONFIG_IP_PNP_BOOTP=y
>  CONFIG_IP_PNP_RARP=y
>  CONFIG_NETLINK_DIAG=y
> +CONFIG_NET_9P=y
> +CONFIG_NET_9P_VIRTIO=y
>  CONFIG_PCI=y
>  CONFIG_PCIEPORTBUS=y
>  CONFIG_PCI_HOST_GENERIC=y
> @@ -73,6 +75,7 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_MMC=y
>  CONFIG_MMC_SPI=y
> +CONFIG_VIRTIO_PCI=y
>  CONFIG_VIRTIO_MMIO=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
> @@ -86,6 +89,7 @@ CONFIG_NFS_V4=y
>  CONFIG_NFS_V4_1=y
>  CONFIG_NFS_V4_2=y
>  CONFIG_ROOT_NFS=y
> +CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index 7da93e494445..5bf9e919900a 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
>  CONFIG_IP_PNP_BOOTP=y
>  CONFIG_IP_PNP_RARP=y
>  CONFIG_NETLINK_DIAG=y
> +CONFIG_NET_9P=y
> +CONFIG_NET_9P_VIRTIO=y
>  CONFIG_PCI=y
>  CONFIG_PCIEPORTBUS=y
>  CONFIG_PCI_HOST_GENERIC=y
> @@ -69,6 +71,7 @@ CONFIG_USB_OHCI_HCD=y
>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
> +CONFIG_VIRTIO_PCI=y
>  CONFIG_VIRTIO_MMIO=y
>  CONFIG_SIFIVE_PLIC=y
>  CONFIG_EXT4_FS=y
> @@ -83,6 +86,7 @@ CONFIG_NFS_V4=y
>  CONFIG_NFS_V4_1=y
>  CONFIG_NFS_V4_2=y
>  CONFIG_ROOT_NFS=y
> +CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> --
> 2.21.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

This is already covered by the following patch:
https://lkml.org/lkml/2019/8/29/684

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
