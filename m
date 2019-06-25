Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B832E55BC1
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 00:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wTKMR6140c1UI2JIGTBaM/vCCisWY45+eZkr00rJ7BA=; b=bElIYpKY+XaFt7
	bzfv+xuDwzK1jD4Bq5VJpQ09jU/tQ4jo1MTkupFXnDo1sv+J93TCA2bhR3dxJ1UX+PrTo91gJBr0O
	0UzeE5bO5dAzuU8cqP43dbyVkBX2BCgIvaigpYzHi6gi8CxRwdN+YqJHG0cAyQsnbXhNXRNtTZtK4
	22++VwcqKLx3EMuka0u5llemX4XgpA/qYBipdpUc0Yu9J4wvEygwtYGhgNh7r+NQllboPAzLgbtYW
	r2oxHW+gVw5HGpF50nNkZqq/KlF/yEwNbhia5nRI5NPam1LTPrNDcS3XwLnk/kQex1vhKeWUuDjZk
	sFmLkP6Ip7PKMWvjo7XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuMz-0001rm-Hw; Tue, 25 Jun 2019 22:56:57 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuMw-0001qt-L7
 for linux-riscv@lists.infradead.org; Tue, 25 Jun 2019 22:56:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561503425; x=1593039425;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZA+/stBEiltqseSxmuzq7O/QVj+jN7ZxS+dReMTEjRk=;
 b=IV9p7ScbaglXOdF9UHKom6DUw1zOk1oZxv39fYOZWUcpaeKlvFEjjK9W
 +RaVcPPkSPBIUsqZcIbd0KYFhP8kGtoQ8LLtGEaCa+e8lKq/MIamk5nbB
 DOVUuiH2kJSgPOKRbc2XayPpNJygHfqpwsYk78lodPxfZ6qrh+Tv1U+UT
 orfcanvYx2gjOyQJPrT2PCEXHm9cl/UFmBBhDvG2uecVnTPa5y0YqZ1LY
 9pvm2mqja5makN21LPp+oPq1VOzV3dT5ASL/l7s6MV8C74AS+KosfBPP6
 NN5EULtDLpD0H0qhZa03dkiZw2QAIH+GkdQGByhlaF+kPLvGkq/0I3CSw w==;
X-IronPort-AV: E=Sophos;i="5.63,417,1557158400"; d="scan'208";a="211329693"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 26 Jun 2019 06:57:01 +0800
IronPort-SDR: bjiyKBNrKxnCrleRiLofAkkW6ZLaAWiUCmorWGDJuq9UI/10/D2R16VOzrHgujAO8CPB2mhp9p
 aEV5BHFX40g8oD2wLg+JktiYa1y+T0xepnUtMo2zzq5KpMQb4+zenJ0t8tFYLbyHjLiH0lR1BS
 6SaTbO6QByOWMXhibIpC2cgOqqANUGBOhvC3Mv9YS79mvFPUZrlex3YnJxwyT6PRZfI7l1eYJx
 eC/SVaDKSgfPysrfhR1Itun758RnhY2JujELMv8PfWuTXB+iHY1BZpRmHqyWhmebigCE4boL5Y
 qFqi1UmM8N4omRcyOHs39PKq
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 25 Jun 2019 15:56:02 -0700
IronPort-SDR: rbW7z9zmHKFPoMp7aRVaU2xWoTWiMDQuCULf5ZYv77U9EUL411lXIjjG3fAzgJjRj1J2/egoSl
 sQxGT1FwDWd1q0hJeQXyjSFYqMCSL2ilwZBgNdp43V6atd8IloXsbRpCn2RBDFY9/lTcI0cqes
 d+4iA+fKL4LCvjKdrAh8W40q33v2s48lpv4eZVEGfNCqKLjCzMTBiaJFREprUqd/uMyYxSAibS
 73Gv9azT8VL4utljy84bxvE0HYEXe8HQtPpjEMLbTwkgo/rx+0MEtgtYWOKWjt9cSDg3zTaKV7
 LZw=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 25 Jun 2019 15:56:52 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: defconfig: enable MMC & SPI for RISC-V
Date: Tue, 25 Jun 2019 15:56:36 -0700
Message-Id: <20190625225636.9288-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_155654_750838_4CC74302 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
 Palmer Dabbelt <palmer@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, Olof Johansson <olof@lixom.net>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, riscv upstream defconfig doesn't let you boot
through userspace if rootfs is on the SD card.

Let's enable MMC & SPI drivers as well so that one can boot
to the user space using default config in upstream kernel.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
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
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
