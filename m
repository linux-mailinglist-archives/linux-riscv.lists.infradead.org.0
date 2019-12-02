Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC78410F37B
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 00:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:In-Reply-To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=LyMzdrWd5e3Pb0aggeE9zMBR6KV0bBoE/4WG8IOoCQU=; b=fIA/XWrYcsfPVOIPGaMXsDBjb
	hURNDEvtBhL/KolR2QFniZh0QTmQErdnFrRYf8QrTFi8EFLPVD/VE9cdvNKD3RlrSegXuVXzFblFO
	k4TFctJH8FF56tYSI1EJjU+FsnM6mhmwC+CCJyveQgXIIm//TvtfLYwYiOrLzD+wxEFWdpV3ZwyI/
	+F1btaP/grR75VmPanweTQXbWC2mb3Bi9fY8umRVOBo5F3h6Vhz4vQ7UEfjxPs8JZdXSQlqaKQNKI
	G8PafNhohV7QzwLKdJNESpWXTUkByvBP0akbAzJ99YnAcdukt4tYmD8Mx9jAbpPV/Czw9LrsOrF8J
	qPjWkwoxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvBa-0003sM-Ux; Mon, 02 Dec 2019 23:32:58 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvBW-0003ps-O0
 for linux-riscv@lists.infradead.org; Mon, 02 Dec 2019 23:32:55 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r11so547117pjp.12
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 15:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=4vszdq+NhnPiL4jOvg4UiO3rGXCku33xIFQdZUZZMZM=;
 b=nx1MG/Dz9hEy3n451r4boAyChbGNc/A4Q0FN0FbE83P7E/wMULZo7WAlQTd1aAz3AP
 +0d09xrEsi8gR0UxmbqccvpyRUhJGrY8dnyScrhPkleITIK7E3FA51SOSApt5FqUkev3
 RUL4XRta2HfqhW+qtQTsH+j2+UMgtJk53IzKFiSD4FxdfCWHdP5We9DT60fw2xamzZaV
 4BJyHCQZoxvqT2CzDsMf9Ps1IBnF6VGBbriV+hNsAGrPI+nvo8hg9stk8UWZU7oyiQMz
 TRvy2YDgYMZiZnBKIDv2VBOnN8TkRoKffAA0mOe0dhGkPM2KpMJg4d9M+RYwrluxGZ3n
 BhcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=4vszdq+NhnPiL4jOvg4UiO3rGXCku33xIFQdZUZZMZM=;
 b=hwNXdh+gfe7XgYTz//HlJm/xVRWXsTsE2jo7Evg/0GRRSWIE010WGLvIegRHhYhZqd
 eZiqFwWTdsNZm4VUhv+MG63gN6KwNzAnK9i7jpTAc+AhBhqNELKgyzFZhI5pWMa66yXF
 /4CwVz46FwanCE3WzhEa0xNhdifCvAPwq1w12lK2gHOMHhsjGiwJxHfRrCvqWFZZYY4r
 SclXHug4xTy2jmDe+Vo1dqaE+jm6HZly/YBhS600ZeUae2LqEA5hhJkUr5VK9oy1Y+ta
 pdks6a9Bz4fUHgXNDbtX8orwvn59103yGNG3pA/FxNm1+IZHrJfaF+NbXfVMIXEisQWu
 JjGw==
X-Gm-Message-State: APjAAAWRaY5L5ukdK8FHObTwFDIbdaiQ65PkW0wuYSlRA+UmAt+B9oSZ
 ya8GdyAvGRjL/s4y9o/EJb/G4Q==
X-Google-Smtp-Source: APXvYqx5OQsfBdGXEwuioOPgtgOCuzFKhaGL40gfb1gxoJrrOgdxqqer0j8gsyOo8olkaCXYAMAG2w==
X-Received: by 2002:a17:902:be02:: with SMTP id
 r2mr1795049pls.76.1575329574036; 
 Mon, 02 Dec 2019 15:32:54 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id w10sm680436pgi.47.2019.12.02.15.32.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:32:53 -0800 (PST)
Date: Mon, 02 Dec 2019 15:32:53 -0800 (PST)
X-Google-Original-Date: Mon, 02 Dec 2019 15:27:58 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 4/4] RISC-V: Select Goldfish RTC driver for QEMU virt
 machine
In-Reply-To: <20191125132147.97111-5-anup.patel@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-e177e2bf-9e37-4a3f-ace1-7888435c7b82@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153254_783674_E04B6B7F 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, Anup Patel <Anup.Patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 05:22:38 PST (-0800), Anup Patel wrote:
> We select Goldfish RTC driver using QEMU virt machine kconfig option
> to access RTC device on QEMU virt machine.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig.socs           | 2 ++
>  arch/riscv/configs/defconfig      | 1 +
>  arch/riscv/configs/rv32_defconfig | 1 +
>  3 files changed, 4 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index bae4907b4880..65cf39867c60 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -28,6 +28,8 @@ config SOC_VIRT
>         select VIRTIO_INPUT
>         select POWER_RESET_SYSCON
>         select POWER_RESET_SYSCON_POWEROFF
> +       select GOLDFISH
> +       select RTC_DRV_GOLDFISH
>         select SIFIVE_PLIC
>         help
>           This enables support for QEMU Virt Machine.
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index bf33bd40ee07..c5e04384ec3d 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -73,6 +73,7 @@ CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
>  CONFIG_MMC=y
>  CONFIG_MMC_SPI=y
> +CONFIG_RTC_CLASS=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index 234213b4ea74..7972b1d321c1 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -69,6 +69,7 @@ CONFIG_USB_OHCI_HCD=y
>  CONFIG_USB_OHCI_HCD_PLATFORM=y
>  CONFIG_USB_STORAGE=y
>  CONFIG_USB_UAS=y
> +CONFIG_RTC_CLASS=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
