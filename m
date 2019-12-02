Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C040410F37A
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 00:33:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:In-Reply-To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=iOnkv2VMcw9RmyyCbEl0m655kCFIQwaRfogipL9Q0uo=; b=WU44U7Xkmud5/8vxGfuSXzW5F
	1ocZp7TPZ2F7QcBsn15Zj0vsInVLc+yNwAAfnM9Z+8hl0KQF4Wx9hlFWZx3pWgOs4a3Q9G/p5VHdp
	3ZvXSbe05JxVHhF8K6+fKhDyeU2r312pE41wAAoAydVFQBwz0ZeO2HsIgpcfywmv9TTc/x/dLCAJe
	7wXYL/rMF3PPBIuYBMkkSuQBQr3XS0Pcbi9r/vHZYp+X01rqTCSeBOVSfg45wJEf7TMfaB5plEbIh
	9WRkoFReZcDOpll94D+uiGBe3Dgeygp5PTiDNr9ZY2rAJFI6lkVFt45Qj5SI/PEGSOf4WElDF8waR
	osx7Zu0yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvBe-0003xk-KW; Mon, 02 Dec 2019 23:33:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvBX-0003pM-QJ
 for linux-riscv@lists.infradead.org; Mon, 02 Dec 2019 23:32:57 +0000
Received: by mail-pf1-x444.google.com with SMTP id s18so650563pfd.8
 for <linux-riscv@lists.infradead.org>; Mon, 02 Dec 2019 15:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:in-reply-to:cc:to:message-id:mime-version
 :content-transfer-encoding;
 bh=AuYdYQOqVjZOMTwcbGbtEItUVQpJS/UeiwXcdeGYymo=;
 b=PFNWfDDnNNFEm2kwi9s7n16kEz6A210TtiSuJuZYIhrMhtnpoYmG71OxXcE1zDFjH5
 SF4wAvHkndVHU1XEIFQUiktKEmf1Y8XfBc7ol07fHA7jcKuq0OfFtF7p8FVBLS5Oemxc
 Rf6hG1zkJXKBbHzt4+oCbrrUAR/Dsz1zahN3kNvIh+wpkb50ISe95QqkgTBkG9Kj2tNu
 C6PCIZuLVGMo6kA1pq1STe0cvjki2ZrsJvd6L8H+PEVTzmsiF4VfKb8G/kpgun8d+6rY
 6lDMnmjVKR8w8byJ/JizyzpEvoYKS+X6KvuGfJYWhnSFUlPQwHzktiyFc5NG7hLI/JYf
 3Nhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:in-reply-to:cc:to:message-id
 :mime-version:content-transfer-encoding;
 bh=AuYdYQOqVjZOMTwcbGbtEItUVQpJS/UeiwXcdeGYymo=;
 b=UjigNx9SrzRZw2w3KfcUuBnYaLk68v8kxZIx0DQ/rMTFr58TmoKLOoNHSpH/Hiow6O
 1kR62UOsyXr/k2RjmGiU7jgjoY/xhBCaQcnsEA/9IXXn9jHeYckLEqV8RPZCdk/MuuDQ
 GA+9jlFU0OA1lsfCLusc957XEeQ5Ueb3oC6N+p+dmZB6XSuHg337Q5pUZm6nQ0s2hAGC
 M2f9O/W7XGS8/QaRm2T2e4H0FZdh043sX/cq08RgdWD0MnvgI3VAKA1U5O9KSHHD2OXR
 IdpXvBJygaIf2oz57gmaiIj17+O2pWpMMiqC4xsKydc+d1pm9R7j5KfKcV5i3qw00iSJ
 hsHQ==
X-Gm-Message-State: APjAAAVfLoVdmgwSFH0Et+4QT4OQFmLnF7ViecD9uNs4IgEnUYgNiVqw
 pEAEOmQGK23VXYaKeqk1H+GoKdmzM+w=
X-Google-Smtp-Source: APXvYqyR9ul/jT1p2KfOlJ+gOratNSumaQtcJqIXUnodMSdnelCIQwRPISibeBYTSEjBNKke6Mexaw==
X-Received: by 2002:a65:6209:: with SMTP id d9mr1899204pgv.22.1575329572670;
 Mon, 02 Dec 2019 15:32:52 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id e16sm580681pff.181.2019.12.02.15.32.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 15:32:52 -0800 (PST)
Date: Mon, 02 Dec 2019 15:32:52 -0800 (PST)
X-Google-Original-Date: Mon, 02 Dec 2019 15:27:26 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 3/4] RISC-V: Select SYSCON Reboot and Poweroff for QEMU
 virt machine
In-Reply-To: <20191125132147.97111-4-anup.patel@wdc.com>
To: Anup Patel <Anup.Patel@wdc.com>
Message-ID: <mhng-b024f0a2-a9cc-421a-aae0-997d024e6c9c@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153255_849519_4A5CE7A4 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 aou@eecs.berkeley.edu, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 25 Nov 2019 05:22:33 PST (-0800), Anup Patel wrote:
> The SYSCON Reboot and Poweroff drivers can be used on QEMU virt machine
> to reboot or poweroff the system hence we select these drivers using
> QEMU virt machine kconfig option.
>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/Kconfig.socs           | 2 ++
>  arch/riscv/configs/defconfig      | 1 +
>  arch/riscv/configs/rv32_defconfig | 1 +
>  3 files changed, 4 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 62383951bf2e..bae4907b4880 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -26,6 +26,8 @@ config SOC_VIRT
>         select RPMSG_VIRTIO
>         select CRYPTO_DEV_VIRTIO
>         select VIRTIO_INPUT
> +       select POWER_RESET_SYSCON
> +       select POWER_RESET_SYSCON_POWEROFF
>         select SIFIVE_PLIC
>         help
>           This enables support for QEMU Virt Machine.
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 2515fe6417e1..bf33bd40ee07 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -58,6 +58,7 @@ CONFIG_HW_RANDOM=y
>  CONFIG_SPI=y
>  CONFIG_SPI_SIFIVE=y
>  # CONFIG_PTP_1588_CLOCK is not set
> +CONFIG_POWER_RESET=y
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
>  CONFIG_FRAMEBUFFER_CONSOLE=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index bbcf14fd6f40..234213b4ea74 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -56,6 +56,7 @@ CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
>  CONFIG_HVC_RISCV_SBI=y
>  CONFIG_HW_RANDOM=y
>  # CONFIG_PTP_1588_CLOCK is not set
> +CONFIG_POWER_RESET=y
>  CONFIG_DRM=y
>  CONFIG_DRM_RADEON=y
>  CONFIG_FRAMEBUFFER_CONSOLE=y

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
