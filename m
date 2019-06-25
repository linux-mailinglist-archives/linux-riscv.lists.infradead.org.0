Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C36B855CAB
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 01:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GP/hRtrHUZLugcz9ZXDzYZ5XZC+8/E7IEn9wX1/OzSc=; b=VU36g1wbBPvMiF
	GiVEt2JxQS6SGV3v+shLt0abvPqw7MmXfRg2audAFs2+LlGoBPPTwuU4lG8vm+JVAl/HvRBoWZ/lJ
	ja1gBIK9dftSw10ZZRjGOQqh1ospY3t3Kkp448TQy64B4jzT9kVrhkTa4dZNrPRKltFzAgV7PmcRD
	zerioyrm5UZOp8r/MtsjHCcwDGbC8lbHDSnoSpnixCvyGGdonRMtj+NrvOFzdRtXX51b38uhiNznq
	hYc+Gxk3Rnm9khAJgugEIFFL78XRpEyyvP8da3wJbVjS5bw62/LTHYQizN4Hy7TD3qyUu5Xc3iHec
	LzyXwyBZrNDIHkPeOHaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfvKX-0006jo-HR; Tue, 25 Jun 2019 23:58:29 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfvKT-0006i1-La
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 23:58:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so990618ior.9
 for <linux-riscv@lists.infradead.org>; Tue, 25 Jun 2019 16:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=X10CEmTyvmwap+mWmXerOzteu8YFsqoourzADX4/hog=;
 b=doWrYOHe0blD25nTaUdjWNVLPQptm83C4IQR4ubJmYx24JF+h7eLoDx/4t0QF+9OQr
 11bp/AlXxLjuxFD+Wm9Ianlk2D3UdFsG9x/OFccwb3PGD7vwF+K+9m2ThDCkSqLnkH6s
 LxdF1uX/7Nh9dSuyRSNs04MBUzQyjhr+jrs/qvRd9KfE45LDerhCZ9pUvMghgDmF4UUe
 ZRlymZT4F/M9u1/1r2zqmhngQddJcZwFNhWSnrU5FITvgzZoYlEMj/olDAW3j/vYbuga
 aiRUgQd5TQ26RYXkE6KRLYH3S58Xk6O2TWMzOaWEilwKfR1VzwspGvpp2QBDHGbWlBIl
 9Ghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=X10CEmTyvmwap+mWmXerOzteu8YFsqoourzADX4/hog=;
 b=dpQLBCG4ldRoQOSGveeHdKkfxZqIBzghzLbJ4zGwFHhzBJ95XpGHMKYVhvt8Z6isvM
 UJzNVHOnGNAZ8FCmvWenSYQ0NFMrxGfgvHoEk1v0D819SkMksTsp9cZUqC8IuIVaarww
 WLkW+lJs+kIvzl6KJeDuo00mRt6mWQsXZa5VnPhghXoBpPvxM5mXXhIg5nv1BBa5U/t3
 ZBrL9X7GIQwB5QspEOlpdKBccWgbaq9yzOoBNmK3BofCxHmTDidMING61+8pYNr8YgX3
 oFZ9nsi0g+R1low8NfGeF29H3uJxJZpO83pj3WqVFFl948dg4Tvj6Qqr7E5QenVU3/BK
 yrWQ==
X-Gm-Message-State: APjAAAUi6GbLsDJFBTTSPHMAFHzNVu7LumIdFqueU7F8+ojG2opY5duw
 +7bgFaSmzqO/V592bOYtAHWnrA==
X-Google-Smtp-Source: APXvYqy7wM3KxWMf/5KpPe9u0wUBChNk/HNgz2aZE4W8C2Zl9QnXBvy58DFBYCTt+fJnrDiUz29Qvw==
X-Received: by 2002:a6b:d81a:: with SMTP id y26mr1590944iob.126.1561507101402; 
 Tue, 25 Jun 2019 16:58:21 -0700 (PDT)
Received: from crackbook-pro.lan (206-55-177-132.fttp.usinternet.com.
 [206.55.177.132])
 by smtp.gmail.com with ESMTPSA id f17sm33444111ioc.2.2019.06.25.16.58.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 16:58:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <20190625225636.9288-1-atish.patra@wdc.com>
Date: Tue, 25 Jun 2019 18:58:20 -0500
Message-Id: <6D4D90AF-59F9-4523-A916-7CFAC8E43C45@sifive.com>
References: <20190625225636.9288-1-atish.patra@wdc.com>
To: Atish Patra <atish.patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_165825_710110_80446B6F 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alistair Francis <Alistair.Francis@wdc.com>, Olof Johansson <olof@lixom.net>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Jun 25, 2019, at 5:56 PM, Atish Patra <atish.patra@wdc.com> wrote:
> 
> Currently, riscv upstream defconfig doesn't let you boot
> through userspace if rootfs is on the SD card.
> 
> Let's enable MMC & SPI drivers as well so that one can boot
> to the user space using default config in upstream kernel.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
> arch/riscv/configs/defconfig | 5 +++++
> 1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 4f02967e55de..04944fb4fa7a 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -69,6 +69,7 @@ CONFIG_VIRTIO_MMIO=y
> CONFIG_CLK_SIFIVE=y
> CONFIG_CLK_SIFIVE_FU540_PRCI=y
> CONFIG_SIFIVE_PLIC=y
> +CONFIG_SPI_SIFIVE=y
> CONFIG_EXT4_FS=y
> CONFIG_EXT4_FS_POSIX_ACL=y
> CONFIG_AUTOFS4_FS=y
> @@ -84,4 +85,8 @@ CONFIG_ROOT_NFS=y
> CONFIG_CRYPTO_USER_API_HASH=y
> CONFIG_CRYPTO_DEV_VIRTIO=y
> CONFIG_PRINTK_TIME=y
> +CONFIG_SPI=y
> +CONFIG_MMC_SPI=y
> +CONFIG_MMC=y
> +CONFIG_DEVTMPFS_MOUNT=y
> # CONFIG_RCU_TRACE is not set
> -- 
> 2.21.0

While we are doing this, can we add and test the /dev/mtd device?

I tried adding the following but I am missing something

CONFIG_MTD=y
CONFIG_MTD_OF_PARTS=y
CONFIG_MTD_BLKDEVS=y
CONFIG_MTD_BLOCK_RO=y
CONFIG_MTD_MAP_BANK_WIDTH_1=y
CONFIG_MTD_MAP_BANK_WIDTH_2=y
CONFIG_MTD_MAP_BANK_WIDTH_4=y
CONFIG_MTD_CFI_I1=y
CONFIG_MTD_CFI_I2=y
CONFIG_MTD_M25P80=y
CONFIG_MTD_SPI_NOR=y
CONFIG_MTD_SPI_NOR_USE_4K_SECTORS=y

and I see this in the log

[    1.106626] m25p80 spi0.0: unrecognized JEDEC id bytes: 9d 70 19 9d 70 19



_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
