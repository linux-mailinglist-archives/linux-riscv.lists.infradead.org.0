Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE6D56E38
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 18:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDqivoC9r6sPLLI1e87+6x6+VkrpsW/5PnRnG3hJMJ8=; b=F8et3cVBGpMv/L
	pYWKQ0F7czzGBFyK0HDnY2S9Bctvh31Cya6iWnsD+N84XEpz5aC5vbgT431wY1bdA+37c3QOPqY6q
	5NF67RckxdfcNIHkB09y9PuJLf6x6mBCqREOByishDrniFKz2sL9wmp5p8jeNsMD9Rq7LvqDxTkSn
	p2uIm1wCGRnHtvJaUsNUt/ce3AFWdbkHuoQJRasodycCqpRKIwckVgfTePserFLlYv7OtiNQ+U+My
	P9gwy1Lu5DA1j2vMVBrohW+jwMXK6N3yS4wwiH/OBO2nQxqNfTRTohxlZ21MrqeOYroPI90EYQpFb
	gfa0mXTegJLqPeSHZnnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgALG-0008Gn-ND; Wed, 26 Jun 2019 16:00:14 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgALD-0008Fv-Lm
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 16:00:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id i10so4415366iol.13
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 09:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=kGEtXo3mcNd4IAFNcQTSEQcFyR6hqGozQP+AV6BIM/E=;
 b=eLgckxV+4aPd/Xz9pBfQVGxxIpGAvoaspFRDSxNhACU9S2gzDkMZ2XTOybgu0ylQ8F
 Bq6/obcmKgtSFRPd7T+vpaJ2S+hpsnWgUxzuiLsXhw3PGkJtYM38sGcthKd/N93tV7d6
 jndhatV0E6DOz2caDI6Rm/VxJPgssoPhRGsWBtP0CNvvdWS5nO+3QsyTXzYrSIuRvhrD
 zAC3cVotAu+bNz/3tu3rG5OYU+KaklvJj4Ks5bK8emfuq6RaG0F6bpXIdyEj+GXKIB6N
 B3o2MjZ4aQILJGsjr3vsGbcsdaDnD4ADI4vwd7ZudWlDqF8+yOpuGp3Fm9dNByzPuT3x
 /nVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=kGEtXo3mcNd4IAFNcQTSEQcFyR6hqGozQP+AV6BIM/E=;
 b=qwK6RjnAcH/Vt0Pbt5SjNlmt2GNIFRMWpn7iMJDci57jFry3xvSt0u1tiJQQuVGXbk
 vV+R5NbIxpQ409v60PAB8vLQVdz9gwzVrlWhupvXn5GfMnsjYNLmOp+UTrbU3wGd4RfT
 qrA50CghvLz7867us8fvw+K4WCHZbA+vMPYRPNcV/LgWB1+dfDcuUSGyd8nMRK3IZNC6
 o9/PJ69P7Zdi80p3NYuEiQwPrP2umeTBp+zIPyFS4N+1O9WDU+dYBmV+RNnoW3/bIpB7
 zRtWxfU5Ql3p5GsIjnNXnL/58h7MzYoCPJ3uNItAamWR1P4VCp5OJVfAt+TKvcbBQtul
 yp5g==
X-Gm-Message-State: APjAAAWwkOLpyrp5oNA4SUszQnq2bWcK5lujZ7TfCwyM8776f6Om+DIL
 9HOdUAY+JnE30A+PmCPGS4EP2w==
X-Google-Smtp-Source: APXvYqwZaz/o5gjHX1cqzZGpMAcOkrb7NL9kB7CfbPP+u9dhieGDvTv0dBDfsOn3v3ZVfxJPKT+Epw==
X-Received: by 2002:a02:9991:: with SMTP id a17mr5637479jal.1.1561564810126;
 Wed, 26 Jun 2019 09:00:10 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p3sm19523375iog.70.2019.06.26.09.00.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 09:00:09 -0700 (PDT)
Date: Wed, 26 Jun 2019 09:00:08 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V
In-Reply-To: <20190625225636.9288-1-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906260858130.21507@viisi.sifive.com>
References: <20190625225636.9288-1-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_090011_725913_F84198DE 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Alistair Francis <Alistair.Francis@wdc.com>, Olof Johansson <olof@lixom.net>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019, Atish Patra wrote:

> Currently, riscv upstream defconfig doesn't let you boot
> through userspace if rootfs is on the SD card.
> 
> Let's enable MMC & SPI drivers as well so that one can boot
> to the user space using default config in upstream kernel.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

Thanks.  The patch also enables CONFIG_DEVTMPFS_MOUNT, but doesn't mention 
it, so the following is what I've queued for v5.2-rc.  Let me know if you 
object to it.


- Paul


From: Atish Patra <atish.patra@wdc.com>
Date: Tue, 25 Jun 2019 15:56:36 -0700
Subject: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V

Currently, riscv upstream defconfig doesn't let you boot
through userspace if rootfs is on the SD card.

Let's enable MMC & SPI drivers as well so that one can boot
to the user space using default config in upstream kernel.

While here, enable automatic mounting of devtmpfs to simplify
kernel testing with minimal root filesystems. (pjw)

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
[paul.walmsley@sifive.com: mention the DEVTMPFS_MOUNT change in the
 patch description]
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/configs/defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4f02967e55de..04944fb4fa7a 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -69,6 +69,7 @@ CONFIG_VIRTIO_MMIO=y
 CONFIG_CLK_SIFIVE=y
 CONFIG_CLK_SIFIVE_FU540_PRCI=y
 CONFIG_SIFIVE_PLIC=y
+CONFIG_SPI_SIFIVE=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -84,4 +85,8 @@ CONFIG_ROOT_NFS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
+CONFIG_SPI=y
+CONFIG_MMC_SPI=y
+CONFIG_MMC=y
+CONFIG_DEVTMPFS_MOUNT=y
 # CONFIG_RCU_TRACE is not set
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
