Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6829F4B28A
	for <lists+linux-riscv@lfdr.de>; Wed, 19 Jun 2019 09:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=B0vp53spNjyj++gzaIFDdirBKa/HonHmmbF0u8VykjU=; b=amfgYE8N+o+5qAe1bngpuB90m
	//YecsyHYXlQad2w8P9uHRvrzyWoDOZN6ddM66yAAGQyPv3Rn/rfFCMrLcGqaTLhAUAC0eCtYLrsk
	JVJQlyIFZOTksSphtD41kw52SqQNTXq1NoUsQxiZLUYx2OgJYxbGhi2Ir9f8CMZR9zZ63cVVlAL/M
	JeFqGL6G+WZg+Ud39lZdejIWRJCkHdLwvqjOx+X6Oy6/9tRs+C+W3KHPxP1q9aHLqH995Slg5JEgR
	Oi0cLNgc8jAkbKyh38zW6XLuj0hvOjMCSUunyjwOipXeRMI/iahnuV7hjXNdJv35dvdxlDnbJNK13
	wWIJlm5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUdo-00036C-FA; Wed, 19 Jun 2019 07:04:20 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUdj-00035D-6J
 for linux-riscv@lists.infradead.org; Wed, 19 Jun 2019 07:04:16 +0000
Received: by mail-pl1-f193.google.com with SMTP id p1so6809655plo.2
 for <linux-riscv@lists.infradead.org>; Wed, 19 Jun 2019 00:04:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=PbYeBHsXCZa7rfwxfeGbM1ofQD9jWLYTMyvYxIoxevc=;
 b=JFT719pmvKdE+thLDGKCg9cpHHvDyN1+e3d+oe1nzTLGiOcueWn095fy2mGMaszoiB
 nfcZHzVRLkjSy/MzYYawFU9PXoNNJTwcjFZPbMycDV2x93FUuKRFvo5ft0v56HxSkkDB
 gFMxEXSBarDOAEyLSnQWye39VpO7EH7sWE0DeANq5dbEJMs3DgajHXZN8xU1Cb52hIKT
 kozpwyF2C4epD1RCk6qhHdVZxLtyDtBF63WKHiIjmqYAIuHN+rjCQ+G1z7rgLI7QhFuI
 gu5oVQEafKMrvoSbEpBS1EhBlG4BPPk5SeTSYq+ZB1E3OguSnbg0K5bIoA6XZEbnUcLV
 w3JQ==
X-Gm-Message-State: APjAAAXKxIkAcAXp30BxC77Pz7ap8NhZrOmJj2g5FyxHpFM+HGbySXbF
 gvk4ltRlrCAJdQqmAZ8nzi8pyQ==
X-Google-Smtp-Source: APXvYqy+pIFCp1pdmlOYEhY+tkWW1f8ElGIIEfuWVp0uAyCklawr9uR1wjJDEfCeh8fUXLizyuYroA==
X-Received: by 2002:a17:902:848b:: with SMTP id
 c11mr95273759plo.217.1560927853629; 
 Wed, 19 Jun 2019 00:04:13 -0700 (PDT)
Received: from localhost (amx-tls3.starhub.net.sg. [203.116.164.13])
 by smtp.gmail.com with ESMTPSA id 125sm16255713pfg.99.2019.06.19.00.04.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 00:04:12 -0700 (PDT)
Date: Wed, 19 Jun 2019 00:04:12 -0700 (PDT)
X-Google-Original-Date: Wed, 19 Jun 2019 00:02:47 PDT (-0700)
Subject: Re: [PATCH 1/3] arch: riscv: add config option for building SiFive's
 SoC resource
In-Reply-To: <1560799790-20287-2-git-send-email-lollivier@baylibre.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: lollivier@baylibre.com
Message-ID: <mhng-57108556-f1ec-4ff8-a6a0-98ddfee8232a@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_000415_233955_0D2F9C63 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [203.116.164.13 listed in zen.spamhaus.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, khilman@baylibre.com, lollivier@baylibre.com,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 12:29:48 PDT (-0700), lollivier@baylibre.com wrote:
> Create a config option for building SiFive SoC specific resources
> e.g. SiFive device tree, platform drivers...
>
> Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> ---
>  arch/riscv/Kconfig                  | 2 ++
>  arch/riscv/Kconfig.socs             | 8 ++++++++
>  arch/riscv/boot/dts/sifive/Makefile | 2 +-
>  3 files changed, 11 insertions(+), 1 deletion(-)
>  create mode 100644 arch/riscv/Kconfig.socs
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index ee32c66e1af3..eace5857c9e9 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -94,6 +94,8 @@ config PGTABLE_LEVELS
>  	default 3 if 64BIT
>  	default 2
>
> +source "arch/riscv/Kconfig.socs"
> +
>  menu "Platform type"
>
>  choice
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> new file mode 100644
> index 000000000000..60dae1b5f276
> --- /dev/null
> +++ b/arch/riscv/Kconfig.socs
> @@ -0,0 +1,8 @@
> +menu "SoC selection"
> +
> +config SOC_SIFIVE
> +       bool "SiFive SoCs"
> +       help
> +         This enables support for SiFive SoC platform hardware.
> +
> +endmenu
> diff --git a/arch/riscv/boot/dts/sifive/Makefile b/arch/riscv/boot/dts/sifive/Makefile
> index baaeef9efdcb..6d6189e6e4af 100644
> --- a/arch/riscv/boot/dts/sifive/Makefile
> +++ b/arch/riscv/boot/dts/sifive/Makefile
> @@ -1,2 +1,2 @@
>  # SPDX-License-Identifier: GPL-2.0
> -dtb-y += hifive-unleashed-a00.dtb
> +dtb-$(CONFIG_SOC_SIFIVE) += hifive-unleashed-a00.dtb

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
