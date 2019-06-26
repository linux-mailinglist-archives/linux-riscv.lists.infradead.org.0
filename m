Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4921563EC
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 09:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=4/w18pWXYg27dMoPTdtEDlCzV4F/ZC8pEiCb20ely2U=; b=c8UEyk5PW1iI6E1L4QNEzk5p3
	uauRmWt59ybgZaMl1QhB/aRkwXIUzvYOMh4L0kXmitqqUL0yUcp3Re7fkMCRE28RizgG2iy78dDqr
	muEM7jC72hCl+OCnDxi89g0zGstzaW+X9wbqLc8XFVJOjqdLsSdaqc9K2aoNeJdcRuptSenlhf7xz
	5GdF+uL4jLofFywnLJTMy3Pz/hR9ys8s3a0mdNaf3uIyeOOZCWyEChIkVxwNF6osLnmJz6v8X5cTF
	Ph5pQ5Opo2v/ywPjd8ir+QNOCt+TLhlces5s6zK3hfT0r4pAh0NwaJODJNd74qMrVRoB8XRgdgHBT
	p+yvK2XqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg2pb-00073x-Ja; Wed, 26 Jun 2019 07:59:03 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg2pY-00073M-Io
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 07:59:02 +0000
Received: by mail-pf1-f193.google.com with SMTP id c85so931086pfc.1
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 00:58:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=CD4j+26j4vYI/MfiMmLCViJItM6FC7GHNSI9G/XS8i0=;
 b=brbyb0W3N1CwXAOfwyQmH5ld2iqM+8mu1H47AYufnHAvK5r5WvWFTBLgOyLIXp0y7F
 0Fv4gTDdoH00LhBFAoslbJxJg7ZoSyNw2sGVgPhzHrzYk3tmIFKdevZKrjqz0+Jkz656
 IwmiRxZb0jgOgxr6PPYHX9HUGR4qlybThilEWFoypavOiUaIJ6gTwgHspdwbjcqhTNmb
 ZrhC5ttipm3tYlScZOTtCpDcKzvHJP3XSMUwS5hVPruqJBxo2biyMvASla1mXNgueopj
 eU/OCA6qh2mIJ4aVAPx+hl682mainMY0VXaL3OnImZSN8TRpPWI+9OWyWf30muXClUsC
 0eYQ==
X-Gm-Message-State: APjAAAXxtVax4Cm9CmvkrwBsqJl8HSeQQovqQMpjTwc9Snxvvc6nIBXQ
 N35pxss6asI0ezti5xrk1O7gtw==
X-Google-Smtp-Source: APXvYqwn8kngp/HSSbBwmxPoLWNRdCfA+H3iCix/JVQZEda0wHy33yb36kbHr9Scb1i6pm+ak+U1/Q==
X-Received: by 2002:a17:90a:ad89:: with SMTP id
 s9mr3129805pjq.41.1561535939224; 
 Wed, 26 Jun 2019 00:58:59 -0700 (PDT)
Received: from localhost (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id r1sm20866207pfq.100.2019.06.26.00.58.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 00:58:58 -0700 (PDT)
Date: Wed, 26 Jun 2019 00:58:58 -0700 (PDT)
X-Google-Original-Date: Wed, 26 Jun 2019 00:33:23 PDT (-0700)
Subject: Re: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V
In-Reply-To: <20190625225636.9288-1-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-2f9be7ae-da01-4cf8-b3b9-8a7b193acd9b@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_005900_627144_86DA4AC6 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Olof Johansson <olof@lixom.net>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 15:56:36 PDT (-0700), Atish Patra wrote:
> Currently, riscv upstream defconfig doesn't let you boot
> through userspace if rootfs is on the SD card.
>
> Let's enable MMC & SPI drivers as well so that one can boot
> to the user space using default config in upstream kernel.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/configs/defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4f02967e55de..04944fb4fa7a 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -69,6 +69,7 @@ CONFIG_VIRTIO_MMIO=y
>  CONFIG_CLK_SIFIVE=y
>  CONFIG_CLK_SIFIVE_FU540_PRCI=y
>  CONFIG_SIFIVE_PLIC=y
> +CONFIG_SPI_SIFIVE=y
>  CONFIG_EXT4_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
>  CONFIG_AUTOFS4_FS=y
> @@ -84,4 +85,8 @@ CONFIG_ROOT_NFS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> +CONFIG_SPI=y
> +CONFIG_MMC_SPI=y
> +CONFIG_MMC=y
> +CONFIG_DEVTMPFS_MOUNT=y
>  # CONFIG_RCU_TRACE is not set

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
